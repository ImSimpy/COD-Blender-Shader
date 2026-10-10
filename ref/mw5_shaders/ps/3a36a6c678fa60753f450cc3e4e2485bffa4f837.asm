;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyz 
; TEXCOORDS                0   xyzw        2     NONE   float   xyzw
; TEXCOORDS                1   xyzw        3     NONE   float   xy  
; LMAPCOORDS               0   xyz         4     NONE   float   xyz 
; NORMAL                   0   xyz         5     NONE   float   xyz 
; TANGENT                  0   xyzw        6     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        7     NONE   float   xyzw
; NORMAL_TRANSFORM         2   xyzw        8     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           9     NONE    uint   x   
; TRANSIENT_INDEX          0    y          9     NONE    uint    y  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 5b822b5015d8c8255915d32acfd9684e
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
; TEXCOORDS                1                 linear       
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; NORMAL_TRANSFORM         1                 linear       
; NORMAL_TRANSFORM         2                 linear       
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
;   [128 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s2     1
;                                   sampler      NA          NA      S4             s3     1
;                                   sampler      NA          NA      S5             s4     1
;                                   sampler      NA          NA      S6             s5     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     f32     2darray      T6     t16,space2     1
;                                   texture     f32          3d      T7     t15,space2     1
;                                   texture     f32          2d      T8     t14,space2     1
;                                   texture     f32          2d      T9     t13,space2     1
;                                   texture     u32          2d     T10     t17,space2     1
;                                   texture     f32          3d     T11     t18,space2     1
;                                   texture     f32     2darray     T12     t23,space2     1
;                                   texture     f32     2darray     T13     t24,space2     1
;                                   texture     f32     2darray     T14     t25,space2     1
;                                   texture    byte         r/o     T15     t66,space1     1
;                                   texture    byte         r/o     T16     t16,space1     1
;                                   texture    byte         r/o     T17     t17,space1     1
;                                   texture     f32          2d     T18     t69,space2     1
;                                   texture    byte         r/o     T19     t49,space1     1
;                                   texture    byte         r/o     T20     t50,space1     1
;                                   texture    byte         r/o     T21     t51,space1     1
;                                   texture    byte         r/o     T22     t52,space1     1
;                                   texture     f32          2d     T23     t37,space2     1
;                                   texture     f32          2d     T24             t0     1
;                                   texture     f32          2d     T25     t58,space2     1
;                                   texture     f32          2d     T26     t59,space2     1
;                                   texture     f32          2d     T27     t60,space2     1
;                                   texture    byte         r/o     T28     t45,space1     1
;                                   texture    byte         r/o     T29     t46,space1     1
;                                   texture    byte         r/o     T30     t47,space1     1
;                                   texture    byte         r/o     T31     t48,space1     1
;                                   texture     f32          2d     T32     t57,space2     1
;                                   texture    byte         r/o     T33     t69,space1     1
;                                   texture     u32          2d     T34     t56,space2     1
;                                   texture     f32          2d     T35     t34,space2     1
;                                   texture    byte         r/o     T36     t10,space1     1
;                                   texture    byte         r/o     T37      t1,space1     1
;                                   texture     f32          1d     T38     t32,space2     1
;                                   texture     f32     2darray     T39      t8,space2     1
;                                   texture     f32          2d     T40      t2,space2     1
;                                   texture     f32          2d     T41      t3,space2     1
;                                   texture     f32          2d     T42      t4,space2     1
;                                   textureunorm_f32     2darray     T43     t80,space2     1
;                                   texture    byte         r/o     T44     t67,space1     1
;                                   texture     f32          2d     T45      t7,space2     1
;                                   texture     f32          2d     T46      t6,space2     1
;                                   texture     f32          2d     T47      t5,space2     1
;                                   texture     f32          2d     T48     t38,space2     1
;                                   texture    byte         r/o     T49     t12,space1     1
;                                   texture    byte         r/o     T50     t13,space1     1
;                                   texture     f32          1d     T51     t30,space2     1
;                                   texture     f32          3d     T52     t44,space2     1
;                                   texture     f32          3d     T53     t45,space2     1
;                                   texture     f32     2darray     T54     t47,space2     1
;                                   textureunorm_f32     2darray     T55     t85,space2     1
;                                   texture     f32          2d     T56     t83,space2     1
;                                   texture     f32          2d     T57     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 38, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 13, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 13, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 13, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 13, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
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
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 57, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 56, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 55, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %63 = alloca [4 x i32], align 4
  %64 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = alloca [12 x float], align 4
  %98 = alloca [12 x float], align 4
  %99 = alloca [3 x float], align 4
  %100 = alloca [3 x float], align 4
  %101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = fmul fast float %104, %93
  %106 = fmul fast float %104, %94
  %107 = fmul fast float %79, %76
  %108 = fmul fast float %80, %75
  %109 = fsub fast float %107, %108
  %110 = fmul fast float %80, %74
  %111 = fmul fast float %78, %76
  %112 = fsub fast float %110, %111
  %113 = fmul fast float %78, %75
  %114 = fmul fast float %79, %74
  %115 = fsub fast float %113, %114
  %116 = fmul fast float %109, %77
  %117 = fmul fast float %112, %77
  %118 = fmul fast float %115, %77
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 3
  %122 = fmul fast float %120, 2.000000e+00
  %123 = fmul fast float %122, %105
  %124 = fmul fast float %121, 2.000000e+00
  %125 = fmul fast float %124, %106
  %126 = fsub fast float 1.000000e+00, %123
  %127 = fsub fast float 1.000000e+00, %125
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = fmul fast float %126, %129
  %133 = fmul fast float %126, %130
  %134 = fmul fast float %126, %131
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = fmul fast float %127, %136
  %140 = fmul fast float %127, %137
  %141 = fmul fast float %127, %138
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %145 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %146 = fadd fast float %139, %143
  %147 = fadd fast float %146, %132
  %148 = fadd fast float %140, %144
  %149 = fadd fast float %148, %133
  %150 = fadd fast float %141, %145
  %151 = fadd fast float %150, %134
  %152 = fmul fast float %147, %96
  %153 = fmul fast float %149, %96
  %154 = fmul fast float %151, %96
  %155 = fadd fast float %83, 5.000000e-01
  %156 = fptoui float %155 to i32
  %157 = shl i32 %156, 3
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = or i32 %157, 4
  %161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %160, i32 undef)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = and i32 %159, 8191
  %164 = lshr i32 %159, 13
  %165 = and i32 %164, 8191
  %166 = lshr i32 %159, 26
  %167 = and i32 %162, 65535
  %168 = lshr i32 %162, 16
  %169 = uitofp i32 %167 to float
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %172 = uitofp i32 %168 to float
  %173 = uitofp i32 %163 to float
  %174 = fmul fast float %171, %173
  %175 = uitofp i32 %165 to float
  %176 = fmul fast float %171, %175
  %177 = fmul fast float %171, %81
  %178 = fmul fast float %177, %169
  %179 = fmul fast float %171, %82
  %180 = fmul fast float %179, %172
  %181 = fadd fast float %178, %174
  %182 = fadd fast float %176, %180
  %183 = uitofp i32 %166 to float
  %184 = fmul fast float %105, 5.000000e-01
  %185 = fmul fast float %106, 5.000000e-01
  %186 = fptosi float %184 to i32
  %187 = fptosi float %185 to i32
  %188 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %186, i32 %187, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %189 = extractvalue %dx.types.ResRet.i32 %188, 0
  %190 = lshr i32 %189, 18
  %191 = uitofp i32 %190 to float
  %192 = fmul fast float %191, 0x3F4C00EBA0000000
  %193 = call float @dx.op.unary.f32(i32 21, float %192)  ; Exp(value)
  %194 = fadd fast float %193, -1.000000e+00
  %195 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %196 = extractvalue %dx.types.Dimensions %195, 0
  %197 = sitofp i32 %196 to float
  %198 = extractvalue %dx.types.Dimensions %195, 1
  %199 = sitofp i32 %198 to float
  %200 = fcmp fast oge float %184, %197
  %201 = fcmp fast oge float %185, %199
  %202 = or i1 %200, %201
  %203 = select i1 %202, float 0x4197782600000000, float %194
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 2
  %206 = extractvalue %dx.types.CBufRet.f32 %204, 3
  %207 = fmul fast float %205, %105
  %208 = fmul fast float %206, %106
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = and i32 %210, 114688
  %212 = icmp ne i32 %211, 0
  %213 = select i1 %212, float %207, float 0.000000e+00
  %214 = select i1 %212, float %208, float 0.000000e+00
  %215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %59, float %213, float %214, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = fmul fast float %216, 2.550000e+02
  %218 = fptoui float %217 to i32
  %219 = select i1 %212, i32 %218, i32 0
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.i32 %221, 3
  %223 = and i32 %222, 3
  %224 = icmp ne i32 %223, 0
  %225 = and i32 %222, 4
  %226 = icmp ne i32 %225, 0
  %227 = and i1 %224, %226
  br i1 %227, label %228, label %239

; <label>:228                                     ; preds = %0
  %229 = extractvalue %dx.types.CBufRet.f32 %220, 3
  %230 = fmul fast float %229, %106
  %231 = extractvalue %dx.types.CBufRet.f32 %220, 2
  %232 = fmul fast float %231, %105
  %233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %58, float %232, float %230, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %234 = extractvalue %dx.types.ResRet.f32 %233, 0
  %235 = fsub fast float 1.000000e+00, %234
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 0
  %238 = fcmp fast olt float %235, %237
  br label %242

; <label>:239                                     ; preds = %0
  %240 = icmp eq i32 %225, 0
  %241 = and i1 %224, %240
  br label %242

; <label>:242                                     ; preds = %239, %228
  %243 = phi i1 [ %238, %228 ], [ %241, %239 ]
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 2
  %246 = fmul fast float %245, 0x3FE3C6EF40000000
  %247 = frem fast float %105, 2.560000e+02
  %248 = frem fast float %106, 2.560000e+02
  %249 = fptoui float %247 to i32
  %250 = fptoui float %248 to i32
  %251 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %249, i32 %250, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = fadd fast float %252, %246
  %254 = call float @dx.op.unary.f32(i32 22, float %253)  ; Frc(value)
  %255 = add i32 %65, 124
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = shl i32 %257, 4
  %259 = and i32 %258, 32752
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = lshr i32 %257, 7
  %262 = and i32 %261, 32752
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = lshr i32 %257, 22
  %265 = shl nuw nsw i32 %264, 5
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = add i32 %65, 168
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 255
  %271 = uitofp i32 %270 to float
  %272 = fmul fast float %271, 0x3F70101020000000
  %273 = lshr i32 %269, 8
  %274 = and i32 %273, 255
  %275 = uitofp i32 %274 to float
  %276 = fmul fast float %275, 0x3F70101020000000
  %277 = lshr i32 %269, 16
  %278 = and i32 %277, 255
  %279 = uitofp i32 %278 to float
  %280 = fmul fast float %279, 0x3F70101020000000
  %281 = add i32 %65, 36
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = add i32 %65, 224
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = add i32 %65, 140
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = shl i32 %289, 4
  %291 = and i32 %290, 32752
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %289, 7
  %294 = and i32 %293, 32752
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %289, 22
  %297 = shl nuw nsw i32 %296, 5
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = add i32 %65, 184
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 255
  %303 = uitofp i32 %302 to float
  %304 = fmul fast float %303, 0x3F70101020000000
  %305 = lshr i32 %301, 8
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3F70101020000000
  %309 = lshr i32 %301, 16
  %310 = and i32 %309, 255
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %311, 0x3F70101020000000
  %313 = add i32 %65, 52
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 65535
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %315, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = add i32 %65, 240
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 65535
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %322, 16
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = fmul fast float %324, 0x3F50624DE0000000
  %328 = fmul fast float %326, 0x3F50624DE0000000
  %329 = add i32 %65, 156
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = shl i32 %331, 4
  %333 = and i32 %332, 32752
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %331, 7
  %336 = and i32 %335, 32752
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = lshr i32 %331, 22
  %339 = shl nuw nsw i32 %338, 5
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = add i32 %65, 200
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 255
  %345 = uitofp i32 %344 to float
  %346 = fmul fast float %345, 0x3F70101020000000
  %347 = lshr i32 %343, 8
  %348 = and i32 %347, 255
  %349 = uitofp i32 %348 to float
  %350 = fmul fast float %349, 0x3F70101020000000
  %351 = lshr i32 %343, 16
  %352 = and i32 %351, 255
  %353 = uitofp i32 %352 to float
  %354 = fmul fast float %353, 0x3F70101020000000
  %355 = add i32 %65, 68
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = and i32 %357, 65535
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %357, 16
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = add i32 %65, 256
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, 65535
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %364, 16
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = fmul fast float %366, 0x3F50624DE0000000
  %370 = fmul fast float %368, 0x3F50624DE0000000
  %371 = add i32 %65, 268
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = lshr i32 %373, 20
  %375 = and i32 %374, 3
  %376 = add nuw nsw i32 %375, 1
  %377 = add i32 %65, 24
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = add i32 %65, 28
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = or i32 %382, %379
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %1036, label %385

; <label>:385                                     ; preds = %242
  %386 = lshr i32 %286, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = fmul fast float %387, 0x3F50624DE0000000
  %389 = and i32 %286, 65535
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = fmul fast float %390, 0x3F50624DE0000000
  %392 = lshr i32 %283, 16
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = and i32 %283, 65535
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = add i32 %65, 220
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = lshr i32 %398, 16
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = fmul fast float %400, 0x3F50624DE0000000
  %402 = add i32 %65, 72
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = lshr i32 %404, 16
  %406 = and i32 %405, 255
  %407 = lshr i32 %404, 24
  %408 = add i32 %65, 228
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 65535
  %412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %411)  ; LegacyF16ToF32(value)
  %413 = lshr i32 %410, 16
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = add i32 %65, 32
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = lshr i32 %417, 22
  %419 = shl nuw nsw i32 %418, 5
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = shl i32 %417, 4
  %422 = and i32 %421, 32752
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = lshr i32 %417, 7
  %425 = and i32 %424, 32752
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 3
  %429 = fmul fast float %428, 1.000000e+03
  %430 = fmul fast float %391, %429
  %431 = call float @dx.op.unary.f32(i32 22, float %430)  ; Frc(value)
  %432 = fadd fast float %431, %395
  %433 = fmul fast float %388, %429
  %434 = call float @dx.op.unary.f32(i32 22, float %433)  ; Frc(value)
  %435 = fadd fast float %434, %393
  %436 = fmul fast float %401, %429
  %437 = call float @dx.op.unary.f32(i32 22, float %436)  ; Frc(value)
  %438 = fmul fast float %437, 0x401921FB60000000
  %439 = fadd fast float %438, %420
  %440 = call float @dx.op.unary.f32(i32 13, float %439)  ; Sin(value)
  %441 = call float @dx.op.unary.f32(i32 12, float %439)  ; Cos(value)
  %442 = fsub fast float -0.000000e+00, %440
  %443 = fadd fast float %86, -5.000000e-01
  %444 = fadd fast float %87, -5.000000e-01
  %445 = fmul fast float %412, %443
  %446 = fmul fast float %414, %444
  %447 = fadd fast float %445, 5.000000e-01
  %448 = fadd fast float %446, 5.000000e-01
  %449 = fmul fast float %423, %447
  %450 = fmul fast float %426, %448
  %451 = fmul fast float %441, %449
  %452 = call float @dx.op.tertiary.f32(i32 46, float %442, float %450, float %451)  ; FMad(a,b,c)
  %453 = fmul fast float %440, %449
  %454 = call float @dx.op.tertiary.f32(i32 46, float %441, float %450, float %453)  ; FMad(a,b,c)
  %455 = fadd fast float %432, %452
  %456 = fadd fast float %435, %454
  %457 = icmp ugt i32 %406, 1
  %458 = icmp ugt i32 %404, 33554431
  %459 = or i1 %458, %457
  br i1 %459, label %460, label %485

; <label>:460                                     ; preds = %385
  %461 = add i32 %65, 180
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = lshr i32 %463, 16
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = fmul fast float %428, %465
  %467 = call float @dx.op.unary.f32(i32 22, float %466)  ; Frc(value)
  %468 = mul nuw nsw i32 %406, %407
  %469 = uitofp i32 %468 to float
  %470 = fmul fast float %467, %469
  %471 = call float @dx.op.unary.f32(i32 27, float %470)  ; Round_ni(value)
  %472 = fptoui float %471 to i32
  %473 = urem i32 %472, %406
  %474 = udiv i32 %472, %407
  %475 = call float @dx.op.unary.f32(i32 22, float %455)  ; Frc(value)
  %476 = call float @dx.op.unary.f32(i32 22, float %456)  ; Frc(value)
  %477 = uitofp i32 %473 to float
  %478 = uitofp i32 %474 to float
  %479 = fadd fast float %475, %477
  %480 = fadd fast float %476, %478
  %481 = uitofp i32 %406 to float
  %482 = uitofp i32 %407 to float
  %483 = fdiv fast float %479, %481
  %484 = fdiv fast float %480, %482
  br label %485

; <label>:485                                     ; preds = %460, %385
  %486 = phi float [ %483, %460 ], [ %455, %385 ]
  %487 = phi float [ %484, %460 ], [ %456, %385 ]
  %488 = and i32 %379, 16777216
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %599, label %490

; <label>:490                                     ; preds = %485
  %491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.f32 %491, 0
  %493 = extractvalue %dx.types.CBufRet.f32 %491, 1
  %494 = extractvalue %dx.types.CBufRet.f32 %491, 2
  %495 = fadd fast float %492, %152
  %496 = fadd fast float %493, %153
  %497 = fadd fast float %494, %154
  %498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %499 = extractvalue %dx.types.CBufRet.f32 %498, 0
  %500 = call float @dx.op.unary.f32(i32 7, float %499)  ; Saturate(value)
  %501 = icmp eq i32 %64, 65535
  br i1 %501, label %596, label %502

; <label>:502                                     ; preds = %490
  %503 = lshr i32 %64, 1
  %504 = shl i32 %503, 2
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = and i32 %64, 1
  %508 = icmp ne i32 %507, 0
  %509 = lshr i32 %506, 16
  %510 = and i32 %506, 65535
  %511 = select i1 %508, i32 %509, i32 %510
  %512 = icmp eq i32 %511, 65535
  br i1 %512, label %592, label %513

; <label>:513                                     ; preds = %502
  %514 = mul nuw nsw i32 %511, 40
  %515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = extractvalue %dx.types.ResRet.f32 %515, 1
  %518 = extractvalue %dx.types.ResRet.f32 %515, 2
  %519 = add nuw nsw i32 %514, 12
  %520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.f32 %520, 0
  %522 = extractvalue %dx.types.ResRet.f32 %520, 1
  %523 = extractvalue %dx.types.ResRet.f32 %520, 2
  %524 = add nuw nsw i32 %514, 24
  %525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = extractvalue %dx.types.ResRet.f32 %525, 1
  %528 = extractvalue %dx.types.ResRet.f32 %525, 2
  %529 = add nuw nsw i32 %514, 36
  %530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = fsub fast float %495, %516
  %533 = fsub fast float %496, %517
  %534 = fsub fast float %497, %518
  %535 = fmul fast float %531, %532
  %536 = fmul fast float %531, %533
  %537 = fmul fast float %531, %534
  %538 = call float @dx.op.unary.f32(i32 27, float %535)  ; Round_ni(value)
  %539 = call float @dx.op.unary.f32(i32 27, float %536)  ; Round_ni(value)
  %540 = call float @dx.op.unary.f32(i32 27, float %537)  ; Round_ni(value)
  %541 = fadd fast float %538, 5.000000e-01
  %542 = fadd fast float %539, 5.000000e-01
  %543 = fadd fast float %540, 5.000000e-01
  %544 = fmul fast float %541, %521
  %545 = fmul fast float %542, %522
  %546 = fmul fast float %543, %523
  %547 = shl i32 %64, 2
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = add i32 %549, 0
  %551 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %550, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %552 = call float @dx.op.unary.f32(i32 22, float %544)  ; Frc(value)
  %553 = call float @dx.op.unary.f32(i32 22, float %545)  ; Frc(value)
  %554 = call float @dx.op.unary.f32(i32 22, float %546)  ; Frc(value)
  %555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %551, %dx.types.Handle %59, float %552, float %553, float %554, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 0
  %557 = extractvalue %dx.types.ResRet.f32 %555, 1
  %558 = extractvalue %dx.types.ResRet.f32 %555, 2
  %559 = fmul fast float %556, 1.023000e+03
  %560 = fmul fast float %557, 1.023000e+03
  %561 = fmul fast float %558, 1.023000e+03
  %562 = fadd fast float %559, 5.000000e-01
  %563 = fadd fast float %560, 5.000000e-01
  %564 = fadd fast float %561, 5.000000e-01
  %565 = call float @dx.op.unary.f32(i32 27, float %562)  ; Round_ni(value)
  %566 = call float @dx.op.unary.f32(i32 27, float %563)  ; Round_ni(value)
  %567 = call float @dx.op.unary.f32(i32 27, float %564)  ; Round_ni(value)
  %568 = fsub fast float %535, %538
  %569 = fsub fast float %536, %539
  %570 = fsub fast float %537, %540
  %571 = fmul fast float %568, 7.500000e-01
  %572 = fmul fast float %569, 7.500000e-01
  %573 = fmul fast float %570, 7.500000e-01
  %574 = fadd fast float %538, 1.250000e-01
  %575 = fadd fast float %574, %571
  %576 = fadd fast float %575, %565
  %577 = fadd fast float %539, 1.250000e-01
  %578 = fadd fast float %577, %572
  %579 = fadd fast float %578, %566
  %580 = fadd fast float %540, 1.250000e-01
  %581 = fadd fast float %580, %573
  %582 = fadd fast float %581, %567
  %583 = fmul fast float %576, %526
  %584 = fmul fast float %579, %527
  %585 = fmul fast float %582, %528
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = add i32 %587, 0
  %589 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %588, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %589, %dx.types.Handle %57, float %583, float %584, float %585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %591 = extractvalue %dx.types.ResRet.f32 %590, 0
  br label %592

; <label>:592                                     ; preds = %513, %502
  %593 = phi float [ %591, %513 ], [ -1.000000e+00, %502 ]
  %594 = fadd fast float %593, %500
  %595 = call float @dx.op.unary.f32(i32 7, float %594)  ; Saturate(value)
  br label %596

; <label>:596                                     ; preds = %592, %490
  %597 = phi float [ %595, %592 ], [ %500, %490 ]
  %598 = fmul fast float %597, %90
  br label %599

; <label>:599                                     ; preds = %596, %485
  %600 = phi float [ %598, %596 ], [ %90, %485 ]
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = and i32 %602, 256
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %651, label %605

; <label>:605                                     ; preds = %599
  %606 = add i32 %65, 328
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = add i32 %608, 0
  %610 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %609, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %611 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %610, %dx.types.Handle %102, float %486, float %487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = add i32 %65, 84
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = shl i32 %615, 4
  %617 = and i32 %616, 32752
  %618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %617)  ; LegacyF16ToF32(value)
  %619 = lshr i32 %615, 7
  %620 = and i32 %619, 32752
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = fsub fast float 1.000000e+00, %600
  %623 = call float @dx.op.binary.f32(i32 35, float %622, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %624 = bitcast float %600 to i32
  %625 = sitofp i32 %624 to float
  %626 = fadd fast float %625, 0xC1CFBF8940000000
  %627 = fmul fast float %621, %626
  %628 = fadd fast float %627, 0x41CFBF8940000000
  %629 = fptosi float %628 to i32
  %630 = bitcast i32 %629 to float
  %631 = bitcast float %623 to i32
  %632 = sitofp i32 %631 to float
  %633 = fadd fast float %632, 0xC1CFBF8940000000
  %634 = fmul fast float %633, %621
  %635 = fadd fast float %634, 0x41CFBF8940000000
  %636 = fptosi float %635 to i32
  %637 = bitcast i32 %636 to float
  %638 = fmul fast float %630, %618
  %639 = fmul fast float %637, %618
  %640 = fsub fast float %623, %638
  %641 = fadd fast float %639, %623
  %642 = call float @dx.op.unary.f32(i32 7, float %640)  ; Saturate(value)
  %643 = call float @dx.op.unary.f32(i32 7, float %641)  ; Saturate(value)
  %644 = fsub fast float %612, %642
  %645 = fsub fast float %643, %642
  %646 = bitcast float %645 to i32
  %647 = sub nsw i32 2129859010, %646
  %648 = bitcast i32 %647 to float
  %649 = fmul fast float %648, %644
  %650 = call float @dx.op.unary.f32(i32 7, float %649)  ; Saturate(value)
  br label %651

; <label>:651                                     ; preds = %605, %599
  %652 = phi float [ %650, %605 ], [ %600, %599 ]
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = and i32 %654, 128
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %673, label %657

; <label>:657                                     ; preds = %651
  %658 = add i32 %65, 316
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = add i32 %660, 0
  %662 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %661, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %663 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %662, %dx.types.Handle %102, float %486, float %487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %664 = extractvalue %dx.types.ResRet.f32 %663, 0
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = and i32 %666, 524288
  %668 = icmp ne i32 %667, 0
  %669 = fcmp fast ogt float %664, 0x3FE0101020000000
  %670 = select i1 %669, float 1.000000e+00, float 0.000000e+00
  %671 = select i1 %668, float %670, float %664
  %672 = fmul fast float %671, %652
  br label %673

; <label>:673                                     ; preds = %657, %651
  %674 = phi float [ %672, %657 ], [ %652, %651 ]
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = and i32 %676, 16
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %877, label %679

; <label>:679                                     ; preds = %673
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = add i32 %65, 280
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %682, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = add i32 %684, 0
  %686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %685, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %687 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %686, %dx.types.Handle %101, float %486, float %487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %688 = extractvalue %dx.types.ResRet.f32 %687, 0
  %689 = extractvalue %dx.types.ResRet.f32 %687, 1
  %690 = extractvalue %dx.types.ResRet.f32 %687, 2
  %691 = extractvalue %dx.types.ResRet.f32 %687, 3
  %692 = and i32 %681, 255
  %693 = uitofp i32 %692 to float
  %694 = lshr i32 %681, 8
  %695 = and i32 %694, 255
  %696 = uitofp i32 %695 to float
  %697 = fmul fast float %691, %693
  %698 = fadd fast float %697, %696
  %699 = fmul fast float %698, 0x3F70101000000000
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = and i32 %701, 512
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %712, label %704

; <label>:704                                     ; preds = %679
  %705 = add i32 %65, 340
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %705, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = add i32 %707, 0
  %709 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %708, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %710 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %709, %dx.types.Handle %102, float %486, float %487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %711 = extractvalue %dx.types.ResRet.f32 %710, 0
  br label %712

; <label>:712                                     ; preds = %704, %679
  %713 = phi float [ %711, %704 ], [ 1.000000e+00, %679 ]
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = and i32 %715, 33554432
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %824, label %718

; <label>:718                                     ; preds = %712
  %719 = add i32 %65, 176
  %720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.i32 %720, 0
  %722 = and i32 %721, 65535
  %723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %722)  ; LegacyF16ToF32(value)
  %724 = lshr i32 %721, 16
  %725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %724)  ; LegacyF16ToF32(value)
  %726 = add i32 %65, 180
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = and i32 %728, 65535
  %730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %729)  ; LegacyF16ToF32(value)
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = lshr i32 %732, 24
  %734 = uitofp i32 %733 to float
  %735 = fmul fast float %734, 0x3F70101020000000
  %736 = and i32 %732, 255
  %737 = uitofp i32 %736 to float
  %738 = fmul fast float %737, 0x3F70101020000000
  %739 = lshr i32 %732, 8
  %740 = and i32 %739, 255
  %741 = uitofp i32 %740 to float
  %742 = fmul fast float %741, 0x3F70101020000000
  %743 = lshr i32 %732, 16
  %744 = and i32 %743, 255
  %745 = uitofp i32 %744 to float
  %746 = fmul fast float %745, 0x3F70101020000000
  %747 = add i32 %65, 172
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %747, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = lshr i32 %749, 24
  %751 = uitofp i32 %750 to float
  %752 = fmul fast float %751, 0x3F70101020000000
  %753 = and i32 %749, 255
  %754 = uitofp i32 %753 to float
  %755 = fmul fast float %754, 0x3F70101020000000
  %756 = lshr i32 %749, 8
  %757 = and i32 %756, 255
  %758 = uitofp i32 %757 to float
  %759 = fmul fast float %758, 0x3F70101020000000
  %760 = lshr i32 %749, 16
  %761 = and i32 %760, 255
  %762 = uitofp i32 %761 to float
  %763 = fmul fast float %762, 0x3F70101020000000
  %764 = bitcast float %688 to i32
  %765 = ashr i32 %764, 1
  %766 = sub nsw i32 1597463174, %765
  %767 = bitcast i32 %766 to float
  %768 = fmul fast float %688, 5.000000e-01
  %769 = fmul fast float %767, %767
  %770 = fmul fast float %769, %768
  %771 = fsub fast float 1.500000e+00, %770
  %772 = fmul fast float %767, %688
  %773 = fmul fast float %772, %771
  %774 = bitcast float %689 to i32
  %775 = ashr i32 %774, 1
  %776 = sub nsw i32 1597463174, %775
  %777 = bitcast i32 %776 to float
  %778 = fmul fast float %689, 5.000000e-01
  %779 = fmul fast float %777, %777
  %780 = fmul fast float %779, %778
  %781 = fsub fast float 1.500000e+00, %780
  %782 = fmul fast float %777, %689
  %783 = fmul fast float %782, %781
  %784 = bitcast float %690 to i32
  %785 = ashr i32 %784, 1
  %786 = sub nsw i32 1597463174, %785
  %787 = bitcast i32 %786 to float
  %788 = fmul fast float %690, 5.000000e-01
  %789 = fmul fast float %787, %787
  %790 = fmul fast float %789, %788
  %791 = fsub fast float 1.500000e+00, %790
  %792 = fmul fast float %787, %690
  %793 = fmul fast float %792, %791
  %794 = fsub fast float %773, %755
  %795 = fsub fast float %783, %759
  %796 = fsub fast float %793, %763
  %797 = fmul fast float %794, %723
  %798 = fmul fast float %795, %725
  %799 = fmul fast float %796, %730
  %800 = fadd fast float %797, %738
  %801 = fadd fast float %798, %742
  %802 = fadd fast float %799, %746
  %803 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  %804 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %805 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %806 = fmul fast float %803, %803
  %807 = fmul fast float %804, %804
  %808 = fmul fast float %805, %805
  %809 = fsub fast float %806, %688
  %810 = fsub fast float %807, %689
  %811 = fsub fast float %808, %690
  %812 = fmul fast float %809, %713
  %813 = fmul fast float %810, %713
  %814 = fmul fast float %811, %713
  %815 = fadd fast float %812, %688
  %816 = fadd fast float %813, %689
  %817 = fadd fast float %814, %690
  %818 = fadd fast float %735, %699
  %819 = fsub fast float %818, %752
  %820 = call float @dx.op.unary.f32(i32 7, float %819)  ; Saturate(value)
  %821 = fsub fast float %820, %699
  %822 = fmul fast float %821, %713
  %823 = fadd fast float %822, %699
  br label %877

; <label>:824                                     ; preds = %712
  %825 = and i32 %715, 134217728
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %861, label %827

; <label>:827                                     ; preds = %824
  %828 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %829 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %830 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %831 = fadd fast float %828, -5.000000e-01
  %832 = fadd fast float %829, -5.000000e-01
  %833 = fadd fast float %830, -5.000000e-01
  %834 = fmul fast float %831, %713
  %835 = fmul fast float %832, %713
  %836 = fmul fast float %833, %713
  %837 = fadd fast float %834, 5.000000e-01
  %838 = fadd fast float %835, 5.000000e-01
  %839 = fadd fast float %836, 5.000000e-01
  %840 = call float @dx.op.unary.f32(i32 24, float %688)  ; Sqrt(value)
  %841 = call float @dx.op.unary.f32(i32 24, float %689)  ; Sqrt(value)
  %842 = call float @dx.op.unary.f32(i32 24, float %690)  ; Sqrt(value)
  %843 = fmul fast float %837, 2.000000e+00
  %844 = fsub fast float 1.000000e+00, %843
  %845 = fmul fast float %844, %840
  %846 = fadd fast float %845, %843
  %847 = fmul fast float %846, %840
  %848 = fmul fast float %838, 2.000000e+00
  %849 = fsub fast float 1.000000e+00, %848
  %850 = fmul fast float %849, %841
  %851 = fadd fast float %850, %848
  %852 = fmul fast float %851, %841
  %853 = fmul fast float %839, 2.000000e+00
  %854 = fsub fast float 1.000000e+00, %853
  %855 = fmul fast float %854, %842
  %856 = fadd fast float %855, %853
  %857 = fmul fast float %856, %842
  %858 = fmul fast float %847, %847
  %859 = fmul fast float %852, %852
  %860 = fmul fast float %857, %857
  br label %877

; <label>:861                                     ; preds = %824
  %862 = fmul fast float %272, %272
  %863 = fmul fast float %276, %276
  %864 = fmul fast float %280, %280
  %865 = fadd fast float %862, -1.000000e+00
  %866 = fadd fast float %863, -1.000000e+00
  %867 = fadd fast float %864, -1.000000e+00
  %868 = fmul fast float %713, %865
  %869 = fmul fast float %713, %866
  %870 = fmul fast float %713, %867
  %871 = fadd fast float %868, 1.000000e+00
  %872 = fadd fast float %869, 1.000000e+00
  %873 = fadd fast float %870, 1.000000e+00
  %874 = fmul fast float %871, %688
  %875 = fmul fast float %872, %689
  %876 = fmul fast float %873, %690
  br label %877

; <label>:877                                     ; preds = %861, %827, %718, %673
  %878 = phi float [ %823, %718 ], [ %699, %827 ], [ %699, %861 ], [ 0x3FA23C0BE0000000, %673 ]
  %879 = phi float [ %815, %718 ], [ %858, %827 ], [ %874, %861 ], [ 1.000000e+00, %673 ]
  %880 = phi float [ %816, %718 ], [ %859, %827 ], [ %875, %861 ], [ 1.000000e+00, %673 ]
  %881 = phi float [ %817, %718 ], [ %860, %827 ], [ %876, %861 ], [ 1.000000e+00, %673 ]
  %882 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.i32 %882, 1
  %884 = and i32 %883, 1
  %885 = icmp ne i32 %884, 0
  %886 = add i32 %65, 276
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = and i32 %888, 32
  %890 = icmp ne i32 %889, 0
  %891 = and i1 %885, %890
  %892 = select i1 %891, float 1.000000e+00, float %879
  %893 = select i1 %891, float 0x3FD3333340000000, float %880
  %894 = select i1 %891, float 0x3FD3333340000000, float %881
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = and i32 %896, 32
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %971, label %899

; <label>:899                                     ; preds = %877
  %900 = add i32 %65, 76
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = add i32 %65, 292
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %903, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = add i32 %905, 0
  %907 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %906, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %908 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %907, %dx.types.Handle %101, float %486, float %487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %909 = extractvalue %dx.types.ResRet.f32 %908, 0
  %910 = extractvalue %dx.types.ResRet.f32 %908, 1
  %911 = extractvalue %dx.types.ResRet.f32 %908, 2
  %912 = extractvalue %dx.types.ResRet.f32 %908, 3
  %913 = and i32 %902, 255
  %914 = uitofp i32 %913 to float
  %915 = lshr i32 %902, 8
  %916 = and i32 %915, 255
  %917 = uitofp i32 %916 to float
  %918 = lshr i32 %902, 16
  %919 = and i32 %918, 255
  %920 = uitofp i32 %919 to float
  %921 = fmul fast float %920, 0x3F70101000000000
  %922 = fmul fast float %909, %914
  %923 = fadd fast float %922, %917
  %924 = fmul fast float %923, 0x3F70101000000000
  %925 = fadd fast float %910, -5.000000e-01
  %926 = fadd fast float %912, -5.000000e-01
  %927 = fmul fast float %925, %921
  %928 = fmul fast float %926, %921
  %929 = fadd fast float %927, 5.000000e-01
  %930 = fadd fast float %928, 5.000000e-01
  %931 = fmul fast float %929, 2.000000e+00
  %932 = fadd fast float %931, -1.000000e+00
  %933 = fmul fast float %930, 2.000000e+00
  %934 = fadd fast float %933, -1.000000e+00
  %935 = fadd fast float %932, %934
  %936 = fmul fast float %935, 5.000000e-01
  %937 = fsub fast float %932, %934
  %938 = fmul fast float %937, 5.000000e-01
  %939 = call float @dx.op.unary.f32(i32 6, float %936)  ; FAbs(value)
  %940 = fsub fast float 1.000000e+00, %939
  %941 = call float @dx.op.unary.f32(i32 6, float %938)  ; FAbs(value)
  %942 = fsub fast float %940, %941
  %943 = call float @dx.op.dot3.f32(i32 55, float %936, float %938, float %942, float %936, float %938, float %942)  ; Dot3(ax,ay,az,bx,by,bz)
  %944 = call float @dx.op.unary.f32(i32 25, float %943)  ; Rsqrt(value)
  %945 = fmul fast float %936, %944
  %946 = fmul fast float %938, %944
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = and i32 %948, 67108864
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %967, label %951

; <label>:951                                     ; preds = %899
  %952 = add i32 %65, 216
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = and i32 %954, 65535
  %956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %955)  ; LegacyF16ToF32(value)
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = and i32 %958, 65535
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = lshr i32 %954, 16
  %962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %961)  ; LegacyF16ToF32(value)
  %963 = fsub fast float %924, %962
  %964 = fmul fast float %963, %956
  %965 = fadd fast float %964, %960
  %966 = call float @dx.op.unary.f32(i32 7, float %965)  ; Saturate(value)
  br label %967

; <label>:967                                     ; preds = %951, %899
  %968 = phi float [ %966, %951 ], [ %924, %899 ]
  %969 = call float @dx.op.dot2.f32(i32 54, float %945, float %946, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %970 = call float @dx.op.dot2.f32(i32 54, float %945, float %946, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %971

; <label>:971                                     ; preds = %967, %877
  %972 = phi float [ %968, %967 ], [ 0x3FD6666660000000, %877 ]
  %973 = phi float [ %969, %967 ], [ 0.000000e+00, %877 ]
  %974 = phi float [ %970, %967 ], [ 0.000000e+00, %877 ]
  %975 = phi float [ %911, %967 ], [ 1.000000e+00, %877 ]
  %976 = add i32 %65, 128
  %977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = lshr i32 %978, 22
  %980 = shl nuw nsw i32 %979, 5
  %981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %980)  ; LegacyF16ToF32(value)
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = and i32 %983, 64
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %1019, label %986

; <label>:986                                     ; preds = %971
  %987 = add i32 %65, 304
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = add i32 %989, 0
  %991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %990, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.i32 %992, 0
  %994 = and i32 %993, 131072
  %995 = icmp eq i32 %994, 0
  %996 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %991, %dx.types.Handle %101, float %486, float %487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %997 = extractvalue %dx.types.ResRet.f32 %996, 0
  %998 = extractvalue %dx.types.ResRet.f32 %996, 1
  %999 = extractvalue %dx.types.ResRet.f32 %996, 2
  %1000 = fmul fast float %997, %260
  %1001 = fmul fast float %998, %263
  %1002 = fmul fast float %999, %266
  br i1 %995, label %1009, label %1003

; <label>:1003                                    ; preds = %986
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 0
  %1006 = fmul fast float %1005, %1000
  %1007 = fmul fast float %1005, %1001
  %1008 = fmul fast float %1005, %1002
  br label %1009

; <label>:1009                                    ; preds = %1003, %986
  %1010 = phi float [ %1006, %1003 ], [ %1000, %986 ]
  %1011 = phi float [ %1007, %1003 ], [ %1001, %986 ]
  %1012 = phi float [ %1008, %1003 ], [ %1002, %986 ]
  %1013 = fmul fast float %1010, %981
  %1014 = select i1 %243, float %1013, float %1010
  %1015 = call float @dx.op.dot3.f32(i32 55, float %1014, float %1011, float %1012, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1016 = select i1 %243, float 0.000000e+00, float %1010
  %1017 = select i1 %243, float %1015, float %1011
  %1018 = select i1 %243, float 0.000000e+00, float %1012
  br label %1019

; <label>:1019                                    ; preds = %1009, %971
  %1020 = phi float [ %1016, %1009 ], [ 0.000000e+00, %971 ]
  %1021 = phi float [ %1017, %1009 ], [ 0.000000e+00, %971 ]
  %1022 = phi float [ %1018, %1009 ], [ 0.000000e+00, %971 ]
  %1023 = add i32 %65, 80
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = and i32 %1025, 255
  %1027 = uitofp i32 %1026 to float
  %1028 = lshr i32 %1025, 8
  %1029 = and i32 %1028, 255
  %1030 = uitofp i32 %1029 to float
  %1031 = call float @dx.op.dot3.f32(i32 55, float %892, float %893, float %894, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1032 = fmul fast float %1030, %1031
  %1033 = fadd fast float %1032, %1027
  %1034 = fmul fast float %1033, 0x3F70101020000000
  %1035 = call float @dx.op.unary.f32(i32 7, float %1034)  ; Saturate(value)
  br label %1036

; <label>:1036                                    ; preds = %1019, %242
  %1037 = phi float [ %973, %1019 ], [ 0.000000e+00, %242 ]
  %1038 = phi float [ %974, %1019 ], [ 0.000000e+00, %242 ]
  %1039 = phi float [ %892, %1019 ], [ 0.000000e+00, %242 ]
  %1040 = phi float [ %893, %1019 ], [ 0.000000e+00, %242 ]
  %1041 = phi float [ %894, %1019 ], [ 0.000000e+00, %242 ]
  %1042 = phi float [ %1020, %1019 ], [ 0.000000e+00, %242 ]
  %1043 = phi float [ %1021, %1019 ], [ 0.000000e+00, %242 ]
  %1044 = phi float [ %1022, %1019 ], [ 0.000000e+00, %242 ]
  %1045 = phi float [ %878, %1019 ], [ 0.000000e+00, %242 ]
  %1046 = phi float [ %674, %1019 ], [ 0.000000e+00, %242 ]
  %1047 = phi float [ %972, %1019 ], [ 0.000000e+00, %242 ]
  %1048 = phi float [ %975, %1019 ], [ 0.000000e+00, %242 ]
  %1049 = phi float [ %1035, %1019 ], [ 0.000000e+00, %242 ]
  %1050 = icmp ult i32 %376, 2
  %1051 = add i32 %65, 40
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = add i32 %65, 44
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = or i32 %1056, %1053
  %1058 = icmp eq i32 %1057, 0
  br i1 %1058, label %1882, label %1059

; <label>:1059                                    ; preds = %1036
  %1060 = add i32 %65, 236
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = lshr i32 %1062, 16
  %1064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1063)  ; LegacyF16ToF32(value)
  %1065 = fmul fast float %1064, 0x3F50624DE0000000
  %1066 = add i32 %65, 88
  %1067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.i32 %1067, 0
  %1069 = lshr i32 %1068, 16
  %1070 = and i32 %1069, 255
  %1071 = lshr i32 %1068, 24
  %1072 = add i32 %65, 244
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = and i32 %1074, 65535
  %1076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1075)  ; LegacyF16ToF32(value)
  %1077 = lshr i32 %1074, 16
  %1078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1077)  ; LegacyF16ToF32(value)
  %1079 = add i32 %65, 48
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = lshr i32 %1081, 22
  %1083 = shl nuw nsw i32 %1082, 5
  %1084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1083)  ; LegacyF16ToF32(value)
  %1085 = shl i32 %1081, 4
  %1086 = and i32 %1085, 32752
  %1087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1086)  ; LegacyF16ToF32(value)
  %1088 = lshr i32 %1081, 7
  %1089 = and i32 %1088, 32752
  %1090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1089)  ; LegacyF16ToF32(value)
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 3
  %1093 = fmul fast float %1092, 1.000000e+03
  %1094 = fmul fast float %327, %1093
  %1095 = call float @dx.op.unary.f32(i32 22, float %1094)  ; Frc(value)
  %1096 = fadd fast float %1095, %317
  %1097 = fmul fast float %328, %1093
  %1098 = call float @dx.op.unary.f32(i32 22, float %1097)  ; Frc(value)
  %1099 = fadd fast float %1098, %319
  %1100 = fmul fast float %1065, %1093
  %1101 = call float @dx.op.unary.f32(i32 22, float %1100)  ; Frc(value)
  %1102 = fmul fast float %1101, 0x401921FB60000000
  %1103 = fadd fast float %1102, %1084
  %1104 = call float @dx.op.unary.f32(i32 13, float %1103)  ; Sin(value)
  %1105 = call float @dx.op.unary.f32(i32 12, float %1103)  ; Cos(value)
  %1106 = fsub fast float -0.000000e+00, %1104
  %1107 = fadd fast float %88, -5.000000e-01
  %1108 = fadd fast float %89, -5.000000e-01
  %1109 = fmul fast float %1076, %1107
  %1110 = fmul fast float %1078, %1108
  %1111 = fadd fast float %1109, 5.000000e-01
  %1112 = fadd fast float %1110, 5.000000e-01
  %1113 = fmul fast float %1087, %1111
  %1114 = fmul fast float %1090, %1112
  %1115 = fmul fast float %1105, %1113
  %1116 = call float @dx.op.tertiary.f32(i32 46, float %1106, float %1114, float %1115)  ; FMad(a,b,c)
  %1117 = fmul fast float %1104, %1113
  %1118 = call float @dx.op.tertiary.f32(i32 46, float %1105, float %1114, float %1117)  ; FMad(a,b,c)
  %1119 = fadd fast float %1096, %1116
  %1120 = fadd fast float %1099, %1118
  %1121 = icmp ugt i32 %1070, 1
  %1122 = icmp ugt i32 %1068, 33554431
  %1123 = or i1 %1122, %1121
  br i1 %1123, label %1124, label %1149

; <label>:1124                                    ; preds = %1059
  %1125 = add i32 %65, 196
  %1126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1125, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.i32 %1126, 0
  %1128 = lshr i32 %1127, 16
  %1129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1128)  ; LegacyF16ToF32(value)
  %1130 = fmul fast float %1092, %1129
  %1131 = call float @dx.op.unary.f32(i32 22, float %1130)  ; Frc(value)
  %1132 = mul nuw nsw i32 %1070, %1071
  %1133 = uitofp i32 %1132 to float
  %1134 = fmul fast float %1131, %1133
  %1135 = call float @dx.op.unary.f32(i32 27, float %1134)  ; Round_ni(value)
  %1136 = fptoui float %1135 to i32
  %1137 = urem i32 %1136, %1070
  %1138 = udiv i32 %1136, %1071
  %1139 = call float @dx.op.unary.f32(i32 22, float %1119)  ; Frc(value)
  %1140 = call float @dx.op.unary.f32(i32 22, float %1120)  ; Frc(value)
  %1141 = uitofp i32 %1137 to float
  %1142 = uitofp i32 %1138 to float
  %1143 = fadd fast float %1139, %1141
  %1144 = fadd fast float %1140, %1142
  %1145 = uitofp i32 %1070 to float
  %1146 = uitofp i32 %1071 to float
  %1147 = fdiv fast float %1143, %1145
  %1148 = fdiv fast float %1144, %1146
  br label %1149

; <label>:1149                                    ; preds = %1124, %1059
  %1150 = phi float [ %1147, %1124 ], [ %1119, %1059 ]
  %1151 = phi float [ %1148, %1124 ], [ %1120, %1059 ]
  %1152 = and i32 %1053, 16777216
  %1153 = icmp eq i32 %1152, 0
  br i1 %1153, label %1263, label %1154

; <label>:1154                                    ; preds = %1149
  %1155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.f32 %1155, 0
  %1157 = extractvalue %dx.types.CBufRet.f32 %1155, 1
  %1158 = extractvalue %dx.types.CBufRet.f32 %1155, 2
  %1159 = fadd fast float %1156, %152
  %1160 = fadd fast float %1157, %153
  %1161 = fadd fast float %1158, %154
  %1162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1163 = extractvalue %dx.types.CBufRet.f32 %1162, 0
  %1164 = call float @dx.op.unary.f32(i32 7, float %1163)  ; Saturate(value)
  %1165 = icmp eq i32 %64, 65535
  br i1 %1165, label %1260, label %1166

; <label>:1166                                    ; preds = %1154
  %1167 = lshr i32 %64, 1
  %1168 = shl i32 %1167, 2
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = and i32 %64, 1
  %1172 = icmp ne i32 %1171, 0
  %1173 = lshr i32 %1170, 16
  %1174 = and i32 %1170, 65535
  %1175 = select i1 %1172, i32 %1173, i32 %1174
  %1176 = icmp eq i32 %1175, 65535
  br i1 %1176, label %1256, label %1177

; <label>:1177                                    ; preds = %1166
  %1178 = mul nuw nsw i32 %1175, 40
  %1179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1181 = extractvalue %dx.types.ResRet.f32 %1179, 1
  %1182 = extractvalue %dx.types.ResRet.f32 %1179, 2
  %1183 = add nuw nsw i32 %1178, 12
  %1184 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.f32 %1184, 0
  %1186 = extractvalue %dx.types.ResRet.f32 %1184, 1
  %1187 = extractvalue %dx.types.ResRet.f32 %1184, 2
  %1188 = add nuw nsw i32 %1178, 24
  %1189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 0
  %1191 = extractvalue %dx.types.ResRet.f32 %1189, 1
  %1192 = extractvalue %dx.types.ResRet.f32 %1189, 2
  %1193 = add nuw nsw i32 %1178, 36
  %1194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.f32 %1194, 0
  %1196 = fsub fast float %1159, %1180
  %1197 = fsub fast float %1160, %1181
  %1198 = fsub fast float %1161, %1182
  %1199 = fmul fast float %1195, %1196
  %1200 = fmul fast float %1195, %1197
  %1201 = fmul fast float %1195, %1198
  %1202 = call float @dx.op.unary.f32(i32 27, float %1199)  ; Round_ni(value)
  %1203 = call float @dx.op.unary.f32(i32 27, float %1200)  ; Round_ni(value)
  %1204 = call float @dx.op.unary.f32(i32 27, float %1201)  ; Round_ni(value)
  %1205 = fadd fast float %1202, 5.000000e-01
  %1206 = fadd fast float %1203, 5.000000e-01
  %1207 = fadd fast float %1204, 5.000000e-01
  %1208 = fmul fast float %1205, %1185
  %1209 = fmul fast float %1206, %1186
  %1210 = fmul fast float %1207, %1187
  %1211 = shl i32 %64, 2
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = add i32 %1213, 0
  %1215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1214, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1216 = call float @dx.op.unary.f32(i32 22, float %1208)  ; Frc(value)
  %1217 = call float @dx.op.unary.f32(i32 22, float %1209)  ; Frc(value)
  %1218 = call float @dx.op.unary.f32(i32 22, float %1210)  ; Frc(value)
  %1219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1215, %dx.types.Handle %59, float %1216, float %1217, float %1218, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1220 = extractvalue %dx.types.ResRet.f32 %1219, 0
  %1221 = extractvalue %dx.types.ResRet.f32 %1219, 1
  %1222 = extractvalue %dx.types.ResRet.f32 %1219, 2
  %1223 = fmul fast float %1220, 1.023000e+03
  %1224 = fmul fast float %1221, 1.023000e+03
  %1225 = fmul fast float %1222, 1.023000e+03
  %1226 = fadd fast float %1223, 5.000000e-01
  %1227 = fadd fast float %1224, 5.000000e-01
  %1228 = fadd fast float %1225, 5.000000e-01
  %1229 = call float @dx.op.unary.f32(i32 27, float %1226)  ; Round_ni(value)
  %1230 = call float @dx.op.unary.f32(i32 27, float %1227)  ; Round_ni(value)
  %1231 = call float @dx.op.unary.f32(i32 27, float %1228)  ; Round_ni(value)
  %1232 = fsub fast float %1199, %1202
  %1233 = fsub fast float %1200, %1203
  %1234 = fsub fast float %1201, %1204
  %1235 = fmul fast float %1232, 7.500000e-01
  %1236 = fmul fast float %1233, 7.500000e-01
  %1237 = fmul fast float %1234, 7.500000e-01
  %1238 = fadd fast float %1202, 1.250000e-01
  %1239 = fadd fast float %1238, %1235
  %1240 = fadd fast float %1239, %1229
  %1241 = fadd fast float %1203, 1.250000e-01
  %1242 = fadd fast float %1241, %1236
  %1243 = fadd fast float %1242, %1230
  %1244 = fadd fast float %1204, 1.250000e-01
  %1245 = fadd fast float %1244, %1237
  %1246 = fadd fast float %1245, %1231
  %1247 = fmul fast float %1240, %1190
  %1248 = fmul fast float %1243, %1191
  %1249 = fmul fast float %1246, %1192
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = add i32 %1251, 0
  %1253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1252, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1253, %dx.types.Handle %57, float %1247, float %1248, float %1249, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  br label %1256

; <label>:1256                                    ; preds = %1177, %1166
  %1257 = phi float [ %1255, %1177 ], [ -1.000000e+00, %1166 ]
  %1258 = fadd fast float %1257, %1164
  %1259 = call float @dx.op.unary.f32(i32 7, float %1258)  ; Saturate(value)
  br label %1260

; <label>:1260                                    ; preds = %1256, %1154
  %1261 = phi float [ %1259, %1256 ], [ %1164, %1154 ]
  %1262 = fmul fast float %1261, %91
  br label %1263

; <label>:1263                                    ; preds = %1260, %1149
  %1264 = phi float [ %1262, %1260 ], [ %91, %1149 ]
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = and i32 %1266, 256
  %1268 = icmp eq i32 %1267, 0
  br i1 %1268, label %1315, label %1269

; <label>:1269                                    ; preds = %1263
  %1270 = add i32 %65, 332
  %1271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = add i32 %1272, 0
  %1274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1273, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1275 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1274, %dx.types.Handle %102, float %1150, float %1151, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1276 = extractvalue %dx.types.ResRet.f32 %1275, 0
  %1277 = add i32 %65, 100
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = shl i32 %1279, 4
  %1281 = and i32 %1280, 32752
  %1282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1281)  ; LegacyF16ToF32(value)
  %1283 = lshr i32 %1279, 7
  %1284 = and i32 %1283, 32752
  %1285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1284)  ; LegacyF16ToF32(value)
  %1286 = fsub fast float 1.000000e+00, %1264
  %1287 = call float @dx.op.binary.f32(i32 35, float %1286, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1288 = bitcast float %1264 to i32
  %1289 = sitofp i32 %1288 to float
  %1290 = fadd fast float %1289, 0xC1CFBF8940000000
  %1291 = fmul fast float %1285, %1290
  %1292 = fadd fast float %1291, 0x41CFBF8940000000
  %1293 = fptosi float %1292 to i32
  %1294 = bitcast i32 %1293 to float
  %1295 = bitcast float %1287 to i32
  %1296 = sitofp i32 %1295 to float
  %1297 = fadd fast float %1296, 0xC1CFBF8940000000
  %1298 = fmul fast float %1297, %1285
  %1299 = fadd fast float %1298, 0x41CFBF8940000000
  %1300 = fptosi float %1299 to i32
  %1301 = bitcast i32 %1300 to float
  %1302 = fmul fast float %1294, %1282
  %1303 = fmul fast float %1301, %1282
  %1304 = fsub fast float %1287, %1302
  %1305 = fadd fast float %1303, %1287
  %1306 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  %1307 = call float @dx.op.unary.f32(i32 7, float %1305)  ; Saturate(value)
  %1308 = fsub fast float %1276, %1306
  %1309 = fsub fast float %1307, %1306
  %1310 = bitcast float %1309 to i32
  %1311 = sub nsw i32 2129859010, %1310
  %1312 = bitcast i32 %1311 to float
  %1313 = fmul fast float %1312, %1308
  %1314 = call float @dx.op.unary.f32(i32 7, float %1313)  ; Saturate(value)
  br label %1315

; <label>:1315                                    ; preds = %1269, %1263
  %1316 = phi float [ %1314, %1269 ], [ %1264, %1263 ]
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = and i32 %1318, 128
  %1320 = icmp eq i32 %1319, 0
  br i1 %1320, label %1337, label %1321

; <label>:1321                                    ; preds = %1315
  %1322 = add i32 %65, 320
  %1323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1322, i32 undef)  ; BufferLoad(srv,index,wot)
  %1324 = extractvalue %dx.types.ResRet.i32 %1323, 0
  %1325 = add i32 %1324, 0
  %1326 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1325, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1327 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1326, %dx.types.Handle %102, float %1150, float %1151, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1328 = extractvalue %dx.types.ResRet.f32 %1327, 0
  %1329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1330 = extractvalue %dx.types.ResRet.i32 %1329, 0
  %1331 = and i32 %1330, 524288
  %1332 = icmp ne i32 %1331, 0
  %1333 = fcmp fast ogt float %1328, 0x3FE0101020000000
  %1334 = select i1 %1333, float 1.000000e+00, float 0.000000e+00
  %1335 = select i1 %1332, float %1334, float %1328
  %1336 = fmul fast float %1335, %1316
  br label %1337

; <label>:1337                                    ; preds = %1321, %1315
  %1338 = phi float [ %1336, %1321 ], [ %1316, %1315 ]
  %1339 = fcmp fast ult float %1338, 0x3F70101020000000
  br i1 %1339, label %1882, label %1340

; <label>:1340                                    ; preds = %1337
  %1341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.i32 %1341, 0
  %1343 = and i32 %1342, 16
  %1344 = icmp eq i32 %1343, 0
  br i1 %1344, label %1543, label %1345

; <label>:1345                                    ; preds = %1340
  %1346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.i32 %1346, 0
  %1348 = add i32 %65, 284
  %1349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.i32 %1349, 0
  %1351 = add i32 %1350, 0
  %1352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1351, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1353 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1352, %dx.types.Handle %101, float %1150, float %1151, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1354 = extractvalue %dx.types.ResRet.f32 %1353, 0
  %1355 = extractvalue %dx.types.ResRet.f32 %1353, 1
  %1356 = extractvalue %dx.types.ResRet.f32 %1353, 2
  %1357 = extractvalue %dx.types.ResRet.f32 %1353, 3
  %1358 = and i32 %1347, 255
  %1359 = uitofp i32 %1358 to float
  %1360 = lshr i32 %1347, 8
  %1361 = and i32 %1360, 255
  %1362 = uitofp i32 %1361 to float
  %1363 = fmul fast float %1357, %1359
  %1364 = fadd fast float %1363, %1362
  %1365 = fmul fast float %1364, 0x3F70101000000000
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = and i32 %1367, 512
  %1369 = icmp eq i32 %1368, 0
  br i1 %1369, label %1378, label %1370

; <label>:1370                                    ; preds = %1345
  %1371 = add i32 %65, 344
  %1372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1371, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.i32 %1372, 0
  %1374 = add i32 %1373, 0
  %1375 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1374, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1376 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1375, %dx.types.Handle %102, float %1150, float %1151, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1377 = extractvalue %dx.types.ResRet.f32 %1376, 0
  br label %1378

; <label>:1378                                    ; preds = %1370, %1345
  %1379 = phi float [ %1377, %1370 ], [ 1.000000e+00, %1345 ]
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = and i32 %1381, 33554432
  %1383 = icmp eq i32 %1382, 0
  br i1 %1383, label %1490, label %1384

; <label>:1384                                    ; preds = %1378
  %1385 = add i32 %65, 192
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1385, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = and i32 %1387, 65535
  %1389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1388)  ; LegacyF16ToF32(value)
  %1390 = lshr i32 %1387, 16
  %1391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1390)  ; LegacyF16ToF32(value)
  %1392 = add i32 %65, 196
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = and i32 %1394, 65535
  %1396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1395)  ; LegacyF16ToF32(value)
  %1397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.i32 %1397, 0
  %1399 = lshr i32 %1398, 24
  %1400 = uitofp i32 %1399 to float
  %1401 = fmul fast float %1400, 0x3F70101020000000
  %1402 = and i32 %1398, 255
  %1403 = uitofp i32 %1402 to float
  %1404 = fmul fast float %1403, 0x3F70101020000000
  %1405 = lshr i32 %1398, 8
  %1406 = and i32 %1405, 255
  %1407 = uitofp i32 %1406 to float
  %1408 = fmul fast float %1407, 0x3F70101020000000
  %1409 = lshr i32 %1398, 16
  %1410 = and i32 %1409, 255
  %1411 = uitofp i32 %1410 to float
  %1412 = fmul fast float %1411, 0x3F70101020000000
  %1413 = add i32 %65, 188
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1413, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = lshr i32 %1415, 24
  %1417 = uitofp i32 %1416 to float
  %1418 = fmul fast float %1417, 0x3F70101020000000
  %1419 = and i32 %1415, 255
  %1420 = uitofp i32 %1419 to float
  %1421 = fmul fast float %1420, 0x3F70101020000000
  %1422 = lshr i32 %1415, 8
  %1423 = and i32 %1422, 255
  %1424 = uitofp i32 %1423 to float
  %1425 = fmul fast float %1424, 0x3F70101020000000
  %1426 = lshr i32 %1415, 16
  %1427 = and i32 %1426, 255
  %1428 = uitofp i32 %1427 to float
  %1429 = fmul fast float %1428, 0x3F70101020000000
  %1430 = bitcast float %1354 to i32
  %1431 = ashr i32 %1430, 1
  %1432 = sub nsw i32 1597463174, %1431
  %1433 = bitcast i32 %1432 to float
  %1434 = fmul fast float %1354, 5.000000e-01
  %1435 = fmul fast float %1433, %1433
  %1436 = fmul fast float %1435, %1434
  %1437 = fsub fast float 1.500000e+00, %1436
  %1438 = fmul fast float %1433, %1354
  %1439 = fmul fast float %1438, %1437
  %1440 = bitcast float %1355 to i32
  %1441 = ashr i32 %1440, 1
  %1442 = sub nsw i32 1597463174, %1441
  %1443 = bitcast i32 %1442 to float
  %1444 = fmul fast float %1355, 5.000000e-01
  %1445 = fmul fast float %1443, %1443
  %1446 = fmul fast float %1445, %1444
  %1447 = fsub fast float 1.500000e+00, %1446
  %1448 = fmul fast float %1443, %1355
  %1449 = fmul fast float %1448, %1447
  %1450 = bitcast float %1356 to i32
  %1451 = ashr i32 %1450, 1
  %1452 = sub nsw i32 1597463174, %1451
  %1453 = bitcast i32 %1452 to float
  %1454 = fmul fast float %1356, 5.000000e-01
  %1455 = fmul fast float %1453, %1453
  %1456 = fmul fast float %1455, %1454
  %1457 = fsub fast float 1.500000e+00, %1456
  %1458 = fmul fast float %1453, %1356
  %1459 = fmul fast float %1458, %1457
  %1460 = fsub fast float %1439, %1421
  %1461 = fsub fast float %1449, %1425
  %1462 = fsub fast float %1459, %1429
  %1463 = fmul fast float %1460, %1389
  %1464 = fmul fast float %1461, %1391
  %1465 = fmul fast float %1462, %1396
  %1466 = fadd fast float %1463, %1404
  %1467 = fadd fast float %1464, %1408
  %1468 = fadd fast float %1465, %1412
  %1469 = call float @dx.op.unary.f32(i32 7, float %1466)  ; Saturate(value)
  %1470 = call float @dx.op.unary.f32(i32 7, float %1467)  ; Saturate(value)
  %1471 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  %1472 = fmul fast float %1469, %1469
  %1473 = fmul fast float %1470, %1470
  %1474 = fmul fast float %1471, %1471
  %1475 = fsub fast float %1472, %1354
  %1476 = fsub fast float %1473, %1355
  %1477 = fsub fast float %1474, %1356
  %1478 = fmul fast float %1475, %1379
  %1479 = fmul fast float %1476, %1379
  %1480 = fmul fast float %1477, %1379
  %1481 = fadd fast float %1478, %1354
  %1482 = fadd fast float %1479, %1355
  %1483 = fadd fast float %1480, %1356
  %1484 = fadd fast float %1401, %1365
  %1485 = fsub fast float %1484, %1418
  %1486 = call float @dx.op.unary.f32(i32 7, float %1485)  ; Saturate(value)
  %1487 = fsub fast float %1486, %1365
  %1488 = fmul fast float %1487, %1379
  %1489 = fadd fast float %1488, %1365
  br label %1543

; <label>:1490                                    ; preds = %1378
  %1491 = and i32 %1381, 134217728
  %1492 = icmp eq i32 %1491, 0
  br i1 %1492, label %1527, label %1493

; <label>:1493                                    ; preds = %1490
  %1494 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %1495 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %1496 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %1497 = fadd fast float %1494, -5.000000e-01
  %1498 = fadd fast float %1495, -5.000000e-01
  %1499 = fadd fast float %1496, -5.000000e-01
  %1500 = fmul fast float %1497, %1379
  %1501 = fmul fast float %1498, %1379
  %1502 = fmul fast float %1499, %1379
  %1503 = fadd fast float %1500, 5.000000e-01
  %1504 = fadd fast float %1501, 5.000000e-01
  %1505 = fadd fast float %1502, 5.000000e-01
  %1506 = call float @dx.op.unary.f32(i32 24, float %1354)  ; Sqrt(value)
  %1507 = call float @dx.op.unary.f32(i32 24, float %1355)  ; Sqrt(value)
  %1508 = call float @dx.op.unary.f32(i32 24, float %1356)  ; Sqrt(value)
  %1509 = fmul fast float %1503, 2.000000e+00
  %1510 = fsub fast float 1.000000e+00, %1509
  %1511 = fmul fast float %1510, %1506
  %1512 = fadd fast float %1511, %1509
  %1513 = fmul fast float %1512, %1506
  %1514 = fmul fast float %1504, 2.000000e+00
  %1515 = fsub fast float 1.000000e+00, %1514
  %1516 = fmul fast float %1515, %1507
  %1517 = fadd fast float %1516, %1514
  %1518 = fmul fast float %1517, %1507
  %1519 = fmul fast float %1505, 2.000000e+00
  %1520 = fsub fast float 1.000000e+00, %1519
  %1521 = fmul fast float %1520, %1508
  %1522 = fadd fast float %1521, %1519
  %1523 = fmul fast float %1522, %1508
  %1524 = fmul fast float %1513, %1513
  %1525 = fmul fast float %1518, %1518
  %1526 = fmul fast float %1523, %1523
  br label %1543

; <label>:1527                                    ; preds = %1490
  %1528 = fmul fast float %304, %304
  %1529 = fmul fast float %308, %308
  %1530 = fmul fast float %312, %312
  %1531 = fadd fast float %1528, -1.000000e+00
  %1532 = fadd fast float %1529, -1.000000e+00
  %1533 = fadd fast float %1530, -1.000000e+00
  %1534 = fmul fast float %1379, %1531
  %1535 = fmul fast float %1379, %1532
  %1536 = fmul fast float %1379, %1533
  %1537 = fadd fast float %1534, 1.000000e+00
  %1538 = fadd fast float %1535, 1.000000e+00
  %1539 = fadd fast float %1536, 1.000000e+00
  %1540 = fmul fast float %1537, %1354
  %1541 = fmul fast float %1538, %1355
  %1542 = fmul fast float %1539, %1356
  br label %1543

; <label>:1543                                    ; preds = %1527, %1493, %1384, %1340
  %1544 = phi float [ %1489, %1384 ], [ %1365, %1493 ], [ %1365, %1527 ], [ 0x3FA23C0BE0000000, %1340 ]
  %1545 = phi float [ %1481, %1384 ], [ %1524, %1493 ], [ %1540, %1527 ], [ 1.000000e+00, %1340 ]
  %1546 = phi float [ %1482, %1384 ], [ %1525, %1493 ], [ %1541, %1527 ], [ 1.000000e+00, %1340 ]
  %1547 = phi float [ %1483, %1384 ], [ %1526, %1493 ], [ %1542, %1527 ], [ 1.000000e+00, %1340 ]
  %1548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1549 = extractvalue %dx.types.CBufRet.i32 %1548, 1
  %1550 = and i32 %1549, 1
  %1551 = icmp ne i32 %1550, 0
  %1552 = add i32 %65, 276
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = and i32 %1554, 32
  %1556 = icmp ne i32 %1555, 0
  %1557 = and i1 %1551, %1556
  %1558 = select i1 %1557, float 1.000000e+00, float %1545
  %1559 = select i1 %1557, float 0x3FD3333340000000, float %1546
  %1560 = select i1 %1557, float 0x3FD3333340000000, float %1547
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = and i32 %1562, 32
  %1564 = icmp eq i32 %1563, 0
  br i1 %1564, label %1637, label %1565

; <label>:1565                                    ; preds = %1543
  %1566 = add i32 %65, 92
  %1567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1566, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.i32 %1567, 0
  %1569 = add i32 %65, 296
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1569, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = add i32 %1571, 0
  %1573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1572, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1574 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1573, %dx.types.Handle %101, float %1150, float %1151, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1575 = extractvalue %dx.types.ResRet.f32 %1574, 0
  %1576 = extractvalue %dx.types.ResRet.f32 %1574, 1
  %1577 = extractvalue %dx.types.ResRet.f32 %1574, 2
  %1578 = extractvalue %dx.types.ResRet.f32 %1574, 3
  %1579 = and i32 %1568, 255
  %1580 = uitofp i32 %1579 to float
  %1581 = lshr i32 %1568, 8
  %1582 = and i32 %1581, 255
  %1583 = uitofp i32 %1582 to float
  %1584 = lshr i32 %1568, 16
  %1585 = and i32 %1584, 255
  %1586 = uitofp i32 %1585 to float
  %1587 = fmul fast float %1586, 0x3F70101000000000
  %1588 = fmul fast float %1575, %1580
  %1589 = fadd fast float %1588, %1583
  %1590 = fmul fast float %1589, 0x3F70101000000000
  %1591 = fadd fast float %1576, -5.000000e-01
  %1592 = fadd fast float %1578, -5.000000e-01
  %1593 = fmul fast float %1591, %1587
  %1594 = fmul fast float %1592, %1587
  %1595 = fadd fast float %1593, 5.000000e-01
  %1596 = fadd fast float %1594, 5.000000e-01
  %1597 = fmul fast float %1595, 2.000000e+00
  %1598 = fadd fast float %1597, -1.000000e+00
  %1599 = fmul fast float %1596, 2.000000e+00
  %1600 = fadd fast float %1599, -1.000000e+00
  %1601 = fadd fast float %1598, %1600
  %1602 = fmul fast float %1601, 5.000000e-01
  %1603 = fsub fast float %1598, %1600
  %1604 = fmul fast float %1603, 5.000000e-01
  %1605 = call float @dx.op.unary.f32(i32 6, float %1602)  ; FAbs(value)
  %1606 = fsub fast float 1.000000e+00, %1605
  %1607 = call float @dx.op.unary.f32(i32 6, float %1604)  ; FAbs(value)
  %1608 = fsub fast float %1606, %1607
  %1609 = call float @dx.op.dot3.f32(i32 55, float %1602, float %1604, float %1608, float %1602, float %1604, float %1608)  ; Dot3(ax,ay,az,bx,by,bz)
  %1610 = call float @dx.op.unary.f32(i32 25, float %1609)  ; Rsqrt(value)
  %1611 = fmul fast float %1602, %1610
  %1612 = fmul fast float %1604, %1610
  %1613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.i32 %1613, 0
  %1615 = and i32 %1614, 67108864
  %1616 = icmp eq i32 %1615, 0
  br i1 %1616, label %1633, label %1617

; <label>:1617                                    ; preds = %1565
  %1618 = add i32 %65, 232
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1618, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = and i32 %1620, 65535
  %1622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1621)  ; LegacyF16ToF32(value)
  %1623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1624 = extractvalue %dx.types.ResRet.i32 %1623, 0
  %1625 = and i32 %1624, 65535
  %1626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1625)  ; LegacyF16ToF32(value)
  %1627 = lshr i32 %1620, 16
  %1628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1627)  ; LegacyF16ToF32(value)
  %1629 = fsub fast float %1590, %1628
  %1630 = fmul fast float %1629, %1622
  %1631 = fadd fast float %1630, %1626
  %1632 = call float @dx.op.unary.f32(i32 7, float %1631)  ; Saturate(value)
  br label %1633

; <label>:1633                                    ; preds = %1617, %1565
  %1634 = phi float [ %1632, %1617 ], [ %1590, %1565 ]
  %1635 = call float @dx.op.dot2.f32(i32 54, float %1611, float %1612, float %70, float %71)  ; Dot2(ax,ay,bx,by)
  %1636 = call float @dx.op.dot2.f32(i32 54, float %1611, float %1612, float %72, float %73)  ; Dot2(ax,ay,bx,by)
  br label %1637

; <label>:1637                                    ; preds = %1633, %1543
  %1638 = phi float [ %1634, %1633 ], [ 0x3FD6666660000000, %1543 ]
  %1639 = phi float [ %1635, %1633 ], [ 0.000000e+00, %1543 ]
  %1640 = phi float [ %1636, %1633 ], [ 0.000000e+00, %1543 ]
  %1641 = phi float [ %1577, %1633 ], [ 1.000000e+00, %1543 ]
  %1642 = add i32 %65, 144
  %1643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1642, i32 undef)  ; BufferLoad(srv,index,wot)
  %1644 = extractvalue %dx.types.ResRet.i32 %1643, 0
  %1645 = lshr i32 %1644, 22
  %1646 = shl nuw nsw i32 %1645, 5
  %1647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1646)  ; LegacyF16ToF32(value)
  %1648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1649 = extractvalue %dx.types.ResRet.i32 %1648, 0
  %1650 = and i32 %1649, 64
  %1651 = icmp eq i32 %1650, 0
  br i1 %1651, label %1685, label %1652

; <label>:1652                                    ; preds = %1637
  %1653 = add i32 %65, 308
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1653, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = add i32 %1655, 0
  %1657 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1656, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1659 = extractvalue %dx.types.ResRet.i32 %1658, 0
  %1660 = and i32 %1659, 131072
  %1661 = icmp eq i32 %1660, 0
  %1662 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1657, %dx.types.Handle %101, float %1150, float %1151, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1663 = extractvalue %dx.types.ResRet.f32 %1662, 0
  %1664 = extractvalue %dx.types.ResRet.f32 %1662, 1
  %1665 = extractvalue %dx.types.ResRet.f32 %1662, 2
  %1666 = fmul fast float %1663, %292
  %1667 = fmul fast float %1664, %295
  %1668 = fmul fast float %1665, %298
  br i1 %1661, label %1675, label %1669

; <label>:1669                                    ; preds = %1652
  %1670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1671 = extractvalue %dx.types.CBufRet.f32 %1670, 0
  %1672 = fmul fast float %1671, %1666
  %1673 = fmul fast float %1671, %1667
  %1674 = fmul fast float %1671, %1668
  br label %1675

; <label>:1675                                    ; preds = %1669, %1652
  %1676 = phi float [ %1672, %1669 ], [ %1666, %1652 ]
  %1677 = phi float [ %1673, %1669 ], [ %1667, %1652 ]
  %1678 = phi float [ %1674, %1669 ], [ %1668, %1652 ]
  %1679 = fmul fast float %1676, %1647
  %1680 = select i1 %243, float %1679, float %1676
  %1681 = call float @dx.op.dot3.f32(i32 55, float %1680, float %1677, float %1678, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1682 = select i1 %243, float 0.000000e+00, float %1676
  %1683 = select i1 %243, float %1681, float %1677
  %1684 = select i1 %243, float 0.000000e+00, float %1678
  br label %1685

; <label>:1685                                    ; preds = %1675, %1637
  %1686 = phi float [ %1682, %1675 ], [ 0.000000e+00, %1637 ]
  %1687 = phi float [ %1683, %1675 ], [ 0.000000e+00, %1637 ]
  %1688 = phi float [ %1684, %1675 ], [ 0.000000e+00, %1637 ]
  %1689 = add i32 %65, 96
  %1690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1689, i32 undef)  ; BufferLoad(srv,index,wot)
  %1691 = extractvalue %dx.types.ResRet.i32 %1690, 0
  %1692 = and i32 %1691, 255
  %1693 = uitofp i32 %1692 to float
  %1694 = lshr i32 %1691, 8
  %1695 = and i32 %1694, 255
  %1696 = uitofp i32 %1695 to float
  %1697 = call float @dx.op.dot3.f32(i32 55, float %1558, float %1559, float %1560, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1698 = fmul fast float %1696, %1697
  %1699 = fadd fast float %1698, %1693
  %1700 = fmul fast float %1699, 0x3F70101020000000
  %1701 = call float @dx.op.unary.f32(i32 7, float %1700)  ; Saturate(value)
  br i1 %1050, label %1702, label %1710

; <label>:1702                                    ; preds = %1685
  %1703 = fsub fast float 1.000000e+00, %1338
  %1704 = fmul fast float %1703, %1039
  %1705 = fmul fast float %1703, %1040
  %1706 = fmul fast float %1703, %1041
  %1707 = fmul fast float %1703, %1042
  %1708 = fmul fast float %1703, %1043
  %1709 = fmul fast float %1703, %1044
  br label %1710

; <label>:1710                                    ; preds = %1702, %1685
  %1711 = phi float [ %1704, %1702 ], [ %1039, %1685 ]
  %1712 = phi float [ %1705, %1702 ], [ %1040, %1685 ]
  %1713 = phi float [ %1706, %1702 ], [ %1041, %1685 ]
  %1714 = phi float [ %1707, %1702 ], [ %1042, %1685 ]
  %1715 = phi float [ %1708, %1702 ], [ %1043, %1685 ]
  %1716 = phi float [ %1709, %1702 ], [ %1044, %1685 ]
  %1717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1718 = extractvalue %dx.types.ResRet.i32 %1717, 0
  %1719 = and i32 %1718, 3
  %1720 = icmp eq i32 %1719, 3
  br i1 %1720, label %1799, label %1721

; <label>:1721                                    ; preds = %1710
  %1722 = and i32 %1718, 16
  %1723 = icmp ne i32 %1722, 0
  %1724 = select i1 %1723, float %1338, float 0.000000e+00
  %1725 = icmp eq i32 %1719, 0
  br i1 %1725, label %1726, label %1754

; <label>:1726                                    ; preds = %1721
  %1727 = and i32 %1718, 64
  %1728 = icmp ne i32 %1727, 0
  %1729 = select i1 %1728, float %1338, float 0.000000e+00
  %1730 = fsub fast float %1558, %1711
  %1731 = fsub fast float %1559, %1712
  %1732 = fsub fast float %1560, %1713
  %1733 = fmul fast float %1724, %1730
  %1734 = fmul fast float %1724, %1731
  %1735 = fmul fast float %1724, %1732
  %1736 = fadd fast float %1733, %1711
  %1737 = fadd fast float %1734, %1712
  %1738 = fadd fast float %1735, %1713
  %1739 = fsub fast float %1544, %1045
  %1740 = fmul fast float %1724, %1739
  %1741 = fadd fast float %1740, %1045
  %1742 = fsub fast float %1686, %1714
  %1743 = fsub fast float %1687, %1715
  %1744 = fsub fast float %1688, %1716
  %1745 = fmul fast float %1729, %1742
  %1746 = fmul fast float %1729, %1743
  %1747 = fmul fast float %1729, %1744
  %1748 = fadd fast float %1745, %1714
  %1749 = fadd fast float %1746, %1715
  %1750 = fadd fast float %1747, %1716
  %1751 = fsub fast float %1701, %1049
  %1752 = fmul fast float %1724, %1751
  %1753 = fadd fast float %1752, %1049
  br label %1799

; <label>:1754                                    ; preds = %1721
  %1755 = icmp eq i32 %1719, 1
  br i1 %1755, label %1756, label %1769

; <label>:1756                                    ; preds = %1754
  %1757 = fadd fast float %1558, -1.000000e+00
  %1758 = fadd fast float %1559, -1.000000e+00
  %1759 = fadd fast float %1560, -1.000000e+00
  %1760 = fmul fast float %1724, %1757
  %1761 = fmul fast float %1724, %1758
  %1762 = fmul fast float %1724, %1759
  %1763 = fadd fast float %1760, 1.000000e+00
  %1764 = fadd fast float %1761, 1.000000e+00
  %1765 = fadd fast float %1762, 1.000000e+00
  %1766 = fmul fast float %1763, %1711
  %1767 = fmul fast float %1764, %1712
  %1768 = fmul fast float %1765, %1713
  br label %1799

; <label>:1769                                    ; preds = %1754
  %1770 = icmp eq i32 %1719, 2
  br i1 %1770, label %1771, label %1799

; <label>:1771                                    ; preds = %1769
  %1772 = call float @dx.op.unary.f32(i32 24, float %1558)  ; Sqrt(value)
  %1773 = call float @dx.op.unary.f32(i32 24, float %1559)  ; Sqrt(value)
  %1774 = call float @dx.op.unary.f32(i32 24, float %1560)  ; Sqrt(value)
  %1775 = fadd fast float %1772, -5.000000e-01
  %1776 = fadd fast float %1773, -5.000000e-01
  %1777 = fadd fast float %1774, -5.000000e-01
  %1778 = fmul fast float %1775, %1724
  %1779 = fmul fast float %1776, %1724
  %1780 = fmul fast float %1777, %1724
  %1781 = fadd fast float %1778, 5.000000e-01
  %1782 = fadd fast float %1779, 5.000000e-01
  %1783 = fadd fast float %1780, 5.000000e-01
  %1784 = fmul fast float %1781, 2.000000e+00
  %1785 = fsub fast float 1.000000e+00, %1784
  %1786 = fmul fast float %1785, %1711
  %1787 = fadd fast float %1786, %1784
  %1788 = fmul fast float %1787, %1711
  %1789 = fmul fast float %1782, 2.000000e+00
  %1790 = fsub fast float 1.000000e+00, %1789
  %1791 = fmul fast float %1790, %1712
  %1792 = fadd fast float %1791, %1789
  %1793 = fmul fast float %1792, %1712
  %1794 = fmul fast float %1783, 2.000000e+00
  %1795 = fsub fast float 1.000000e+00, %1794
  %1796 = fmul fast float %1795, %1713
  %1797 = fadd fast float %1796, %1794
  %1798 = fmul fast float %1797, %1713
  br label %1799

; <label>:1799                                    ; preds = %1771, %1769, %1756, %1726, %1710
  %1800 = phi float [ %1711, %1710 ], [ %1788, %1771 ], [ %1711, %1769 ], [ %1766, %1756 ], [ %1736, %1726 ]
  %1801 = phi float [ %1712, %1710 ], [ %1793, %1771 ], [ %1712, %1769 ], [ %1767, %1756 ], [ %1737, %1726 ]
  %1802 = phi float [ %1713, %1710 ], [ %1798, %1771 ], [ %1713, %1769 ], [ %1768, %1756 ], [ %1738, %1726 ]
  %1803 = phi float [ %1714, %1710 ], [ %1714, %1771 ], [ %1714, %1769 ], [ %1714, %1756 ], [ %1748, %1726 ]
  %1804 = phi float [ %1715, %1710 ], [ %1715, %1771 ], [ %1715, %1769 ], [ %1715, %1756 ], [ %1749, %1726 ]
  %1805 = phi float [ %1716, %1710 ], [ %1716, %1771 ], [ %1716, %1769 ], [ %1716, %1756 ], [ %1750, %1726 ]
  %1806 = phi float [ %1045, %1710 ], [ %1045, %1771 ], [ %1045, %1769 ], [ %1045, %1756 ], [ %1741, %1726 ]
  %1807 = phi float [ %1049, %1710 ], [ %1049, %1771 ], [ %1049, %1769 ], [ %1049, %1756 ], [ %1753, %1726 ]
  %1808 = and i32 %1718, 12
  %1809 = icmp eq i32 %1808, 12
  br i1 %1809, label %1882, label %1810

; <label>:1810                                    ; preds = %1799
  %1811 = and i32 %1718, 2097184
  %1812 = icmp eq i32 %1811, 2097184
  %1813 = select i1 %1812, float %1338, float 0.000000e+00
  %1814 = and i32 %1718, 4194336
  %1815 = icmp eq i32 %1814, 4194336
  %1816 = select i1 %1815, float %1338, float 0.000000e+00
  %1817 = and i32 %1718, 8388640
  %1818 = icmp eq i32 %1817, 8388640
  %1819 = select i1 %1818, float %1338, float 0.000000e+00
  %1820 = icmp eq i32 %1808, 0
  br i1 %1820, label %1821, label %1834

; <label>:1821                                    ; preds = %1810
  %1822 = fsub fast float %1639, %1037
  %1823 = fsub fast float %1640, %1038
  %1824 = fmul fast float %1813, %1822
  %1825 = fmul fast float %1813, %1823
  %1826 = fadd fast float %1824, %1037
  %1827 = fadd fast float %1825, %1038
  %1828 = fsub fast float %1641, %1048
  %1829 = fmul fast float %1816, %1828
  %1830 = fadd fast float %1829, %1048
  %1831 = fsub fast float %1638, %1047
  %1832 = fmul fast float %1819, %1831
  %1833 = fadd fast float %1832, %1047
  br label %1882

; <label>:1834                                    ; preds = %1810
  %1835 = icmp eq i32 %1808, 4
  br i1 %1835, label %1836, label %1868

; <label>:1836                                    ; preds = %1834
  %1837 = fmul fast float %1813, %1639
  %1838 = fmul fast float %1813, %1640
  %1839 = fadd fast float %1837, %1037
  %1840 = fadd fast float %1838, %1038
  %1841 = call float @dx.op.binary.f32(i32 36, float %1048, float %1641)  ; FMin(a,b)
  %1842 = fsub fast float %1841, %1048
  %1843 = fmul fast float %1842, %1816
  %1844 = fadd fast float %1843, %1048
  %1845 = fadd fast float %1638, %1047
  %1846 = fmul fast float %1845, 0x3FF337FAE0000000
  %1847 = fmul fast float %1047, %1047
  %1848 = fmul fast float %1638, %1638
  %1849 = fadd fast float %1848, %1847
  %1850 = fmul fast float %1849, 0x3FE5152B00000000
  %1851 = fmul fast float %1047, 0xBFCC1F85E0000000
  %1852 = fmul fast float %1851, %1638
  %1853 = fadd fast float %1852, 0xBFE1363700000000
  %1854 = fadd fast float %1853, %1846
  %1855 = fsub fast float %1854, %1850
  %1856 = fmul fast float %1845, 0x3FBA6F0D00000000
  %1857 = fmul fast float %1849, 0x3FD0432880000000
  %1858 = fmul fast float %1047, 0xBFEF110800000000
  %1859 = fmul fast float %1858, %1638
  %1860 = fadd fast float %1859, 1.000000e+00
  %1861 = fsub fast float %1860, %1856
  %1862 = fadd fast float %1861, %1857
  %1863 = fdiv fast float %1855, %1862
  %1864 = call float @dx.op.unary.f32(i32 7, float %1863)  ; Saturate(value)
  %1865 = fsub fast float %1864, %1047
  %1866 = fmul fast float %1865, %1819
  %1867 = fadd fast float %1866, %1047
  br label %1882

; <label>:1868                                    ; preds = %1834
  %1869 = icmp eq i32 %1808, 8
  br i1 %1869, label %1870, label %1882

; <label>:1870                                    ; preds = %1868
  %1871 = fmul fast float %1813, %1639
  %1872 = fmul fast float %1813, %1640
  %1873 = fadd fast float %1871, %1037
  %1874 = fadd fast float %1872, %1038
  %1875 = call float @dx.op.binary.f32(i32 36, float %1048, float %1641)  ; FMin(a,b)
  %1876 = fsub fast float %1875, %1048
  %1877 = fmul fast float %1876, %1816
  %1878 = fadd fast float %1877, %1048
  %1879 = fsub fast float %1638, %1047
  %1880 = fmul fast float %1819, %1879
  %1881 = fadd fast float %1880, %1047
  br label %1882

; <label>:1882                                    ; preds = %1870, %1868, %1836, %1821, %1799, %1337, %1036
  %1883 = phi float [ %1037, %1799 ], [ %1037, %1337 ], [ %1037, %1036 ], [ %1826, %1821 ], [ %1839, %1836 ], [ %1037, %1868 ], [ %1873, %1870 ]
  %1884 = phi float [ %1038, %1799 ], [ %1038, %1337 ], [ %1038, %1036 ], [ %1827, %1821 ], [ %1840, %1836 ], [ %1038, %1868 ], [ %1874, %1870 ]
  %1885 = phi float [ %1800, %1799 ], [ %1039, %1337 ], [ %1039, %1036 ], [ %1800, %1821 ], [ %1800, %1836 ], [ %1800, %1868 ], [ %1800, %1870 ]
  %1886 = phi float [ %1801, %1799 ], [ %1040, %1337 ], [ %1040, %1036 ], [ %1801, %1821 ], [ %1801, %1836 ], [ %1801, %1868 ], [ %1801, %1870 ]
  %1887 = phi float [ %1802, %1799 ], [ %1041, %1337 ], [ %1041, %1036 ], [ %1802, %1821 ], [ %1802, %1836 ], [ %1802, %1868 ], [ %1802, %1870 ]
  %1888 = phi float [ %1803, %1799 ], [ %1042, %1337 ], [ %1042, %1036 ], [ %1803, %1821 ], [ %1803, %1836 ], [ %1803, %1868 ], [ %1803, %1870 ]
  %1889 = phi float [ %1804, %1799 ], [ %1043, %1337 ], [ %1043, %1036 ], [ %1804, %1821 ], [ %1804, %1836 ], [ %1804, %1868 ], [ %1804, %1870 ]
  %1890 = phi float [ %1805, %1799 ], [ %1044, %1337 ], [ %1044, %1036 ], [ %1805, %1821 ], [ %1805, %1836 ], [ %1805, %1868 ], [ %1805, %1870 ]
  %1891 = phi float [ %1806, %1799 ], [ %1045, %1337 ], [ %1045, %1036 ], [ %1806, %1821 ], [ %1806, %1836 ], [ %1806, %1868 ], [ %1806, %1870 ]
  %1892 = phi float [ %1047, %1799 ], [ %1047, %1337 ], [ %1047, %1036 ], [ %1833, %1821 ], [ %1867, %1836 ], [ %1047, %1868 ], [ %1881, %1870 ]
  %1893 = phi float [ %1048, %1799 ], [ %1048, %1337 ], [ %1048, %1036 ], [ %1830, %1821 ], [ %1844, %1836 ], [ %1048, %1868 ], [ %1878, %1870 ]
  %1894 = phi float [ %1807, %1799 ], [ %1049, %1337 ], [ %1049, %1036 ], [ %1807, %1821 ], [ %1807, %1836 ], [ %1807, %1868 ], [ %1807, %1870 ]
  %1895 = icmp ult i32 %376, 3
  %1896 = add i32 %65, 56
  %1897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1898 = extractvalue %dx.types.ResRet.i32 %1897, 0
  %1899 = add i32 %65, 60
  %1900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1901 = extractvalue %dx.types.ResRet.i32 %1900, 0
  %1902 = or i32 %1901, %1898
  %1903 = icmp eq i32 %1902, 0
  br i1 %1903, label %2727, label %1904

; <label>:1904                                    ; preds = %1882
  %1905 = add i32 %65, 252
  %1906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.i32 %1906, 0
  %1908 = lshr i32 %1907, 16
  %1909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1908)  ; LegacyF16ToF32(value)
  %1910 = fmul fast float %1909, 0x3F50624DE0000000
  %1911 = add i32 %65, 104
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = lshr i32 %1913, 16
  %1915 = and i32 %1914, 255
  %1916 = lshr i32 %1913, 24
  %1917 = add i32 %65, 260
  %1918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.i32 %1918, 0
  %1920 = and i32 %1919, 65535
  %1921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1920)  ; LegacyF16ToF32(value)
  %1922 = lshr i32 %1919, 16
  %1923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1922)  ; LegacyF16ToF32(value)
  %1924 = add i32 %65, 64
  %1925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.i32 %1925, 0
  %1927 = lshr i32 %1926, 22
  %1928 = shl nuw nsw i32 %1927, 5
  %1929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1928)  ; LegacyF16ToF32(value)
  %1930 = shl i32 %1926, 4
  %1931 = and i32 %1930, 32752
  %1932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1931)  ; LegacyF16ToF32(value)
  %1933 = lshr i32 %1926, 7
  %1934 = and i32 %1933, 32752
  %1935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1934)  ; LegacyF16ToF32(value)
  %1936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1937 = extractvalue %dx.types.CBufRet.f32 %1936, 3
  %1938 = fmul fast float %1937, 1.000000e+03
  %1939 = fmul fast float %369, %1938
  %1940 = call float @dx.op.unary.f32(i32 22, float %1939)  ; Frc(value)
  %1941 = fadd fast float %1940, %359
  %1942 = fmul fast float %370, %1938
  %1943 = call float @dx.op.unary.f32(i32 22, float %1942)  ; Frc(value)
  %1944 = fadd fast float %1943, %361
  %1945 = fmul fast float %1910, %1938
  %1946 = call float @dx.op.unary.f32(i32 22, float %1945)  ; Frc(value)
  %1947 = fmul fast float %1946, 0x401921FB60000000
  %1948 = fadd fast float %1947, %1929
  %1949 = call float @dx.op.unary.f32(i32 13, float %1948)  ; Sin(value)
  %1950 = call float @dx.op.unary.f32(i32 12, float %1948)  ; Cos(value)
  %1951 = fsub fast float -0.000000e+00, %1949
  %1952 = fadd fast float %84, -5.000000e-01
  %1953 = fadd fast float %85, -5.000000e-01
  %1954 = fmul fast float %1921, %1952
  %1955 = fmul fast float %1923, %1953
  %1956 = fadd fast float %1954, 5.000000e-01
  %1957 = fadd fast float %1955, 5.000000e-01
  %1958 = fmul fast float %1932, %1956
  %1959 = fmul fast float %1935, %1957
  %1960 = fmul fast float %1950, %1958
  %1961 = call float @dx.op.tertiary.f32(i32 46, float %1951, float %1959, float %1960)  ; FMad(a,b,c)
  %1962 = fmul fast float %1949, %1958
  %1963 = call float @dx.op.tertiary.f32(i32 46, float %1950, float %1959, float %1962)  ; FMad(a,b,c)
  %1964 = fadd fast float %1941, %1961
  %1965 = fadd fast float %1944, %1963
  %1966 = icmp ugt i32 %1915, 1
  %1967 = icmp ugt i32 %1913, 33554431
  %1968 = or i1 %1967, %1966
  br i1 %1968, label %1969, label %1994

; <label>:1969                                    ; preds = %1904
  %1970 = add i32 %65, 212
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = lshr i32 %1972, 16
  %1974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1973)  ; LegacyF16ToF32(value)
  %1975 = fmul fast float %1937, %1974
  %1976 = call float @dx.op.unary.f32(i32 22, float %1975)  ; Frc(value)
  %1977 = mul nuw nsw i32 %1915, %1916
  %1978 = uitofp i32 %1977 to float
  %1979 = fmul fast float %1976, %1978
  %1980 = call float @dx.op.unary.f32(i32 27, float %1979)  ; Round_ni(value)
  %1981 = fptoui float %1980 to i32
  %1982 = urem i32 %1981, %1915
  %1983 = udiv i32 %1981, %1916
  %1984 = call float @dx.op.unary.f32(i32 22, float %1964)  ; Frc(value)
  %1985 = call float @dx.op.unary.f32(i32 22, float %1965)  ; Frc(value)
  %1986 = uitofp i32 %1982 to float
  %1987 = uitofp i32 %1983 to float
  %1988 = fadd fast float %1984, %1986
  %1989 = fadd fast float %1985, %1987
  %1990 = uitofp i32 %1915 to float
  %1991 = uitofp i32 %1916 to float
  %1992 = fdiv fast float %1988, %1990
  %1993 = fdiv fast float %1989, %1991
  br label %1994

; <label>:1994                                    ; preds = %1969, %1904
  %1995 = phi float [ %1992, %1969 ], [ %1964, %1904 ]
  %1996 = phi float [ %1993, %1969 ], [ %1965, %1904 ]
  %1997 = and i32 %1898, 16777216
  %1998 = icmp eq i32 %1997, 0
  br i1 %1998, label %2108, label %1999

; <label>:1999                                    ; preds = %1994
  %2000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2001 = extractvalue %dx.types.CBufRet.f32 %2000, 0
  %2002 = extractvalue %dx.types.CBufRet.f32 %2000, 1
  %2003 = extractvalue %dx.types.CBufRet.f32 %2000, 2
  %2004 = fadd fast float %2001, %152
  %2005 = fadd fast float %2002, %153
  %2006 = fadd fast float %2003, %154
  %2007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2008 = extractvalue %dx.types.CBufRet.f32 %2007, 0
  %2009 = call float @dx.op.unary.f32(i32 7, float %2008)  ; Saturate(value)
  %2010 = icmp eq i32 %64, 65535
  br i1 %2010, label %2105, label %2011

; <label>:2011                                    ; preds = %1999
  %2012 = lshr i32 %64, 1
  %2013 = shl i32 %2012, 2
  %2014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.i32 %2014, 0
  %2016 = and i32 %64, 1
  %2017 = icmp ne i32 %2016, 0
  %2018 = lshr i32 %2015, 16
  %2019 = and i32 %2015, 65535
  %2020 = select i1 %2017, i32 %2018, i32 %2019
  %2021 = icmp eq i32 %2020, 65535
  br i1 %2021, label %2101, label %2022

; <label>:2022                                    ; preds = %2011
  %2023 = mul nuw nsw i32 %2020, 40
  %2024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %2023, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.f32 %2024, 0
  %2026 = extractvalue %dx.types.ResRet.f32 %2024, 1
  %2027 = extractvalue %dx.types.ResRet.f32 %2024, 2
  %2028 = add nuw nsw i32 %2023, 12
  %2029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.f32 %2029, 0
  %2031 = extractvalue %dx.types.ResRet.f32 %2029, 1
  %2032 = extractvalue %dx.types.ResRet.f32 %2029, 2
  %2033 = add nuw nsw i32 %2023, 24
  %2034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %2033, i32 undef)  ; BufferLoad(srv,index,wot)
  %2035 = extractvalue %dx.types.ResRet.f32 %2034, 0
  %2036 = extractvalue %dx.types.ResRet.f32 %2034, 1
  %2037 = extractvalue %dx.types.ResRet.f32 %2034, 2
  %2038 = add nuw nsw i32 %2023, 36
  %2039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %2038, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.f32 %2039, 0
  %2041 = fsub fast float %2004, %2025
  %2042 = fsub fast float %2005, %2026
  %2043 = fsub fast float %2006, %2027
  %2044 = fmul fast float %2040, %2041
  %2045 = fmul fast float %2040, %2042
  %2046 = fmul fast float %2040, %2043
  %2047 = call float @dx.op.unary.f32(i32 27, float %2044)  ; Round_ni(value)
  %2048 = call float @dx.op.unary.f32(i32 27, float %2045)  ; Round_ni(value)
  %2049 = call float @dx.op.unary.f32(i32 27, float %2046)  ; Round_ni(value)
  %2050 = fadd fast float %2047, 5.000000e-01
  %2051 = fadd fast float %2048, 5.000000e-01
  %2052 = fadd fast float %2049, 5.000000e-01
  %2053 = fmul fast float %2050, %2030
  %2054 = fmul fast float %2051, %2031
  %2055 = fmul fast float %2052, %2032
  %2056 = shl i32 %64, 2
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = add i32 %2058, 0
  %2060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2059, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2061 = call float @dx.op.unary.f32(i32 22, float %2053)  ; Frc(value)
  %2062 = call float @dx.op.unary.f32(i32 22, float %2054)  ; Frc(value)
  %2063 = call float @dx.op.unary.f32(i32 22, float %2055)  ; Frc(value)
  %2064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2060, %dx.types.Handle %59, float %2061, float %2062, float %2063, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2065 = extractvalue %dx.types.ResRet.f32 %2064, 0
  %2066 = extractvalue %dx.types.ResRet.f32 %2064, 1
  %2067 = extractvalue %dx.types.ResRet.f32 %2064, 2
  %2068 = fmul fast float %2065, 1.023000e+03
  %2069 = fmul fast float %2066, 1.023000e+03
  %2070 = fmul fast float %2067, 1.023000e+03
  %2071 = fadd fast float %2068, 5.000000e-01
  %2072 = fadd fast float %2069, 5.000000e-01
  %2073 = fadd fast float %2070, 5.000000e-01
  %2074 = call float @dx.op.unary.f32(i32 27, float %2071)  ; Round_ni(value)
  %2075 = call float @dx.op.unary.f32(i32 27, float %2072)  ; Round_ni(value)
  %2076 = call float @dx.op.unary.f32(i32 27, float %2073)  ; Round_ni(value)
  %2077 = fsub fast float %2044, %2047
  %2078 = fsub fast float %2045, %2048
  %2079 = fsub fast float %2046, %2049
  %2080 = fmul fast float %2077, 7.500000e-01
  %2081 = fmul fast float %2078, 7.500000e-01
  %2082 = fmul fast float %2079, 7.500000e-01
  %2083 = fadd fast float %2047, 1.250000e-01
  %2084 = fadd fast float %2083, %2080
  %2085 = fadd fast float %2084, %2074
  %2086 = fadd fast float %2048, 1.250000e-01
  %2087 = fadd fast float %2086, %2081
  %2088 = fadd fast float %2087, %2075
  %2089 = fadd fast float %2049, 1.250000e-01
  %2090 = fadd fast float %2089, %2082
  %2091 = fadd fast float %2090, %2076
  %2092 = fmul fast float %2085, %2035
  %2093 = fmul fast float %2088, %2036
  %2094 = fmul fast float %2091, %2037
  %2095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.i32 %2095, 0
  %2097 = add i32 %2096, 0
  %2098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2097, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2098, %dx.types.Handle %57, float %2092, float %2093, float %2094, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2100 = extractvalue %dx.types.ResRet.f32 %2099, 0
  br label %2101

; <label>:2101                                    ; preds = %2022, %2011
  %2102 = phi float [ %2100, %2022 ], [ -1.000000e+00, %2011 ]
  %2103 = fadd fast float %2102, %2009
  %2104 = call float @dx.op.unary.f32(i32 7, float %2103)  ; Saturate(value)
  br label %2105

; <label>:2105                                    ; preds = %2101, %1999
  %2106 = phi float [ %2104, %2101 ], [ %2009, %1999 ]
  %2107 = fmul fast float %2106, %92
  br label %2108

; <label>:2108                                    ; preds = %2105, %1994
  %2109 = phi float [ %2107, %2105 ], [ %92, %1994 ]
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = and i32 %2111, 256
  %2113 = icmp eq i32 %2112, 0
  br i1 %2113, label %2160, label %2114

; <label>:2114                                    ; preds = %2108
  %2115 = add i32 %65, 336
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %2115, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = add i32 %2117, 0
  %2119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2120 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2119, %dx.types.Handle %102, float %1995, float %1996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2121 = extractvalue %dx.types.ResRet.f32 %2120, 0
  %2122 = add i32 %65, 116
  %2123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %2122, i32 undef)  ; BufferLoad(srv,index,wot)
  %2124 = extractvalue %dx.types.ResRet.i32 %2123, 0
  %2125 = shl i32 %2124, 4
  %2126 = and i32 %2125, 32752
  %2127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2126)  ; LegacyF16ToF32(value)
  %2128 = lshr i32 %2124, 7
  %2129 = and i32 %2128, 32752
  %2130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2129)  ; LegacyF16ToF32(value)
  %2131 = fsub fast float 1.000000e+00, %2109
  %2132 = call float @dx.op.binary.f32(i32 35, float %2131, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2133 = bitcast float %2109 to i32
  %2134 = sitofp i32 %2133 to float
  %2135 = fadd fast float %2134, 0xC1CFBF8940000000
  %2136 = fmul fast float %2130, %2135
  %2137 = fadd fast float %2136, 0x41CFBF8940000000
  %2138 = fptosi float %2137 to i32
  %2139 = bitcast i32 %2138 to float
  %2140 = bitcast float %2132 to i32
  %2141 = sitofp i32 %2140 to float
  %2142 = fadd fast float %2141, 0xC1CFBF8940000000
  %2143 = fmul fast float %2142, %2130
  %2144 = fadd fast float %2143, 0x41CFBF8940000000
  %2145 = fptosi float %2144 to i32
  %2146 = bitcast i32 %2145 to float
  %2147 = fmul fast float %2139, %2127
  %2148 = fmul fast float %2146, %2127
  %2149 = fsub fast float %2132, %2147
  %2150 = fadd fast float %2148, %2132
  %2151 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  %2152 = call float @dx.op.unary.f32(i32 7, float %2150)  ; Saturate(value)
  %2153 = fsub fast float %2121, %2151
  %2154 = fsub fast float %2152, %2151
  %2155 = bitcast float %2154 to i32
  %2156 = sub nsw i32 2129859010, %2155
  %2157 = bitcast i32 %2156 to float
  %2158 = fmul fast float %2157, %2153
  %2159 = call float @dx.op.unary.f32(i32 7, float %2158)  ; Saturate(value)
  br label %2160

; <label>:2160                                    ; preds = %2114, %2108
  %2161 = phi float [ %2159, %2114 ], [ %2109, %2108 ]
  %2162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2163 = extractvalue %dx.types.ResRet.i32 %2162, 0
  %2164 = and i32 %2163, 128
  %2165 = icmp eq i32 %2164, 0
  br i1 %2165, label %2182, label %2166

; <label>:2166                                    ; preds = %2160
  %2167 = add i32 %65, 324
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = add i32 %2169, 0
  %2171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2172 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2171, %dx.types.Handle %102, float %1995, float %1996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2173 = extractvalue %dx.types.ResRet.f32 %2172, 0
  %2174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2175 = extractvalue %dx.types.ResRet.i32 %2174, 0
  %2176 = and i32 %2175, 524288
  %2177 = icmp ne i32 %2176, 0
  %2178 = fcmp fast ogt float %2173, 0x3FE0101020000000
  %2179 = select i1 %2178, float 1.000000e+00, float 0.000000e+00
  %2180 = select i1 %2177, float %2179, float %2173
  %2181 = fmul fast float %2180, %2161
  br label %2182

; <label>:2182                                    ; preds = %2166, %2160
  %2183 = phi float [ %2181, %2166 ], [ %2161, %2160 ]
  %2184 = fcmp fast ult float %2183, 0x3F70101020000000
  br i1 %2184, label %2727, label %2185

; <label>:2185                                    ; preds = %2182
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = and i32 %2187, 16
  %2189 = icmp eq i32 %2188, 0
  br i1 %2189, label %2388, label %2190

; <label>:2190                                    ; preds = %2185
  %2191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2192 = extractvalue %dx.types.ResRet.i32 %2191, 0
  %2193 = add i32 %65, 288
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %2193, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = add i32 %2195, 0
  %2197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2196, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2198 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2197, %dx.types.Handle %101, float %1995, float %1996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2199 = extractvalue %dx.types.ResRet.f32 %2198, 0
  %2200 = extractvalue %dx.types.ResRet.f32 %2198, 1
  %2201 = extractvalue %dx.types.ResRet.f32 %2198, 2
  %2202 = extractvalue %dx.types.ResRet.f32 %2198, 3
  %2203 = and i32 %2192, 255
  %2204 = uitofp i32 %2203 to float
  %2205 = lshr i32 %2192, 8
  %2206 = and i32 %2205, 255
  %2207 = uitofp i32 %2206 to float
  %2208 = fmul fast float %2202, %2204
  %2209 = fadd fast float %2208, %2207
  %2210 = fmul fast float %2209, 0x3F70101000000000
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = and i32 %2212, 512
  %2214 = icmp eq i32 %2213, 0
  br i1 %2214, label %2223, label %2215

; <label>:2215                                    ; preds = %2190
  %2216 = add i32 %65, 348
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %2216, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = add i32 %2218, 0
  %2220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2219, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2221 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2220, %dx.types.Handle %102, float %1995, float %1996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2222 = extractvalue %dx.types.ResRet.f32 %2221, 0
  br label %2223

; <label>:2223                                    ; preds = %2215, %2190
  %2224 = phi float [ %2222, %2215 ], [ 1.000000e+00, %2190 ]
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = and i32 %2226, 33554432
  %2228 = icmp eq i32 %2227, 0
  br i1 %2228, label %2335, label %2229

; <label>:2229                                    ; preds = %2223
  %2230 = add i32 %65, 208
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = and i32 %2232, 65535
  %2234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2233)  ; LegacyF16ToF32(value)
  %2235 = lshr i32 %2232, 16
  %2236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2235)  ; LegacyF16ToF32(value)
  %2237 = add i32 %65, 212
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %2237, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = and i32 %2239, 65535
  %2241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2240)  ; LegacyF16ToF32(value)
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = lshr i32 %2243, 24
  %2245 = uitofp i32 %2244 to float
  %2246 = fmul fast float %2245, 0x3F70101020000000
  %2247 = and i32 %2243, 255
  %2248 = uitofp i32 %2247 to float
  %2249 = fmul fast float %2248, 0x3F70101020000000
  %2250 = lshr i32 %2243, 8
  %2251 = and i32 %2250, 255
  %2252 = uitofp i32 %2251 to float
  %2253 = fmul fast float %2252, 0x3F70101020000000
  %2254 = lshr i32 %2243, 16
  %2255 = and i32 %2254, 255
  %2256 = uitofp i32 %2255 to float
  %2257 = fmul fast float %2256, 0x3F70101020000000
  %2258 = add i32 %65, 204
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = lshr i32 %2260, 24
  %2262 = uitofp i32 %2261 to float
  %2263 = fmul fast float %2262, 0x3F70101020000000
  %2264 = and i32 %2260, 255
  %2265 = uitofp i32 %2264 to float
  %2266 = fmul fast float %2265, 0x3F70101020000000
  %2267 = lshr i32 %2260, 8
  %2268 = and i32 %2267, 255
  %2269 = uitofp i32 %2268 to float
  %2270 = fmul fast float %2269, 0x3F70101020000000
  %2271 = lshr i32 %2260, 16
  %2272 = and i32 %2271, 255
  %2273 = uitofp i32 %2272 to float
  %2274 = fmul fast float %2273, 0x3F70101020000000
  %2275 = bitcast float %2199 to i32
  %2276 = ashr i32 %2275, 1
  %2277 = sub nsw i32 1597463174, %2276
  %2278 = bitcast i32 %2277 to float
  %2279 = fmul fast float %2199, 5.000000e-01
  %2280 = fmul fast float %2278, %2278
  %2281 = fmul fast float %2280, %2279
  %2282 = fsub fast float 1.500000e+00, %2281
  %2283 = fmul fast float %2278, %2199
  %2284 = fmul fast float %2283, %2282
  %2285 = bitcast float %2200 to i32
  %2286 = ashr i32 %2285, 1
  %2287 = sub nsw i32 1597463174, %2286
  %2288 = bitcast i32 %2287 to float
  %2289 = fmul fast float %2200, 5.000000e-01
  %2290 = fmul fast float %2288, %2288
  %2291 = fmul fast float %2290, %2289
  %2292 = fsub fast float 1.500000e+00, %2291
  %2293 = fmul fast float %2288, %2200
  %2294 = fmul fast float %2293, %2292
  %2295 = bitcast float %2201 to i32
  %2296 = ashr i32 %2295, 1
  %2297 = sub nsw i32 1597463174, %2296
  %2298 = bitcast i32 %2297 to float
  %2299 = fmul fast float %2201, 5.000000e-01
  %2300 = fmul fast float %2298, %2298
  %2301 = fmul fast float %2300, %2299
  %2302 = fsub fast float 1.500000e+00, %2301
  %2303 = fmul fast float %2298, %2201
  %2304 = fmul fast float %2303, %2302
  %2305 = fsub fast float %2284, %2266
  %2306 = fsub fast float %2294, %2270
  %2307 = fsub fast float %2304, %2274
  %2308 = fmul fast float %2305, %2234
  %2309 = fmul fast float %2306, %2236
  %2310 = fmul fast float %2307, %2241
  %2311 = fadd fast float %2308, %2249
  %2312 = fadd fast float %2309, %2253
  %2313 = fadd fast float %2310, %2257
  %2314 = call float @dx.op.unary.f32(i32 7, float %2311)  ; Saturate(value)
  %2315 = call float @dx.op.unary.f32(i32 7, float %2312)  ; Saturate(value)
  %2316 = call float @dx.op.unary.f32(i32 7, float %2313)  ; Saturate(value)
  %2317 = fmul fast float %2314, %2314
  %2318 = fmul fast float %2315, %2315
  %2319 = fmul fast float %2316, %2316
  %2320 = fsub fast float %2317, %2199
  %2321 = fsub fast float %2318, %2200
  %2322 = fsub fast float %2319, %2201
  %2323 = fmul fast float %2320, %2224
  %2324 = fmul fast float %2321, %2224
  %2325 = fmul fast float %2322, %2224
  %2326 = fadd fast float %2323, %2199
  %2327 = fadd fast float %2324, %2200
  %2328 = fadd fast float %2325, %2201
  %2329 = fadd fast float %2246, %2210
  %2330 = fsub fast float %2329, %2263
  %2331 = call float @dx.op.unary.f32(i32 7, float %2330)  ; Saturate(value)
  %2332 = fsub fast float %2331, %2210
  %2333 = fmul fast float %2332, %2224
  %2334 = fadd fast float %2333, %2210
  br label %2388

; <label>:2335                                    ; preds = %2223
  %2336 = and i32 %2226, 134217728
  %2337 = icmp eq i32 %2336, 0
  br i1 %2337, label %2372, label %2338

; <label>:2338                                    ; preds = %2335
  %2339 = call float @dx.op.unary.f32(i32 24, float %346)  ; Sqrt(value)
  %2340 = call float @dx.op.unary.f32(i32 24, float %350)  ; Sqrt(value)
  %2341 = call float @dx.op.unary.f32(i32 24, float %354)  ; Sqrt(value)
  %2342 = fadd fast float %2339, -5.000000e-01
  %2343 = fadd fast float %2340, -5.000000e-01
  %2344 = fadd fast float %2341, -5.000000e-01
  %2345 = fmul fast float %2342, %2224
  %2346 = fmul fast float %2343, %2224
  %2347 = fmul fast float %2344, %2224
  %2348 = fadd fast float %2345, 5.000000e-01
  %2349 = fadd fast float %2346, 5.000000e-01
  %2350 = fadd fast float %2347, 5.000000e-01
  %2351 = call float @dx.op.unary.f32(i32 24, float %2199)  ; Sqrt(value)
  %2352 = call float @dx.op.unary.f32(i32 24, float %2200)  ; Sqrt(value)
  %2353 = call float @dx.op.unary.f32(i32 24, float %2201)  ; Sqrt(value)
  %2354 = fmul fast float %2348, 2.000000e+00
  %2355 = fsub fast float 1.000000e+00, %2354
  %2356 = fmul fast float %2355, %2351
  %2357 = fadd fast float %2356, %2354
  %2358 = fmul fast float %2357, %2351
  %2359 = fmul fast float %2349, 2.000000e+00
  %2360 = fsub fast float 1.000000e+00, %2359
  %2361 = fmul fast float %2360, %2352
  %2362 = fadd fast float %2361, %2359
  %2363 = fmul fast float %2362, %2352
  %2364 = fmul fast float %2350, 2.000000e+00
  %2365 = fsub fast float 1.000000e+00, %2364
  %2366 = fmul fast float %2365, %2353
  %2367 = fadd fast float %2366, %2364
  %2368 = fmul fast float %2367, %2353
  %2369 = fmul fast float %2358, %2358
  %2370 = fmul fast float %2363, %2363
  %2371 = fmul fast float %2368, %2368
  br label %2388

; <label>:2372                                    ; preds = %2335
  %2373 = fmul fast float %346, %346
  %2374 = fmul fast float %350, %350
  %2375 = fmul fast float %354, %354
  %2376 = fadd fast float %2373, -1.000000e+00
  %2377 = fadd fast float %2374, -1.000000e+00
  %2378 = fadd fast float %2375, -1.000000e+00
  %2379 = fmul fast float %2224, %2376
  %2380 = fmul fast float %2224, %2377
  %2381 = fmul fast float %2224, %2378
  %2382 = fadd fast float %2379, 1.000000e+00
  %2383 = fadd fast float %2380, 1.000000e+00
  %2384 = fadd fast float %2381, 1.000000e+00
  %2385 = fmul fast float %2382, %2199
  %2386 = fmul fast float %2383, %2200
  %2387 = fmul fast float %2384, %2201
  br label %2388

; <label>:2388                                    ; preds = %2372, %2338, %2229, %2185
  %2389 = phi float [ %2334, %2229 ], [ %2210, %2338 ], [ %2210, %2372 ], [ 0x3FA23C0BE0000000, %2185 ]
  %2390 = phi float [ %2326, %2229 ], [ %2369, %2338 ], [ %2385, %2372 ], [ 1.000000e+00, %2185 ]
  %2391 = phi float [ %2327, %2229 ], [ %2370, %2338 ], [ %2386, %2372 ], [ 1.000000e+00, %2185 ]
  %2392 = phi float [ %2328, %2229 ], [ %2371, %2338 ], [ %2387, %2372 ], [ 1.000000e+00, %2185 ]
  %2393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2394 = extractvalue %dx.types.CBufRet.i32 %2393, 1
  %2395 = and i32 %2394, 1
  %2396 = icmp ne i32 %2395, 0
  %2397 = add i32 %65, 276
  %2398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %2397, i32 undef)  ; BufferLoad(srv,index,wot)
  %2399 = extractvalue %dx.types.ResRet.i32 %2398, 0
  %2400 = and i32 %2399, 32
  %2401 = icmp ne i32 %2400, 0
  %2402 = and i1 %2396, %2401
  %2403 = select i1 %2402, float 1.000000e+00, float %2390
  %2404 = select i1 %2402, float 0x3FD3333340000000, float %2391
  %2405 = select i1 %2402, float 0x3FD3333340000000, float %2392
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = and i32 %2407, 32
  %2409 = icmp eq i32 %2408, 0
  br i1 %2409, label %2482, label %2410

; <label>:2410                                    ; preds = %2388
  %2411 = add i32 %65, 108
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = add i32 %65, 300
  %2415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %2414, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.i32 %2415, 0
  %2417 = add i32 %2416, 0
  %2418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2417, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2419 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2418, %dx.types.Handle %101, float %1995, float %1996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2420 = extractvalue %dx.types.ResRet.f32 %2419, 0
  %2421 = extractvalue %dx.types.ResRet.f32 %2419, 1
  %2422 = extractvalue %dx.types.ResRet.f32 %2419, 2
  %2423 = extractvalue %dx.types.ResRet.f32 %2419, 3
  %2424 = and i32 %2413, 255
  %2425 = uitofp i32 %2424 to float
  %2426 = lshr i32 %2413, 8
  %2427 = and i32 %2426, 255
  %2428 = uitofp i32 %2427 to float
  %2429 = lshr i32 %2413, 16
  %2430 = and i32 %2429, 255
  %2431 = uitofp i32 %2430 to float
  %2432 = fmul fast float %2431, 0x3F70101000000000
  %2433 = fmul fast float %2420, %2425
  %2434 = fadd fast float %2433, %2428
  %2435 = fmul fast float %2434, 0x3F70101000000000
  %2436 = fadd fast float %2421, -5.000000e-01
  %2437 = fadd fast float %2423, -5.000000e-01
  %2438 = fmul fast float %2436, %2432
  %2439 = fmul fast float %2437, %2432
  %2440 = fadd fast float %2438, 5.000000e-01
  %2441 = fadd fast float %2439, 5.000000e-01
  %2442 = fmul fast float %2440, 2.000000e+00
  %2443 = fadd fast float %2442, -1.000000e+00
  %2444 = fmul fast float %2441, 2.000000e+00
  %2445 = fadd fast float %2444, -1.000000e+00
  %2446 = fadd fast float %2443, %2445
  %2447 = fmul fast float %2446, 5.000000e-01
  %2448 = fsub fast float %2443, %2445
  %2449 = fmul fast float %2448, 5.000000e-01
  %2450 = call float @dx.op.unary.f32(i32 6, float %2447)  ; FAbs(value)
  %2451 = fsub fast float 1.000000e+00, %2450
  %2452 = call float @dx.op.unary.f32(i32 6, float %2449)  ; FAbs(value)
  %2453 = fsub fast float %2451, %2452
  %2454 = call float @dx.op.dot3.f32(i32 55, float %2447, float %2449, float %2453, float %2447, float %2449, float %2453)  ; Dot3(ax,ay,az,bx,by,bz)
  %2455 = call float @dx.op.unary.f32(i32 25, float %2454)  ; Rsqrt(value)
  %2456 = fmul fast float %2447, %2455
  %2457 = fmul fast float %2449, %2455
  %2458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.i32 %2458, 0
  %2460 = and i32 %2459, 67108864
  %2461 = icmp eq i32 %2460, 0
  br i1 %2461, label %2478, label %2462

; <label>:2462                                    ; preds = %2410
  %2463 = add i32 %65, 248
  %2464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %2463, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.i32 %2464, 0
  %2466 = and i32 %2465, 65535
  %2467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2466)  ; LegacyF16ToF32(value)
  %2468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2469 = extractvalue %dx.types.ResRet.i32 %2468, 0
  %2470 = and i32 %2469, 65535
  %2471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2470)  ; LegacyF16ToF32(value)
  %2472 = lshr i32 %2465, 16
  %2473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2472)  ; LegacyF16ToF32(value)
  %2474 = fsub fast float %2435, %2473
  %2475 = fmul fast float %2474, %2467
  %2476 = fadd fast float %2475, %2471
  %2477 = call float @dx.op.unary.f32(i32 7, float %2476)  ; Saturate(value)
  br label %2478

; <label>:2478                                    ; preds = %2462, %2410
  %2479 = phi float [ %2477, %2462 ], [ %2435, %2410 ]
  %2480 = call float @dx.op.dot2.f32(i32 54, float %2456, float %2457, float %66, float %67)  ; Dot2(ax,ay,bx,by)
  %2481 = call float @dx.op.dot2.f32(i32 54, float %2456, float %2457, float %68, float %69)  ; Dot2(ax,ay,bx,by)
  br label %2482

; <label>:2482                                    ; preds = %2478, %2388
  %2483 = phi float [ %2479, %2478 ], [ 0x3FD6666660000000, %2388 ]
  %2484 = phi float [ %2480, %2478 ], [ 0.000000e+00, %2388 ]
  %2485 = phi float [ %2481, %2478 ], [ 0.000000e+00, %2388 ]
  %2486 = phi float [ %2422, %2478 ], [ 1.000000e+00, %2388 ]
  %2487 = add i32 %65, 160
  %2488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %2487, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.i32 %2488, 0
  %2490 = lshr i32 %2489, 22
  %2491 = shl nuw nsw i32 %2490, 5
  %2492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2491)  ; LegacyF16ToF32(value)
  %2493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2494 = extractvalue %dx.types.ResRet.i32 %2493, 0
  %2495 = and i32 %2494, 64
  %2496 = icmp eq i32 %2495, 0
  br i1 %2496, label %2530, label %2497

; <label>:2497                                    ; preds = %2482
  %2498 = add i32 %65, 312
  %2499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2500 = extractvalue %dx.types.ResRet.i32 %2499, 0
  %2501 = add i32 %2500, 0
  %2502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2501, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = and i32 %2504, 131072
  %2506 = icmp eq i32 %2505, 0
  %2507 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2502, %dx.types.Handle %101, float %1995, float %1996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2508 = extractvalue %dx.types.ResRet.f32 %2507, 0
  %2509 = extractvalue %dx.types.ResRet.f32 %2507, 1
  %2510 = extractvalue %dx.types.ResRet.f32 %2507, 2
  %2511 = fmul fast float %2508, %334
  %2512 = fmul fast float %2509, %337
  %2513 = fmul fast float %2510, %340
  br i1 %2506, label %2520, label %2514

; <label>:2514                                    ; preds = %2497
  %2515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2516 = extractvalue %dx.types.CBufRet.f32 %2515, 0
  %2517 = fmul fast float %2516, %2511
  %2518 = fmul fast float %2516, %2512
  %2519 = fmul fast float %2516, %2513
  br label %2520

; <label>:2520                                    ; preds = %2514, %2497
  %2521 = phi float [ %2517, %2514 ], [ %2511, %2497 ]
  %2522 = phi float [ %2518, %2514 ], [ %2512, %2497 ]
  %2523 = phi float [ %2519, %2514 ], [ %2513, %2497 ]
  %2524 = fmul fast float %2521, %2492
  %2525 = select i1 %243, float %2524, float %2521
  %2526 = call float @dx.op.dot3.f32(i32 55, float %2525, float %2522, float %2523, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2527 = select i1 %243, float 0.000000e+00, float %2521
  %2528 = select i1 %243, float %2526, float %2522
  %2529 = select i1 %243, float 0.000000e+00, float %2523
  br label %2530

; <label>:2530                                    ; preds = %2520, %2482
  %2531 = phi float [ %2527, %2520 ], [ 0.000000e+00, %2482 ]
  %2532 = phi float [ %2528, %2520 ], [ 0.000000e+00, %2482 ]
  %2533 = phi float [ %2529, %2520 ], [ 0.000000e+00, %2482 ]
  %2534 = add i32 %65, 112
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = and i32 %2536, 255
  %2538 = uitofp i32 %2537 to float
  %2539 = lshr i32 %2536, 8
  %2540 = and i32 %2539, 255
  %2541 = uitofp i32 %2540 to float
  %2542 = call float @dx.op.dot3.f32(i32 55, float %2403, float %2404, float %2405, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2543 = fmul fast float %2541, %2542
  %2544 = fadd fast float %2543, %2538
  %2545 = fmul fast float %2544, 0x3F70101020000000
  %2546 = call float @dx.op.unary.f32(i32 7, float %2545)  ; Saturate(value)
  br i1 %1895, label %2547, label %2555

; <label>:2547                                    ; preds = %2530
  %2548 = fsub fast float 1.000000e+00, %2183
  %2549 = fmul fast float %2548, %1885
  %2550 = fmul fast float %2548, %1886
  %2551 = fmul fast float %2548, %1887
  %2552 = fmul fast float %2548, %1888
  %2553 = fmul fast float %2548, %1889
  %2554 = fmul fast float %2548, %1890
  br label %2555

; <label>:2555                                    ; preds = %2547, %2530
  %2556 = phi float [ %2549, %2547 ], [ %1885, %2530 ]
  %2557 = phi float [ %2550, %2547 ], [ %1886, %2530 ]
  %2558 = phi float [ %2551, %2547 ], [ %1887, %2530 ]
  %2559 = phi float [ %2552, %2547 ], [ %1888, %2530 ]
  %2560 = phi float [ %2553, %2547 ], [ %1889, %2530 ]
  %2561 = phi float [ %2554, %2547 ], [ %1890, %2530 ]
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = and i32 %2563, 3
  %2565 = icmp eq i32 %2564, 3
  br i1 %2565, label %2644, label %2566

; <label>:2566                                    ; preds = %2555
  %2567 = and i32 %2563, 16
  %2568 = icmp ne i32 %2567, 0
  %2569 = select i1 %2568, float %2183, float 0.000000e+00
  %2570 = icmp eq i32 %2564, 0
  br i1 %2570, label %2571, label %2599

; <label>:2571                                    ; preds = %2566
  %2572 = and i32 %2563, 64
  %2573 = icmp ne i32 %2572, 0
  %2574 = select i1 %2573, float %2183, float 0.000000e+00
  %2575 = fsub fast float %2403, %2556
  %2576 = fsub fast float %2404, %2557
  %2577 = fsub fast float %2405, %2558
  %2578 = fmul fast float %2569, %2575
  %2579 = fmul fast float %2569, %2576
  %2580 = fmul fast float %2569, %2577
  %2581 = fadd fast float %2578, %2556
  %2582 = fadd fast float %2579, %2557
  %2583 = fadd fast float %2580, %2558
  %2584 = fsub fast float %2389, %1891
  %2585 = fmul fast float %2569, %2584
  %2586 = fadd fast float %2585, %1891
  %2587 = fsub fast float %2531, %2559
  %2588 = fsub fast float %2532, %2560
  %2589 = fsub fast float %2533, %2561
  %2590 = fmul fast float %2574, %2587
  %2591 = fmul fast float %2574, %2588
  %2592 = fmul fast float %2574, %2589
  %2593 = fadd fast float %2590, %2559
  %2594 = fadd fast float %2591, %2560
  %2595 = fadd fast float %2592, %2561
  %2596 = fsub fast float %2546, %1894
  %2597 = fmul fast float %2569, %2596
  %2598 = fadd fast float %2597, %1894
  br label %2644

; <label>:2599                                    ; preds = %2566
  %2600 = icmp eq i32 %2564, 1
  br i1 %2600, label %2601, label %2614

; <label>:2601                                    ; preds = %2599
  %2602 = fadd fast float %2403, -1.000000e+00
  %2603 = fadd fast float %2404, -1.000000e+00
  %2604 = fadd fast float %2405, -1.000000e+00
  %2605 = fmul fast float %2569, %2602
  %2606 = fmul fast float %2569, %2603
  %2607 = fmul fast float %2569, %2604
  %2608 = fadd fast float %2605, 1.000000e+00
  %2609 = fadd fast float %2606, 1.000000e+00
  %2610 = fadd fast float %2607, 1.000000e+00
  %2611 = fmul fast float %2608, %2556
  %2612 = fmul fast float %2609, %2557
  %2613 = fmul fast float %2610, %2558
  br label %2644

; <label>:2614                                    ; preds = %2599
  %2615 = icmp eq i32 %2564, 2
  br i1 %2615, label %2616, label %2644

; <label>:2616                                    ; preds = %2614
  %2617 = call float @dx.op.unary.f32(i32 24, float %2403)  ; Sqrt(value)
  %2618 = call float @dx.op.unary.f32(i32 24, float %2404)  ; Sqrt(value)
  %2619 = call float @dx.op.unary.f32(i32 24, float %2405)  ; Sqrt(value)
  %2620 = fadd fast float %2617, -5.000000e-01
  %2621 = fadd fast float %2618, -5.000000e-01
  %2622 = fadd fast float %2619, -5.000000e-01
  %2623 = fmul fast float %2620, %2569
  %2624 = fmul fast float %2621, %2569
  %2625 = fmul fast float %2622, %2569
  %2626 = fadd fast float %2623, 5.000000e-01
  %2627 = fadd fast float %2624, 5.000000e-01
  %2628 = fadd fast float %2625, 5.000000e-01
  %2629 = fmul fast float %2626, 2.000000e+00
  %2630 = fsub fast float 1.000000e+00, %2629
  %2631 = fmul fast float %2630, %2556
  %2632 = fadd fast float %2631, %2629
  %2633 = fmul fast float %2632, %2556
  %2634 = fmul fast float %2627, 2.000000e+00
  %2635 = fsub fast float 1.000000e+00, %2634
  %2636 = fmul fast float %2635, %2557
  %2637 = fadd fast float %2636, %2634
  %2638 = fmul fast float %2637, %2557
  %2639 = fmul fast float %2628, 2.000000e+00
  %2640 = fsub fast float 1.000000e+00, %2639
  %2641 = fmul fast float %2640, %2558
  %2642 = fadd fast float %2641, %2639
  %2643 = fmul fast float %2642, %2558
  br label %2644

; <label>:2644                                    ; preds = %2616, %2614, %2601, %2571, %2555
  %2645 = phi float [ %2556, %2555 ], [ %2633, %2616 ], [ %2556, %2614 ], [ %2611, %2601 ], [ %2581, %2571 ]
  %2646 = phi float [ %2557, %2555 ], [ %2638, %2616 ], [ %2557, %2614 ], [ %2612, %2601 ], [ %2582, %2571 ]
  %2647 = phi float [ %2558, %2555 ], [ %2643, %2616 ], [ %2558, %2614 ], [ %2613, %2601 ], [ %2583, %2571 ]
  %2648 = phi float [ %2559, %2555 ], [ %2559, %2616 ], [ %2559, %2614 ], [ %2559, %2601 ], [ %2593, %2571 ]
  %2649 = phi float [ %2560, %2555 ], [ %2560, %2616 ], [ %2560, %2614 ], [ %2560, %2601 ], [ %2594, %2571 ]
  %2650 = phi float [ %2561, %2555 ], [ %2561, %2616 ], [ %2561, %2614 ], [ %2561, %2601 ], [ %2595, %2571 ]
  %2651 = phi float [ %1891, %2555 ], [ %1891, %2616 ], [ %1891, %2614 ], [ %1891, %2601 ], [ %2586, %2571 ]
  %2652 = phi float [ %1894, %2555 ], [ %1894, %2616 ], [ %1894, %2614 ], [ %1894, %2601 ], [ %2598, %2571 ]
  %2653 = and i32 %2563, 12
  %2654 = icmp eq i32 %2653, 12
  br i1 %2654, label %2727, label %2655

; <label>:2655                                    ; preds = %2644
  %2656 = and i32 %2563, 2097184
  %2657 = icmp eq i32 %2656, 2097184
  %2658 = select i1 %2657, float %2183, float 0.000000e+00
  %2659 = and i32 %2563, 4194336
  %2660 = icmp eq i32 %2659, 4194336
  %2661 = select i1 %2660, float %2183, float 0.000000e+00
  %2662 = and i32 %2563, 8388640
  %2663 = icmp eq i32 %2662, 8388640
  %2664 = select i1 %2663, float %2183, float 0.000000e+00
  %2665 = icmp eq i32 %2653, 0
  br i1 %2665, label %2666, label %2679

; <label>:2666                                    ; preds = %2655
  %2667 = fsub fast float %2484, %1883
  %2668 = fsub fast float %2485, %1884
  %2669 = fmul fast float %2658, %2667
  %2670 = fmul fast float %2658, %2668
  %2671 = fadd fast float %2669, %1883
  %2672 = fadd fast float %2670, %1884
  %2673 = fsub fast float %2486, %1893
  %2674 = fmul fast float %2661, %2673
  %2675 = fadd fast float %2674, %1893
  %2676 = fsub fast float %2483, %1892
  %2677 = fmul fast float %2664, %2676
  %2678 = fadd fast float %2677, %1892
  br label %2727

; <label>:2679                                    ; preds = %2655
  %2680 = icmp eq i32 %2653, 4
  br i1 %2680, label %2681, label %2713

; <label>:2681                                    ; preds = %2679
  %2682 = fmul fast float %2658, %2484
  %2683 = fmul fast float %2658, %2485
  %2684 = fadd fast float %2682, %1883
  %2685 = fadd fast float %2683, %1884
  %2686 = call float @dx.op.binary.f32(i32 36, float %1893, float %2486)  ; FMin(a,b)
  %2687 = fsub fast float %2686, %1893
  %2688 = fmul fast float %2687, %2661
  %2689 = fadd fast float %2688, %1893
  %2690 = fadd fast float %2483, %1892
  %2691 = fmul fast float %2690, 0x3FF337FAE0000000
  %2692 = fmul fast float %1892, %1892
  %2693 = fmul fast float %2483, %2483
  %2694 = fadd fast float %2693, %2692
  %2695 = fmul fast float %2694, 0x3FE5152B00000000
  %2696 = fmul fast float %1892, 0xBFCC1F85E0000000
  %2697 = fmul fast float %2696, %2483
  %2698 = fadd fast float %2697, 0xBFE1363700000000
  %2699 = fadd fast float %2698, %2691
  %2700 = fsub fast float %2699, %2695
  %2701 = fmul fast float %2690, 0x3FBA6F0D00000000
  %2702 = fmul fast float %2694, 0x3FD0432880000000
  %2703 = fmul fast float %1892, 0xBFEF110800000000
  %2704 = fmul fast float %2703, %2483
  %2705 = fadd fast float %2704, 1.000000e+00
  %2706 = fsub fast float %2705, %2701
  %2707 = fadd fast float %2706, %2702
  %2708 = fdiv fast float %2700, %2707
  %2709 = call float @dx.op.unary.f32(i32 7, float %2708)  ; Saturate(value)
  %2710 = fsub fast float %2709, %1892
  %2711 = fmul fast float %2710, %2664
  %2712 = fadd fast float %2711, %1892
  br label %2727

; <label>:2713                                    ; preds = %2679
  %2714 = icmp eq i32 %2653, 8
  br i1 %2714, label %2715, label %2727

; <label>:2715                                    ; preds = %2713
  %2716 = fmul fast float %2658, %2484
  %2717 = fmul fast float %2658, %2485
  %2718 = fadd fast float %2716, %1883
  %2719 = fadd fast float %2717, %1884
  %2720 = call float @dx.op.binary.f32(i32 36, float %1893, float %2486)  ; FMin(a,b)
  %2721 = fsub fast float %2720, %1893
  %2722 = fmul fast float %2721, %2661
  %2723 = fadd fast float %2722, %1893
  %2724 = fsub fast float %2483, %1892
  %2725 = fmul fast float %2664, %2724
  %2726 = fadd fast float %2725, %1892
  br label %2727

; <label>:2727                                    ; preds = %2715, %2713, %2681, %2666, %2644, %2182, %1882
  %2728 = phi float [ %1883, %2644 ], [ %1883, %2182 ], [ %1883, %1882 ], [ %2671, %2666 ], [ %2684, %2681 ], [ %1883, %2713 ], [ %2718, %2715 ]
  %2729 = phi float [ %1884, %2644 ], [ %1884, %2182 ], [ %1884, %1882 ], [ %2672, %2666 ], [ %2685, %2681 ], [ %1884, %2713 ], [ %2719, %2715 ]
  %2730 = phi float [ %2645, %2644 ], [ %1885, %2182 ], [ %1885, %1882 ], [ %2645, %2666 ], [ %2645, %2681 ], [ %2645, %2713 ], [ %2645, %2715 ]
  %2731 = phi float [ %2646, %2644 ], [ %1886, %2182 ], [ %1886, %1882 ], [ %2646, %2666 ], [ %2646, %2681 ], [ %2646, %2713 ], [ %2646, %2715 ]
  %2732 = phi float [ %2647, %2644 ], [ %1887, %2182 ], [ %1887, %1882 ], [ %2647, %2666 ], [ %2647, %2681 ], [ %2647, %2713 ], [ %2647, %2715 ]
  %2733 = phi float [ %2648, %2644 ], [ %1888, %2182 ], [ %1888, %1882 ], [ %2648, %2666 ], [ %2648, %2681 ], [ %2648, %2713 ], [ %2648, %2715 ]
  %2734 = phi float [ %2649, %2644 ], [ %1889, %2182 ], [ %1889, %1882 ], [ %2649, %2666 ], [ %2649, %2681 ], [ %2649, %2713 ], [ %2649, %2715 ]
  %2735 = phi float [ %2650, %2644 ], [ %1890, %2182 ], [ %1890, %1882 ], [ %2650, %2666 ], [ %2650, %2681 ], [ %2650, %2713 ], [ %2650, %2715 ]
  %2736 = phi float [ %2651, %2644 ], [ %1891, %2182 ], [ %1891, %1882 ], [ %2651, %2666 ], [ %2651, %2681 ], [ %2651, %2713 ], [ %2651, %2715 ]
  %2737 = phi float [ %1892, %2644 ], [ %1892, %2182 ], [ %1892, %1882 ], [ %2678, %2666 ], [ %2712, %2681 ], [ %1892, %2713 ], [ %2726, %2715 ]
  %2738 = phi float [ %1893, %2644 ], [ %1893, %2182 ], [ %1893, %1882 ], [ %2675, %2666 ], [ %2689, %2681 ], [ %1893, %2713 ], [ %2723, %2715 ]
  %2739 = phi float [ %2652, %2644 ], [ %1894, %2182 ], [ %1894, %1882 ], [ %2652, %2666 ], [ %2652, %2681 ], [ %2652, %2713 ], [ %2652, %2715 ]
  %2740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2741 = extractvalue %dx.types.CBufRet.f32 %2740, 0
  %2742 = call float @dx.op.dot2.f32(i32 54, float %2728, float %2729, float %2728, float %2729)  ; Dot2(ax,ay,bx,by)
  %2743 = fmul fast float %2742, 0x3FE3333340000000
  %2744 = fsub fast float 1.000000e+00, %2743
  %2745 = call float @dx.op.dot3.f32(i32 55, float %2728, float %2729, float %2744, float %2728, float %2729, float %2744)  ; Dot3(ax,ay,az,bx,by,bz)
  %2746 = call float @dx.op.unary.f32(i32 25, float %2745)  ; Rsqrt(value)
  %2747 = fmul fast float %2746, %2728
  %2748 = fmul fast float %2746, %2729
  %2749 = fmul fast float %2744, %2746
  %2750 = fmul fast float %2749, %78
  %2751 = fmul fast float %2749, %79
  %2752 = fmul fast float %2749, %80
  %2753 = fmul fast float %2747, %74
  %2754 = fmul fast float %2747, %75
  %2755 = fmul fast float %2747, %76
  %2756 = fadd fast float %2750, %2753
  %2757 = fadd fast float %2751, %2754
  %2758 = fadd fast float %2752, %2755
  %2759 = fmul fast float %2748, %116
  %2760 = fmul fast float %2748, %117
  %2761 = fmul fast float %2748, %118
  %2762 = fadd fast float %2756, %2759
  %2763 = fadd fast float %2757, %2760
  %2764 = fadd fast float %2758, %2761
  %2765 = call float @dx.op.dot3.f32(i32 55, float %2762, float %2763, float %2764, float %2762, float %2763, float %2764)  ; Dot3(ax,ay,az,bx,by,bz)
  %2766 = call float @dx.op.unary.f32(i32 25, float %2765)  ; Rsqrt(value)
  %2767 = fmul fast float %2762, %2766
  %2768 = fmul fast float %2763, %2766
  %2769 = fmul fast float %2764, %2766
  %2770 = call float @dx.op.unary.f32(i32 83, float %152)  ; DerivCoarseX(value)
  %2771 = call float @dx.op.unary.f32(i32 83, float %153)  ; DerivCoarseX(value)
  %2772 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %2773 = call float @dx.op.unary.f32(i32 84, float %152)  ; DerivCoarseY(value)
  %2774 = call float @dx.op.unary.f32(i32 84, float %153)  ; DerivCoarseY(value)
  %2775 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %2776 = fadd fast float %2770, %152
  %2777 = fadd fast float %2771, %153
  %2778 = fadd fast float %2772, %154
  %2779 = fadd fast float %2773, %152
  %2780 = fadd fast float %2774, %153
  %2781 = fadd fast float %2775, %154
  %2782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %2783 = extractvalue %dx.types.CBufRet.f32 %2782, 0
  %2784 = extractvalue %dx.types.CBufRet.f32 %2782, 1
  %2785 = extractvalue %dx.types.CBufRet.f32 %2782, 2
  %2786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2787 = extractvalue %dx.types.CBufRet.f32 %2786, 2
  %2788 = extractvalue %dx.types.CBufRet.f32 %2786, 3
  %2789 = fmul fast float %2783, %105
  %2790 = fmul fast float %2789, %2787
  %2791 = fmul fast float %2784, %106
  %2792 = fmul fast float %2791, %2788
  %2793 = fptoui float %2790 to i32
  %2794 = fptoui float %2792 to i32
  %2795 = fadd fast float %2783, -1.000000e+00
  %2796 = fadd fast float %2784, -1.000000e+00
  %2797 = fptoui float %2795 to i32
  %2798 = fptoui float %2796 to i32
  %2799 = call i32 @dx.op.binary.i32(i32 40, i32 %2793, i32 %2797)  ; UMin(a,b)
  %2800 = call i32 @dx.op.binary.i32(i32 40, i32 %2794, i32 %2798)  ; UMin(a,b)
  %2801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2802 = extractvalue %dx.types.CBufRet.f32 %2801, 2
  %2803 = extractvalue %dx.types.CBufRet.f32 %2801, 3
  %2804 = fmul fast float %2802, %96
  %2805 = fsub fast float %2804, %2803
  %2806 = fadd fast float %2785, -1.000000e+00
  %2807 = call float @dx.op.binary.f32(i32 36, float %2805, float %2806)  ; FMin(a,b)
  %2808 = fptoui float %2807 to i32
  %2809 = fptoui float %2783 to i32
  %2810 = fptoui float %2784 to i32
  %2811 = mul i32 %2808, %2810
  %2812 = add i32 %2811, %2800
  %2813 = mul i32 %2812, %2809
  %2814 = add i32 %2813, %2799
  %2815 = shl i32 %2814, 2
  %2816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2815, i32 undef)  ; BufferLoad(srv,index,wot)
  %2817 = extractvalue %dx.types.ResRet.i32 %2816, 0
  %2818 = and i32 %2817, 1023
  %2819 = lshr i32 %2817, 10
  %2820 = icmp eq i32 %2818, 0
  br i1 %2820, label %3249, label %2821

; <label>:2821                                    ; preds = %2727
  %2822 = and i32 %2817, 1023
  br label %2823

; <label>:2823                                    ; preds = %2950, %2821
  %2824 = phi i32 [ %2900, %2950 ], [ 0, %2821 ]
  %2825 = phi float [ %2951, %2950 ], [ 0.000000e+00, %2821 ]
  %2826 = phi float [ %2952, %2950 ], [ %1046, %2821 ]
  %2827 = phi float [ %2953, %2950 ], [ %2741, %2821 ]
  %2828 = phi float [ %2954, %2950 ], [ %2739, %2821 ]
  %2829 = phi float [ %2955, %2950 ], [ 0.000000e+00, %2821 ]
  %2830 = phi float [ %2956, %2950 ], [ 0.000000e+00, %2821 ]
  %2831 = phi float [ %2957, %2950 ], [ %2733, %2821 ]
  %2832 = phi float [ %2958, %2950 ], [ %2734, %2821 ]
  %2833 = phi float [ %2959, %2950 ], [ %2735, %2821 ]
  %2834 = phi float [ %2960, %2950 ], [ %2767, %2821 ]
  %2835 = phi float [ %2961, %2950 ], [ %2768, %2821 ]
  %2836 = phi float [ %2962, %2950 ], [ %2769, %2821 ]
  %2837 = phi float [ %2963, %2950 ], [ %2738, %2821 ]
  %2838 = phi float [ %2964, %2950 ], [ %2737, %2821 ]
  %2839 = phi float [ %2965, %2950 ], [ 0.000000e+00, %2821 ]
  %2840 = phi float [ %2966, %2950 ], [ %2736, %2821 ]
  %2841 = phi float [ %2967, %2950 ], [ %2730, %2821 ]
  %2842 = phi float [ %2968, %2950 ], [ %2731, %2821 ]
  %2843 = phi float [ %2969, %2950 ], [ %2732, %2821 ]
  %2844 = add nuw nsw i32 %2824, %2819
  %2845 = shl i32 %2844, 2
  %2846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2845, i32 undef)  ; BufferLoad(srv,index,wot)
  %2847 = extractvalue %dx.types.ResRet.i32 %2846, 0
  %2848 = shl i32 %2847, 8
  %2849 = or i32 %2848, 48
  %2850 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.f32 %2850, 0
  %2852 = extractvalue %dx.types.ResRet.f32 %2850, 1
  %2853 = extractvalue %dx.types.ResRet.f32 %2850, 2
  %2854 = extractvalue %dx.types.ResRet.f32 %2850, 3
  %2855 = or i32 %2848, 64
  %2856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.i32 %2856, 0
  %2858 = extractvalue %dx.types.ResRet.i32 %2856, 1
  %2859 = or i32 %2848, 80
  %2860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2859, i32 undef)  ; BufferLoad(srv,index,wot)
  %2861 = extractvalue %dx.types.ResRet.f32 %2860, 2
  %2862 = extractvalue %dx.types.ResRet.f32 %2860, 3
  %2863 = or i32 %2848, 96
  %2864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.f32 %2864, 0
  %2866 = extractvalue %dx.types.ResRet.f32 %2864, 1
  %2867 = extractvalue %dx.types.ResRet.f32 %2864, 2
  %2868 = extractvalue %dx.types.ResRet.f32 %2864, 3
  %2869 = or i32 %2848, 112
  %2870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.f32 %2870, 2
  %2872 = or i32 %2848, 128
  %2873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2872, i32 undef)  ; BufferLoad(srv,index,wot)
  %2874 = extractvalue %dx.types.ResRet.f32 %2873, 0
  %2875 = extractvalue %dx.types.ResRet.f32 %2873, 1
  %2876 = extractvalue %dx.types.ResRet.f32 %2873, 2
  %2877 = extractvalue %dx.types.ResRet.f32 %2873, 3
  %2878 = or i32 %2848, 144
  %2879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2878, i32 undef)  ; BufferLoad(srv,index,wot)
  %2880 = extractvalue %dx.types.ResRet.f32 %2879, 0
  %2881 = extractvalue %dx.types.ResRet.f32 %2879, 1
  %2882 = extractvalue %dx.types.ResRet.f32 %2879, 2
  %2883 = extractvalue %dx.types.ResRet.f32 %2879, 3
  %2884 = or i32 %2848, 160
  %2885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.f32 %2885, 0
  %2887 = extractvalue %dx.types.ResRet.f32 %2885, 1
  %2888 = extractvalue %dx.types.ResRet.f32 %2885, 2
  %2889 = extractvalue %dx.types.ResRet.f32 %2885, 3
  %2890 = or i32 %2848, 192
  %2891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2890, i32 undef)  ; BufferLoad(srv,index,wot)
  %2892 = extractvalue %dx.types.ResRet.i32 %2891, 0
  %2893 = or i32 %2848, 208
  %2894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.f32 %2894, 0
  %2896 = or i32 %2848, 248
  %2897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2898 = extractvalue %dx.types.ResRet.f32 %2897, 0
  %2899 = extractvalue %dx.types.ResRet.f32 %2897, 1
  %2900 = add nuw nsw i32 %2824, 1
  %2901 = bitcast float %2854 to i32
  %2902 = and i32 %2901, 2560
  %2903 = icmp eq i32 %2902, 0
  %2904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.f32 %2904, 0
  %2906 = extractvalue %dx.types.ResRet.f32 %2904, 1
  %2907 = extractvalue %dx.types.ResRet.f32 %2904, 2
  %2908 = extractvalue %dx.types.ResRet.f32 %2904, 3
  %2909 = call float @dx.op.dot4.f32(i32 56, float %2905, float %2906, float %2907, float %2908, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2910 = or i32 %2848, 16
  %2911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.f32 %2911, 0
  %2913 = extractvalue %dx.types.ResRet.f32 %2911, 1
  %2914 = extractvalue %dx.types.ResRet.f32 %2911, 2
  %2915 = extractvalue %dx.types.ResRet.f32 %2911, 3
  %2916 = call float @dx.op.dot4.f32(i32 56, float %2912, float %2913, float %2914, float %2915, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2917 = or i32 %2848, 32
  %2918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.f32 %2918, 0
  %2920 = extractvalue %dx.types.ResRet.f32 %2918, 1
  %2921 = extractvalue %dx.types.ResRet.f32 %2918, 2
  %2922 = extractvalue %dx.types.ResRet.f32 %2918, 3
  %2923 = call float @dx.op.dot4.f32(i32 56, float %2919, float %2920, float %2921, float %2922, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2924 = call float @dx.op.unary.f32(i32 27, float %2909)  ; Round_ni(value)
  %2925 = call float @dx.op.unary.f32(i32 6, float %2924)  ; FAbs(value)
  %2926 = call float @dx.op.unary.f32(i32 27, float %2916)  ; Round_ni(value)
  %2927 = call float @dx.op.unary.f32(i32 6, float %2926)  ; FAbs(value)
  %2928 = call float @dx.op.unary.f32(i32 6, float %2923)  ; FAbs(value)
  %2929 = call float @dx.op.unary.f32(i32 27, float %2928)  ; Round_ni(value)
  %2930 = fadd fast float %2927, %2925
  %2931 = fadd fast float %2930, %2929
  %2932 = fcmp fast oeq float %2931, 0.000000e+00
  %2933 = call float @dx.op.dot4.f32(i32 56, float %2905, float %2906, float %2907, float %2908, float %2776, float %2777, float %2778, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2934 = call float @dx.op.dot4.f32(i32 56, float %2912, float %2913, float %2914, float %2915, float %2776, float %2777, float %2778, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2935 = call float @dx.op.dot4.f32(i32 56, float %2905, float %2906, float %2907, float %2908, float %2779, float %2780, float %2781, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2936 = call float @dx.op.dot4.f32(i32 56, float %2912, float %2913, float %2914, float %2915, float %2779, float %2780, float %2781, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2937 = fsub fast float %2933, %2909
  %2938 = fsub fast float %2935, %2909
  %2939 = fsub fast float %2934, %2916
  %2940 = fsub fast float %2936, %2916
  %2941 = call float @dx.op.dot3.f32(i32 55, float %2851, float %2852, float %2853, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %2942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2943 = extractvalue %dx.types.CBufRet.f32 %2942, 2
  %2944 = fadd fast float %2943, %2941
  %2945 = call float @dx.op.unary.f32(i32 7, float %2944)  ; Saturate(value)
  %2946 = extractvalue %dx.types.CBufRet.f32 %2942, 0
  %2947 = fcmp fast ogt float %2945, %2946
  %2948 = and i1 %2932, %2947
  %2949 = and i1 %2903, %2948
  br i1 %2949, label %2971, label %2950

; <label>:2950                                    ; preds = %3235, %3052, %2971, %2823
  %2951 = phi float [ %2825, %2971 ], [ %3055, %3052 ], [ %3055, %3235 ], [ %2825, %2823 ]
  %2952 = phi float [ %2826, %2971 ], [ %2826, %3052 ], [ %3210, %3235 ], [ %2826, %2823 ]
  %2953 = phi float [ %2827, %2971 ], [ %2827, %3052 ], [ %3209, %3235 ], [ %2827, %2823 ]
  %2954 = phi float [ %2828, %2971 ], [ %2828, %3052 ], [ %3207, %3235 ], [ %2828, %2823 ]
  %2955 = phi float [ %2829, %2971 ], [ %2829, %3052 ], [ %3179, %3235 ], [ %2829, %2823 ]
  %2956 = phi float [ %2830, %2971 ], [ %2830, %3052 ], [ %3177, %3235 ], [ %2830, %2823 ]
  %2957 = phi float [ %2831, %2971 ], [ %2831, %3052 ], [ %3245, %3235 ], [ %2831, %2823 ]
  %2958 = phi float [ %2832, %2971 ], [ %2832, %3052 ], [ %3246, %3235 ], [ %2832, %2823 ]
  %2959 = phi float [ %2833, %2971 ], [ %2833, %3052 ], [ %3247, %3235 ], [ %2833, %2823 ]
  %2960 = phi float [ %2834, %2971 ], [ %2834, %3052 ], [ %3158, %3235 ], [ %2834, %2823 ]
  %2961 = phi float [ %2835, %2971 ], [ %2835, %3052 ], [ %3159, %3235 ], [ %2835, %2823 ]
  %2962 = phi float [ %2836, %2971 ], [ %2836, %3052 ], [ %3160, %3235 ], [ %2836, %2823 ]
  %2963 = phi float [ %2837, %2971 ], [ %2837, %3052 ], [ %3187, %3235 ], [ %2837, %2823 ]
  %2964 = phi float [ %2838, %2971 ], [ %2838, %3052 ], [ %3184, %3235 ], [ %2838, %2823 ]
  %2965 = phi float [ %2839, %2971 ], [ %2839, %3052 ], [ %3181, %3235 ], [ %2839, %2823 ]
  %2966 = phi float [ %2840, %2971 ], [ %2840, %3052 ], [ %3175, %3235 ], [ %2840, %2823 ]
  %2967 = phi float [ %2841, %2971 ], [ %2841, %3052 ], [ %3170, %3235 ], [ %2841, %2823 ]
  %2968 = phi float [ %2842, %2971 ], [ %2842, %3052 ], [ %3171, %3235 ], [ %2842, %2823 ]
  %2969 = phi float [ %2843, %2971 ], [ %2843, %3052 ], [ %3172, %3235 ], [ %2843, %2823 ]
  %2970 = icmp eq i32 %2900, %2822
  br i1 %2970, label %3248, label %2823

; <label>:2971                                    ; preds = %2823
  %2972 = extractvalue %dx.types.ResRet.f32 %2870, 3
  %2973 = extractvalue %dx.types.ResRet.f32 %2870, 1
  %2974 = extractvalue %dx.types.ResRet.f32 %2870, 0
  %2975 = extractvalue %dx.types.ResRet.f32 %2860, 1
  %2976 = extractvalue %dx.types.ResRet.f32 %2860, 0
  %2977 = extractvalue %dx.types.ResRet.i32 %2856, 3
  %2978 = extractvalue %dx.types.ResRet.i32 %2856, 2
  %2979 = add i32 %2977, 0
  %2980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2979, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2982 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2980, %dx.types.Handle %2981, float %2909, float %2916, float undef, float undef, i32 0, i32 0, i32 undef, float %2937, float %2939, float undef, float %2938, float %2940, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2983 = extractvalue %dx.types.ResRet.f32 %2982, 0
  %2984 = fmul fast float %2983, %2976
  %2985 = fadd fast float %2984, %2975
  %2986 = call float @dx.op.unary.f32(i32 7, float %2985)  ; Saturate(value)
  %2987 = fmul fast float %2909, %2865
  %2988 = call float @dx.op.tertiary.f32(i32 46, float %2866, float %2916, float %2987)  ; FMad(a,b,c)
  %2989 = fadd fast float %2988, %2974
  %2990 = fmul fast float %2909, %2867
  %2991 = call float @dx.op.tertiary.f32(i32 46, float %2868, float %2916, float %2990)  ; FMad(a,b,c)
  %2992 = fadd fast float %2991, %2973
  %2993 = fmul fast float %2937, %2865
  %2994 = call float @dx.op.tertiary.f32(i32 46, float %2866, float %2939, float %2993)  ; FMad(a,b,c)
  %2995 = fmul fast float %2937, %2867
  %2996 = call float @dx.op.tertiary.f32(i32 46, float %2868, float %2939, float %2995)  ; FMad(a,b,c)
  %2997 = fmul fast float %2938, %2865
  %2998 = call float @dx.op.tertiary.f32(i32 46, float %2866, float %2940, float %2997)  ; FMad(a,b,c)
  %2999 = fmul fast float %2938, %2867
  %3000 = call float @dx.op.tertiary.f32(i32 46, float %2868, float %2940, float %2999)  ; FMad(a,b,c)
  %3001 = add i32 %2978, 0
  %3002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3001, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3003 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3002, %dx.types.Handle %2981, float %2989, float %2992, float undef, float undef, i32 0, i32 0, i32 undef, float %2994, float %2996, float undef, float %2998, float %3000, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3004 = extractvalue %dx.types.ResRet.f32 %3003, 0
  %3005 = and i32 %2901, 1024
  %3006 = icmp ne i32 %3005, 0
  %3007 = fcmp fast ogt float %3004, 0x3FE0101020000000
  %3008 = uitofp i1 %3007 to float
  %3009 = select i1 %3006, float %3008, float %3004
  %3010 = and i32 %2901, 8192
  %3011 = icmp ne i32 %3010, 0
  %3012 = select i1 %3011, float %2972, float 1.000000e+00
  %3013 = fmul fast float %2909, 2.000000e+00
  %3014 = fadd fast float %3013, -1.000000e+00
  %3015 = call float @dx.op.unary.f32(i32 6, float %3014)  ; FAbs(value)
  %3016 = fmul fast float %3015, %2898
  %3017 = fsub fast float %3016, %2898
  %3018 = call float @dx.op.unary.f32(i32 7, float %3017)  ; Saturate(value)
  %3019 = fmul fast float %2916, 2.000000e+00
  %3020 = fadd fast float %3019, -1.000000e+00
  %3021 = call float @dx.op.unary.f32(i32 6, float %3020)  ; FAbs(value)
  %3022 = fmul fast float %3021, %2899
  %3023 = fsub fast float %3022, %2899
  %3024 = call float @dx.op.unary.f32(i32 7, float %3023)  ; Saturate(value)
  %3025 = fmul fast float %2928, %2861
  %3026 = fsub fast float %3025, %2861
  %3027 = call float @dx.op.unary.f32(i32 7, float %3026)  ; Saturate(value)
  %3028 = fmul fast float %2986, %3012
  %3029 = fmul fast float %3028, %2983
  %3030 = fmul fast float %3029, %3018
  %3031 = fmul fast float %3030, %3009
  %3032 = fmul fast float %3031, %3024
  %3033 = fmul fast float %3032, %3027
  %3034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3035 = extractvalue %dx.types.CBufRet.f32 %3034, 1
  %3036 = extractvalue %dx.types.CBufRet.f32 %3034, 0
  %3037 = fsub fast float %2945, %3036
  %3038 = fmul fast float %3037, %3035
  %3039 = call float @dx.op.unary.f32(i32 7, float %3038)  ; Saturate(value)
  %3040 = fmul fast float %3033, %2862
  %3041 = fadd fast float %3033, %2862
  %3042 = fmul fast float %3041, %2871
  %3043 = fsub fast float %3042, %2871
  %3044 = call float @dx.op.unary.f32(i32 7, float %3043)  ; Saturate(value)
  %3045 = and i32 %2901, 128
  %3046 = icmp ne i32 %3045, 0
  %3047 = select i1 %3046, float %3044, float %3040
  %3048 = fmul fast float %3047, %3039
  %3049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3050 = extractvalue %dx.types.CBufRet.f32 %3049, 0
  %3051 = fcmp fast ugt float %3048, %3050
  br i1 %3051, label %3052, label %2950

; <label>:3052                                    ; preds = %2971
  %3053 = select i1 %3011, float %3048, float 0.000000e+00
  %3054 = fadd fast float %3053, %2825
  %3055 = call float @dx.op.unary.f32(i32 7, float %3054)  ; Saturate(value)
  br i1 %3011, label %2950, label %3056

; <label>:3056                                    ; preds = %3052
  %3057 = and i32 %2901, 4
  %3058 = and i32 %2901, 8
  %3059 = add i32 %2857, 0
  %3060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3059, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3061 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3062 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3060, %dx.types.Handle %3061, float %2989, float %2992, float undef, float undef, i32 0, i32 0, i32 undef, float %2994, float %2996, float undef, float %2998, float %3000, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3063 = extractvalue %dx.types.ResRet.f32 %3062, 0
  %3064 = extractvalue %dx.types.ResRet.f32 %3062, 1
  %3065 = extractvalue %dx.types.ResRet.f32 %3062, 2
  %3066 = extractvalue %dx.types.ResRet.f32 %3062, 3
  %3067 = bitcast float %2883 to i32
  %3068 = and i32 %3067, 255
  %3069 = uitofp i32 %3068 to float
  %3070 = lshr i32 %3067, 8
  %3071 = and i32 %3070, 255
  %3072 = uitofp i32 %3071 to float
  %3073 = fmul fast float %3066, %3069
  %3074 = fadd fast float %3073, %3072
  %3075 = fmul fast float %3074, 0x3F70101000000000
  %3076 = add i32 %2858, 0
  %3077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3076, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3078 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3077, %dx.types.Handle %3061, float %2989, float %2992, float undef, float undef, i32 0, i32 0, i32 undef, float %2994, float %2996, float undef, float %2998, float %3000, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3079 = extractvalue %dx.types.ResRet.f32 %3078, 0
  %3080 = extractvalue %dx.types.ResRet.f32 %3078, 1
  %3081 = extractvalue %dx.types.ResRet.f32 %3078, 2
  %3082 = extractvalue %dx.types.ResRet.f32 %3078, 3
  %3083 = bitcast float %2877 to i32
  %3084 = and i32 %3083, 255
  %3085 = uitofp i32 %3084 to float
  %3086 = lshr i32 %3083, 8
  %3087 = and i32 %3086, 255
  %3088 = uitofp i32 %3087 to float
  %3089 = lshr i32 %3083, 16
  %3090 = and i32 %3089, 255
  %3091 = uitofp i32 %3090 to float
  %3092 = fmul fast float %3091, 0x3F70101000000000
  %3093 = fmul fast float %3079, %3085
  %3094 = fadd fast float %3093, %3088
  %3095 = fmul fast float %3094, 0x3F70101000000000
  %3096 = fadd fast float %3080, -5.000000e-01
  %3097 = fadd fast float %3082, -5.000000e-01
  %3098 = fmul fast float %3096, %3092
  %3099 = fmul fast float %3097, %3092
  %3100 = fadd fast float %3098, 5.000000e-01
  %3101 = fadd fast float %3099, 5.000000e-01
  %3102 = fmul fast float %3063, %2886
  %3103 = fmul fast float %3064, %2887
  %3104 = fmul fast float %3065, %2888
  %3105 = fmul fast float %3100, 2.000000e+00
  %3106 = fadd fast float %3105, -1.000000e+00
  %3107 = fmul fast float %3101, 2.000000e+00
  %3108 = fadd fast float %3107, -1.000000e+00
  %3109 = fadd fast float %3106, %3108
  %3110 = fmul fast float %3109, 5.000000e-01
  %3111 = fsub fast float %3106, %3108
  %3112 = fmul fast float %3111, 5.000000e-01
  %3113 = call float @dx.op.unary.f32(i32 6, float %3110)  ; FAbs(value)
  %3114 = fsub fast float 1.000000e+00, %3113
  %3115 = call float @dx.op.unary.f32(i32 6, float %3112)  ; FAbs(value)
  %3116 = fsub fast float %3114, %3115
  %3117 = call float @dx.op.dot3.f32(i32 55, float %3110, float %3112, float %3116, float %3110, float %3112, float %3116)  ; Dot3(ax,ay,az,bx,by,bz)
  %3118 = call float @dx.op.unary.f32(i32 25, float %3117)  ; Rsqrt(value)
  %3119 = fmul fast float %3110, %3118
  %3120 = fmul fast float %3112, %3118
  %3121 = fmul fast float %3118, %3116
  %3122 = fmul fast float %3121, %2851
  %3123 = fmul fast float %3121, %2852
  %3124 = fmul fast float %3121, %2853
  %3125 = fmul fast float %3119, %2874
  %3126 = fmul fast float %3119, %2875
  %3127 = fmul fast float %3119, %2876
  %3128 = fadd fast float %3125, %3122
  %3129 = fadd fast float %3126, %3123
  %3130 = fadd fast float %3127, %3124
  %3131 = fmul fast float %3120, %2880
  %3132 = fmul fast float %3120, %2881
  %3133 = fmul fast float %3120, %2882
  %3134 = fadd fast float %3128, %3131
  %3135 = fadd fast float %3129, %3132
  %3136 = fadd fast float %3130, %3133
  %3137 = call float @dx.op.dot3.f32(i32 55, float %3134, float %3135, float %3136, float %3134, float %3135, float %3136)  ; Dot3(ax,ay,az,bx,by,bz)
  %3138 = call float @dx.op.unary.f32(i32 25, float %3137)  ; Rsqrt(value)
  %3139 = fmul fast float %3134, %3138
  %3140 = fmul fast float %3135, %3138
  %3141 = fmul fast float %3136, %3138
  %3142 = icmp ne i32 %3058, 0
  %3143 = select i1 %3142, float 1.000000e+00, float 0.000000e+00
  %3144 = fmul fast float %3048, %3143
  %3145 = and i32 %2901, 1
  %3146 = icmp eq i32 %3145, 0
  br i1 %3146, label %3147, label %3151

; <label>:3147                                    ; preds = %3056
  %3148 = fsub fast float %3139, %2834
  %3149 = fsub fast float %3140, %2835
  %3150 = fsub fast float %3141, %2836
  br label %3151

; <label>:3151                                    ; preds = %3147, %3056
  %3152 = phi float [ %3148, %3147 ], [ %3139, %3056 ]
  %3153 = phi float [ %3149, %3147 ], [ %3140, %3056 ]
  %3154 = phi float [ %3150, %3147 ], [ %3141, %3056 ]
  %3155 = fmul float %3154, %3144
  %3156 = fmul float %3153, %3144
  %3157 = fmul float %3152, %3144
  %3158 = fadd fast float %3157, %2834
  %3159 = fadd fast float %3156, %2835
  %3160 = fadd fast float %3155, %2836
  %3161 = icmp ne i32 %3057, 0
  %3162 = select i1 %3161, float 1.000000e+00, float 0.000000e+00
  %3163 = fmul fast float %3048, %3162
  %3164 = fsub fast float %3102, %2841
  %3165 = fsub fast float %3103, %2842
  %3166 = fsub fast float %3104, %2843
  %3167 = fmul fast float %3164, %3163
  %3168 = fmul fast float %3165, %3163
  %3169 = fmul fast float %3166, %3163
  %3170 = fadd fast float %3167, %2841
  %3171 = fadd fast float %3168, %2842
  %3172 = fadd fast float %3169, %2843
  %3173 = fsub fast float %3075, %2840
  %3174 = fmul fast float %3173, %3163
  %3175 = fadd fast float %3174, %2840
  %3176 = fmul fast float %3163, %2830
  %3177 = fsub fast float %2830, %3176
  %3178 = fmul fast float %3163, %2829
  %3179 = fsub fast float %2829, %3178
  %3180 = fadd fast float %3048, %2839
  %3181 = call float @dx.op.unary.f32(i32 7, float %3180)  ; Saturate(value)
  %3182 = fsub fast float %3095, %2838
  %3183 = fmul fast float %3182, %3144
  %3184 = fadd fast float %3183, %2838
  %3185 = fsub fast float %3081, %2837
  %3186 = fmul fast float %3185, %3144
  %3187 = fadd fast float %3186, %2837
  %3188 = call float @dx.op.dot3.f32(i32 55, float %3102, float %3103, float %3104, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3190 = extractvalue %dx.types.CBufRet.f32 %3189, 0
  %3191 = extractvalue %dx.types.CBufRet.f32 %3189, 1
  %3192 = fmul fast float %3191, %3188
  %3193 = fadd fast float %3192, %3190
  %3194 = call float @dx.op.unary.f32(i32 7, float %3193)  ; Saturate(value)
  %3195 = bitcast float %2889 to i32
  %3196 = and i32 %3195, 65535
  %3197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3196)  ; LegacyF16ToF32(value)
  %3198 = lshr i32 %3195, 16
  %3199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3198)  ; LegacyF16ToF32(value)
  %3200 = fcmp fast oge float %3197, 0.000000e+00
  %3201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3202 = extractvalue %dx.types.CBufRet.f32 %3201, 0
  %3203 = select i1 %3200, float %3197, float %3202
  %3204 = fadd fast float %3203, %3199
  %3205 = fsub fast float %3194, %2828
  %3206 = fmul fast float %3205, %3048
  %3207 = fadd fast float %3206, %2828
  %3208 = fmul fast float %3204, %3048
  %3209 = call float @dx.op.binary.f32(i32 35, float %2827, float %3208)  ; FMax(a,b)
  %3210 = call float @dx.op.binary.f32(i32 35, float %2826, float %3048)  ; FMax(a,b)
  %3211 = and i32 %2901, 16
  %3212 = icmp eq i32 %3211, 0
  br i1 %3212, label %3235, label %3213

; <label>:3213                                    ; preds = %3151
  %3214 = bitcast float %2895 to i32
  %3215 = add i32 %2892, 0
  %3216 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3215, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3217 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3216, %dx.types.Handle %3061, float %2989, float %2992, float undef, float undef, i32 0, i32 0, i32 undef, float %2994, float %2996, float undef, float %2998, float %3000, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3218 = extractvalue %dx.types.ResRet.f32 %3217, 0
  %3219 = extractvalue %dx.types.ResRet.f32 %3217, 1
  %3220 = extractvalue %dx.types.ResRet.f32 %3217, 2
  %3221 = and i32 %3214, 65535
  %3222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3221)  ; LegacyF16ToF32(value)
  %3223 = fmul fast float %3218, %2886
  %3224 = fmul fast float %3219, %2887
  %3225 = fmul fast float %3220, %2888
  %3226 = and i32 %2901, 16384
  %3227 = icmp ne i32 %3226, 0
  %3228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3229 = extractvalue %dx.types.CBufRet.f32 %3228, 0
  %3230 = select i1 %3227, float %3229, float 1.000000e+00
  %3231 = fmul fast float %3230, %3222
  %3232 = fmul fast float %3223, %3231
  %3233 = fmul fast float %3224, %3231
  %3234 = fmul fast float %3225, %3231
  br label %3235

; <label>:3235                                    ; preds = %3213, %3151
  %3236 = phi float [ %3232, %3213 ], [ 0.000000e+00, %3151 ]
  %3237 = phi float [ %3233, %3213 ], [ 0.000000e+00, %3151 ]
  %3238 = phi float [ %3234, %3213 ], [ 0.000000e+00, %3151 ]
  %3239 = fsub fast float %3236, %2831
  %3240 = fsub fast float %3237, %2832
  %3241 = fsub fast float %3238, %2833
  %3242 = fmul fast float %3239, %3048
  %3243 = fmul fast float %3240, %3048
  %3244 = fmul fast float %3241, %3048
  %3245 = fadd fast float %3242, %2831
  %3246 = fadd fast float %3243, %2832
  %3247 = fadd fast float %3244, %2833
  br label %2950

; <label>:3248                                    ; preds = %2950
  br label %3249

; <label>:3249                                    ; preds = %3248, %2727
  %3250 = phi float [ 0.000000e+00, %2727 ], [ %2951, %3248 ]
  %3251 = phi float [ %1046, %2727 ], [ %2952, %3248 ]
  %3252 = phi float [ %2741, %2727 ], [ %2953, %3248 ]
  %3253 = phi float [ %2739, %2727 ], [ %2954, %3248 ]
  %3254 = phi float [ 0.000000e+00, %2727 ], [ %2955, %3248 ]
  %3255 = phi float [ 0.000000e+00, %2727 ], [ %2956, %3248 ]
  %3256 = phi float [ %2733, %2727 ], [ %2957, %3248 ]
  %3257 = phi float [ %2734, %2727 ], [ %2958, %3248 ]
  %3258 = phi float [ %2735, %2727 ], [ %2959, %3248 ]
  %3259 = phi float [ %2767, %2727 ], [ %2960, %3248 ]
  %3260 = phi float [ %2768, %2727 ], [ %2961, %3248 ]
  %3261 = phi float [ %2769, %2727 ], [ %2962, %3248 ]
  %3262 = phi float [ %2738, %2727 ], [ %2963, %3248 ]
  %3263 = phi float [ %2737, %2727 ], [ %2964, %3248 ]
  %3264 = phi float [ 0.000000e+00, %2727 ], [ %2965, %3248 ]
  %3265 = phi float [ %2736, %2727 ], [ %2966, %3248 ]
  %3266 = phi float [ %2730, %2727 ], [ %2967, %3248 ]
  %3267 = phi float [ %2731, %2727 ], [ %2968, %3248 ]
  %3268 = phi float [ %2732, %2727 ], [ %2969, %3248 ]
  %3269 = call float @dx.op.dot3.f32(i32 55, float %3259, float %3260, float %3261, float %3259, float %3260, float %3261)  ; Dot3(ax,ay,az,bx,by,bz)
  %3270 = call float @dx.op.unary.f32(i32 25, float %3269)  ; Rsqrt(value)
  %3271 = fmul fast float %3270, %3259
  %3272 = fmul fast float %3270, %3260
  %3273 = fmul fast float %3270, %3261
  %3274 = fadd fast float %3264, %1046
  %3275 = call float @dx.op.unary.f32(i32 7, float %3274)  ; Saturate(value)
  %3276 = call float @dx.op.dot3.f32(i32 55, float %3271, float %3272, float %3273, float %3271, float %3272, float %3273)  ; Dot3(ax,ay,az,bx,by,bz)
  %3277 = call float @dx.op.unary.f32(i32 25, float %3276)  ; Rsqrt(value)
  %3278 = fmul fast float %3277, %3271
  %3279 = fmul fast float %3277, %3272
  %3280 = fmul fast float %3277, %3273
  %3281 = fadd fast float %3265, 0xBFB99999A0000000
  %3282 = call float @dx.op.unary.f32(i32 7, float %3281)  ; Saturate(value)
  %3283 = fmul fast float %3282, 0x3FF1C71C80000000
  %3284 = call float @dx.op.binary.f32(i32 36, float %3265, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3285 = fsub fast float 1.000000e+00, %3283
  %3286 = call float @dx.op.unary.f32(i32 7, float %3285)  ; Saturate(value)
  %3287 = fmul fast float %3286, %3266
  %3288 = fmul fast float %3286, %3267
  %3289 = fmul fast float %3286, %3268
  %3290 = call float @dx.op.unary.f32(i32 7, float %3287)  ; Saturate(value)
  %3291 = call float @dx.op.unary.f32(i32 7, float %3288)  ; Saturate(value)
  %3292 = call float @dx.op.unary.f32(i32 7, float %3289)  ; Saturate(value)
  %3293 = fmul fast float %3283, %3266
  %3294 = fmul fast float %3283, %3267
  %3295 = fmul fast float %3283, %3268
  %3296 = fadd fast float %3293, %3284
  %3297 = fadd fast float %3294, %3284
  %3298 = fadd fast float %3295, %3284
  %3299 = call float @dx.op.unary.f32(i32 7, float %3296)  ; Saturate(value)
  %3300 = call float @dx.op.unary.f32(i32 7, float %3297)  ; Saturate(value)
  %3301 = call float @dx.op.unary.f32(i32 7, float %3298)  ; Saturate(value)
  %3302 = call float @dx.op.unary.f32(i32 7, float %3263)  ; Saturate(value)
  %3303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3304 = extractvalue %dx.types.CBufRet.i32 %3303, 3
  %3305 = and i32 %3304, 8
  %3306 = icmp ne i32 %3305, 0
  %3307 = call float @dx.op.binary.f32(i32 35, float %3290, float %3266)  ; FMax(a,b)
  %3308 = call float @dx.op.binary.f32(i32 35, float %3291, float %3266)  ; FMax(a,b)
  %3309 = call float @dx.op.binary.f32(i32 35, float %3292, float %3266)  ; FMax(a,b)
  %3310 = call float @dx.op.dot3.f32(i32 55, float %3290, float %3291, float %3292, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3311 = select i1 %243, float %3266, float %3290
  %3312 = select i1 %243, float %3310, float %3291
  %3313 = select i1 %243, float 1.000000e+00, float %3292
  %3314 = select i1 %3306, float %3307, float %3311
  %3315 = select i1 %3306, float %3308, float %3312
  %3316 = select i1 %3306, float %3309, float %3313
  %3317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3318 = extractvalue %dx.types.CBufRet.f32 %3317, 0
  %3319 = extractvalue %dx.types.CBufRet.f32 %3317, 1
  %3320 = extractvalue %dx.types.CBufRet.f32 %3317, 2
  %3321 = fadd fast float %3318, %152
  %3322 = fadd fast float %3319, %153
  %3323 = fadd fast float %3320, %154
  %3324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3325 = extractvalue %dx.types.CBufRet.f32 %3324, 0
  %3326 = extractvalue %dx.types.CBufRet.f32 %3324, 1
  %3327 = fsub fast float %3321, %3325
  %3328 = fsub fast float %3322, %3326
  %3329 = fmul fast float %3327, %3327
  %3330 = fmul fast float %3328, %3328
  %3331 = fadd fast float %3329, %3330
  %3332 = call float @dx.op.unary.f32(i32 24, float %3331)  ; Sqrt(value)
  %3333 = extractvalue %dx.types.CBufRet.f32 %3324, 2
  %3334 = fcmp fast olt float %3332, %3333
  br i1 %3334, label %3335, label %3402

; <label>:3335                                    ; preds = %3249
  %3336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3337 = extractvalue %dx.types.CBufRet.f32 %3336, 0
  %3338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3339 = extractvalue %dx.types.CBufRet.f32 %3338, 0
  %3340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3341 = extractvalue %dx.types.CBufRet.f32 %3340, 0
  %3342 = extractvalue %dx.types.CBufRet.f32 %3336, 1
  %3343 = extractvalue %dx.types.CBufRet.f32 %3338, 1
  %3344 = extractvalue %dx.types.CBufRet.f32 %3340, 1
  %3345 = extractvalue %dx.types.CBufRet.f32 %3336, 3
  %3346 = extractvalue %dx.types.CBufRet.f32 %3338, 3
  %3347 = extractvalue %dx.types.CBufRet.f32 %3340, 3
  %3348 = fadd fast float %3345, %3321
  %3349 = fadd fast float %3346, %3322
  %3350 = fadd fast float %3347, %3323
  %3351 = fmul fast float %3348, %3337
  %3352 = call float @dx.op.tertiary.f32(i32 46, float %3349, float %3339, float %3351)  ; FMad(a,b,c)
  %3353 = call float @dx.op.tertiary.f32(i32 46, float %3350, float %3341, float %3352)  ; FMad(a,b,c)
  %3354 = fmul fast float %3348, %3342
  %3355 = call float @dx.op.tertiary.f32(i32 46, float %3349, float %3343, float %3354)  ; FMad(a,b,c)
  %3356 = call float @dx.op.tertiary.f32(i32 46, float %3350, float %3344, float %3355)  ; FMad(a,b,c)
  %3357 = fsub fast float %3353, %3345
  %3358 = fsub fast float %3356, %3346
  %3359 = fsub fast float %3357, %3325
  %3360 = fadd fast float %3359, %3333
  %3361 = fsub fast float %3358, %3326
  %3362 = fadd fast float %3361, %3333
  %3363 = extractvalue %dx.types.CBufRet.f32 %3324, 3
  %3364 = fmul fast float %3360, %3363
  %3365 = fmul fast float %3362, %3363
  %3366 = call float @dx.op.unary.f32(i32 7, float %3364)  ; Saturate(value)
  %3367 = call float @dx.op.unary.f32(i32 7, float %3365)  ; Saturate(value)
  %3368 = fsub fast float 1.000000e+00, %3366
  %3369 = fsub fast float 1.000000e+00, %3367
  %3370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %58, float %3368, float %3369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3371 = extractvalue %dx.types.ResRet.f32 %3370, 0
  %3372 = fcmp fast ugt float %3371, 0.000000e+00
  br i1 %3372, label %3373, label %3676

; <label>:3373                                    ; preds = %3335
  %3374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3375 = extractvalue %dx.types.CBufRet.f32 %3374, 2
  %3376 = fmul fast float %3375, %3371
  %3377 = extractvalue %dx.types.CBufRet.f32 %3374, 3
  %3378 = fadd fast float %3377, %3376
  %3379 = extractvalue %dx.types.CBufRet.f32 %3340, 2
  %3380 = fadd fast float %3378, %3347
  %3381 = fmul fast float %3353, %3341
  %3382 = call float @dx.op.tertiary.f32(i32 46, float %3356, float %3344, float %3381)  ; FMad(a,b,c)
  %3383 = call float @dx.op.tertiary.f32(i32 46, float %3380, float %3379, float %3382)  ; FMad(a,b,c)
  %3384 = fsub fast float %3383, %3347
  %3385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3386 = extractvalue %dx.types.CBufRet.f32 %3385, 2
  %3387 = fsub fast float %3384, %3386
  %3388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %58, float %3368, float %3369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3389 = extractvalue %dx.types.ResRet.f32 %3388, 0
  %3390 = extractvalue %dx.types.ResRet.f32 %3388, 1
  %3391 = extractvalue %dx.types.ResRet.f32 %3388, 2
  %3392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %58, float %3368, float %3369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3393 = extractvalue %dx.types.ResRet.f32 %3392, 0
  %3394 = extractvalue %dx.types.ResRet.f32 %3392, 1
  %3395 = extractvalue %dx.types.ResRet.f32 %3392, 2
  %3396 = fadd fast float %3393, %3389
  %3397 = fmul fast float %3396, 0x3F847AE140000000
  %3398 = fadd fast float %3394, %3390
  %3399 = fmul fast float %3398, 0x3F847AE140000000
  %3400 = fadd fast float %3395, %3391
  %3401 = fmul fast float %3400, 0x3F847AE140000000
  br label %3676

; <label>:3402                                    ; preds = %3249
  %3403 = and i32 %219, 1
  %3404 = icmp eq i32 %3403, 0
  br i1 %3404, label %3676, label %3405

; <label>:3405                                    ; preds = %3402
  %3406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3407 = extractvalue %dx.types.CBufRet.f32 %3406, 0
  %3408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3409 = extractvalue %dx.types.CBufRet.f32 %3408, 0
  %3410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3411 = extractvalue %dx.types.CBufRet.f32 %3410, 0
  %3412 = extractvalue %dx.types.CBufRet.f32 %3406, 1
  %3413 = extractvalue %dx.types.CBufRet.f32 %3408, 1
  %3414 = extractvalue %dx.types.CBufRet.f32 %3410, 1
  %3415 = extractvalue %dx.types.CBufRet.f32 %3406, 3
  %3416 = extractvalue %dx.types.CBufRet.f32 %3408, 3
  %3417 = extractvalue %dx.types.CBufRet.f32 %3410, 3
  %3418 = fadd fast float %3415, %3321
  %3419 = fadd fast float %3416, %3322
  %3420 = fadd fast float %3417, %3323
  %3421 = fmul fast float %3418, %3407
  %3422 = call float @dx.op.tertiary.f32(i32 46, float %3419, float %3409, float %3421)  ; FMad(a,b,c)
  %3423 = call float @dx.op.tertiary.f32(i32 46, float %3420, float %3411, float %3422)  ; FMad(a,b,c)
  %3424 = fmul fast float %3418, %3412
  %3425 = call float @dx.op.tertiary.f32(i32 46, float %3419, float %3413, float %3424)  ; FMad(a,b,c)
  %3426 = call float @dx.op.tertiary.f32(i32 46, float %3420, float %3414, float %3425)  ; FMad(a,b,c)
  %3427 = fsub fast float %3423, %3415
  %3428 = fsub fast float %3426, %3416
  %3429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3430 = extractvalue %dx.types.CBufRet.f32 %3429, 0
  %3431 = extractvalue %dx.types.CBufRet.f32 %3429, 1
  %3432 = extractvalue %dx.types.CBufRet.f32 %3429, 2
  %3433 = extractvalue %dx.types.CBufRet.f32 %3429, 3
  %3434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3435 = extractvalue %dx.types.CBufRet.f32 %3434, 3
  %3436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3437 = extractvalue %dx.types.CBufRet.i32 %3436, 0
  %3438 = extractvalue %dx.types.CBufRet.i32 %3436, 1
  %3439 = udiv i32 %3438, %3437
  %3440 = fsub fast float %3427, %3430
  %3441 = fsub fast float %3428, %3431
  %3442 = call float @dx.op.binary.f32(i32 35, float %3440, float 0.000000e+00)  ; FMax(a,b)
  %3443 = call float @dx.op.binary.f32(i32 35, float %3441, float 0.000000e+00)  ; FMax(a,b)
  %3444 = call float @dx.op.binary.f32(i32 36, float %3442, float %3432)  ; FMin(a,b)
  %3445 = call float @dx.op.binary.f32(i32 36, float %3443, float %3433)  ; FMin(a,b)
  %3446 = add i32 %3437, -1
  %3447 = add i32 %3439, -1
  %3448 = fmul fast float %3444, %3435
  %3449 = fmul fast float %3445, %3435
  %3450 = fptoui float %3448 to i32
  %3451 = fptoui float %3449 to i32
  %3452 = call i32 @dx.op.binary.i32(i32 40, i32 %3450, i32 %3446)  ; UMin(a,b)
  %3453 = call i32 @dx.op.binary.i32(i32 40, i32 %3451, i32 %3447)  ; UMin(a,b)
  %3454 = mul i32 %3453, %3437
  %3455 = add i32 %3454, %3452
  %3456 = shl i32 %3455, 2
  %3457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.i32 %3457, 0
  %3459 = icmp eq i32 %3458, -1
  br i1 %3459, label %3676, label %3460

; <label>:3460                                    ; preds = %3405
  %3461 = mul i32 %3458, 148
  %3462 = add i32 %3461, 4
  %3463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3462, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.f32 %3463, 0
  %3465 = add i32 %3461, 8
  %3466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.f32 %3466, 0
  %3468 = add i32 %3461, 36
  %3469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.f32 %3469, 0
  %3471 = add i32 %3461, 60
  %3472 = add i32 %3461, 92
  %3473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3472, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.i32 %3473, 0
  %3475 = add i32 %3461, 116
  %3476 = fsub fast float %3427, %3464
  %3477 = fsub fast float %3428, %3467
  %3478 = fmul fast float %3435, %3476
  %3479 = fmul fast float %3435, %3477
  %3480 = call float @dx.op.unary.f32(i32 7, float %3478)  ; Saturate(value)
  %3481 = call float @dx.op.unary.f32(i32 7, float %3479)  ; Saturate(value)
  %3482 = fsub fast float 1.000000e+00, %3481
  %3483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3484 = extractvalue %dx.types.CBufRet.f32 %3483, 2
  %3485 = call float @dx.op.unary.f32(i32 83, float %3480)  ; DerivCoarseX(value)
  %3486 = call float @dx.op.unary.f32(i32 83, float %3482)  ; DerivCoarseX(value)
  %3487 = call float @dx.op.unary.f32(i32 84, float %3480)  ; DerivCoarseY(value)
  %3488 = call float @dx.op.unary.f32(i32 84, float %3482)  ; DerivCoarseY(value)
  %3489 = fmul fast float %3485, %3484
  %3490 = fmul fast float %3486, %3484
  %3491 = fmul fast float %3487, %3484
  %3492 = fmul fast float %3488, %3484
  %3493 = call float @dx.op.dot2.f32(i32 54, float %3491, float %3492, float %3491, float %3492)  ; Dot2(ax,ay,bx,by)
  %3494 = call float @dx.op.dot2.f32(i32 54, float %3489, float %3490, float %3489, float %3490)  ; Dot2(ax,ay,bx,by)
  %3495 = call float @dx.op.binary.f32(i32 35, float %3494, float %3493)  ; FMax(a,b)
  %3496 = call float @dx.op.unary.f32(i32 23, float %3495)  ; Log(value)
  %3497 = fmul fast float %3496, 5.000000e-01
  %3498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3499 = extractvalue %dx.types.CBufRet.f32 %3498, 1
  %3500 = fadd fast float %3499, %3497
  %3501 = call float @dx.op.binary.f32(i32 35, float %3500, float 0.000000e+00)  ; FMax(a,b)
  %3502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3503 = extractvalue %dx.types.CBufRet.f32 %3502, 3
  %3504 = fadd fast float %3503, %3501
  %3505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3506 = extractvalue %dx.types.CBufRet.f32 %3505, 3
  %3507 = fadd fast float %3504, %3506
  %3508 = add i32 %3474, 0
  %3509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3508, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3510 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3509, i32 0)  ; GetDimensions(handle,mipLevel)
  %3511 = extractvalue %dx.types.Dimensions %3510, 0
  %3512 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3511)  ; FirstbitLo(value)
  %3513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3514 = extractvalue %dx.types.CBufRet.i32 %3513, 1
  %3515 = sub nsw i32 %3514, %3512
  %3516 = sitofp i32 %3515 to float
  %3517 = fsub fast float %3507, %3516
  %3518 = call float @dx.op.binary.f32(i32 35, float %3517, float 0.000000e+00)  ; FMax(a,b)
  %3519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3509, %dx.types.Handle %56, float %3480, float %3482, float %3470, float undef, i32 0, i32 0, i32 undef, float %3518)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3520 = extractvalue %dx.types.ResRet.f32 %3519, 0
  %3521 = fcmp ule float %3520, 0x3FE0101020000000
  %3522 = extractvalue %dx.types.CBufRet.i32 %3513, 0
  %3523 = and i32 %3522, 128
  %3524 = icmp ne i32 %3523, 0
  %3525 = and i1 %3521, %3524
  br i1 %3525, label %3676, label %3526

; <label>:3526                                    ; preds = %3460
  %3527 = add i32 %3461, 20
  %3528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3527, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.f32 %3528, 0
  %3530 = add i32 %3461, 24
  %3531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3530, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.f32 %3531, 0
  %3533 = add i32 %3461, 40
  %3534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3535 = extractvalue %dx.types.ResRet.f32 %3534, 0
  %3536 = add i32 %3461, 96
  %3537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3536, i32 undef)  ; BufferLoad(srv,index,wot)
  %3538 = extractvalue %dx.types.ResRet.i32 %3537, 0
  %3539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3540 = extractvalue %dx.types.CBufRet.f32 %3539, 2
  %3541 = fmul fast float %3540, %3480
  %3542 = fmul fast float %3540, %3482
  %3543 = extractvalue %dx.types.CBufRet.f32 %3539, 3
  %3544 = fadd fast float %3541, %3543
  %3545 = fadd fast float %3542, %3543
  %3546 = add i32 %3538, 0
  %3547 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3546, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3548 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3547, i32 0)  ; GetDimensions(handle,mipLevel)
  %3549 = extractvalue %dx.types.Dimensions %3548, 0
  %3550 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3549)  ; FirstbitLo(value)
  %3551 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3552 = extractvalue %dx.types.CBufRet.i32 %3551, 1
  %3553 = sub nsw i32 %3552, %3550
  %3554 = sitofp i32 %3553 to float
  %3555 = fsub fast float %3504, %3554
  %3556 = call float @dx.op.binary.f32(i32 35, float %3555, float 0.000000e+00)  ; FMax(a,b)
  %3557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3547, %dx.types.Handle %56, float %3544, float %3545, float %3535, float undef, i32 0, i32 0, i32 undef, float %3556)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3558 = extractvalue %dx.types.ResRet.f32 %3557, 0
  %3559 = fmul fast float %3558, %3529
  %3560 = fadd fast float %3559, %3532
  %3561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3562 = extractvalue %dx.types.CBufRet.f32 %3561, 0
  %3563 = extractvalue %dx.types.CBufRet.f32 %3561, 1
  %3564 = extractvalue %dx.types.CBufRet.f32 %3561, 2
  %3565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3566 = extractvalue %dx.types.CBufRet.f32 %3565, 3
  %3567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3568 = extractvalue %dx.types.CBufRet.f32 %3567, 3
  %3569 = extractvalue %dx.types.CBufRet.f32 %3561, 3
  %3570 = fadd fast float %3566, %3427
  %3571 = fadd fast float %3568, %3428
  %3572 = fadd fast float %3560, %3569
  %3573 = fmul fast float %3570, %3562
  %3574 = call float @dx.op.tertiary.f32(i32 46, float %3571, float %3563, float %3573)  ; FMad(a,b,c)
  %3575 = call float @dx.op.tertiary.f32(i32 46, float %3572, float %3564, float %3574)  ; FMad(a,b,c)
  %3576 = fsub fast float %3575, %3569
  %3577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3578 = extractvalue %dx.types.CBufRet.f32 %3577, 2
  %3579 = fsub fast float %3576, %3578
  %3580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3581 = extractvalue %dx.types.CBufRet.i32 %3580, 0
  %3582 = call i32 @dx.op.binary.i32(i32 40, i32 %3458, i32 %3581)  ; UMin(a,b)
  %3583 = mul i32 %3582, 36
  %3584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.i32 %3584, 0
  %3586 = add i32 %3583, 4
  %3587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3588 = extractvalue %dx.types.CBufRet.f32 %3587, 0
  %3589 = fmul fast float %3588, %3480
  %3590 = fmul fast float %3588, %3482
  %3591 = extractvalue %dx.types.CBufRet.f32 %3587, 1
  %3592 = fadd fast float %3589, %3591
  %3593 = fadd fast float %3590, %3591
  %3594 = icmp eq i32 %3585, 0
  br i1 %3594, label %3663, label %3595

; <label>:3595                                    ; preds = %3526
  br label %3596

; <label>:3596                                    ; preds = %3653, %3595
  %3597 = phi float [ %3654, %3653 ], [ 0.000000e+00, %3595 ]
  %3598 = phi float [ %3655, %3653 ], [ 0.000000e+00, %3595 ]
  %3599 = phi float [ %3656, %3653 ], [ 0.000000e+00, %3595 ]
  %3600 = phi float [ %3657, %3653 ], [ 0.000000e+00, %3595 ]
  %3601 = phi float [ %3658, %3653 ], [ 0.000000e+00, %3595 ]
  %3602 = phi float [ %3659, %3653 ], [ 0.000000e+00, %3595 ]
  %3603 = phi i32 [ %3660, %3653 ], [ 0, %3595 ]
  %3604 = shl i32 %3603, 2
  %3605 = add i32 %3471, %3604
  %3606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3605, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = add i32 %3475, %3604
  %3609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.i32 %3609, 0
  %3611 = add i32 %3610, 0
  %3612 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3611, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3613 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3612, i32 0)  ; GetDimensions(handle,mipLevel)
  %3614 = extractvalue %dx.types.Dimensions %3613, 0
  %3615 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3614)  ; FirstbitLo(value)
  %3616 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3617 = extractvalue %dx.types.CBufRet.i32 %3616, 1
  %3618 = sub nsw i32 %3617, %3615
  %3619 = sitofp i32 %3618 to float
  %3620 = fsub fast float %3504, %3619
  %3621 = call float @dx.op.binary.f32(i32 35, float %3620, float 0.000000e+00)  ; FMax(a,b)
  %3622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3612, %dx.types.Handle %56, float %3592, float %3593, float %3607, float undef, i32 0, i32 0, i32 undef, float %3621)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3623 = extractvalue %dx.types.ResRet.f32 %3622, 0
  %3624 = fcmp fast ogt float %3623, 0.000000e+00
  br i1 %3624, label %3625, label %3653

; <label>:3625                                    ; preds = %3596
  %3626 = add i32 %3586, %3604
  %3627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3626, i32 undef)  ; BufferLoad(srv,index,wot)
  %3628 = extractvalue %dx.types.ResRet.i32 %3627, 0
  %3629 = and i32 %3628, 32767
  %3630 = mul nuw nsw i32 %3629, 928
  %3631 = add nuw nsw i32 %3630, 48
  %3632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3631, i32 undef)  ; BufferLoad(srv,index,wot)
  %3633 = extractvalue %dx.types.ResRet.f32 %3632, 0
  %3634 = extractvalue %dx.types.ResRet.f32 %3632, 1
  %3635 = extractvalue %dx.types.ResRet.f32 %3632, 2
  %3636 = add nuw nsw i32 %3630, 60
  %3637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3636, i32 undef)  ; BufferLoad(srv,index,wot)
  %3638 = extractvalue %dx.types.ResRet.f32 %3637, 0
  %3639 = extractvalue %dx.types.ResRet.f32 %3637, 1
  %3640 = extractvalue %dx.types.ResRet.f32 %3637, 2
  %3641 = fmul fast float %3633, %3623
  %3642 = fmul fast float %3634, %3623
  %3643 = fmul fast float %3635, %3623
  %3644 = fadd fast float %3641, %3597
  %3645 = fadd fast float %3642, %3598
  %3646 = fadd fast float %3643, %3599
  %3647 = fmul fast float %3638, %3623
  %3648 = fmul fast float %3639, %3623
  %3649 = fmul fast float %3640, %3623
  %3650 = fadd fast float %3647, %3600
  %3651 = fadd fast float %3648, %3601
  %3652 = fadd fast float %3649, %3602
  br label %3653

; <label>:3653                                    ; preds = %3625, %3596
  %3654 = phi float [ %3644, %3625 ], [ %3597, %3596 ]
  %3655 = phi float [ %3645, %3625 ], [ %3598, %3596 ]
  %3656 = phi float [ %3646, %3625 ], [ %3599, %3596 ]
  %3657 = phi float [ %3650, %3625 ], [ %3600, %3596 ]
  %3658 = phi float [ %3651, %3625 ], [ %3601, %3596 ]
  %3659 = phi float [ %3652, %3625 ], [ %3602, %3596 ]
  %3660 = add nuw i32 %3603, 1
  %3661 = icmp eq i32 %3660, %3585
  br i1 %3661, label %3662, label %3596

; <label>:3662                                    ; preds = %3653
  br label %3663

; <label>:3663                                    ; preds = %3662, %3526
  %3664 = phi float [ 0.000000e+00, %3526 ], [ %3654, %3662 ]
  %3665 = phi float [ 0.000000e+00, %3526 ], [ %3655, %3662 ]
  %3666 = phi float [ 0.000000e+00, %3526 ], [ %3656, %3662 ]
  %3667 = phi float [ 0.000000e+00, %3526 ], [ %3657, %3662 ]
  %3668 = phi float [ 0.000000e+00, %3526 ], [ %3658, %3662 ]
  %3669 = phi float [ 0.000000e+00, %3526 ], [ %3659, %3662 ]
  %3670 = fadd fast float %3667, %3664
  %3671 = fmul fast float %3670, 0x3F847AE140000000
  %3672 = fadd fast float %3668, %3665
  %3673 = fmul fast float %3672, 0x3F847AE140000000
  %3674 = fadd fast float %3669, %3666
  %3675 = fmul fast float %3674, 0x3F847AE140000000
  br label %3676

; <label>:3676                                    ; preds = %3663, %3460, %3405, %3402, %3373, %3335
  %3677 = phi float [ %3387, %3373 ], [ -1.310720e+05, %3335 ], [ %3579, %3663 ], [ -1.310720e+05, %3405 ], [ -1.310720e+05, %3460 ], [ -1.310720e+05, %3402 ]
  %3678 = phi float [ %3397, %3373 ], [ 0.000000e+00, %3335 ], [ %3671, %3663 ], [ 0.000000e+00, %3405 ], [ 0.000000e+00, %3460 ], [ 0.000000e+00, %3402 ]
  %3679 = phi float [ %3399, %3373 ], [ 0.000000e+00, %3335 ], [ %3673, %3663 ], [ 0.000000e+00, %3405 ], [ 0.000000e+00, %3460 ], [ 0.000000e+00, %3402 ]
  %3680 = phi float [ %3401, %3373 ], [ 0.000000e+00, %3335 ], [ %3675, %3663 ], [ 0.000000e+00, %3405 ], [ 0.000000e+00, %3460 ], [ 0.000000e+00, %3402 ]
  %3681 = phi i1 [ true, %3373 ], [ false, %3335 ], [ true, %3663 ], [ false, %3405 ], [ false, %3460 ], [ false, %3402 ]
  %3682 = and i32 %219, 3
  %3683 = icmp eq i32 %3682, 1
  %3684 = select i1 %3683, float 1.000000e+00, float 0.000000e+00
  %3685 = fsub fast float %3677, %154
  %3686 = call float @dx.op.unary.f32(i32 7, float %3685)  ; Saturate(value)
  %3687 = select i1 %3681, float %3686, float 1.000000e+00
  %3688 = fmul fast float %3687, %3684
  %3689 = icmp eq i32 %3682, 3
  %3690 = select i1 %3689, float 1.000000e+00, float %3688
  %3691 = call float @dx.op.binary.f32(i32 35, float %3250, float %3690)  ; FMax(a,b)
  %3692 = call float @dx.op.unary.f32(i32 7, float %3691)  ; Saturate(value)
  %3693 = fcmp fast une float %3692, 0.000000e+00
  %3694 = call float @dx.op.dot3.f32(i32 55, float %152, float %153, float %154, float %152, float %153, float %154)  ; Dot3(ax,ay,az,bx,by,bz)
  %3695 = call float @dx.op.unary.f32(i32 25, float %3694)  ; Rsqrt(value)
  br i1 %3693, label %3703, label %3696

; <label>:3696                                    ; preds = %3676
  %3697 = fmul fast float %3695, %152
  %3698 = fmul fast float %3695, %153
  %3699 = fmul fast float %3695, %154
  %3700 = fsub fast float -0.000000e+00, %3697
  %3701 = fsub fast float -0.000000e+00, %3698
  %3702 = fsub fast float -0.000000e+00, %3699
  br label %3871

; <label>:3703                                    ; preds = %3676
  %3704 = fmul fast float %152, %3695
  %3705 = fsub fast float -0.000000e+00, %3704
  %3706 = fmul fast float %153, %3695
  %3707 = fsub fast float -0.000000e+00, %3706
  %3708 = fmul fast float %154, %3695
  %3709 = fsub fast float -0.000000e+00, %3708
  %3710 = call float @dx.op.dot3.f32(i32 55, float %3705, float %3707, float %3709, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %3711 = fmul fast float %3692, 2.500000e+00
  %3712 = call float @dx.op.unary.f32(i32 7, float %3711)  ; Saturate(value)
  %3713 = fmul fast float %3692, 0x4013FFFFE0000000
  %3714 = fadd fast float %3713, 0xBFFFFFFFE0000000
  %3715 = call float @dx.op.unary.f32(i32 7, float %3714)  ; Saturate(value)
  %3716 = fmul fast float %3692, 0x4004000020000000
  %3717 = fadd fast float %3716, 0xBFF8000040000000
  %3718 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3719 = call float @dx.op.unary.f32(i32 7, float %3712)  ; Saturate(value)
  %3720 = fmul fast float %3281, 1.000000e+01
  %3721 = call float @dx.op.unary.f32(i32 7, float %3720)  ; Saturate(value)
  %3722 = fmul fast float %3721, 2.000000e+00
  %3723 = fsub fast float 3.000000e+00, %3722
  %3724 = fmul fast float %3721, %3721
  %3725 = fmul fast float %3724, %3723
  %3726 = fsub fast float 1.000000e+00, %3725
  %3727 = fsub fast float 0x3FE3333340000000, %3302
  %3728 = fmul fast float %3727, 0x400AAAAAA0000000
  %3729 = call float @dx.op.unary.f32(i32 7, float %3728)  ; Saturate(value)
  %3730 = fmul fast float %3726, %3729
  %3731 = fmul fast float %3314, 0x3FEA2B8620000000
  %3732 = fmul fast float %3315, 0x3FEA2B8620000000
  %3733 = fmul fast float %3316, 0x3FEA2B8620000000
  %3734 = fadd fast float %3731, 0x3FC81DFBA0000000
  %3735 = fmul fast float %3734, %3314
  %3736 = fadd fast float %3735, 0x3F910E6020000000
  %3737 = fadd fast float %3732, 0x3FC81DFBA0000000
  %3738 = fmul fast float %3737, %3315
  %3739 = fadd fast float %3738, 0x3F910E6020000000
  %3740 = fadd fast float %3733, 0x3FC81DFBA0000000
  %3741 = fmul fast float %3740, %3316
  %3742 = fadd fast float %3741, 0x3F910E6020000000
  %3743 = call float @dx.op.unary.f32(i32 7, float %3736)  ; Saturate(value)
  %3744 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3745 = call float @dx.op.unary.f32(i32 7, float %3742)  ; Saturate(value)
  %3746 = fsub fast float %3743, %3314
  %3747 = fsub fast float %3744, %3315
  %3748 = fsub fast float %3745, %3316
  %3749 = fmul fast float %3746, %3719
  %3750 = fmul fast float %3749, %3730
  %3751 = fmul fast float %3747, %3719
  %3752 = fmul fast float %3751, %3730
  %3753 = fmul fast float %3748, %3719
  %3754 = fmul fast float %3753, %3730
  %3755 = fadd fast float %3750, %3314
  %3756 = fadd fast float %3752, %3315
  %3757 = fadd fast float %3754, %3316
  %3758 = fmul fast float %3262, %3262
  %3759 = fmul fast float %3758, %3758
  %3760 = fadd fast float %3715, 1.000000e+00
  %3761 = fsub fast float %3760, %3730
  %3762 = call float @dx.op.unary.f32(i32 7, float %3761)  ; Saturate(value)
  %3763 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3764 = call float @dx.op.unary.f32(i32 7, float %3763)  ; Saturate(value)
  %3765 = fsub fast float 1.000000e+00, %3759
  %3766 = call float @dx.op.binary.f32(i32 36, float %3762, float %3765)  ; FMin(a,b)
  %3767 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3768 = call float @dx.op.binary.f32(i32 35, float %3766, float %3767)  ; FMax(a,b)
  %3769 = fadd fast float %3764, 0xBFE4CCCCC0000000
  %3770 = fmul fast float %3769, 0x4006DB6DA0000000
  %3771 = call float @dx.op.unary.f32(i32 7, float %3770)  ; Saturate(value)
  %3772 = fmul fast float %3771, 2.000000e+00
  %3773 = fsub fast float 3.000000e+00, %3772
  %3774 = bitcast float %3299 to i32
  %3775 = ashr i32 %3774, 1
  %3776 = add nsw i32 %3775, 532487669
  %3777 = bitcast i32 %3776 to float
  %3778 = fsub fast float 1.000000e+00, %3777
  %3779 = bitcast float %3778 to i32
  %3780 = sub nsw i32 2129859010, %3779
  %3781 = bitcast i32 %3780 to float
  %3782 = fmul fast float %3781, 2.000000e+00
  %3783 = bitcast float %3300 to i32
  %3784 = ashr i32 %3783, 1
  %3785 = add nsw i32 %3784, 532487669
  %3786 = bitcast i32 %3785 to float
  %3787 = fsub fast float 1.000000e+00, %3786
  %3788 = bitcast float %3787 to i32
  %3789 = sub nsw i32 2129859010, %3788
  %3790 = bitcast i32 %3789 to float
  %3791 = fmul fast float %3790, 2.000000e+00
  %3792 = bitcast float %3301 to i32
  %3793 = ashr i32 %3792, 1
  %3794 = add nsw i32 %3793, 532487669
  %3795 = bitcast i32 %3794 to float
  %3796 = fsub fast float 1.000000e+00, %3795
  %3797 = bitcast float %3796 to i32
  %3798 = sub nsw i32 2129859010, %3797
  %3799 = bitcast i32 %3798 to float
  %3800 = fmul fast float %3799, 2.000000e+00
  %3801 = fsub fast float 0x4002A9FBE0000000, %3782
  %3802 = fadd fast float %3782, 0x3FD54FDF00000000
  %3803 = bitcast float %3802 to i32
  %3804 = sub nsw i32 2129859010, %3803
  %3805 = bitcast i32 %3804 to float
  %3806 = fmul fast float %3805, %3801
  %3807 = fmul fast float %3806, %3806
  %3808 = fsub fast float 0x4002A9FBE0000000, %3791
  %3809 = fadd fast float %3791, 0x3FD54FDF00000000
  %3810 = bitcast float %3809 to i32
  %3811 = sub nsw i32 2129859010, %3810
  %3812 = bitcast i32 %3811 to float
  %3813 = fmul fast float %3812, %3808
  %3814 = fmul fast float %3813, %3813
  %3815 = fsub fast float 0x4002A9FBE0000000, %3800
  %3816 = fadd fast float %3800, 0x3FD54FDF00000000
  %3817 = bitcast float %3816 to i32
  %3818 = sub nsw i32 2129859010, %3817
  %3819 = bitcast i32 %3818 to float
  %3820 = fmul fast float %3819, %3815
  %3821 = fmul fast float %3820, %3820
  %3822 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3807)  ; FMax(a,b)
  %3823 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3814)  ; FMax(a,b)
  %3824 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3821)  ; FMax(a,b)
  %3825 = fsub fast float 1.000000e+00, %3710
  %3826 = fadd fast float %3825, %3726
  %3827 = call float @dx.op.unary.f32(i32 7, float %3826)  ; Saturate(value)
  %3828 = fsub fast float 1.000000e+00, %3690
  %3829 = fmul fast float %3768, %3828
  %3830 = fmul fast float %3771, %3771
  %3831 = fmul fast float %3830, %3829
  %3832 = fmul fast float %3831, %3773
  %3833 = fmul fast float %3828, 0xBFE99999A0000000
  %3834 = fmul fast float %3833, %3719
  %3835 = fmul fast float %3834, %3730
  %3836 = fadd fast float %3835, 1.000000e+00
  %3837 = fadd fast float %3302, -1.000000e+00
  %3838 = fmul fast float %3836, %3837
  %3839 = fadd fast float %3838, 1.000000e+00
  %3840 = fsub fast float %3822, %3299
  %3841 = fsub fast float %3823, %3300
  %3842 = fsub fast float %3824, %3301
  %3843 = fmul fast float %3832, %3840
  %3844 = fmul fast float %3832, %3841
  %3845 = fmul fast float %3832, %3842
  %3846 = fadd fast float %3843, %3299
  %3847 = fadd fast float %3844, %3300
  %3848 = fadd fast float %3845, %3301
  %3849 = fsub fast float %78, %3278
  %3850 = fsub fast float %79, %3279
  %3851 = fsub fast float %80, %3280
  %3852 = fmul fast float %3832, %3849
  %3853 = fmul fast float %3832, %3850
  %3854 = fmul fast float %3832, %3851
  %3855 = fadd fast float %3852, %3278
  %3856 = fadd fast float %3853, %3279
  %3857 = fadd fast float %3854, %3280
  %3858 = fmul fast float %3832, %3827
  %3859 = call float @dx.op.unary.f32(i32 7, float %3839)  ; Saturate(value)
  %3860 = fsub fast float 1.000000e+00, %3859
  %3861 = fmul fast float %3858, %3860
  %3862 = fadd fast float %3861, %3859
  %3863 = fsub fast float 1.000000e+00, %3262
  %3864 = fmul fast float %3832, %3863
  %3865 = fadd fast float %3864, %3262
  %3866 = call float @dx.op.dot3.f32(i32 55, float %3855, float %3856, float %3857, float %3855, float %3856, float %3857)  ; Dot3(ax,ay,az,bx,by,bz)
  %3867 = call float @dx.op.unary.f32(i32 25, float %3866)  ; Rsqrt(value)
  %3868 = fmul fast float %3855, %3867
  %3869 = fmul fast float %3856, %3867
  %3870 = fmul fast float %3857, %3867
  br label %3871

; <label>:3871                                    ; preds = %3703, %3696
  %3872 = phi float [ %3702, %3696 ], [ %3709, %3703 ]
  %3873 = phi float [ %3701, %3696 ], [ %3707, %3703 ]
  %3874 = phi float [ %3700, %3696 ], [ %3705, %3703 ]
  %3875 = phi float [ %3699, %3696 ], [ %3708, %3703 ]
  %3876 = phi float [ %3698, %3696 ], [ %3706, %3703 ]
  %3877 = phi float [ %3697, %3696 ], [ %3704, %3703 ]
  %3878 = phi float [ %3299, %3696 ], [ %3846, %3703 ]
  %3879 = phi float [ %3300, %3696 ], [ %3847, %3703 ]
  %3880 = phi float [ %3301, %3696 ], [ %3848, %3703 ]
  %3881 = phi float [ %3314, %3696 ], [ %3755, %3703 ]
  %3882 = phi float [ %3315, %3696 ], [ %3756, %3703 ]
  %3883 = phi float [ %3316, %3696 ], [ %3757, %3703 ]
  %3884 = phi float [ %3278, %3696 ], [ %3868, %3703 ]
  %3885 = phi float [ %3279, %3696 ], [ %3869, %3703 ]
  %3886 = phi float [ %3280, %3696 ], [ %3870, %3703 ]
  %3887 = phi float [ %3302, %3696 ], [ %3862, %3703 ]
  %3888 = phi float [ %3262, %3696 ], [ %3865, %3703 ]
  %3889 = fsub fast float -0.000000e+00, %154
  %3890 = select i1 %243, float 0.000000e+00, float %3880
  %3891 = call float @dx.op.dot3.f32(i32 55, float %3884, float %3885, float %3886, float %3874, float %3873, float %3872)  ; Dot3(ax,ay,az,bx,by,bz)
  %3892 = call float @dx.op.unary.f32(i32 7, float %3891)  ; Saturate(value)
  %3893 = call float @dx.op.dot3.f32(i32 55, float %3877, float %3876, float %3875, float %3884, float %3885, float %3886)  ; Dot3(ax,ay,az,bx,by,bz)
  %3894 = fmul fast float %3893, 2.000000e+00
  %3895 = fmul fast float %3894, %3884
  %3896 = fmul fast float %3894, %3885
  %3897 = fmul fast float %3894, %3886
  %3898 = fsub fast float %3877, %3895
  %3899 = fsub fast float %3876, %3896
  %3900 = fsub fast float %3875, %3897
  %3901 = call float @dx.op.binary.f32(i32 36, float %3888, float 1.000000e+00)  ; FMin(a,b)
  %3902 = fsub fast float 1.000000e+00, %3888
  %3903 = bitcast float %3902 to i32
  %3904 = sub nsw i32 2129859010, %3903
  %3905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3906 = extractvalue %dx.types.CBufRet.f32 %3905, 0
  %3907 = extractvalue %dx.types.CBufRet.f32 %3905, 1
  %3908 = fadd fast float %3906, %152
  %3909 = fadd fast float %3907, %153
  %3910 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %3911 = extractvalue %dx.types.CBufRet.i32 %3910, 0
  %3912 = icmp eq i32 %3911, 1
  br i1 %3912, label %3913, label %3948

; <label>:3913                                    ; preds = %3871
  %3914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3915 = extractvalue %dx.types.CBufRet.f32 %3914, 0
  %3916 = extractvalue %dx.types.CBufRet.f32 %3914, 1
  %3917 = fsub fast float %3908, %3915
  %3918 = fsub fast float %3909, %3916
  %3919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3920 = extractvalue %dx.types.CBufRet.f32 %3919, 0
  %3921 = extractvalue %dx.types.CBufRet.f32 %3919, 1
  %3922 = fmul fast float %3917, %3920
  %3923 = fmul fast float %3918, %3921
  %3924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %3922, float %3923, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3925 = extractvalue %dx.types.ResRet.f32 %3924, 0
  %3926 = fcmp fast ogt float %3925, 0.000000e+00
  %3927 = extractvalue %dx.types.CBufRet.i32 %3910, 3
  %3928 = icmp ne i32 %3927, 0
  %3929 = and i1 %3926, %3928
  br i1 %3929, label %3930, label %3948, !dx.controlflow.hints !104

; <label>:3930                                    ; preds = %3913
  %3931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3932 = extractvalue %dx.types.CBufRet.f32 %3931, 0
  %3933 = extractvalue %dx.types.CBufRet.f32 %3931, 1
  %3934 = fsub fast float %3908, %3932
  %3935 = fsub fast float %3909, %3933
  %3936 = fmul fast float %3934, %3934
  %3937 = fmul fast float %3935, %3935
  %3938 = fadd fast float %3936, %3937
  %3939 = uitofp i32 %3927 to float
  %3940 = fmul fast float %3939, %3939
  %3941 = fcmp fast ogt float %3938, %3940
  br i1 %3941, label %3948, label %3942

; <label>:3942                                    ; preds = %3930
  %3943 = call float @dx.op.unary.f32(i32 24, float %3938)  ; Sqrt(value)
  %3944 = fsub fast float %3939, %3943
  %3945 = fmul fast float %3944, 0x3F75555560000000
  %3946 = call float @dx.op.unary.f32(i32 7, float %3945)  ; Saturate(value)
  %3947 = call float @dx.op.binary.f32(i32 36, float %3946, float %3925)  ; FMin(a,b)
  br label %3948

; <label>:3948                                    ; preds = %3942, %3930, %3913, %3871
  %3949 = phi float [ 1.000000e+00, %3871 ], [ %3947, %3942 ], [ %3925, %3913 ], [ 0.000000e+00, %3930 ]
  %3950 = fcmp fast ogt float %3949, 0.000000e+00
  br i1 %3950, label %3951, label %4049, !dx.controlflow.hints !105

; <label>:3951                                    ; preds = %3948
  %3952 = fadd fast float %183, 5.000000e-01
  %3953 = call float @dx.op.unary.f32(i32 27, float %3952)  ; Round_ni(value)
  %3954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %58, float %181, float %182, float %3953, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3955 = extractvalue %dx.types.ResRet.f32 %3954, 0
  %3956 = extractvalue %dx.types.ResRet.f32 %3954, 1
  %3957 = extractvalue %dx.types.ResRet.f32 %3954, 2
  %3958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3959 = extractvalue %dx.types.CBufRet.f32 %3958, 3
  %3960 = fmul fast float %3959, %3955
  %3961 = fmul fast float %3959, %3956
  %3962 = fmul fast float %3959, %3957
  %3963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %58, float %181, float %182, float %3953, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3964 = extractvalue %dx.types.ResRet.f32 %3963, 0
  %3965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %58, float %181, float %182, float %3953, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3966 = extractvalue %dx.types.ResRet.f32 %3965, 0
  %3967 = extractvalue %dx.types.ResRet.f32 %3965, 1
  %3968 = fmul fast float %3966, 2.000000e+00
  %3969 = fmul fast float %3967, 2.000000e+00
  %3970 = fadd fast float %3968, -1.000000e+00
  %3971 = fadd fast float %3969, -1.000000e+00
  %3972 = fadd fast float %3970, %3971
  %3973 = fmul fast float %3972, 5.000000e-01
  %3974 = fsub fast float %3970, %3971
  %3975 = fmul fast float %3974, 5.000000e-01
  %3976 = call float @dx.op.unary.f32(i32 6, float %3973)  ; FAbs(value)
  %3977 = fsub fast float 1.000000e+00, %3976
  %3978 = call float @dx.op.unary.f32(i32 6, float %3975)  ; FAbs(value)
  %3979 = fsub fast float %3977, %3978
  %3980 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %3979)  ; FMax(a,b)
  %3981 = call float @dx.op.dot3.f32(i32 55, float %3973, float %3975, float %3980, float %3973, float %3975, float %3980)  ; Dot3(ax,ay,az,bx,by,bz)
  %3982 = bitcast float %3981 to i32
  %3983 = ashr i32 %3982, 1
  %3984 = sub nsw i32 1597250115, %3983
  %3985 = bitcast i32 %3984 to float
  %3986 = fmul fast float %3985, %3973
  %3987 = fmul fast float %3985, %3975
  %3988 = fmul fast float %3985, %3980
  %3989 = fsub fast float 1.000000e+00, %3964
  %3990 = fdiv fast float %3989, %3988
  %3991 = fmul fast float %3988, %78
  %3992 = fmul fast float %3988, %79
  %3993 = fmul fast float %3988, %80
  %3994 = fmul fast float %3986, %74
  %3995 = fmul fast float %3986, %75
  %3996 = fmul fast float %3986, %76
  %3997 = fadd fast float %3991, %3994
  %3998 = fadd fast float %3992, %3995
  %3999 = fadd fast float %3993, %3996
  %4000 = fmul fast float %3987, %116
  %4001 = fmul fast float %3987, %117
  %4002 = fmul fast float %3987, %118
  %4003 = fadd fast float %3997, %4000
  %4004 = fadd fast float %3998, %4001
  %4005 = fadd fast float %3999, %4002
  %4006 = call float @dx.op.dot3.f32(i32 55, float %4003, float %4004, float %4005, float %4003, float %4004, float %4005)  ; Dot3(ax,ay,az,bx,by,bz)
  %4007 = call float @dx.op.unary.f32(i32 25, float %4006)  ; Rsqrt(value)
  %4008 = fmul fast float %4003, %4007
  %4009 = fmul fast float %4004, %4007
  %4010 = fmul fast float %4005, %4007
  %4011 = call float @dx.op.dot3.f32(i32 55, float %3884, float %3885, float %3886, float %3884, float %3885, float %3886)  ; Dot3(ax,ay,az,bx,by,bz)
  %4012 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  %4013 = fmul fast float %4012, 5.000000e-01
  %4014 = fadd fast float %4013, 5.000000e-01
  %4015 = fmul fast float %4014, %3964
  %4016 = call float @dx.op.dot3.f32(i32 55, float %3884, float %3885, float %3886, float %4008, float %4009, float %4010)  ; Dot3(ax,ay,az,bx,by,bz)
  %4017 = call float @dx.op.unary.f32(i32 7, float %4016)  ; Saturate(value)
  %4018 = fmul fast float %4017, %3990
  %4019 = fadd fast float %4015, %4018
  %4020 = fsub fast float 5.000000e-01, %4013
  %4021 = fmul fast float %4020, %3881
  %4022 = fmul fast float %4020, %3882
  %4023 = fmul fast float %4020, %3883
  %4024 = fadd fast float %4019, %4021
  %4025 = fmul fast float %4024, %3960
  %4026 = fadd fast float %4019, %4022
  %4027 = fmul fast float %4026, %3961
  %4028 = fadd fast float %4019, %4023
  %4029 = fmul fast float %4028, %3962
  %4030 = call float @dx.op.dot3.f32(i32 55, float %3898, float %3899, float %3900, float %3884, float %3885, float %3886)  ; Dot3(ax,ay,az,bx,by,bz)
  %4031 = call float @dx.op.unary.f32(i32 7, float %4030)  ; Saturate(value)
  %4032 = fmul fast float %4031, 5.000000e-01
  %4033 = fadd fast float %4032, 5.000000e-01
  %4034 = fmul fast float %4033, %3964
  %4035 = call float @dx.op.dot3.f32(i32 55, float %3898, float %3899, float %3900, float %4008, float %4009, float %4010)  ; Dot3(ax,ay,az,bx,by,bz)
  %4036 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4037 = fmul fast float %4036, %3990
  %4038 = fadd fast float %4034, %4037
  %4039 = fsub fast float 5.000000e-01, %4032
  %4040 = fmul fast float %4039, %3881
  %4041 = fmul fast float %4039, %3882
  %4042 = fmul fast float %4039, %3883
  %4043 = fadd fast float %4038, %4040
  %4044 = fmul fast float %4043, %3960
  %4045 = fadd fast float %4038, %4041
  %4046 = fmul fast float %4045, %3961
  %4047 = fadd fast float %4038, %4042
  %4048 = fmul fast float %4047, %3962
  br label %4049

; <label>:4049                                    ; preds = %3951, %3948
  %4050 = phi float [ %4044, %3951 ], [ 0.000000e+00, %3948 ]
  %4051 = phi float [ %4046, %3951 ], [ 0.000000e+00, %3948 ]
  %4052 = phi float [ %4048, %3951 ], [ 0.000000e+00, %3948 ]
  %4053 = phi float [ %4025, %3951 ], [ 0.000000e+00, %3948 ]
  %4054 = phi float [ %4027, %3951 ], [ 0.000000e+00, %3948 ]
  %4055 = phi float [ %4029, %3951 ], [ 0.000000e+00, %3948 ]
  %4056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %4057 = extractvalue %dx.types.CBufRet.f32 %4056, 0
  %4058 = fcmp fast ogt float %4057, 0.000000e+00
  %4059 = and i1 %3950, %4058
  br i1 %4059, label %4060, label %4264, !dx.controlflow.hints !106

; <label>:4060                                    ; preds = %4049
  %4061 = extractvalue %dx.types.CBufRet.f32 %3905, 2
  %4062 = fadd fast float %4061, %154
  %4063 = fmul fast float %3884, 3.200000e+01
  %4064 = fmul fast float %3885, 3.200000e+01
  %4065 = fadd fast float %3908, %4063
  %4066 = fadd fast float %3909, %4064
  %4067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4068 = extractvalue %dx.types.CBufRet.f32 %4067, 0
  %4069 = extractvalue %dx.types.CBufRet.f32 %4067, 1
  %4070 = fsub fast float %4065, %4068
  %4071 = fsub fast float %4066, %4069
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 0
  %4074 = extractvalue %dx.types.CBufRet.f32 %4072, 1
  %4075 = fmul fast float %4070, %4073
  %4076 = fmul fast float %4071, %4074
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 0
  %4079 = extractvalue %dx.types.CBufRet.f32 %4077, 1
  %4080 = fsub fast float %3908, %4078
  %4081 = fsub fast float %3909, %4079
  %4082 = fmul fast float %4080, %4080
  %4083 = fmul fast float %4081, %4081
  %4084 = fadd fast float %4082, %4083
  %4085 = call float @dx.op.unary.f32(i32 24, float %4084)  ; Sqrt(value)
  %4086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4086, 0
  %4088 = extractvalue %dx.types.CBufRet.f32 %4086, 1
  %4089 = fsub fast float %4085, %4087
  %4090 = fdiv fast float %4089, %4088
  %4091 = call float @dx.op.unary.f32(i32 7, float %4090)  ; Saturate(value)
  %4092 = fmul fast float %4091, 2.000000e+00
  %4093 = fsub fast float 3.000000e+00, %4092
  %4094 = fmul fast float %4091, %4091
  %4095 = fmul fast float %4094, %4093
  %4096 = fcmp fast oge float %4075, 0.000000e+00
  %4097 = fcmp fast ole float %4075, 1.000000e+00
  %4098 = and i1 %4097, %4096
  %4099 = fcmp fast oge float %4076, 0.000000e+00
  %4100 = and i1 %4099, %4098
  %4101 = fcmp fast ole float %4076, 1.000000e+00
  %4102 = and i1 %4101, %4100
  %4103 = fcmp fast ogt float %4095, 0.000000e+00
  %4104 = and i1 %4103, %4102
  br i1 %4104, label %4105, label %4228, !dx.controlflow.hints !107

; <label>:4105                                    ; preds = %4060
  %4106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.f32 %4106, 2
  %4108 = extractvalue %dx.types.CBufRet.f32 %4106, 3
  %4109 = fmul fast float %4107, %4075
  %4110 = fmul fast float %4108, %4076
  %4111 = call float @dx.op.unary.f32(i32 27, float %4109)  ; Round_ni(value)
  %4112 = call float @dx.op.unary.f32(i32 27, float %4110)  ; Round_ni(value)
  %4113 = fptosi float %4111 to i32
  %4114 = fptosi float %4112 to i32
  %4115 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %4113, i32 %4114, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4116 = extractvalue %dx.types.ResRet.i32 %4115, 0
  %4117 = lshr i32 %4116, 16
  %4118 = icmp eq i32 %4117, 65535
  br i1 %4118, label %4228, label %4119

; <label>:4119                                    ; preds = %4105
  %4120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4121 = extractvalue %dx.types.CBufRet.f32 %4120, 0
  %4122 = fmul fast float %4121, %4075
  %4123 = extractvalue %dx.types.CBufRet.f32 %4120, 1
  %4124 = fadd fast float %4122, %4123
  %4125 = extractvalue %dx.types.CBufRet.f32 %4120, 2
  %4126 = fmul fast float %4125, %4076
  %4127 = extractvalue %dx.types.CBufRet.f32 %4120, 3
  %4128 = fadd fast float %4126, %4127
  %4129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %4124, float %4128, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4130 = extractvalue %dx.types.ResRet.f32 %4129, 0
  %4131 = extractvalue %dx.types.ResRet.f32 %4129, 1
  %4132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4133 = extractvalue %dx.types.CBufRet.f32 %4132, 1
  %4134 = extractvalue %dx.types.CBufRet.f32 %4132, 0
  %4135 = fsub fast float %4133, %4134
  %4136 = fmul fast float %4135, %4130
  %4137 = fadd fast float %4136, %4134
  %4138 = extractvalue %dx.types.CBufRet.f32 %4132, 3
  %4139 = extractvalue %dx.types.CBufRet.f32 %4132, 2
  %4140 = fsub fast float %4138, %4139
  %4141 = fmul fast float %4140, %4131
  %4142 = fadd fast float %4141, %4139
  %4143 = fsub fast float %4062, %4137
  %4144 = fsub fast float %4142, %4137
  %4145 = fdiv fast float %4143, %4144
  %4146 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4147 = extractvalue %dx.types.CBufRet.f32 %4056, 1
  %4148 = extractvalue %dx.types.CBufRet.f32 %4106, 0
  %4149 = extractvalue %dx.types.CBufRet.f32 %4106, 1
  %4150 = fmul fast float %4148, %4075
  %4151 = fmul fast float %4149, %4076
  %4152 = fmul fast float %4150, 1.250000e-01
  %4153 = fmul fast float %4151, 1.250000e-01
  %4154 = call float @dx.op.unary.f32(i32 27, float %4152)  ; Round_ni(value)
  %4155 = call float @dx.op.unary.f32(i32 27, float %4153)  ; Round_ni(value)
  %4156 = fmul fast float %4154, 8.000000e+00
  %4157 = fmul fast float %4155, 8.000000e+00
  %4158 = fsub fast float %4150, %4156
  %4159 = fsub fast float %4151, %4157
  %4160 = fadd fast float %4158, 5.000000e-01
  %4161 = fadd fast float %4159, 5.000000e-01
  %4162 = and i32 %4117, 255
  %4163 = lshr i32 %4116, 24
  %4164 = mul nuw nsw i32 %4162, 9
  %4165 = uitofp i32 %4164 to float
  %4166 = mul nuw nsw i32 %4163, 9
  %4167 = uitofp i32 %4166 to float
  %4168 = fadd fast float %4160, %4165
  %4169 = fadd fast float %4161, %4167
  %4170 = fdiv fast float %4168, %4057
  %4171 = fdiv fast float %4169, %4147
  %4172 = fmul fast float %4146, 4.375000e-01
  %4173 = fadd fast float %4172, 3.125000e-02
  %4174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %4170, float %4171, float %4173, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4175 = extractvalue %dx.types.ResRet.f32 %4174, 0
  %4176 = extractvalue %dx.types.ResRet.f32 %4174, 1
  %4177 = extractvalue %dx.types.ResRet.f32 %4174, 2
  %4178 = fadd fast float %4172, 5.312500e-01
  %4179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %4170, float %4171, float %4178, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = extractvalue %dx.types.ResRet.f32 %4179, 1
  %4182 = extractvalue %dx.types.ResRet.f32 %4179, 2
  %4183 = fmul fast float %4180, 2.000000e+00
  %4184 = fmul fast float %4181, 2.000000e+00
  %4185 = fmul fast float %4182, 2.000000e+00
  %4186 = fadd fast float %4183, -1.000000e+00
  %4187 = fadd fast float %4184, -1.000000e+00
  %4188 = fadd fast float %4185, -1.000000e+00
  %4189 = fmul fast float %4186, %4186
  %4190 = fmul fast float %4187, %4187
  %4191 = fadd fast float %4189, %4190
  %4192 = fmul fast float %4188, %4188
  %4193 = fadd fast float %4191, %4192
  %4194 = call float @dx.op.unary.f32(i32 24, float %4193)  ; Sqrt(value)
  %4195 = fcmp fast ogt float %4194, 0.000000e+00
  br i1 %4195, label %4196, label %4200

; <label>:4196                                    ; preds = %4119
  %4197 = fdiv fast float %4186, %4194
  %4198 = fdiv fast float %4187, %4194
  %4199 = fdiv fast float %4188, %4194
  br label %4200

; <label>:4200                                    ; preds = %4196, %4119
  %4201 = phi float [ %4197, %4196 ], [ 0.000000e+00, %4119 ]
  %4202 = phi float [ %4198, %4196 ], [ 0.000000e+00, %4119 ]
  %4203 = phi float [ %4199, %4196 ], [ 0.000000e+00, %4119 ]
  %4204 = call float @dx.op.dot3.f32(i32 55, float %4201, float %4202, float %4203, float %3884, float %3885, float %3886)  ; Dot3(ax,ay,az,bx,by,bz)
  %4205 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4204)  ; FMax(a,b)
  %4206 = fmul fast float %4205, 0x400C5BF8A0000000
  %4207 = fmul fast float %4175, %4095
  %4208 = fmul fast float %4207, %4206
  %4209 = fmul fast float %4176, %4095
  %4210 = fmul fast float %4209, %4206
  %4211 = fmul fast float %4177, %4095
  %4212 = fmul fast float %4211, %4206
  %4213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4214 = extractvalue %dx.types.CBufRet.f32 %4213, 3
  %4215 = fmul fast float %4208, %4214
  %4216 = fmul fast float %4210, %4214
  %4217 = fmul fast float %4212, %4214
  %4218 = fcmp fast ogt float %4062, %4142
  br i1 %4218, label %4219, label %4228

; <label>:4219                                    ; preds = %4200
  %4220 = fmul fast float %4144, 0x3FC24924A0000000
  %4221 = fsub fast float %4062, %4142
  %4222 = fdiv fast float %4221, %4220
  %4223 = call float @dx.op.unary.f32(i32 7, float %4222)  ; Saturate(value)
  %4224 = fsub fast float 1.000000e+00, %4223
  %4225 = fmul fast float %4224, %4215
  %4226 = fmul fast float %4224, %4216
  %4227 = fmul fast float %4224, %4217
  br label %4228

; <label>:4228                                    ; preds = %4219, %4200, %4105, %4060
  %4229 = phi float [ %4227, %4219 ], [ %4217, %4200 ], [ 0.000000e+00, %4105 ], [ 0.000000e+00, %4060 ]
  %4230 = phi float [ %4226, %4219 ], [ %4216, %4200 ], [ 0.000000e+00, %4105 ], [ 0.000000e+00, %4060 ]
  %4231 = phi float [ %4225, %4219 ], [ %4215, %4200 ], [ 0.000000e+00, %4105 ], [ 0.000000e+00, %4060 ]
  %4232 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4231)  ; FMax(a,b)
  %4233 = fmul fast float %4232, 0x3FD20DD760000000
  %4234 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3898, float %3899, float %3900)  ; Dot3(ax,ay,az,bx,by,bz)
  %4235 = fmul fast float %4234, 0x3FDF454380000000
  %4236 = fmul fast float %4234, %4234
  %4237 = fmul fast float %4236, 0x3FEE471020000000
  %4238 = fadd fast float %4237, 0xBFD42F6020000000
  %4239 = call float @dx.op.dot3.f32(i32 55, float %4232, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4235, float %4238)  ; Dot3(ax,ay,az,bx,by,bz)
  %4240 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4230)  ; FMax(a,b)
  %4241 = fmul fast float %4240, 0x3FD20DD760000000
  %4242 = call float @dx.op.dot3.f32(i32 55, float %4240, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4235, float %4238)  ; Dot3(ax,ay,az,bx,by,bz)
  %4243 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4229)  ; FMax(a,b)
  %4244 = fmul fast float %4243, 0x3FD20DD760000000
  %4245 = call float @dx.op.dot3.f32(i32 55, float %4243, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4235, float %4238)  ; Dot3(ax,ay,az,bx,by,bz)
  %4246 = call float @dx.op.binary.f32(i32 35, float %4233, float 0.000000e+00)  ; FMax(a,b)
  %4247 = call float @dx.op.binary.f32(i32 35, float %4241, float 0.000000e+00)  ; FMax(a,b)
  %4248 = call float @dx.op.binary.f32(i32 35, float %4244, float 0.000000e+00)  ; FMax(a,b)
  %4249 = call float @dx.op.binary.f32(i32 35, float %4239, float 0.000000e+00)  ; FMax(a,b)
  %4250 = call float @dx.op.binary.f32(i32 35, float %4242, float 0.000000e+00)  ; FMax(a,b)
  %4251 = call float @dx.op.binary.f32(i32 35, float %4245, float 0.000000e+00)  ; FMax(a,b)
  %4252 = fmul fast float %4246, %3949
  %4253 = fmul fast float %4247, %3949
  %4254 = fmul fast float %4248, %3949
  %4255 = fadd fast float %4252, %4053
  %4256 = fadd fast float %4253, %4054
  %4257 = fadd fast float %4254, %4055
  %4258 = fmul fast float %4249, %3949
  %4259 = fmul fast float %4250, %3949
  %4260 = fmul fast float %4251, %3949
  %4261 = fadd fast float %4258, %4050
  %4262 = fadd fast float %4259, %4051
  %4263 = fadd fast float %4260, %4052
  br label %4264

; <label>:4264                                    ; preds = %4228, %4049
  %4265 = phi float [ %4261, %4228 ], [ %4050, %4049 ]
  %4266 = phi float [ %4262, %4228 ], [ %4051, %4049 ]
  %4267 = phi float [ %4263, %4228 ], [ %4052, %4049 ]
  %4268 = phi float [ %4255, %4228 ], [ %4053, %4049 ]
  %4269 = phi float [ %4256, %4228 ], [ %4054, %4049 ]
  %4270 = phi float [ %4257, %4228 ], [ %4055, %4049 ]
  %4271 = fcmp fast olt float %3949, 1.000000e+00
  br i1 %4271, label %4272, label %5090, !dx.controlflow.hints !108

; <label>:4272                                    ; preds = %4264
  %4273 = extractvalue %dx.types.CBufRet.f32 %3905, 2
  %4274 = fadd fast float %4273, %154
  %4275 = fmul fast float %3884, 3.200000e+01
  %4276 = fmul fast float %3885, 3.200000e+01
  %4277 = fadd fast float %3908, %4275
  %4278 = fadd fast float %3909, %4276
  %4279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.f32 %4279, 0
  %4281 = extractvalue %dx.types.CBufRet.f32 %4279, 1
  %4282 = fsub fast float %4277, %4280
  %4283 = fsub fast float %4278, %4281
  %4284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4285 = extractvalue %dx.types.CBufRet.f32 %4284, 0
  %4286 = extractvalue %dx.types.CBufRet.f32 %4284, 1
  %4287 = fmul fast float %4282, %4285
  %4288 = fmul fast float %4283, %4286
  %4289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4289, 0
  %4291 = fmul fast float %4287, %4290
  %4292 = extractvalue %dx.types.CBufRet.f32 %4289, 1
  %4293 = fadd fast float %4291, %4292
  %4294 = extractvalue %dx.types.CBufRet.f32 %4289, 2
  %4295 = fmul fast float %4294, %4288
  %4296 = extractvalue %dx.types.CBufRet.f32 %4289, 3
  %4297 = fadd fast float %4295, %4296
  %4298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %4293, float %4297, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4299 = extractvalue %dx.types.ResRet.f32 %4298, 0
  %4300 = extractvalue %dx.types.ResRet.f32 %4298, 1
  %4301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4301, 1
  %4303 = extractvalue %dx.types.CBufRet.f32 %4301, 0
  %4304 = fsub fast float %4302, %4303
  %4305 = fmul fast float %4304, %4299
  %4306 = fadd fast float %4305, %4303
  %4307 = extractvalue %dx.types.CBufRet.f32 %4301, 3
  %4308 = extractvalue %dx.types.CBufRet.f32 %4301, 2
  %4309 = fsub fast float %4307, %4308
  %4310 = fmul fast float %4309, %4300
  %4311 = fadd fast float %4310, %4308
  %4312 = fsub fast float %4274, %4306
  %4313 = fsub fast float %4311, %4306
  %4314 = fdiv fast float %4312, %4313
  %4315 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %4317 = extractvalue %dx.types.CBufRet.f32 %4316, 0
  %4318 = fmul fast float %4317, %4315
  %4319 = extractvalue %dx.types.CBufRet.f32 %4316, 1
  %4320 = fadd fast float %4318, %4319
  %4321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %58, float %4293, float %4297, float %4320, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4322 = extractvalue %dx.types.ResRet.f32 %4321, 0
  %4323 = extractvalue %dx.types.ResRet.f32 %4321, 1
  %4324 = extractvalue %dx.types.ResRet.f32 %4321, 2
  %4325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %4326 = extractvalue %dx.types.CBufRet.f32 %4325, 0
  %4327 = extractvalue %dx.types.CBufRet.f32 %4325, 1
  %4328 = extractvalue %dx.types.CBufRet.f32 %4325, 2
  %4329 = fmul fast float %4326, %4322
  %4330 = fmul fast float %4327, %4323
  %4331 = fmul fast float %4328, %4324
  %4332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4332, 0
  %4334 = extractvalue %dx.types.CBufRet.f32 %4332, 1
  %4335 = extractvalue %dx.types.CBufRet.f32 %4332, 2
  %4336 = fadd fast float %4329, %4333
  %4337 = fadd fast float %4330, %4334
  %4338 = fadd fast float %4331, %4335
  %4339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4340 = extractvalue %dx.types.CBufRet.f32 %4339, 0
  %4341 = fmul fast float %4340, %4287
  %4342 = extractvalue %dx.types.CBufRet.f32 %4339, 1
  %4343 = fadd fast float %4341, %4342
  %4344 = extractvalue %dx.types.CBufRet.f32 %4339, 2
  %4345 = fmul fast float %4344, %4288
  %4346 = extractvalue %dx.types.CBufRet.f32 %4339, 3
  %4347 = fadd fast float %4345, %4346
  %4348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.f32 %4348, 0
  %4350 = extractvalue %dx.types.CBufRet.f32 %4348, 1
  %4351 = extractvalue %dx.types.CBufRet.f32 %4348, 2
  %4352 = extractvalue %dx.types.CBufRet.f32 %4348, 3
  %4353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4354 = extractvalue %dx.types.CBufRet.f32 %4353, 0
  %4355 = extractvalue %dx.types.CBufRet.f32 %4353, 1
  %4356 = extractvalue %dx.types.CBufRet.f32 %4353, 2
  %4357 = extractvalue %dx.types.CBufRet.f32 %4353, 3
  %4358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %4343, float %4347, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4359 = extractvalue %dx.types.ResRet.f32 %4358, 0
  %4360 = extractvalue %dx.types.ResRet.f32 %4358, 1
  %4361 = extractvalue %dx.types.ResRet.f32 %4358, 2
  %4362 = extractvalue %dx.types.ResRet.f32 %4358, 3
  %4363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %4343, float %4347, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4364 = extractvalue %dx.types.ResRet.f32 %4363, 0
  %4365 = extractvalue %dx.types.ResRet.f32 %4363, 1
  %4366 = extractvalue %dx.types.ResRet.f32 %4363, 2
  %4367 = extractvalue %dx.types.ResRet.f32 %4363, 3
  %4368 = fmul fast float %4359, %4336
  %4369 = fmul fast float %4364, %4336
  %4370 = fmul fast float %4366, %4336
  %4371 = fmul fast float %4362, %4336
  %4372 = fadd fast float %4368, %4349
  %4373 = fadd fast float %4369, %4350
  %4374 = fadd fast float %4370, %4351
  %4375 = fadd fast float %4371, %4352
  %4376 = fmul fast float %4360, %4336
  %4377 = fmul fast float %4365, %4336
  %4378 = fadd fast float %4376, %4354
  %4379 = fadd fast float %4377, %4355
  %4380 = fmul fast float %4361, %4336
  %4381 = fmul fast float %4367, %4336
  %4382 = fadd fast float %4380, %4356
  %4383 = fadd fast float %4381, %4357
  %4384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %4343, float %4347, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4385 = extractvalue %dx.types.ResRet.f32 %4384, 0
  %4386 = extractvalue %dx.types.ResRet.f32 %4384, 1
  %4387 = extractvalue %dx.types.ResRet.f32 %4384, 2
  %4388 = extractvalue %dx.types.ResRet.f32 %4384, 3
  %4389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %4343, float %4347, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4390 = extractvalue %dx.types.ResRet.f32 %4389, 0
  %4391 = extractvalue %dx.types.ResRet.f32 %4389, 1
  %4392 = extractvalue %dx.types.ResRet.f32 %4389, 2
  %4393 = extractvalue %dx.types.ResRet.f32 %4389, 3
  %4394 = fmul fast float %4385, %4337
  %4395 = fmul fast float %4390, %4337
  %4396 = fmul fast float %4392, %4337
  %4397 = fmul fast float %4388, %4337
  %4398 = fadd fast float %4372, %4394
  %4399 = fadd fast float %4373, %4395
  %4400 = fadd fast float %4374, %4396
  %4401 = fadd fast float %4375, %4397
  %4402 = fmul fast float %4386, %4337
  %4403 = fmul fast float %4391, %4337
  %4404 = fadd fast float %4378, %4402
  %4405 = fadd fast float %4379, %4403
  %4406 = fmul fast float %4387, %4337
  %4407 = fmul fast float %4393, %4337
  %4408 = fadd fast float %4382, %4406
  %4409 = fadd fast float %4383, %4407
  %4410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %4343, float %4347, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4411 = extractvalue %dx.types.ResRet.f32 %4410, 0
  %4412 = extractvalue %dx.types.ResRet.f32 %4410, 1
  %4413 = extractvalue %dx.types.ResRet.f32 %4410, 2
  %4414 = extractvalue %dx.types.ResRet.f32 %4410, 3
  %4415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %4343, float %4347, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4416 = extractvalue %dx.types.ResRet.f32 %4415, 0
  %4417 = extractvalue %dx.types.ResRet.f32 %4415, 1
  %4418 = extractvalue %dx.types.ResRet.f32 %4415, 2
  %4419 = extractvalue %dx.types.ResRet.f32 %4415, 3
  %4420 = fmul fast float %4411, %4338
  %4421 = fmul fast float %4416, %4338
  %4422 = fmul fast float %4418, %4338
  %4423 = fmul fast float %4414, %4338
  %4424 = fadd fast float %4398, %4420
  %4425 = fadd fast float %4399, %4421
  %4426 = fadd fast float %4400, %4422
  %4427 = fadd fast float %4401, %4423
  %4428 = fmul fast float %4412, %4338
  %4429 = fmul fast float %4417, %4338
  %4430 = fadd fast float %4404, %4428
  %4431 = fadd fast float %4405, %4429
  %4432 = fmul fast float %4413, %4338
  %4433 = fmul fast float %4419, %4338
  %4434 = fadd fast float %4408, %4432
  %4435 = fadd fast float %4409, %4433
  %4436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4437 = extractvalue %dx.types.CBufRet.f32 %4436, 0
  %4438 = fsub fast float %3908, %4437
  %4439 = fsub fast float %4280, %3908
  %4440 = call float @dx.op.binary.f32(i32 35, float %4439, float %4438)  ; FMax(a,b)
  %4441 = extractvalue %dx.types.CBufRet.f32 %4436, 1
  %4442 = fsub fast float %3909, %4441
  %4443 = fsub fast float %4281, %3909
  %4444 = call float @dx.op.binary.f32(i32 35, float %4443, float %4442)  ; FMax(a,b)
  %4445 = call float @dx.op.binary.f32(i32 35, float %4440, float %4444)  ; FMax(a,b)
  %4446 = extractvalue %dx.types.CBufRet.f32 %4284, 3
  %4447 = fmul fast float %4446, %4445
  %4448 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4450 = extractvalue %dx.types.CBufRet.f32 %4449, 0
  %4451 = extractvalue %dx.types.CBufRet.f32 %4449, 1
  %4452 = extractvalue %dx.types.CBufRet.f32 %4449, 2
  %4453 = extractvalue %dx.types.CBufRet.f32 %4449, 3
  %4454 = fsub fast float %4450, %4424
  %4455 = fsub fast float %4451, %4425
  %4456 = fsub fast float %4452, %4426
  %4457 = fsub fast float %4453, %4427
  %4458 = fmul fast float %4454, %4448
  %4459 = fmul fast float %4455, %4448
  %4460 = fmul fast float %4456, %4448
  %4461 = fmul fast float %4457, %4448
  %4462 = fadd fast float %4458, %4424
  %4463 = fadd fast float %4459, %4425
  %4464 = fadd fast float %4460, %4426
  %4465 = fadd fast float %4461, %4427
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 0
  %4468 = extractvalue %dx.types.CBufRet.f32 %4466, 1
  %4469 = fsub fast float %4467, %4430
  %4470 = fsub fast float %4468, %4431
  %4471 = fmul fast float %4469, %4448
  %4472 = fmul fast float %4470, %4448
  %4473 = fadd fast float %4471, %4430
  %4474 = fadd fast float %4472, %4431
  %4475 = extractvalue %dx.types.CBufRet.f32 %4466, 2
  %4476 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4477 = fsub fast float %4475, %4434
  %4478 = fsub fast float %4476, %4435
  %4479 = fmul fast float %4477, %4448
  %4480 = fmul fast float %4478, %4448
  %4481 = fadd fast float %4479, %4434
  %4482 = fadd fast float %4480, %4435
  %4483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4484 = extractvalue %dx.types.CBufRet.f32 %4483, 0
  %4485 = fmul fast float %4484, %4462
  %4486 = fmul fast float %4484, %4463
  %4487 = fmul fast float %4484, %4464
  %4488 = fmul fast float %4484, %4465
  %4489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4490 = extractvalue %dx.types.CBufRet.f32 %4489, 0
  %4491 = fmul fast float %4490, %4473
  %4492 = fmul fast float %4490, %4474
  %4493 = fadd fast float %4491, %4485
  %4494 = fadd fast float %4492, %4487
  %4495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4496 = extractvalue %dx.types.CBufRet.f32 %4495, 0
  %4497 = fmul fast float %4496, %4481
  %4498 = fmul fast float %4496, %4482
  %4499 = fadd fast float %4493, %4497
  %4500 = fadd fast float %4494, %4498
  %4501 = extractvalue %dx.types.CBufRet.f32 %4483, 1
  %4502 = fmul fast float %4501, %4462
  %4503 = fmul fast float %4501, %4463
  %4504 = fmul fast float %4501, %4464
  %4505 = fmul fast float %4501, %4465
  %4506 = extractvalue %dx.types.CBufRet.f32 %4489, 1
  %4507 = fmul fast float %4506, %4473
  %4508 = fmul fast float %4506, %4474
  %4509 = fadd fast float %4507, %4502
  %4510 = fadd fast float %4508, %4504
  %4511 = extractvalue %dx.types.CBufRet.f32 %4495, 1
  %4512 = fmul fast float %4511, %4481
  %4513 = fmul fast float %4511, %4482
  %4514 = fadd fast float %4509, %4512
  %4515 = fadd fast float %4510, %4513
  %4516 = extractvalue %dx.types.CBufRet.f32 %4483, 2
  %4517 = fmul fast float %4516, %4462
  %4518 = fmul fast float %4516, %4463
  %4519 = fmul fast float %4516, %4464
  %4520 = fmul fast float %4516, %4465
  %4521 = extractvalue %dx.types.CBufRet.f32 %4489, 2
  %4522 = fmul fast float %4521, %4473
  %4523 = fmul fast float %4521, %4474
  %4524 = fadd fast float %4522, %4517
  %4525 = fadd fast float %4523, %4519
  %4526 = extractvalue %dx.types.CBufRet.f32 %4495, 2
  %4527 = fmul fast float %4526, %4481
  %4528 = fmul fast float %4526, %4482
  %4529 = fadd fast float %4524, %4527
  %4530 = fadd fast float %4525, %4528
  %4531 = fmul fast float %4518, %4518
  %4532 = fmul fast float %4530, %4530
  %4533 = fmul fast float %4520, %4520
  %4534 = fadd fast float %4533, %4531
  %4535 = fadd fast float %4534, %4532
  %4536 = call float @dx.op.unary.f32(i32 24, float %4535)  ; Sqrt(value)
  %4537 = fcmp fast ugt float %4536, 0.000000e+00
  br i1 %4537, label %4538, label %4553

; <label>:4538                                    ; preds = %4272
  %4539 = fsub fast float -0.000000e+00, %4520
  %4540 = fdiv fast float %4539, %4536
  %4541 = fsub fast float -0.000000e+00, %4518
  %4542 = fdiv fast float %4541, %4536
  %4543 = fdiv fast float %4530, %4536
  %4544 = fmul fast float %4529, 0x3FE279A760000000
  %4545 = fmul fast float %4542, %4518
  %4546 = fmul fast float %4543, %4530
  %4547 = fmul fast float %4540, %4520
  %4548 = fadd fast float %4545, %4547
  %4549 = fsub fast float %4548, %4546
  %4550 = call float @dx.op.unary.f32(i32 6, float %4549)  ; FAbs(value)
  %4551 = fadd fast float %4550, 0x3DDB7CDFE0000000
  %4552 = fdiv fast float %4544, %4551
  br label %4553

; <label>:4553                                    ; preds = %4538, %4272
  %4554 = phi float [ %4552, %4538 ], [ 1.000000e+00, %4272 ]
  %4555 = fmul fast float %4503, %4503
  %4556 = fmul fast float %4515, %4515
  %4557 = fmul fast float %4505, %4505
  %4558 = fadd fast float %4557, %4555
  %4559 = fadd fast float %4558, %4556
  %4560 = call float @dx.op.unary.f32(i32 24, float %4559)  ; Sqrt(value)
  %4561 = fcmp fast ugt float %4560, 0.000000e+00
  br i1 %4561, label %4562, label %4577

; <label>:4562                                    ; preds = %4553
  %4563 = fsub fast float -0.000000e+00, %4505
  %4564 = fdiv fast float %4563, %4560
  %4565 = fsub fast float -0.000000e+00, %4503
  %4566 = fdiv fast float %4565, %4560
  %4567 = fdiv fast float %4515, %4560
  %4568 = fmul fast float %4514, 0x3FE279A760000000
  %4569 = fmul fast float %4566, %4503
  %4570 = fmul fast float %4567, %4515
  %4571 = fmul fast float %4564, %4505
  %4572 = fadd fast float %4569, %4571
  %4573 = fsub fast float %4572, %4570
  %4574 = call float @dx.op.unary.f32(i32 6, float %4573)  ; FAbs(value)
  %4575 = fadd fast float %4574, 0x3DDB7CDFE0000000
  %4576 = fdiv fast float %4568, %4575
  br label %4577

; <label>:4577                                    ; preds = %4562, %4553
  %4578 = phi float [ %4576, %4562 ], [ 1.000000e+00, %4553 ]
  %4579 = call float @dx.op.binary.f32(i32 36, float %4578, float %4554)  ; FMin(a,b)
  %4580 = fmul fast float %4486, %4486
  %4581 = fmul fast float %4500, %4500
  %4582 = fmul fast float %4488, %4488
  %4583 = fadd fast float %4582, %4580
  %4584 = fadd fast float %4583, %4581
  %4585 = call float @dx.op.unary.f32(i32 24, float %4584)  ; Sqrt(value)
  %4586 = fcmp fast ugt float %4585, 0.000000e+00
  br i1 %4586, label %4587, label %4602

; <label>:4587                                    ; preds = %4577
  %4588 = fsub fast float -0.000000e+00, %4488
  %4589 = fdiv fast float %4588, %4585
  %4590 = fsub fast float -0.000000e+00, %4486
  %4591 = fdiv fast float %4590, %4585
  %4592 = fdiv fast float %4500, %4585
  %4593 = fmul fast float %4499, 0x3FE279A760000000
  %4594 = fmul fast float %4591, %4486
  %4595 = fmul fast float %4592, %4500
  %4596 = fmul fast float %4589, %4488
  %4597 = fadd fast float %4594, %4596
  %4598 = fsub fast float %4597, %4595
  %4599 = call float @dx.op.unary.f32(i32 6, float %4598)  ; FAbs(value)
  %4600 = fadd fast float %4599, 0x3DDB7CDFE0000000
  %4601 = fdiv fast float %4593, %4600
  br label %4602

; <label>:4602                                    ; preds = %4587, %4577
  %4603 = phi float [ %4601, %4587 ], [ 1.000000e+00, %4577 ]
  %4604 = call float @dx.op.binary.f32(i32 36, float %4603, float %4579)  ; FMin(a,b)
  %4605 = call float @dx.op.unary.f32(i32 7, float %4604)  ; Saturate(value)
  %4606 = fcmp fast olt float %4605, 1.000000e+00
  br i1 %4606, label %4607, label %4617

; <label>:4607                                    ; preds = %4602
  %4608 = fmul fast float %4605, %4486
  %4609 = fmul fast float %4605, %4500
  %4610 = fmul fast float %4605, %4488
  %4611 = fmul fast float %4605, %4503
  %4612 = fmul fast float %4605, %4515
  %4613 = fmul fast float %4605, %4505
  %4614 = fmul fast float %4605, %4518
  %4615 = fmul fast float %4605, %4530
  %4616 = fmul fast float %4605, %4520
  br label %4617

; <label>:4617                                    ; preds = %4607, %4602
  %4618 = phi float [ %4614, %4607 ], [ %4518, %4602 ]
  %4619 = phi float [ %4615, %4607 ], [ %4530, %4602 ]
  %4620 = phi float [ %4616, %4607 ], [ %4520, %4602 ]
  %4621 = phi float [ %4611, %4607 ], [ %4503, %4602 ]
  %4622 = phi float [ %4612, %4607 ], [ %4515, %4602 ]
  %4623 = phi float [ %4613, %4607 ], [ %4505, %4602 ]
  %4624 = phi float [ %4608, %4607 ], [ %4486, %4602 ]
  %4625 = phi float [ %4609, %4607 ], [ %4500, %4602 ]
  %4626 = phi float [ %4610, %4607 ], [ %4488, %4602 ]
  %4627 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4499)  ; FMax(a,b)
  %4628 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4514)  ; FMax(a,b)
  %4629 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4529)  ; FMax(a,b)
  %4630 = fcmp fast oge float %4287, 0.000000e+00
  %4631 = and i1 %4630, %4058
  %4632 = fcmp fast ole float %4287, 1.000000e+00
  %4633 = and i1 %4632, %4631
  %4634 = fcmp fast oge float %4288, 0.000000e+00
  %4635 = and i1 %4634, %4633
  %4636 = fcmp fast ole float %4288, 1.000000e+00
  %4637 = and i1 %4636, %4635
  br i1 %4637, label %4638, label %4783, !dx.controlflow.hints !109

; <label>:4638                                    ; preds = %4617
  %4639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4640 = extractvalue %dx.types.CBufRet.f32 %4639, 2
  %4641 = extractvalue %dx.types.CBufRet.f32 %4639, 3
  %4642 = fmul fast float %4640, %4287
  %4643 = fmul fast float %4641, %4288
  %4644 = call float @dx.op.unary.f32(i32 27, float %4642)  ; Round_ni(value)
  %4645 = call float @dx.op.unary.f32(i32 27, float %4643)  ; Round_ni(value)
  %4646 = fptosi float %4644 to i32
  %4647 = fptosi float %4645 to i32
  %4648 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %4646, i32 %4647, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4649 = extractvalue %dx.types.ResRet.i32 %4648, 0
  %4650 = and i32 %4649, 65535
  %4651 = lshr i32 %4649, 16
  %4652 = icmp eq i32 %4650, 65535
  br i1 %4652, label %4689, label %4653

; <label>:4653                                    ; preds = %4638
  %4654 = extractvalue %dx.types.CBufRet.f32 %4056, 1
  %4655 = extractvalue %dx.types.CBufRet.f32 %4639, 0
  %4656 = extractvalue %dx.types.CBufRet.f32 %4639, 1
  %4657 = fmul fast float %4655, %4287
  %4658 = fmul fast float %4656, %4288
  %4659 = fmul fast float %4657, 1.250000e-01
  %4660 = fmul fast float %4658, 1.250000e-01
  %4661 = call float @dx.op.unary.f32(i32 27, float %4659)  ; Round_ni(value)
  %4662 = call float @dx.op.unary.f32(i32 27, float %4660)  ; Round_ni(value)
  %4663 = fmul fast float %4661, 8.000000e+00
  %4664 = fmul fast float %4662, 8.000000e+00
  %4665 = and i32 %4649, 255
  %4666 = lshr i32 %4649, 8
  %4667 = and i32 %4666, 255
  %4668 = mul nuw nsw i32 %4665, 9
  %4669 = uitofp i32 %4668 to float
  %4670 = mul nuw nsw i32 %4667, 9
  %4671 = uitofp i32 %4670 to float
  %4672 = fadd fast float %4669, 5.000000e-01
  %4673 = fadd fast float %4672, %4657
  %4674 = fsub fast float %4673, %4663
  %4675 = fadd fast float %4671, 5.000000e-01
  %4676 = fadd fast float %4675, %4658
  %4677 = fsub fast float %4676, %4664
  %4678 = fdiv fast float %4674, %4057
  %4679 = fdiv fast float %4677, %4654
  %4680 = fmul fast float %4315, 4.375000e-01
  %4681 = fadd fast float %4680, 3.125000e-02
  %4682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %4678, float %4679, float %4681, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4683 = extractvalue %dx.types.ResRet.f32 %4682, 0
  %4684 = extractvalue %dx.types.ResRet.f32 %4682, 1
  %4685 = extractvalue %dx.types.ResRet.f32 %4682, 2
  %4686 = fadd fast float %4683, %4627
  %4687 = fadd fast float %4684, %4628
  %4688 = fadd fast float %4685, %4629
  br label %4689

; <label>:4689                                    ; preds = %4653, %4638
  %4690 = phi float [ %4688, %4653 ], [ %4629, %4638 ]
  %4691 = phi float [ %4687, %4653 ], [ %4628, %4638 ]
  %4692 = phi float [ %4686, %4653 ], [ %4627, %4638 ]
  %4693 = icmp eq i32 %4651, 65535
  br i1 %4693, label %4783, label %4694

; <label>:4694                                    ; preds = %4689
  %4695 = extractvalue %dx.types.CBufRet.f32 %4056, 1
  %4696 = extractvalue %dx.types.CBufRet.f32 %4639, 0
  %4697 = extractvalue %dx.types.CBufRet.f32 %4639, 1
  %4698 = fmul fast float %4696, %4287
  %4699 = fmul fast float %4697, %4288
  %4700 = fmul fast float %4698, 1.250000e-01
  %4701 = fmul fast float %4699, 1.250000e-01
  %4702 = call float @dx.op.unary.f32(i32 27, float %4700)  ; Round_ni(value)
  %4703 = call float @dx.op.unary.f32(i32 27, float %4701)  ; Round_ni(value)
  %4704 = fmul fast float %4702, 8.000000e+00
  %4705 = fmul fast float %4703, 8.000000e+00
  %4706 = fsub fast float %4698, %4704
  %4707 = fsub fast float %4699, %4705
  %4708 = fadd fast float %4706, 5.000000e-01
  %4709 = fadd fast float %4707, 5.000000e-01
  %4710 = and i32 %4651, 255
  %4711 = lshr i32 %4649, 24
  %4712 = mul nuw nsw i32 %4710, 9
  %4713 = uitofp i32 %4712 to float
  %4714 = mul nuw nsw i32 %4711, 9
  %4715 = uitofp i32 %4714 to float
  %4716 = fadd fast float %4708, %4713
  %4717 = fadd fast float %4709, %4715
  %4718 = fdiv fast float %4716, %4057
  %4719 = fdiv fast float %4717, %4695
  %4720 = fmul fast float %4315, 4.375000e-01
  %4721 = fadd fast float %4720, 3.125000e-02
  %4722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %4718, float %4719, float %4721, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4723 = extractvalue %dx.types.ResRet.f32 %4722, 0
  %4724 = extractvalue %dx.types.ResRet.f32 %4722, 1
  %4725 = extractvalue %dx.types.ResRet.f32 %4722, 2
  %4726 = fadd fast float %4720, 5.312500e-01
  %4727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %4718, float %4719, float %4726, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4728 = extractvalue %dx.types.ResRet.f32 %4727, 0
  %4729 = extractvalue %dx.types.ResRet.f32 %4727, 1
  %4730 = extractvalue %dx.types.ResRet.f32 %4727, 2
  %4731 = fmul fast float %4728, 2.000000e+00
  %4732 = fmul fast float %4729, 2.000000e+00
  %4733 = fmul fast float %4730, 2.000000e+00
  %4734 = fadd fast float %4731, -1.000000e+00
  %4735 = fadd fast float %4732, -1.000000e+00
  %4736 = fadd fast float %4733, -1.000000e+00
  %4737 = fmul fast float %4734, %4734
  %4738 = fmul fast float %4735, %4735
  %4739 = fadd fast float %4737, %4738
  %4740 = fmul fast float %4736, %4736
  %4741 = fadd fast float %4739, %4740
  %4742 = call float @dx.op.unary.f32(i32 24, float %4741)  ; Sqrt(value)
  %4743 = fcmp fast ogt float %4742, 0.000000e+00
  br i1 %4743, label %4744, label %4748

; <label>:4744                                    ; preds = %4694
  %4745 = fdiv fast float %4734, %4742
  %4746 = fdiv fast float %4735, %4742
  %4747 = fdiv fast float %4736, %4742
  br label %4748

; <label>:4748                                    ; preds = %4744, %4694
  %4749 = phi float [ %4745, %4744 ], [ 0.000000e+00, %4694 ]
  %4750 = phi float [ %4746, %4744 ], [ 0.000000e+00, %4694 ]
  %4751 = phi float [ %4747, %4744 ], [ 0.000000e+00, %4694 ]
  %4752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4753 = extractvalue %dx.types.CBufRet.f32 %4752, 0
  %4754 = extractvalue %dx.types.CBufRet.f32 %4752, 1
  %4755 = fsub fast float %3908, %4753
  %4756 = fsub fast float %3909, %4754
  %4757 = fmul fast float %4755, %4755
  %4758 = fmul fast float %4756, %4756
  %4759 = fadd fast float %4757, %4758
  %4760 = call float @dx.op.unary.f32(i32 24, float %4759)  ; Sqrt(value)
  %4761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4762 = extractvalue %dx.types.CBufRet.f32 %4761, 0
  %4763 = extractvalue %dx.types.CBufRet.f32 %4761, 1
  %4764 = fsub fast float %4760, %4762
  %4765 = fdiv fast float %4764, %4763
  %4766 = call float @dx.op.unary.f32(i32 7, float %4765)  ; Saturate(value)
  %4767 = fmul fast float %4766, 2.000000e+00
  %4768 = fsub fast float 3.000000e+00, %4767
  %4769 = fmul fast float %4766, %4766
  %4770 = fmul fast float %4769, %4768
  %4771 = call float @dx.op.dot3.f32(i32 55, float %4749, float %4750, float %4751, float %3884, float %3885, float %3886)  ; Dot3(ax,ay,az,bx,by,bz)
  %4772 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4771)  ; FMax(a,b)
  %4773 = fmul fast float %4772, 0x400C5BF8A0000000
  %4774 = fmul fast float %4770, %4723
  %4775 = fmul fast float %4774, %4773
  %4776 = fadd fast float %4775, %4692
  %4777 = fmul fast float %4770, %4724
  %4778 = fmul fast float %4777, %4773
  %4779 = fadd fast float %4778, %4691
  %4780 = fmul fast float %4770, %4725
  %4781 = fmul fast float %4780, %4773
  %4782 = fadd fast float %4781, %4690
  br label %4783

; <label>:4783                                    ; preds = %4748, %4689, %4617
  %4784 = phi float [ %4782, %4748 ], [ %4690, %4689 ], [ %4629, %4617 ]
  %4785 = phi float [ %4779, %4748 ], [ %4691, %4689 ], [ %4628, %4617 ]
  %4786 = phi float [ %4776, %4748 ], [ %4692, %4689 ], [ %4627, %4617 ]
  %4787 = fcmp fast ogt float %4274, %4311
  %4788 = and i1 %4630, %4787
  %4789 = and i1 %4632, %4788
  %4790 = and i1 %4634, %4789
  %4791 = and i1 %4636, %4790
  br i1 %4791, label %4792, label %4849, !dx.controlflow.hints !110

; <label>:4792                                    ; preds = %4783
  %4793 = fmul fast float %4313, 0x3FC24924A0000000
  %4794 = fsub fast float %4274, %4311
  %4795 = fdiv fast float %4794, %4793
  %4796 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  %4797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %4798 = extractvalue %dx.types.CBufRet.f32 %4797, 0
  %4799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %4800 = extractvalue %dx.types.CBufRet.f32 %4799, 0
  %4801 = extractvalue %dx.types.CBufRet.f32 %4799, 1
  %4802 = extractvalue %dx.types.CBufRet.f32 %4799, 2
  %4803 = fsub fast float %4798, %4786
  %4804 = fsub fast float %4800, %4624
  %4805 = fsub fast float %4801, %4625
  %4806 = fsub fast float %4802, %4626
  %4807 = fmul fast float %4803, %4796
  %4808 = fmul fast float %4804, %4796
  %4809 = fmul fast float %4805, %4796
  %4810 = fmul fast float %4806, %4796
  %4811 = fadd fast float %4807, %4786
  %4812 = fadd fast float %4808, %4624
  %4813 = fadd fast float %4809, %4625
  %4814 = fadd fast float %4810, %4626
  %4815 = extractvalue %dx.types.CBufRet.f32 %4797, 1
  %4816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %4817 = extractvalue %dx.types.CBufRet.f32 %4816, 0
  %4818 = extractvalue %dx.types.CBufRet.f32 %4816, 1
  %4819 = extractvalue %dx.types.CBufRet.f32 %4816, 2
  %4820 = fsub fast float %4815, %4785
  %4821 = fsub fast float %4817, %4621
  %4822 = fsub fast float %4818, %4622
  %4823 = fsub fast float %4819, %4623
  %4824 = fmul fast float %4820, %4796
  %4825 = fmul fast float %4821, %4796
  %4826 = fmul fast float %4822, %4796
  %4827 = fmul fast float %4823, %4796
  %4828 = fadd fast float %4824, %4785
  %4829 = fadd fast float %4825, %4621
  %4830 = fadd fast float %4826, %4622
  %4831 = fadd fast float %4827, %4623
  %4832 = extractvalue %dx.types.CBufRet.f32 %4797, 2
  %4833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %4834 = extractvalue %dx.types.CBufRet.f32 %4833, 0
  %4835 = extractvalue %dx.types.CBufRet.f32 %4833, 1
  %4836 = extractvalue %dx.types.CBufRet.f32 %4833, 2
  %4837 = fsub fast float %4832, %4784
  %4838 = fsub fast float %4834, %4618
  %4839 = fsub fast float %4835, %4619
  %4840 = fsub fast float %4836, %4620
  %4841 = fmul fast float %4837, %4796
  %4842 = fmul fast float %4838, %4796
  %4843 = fmul fast float %4839, %4796
  %4844 = fmul fast float %4840, %4796
  %4845 = fadd fast float %4841, %4784
  %4846 = fadd fast float %4842, %4618
  %4847 = fadd fast float %4843, %4619
  %4848 = fadd fast float %4844, %4620
  br label %4849

; <label>:4849                                    ; preds = %4792, %4783
  %4850 = phi float [ %4845, %4792 ], [ %4784, %4783 ]
  %4851 = phi float [ %4846, %4792 ], [ %4618, %4783 ]
  %4852 = phi float [ %4847, %4792 ], [ %4619, %4783 ]
  %4853 = phi float [ %4848, %4792 ], [ %4620, %4783 ]
  %4854 = phi float [ %4828, %4792 ], [ %4785, %4783 ]
  %4855 = phi float [ %4829, %4792 ], [ %4621, %4783 ]
  %4856 = phi float [ %4830, %4792 ], [ %4622, %4783 ]
  %4857 = phi float [ %4831, %4792 ], [ %4623, %4783 ]
  %4858 = phi float [ %4811, %4792 ], [ %4786, %4783 ]
  %4859 = phi float [ %4812, %4792 ], [ %4624, %4783 ]
  %4860 = phi float [ %4813, %4792 ], [ %4625, %4783 ]
  %4861 = phi float [ %4814, %4792 ], [ %4626, %4783 ]
  %4862 = extractvalue %dx.types.CBufRet.f32 %4436, 3
  %4863 = fmul fast float %4862, %4858
  %4864 = fmul fast float %4862, %4854
  %4865 = fmul fast float %4862, %4850
  %4866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4867 = extractvalue %dx.types.CBufRet.f32 %4866, 3
  %4868 = fmul fast float %4863, %4867
  %4869 = fmul fast float %4864, %4867
  %4870 = fmul fast float %4865, %4867
  %4871 = fmul fast float %4859, 1.500000e+00
  %4872 = fmul fast float %4871, %4862
  %4873 = fmul fast float %4872, %4867
  %4874 = fmul fast float %4860, 1.500000e+00
  %4875 = fmul fast float %4874, %4862
  %4876 = fmul fast float %4875, %4867
  %4877 = fmul fast float %4861, 1.500000e+00
  %4878 = fmul fast float %4877, %4862
  %4879 = fmul fast float %4878, %4867
  %4880 = fmul fast float %4855, 1.500000e+00
  %4881 = fmul fast float %4880, %4862
  %4882 = fmul fast float %4881, %4867
  %4883 = fmul fast float %4856, 1.500000e+00
  %4884 = fmul fast float %4883, %4862
  %4885 = fmul fast float %4884, %4867
  %4886 = fmul fast float %4857, 1.500000e+00
  %4887 = fmul fast float %4886, %4862
  %4888 = fmul fast float %4887, %4867
  %4889 = fmul fast float %4851, 1.500000e+00
  %4890 = fmul fast float %4889, %4862
  %4891 = fmul fast float %4890, %4867
  %4892 = fmul fast float %4852, 1.500000e+00
  %4893 = fmul fast float %4892, %4862
  %4894 = fmul fast float %4893, %4867
  %4895 = fmul fast float %4853, 1.500000e+00
  %4896 = fmul fast float %4895, %4862
  %4897 = fmul fast float %4896, %4867
  %4898 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4868)  ; FMax(a,b)
  %4899 = call float @dx.op.dot3.f32(i32 55, float %4873, float %4876, float %4879, float %4873, float %4876, float %4879)  ; Dot3(ax,ay,az,bx,by,bz)
  %4900 = fcmp fast oeq float %4899, 0.000000e+00
  %4901 = fcmp fast oeq float %4898, 0.000000e+00
  %4902 = or i1 %4901, %4900
  br i1 %4902, label %4932, label %4903

; <label>:4903                                    ; preds = %4849
  %4904 = fsub fast float -0.000000e+00, %4879
  %4905 = fsub fast float -0.000000e+00, %4873
  %4906 = call float @dx.op.unary.f32(i32 24, float %4899)  ; Sqrt(value)
  %4907 = fdiv fast float %4906, %4898
  %4908 = fcmp fast ogt float %4907, 0x3FFB6F8900000000
  %4909 = select i1 %4908, float 0x3FFB6F8900000000, float %4907
  %4910 = fmul fast float %4909, 0x3FE8A23460000000
  %4911 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4912 = call float @dx.op.binary.f32(i32 35, float %4909, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4913 = fmul fast float %4911, %4898
  %4914 = fmul fast float %4912, 0x3FF279A740000000
  %4915 = fadd fast float %4914, -1.000000e+00
  %4916 = call float @dx.op.dot3.f32(i32 55, float %4904, float %4905, float %4876, float %4904, float %4905, float %4876)  ; Dot3(ax,ay,az,bx,by,bz)
  %4917 = call float @dx.op.unary.f32(i32 25, float %4916)  ; Rsqrt(value)
  %4918 = fmul fast float %4917, %4904
  %4919 = fmul fast float %4917, %4905
  %4920 = fmul fast float %4917, %4876
  %4921 = fmul fast float %4915, %4915
  %4922 = fsub fast float 1.000000e+00, %4921
  %4923 = fmul fast float %4912, 0x40005F8BE0000000
  %4924 = fsub fast float 0x400C5BF8A0000000, %4923
  %4925 = fdiv fast float %4913, %4924
  %4926 = fmul fast float %4925, 0x3FEE31C3C0000000
  %4927 = fmul fast float %4926, %4922
  %4928 = fmul fast float %4912, 0x3FDACB7480000000
  %4929 = fadd fast float %4928, 0xBFD7347680000000
  %4930 = fmul fast float %4929, %4925
  %4931 = fmul fast float %4930, %4922
  br label %4932

; <label>:4932                                    ; preds = %4903, %4849
  %4933 = phi float [ %4918, %4903 ], [ 0.000000e+00, %4849 ]
  %4934 = phi float [ %4919, %4903 ], [ 0.000000e+00, %4849 ]
  %4935 = phi float [ %4920, %4903 ], [ 0.000000e+00, %4849 ]
  %4936 = phi float [ %4927, %4903 ], [ 0.000000e+00, %4849 ]
  %4937 = phi float [ %4931, %4903 ], [ 0.000000e+00, %4849 ]
  %4938 = call float @dx.op.dot3.f32(i32 55, float %4933, float %4934, float %4935, float %3884, float %3885, float %3886)  ; Dot3(ax,ay,az,bx,by,bz)
  %4939 = fmul fast float %4938, %4938
  %4940 = fmul fast float %4939, 0x3FEE471020000000
  %4941 = fadd fast float %4940, 0xBFD42F6020000000
  %4942 = fmul fast float %4898, 0x3FD20DD760000000
  %4943 = fmul fast float %4941, %4937
  %4944 = fmul fast float %4936, 0x3FDF454380000000
  %4945 = fmul fast float %4944, %4938
  %4946 = fadd fast float %4945, %4942
  %4947 = fadd fast float %4946, %4943
  %4948 = call float @dx.op.dot3.f32(i32 55, float %4933, float %4934, float %4935, float %3898, float %3899, float %3900)  ; Dot3(ax,ay,az,bx,by,bz)
  %4949 = fmul fast float %4948, 0x3FDF454380000000
  %4950 = fmul fast float %4948, %4948
  %4951 = fmul fast float %4950, 0x3FEE471020000000
  %4952 = fadd fast float %4951, 0xBFD42F6020000000
  %4953 = call float @dx.op.dot3.f32(i32 55, float %4898, float %4936, float %4937, float 0x3FD20DD760000000, float %4949, float %4952)  ; Dot3(ax,ay,az,bx,by,bz)
  %4954 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4869)  ; FMax(a,b)
  %4955 = call float @dx.op.dot3.f32(i32 55, float %4882, float %4885, float %4888, float %4882, float %4885, float %4888)  ; Dot3(ax,ay,az,bx,by,bz)
  %4956 = fcmp fast oeq float %4955, 0.000000e+00
  %4957 = fcmp fast oeq float %4954, 0.000000e+00
  %4958 = or i1 %4957, %4956
  br i1 %4958, label %4988, label %4959

; <label>:4959                                    ; preds = %4932
  %4960 = fsub fast float -0.000000e+00, %4888
  %4961 = fsub fast float -0.000000e+00, %4882
  %4962 = call float @dx.op.unary.f32(i32 24, float %4955)  ; Sqrt(value)
  %4963 = fdiv fast float %4962, %4954
  %4964 = fcmp fast ogt float %4963, 0x3FFB6F8900000000
  %4965 = select i1 %4964, float 0x3FFB6F8900000000, float %4963
  %4966 = fmul fast float %4965, 0x3FE8A23460000000
  %4967 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4968 = call float @dx.op.binary.f32(i32 35, float %4965, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4969 = fmul fast float %4967, %4954
  %4970 = fmul fast float %4968, 0x3FF279A740000000
  %4971 = fadd fast float %4970, -1.000000e+00
  %4972 = call float @dx.op.dot3.f32(i32 55, float %4960, float %4961, float %4885, float %4960, float %4961, float %4885)  ; Dot3(ax,ay,az,bx,by,bz)
  %4973 = call float @dx.op.unary.f32(i32 25, float %4972)  ; Rsqrt(value)
  %4974 = fmul fast float %4973, %4960
  %4975 = fmul fast float %4973, %4961
  %4976 = fmul fast float %4973, %4885
  %4977 = fmul fast float %4971, %4971
  %4978 = fsub fast float 1.000000e+00, %4977
  %4979 = fmul fast float %4968, 0x40005F8BE0000000
  %4980 = fsub fast float 0x400C5BF8A0000000, %4979
  %4981 = fdiv fast float %4969, %4980
  %4982 = fmul fast float %4981, 0x3FEE31C3C0000000
  %4983 = fmul fast float %4982, %4978
  %4984 = fmul fast float %4968, 0x3FDACB7480000000
  %4985 = fadd fast float %4984, 0xBFD7347680000000
  %4986 = fmul fast float %4985, %4981
  %4987 = fmul fast float %4986, %4978
  br label %4988

; <label>:4988                                    ; preds = %4959, %4932
  %4989 = phi float [ %4974, %4959 ], [ 0.000000e+00, %4932 ]
  %4990 = phi float [ %4975, %4959 ], [ 0.000000e+00, %4932 ]
  %4991 = phi float [ %4976, %4959 ], [ 0.000000e+00, %4932 ]
  %4992 = phi float [ %4983, %4959 ], [ 0.000000e+00, %4932 ]
  %4993 = phi float [ %4987, %4959 ], [ 0.000000e+00, %4932 ]
  %4994 = call float @dx.op.dot3.f32(i32 55, float %4989, float %4990, float %4991, float %3884, float %3885, float %3886)  ; Dot3(ax,ay,az,bx,by,bz)
  %4995 = fmul fast float %4994, %4994
  %4996 = fmul fast float %4995, 0x3FEE471020000000
  %4997 = fadd fast float %4996, 0xBFD42F6020000000
  %4998 = fmul fast float %4954, 0x3FD20DD760000000
  %4999 = fmul fast float %4997, %4993
  %5000 = fmul fast float %4992, 0x3FDF454380000000
  %5001 = fmul fast float %5000, %4994
  %5002 = fadd fast float %5001, %4998
  %5003 = fadd fast float %5002, %4999
  %5004 = call float @dx.op.dot3.f32(i32 55, float %4989, float %4990, float %4991, float %3898, float %3899, float %3900)  ; Dot3(ax,ay,az,bx,by,bz)
  %5005 = fmul fast float %5004, 0x3FDF454380000000
  %5006 = fmul fast float %5004, %5004
  %5007 = fmul fast float %5006, 0x3FEE471020000000
  %5008 = fadd fast float %5007, 0xBFD42F6020000000
  %5009 = call float @dx.op.dot3.f32(i32 55, float %4954, float %4992, float %4993, float 0x3FD20DD760000000, float %5005, float %5008)  ; Dot3(ax,ay,az,bx,by,bz)
  %5010 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4870)  ; FMax(a,b)
  %5011 = call float @dx.op.dot3.f32(i32 55, float %4891, float %4894, float %4897, float %4891, float %4894, float %4897)  ; Dot3(ax,ay,az,bx,by,bz)
  %5012 = fcmp fast oeq float %5011, 0.000000e+00
  %5013 = fcmp fast oeq float %5010, 0.000000e+00
  %5014 = or i1 %5013, %5012
  br i1 %5014, label %5044, label %5015

; <label>:5015                                    ; preds = %4988
  %5016 = fsub fast float -0.000000e+00, %4897
  %5017 = fsub fast float -0.000000e+00, %4891
  %5018 = call float @dx.op.unary.f32(i32 24, float %5011)  ; Sqrt(value)
  %5019 = fdiv fast float %5018, %5010
  %5020 = fcmp fast ogt float %5019, 0x3FFB6F8900000000
  %5021 = select i1 %5020, float 0x3FFB6F8900000000, float %5019
  %5022 = fmul fast float %5021, 0x3FE8A23460000000
  %5023 = call float @dx.op.unary.f32(i32 7, float %5022)  ; Saturate(value)
  %5024 = call float @dx.op.binary.f32(i32 35, float %5021, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5025 = fmul fast float %5023, %5010
  %5026 = fmul fast float %5024, 0x3FF279A740000000
  %5027 = fadd fast float %5026, -1.000000e+00
  %5028 = call float @dx.op.dot3.f32(i32 55, float %5016, float %5017, float %4894, float %5016, float %5017, float %4894)  ; Dot3(ax,ay,az,bx,by,bz)
  %5029 = call float @dx.op.unary.f32(i32 25, float %5028)  ; Rsqrt(value)
  %5030 = fmul fast float %5029, %5016
  %5031 = fmul fast float %5029, %5017
  %5032 = fmul fast float %5029, %4894
  %5033 = fmul fast float %5027, %5027
  %5034 = fsub fast float 1.000000e+00, %5033
  %5035 = fmul fast float %5024, 0x40005F8BE0000000
  %5036 = fsub fast float 0x400C5BF8A0000000, %5035
  %5037 = fdiv fast float %5025, %5036
  %5038 = fmul fast float %5037, 0x3FEE31C3C0000000
  %5039 = fmul fast float %5038, %5034
  %5040 = fmul fast float %5024, 0x3FDACB7480000000
  %5041 = fadd fast float %5040, 0xBFD7347680000000
  %5042 = fmul fast float %5041, %5037
  %5043 = fmul fast float %5042, %5034
  br label %5044

; <label>:5044                                    ; preds = %5015, %4988
  %5045 = phi float [ %5030, %5015 ], [ 0.000000e+00, %4988 ]
  %5046 = phi float [ %5031, %5015 ], [ 0.000000e+00, %4988 ]
  %5047 = phi float [ %5032, %5015 ], [ 0.000000e+00, %4988 ]
  %5048 = phi float [ %5039, %5015 ], [ 0.000000e+00, %4988 ]
  %5049 = phi float [ %5043, %5015 ], [ 0.000000e+00, %4988 ]
  %5050 = call float @dx.op.dot3.f32(i32 55, float %5045, float %5046, float %5047, float %3884, float %3885, float %3886)  ; Dot3(ax,ay,az,bx,by,bz)
  %5051 = fmul fast float %5050, %5050
  %5052 = fmul fast float %5051, 0x3FEE471020000000
  %5053 = fadd fast float %5052, 0xBFD42F6020000000
  %5054 = fmul fast float %5010, 0x3FD20DD760000000
  %5055 = fmul fast float %5053, %5049
  %5056 = fmul fast float %5048, 0x3FDF454380000000
  %5057 = fmul fast float %5056, %5050
  %5058 = fadd fast float %5057, %5054
  %5059 = fadd fast float %5058, %5055
  %5060 = call float @dx.op.dot3.f32(i32 55, float %5045, float %5046, float %5047, float %3898, float %3899, float %3900)  ; Dot3(ax,ay,az,bx,by,bz)
  %5061 = fmul fast float %5060, 0x3FDF454380000000
  %5062 = fmul fast float %5060, %5060
  %5063 = fmul fast float %5062, 0x3FEE471020000000
  %5064 = fadd fast float %5063, 0xBFD42F6020000000
  %5065 = call float @dx.op.dot3.f32(i32 55, float %5010, float %5048, float %5049, float 0x3FD20DD760000000, float %5061, float %5064)  ; Dot3(ax,ay,az,bx,by,bz)
  %5066 = call float @dx.op.binary.f32(i32 35, float %4947, float 0.000000e+00)  ; FMax(a,b)
  %5067 = call float @dx.op.binary.f32(i32 35, float %5003, float 0.000000e+00)  ; FMax(a,b)
  %5068 = call float @dx.op.binary.f32(i32 35, float %5059, float 0.000000e+00)  ; FMax(a,b)
  %5069 = call float @dx.op.binary.f32(i32 35, float %4953, float 0.000000e+00)  ; FMax(a,b)
  %5070 = call float @dx.op.binary.f32(i32 35, float %5009, float 0.000000e+00)  ; FMax(a,b)
  %5071 = call float @dx.op.binary.f32(i32 35, float %5065, float 0.000000e+00)  ; FMax(a,b)
  %5072 = fsub fast float %4268, %5066
  %5073 = fsub fast float %4269, %5067
  %5074 = fsub fast float %4270, %5068
  %5075 = fmul fast float %5072, %3949
  %5076 = fmul fast float %5073, %3949
  %5077 = fmul fast float %5074, %3949
  %5078 = fadd fast float %5075, %5066
  %5079 = fadd fast float %5076, %5067
  %5080 = fadd fast float %5077, %5068
  %5081 = fsub fast float %4265, %5069
  %5082 = fsub fast float %4266, %5070
  %5083 = fsub fast float %4267, %5071
  %5084 = fmul fast float %5081, %3949
  %5085 = fmul fast float %5082, %3949
  %5086 = fmul fast float %5083, %3949
  %5087 = fadd fast float %5084, %5069
  %5088 = fadd fast float %5085, %5070
  %5089 = fadd fast float %5086, %5071
  br label %5090

; <label>:5090                                    ; preds = %5044, %4264
  %5091 = phi float [ %5087, %5044 ], [ %4265, %4264 ]
  %5092 = phi float [ %5088, %5044 ], [ %4266, %4264 ]
  %5093 = phi float [ %5089, %5044 ], [ %4267, %4264 ]
  %5094 = phi float [ %5078, %5044 ], [ %4268, %4264 ]
  %5095 = phi float [ %5079, %5044 ], [ %4269, %4264 ]
  %5096 = phi float [ %5080, %5044 ], [ %4270, %4264 ]
  %5097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5098 = extractvalue %dx.types.CBufRet.f32 %5097, 0
  %5099 = call float @dx.op.binary.f32(i32 36, float %3881, float %5098)  ; FMin(a,b)
  %5100 = fsub fast float 1.000000e+00, %3901
  %5101 = fmul fast float %5099, %5100
  %5102 = fsub fast float 1.000000e+00, %5101
  %5103 = bitcast float %5102 to i32
  %5104 = sub nsw i32 2129859010, %5103
  %5105 = bitcast i32 %5104 to float
  %5106 = call float @dx.op.binary.f32(i32 36, float %3882, float %5098)  ; FMin(a,b)
  %5107 = fmul fast float %5106, %5100
  %5108 = fsub fast float 1.000000e+00, %5107
  %5109 = bitcast float %5108 to i32
  %5110 = sub nsw i32 2129859010, %5109
  %5111 = bitcast i32 %5110 to float
  %5112 = call float @dx.op.binary.f32(i32 36, float %3883, float %5098)  ; FMin(a,b)
  %5113 = fmul fast float %5112, %5100
  %5114 = fsub fast float 1.000000e+00, %5113
  %5115 = bitcast float %5114 to i32
  %5116 = sub nsw i32 2129859010, %5115
  %5117 = bitcast i32 %5116 to float
  %5118 = fmul fast float %5094, %3901
  %5119 = fmul fast float %5118, %5105
  %5120 = fmul fast float %5095, %3901
  %5121 = fmul fast float %5120, %5111
  %5122 = fmul fast float %5096, %3901
  %5123 = fmul fast float %5122, %5117
  %5124 = call float @dx.op.binary.f32(i32 36, float %3878, float %5098)  ; FMin(a,b)
  %5125 = fmul fast float %5124, %5100
  %5126 = fsub fast float 1.000000e+00, %5125
  %5127 = bitcast float %5126 to i32
  %5128 = sub nsw i32 2129859010, %5127
  %5129 = bitcast i32 %5128 to float
  %5130 = call float @dx.op.binary.f32(i32 36, float %3879, float %5098)  ; FMin(a,b)
  %5131 = fmul fast float %5130, %5100
  %5132 = fsub fast float 1.000000e+00, %5131
  %5133 = bitcast float %5132 to i32
  %5134 = sub nsw i32 2129859010, %5133
  %5135 = bitcast i32 %5134 to float
  %5136 = call float @dx.op.binary.f32(i32 36, float %3890, float %5098)  ; FMin(a,b)
  %5137 = fmul fast float %5136, %5100
  %5138 = fsub fast float 1.000000e+00, %5137
  %5139 = bitcast float %5138 to i32
  %5140 = sub nsw i32 2129859010, %5139
  %5141 = bitcast i32 %5140 to float
  %5142 = fmul fast float %5091, %3901
  %5143 = fmul fast float %5142, %5129
  %5144 = fmul fast float %5092, %3901
  %5145 = fmul fast float %5144, %5135
  %5146 = fmul fast float %5093, %3901
  %5147 = fmul fast float %5146, %5141
  %5148 = call float @dx.op.dot3.f32(i32 55, float %5119, float %5121, float %5123, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5149 = select i1 %243, float 0.000000e+00, float %5119
  %5150 = select i1 %243, float %5148, float %5121
  %5151 = select i1 %243, float 0.000000e+00, float %5123
  %5152 = call float @dx.op.dot3.f32(i32 55, float %5143, float %5145, float %5147, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5153 = select i1 %243, float 0.000000e+00, float %5143
  %5154 = select i1 %243, float %5152, float %5145
  %5155 = select i1 %243, float 0.000000e+00, float %5147
  %5156 = fmul fast float %3892, 9.843750e-01
  %5157 = fmul fast float %3887, 9.843750e-01
  %5158 = fadd fast float %5156, 7.812500e-03
  %5159 = fadd fast float %5157, 7.812500e-03
  %5160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5158, float %5159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5161 = extractvalue %dx.types.ResRet.f32 %5160, 2
  %5162 = extractvalue %dx.types.ResRet.f32 %5160, 3
  %5163 = fmul fast float %5161, %3878
  %5164 = fmul fast float %5161, %3879
  %5165 = fmul fast float %5161, %3890
  %5166 = fadd fast float %5163, %5162
  %5167 = fadd fast float %5164, %5162
  %5168 = fadd fast float %5165, %5162
  %5169 = fcmp fast ogt float %3255, 0.000000e+00
  br i1 %5169, label %5170, label %5196

; <label>:5170                                    ; preds = %5090
  %5171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %3255, float %3892, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5172 = extractvalue %dx.types.ResRet.f32 %5171, 0
  %5173 = extractvalue %dx.types.ResRet.f32 %5171, 1
  %5174 = extractvalue %dx.types.ResRet.f32 %5171, 2
  %5175 = fadd fast float %5172, -5.000000e-01
  %5176 = fadd fast float %5173, -5.000000e-01
  %5177 = fadd fast float %5174, -5.000000e-01
  %5178 = fsub fast float 1.000000e+00, %3878
  %5179 = fsub fast float 1.000000e+00, %3879
  %5180 = fsub fast float 1.000000e+00, %3890
  %5181 = fmul fast float %3878, 4.000000e+00
  %5182 = fmul fast float %5181, %5178
  %5183 = fmul fast float %5182, %5175
  %5184 = fmul fast float %3879, 4.000000e+00
  %5185 = fmul fast float %5184, %5179
  %5186 = fmul fast float %5185, %5176
  %5187 = fmul fast float %3890, 4.000000e+00
  %5188 = fmul fast float %5187, %5180
  %5189 = fmul fast float %5188, %5177
  %5190 = fadd fast float %5183, %5166
  %5191 = fadd fast float %5186, %5167
  %5192 = fadd fast float %5189, %5168
  %5193 = call float @dx.op.unary.f32(i32 7, float %5190)  ; Saturate(value)
  %5194 = call float @dx.op.unary.f32(i32 7, float %5191)  ; Saturate(value)
  %5195 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  br label %5196

; <label>:5196                                    ; preds = %5170, %5090
  %5197 = phi float [ %5193, %5170 ], [ %5166, %5090 ]
  %5198 = phi float [ %5194, %5170 ], [ %5167, %5090 ]
  %5199 = phi float [ %5195, %5170 ], [ %5168, %5090 ]
  %5200 = call float @dx.op.binary.f32(i32 35, float %5198, float %5199)  ; FMax(a,b)
  %5201 = call float @dx.op.binary.f32(i32 35, float %5197, float %5200)  ; FMax(a,b)
  %5202 = fsub fast float 1.000000e+00, %5201
  %5203 = fmul fast float %5202, %5149
  %5204 = fmul fast float %5202, %5150
  %5205 = fmul fast float %5202, %5151
  %5206 = call float @dx.op.dot3.f32(i32 55, float %3881, float %3882, float %3883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5207 = fcmp fast ogt float %5206, 0x3E7FF19E20000000
  %5208 = fdiv fast float 1.000000e+00, %5206
  %5209 = select i1 %5207, float %5208, float 0.000000e+00
  %5210 = fmul fast float %5209, %3881
  %5211 = fmul fast float %5209, %3882
  %5212 = fmul fast float %5209, %3883
  %5213 = fadd fast float %5210, -1.000000e+00
  %5214 = fadd fast float %5211, -1.000000e+00
  %5215 = fadd fast float %5212, -1.000000e+00
  %5216 = fmul fast float %5213, 5.000000e-01
  %5217 = fmul fast float %5214, 5.000000e-01
  %5218 = fmul fast float %5215, 5.000000e-01
  %5219 = fadd fast float %5216, 1.000000e+00
  %5220 = fadd fast float %5217, 1.000000e+00
  %5221 = fadd fast float %5218, 1.000000e+00
  %5222 = fmul fast float %5197, %5153
  %5223 = fmul fast float %5198, %5154
  %5224 = fmul fast float %5199, %5155
  %5225 = fsub fast float 1.000000e+00, %3892
  %5226 = bitcast float %5225 to i32
  %5227 = sitofp i32 %5226 to float
  %5228 = fmul fast float %5227, 5.000000e+00
  %5229 = fadd fast float %5228, 0xC1EFBF8940000000
  %5230 = fptosi float %5229 to i32
  %5231 = bitcast i32 %5230 to float
  %5232 = fmul fast float %5231, %3254
  %5233 = fmul fast float %5149, %5232
  %5234 = fmul fast float %5233, %5202
  %5235 = fmul fast float %5234, %5219
  %5236 = fmul fast float %5150, %5232
  %5237 = fmul fast float %5236, %5202
  %5238 = fmul fast float %5237, %5220
  %5239 = fmul fast float %5151, %5232
  %5240 = fmul fast float %5239, %5202
  %5241 = fmul fast float %5240, %5221
  %5242 = fmul fast float %5203, %3275
  %5243 = fmul fast float %5204, %3275
  %5244 = fmul fast float %5205, %3275
  %5245 = fadd fast float %5222, %3256
  %5246 = fadd fast float %5245, %5235
  %5247 = fmul fast float %5246, %3275
  %5248 = fadd fast float %5223, %3257
  %5249 = fadd fast float %5248, %5238
  %5250 = fmul fast float %5249, %3275
  %5251 = fadd fast float %5224, %3258
  %5252 = fadd fast float %5251, %5241
  %5253 = fmul fast float %5252, %3275
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 3
  %5256 = fcmp fast oeq float %5255, 0.000000e+00
  br i1 %5256, label %6321, label %5257

; <label>:5257                                    ; preds = %5196
  %5258 = extractvalue %dx.types.CBufRet.f32 %5254, 0
  %5259 = extractvalue %dx.types.CBufRet.f32 %5254, 1
  %5260 = extractvalue %dx.types.CBufRet.f32 %5254, 2
  %5261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5262 = extractvalue %dx.types.CBufRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.CBufRet.f32 %5261, 1
  %5264 = extractvalue %dx.types.CBufRet.f32 %5261, 2
  %5265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5266 = extractvalue %dx.types.CBufRet.f32 %5265, 0
  %5267 = extractvalue %dx.types.CBufRet.f32 %5265, 1
  %5268 = call float @dx.op.dot3.f32(i32 55, float %5262, float %5263, float %5264, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5269 = select i1 %243, float %5266, float %5262
  %5270 = select i1 %243, float %5268, float %5263
  %5271 = select i1 %243, float %5267, float %5264
  %5272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5273 = extractvalue %dx.types.CBufRet.f32 %5272, 2
  %5274 = fmul fast float %5273, %78
  %5275 = fmul fast float %5273, %79
  %5276 = fmul fast float %5273, %80
  %5277 = fadd fast float %5274, %152
  %5278 = fadd fast float %5275, %153
  %5279 = fadd fast float %5276, %154
  %5280 = fcmp fast olt float %5255, 0.000000e+00
  br i1 %5280, label %5902, label %5281

; <label>:5281                                    ; preds = %5257
  %5282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5283 = extractvalue %dx.types.CBufRet.f32 %5282, 0
  %5284 = extractvalue %dx.types.CBufRet.f32 %5282, 1
  %5285 = extractvalue %dx.types.CBufRet.f32 %5282, 2
  %5286 = extractvalue %dx.types.CBufRet.f32 %5282, 3
  %5287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5288 = extractvalue %dx.types.CBufRet.f32 %5287, 0
  %5289 = extractvalue %dx.types.CBufRet.f32 %5287, 1
  %5290 = extractvalue %dx.types.CBufRet.f32 %5287, 2
  %5291 = extractvalue %dx.types.CBufRet.f32 %5287, 3
  %5292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5293 = extractvalue %dx.types.CBufRet.f32 %5292, 0
  %5294 = extractvalue %dx.types.CBufRet.f32 %5292, 1
  %5295 = extractvalue %dx.types.CBufRet.f32 %5292, 2
  %5296 = extractvalue %dx.types.CBufRet.f32 %5292, 3
  %5297 = fmul fast float %5283, %5277
  %5298 = call float @dx.op.tertiary.f32(i32 46, float %5278, float %5284, float %5297)  ; FMad(a,b,c)
  %5299 = call float @dx.op.tertiary.f32(i32 46, float %5279, float %5285, float %5298)  ; FMad(a,b,c)
  %5300 = fadd fast float %5299, %5286
  %5301 = fmul fast float %5288, %5277
  %5302 = call float @dx.op.tertiary.f32(i32 46, float %5278, float %5289, float %5301)  ; FMad(a,b,c)
  %5303 = call float @dx.op.tertiary.f32(i32 46, float %5279, float %5290, float %5302)  ; FMad(a,b,c)
  %5304 = fadd fast float %5303, %5291
  %5305 = fmul fast float %5293, %5277
  %5306 = call float @dx.op.tertiary.f32(i32 46, float %5278, float %5294, float %5305)  ; FMad(a,b,c)
  %5307 = call float @dx.op.tertiary.f32(i32 46, float %5279, float %5295, float %5306)  ; FMad(a,b,c)
  %5308 = fadd fast float %5307, %5296
  %5309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5310 = extractvalue %dx.types.CBufRet.f32 %5309, 0
  %5311 = extractvalue %dx.types.CBufRet.f32 %5309, 1
  %5312 = extractvalue %dx.types.CBufRet.f32 %5309, 3
  %5313 = fmul fast float %5312, %5300
  %5314 = fmul fast float %5312, %5304
  %5315 = fadd fast float %5313, %5310
  %5316 = fadd fast float %5314, %5311
  %5317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5318 = extractvalue %dx.types.CBufRet.f32 %5317, 0
  %5319 = extractvalue %dx.types.CBufRet.f32 %5317, 1
  %5320 = extractvalue %dx.types.CBufRet.f32 %5317, 3
  %5321 = fmul fast float %5320, %5300
  %5322 = fmul fast float %5320, %5304
  %5323 = fadd fast float %5321, %5318
  %5324 = fadd fast float %5322, %5319
  %5325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5326 = extractvalue %dx.types.CBufRet.f32 %5325, 1
  %5327 = fsub fast float %5326, %5308
  %5328 = extractvalue %dx.types.CBufRet.f32 %5325, 2
  %5329 = fmul fast float %5327, %5328
  %5330 = fsub fast float 1.000000e+00, %5329
  %5331 = call float @dx.op.unary.f32(i32 7, float %5330)  ; Saturate(value)
  %5332 = extractvalue %dx.types.CBufRet.f32 %5317, 2
  %5333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5334 = extractvalue %dx.types.CBufRet.f32 %5333, 2
  %5335 = fadd fast float %5334, %5332
  %5336 = fcmp fast ogt float %5335, 0.000000e+00
  br i1 %5336, label %5337, label %5361

; <label>:5337                                    ; preds = %5281
  %5338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5339 = extractvalue %dx.types.CBufRet.f32 %5338, 0
  %5340 = extractvalue %dx.types.CBufRet.f32 %5338, 1
  %5341 = fsub fast float %5323, %5339
  %5342 = fsub fast float %5324, %5340
  %5343 = fcmp fast olt float %5341, 0.000000e+00
  %5344 = fcmp fast olt float %5342, 0.000000e+00
  %5345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5346 = extractvalue %dx.types.CBufRet.f32 %5345, 0
  %5347 = extractvalue %dx.types.CBufRet.f32 %5345, 1
  %5348 = extractvalue %dx.types.CBufRet.f32 %5345, 2
  %5349 = extractvalue %dx.types.CBufRet.f32 %5345, 3
  %5350 = select i1 %5343, float %5346, float %5348
  %5351 = select i1 %5344, float %5347, float %5349
  %5352 = fmul fast float %5350, %5341
  %5353 = fmul fast float %5351, %5342
  %5354 = call float @dx.op.unary.f32(i32 6, float %5352)  ; FAbs(value)
  %5355 = call float @dx.op.unary.f32(i32 6, float %5353)  ; FAbs(value)
  %5356 = extractvalue %dx.types.CBufRet.f32 %5272, 0
  %5357 = call float @dx.op.binary.f32(i32 35, float %5354, float %5355)  ; FMax(a,b)
  %5358 = fsub fast float %5356, %5357
  %5359 = call float @dx.op.unary.f32(i32 7, float %5358)  ; Saturate(value)
  %5360 = fmul fast float %5359, %5331
  br label %5361

; <label>:5361                                    ; preds = %5337, %5281
  %5362 = phi float [ %5360, %5337 ], [ 0.000000e+00, %5281 ]
  %5363 = extractvalue %dx.types.CBufRet.f32 %5309, 2
  %5364 = extractvalue %dx.types.CBufRet.f32 %5333, 1
  %5365 = fadd fast float %5364, %5363
  %5366 = fcmp fast ogt float %5365, 0.000000e+00
  %5367 = extractvalue %dx.types.CBufRet.f32 %5272, 0
  br i1 %5366, label %5368, label %5391

; <label>:5368                                    ; preds = %5361
  %5369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5370 = extractvalue %dx.types.CBufRet.f32 %5369, 0
  %5371 = extractvalue %dx.types.CBufRet.f32 %5369, 1
  %5372 = fsub fast float %5315, %5370
  %5373 = fsub fast float %5316, %5371
  %5374 = fcmp fast olt float %5372, 0.000000e+00
  %5375 = fcmp fast olt float %5373, 0.000000e+00
  %5376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5377 = extractvalue %dx.types.CBufRet.f32 %5376, 0
  %5378 = extractvalue %dx.types.CBufRet.f32 %5376, 1
  %5379 = extractvalue %dx.types.CBufRet.f32 %5376, 2
  %5380 = extractvalue %dx.types.CBufRet.f32 %5376, 3
  %5381 = select i1 %5374, float %5377, float %5379
  %5382 = select i1 %5375, float %5378, float %5380
  %5383 = fmul fast float %5381, %5372
  %5384 = fmul fast float %5382, %5373
  %5385 = call float @dx.op.unary.f32(i32 6, float %5383)  ; FAbs(value)
  %5386 = call float @dx.op.unary.f32(i32 6, float %5384)  ; FAbs(value)
  %5387 = call float @dx.op.binary.f32(i32 35, float %5385, float %5386)  ; FMax(a,b)
  %5388 = fsub fast float %5367, %5387
  %5389 = call float @dx.op.unary.f32(i32 7, float %5388)  ; Saturate(value)
  %5390 = fmul fast float %5389, %5331
  br label %5391

; <label>:5391                                    ; preds = %5368, %5361
  %5392 = phi float [ %5390, %5368 ], [ 0.000000e+00, %5361 ]
  %5393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5394 = extractvalue %dx.types.CBufRet.f32 %5393, 1
  %5395 = call float @dx.op.unary.f32(i32 7, float %5394)  ; Saturate(value)
  %5396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5397 = extractvalue %dx.types.CBufRet.f32 %5396, 0
  %5398 = extractvalue %dx.types.CBufRet.f32 %5396, 1
  %5399 = fsub fast float %5300, %5397
  %5400 = fsub fast float %5304, %5398
  %5401 = fcmp fast olt float %5399, 0.000000e+00
  %5402 = fcmp fast olt float %5400, 0.000000e+00
  %5403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5404 = extractvalue %dx.types.CBufRet.f32 %5403, 0
  %5405 = extractvalue %dx.types.CBufRet.f32 %5403, 1
  %5406 = extractvalue %dx.types.CBufRet.f32 %5403, 2
  %5407 = extractvalue %dx.types.CBufRet.f32 %5403, 3
  %5408 = select i1 %5401, float %5404, float %5406
  %5409 = select i1 %5402, float %5405, float %5407
  %5410 = fmul fast float %5408, %5399
  %5411 = fmul fast float %5409, %5400
  %5412 = call float @dx.op.unary.f32(i32 6, float %5410)  ; FAbs(value)
  %5413 = call float @dx.op.unary.f32(i32 6, float %5411)  ; FAbs(value)
  %5414 = call float @dx.op.binary.f32(i32 35, float %5412, float %5413)  ; FMax(a,b)
  %5415 = fsub fast float %5367, %5414
  %5416 = call float @dx.op.unary.f32(i32 7, float %5415)  ; Saturate(value)
  %5417 = call float @dx.op.binary.f32(i32 36, float %5416, float %5395)  ; FMin(a,b)
  %5418 = fmul fast float %5417, %5331
  %5419 = fsub fast float %5392, %5418
  %5420 = fsub fast float %5362, %5392
  %5421 = fsub fast float %5420, %5418
  %5422 = call float @dx.op.binary.f32(i32 35, float %5392, float %5362)  ; FMax(a,b)
  %5423 = call float @dx.op.binary.f32(i32 35, float %5418, float %5422)  ; FMax(a,b)
  %5424 = fcmp fast olt float %5423, 1.000000e+00
  br i1 %5424, label %5425, label %5823, !dx.controlflow.hints !111

; <label>:5425                                    ; preds = %5391
  %5426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5427 = extractvalue %dx.types.CBufRet.f32 %5426, 0
  %5428 = fcmp fast une float %5427, 0.000000e+00
  br i1 %5428, label %5429, label %5823, !dx.controlflow.hints !112

; <label>:5429                                    ; preds = %5425
  %5430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5431 = extractvalue %dx.types.CBufRet.f32 %5430, 0
  %5432 = extractvalue %dx.types.CBufRet.f32 %5430, 1
  %5433 = extractvalue %dx.types.CBufRet.f32 %5430, 2
  %5434 = extractvalue %dx.types.CBufRet.f32 %5430, 3
  %5435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5436 = extractvalue %dx.types.CBufRet.f32 %5435, 0
  %5437 = extractvalue %dx.types.CBufRet.f32 %5435, 1
  %5438 = extractvalue %dx.types.CBufRet.f32 %5435, 2
  %5439 = extractvalue %dx.types.CBufRet.f32 %5435, 3
  %5440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5441 = extractvalue %dx.types.CBufRet.f32 %5440, 0
  %5442 = extractvalue %dx.types.CBufRet.f32 %5440, 1
  %5443 = extractvalue %dx.types.CBufRet.f32 %5440, 2
  %5444 = extractvalue %dx.types.CBufRet.f32 %5440, 3
  %5445 = fmul fast float %5431, %5277
  %5446 = call float @dx.op.tertiary.f32(i32 46, float %5278, float %5432, float %5445)  ; FMad(a,b,c)
  %5447 = call float @dx.op.tertiary.f32(i32 46, float %5279, float %5433, float %5446)  ; FMad(a,b,c)
  %5448 = fadd fast float %5447, %5434
  %5449 = fmul fast float %5436, %5277
  %5450 = call float @dx.op.tertiary.f32(i32 46, float %5278, float %5437, float %5449)  ; FMad(a,b,c)
  %5451 = call float @dx.op.tertiary.f32(i32 46, float %5279, float %5438, float %5450)  ; FMad(a,b,c)
  %5452 = fadd fast float %5451, %5439
  %5453 = fmul fast float %5441, %5277
  %5454 = call float @dx.op.tertiary.f32(i32 46, float %5278, float %5442, float %5453)  ; FMad(a,b,c)
  %5455 = call float @dx.op.tertiary.f32(i32 46, float %5279, float %5443, float %5454)  ; FMad(a,b,c)
  %5456 = fadd fast float %5455, %5444
  %5457 = fcmp fast oge float %5448, 1.000000e+00
  %5458 = fcmp fast oge float %5452, 1.000000e+00
  %5459 = or i1 %5457, %5458
  %5460 = fcmp fast olt float %5448, 0.000000e+00
  %5461 = fcmp fast olt float %5452, 0.000000e+00
  %5462 = or i1 %5460, %5461
  %5463 = or i1 %5459, %5462
  br i1 %5463, label %5823, label %5464, !dx.controlflow.hints !113

; <label>:5464                                    ; preds = %5429
  %5465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5466 = extractvalue %dx.types.CBufRet.f32 %5465, 0
  %5467 = extractvalue %dx.types.CBufRet.f32 %5465, 1
  %5468 = extractvalue %dx.types.CBufRet.f32 %5465, 2
  %5469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5470 = extractvalue %dx.types.CBufRet.i32 %5469, 2
  %5471 = uitofp i32 %5470 to float
  %5472 = extractvalue %dx.types.CBufRet.i32 %5469, 3
  %5473 = uitofp i32 %5472 to float
  %5474 = extractvalue %dx.types.CBufRet.f32 %5465, 3
  %5475 = fmul fast float %5474, 2.000000e+00
  %5476 = fsub fast float %5448, %5466
  %5477 = fsub fast float %5452, %5467
  %5478 = fmul fast float %5475, %5476
  %5479 = fmul fast float %5475, %5477
  %5480 = fdiv fast float 1.000000e+00, %5260
  %5481 = fmul fast float %5479, %5480
  %5482 = call float @dx.op.unary.f32(i32 6, float %5481)  ; FAbs(value)
  %5483 = fmul fast float %5468, %5279
  %5484 = fmul fast float %5483, %5475
  %5485 = call float @dx.op.unary.f32(i32 6, float %5484)  ; FAbs(value)
  %5486 = call float @dx.op.unary.f32(i32 6, float %5478)  ; FAbs(value)
  %5487 = call float @dx.op.binary.f32(i32 35, float %5485, float %5482)  ; FMax(a,b)
  %5488 = call float @dx.op.binary.f32(i32 35, float %5486, float %5487)  ; FMax(a,b)
  %5489 = fmul fast float %5488, 2.000000e+00
  %5490 = call float @dx.op.unary.f32(i32 23, float %5489)  ; Log(value)
  %5491 = call float @dx.op.binary.f32(i32 35, float %5490, float %5471)  ; FMax(a,b)
  %5492 = call float @dx.op.unary.f32(i32 22, float %5491)  ; Frc(value)
  %5493 = fadd fast float %5492, 0xBFEA666660000000
  %5494 = fmul fast float %5493, 8.000000e+00
  %5495 = call float @dx.op.unary.f32(i32 7, float %5494)  ; Saturate(value)
  %5496 = call float @dx.op.unary.f32(i32 27, float %5491)  ; Round_ni(value)
  %5497 = fadd fast float %5496, %5495
  %5498 = call float @dx.op.binary.f32(i32 36, float %5497, float %5473)  ; FMin(a,b)
  %5499 = call float @dx.op.unary.f32(i32 27, float %5498)  ; Round_ni(value)
  %5500 = fsub fast float -0.000000e+00, %5499
  %5501 = call float @dx.op.unary.f32(i32 21, float %5500)  ; Exp(value)
  %5502 = fmul fast float %5501, %5475
  %5503 = fmul fast float %5502, %5448
  %5504 = fmul fast float %5502, %5452
  %5505 = fmul fast float %5503, 2.500000e-01
  %5506 = fmul fast float %5504, 2.500000e-01
  %5507 = fadd fast float %5505, 5.000000e-01
  %5508 = fadd fast float %5506, 5.000000e-01
  %5509 = fsub fast float %5473, %5471
  %5510 = fptoui float %5509 to i32
  %5511 = add i32 %5510, 320
  %5512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %5511)  ; CBufferLoadLegacy(handle,regIndex)
  %5513 = extractvalue %dx.types.CBufRet.f32 %5512, 0
  %5514 = extractvalue %dx.types.CBufRet.f32 %5512, 1
  %5515 = fcmp fast une float %5498, %5473
  %5516 = fsub fast float %5448, %5513
  %5517 = fsub fast float %5452, %5514
  %5518 = call float @dx.op.unary.f32(i32 6, float %5516)  ; FAbs(value)
  %5519 = call float @dx.op.unary.f32(i32 6, float %5517)  ; FAbs(value)
  %5520 = fmul fast float %5518, %5502
  %5521 = fmul fast float %5519, %5502
  %5522 = fcmp fast olt float %5520, 1.000000e+00
  %5523 = fcmp fast olt float %5521, 1.000000e+00
  %5524 = and i1 %5522, %5523
  %5525 = or i1 %5515, %5524
  br i1 %5525, label %5526, label %5823, !dx.controlflow.hints !114

; <label>:5526                                    ; preds = %5464
  %5527 = fmul fast float %5504, 5.000000e-01
  %5528 = fmul fast float %5503, 5.000000e-01
  %5529 = fadd fast float %5527, 5.000000e-01
  %5530 = fadd fast float %5528, 5.000000e-01
  %5531 = sitofp i32 %5470 to float
  %5532 = fsub fast float %5498, %5531
  %5533 = call float @dx.op.unary.f32(i32 27, float %5532)  ; Round_ni(value)
  %5534 = call float @dx.op.unary.f32(i32 22, float %5498)  ; Frc(value)
  %5535 = call float @dx.op.unary.f32(i32 22, float %5530)  ; Frc(value)
  %5536 = call float @dx.op.unary.f32(i32 22, float %5529)  ; Frc(value)
  %5537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %5535, float %5536, float %5533, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5538 = extractvalue %dx.types.ResRet.f32 %5537, 0
  %5539 = extractvalue %dx.types.ResRet.f32 %5537, 1
  %5540 = extractvalue %dx.types.ResRet.f32 %5537, 2
  %5541 = extractvalue %dx.types.ResRet.f32 %5537, 3
  %5542 = fcmp fast ogt float %5534, 0.000000e+00
  br i1 %5542, label %5543, label %5564, !dx.controlflow.hints !115

; <label>:5543                                    ; preds = %5526
  %5544 = fadd fast float %5533, 1.000000e+00
  %5545 = call float @dx.op.unary.f32(i32 22, float %5507)  ; Frc(value)
  %5546 = call float @dx.op.unary.f32(i32 22, float %5508)  ; Frc(value)
  %5547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %5545, float %5546, float %5544, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5548 = extractvalue %dx.types.ResRet.f32 %5547, 0
  %5549 = extractvalue %dx.types.ResRet.f32 %5547, 1
  %5550 = extractvalue %dx.types.ResRet.f32 %5547, 2
  %5551 = extractvalue %dx.types.ResRet.f32 %5547, 3
  %5552 = fsub fast float %5548, %5538
  %5553 = fsub fast float %5549, %5539
  %5554 = fsub fast float %5550, %5540
  %5555 = fsub fast float %5551, %5541
  %5556 = fmul fast float %5552, %5534
  %5557 = fmul fast float %5553, %5534
  %5558 = fmul fast float %5554, %5534
  %5559 = fmul fast float %5555, %5534
  %5560 = fadd fast float %5556, %5538
  %5561 = fadd fast float %5557, %5539
  %5562 = fadd fast float %5558, %5540
  %5563 = fadd fast float %5559, %5541
  br label %5564

; <label>:5564                                    ; preds = %5543, %5526
  %5565 = phi float [ %5560, %5543 ], [ %5538, %5526 ]
  %5566 = phi float [ %5561, %5543 ], [ %5539, %5526 ]
  %5567 = phi float [ %5562, %5543 ], [ %5540, %5526 ]
  %5568 = phi float [ %5563, %5543 ], [ %5541, %5526 ]
  %5569 = fadd fast float %5565, -5.000000e-01
  %5570 = fadd fast float %5567, -5.000000e-01
  %5571 = fmul fast float %5569, 0xBFD5555560000000
  %5572 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5570, float %5571)  ; FMad(a,b,c)
  %5573 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5566, float 0.000000e+00)  ; FMad(a,b,c)
  %5574 = fadd fast float %5573, %5568
  %5575 = fmul fast float %5569, -7.500000e-01
  %5576 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5570, float %5575)  ; FMad(a,b,c)
  %5577 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5566, float 0.000000e+00)  ; FMad(a,b,c)
  %5578 = fadd fast float %5577, %5568
  %5579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5580 = extractvalue %dx.types.CBufRet.f32 %5579, 0
  %5581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5582 = extractvalue %dx.types.CBufRet.f32 %5581, 0
  %5583 = extractvalue %dx.types.CBufRet.f32 %5581, 1
  %5584 = extractvalue %dx.types.CBufRet.f32 %5581, 2
  %5585 = extractvalue %dx.types.CBufRet.f32 %5581, 3
  %5586 = fsub fast float %5582, %5572
  %5587 = fsub fast float %5583, %5574
  %5588 = fsub fast float %5584, %5576
  %5589 = fsub fast float %5585, %5578
  %5590 = fmul fast float %5586, %5580
  %5591 = fmul fast float %5587, %5580
  %5592 = fmul fast float %5588, %5580
  %5593 = fmul fast float %5589, %5580
  %5594 = fadd fast float %5590, %5572
  %5595 = fadd fast float %5591, %5574
  %5596 = fadd fast float %5592, %5576
  %5597 = fadd fast float %5593, %5578
  %5598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5599 = extractvalue %dx.types.ResRet.i32 %5598, 0
  %5600 = and i32 %5599, 536870911
  %5601 = uitofp i32 %5600 to float
  %5602 = fmul fast float %5601, %5448
  %5603 = fmul fast float %5601, %5452
  %5604 = fptoui float %5602 to i32
  %5605 = fptoui float %5603 to i32
  %5606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5607 = extractvalue %dx.types.ResRet.i32 %5606, 0
  %5608 = and i32 %5607, 31
  %5609 = lshr i32 %5604, %5608
  %5610 = lshr i32 %5605, %5608
  %5611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5612 = extractvalue %dx.types.ResRet.i32 %5611, 0
  %5613 = and i32 %5612, 31
  %5614 = shl i32 1, %5613
  %5615 = call i32 @dx.op.binary.i32(i32 40, i32 %5614, i32 4)  ; UMin(a,b)
  %5616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5617 = extractvalue %dx.types.ResRet.i32 %5616, 0
  %5618 = extractvalue %dx.types.ResRet.i32 %5616, 1
  %5619 = icmp eq i32 %5615, 0
  br i1 %5619, label %5661, label %5620

; <label>:5620                                    ; preds = %5564
  br label %5621

; <label>:5621                                    ; preds = %5649, %5620
  %5622 = phi i32 [ %5652, %5649 ], [ 0, %5620 ]
  %5623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5624 = extractvalue %dx.types.ResRet.i32 %5623, 0
  %5625 = lshr i32 %5624, 16
  %5626 = and i32 %5625, 31
  %5627 = shl i32 %5610, %5626
  %5628 = add i32 %5627, %5609
  %5629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5630 = extractvalue %dx.types.ResRet.i32 %5629, 0
  %5631 = and i32 %5630, 31
  %5632 = shl i32 %5628, %5631
  %5633 = add i32 %5632, %5622
  %5634 = shl i32 %5633, 2
  %5635 = add i32 %5634, 32
  %5636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5635, i32 undef)  ; BufferLoad(srv,index,wot)
  %5637 = extractvalue %dx.types.ResRet.i32 %5636, 0
  %5638 = icmp slt i32 %5637, 0
  %5639 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5622
  %5640 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5622
  %5641 = bitcast float* %5639 to i32*
  %5642 = bitcast float* %5640 to i32*
  br i1 %5638, label %5643, label %5649

; <label>:5643                                    ; preds = %5621
  %5644 = and i32 %5637, 1073741823
  %5645 = add nuw nsw i32 %5644, 20
  %5646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5645, i32 undef)  ; BufferLoad(srv,index,wot)
  %5647 = extractvalue %dx.types.ResRet.i32 %5646, 0
  %5648 = extractvalue %dx.types.ResRet.i32 %5646, 1
  br label %5649

; <label>:5649                                    ; preds = %5643, %5621
  %5650 = phi i32 [ %5647, %5643 ], [ %5617, %5621 ]
  %5651 = phi i32 [ %5648, %5643 ], [ %5618, %5621 ]
  store i32 %5650, i32* %5641, align 4
  store i32 %5651, i32* %5642, align 4
  %5652 = add nuw i32 %5622, 1
  %5653 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5654 = extractvalue %dx.types.CBufRet.i32 %5653, 2
  %5655 = icmp eq i32 %5654, 0
  %5656 = icmp ugt i32 %5637, -1073741825
  %5657 = and i1 %5656, %5655
  %5658 = icmp ult i32 %5652, %5615
  %5659 = and i1 %5657, %5658
  br i1 %5659, label %5621, label %5660

; <label>:5660                                    ; preds = %5649
  br label %5661

; <label>:5661                                    ; preds = %5660, %5564
  %5662 = phi i32 [ 0, %5564 ], [ %5652, %5660 ]
  %5663 = extractvalue %dx.types.CBufRet.f32 %5426, 2
  %5664 = fptoui float %5663 to i32
  %5665 = icmp eq i32 %5664, 0
  br i1 %5665, label %5717, label %5666

; <label>:5666                                    ; preds = %5661
  br label %5667

; <label>:5667                                    ; preds = %5712, %5666
  %5668 = phi i32 [ %5713, %5712 ], [ %5662, %5666 ]
  %5669 = phi i32 [ %5714, %5712 ], [ 0, %5666 ]
  %5670 = lshr i32 %5669, 2
  %5671 = and i32 %5669, 3
  %5672 = add nuw nsw i32 %5670, 83
  %5673 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 %5672)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.i32 %5673, 0
  %5675 = extractvalue %dx.types.CBufRet.i32 %5673, 1
  %5676 = extractvalue %dx.types.CBufRet.i32 %5673, 2
  %5677 = extractvalue %dx.types.CBufRet.i32 %5673, 3
  %5678 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 0
  store i32 %5674, i32* %5678, align 4
  %5679 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 1
  store i32 %5675, i32* %5679, align 4
  %5680 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 2
  store i32 %5676, i32* %5680, align 4
  %5681 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 3
  store i32 %5677, i32* %5681, align 4
  %5682 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 %5671
  %5683 = load i32, i32* %5682, align 4, !tbaa !116, !noalias !120
  %5684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5685 = extractvalue %dx.types.ResRet.i32 %5684, 0
  %5686 = lshr i32 %5685, 16
  %5687 = and i32 %5686, 31
  %5688 = shl i32 %5610, %5687
  %5689 = add i32 %5688, %5609
  %5690 = shl i32 %5689, 2
  %5691 = add i32 %5690, %5683
  %5692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5691, i32 undef)  ; BufferLoad(srv,index,wot)
  %5693 = extractvalue %dx.types.ResRet.i32 %5692, 0
  %5694 = icmp eq i32 %5693, 0
  br i1 %5694, label %5712, label %5695

; <label>:5695                                    ; preds = %5667
  %5696 = icmp slt i32 %5693, 0
  %5697 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5668
  %5698 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5668
  %5699 = bitcast float* %5697 to i32*
  %5700 = bitcast float* %5698 to i32*
  br i1 %5696, label %5701, label %5708

; <label>:5701                                    ; preds = %5695
  %5702 = and i32 %5693, 1073741823
  %5703 = add i32 %5683, 20
  %5704 = add i32 %5703, %5702
  %5705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5704, i32 undef)  ; BufferLoad(srv,index,wot)
  %5706 = extractvalue %dx.types.ResRet.i32 %5705, 0
  %5707 = extractvalue %dx.types.ResRet.i32 %5705, 1
  br label %5708

; <label>:5708                                    ; preds = %5701, %5695
  %5709 = phi i32 [ %5706, %5701 ], [ %5617, %5695 ]
  %5710 = phi i32 [ %5707, %5701 ], [ %5618, %5695 ]
  store i32 %5709, i32* %5699, align 4
  store i32 %5710, i32* %5700, align 4
  %5711 = add i32 %5668, 1
  br label %5712

; <label>:5712                                    ; preds = %5708, %5667
  %5713 = phi i32 [ %5668, %5667 ], [ %5711, %5708 ]
  %5714 = add nuw i32 %5669, 1
  %5715 = icmp eq i32 %5714, %5664
  br i1 %5715, label %5716, label %5667

; <label>:5716                                    ; preds = %5712
  br label %5717

; <label>:5717                                    ; preds = %5716, %5661
  %5718 = phi i32 [ %5662, %5661 ], [ %5713, %5716 ]
  %5719 = icmp eq i32 %5718, 1
  %5720 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  %5721 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  br i1 %5719, label %5722, label %5725

; <label>:5722                                    ; preds = %5717
  %5723 = load float, float* %5720, align 4
  %5724 = load float, float* %5721, align 4
  br label %5752

; <label>:5725                                    ; preds = %5717
  %5726 = load float, float* %5720, align 4
  %5727 = load float, float* %5721, align 4
  %5728 = fdiv fast float 1.000000e+00, %5727
  %5729 = fsub fast float %5726, %5728
  %5730 = icmp ugt i32 %5718, 1
  br i1 %5730, label %5731, label %5747

; <label>:5731                                    ; preds = %5725
  br label %5732

; <label>:5732                                    ; preds = %5732, %5731
  %5733 = phi float [ %5742, %5732 ], [ %5729, %5731 ]
  %5734 = phi float [ %5743, %5732 ], [ %5726, %5731 ]
  %5735 = phi i32 [ %5744, %5732 ], [ 1, %5731 ]
  %5736 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5735
  %5737 = load float, float* %5736, align 4
  %5738 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5735
  %5739 = load float, float* %5738, align 4
  %5740 = fdiv fast float 1.000000e+00, %5739
  %5741 = fsub fast float %5737, %5740
  %5742 = call float @dx.op.binary.f32(i32 36, float %5733, float %5741)  ; FMin(a,b)
  %5743 = call float @dx.op.binary.f32(i32 35, float %5734, float %5737)  ; FMax(a,b)
  %5744 = add nuw i32 %5735, 1
  %5745 = icmp eq i32 %5744, %5718
  br i1 %5745, label %5746, label %5732

; <label>:5746                                    ; preds = %5732
  br label %5747

; <label>:5747                                    ; preds = %5746, %5725
  %5748 = phi float [ %5729, %5725 ], [ %5742, %5746 ]
  %5749 = phi float [ %5726, %5725 ], [ %5743, %5746 ]
  %5750 = fsub fast float %5749, %5748
  %5751 = fdiv fast float 1.000000e+00, %5750
  br label %5752

; <label>:5752                                    ; preds = %5747, %5722
  %5753 = phi float [ %5723, %5722 ], [ %5749, %5747 ]
  %5754 = phi float [ %5724, %5722 ], [ %5751, %5747 ]
  %5755 = fadd fast float %5456, %5753
  %5756 = fmul fast float %5755, %5754
  %5757 = call float @dx.op.unary.f32(i32 7, float %5756)  ; Saturate(value)
  %5758 = fmul fast float %5757, 2.000000e+00
  %5759 = fsub fast float 1.000000e+00, %5758
  %5760 = fmul fast float %5594, %5594
  %5761 = fsub fast float %5595, %5760
  %5762 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5761)  ; FMax(a,b)
  %5763 = fdiv fast float 1.000000e+00, %5762
  %5764 = fmul fast float %5595, %5594
  %5765 = fsub fast float %5596, %5764
  %5766 = fsub fast float %5759, %5594
  %5767 = fmul fast float %5759, %5759
  %5768 = fsub fast float %5767, %5595
  %5769 = fmul fast float %5763, %5765
  %5770 = fmul fast float %5769, %5766
  %5771 = fsub fast float %5768, %5770
  %5772 = fmul fast float %5595, %5595
  %5773 = fsub fast float %5597, %5772
  %5774 = fmul fast float %5765, %5765
  %5775 = fmul fast float %5774, %5763
  %5776 = fsub fast float %5773, %5775
  %5777 = fdiv fast float %5771, %5776
  %5778 = fmul fast float %5777, %5765
  %5779 = fsub fast float %5766, %5778
  %5780 = fmul fast float %5779, %5763
  %5781 = fmul fast float %5780, %5594
  %5782 = fsub fast float 1.000000e+00, %5781
  %5783 = fmul fast float %5777, %5595
  %5784 = fsub fast float %5782, %5783
  %5785 = fmul fast float %5780, %5780
  %5786 = fmul fast float %5777, 4.000000e+00
  %5787 = fmul fast float %5786, %5784
  %5788 = fsub fast float %5785, %5787
  %5789 = call float @dx.op.unary.f32(i32 24, float %5788)  ; Sqrt(value)
  %5790 = fcmp fast oge float %5780, 0.000000e+00
  %5791 = fsub fast float -0.000000e+00, %5789
  %5792 = select i1 %5790, float %5791, float %5789
  %5793 = fsub fast float %5792, %5780
  %5794 = fdiv fast float %5793, %5777
  %5795 = fdiv fast float %5784, %5793
  %5796 = fmul fast float %5794, 5.000000e-01
  %5797 = fmul fast float %5795, 2.000000e+00
  %5798 = select i1 %5790, float %5796, float %5797
  %5799 = select i1 %5790, float %5797, float %5796
  %5800 = call float @dx.op.binary.f32(i32 35, float %5798, float %5799)  ; FMax(a,b)
  %5801 = call float @dx.op.binary.f32(i32 36, float %5798, float %5799)  ; FMin(a,b)
  %5802 = fcmp fast ogt float %5759, %5800
  %5803 = fsub fast float %5759, %5801
  %5804 = fsub fast float %5759, %5800
  %5805 = fsub fast float %5800, %5801
  %5806 = select i1 %5802, float %5804, float %5805
  %5807 = fmul float %5803, %5806
  %5808 = select i1 %5802, float %5801, float %5759
  %5809 = fcmp fast ogt float %5759, %5801
  %5810 = fmul fast float %5808, %5800
  %5811 = fadd fast float %5808, %5800
  %5812 = fmul fast float %5811, %5594
  %5813 = fadd fast float %5810, %5595
  %5814 = fsub fast float %5813, %5812
  %5815 = fdiv fast float %5814, %5807
  %5816 = select i1 %5809, float %5815, float 0.000000e+00
  %5817 = fsub fast float 1.000000e+00, %5816
  %5818 = select i1 %5802, float %5817, float %5816
  %5819 = call float @dx.op.unary.f32(i32 7, float %5818)  ; Saturate(value)
  %5820 = extractvalue %dx.types.CBufRet.f32 %5579, 3
  %5821 = fmul fast float %5820, %5819
  %5822 = fsub fast float 1.000000e+00, %5821
  br label %5823

; <label>:5823                                    ; preds = %5752, %5464, %5429, %5425, %5391
  %5824 = phi float [ 1.000000e+00, %5391 ], [ %5822, %5752 ], [ 1.000000e+00, %5429 ], [ 1.000000e+00, %5464 ], [ 1.000000e+00, %5425 ]
  %5825 = fcmp fast ogt float %5421, 0.000000e+00
  br i1 %5825, label %5826, label %5832, !dx.controlflow.hints !129

; <label>:5826                                    ; preds = %5823
  %5827 = fadd fast float %5334, %5308
  %5828 = call float @dx.op.binary.f32(i32 35, float %5827, float 0.000000e+00)  ; FMax(a,b)
  %5829 = fadd fast float %5828, 0x3F10000000000000
  %5830 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %5323, float %5324, float undef, float undef, i32 0, i32 0, i32 undef, float %5829)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5831 = extractvalue %dx.types.ResRet.f32 %5830, 0
  br label %5832

; <label>:5832                                    ; preds = %5826, %5823
  %5833 = phi float [ %5831, %5826 ], [ 1.000000e+00, %5823 ]
  %5834 = fcmp fast ogt float %5419, 0.000000e+00
  br i1 %5834, label %5835, label %5841, !dx.controlflow.hints !130

; <label>:5835                                    ; preds = %5832
  %5836 = fadd fast float %5364, %5308
  %5837 = call float @dx.op.binary.f32(i32 35, float %5836, float 0.000000e+00)  ; FMax(a,b)
  %5838 = fadd fast float %5837, 0x3F10000000000000
  %5839 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %5315, float %5316, float undef, float undef, i32 0, i32 0, i32 undef, float %5838)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5840 = extractvalue %dx.types.ResRet.f32 %5839, 0
  br label %5841

; <label>:5841                                    ; preds = %5835, %5832
  %5842 = phi float [ %5840, %5835 ], [ 1.000000e+00, %5832 ]
  %5843 = fcmp fast ogt float %5418, 0.000000e+00
  br i1 %5843, label %5844, label %5851, !dx.controlflow.hints !131

; <label>:5844                                    ; preds = %5841
  %5845 = extractvalue %dx.types.CBufRet.f32 %5333, 0
  %5846 = fadd fast float %5845, %5308
  %5847 = call float @dx.op.binary.f32(i32 35, float %5846, float 0.000000e+00)  ; FMax(a,b)
  %5848 = fadd fast float %5847, 0x3F10000000000000
  %5849 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %5300, float %5304, float undef, float undef, i32 0, i32 0, i32 undef, float %5848)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5850 = extractvalue %dx.types.ResRet.f32 %5849, 0
  br label %5851

; <label>:5851                                    ; preds = %5844, %5841
  %5852 = phi float [ %5850, %5844 ], [ 1.000000e+00, %5841 ]
  %5853 = fsub fast float %5833, %5824
  %5854 = fmul fast float %5853, %5362
  %5855 = fadd fast float %5854, %5824
  %5856 = fsub fast float %5842, %5855
  %5857 = fmul fast float %5856, %5392
  %5858 = fadd fast float %5857, %5855
  %5859 = fsub fast float %5852, %5858
  %5860 = fmul fast float %5859, %5418
  %5861 = fadd fast float %5860, %5858
  %5862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5863 = extractvalue %dx.types.CBufRet.f32 %5862, 2
  %5864 = fcmp fast ogt float %5863, 0.000000e+00
  br i1 %5864, label %5865, label %5902, !dx.controlflow.hints !132

; <label>:5865                                    ; preds = %5851
  %5866 = fcmp fast ugt float %5863, 0.000000e+00
  br i1 %5866, label %5867, label %5899

; <label>:5867                                    ; preds = %5865
  %5868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5869 = extractvalue %dx.types.CBufRet.f32 %5868, 0
  %5870 = extractvalue %dx.types.CBufRet.f32 %5868, 1
  %5871 = extractvalue %dx.types.CBufRet.f32 %5868, 2
  %5872 = extractvalue %dx.types.CBufRet.f32 %5868, 3
  %5873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5874 = extractvalue %dx.types.CBufRet.f32 %5873, 0
  %5875 = extractvalue %dx.types.CBufRet.f32 %5873, 1
  %5876 = extractvalue %dx.types.CBufRet.f32 %5873, 2
  %5877 = extractvalue %dx.types.CBufRet.f32 %5873, 3
  %5878 = extractvalue %dx.types.CBufRet.f32 %5862, 0
  %5879 = extractvalue %dx.types.CBufRet.f32 %5862, 1
  %5880 = extractvalue %dx.types.CBufRet.f32 %3905, 2
  %5881 = fadd fast float %3906, %5277
  %5882 = fadd fast float %3907, %5278
  %5883 = fadd fast float %5880, %5279
  %5884 = fmul fast float %5881, %5869
  %5885 = call float @dx.op.tertiary.f32(i32 46, float %5870, float %5882, float %5884)  ; FMad(a,b,c)
  %5886 = call float @dx.op.tertiary.f32(i32 46, float %5871, float %5883, float %5885)  ; FMad(a,b,c)
  %5887 = fadd fast float %5886, %5872
  %5888 = fmul fast float %5881, %5874
  %5889 = call float @dx.op.tertiary.f32(i32 46, float %5875, float %5882, float %5888)  ; FMad(a,b,c)
  %5890 = call float @dx.op.tertiary.f32(i32 46, float %5876, float %5883, float %5889)  ; FMad(a,b,c)
  %5891 = fadd fast float %5890, %5877
  %5892 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %55, float %5887, float %5891, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5893 = extractvalue %dx.types.ResRet.f32 %5892, 0
  %5894 = fmul fast float %5893, %5879
  %5895 = fadd fast float %5894, %5878
  %5896 = call float @dx.op.unary.f32(i32 7, float %5895)  ; Saturate(value)
  %5897 = fmul fast float %5896, %5863
  %5898 = fsub fast float 1.000000e+00, %5897
  br label %5899

; <label>:5899                                    ; preds = %5867, %5865
  %5900 = phi float [ %5898, %5867 ], [ 1.000000e+00, %5865 ]
  %5901 = fmul fast float %5900, %5861
  br label %5902

; <label>:5902                                    ; preds = %5899, %5851, %5257
  %5903 = phi float [ 1.000000e+00, %5257 ], [ %5901, %5899 ], [ %5861, %5851 ]
  %5904 = call float @dx.op.binary.f32(i32 36, float %5903, float %5903)  ; FMin(a,b)
  %5905 = call float @dx.op.binary.f32(i32 36, float %5903, float %5904)  ; FMin(a,b)
  %5906 = fcmp fast ogt float %5905, 0.000000e+00
  br i1 %5906, label %5907, label %6064, !dx.controlflow.hints !133

; <label>:5907                                    ; preds = %5902
  %5908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5909 = extractvalue %dx.types.CBufRet.f32 %5908, 0
  %5910 = extractvalue %dx.types.CBufRet.f32 %5908, 1
  %5911 = extractvalue %dx.types.CBufRet.f32 %5908, 2
  %5912 = extractvalue %dx.types.CBufRet.f32 %5908, 3
  %5913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5914 = extractvalue %dx.types.CBufRet.f32 %5913, 0
  %5915 = extractvalue %dx.types.CBufRet.f32 %5913, 1
  %5916 = extractvalue %dx.types.CBufRet.f32 %5913, 2
  %5917 = extractvalue %dx.types.CBufRet.f32 %5913, 3
  %5918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5919 = extractvalue %dx.types.CBufRet.f32 %5918, 0
  %5920 = extractvalue %dx.types.CBufRet.f32 %5918, 1
  %5921 = extractvalue %dx.types.CBufRet.f32 %5918, 2
  %5922 = extractvalue %dx.types.CBufRet.f32 %5918, 3
  %5923 = fmul fast float %5909, %5277
  %5924 = call float @dx.op.tertiary.f32(i32 46, float %5278, float %5910, float %5923)  ; FMad(a,b,c)
  %5925 = call float @dx.op.tertiary.f32(i32 46, float %5279, float %5911, float %5924)  ; FMad(a,b,c)
  %5926 = fadd fast float %5925, %5912
  %5927 = fmul fast float %5914, %5277
  %5928 = call float @dx.op.tertiary.f32(i32 46, float %5278, float %5915, float %5927)  ; FMad(a,b,c)
  %5929 = call float @dx.op.tertiary.f32(i32 46, float %5279, float %5916, float %5928)  ; FMad(a,b,c)
  %5930 = fadd fast float %5929, %5917
  %5931 = fmul fast float %5919, %5277
  %5932 = call float @dx.op.tertiary.f32(i32 46, float %5278, float %5920, float %5931)  ; FMad(a,b,c)
  %5933 = call float @dx.op.tertiary.f32(i32 46, float %5279, float %5921, float %5932)  ; FMad(a,b,c)
  %5934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5935 = extractvalue %dx.types.CBufRet.f32 %5934, 0
  %5936 = extractvalue %dx.types.CBufRet.f32 %5934, 1
  %5937 = extractvalue %dx.types.CBufRet.f32 %5934, 3
  %5938 = fmul fast float %5937, %5926
  %5939 = fmul fast float %5937, %5930
  %5940 = fadd fast float %5938, %5935
  %5941 = fadd fast float %5939, %5936
  %5942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5943 = extractvalue %dx.types.CBufRet.f32 %5942, 0
  %5944 = extractvalue %dx.types.CBufRet.f32 %5942, 1
  %5945 = fsub fast float %5940, %5943
  %5946 = fsub fast float %5941, %5944
  %5947 = fcmp fast olt float %5945, 0.000000e+00
  %5948 = fcmp fast olt float %5946, 0.000000e+00
  %5949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5950 = extractvalue %dx.types.CBufRet.f32 %5949, 0
  %5951 = extractvalue %dx.types.CBufRet.f32 %5949, 1
  %5952 = extractvalue %dx.types.CBufRet.f32 %5949, 2
  %5953 = extractvalue %dx.types.CBufRet.f32 %5949, 3
  %5954 = select i1 %5947, float %5950, float %5952
  %5955 = select i1 %5948, float %5951, float %5953
  %5956 = fmul fast float %5954, %5945
  %5957 = fmul fast float %5955, %5946
  %5958 = call float @dx.op.unary.f32(i32 6, float %5956)  ; FAbs(value)
  %5959 = call float @dx.op.unary.f32(i32 6, float %5957)  ; FAbs(value)
  %5960 = extractvalue %dx.types.CBufRet.f32 %5272, 0
  %5961 = call float @dx.op.binary.f32(i32 35, float %5958, float %5959)  ; FMax(a,b)
  %5962 = fsub fast float %5960, %5961
  %5963 = call float @dx.op.unary.f32(i32 7, float %5962)  ; Saturate(value)
  %5964 = fcmp fast ogt float %5963, 0.000000e+00
  br i1 %5964, label %5965, label %6006, !dx.controlflow.hints !134

; <label>:5965                                    ; preds = %5907
  %5966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %58, float %5940, float %5941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5967 = extractvalue %dx.types.ResRet.f32 %5966, 1
  %5968 = fcmp fast ogt float %5967, 0.000000e+00
  br i1 %5968, label %5969, label %6001

; <label>:5969                                    ; preds = %5965
  %5970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %58, float %5940, float %5941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5971 = extractvalue %dx.types.ResRet.f32 %5970, 0
  %5972 = extractvalue %dx.types.ResRet.f32 %5970, 1
  %5973 = extractvalue %dx.types.ResRet.f32 %5970, 2
  %5974 = extractvalue %dx.types.ResRet.f32 %5970, 3
  %5975 = fsub fast float 1.000000e+00, %5922
  %5976 = fsub fast float %5975, %5933
  %5977 = fmul fast float %5976, 0x400921FB60000000
  %5978 = fadd fast float %5977, 0x3FF921FB60000000
  %5979 = call float @dx.op.unary.f32(i32 13, float %5978)  ; Sin(value)
  %5980 = fadd fast float %5979, -1.000000e+00
  %5981 = fmul fast float %5980, 0x3FD45F3060000000
  %5982 = fmul fast float %5976, 0x401921FB60000000
  %5983 = fadd fast float %5982, 0x400921FB60000000
  %5984 = call float @dx.op.unary.f32(i32 13, float %5983)  ; Sin(value)
  %5985 = fadd fast float %5984, 0x3E7777A5C0000000
  %5986 = fmul fast float %5985, 0x3FC45F3060000000
  %5987 = fmul fast float %5976, 0x4022D97C80000000
  %5988 = fadd fast float %5987, 0x4012D97C80000000
  %5989 = call float @dx.op.unary.f32(i32 13, float %5988)  ; Sin(value)
  %5990 = fadd fast float %5989, 1.000000e+00
  %5991 = fmul fast float %5990, 0x3FBB2995E0000000
  %5992 = fmul fast float %5976, 0x402921FB60000000
  %5993 = fadd fast float %5992, 0x401921FB60000000
  %5994 = call float @dx.op.unary.f32(i32 13, float %5993)  ; Sin(value)
  %5995 = fadd fast float %5994, 0xBE8777A5C0000000
  %5996 = fmul fast float %5995, 0x3FB45F3060000000
  %5997 = call float @dx.op.dot4.f32(i32 56, float %5971, float %5972, float %5973, float %5974, float %5981, float %5986, float %5991, float %5996)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5998 = fmul fast float %5997, 0xBFF7154760000000
  %5999 = call float @dx.op.unary.f32(i32 21, float %5998)  ; Exp(value)
  %6000 = call float @dx.op.unary.f32(i32 7, float %5999)  ; Saturate(value)
  br label %6001

; <label>:6001                                    ; preds = %5969, %5965
  %6002 = phi float [ %6000, %5969 ], [ 1.000000e+00, %5965 ]
  %6003 = fadd fast float %6002, -1.000000e+00
  %6004 = fmul fast float %6003, %5963
  %6005 = fadd fast float %6004, 1.000000e+00
  br label %6006

; <label>:6006                                    ; preds = %6001, %5907
  %6007 = phi float [ %6005, %6001 ], [ 1.000000e+00, %5907 ]
  %6008 = fmul fast float %6007, %5903
  %6009 = extractvalue %dx.types.CBufRet.f32 %3905, 2
  %6010 = fadd fast float %3906, %152
  %6011 = fadd fast float %3907, %153
  %6012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6013 = extractvalue %dx.types.CBufRet.f32 %6012, 1
  %6014 = fsub fast float -0.000000e+00, %6010
  %6015 = fsub fast float -0.000000e+00, %6011
  %6016 = fsub fast float %3889, %6009
  %6017 = fadd fast float %6016, %6013
  %6018 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6014, float %6015, float %6017)  ; Dot3(ax,ay,az,bx,by,bz)
  %6019 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5258, float %5259, float %5260)  ; Dot3(ax,ay,az,bx,by,bz)
  %6020 = fdiv fast float 1.000000e+00, %6019
  %6021 = fmul fast float %6020, %6018
  %6022 = fmul fast float %5258, %6021
  %6023 = fmul fast float %5259, %6021
  %6024 = fadd fast float %6022, %6010
  %6025 = fadd fast float %6023, %6011
  %6026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6027 = extractvalue %dx.types.CBufRet.f32 %6026, 0
  %6028 = extractvalue %dx.types.CBufRet.f32 %6026, 1
  %6029 = fsub fast float %6024, %6027
  %6030 = fsub fast float %6025, %6028
  %6031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6032 = extractvalue %dx.types.CBufRet.f32 %6031, 2
  %6033 = extractvalue %dx.types.CBufRet.f32 %6031, 3
  %6034 = fmul fast float %6029, %6032
  %6035 = fmul fast float %6030, %6033
  %6036 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6037 = extractvalue %dx.types.CBufRet.i32 %6036, 3
  %6038 = icmp eq i32 %6037, 0
  br i1 %6038, label %6044, label %6039

; <label>:6039                                    ; preds = %6006
  %6040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %57, float %6034, float %6035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6041 = extractvalue %dx.types.ResRet.f32 %6040, 0
  %6042 = extractvalue %dx.types.ResRet.f32 %6040, 1
  %6043 = extractvalue %dx.types.ResRet.f32 %6040, 2
  br label %6049

; <label>:6044                                    ; preds = %6006
  %6045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %58, float %6034, float %6035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6046 = extractvalue %dx.types.ResRet.f32 %6045, 0
  %6047 = extractvalue %dx.types.ResRet.f32 %6045, 1
  %6048 = extractvalue %dx.types.ResRet.f32 %6045, 2
  br label %6049

; <label>:6049                                    ; preds = %6044, %6039
  %6050 = phi float [ %6041, %6039 ], [ %6046, %6044 ]
  %6051 = phi float [ %6042, %6039 ], [ %6047, %6044 ]
  %6052 = phi float [ %6043, %6039 ], [ %6048, %6044 ]
  %6053 = extractvalue %dx.types.CBufRet.f32 %6012, 2
  %6054 = fmul fast float %6053, %6050
  %6055 = extractvalue %dx.types.CBufRet.f32 %6012, 0
  %6056 = fsub fast float %6021, %6055
  %6057 = fsub fast float %6056, %6054
  %6058 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6057)  ; FMax(a,b)
  %6059 = fmul fast float %6058, %6051
  %6060 = call float @dx.op.binary.f32(i32 36, float %6052, float %6059)  ; FMin(a,b)
  %6061 = fmul fast float %6060, 0xBFF7154760000000
  %6062 = call float @dx.op.unary.f32(i32 21, float %6061)  ; Exp(value)
  %6063 = fmul fast float %6008, %6062
  br label %6064

; <label>:6064                                    ; preds = %6049, %5902
  %6065 = phi float [ %6063, %6049 ], [ %5903, %5902 ]
  %6066 = call float @dx.op.binary.f32(i32 36, float %6065, float %6065)  ; FMin(a,b)
  %6067 = call float @dx.op.binary.f32(i32 36, float %6065, float %6066)  ; FMin(a,b)
  %6068 = fcmp fast ogt float %6067, 0.000000e+00
  br i1 %6068, label %6069, label %6321, !dx.controlflow.hints !135

; <label>:6069                                    ; preds = %6064
  %6070 = fmul fast float %6065, %5269
  %6071 = fmul fast float %6065, %5270
  %6072 = fmul fast float %6065, %5271
  %6073 = fsub fast float %154, %3677
  %6074 = fcmp fast ogt float %6073, 0.000000e+00
  %6075 = fmul fast float %5258, 5.120000e+02
  %6076 = fmul fast float %5259, 5.120000e+02
  %6077 = fmul fast float %5260, 5.120000e+02
  %6078 = fadd fast float %6077, %154
  %6079 = fsub fast float %3677, %6078
  %6080 = fmul fast float %6079, 2.000000e+00
  %6081 = fadd fast float %6080, %6078
  %6082 = select i1 %6074, float %6081, float %6078
  %6083 = fsub fast float %6082, %154
  %6084 = call float @dx.op.dot3.f32(i32 55, float %6075, float %6076, float %6083, float %6075, float %6076, float %6083)  ; Dot3(ax,ay,az,bx,by,bz)
  %6085 = call float @dx.op.unary.f32(i32 25, float %6084)  ; Rsqrt(value)
  %6086 = fmul fast float %6085, %6075
  %6087 = fmul fast float %6085, %6076
  %6088 = fmul fast float %6085, %6083
  %6089 = fsub fast float %3677, %154
  %6090 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6089)  ; Dot3(ax,ay,az,bx,by,bz)
  %6091 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6086, float %6087, float %6088)  ; Dot3(ax,ay,az,bx,by,bz)
  %6092 = fdiv fast float 1.000000e+00, %6091
  %6093 = fmul fast float %6092, %6090
  %6094 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6073, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6095 = fcmp fast ogt float %6094, 0.000000e+00
  %6096 = fcmp fast olt float %6094, 0.000000e+00
  %6097 = zext i1 %6095 to i32
  %6098 = zext i1 %6096 to i32
  %6099 = sub nsw i32 %6097, %6098
  %6100 = sitofp i32 %6099 to float
  %6101 = fsub fast float %6082, %3677
  %6102 = call float @dx.op.dot3.f32(i32 55, float %6075, float %6076, float %6101, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6103 = fcmp fast ogt float %6102, 0.000000e+00
  %6104 = fcmp fast olt float %6102, 0.000000e+00
  %6105 = zext i1 %6103 to i32
  %6106 = zext i1 %6104 to i32
  %6107 = sub nsw i32 %6105, %6106
  %6108 = sitofp i32 %6107 to float
  %6109 = fcmp fast une float %6100, %6108
  br i1 %6109, label %6110, label %6120

; <label>:6110                                    ; preds = %6069
  %6111 = fmul fast float %6093, %6088
  %6112 = fmul fast float %6093, %6087
  %6113 = fmul fast float %6093, %6086
  %6114 = fmul fast float %6113, %6113
  %6115 = fmul fast float %6112, %6112
  %6116 = fadd fast float %6114, %6115
  %6117 = fmul fast float %6111, %6111
  %6118 = fadd fast float %6116, %6117
  %6119 = call float @dx.op.unary.f32(i32 24, float %6118)  ; Sqrt(value)
  br label %6130

; <label>:6120                                    ; preds = %6069
  %6121 = icmp slt i32 %6099, 0
  br i1 %6121, label %6122, label %6130

; <label>:6122                                    ; preds = %6120
  %6123 = fsub fast float %154, %6082
  %6124 = fmul fast float %6075, %6075
  %6125 = fmul fast float %6076, %6076
  %6126 = fadd fast float %6124, %6125
  %6127 = fmul fast float %6123, %6123
  %6128 = fadd fast float %6126, %6127
  %6129 = call float @dx.op.unary.f32(i32 24, float %6128)  ; Sqrt(value)
  br label %6130

; <label>:6130                                    ; preds = %6122, %6120, %6110
  %6131 = phi float [ %6119, %6110 ], [ %6129, %6122 ], [ 0.000000e+00, %6120 ]
  %6132 = fsub fast float -0.000000e+00, %6131
  %6133 = select i1 %6074, float -0.000000e+00, float %6132
  %6134 = fmul fast float %3678, 0x3FF7154760000000
  %6135 = fmul fast float %6134, %6133
  %6136 = fmul fast float %3679, 0x3FF7154760000000
  %6137 = fmul fast float %6136, %6133
  %6138 = fmul fast float %3680, 0x3FF7154760000000
  %6139 = fmul fast float %6138, %6133
  %6140 = call float @dx.op.unary.f32(i32 21, float %6135)  ; Exp(value)
  %6141 = call float @dx.op.unary.f32(i32 21, float %6137)  ; Exp(value)
  %6142 = call float @dx.op.unary.f32(i32 21, float %6139)  ; Exp(value)
  %6143 = call float @dx.op.unary.f32(i32 7, float %6140)  ; Saturate(value)
  %6144 = call float @dx.op.unary.f32(i32 7, float %6141)  ; Saturate(value)
  %6145 = call float @dx.op.unary.f32(i32 7, float %6142)  ; Saturate(value)
  %6146 = fmul fast float %6070, %6143
  %6147 = fmul fast float %6071, %6144
  %6148 = fmul fast float %6072, %6145
  %6149 = fsub fast float %5258, %3877
  %6150 = fsub fast float %5259, %3876
  %6151 = fsub fast float %5260, %3875
  %6152 = call float @dx.op.dot3.f32(i32 55, float %6149, float %6150, float %6151, float %6149, float %6150, float %6151)  ; Dot3(ax,ay,az,bx,by,bz)
  %6153 = call float @dx.op.unary.f32(i32 25, float %6152)  ; Rsqrt(value)
  %6154 = fmul fast float %6153, %6149
  %6155 = fmul fast float %6153, %6150
  %6156 = fmul fast float %6153, %6151
  %6157 = call float @dx.op.dot3.f32(i32 55, float %5258, float %5259, float %5260, float %3884, float %3885, float %3886)  ; Dot3(ax,ay,az,bx,by,bz)
  %6158 = call float @dx.op.dot3.f32(i32 55, float %3874, float %3873, float %3872, float %6154, float %6155, float %6156)  ; Dot3(ax,ay,az,bx,by,bz)
  %6159 = call float @dx.op.unary.f32(i32 7, float %6157)  ; Saturate(value)
  %6160 = bitcast i32 %3904 to float
  %6161 = fmul fast float %6159, %6159
  %6162 = fmul fast float %6161, %6160
  %6163 = call float @dx.op.unary.f32(i32 7, float %6162)  ; Saturate(value)
  %6164 = fmul fast float %6163, %6159
  %6165 = call float @dx.op.dot3.f32(i32 55, float %3884, float %3885, float %3886, float %6154, float %6155, float %6156)  ; Dot3(ax,ay,az,bx,by,bz)
  %6166 = fmul fast float %6165, %6165
  %6167 = call float @dx.op.unary.f32(i32 6, float %6157)  ; FAbs(value)
  %6168 = fsub fast float 1.000000e+00, %3887
  %6169 = call float @dx.op.binary.f32(i32 35, float %6168, float 0x3F847AE140000000)  ; FMax(a,b)
  %6170 = fmul fast float %6169, %6169
  %6171 = fmul fast float %6170, %6170
  %6172 = fsub fast float 1.000000e+00, %6171
  %6173 = fmul fast float %3892, %3892
  %6174 = fmul fast float %6173, %6172
  %6175 = fadd fast float %6174, %6171
  %6176 = bitcast float %6175 to i32
  %6177 = ashr i32 %6176, 1
  %6178 = add nsw i32 %6177, 532487669
  %6179 = bitcast i32 %6178 to float
  %6180 = fadd fast float %6179, %3892
  %6181 = fmul fast float %6171, %6166
  %6182 = fsub fast float 1.000000e+00, %6166
  %6183 = fadd fast float %6182, %6181
  %6184 = fmul fast float %6167, %6167
  %6185 = fmul fast float %6184, %6172
  %6186 = fadd fast float %6185, %6171
  %6187 = bitcast float %6186 to i32
  %6188 = ashr i32 %6187, 1
  %6189 = add nsw i32 %6188, 532487669
  %6190 = bitcast i32 %6189 to float
  %6191 = fadd fast float %6190, %6167
  %6192 = fmul fast float %6183, %6183
  %6193 = fmul fast float %6192, %6180
  %6194 = fmul fast float %6193, %6191
  %6195 = fdiv fast float 0x3FF0A00000000000, %6194
  %6196 = fmul fast float %6195, %6171
  %6197 = call float @dx.op.unary.f32(i32 6, float %6158)  ; FAbs(value)
  %6198 = fsub fast float 1.000000e+00, %6197
  %6199 = bitcast float %6198 to i32
  %6200 = sitofp i32 %6199 to float
  %6201 = fmul fast float %6200, 5.000000e+00
  %6202 = fadd fast float %6201, 0xC1EFBF8940000000
  %6203 = fptosi float %6202 to i32
  %6204 = bitcast i32 %6203 to float
  %6205 = fsub fast float 1.000000e+00, %3878
  %6206 = fsub fast float 1.000000e+00, %3879
  %6207 = fsub fast float 1.000000e+00, %3890
  %6208 = fmul fast float %6204, %6205
  %6209 = fmul fast float %6204, %6206
  %6210 = fmul fast float %6204, %6207
  %6211 = fadd fast float %6208, %3878
  %6212 = fadd fast float %6209, %3879
  %6213 = fadd fast float %6210, %3890
  br i1 %5169, label %6214, label %6237

; <label>:6214                                    ; preds = %6130
  %6215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %3255, float %6197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6216 = extractvalue %dx.types.ResRet.f32 %6215, 0
  %6217 = extractvalue %dx.types.ResRet.f32 %6215, 1
  %6218 = extractvalue %dx.types.ResRet.f32 %6215, 2
  %6219 = fadd fast float %6216, -5.000000e-01
  %6220 = fadd fast float %6217, -5.000000e-01
  %6221 = fadd fast float %6218, -5.000000e-01
  %6222 = fmul fast float %3878, 4.000000e+00
  %6223 = fmul fast float %6222, %6205
  %6224 = fmul fast float %6223, %6219
  %6225 = fmul fast float %3879, 4.000000e+00
  %6226 = fmul fast float %6225, %6206
  %6227 = fmul fast float %6226, %6220
  %6228 = fmul fast float %3890, 4.000000e+00
  %6229 = fmul fast float %6228, %6207
  %6230 = fmul fast float %6229, %6221
  %6231 = fadd fast float %6224, %6211
  %6232 = fadd fast float %6227, %6212
  %6233 = fadd fast float %6230, %6213
  %6234 = call float @dx.op.unary.f32(i32 7, float %6231)  ; Saturate(value)
  %6235 = call float @dx.op.unary.f32(i32 7, float %6232)  ; Saturate(value)
  %6236 = call float @dx.op.unary.f32(i32 7, float %6233)  ; Saturate(value)
  br label %6237

; <label>:6237                                    ; preds = %6214, %6130
  %6238 = phi float [ %6234, %6214 ], [ %6211, %6130 ]
  %6239 = phi float [ %6235, %6214 ], [ %6212, %6130 ]
  %6240 = phi float [ %6236, %6214 ], [ %6213, %6130 ]
  %6241 = fmul fast float %6157, 9.843750e-01
  %6242 = fadd fast float %6241, 7.812500e-03
  %6243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %6242, float %5159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6244 = extractvalue %dx.types.ResRet.f32 %6243, 2
  %6245 = extractvalue %dx.types.ResRet.f32 %6243, 3
  %6246 = fmul fast float %6244, %3878
  %6247 = fmul fast float %6244, %3879
  %6248 = fmul fast float %6244, %3890
  %6249 = fadd fast float %6246, %6245
  %6250 = fadd fast float %6247, %6245
  %6251 = fadd fast float %6248, %6245
  br i1 %5169, label %6252, label %6275

; <label>:6252                                    ; preds = %6237
  %6253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %3255, float %6157, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6254 = extractvalue %dx.types.ResRet.f32 %6253, 0
  %6255 = extractvalue %dx.types.ResRet.f32 %6253, 1
  %6256 = extractvalue %dx.types.ResRet.f32 %6253, 2
  %6257 = fadd fast float %6254, -5.000000e-01
  %6258 = fadd fast float %6255, -5.000000e-01
  %6259 = fadd fast float %6256, -5.000000e-01
  %6260 = fmul fast float %3878, 4.000000e+00
  %6261 = fmul fast float %6260, %6205
  %6262 = fmul fast float %6261, %6257
  %6263 = fmul fast float %3879, 4.000000e+00
  %6264 = fmul fast float %6263, %6206
  %6265 = fmul fast float %6264, %6258
  %6266 = fmul fast float %3890, 4.000000e+00
  %6267 = fmul fast float %6266, %6207
  %6268 = fmul fast float %6267, %6259
  %6269 = fadd fast float %6262, %6249
  %6270 = fadd fast float %6265, %6250
  %6271 = fadd fast float %6268, %6251
  %6272 = call float @dx.op.unary.f32(i32 7, float %6269)  ; Saturate(value)
  %6273 = call float @dx.op.unary.f32(i32 7, float %6270)  ; Saturate(value)
  %6274 = call float @dx.op.unary.f32(i32 7, float %6271)  ; Saturate(value)
  br label %6275

; <label>:6275                                    ; preds = %6252, %6237
  %6276 = phi float [ %6272, %6252 ], [ %6249, %6237 ]
  %6277 = phi float [ %6273, %6252 ], [ %6250, %6237 ]
  %6278 = phi float [ %6274, %6252 ], [ %6251, %6237 ]
  %6279 = call float @dx.op.binary.f32(i32 35, float %6277, float %6278)  ; FMax(a,b)
  %6280 = call float @dx.op.binary.f32(i32 35, float %6276, float %6279)  ; FMax(a,b)
  %6281 = fsub fast float 1.000000e+00, %6280
  %6282 = fmul fast float %6238, %6196
  %6283 = fmul fast float %6239, %6196
  %6284 = fmul fast float %6240, %6196
  %6285 = fsub fast float 1.000000e+00, %6158
  %6286 = bitcast float %6285 to i32
  %6287 = sitofp i32 %6286 to float
  %6288 = fmul fast float %6287, 5.000000e+00
  %6289 = fadd fast float %6288, 0xC1EFBF8940000000
  %6290 = fptosi float %6289 to i32
  %6291 = bitcast i32 %6290 to float
  %6292 = fmul fast float %6291, %3254
  %6293 = fmul fast float %6281, %6292
  %6294 = fmul fast float %6293, %5219
  %6295 = fmul fast float %6293, %5220
  %6296 = fmul fast float %6293, %5221
  %6297 = fadd fast float %6294, %6282
  %6298 = fadd fast float %6295, %6283
  %6299 = fadd fast float %6296, %6284
  %6300 = fmul fast float %6164, %6146
  %6301 = fmul fast float %6300, %6281
  %6302 = fmul fast float %6164, %6147
  %6303 = fmul fast float %6302, %6281
  %6304 = fmul fast float %6164, %6148
  %6305 = fmul fast float %6304, %6281
  %6306 = fmul fast float %6300, %6297
  %6307 = fmul fast float %6302, %6298
  %6308 = fmul fast float %6304, %6299
  %6309 = fadd fast float %6301, %5203
  %6310 = fmul fast float %6309, %3275
  %6311 = fadd fast float %6303, %5204
  %6312 = fmul fast float %6311, %3275
  %6313 = fadd fast float %6305, %5205
  %6314 = fmul fast float %6313, %3275
  %6315 = fadd fast float %6306, %5246
  %6316 = fmul fast float %6315, %3275
  %6317 = fadd fast float %6307, %5249
  %6318 = fmul fast float %6317, %3275
  %6319 = fadd fast float %6308, %5252
  %6320 = fmul fast float %6319, %3275
  br label %6321

; <label>:6321                                    ; preds = %6275, %6064, %5196
  %6322 = phi float [ %5247, %5196 ], [ %5247, %6064 ], [ %6316, %6275 ]
  %6323 = phi float [ %5250, %5196 ], [ %5250, %6064 ], [ %6318, %6275 ]
  %6324 = phi float [ %5253, %5196 ], [ %5253, %6064 ], [ %6320, %6275 ]
  %6325 = phi float [ %5242, %5196 ], [ %5242, %6064 ], [ %6310, %6275 ]
  %6326 = phi float [ %5243, %5196 ], [ %5243, %6064 ], [ %6312, %6275 ]
  %6327 = phi float [ %5244, %5196 ], [ %5244, %6064 ], [ %6314, %6275 ]
  %6328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6329 = extractvalue %dx.types.CBufRet.i32 %6328, 0
  %6330 = icmp eq i32 %6329, 0
  br i1 %6330, label %6952, label %6331

; <label>:6331                                    ; preds = %6321
  %6332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6333 = extractvalue %dx.types.CBufRet.f32 %6332, 2
  %6334 = extractvalue %dx.types.CBufRet.f32 %6332, 3
  %6335 = fmul fast float %6333, %105
  %6336 = fmul fast float %6334, %106
  %6337 = fptoui float %6335 to i32
  %6338 = fptoui float %6336 to i32
  %6339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6340 = extractvalue %dx.types.CBufRet.f32 %6339, 0
  %6341 = extractvalue %dx.types.CBufRet.f32 %6339, 2
  %6342 = extractvalue %dx.types.CBufRet.f32 %6339, 3
  %6343 = fadd fast float %96, -4.000000e+00
  %6344 = call float @dx.op.binary.f32(i32 35, float %6343, float 0.000000e+00)  ; FMax(a,b)
  %6345 = fadd fast float %6344, %6340
  %6346 = fmul fast float %6345, %6341
  %6347 = call float @dx.op.unary.f32(i32 23, float %6346)  ; Log(value)
  %6348 = fmul fast float %6347, %6342
  %6349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6350 = extractvalue %dx.types.CBufRet.f32 %6349, 2
  %6351 = fmul fast float %6348, %6350
  %6352 = call float @dx.op.unary.f32(i32 7, float %6351)  ; Saturate(value)
  %6353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6354 = extractvalue %dx.types.CBufRet.i32 %6353, 1
  %6355 = add i32 %6354, -1
  %6356 = uitofp i32 %6354 to float
  %6357 = fmul fast float %6356, %6352
  %6358 = fptoui float %6357 to i32
  %6359 = call i32 @dx.op.binary.i32(i32 40, i32 %6358, i32 %6355)  ; UMin(a,b)
  %6360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6361 = extractvalue %dx.types.CBufRet.i32 %6360, 2
  %6362 = extractvalue %dx.types.CBufRet.i32 %6360, 3
  %6363 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6338, i32 %6361, i32 %6337)  ; UMad(a,b,c)
  %6364 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6359, i32 %6362, i32 %6363)  ; UMad(a,b,c)
  %6365 = add nsw i32 %6329, -1
  %6366 = call i32 @dx.op.binary.i32(i32 37, i32 %6365, i32 0)  ; IMax(a,b)
  %6367 = call float @dx.op.binary.f32(i32 35, float %96, float 0.000000e+00)  ; FMax(a,b)
  %6368 = fptoui float %6367 to i32
  %6369 = lshr i32 %6368, 5
  %6370 = call i32 @dx.op.binary.i32(i32 40, i32 %6369, i32 8191)  ; UMin(a,b)
  %6371 = shl i32 %6370, 2
  %6372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6371, i32 undef)  ; BufferLoad(srv,index,wot)
  %6373 = extractvalue %dx.types.ResRet.i32 %6372, 0
  %6374 = lshr i32 %6373, 16
  %6375 = and i32 %6373, 65535
  %6376 = lshr i32 %6373, 21
  %6377 = lshr i32 %6375, 5
  %6378 = call i32 @dx.op.binary.i32(i32 40, i32 %6377, i32 %6366)  ; UMin(a,b)
  %6379 = icmp ugt i32 %6376, %6378
  br i1 %6379, label %6952, label %6380

; <label>:6380                                    ; preds = %6331
  br label %6381

; <label>:6381                                    ; preds = %6942, %6380
  %6382 = phi i32 [ %6949, %6942 ], [ %6376, %6380 ]
  %6383 = phi float [ %6943, %6942 ], [ %6322, %6380 ]
  %6384 = phi float [ %6944, %6942 ], [ %6323, %6380 ]
  %6385 = phi float [ %6945, %6942 ], [ %6324, %6380 ]
  %6386 = phi float [ %6946, %6942 ], [ %6325, %6380 ]
  %6387 = phi float [ %6947, %6942 ], [ %6326, %6380 ]
  %6388 = phi float [ %6948, %6942 ], [ %6327, %6380 ]
  %6389 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6390 = extractvalue %dx.types.CBufRet.i32 %6389, 0
  %6391 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6364, i32 %6390, i32 %6382)  ; UMad(a,b,c)
  %6392 = shl i32 %6391, 2
  %6393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6392, i32 undef)  ; BufferLoad(srv,index,wot)
  %6394 = extractvalue %dx.types.ResRet.i32 %6393, 0
  %6395 = shl i32 %6382, 5
  %6396 = sub nsw i32 %6374, %6395
  %6397 = call i32 @dx.op.binary.i32(i32 37, i32 %6396, i32 0)  ; IMax(a,b)
  %6398 = call i32 @dx.op.binary.i32(i32 38, i32 %6397, i32 31)  ; IMin(a,b)
  %6399 = sub nsw i32 1, %6374
  %6400 = add nsw i32 %6399, %6375
  %6401 = call i32 @dx.op.binary.i32(i32 37, i32 %6400, i32 0)  ; IMax(a,b)
  %6402 = call i32 @dx.op.binary.i32(i32 38, i32 %6401, i32 32)  ; IMin(a,b)
  %6403 = and i32 %6402, 31
  %6404 = shl i32 -1, %6403
  %6405 = xor i32 %6404, -1
  %6406 = and i32 %6398, 31
  %6407 = shl i32 %6405, %6406
  %6408 = icmp eq i32 %6402, 32
  %6409 = select i1 %6408, i32 -1, i32 %6407
  %6410 = and i32 %6409, %6394
  %6411 = icmp eq i32 %6410, 0
  br i1 %6411, label %6942, label %6412

; <label>:6412                                    ; preds = %6381
  br label %6413

; <label>:6413                                    ; preds = %6547, %6412
  %6414 = phi i32 [ %6425, %6547 ], [ %6410, %6412 ]
  %6415 = phi float [ %6548, %6547 ], [ %6383, %6412 ]
  %6416 = phi float [ %6549, %6547 ], [ %6384, %6412 ]
  %6417 = phi float [ %6550, %6547 ], [ %6385, %6412 ]
  %6418 = phi float [ %6551, %6547 ], [ %6386, %6412 ]
  %6419 = phi float [ %6552, %6547 ], [ %6387, %6412 ]
  %6420 = phi float [ %6553, %6547 ], [ %6388, %6412 ]
  %6421 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6414)  ; FirstbitLo(value)
  %6422 = add i32 %6421, %6395
  %6423 = and i32 %6421, 31
  %6424 = shl i32 1, %6423
  %6425 = xor i32 %6424, %6414
  %6426 = mul i32 %6422, 112
  %6427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6426, i32 undef)  ; BufferLoad(srv,index,wot)
  %6428 = extractvalue %dx.types.ResRet.f32 %6427, 0
  %6429 = extractvalue %dx.types.ResRet.f32 %6427, 1
  %6430 = extractvalue %dx.types.ResRet.f32 %6427, 2
  %6431 = or i32 %6426, 12
  %6432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6431, i32 undef)  ; BufferLoad(srv,index,wot)
  %6433 = extractvalue %dx.types.ResRet.f32 %6432, 0
  %6434 = add i32 %6426, 16
  %6435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6434, i32 undef)  ; BufferLoad(srv,index,wot)
  %6436 = extractvalue %dx.types.ResRet.f32 %6435, 0
  %6437 = extractvalue %dx.types.ResRet.f32 %6435, 1
  %6438 = extractvalue %dx.types.ResRet.f32 %6435, 2
  %6439 = add i32 %6426, 28
  %6440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6439, i32 undef)  ; BufferLoad(srv,index,wot)
  %6441 = extractvalue %dx.types.ResRet.i32 %6440, 0
  %6442 = add i32 %6426, 44
  %6443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6442, i32 undef)  ; BufferLoad(srv,index,wot)
  %6444 = extractvalue %dx.types.ResRet.f32 %6443, 0
  %6445 = add i32 %6426, 48
  %6446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6445, i32 undef)  ; BufferLoad(srv,index,wot)
  %6447 = extractvalue %dx.types.ResRet.f32 %6446, 0
  %6448 = extractvalue %dx.types.ResRet.f32 %6446, 1
  %6449 = extractvalue %dx.types.ResRet.f32 %6446, 2
  %6450 = extractvalue %dx.types.ResRet.f32 %6446, 3
  %6451 = add i32 %6426, 64
  %6452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6451, i32 undef)  ; BufferLoad(srv,index,wot)
  %6453 = extractvalue %dx.types.ResRet.f32 %6452, 0
  %6454 = extractvalue %dx.types.ResRet.f32 %6452, 1
  %6455 = extractvalue %dx.types.ResRet.f32 %6452, 2
  %6456 = extractvalue %dx.types.ResRet.f32 %6452, 3
  %6457 = add i32 %6426, 80
  %6458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6457, i32 undef)  ; BufferLoad(srv,index,wot)
  %6459 = extractvalue %dx.types.ResRet.f32 %6458, 1
  %6460 = extractvalue %dx.types.ResRet.f32 %6458, 2
  %6461 = add i32 %6426, 92
  %6462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6461, i32 undef)  ; BufferLoad(srv,index,wot)
  %6463 = extractvalue %dx.types.ResRet.i32 %6462, 0
  %6464 = call float @dx.op.dot3.f32(i32 55, float %6428, float %6429, float %6430, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6465 = select i1 %243, float %6459, float %6428
  %6466 = select i1 %243, float %6464, float %6429
  %6467 = select i1 %243, float %6460, float %6430
  %6468 = and i32 %6463, 65535
  %6469 = uitofp i32 %6468 to float
  %6470 = lshr i32 %6463, 16
  %6471 = uitofp i32 %6470 to float
  %6472 = and i32 %6441, 65535
  %6473 = and i32 %6441, 50331648
  %6474 = icmp eq i32 %6473, 33554432
  %6475 = fsub fast float %6447, %152
  %6476 = fsub fast float %6448, %153
  %6477 = fsub fast float %6449, %154
  %6478 = call float @dx.op.dot3.f32(i32 55, float %6475, float %6476, float %6477, float %6475, float %6476, float %6477)  ; Dot3(ax,ay,az,bx,by,bz)
  %6479 = call float @dx.op.unary.f32(i32 24, float %6478)  ; Sqrt(value)
  %6480 = fdiv fast float 1.000000e+00, %6479
  %6481 = fmul fast float %6480, %6475
  %6482 = fmul fast float %6480, %6476
  %6483 = fmul fast float %6480, %6477
  %6484 = fadd fast float %6479, %6433
  %6485 = fdiv fast float 1.000000e+00, %6484
  %6486 = fmul float %6444, %6485
  %6487 = fmul float %6486, %6486
  %6488 = call float @dx.op.unary.f32(i32 7, float %6487)  ; Saturate(value)
  br i1 %6474, label %6489, label %6510

; <label>:6489                                    ; preds = %6413
  %6490 = fmul fast float %6455, %6436
  %6491 = fmul fast float %6455, %6437
  %6492 = fmul fast float %6455, %6438
  %6493 = fadd fast float %6475, %6490
  %6494 = fadd fast float %6476, %6491
  %6495 = fadd fast float %6477, %6492
  %6496 = call float @dx.op.dot3.f32(i32 55, float %6493, float %6494, float %6495, float %6493, float %6494, float %6495)  ; Dot3(ax,ay,az,bx,by,bz)
  %6497 = call float @dx.op.unary.f32(i32 25, float %6496)  ; Rsqrt(value)
  %6498 = fmul fast float %6497, %6493
  %6499 = fmul fast float %6497, %6494
  %6500 = fmul fast float %6497, %6495
  %6501 = fsub fast float %152, %6447
  %6502 = fsub fast float %153, %6448
  %6503 = fsub fast float %154, %6449
  %6504 = fsub fast float -0.000000e+00, %6501
  %6505 = fsub fast float -0.000000e+00, %6502
  %6506 = fsub fast float -0.000000e+00, %6503
  %6507 = call float @dx.op.dot3.f32(i32 55, float %6504, float %6505, float %6506, float %6436, float %6437, float %6438)  ; Dot3(ax,ay,az,bx,by,bz)
  %6508 = fcmp fast ogt float %6507, 0.000000e+00
  %6509 = uitofp i1 %6508 to float
  br label %6510

; <label>:6510                                    ; preds = %6489, %6413
  %6511 = phi float [ %6509, %6489 ], [ 1.000000e+00, %6413 ]
  %6512 = phi float [ %6498, %6489 ], [ %6481, %6413 ]
  %6513 = phi float [ %6499, %6489 ], [ %6482, %6413 ]
  %6514 = phi float [ %6500, %6489 ], [ %6483, %6413 ]
  %6515 = call float @dx.op.dot3.f32(i32 55, float %6436, float %6437, float %6438, float %6512, float %6513, float %6514)  ; Dot3(ax,ay,az,bx,by,bz)
  %6516 = fmul fast float %6515, %6515
  %6517 = call float @dx.op.unary.f32(i32 7, float %6516)  ; Saturate(value)
  %6518 = fsub fast float 1.000000e+00, %6517
  %6519 = fmul fast float %6518, 5.000000e-01
  %6520 = fcmp fast ogt float %6515, 0.000000e+00
  %6521 = fsub fast float 1.000000e+00, %6519
  %6522 = select i1 %6520, float %6519, float %6521
  %6523 = fmul fast float %6522, %6471
  %6524 = fadd fast float %6523, %6469
  %6525 = fmul fast float %6524, 0x3EF0001000000000
  %6526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %58, float %6525, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6527 = extractvalue %dx.types.ResRet.f32 %6526, 0
  %6528 = fmul fast float %6515, %6453
  %6529 = fadd fast float %6528, %6454
  %6530 = call float @dx.op.unary.f32(i32 7, float %6529)  ; Saturate(value)
  %6531 = select i1 %6474, float 1.000000e+00, float %6530
  %6532 = select i1 %6474, float %6530, float 1.000000e+00
  %6533 = fmul fast float %6479, %6450
  %6534 = fsub fast float 1.000000e+00, %6533
  %6535 = fmul fast float %6534, %6456
  %6536 = call float @dx.op.unary.f32(i32 7, float %6535)  ; Saturate(value)
  %6537 = fmul fast float %6536, %6532
  %6538 = fmul fast float %6537, 2.000000e+00
  %6539 = fsub fast float 3.000000e+00, %6538
  %6540 = fmul fast float %6527, %6511
  %6541 = fmul fast float %6537, %6537
  %6542 = fmul fast float %6541, %6540
  %6543 = fmul fast float %6542, %6539
  %6544 = call float @dx.op.binary.f32(i32 36, float %6543, float %6543)  ; FMin(a,b)
  %6545 = call float @dx.op.binary.f32(i32 36, float %6543, float %6544)  ; FMin(a,b)
  %6546 = fcmp fast ogt float %6545, 0.000000e+00
  br i1 %6546, label %6555, label %6547, !dx.controlflow.hints !136

; <label>:6547                                    ; preds = %6898, %6655, %6510
  %6548 = phi float [ %6415, %6655 ], [ %6415, %6510 ], [ %6938, %6898 ]
  %6549 = phi float [ %6416, %6655 ], [ %6416, %6510 ], [ %6939, %6898 ]
  %6550 = phi float [ %6417, %6655 ], [ %6417, %6510 ], [ %6940, %6898 ]
  %6551 = phi float [ %6418, %6655 ], [ %6418, %6510 ], [ %6932, %6898 ]
  %6552 = phi float [ %6419, %6655 ], [ %6419, %6510 ], [ %6933, %6898 ]
  %6553 = phi float [ %6420, %6655 ], [ %6420, %6510 ], [ %6934, %6898 ]
  %6554 = icmp eq i32 %6414, %6424
  br i1 %6554, label %6941, label %6413

; <label>:6555                                    ; preds = %6510
  %6556 = icmp eq i32 %6472, 255
  br i1 %6556, label %6655, label %6557, !dx.controlflow.hints !137

; <label>:6557                                    ; preds = %6555
  %6558 = mul nuw nsw i32 %6472, 176
  %6559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6558, i32 undef)  ; BufferLoad(srv,index,wot)
  %6560 = extractvalue %dx.types.ResRet.f32 %6559, 0
  %6561 = extractvalue %dx.types.ResRet.f32 %6559, 1
  %6562 = extractvalue %dx.types.ResRet.f32 %6559, 2
  %6563 = extractvalue %dx.types.ResRet.f32 %6559, 3
  %6564 = add nuw nsw i32 %6558, 16
  %6565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6564, i32 undef)  ; BufferLoad(srv,index,wot)
  %6566 = extractvalue %dx.types.ResRet.f32 %6565, 0
  %6567 = extractvalue %dx.types.ResRet.f32 %6565, 1
  %6568 = add nuw nsw i32 %6558, 32
  %6569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6568, i32 undef)  ; BufferLoad(srv,index,wot)
  %6570 = extractvalue %dx.types.ResRet.f32 %6569, 0
  %6571 = extractvalue %dx.types.ResRet.f32 %6569, 1
  %6572 = extractvalue %dx.types.ResRet.f32 %6569, 2
  %6573 = add nuw nsw i32 %6558, 48
  %6574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6573, i32 undef)  ; BufferLoad(srv,index,wot)
  %6575 = extractvalue %dx.types.ResRet.f32 %6574, 0
  %6576 = extractvalue %dx.types.ResRet.f32 %6574, 1
  %6577 = extractvalue %dx.types.ResRet.f32 %6574, 2
  %6578 = extractvalue %dx.types.ResRet.f32 %6574, 3
  %6579 = add nuw nsw i32 %6558, 64
  %6580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6579, i32 undef)  ; BufferLoad(srv,index,wot)
  %6581 = extractvalue %dx.types.ResRet.f32 %6580, 0
  %6582 = extractvalue %dx.types.ResRet.f32 %6580, 1
  %6583 = extractvalue %dx.types.ResRet.f32 %6580, 2
  %6584 = extractvalue %dx.types.ResRet.f32 %6580, 3
  %6585 = add nuw nsw i32 %6558, 80
  %6586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6585, i32 undef)  ; BufferLoad(srv,index,wot)
  %6587 = extractvalue %dx.types.ResRet.f32 %6586, 0
  %6588 = extractvalue %dx.types.ResRet.f32 %6586, 1
  %6589 = extractvalue %dx.types.ResRet.f32 %6586, 2
  %6590 = extractvalue %dx.types.ResRet.f32 %6586, 3
  %6591 = add nuw nsw i32 %6558, 96
  %6592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6591, i32 undef)  ; BufferLoad(srv,index,wot)
  %6593 = extractvalue %dx.types.ResRet.f32 %6592, 0
  %6594 = extractvalue %dx.types.ResRet.f32 %6592, 1
  %6595 = extractvalue %dx.types.ResRet.f32 %6592, 2
  %6596 = extractvalue %dx.types.ResRet.f32 %6592, 3
  %6597 = bitcast float %6567 to i32
  %6598 = fmul fast float %6572, %78
  %6599 = fmul fast float %6572, %79
  %6600 = fmul fast float %6572, %80
  %6601 = fadd fast float %6598, %152
  %6602 = fadd fast float %6599, %153
  %6603 = fadd fast float %6600, %154
  %6604 = fmul fast float %6601, %6575
  %6605 = call float @dx.op.tertiary.f32(i32 46, float %6602, float %6581, float %6604)  ; FMad(a,b,c)
  %6606 = call float @dx.op.tertiary.f32(i32 46, float %6603, float %6587, float %6605)  ; FMad(a,b,c)
  %6607 = fadd fast float %6606, %6593
  %6608 = fmul fast float %6601, %6576
  %6609 = call float @dx.op.tertiary.f32(i32 46, float %6602, float %6582, float %6608)  ; FMad(a,b,c)
  %6610 = call float @dx.op.tertiary.f32(i32 46, float %6603, float %6588, float %6609)  ; FMad(a,b,c)
  %6611 = fadd fast float %6610, %6594
  %6612 = fmul fast float %6601, %6577
  %6613 = call float @dx.op.tertiary.f32(i32 46, float %6602, float %6583, float %6612)  ; FMad(a,b,c)
  %6614 = call float @dx.op.tertiary.f32(i32 46, float %6603, float %6589, float %6613)  ; FMad(a,b,c)
  %6615 = fadd fast float %6614, %6595
  %6616 = fmul fast float %6601, %6578
  %6617 = call float @dx.op.tertiary.f32(i32 46, float %6602, float %6584, float %6616)  ; FMad(a,b,c)
  %6618 = call float @dx.op.tertiary.f32(i32 46, float %6603, float %6590, float %6617)  ; FMad(a,b,c)
  %6619 = fadd fast float %6618, %6596
  %6620 = fdiv fast float %6607, %6619
  %6621 = fdiv fast float %6611, %6619
  %6622 = fdiv fast float %6615, %6619
  %6623 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6622)  ; FMax(a,b)
  %6624 = fmul fast float %254, 0x401921FB60000000
  %6625 = call float @dx.op.unary.f32(i32 13, float %6624)  ; Sin(value)
  %6626 = call float @dx.op.unary.f32(i32 12, float %6624)  ; Cos(value)
  %6627 = fsub fast float -0.000000e+00, %6625
  %6628 = fmul fast float %6562, 5.000000e-01
  %6629 = call float @dx.op.dot2.f32(i32 54, float %254, float %254, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6630 = call float @dx.op.unary.f32(i32 22, float %6629)  ; Frc(value)
  %6631 = fmul fast float %6630, 0x404A7DD040000000
  %6632 = call float @dx.op.unary.f32(i32 22, float %6631)  ; Frc(value)
  %6633 = fmul fast float %6632, %6571
  %6634 = fadd fast float %6633, %6628
  %6635 = call float @dx.op.tertiary.f32(i32 46, float %6634, float %6627, float 0.000000e+00)  ; FMad(a,b,c)
  %6636 = call float @dx.op.tertiary.f32(i32 46, float %6634, float %6626, float 0.000000e+00)  ; FMad(a,b,c)
  %6637 = fadd fast float %6635, %6620
  %6638 = fadd fast float %6636, %6621
  %6639 = fmul fast float %6637, %6566
  %6640 = fmul fast float %6638, %6566
  %6641 = call float @dx.op.binary.f32(i32 35, float %6639, float %6562)  ; FMax(a,b)
  %6642 = call float @dx.op.binary.f32(i32 35, float %6640, float %6562)  ; FMax(a,b)
  %6643 = call float @dx.op.binary.f32(i32 36, float %6641, float %6563)  ; FMin(a,b)
  %6644 = call float @dx.op.binary.f32(i32 36, float %6642, float %6563)  ; FMin(a,b)
  %6645 = fadd fast float %6643, %6560
  %6646 = fadd fast float %6644, %6561
  %6647 = uitofp i32 %6597 to float
  %6648 = fadd fast float %6623, %6570
  %6649 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %60, float %6645, float %6646, float %6647, float undef, i32 0, i32 0, i32 undef, float %6648)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6650 = extractvalue %dx.types.ResRet.f32 %6649, 0
  %6651 = fadd fast float %6650, -1.000000e+00
  %6652 = fmul fast float %6651, %6531
  %6653 = fadd fast float %6652, 1.000000e+00
  %6654 = fmul fast float %6653, %6543
  br label %6655

; <label>:6655                                    ; preds = %6557, %6555
  %6656 = phi float [ %6654, %6557 ], [ %6543, %6555 ]
  %6657 = call float @dx.op.binary.f32(i32 36, float %6656, float %6656)  ; FMin(a,b)
  %6658 = call float @dx.op.binary.f32(i32 36, float %6656, float %6657)  ; FMin(a,b)
  %6659 = fcmp fast ogt float %6658, 0.000000e+00
  br i1 %6659, label %6660, label %6547, !dx.controlflow.hints !138

; <label>:6660                                    ; preds = %6655
  %6661 = fmul fast float %6656, %6465
  %6662 = fmul fast float %6656, %6466
  %6663 = fmul fast float %6656, %6467
  %6664 = fsub fast float %6449, %3677
  %6665 = fcmp fast ogt float %6664, 0.000000e+00
  %6666 = fsub fast float %154, %3677
  %6667 = fcmp fast ogt float %6666, 0.000000e+00
  %6668 = xor i1 %6667, %6665
  %6669 = fsub fast float %3677, %6449
  %6670 = fmul fast float %6669, 2.000000e+00
  %6671 = fadd fast float %6670, %6449
  %6672 = select i1 %6668, float %6449, float %6671
  %6673 = fsub fast float %6672, %154
  %6674 = call float @dx.op.dot3.f32(i32 55, float %6475, float %6476, float %6673, float %6475, float %6476, float %6673)  ; Dot3(ax,ay,az,bx,by,bz)
  %6675 = call float @dx.op.unary.f32(i32 25, float %6674)  ; Rsqrt(value)
  %6676 = fmul fast float %6675, %6475
  %6677 = fmul fast float %6675, %6476
  %6678 = fmul fast float %6675, %6673
  %6679 = fsub fast float %3677, %154
  %6680 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6679)  ; Dot3(ax,ay,az,bx,by,bz)
  %6681 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6676, float %6677, float %6678)  ; Dot3(ax,ay,az,bx,by,bz)
  %6682 = fdiv fast float 1.000000e+00, %6681
  %6683 = fmul fast float %6682, %6680
  %6684 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6666, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6685 = fcmp fast ogt float %6684, 0.000000e+00
  %6686 = fcmp fast olt float %6684, 0.000000e+00
  %6687 = zext i1 %6685 to i32
  %6688 = zext i1 %6686 to i32
  %6689 = sub nsw i32 %6687, %6688
  %6690 = sitofp i32 %6689 to float
  %6691 = fsub fast float %6672, %3677
  %6692 = call float @dx.op.dot3.f32(i32 55, float %6475, float %6476, float %6691, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6693 = fcmp fast ogt float %6692, 0.000000e+00
  %6694 = fcmp fast olt float %6692, 0.000000e+00
  %6695 = zext i1 %6693 to i32
  %6696 = zext i1 %6694 to i32
  %6697 = sub nsw i32 %6695, %6696
  %6698 = sitofp i32 %6697 to float
  %6699 = fcmp fast une float %6690, %6698
  br i1 %6699, label %6700, label %6710

; <label>:6700                                    ; preds = %6660
  %6701 = fmul fast float %6683, %6678
  %6702 = fmul fast float %6683, %6677
  %6703 = fmul fast float %6683, %6676
  %6704 = fmul fast float %6703, %6703
  %6705 = fmul fast float %6702, %6702
  %6706 = fadd fast float %6704, %6705
  %6707 = fmul fast float %6701, %6701
  %6708 = fadd fast float %6706, %6707
  %6709 = call float @dx.op.unary.f32(i32 24, float %6708)  ; Sqrt(value)
  br label %6722

; <label>:6710                                    ; preds = %6660
  %6711 = icmp slt i32 %6689, 0
  br i1 %6711, label %6712, label %6722

; <label>:6712                                    ; preds = %6710
  %6713 = fsub fast float %152, %6447
  %6714 = fsub fast float %153, %6448
  %6715 = fsub fast float %154, %6672
  %6716 = fmul fast float %6713, %6713
  %6717 = fmul fast float %6714, %6714
  %6718 = fadd fast float %6716, %6717
  %6719 = fmul fast float %6715, %6715
  %6720 = fadd fast float %6718, %6719
  %6721 = call float @dx.op.unary.f32(i32 24, float %6720)  ; Sqrt(value)
  br label %6722

; <label>:6722                                    ; preds = %6712, %6710, %6700
  %6723 = phi float [ %6709, %6700 ], [ %6721, %6712 ], [ 0.000000e+00, %6710 ]
  %6724 = and i1 %6667, %6665
  %6725 = fsub fast float -0.000000e+00, %6723
  %6726 = select i1 %6724, float -0.000000e+00, float %6725
  %6727 = fmul fast float %3678, 0x3FF7154760000000
  %6728 = fmul fast float %6727, %6726
  %6729 = fmul fast float %3679, 0x3FF7154760000000
  %6730 = fmul fast float %6729, %6726
  %6731 = fmul fast float %3680, 0x3FF7154760000000
  %6732 = fmul fast float %6731, %6726
  %6733 = call float @dx.op.unary.f32(i32 21, float %6728)  ; Exp(value)
  %6734 = call float @dx.op.unary.f32(i32 21, float %6730)  ; Exp(value)
  %6735 = call float @dx.op.unary.f32(i32 21, float %6732)  ; Exp(value)
  %6736 = call float @dx.op.unary.f32(i32 7, float %6733)  ; Saturate(value)
  %6737 = call float @dx.op.unary.f32(i32 7, float %6734)  ; Saturate(value)
  %6738 = call float @dx.op.unary.f32(i32 7, float %6735)  ; Saturate(value)
  %6739 = fmul fast float %6661, %6736
  %6740 = fmul fast float %6662, %6737
  %6741 = fmul fast float %6663, %6738
  %6742 = fsub fast float %6481, %3877
  %6743 = fsub fast float %6482, %3876
  %6744 = fsub fast float %6483, %3875
  %6745 = call float @dx.op.dot3.f32(i32 55, float %6742, float %6743, float %6744, float %6742, float %6743, float %6744)  ; Dot3(ax,ay,az,bx,by,bz)
  %6746 = call float @dx.op.unary.f32(i32 25, float %6745)  ; Rsqrt(value)
  %6747 = fmul fast float %6746, %6742
  %6748 = fmul fast float %6746, %6743
  %6749 = fmul fast float %6746, %6744
  %6750 = call float @dx.op.dot3.f32(i32 55, float %6481, float %6482, float %6483, float %3884, float %3885, float %3886)  ; Dot3(ax,ay,az,bx,by,bz)
  %6751 = call float @dx.op.dot3.f32(i32 55, float %3874, float %3873, float %3872, float %6747, float %6748, float %6749)  ; Dot3(ax,ay,az,bx,by,bz)
  %6752 = call float @dx.op.unary.f32(i32 7, float %6750)  ; Saturate(value)
  %6753 = fmul fast float %6752, %6488
  %6754 = bitcast i32 %3904 to float
  %6755 = fmul fast float %6752, %6752
  %6756 = fmul fast float %6755, %6754
  %6757 = call float @dx.op.unary.f32(i32 7, float %6756)  ; Saturate(value)
  %6758 = fmul fast float %6753, %6757
  %6759 = bitcast float %6478 to i32
  %6760 = ashr i32 %6759, 1
  %6761 = sub nsw i32 1597463007, %6760
  %6762 = bitcast i32 %6761 to float
  %6763 = fmul fast float %6762, %6475
  %6764 = fmul fast float %6762, %6476
  %6765 = fmul fast float %6762, %6477
  %6766 = fsub fast float %6763, %3877
  %6767 = fsub fast float %6764, %3876
  %6768 = fsub fast float %6765, %3875
  %6769 = call float @dx.op.dot3.f32(i32 55, float %6766, float %6767, float %6768, float %6766, float %6767, float %6768)  ; Dot3(ax,ay,az,bx,by,bz)
  %6770 = call float @dx.op.unary.f32(i32 25, float %6769)  ; Rsqrt(value)
  %6771 = fmul fast float %6766, %6770
  %6772 = fmul fast float %6767, %6770
  %6773 = fmul fast float %6768, %6770
  %6774 = call float @dx.op.dot3.f32(i32 55, float %3884, float %3885, float %3886, float %6771, float %6772, float %6773)  ; Dot3(ax,ay,az,bx,by,bz)
  %6775 = fmul fast float %6774, %6774
  %6776 = call float @dx.op.unary.f32(i32 6, float %6750)  ; FAbs(value)
  %6777 = fsub fast float 1.000000e+00, %3887
  %6778 = call float @dx.op.binary.f32(i32 35, float %6777, float 0x3F847AE140000000)  ; FMax(a,b)
  %6779 = fmul fast float %6778, %6778
  %6780 = fmul fast float %6779, %6779
  %6781 = fsub fast float 1.000000e+00, %6780
  %6782 = fmul fast float %3892, %3892
  %6783 = fmul fast float %6782, %6781
  %6784 = fadd fast float %6783, %6780
  %6785 = bitcast float %6784 to i32
  %6786 = ashr i32 %6785, 1
  %6787 = add nsw i32 %6786, 532487669
  %6788 = bitcast i32 %6787 to float
  %6789 = fadd fast float %6788, %3892
  %6790 = fmul fast float %6780, %6775
  %6791 = fsub fast float 1.000000e+00, %6775
  %6792 = fadd fast float %6791, %6790
  %6793 = fmul fast float %6776, %6776
  %6794 = fmul fast float %6793, %6781
  %6795 = fadd fast float %6794, %6780
  %6796 = bitcast float %6795 to i32
  %6797 = ashr i32 %6796, 1
  %6798 = add nsw i32 %6797, 532487669
  %6799 = bitcast i32 %6798 to float
  %6800 = fadd fast float %6799, %6776
  %6801 = fmul fast float %6792, %6792
  %6802 = fmul fast float %6801, %6789
  %6803 = fmul fast float %6802, %6800
  %6804 = fdiv fast float 1.000000e+00, %6803
  %6805 = bitcast float %6780 to i32
  %6806 = sitofp i32 %6805 to float
  %6807 = fmul fast float %6806, 0x3FE7F73180000000
  %6808 = fadd fast float %6807, 0x41AFE27C40000000
  %6809 = fptosi float %6808 to i32
  %6810 = bitcast i32 %6809 to float
  %6811 = fmul fast float %6444, 0x3FD80E9D60000000
  %6812 = fmul fast float %6811, %6762
  %6813 = fadd fast float %6810, %6812
  %6814 = bitcast float %6813 to i32
  %6815 = sub nsw i32 2129859010, %6814
  %6816 = bitcast i32 %6815 to float
  %6817 = fmul fast float %6780, %6804
  %6818 = fmul fast float %6817, %6810
  %6819 = fmul fast float %6818, %6816
  %6820 = call float @dx.op.unary.f32(i32 6, float %6751)  ; FAbs(value)
  %6821 = fsub fast float 1.000000e+00, %6820
  %6822 = bitcast float %6821 to i32
  %6823 = sitofp i32 %6822 to float
  %6824 = fmul fast float %6823, 5.000000e+00
  %6825 = fadd fast float %6824, 0xC1EFBF8940000000
  %6826 = fptosi float %6825 to i32
  %6827 = bitcast i32 %6826 to float
  %6828 = fsub fast float 1.000000e+00, %3878
  %6829 = fsub fast float 1.000000e+00, %3879
  %6830 = fsub fast float 1.000000e+00, %3890
  %6831 = fmul fast float %6827, %6828
  %6832 = fmul fast float %6827, %6829
  %6833 = fmul fast float %6827, %6830
  %6834 = fadd fast float %6831, %3878
  %6835 = fadd fast float %6832, %3879
  %6836 = fadd fast float %6833, %3890
  br i1 %5169, label %6837, label %6860

; <label>:6837                                    ; preds = %6722
  %6838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %3255, float %6820, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6839 = extractvalue %dx.types.ResRet.f32 %6838, 0
  %6840 = extractvalue %dx.types.ResRet.f32 %6838, 1
  %6841 = extractvalue %dx.types.ResRet.f32 %6838, 2
  %6842 = fadd fast float %6839, -5.000000e-01
  %6843 = fadd fast float %6840, -5.000000e-01
  %6844 = fadd fast float %6841, -5.000000e-01
  %6845 = fmul fast float %3878, 4.000000e+00
  %6846 = fmul fast float %6845, %6828
  %6847 = fmul fast float %6846, %6842
  %6848 = fmul fast float %3879, 4.000000e+00
  %6849 = fmul fast float %6848, %6829
  %6850 = fmul fast float %6849, %6843
  %6851 = fmul fast float %3890, 4.000000e+00
  %6852 = fmul fast float %6851, %6830
  %6853 = fmul fast float %6852, %6844
  %6854 = fadd fast float %6847, %6834
  %6855 = fadd fast float %6850, %6835
  %6856 = fadd fast float %6853, %6836
  %6857 = call float @dx.op.unary.f32(i32 7, float %6854)  ; Saturate(value)
  %6858 = call float @dx.op.unary.f32(i32 7, float %6855)  ; Saturate(value)
  %6859 = call float @dx.op.unary.f32(i32 7, float %6856)  ; Saturate(value)
  br label %6860

; <label>:6860                                    ; preds = %6837, %6722
  %6861 = phi float [ %6857, %6837 ], [ %6834, %6722 ]
  %6862 = phi float [ %6858, %6837 ], [ %6835, %6722 ]
  %6863 = phi float [ %6859, %6837 ], [ %6836, %6722 ]
  %6864 = fmul fast float %6750, 9.843750e-01
  %6865 = fadd fast float %6864, 7.812500e-03
  %6866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %6865, float %5159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6867 = extractvalue %dx.types.ResRet.f32 %6866, 2
  %6868 = extractvalue %dx.types.ResRet.f32 %6866, 3
  %6869 = fmul fast float %6867, %3878
  %6870 = fmul fast float %6867, %3879
  %6871 = fmul fast float %6867, %3890
  %6872 = fadd fast float %6869, %6868
  %6873 = fadd fast float %6870, %6868
  %6874 = fadd fast float %6871, %6868
  br i1 %5169, label %6875, label %6898

; <label>:6875                                    ; preds = %6860
  %6876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %3255, float %6750, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6877 = extractvalue %dx.types.ResRet.f32 %6876, 0
  %6878 = extractvalue %dx.types.ResRet.f32 %6876, 1
  %6879 = extractvalue %dx.types.ResRet.f32 %6876, 2
  %6880 = fadd fast float %6877, -5.000000e-01
  %6881 = fadd fast float %6878, -5.000000e-01
  %6882 = fadd fast float %6879, -5.000000e-01
  %6883 = fmul fast float %3878, 4.000000e+00
  %6884 = fmul fast float %6883, %6828
  %6885 = fmul fast float %6884, %6880
  %6886 = fmul fast float %3879, 4.000000e+00
  %6887 = fmul fast float %6886, %6829
  %6888 = fmul fast float %6887, %6881
  %6889 = fmul fast float %3890, 4.000000e+00
  %6890 = fmul fast float %6889, %6830
  %6891 = fmul fast float %6890, %6882
  %6892 = fadd fast float %6885, %6872
  %6893 = fadd fast float %6888, %6873
  %6894 = fadd fast float %6891, %6874
  %6895 = call float @dx.op.unary.f32(i32 7, float %6892)  ; Saturate(value)
  %6896 = call float @dx.op.unary.f32(i32 7, float %6893)  ; Saturate(value)
  %6897 = call float @dx.op.unary.f32(i32 7, float %6894)  ; Saturate(value)
  br label %6898

; <label>:6898                                    ; preds = %6875, %6860
  %6899 = phi float [ %6895, %6875 ], [ %6872, %6860 ]
  %6900 = phi float [ %6896, %6875 ], [ %6873, %6860 ]
  %6901 = phi float [ %6897, %6875 ], [ %6874, %6860 ]
  %6902 = call float @dx.op.binary.f32(i32 35, float %6900, float %6901)  ; FMax(a,b)
  %6903 = call float @dx.op.binary.f32(i32 35, float %6899, float %6902)  ; FMax(a,b)
  %6904 = fsub fast float 1.000000e+00, %6903
  %6905 = fmul fast float %6861, %6819
  %6906 = fmul fast float %6862, %6819
  %6907 = fmul fast float %6863, %6819
  %6908 = fsub fast float 1.000000e+00, %6751
  %6909 = bitcast float %6908 to i32
  %6910 = sitofp i32 %6909 to float
  %6911 = fmul fast float %6910, 5.000000e+00
  %6912 = fadd fast float %6911, 0xC1EFBF8940000000
  %6913 = fptosi float %6912 to i32
  %6914 = bitcast i32 %6913 to float
  %6915 = fmul fast float %6914, %3254
  %6916 = fmul fast float %6904, %6915
  %6917 = fmul fast float %6916, %5219
  %6918 = fmul fast float %6916, %5220
  %6919 = fmul fast float %6916, %5221
  %6920 = fadd fast float %6917, %6905
  %6921 = fadd fast float %6918, %6906
  %6922 = fadd fast float %6919, %6907
  %6923 = fmul fast float %6739, %3275
  %6924 = fmul fast float %6923, %6758
  %6925 = fmul fast float %6924, %6904
  %6926 = fmul fast float %6740, %3275
  %6927 = fmul fast float %6926, %6758
  %6928 = fmul fast float %6927, %6904
  %6929 = fmul fast float %6741, %3275
  %6930 = fmul fast float %6929, %6758
  %6931 = fmul fast float %6930, %6904
  %6932 = fadd fast float %6925, %6418
  %6933 = fadd fast float %6928, %6419
  %6934 = fadd fast float %6931, %6420
  %6935 = fmul fast float %6924, %6920
  %6936 = fmul fast float %6927, %6921
  %6937 = fmul fast float %6930, %6922
  %6938 = fadd fast float %6935, %6415
  %6939 = fadd fast float %6936, %6416
  %6940 = fadd fast float %6937, %6417
  br label %6547

; <label>:6941                                    ; preds = %6547
  br label %6942

; <label>:6942                                    ; preds = %6941, %6381
  %6943 = phi float [ %6383, %6381 ], [ %6548, %6941 ]
  %6944 = phi float [ %6384, %6381 ], [ %6549, %6941 ]
  %6945 = phi float [ %6385, %6381 ], [ %6550, %6941 ]
  %6946 = phi float [ %6386, %6381 ], [ %6551, %6941 ]
  %6947 = phi float [ %6387, %6381 ], [ %6552, %6941 ]
  %6948 = phi float [ %6388, %6381 ], [ %6553, %6941 ]
  %6949 = add i32 %6382, 1
  %6950 = icmp ugt i32 %6949, %6378
  br i1 %6950, label %6951, label %6381

; <label>:6951                                    ; preds = %6942
  br label %6952

; <label>:6952                                    ; preds = %6951, %6331, %6321
  %6953 = phi float [ %6322, %6321 ], [ %6322, %6331 ], [ %6943, %6951 ]
  %6954 = phi float [ %6323, %6321 ], [ %6323, %6331 ], [ %6944, %6951 ]
  %6955 = phi float [ %6324, %6321 ], [ %6324, %6331 ], [ %6945, %6951 ]
  %6956 = phi float [ %6325, %6321 ], [ %6325, %6331 ], [ %6946, %6951 ]
  %6957 = phi float [ %6326, %6321 ], [ %6326, %6331 ], [ %6947, %6951 ]
  %6958 = phi float [ %6327, %6321 ], [ %6327, %6331 ], [ %6948, %6951 ]
  %6959 = fmul fast float %3275, %3275
  %6960 = fsub fast float 1.000000e+00, %6959
  %6961 = call float @dx.op.dot3.f32(i32 55, float %6960, float %6960, float %6960, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6962 = fsub fast float 1.000000e+00, %6961
  %6963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6964 = extractvalue %dx.types.CBufRet.f32 %6963, 0
  %6965 = fmul fast float %6964, %5225
  %6966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6967 = extractvalue %dx.types.CBufRet.f32 %6966, 3
  %6968 = fsub fast float 1.000000e+00, %3253
  %6969 = call float @dx.op.unary.f32(i32 7, float %6968)  ; Saturate(value)
  %6970 = fadd fast float %6958, %3252
  %6971 = fmul fast float %6970, %3253
  %6972 = fmul fast float %6969, %6967
  %6973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6974 = extractvalue %dx.types.CBufRet.f32 %6973, 3
  %6975 = fmul fast float %6956, %3881
  %6976 = fmul fast float %6957, %3882
  %6977 = fmul fast float %6958, %3883
  %6978 = fcmp fast ogt float %96, %203
  %6979 = and i1 %6978, %3683
  %6980 = or i1 %3689, %6979
  %6981 = icmp eq i32 %3682, 2
  %6982 = fcmp fast ole float %96, %203
  %6983 = and i1 %6982, %6981
  %6984 = or i1 %6983, %6980
  br i1 %6979, label %6985, label %7244

; <label>:6985                                    ; preds = %6952
  %6986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6987 = extractvalue %dx.types.CBufRet.f32 %6986, 2
  %6988 = extractvalue %dx.types.CBufRet.f32 %6986, 3
  %6989 = fmul fast float %6987, %105
  %6990 = fmul fast float %6988, %106
  %6991 = call float @dx.op.unary.f32(i32 7, float %6989)  ; Saturate(value)
  %6992 = call float @dx.op.unary.f32(i32 7, float %6990)  ; Saturate(value)
  %6993 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6991, float %6992, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6994 = extractvalue %dx.types.ResRet.f32 %6993, 0
  %6995 = extractvalue %dx.types.ResRet.f32 %6993, 1
  %6996 = extractvalue %dx.types.ResRet.f32 %6993, 2
  %6997 = extractvalue %dx.types.ResRet.f32 %6993, 3
  %6998 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6991, float %6992, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6999 = extractvalue %dx.types.ResRet.f32 %6998, 0
  %7000 = extractvalue %dx.types.ResRet.f32 %6998, 1
  %7001 = extractvalue %dx.types.ResRet.f32 %6998, 2
  %7002 = extractvalue %dx.types.ResRet.f32 %6998, 3
  %7003 = call float @dx.op.binary.f32(i32 35, float %6995, float %6996)  ; FMax(a,b)
  %7004 = call float @dx.op.binary.f32(i32 35, float %6994, float %7003)  ; FMax(a,b)
  %7005 = call float @dx.op.binary.f32(i32 35, float %7004, float %6997)  ; FMax(a,b)
  %7006 = call float @dx.op.binary.f32(i32 36, float %7000, float %7001)  ; FMin(a,b)
  %7007 = call float @dx.op.binary.f32(i32 36, float %6999, float %7006)  ; FMin(a,b)
  %7008 = call float @dx.op.binary.f32(i32 36, float %7007, float %7002)  ; FMin(a,b)
  %7009 = fmul fast float %7005, 2.550000e+02
  %7010 = fadd fast float %7009, 0x3F70101020000000
  %7011 = fptoui float %7010 to i32
  %7012 = fmul fast float %7008, 2.550000e+02
  %7013 = fadd fast float %7012, 0x3F70101020000000
  %7014 = fptoui float %7013 to i32
  %7015 = icmp ult i32 %7011, %7014
  br i1 %7015, label %7016, label %7184

; <label>:7016                                    ; preds = %6985
  %7017 = fcmp fast ogt float %95, 9.843750e-01
  %7018 = fadd fast float %96, -4.000000e+00
  %7019 = select i1 %7017, float -4.000000e+00, float %7018
  %7020 = call float @dx.op.binary.f32(i32 35, float %7019, float 0.000000e+00)  ; FMax(a,b)
  %7021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7022 = extractvalue %dx.types.CBufRet.f32 %7021, 0
  %7023 = fadd fast float %7022, %7020
  %7024 = extractvalue %dx.types.CBufRet.f32 %7021, 2
  %7025 = fmul fast float %7023, %7024
  %7026 = call float @dx.op.unary.f32(i32 23, float %7025)  ; Log(value)
  %7027 = extractvalue %dx.types.CBufRet.f32 %7021, 3
  %7028 = fmul fast float %7027, %7026
  %7029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7030 = extractvalue %dx.types.CBufRet.f32 %7029, 2
  %7031 = fmul fast float %7028, %7030
  %7032 = call float @dx.op.unary.f32(i32 7, float %7031)  ; Saturate(value)
  %7033 = uitofp i32 %7011 to float
  %7034 = uitofp i32 %7014 to float
  %7035 = fadd fast float %7033, 5.000000e-01
  %7036 = fadd fast float %7034, 5.000000e-01
  %7037 = fmul fast float %7030, %7035
  %7038 = fmul fast float %7030, %7036
  %7039 = fadd fast float %7037, 0x3F0FFB4800000000
  %7040 = fadd fast float %7038, 0xBF0FFB4800000000
  %7041 = call float @dx.op.binary.f32(i32 35, float %7032, float %7039)  ; FMax(a,b)
  %7042 = call float @dx.op.binary.f32(i32 36, float %7041, float %7040)  ; FMin(a,b)
  %7043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7044 = extractvalue %dx.types.CBufRet.f32 %7043, 1
  %7045 = extractvalue %dx.types.CBufRet.f32 %7043, 2
  %7046 = extractvalue %dx.types.CBufRet.f32 %7043, 0
  %7047 = fmul fast float %7044, %7042
  %7048 = fadd fast float %7046, %7047
  %7049 = fadd fast float %7046, %7045
  %7050 = fsub fast float %7044, %7045
  %7051 = fadd fast float %7050, %7046
  %7052 = call float @dx.op.binary.f32(i32 35, float %7048, float %7049)  ; FMax(a,b)
  %7053 = call float @dx.op.binary.f32(i32 36, float %7052, float %7051)  ; FMin(a,b)
  %7054 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %6991, float %6992, float %7053, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7055 = extractvalue %dx.types.ResRet.f32 %7054, 0
  %7056 = extractvalue %dx.types.ResRet.f32 %7054, 1
  %7057 = extractvalue %dx.types.ResRet.f32 %7054, 2
  %7058 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7059 = extractvalue %dx.types.CBufRet.i32 %7058, 0
  %7060 = extractvalue %dx.types.CBufRet.i32 %7058, 1
  %7061 = uitofp i32 %7059 to float
  %7062 = uitofp i32 %7060 to float
  %7063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7064 = extractvalue %dx.types.CBufRet.f32 %7063, 0
  %7065 = extractvalue %dx.types.CBufRet.f32 %7063, 1
  %7066 = fmul fast float %7061, %6991
  %7067 = fmul fast float %7062, %6992
  %7068 = fadd fast float %7066, -5.000000e-01
  %7069 = fadd fast float %7067, -5.000000e-01
  %7070 = call float @dx.op.unary.f32(i32 22, float %7068)  ; Frc(value)
  %7071 = call float @dx.op.unary.f32(i32 22, float %7069)  ; Frc(value)
  %7072 = fmul fast float %7070, %7070
  %7073 = fmul fast float %7072, %7070
  %7074 = fsub fast float 3.000000e+00, %7070
  %7075 = fmul fast float %7072, %7074
  %7076 = fmul fast float %7070, 3.000000e+00
  %7077 = fmul fast float %7073, 3.000000e+00
  %7078 = fmul fast float %7072, 6.000000e+00
  %7079 = fsub fast float %7077, %7078
  %7080 = fadd fast float %7079, 4.000000e+00
  %7081 = fmul fast float %7080, 0x3FC5555560000000
  %7082 = fmul fast float %7073, -3.000000e+00
  %7083 = fadd fast float %7072, %7070
  %7084 = fmul fast float %7083, 3.000000e+00
  %7085 = fadd fast float %7082, 1.000000e+00
  %7086 = fadd fast float %7085, %7084
  %7087 = fmul fast float %7073, 0x3FC5555560000000
  %7088 = fmul fast float %7071, %7071
  %7089 = fmul fast float %7088, %7071
  %7090 = fsub fast float 3.000000e+00, %7071
  %7091 = fmul fast float %7088, %7090
  %7092 = fmul fast float %7071, 3.000000e+00
  %7093 = fmul fast float %7089, 3.000000e+00
  %7094 = fmul fast float %7088, 6.000000e+00
  %7095 = fsub fast float %7093, %7094
  %7096 = fadd fast float %7095, 4.000000e+00
  %7097 = fmul fast float %7096, 0x3FC5555560000000
  %7098 = fmul fast float %7089, -3.000000e+00
  %7099 = fadd fast float %7088, %7071
  %7100 = fmul fast float %7099, 3.000000e+00
  %7101 = fadd fast float %7098, 1.000000e+00
  %7102 = fadd fast float %7101, %7100
  %7103 = fmul fast float %7089, 0x3FC5555560000000
  %7104 = fadd fast float %7070, 1.000000e+00
  %7105 = fsub fast float 1.000000e+00, %7076
  %7106 = fadd fast float %7105, %7075
  %7107 = fadd fast float %7106, %7080
  %7108 = fmul fast float %7107, 0x3FC5555560000000
  %7109 = fdiv fast float %7081, %7108
  %7110 = fsub fast float %7104, %7109
  %7111 = fsub fast float 1.000000e+00, %7070
  %7112 = fadd fast float %7086, %7073
  %7113 = fmul fast float %7112, 0x3FC5555560000000
  %7114 = fdiv fast float %7087, %7113
  %7115 = fadd fast float %7111, %7114
  %7116 = fadd fast float %7071, 1.000000e+00
  %7117 = fsub fast float 1.000000e+00, %7092
  %7118 = fadd fast float %7117, %7091
  %7119 = fadd fast float %7118, %7096
  %7120 = fmul fast float %7119, 0x3FC5555560000000
  %7121 = fdiv fast float %7097, %7120
  %7122 = fsub fast float %7116, %7121
  %7123 = fsub fast float 1.000000e+00, %7071
  %7124 = fadd fast float %7102, %7089
  %7125 = fmul fast float %7124, 0x3FC5555560000000
  %7126 = fdiv fast float %7103, %7125
  %7127 = fadd fast float %7126, %7123
  %7128 = fmul fast float %7110, %7064
  %7129 = fsub fast float %6991, %7128
  %7130 = fmul fast float %7115, %7064
  %7131 = fadd fast float %7130, %6991
  %7132 = fmul fast float %7127, %7065
  %7133 = fadd fast float %7132, %6992
  %7134 = fmul fast float %7122, %7065
  %7135 = fsub fast float %6992, %7134
  %7136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7129, float %7135, float %7053, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7137 = extractvalue %dx.types.ResRet.f32 %7136, 0
  %7138 = extractvalue %dx.types.ResRet.f32 %7136, 1
  %7139 = extractvalue %dx.types.ResRet.f32 %7136, 2
  %7140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7131, float %7135, float %7053, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7141 = extractvalue %dx.types.ResRet.f32 %7140, 0
  %7142 = extractvalue %dx.types.ResRet.f32 %7140, 1
  %7143 = extractvalue %dx.types.ResRet.f32 %7140, 2
  %7144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7129, float %7133, float %7053, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7145 = extractvalue %dx.types.ResRet.f32 %7144, 0
  %7146 = extractvalue %dx.types.ResRet.f32 %7144, 1
  %7147 = extractvalue %dx.types.ResRet.f32 %7144, 2
  %7148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7131, float %7133, float %7053, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7149 = extractvalue %dx.types.ResRet.f32 %7148, 0
  %7150 = extractvalue %dx.types.ResRet.f32 %7148, 1
  %7151 = extractvalue %dx.types.ResRet.f32 %7148, 2
  %7152 = fsub fast float %7145, %7137
  %7153 = fsub fast float %7146, %7138
  %7154 = fsub fast float %7147, %7139
  %7155 = fmul fast float %7152, %7125
  %7156 = fmul fast float %7153, %7125
  %7157 = fmul fast float %7154, %7125
  %7158 = fadd fast float %7155, %7137
  %7159 = fadd fast float %7156, %7138
  %7160 = fadd fast float %7157, %7139
  %7161 = fsub fast float %7149, %7141
  %7162 = fsub fast float %7150, %7142
  %7163 = fsub fast float %7151, %7143
  %7164 = fmul fast float %7161, %7125
  %7165 = fmul fast float %7162, %7125
  %7166 = fmul fast float %7163, %7125
  %7167 = fsub fast float %7141, %7158
  %7168 = fadd fast float %7167, %7164
  %7169 = fsub fast float %7142, %7159
  %7170 = fadd fast float %7169, %7165
  %7171 = fsub fast float %7143, %7160
  %7172 = fadd fast float %7171, %7166
  %7173 = fmul fast float %7168, %7113
  %7174 = fmul fast float %7170, %7113
  %7175 = fmul fast float %7172, %7113
  %7176 = fadd fast float %7173, %7158
  %7177 = fadd fast float %7174, %7159
  %7178 = fadd fast float %7175, %7160
  %7179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7180 = extractvalue %dx.types.CBufRet.f32 %7179, 1
  %7181 = fmul fast float %7176, %7180
  %7182 = fmul fast float %7177, %7180
  %7183 = fmul fast float %7178, %7180
  br label %7184

; <label>:7184                                    ; preds = %7016, %6985
  %7185 = phi float [ %7055, %7016 ], [ 1.000000e+00, %6985 ]
  %7186 = phi float [ %7056, %7016 ], [ 1.000000e+00, %6985 ]
  %7187 = phi float [ %7057, %7016 ], [ 1.000000e+00, %6985 ]
  %7188 = phi float [ %7181, %7016 ], [ 0.000000e+00, %6985 ]
  %7189 = phi float [ %7182, %7016 ], [ 0.000000e+00, %6985 ]
  %7190 = phi float [ %7183, %7016 ], [ 0.000000e+00, %6985 ]
  %7191 = fmul fast float %7188, %6962
  %7192 = fmul fast float %7189, %6962
  %7193 = fmul fast float %7190, %6962
  %7194 = call float @dx.op.dot3.f32(i32 55, float %7185, float %7186, float %7187, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7195 = call float @dx.op.dot3.f32(i32 55, float %7191, float %7192, float %7193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7196 = select i1 %243, float %7194, float %7185
  %7197 = select i1 %243, float %7194, float %7186
  %7198 = select i1 %243, float 1.000000e+00, float %7187
  %7199 = select i1 %243, float %7195, float %7191
  %7200 = select i1 %243, float 0.000000e+00, float %7192
  %7201 = select i1 %243, float 0.000000e+00, float %7193
  %7202 = fmul fast float %7196, %6975
  %7203 = fmul fast float %7197, %6976
  %7204 = fmul fast float %7198, %6977
  %7205 = fadd fast float %7202, %7199
  %7206 = fadd fast float %7203, %7200
  %7207 = fadd fast float %7201, %7204
  %7208 = fmul fast float %7196, %6953
  %7209 = fmul fast float %7197, %6954
  %7210 = fmul fast float %7198, %6955
  %7211 = fmul fast float %105, 2.000000e+00
  %7212 = fmul fast float %7211, %6987
  %7213 = fmul fast float %106, 2.000000e+00
  %7214 = fmul fast float %7213, %6988
  %7215 = fsub fast float 1.000000e+00, %7212
  %7216 = fsub fast float 1.000000e+00, %7214
  %7217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7218 = extractvalue %dx.types.CBufRet.f32 %7217, 0
  %7219 = extractvalue %dx.types.CBufRet.f32 %7217, 1
  %7220 = extractvalue %dx.types.CBufRet.f32 %7217, 2
  %7221 = fmul fast float %7215, %7218
  %7222 = fmul fast float %7215, %7219
  %7223 = fmul fast float %7215, %7220
  %7224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7225 = extractvalue %dx.types.CBufRet.f32 %7224, 0
  %7226 = extractvalue %dx.types.CBufRet.f32 %7224, 1
  %7227 = extractvalue %dx.types.CBufRet.f32 %7224, 2
  %7228 = fmul fast float %7216, %7225
  %7229 = fmul fast float %7216, %7226
  %7230 = fmul fast float %7216, %7227
  %7231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7232 = extractvalue %dx.types.CBufRet.f32 %7231, 0
  %7233 = extractvalue %dx.types.CBufRet.f32 %7231, 1
  %7234 = extractvalue %dx.types.CBufRet.f32 %7231, 2
  %7235 = fadd fast float %7228, %7232
  %7236 = fadd fast float %7235, %7221
  %7237 = fadd fast float %7229, %7233
  %7238 = fadd fast float %7237, %7222
  %7239 = fadd fast float %7230, %7234
  %7240 = fadd fast float %7239, %7223
  %7241 = fmul fast float %7236, %203
  %7242 = fmul fast float %7238, %203
  %7243 = fmul fast float %7240, %203
  br label %7244

; <label>:7244                                    ; preds = %7184, %6952
  %7245 = phi float [ %7241, %7184 ], [ %152, %6952 ]
  %7246 = phi float [ %7242, %7184 ], [ %153, %6952 ]
  %7247 = phi float [ %7243, %7184 ], [ %154, %6952 ]
  %7248 = phi float [ %203, %7184 ], [ %96, %6952 ]
  %7249 = phi float [ %7205, %7184 ], [ %6975, %6952 ]
  %7250 = phi float [ %7206, %7184 ], [ %6976, %6952 ]
  %7251 = phi float [ %7207, %7184 ], [ %6977, %6952 ]
  %7252 = phi float [ %7208, %7184 ], [ %6953, %6952 ]
  %7253 = phi float [ %7209, %7184 ], [ %6954, %6952 ]
  %7254 = phi float [ %7210, %7184 ], [ %6955, %6952 ]
  %7255 = phi float [ %7185, %7184 ], [ 1.000000e+00, %6952 ]
  br i1 %6984, label %8410, label %7256

; <label>:7256                                    ; preds = %7244
  %7257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7258 = extractvalue %dx.types.CBufRet.f32 %7257, 0
  %7259 = extractvalue %dx.types.CBufRet.f32 %7257, 1
  %7260 = extractvalue %dx.types.CBufRet.f32 %7257, 2
  %7261 = extractvalue %dx.types.CBufRet.f32 %7257, 3
  %7262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7263 = extractvalue %dx.types.CBufRet.f32 %7262, 0
  %7264 = extractvalue %dx.types.CBufRet.f32 %7262, 1
  %7265 = extractvalue %dx.types.CBufRet.f32 %7262, 2
  %7266 = extractvalue %dx.types.CBufRet.f32 %7262, 3
  %7267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7268 = extractvalue %dx.types.CBufRet.f32 %7267, 0
  %7269 = extractvalue %dx.types.CBufRet.f32 %7267, 1
  %7270 = extractvalue %dx.types.CBufRet.f32 %7267, 2
  %7271 = extractvalue %dx.types.CBufRet.f32 %7267, 3
  %7272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7273 = extractvalue %dx.types.CBufRet.f32 %7272, 0
  %7274 = extractvalue %dx.types.CBufRet.f32 %7272, 1
  %7275 = extractvalue %dx.types.CBufRet.f32 %7272, 2
  %7276 = extractvalue %dx.types.CBufRet.f32 %7272, 3
  %7277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7278 = extractvalue %dx.types.CBufRet.f32 %7277, 3
  %7279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7280 = extractvalue %dx.types.CBufRet.f32 %7279, 3
  %7281 = extractvalue %dx.types.CBufRet.f32 %7279, 0
  %7282 = extractvalue %dx.types.CBufRet.f32 %7279, 1
  %7283 = extractvalue %dx.types.CBufRet.f32 %7279, 2
  %7284 = fcmp fast olt float %7283, -5.000000e-01
  %7285 = call float @dx.op.dot3.f32(i32 55, float %7245, float %7246, float %7247, float %7245, float %7246, float %7247)  ; Dot3(ax,ay,az,bx,by,bz)
  %7286 = call float @dx.op.unary.f32(i32 25, float %7285)  ; Rsqrt(value)
  %7287 = fmul fast float %7286, %7285
  %7288 = fmul fast float %7286, %7245
  %7289 = fmul fast float %7286, %7246
  %7290 = fmul fast float %7286, %7247
  %7291 = fadd fast float %7287, %7261
  %7292 = call float @dx.op.dot3.f32(i32 55, float %7288, float %7289, float %7290, float %7258, float %7259, float %7260)  ; Dot3(ax,ay,az,bx,by,bz)
  %7293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7294 = extractvalue %dx.types.CBufRet.i32 %7293, 1
  %7295 = and i32 %7294, 1
  %7296 = icmp ne i32 %7295, 0
  %7297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7298 = extractvalue %dx.types.CBufRet.f32 %7297, 2
  %7299 = fcmp fast ogt float %7298, 0.000000e+00
  %7300 = and i1 %7296, %7299
  br i1 %7300, label %7301, label %7707, !dx.controlflow.hints !139

; <label>:7301                                    ; preds = %7256
  %7302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7303 = extractvalue %dx.types.CBufRet.f32 %7302, 3
  %7304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7305 = extractvalue %dx.types.CBufRet.f32 %7304, 2
  %7306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7307 = extractvalue %dx.types.CBufRet.f32 %7306, 2
  %7308 = fsub fast float %7305, %7307
  %7309 = and i32 %7294, 2
  %7310 = extractvalue %dx.types.CBufRet.i32 %7293, 0
  %7311 = call i32 @dx.op.binary.i32(i32 40, i32 %7310, i32 3)  ; UMin(a,b)
  %7312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7313 = extractvalue %dx.types.CBufRet.f32 %7312, 0
  %7314 = extractvalue %dx.types.CBufRet.f32 %7312, 1
  %7315 = extractvalue %dx.types.CBufRet.f32 %7306, 0
  %7316 = extractvalue %dx.types.CBufRet.f32 %7306, 1
  %7317 = fsub fast float %7313, %7315
  %7318 = fsub fast float %7314, %7316
  %7319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7320 = extractvalue %dx.types.CBufRet.f32 %7319, 0
  %7321 = fcmp fast ogt float %7320, 0.000000e+00
  %7322 = fsub fast float -0.000000e+00, %7317
  %7323 = fsub fast float -0.000000e+00, %7318
  %7324 = call float @dx.op.dot2.f32(i32 54, float %7288, float %7289, float %7288, float %7289)  ; Dot2(ax,ay,bx,by)
  %7325 = call float @dx.op.dot2.f32(i32 54, float %7288, float %7289, float %7322, float %7323)  ; Dot2(ax,ay,bx,by)
  %7326 = fmul fast float %7325, 2.000000e+00
  %7327 = call float @dx.op.dot2.f32(i32 54, float %7322, float %7323, float %7322, float %7323)  ; Dot2(ax,ay,bx,by)
  %7328 = fmul fast float %7320, %7320
  %7329 = fsub fast float %7327, %7328
  %7330 = fmul fast float %7326, %7326
  %7331 = fmul fast float %7324, 4.000000e+00
  %7332 = fmul fast float %7331, %7329
  %7333 = fsub fast float %7330, %7332
  %7334 = fcmp fast ogt float %7333, 0.000000e+00
  br i1 %7334, label %7335, label %7350

; <label>:7335                                    ; preds = %7301
  %7336 = fcmp fast ogt float %7326, 0.000000e+00
  %7337 = call float @dx.op.unary.f32(i32 24, float %7333)  ; Sqrt(value)
  %7338 = fsub fast float -0.000000e+00, %7337
  %7339 = select i1 %7336, float %7337, float %7338
  %7340 = fadd fast float %7339, %7326
  %7341 = fmul float %7340, -5.000000e-01
  %7342 = fdiv fast float %7341, %7324
  %7343 = call float @dx.op.binary.f32(i32 35, float %7342, float 0.000000e+00)  ; FMax(a,b)
  %7344 = call float @dx.op.binary.f32(i32 36, float %7287, float %7343)  ; FMin(a,b)
  %7345 = fdiv fast float %7329, %7341
  %7346 = call float @dx.op.binary.f32(i32 35, float %7345, float 0.000000e+00)  ; FMax(a,b)
  %7347 = call float @dx.op.binary.f32(i32 36, float %7287, float %7346)  ; FMin(a,b)
  %7348 = call float @dx.op.binary.f32(i32 36, float %7344, float %7347)  ; FMin(a,b)
  %7349 = call float @dx.op.binary.f32(i32 35, float %7344, float %7347)  ; FMax(a,b)
  br label %7350

; <label>:7350                                    ; preds = %7335, %7301
  %7351 = phi float [ %7349, %7335 ], [ -1.000000e+00, %7301 ]
  %7352 = phi float [ %7348, %7335 ], [ -1.000000e+00, %7301 ]
  %7353 = phi i1 [ true, %7335 ], [ false, %7301 ]
  %7354 = and i1 %7321, %7353
  br i1 %7354, label %7355, label %7357

; <label>:7355                                    ; preds = %7350
  %7356 = fcmp fast oeq float %7352, %7351
  br i1 %7356, label %7660, label %7358

; <label>:7357                                    ; preds = %7350
  br i1 %7321, label %7660, label %7358

; <label>:7358                                    ; preds = %7357, %7355
  %7359 = phi float [ %7287, %7357 ], [ %7351, %7355 ]
  %7360 = phi float [ 0.000000e+00, %7357 ], [ %7352, %7355 ]
  %7361 = icmp ne i32 %7309, 0
  %7362 = fmul fast float %7359, %7290
  %7363 = fadd fast float %7362, %7303
  %7364 = fmul fast float %7363, %7359
  %7365 = select i1 %7361, float 0.000000e+00, float %7364
  %7366 = fcmp fast oeq float %7290, 0.000000e+00
  %7367 = fdiv fast float %7308, %7290
  %7368 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7367)  ; FMax(a,b)
  %7369 = select i1 %7366, float %7359, float %7368
  %7370 = call float @dx.op.binary.f32(i32 36, float %7359, float %7369)  ; FMin(a,b)
  %7371 = fcmp fast ogt float %7290, 0.000000e+00
  %7372 = fcmp fast olt float %7308, 0.000000e+00
  br i1 %7371, label %7373, label %7430

; <label>:7373                                    ; preds = %7358
  %7374 = icmp eq i32 %7309, 0
  br i1 %7372, label %7375, label %7419

; <label>:7375                                    ; preds = %7373
  %7376 = select i1 %7374, float %7359, float 0.000000e+00
  %7377 = fsub fast float -0.000000e+00, %7376
  %7378 = call float @dx.op.unary.f32(i32 6, float %7377)  ; FAbs(value)
  %7379 = fmul fast float %7376, %7290
  %7380 = fadd fast float %7379, %7303
  %7381 = fmul fast float %7378, %7380
  %7382 = fsub fast float %7365, %7381
  %7383 = fsub fast float %7359, %7378
  %7384 = select i1 %7374, float %7383, float 0.000000e+00
  %7385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7386 = extractvalue %dx.types.CBufRet.f32 %7385, 0
  %7387 = extractvalue %dx.types.CBufRet.f32 %7385, 1
  %7388 = extractvalue %dx.types.CBufRet.f32 %7385, 2
  %7389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7390 = extractvalue %dx.types.CBufRet.f32 %7389, 0
  %7391 = extractvalue %dx.types.CBufRet.f32 %7389, 1
  %7392 = extractvalue %dx.types.CBufRet.f32 %7389, 2
  %7393 = extractvalue %dx.types.CBufRet.f32 %7389, 3
  %7394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7395 = extractvalue %dx.types.CBufRet.f32 %7394, 3
  %7396 = call float @dx.op.binary.f32(i32 36, float %7382, float %7395)  ; FMin(a,b)
  %7397 = fmul fast float %7393, %7384
  %7398 = call float @dx.op.unary.f32(i32 7, float %7397)  ; Saturate(value)
  %7399 = fsub fast float %7390, %7386
  %7400 = fsub fast float %7391, %7387
  %7401 = fsub fast float %7392, %7388
  %7402 = fmul fast float %7398, %7399
  %7403 = fmul fast float %7398, %7400
  %7404 = fmul fast float %7398, %7401
  %7405 = fadd fast float %7402, %7386
  %7406 = fadd fast float %7403, %7387
  %7407 = fadd fast float %7404, %7388
  %7408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7409 = extractvalue %dx.types.CBufRet.f32 %7408, 0
  %7410 = extractvalue %dx.types.CBufRet.f32 %7408, 1
  %7411 = fadd fast float %7410, %7409
  %7412 = call float @dx.op.unary.f32(i32 7, float %7411)  ; Saturate(value)
  %7413 = extractvalue %dx.types.CBufRet.f32 %7408, 2
  %7414 = extractvalue %dx.types.CBufRet.f32 %7408, 3
  %7415 = fadd fast float %7414, %7413
  %7416 = call float @dx.op.unary.f32(i32 7, float %7415)  ; Saturate(value)
  %7417 = fmul fast float %7412, %7396
  %7418 = fmul fast float %7417, %7416
  br label %7660

; <label>:7419                                    ; preds = %7373
  br i1 %7374, label %7420, label %7441

; <label>:7420                                    ; preds = %7419
  %7421 = call float @dx.op.binary.f32(i32 36, float %7370, float %7360)  ; FMin(a,b)
  %7422 = fsub fast float %7370, %7421
  %7423 = fsub fast float %7422, %7359
  %7424 = call float @dx.op.unary.f32(i32 6, float %7423)  ; FAbs(value)
  %7425 = fadd fast float %7422, %7359
  %7426 = fmul fast float %7425, %7290
  %7427 = fadd fast float %7426, %7303
  %7428 = fmul fast float %7427, %7424
  %7429 = fsub fast float %7365, %7428
  br label %7441

; <label>:7430                                    ; preds = %7358
  br i1 %7372, label %7431, label %7441

; <label>:7431                                    ; preds = %7430
  %7432 = call float @dx.op.binary.f32(i32 35, float %7360, float %7370)  ; FMax(a,b)
  %7433 = icmp eq i32 %7309, 0
  %7434 = select i1 %7433, float %7370, float 0.000000e+00
  %7435 = fsub fast float -0.000000e+00, %7434
  %7436 = call float @dx.op.unary.f32(i32 6, float %7435)  ; FAbs(value)
  %7437 = fmul fast float %7434, %7290
  %7438 = fadd fast float %7437, %7303
  %7439 = fmul fast float %7436, %7438
  %7440 = fsub fast float %7365, %7439
  br label %7441

; <label>:7441                                    ; preds = %7431, %7430, %7420, %7419
  %7442 = phi float [ %7360, %7419 ], [ %7360, %7420 ], [ %7432, %7431 ], [ %7360, %7430 ]
  %7443 = phi float [ 0.000000e+00, %7419 ], [ %7424, %7420 ], [ %7436, %7431 ], [ 0.000000e+00, %7430 ]
  %7444 = phi float [ %7365, %7419 ], [ %7429, %7420 ], [ %7440, %7431 ], [ %7365, %7430 ]
  %7445 = phi float [ %7370, %7419 ], [ %7370, %7420 ], [ %7359, %7431 ], [ %7359, %7430 ]
  %7446 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %7446, align 4, !tbaa !140, !noalias !142
  %7447 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %7447, align 4, !tbaa !140, !noalias !142
  %7448 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %7448, align 4, !tbaa !140, !noalias !142
  %7449 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 0
  store float -1.000000e+00, float* %7449, align 4, !tbaa !140, !noalias !142
  %7450 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 1
  store float -1.000000e+00, float* %7450, align 4, !tbaa !140, !noalias !142
  %7451 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 2
  store float -1.000000e+00, float* %7451, align 4, !tbaa !140, !noalias !142
  %7452 = icmp sgt i32 %7311, 0
  br i1 %7452, label %7453, label %7514

; <label>:7453                                    ; preds = %7441
  br label %7454

; <label>:7454                                    ; preds = %7503, %7453
  %7455 = phi i32 [ %7504, %7503 ], [ 0, %7453 ]
  %7456 = phi i32 [ %7505, %7503 ], [ 0, %7453 ]
  %7457 = add nuw i32 %7456, 171
  %7458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %7457)  ; CBufferLoadLegacy(handle,regIndex)
  %7459 = extractvalue %dx.types.CBufRet.f32 %7458, 0
  %7460 = extractvalue %dx.types.CBufRet.f32 %7458, 1
  %7461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7462 = extractvalue %dx.types.CBufRet.f32 %7461, 0
  %7463 = extractvalue %dx.types.CBufRet.f32 %7461, 1
  %7464 = fsub fast float %7459, %7462
  %7465 = fsub fast float %7460, %7463
  %7466 = extractvalue %dx.types.CBufRet.f32 %7458, 2
  %7467 = fsub fast float -0.000000e+00, %7464
  %7468 = fsub fast float -0.000000e+00, %7465
  %7469 = call float @dx.op.dot2.f32(i32 54, float %7288, float %7289, float %7467, float %7468)  ; Dot2(ax,ay,bx,by)
  %7470 = fmul fast float %7469, 2.000000e+00
  %7471 = call float @dx.op.dot2.f32(i32 54, float %7467, float %7468, float %7467, float %7468)  ; Dot2(ax,ay,bx,by)
  %7472 = fmul fast float %7466, %7466
  %7473 = fsub fast float %7471, %7472
  %7474 = fmul fast float %7470, %7470
  %7475 = fmul fast float %7331, %7473
  %7476 = fsub fast float %7474, %7475
  %7477 = fcmp fast ogt float %7476, 0.000000e+00
  br i1 %7477, label %7478, label %7493

; <label>:7478                                    ; preds = %7454
  %7479 = fcmp fast ogt float %7470, 0.000000e+00
  %7480 = call float @dx.op.unary.f32(i32 24, float %7476)  ; Sqrt(value)
  %7481 = fsub fast float -0.000000e+00, %7480
  %7482 = select i1 %7479, float %7480, float %7481
  %7483 = fadd fast float %7482, %7470
  %7484 = fmul float %7483, -5.000000e-01
  %7485 = fdiv fast float %7484, %7324
  %7486 = call float @dx.op.binary.f32(i32 35, float %7485, float 0.000000e+00)  ; FMax(a,b)
  %7487 = call float @dx.op.binary.f32(i32 36, float %7359, float %7486)  ; FMin(a,b)
  %7488 = fdiv fast float %7473, %7484
  %7489 = call float @dx.op.binary.f32(i32 35, float %7488, float 0.000000e+00)  ; FMax(a,b)
  %7490 = call float @dx.op.binary.f32(i32 36, float %7359, float %7489)  ; FMin(a,b)
  %7491 = call float @dx.op.binary.f32(i32 36, float %7487, float %7490)  ; FMin(a,b)
  %7492 = call float @dx.op.binary.f32(i32 35, float %7487, float %7490)  ; FMax(a,b)
  br label %7493

; <label>:7493                                    ; preds = %7478, %7454
  %7494 = phi float [ %7492, %7478 ], [ -1.000000e+00, %7454 ]
  %7495 = phi float [ %7491, %7478 ], [ -1.000000e+00, %7454 ]
  %7496 = phi i1 [ true, %7478 ], [ false, %7454 ]
  br i1 %7496, label %7497, label %7503

; <label>:7497                                    ; preds = %7493
  %7498 = call float @dx.op.binary.f32(i32 35, float %7442, float %7495)  ; FMax(a,b)
  %7499 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7456
  store float %7498, float* %7499, align 4, !tbaa !140, !noalias !142
  %7500 = call float @dx.op.binary.f32(i32 35, float %7442, float %7494)  ; FMax(a,b)
  %7501 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7456
  store float %7500, float* %7501, align 4, !tbaa !140, !noalias !142
  %7502 = add nsw i32 %7455, 1
  br label %7503

; <label>:7503                                    ; preds = %7497, %7493
  %7504 = phi i32 [ %7502, %7497 ], [ %7455, %7493 ]
  %7505 = add nuw nsw i32 %7456, 1
  %7506 = icmp eq i32 %7505, %7311
  br i1 %7506, label %7507, label %7454

; <label>:7507                                    ; preds = %7503
  %7508 = load float, float* %7448, align 4, !tbaa !140, !alias.scope !158, !noalias !161
  %7509 = load float, float* %7447, align 4, !tbaa !140, !alias.scope !164, !noalias !165
  %7510 = load float, float* %7446, align 4, !tbaa !140, !alias.scope !166, !noalias !167
  %7511 = load float, float* %7451, align 4, !tbaa !140, !alias.scope !168, !noalias !171
  %7512 = load float, float* %7450, align 4, !tbaa !140, !alias.scope !174, !noalias !175
  %7513 = load float, float* %7449, align 4, !tbaa !140, !alias.scope !176, !noalias !177
  br label %7514

; <label>:7514                                    ; preds = %7507, %7441
  %7515 = phi float [ -1.000000e+00, %7441 ], [ %7513, %7507 ]
  %7516 = phi float [ -1.000000e+00, %7441 ], [ %7512, %7507 ]
  %7517 = phi float [ -1.000000e+00, %7441 ], [ %7511, %7507 ]
  %7518 = phi float [ -1.000000e+00, %7441 ], [ %7510, %7507 ]
  %7519 = phi float [ -1.000000e+00, %7441 ], [ %7509, %7507 ]
  %7520 = phi float [ -1.000000e+00, %7441 ], [ %7508, %7507 ]
  %7521 = phi i32 [ 0, %7441 ], [ %7504, %7507 ]
  %7522 = call float @dx.op.binary.f32(i32 36, float %7519, float %7520)  ; FMin(a,b)
  %7523 = call float @dx.op.binary.f32(i32 36, float %7518, float %7522)  ; FMin(a,b)
  %7524 = call float @dx.op.binary.f32(i32 35, float %7518, float %7519)  ; FMax(a,b)
  %7525 = call float @dx.op.binary.f32(i32 36, float %7524, float %7520)  ; FMin(a,b)
  %7526 = call float @dx.op.binary.f32(i32 36, float %7518, float %7519)  ; FMin(a,b)
  %7527 = call float @dx.op.binary.f32(i32 35, float %7526, float %7525)  ; FMax(a,b)
  %7528 = call float @dx.op.binary.f32(i32 35, float %7519, float %7520)  ; FMax(a,b)
  %7529 = call float @dx.op.binary.f32(i32 35, float %7518, float %7528)  ; FMax(a,b)
  store float %7523, float* %7446, align 4, !tbaa !140, !alias.scope !166, !noalias !167
  store float %7527, float* %7447, align 4, !tbaa !140, !alias.scope !164, !noalias !165
  store float %7529, float* %7448, align 4, !tbaa !140, !alias.scope !158, !noalias !161
  %7530 = call float @dx.op.binary.f32(i32 36, float %7516, float %7517)  ; FMin(a,b)
  %7531 = call float @dx.op.binary.f32(i32 36, float %7515, float %7530)  ; FMin(a,b)
  %7532 = call float @dx.op.binary.f32(i32 35, float %7515, float %7516)  ; FMax(a,b)
  %7533 = call float @dx.op.binary.f32(i32 36, float %7532, float %7517)  ; FMin(a,b)
  %7534 = call float @dx.op.binary.f32(i32 36, float %7515, float %7516)  ; FMin(a,b)
  %7535 = call float @dx.op.binary.f32(i32 35, float %7534, float %7533)  ; FMax(a,b)
  %7536 = call float @dx.op.binary.f32(i32 35, float %7516, float %7517)  ; FMax(a,b)
  %7537 = call float @dx.op.binary.f32(i32 35, float %7515, float %7536)  ; FMax(a,b)
  store float %7531, float* %7449, align 4, !tbaa !140, !alias.scope !176, !noalias !177
  store float %7535, float* %7450, align 4, !tbaa !140, !alias.scope !174, !noalias !175
  store float %7537, float* %7451, align 4, !tbaa !140, !alias.scope !168, !noalias !171
  %7538 = sub nsw i32 3, %7521
  %7539 = icmp sgt i32 %7538, 2
  br i1 %7539, label %7540, label %7578

; <label>:7540                                    ; preds = %7514
  %7541 = icmp eq i32 %7309, 0
  %7542 = fsub fast float %7359, %7443
  %7543 = select i1 %7541, float %7542, float %7443
  %7544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7545 = extractvalue %dx.types.CBufRet.f32 %7544, 0
  %7546 = extractvalue %dx.types.CBufRet.f32 %7544, 1
  %7547 = extractvalue %dx.types.CBufRet.f32 %7544, 2
  %7548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7549 = extractvalue %dx.types.CBufRet.f32 %7548, 0
  %7550 = extractvalue %dx.types.CBufRet.f32 %7548, 1
  %7551 = extractvalue %dx.types.CBufRet.f32 %7548, 2
  %7552 = extractvalue %dx.types.CBufRet.f32 %7548, 3
  %7553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7554 = extractvalue %dx.types.CBufRet.f32 %7553, 3
  %7555 = call float @dx.op.binary.f32(i32 36, float %7444, float %7554)  ; FMin(a,b)
  %7556 = fmul fast float %7552, %7543
  %7557 = call float @dx.op.unary.f32(i32 7, float %7556)  ; Saturate(value)
  %7558 = fsub fast float %7549, %7545
  %7559 = fsub fast float %7550, %7546
  %7560 = fsub fast float %7551, %7547
  %7561 = fmul fast float %7557, %7558
  %7562 = fmul fast float %7557, %7559
  %7563 = fmul fast float %7557, %7560
  %7564 = fadd fast float %7561, %7545
  %7565 = fadd fast float %7562, %7546
  %7566 = fadd fast float %7563, %7547
  %7567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7568 = extractvalue %dx.types.CBufRet.f32 %7567, 0
  %7569 = extractvalue %dx.types.CBufRet.f32 %7567, 1
  %7570 = fadd fast float %7569, %7568
  %7571 = call float @dx.op.unary.f32(i32 7, float %7570)  ; Saturate(value)
  %7572 = extractvalue %dx.types.CBufRet.f32 %7567, 2
  %7573 = extractvalue %dx.types.CBufRet.f32 %7567, 3
  %7574 = fadd fast float %7573, %7572
  %7575 = call float @dx.op.unary.f32(i32 7, float %7574)  ; Saturate(value)
  %7576 = fmul fast float %7571, %7555
  %7577 = fmul fast float %7576, %7575
  br label %7660

; <label>:7578                                    ; preds = %7514
  %7579 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7538
  %7580 = load float, float* %7579, align 4, !tbaa !140, !noalias !142
  %7581 = fcmp fast olt float %7580, %7445
  %7582 = icmp sgt i32 %7521, 0
  %7583 = and i1 %7582, %7581
  br i1 %7583, label %7584, label %7621

; <label>:7584                                    ; preds = %7578
  br label %7585

; <label>:7585                                    ; preds = %7614, %7584
  %7586 = phi float [ %7615, %7614 ], [ %7443, %7584 ]
  %7587 = phi float [ %7616, %7614 ], [ %7444, %7584 ]
  %7588 = phi float [ %7596, %7614 ], [ %7580, %7584 ]
  %7589 = phi i32 [ %7593, %7614 ], [ %7538, %7584 ]
  %7590 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7589
  %7591 = load float, float* %7590, align 4, !tbaa !140, !noalias !142
  %7592 = icmp slt i32 %7589, 2
  %7593 = add nsw i32 %7589, 1
  %7594 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7593
  %7595 = load float, float* %7594, align 4, !tbaa !140, !noalias !142
  %7596 = select i1 %7592, float %7595, float %7359
  %7597 = call float @dx.op.binary.f32(i32 36, float %7596, float %7591)  ; FMin(a,b)
  %7598 = call float @dx.op.binary.f32(i32 36, float %7445, float %7597)  ; FMin(a,b)
  %7599 = icmp eq i32 %7309, 0
  %7600 = fadd fast float %7598, %7588
  %7601 = fmul fast float %7600, %7290
  %7602 = fadd fast float %7601, %7303
  br i1 %7599, label %7608, label %7603

; <label>:7603                                    ; preds = %7585
  %7604 = fsub fast float %7598, %7588
  %7605 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7604)  ; FMax(a,b)
  %7606 = fmul fast float %7605, %7602
  %7607 = fadd fast float %7606, %7587
  br label %7614

; <label>:7608                                    ; preds = %7585
  %7609 = fsub fast float %7588, %7598
  %7610 = call float @dx.op.unary.f32(i32 6, float %7609)  ; FAbs(value)
  %7611 = fadd fast float %7610, %7586
  %7612 = fmul fast float %7610, %7602
  %7613 = fsub fast float %7587, %7612
  br label %7614

; <label>:7614                                    ; preds = %7608, %7603
  %7615 = phi float [ %7605, %7603 ], [ %7611, %7608 ]
  %7616 = phi float [ %7607, %7603 ], [ %7613, %7608 ]
  %7617 = fcmp fast olt float %7596, %7445
  %7618 = icmp slt i32 %7593, 3
  %7619 = and i1 %7618, %7617
  br i1 %7619, label %7585, label %7620

; <label>:7620                                    ; preds = %7614
  br label %7621

; <label>:7621                                    ; preds = %7620, %7578
  %7622 = phi float [ %7443, %7578 ], [ %7615, %7620 ]
  %7623 = phi float [ %7444, %7578 ], [ %7616, %7620 ]
  %7624 = fsub fast float %7359, %7622
  %7625 = select i1 %7361, float %7622, float %7624
  %7626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7627 = extractvalue %dx.types.CBufRet.f32 %7626, 0
  %7628 = extractvalue %dx.types.CBufRet.f32 %7626, 1
  %7629 = extractvalue %dx.types.CBufRet.f32 %7626, 2
  %7630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7631 = extractvalue %dx.types.CBufRet.f32 %7630, 0
  %7632 = extractvalue %dx.types.CBufRet.f32 %7630, 1
  %7633 = extractvalue %dx.types.CBufRet.f32 %7630, 2
  %7634 = extractvalue %dx.types.CBufRet.f32 %7630, 3
  %7635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7636 = extractvalue %dx.types.CBufRet.f32 %7635, 3
  %7637 = call float @dx.op.binary.f32(i32 36, float %7623, float %7636)  ; FMin(a,b)
  %7638 = fmul fast float %7634, %7625
  %7639 = call float @dx.op.unary.f32(i32 7, float %7638)  ; Saturate(value)
  %7640 = fsub fast float %7631, %7627
  %7641 = fsub fast float %7632, %7628
  %7642 = fsub fast float %7633, %7629
  %7643 = fmul fast float %7639, %7640
  %7644 = fmul fast float %7639, %7641
  %7645 = fmul fast float %7639, %7642
  %7646 = fadd fast float %7643, %7627
  %7647 = fadd fast float %7644, %7628
  %7648 = fadd fast float %7645, %7629
  %7649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7650 = extractvalue %dx.types.CBufRet.f32 %7649, 0
  %7651 = extractvalue %dx.types.CBufRet.f32 %7649, 1
  %7652 = fadd fast float %7651, %7650
  %7653 = call float @dx.op.unary.f32(i32 7, float %7652)  ; Saturate(value)
  %7654 = extractvalue %dx.types.CBufRet.f32 %7649, 2
  %7655 = extractvalue %dx.types.CBufRet.f32 %7649, 3
  %7656 = fadd fast float %7655, %7654
  %7657 = call float @dx.op.unary.f32(i32 7, float %7656)  ; Saturate(value)
  %7658 = fmul fast float %7653, %7637
  %7659 = fmul fast float %7658, %7657
  br label %7660

; <label>:7660                                    ; preds = %7621, %7540, %7375, %7357, %7355
  %7661 = phi float [ %7384, %7375 ], [ %7543, %7540 ], [ %7625, %7621 ], [ 0.000000e+00, %7355 ], [ 0.000000e+00, %7357 ]
  %7662 = phi float [ %7418, %7375 ], [ %7577, %7540 ], [ %7659, %7621 ], [ 0.000000e+00, %7355 ], [ 0.000000e+00, %7357 ]
  %7663 = phi float [ %7405, %7375 ], [ %7564, %7540 ], [ %7646, %7621 ], [ 0.000000e+00, %7355 ], [ 0.000000e+00, %7357 ]
  %7664 = phi float [ %7406, %7375 ], [ %7565, %7540 ], [ %7647, %7621 ], [ 0.000000e+00, %7355 ], [ 0.000000e+00, %7357 ]
  %7665 = phi float [ %7407, %7375 ], [ %7566, %7540 ], [ %7648, %7621 ], [ 0.000000e+00, %7355 ], [ 0.000000e+00, %7357 ]
  %7666 = fmul fast float %7298, %7662
  %7667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7668 = extractvalue %dx.types.CBufRet.f32 %7667, 2
  %7669 = fsub fast float %7305, %7668
  %7670 = fcmp fast olt float %7666, -2.000000e+01
  %7671 = call float @dx.op.unary.f32(i32 21, float %7666)  ; Exp(value)
  %7672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7673 = extractvalue %dx.types.CBufRet.f32 %7672, 2
  %7674 = extractvalue %dx.types.CBufRet.f32 %7672, 3
  %7675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7676 = extractvalue %dx.types.CBufRet.f32 %7675, 2
  %7677 = fmul fast float %7674, %7669
  %7678 = call float @dx.op.unary.f32(i32 7, float %7677)  ; Saturate(value)
  %7679 = fsub fast float 1.000000e+00, %7678
  %7680 = fmul fast float %7290, 5.000000e-01
  %7681 = fadd fast float %7680, 5.000000e-01
  %7682 = call float @dx.op.unary.f32(i32 7, float %7681)  ; Saturate(value)
  %7683 = fsub fast float 1.000000e+00, %7682
  %7684 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7679)  ; FMax(a,b)
  %7685 = fdiv fast float %7683, %7684
  %7686 = fsub fast float %7669, %7247
  %7687 = call float @dx.op.unary.f32(i32 6, float %7686)  ; FAbs(value)
  %7688 = fmul fast float %7687, %7673
  %7689 = call float @dx.op.unary.f32(i32 7, float %7685)  ; Saturate(value)
  %7690 = fsub fast float 1.000000e+00, %7688
  %7691 = fmul fast float %7690, %7689
  %7692 = fadd fast float %7691, %7688
  %7693 = fmul fast float %7676, %7669
  %7694 = call float @dx.op.unary.f32(i32 7, float %7693)  ; Saturate(value)
  %7695 = fsub fast float 1.000000e+00, %7692
  %7696 = fmul fast float %7695, %7694
  %7697 = fadd fast float %7696, %7692
  %7698 = call float @dx.op.unary.f32(i32 7, float %7697)  ; Saturate(value)
  %7699 = fadd fast float %7671, -1.000000e+00
  %7700 = select i1 %7670, float -1.000000e+00, float %7699
  %7701 = fmul fast float %7698, %7700
  %7702 = fadd fast float %7701, 1.000000e+00
  %7703 = fsub fast float -0.000000e+00, %7701
  %7704 = fmul fast float %7663, %7703
  %7705 = fmul fast float %7664, %7703
  %7706 = fmul fast float %7665, %7703
  br label %7707

; <label>:7707                                    ; preds = %7660, %7256
  %7708 = phi float [ %7661, %7660 ], [ 0.000000e+00, %7256 ]
  %7709 = phi float [ %7702, %7660 ], [ 1.000000e+00, %7256 ]
  %7710 = phi float [ %7704, %7660 ], [ 0.000000e+00, %7256 ]
  %7711 = phi float [ %7705, %7660 ], [ 0.000000e+00, %7256 ]
  %7712 = phi float [ %7706, %7660 ], [ 0.000000e+00, %7256 ]
  %7713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7714 = extractvalue %dx.types.CBufRet.f32 %7713, 1
  %7715 = fsub fast float 1.000000e+00, %7709
  %7716 = fmul fast float %7715, %7291
  %7717 = fmul fast float %7716, %7714
  %7718 = fsub fast float %7291, %7717
  br i1 %7284, label %7719, label %7748, !dx.controlflow.hints !178

; <label>:7719                                    ; preds = %7707
  %7720 = fmul fast float %7292, %7281
  %7721 = fadd fast float %7720, %7282
  %7722 = call float @dx.op.unary.f32(i32 7, float %7721)  ; Saturate(value)
  %7723 = fmul fast float %7263, %7718
  %7724 = fsub fast float -0.000000e+00, %7723
  %7725 = fmul fast float %7264, %7718
  %7726 = fsub fast float -0.000000e+00, %7725
  %7727 = call float @dx.op.unary.f32(i32 21, float %7724)  ; Exp(value)
  %7728 = call float @dx.op.unary.f32(i32 21, float %7726)  ; Exp(value)
  %7729 = call float @dx.op.binary.f32(i32 35, float %7271, float %7727)  ; FMax(a,b)
  %7730 = call float @dx.op.binary.f32(i32 35, float %7271, float %7728)  ; FMax(a,b)
  %7731 = fsub fast float %7730, %7729
  %7732 = fmul fast float %7731, %7722
  %7733 = fadd fast float %7732, %7729
  %7734 = call float @dx.op.unary.f32(i32 7, float %7733)  ; Saturate(value)
  %7735 = fsub fast float %7268, %7273
  %7736 = fsub fast float %7269, %7274
  %7737 = fsub fast float %7270, %7275
  %7738 = fmul fast float %7722, %7735
  %7739 = fmul fast float %7722, %7736
  %7740 = fmul fast float %7722, %7737
  %7741 = fadd fast float %7738, %7273
  %7742 = fadd fast float %7739, %7274
  %7743 = fadd fast float %7740, %7275
  %7744 = fsub fast float 1.000000e+00, %7734
  %7745 = fmul fast float %7744, %7741
  %7746 = fmul fast float %7744, %7742
  %7747 = fmul fast float %7744, %7743
  br label %7807

; <label>:7748                                    ; preds = %7707
  %7749 = fmul fast float %7718, %7280
  %7750 = call float @dx.op.unary.f32(i32 7, float %7749)  ; Saturate(value)
  %7751 = fsub fast float 2.000000e+00, %7750
  %7752 = fmul fast float %7750, 9.921875e-01
  %7753 = fmul fast float %7752, %7751
  %7754 = fadd fast float %7753, 3.906250e-03
  %7755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %58, float %7754, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7756 = extractvalue %dx.types.ResRet.f32 %7755, 0
  %7757 = fsub fast float %7750, %7756
  %7758 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7757)  ; FMax(a,b)
  %7759 = fmul fast float %7266, %7247
  %7760 = call float @dx.op.unary.f32(i32 6, float %7759)  ; FAbs(value)
  %7761 = fcmp fast ogt float %7760, 0x3EB0C6F7A0000000
  br i1 %7761, label %7762, label %7768, !dx.controlflow.hints !179

; <label>:7762                                    ; preds = %7748
  %7763 = fmul fast float %7759, 0xBFF7154760000000
  %7764 = call float @dx.op.unary.f32(i32 21, float %7763)  ; Exp(value)
  %7765 = fsub fast float 1.000000e+00, %7764
  %7766 = fdiv fast float %7765, %7759
  %7767 = fmul fast float %7766, %7276
  br label %7768

; <label>:7768                                    ; preds = %7762, %7748
  %7769 = phi float [ %7767, %7762 ], [ %7276, %7748 ]
  %7770 = fadd fast float %7769, %7278
  %7771 = fmul fast float %7770, %7758
  %7772 = fmul fast float %7263, %7771
  %7773 = fsub fast float -0.000000e+00, %7772
  %7774 = fmul fast float %7264, %7771
  %7775 = fsub fast float -0.000000e+00, %7774
  %7776 = fmul fast float %7265, %7771
  %7777 = fsub fast float -0.000000e+00, %7776
  %7778 = call float @dx.op.unary.f32(i32 21, float %7773)  ; Exp(value)
  %7779 = call float @dx.op.unary.f32(i32 21, float %7775)  ; Exp(value)
  %7780 = call float @dx.op.unary.f32(i32 21, float %7777)  ; Exp(value)
  %7781 = fmul fast float %7292, %7292
  %7782 = fadd fast float %7781, 1.000000e+00
  %7783 = fmul fast float %7782, 0x3FAE8EC8A0000000
  %7784 = fmul fast float %7783, %7273
  %7785 = fmul fast float %7783, %7274
  %7786 = fmul fast float %7783, %7275
  %7787 = fmul fast float %7292, %7271
  %7788 = fsub fast float 1.000000e+00, %7787
  %7789 = fmul fast float %7271, %7271
  %7790 = fsub fast float 1.000000e+00, %7789
  %7791 = fmul fast float %7790, 0x3FB45F3060000000
  %7792 = fmul fast float %7788, %7788
  %7793 = fdiv fast float 1.000000e+00, %7792
  %7794 = fmul fast float %7791, %7793
  %7795 = fmul fast float %7794, %7268
  %7796 = fmul fast float %7794, %7269
  %7797 = fmul fast float %7794, %7270
  %7798 = fadd fast float %7795, %7784
  %7799 = fadd fast float %7796, %7785
  %7800 = fadd fast float %7797, %7786
  %7801 = fsub fast float 1.000000e+00, %7778
  %7802 = fsub fast float 1.000000e+00, %7779
  %7803 = fsub fast float 1.000000e+00, %7780
  %7804 = fmul fast float %7798, %7801
  %7805 = fmul fast float %7799, %7802
  %7806 = fmul fast float %7800, %7803
  br label %7807

; <label>:7807                                    ; preds = %7768, %7719
  %7808 = phi float [ %7745, %7719 ], [ %7804, %7768 ]
  %7809 = phi float [ %7746, %7719 ], [ %7805, %7768 ]
  %7810 = phi float [ %7747, %7719 ], [ %7806, %7768 ]
  %7811 = phi float [ %7734, %7719 ], [ %7778, %7768 ]
  %7812 = phi float [ %7734, %7719 ], [ %7779, %7768 ]
  %7813 = phi float [ %7734, %7719 ], [ %7780, %7768 ]
  br i1 %7300, label %7814, label %8012, !dx.controlflow.hints !180

; <label>:7814                                    ; preds = %7807
  %7815 = extractvalue %dx.types.CBufRet.f32 %7713, 0
  %7816 = fmul fast float %7815, %7715
  %7817 = fsub fast float %7710, %7808
  %7818 = fsub fast float %7711, %7809
  %7819 = fsub fast float %7712, %7810
  %7820 = fmul fast float %7816, %7817
  %7821 = fmul fast float %7816, %7818
  %7822 = fmul fast float %7816, %7819
  %7823 = fadd fast float %7820, %7808
  %7824 = fadd fast float %7821, %7809
  %7825 = fadd fast float %7822, %7810
  %7826 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7811)  ; FMax(a,b)
  %7827 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7812)  ; FMax(a,b)
  %7828 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7813)  ; FMax(a,b)
  %7829 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7709)  ; FMax(a,b)
  %7830 = call float @dx.op.binary.f32(i32 35, float %7708, float %7718)  ; FMax(a,b)
  %7831 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7830)  ; FMax(a,b)
  %7832 = fdiv fast float %7708, %7831
  %7833 = call float @dx.op.unary.f32(i32 7, float %7832)  ; Saturate(value)
  %7834 = fdiv fast float %7718, %7831
  %7835 = call float @dx.op.unary.f32(i32 7, float %7834)  ; Saturate(value)
  %7836 = fcmp fast une float %7829, 1.000000e+00
  br i1 %7836, label %7837, label %7850, !dx.controlflow.hints !181

; <label>:7837                                    ; preds = %7814
  %7838 = call float @dx.op.unary.f32(i32 23, float %7829)  ; Log(value)
  %7839 = fmul fast float %7838, 0x3FE62E4300000000
  %7840 = fmul fast float %7710, %7839
  %7841 = fsub fast float -0.000000e+00, %7840
  %7842 = fmul fast float %7711, %7839
  %7843 = fsub fast float -0.000000e+00, %7842
  %7844 = fmul fast float %7712, %7839
  %7845 = fsub fast float -0.000000e+00, %7844
  %7846 = fsub fast float 1.000000e+00, %7829
  %7847 = fdiv fast float %7841, %7846
  %7848 = fdiv fast float %7843, %7846
  %7849 = fdiv fast float %7845, %7846
  br label %7850

; <label>:7850                                    ; preds = %7837, %7814
  %7851 = phi float [ %7847, %7837 ], [ %7710, %7814 ]
  %7852 = phi float [ %7848, %7837 ], [ %7711, %7814 ]
  %7853 = phi float [ %7849, %7837 ], [ %7712, %7814 ]
  %7854 = phi float [ %7839, %7837 ], [ 0.000000e+00, %7814 ]
  %7855 = fcmp fast une float %7826, 1.000000e+00
  br i1 %7855, label %7856, label %7863, !dx.controlflow.hints !182

; <label>:7856                                    ; preds = %7850
  %7857 = call float @dx.op.unary.f32(i32 23, float %7826)  ; Log(value)
  %7858 = fmul fast float %7857, 0x3FE62E4300000000
  %7859 = fmul fast float %7823, %7858
  %7860 = fsub fast float -0.000000e+00, %7859
  %7861 = fsub fast float 1.000000e+00, %7826
  %7862 = fdiv fast float %7860, %7861
  br label %7863

; <label>:7863                                    ; preds = %7856, %7850
  %7864 = phi float [ %7862, %7856 ], [ %7823, %7850 ]
  %7865 = phi float [ %7858, %7856 ], [ 0.000000e+00, %7850 ]
  %7866 = fcmp fast une float %7827, 1.000000e+00
  br i1 %7866, label %7867, label %7874, !dx.controlflow.hints !182

; <label>:7867                                    ; preds = %7863
  %7868 = call float @dx.op.unary.f32(i32 23, float %7827)  ; Log(value)
  %7869 = fmul fast float %7868, 0x3FE62E4300000000
  %7870 = fmul fast float %7824, %7869
  %7871 = fsub fast float -0.000000e+00, %7870
  %7872 = fsub fast float 1.000000e+00, %7827
  %7873 = fdiv fast float %7871, %7872
  br label %7874

; <label>:7874                                    ; preds = %7867, %7863
  %7875 = phi float [ %7873, %7867 ], [ %7824, %7863 ]
  %7876 = phi float [ %7869, %7867 ], [ 0.000000e+00, %7863 ]
  %7877 = fcmp fast une float %7828, 1.000000e+00
  br i1 %7877, label %7878, label %7885, !dx.controlflow.hints !182

; <label>:7878                                    ; preds = %7874
  %7879 = call float @dx.op.unary.f32(i32 23, float %7828)  ; Log(value)
  %7880 = fmul fast float %7879, 0x3FE62E4300000000
  %7881 = fmul fast float %7825, %7880
  %7882 = fsub fast float -0.000000e+00, %7881
  %7883 = fsub fast float 1.000000e+00, %7828
  %7884 = fdiv fast float %7882, %7883
  br label %7885

; <label>:7885                                    ; preds = %7878, %7874
  %7886 = phi float [ %7884, %7878 ], [ %7825, %7874 ]
  %7887 = phi float [ %7880, %7878 ], [ 0.000000e+00, %7874 ]
  %7888 = fmul fast float %7851, %7835
  %7889 = fmul fast float %7852, %7835
  %7890 = fmul fast float %7853, %7835
  %7891 = fmul fast float %7854, %7835
  %7892 = fmul fast float %7864, %7833
  %7893 = fmul fast float %7875, %7833
  %7894 = fmul fast float %7886, %7833
  %7895 = fmul fast float %7865, %7833
  %7896 = fmul fast float %7876, %7833
  %7897 = fmul fast float %7887, %7833
  %7898 = fadd fast float %7892, %7888
  %7899 = fadd fast float %7893, %7889
  %7900 = fadd fast float %7894, %7890
  %7901 = fadd fast float %7895, %7891
  %7902 = fadd fast float %7896, %7891
  %7903 = fadd fast float %7897, %7891
  %7904 = fcmp fast une float %7901, 0.000000e+00
  br i1 %7904, label %7905, label %7912, !dx.controlflow.hints !183

; <label>:7905                                    ; preds = %7885
  %7906 = fmul fast float %7901, 0x3FF7154760000000
  %7907 = call float @dx.op.unary.f32(i32 21, float %7906)  ; Exp(value)
  %7908 = fsub fast float 1.000000e+00, %7907
  %7909 = fmul fast float %7898, %7908
  %7910 = fsub fast float -0.000000e+00, %7909
  %7911 = fdiv fast float %7910, %7901
  br label %7912

; <label>:7912                                    ; preds = %7905, %7885
  %7913 = phi float [ %7907, %7905 ], [ 1.000000e+00, %7885 ]
  %7914 = phi float [ %7911, %7905 ], [ %7898, %7885 ]
  %7915 = fcmp fast une float %7902, 0.000000e+00
  br i1 %7915, label %7916, label %7923, !dx.controlflow.hints !183

; <label>:7916                                    ; preds = %7912
  %7917 = fmul fast float %7902, 0x3FF7154760000000
  %7918 = call float @dx.op.unary.f32(i32 21, float %7917)  ; Exp(value)
  %7919 = fsub fast float 1.000000e+00, %7918
  %7920 = fmul fast float %7899, %7919
  %7921 = fsub fast float -0.000000e+00, %7920
  %7922 = fdiv fast float %7921, %7902
  br label %7923

; <label>:7923                                    ; preds = %7916, %7912
  %7924 = phi float [ %7918, %7916 ], [ 1.000000e+00, %7912 ]
  %7925 = phi float [ %7922, %7916 ], [ %7899, %7912 ]
  %7926 = fcmp fast une float %7903, 0.000000e+00
  br i1 %7926, label %7927, label %7934, !dx.controlflow.hints !183

; <label>:7927                                    ; preds = %7923
  %7928 = fmul fast float %7903, 0x3FF7154760000000
  %7929 = call float @dx.op.unary.f32(i32 21, float %7928)  ; Exp(value)
  %7930 = fsub fast float 1.000000e+00, %7929
  %7931 = fmul fast float %7900, %7930
  %7932 = fsub fast float -0.000000e+00, %7931
  %7933 = fdiv fast float %7932, %7903
  br label %7934

; <label>:7934                                    ; preds = %7927, %7923
  %7935 = phi float [ %7929, %7927 ], [ 1.000000e+00, %7923 ]
  %7936 = phi float [ %7933, %7927 ], [ %7900, %7923 ]
  %7937 = fcmp fast ogt float %7833, %7835
  br i1 %7937, label %7938, label %7958

; <label>:7938                                    ; preds = %7934
  %7939 = fsub fast float 1.000000e+00, %7835
  %7940 = fmul fast float %7851, %7939
  %7941 = fmul fast float %7852, %7939
  %7942 = fmul fast float %7853, %7939
  %7943 = fmul fast float %7854, %7939
  %7944 = fcmp fast une float %7943, 0.000000e+00
  br i1 %7944, label %7945, label %7996, !dx.controlflow.hints !184

; <label>:7945                                    ; preds = %7938
  %7946 = fmul fast float %7943, 0x3FF7154760000000
  %7947 = call float @dx.op.unary.f32(i32 21, float %7946)  ; Exp(value)
  %7948 = fsub fast float 1.000000e+00, %7947
  %7949 = fmul fast float %7940, %7948
  %7950 = fsub fast float -0.000000e+00, %7949
  %7951 = fmul fast float %7941, %7948
  %7952 = fsub fast float -0.000000e+00, %7951
  %7953 = fmul fast float %7942, %7948
  %7954 = fsub fast float -0.000000e+00, %7953
  %7955 = fdiv fast float %7950, %7943
  %7956 = fdiv fast float %7952, %7943
  %7957 = fdiv fast float %7954, %7943
  br label %7996

; <label>:7958                                    ; preds = %7934
  %7959 = fsub fast float 1.000000e+00, %7833
  %7960 = fmul fast float %7864, %7959
  %7961 = fmul fast float %7875, %7959
  %7962 = fmul fast float %7886, %7959
  %7963 = fmul fast float %7865, %7959
  %7964 = fmul fast float %7876, %7959
  %7965 = fmul fast float %7887, %7959
  %7966 = fcmp fast une float %7963, 0.000000e+00
  br i1 %7966, label %7967, label %7974, !dx.controlflow.hints !183

; <label>:7967                                    ; preds = %7958
  %7968 = fmul fast float %7963, 0x3FF7154760000000
  %7969 = call float @dx.op.unary.f32(i32 21, float %7968)  ; Exp(value)
  %7970 = fsub fast float 1.000000e+00, %7969
  %7971 = fmul fast float %7960, %7970
  %7972 = fsub fast float -0.000000e+00, %7971
  %7973 = fdiv fast float %7972, %7963
  br label %7974

; <label>:7974                                    ; preds = %7967, %7958
  %7975 = phi float [ %7973, %7967 ], [ %7960, %7958 ]
  %7976 = phi float [ %7969, %7967 ], [ 1.000000e+00, %7958 ]
  %7977 = fcmp fast une float %7964, 0.000000e+00
  br i1 %7977, label %7978, label %7985, !dx.controlflow.hints !183

; <label>:7978                                    ; preds = %7974
  %7979 = fmul fast float %7964, 0x3FF7154760000000
  %7980 = call float @dx.op.unary.f32(i32 21, float %7979)  ; Exp(value)
  %7981 = fsub fast float 1.000000e+00, %7980
  %7982 = fmul fast float %7961, %7981
  %7983 = fsub fast float -0.000000e+00, %7982
  %7984 = fdiv fast float %7983, %7964
  br label %7985

; <label>:7985                                    ; preds = %7978, %7974
  %7986 = phi float [ %7984, %7978 ], [ %7961, %7974 ]
  %7987 = phi float [ %7980, %7978 ], [ 1.000000e+00, %7974 ]
  %7988 = fcmp fast une float %7965, 0.000000e+00
  br i1 %7988, label %7989, label %7996, !dx.controlflow.hints !183

; <label>:7989                                    ; preds = %7985
  %7990 = fmul fast float %7965, 0x3FF7154760000000
  %7991 = call float @dx.op.unary.f32(i32 21, float %7990)  ; Exp(value)
  %7992 = fsub fast float 1.000000e+00, %7991
  %7993 = fmul fast float %7962, %7992
  %7994 = fsub fast float -0.000000e+00, %7993
  %7995 = fdiv fast float %7994, %7965
  br label %7996

; <label>:7996                                    ; preds = %7989, %7985, %7945, %7938
  %7997 = phi float [ %7995, %7989 ], [ %7957, %7945 ], [ %7942, %7938 ], [ %7962, %7985 ]
  %7998 = phi float [ %7986, %7989 ], [ %7956, %7945 ], [ %7941, %7938 ], [ %7986, %7985 ]
  %7999 = phi float [ %7975, %7989 ], [ %7955, %7945 ], [ %7940, %7938 ], [ %7975, %7985 ]
  %8000 = phi float [ %7991, %7989 ], [ %7947, %7945 ], [ 1.000000e+00, %7938 ], [ 1.000000e+00, %7985 ]
  %8001 = phi float [ %7987, %7989 ], [ %7947, %7945 ], [ 1.000000e+00, %7938 ], [ %7987, %7985 ]
  %8002 = phi float [ %7976, %7989 ], [ %7947, %7945 ], [ 1.000000e+00, %7938 ], [ %7976, %7985 ]
  %8003 = fmul fast float %8002, %7914
  %8004 = fmul fast float %8001, %7925
  %8005 = fmul fast float %8000, %7936
  %8006 = fadd fast float %8003, %7999
  %8007 = fadd fast float %8004, %7998
  %8008 = fadd fast float %8005, %7997
  %8009 = fmul fast float %8002, %7913
  %8010 = fmul fast float %8001, %7924
  %8011 = fmul fast float %8000, %7935
  br label %8012

; <label>:8012                                    ; preds = %7996, %7807
  %8013 = phi float [ %8011, %7996 ], [ %7813, %7807 ]
  %8014 = phi float [ %8010, %7996 ], [ %7812, %7807 ]
  %8015 = phi float [ %8009, %7996 ], [ %7811, %7807 ]
  %8016 = phi float [ %8008, %7996 ], [ %7810, %7807 ]
  %8017 = phi float [ %8007, %7996 ], [ %7809, %7807 ]
  %8018 = phi float [ %8006, %7996 ], [ %7808, %7807 ]
  %8019 = fmul fast float %8018, %6962
  %8020 = fmul fast float %8017, %6962
  %8021 = fmul fast float %8016, %6962
  %8022 = fmul fast float %8015, %7255
  %8023 = call float @dx.op.dot3.f32(i32 55, float %8015, float %8014, float %8013, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8024 = call float @dx.op.dot3.f32(i32 55, float %8019, float %8020, float %8021, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8025 = select i1 %243, float %8023, float %8015
  %8026 = select i1 %243, float %8023, float %8014
  %8027 = select i1 %243, float 1.000000e+00, float %8013
  %8028 = select i1 %243, float %8024, float %8019
  %8029 = select i1 %243, float 0.000000e+00, float %8020
  %8030 = select i1 %243, float 0.000000e+00, float %8021
  %8031 = fmul fast float %8025, %7249
  %8032 = fmul fast float %8026, %7250
  %8033 = fmul fast float %8027, %7251
  %8034 = fadd fast float %8031, %8028
  %8035 = fadd fast float %8032, %8029
  %8036 = fadd fast float %8030, %8033
  %8037 = fmul fast float %8025, %7252
  %8038 = fmul fast float %8026, %7253
  %8039 = fmul fast float %8027, %7254
  %8040 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8041 = extractvalue %dx.types.CBufRet.i32 %8040, 0
  %8042 = icmp eq i32 %8041, 0
  br i1 %8042, label %8410, label %8043, !dx.controlflow.hints !185

; <label>:8043                                    ; preds = %8012
  %8044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8045 = extractvalue %dx.types.CBufRet.f32 %8044, 2
  %8046 = extractvalue %dx.types.CBufRet.f32 %8044, 3
  %8047 = fmul fast float %8045, %105
  %8048 = fmul fast float %8046, %106
  %8049 = fmul fast float %8047, 2.000000e+00
  %8050 = fmul fast float %8048, 2.000000e+00
  %8051 = fsub fast float 1.000000e+00, %8049
  %8052 = fsub fast float 1.000000e+00, %8050
  %8053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8054 = extractvalue %dx.types.CBufRet.f32 %8053, 0
  %8055 = extractvalue %dx.types.CBufRet.f32 %8053, 1
  %8056 = extractvalue %dx.types.CBufRet.f32 %8053, 2
  %8057 = fmul fast float %8051, %8054
  %8058 = fmul fast float %8051, %8055
  %8059 = fmul fast float %8051, %8056
  %8060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8061 = extractvalue %dx.types.CBufRet.f32 %8060, 0
  %8062 = extractvalue %dx.types.CBufRet.f32 %8060, 1
  %8063 = extractvalue %dx.types.CBufRet.f32 %8060, 2
  %8064 = fmul fast float %8052, %8061
  %8065 = fmul fast float %8052, %8062
  %8066 = fmul fast float %8052, %8063
  %8067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8068 = extractvalue %dx.types.CBufRet.f32 %8067, 0
  %8069 = extractvalue %dx.types.CBufRet.f32 %8067, 1
  %8070 = extractvalue %dx.types.CBufRet.f32 %8067, 2
  %8071 = fadd fast float %8064, %8068
  %8072 = fadd fast float %8071, %8057
  %8073 = fadd fast float %8065, %8069
  %8074 = fadd fast float %8073, %8058
  %8075 = fadd fast float %8066, %8070
  %8076 = fadd fast float %8075, %8059
  %8077 = fmul fast float %8072, %7248
  %8078 = fmul fast float %8074, %7248
  %8079 = fmul fast float %8076, %7248
  %8080 = fmul fast float %8077, %8077
  %8081 = fmul fast float %8078, %8078
  %8082 = fadd fast float %8080, %8081
  %8083 = fmul fast float %8079, %8079
  %8084 = fadd fast float %8082, %8083
  %8085 = call float @dx.op.unary.f32(i32 24, float %8084)  ; Sqrt(value)
  %8086 = extractvalue %dx.types.CBufRet.f32 %6973, 0
  %8087 = fsub fast float %8085, %8086
  %8088 = extractvalue %dx.types.CBufRet.f32 %6973, 2
  %8089 = fmul fast float %8087, %8088
  %8090 = call float @dx.op.unary.f32(i32 7, float %8089)  ; Saturate(value)
  %8091 = fadd fast float %8090, -5.000000e-01
  %8092 = fmul fast float %8091, 2.000000e+00
  %8093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8094 = extractvalue %dx.types.CBufRet.f32 %8093, 2
  %8095 = call float @dx.op.binary.f32(i32 36, float %8094, float %8092)  ; FMin(a,b)
  %8096 = fsub fast float -0.000000e+00, %8094
  %8097 = fcmp fast ogt float %8095, %8096
  br i1 %8097, label %8098, label %8410, !dx.controlflow.hints !186

; <label>:8098                                    ; preds = %8043
  %8099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8100 = extractvalue %dx.types.CBufRet.f32 %8099, 3
  %8101 = fcmp fast ogt float %8100, 0.000000e+00
  br i1 %8101, label %8102, label %8177, !dx.controlflow.hints !187

; <label>:8102                                    ; preds = %8098
  %8103 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %8104 = extractvalue %dx.types.Dimensions %8103, 0
  %8105 = sitofp i32 %8104 to float
  %8106 = extractvalue %dx.types.Dimensions %8103, 1
  %8107 = sitofp i32 %8106 to float
  %8108 = fmul fast float %8047, %8105
  %8109 = fmul fast float %8048, %8107
  %8110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8111 = extractvalue %dx.types.CBufRet.f32 %8110, 1
  %8112 = fsub fast float -0.000000e+00, %8111
  %8113 = fptoui float %8112 to i32
  %8114 = fptoui float %8108 to i32
  %8115 = fptoui float %8109 to i32
  %8116 = and i32 %8113, 31
  %8117 = lshr i32 %8114, %8116
  %8118 = lshr i32 %8115, %8116
  %8119 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %8113, i32 %8117, i32 %8118, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8120 = extractvalue %dx.types.ResRet.f32 %8119, 0
  %8121 = fcmp fast olt float %8120, -1.000000e+00
  %8122 = fcmp fast ogt float %8120, -1.000000e+00
  %8123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8124 = extractvalue %dx.types.CBufRet.f32 %8123, 1
  %8125 = select i1 %8122, float %8124, float 1.000000e+00
  %8126 = fadd fast float %8120, 1.000000e+00
  %8127 = fmul fast float %8125, %8126
  %8128 = call float @dx.op.unary.f32(i32 6, float %8127)  ; FAbs(value)
  %8129 = extractvalue %dx.types.CBufRet.f32 %8123, 3
  %8130 = fcmp fast oge float %8128, %8129
  %8131 = select i1 %8130, float 0x4197782600000000, float %8128
  %8132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8133 = extractvalue %dx.types.CBufRet.f32 %8132, 0
  %8134 = extractvalue %dx.types.CBufRet.f32 %8132, 1
  %8135 = extractvalue %dx.types.CBufRet.f32 %8132, 2
  %8136 = select i1 %8121, float %8133, float %8054
  %8137 = select i1 %8121, float %8134, float %8055
  %8138 = select i1 %8121, float %8135, float %8056
  %8139 = fmul fast float %8136, %8051
  %8140 = fmul fast float %8137, %8051
  %8141 = fmul fast float %8138, %8051
  %8142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8143 = extractvalue %dx.types.CBufRet.f32 %8142, 0
  %8144 = extractvalue %dx.types.CBufRet.f32 %8142, 1
  %8145 = extractvalue %dx.types.CBufRet.f32 %8142, 2
  %8146 = select i1 %8121, float %8143, float %8061
  %8147 = select i1 %8121, float %8144, float %8062
  %8148 = select i1 %8121, float %8145, float %8063
  %8149 = fmul fast float %8146, %8052
  %8150 = fmul fast float %8147, %8052
  %8151 = fmul fast float %8148, %8052
  %8152 = fadd fast float %8149, %8139
  %8153 = fadd fast float %8150, %8140
  %8154 = fadd fast float %8151, %8141
  %8155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8156 = extractvalue %dx.types.CBufRet.f32 %8155, 0
  %8157 = extractvalue %dx.types.CBufRet.f32 %8155, 1
  %8158 = extractvalue %dx.types.CBufRet.f32 %8155, 2
  %8159 = select i1 %8121, float %8156, float %8068
  %8160 = select i1 %8121, float %8157, float %8069
  %8161 = select i1 %8121, float %8158, float %8070
  %8162 = fadd fast float %8152, %8159
  %8163 = fadd fast float %8153, %8160
  %8164 = fadd fast float %8154, %8161
  %8165 = fmul fast float %8162, %8131
  %8166 = fmul fast float %8163, %8131
  %8167 = fmul fast float %8164, %8131
  %8168 = fmul fast float %8165, %8165
  %8169 = fmul fast float %8166, %8166
  %8170 = fadd fast float %8168, %8169
  %8171 = fmul fast float %8167, %8167
  %8172 = fadd fast float %8170, %8171
  %8173 = call float @dx.op.unary.f32(i32 24, float %8172)  ; Sqrt(value)
  %8174 = fsub fast float %8173, %8086
  %8175 = fmul fast float %8174, %8088
  %8176 = call float @dx.op.unary.f32(i32 7, float %8175)  ; Saturate(value)
  br label %8177

; <label>:8177                                    ; preds = %8102, %8098
  %8178 = phi float [ %8176, %8102 ], [ 1.000000e+00, %8098 ]
  %8179 = fmul fast float %8095, 5.000000e-01
  %8180 = fadd fast float %8179, 5.000000e-01
  %8181 = call float @dx.op.unary.f32(i32 22, float %8180)  ; Frc(value)
  %8182 = call float @dx.op.unary.f32(i32 27, float %8181)  ; Round_ni(value)
  %8183 = call float @dx.op.unary.f32(i32 22, float %8181)  ; Frc(value)
  %8184 = fmul fast float %8183, 2.000000e+00
  %8185 = fadd fast float %8184, -1.000000e+00
  %8186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %58, float %8047, float %8048, float %8182, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8187 = extractvalue %dx.types.ResRet.f32 %8186, 0
  %8188 = extractvalue %dx.types.ResRet.f32 %8186, 1
  %8189 = extractvalue %dx.types.ResRet.f32 %8186, 2
  %8190 = extractvalue %dx.types.ResRet.f32 %8186, 3
  %8191 = fadd fast float %8187, -5.000000e-01
  %8192 = fadd fast float %8189, -5.000000e-01
  %8193 = fmul fast float %8191, 0xBFD5555560000000
  %8194 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8192, float %8193)  ; FMad(a,b,c)
  %8195 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8188, float 0.000000e+00)  ; FMad(a,b,c)
  %8196 = fadd fast float %8195, %8190
  %8197 = fmul fast float %8191, -7.500000e-01
  %8198 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8192, float %8197)  ; FMad(a,b,c)
  %8199 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8188, float 0.000000e+00)  ; FMad(a,b,c)
  %8200 = fadd fast float %8199, %8190
  %8201 = call float @dx.op.binary.f32(i32 35, float %8194, float -1.000000e+00)  ; FMax(a,b)
  %8202 = call float @dx.op.binary.f32(i32 35, float %8196, float -1.000000e+00)  ; FMax(a,b)
  %8203 = call float @dx.op.binary.f32(i32 35, float %8198, float -1.000000e+00)  ; FMax(a,b)
  %8204 = call float @dx.op.binary.f32(i32 35, float %8200, float -1.000000e+00)  ; FMax(a,b)
  %8205 = call float @dx.op.binary.f32(i32 36, float %8201, float 1.000000e+00)  ; FMin(a,b)
  %8206 = call float @dx.op.binary.f32(i32 36, float %8202, float 1.000000e+00)  ; FMin(a,b)
  %8207 = call float @dx.op.binary.f32(i32 36, float %8203, float 1.000000e+00)  ; FMin(a,b)
  %8208 = call float @dx.op.binary.f32(i32 36, float %8204, float 1.000000e+00)  ; FMin(a,b)
  %8209 = fcmp fast olt float %8205, 0x3FEFFF8020000000
  br i1 %8209, label %8210, label %8325, !dx.controlflow.hints !188

; <label>:8210                                    ; preds = %8177
  %8211 = extractvalue %dx.types.CBufRet.f32 %8093, 3
  %8212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8213 = extractvalue %dx.types.CBufRet.f32 %8212, 0
  %8214 = extractvalue %dx.types.CBufRet.f32 %8212, 1
  %8215 = extractvalue %dx.types.CBufRet.f32 %8212, 2
  %8216 = extractvalue %dx.types.CBufRet.f32 %8212, 3
  %8217 = fsub fast float %8213, %8205
  %8218 = fsub fast float %8214, %8206
  %8219 = fsub fast float %8215, %8207
  %8220 = fsub fast float %8216, %8208
  %8221 = fmul fast float %8217, %8211
  %8222 = fmul fast float %8218, %8211
  %8223 = fmul fast float %8219, %8211
  %8224 = fmul fast float %8220, %8211
  %8225 = fadd fast float %8221, %8205
  %8226 = fadd fast float %8222, %8206
  %8227 = fsub fast float -0.000000e+00, %8226
  %8228 = fadd fast float %8223, %8207
  %8229 = fadd fast float %8224, %8208
  %8230 = fmul fast float %8225, %8225
  %8231 = fsub fast float %8226, %8230
  %8232 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8231)  ; FMax(a,b)
  %8233 = fdiv fast float 1.000000e+00, %8232
  %8234 = fmul fast float %8226, %8225
  %8235 = fsub fast float %8228, %8234
  %8236 = fsub fast float %8185, %8225
  %8237 = fmul fast float %8185, %8185
  %8238 = fsub fast float %8237, %8226
  %8239 = fmul fast float %8236, %8233
  %8240 = fmul fast float %8239, %8235
  %8241 = fsub fast float %8238, %8240
  %8242 = fmul fast float %8226, %8226
  %8243 = fsub fast float %8229, %8242
  %8244 = fmul fast float %8235, %8235
  %8245 = fmul fast float %8244, %8233
  %8246 = fsub fast float %8243, %8245
  %8247 = fdiv fast float %8241, %8246
  %8248 = fmul fast float %8235, %8247
  %8249 = fsub fast float %8236, %8248
  %8250 = fmul fast float %8249, %8233
  %8251 = fmul fast float %8250, %8225
  %8252 = fsub fast float 1.000000e+00, %8251
  %8253 = fmul fast float %8226, %8247
  %8254 = fsub fast float %8252, %8253
  %8255 = fmul fast float %8250, %8250
  %8256 = fmul fast float %8247, 4.000000e+00
  %8257 = fmul fast float %8256, %8254
  %8258 = fsub fast float %8255, %8257
  %8259 = call float @dx.op.unary.f32(i32 24, float %8258)  ; Sqrt(value)
  %8260 = fcmp fast oge float %8250, 0.000000e+00
  %8261 = fsub fast float -0.000000e+00, %8259
  %8262 = select i1 %8260, float %8261, float %8259
  %8263 = fsub fast float %8262, %8250
  %8264 = fdiv fast float %8263, %8247
  %8265 = fdiv fast float %8254, %8263
  %8266 = fmul fast float %8264, 5.000000e-01
  %8267 = fmul fast float %8265, 2.000000e+00
  %8268 = select i1 %8260, float %8266, float %8267
  %8269 = select i1 %8260, float %8267, float %8266
  %8270 = call float @dx.op.binary.f32(i32 35, float %8268, float %8269)  ; FMax(a,b)
  %8271 = call float @dx.op.binary.f32(i32 36, float %8268, float %8269)  ; FMin(a,b)
  %8272 = fcmp fast ogt float %8185, %8271
  br i1 %8272, label %8273, label %8283

; <label>:8273                                    ; preds = %8210
  %8274 = fsub fast float %8185, %8271
  %8275 = fsub fast float %8270, %8271
  %8276 = fmul fast float %8274, %8275
  %8277 = fmul fast float %8270, %8185
  %8278 = fadd fast float %8270, %8185
  %8279 = fmul fast float %8278, %8225
  %8280 = fadd fast float %8277, %8226
  %8281 = fsub fast float %8280, %8279
  %8282 = fdiv fast float %8281, %8276
  br label %8283

; <label>:8283                                    ; preds = %8273, %8210
  %8284 = phi float [ %8282, %8273 ], [ 0.000000e+00, %8210 ]
  %8285 = fcmp fast ogt float %8185, %8270
  %8286 = fsub fast float %8185, %8270
  br i1 %8285, label %8287, label %8297

; <label>:8287                                    ; preds = %8283
  %8288 = fsub fast float %8270, %8271
  %8289 = fmul fast float %8288, %8286
  %8290 = fmul fast float %8271, %8185
  %8291 = fadd fast float %8271, %8185
  %8292 = fmul fast float %8291, %8225
  %8293 = fsub fast float %8227, %8290
  %8294 = fadd fast float %8293, %8292
  %8295 = fdiv fast float %8294, %8289
  %8296 = fadd fast float %8295, %8284
  br label %8297

; <label>:8297                                    ; preds = %8287, %8283
  %8298 = phi float [ %8296, %8287 ], [ %8284, %8283 ]
  %8299 = fsub fast float %8185, %8271
  %8300 = fmul fast float %8299, %8286
  %8301 = fmul fast float %8271, %8270
  %8302 = fadd fast float %8271, %8270
  %8303 = fmul fast float %8302, %8225
  %8304 = fadd fast float %8301, %8226
  %8305 = fsub fast float %8304, %8303
  %8306 = fdiv fast float %8305, %8300
  %8307 = call float @dx.op.unary.f32(i32 7, float %8298)  ; Saturate(value)
  %8308 = fcmp fast oeq float %6974, 0.000000e+00
  %8309 = extractvalue %dx.types.CBufRet.f32 %8093, 0
  %8310 = fcmp fast oeq float %8309, 0.000000e+00
  %8311 = or i1 %8308, %8310
  %8312 = fmul fast float %8309, 2.000000e+00
  %8313 = fadd fast float %8094, %8095
  %8314 = fdiv fast float %8313, %8312
  %8315 = call float @dx.op.unary.f32(i32 7, float %8314)  ; Saturate(value)
  %8316 = fmul fast float %8315, 2.000000e+00
  %8317 = fsub fast float 3.000000e+00, %8316
  %8318 = fmul fast float %8315, %8315
  %8319 = fmul fast float %8318, %8317
  %8320 = select i1 %8311, float 1.000000e+00, float %8319
  %8321 = fmul fast float %8306, %6974
  %8322 = fadd fast float %8307, %8321
  %8323 = call float @dx.op.unary.f32(i32 7, float %8322)  ; Saturate(value)
  %8324 = fmul fast float %8320, %8323
  br label %8325

; <label>:8325                                    ; preds = %8297, %8177
  %8326 = phi float [ %8324, %8297 ], [ 0.000000e+00, %8177 ]
  %8327 = fsub fast float 1.000000e+00, %8326
  %8328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %58, float %8047, float %8048, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8329 = extractvalue %dx.types.ResRet.f32 %8328, 0
  %8330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8331 = extractvalue %dx.types.CBufRet.i32 %8330, 2
  %8332 = icmp eq i32 %8331, 0
  br i1 %8332, label %8338, label %8333

; <label>:8333                                    ; preds = %8325
  %8334 = call float @dx.op.unary.f32(i32 7, float %8326)  ; Saturate(value)
  %8335 = fadd fast float %8329, -1.000000e+00
  %8336 = fmul fast float %8334, %8335
  %8337 = fadd fast float %8336, 1.000000e+00
  br label %8338

; <label>:8338                                    ; preds = %8333, %8325
  %8339 = phi float [ %8337, %8333 ], [ %8327, %8325 ]
  br i1 %8101, label %8340, label %8358

; <label>:8340                                    ; preds = %8338
  %8341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8342 = extractvalue %dx.types.CBufRet.f32 %8341, 1
  %8343 = fsub fast float %8178, %8342
  %8344 = call float @dx.op.unary.f32(i32 7, float %8343)  ; Saturate(value)
  %8345 = fsub fast float %8178, %8100
  %8346 = call float @dx.op.unary.f32(i32 7, float %8345)  ; Saturate(value)
  %8347 = fsub fast float %8344, %8346
  %8348 = fsub fast float %8180, %8346
  %8349 = fdiv fast float %8348, %8347
  %8350 = call float @dx.op.unary.f32(i32 7, float %8349)  ; Saturate(value)
  %8351 = fmul fast float %8350, 2.000000e+00
  %8352 = fsub fast float 3.000000e+00, %8351
  %8353 = fsub fast float %8329, %8339
  %8354 = fmul fast float %8350, %8350
  %8355 = fmul fast float %8354, %8353
  %8356 = fmul fast float %8355, %8352
  %8357 = fadd fast float %8356, %8339
  br label %8358

; <label>:8358                                    ; preds = %8340, %8338
  %8359 = phi float [ %8357, %8340 ], [ %8339, %8338 ]
  %8360 = call float @dx.op.binary.f32(i32 35, float %8329, float %8359)  ; FMax(a,b)
  %8361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8362 = extractvalue %dx.types.CBufRet.i32 %8361, 2
  %8363 = and i32 %8362, 1
  %8364 = icmp eq i32 %8363, 0
  %8365 = fcmp fast une float %8360, 1.000000e+00
  %8366 = and i1 %8365, %8364
  br i1 %8366, label %8367, label %8386

; <label>:8367                                    ; preds = %8358
  %8368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %58, float %8047, float %8048, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8369 = extractvalue %dx.types.ResRet.f32 %8368, 0
  %8370 = extractvalue %dx.types.ResRet.f32 %8368, 1
  %8371 = extractvalue %dx.types.ResRet.f32 %8368, 2
  %8372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8373 = extractvalue %dx.types.CBufRet.f32 %8372, 1
  %8374 = fmul fast float %8373, %8369
  %8375 = fmul fast float %8373, %8370
  %8376 = fmul fast float %8373, %8371
  %8377 = fcmp fast ogt float %8329, 0x3FEFFF2E40000000
  %8378 = fsub fast float 1.000000e+00, %8360
  %8379 = fsub fast float 1.000000e+00, %8329
  %8380 = fdiv fast float %8378, %8379
  %8381 = call float @dx.op.unary.f32(i32 7, float %8380)  ; Saturate(value)
  %8382 = select i1 %8377, float 0.000000e+00, float %8381
  %8383 = fmul fast float %8374, %8382
  %8384 = fmul fast float %8375, %8382
  %8385 = fmul fast float %8376, %8382
  br label %8386

; <label>:8386                                    ; preds = %8367, %8358
  %8387 = phi float [ 0.000000e+00, %8358 ], [ %8383, %8367 ]
  %8388 = phi float [ 0.000000e+00, %8358 ], [ %8384, %8367 ]
  %8389 = phi float [ 0.000000e+00, %8358 ], [ %8385, %8367 ]
  %8390 = fmul fast float %8387, %6962
  %8391 = fmul fast float %8388, %6962
  %8392 = fmul fast float %8389, %6962
  %8393 = fmul fast float %8360, %8022
  %8394 = call float @dx.op.dot3.f32(i32 55, float %8360, float %8360, float %8360, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8395 = call float @dx.op.dot3.f32(i32 55, float %8390, float %8391, float %8392, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8396 = select i1 %243, float %8394, float %8360
  %8397 = select i1 %243, float 1.000000e+00, float %8360
  %8398 = select i1 %243, float %8395, float %8390
  %8399 = select i1 %243, float 0.000000e+00, float %8391
  %8400 = select i1 %243, float 0.000000e+00, float %8392
  %8401 = fmul fast float %8396, %8034
  %8402 = fmul fast float %8396, %8035
  %8403 = fmul fast float %8397, %8036
  %8404 = fadd fast float %8401, %8398
  %8405 = fadd fast float %8402, %8399
  %8406 = fadd fast float %8400, %8403
  %8407 = fmul fast float %8396, %8037
  %8408 = fmul fast float %8396, %8038
  %8409 = fmul fast float %8397, %8039
  br label %8410

; <label>:8410                                    ; preds = %8386, %8043, %8012, %7244
  %8411 = phi float [ %7249, %7244 ], [ %8034, %8012 ], [ %8404, %8386 ], [ %8034, %8043 ]
  %8412 = phi float [ %7250, %7244 ], [ %8035, %8012 ], [ %8405, %8386 ], [ %8035, %8043 ]
  %8413 = phi float [ %7251, %7244 ], [ %8036, %8012 ], [ %8406, %8386 ], [ %8036, %8043 ]
  %8414 = phi float [ %7252, %7244 ], [ %8037, %8012 ], [ %8407, %8386 ], [ %8037, %8043 ]
  %8415 = phi float [ %7253, %7244 ], [ %8038, %8012 ], [ %8408, %8386 ], [ %8038, %8043 ]
  %8416 = phi float [ %7254, %7244 ], [ %8039, %8012 ], [ %8409, %8386 ], [ %8039, %8043 ]
  %8417 = phi float [ %7255, %7244 ], [ %8022, %8012 ], [ %8393, %8386 ], [ %8022, %8043 ]
  %8418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8419 = extractvalue %dx.types.CBufRet.f32 %8418, 2
  %8420 = extractvalue %dx.types.CBufRet.f32 %8418, 3
  %8421 = fmul fast float %8419, %105
  %8422 = fmul fast float %8420, %106
  %8423 = call float @dx.op.unary.f32(i32 7, float %8421)  ; Saturate(value)
  %8424 = call float @dx.op.unary.f32(i32 7, float %8422)  ; Saturate(value)
  %8425 = select i1 %6984, i32 2, i32 0
  %8426 = or i32 %8425, 1
  %8427 = uitofp i32 %8426 to float
  %8428 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %8423, float %8424, float %8427, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8429 = extractvalue %dx.types.ResRet.f32 %8428, 0
  %8430 = extractvalue %dx.types.ResRet.f32 %8428, 1
  %8431 = extractvalue %dx.types.ResRet.f32 %8428, 2
  %8432 = extractvalue %dx.types.ResRet.f32 %8428, 3
  %8433 = add nuw nsw i32 %8425, 2
  %8434 = uitofp i32 %8433 to float
  %8435 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %8423, float %8424, float %8434, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8436 = extractvalue %dx.types.ResRet.f32 %8435, 0
  %8437 = extractvalue %dx.types.ResRet.f32 %8435, 1
  %8438 = extractvalue %dx.types.ResRet.f32 %8435, 2
  %8439 = extractvalue %dx.types.ResRet.f32 %8435, 3
  %8440 = call float @dx.op.binary.f32(i32 35, float %8430, float %8431)  ; FMax(a,b)
  %8441 = call float @dx.op.binary.f32(i32 35, float %8429, float %8440)  ; FMax(a,b)
  %8442 = call float @dx.op.binary.f32(i32 35, float %8441, float %8432)  ; FMax(a,b)
  %8443 = call float @dx.op.binary.f32(i32 36, float %8437, float %8438)  ; FMin(a,b)
  %8444 = call float @dx.op.binary.f32(i32 36, float %8436, float %8443)  ; FMin(a,b)
  %8445 = call float @dx.op.binary.f32(i32 36, float %8444, float %8439)  ; FMin(a,b)
  %8446 = fmul fast float %8442, 2.550000e+02
  %8447 = fadd fast float %8446, 0x3F70101020000000
  %8448 = fptoui float %8447 to i32
  %8449 = fmul fast float %8445, 2.550000e+02
  %8450 = fadd fast float %8449, 0x3F70101020000000
  %8451 = fptoui float %8450 to i32
  %8452 = icmp ult i32 %8448, %8451
  br i1 %8452, label %8453, label %8622

; <label>:8453                                    ; preds = %8410
  %8454 = fcmp fast ogt float %95, 9.843750e-01
  %8455 = fadd fast float %7248, -4.000000e+00
  %8456 = select i1 %8454, float -4.000000e+00, float %8455
  %8457 = call float @dx.op.binary.f32(i32 35, float %8456, float 0.000000e+00)  ; FMax(a,b)
  %8458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8459 = extractvalue %dx.types.CBufRet.f32 %8458, 0
  %8460 = fadd fast float %8459, %8457
  %8461 = extractvalue %dx.types.CBufRet.f32 %8458, 2
  %8462 = fmul fast float %8460, %8461
  %8463 = call float @dx.op.unary.f32(i32 23, float %8462)  ; Log(value)
  %8464 = extractvalue %dx.types.CBufRet.f32 %8458, 3
  %8465 = fmul fast float %8464, %8463
  %8466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8467 = extractvalue %dx.types.CBufRet.f32 %8466, 2
  %8468 = fmul fast float %8465, %8467
  %8469 = call float @dx.op.unary.f32(i32 7, float %8468)  ; Saturate(value)
  %8470 = uitofp i32 %8448 to float
  %8471 = uitofp i32 %8451 to float
  %8472 = fadd fast float %8470, 5.000000e-01
  %8473 = fadd fast float %8471, 5.000000e-01
  %8474 = fmul fast float %8467, %8472
  %8475 = fmul fast float %8467, %8473
  %8476 = fadd fast float %8474, 0x3F0FFB4800000000
  %8477 = fadd fast float %8475, 0xBF0FFB4800000000
  %8478 = call float @dx.op.binary.f32(i32 35, float %8469, float %8476)  ; FMax(a,b)
  %8479 = call float @dx.op.binary.f32(i32 36, float %8478, float %8477)  ; FMin(a,b)
  %8480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8481 = extractvalue %dx.types.CBufRet.f32 %8480, 1
  %8482 = extractvalue %dx.types.CBufRet.f32 %8480, 2
  %8483 = extractvalue %dx.types.CBufRet.f32 %8480, 0
  %8484 = select i1 %6984, float %8483, float 0.000000e+00
  %8485 = fmul fast float %8481, %8479
  %8486 = fadd fast float %8484, %8485
  %8487 = fadd fast float %8484, %8482
  %8488 = fsub fast float %8481, %8482
  %8489 = fadd fast float %8488, %8484
  %8490 = call float @dx.op.binary.f32(i32 35, float %8486, float %8487)  ; FMax(a,b)
  %8491 = call float @dx.op.binary.f32(i32 36, float %8490, float %8489)  ; FMin(a,b)
  %8492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %8423, float %8424, float %8491, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8493 = extractvalue %dx.types.ResRet.f32 %8492, 0
  %8494 = extractvalue %dx.types.ResRet.f32 %8492, 1
  %8495 = extractvalue %dx.types.ResRet.f32 %8492, 2
  %8496 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8497 = extractvalue %dx.types.CBufRet.i32 %8496, 0
  %8498 = extractvalue %dx.types.CBufRet.i32 %8496, 1
  %8499 = uitofp i32 %8497 to float
  %8500 = uitofp i32 %8498 to float
  %8501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8502 = extractvalue %dx.types.CBufRet.f32 %8501, 0
  %8503 = extractvalue %dx.types.CBufRet.f32 %8501, 1
  %8504 = fmul fast float %8499, %8423
  %8505 = fmul fast float %8500, %8424
  %8506 = fadd fast float %8504, -5.000000e-01
  %8507 = fadd fast float %8505, -5.000000e-01
  %8508 = call float @dx.op.unary.f32(i32 22, float %8506)  ; Frc(value)
  %8509 = call float @dx.op.unary.f32(i32 22, float %8507)  ; Frc(value)
  %8510 = fmul fast float %8508, %8508
  %8511 = fmul fast float %8510, %8508
  %8512 = fsub fast float 3.000000e+00, %8508
  %8513 = fmul fast float %8510, %8512
  %8514 = fmul fast float %8508, 3.000000e+00
  %8515 = fmul fast float %8511, 3.000000e+00
  %8516 = fmul fast float %8510, 6.000000e+00
  %8517 = fsub fast float %8515, %8516
  %8518 = fadd fast float %8517, 4.000000e+00
  %8519 = fmul fast float %8518, 0x3FC5555560000000
  %8520 = fmul fast float %8511, -3.000000e+00
  %8521 = fadd fast float %8510, %8508
  %8522 = fmul fast float %8521, 3.000000e+00
  %8523 = fadd fast float %8520, 1.000000e+00
  %8524 = fadd fast float %8523, %8522
  %8525 = fmul fast float %8511, 0x3FC5555560000000
  %8526 = fmul fast float %8509, %8509
  %8527 = fmul fast float %8526, %8509
  %8528 = fsub fast float 3.000000e+00, %8509
  %8529 = fmul fast float %8526, %8528
  %8530 = fmul fast float %8509, 3.000000e+00
  %8531 = fmul fast float %8527, 3.000000e+00
  %8532 = fmul fast float %8526, 6.000000e+00
  %8533 = fsub fast float %8531, %8532
  %8534 = fadd fast float %8533, 4.000000e+00
  %8535 = fmul fast float %8534, 0x3FC5555560000000
  %8536 = fmul fast float %8527, -3.000000e+00
  %8537 = fadd fast float %8526, %8509
  %8538 = fmul fast float %8537, 3.000000e+00
  %8539 = fadd fast float %8536, 1.000000e+00
  %8540 = fadd fast float %8539, %8538
  %8541 = fmul fast float %8527, 0x3FC5555560000000
  %8542 = fadd fast float %8508, 1.000000e+00
  %8543 = fsub fast float 1.000000e+00, %8514
  %8544 = fadd fast float %8543, %8513
  %8545 = fadd fast float %8544, %8518
  %8546 = fmul fast float %8545, 0x3FC5555560000000
  %8547 = fdiv fast float %8519, %8546
  %8548 = fsub fast float %8542, %8547
  %8549 = fsub fast float 1.000000e+00, %8508
  %8550 = fadd fast float %8524, %8511
  %8551 = fmul fast float %8550, 0x3FC5555560000000
  %8552 = fdiv fast float %8525, %8551
  %8553 = fadd fast float %8549, %8552
  %8554 = fadd fast float %8509, 1.000000e+00
  %8555 = fsub fast float 1.000000e+00, %8530
  %8556 = fadd fast float %8555, %8529
  %8557 = fadd fast float %8556, %8534
  %8558 = fmul fast float %8557, 0x3FC5555560000000
  %8559 = fdiv fast float %8535, %8558
  %8560 = fsub fast float %8554, %8559
  %8561 = fsub fast float 1.000000e+00, %8509
  %8562 = fadd fast float %8540, %8527
  %8563 = fmul fast float %8562, 0x3FC5555560000000
  %8564 = fdiv fast float %8541, %8563
  %8565 = fadd fast float %8564, %8561
  %8566 = fmul fast float %8548, %8502
  %8567 = fsub fast float %8423, %8566
  %8568 = fmul fast float %8553, %8502
  %8569 = fadd fast float %8568, %8423
  %8570 = fmul fast float %8565, %8503
  %8571 = fadd fast float %8570, %8424
  %8572 = fmul fast float %8560, %8503
  %8573 = fsub fast float %8424, %8572
  %8574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %8567, float %8573, float %8491, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8575 = extractvalue %dx.types.ResRet.f32 %8574, 0
  %8576 = extractvalue %dx.types.ResRet.f32 %8574, 1
  %8577 = extractvalue %dx.types.ResRet.f32 %8574, 2
  %8578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %8569, float %8573, float %8491, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8579 = extractvalue %dx.types.ResRet.f32 %8578, 0
  %8580 = extractvalue %dx.types.ResRet.f32 %8578, 1
  %8581 = extractvalue %dx.types.ResRet.f32 %8578, 2
  %8582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %8567, float %8571, float %8491, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8583 = extractvalue %dx.types.ResRet.f32 %8582, 0
  %8584 = extractvalue %dx.types.ResRet.f32 %8582, 1
  %8585 = extractvalue %dx.types.ResRet.f32 %8582, 2
  %8586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %8569, float %8571, float %8491, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8587 = extractvalue %dx.types.ResRet.f32 %8586, 0
  %8588 = extractvalue %dx.types.ResRet.f32 %8586, 1
  %8589 = extractvalue %dx.types.ResRet.f32 %8586, 2
  %8590 = fsub fast float %8583, %8575
  %8591 = fsub fast float %8584, %8576
  %8592 = fsub fast float %8585, %8577
  %8593 = fmul fast float %8590, %8563
  %8594 = fmul fast float %8591, %8563
  %8595 = fmul fast float %8592, %8563
  %8596 = fadd fast float %8593, %8575
  %8597 = fadd fast float %8594, %8576
  %8598 = fadd fast float %8595, %8577
  %8599 = fsub fast float %8587, %8579
  %8600 = fsub fast float %8588, %8580
  %8601 = fsub fast float %8589, %8581
  %8602 = fmul fast float %8599, %8563
  %8603 = fmul fast float %8600, %8563
  %8604 = fmul fast float %8601, %8563
  %8605 = fsub fast float %8579, %8596
  %8606 = fadd fast float %8605, %8602
  %8607 = fsub fast float %8580, %8597
  %8608 = fadd fast float %8607, %8603
  %8609 = fsub fast float %8581, %8598
  %8610 = fadd fast float %8609, %8604
  %8611 = fmul fast float %8606, %8551
  %8612 = fmul fast float %8608, %8551
  %8613 = fmul fast float %8610, %8551
  %8614 = fadd fast float %8611, %8596
  %8615 = fadd fast float %8612, %8597
  %8616 = fadd fast float %8613, %8598
  %8617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8618 = extractvalue %dx.types.CBufRet.f32 %8617, 1
  %8619 = fmul fast float %8614, %8618
  %8620 = fmul fast float %8615, %8618
  %8621 = fmul fast float %8616, %8618
  br label %8622

; <label>:8622                                    ; preds = %8453, %8410
  %8623 = phi float [ %8493, %8453 ], [ 1.000000e+00, %8410 ]
  %8624 = phi float [ %8494, %8453 ], [ 1.000000e+00, %8410 ]
  %8625 = phi float [ %8495, %8453 ], [ 1.000000e+00, %8410 ]
  %8626 = phi float [ %8619, %8453 ], [ 0.000000e+00, %8410 ]
  %8627 = phi float [ %8620, %8453 ], [ 0.000000e+00, %8410 ]
  %8628 = phi float [ %8621, %8453 ], [ 0.000000e+00, %8410 ]
  %8629 = fmul fast float %8626, %6962
  %8630 = fmul fast float %8627, %6962
  %8631 = fmul fast float %8628, %6962
  %8632 = fmul fast float %8623, %8417
  %8633 = call float @dx.op.dot3.f32(i32 55, float %8623, float %8624, float %8625, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8634 = call float @dx.op.dot3.f32(i32 55, float %8629, float %8630, float %8631, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8635 = select i1 %243, float %8633, float %8623
  %8636 = select i1 %243, float %8633, float %8624
  %8637 = select i1 %243, float 1.000000e+00, float %8625
  %8638 = select i1 %243, float %8634, float %8629
  %8639 = select i1 %243, float 0.000000e+00, float %8630
  %8640 = select i1 %243, float 0.000000e+00, float %8631
  %8641 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8642 = extractvalue %dx.types.CBufRet.i32 %8641, 3
  %8643 = and i32 %8642, 3
  %8644 = icmp ne i32 %8643, 0
  %8645 = and i32 %8642, 4
  %8646 = icmp ne i32 %8645, 0
  %8647 = and i1 %8644, %8646
  %8648 = and i1 %243, %8647
  br i1 %8648, label %8649, label %8655

; <label>:8649                                    ; preds = %8622
  %8650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8651 = extractvalue %dx.types.CBufRet.f32 %8650, 1
  %8652 = fadd fast float %8632, -1.000000e+00
  %8653 = fmul fast float %8651, %8652
  %8654 = fadd fast float %8653, 1.000000e+00
  br label %8655

; <label>:8655                                    ; preds = %8649, %8622
  %8656 = phi float [ %8654, %8649 ], [ %8632, %8622 ]
  %8657 = fadd fast float %8414, %8411
  %8658 = fmul fast float %8635, %8657
  %8659 = fadd fast float %8658, %8638
  %8660 = fadd fast float %8415, %8412
  %8661 = fmul fast float %8636, %8660
  %8662 = fadd fast float %8661, %8639
  %8663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8664 = extractvalue %dx.types.CBufRet.f32 %8663, 0
  br i1 %243, label %8665, label %8689

; <label>:8665                                    ; preds = %8655
  %8666 = fadd fast float %8659, %8662
  %8667 = fmul fast float %8664, %8666
  %8668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8669 = extractvalue %dx.types.CBufRet.f32 %8668, 3
  %8670 = extractvalue %dx.types.CBufRet.f32 %6966, 1
  %8671 = fsub fast float %6971, %6965
  %8672 = fadd fast float %8671, %6972
  %8673 = fsub fast float %8672, %8670
  %8674 = extractvalue %dx.types.CBufRet.f32 %6966, 2
  %8675 = fmul fast float %8673, %8674
  %8676 = call float @dx.op.unary.f32(i32 7, float %8675)  ; Saturate(value)
  %8677 = fsub fast float %8676, %8669
  %8678 = fmul fast float %8677, %8656
  %8679 = fadd fast float %8678, %8669
  %8680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8681 = extractvalue %dx.types.CBufRet.f32 %8680, 0
  %8682 = fsub fast float %8679, %8681
  %8683 = fmul fast float %8682, 1.000000e+01
  %8684 = call float @dx.op.unary.f32(i32 7, float %8683)  ; Saturate(value)
  %8685 = fsub fast float %3251, %6962
  %8686 = fmul fast float %8684, %8685
  %8687 = fadd fast float %8686, %6962
  %8688 = fmul fast float %8687, %8679
  br label %8713

; <label>:8689                                    ; preds = %8655
  %8690 = fadd fast float %8416, %8413
  %8691 = fmul fast float %8637, %8690
  %8692 = fadd fast float %8691, %8640
  %8693 = fmul fast float %8664, %8659
  %8694 = fmul fast float %8664, %8662
  %8695 = fmul fast float %8664, %8692
  %8696 = call float @dx.op.binary.f32(i32 35, float %8694, float %8695)  ; FMax(a,b)
  %8697 = call float @dx.op.binary.f32(i32 35, float %8693, float %8696)  ; FMax(a,b)
  %8698 = call float @dx.op.binary.f32(i32 35, float %8697, float %6962)  ; FMax(a,b)
  %8699 = fcmp fast ugt float %8698, 0x3F10000000000000
  br i1 %8699, label %8701, label %8700

; <label>:8700                                    ; preds = %8689
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8701

; <label>:8701                                    ; preds = %8700, %8689
  %8702 = add i32 %65, 276
  %8703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %8702, i32 undef)  ; BufferLoad(srv,index,wot)
  %8704 = extractvalue %dx.types.ResRet.i32 %8703, 0
  %8705 = and i32 %8704, 32
  %8706 = icmp eq i32 %8705, 0
  br i1 %8706, label %8713, label %8707

; <label>:8707                                    ; preds = %8701
  %8708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8709 = extractvalue %dx.types.CBufRet.f32 %8708, 0
  %8710 = fmul fast float %8709, 0x3FE99999A0000000
  %8711 = fadd fast float %8709, %8693
  %8712 = fadd fast float %8710, %8695
  br label %8713

; <label>:8713                                    ; preds = %8707, %8701, %8665
  %8714 = phi float [ %8667, %8665 ], [ %8711, %8707 ], [ %8693, %8701 ]
  %8715 = phi float [ %8688, %8665 ], [ %8694, %8707 ], [ %8694, %8701 ]
  %8716 = phi float [ %8687, %8665 ], [ %8712, %8707 ], [ %8695, %8701 ]
  %8717 = phi float [ %8687, %8665 ], [ %6962, %8707 ], [ %6962, %8701 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8718 = call float @dx.op.binary.f32(i32 36, float %8714, float 3.225500e+04)  ; FMin(a,b)
  %8719 = call float @dx.op.binary.f32(i32 36, float %8715, float 3.225500e+04)  ; FMin(a,b)
  %8720 = call float @dx.op.binary.f32(i32 36, float %8716, float 3.225500e+04)  ; FMin(a,b)
  %8721 = call float @dx.op.binary.f32(i32 36, float %8717, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8718)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8719)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8720)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8721)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

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
!dx.viewIdState = !{!78}
!dx.entryPoints = !{!79}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !67, !70}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!14 = !{i32 7, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !18}
!18 = !{i32 0, i32 5}
!19 = !{i32 11, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 23, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 24, i32 1, i32 7, i32 0, !7}
!22 = !{i32 14, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 25, i32 1, i32 7, i32 0, !7}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 66, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !18}
!43 = !{i32 35, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!44 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!45 = !{i32 37, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!46 = !{i32 38, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!47 = !{i32 39, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!48 = !{i32 40, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!49 = !{i32 41, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!50 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!51 = !{i32 43, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !52}
!52 = !{i32 0, i32 14}
!53 = !{i32 44, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!54 = !{i32 45, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!55 = !{i32 46, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!56 = !{i32 47, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!57 = !{i32 48, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!58 = !{i32 49, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!59 = !{i32 50, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!60 = !{i32 51, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!61 = !{i32 52, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!62 = !{i32 53, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!63 = !{i32 54, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!64 = !{i32 55, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !52}
!65 = !{i32 56, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!66 = !{i32 57, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!67 = !{!68, !69}
!68 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!69 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!70 = !{!71, !72, !73, !74, !75, !76, !77}
!71 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!72 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!73 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!74 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!75 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!76 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!77 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!78 = !{[40 x i32] [i32 38, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
!79 = !{void ()* @ps_main, !"ps_main", !80, !4, !103}
!80 = !{!81, !101, null}
!81 = !{!82, !85, !87, !88, !91, !92, !93, !94, !95, !97, !99, !100}
!82 = !{i32 0, !"SV_Position", i8 9, i8 3, !83, i8 4, i32 1, i8 4, i32 0, i8 0, !84}
!83 = !{i32 0}
!84 = !{i32 3, i32 15}
!85 = !{i32 1, !"COLOR", i8 9, i8 0, !83, i8 2, i32 1, i8 4, i32 1, i8 0, !86}
!86 = !{i32 3, i32 7}
!87 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !83, i8 2, i32 1, i8 4, i32 2, i8 0, !84}
!88 = !{i32 3, !"TEXCOORDS", i8 9, i8 0, !89, i8 2, i32 1, i8 4, i32 3, i8 0, !90}
!89 = !{i32 1}
!90 = !{i32 3, i32 3}
!91 = !{i32 4, !"LMAPCOORDS", i8 9, i8 0, !83, i8 2, i32 1, i8 3, i32 4, i8 0, !86}
!92 = !{i32 5, !"NORMAL", i8 9, i8 0, !83, i8 2, i32 1, i8 3, i32 5, i8 0, !86}
!93 = !{i32 6, !"TANGENT", i8 9, i8 0, !83, i8 2, i32 1, i8 4, i32 6, i8 0, !84}
!94 = !{i32 7, !"NORMAL_TRANSFORM", i8 9, i8 0, !89, i8 2, i32 1, i8 4, i32 7, i8 0, !84}
!95 = !{i32 8, !"NORMAL_TRANSFORM", i8 9, i8 0, !96, i8 2, i32 1, i8 4, i32 8, i8 0, !84}
!96 = !{i32 2}
!97 = !{i32 9, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !83, i8 1, i32 1, i8 1, i32 9, i8 0, !98}
!98 = !{i32 3, i32 1}
!99 = !{i32 10, !"TRANSIENT_INDEX", i8 5, i8 0, !83, i8 1, i32 1, i8 1, i32 9, i8 1, !98}
!100 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !83, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!101 = !{!102}
!102 = !{i32 0, !"SV_Target", i8 9, i8 16, !83, i8 0, i32 1, i8 4, i32 0, i8 0, !84}
!103 = !{i32 0, i64 16}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = !{!117, !117, i64 0}
!117 = !{!"int", !118, i64 0}
!118 = !{!"omnipotent char", !119, i64 0}
!119 = !{!"Simple C/C++ TBAA"}
!120 = !{!121, !123, !125, !127}
!121 = distinct !{!121, !122, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!122 = distinct !{!122, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!123 = distinct !{!123, !124, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!124 = distinct !{!124, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!125 = distinct !{!125, !126, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!126 = distinct !{!126, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!127 = distinct !{!127, !128, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!128 = distinct !{!128, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = !{!141, !141, i64 0}
!141 = !{!"float", !118, i64 0}
!142 = !{!143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!143 = distinct !{!143, !144, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!144 = distinct !{!144, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!145 = distinct !{!145, !146, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!146 = distinct !{!146, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!147 = distinct !{!147, !146, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!148 = distinct !{!148, !149, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!149 = distinct !{!149, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!150 = distinct !{!150, !149, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!151 = distinct !{!151, !149, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!152 = distinct !{!152, !153, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!153 = distinct !{!153, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!154 = distinct !{!154, !153, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!155 = distinct !{!155, !153, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!156 = distinct !{!156, !157, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!157 = distinct !{!157, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"\01?sort@@YAXAIAM00@Z: %c"}
!160 = distinct !{!160, !"\01?sort@@YAXAIAM00@Z"}
!161 = !{!162, !163, !143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!162 = distinct !{!162, !160, !"\01?sort@@YAXAIAM00@Z: %a"}
!163 = distinct !{!163, !160, !"\01?sort@@YAXAIAM00@Z: %b"}
!164 = !{!163}
!165 = !{!162, !159, !143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!166 = !{!162}
!167 = !{!163, !159, !143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!168 = !{!169}
!169 = distinct !{!169, !170, !"\01?sort@@YAXAIAM00@Z: %c"}
!170 = distinct !{!170, !"\01?sort@@YAXAIAM00@Z"}
!171 = !{!172, !173, !143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!172 = distinct !{!172, !170, !"\01?sort@@YAXAIAM00@Z: %a"}
!173 = distinct !{!173, !170, !"\01?sort@@YAXAIAM00@Z: %b"}
!174 = !{!173}
!175 = !{!172, !169, !143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!176 = !{!172}
!177 = !{!173, !169, !143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 2}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 1}
!186 = distinct !{!186, !"dx.controlflow.hints", i32 1}
!187 = distinct !{!187, !"dx.controlflow.hints", i32 1}
!188 = distinct !{!188, !"dx.controlflow.hints", i32 1}

