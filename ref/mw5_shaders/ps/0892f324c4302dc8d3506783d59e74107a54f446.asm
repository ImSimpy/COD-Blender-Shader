;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORDS                0   xy          1     NONE   float   xy  
; LMAPCOORDS               0   xyz         2     NONE   float   xyz 
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           5     NONE    uint   x   
; TRANSIENT_INDEX          0    y          5     NONE    uint    y  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 95815fd65846be4abb76ee39c231e1ac
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
; TEXCOORDS                0                 linear       
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; MATERIAL_DATA_OFFSET     0        nointerpolation       
; TRANSIENT_INDEX          0        nointerpolation       
; SV_SampleIndex           0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
; SV_Target                1                              
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
; Number of inputs: 22, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
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
  %64 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = alloca [12 x float], align 4
  %83 = alloca [12 x float], align 4
  %84 = alloca [3 x float], align 4
  %85 = alloca [3 x float], align 4
  %86 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %87 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = fmul fast float %89, %78
  %91 = fmul fast float %89, %79
  %92 = fmul fast float %71, %68
  %93 = fmul fast float %72, %67
  %94 = fsub fast float %92, %93
  %95 = fmul fast float %72, %66
  %96 = fmul fast float %70, %68
  %97 = fsub fast float %95, %96
  %98 = fmul fast float %70, %67
  %99 = fmul fast float %71, %66
  %100 = fsub fast float %98, %99
  %101 = fmul fast float %94, %69
  %102 = fmul fast float %97, %69
  %103 = fmul fast float %100, %69
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 3
  %107 = fmul fast float %105, 2.000000e+00
  %108 = fmul fast float %107, %90
  %109 = fmul fast float %106, 2.000000e+00
  %110 = fmul fast float %109, %91
  %111 = fsub fast float 1.000000e+00, %108
  %112 = fsub fast float 1.000000e+00, %110
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = fmul fast float %111, %114
  %118 = fmul fast float %111, %115
  %119 = fmul fast float %111, %116
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fmul fast float %112, %121
  %125 = fmul fast float %112, %122
  %126 = fmul fast float %112, %123
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = fadd fast float %124, %128
  %132 = fadd fast float %131, %117
  %133 = fadd fast float %125, %129
  %134 = fadd fast float %133, %118
  %135 = fadd fast float %126, %130
  %136 = fadd fast float %135, %119
  %137 = fmul fast float %132, %81
  %138 = fmul fast float %134, %81
  %139 = fmul fast float %136, %81
  %140 = fadd fast float %75, 5.000000e-01
  %141 = fptoui float %140 to i32
  %142 = shl i32 %141, 3
  %143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %142, i32 undef)  ; BufferLoad(srv,index,wot)
  %144 = extractvalue %dx.types.ResRet.i32 %143, 0
  %145 = or i32 %142, 4
  %146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %145, i32 undef)  ; BufferLoad(srv,index,wot)
  %147 = extractvalue %dx.types.ResRet.i32 %146, 0
  %148 = and i32 %144, 8191
  %149 = lshr i32 %144, 13
  %150 = and i32 %149, 8191
  %151 = lshr i32 %144, 26
  %152 = and i32 %147, 65535
  %153 = lshr i32 %147, 16
  %154 = uitofp i32 %152 to float
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %157 = uitofp i32 %153 to float
  %158 = uitofp i32 %148 to float
  %159 = fmul fast float %156, %158
  %160 = uitofp i32 %150 to float
  %161 = fmul fast float %156, %160
  %162 = fmul fast float %156, %73
  %163 = fmul fast float %162, %154
  %164 = fmul fast float %156, %74
  %165 = fmul fast float %164, %157
  %166 = fadd fast float %163, %159
  %167 = fadd fast float %161, %165
  %168 = uitofp i32 %151 to float
  %169 = add i32 %65, 120
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = extractvalue %dx.types.ResRet.i32 %170, 1
  %173 = extractvalue %dx.types.ResRet.i32 %170, 2
  %174 = extractvalue %dx.types.ResRet.i32 %170, 3
  %175 = bitcast i32 %171 to float
  %176 = bitcast i32 %172 to float
  %177 = bitcast i32 %173 to float
  %178 = bitcast i32 %174 to float
  %179 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %180 = call float @dx.op.unary.f32(i32 25, float %179)  ; Rsqrt(value)
  %181 = fmul fast float %180, %70
  %182 = fmul fast float %180, %71
  %183 = fmul fast float %180, %72
  %184 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %185 = call float @dx.op.unary.f32(i32 25, float %184)  ; Rsqrt(value)
  %186 = fmul fast float %185, %137
  %187 = fmul fast float %185, %138
  %188 = fmul fast float %185, %139
  %189 = call float @dx.op.dot3.f32(i32 55, float %186, float %187, float %188, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %190 = fmul fast float %189, %189
  %191 = fmul fast float %190, %177
  %192 = fadd fast float %191, %178
  %193 = call float @dx.op.unary.f32(i32 7, float %192)  ; Saturate(value)
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 3
  %196 = fmul fast float %195, %184
  %197 = fsub fast float %175, %196
  %198 = fmul fast float %197, %176
  %199 = call float @dx.op.unary.f32(i32 7, float %198)  ; Saturate(value)
  %200 = fmul fast float %199, %193
  %201 = fmul fast float %90, 5.000000e-01
  %202 = fmul fast float %91, 5.000000e-01
  %203 = fptosi float %201 to i32
  %204 = fptosi float %202 to i32
  %205 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %203, i32 %204, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = lshr i32 %206, 18
  %208 = uitofp i32 %207 to float
  %209 = fmul fast float %208, 0x3F4C00EBA0000000
  %210 = call float @dx.op.unary.f32(i32 21, float %209)  ; Exp(value)
  %211 = fadd fast float %210, -1.000000e+00
  %212 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %213 = extractvalue %dx.types.Dimensions %212, 0
  %214 = sitofp i32 %213 to float
  %215 = extractvalue %dx.types.Dimensions %212, 1
  %216 = sitofp i32 %215 to float
  %217 = fcmp fast oge float %201, %214
  %218 = fcmp fast oge float %202, %216
  %219 = or i1 %217, %218
  %220 = select i1 %219, float 0x4197782600000000, float %211
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %223 = extractvalue %dx.types.CBufRet.f32 %221, 3
  %224 = fmul fast float %222, %90
  %225 = fmul fast float %223, %91
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = and i32 %227, 114688
  %229 = icmp ne i32 %228, 0
  %230 = select i1 %229, float %224, float 0.000000e+00
  %231 = select i1 %229, float %225, float 0.000000e+00
  %232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %59, float %230, float %231, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %233 = extractvalue %dx.types.ResRet.f32 %232, 0
  %234 = fmul fast float %233, 2.550000e+02
  %235 = fptoui float %234 to i32
  %236 = select i1 %229, i32 %235, i32 0
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.i32 %238, 3
  %240 = and i32 %239, 3
  %241 = icmp ne i32 %240, 0
  %242 = and i32 %239, 4
  %243 = icmp ne i32 %242, 0
  %244 = and i1 %241, %243
  br i1 %244, label %245, label %256

; <label>:245                                     ; preds = %0
  %246 = extractvalue %dx.types.CBufRet.f32 %237, 3
  %247 = fmul fast float %246, %91
  %248 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %249 = fmul fast float %248, %90
  %250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %58, float %249, float %247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = fsub fast float 1.000000e+00, %251
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 0
  %255 = fcmp fast olt float %252, %254
  br label %259

; <label>:256                                     ; preds = %0
  %257 = icmp eq i32 %242, 0
  %258 = and i1 %241, %257
  br label %259

; <label>:259                                     ; preds = %256, %245
  %260 = phi i1 [ %255, %245 ], [ %258, %256 ]
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %263 = fmul fast float %262, 0x3FE3C6EF40000000
  %264 = frem fast float %90, 2.560000e+02
  %265 = frem fast float %91, 2.560000e+02
  %266 = fptoui float %264 to i32
  %267 = fptoui float %265 to i32
  %268 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %266, i32 %267, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = fadd fast float %269, %263
  %271 = call float @dx.op.unary.f32(i32 22, float %270)  ; Frc(value)
  %272 = add i32 %65, 60
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = shl i32 %274, 4
  %276 = and i32 %275, 32752
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %274, 7
  %279 = and i32 %278, 32752
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %274, 22
  %282 = shl nuw nsw i32 %281, 5
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = add i32 %65, 72
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 255
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = lshr i32 %286, 8
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F70101020000000
  %294 = lshr i32 %286, 16
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = add i32 %65, 36
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 65535
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %300, 16
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = add i32 %65, 96
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 65535
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %307, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = fmul fast float %309, 0x3F50624DE0000000
  %313 = fmul fast float %311, 0x3F50624DE0000000
  %314 = add i32 %65, 108
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 2
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %327, label %319

; <label>:319                                     ; preds = %259
  %320 = add i32 %65, 216
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = add i32 %322, 0
  %324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %323, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %325 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %324, %dx.types.Handle %87, float %76, float %77, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %326 = extractvalue %dx.types.ResRet.f32 %325, 3
  br label %327

; <label>:327                                     ; preds = %319, %259
  %328 = phi float [ 1.000000e+00, %259 ], [ %326, %319 ]
  %329 = add i32 %65, 24
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = add i32 %65, 28
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = or i32 %334, %331
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %1089, label %337

; <label>:337                                     ; preds = %327
  %338 = add i32 %65, 92
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = lshr i32 %340, 16
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = fmul fast float %342, 0x3F50624DE0000000
  %344 = add i32 %65, 40
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = lshr i32 %346, 16
  %348 = and i32 %347, 255
  %349 = lshr i32 %346, 24
  %350 = add i32 %65, 100
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = and i32 %352, 65535
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %352, 16
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = add i32 %65, 32
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = lshr i32 %359, 22
  %361 = shl nuw nsw i32 %360, 5
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = shl i32 %359, 4
  %364 = and i32 %363, 32752
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %359, 7
  %367 = and i32 %366, 32752
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 3
  %371 = fmul fast float %370, 1.000000e+03
  %372 = fmul fast float %312, %371
  %373 = call float @dx.op.unary.f32(i32 22, float %372)  ; Frc(value)
  %374 = fadd fast float %373, %302
  %375 = fmul fast float %313, %371
  %376 = call float @dx.op.unary.f32(i32 22, float %375)  ; Frc(value)
  %377 = fadd fast float %376, %304
  %378 = fmul fast float %343, %371
  %379 = call float @dx.op.unary.f32(i32 22, float %378)  ; Frc(value)
  %380 = fmul fast float %379, 0x401921FB60000000
  %381 = fadd fast float %380, %362
  %382 = call float @dx.op.unary.f32(i32 13, float %381)  ; Sin(value)
  %383 = call float @dx.op.unary.f32(i32 12, float %381)  ; Cos(value)
  %384 = fsub fast float -0.000000e+00, %382
  %385 = fadd fast float %76, -5.000000e-01
  %386 = fadd fast float %77, -5.000000e-01
  %387 = fmul fast float %354, %385
  %388 = fmul fast float %356, %386
  %389 = fadd fast float %387, 5.000000e-01
  %390 = fadd fast float %388, 5.000000e-01
  %391 = fmul fast float %365, %389
  %392 = fmul fast float %368, %390
  %393 = fmul fast float %383, %391
  %394 = call float @dx.op.tertiary.f32(i32 46, float %384, float %392, float %393)  ; FMad(a,b,c)
  %395 = fmul fast float %382, %391
  %396 = call float @dx.op.tertiary.f32(i32 46, float %383, float %392, float %395)  ; FMad(a,b,c)
  %397 = fadd fast float %374, %394
  %398 = fadd fast float %377, %396
  %399 = icmp ugt i32 %348, 1
  %400 = icmp ugt i32 %346, 33554431
  %401 = or i1 %400, %399
  br i1 %401, label %402, label %427

; <label>:402                                     ; preds = %337
  %403 = add i32 %65, 84
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = lshr i32 %405, 16
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = fmul fast float %370, %407
  %409 = call float @dx.op.unary.f32(i32 22, float %408)  ; Frc(value)
  %410 = mul nuw nsw i32 %348, %349
  %411 = uitofp i32 %410 to float
  %412 = fmul fast float %409, %411
  %413 = call float @dx.op.unary.f32(i32 27, float %412)  ; Round_ni(value)
  %414 = fptoui float %413 to i32
  %415 = urem i32 %414, %348
  %416 = udiv i32 %414, %349
  %417 = call float @dx.op.unary.f32(i32 22, float %397)  ; Frc(value)
  %418 = call float @dx.op.unary.f32(i32 22, float %398)  ; Frc(value)
  %419 = uitofp i32 %415 to float
  %420 = uitofp i32 %416 to float
  %421 = fadd fast float %417, %419
  %422 = fadd fast float %418, %420
  %423 = uitofp i32 %348 to float
  %424 = uitofp i32 %349 to float
  %425 = fdiv fast float %421, %423
  %426 = fdiv fast float %422, %424
  br label %427

; <label>:427                                     ; preds = %402, %337
  %428 = phi float [ %425, %402 ], [ %397, %337 ]
  %429 = phi float [ %426, %402 ], [ %398, %337 ]
  %430 = and i32 %331, 16777216
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %541, label %432

; <label>:432                                     ; preds = %427
  %433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %434 = extractvalue %dx.types.CBufRet.f32 %433, 0
  %435 = extractvalue %dx.types.CBufRet.f32 %433, 1
  %436 = extractvalue %dx.types.CBufRet.f32 %433, 2
  %437 = fadd fast float %434, %137
  %438 = fadd fast float %435, %138
  %439 = fadd fast float %436, %139
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 0
  %442 = call float @dx.op.unary.f32(i32 7, float %441)  ; Saturate(value)
  %443 = icmp eq i32 %64, 65535
  br i1 %443, label %538, label %444

; <label>:444                                     ; preds = %432
  %445 = lshr i32 %64, 1
  %446 = shl i32 %445, 2
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %64, 1
  %450 = icmp ne i32 %449, 0
  %451 = lshr i32 %448, 16
  %452 = and i32 %448, 65535
  %453 = select i1 %450, i32 %451, i32 %452
  %454 = icmp eq i32 %453, 65535
  br i1 %454, label %534, label %455

; <label>:455                                     ; preds = %444
  %456 = mul nuw nsw i32 %453, 40
  %457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.f32 %457, 0
  %459 = extractvalue %dx.types.ResRet.f32 %457, 1
  %460 = extractvalue %dx.types.ResRet.f32 %457, 2
  %461 = add nuw nsw i32 %456, 12
  %462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = extractvalue %dx.types.ResRet.f32 %462, 1
  %465 = extractvalue %dx.types.ResRet.f32 %462, 2
  %466 = add nuw nsw i32 %456, 24
  %467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  %471 = add nuw nsw i32 %456, 36
  %472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = fsub fast float %437, %458
  %475 = fsub fast float %438, %459
  %476 = fsub fast float %439, %460
  %477 = fmul fast float %473, %474
  %478 = fmul fast float %473, %475
  %479 = fmul fast float %473, %476
  %480 = call float @dx.op.unary.f32(i32 27, float %477)  ; Round_ni(value)
  %481 = call float @dx.op.unary.f32(i32 27, float %478)  ; Round_ni(value)
  %482 = call float @dx.op.unary.f32(i32 27, float %479)  ; Round_ni(value)
  %483 = fadd fast float %480, 5.000000e-01
  %484 = fadd fast float %481, 5.000000e-01
  %485 = fadd fast float %482, 5.000000e-01
  %486 = fmul fast float %483, %463
  %487 = fmul fast float %484, %464
  %488 = fmul fast float %485, %465
  %489 = shl i32 %64, 2
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = add i32 %491, 0
  %493 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %492, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %494 = call float @dx.op.unary.f32(i32 22, float %486)  ; Frc(value)
  %495 = call float @dx.op.unary.f32(i32 22, float %487)  ; Frc(value)
  %496 = call float @dx.op.unary.f32(i32 22, float %488)  ; Frc(value)
  %497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %493, %dx.types.Handle %59, float %494, float %495, float %496, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %498 = extractvalue %dx.types.ResRet.f32 %497, 0
  %499 = extractvalue %dx.types.ResRet.f32 %497, 1
  %500 = extractvalue %dx.types.ResRet.f32 %497, 2
  %501 = fmul fast float %498, 1.023000e+03
  %502 = fmul fast float %499, 1.023000e+03
  %503 = fmul fast float %500, 1.023000e+03
  %504 = fadd fast float %501, 5.000000e-01
  %505 = fadd fast float %502, 5.000000e-01
  %506 = fadd fast float %503, 5.000000e-01
  %507 = call float @dx.op.unary.f32(i32 27, float %504)  ; Round_ni(value)
  %508 = call float @dx.op.unary.f32(i32 27, float %505)  ; Round_ni(value)
  %509 = call float @dx.op.unary.f32(i32 27, float %506)  ; Round_ni(value)
  %510 = fsub fast float %477, %480
  %511 = fsub fast float %478, %481
  %512 = fsub fast float %479, %482
  %513 = fmul fast float %510, 7.500000e-01
  %514 = fmul fast float %511, 7.500000e-01
  %515 = fmul fast float %512, 7.500000e-01
  %516 = fadd fast float %480, 1.250000e-01
  %517 = fadd fast float %516, %513
  %518 = fadd fast float %517, %507
  %519 = fadd fast float %481, 1.250000e-01
  %520 = fadd fast float %519, %514
  %521 = fadd fast float %520, %508
  %522 = fadd fast float %482, 1.250000e-01
  %523 = fadd fast float %522, %515
  %524 = fadd fast float %523, %509
  %525 = fmul fast float %518, %468
  %526 = fmul fast float %521, %469
  %527 = fmul fast float %524, %470
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = add i32 %529, 0
  %531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %530, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %531, %dx.types.Handle %57, float %525, float %526, float %527, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  br label %534

; <label>:534                                     ; preds = %455, %444
  %535 = phi float [ %533, %455 ], [ -1.000000e+00, %444 ]
  %536 = fadd fast float %535, %442
  %537 = call float @dx.op.unary.f32(i32 7, float %536)  ; Saturate(value)
  br label %538

; <label>:538                                     ; preds = %534, %432
  %539 = phi float [ %537, %534 ], [ %442, %432 ]
  %540 = fmul fast float %539, %328
  br label %541

; <label>:541                                     ; preds = %538, %427
  %542 = phi float [ %540, %538 ], [ %328, %427 ]
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = and i32 %544, 256
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %593, label %547

; <label>:547                                     ; preds = %541
  %548 = add i32 %65, 200
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = add i32 %550, 0
  %552 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %551, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %553 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %552, %dx.types.Handle %87, float %428, float %429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %554 = extractvalue %dx.types.ResRet.f32 %553, 0
  %555 = add i32 %65, 52
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = shl i32 %557, 4
  %559 = and i32 %558, 32752
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = lshr i32 %557, 7
  %562 = and i32 %561, 32752
  %563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %562)  ; LegacyF16ToF32(value)
  %564 = fsub fast float 1.000000e+00, %542
  %565 = call float @dx.op.binary.f32(i32 35, float %564, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %566 = bitcast float %542 to i32
  %567 = sitofp i32 %566 to float
  %568 = fadd fast float %567, 0xC1CFBF8940000000
  %569 = fmul fast float %563, %568
  %570 = fadd fast float %569, 0x41CFBF8940000000
  %571 = fptosi float %570 to i32
  %572 = bitcast i32 %571 to float
  %573 = bitcast float %565 to i32
  %574 = sitofp i32 %573 to float
  %575 = fadd fast float %574, 0xC1CFBF8940000000
  %576 = fmul fast float %575, %563
  %577 = fadd fast float %576, 0x41CFBF8940000000
  %578 = fptosi float %577 to i32
  %579 = bitcast i32 %578 to float
  %580 = fmul fast float %572, %560
  %581 = fmul fast float %579, %560
  %582 = fsub fast float %565, %580
  %583 = fadd fast float %581, %565
  %584 = call float @dx.op.unary.f32(i32 7, float %582)  ; Saturate(value)
  %585 = call float @dx.op.unary.f32(i32 7, float %583)  ; Saturate(value)
  %586 = fsub fast float %554, %584
  %587 = fsub fast float %585, %584
  %588 = bitcast float %587 to i32
  %589 = sub nsw i32 2129859010, %588
  %590 = bitcast i32 %589 to float
  %591 = fmul fast float %590, %586
  %592 = call float @dx.op.unary.f32(i32 7, float %591)  ; Saturate(value)
  br label %593

; <label>:593                                     ; preds = %547, %541
  %594 = phi float [ %592, %547 ], [ %542, %541 ]
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = and i32 %596, 128
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %615, label %599

; <label>:599                                     ; preds = %593
  %600 = add i32 %65, 196
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = add i32 %602, 0
  %604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %603, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %605 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %604, %dx.types.Handle %87, float %428, float %429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = and i32 %608, 524288
  %610 = icmp ne i32 %609, 0
  %611 = fcmp fast ogt float %606, 0x3FE0101020000000
  %612 = select i1 %611, float 1.000000e+00, float 0.000000e+00
  %613 = select i1 %610, float %612, float %606
  %614 = fmul fast float %613, %594
  br label %615

; <label>:615                                     ; preds = %599, %593
  %616 = phi float [ %614, %599 ], [ %594, %593 ]
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = and i32 %618, 16
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %819, label %621

; <label>:621                                     ; preds = %615
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = add i32 %65, 184
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = add i32 %626, 0
  %628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %627, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %629 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %628, %dx.types.Handle %86, float %428, float %429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %630 = extractvalue %dx.types.ResRet.f32 %629, 0
  %631 = extractvalue %dx.types.ResRet.f32 %629, 1
  %632 = extractvalue %dx.types.ResRet.f32 %629, 2
  %633 = extractvalue %dx.types.ResRet.f32 %629, 3
  %634 = and i32 %623, 255
  %635 = uitofp i32 %634 to float
  %636 = lshr i32 %623, 8
  %637 = and i32 %636, 255
  %638 = uitofp i32 %637 to float
  %639 = fmul fast float %633, %635
  %640 = fadd fast float %639, %638
  %641 = fmul fast float %640, 0x3F70101000000000
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = and i32 %643, 512
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %654, label %646

; <label>:646                                     ; preds = %621
  %647 = add i32 %65, 204
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = add i32 %649, 0
  %651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %650, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %652 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %651, %dx.types.Handle %87, float %428, float %429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %653 = extractvalue %dx.types.ResRet.f32 %652, 0
  br label %654

; <label>:654                                     ; preds = %646, %621
  %655 = phi float [ %653, %646 ], [ 1.000000e+00, %621 ]
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = and i32 %657, 33554432
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %766, label %660

; <label>:660                                     ; preds = %654
  %661 = add i32 %65, 80
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = and i32 %663, 65535
  %665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %664)  ; LegacyF16ToF32(value)
  %666 = lshr i32 %663, 16
  %667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %666)  ; LegacyF16ToF32(value)
  %668 = add i32 %65, 84
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %668, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = and i32 %670, 65535
  %672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %671)  ; LegacyF16ToF32(value)
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = lshr i32 %674, 24
  %676 = uitofp i32 %675 to float
  %677 = fmul fast float %676, 0x3F70101020000000
  %678 = and i32 %674, 255
  %679 = uitofp i32 %678 to float
  %680 = fmul fast float %679, 0x3F70101020000000
  %681 = lshr i32 %674, 8
  %682 = and i32 %681, 255
  %683 = uitofp i32 %682 to float
  %684 = fmul fast float %683, 0x3F70101020000000
  %685 = lshr i32 %674, 16
  %686 = and i32 %685, 255
  %687 = uitofp i32 %686 to float
  %688 = fmul fast float %687, 0x3F70101020000000
  %689 = add i32 %65, 76
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = lshr i32 %691, 24
  %693 = uitofp i32 %692 to float
  %694 = fmul fast float %693, 0x3F70101020000000
  %695 = and i32 %691, 255
  %696 = uitofp i32 %695 to float
  %697 = fmul fast float %696, 0x3F70101020000000
  %698 = lshr i32 %691, 8
  %699 = and i32 %698, 255
  %700 = uitofp i32 %699 to float
  %701 = fmul fast float %700, 0x3F70101020000000
  %702 = lshr i32 %691, 16
  %703 = and i32 %702, 255
  %704 = uitofp i32 %703 to float
  %705 = fmul fast float %704, 0x3F70101020000000
  %706 = bitcast float %630 to i32
  %707 = ashr i32 %706, 1
  %708 = sub nsw i32 1597463174, %707
  %709 = bitcast i32 %708 to float
  %710 = fmul fast float %630, 5.000000e-01
  %711 = fmul fast float %709, %709
  %712 = fmul fast float %711, %710
  %713 = fsub fast float 1.500000e+00, %712
  %714 = fmul fast float %709, %630
  %715 = fmul fast float %714, %713
  %716 = bitcast float %631 to i32
  %717 = ashr i32 %716, 1
  %718 = sub nsw i32 1597463174, %717
  %719 = bitcast i32 %718 to float
  %720 = fmul fast float %631, 5.000000e-01
  %721 = fmul fast float %719, %719
  %722 = fmul fast float %721, %720
  %723 = fsub fast float 1.500000e+00, %722
  %724 = fmul fast float %719, %631
  %725 = fmul fast float %724, %723
  %726 = bitcast float %632 to i32
  %727 = ashr i32 %726, 1
  %728 = sub nsw i32 1597463174, %727
  %729 = bitcast i32 %728 to float
  %730 = fmul fast float %632, 5.000000e-01
  %731 = fmul fast float %729, %729
  %732 = fmul fast float %731, %730
  %733 = fsub fast float 1.500000e+00, %732
  %734 = fmul fast float %729, %632
  %735 = fmul fast float %734, %733
  %736 = fsub fast float %715, %697
  %737 = fsub fast float %725, %701
  %738 = fsub fast float %735, %705
  %739 = fmul fast float %736, %665
  %740 = fmul fast float %737, %667
  %741 = fmul fast float %738, %672
  %742 = fadd fast float %739, %680
  %743 = fadd fast float %740, %684
  %744 = fadd fast float %741, %688
  %745 = call float @dx.op.unary.f32(i32 7, float %742)  ; Saturate(value)
  %746 = call float @dx.op.unary.f32(i32 7, float %743)  ; Saturate(value)
  %747 = call float @dx.op.unary.f32(i32 7, float %744)  ; Saturate(value)
  %748 = fmul fast float %745, %745
  %749 = fmul fast float %746, %746
  %750 = fmul fast float %747, %747
  %751 = fsub fast float %748, %630
  %752 = fsub fast float %749, %631
  %753 = fsub fast float %750, %632
  %754 = fmul fast float %751, %655
  %755 = fmul fast float %752, %655
  %756 = fmul fast float %753, %655
  %757 = fadd fast float %754, %630
  %758 = fadd fast float %755, %631
  %759 = fadd fast float %756, %632
  %760 = fadd fast float %677, %641
  %761 = fsub fast float %760, %694
  %762 = call float @dx.op.unary.f32(i32 7, float %761)  ; Saturate(value)
  %763 = fsub fast float %762, %641
  %764 = fmul fast float %763, %655
  %765 = fadd fast float %764, %641
  br label %819

; <label>:766                                     ; preds = %654
  %767 = and i32 %657, 134217728
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %803, label %769

; <label>:769                                     ; preds = %766
  %770 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %771 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %772 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %773 = fadd fast float %770, -5.000000e-01
  %774 = fadd fast float %771, -5.000000e-01
  %775 = fadd fast float %772, -5.000000e-01
  %776 = fmul fast float %773, %655
  %777 = fmul fast float %774, %655
  %778 = fmul fast float %775, %655
  %779 = fadd fast float %776, 5.000000e-01
  %780 = fadd fast float %777, 5.000000e-01
  %781 = fadd fast float %778, 5.000000e-01
  %782 = call float @dx.op.unary.f32(i32 24, float %630)  ; Sqrt(value)
  %783 = call float @dx.op.unary.f32(i32 24, float %631)  ; Sqrt(value)
  %784 = call float @dx.op.unary.f32(i32 24, float %632)  ; Sqrt(value)
  %785 = fmul fast float %779, 2.000000e+00
  %786 = fsub fast float 1.000000e+00, %785
  %787 = fmul fast float %786, %782
  %788 = fadd fast float %787, %785
  %789 = fmul fast float %788, %782
  %790 = fmul fast float %780, 2.000000e+00
  %791 = fsub fast float 1.000000e+00, %790
  %792 = fmul fast float %791, %783
  %793 = fadd fast float %792, %790
  %794 = fmul fast float %793, %783
  %795 = fmul fast float %781, 2.000000e+00
  %796 = fsub fast float 1.000000e+00, %795
  %797 = fmul fast float %796, %784
  %798 = fadd fast float %797, %795
  %799 = fmul fast float %798, %784
  %800 = fmul fast float %789, %789
  %801 = fmul fast float %794, %794
  %802 = fmul fast float %799, %799
  br label %819

; <label>:803                                     ; preds = %766
  %804 = fmul fast float %289, %289
  %805 = fmul fast float %293, %293
  %806 = fmul fast float %297, %297
  %807 = fadd fast float %804, -1.000000e+00
  %808 = fadd fast float %805, -1.000000e+00
  %809 = fadd fast float %806, -1.000000e+00
  %810 = fmul fast float %655, %807
  %811 = fmul fast float %655, %808
  %812 = fmul fast float %655, %809
  %813 = fadd fast float %810, 1.000000e+00
  %814 = fadd fast float %811, 1.000000e+00
  %815 = fadd fast float %812, 1.000000e+00
  %816 = fmul fast float %813, %630
  %817 = fmul fast float %814, %631
  %818 = fmul fast float %815, %632
  br label %819

; <label>:819                                     ; preds = %803, %769, %660, %615
  %820 = phi float [ %765, %660 ], [ %641, %769 ], [ %641, %803 ], [ 0x3FA23C0BE0000000, %615 ]
  %821 = phi float [ %757, %660 ], [ %800, %769 ], [ %816, %803 ], [ 1.000000e+00, %615 ]
  %822 = phi float [ %758, %660 ], [ %801, %769 ], [ %817, %803 ], [ 1.000000e+00, %615 ]
  %823 = phi float [ %759, %660 ], [ %802, %769 ], [ %818, %803 ], [ 1.000000e+00, %615 ]
  %824 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %825 = extractvalue %dx.types.CBufRet.i32 %824, 1
  %826 = and i32 %825, 1
  %827 = icmp ne i32 %826, 0
  %828 = add i32 %65, 116
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = and i32 %830, 32
  %832 = icmp ne i32 %831, 0
  %833 = and i1 %827, %832
  %834 = select i1 %833, float 1.000000e+00, float %821
  %835 = select i1 %833, float 0x3FD3333340000000, float %822
  %836 = select i1 %833, float 0x3FD3333340000000, float %823
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = and i32 %838, 32
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %913, label %841

; <label>:841                                     ; preds = %819
  %842 = add i32 %65, 44
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = add i32 %65, 188
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = add i32 %847, 0
  %849 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %848, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %850 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %849, %dx.types.Handle %86, float %428, float %429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %851 = extractvalue %dx.types.ResRet.f32 %850, 0
  %852 = extractvalue %dx.types.ResRet.f32 %850, 1
  %853 = extractvalue %dx.types.ResRet.f32 %850, 2
  %854 = extractvalue %dx.types.ResRet.f32 %850, 3
  %855 = and i32 %844, 255
  %856 = uitofp i32 %855 to float
  %857 = lshr i32 %844, 8
  %858 = and i32 %857, 255
  %859 = uitofp i32 %858 to float
  %860 = lshr i32 %844, 16
  %861 = and i32 %860, 255
  %862 = uitofp i32 %861 to float
  %863 = fmul fast float %862, 0x3F70101000000000
  %864 = fmul fast float %851, %856
  %865 = fadd fast float %864, %859
  %866 = fmul fast float %865, 0x3F70101000000000
  %867 = fadd fast float %852, -5.000000e-01
  %868 = fadd fast float %854, -5.000000e-01
  %869 = fmul fast float %867, %863
  %870 = fmul fast float %868, %863
  %871 = fadd fast float %869, 5.000000e-01
  %872 = fadd fast float %870, 5.000000e-01
  %873 = fmul fast float %871, 2.000000e+00
  %874 = fadd fast float %873, -1.000000e+00
  %875 = fmul fast float %872, 2.000000e+00
  %876 = fadd fast float %875, -1.000000e+00
  %877 = fadd fast float %874, %876
  %878 = fmul fast float %877, 5.000000e-01
  %879 = fsub fast float %874, %876
  %880 = fmul fast float %879, 5.000000e-01
  %881 = call float @dx.op.unary.f32(i32 6, float %878)  ; FAbs(value)
  %882 = fsub fast float 1.000000e+00, %881
  %883 = call float @dx.op.unary.f32(i32 6, float %880)  ; FAbs(value)
  %884 = fsub fast float %882, %883
  %885 = call float @dx.op.dot3.f32(i32 55, float %878, float %880, float %884, float %878, float %880, float %884)  ; Dot3(ax,ay,az,bx,by,bz)
  %886 = call float @dx.op.unary.f32(i32 25, float %885)  ; Rsqrt(value)
  %887 = fmul fast float %878, %886
  %888 = fmul fast float %880, %886
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = and i32 %890, 67108864
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %909, label %893

; <label>:893                                     ; preds = %841
  %894 = add i32 %65, 88
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %894, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = and i32 %896, 65535
  %898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %897)  ; LegacyF16ToF32(value)
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = and i32 %900, 65535
  %902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %901)  ; LegacyF16ToF32(value)
  %903 = lshr i32 %896, 16
  %904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %903)  ; LegacyF16ToF32(value)
  %905 = fsub fast float %866, %904
  %906 = fmul fast float %905, %898
  %907 = fadd fast float %906, %902
  %908 = call float @dx.op.unary.f32(i32 7, float %907)  ; Saturate(value)
  br label %909

; <label>:909                                     ; preds = %893, %841
  %910 = phi float [ %908, %893 ], [ %866, %841 ]
  %911 = call float @dx.op.dot2.f32(i32 54, float %887, float %888, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %912 = call float @dx.op.dot2.f32(i32 54, float %887, float %888, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %913

; <label>:913                                     ; preds = %909, %819
  %914 = phi float [ %910, %909 ], [ 0x3FD6666660000000, %819 ]
  %915 = phi float [ %911, %909 ], [ 0.000000e+00, %819 ]
  %916 = phi float [ %912, %909 ], [ 0.000000e+00, %819 ]
  %917 = phi float [ %853, %909 ], [ 1.000000e+00, %819 ]
  %918 = add i32 %65, 64
  %919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.i32 %919, 0
  %921 = lshr i32 %920, 22
  %922 = shl nuw nsw i32 %921, 5
  %923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %922)  ; LegacyF16ToF32(value)
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = and i32 %925, 64
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %961, label %928

; <label>:928                                     ; preds = %913
  %929 = add i32 %65, 192
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = add i32 %931, 0
  %933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %932, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = and i32 %935, 131072
  %937 = icmp eq i32 %936, 0
  %938 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %933, %dx.types.Handle %86, float %428, float %429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %939 = extractvalue %dx.types.ResRet.f32 %938, 0
  %940 = extractvalue %dx.types.ResRet.f32 %938, 1
  %941 = extractvalue %dx.types.ResRet.f32 %938, 2
  %942 = fmul fast float %939, %277
  %943 = fmul fast float %940, %280
  %944 = fmul fast float %941, %283
  br i1 %937, label %951, label %945

; <label>:945                                     ; preds = %928
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 0
  %948 = fmul fast float %947, %942
  %949 = fmul fast float %947, %943
  %950 = fmul fast float %947, %944
  br label %951

; <label>:951                                     ; preds = %945, %928
  %952 = phi float [ %948, %945 ], [ %942, %928 ]
  %953 = phi float [ %949, %945 ], [ %943, %928 ]
  %954 = phi float [ %950, %945 ], [ %944, %928 ]
  %955 = fmul fast float %952, %923
  %956 = select i1 %260, float %955, float %952
  %957 = call float @dx.op.dot3.f32(i32 55, float %956, float %953, float %954, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %958 = select i1 %260, float 0.000000e+00, float %952
  %959 = select i1 %260, float %957, float %953
  %960 = select i1 %260, float 0.000000e+00, float %954
  br label %961

; <label>:961                                     ; preds = %951, %913
  %962 = phi float [ %958, %951 ], [ 0.000000e+00, %913 ]
  %963 = phi float [ %959, %951 ], [ 0.000000e+00, %913 ]
  %964 = phi float [ %960, %951 ], [ 0.000000e+00, %913 ]
  %965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = and i32 %966, 1024
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %999, label %969

; <label>:969                                     ; preds = %961
  %970 = add i32 %65, 56
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 255
  %974 = uitofp i32 %973 to float
  %975 = fmul fast float %974, 0x3F70101020000000
  %976 = lshr i32 %972, 8
  %977 = and i32 %976, 255
  %978 = uitofp i32 %977 to float
  %979 = fmul fast float %978, 0x3F70101020000000
  %980 = lshr i32 %972, 16
  %981 = and i32 %980, 255
  %982 = uitofp i32 %981 to float
  %983 = fmul fast float %982, 0x3F70101020000000
  %984 = fmul fast float %975, %975
  %985 = fmul fast float %979, %979
  %986 = fmul fast float %983, %983
  %987 = add i32 %65, 208
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = add i32 %989, 0
  %991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %990, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %992 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %991, %dx.types.Handle %87, float %428, float %429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %993 = extractvalue %dx.types.ResRet.f32 %992, 0
  %994 = extractvalue %dx.types.ResRet.f32 %992, 1
  %995 = extractvalue %dx.types.ResRet.f32 %992, 2
  %996 = fmul fast float %984, %993
  %997 = fmul fast float %985, %994
  %998 = fmul fast float %986, %995
  br label %999

; <label>:999                                     ; preds = %969, %961
  %1000 = phi float [ %996, %969 ], [ 0.000000e+00, %961 ]
  %1001 = phi float [ %997, %969 ], [ 0.000000e+00, %961 ]
  %1002 = phi float [ %998, %969 ], [ 0.000000e+00, %961 ]
  %1003 = fcmp fast ogt float %1000, 0.000000e+00
  %1004 = fcmp fast ogt float %1001, 0.000000e+00
  %1005 = fcmp fast ogt float %1002, 0.000000e+00
  %1006 = call float @dx.op.unary.f32(i32 23, float %1000)  ; Log(value)
  %1007 = call float @dx.op.unary.f32(i32 23, float %1001)  ; Log(value)
  %1008 = call float @dx.op.unary.f32(i32 23, float %1002)  ; Log(value)
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = lshr i32 %1010, 7
  %1012 = and i32 %1011, 32752
  %1013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1012)  ; LegacyF16ToF32(value)
  %1014 = fmul fast float %1006, 0xBFE62E4300000000
  %1015 = fmul fast float %1014, %1013
  %1016 = fmul fast float %1007, 0xBFE62E4300000000
  %1017 = fmul fast float %1016, %1013
  %1018 = fmul fast float %1008, 0xBFE62E4300000000
  %1019 = fmul fast float %1018, %1013
  %1020 = select i1 %1003, float %1015, float 1.270000e+02
  %1021 = select i1 %1004, float %1017, float 1.270000e+02
  %1022 = select i1 %1005, float %1019, float 1.270000e+02
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = and i32 %1024, 10240
  %1026 = icmp eq i32 %1025, 0
  br i1 %1026, label %1071, label %1027

; <label>:1027                                    ; preds = %999
  %1028 = add i32 %65, 212
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = add i32 %1030, 0
  %1032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1031, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1033 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1032, %dx.types.Handle %87, float %428, float %429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 1
  %1035 = extractvalue %dx.types.ResRet.f32 %1033, 3
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = and i32 %1037, 1048576
  %1039 = icmp ne i32 %1038, 0
  %1040 = and i32 %1037, 8192
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1057, label %1042

; <label>:1042                                    ; preds = %1027
  %1043 = extractvalue %dx.types.ResRet.f32 %1033, 2
  %1044 = select i1 %1039, float %1043, float %1034
  %1045 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1046 = select i1 %1039, float %1045, float %1034
  %1047 = add i32 %65, 48
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = lshr i32 %1049, 16
  %1051 = and i32 %1050, 255
  %1052 = uitofp i32 %1051 to float
  %1053 = fmul fast float %1052, 0x3F80101020000000
  %1054 = fmul fast float %1053, %1046
  %1055 = fmul fast float %1053, %1034
  %1056 = fmul fast float %1053, %1044
  br label %1057

; <label>:1057                                    ; preds = %1042, %1027
  %1058 = phi float [ %1054, %1042 ], [ 0.000000e+00, %1027 ]
  %1059 = phi float [ %1055, %1042 ], [ 0.000000e+00, %1027 ]
  %1060 = phi float [ %1056, %1042 ], [ 0.000000e+00, %1027 ]
  %1061 = and i32 %1037, 2048
  %1062 = icmp eq i32 %1061, 0
  br i1 %1062, label %1071, label %1063

; <label>:1063                                    ; preds = %1057
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = shl i32 %1065, 4
  %1067 = and i32 %1066, 32752
  %1068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1067)  ; LegacyF16ToF32(value)
  %1069 = fmul fast float %1068, %1035
  %1070 = call float @dx.op.binary.f32(i32 35, float %1069, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1071

; <label>:1071                                    ; preds = %1063, %1057, %999
  %1072 = phi float [ %1058, %1063 ], [ %1058, %1057 ], [ 0.000000e+00, %999 ]
  %1073 = phi float [ %1059, %1063 ], [ %1059, %1057 ], [ 0.000000e+00, %999 ]
  %1074 = phi float [ %1060, %1063 ], [ %1060, %1057 ], [ 0.000000e+00, %999 ]
  %1075 = phi float [ %1070, %1063 ], [ 0x3F70101020000000, %1057 ], [ 0x3F70101020000000, %999 ]
  %1076 = add i32 %65, 48
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = and i32 %1078, 255
  %1080 = uitofp i32 %1079 to float
  %1081 = lshr i32 %1078, 8
  %1082 = and i32 %1081, 255
  %1083 = uitofp i32 %1082 to float
  %1084 = call float @dx.op.dot3.f32(i32 55, float %834, float %835, float %836, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1085 = fmul fast float %1083, %1084
  %1086 = fadd fast float %1085, %1080
  %1087 = fmul fast float %1086, 0x3F70101020000000
  %1088 = call float @dx.op.unary.f32(i32 7, float %1087)  ; Saturate(value)
  br label %1089

; <label>:1089                                    ; preds = %1071, %327
  %1090 = phi float [ 0.000000e+00, %327 ], [ %915, %1071 ]
  %1091 = phi float [ 0.000000e+00, %327 ], [ %916, %1071 ]
  %1092 = phi float [ 0.000000e+00, %327 ], [ %834, %1071 ]
  %1093 = phi float [ 0.000000e+00, %327 ], [ %835, %1071 ]
  %1094 = phi float [ 0.000000e+00, %327 ], [ %836, %1071 ]
  %1095 = phi float [ 0.000000e+00, %327 ], [ %962, %1071 ]
  %1096 = phi float [ 0.000000e+00, %327 ], [ %963, %1071 ]
  %1097 = phi float [ 0.000000e+00, %327 ], [ %964, %1071 ]
  %1098 = phi float [ 0.000000e+00, %327 ], [ %1072, %1071 ]
  %1099 = phi float [ 0.000000e+00, %327 ], [ %1073, %1071 ]
  %1100 = phi float [ 0.000000e+00, %327 ], [ %1074, %1071 ]
  %1101 = phi float [ 0.000000e+00, %327 ], [ %1020, %1071 ]
  %1102 = phi float [ 0.000000e+00, %327 ], [ %1021, %1071 ]
  %1103 = phi float [ 0.000000e+00, %327 ], [ %1022, %1071 ]
  %1104 = phi float [ 0.000000e+00, %327 ], [ %820, %1071 ]
  %1105 = phi float [ 0.000000e+00, %327 ], [ %616, %1071 ]
  %1106 = phi float [ 0.000000e+00, %327 ], [ %914, %1071 ]
  %1107 = phi float [ 0.000000e+00, %327 ], [ %917, %1071 ]
  %1108 = phi float [ 0.000000e+00, %327 ], [ %1075, %1071 ]
  %1109 = phi float [ 0.000000e+00, %327 ], [ %1088, %1071 ]
  %1110 = add i32 %65, 168
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = bitcast i32 %1112 to float
  %1114 = fcmp fast oge float %1113, 0.000000e+00
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 0
  %1117 = select i1 %1114, float %1113, float %1116
  %1118 = call float @dx.op.dot2.f32(i32 54, float %1090, float %1091, float %1090, float %1091)  ; Dot2(ax,ay,bx,by)
  %1119 = fmul fast float %1118, 0x3FE3333340000000
  %1120 = fsub fast float 1.000000e+00, %1119
  %1121 = call float @dx.op.dot3.f32(i32 55, float %1090, float %1091, float %1120, float %1090, float %1091, float %1120)  ; Dot3(ax,ay,az,bx,by,bz)
  %1122 = call float @dx.op.unary.f32(i32 25, float %1121)  ; Rsqrt(value)
  %1123 = fmul fast float %1122, %1090
  %1124 = fmul fast float %1122, %1091
  %1125 = fmul fast float %1120, %1122
  %1126 = fmul fast float %1125, %70
  %1127 = fmul fast float %1125, %71
  %1128 = fmul fast float %1125, %72
  %1129 = fmul fast float %1123, %66
  %1130 = fmul fast float %1123, %67
  %1131 = fmul fast float %1123, %68
  %1132 = fadd fast float %1126, %1129
  %1133 = fadd fast float %1127, %1130
  %1134 = fadd fast float %1128, %1131
  %1135 = fmul fast float %1124, %101
  %1136 = fmul fast float %1124, %102
  %1137 = fmul fast float %1124, %103
  %1138 = fadd fast float %1132, %1135
  %1139 = fadd fast float %1133, %1136
  %1140 = fadd fast float %1134, %1137
  %1141 = call float @dx.op.dot3.f32(i32 55, float %1138, float %1139, float %1140, float %1138, float %1139, float %1140)  ; Dot3(ax,ay,az,bx,by,bz)
  %1142 = call float @dx.op.unary.f32(i32 25, float %1141)  ; Rsqrt(value)
  %1143 = fmul fast float %1138, %1142
  %1144 = fmul fast float %1139, %1142
  %1145 = fmul fast float %1140, %1142
  %1146 = call float @dx.op.unary.f32(i32 83, float %137)  ; DerivCoarseX(value)
  %1147 = call float @dx.op.unary.f32(i32 83, float %138)  ; DerivCoarseX(value)
  %1148 = call float @dx.op.unary.f32(i32 83, float %139)  ; DerivCoarseX(value)
  %1149 = call float @dx.op.unary.f32(i32 84, float %137)  ; DerivCoarseY(value)
  %1150 = call float @dx.op.unary.f32(i32 84, float %138)  ; DerivCoarseY(value)
  %1151 = call float @dx.op.unary.f32(i32 84, float %139)  ; DerivCoarseY(value)
  %1152 = fadd fast float %1146, %137
  %1153 = fadd fast float %1147, %138
  %1154 = fadd fast float %1148, %139
  %1155 = fadd fast float %1149, %137
  %1156 = fadd fast float %1150, %138
  %1157 = fadd fast float %1151, %139
  %1158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1159 = extractvalue %dx.types.CBufRet.f32 %1158, 0
  %1160 = extractvalue %dx.types.CBufRet.f32 %1158, 1
  %1161 = extractvalue %dx.types.CBufRet.f32 %1158, 2
  %1162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1163 = extractvalue %dx.types.CBufRet.f32 %1162, 2
  %1164 = extractvalue %dx.types.CBufRet.f32 %1162, 3
  %1165 = fmul fast float %1159, %90
  %1166 = fmul fast float %1165, %1163
  %1167 = fmul fast float %1160, %91
  %1168 = fmul fast float %1167, %1164
  %1169 = fptoui float %1166 to i32
  %1170 = fptoui float %1168 to i32
  %1171 = fadd fast float %1159, -1.000000e+00
  %1172 = fadd fast float %1160, -1.000000e+00
  %1173 = fptoui float %1171 to i32
  %1174 = fptoui float %1172 to i32
  %1175 = call i32 @dx.op.binary.i32(i32 40, i32 %1169, i32 %1173)  ; UMin(a,b)
  %1176 = call i32 @dx.op.binary.i32(i32 40, i32 %1170, i32 %1174)  ; UMin(a,b)
  %1177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1178 = extractvalue %dx.types.CBufRet.f32 %1177, 2
  %1179 = extractvalue %dx.types.CBufRet.f32 %1177, 3
  %1180 = fmul fast float %1178, %81
  %1181 = fsub fast float %1180, %1179
  %1182 = fadd fast float %1161, -1.000000e+00
  %1183 = call float @dx.op.binary.f32(i32 36, float %1181, float %1182)  ; FMin(a,b)
  %1184 = fptoui float %1183 to i32
  %1185 = fptoui float %1159 to i32
  %1186 = fptoui float %1160 to i32
  %1187 = mul i32 %1184, %1186
  %1188 = add i32 %1187, %1176
  %1189 = mul i32 %1188, %1185
  %1190 = add i32 %1189, %1175
  %1191 = shl i32 %1190, 2
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = and i32 %1193, 1023
  %1195 = lshr i32 %1193, 10
  %1196 = icmp eq i32 %1194, 0
  br i1 %1196, label %1700, label %1197

; <label>:1197                                    ; preds = %1089
  %1198 = and i32 %1193, 1023
  br label %1199

; <label>:1199                                    ; preds = %1331, %1197
  %1200 = phi float [ %1332, %1331 ], [ 0.000000e+00, %1197 ]
  %1201 = phi float [ %1333, %1331 ], [ %1117, %1197 ]
  %1202 = phi float [ %1334, %1331 ], [ %1109, %1197 ]
  %1203 = phi float [ %1335, %1331 ], [ %1101, %1197 ]
  %1204 = phi float [ %1336, %1331 ], [ %1102, %1197 ]
  %1205 = phi float [ %1337, %1331 ], [ %1103, %1197 ]
  %1206 = phi float [ %1338, %1331 ], [ 0.000000e+00, %1197 ]
  %1207 = phi float [ %1339, %1331 ], [ 0.000000e+00, %1197 ]
  %1208 = phi float [ %1340, %1331 ], [ %1098, %1197 ]
  %1209 = phi float [ %1341, %1331 ], [ %1099, %1197 ]
  %1210 = phi float [ %1342, %1331 ], [ %1100, %1197 ]
  %1211 = phi float [ %1343, %1331 ], [ %1095, %1197 ]
  %1212 = phi float [ %1344, %1331 ], [ %1096, %1197 ]
  %1213 = phi float [ %1345, %1331 ], [ %1097, %1197 ]
  %1214 = phi float [ %1346, %1331 ], [ %1143, %1197 ]
  %1215 = phi float [ %1347, %1331 ], [ %1144, %1197 ]
  %1216 = phi float [ %1348, %1331 ], [ %1145, %1197 ]
  %1217 = phi float [ %1349, %1331 ], [ %1107, %1197 ]
  %1218 = phi float [ %1350, %1331 ], [ %1106, %1197 ]
  %1219 = phi float [ %1351, %1331 ], [ 0.000000e+00, %1197 ]
  %1220 = phi float [ %1352, %1331 ], [ %1104, %1197 ]
  %1221 = phi float [ %1353, %1331 ], [ %1092, %1197 ]
  %1222 = phi float [ %1354, %1331 ], [ %1093, %1197 ]
  %1223 = phi float [ %1355, %1331 ], [ %1094, %1197 ]
  %1224 = phi i32 [ %1281, %1331 ], [ 0, %1197 ]
  %1225 = add nuw nsw i32 %1224, %1195
  %1226 = shl i32 %1225, 2
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = shl i32 %1228, 8
  %1230 = or i32 %1229, 48
  %1231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.f32 %1231, 0
  %1233 = extractvalue %dx.types.ResRet.f32 %1231, 1
  %1234 = extractvalue %dx.types.ResRet.f32 %1231, 2
  %1235 = extractvalue %dx.types.ResRet.f32 %1231, 3
  %1236 = or i32 %1229, 64
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = extractvalue %dx.types.ResRet.i32 %1237, 1
  %1240 = or i32 %1229, 80
  %1241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 2
  %1243 = extractvalue %dx.types.ResRet.f32 %1241, 3
  %1244 = or i32 %1229, 96
  %1245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.f32 %1245, 0
  %1247 = extractvalue %dx.types.ResRet.f32 %1245, 1
  %1248 = extractvalue %dx.types.ResRet.f32 %1245, 2
  %1249 = extractvalue %dx.types.ResRet.f32 %1245, 3
  %1250 = or i32 %1229, 112
  %1251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 2
  %1253 = or i32 %1229, 128
  %1254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = extractvalue %dx.types.ResRet.f32 %1254, 1
  %1257 = extractvalue %dx.types.ResRet.f32 %1254, 2
  %1258 = extractvalue %dx.types.ResRet.f32 %1254, 3
  %1259 = or i32 %1229, 144
  %1260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.f32 %1260, 0
  %1262 = extractvalue %dx.types.ResRet.f32 %1260, 1
  %1263 = extractvalue %dx.types.ResRet.f32 %1260, 2
  %1264 = extractvalue %dx.types.ResRet.f32 %1260, 3
  %1265 = or i32 %1229, 160
  %1266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = extractvalue %dx.types.ResRet.f32 %1266, 1
  %1269 = extractvalue %dx.types.ResRet.f32 %1266, 2
  %1270 = extractvalue %dx.types.ResRet.f32 %1266, 3
  %1271 = or i32 %1229, 192
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = or i32 %1229, 208
  %1275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.f32 %1275, 0
  %1277 = or i32 %1229, 248
  %1278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.f32 %1278, 0
  %1280 = extractvalue %dx.types.ResRet.f32 %1278, 1
  %1281 = add nuw nsw i32 %1224, 1
  %1282 = bitcast float %1235 to i32
  %1283 = and i32 %1282, 2560
  %1284 = icmp eq i32 %1283, 0
  %1285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.f32 %1285, 0
  %1287 = extractvalue %dx.types.ResRet.f32 %1285, 1
  %1288 = extractvalue %dx.types.ResRet.f32 %1285, 2
  %1289 = extractvalue %dx.types.ResRet.f32 %1285, 3
  %1290 = call float @dx.op.dot4.f32(i32 56, float %1286, float %1287, float %1288, float %1289, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1291 = or i32 %1229, 16
  %1292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.f32 %1292, 0
  %1294 = extractvalue %dx.types.ResRet.f32 %1292, 1
  %1295 = extractvalue %dx.types.ResRet.f32 %1292, 2
  %1296 = extractvalue %dx.types.ResRet.f32 %1292, 3
  %1297 = call float @dx.op.dot4.f32(i32 56, float %1293, float %1294, float %1295, float %1296, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1298 = or i32 %1229, 32
  %1299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.ResRet.f32 %1299, 1
  %1302 = extractvalue %dx.types.ResRet.f32 %1299, 2
  %1303 = extractvalue %dx.types.ResRet.f32 %1299, 3
  %1304 = call float @dx.op.dot4.f32(i32 56, float %1300, float %1301, float %1302, float %1303, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1305 = call float @dx.op.unary.f32(i32 27, float %1290)  ; Round_ni(value)
  %1306 = call float @dx.op.unary.f32(i32 6, float %1305)  ; FAbs(value)
  %1307 = call float @dx.op.unary.f32(i32 27, float %1297)  ; Round_ni(value)
  %1308 = call float @dx.op.unary.f32(i32 6, float %1307)  ; FAbs(value)
  %1309 = call float @dx.op.unary.f32(i32 6, float %1304)  ; FAbs(value)
  %1310 = call float @dx.op.unary.f32(i32 27, float %1309)  ; Round_ni(value)
  %1311 = fadd fast float %1308, %1306
  %1312 = fadd fast float %1311, %1310
  %1313 = fcmp fast oeq float %1312, 0.000000e+00
  %1314 = call float @dx.op.dot4.f32(i32 56, float %1286, float %1287, float %1288, float %1289, float %1152, float %1153, float %1154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1315 = call float @dx.op.dot4.f32(i32 56, float %1293, float %1294, float %1295, float %1296, float %1152, float %1153, float %1154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1316 = call float @dx.op.dot4.f32(i32 56, float %1286, float %1287, float %1288, float %1289, float %1155, float %1156, float %1157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1317 = call float @dx.op.dot4.f32(i32 56, float %1293, float %1294, float %1295, float %1296, float %1155, float %1156, float %1157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1318 = fsub fast float %1314, %1290
  %1319 = fsub fast float %1316, %1290
  %1320 = fsub fast float %1315, %1297
  %1321 = fsub fast float %1317, %1297
  %1322 = call float @dx.op.dot3.f32(i32 55, float %1232, float %1233, float %1234, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.f32 %1323, 2
  %1325 = fadd fast float %1324, %1322
  %1326 = call float @dx.op.unary.f32(i32 7, float %1325)  ; Saturate(value)
  %1327 = extractvalue %dx.types.CBufRet.f32 %1323, 0
  %1328 = fcmp fast ogt float %1326, %1327
  %1329 = and i1 %1313, %1328
  %1330 = and i1 %1284, %1329
  br i1 %1330, label %1357, label %1331

; <label>:1331                                    ; preds = %1686, %1438, %1357, %1199
  %1332 = phi float [ %1200, %1357 ], [ %1441, %1438 ], [ %1441, %1686 ], [ %1200, %1199 ]
  %1333 = phi float [ %1201, %1357 ], [ %1201, %1438 ], [ %1662, %1686 ], [ %1201, %1199 ]
  %1334 = phi float [ %1202, %1357 ], [ %1202, %1438 ], [ %1660, %1686 ], [ %1202, %1199 ]
  %1335 = phi float [ %1203, %1357 ], [ %1203, %1438 ], [ %1638, %1686 ], [ %1203, %1199 ]
  %1336 = phi float [ %1204, %1357 ], [ %1204, %1438 ], [ %1639, %1686 ], [ %1204, %1199 ]
  %1337 = phi float [ %1205, %1357 ], [ %1205, %1438 ], [ %1640, %1686 ], [ %1205, %1199 ]
  %1338 = phi float [ %1206, %1357 ], [ %1206, %1438 ], [ %1565, %1686 ], [ %1206, %1199 ]
  %1339 = phi float [ %1207, %1357 ], [ %1207, %1438 ], [ %1563, %1686 ], [ %1207, %1199 ]
  %1340 = phi float [ %1208, %1357 ], [ %1208, %1438 ], [ %1608, %1686 ], [ %1208, %1199 ]
  %1341 = phi float [ %1209, %1357 ], [ %1209, %1438 ], [ %1609, %1686 ], [ %1209, %1199 ]
  %1342 = phi float [ %1210, %1357 ], [ %1210, %1438 ], [ %1610, %1686 ], [ %1210, %1199 ]
  %1343 = phi float [ %1211, %1357 ], [ %1211, %1438 ], [ %1696, %1686 ], [ %1211, %1199 ]
  %1344 = phi float [ %1212, %1357 ], [ %1212, %1438 ], [ %1697, %1686 ], [ %1212, %1199 ]
  %1345 = phi float [ %1213, %1357 ], [ %1213, %1438 ], [ %1698, %1686 ], [ %1213, %1199 ]
  %1346 = phi float [ %1214, %1357 ], [ %1214, %1438 ], [ %1544, %1686 ], [ %1214, %1199 ]
  %1347 = phi float [ %1215, %1357 ], [ %1215, %1438 ], [ %1545, %1686 ], [ %1215, %1199 ]
  %1348 = phi float [ %1216, %1357 ], [ %1216, %1438 ], [ %1546, %1686 ], [ %1216, %1199 ]
  %1349 = phi float [ %1217, %1357 ], [ %1217, %1438 ], [ %1618, %1686 ], [ %1217, %1199 ]
  %1350 = phi float [ %1218, %1357 ], [ %1218, %1438 ], [ %1615, %1686 ], [ %1218, %1199 ]
  %1351 = phi float [ %1219, %1357 ], [ %1219, %1438 ], [ %1612, %1686 ], [ %1219, %1199 ]
  %1352 = phi float [ %1220, %1357 ], [ %1220, %1438 ], [ %1561, %1686 ], [ %1220, %1199 ]
  %1353 = phi float [ %1221, %1357 ], [ %1221, %1438 ], [ %1556, %1686 ], [ %1221, %1199 ]
  %1354 = phi float [ %1222, %1357 ], [ %1222, %1438 ], [ %1557, %1686 ], [ %1222, %1199 ]
  %1355 = phi float [ %1223, %1357 ], [ %1223, %1438 ], [ %1558, %1686 ], [ %1223, %1199 ]
  %1356 = icmp eq i32 %1281, %1198
  br i1 %1356, label %1699, label %1199

; <label>:1357                                    ; preds = %1199
  %1358 = extractvalue %dx.types.ResRet.f32 %1251, 3
  %1359 = extractvalue %dx.types.ResRet.f32 %1251, 1
  %1360 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1361 = extractvalue %dx.types.ResRet.f32 %1241, 1
  %1362 = extractvalue %dx.types.ResRet.f32 %1241, 0
  %1363 = extractvalue %dx.types.ResRet.i32 %1237, 3
  %1364 = extractvalue %dx.types.ResRet.i32 %1237, 2
  %1365 = add i32 %1363, 0
  %1366 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1365, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1368 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1366, %dx.types.Handle %1367, float %1290, float %1297, float undef, float undef, i32 0, i32 0, i32 undef, float %1318, float %1320, float undef, float %1319, float %1321, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = fmul fast float %1369, %1362
  %1371 = fadd fast float %1370, %1361
  %1372 = call float @dx.op.unary.f32(i32 7, float %1371)  ; Saturate(value)
  %1373 = fmul fast float %1290, %1246
  %1374 = call float @dx.op.tertiary.f32(i32 46, float %1247, float %1297, float %1373)  ; FMad(a,b,c)
  %1375 = fadd fast float %1374, %1360
  %1376 = fmul fast float %1290, %1248
  %1377 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %1297, float %1376)  ; FMad(a,b,c)
  %1378 = fadd fast float %1377, %1359
  %1379 = fmul fast float %1318, %1246
  %1380 = call float @dx.op.tertiary.f32(i32 46, float %1247, float %1320, float %1379)  ; FMad(a,b,c)
  %1381 = fmul fast float %1318, %1248
  %1382 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %1320, float %1381)  ; FMad(a,b,c)
  %1383 = fmul fast float %1319, %1246
  %1384 = call float @dx.op.tertiary.f32(i32 46, float %1247, float %1321, float %1383)  ; FMad(a,b,c)
  %1385 = fmul fast float %1319, %1248
  %1386 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %1321, float %1385)  ; FMad(a,b,c)
  %1387 = add i32 %1364, 0
  %1388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1387, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1389 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1388, %dx.types.Handle %1367, float %1375, float %1378, float undef, float undef, i32 0, i32 0, i32 undef, float %1380, float %1382, float undef, float %1384, float %1386, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1390 = extractvalue %dx.types.ResRet.f32 %1389, 0
  %1391 = and i32 %1282, 1024
  %1392 = icmp ne i32 %1391, 0
  %1393 = fcmp fast ogt float %1390, 0x3FE0101020000000
  %1394 = uitofp i1 %1393 to float
  %1395 = select i1 %1392, float %1394, float %1390
  %1396 = and i32 %1282, 8192
  %1397 = icmp ne i32 %1396, 0
  %1398 = select i1 %1397, float %1358, float 1.000000e+00
  %1399 = fmul fast float %1290, 2.000000e+00
  %1400 = fadd fast float %1399, -1.000000e+00
  %1401 = call float @dx.op.unary.f32(i32 6, float %1400)  ; FAbs(value)
  %1402 = fmul fast float %1401, %1279
  %1403 = fsub fast float %1402, %1279
  %1404 = call float @dx.op.unary.f32(i32 7, float %1403)  ; Saturate(value)
  %1405 = fmul fast float %1297, 2.000000e+00
  %1406 = fadd fast float %1405, -1.000000e+00
  %1407 = call float @dx.op.unary.f32(i32 6, float %1406)  ; FAbs(value)
  %1408 = fmul fast float %1407, %1280
  %1409 = fsub fast float %1408, %1280
  %1410 = call float @dx.op.unary.f32(i32 7, float %1409)  ; Saturate(value)
  %1411 = fmul fast float %1309, %1242
  %1412 = fsub fast float %1411, %1242
  %1413 = call float @dx.op.unary.f32(i32 7, float %1412)  ; Saturate(value)
  %1414 = fmul fast float %1372, %1398
  %1415 = fmul fast float %1414, %1369
  %1416 = fmul fast float %1415, %1404
  %1417 = fmul fast float %1416, %1395
  %1418 = fmul fast float %1417, %1410
  %1419 = fmul fast float %1418, %1413
  %1420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1421 = extractvalue %dx.types.CBufRet.f32 %1420, 1
  %1422 = extractvalue %dx.types.CBufRet.f32 %1420, 0
  %1423 = fsub fast float %1326, %1422
  %1424 = fmul fast float %1423, %1421
  %1425 = call float @dx.op.unary.f32(i32 7, float %1424)  ; Saturate(value)
  %1426 = fmul fast float %1419, %1243
  %1427 = fadd fast float %1419, %1243
  %1428 = fmul fast float %1427, %1252
  %1429 = fsub fast float %1428, %1252
  %1430 = call float @dx.op.unary.f32(i32 7, float %1429)  ; Saturate(value)
  %1431 = and i32 %1282, 128
  %1432 = icmp ne i32 %1431, 0
  %1433 = select i1 %1432, float %1430, float %1426
  %1434 = fmul fast float %1433, %1425
  %1435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1436 = extractvalue %dx.types.CBufRet.f32 %1435, 0
  %1437 = fcmp fast ugt float %1434, %1436
  br i1 %1437, label %1438, label %1331

; <label>:1438                                    ; preds = %1357
  %1439 = select i1 %1397, float %1434, float 0.000000e+00
  %1440 = fadd fast float %1439, %1200
  %1441 = call float @dx.op.unary.f32(i32 7, float %1440)  ; Saturate(value)
  br i1 %1397, label %1331, label %1442

; <label>:1442                                    ; preds = %1438
  %1443 = and i32 %1282, 4
  %1444 = and i32 %1282, 8
  %1445 = add i32 %1238, 0
  %1446 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1445, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1448 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1446, %dx.types.Handle %1447, float %1375, float %1378, float undef, float undef, i32 0, i32 0, i32 undef, float %1380, float %1382, float undef, float %1384, float %1386, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1449 = extractvalue %dx.types.ResRet.f32 %1448, 0
  %1450 = extractvalue %dx.types.ResRet.f32 %1448, 1
  %1451 = extractvalue %dx.types.ResRet.f32 %1448, 2
  %1452 = extractvalue %dx.types.ResRet.f32 %1448, 3
  %1453 = bitcast float %1264 to i32
  %1454 = and i32 %1453, 255
  %1455 = uitofp i32 %1454 to float
  %1456 = lshr i32 %1453, 8
  %1457 = and i32 %1456, 255
  %1458 = uitofp i32 %1457 to float
  %1459 = fmul fast float %1452, %1455
  %1460 = fadd fast float %1459, %1458
  %1461 = fmul fast float %1460, 0x3F70101000000000
  %1462 = add i32 %1239, 0
  %1463 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1462, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1464 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1463, %dx.types.Handle %1447, float %1375, float %1378, float undef, float undef, i32 0, i32 0, i32 undef, float %1380, float %1382, float undef, float %1384, float %1386, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1465 = extractvalue %dx.types.ResRet.f32 %1464, 0
  %1466 = extractvalue %dx.types.ResRet.f32 %1464, 1
  %1467 = extractvalue %dx.types.ResRet.f32 %1464, 2
  %1468 = extractvalue %dx.types.ResRet.f32 %1464, 3
  %1469 = bitcast float %1258 to i32
  %1470 = and i32 %1469, 255
  %1471 = uitofp i32 %1470 to float
  %1472 = lshr i32 %1469, 8
  %1473 = and i32 %1472, 255
  %1474 = uitofp i32 %1473 to float
  %1475 = lshr i32 %1469, 16
  %1476 = and i32 %1475, 255
  %1477 = uitofp i32 %1476 to float
  %1478 = fmul fast float %1477, 0x3F70101000000000
  %1479 = fmul fast float %1465, %1471
  %1480 = fadd fast float %1479, %1474
  %1481 = fmul fast float %1480, 0x3F70101000000000
  %1482 = fadd fast float %1466, -5.000000e-01
  %1483 = fadd fast float %1468, -5.000000e-01
  %1484 = fmul fast float %1482, %1478
  %1485 = fmul fast float %1483, %1478
  %1486 = fadd fast float %1484, 5.000000e-01
  %1487 = fadd fast float %1485, 5.000000e-01
  %1488 = fmul fast float %1449, %1267
  %1489 = fmul fast float %1450, %1268
  %1490 = fmul fast float %1451, %1269
  %1491 = fmul fast float %1486, 2.000000e+00
  %1492 = fadd fast float %1491, -1.000000e+00
  %1493 = fmul fast float %1487, 2.000000e+00
  %1494 = fadd fast float %1493, -1.000000e+00
  %1495 = fadd fast float %1492, %1494
  %1496 = fmul fast float %1495, 5.000000e-01
  %1497 = fsub fast float %1492, %1494
  %1498 = fmul fast float %1497, 5.000000e-01
  %1499 = call float @dx.op.unary.f32(i32 6, float %1496)  ; FAbs(value)
  %1500 = fsub fast float 1.000000e+00, %1499
  %1501 = call float @dx.op.unary.f32(i32 6, float %1498)  ; FAbs(value)
  %1502 = fsub fast float %1500, %1501
  %1503 = call float @dx.op.dot3.f32(i32 55, float %1496, float %1498, float %1502, float %1496, float %1498, float %1502)  ; Dot3(ax,ay,az,bx,by,bz)
  %1504 = call float @dx.op.unary.f32(i32 25, float %1503)  ; Rsqrt(value)
  %1505 = fmul fast float %1496, %1504
  %1506 = fmul fast float %1498, %1504
  %1507 = fmul fast float %1504, %1502
  %1508 = fmul fast float %1507, %1232
  %1509 = fmul fast float %1507, %1233
  %1510 = fmul fast float %1507, %1234
  %1511 = fmul fast float %1505, %1255
  %1512 = fmul fast float %1505, %1256
  %1513 = fmul fast float %1505, %1257
  %1514 = fadd fast float %1511, %1508
  %1515 = fadd fast float %1512, %1509
  %1516 = fadd fast float %1513, %1510
  %1517 = fmul fast float %1506, %1261
  %1518 = fmul fast float %1506, %1262
  %1519 = fmul fast float %1506, %1263
  %1520 = fadd fast float %1514, %1517
  %1521 = fadd fast float %1515, %1518
  %1522 = fadd fast float %1516, %1519
  %1523 = call float @dx.op.dot3.f32(i32 55, float %1520, float %1521, float %1522, float %1520, float %1521, float %1522)  ; Dot3(ax,ay,az,bx,by,bz)
  %1524 = call float @dx.op.unary.f32(i32 25, float %1523)  ; Rsqrt(value)
  %1525 = fmul fast float %1520, %1524
  %1526 = fmul fast float %1521, %1524
  %1527 = fmul fast float %1522, %1524
  %1528 = icmp ne i32 %1444, 0
  %1529 = select i1 %1528, float 1.000000e+00, float 0.000000e+00
  %1530 = fmul fast float %1434, %1529
  %1531 = and i32 %1282, 1
  %1532 = icmp eq i32 %1531, 0
  br i1 %1532, label %1533, label %1537

; <label>:1533                                    ; preds = %1442
  %1534 = fsub fast float %1525, %1214
  %1535 = fsub fast float %1526, %1215
  %1536 = fsub fast float %1527, %1216
  br label %1537

; <label>:1537                                    ; preds = %1533, %1442
  %1538 = phi float [ %1534, %1533 ], [ %1525, %1442 ]
  %1539 = phi float [ %1535, %1533 ], [ %1526, %1442 ]
  %1540 = phi float [ %1536, %1533 ], [ %1527, %1442 ]
  %1541 = fmul float %1540, %1530
  %1542 = fmul float %1539, %1530
  %1543 = fmul float %1538, %1530
  %1544 = fadd fast float %1543, %1214
  %1545 = fadd fast float %1542, %1215
  %1546 = fadd fast float %1541, %1216
  %1547 = icmp ne i32 %1443, 0
  %1548 = select i1 %1547, float 1.000000e+00, float 0.000000e+00
  %1549 = fmul fast float %1434, %1548
  %1550 = fsub fast float %1488, %1221
  %1551 = fsub fast float %1489, %1222
  %1552 = fsub fast float %1490, %1223
  %1553 = fmul fast float %1550, %1549
  %1554 = fmul fast float %1551, %1549
  %1555 = fmul fast float %1552, %1549
  %1556 = fadd fast float %1553, %1221
  %1557 = fadd fast float %1554, %1222
  %1558 = fadd fast float %1555, %1223
  %1559 = fsub fast float %1461, %1220
  %1560 = fmul fast float %1559, %1549
  %1561 = fadd fast float %1560, %1220
  %1562 = fmul fast float %1549, %1207
  %1563 = fsub fast float %1207, %1562
  %1564 = fmul fast float %1549, %1206
  %1565 = fsub fast float %1206, %1564
  %1566 = bitcast float %1276 to i32
  %1567 = lshr i32 %1566, 16
  %1568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1567)  ; LegacyF16ToF32(value)
  %1569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.i32 %1569, 0
  %1571 = and i32 %1570, 1
  %1572 = icmp eq i32 %1571, 0
  br i1 %1572, label %1573, label %1598

; <label>:1573                                    ; preds = %1537
  %1574 = fadd fast float %1461, 0xBFB99999A0000000
  %1575 = call float @dx.op.unary.f32(i32 7, float %1574)  ; Saturate(value)
  %1576 = fmul fast float %1575, 0x3FF1C71C80000000
  %1577 = fsub fast float 1.000000e+00, %1576
  %1578 = call float @dx.op.unary.f32(i32 7, float %1577)  ; Saturate(value)
  %1579 = fmul fast float %1578, %1488
  %1580 = fmul fast float %1578, %1489
  %1581 = fmul fast float %1578, %1490
  %1582 = call float @dx.op.unary.f32(i32 7, float %1579)  ; Saturate(value)
  %1583 = call float @dx.op.unary.f32(i32 7, float %1580)  ; Saturate(value)
  %1584 = call float @dx.op.unary.f32(i32 7, float %1581)  ; Saturate(value)
  %1585 = call float @dx.op.binary.f32(i32 35, float %1583, float %1584)  ; FMax(a,b)
  %1586 = call float @dx.op.binary.f32(i32 35, float %1582, float %1585)  ; FMax(a,b)
  %1587 = fcmp fast ogt float %1586, 0.000000e+00
  %1588 = bitcast float %1586 to i32
  %1589 = sub nsw i32 2129859010, %1588
  %1590 = bitcast i32 %1589 to float
  %1591 = select i1 %1587, float %1590, float 0.000000e+00
  %1592 = fmul fast float %1582, %1568
  %1593 = fmul fast float %1583, %1568
  %1594 = fmul fast float %1584, %1568
  %1595 = fmul fast float %1592, %1591
  %1596 = fmul fast float %1593, %1591
  %1597 = fmul fast float %1594, %1591
  br label %1598

; <label>:1598                                    ; preds = %1573, %1537
  %1599 = phi float [ %1568, %1537 ], [ %1595, %1573 ]
  %1600 = phi float [ %1568, %1537 ], [ %1596, %1573 ]
  %1601 = phi float [ %1568, %1537 ], [ %1597, %1573 ]
  %1602 = fsub fast float %1599, %1208
  %1603 = fsub fast float %1600, %1209
  %1604 = fsub fast float %1601, %1210
  %1605 = fmul fast float %1602, %1549
  %1606 = fmul fast float %1603, %1549
  %1607 = fmul fast float %1604, %1549
  %1608 = fadd fast float %1605, %1208
  %1609 = fadd fast float %1606, %1209
  %1610 = fadd fast float %1607, %1210
  %1611 = fadd fast float %1434, %1219
  %1612 = call float @dx.op.unary.f32(i32 7, float %1611)  ; Saturate(value)
  %1613 = fsub fast float %1481, %1218
  %1614 = fmul fast float %1613, %1530
  %1615 = fadd fast float %1614, %1218
  %1616 = fsub fast float %1467, %1217
  %1617 = fmul fast float %1616, %1530
  %1618 = fadd fast float %1617, %1217
  br i1 %1532, label %1627, label %1619

; <label>:1619                                    ; preds = %1598
  %1620 = and i32 %1282, 32768
  %1621 = icmp eq i32 %1620, 0
  br i1 %1621, label %1637, label %1622

; <label>:1622                                    ; preds = %1619
  %1623 = fmul fast float %1530, 1.270000e+02
  %1624 = fadd fast float %1623, %1203
  %1625 = fadd fast float %1623, %1204
  %1626 = fadd fast float %1623, %1205
  br label %1637

; <label>:1627                                    ; preds = %1598
  %1628 = fsub fast float 1.270000e+02, %1203
  %1629 = fsub fast float 1.270000e+02, %1204
  %1630 = fsub fast float 1.270000e+02, %1205
  %1631 = fmul fast float %1530, %1628
  %1632 = fmul fast float %1530, %1629
  %1633 = fmul fast float %1530, %1630
  %1634 = fadd fast float %1631, %1203
  %1635 = fadd fast float %1632, %1204
  %1636 = fadd fast float %1633, %1205
  br label %1637

; <label>:1637                                    ; preds = %1627, %1622, %1619
  %1638 = phi float [ %1624, %1622 ], [ %1203, %1619 ], [ %1634, %1627 ]
  %1639 = phi float [ %1625, %1622 ], [ %1204, %1619 ], [ %1635, %1627 ]
  %1640 = phi float [ %1626, %1622 ], [ %1205, %1619 ], [ %1636, %1627 ]
  %1641 = call float @dx.op.dot3.f32(i32 55, float %1488, float %1489, float %1490, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1643 = extractvalue %dx.types.CBufRet.f32 %1642, 0
  %1644 = extractvalue %dx.types.CBufRet.f32 %1642, 1
  %1645 = fmul fast float %1644, %1641
  %1646 = fadd fast float %1645, %1643
  %1647 = call float @dx.op.unary.f32(i32 7, float %1646)  ; Saturate(value)
  %1648 = bitcast float %1270 to i32
  %1649 = and i32 %1648, 65535
  %1650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1649)  ; LegacyF16ToF32(value)
  %1651 = lshr i32 %1648, 16
  %1652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1651)  ; LegacyF16ToF32(value)
  %1653 = fcmp fast oge float %1650, 0.000000e+00
  %1654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1655 = extractvalue %dx.types.CBufRet.f32 %1654, 0
  %1656 = select i1 %1653, float %1650, float %1655
  %1657 = fadd fast float %1656, %1652
  %1658 = fsub fast float %1647, %1202
  %1659 = fmul fast float %1658, %1434
  %1660 = fadd fast float %1659, %1202
  %1661 = fmul fast float %1657, %1434
  %1662 = call float @dx.op.binary.f32(i32 35, float %1201, float %1661)  ; FMax(a,b)
  %1663 = and i32 %1282, 16
  %1664 = icmp eq i32 %1663, 0
  br i1 %1664, label %1686, label %1665

; <label>:1665                                    ; preds = %1637
  %1666 = add i32 %1273, 0
  %1667 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1666, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1668 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1667, %dx.types.Handle %1447, float %1375, float %1378, float undef, float undef, i32 0, i32 0, i32 undef, float %1380, float %1382, float undef, float %1384, float %1386, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1669 = extractvalue %dx.types.ResRet.f32 %1668, 0
  %1670 = extractvalue %dx.types.ResRet.f32 %1668, 1
  %1671 = extractvalue %dx.types.ResRet.f32 %1668, 2
  %1672 = and i32 %1566, 65535
  %1673 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1672)  ; LegacyF16ToF32(value)
  %1674 = fmul fast float %1669, %1267
  %1675 = fmul fast float %1670, %1268
  %1676 = fmul fast float %1671, %1269
  %1677 = and i32 %1282, 16384
  %1678 = icmp ne i32 %1677, 0
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 0
  %1681 = select i1 %1678, float %1680, float 1.000000e+00
  %1682 = fmul fast float %1681, %1673
  %1683 = fmul fast float %1674, %1682
  %1684 = fmul fast float %1675, %1682
  %1685 = fmul fast float %1676, %1682
  br label %1686

; <label>:1686                                    ; preds = %1665, %1637
  %1687 = phi float [ %1683, %1665 ], [ 0.000000e+00, %1637 ]
  %1688 = phi float [ %1684, %1665 ], [ 0.000000e+00, %1637 ]
  %1689 = phi float [ %1685, %1665 ], [ 0.000000e+00, %1637 ]
  %1690 = fsub fast float %1687, %1211
  %1691 = fsub fast float %1688, %1212
  %1692 = fsub fast float %1689, %1213
  %1693 = fmul fast float %1690, %1434
  %1694 = fmul fast float %1691, %1434
  %1695 = fmul fast float %1692, %1434
  %1696 = fadd fast float %1693, %1211
  %1697 = fadd fast float %1694, %1212
  %1698 = fadd fast float %1695, %1213
  br label %1331

; <label>:1699                                    ; preds = %1331
  br label %1700

; <label>:1700                                    ; preds = %1699, %1089
  %1701 = phi float [ 0.000000e+00, %1089 ], [ %1332, %1699 ]
  %1702 = phi float [ %1117, %1089 ], [ %1333, %1699 ]
  %1703 = phi float [ %1109, %1089 ], [ %1334, %1699 ]
  %1704 = phi float [ %1101, %1089 ], [ %1335, %1699 ]
  %1705 = phi float [ %1102, %1089 ], [ %1336, %1699 ]
  %1706 = phi float [ %1103, %1089 ], [ %1337, %1699 ]
  %1707 = phi float [ 0.000000e+00, %1089 ], [ %1338, %1699 ]
  %1708 = phi float [ 0.000000e+00, %1089 ], [ %1339, %1699 ]
  %1709 = phi float [ %1098, %1089 ], [ %1340, %1699 ]
  %1710 = phi float [ %1099, %1089 ], [ %1341, %1699 ]
  %1711 = phi float [ %1100, %1089 ], [ %1342, %1699 ]
  %1712 = phi float [ %1095, %1089 ], [ %1343, %1699 ]
  %1713 = phi float [ %1096, %1089 ], [ %1344, %1699 ]
  %1714 = phi float [ %1097, %1089 ], [ %1345, %1699 ]
  %1715 = phi float [ %1143, %1089 ], [ %1346, %1699 ]
  %1716 = phi float [ %1144, %1089 ], [ %1347, %1699 ]
  %1717 = phi float [ %1145, %1089 ], [ %1348, %1699 ]
  %1718 = phi float [ %1107, %1089 ], [ %1349, %1699 ]
  %1719 = phi float [ %1106, %1089 ], [ %1350, %1699 ]
  %1720 = phi float [ 0.000000e+00, %1089 ], [ %1351, %1699 ]
  %1721 = phi float [ %1104, %1089 ], [ %1352, %1699 ]
  %1722 = phi float [ %1092, %1089 ], [ %1353, %1699 ]
  %1723 = phi float [ %1093, %1089 ], [ %1354, %1699 ]
  %1724 = phi float [ %1094, %1089 ], [ %1355, %1699 ]
  %1725 = call float @dx.op.dot3.f32(i32 55, float %1715, float %1716, float %1717, float %1715, float %1716, float %1717)  ; Dot3(ax,ay,az,bx,by,bz)
  %1726 = call float @dx.op.unary.f32(i32 25, float %1725)  ; Rsqrt(value)
  %1727 = fmul fast float %1726, %1715
  %1728 = fmul fast float %1726, %1716
  %1729 = fmul fast float %1726, %1717
  %1730 = fadd fast float %1720, %1105
  %1731 = call float @dx.op.unary.f32(i32 7, float %1730)  ; Saturate(value)
  %1732 = call float @dx.op.dot3.f32(i32 55, float %1727, float %1728, float %1729, float %1727, float %1728, float %1729)  ; Dot3(ax,ay,az,bx,by,bz)
  %1733 = call float @dx.op.unary.f32(i32 25, float %1732)  ; Rsqrt(value)
  %1734 = fmul fast float %1733, %1727
  %1735 = fmul fast float %1733, %1728
  %1736 = fmul fast float %1733, %1729
  %1737 = add i32 %65, 152
  %1738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.i32 %1738, 0
  %1740 = extractvalue %dx.types.ResRet.i32 %1738, 1
  %1741 = extractvalue %dx.types.ResRet.i32 %1738, 2
  %1742 = extractvalue %dx.types.ResRet.i32 %1738, 3
  %1743 = bitcast i32 %1739 to float
  %1744 = bitcast i32 %1740 to float
  %1745 = bitcast i32 %1741 to float
  %1746 = bitcast i32 %1742 to float
  %1747 = fsub fast float %1722, %1743
  %1748 = fsub fast float %1723, %1744
  %1749 = fsub fast float %1724, %1745
  %1750 = fmul fast float %1747, %200
  %1751 = fmul fast float %1748, %200
  %1752 = fmul fast float %1749, %200
  %1753 = fadd fast float %1750, %1743
  %1754 = fadd fast float %1751, %1744
  %1755 = fadd fast float %1752, %1745
  %1756 = fsub fast float %1731, %1746
  %1757 = fmul fast float %1756, %200
  %1758 = fadd fast float %1757, %1746
  %1759 = fadd fast float %1721, 0xBFB99999A0000000
  %1760 = call float @dx.op.unary.f32(i32 7, float %1759)  ; Saturate(value)
  %1761 = fmul fast float %1760, 0x3FF1C71C80000000
  %1762 = call float @dx.op.binary.f32(i32 36, float %1721, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1763 = fsub fast float 1.000000e+00, %1761
  %1764 = call float @dx.op.unary.f32(i32 7, float %1763)  ; Saturate(value)
  %1765 = fmul fast float %1753, %1764
  %1766 = fmul fast float %1754, %1764
  %1767 = fmul fast float %1755, %1764
  %1768 = call float @dx.op.unary.f32(i32 7, float %1765)  ; Saturate(value)
  %1769 = call float @dx.op.unary.f32(i32 7, float %1766)  ; Saturate(value)
  %1770 = call float @dx.op.unary.f32(i32 7, float %1767)  ; Saturate(value)
  %1771 = fmul fast float %1753, %1761
  %1772 = fmul fast float %1754, %1761
  %1773 = fmul fast float %1755, %1761
  %1774 = fadd fast float %1771, %1762
  %1775 = fadd fast float %1772, %1762
  %1776 = fadd fast float %1773, %1762
  %1777 = call float @dx.op.unary.f32(i32 7, float %1774)  ; Saturate(value)
  %1778 = call float @dx.op.unary.f32(i32 7, float %1775)  ; Saturate(value)
  %1779 = call float @dx.op.unary.f32(i32 7, float %1776)  ; Saturate(value)
  %1780 = call float @dx.op.unary.f32(i32 7, float %1719)  ; Saturate(value)
  %1781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %1782 = extractvalue %dx.types.ResRet.i32 %1781, 0
  %1783 = and i32 %1782, 1
  %1784 = icmp eq i32 %1783, 0
  br i1 %1784, label %1799, label %1785

; <label>:1785                                    ; preds = %1700
  %1786 = call float @dx.op.binary.f32(i32 35, float %1769, float %1770)  ; FMax(a,b)
  %1787 = call float @dx.op.binary.f32(i32 35, float %1768, float %1786)  ; FMax(a,b)
  %1788 = fcmp fast ogt float %1787, 0.000000e+00
  %1789 = bitcast float %1787 to i32
  %1790 = sub nsw i32 2129859010, %1789
  %1791 = bitcast i32 %1790 to float
  %1792 = select i1 %1788, float %1791, float 0.000000e+00
  %1793 = fmul fast float %1768, %1709
  %1794 = fmul fast float %1769, %1710
  %1795 = fmul fast float %1770, %1711
  %1796 = fmul fast float %1793, %1792
  %1797 = fmul fast float %1794, %1792
  %1798 = fmul fast float %1795, %1792
  br label %1799

; <label>:1799                                    ; preds = %1785, %1700
  %1800 = phi float [ %1796, %1785 ], [ %1709, %1700 ]
  %1801 = phi float [ %1797, %1785 ], [ %1710, %1700 ]
  %1802 = phi float [ %1798, %1785 ], [ %1711, %1700 ]
  %1803 = call float @dx.op.binary.f32(i32 36, float %1704, float 1.270000e+02)  ; FMin(a,b)
  %1804 = call float @dx.op.binary.f32(i32 36, float %1705, float 1.270000e+02)  ; FMin(a,b)
  %1805 = call float @dx.op.binary.f32(i32 36, float %1706, float 1.270000e+02)  ; FMin(a,b)
  %1806 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1807 = extractvalue %dx.types.CBufRet.i32 %1806, 3
  %1808 = and i32 %1807, 8
  %1809 = icmp ne i32 %1808, 0
  %1810 = call float @dx.op.binary.f32(i32 35, float %1768, float %1753)  ; FMax(a,b)
  %1811 = call float @dx.op.binary.f32(i32 35, float %1769, float %1753)  ; FMax(a,b)
  %1812 = call float @dx.op.binary.f32(i32 35, float %1770, float %1753)  ; FMax(a,b)
  %1813 = call float @dx.op.dot3.f32(i32 55, float %1768, float %1769, float %1770, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1814 = select i1 %260, float %1753, float %1768
  %1815 = select i1 %260, float %1813, float %1769
  %1816 = select i1 %260, float 1.000000e+00, float %1770
  %1817 = select i1 %1809, float %1810, float %1814
  %1818 = select i1 %1809, float %1811, float %1815
  %1819 = select i1 %1809, float %1812, float %1816
  %1820 = call float @dx.op.dot3.f32(i32 55, float %1800, float %1801, float %1802, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1821 = select i1 %260, float %1820, float %1800
  %1822 = select i1 %260, float %1820, float %1801
  %1823 = select i1 %260, float %1820, float %1802
  %1824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1825 = extractvalue %dx.types.CBufRet.f32 %1824, 0
  %1826 = extractvalue %dx.types.CBufRet.f32 %1824, 1
  %1827 = extractvalue %dx.types.CBufRet.f32 %1824, 2
  %1828 = fadd fast float %1825, %137
  %1829 = fadd fast float %1826, %138
  %1830 = fadd fast float %1827, %139
  %1831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1832 = extractvalue %dx.types.CBufRet.f32 %1831, 0
  %1833 = extractvalue %dx.types.CBufRet.f32 %1831, 1
  %1834 = fsub fast float %1828, %1832
  %1835 = fsub fast float %1829, %1833
  %1836 = fmul fast float %1834, %1834
  %1837 = fmul fast float %1835, %1835
  %1838 = fadd fast float %1836, %1837
  %1839 = call float @dx.op.unary.f32(i32 24, float %1838)  ; Sqrt(value)
  %1840 = extractvalue %dx.types.CBufRet.f32 %1831, 2
  %1841 = fcmp fast olt float %1839, %1840
  br i1 %1841, label %1842, label %1909

; <label>:1842                                    ; preds = %1799
  %1843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.f32 %1843, 0
  %1845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1846 = extractvalue %dx.types.CBufRet.f32 %1845, 0
  %1847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.f32 %1847, 0
  %1849 = extractvalue %dx.types.CBufRet.f32 %1843, 1
  %1850 = extractvalue %dx.types.CBufRet.f32 %1845, 1
  %1851 = extractvalue %dx.types.CBufRet.f32 %1847, 1
  %1852 = extractvalue %dx.types.CBufRet.f32 %1843, 3
  %1853 = extractvalue %dx.types.CBufRet.f32 %1845, 3
  %1854 = extractvalue %dx.types.CBufRet.f32 %1847, 3
  %1855 = fadd fast float %1852, %1828
  %1856 = fadd fast float %1853, %1829
  %1857 = fadd fast float %1854, %1830
  %1858 = fmul fast float %1855, %1844
  %1859 = call float @dx.op.tertiary.f32(i32 46, float %1856, float %1846, float %1858)  ; FMad(a,b,c)
  %1860 = call float @dx.op.tertiary.f32(i32 46, float %1857, float %1848, float %1859)  ; FMad(a,b,c)
  %1861 = fmul fast float %1855, %1849
  %1862 = call float @dx.op.tertiary.f32(i32 46, float %1856, float %1850, float %1861)  ; FMad(a,b,c)
  %1863 = call float @dx.op.tertiary.f32(i32 46, float %1857, float %1851, float %1862)  ; FMad(a,b,c)
  %1864 = fsub fast float %1860, %1852
  %1865 = fsub fast float %1863, %1853
  %1866 = fsub fast float %1864, %1832
  %1867 = fadd fast float %1866, %1840
  %1868 = fsub fast float %1865, %1833
  %1869 = fadd fast float %1868, %1840
  %1870 = extractvalue %dx.types.CBufRet.f32 %1831, 3
  %1871 = fmul fast float %1867, %1870
  %1872 = fmul fast float %1869, %1870
  %1873 = call float @dx.op.unary.f32(i32 7, float %1871)  ; Saturate(value)
  %1874 = call float @dx.op.unary.f32(i32 7, float %1872)  ; Saturate(value)
  %1875 = fsub fast float 1.000000e+00, %1873
  %1876 = fsub fast float 1.000000e+00, %1874
  %1877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %58, float %1875, float %1876, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1878 = extractvalue %dx.types.ResRet.f32 %1877, 0
  %1879 = fcmp fast ugt float %1878, 0.000000e+00
  br i1 %1879, label %1880, label %2183

; <label>:1880                                    ; preds = %1842
  %1881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1882 = extractvalue %dx.types.CBufRet.f32 %1881, 2
  %1883 = fmul fast float %1882, %1878
  %1884 = extractvalue %dx.types.CBufRet.f32 %1881, 3
  %1885 = fadd fast float %1884, %1883
  %1886 = extractvalue %dx.types.CBufRet.f32 %1847, 2
  %1887 = fadd fast float %1885, %1854
  %1888 = fmul fast float %1860, %1848
  %1889 = call float @dx.op.tertiary.f32(i32 46, float %1863, float %1851, float %1888)  ; FMad(a,b,c)
  %1890 = call float @dx.op.tertiary.f32(i32 46, float %1887, float %1886, float %1889)  ; FMad(a,b,c)
  %1891 = fsub fast float %1890, %1854
  %1892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1893 = extractvalue %dx.types.CBufRet.f32 %1892, 2
  %1894 = fsub fast float %1891, %1893
  %1895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %58, float %1875, float %1876, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1896 = extractvalue %dx.types.ResRet.f32 %1895, 0
  %1897 = extractvalue %dx.types.ResRet.f32 %1895, 1
  %1898 = extractvalue %dx.types.ResRet.f32 %1895, 2
  %1899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %58, float %1875, float %1876, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1900 = extractvalue %dx.types.ResRet.f32 %1899, 0
  %1901 = extractvalue %dx.types.ResRet.f32 %1899, 1
  %1902 = extractvalue %dx.types.ResRet.f32 %1899, 2
  %1903 = fadd fast float %1900, %1896
  %1904 = fmul fast float %1903, 0x3F847AE140000000
  %1905 = fadd fast float %1901, %1897
  %1906 = fmul fast float %1905, 0x3F847AE140000000
  %1907 = fadd fast float %1902, %1898
  %1908 = fmul fast float %1907, 0x3F847AE140000000
  br label %2183

; <label>:1909                                    ; preds = %1799
  %1910 = and i32 %236, 1
  %1911 = icmp eq i32 %1910, 0
  br i1 %1911, label %2183, label %1912

; <label>:1912                                    ; preds = %1909
  %1913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1914 = extractvalue %dx.types.CBufRet.f32 %1913, 0
  %1915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1916 = extractvalue %dx.types.CBufRet.f32 %1915, 0
  %1917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1918 = extractvalue %dx.types.CBufRet.f32 %1917, 0
  %1919 = extractvalue %dx.types.CBufRet.f32 %1913, 1
  %1920 = extractvalue %dx.types.CBufRet.f32 %1915, 1
  %1921 = extractvalue %dx.types.CBufRet.f32 %1917, 1
  %1922 = extractvalue %dx.types.CBufRet.f32 %1913, 3
  %1923 = extractvalue %dx.types.CBufRet.f32 %1915, 3
  %1924 = extractvalue %dx.types.CBufRet.f32 %1917, 3
  %1925 = fadd fast float %1922, %1828
  %1926 = fadd fast float %1923, %1829
  %1927 = fadd fast float %1924, %1830
  %1928 = fmul fast float %1925, %1914
  %1929 = call float @dx.op.tertiary.f32(i32 46, float %1926, float %1916, float %1928)  ; FMad(a,b,c)
  %1930 = call float @dx.op.tertiary.f32(i32 46, float %1927, float %1918, float %1929)  ; FMad(a,b,c)
  %1931 = fmul fast float %1925, %1919
  %1932 = call float @dx.op.tertiary.f32(i32 46, float %1926, float %1920, float %1931)  ; FMad(a,b,c)
  %1933 = call float @dx.op.tertiary.f32(i32 46, float %1927, float %1921, float %1932)  ; FMad(a,b,c)
  %1934 = fsub fast float %1930, %1922
  %1935 = fsub fast float %1933, %1923
  %1936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1937 = extractvalue %dx.types.CBufRet.f32 %1936, 0
  %1938 = extractvalue %dx.types.CBufRet.f32 %1936, 1
  %1939 = extractvalue %dx.types.CBufRet.f32 %1936, 2
  %1940 = extractvalue %dx.types.CBufRet.f32 %1936, 3
  %1941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1942 = extractvalue %dx.types.CBufRet.f32 %1941, 3
  %1943 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1944 = extractvalue %dx.types.CBufRet.i32 %1943, 0
  %1945 = extractvalue %dx.types.CBufRet.i32 %1943, 1
  %1946 = udiv i32 %1945, %1944
  %1947 = fsub fast float %1934, %1937
  %1948 = fsub fast float %1935, %1938
  %1949 = call float @dx.op.binary.f32(i32 35, float %1947, float 0.000000e+00)  ; FMax(a,b)
  %1950 = call float @dx.op.binary.f32(i32 35, float %1948, float 0.000000e+00)  ; FMax(a,b)
  %1951 = call float @dx.op.binary.f32(i32 36, float %1949, float %1939)  ; FMin(a,b)
  %1952 = call float @dx.op.binary.f32(i32 36, float %1950, float %1940)  ; FMin(a,b)
  %1953 = add i32 %1944, -1
  %1954 = add i32 %1946, -1
  %1955 = fmul fast float %1951, %1942
  %1956 = fmul fast float %1952, %1942
  %1957 = fptoui float %1955 to i32
  %1958 = fptoui float %1956 to i32
  %1959 = call i32 @dx.op.binary.i32(i32 40, i32 %1957, i32 %1953)  ; UMin(a,b)
  %1960 = call i32 @dx.op.binary.i32(i32 40, i32 %1958, i32 %1954)  ; UMin(a,b)
  %1961 = mul i32 %1960, %1944
  %1962 = add i32 %1961, %1959
  %1963 = shl i32 %1962, 2
  %1964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.i32 %1964, 0
  %1966 = icmp eq i32 %1965, -1
  br i1 %1966, label %2183, label %1967

; <label>:1967                                    ; preds = %1912
  %1968 = mul i32 %1965, 148
  %1969 = add i32 %1968, 4
  %1970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.f32 %1970, 0
  %1972 = add i32 %1968, 8
  %1973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.f32 %1973, 0
  %1975 = add i32 %1968, 36
  %1976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1975, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.f32 %1976, 0
  %1978 = add i32 %1968, 60
  %1979 = add i32 %1968, 92
  %1980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.i32 %1980, 0
  %1982 = add i32 %1968, 116
  %1983 = fsub fast float %1934, %1971
  %1984 = fsub fast float %1935, %1974
  %1985 = fmul fast float %1942, %1983
  %1986 = fmul fast float %1942, %1984
  %1987 = call float @dx.op.unary.f32(i32 7, float %1985)  ; Saturate(value)
  %1988 = call float @dx.op.unary.f32(i32 7, float %1986)  ; Saturate(value)
  %1989 = fsub fast float 1.000000e+00, %1988
  %1990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1991 = extractvalue %dx.types.CBufRet.f32 %1990, 2
  %1992 = call float @dx.op.unary.f32(i32 83, float %1987)  ; DerivCoarseX(value)
  %1993 = call float @dx.op.unary.f32(i32 83, float %1989)  ; DerivCoarseX(value)
  %1994 = call float @dx.op.unary.f32(i32 84, float %1987)  ; DerivCoarseY(value)
  %1995 = call float @dx.op.unary.f32(i32 84, float %1989)  ; DerivCoarseY(value)
  %1996 = fmul fast float %1992, %1991
  %1997 = fmul fast float %1993, %1991
  %1998 = fmul fast float %1994, %1991
  %1999 = fmul fast float %1995, %1991
  %2000 = call float @dx.op.dot2.f32(i32 54, float %1998, float %1999, float %1998, float %1999)  ; Dot2(ax,ay,bx,by)
  %2001 = call float @dx.op.dot2.f32(i32 54, float %1996, float %1997, float %1996, float %1997)  ; Dot2(ax,ay,bx,by)
  %2002 = call float @dx.op.binary.f32(i32 35, float %2001, float %2000)  ; FMax(a,b)
  %2003 = call float @dx.op.unary.f32(i32 23, float %2002)  ; Log(value)
  %2004 = fmul fast float %2003, 5.000000e-01
  %2005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2006 = extractvalue %dx.types.CBufRet.f32 %2005, 1
  %2007 = fadd fast float %2006, %2004
  %2008 = call float @dx.op.binary.f32(i32 35, float %2007, float 0.000000e+00)  ; FMax(a,b)
  %2009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2010 = extractvalue %dx.types.CBufRet.f32 %2009, 3
  %2011 = fadd fast float %2010, %2008
  %2012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2013 = extractvalue %dx.types.CBufRet.f32 %2012, 3
  %2014 = fadd fast float %2011, %2013
  %2015 = add i32 %1981, 0
  %2016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2015, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2017 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2016, i32 0)  ; GetDimensions(handle,mipLevel)
  %2018 = extractvalue %dx.types.Dimensions %2017, 0
  %2019 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2018)  ; FirstbitLo(value)
  %2020 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2021 = extractvalue %dx.types.CBufRet.i32 %2020, 1
  %2022 = sub nsw i32 %2021, %2019
  %2023 = sitofp i32 %2022 to float
  %2024 = fsub fast float %2014, %2023
  %2025 = call float @dx.op.binary.f32(i32 35, float %2024, float 0.000000e+00)  ; FMax(a,b)
  %2026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2016, %dx.types.Handle %56, float %1987, float %1989, float %1977, float undef, i32 0, i32 0, i32 undef, float %2025)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2027 = extractvalue %dx.types.ResRet.f32 %2026, 0
  %2028 = fcmp ule float %2027, 0x3FE0101020000000
  %2029 = extractvalue %dx.types.CBufRet.i32 %2020, 0
  %2030 = and i32 %2029, 128
  %2031 = icmp ne i32 %2030, 0
  %2032 = and i1 %2028, %2031
  br i1 %2032, label %2183, label %2033

; <label>:2033                                    ; preds = %1967
  %2034 = add i32 %1968, 20
  %2035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.f32 %2035, 0
  %2037 = add i32 %1968, 24
  %2038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.f32 %2038, 0
  %2040 = add i32 %1968, 40
  %2041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2040, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.f32 %2041, 0
  %2043 = add i32 %1968, 96
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2047 = extractvalue %dx.types.CBufRet.f32 %2046, 2
  %2048 = fmul fast float %2047, %1987
  %2049 = fmul fast float %2047, %1989
  %2050 = extractvalue %dx.types.CBufRet.f32 %2046, 3
  %2051 = fadd fast float %2048, %2050
  %2052 = fadd fast float %2049, %2050
  %2053 = add i32 %2045, 0
  %2054 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2053, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2055 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2054, i32 0)  ; GetDimensions(handle,mipLevel)
  %2056 = extractvalue %dx.types.Dimensions %2055, 0
  %2057 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2056)  ; FirstbitLo(value)
  %2058 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2059 = extractvalue %dx.types.CBufRet.i32 %2058, 1
  %2060 = sub nsw i32 %2059, %2057
  %2061 = sitofp i32 %2060 to float
  %2062 = fsub fast float %2011, %2061
  %2063 = call float @dx.op.binary.f32(i32 35, float %2062, float 0.000000e+00)  ; FMax(a,b)
  %2064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2054, %dx.types.Handle %56, float %2051, float %2052, float %2042, float undef, i32 0, i32 0, i32 undef, float %2063)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2065 = extractvalue %dx.types.ResRet.f32 %2064, 0
  %2066 = fmul fast float %2065, %2036
  %2067 = fadd fast float %2066, %2039
  %2068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2069 = extractvalue %dx.types.CBufRet.f32 %2068, 0
  %2070 = extractvalue %dx.types.CBufRet.f32 %2068, 1
  %2071 = extractvalue %dx.types.CBufRet.f32 %2068, 2
  %2072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2073 = extractvalue %dx.types.CBufRet.f32 %2072, 3
  %2074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2075 = extractvalue %dx.types.CBufRet.f32 %2074, 3
  %2076 = extractvalue %dx.types.CBufRet.f32 %2068, 3
  %2077 = fadd fast float %2073, %1934
  %2078 = fadd fast float %2075, %1935
  %2079 = fadd fast float %2067, %2076
  %2080 = fmul fast float %2077, %2069
  %2081 = call float @dx.op.tertiary.f32(i32 46, float %2078, float %2070, float %2080)  ; FMad(a,b,c)
  %2082 = call float @dx.op.tertiary.f32(i32 46, float %2079, float %2071, float %2081)  ; FMad(a,b,c)
  %2083 = fsub fast float %2082, %2076
  %2084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2085 = extractvalue %dx.types.CBufRet.f32 %2084, 2
  %2086 = fsub fast float %2083, %2085
  %2087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2088 = extractvalue %dx.types.CBufRet.i32 %2087, 0
  %2089 = call i32 @dx.op.binary.i32(i32 40, i32 %1965, i32 %2088)  ; UMin(a,b)
  %2090 = mul i32 %2089, 36
  %2091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2090, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.i32 %2091, 0
  %2093 = add i32 %2090, 4
  %2094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2095 = extractvalue %dx.types.CBufRet.f32 %2094, 0
  %2096 = fmul fast float %2095, %1987
  %2097 = fmul fast float %2095, %1989
  %2098 = extractvalue %dx.types.CBufRet.f32 %2094, 1
  %2099 = fadd fast float %2096, %2098
  %2100 = fadd fast float %2097, %2098
  %2101 = icmp eq i32 %2092, 0
  br i1 %2101, label %2170, label %2102

; <label>:2102                                    ; preds = %2033
  br label %2103

; <label>:2103                                    ; preds = %2160, %2102
  %2104 = phi float [ %2161, %2160 ], [ 0.000000e+00, %2102 ]
  %2105 = phi float [ %2162, %2160 ], [ 0.000000e+00, %2102 ]
  %2106 = phi float [ %2163, %2160 ], [ 0.000000e+00, %2102 ]
  %2107 = phi float [ %2164, %2160 ], [ 0.000000e+00, %2102 ]
  %2108 = phi float [ %2165, %2160 ], [ 0.000000e+00, %2102 ]
  %2109 = phi float [ %2166, %2160 ], [ 0.000000e+00, %2102 ]
  %2110 = phi i32 [ %2167, %2160 ], [ 0, %2102 ]
  %2111 = shl i32 %2110, 2
  %2112 = add i32 %1978, %2111
  %2113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2112, i32 undef)  ; BufferLoad(srv,index,wot)
  %2114 = extractvalue %dx.types.ResRet.f32 %2113, 0
  %2115 = add i32 %1982, %2111
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2115, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = add i32 %2117, 0
  %2119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2118, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2120 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2119, i32 0)  ; GetDimensions(handle,mipLevel)
  %2121 = extractvalue %dx.types.Dimensions %2120, 0
  %2122 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2121)  ; FirstbitLo(value)
  %2123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2124 = extractvalue %dx.types.CBufRet.i32 %2123, 1
  %2125 = sub nsw i32 %2124, %2122
  %2126 = sitofp i32 %2125 to float
  %2127 = fsub fast float %2011, %2126
  %2128 = call float @dx.op.binary.f32(i32 35, float %2127, float 0.000000e+00)  ; FMax(a,b)
  %2129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2119, %dx.types.Handle %56, float %2099, float %2100, float %2114, float undef, i32 0, i32 0, i32 undef, float %2128)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2130 = extractvalue %dx.types.ResRet.f32 %2129, 0
  %2131 = fcmp fast ogt float %2130, 0.000000e+00
  br i1 %2131, label %2132, label %2160

; <label>:2132                                    ; preds = %2103
  %2133 = add i32 %2093, %2111
  %2134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.i32 %2134, 0
  %2136 = and i32 %2135, 32767
  %2137 = mul nuw nsw i32 %2136, 928
  %2138 = add nuw nsw i32 %2137, 48
  %2139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2138, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.f32 %2139, 0
  %2141 = extractvalue %dx.types.ResRet.f32 %2139, 1
  %2142 = extractvalue %dx.types.ResRet.f32 %2139, 2
  %2143 = add nuw nsw i32 %2137, 60
  %2144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  %2146 = extractvalue %dx.types.ResRet.f32 %2144, 1
  %2147 = extractvalue %dx.types.ResRet.f32 %2144, 2
  %2148 = fmul fast float %2140, %2130
  %2149 = fmul fast float %2141, %2130
  %2150 = fmul fast float %2142, %2130
  %2151 = fadd fast float %2148, %2104
  %2152 = fadd fast float %2149, %2105
  %2153 = fadd fast float %2150, %2106
  %2154 = fmul fast float %2145, %2130
  %2155 = fmul fast float %2146, %2130
  %2156 = fmul fast float %2147, %2130
  %2157 = fadd fast float %2154, %2107
  %2158 = fadd fast float %2155, %2108
  %2159 = fadd fast float %2156, %2109
  br label %2160

; <label>:2160                                    ; preds = %2132, %2103
  %2161 = phi float [ %2151, %2132 ], [ %2104, %2103 ]
  %2162 = phi float [ %2152, %2132 ], [ %2105, %2103 ]
  %2163 = phi float [ %2153, %2132 ], [ %2106, %2103 ]
  %2164 = phi float [ %2157, %2132 ], [ %2107, %2103 ]
  %2165 = phi float [ %2158, %2132 ], [ %2108, %2103 ]
  %2166 = phi float [ %2159, %2132 ], [ %2109, %2103 ]
  %2167 = add nuw i32 %2110, 1
  %2168 = icmp eq i32 %2167, %2092
  br i1 %2168, label %2169, label %2103

; <label>:2169                                    ; preds = %2160
  br label %2170

; <label>:2170                                    ; preds = %2169, %2033
  %2171 = phi float [ 0.000000e+00, %2033 ], [ %2161, %2169 ]
  %2172 = phi float [ 0.000000e+00, %2033 ], [ %2162, %2169 ]
  %2173 = phi float [ 0.000000e+00, %2033 ], [ %2163, %2169 ]
  %2174 = phi float [ 0.000000e+00, %2033 ], [ %2164, %2169 ]
  %2175 = phi float [ 0.000000e+00, %2033 ], [ %2165, %2169 ]
  %2176 = phi float [ 0.000000e+00, %2033 ], [ %2166, %2169 ]
  %2177 = fadd fast float %2174, %2171
  %2178 = fmul fast float %2177, 0x3F847AE140000000
  %2179 = fadd fast float %2175, %2172
  %2180 = fmul fast float %2179, 0x3F847AE140000000
  %2181 = fadd fast float %2176, %2173
  %2182 = fmul fast float %2181, 0x3F847AE140000000
  br label %2183

; <label>:2183                                    ; preds = %2170, %1967, %1912, %1909, %1880, %1842
  %2184 = phi float [ %1894, %1880 ], [ -1.310720e+05, %1842 ], [ %2086, %2170 ], [ -1.310720e+05, %1912 ], [ -1.310720e+05, %1967 ], [ -1.310720e+05, %1909 ]
  %2185 = phi float [ %1904, %1880 ], [ 0.000000e+00, %1842 ], [ %2178, %2170 ], [ 0.000000e+00, %1912 ], [ 0.000000e+00, %1967 ], [ 0.000000e+00, %1909 ]
  %2186 = phi float [ %1906, %1880 ], [ 0.000000e+00, %1842 ], [ %2180, %2170 ], [ 0.000000e+00, %1912 ], [ 0.000000e+00, %1967 ], [ 0.000000e+00, %1909 ]
  %2187 = phi float [ %1908, %1880 ], [ 0.000000e+00, %1842 ], [ %2182, %2170 ], [ 0.000000e+00, %1912 ], [ 0.000000e+00, %1967 ], [ 0.000000e+00, %1909 ]
  %2188 = phi i1 [ true, %1880 ], [ false, %1842 ], [ true, %2170 ], [ false, %1912 ], [ false, %1967 ], [ false, %1909 ]
  %2189 = and i32 %236, 3
  %2190 = icmp eq i32 %2189, 1
  %2191 = select i1 %2190, float 1.000000e+00, float 0.000000e+00
  %2192 = fsub fast float %2184, %139
  %2193 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  %2194 = select i1 %2188, float %2193, float 1.000000e+00
  %2195 = fmul fast float %2194, %2191
  %2196 = icmp eq i32 %2189, 3
  %2197 = select i1 %2196, float 1.000000e+00, float %2195
  %2198 = call float @dx.op.binary.f32(i32 35, float %1701, float %2197)  ; FMax(a,b)
  %2199 = call float @dx.op.unary.f32(i32 7, float %2198)  ; Saturate(value)
  %2200 = fcmp fast une float %2199, 0.000000e+00
  %2201 = fsub fast float -0.000000e+00, %186
  %2202 = fsub fast float -0.000000e+00, %187
  %2203 = fsub fast float -0.000000e+00, %188
  br i1 %2200, label %2204, label %2366

; <label>:2204                                    ; preds = %2183
  %2205 = call float @dx.op.dot3.f32(i32 55, float %2201, float %2202, float %2203, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %2206 = fmul fast float %2199, 2.500000e+00
  %2207 = call float @dx.op.unary.f32(i32 7, float %2206)  ; Saturate(value)
  %2208 = fmul fast float %2199, 0x4013FFFFE0000000
  %2209 = fadd fast float %2208, 0xBFFFFFFFE0000000
  %2210 = call float @dx.op.unary.f32(i32 7, float %2209)  ; Saturate(value)
  %2211 = fmul fast float %2199, 0x4004000020000000
  %2212 = fadd fast float %2211, 0xBFF8000040000000
  %2213 = call float @dx.op.unary.f32(i32 7, float %2212)  ; Saturate(value)
  %2214 = call float @dx.op.unary.f32(i32 7, float %2207)  ; Saturate(value)
  %2215 = fmul fast float %1759, 1.000000e+01
  %2216 = call float @dx.op.unary.f32(i32 7, float %2215)  ; Saturate(value)
  %2217 = fmul fast float %2216, 2.000000e+00
  %2218 = fsub fast float 3.000000e+00, %2217
  %2219 = fmul fast float %2216, %2216
  %2220 = fmul fast float %2219, %2218
  %2221 = fsub fast float 1.000000e+00, %2220
  %2222 = fsub fast float 0x3FE3333340000000, %1780
  %2223 = fmul fast float %2222, 0x400AAAAAA0000000
  %2224 = call float @dx.op.unary.f32(i32 7, float %2223)  ; Saturate(value)
  %2225 = fmul fast float %2221, %2224
  %2226 = fmul fast float %1817, 0x3FEA2B8620000000
  %2227 = fmul fast float %1818, 0x3FEA2B8620000000
  %2228 = fmul fast float %1819, 0x3FEA2B8620000000
  %2229 = fadd fast float %2226, 0x3FC81DFBA0000000
  %2230 = fmul fast float %2229, %1817
  %2231 = fadd fast float %2230, 0x3F910E6020000000
  %2232 = fadd fast float %2227, 0x3FC81DFBA0000000
  %2233 = fmul fast float %2232, %1818
  %2234 = fadd fast float %2233, 0x3F910E6020000000
  %2235 = fadd fast float %2228, 0x3FC81DFBA0000000
  %2236 = fmul fast float %2235, %1819
  %2237 = fadd fast float %2236, 0x3F910E6020000000
  %2238 = call float @dx.op.unary.f32(i32 7, float %2231)  ; Saturate(value)
  %2239 = call float @dx.op.unary.f32(i32 7, float %2234)  ; Saturate(value)
  %2240 = call float @dx.op.unary.f32(i32 7, float %2237)  ; Saturate(value)
  %2241 = fsub fast float %2238, %1817
  %2242 = fsub fast float %2239, %1818
  %2243 = fsub fast float %2240, %1819
  %2244 = fmul fast float %2241, %2214
  %2245 = fmul fast float %2244, %2225
  %2246 = fmul fast float %2242, %2214
  %2247 = fmul fast float %2246, %2225
  %2248 = fmul fast float %2243, %2214
  %2249 = fmul fast float %2248, %2225
  %2250 = fadd fast float %2245, %1817
  %2251 = fadd fast float %2247, %1818
  %2252 = fadd fast float %2249, %1819
  %2253 = fmul fast float %1718, %1718
  %2254 = fmul fast float %2253, %2253
  %2255 = fadd fast float %2210, 1.000000e+00
  %2256 = fsub fast float %2255, %2225
  %2257 = call float @dx.op.unary.f32(i32 7, float %2256)  ; Saturate(value)
  %2258 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2259 = call float @dx.op.unary.f32(i32 7, float %2258)  ; Saturate(value)
  %2260 = fsub fast float 1.000000e+00, %2254
  %2261 = call float @dx.op.binary.f32(i32 36, float %2257, float %2260)  ; FMin(a,b)
  %2262 = call float @dx.op.unary.f32(i32 7, float %2213)  ; Saturate(value)
  %2263 = call float @dx.op.binary.f32(i32 35, float %2261, float %2262)  ; FMax(a,b)
  %2264 = fadd fast float %2259, 0xBFE4CCCCC0000000
  %2265 = fmul fast float %2264, 0x4006DB6DA0000000
  %2266 = call float @dx.op.unary.f32(i32 7, float %2265)  ; Saturate(value)
  %2267 = fmul fast float %2266, 2.000000e+00
  %2268 = fsub fast float 3.000000e+00, %2267
  %2269 = bitcast float %1777 to i32
  %2270 = ashr i32 %2269, 1
  %2271 = add nsw i32 %2270, 532487669
  %2272 = bitcast i32 %2271 to float
  %2273 = fsub fast float 1.000000e+00, %2272
  %2274 = bitcast float %2273 to i32
  %2275 = sub nsw i32 2129859010, %2274
  %2276 = bitcast i32 %2275 to float
  %2277 = fmul fast float %2276, 2.000000e+00
  %2278 = bitcast float %1778 to i32
  %2279 = ashr i32 %2278, 1
  %2280 = add nsw i32 %2279, 532487669
  %2281 = bitcast i32 %2280 to float
  %2282 = fsub fast float 1.000000e+00, %2281
  %2283 = bitcast float %2282 to i32
  %2284 = sub nsw i32 2129859010, %2283
  %2285 = bitcast i32 %2284 to float
  %2286 = fmul fast float %2285, 2.000000e+00
  %2287 = bitcast float %1779 to i32
  %2288 = ashr i32 %2287, 1
  %2289 = add nsw i32 %2288, 532487669
  %2290 = bitcast i32 %2289 to float
  %2291 = fsub fast float 1.000000e+00, %2290
  %2292 = bitcast float %2291 to i32
  %2293 = sub nsw i32 2129859010, %2292
  %2294 = bitcast i32 %2293 to float
  %2295 = fmul fast float %2294, 2.000000e+00
  %2296 = fsub fast float 0x4002A9FBE0000000, %2277
  %2297 = fadd fast float %2277, 0x3FD54FDF00000000
  %2298 = bitcast float %2297 to i32
  %2299 = sub nsw i32 2129859010, %2298
  %2300 = bitcast i32 %2299 to float
  %2301 = fmul fast float %2300, %2296
  %2302 = fmul fast float %2301, %2301
  %2303 = fsub fast float 0x4002A9FBE0000000, %2286
  %2304 = fadd fast float %2286, 0x3FD54FDF00000000
  %2305 = bitcast float %2304 to i32
  %2306 = sub nsw i32 2129859010, %2305
  %2307 = bitcast i32 %2306 to float
  %2308 = fmul fast float %2307, %2303
  %2309 = fmul fast float %2308, %2308
  %2310 = fsub fast float 0x4002A9FBE0000000, %2295
  %2311 = fadd fast float %2295, 0x3FD54FDF00000000
  %2312 = bitcast float %2311 to i32
  %2313 = sub nsw i32 2129859010, %2312
  %2314 = bitcast i32 %2313 to float
  %2315 = fmul fast float %2314, %2310
  %2316 = fmul fast float %2315, %2315
  %2317 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2302)  ; FMax(a,b)
  %2318 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2309)  ; FMax(a,b)
  %2319 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2316)  ; FMax(a,b)
  %2320 = fsub fast float 1.000000e+00, %2205
  %2321 = fadd fast float %2320, %2221
  %2322 = call float @dx.op.unary.f32(i32 7, float %2321)  ; Saturate(value)
  %2323 = fsub fast float 1.000000e+00, %2197
  %2324 = fmul fast float %2263, %2323
  %2325 = fmul fast float %2266, %2266
  %2326 = fmul fast float %2325, %2324
  %2327 = fmul fast float %2326, %2268
  %2328 = fmul fast float %2323, 0xBFE99999A0000000
  %2329 = fmul fast float %2328, %2214
  %2330 = fmul fast float %2329, %2225
  %2331 = fadd fast float %2330, 1.000000e+00
  %2332 = fadd fast float %1780, -1.000000e+00
  %2333 = fmul fast float %2331, %2332
  %2334 = fadd fast float %2333, 1.000000e+00
  %2335 = fsub fast float %2317, %1777
  %2336 = fsub fast float %2318, %1778
  %2337 = fsub fast float %2319, %1779
  %2338 = fmul fast float %2327, %2335
  %2339 = fmul fast float %2327, %2336
  %2340 = fmul fast float %2327, %2337
  %2341 = fadd fast float %2338, %1777
  %2342 = fadd fast float %2339, %1778
  %2343 = fadd fast float %2340, %1779
  %2344 = fsub fast float %70, %1734
  %2345 = fsub fast float %71, %1735
  %2346 = fsub fast float %72, %1736
  %2347 = fmul fast float %2327, %2344
  %2348 = fmul fast float %2327, %2345
  %2349 = fmul fast float %2327, %2346
  %2350 = fadd fast float %2347, %1734
  %2351 = fadd fast float %2348, %1735
  %2352 = fadd fast float %2349, %1736
  %2353 = fmul fast float %2327, %2322
  %2354 = call float @dx.op.unary.f32(i32 7, float %2334)  ; Saturate(value)
  %2355 = fsub fast float 1.000000e+00, %2354
  %2356 = fmul fast float %2353, %2355
  %2357 = fadd fast float %2356, %2354
  %2358 = fsub fast float 1.000000e+00, %1718
  %2359 = fmul fast float %2327, %2358
  %2360 = fadd fast float %2359, %1718
  %2361 = call float @dx.op.dot3.f32(i32 55, float %2350, float %2351, float %2352, float %2350, float %2351, float %2352)  ; Dot3(ax,ay,az,bx,by,bz)
  %2362 = call float @dx.op.unary.f32(i32 25, float %2361)  ; Rsqrt(value)
  %2363 = fmul fast float %2350, %2362
  %2364 = fmul fast float %2351, %2362
  %2365 = fmul fast float %2352, %2362
  br label %2366

; <label>:2366                                    ; preds = %2204, %2183
  %2367 = phi float [ %2341, %2204 ], [ %1777, %2183 ]
  %2368 = phi float [ %2342, %2204 ], [ %1778, %2183 ]
  %2369 = phi float [ %2343, %2204 ], [ %1779, %2183 ]
  %2370 = phi float [ %2250, %2204 ], [ %1817, %2183 ]
  %2371 = phi float [ %2251, %2204 ], [ %1818, %2183 ]
  %2372 = phi float [ %2252, %2204 ], [ %1819, %2183 ]
  %2373 = phi float [ %2363, %2204 ], [ %1734, %2183 ]
  %2374 = phi float [ %2364, %2204 ], [ %1735, %2183 ]
  %2375 = phi float [ %2365, %2204 ], [ %1736, %2183 ]
  %2376 = phi float [ %2357, %2204 ], [ %1780, %2183 ]
  %2377 = phi float [ %2360, %2204 ], [ %1718, %2183 ]
  %2378 = fsub fast float -0.000000e+00, %139
  %2379 = select i1 %260, float 0.000000e+00, float %2369
  %2380 = call float @dx.op.dot3.f32(i32 55, float %2373, float %2374, float %2375, float %2201, float %2202, float %2203)  ; Dot3(ax,ay,az,bx,by,bz)
  %2381 = call float @dx.op.unary.f32(i32 7, float %2380)  ; Saturate(value)
  %2382 = call float @dx.op.dot3.f32(i32 55, float %186, float %187, float %188, float %2373, float %2374, float %2375)  ; Dot3(ax,ay,az,bx,by,bz)
  %2383 = fmul fast float %2382, 2.000000e+00
  %2384 = fmul fast float %2383, %2373
  %2385 = fmul fast float %2383, %2374
  %2386 = fmul fast float %2383, %2375
  %2387 = fsub fast float %186, %2384
  %2388 = fsub fast float %187, %2385
  %2389 = fsub fast float %188, %2386
  %2390 = call float @dx.op.binary.f32(i32 36, float %2377, float 1.000000e+00)  ; FMin(a,b)
  %2391 = fsub fast float 1.000000e+00, %2377
  %2392 = bitcast float %2391 to i32
  %2393 = sub nsw i32 2129859010, %2392
  %2394 = bitcast i32 %2393 to float
  %2395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2396 = extractvalue %dx.types.CBufRet.f32 %2395, 0
  %2397 = extractvalue %dx.types.CBufRet.f32 %2395, 1
  %2398 = fadd fast float %2396, %137
  %2399 = fadd fast float %2397, %138
  %2400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2401 = extractvalue %dx.types.CBufRet.i32 %2400, 0
  %2402 = icmp eq i32 %2401, 1
  br i1 %2402, label %2403, label %2438

; <label>:2403                                    ; preds = %2366
  %2404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2405 = extractvalue %dx.types.CBufRet.f32 %2404, 0
  %2406 = extractvalue %dx.types.CBufRet.f32 %2404, 1
  %2407 = fsub fast float %2398, %2405
  %2408 = fsub fast float %2399, %2406
  %2409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2410 = extractvalue %dx.types.CBufRet.f32 %2409, 0
  %2411 = extractvalue %dx.types.CBufRet.f32 %2409, 1
  %2412 = fmul fast float %2407, %2410
  %2413 = fmul fast float %2408, %2411
  %2414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %2412, float %2413, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2415 = extractvalue %dx.types.ResRet.f32 %2414, 0
  %2416 = fcmp fast ogt float %2415, 0.000000e+00
  %2417 = extractvalue %dx.types.CBufRet.i32 %2400, 3
  %2418 = icmp ne i32 %2417, 0
  %2419 = and i1 %2416, %2418
  br i1 %2419, label %2420, label %2438, !dx.controlflow.hints !100

; <label>:2420                                    ; preds = %2403
  %2421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2422 = extractvalue %dx.types.CBufRet.f32 %2421, 0
  %2423 = extractvalue %dx.types.CBufRet.f32 %2421, 1
  %2424 = fsub fast float %2398, %2422
  %2425 = fsub fast float %2399, %2423
  %2426 = fmul fast float %2424, %2424
  %2427 = fmul fast float %2425, %2425
  %2428 = fadd fast float %2426, %2427
  %2429 = uitofp i32 %2417 to float
  %2430 = fmul fast float %2429, %2429
  %2431 = fcmp fast ogt float %2428, %2430
  br i1 %2431, label %2438, label %2432

; <label>:2432                                    ; preds = %2420
  %2433 = call float @dx.op.unary.f32(i32 24, float %2428)  ; Sqrt(value)
  %2434 = fsub fast float %2429, %2433
  %2435 = fmul fast float %2434, 0x3F75555560000000
  %2436 = call float @dx.op.unary.f32(i32 7, float %2435)  ; Saturate(value)
  %2437 = call float @dx.op.binary.f32(i32 36, float %2436, float %2415)  ; FMin(a,b)
  br label %2438

; <label>:2438                                    ; preds = %2432, %2420, %2403, %2366
  %2439 = phi float [ 1.000000e+00, %2366 ], [ %2437, %2432 ], [ %2415, %2403 ], [ 0.000000e+00, %2420 ]
  %2440 = fcmp fast ogt float %2439, 0.000000e+00
  br i1 %2440, label %2441, label %2539, !dx.controlflow.hints !101

; <label>:2441                                    ; preds = %2438
  %2442 = fadd fast float %168, 5.000000e-01
  %2443 = call float @dx.op.unary.f32(i32 27, float %2442)  ; Round_ni(value)
  %2444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %58, float %166, float %167, float %2443, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2445 = extractvalue %dx.types.ResRet.f32 %2444, 0
  %2446 = extractvalue %dx.types.ResRet.f32 %2444, 1
  %2447 = extractvalue %dx.types.ResRet.f32 %2444, 2
  %2448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2449 = extractvalue %dx.types.CBufRet.f32 %2448, 3
  %2450 = fmul fast float %2449, %2445
  %2451 = fmul fast float %2449, %2446
  %2452 = fmul fast float %2449, %2447
  %2453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %58, float %166, float %167, float %2443, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2454 = extractvalue %dx.types.ResRet.f32 %2453, 0
  %2455 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %58, float %166, float %167, float %2443, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2456 = extractvalue %dx.types.ResRet.f32 %2455, 0
  %2457 = extractvalue %dx.types.ResRet.f32 %2455, 1
  %2458 = fmul fast float %2456, 2.000000e+00
  %2459 = fmul fast float %2457, 2.000000e+00
  %2460 = fadd fast float %2458, -1.000000e+00
  %2461 = fadd fast float %2459, -1.000000e+00
  %2462 = fadd fast float %2460, %2461
  %2463 = fmul fast float %2462, 5.000000e-01
  %2464 = fsub fast float %2460, %2461
  %2465 = fmul fast float %2464, 5.000000e-01
  %2466 = call float @dx.op.unary.f32(i32 6, float %2463)  ; FAbs(value)
  %2467 = fsub fast float 1.000000e+00, %2466
  %2468 = call float @dx.op.unary.f32(i32 6, float %2465)  ; FAbs(value)
  %2469 = fsub fast float %2467, %2468
  %2470 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2469)  ; FMax(a,b)
  %2471 = call float @dx.op.dot3.f32(i32 55, float %2463, float %2465, float %2470, float %2463, float %2465, float %2470)  ; Dot3(ax,ay,az,bx,by,bz)
  %2472 = bitcast float %2471 to i32
  %2473 = ashr i32 %2472, 1
  %2474 = sub nsw i32 1597250115, %2473
  %2475 = bitcast i32 %2474 to float
  %2476 = fmul fast float %2475, %2463
  %2477 = fmul fast float %2475, %2465
  %2478 = fmul fast float %2475, %2470
  %2479 = fsub fast float 1.000000e+00, %2454
  %2480 = fdiv fast float %2479, %2478
  %2481 = fmul fast float %2478, %70
  %2482 = fmul fast float %2478, %71
  %2483 = fmul fast float %2478, %72
  %2484 = fmul fast float %2476, %66
  %2485 = fmul fast float %2476, %67
  %2486 = fmul fast float %2476, %68
  %2487 = fadd fast float %2481, %2484
  %2488 = fadd fast float %2482, %2485
  %2489 = fadd fast float %2483, %2486
  %2490 = fmul fast float %2477, %101
  %2491 = fmul fast float %2477, %102
  %2492 = fmul fast float %2477, %103
  %2493 = fadd fast float %2487, %2490
  %2494 = fadd fast float %2488, %2491
  %2495 = fadd fast float %2489, %2492
  %2496 = call float @dx.op.dot3.f32(i32 55, float %2493, float %2494, float %2495, float %2493, float %2494, float %2495)  ; Dot3(ax,ay,az,bx,by,bz)
  %2497 = call float @dx.op.unary.f32(i32 25, float %2496)  ; Rsqrt(value)
  %2498 = fmul fast float %2493, %2497
  %2499 = fmul fast float %2494, %2497
  %2500 = fmul fast float %2495, %2497
  %2501 = call float @dx.op.dot3.f32(i32 55, float %2373, float %2374, float %2375, float %2373, float %2374, float %2375)  ; Dot3(ax,ay,az,bx,by,bz)
  %2502 = call float @dx.op.unary.f32(i32 7, float %2501)  ; Saturate(value)
  %2503 = fmul fast float %2502, 5.000000e-01
  %2504 = fadd fast float %2503, 5.000000e-01
  %2505 = fmul fast float %2504, %2454
  %2506 = call float @dx.op.dot3.f32(i32 55, float %2373, float %2374, float %2375, float %2498, float %2499, float %2500)  ; Dot3(ax,ay,az,bx,by,bz)
  %2507 = call float @dx.op.unary.f32(i32 7, float %2506)  ; Saturate(value)
  %2508 = fmul fast float %2507, %2480
  %2509 = fadd fast float %2505, %2508
  %2510 = fsub fast float 5.000000e-01, %2503
  %2511 = fmul fast float %2510, %2370
  %2512 = fmul fast float %2510, %2371
  %2513 = fmul fast float %2510, %2372
  %2514 = fadd fast float %2509, %2511
  %2515 = fmul fast float %2514, %2450
  %2516 = fadd fast float %2509, %2512
  %2517 = fmul fast float %2516, %2451
  %2518 = fadd fast float %2509, %2513
  %2519 = fmul fast float %2518, %2452
  %2520 = call float @dx.op.dot3.f32(i32 55, float %2387, float %2388, float %2389, float %2373, float %2374, float %2375)  ; Dot3(ax,ay,az,bx,by,bz)
  %2521 = call float @dx.op.unary.f32(i32 7, float %2520)  ; Saturate(value)
  %2522 = fmul fast float %2521, 5.000000e-01
  %2523 = fadd fast float %2522, 5.000000e-01
  %2524 = fmul fast float %2523, %2454
  %2525 = call float @dx.op.dot3.f32(i32 55, float %2387, float %2388, float %2389, float %2498, float %2499, float %2500)  ; Dot3(ax,ay,az,bx,by,bz)
  %2526 = call float @dx.op.unary.f32(i32 7, float %2525)  ; Saturate(value)
  %2527 = fmul fast float %2526, %2480
  %2528 = fadd fast float %2524, %2527
  %2529 = fsub fast float 5.000000e-01, %2522
  %2530 = fmul fast float %2529, %2370
  %2531 = fmul fast float %2529, %2371
  %2532 = fmul fast float %2529, %2372
  %2533 = fadd fast float %2528, %2530
  %2534 = fmul fast float %2533, %2450
  %2535 = fadd fast float %2528, %2531
  %2536 = fmul fast float %2535, %2451
  %2537 = fadd fast float %2528, %2532
  %2538 = fmul fast float %2537, %2452
  br label %2539

; <label>:2539                                    ; preds = %2441, %2438
  %2540 = phi float [ %2534, %2441 ], [ 0.000000e+00, %2438 ]
  %2541 = phi float [ %2536, %2441 ], [ 0.000000e+00, %2438 ]
  %2542 = phi float [ %2538, %2441 ], [ 0.000000e+00, %2438 ]
  %2543 = phi float [ %2515, %2441 ], [ 0.000000e+00, %2438 ]
  %2544 = phi float [ %2517, %2441 ], [ 0.000000e+00, %2438 ]
  %2545 = phi float [ %2519, %2441 ], [ 0.000000e+00, %2438 ]
  %2546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2547 = extractvalue %dx.types.CBufRet.f32 %2546, 0
  %2548 = fcmp fast ogt float %2547, 0.000000e+00
  %2549 = and i1 %2440, %2548
  br i1 %2549, label %2550, label %2754, !dx.controlflow.hints !102

; <label>:2550                                    ; preds = %2539
  %2551 = extractvalue %dx.types.CBufRet.f32 %2395, 2
  %2552 = fadd fast float %2551, %139
  %2553 = fmul fast float %2373, 3.200000e+01
  %2554 = fmul fast float %2374, 3.200000e+01
  %2555 = fadd fast float %2398, %2553
  %2556 = fadd fast float %2399, %2554
  %2557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2558 = extractvalue %dx.types.CBufRet.f32 %2557, 0
  %2559 = extractvalue %dx.types.CBufRet.f32 %2557, 1
  %2560 = fsub fast float %2555, %2558
  %2561 = fsub fast float %2556, %2559
  %2562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2563 = extractvalue %dx.types.CBufRet.f32 %2562, 0
  %2564 = extractvalue %dx.types.CBufRet.f32 %2562, 1
  %2565 = fmul fast float %2560, %2563
  %2566 = fmul fast float %2561, %2564
  %2567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2568 = extractvalue %dx.types.CBufRet.f32 %2567, 0
  %2569 = extractvalue %dx.types.CBufRet.f32 %2567, 1
  %2570 = fsub fast float %2398, %2568
  %2571 = fsub fast float %2399, %2569
  %2572 = fmul fast float %2570, %2570
  %2573 = fmul fast float %2571, %2571
  %2574 = fadd fast float %2572, %2573
  %2575 = call float @dx.op.unary.f32(i32 24, float %2574)  ; Sqrt(value)
  %2576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2577 = extractvalue %dx.types.CBufRet.f32 %2576, 0
  %2578 = extractvalue %dx.types.CBufRet.f32 %2576, 1
  %2579 = fsub fast float %2575, %2577
  %2580 = fdiv fast float %2579, %2578
  %2581 = call float @dx.op.unary.f32(i32 7, float %2580)  ; Saturate(value)
  %2582 = fmul fast float %2581, 2.000000e+00
  %2583 = fsub fast float 3.000000e+00, %2582
  %2584 = fmul fast float %2581, %2581
  %2585 = fmul fast float %2584, %2583
  %2586 = fcmp fast oge float %2565, 0.000000e+00
  %2587 = fcmp fast ole float %2565, 1.000000e+00
  %2588 = and i1 %2587, %2586
  %2589 = fcmp fast oge float %2566, 0.000000e+00
  %2590 = and i1 %2589, %2588
  %2591 = fcmp fast ole float %2566, 1.000000e+00
  %2592 = and i1 %2591, %2590
  %2593 = fcmp fast ogt float %2585, 0.000000e+00
  %2594 = and i1 %2593, %2592
  br i1 %2594, label %2595, label %2718, !dx.controlflow.hints !103

; <label>:2595                                    ; preds = %2550
  %2596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2597 = extractvalue %dx.types.CBufRet.f32 %2596, 2
  %2598 = extractvalue %dx.types.CBufRet.f32 %2596, 3
  %2599 = fmul fast float %2597, %2565
  %2600 = fmul fast float %2598, %2566
  %2601 = call float @dx.op.unary.f32(i32 27, float %2599)  ; Round_ni(value)
  %2602 = call float @dx.op.unary.f32(i32 27, float %2600)  ; Round_ni(value)
  %2603 = fptosi float %2601 to i32
  %2604 = fptosi float %2602 to i32
  %2605 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %2603, i32 %2604, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = lshr i32 %2606, 16
  %2608 = icmp eq i32 %2607, 65535
  br i1 %2608, label %2718, label %2609

; <label>:2609                                    ; preds = %2595
  %2610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2611 = extractvalue %dx.types.CBufRet.f32 %2610, 0
  %2612 = fmul fast float %2611, %2565
  %2613 = extractvalue %dx.types.CBufRet.f32 %2610, 1
  %2614 = fadd fast float %2612, %2613
  %2615 = extractvalue %dx.types.CBufRet.f32 %2610, 2
  %2616 = fmul fast float %2615, %2566
  %2617 = extractvalue %dx.types.CBufRet.f32 %2610, 3
  %2618 = fadd fast float %2616, %2617
  %2619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2614, float %2618, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2620 = extractvalue %dx.types.ResRet.f32 %2619, 0
  %2621 = extractvalue %dx.types.ResRet.f32 %2619, 1
  %2622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2623 = extractvalue %dx.types.CBufRet.f32 %2622, 1
  %2624 = extractvalue %dx.types.CBufRet.f32 %2622, 0
  %2625 = fsub fast float %2623, %2624
  %2626 = fmul fast float %2625, %2620
  %2627 = fadd fast float %2626, %2624
  %2628 = extractvalue %dx.types.CBufRet.f32 %2622, 3
  %2629 = extractvalue %dx.types.CBufRet.f32 %2622, 2
  %2630 = fsub fast float %2628, %2629
  %2631 = fmul fast float %2630, %2621
  %2632 = fadd fast float %2631, %2629
  %2633 = fsub fast float %2552, %2627
  %2634 = fsub fast float %2632, %2627
  %2635 = fdiv fast float %2633, %2634
  %2636 = call float @dx.op.unary.f32(i32 7, float %2635)  ; Saturate(value)
  %2637 = extractvalue %dx.types.CBufRet.f32 %2546, 1
  %2638 = extractvalue %dx.types.CBufRet.f32 %2596, 0
  %2639 = extractvalue %dx.types.CBufRet.f32 %2596, 1
  %2640 = fmul fast float %2638, %2565
  %2641 = fmul fast float %2639, %2566
  %2642 = fmul fast float %2640, 1.250000e-01
  %2643 = fmul fast float %2641, 1.250000e-01
  %2644 = call float @dx.op.unary.f32(i32 27, float %2642)  ; Round_ni(value)
  %2645 = call float @dx.op.unary.f32(i32 27, float %2643)  ; Round_ni(value)
  %2646 = fmul fast float %2644, 8.000000e+00
  %2647 = fmul fast float %2645, 8.000000e+00
  %2648 = fsub fast float %2640, %2646
  %2649 = fsub fast float %2641, %2647
  %2650 = fadd fast float %2648, 5.000000e-01
  %2651 = fadd fast float %2649, 5.000000e-01
  %2652 = and i32 %2607, 255
  %2653 = lshr i32 %2606, 24
  %2654 = mul nuw nsw i32 %2652, 9
  %2655 = uitofp i32 %2654 to float
  %2656 = mul nuw nsw i32 %2653, 9
  %2657 = uitofp i32 %2656 to float
  %2658 = fadd fast float %2650, %2655
  %2659 = fadd fast float %2651, %2657
  %2660 = fdiv fast float %2658, %2547
  %2661 = fdiv fast float %2659, %2637
  %2662 = fmul fast float %2636, 4.375000e-01
  %2663 = fadd fast float %2662, 3.125000e-02
  %2664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2660, float %2661, float %2663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2665 = extractvalue %dx.types.ResRet.f32 %2664, 0
  %2666 = extractvalue %dx.types.ResRet.f32 %2664, 1
  %2667 = extractvalue %dx.types.ResRet.f32 %2664, 2
  %2668 = fadd fast float %2662, 5.312500e-01
  %2669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2660, float %2661, float %2668, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2670 = extractvalue %dx.types.ResRet.f32 %2669, 0
  %2671 = extractvalue %dx.types.ResRet.f32 %2669, 1
  %2672 = extractvalue %dx.types.ResRet.f32 %2669, 2
  %2673 = fmul fast float %2670, 2.000000e+00
  %2674 = fmul fast float %2671, 2.000000e+00
  %2675 = fmul fast float %2672, 2.000000e+00
  %2676 = fadd fast float %2673, -1.000000e+00
  %2677 = fadd fast float %2674, -1.000000e+00
  %2678 = fadd fast float %2675, -1.000000e+00
  %2679 = fmul fast float %2676, %2676
  %2680 = fmul fast float %2677, %2677
  %2681 = fadd fast float %2679, %2680
  %2682 = fmul fast float %2678, %2678
  %2683 = fadd fast float %2681, %2682
  %2684 = call float @dx.op.unary.f32(i32 24, float %2683)  ; Sqrt(value)
  %2685 = fcmp fast ogt float %2684, 0.000000e+00
  br i1 %2685, label %2686, label %2690

; <label>:2686                                    ; preds = %2609
  %2687 = fdiv fast float %2676, %2684
  %2688 = fdiv fast float %2677, %2684
  %2689 = fdiv fast float %2678, %2684
  br label %2690

; <label>:2690                                    ; preds = %2686, %2609
  %2691 = phi float [ %2687, %2686 ], [ 0.000000e+00, %2609 ]
  %2692 = phi float [ %2688, %2686 ], [ 0.000000e+00, %2609 ]
  %2693 = phi float [ %2689, %2686 ], [ 0.000000e+00, %2609 ]
  %2694 = call float @dx.op.dot3.f32(i32 55, float %2691, float %2692, float %2693, float %2373, float %2374, float %2375)  ; Dot3(ax,ay,az,bx,by,bz)
  %2695 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2694)  ; FMax(a,b)
  %2696 = fmul fast float %2695, 0x400C5BF8A0000000
  %2697 = fmul fast float %2665, %2585
  %2698 = fmul fast float %2697, %2696
  %2699 = fmul fast float %2666, %2585
  %2700 = fmul fast float %2699, %2696
  %2701 = fmul fast float %2667, %2585
  %2702 = fmul fast float %2701, %2696
  %2703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2704 = extractvalue %dx.types.CBufRet.f32 %2703, 3
  %2705 = fmul fast float %2698, %2704
  %2706 = fmul fast float %2700, %2704
  %2707 = fmul fast float %2702, %2704
  %2708 = fcmp fast ogt float %2552, %2632
  br i1 %2708, label %2709, label %2718

; <label>:2709                                    ; preds = %2690
  %2710 = fmul fast float %2634, 0x3FC24924A0000000
  %2711 = fsub fast float %2552, %2632
  %2712 = fdiv fast float %2711, %2710
  %2713 = call float @dx.op.unary.f32(i32 7, float %2712)  ; Saturate(value)
  %2714 = fsub fast float 1.000000e+00, %2713
  %2715 = fmul fast float %2714, %2705
  %2716 = fmul fast float %2714, %2706
  %2717 = fmul fast float %2714, %2707
  br label %2718

; <label>:2718                                    ; preds = %2709, %2690, %2595, %2550
  %2719 = phi float [ %2717, %2709 ], [ %2707, %2690 ], [ 0.000000e+00, %2595 ], [ 0.000000e+00, %2550 ]
  %2720 = phi float [ %2716, %2709 ], [ %2706, %2690 ], [ 0.000000e+00, %2595 ], [ 0.000000e+00, %2550 ]
  %2721 = phi float [ %2715, %2709 ], [ %2705, %2690 ], [ 0.000000e+00, %2595 ], [ 0.000000e+00, %2550 ]
  %2722 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2721)  ; FMax(a,b)
  %2723 = fmul fast float %2722, 0x3FD20DD760000000
  %2724 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2387, float %2388, float %2389)  ; Dot3(ax,ay,az,bx,by,bz)
  %2725 = fmul fast float %2724, 0x3FDF454380000000
  %2726 = fmul fast float %2724, %2724
  %2727 = fmul fast float %2726, 0x3FEE471020000000
  %2728 = fadd fast float %2727, 0xBFD42F6020000000
  %2729 = call float @dx.op.dot3.f32(i32 55, float %2722, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2725, float %2728)  ; Dot3(ax,ay,az,bx,by,bz)
  %2730 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2720)  ; FMax(a,b)
  %2731 = fmul fast float %2730, 0x3FD20DD760000000
  %2732 = call float @dx.op.dot3.f32(i32 55, float %2730, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2725, float %2728)  ; Dot3(ax,ay,az,bx,by,bz)
  %2733 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2719)  ; FMax(a,b)
  %2734 = fmul fast float %2733, 0x3FD20DD760000000
  %2735 = call float @dx.op.dot3.f32(i32 55, float %2733, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2725, float %2728)  ; Dot3(ax,ay,az,bx,by,bz)
  %2736 = call float @dx.op.binary.f32(i32 35, float %2723, float 0.000000e+00)  ; FMax(a,b)
  %2737 = call float @dx.op.binary.f32(i32 35, float %2731, float 0.000000e+00)  ; FMax(a,b)
  %2738 = call float @dx.op.binary.f32(i32 35, float %2734, float 0.000000e+00)  ; FMax(a,b)
  %2739 = call float @dx.op.binary.f32(i32 35, float %2729, float 0.000000e+00)  ; FMax(a,b)
  %2740 = call float @dx.op.binary.f32(i32 35, float %2732, float 0.000000e+00)  ; FMax(a,b)
  %2741 = call float @dx.op.binary.f32(i32 35, float %2735, float 0.000000e+00)  ; FMax(a,b)
  %2742 = fmul fast float %2736, %2439
  %2743 = fmul fast float %2737, %2439
  %2744 = fmul fast float %2738, %2439
  %2745 = fadd fast float %2742, %2543
  %2746 = fadd fast float %2743, %2544
  %2747 = fadd fast float %2744, %2545
  %2748 = fmul fast float %2739, %2439
  %2749 = fmul fast float %2740, %2439
  %2750 = fmul fast float %2741, %2439
  %2751 = fadd fast float %2748, %2540
  %2752 = fadd fast float %2749, %2541
  %2753 = fadd fast float %2750, %2542
  br label %2754

; <label>:2754                                    ; preds = %2718, %2539
  %2755 = phi float [ %2751, %2718 ], [ %2540, %2539 ]
  %2756 = phi float [ %2752, %2718 ], [ %2541, %2539 ]
  %2757 = phi float [ %2753, %2718 ], [ %2542, %2539 ]
  %2758 = phi float [ %2742, %2718 ], [ 0.000000e+00, %2539 ]
  %2759 = phi float [ %2743, %2718 ], [ 0.000000e+00, %2539 ]
  %2760 = phi float [ %2744, %2718 ], [ 0.000000e+00, %2539 ]
  %2761 = phi float [ %2745, %2718 ], [ %2543, %2539 ]
  %2762 = phi float [ %2746, %2718 ], [ %2544, %2539 ]
  %2763 = phi float [ %2747, %2718 ], [ %2545, %2539 ]
  %2764 = fcmp fast olt float %2439, 1.000000e+00
  br i1 %2764, label %2765, label %3598, !dx.controlflow.hints !104

; <label>:2765                                    ; preds = %2754
  %2766 = extractvalue %dx.types.CBufRet.f32 %2395, 2
  %2767 = fadd fast float %2766, %139
  %2768 = fmul fast float %2373, 3.200000e+01
  %2769 = fmul fast float %2374, 3.200000e+01
  %2770 = fadd fast float %2398, %2768
  %2771 = fadd fast float %2399, %2769
  %2772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2773 = extractvalue %dx.types.CBufRet.f32 %2772, 0
  %2774 = extractvalue %dx.types.CBufRet.f32 %2772, 1
  %2775 = fsub fast float %2770, %2773
  %2776 = fsub fast float %2771, %2774
  %2777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2778 = extractvalue %dx.types.CBufRet.f32 %2777, 0
  %2779 = extractvalue %dx.types.CBufRet.f32 %2777, 1
  %2780 = fmul fast float %2775, %2778
  %2781 = fmul fast float %2776, %2779
  %2782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2783 = extractvalue %dx.types.CBufRet.f32 %2782, 0
  %2784 = fmul fast float %2780, %2783
  %2785 = extractvalue %dx.types.CBufRet.f32 %2782, 1
  %2786 = fadd fast float %2784, %2785
  %2787 = extractvalue %dx.types.CBufRet.f32 %2782, 2
  %2788 = fmul fast float %2787, %2781
  %2789 = extractvalue %dx.types.CBufRet.f32 %2782, 3
  %2790 = fadd fast float %2788, %2789
  %2791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2786, float %2790, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2792 = extractvalue %dx.types.ResRet.f32 %2791, 0
  %2793 = extractvalue %dx.types.ResRet.f32 %2791, 1
  %2794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2795 = extractvalue %dx.types.CBufRet.f32 %2794, 1
  %2796 = extractvalue %dx.types.CBufRet.f32 %2794, 0
  %2797 = fsub fast float %2795, %2796
  %2798 = fmul fast float %2797, %2792
  %2799 = fadd fast float %2798, %2796
  %2800 = extractvalue %dx.types.CBufRet.f32 %2794, 3
  %2801 = extractvalue %dx.types.CBufRet.f32 %2794, 2
  %2802 = fsub fast float %2800, %2801
  %2803 = fmul fast float %2802, %2793
  %2804 = fadd fast float %2803, %2801
  %2805 = fsub fast float %2767, %2799
  %2806 = fsub fast float %2804, %2799
  %2807 = fdiv fast float %2805, %2806
  %2808 = call float @dx.op.unary.f32(i32 7, float %2807)  ; Saturate(value)
  %2809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.f32 %2809, 0
  %2811 = fmul fast float %2810, %2808
  %2812 = extractvalue %dx.types.CBufRet.f32 %2809, 1
  %2813 = fadd fast float %2811, %2812
  %2814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %58, float %2786, float %2790, float %2813, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2815 = extractvalue %dx.types.ResRet.f32 %2814, 0
  %2816 = extractvalue %dx.types.ResRet.f32 %2814, 1
  %2817 = extractvalue %dx.types.ResRet.f32 %2814, 2
  %2818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2819 = extractvalue %dx.types.CBufRet.f32 %2818, 0
  %2820 = extractvalue %dx.types.CBufRet.f32 %2818, 1
  %2821 = extractvalue %dx.types.CBufRet.f32 %2818, 2
  %2822 = fmul fast float %2819, %2815
  %2823 = fmul fast float %2820, %2816
  %2824 = fmul fast float %2821, %2817
  %2825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2826 = extractvalue %dx.types.CBufRet.f32 %2825, 0
  %2827 = extractvalue %dx.types.CBufRet.f32 %2825, 1
  %2828 = extractvalue %dx.types.CBufRet.f32 %2825, 2
  %2829 = fadd fast float %2822, %2826
  %2830 = fadd fast float %2823, %2827
  %2831 = fadd fast float %2824, %2828
  %2832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2833 = extractvalue %dx.types.CBufRet.f32 %2832, 0
  %2834 = fmul fast float %2833, %2780
  %2835 = extractvalue %dx.types.CBufRet.f32 %2832, 1
  %2836 = fadd fast float %2834, %2835
  %2837 = extractvalue %dx.types.CBufRet.f32 %2832, 2
  %2838 = fmul fast float %2837, %2781
  %2839 = extractvalue %dx.types.CBufRet.f32 %2832, 3
  %2840 = fadd fast float %2838, %2839
  %2841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2842 = extractvalue %dx.types.CBufRet.f32 %2841, 0
  %2843 = extractvalue %dx.types.CBufRet.f32 %2841, 1
  %2844 = extractvalue %dx.types.CBufRet.f32 %2841, 2
  %2845 = extractvalue %dx.types.CBufRet.f32 %2841, 3
  %2846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2847 = extractvalue %dx.types.CBufRet.f32 %2846, 0
  %2848 = extractvalue %dx.types.CBufRet.f32 %2846, 1
  %2849 = extractvalue %dx.types.CBufRet.f32 %2846, 2
  %2850 = extractvalue %dx.types.CBufRet.f32 %2846, 3
  %2851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2836, float %2840, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2852 = extractvalue %dx.types.ResRet.f32 %2851, 0
  %2853 = extractvalue %dx.types.ResRet.f32 %2851, 1
  %2854 = extractvalue %dx.types.ResRet.f32 %2851, 2
  %2855 = extractvalue %dx.types.ResRet.f32 %2851, 3
  %2856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2836, float %2840, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2857 = extractvalue %dx.types.ResRet.f32 %2856, 0
  %2858 = extractvalue %dx.types.ResRet.f32 %2856, 1
  %2859 = extractvalue %dx.types.ResRet.f32 %2856, 2
  %2860 = extractvalue %dx.types.ResRet.f32 %2856, 3
  %2861 = fmul fast float %2852, %2829
  %2862 = fmul fast float %2857, %2829
  %2863 = fmul fast float %2859, %2829
  %2864 = fmul fast float %2855, %2829
  %2865 = fadd fast float %2861, %2842
  %2866 = fadd fast float %2862, %2843
  %2867 = fadd fast float %2863, %2844
  %2868 = fadd fast float %2864, %2845
  %2869 = fmul fast float %2853, %2829
  %2870 = fmul fast float %2858, %2829
  %2871 = fadd fast float %2869, %2847
  %2872 = fadd fast float %2870, %2848
  %2873 = fmul fast float %2854, %2829
  %2874 = fmul fast float %2860, %2829
  %2875 = fadd fast float %2873, %2849
  %2876 = fadd fast float %2874, %2850
  %2877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2836, float %2840, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2878 = extractvalue %dx.types.ResRet.f32 %2877, 0
  %2879 = extractvalue %dx.types.ResRet.f32 %2877, 1
  %2880 = extractvalue %dx.types.ResRet.f32 %2877, 2
  %2881 = extractvalue %dx.types.ResRet.f32 %2877, 3
  %2882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2836, float %2840, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2883 = extractvalue %dx.types.ResRet.f32 %2882, 0
  %2884 = extractvalue %dx.types.ResRet.f32 %2882, 1
  %2885 = extractvalue %dx.types.ResRet.f32 %2882, 2
  %2886 = extractvalue %dx.types.ResRet.f32 %2882, 3
  %2887 = fmul fast float %2878, %2830
  %2888 = fmul fast float %2883, %2830
  %2889 = fmul fast float %2885, %2830
  %2890 = fmul fast float %2881, %2830
  %2891 = fadd fast float %2865, %2887
  %2892 = fadd fast float %2866, %2888
  %2893 = fadd fast float %2867, %2889
  %2894 = fadd fast float %2868, %2890
  %2895 = fmul fast float %2879, %2830
  %2896 = fmul fast float %2884, %2830
  %2897 = fadd fast float %2871, %2895
  %2898 = fadd fast float %2872, %2896
  %2899 = fmul fast float %2880, %2830
  %2900 = fmul fast float %2886, %2830
  %2901 = fadd fast float %2875, %2899
  %2902 = fadd fast float %2876, %2900
  %2903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2836, float %2840, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2904 = extractvalue %dx.types.ResRet.f32 %2903, 0
  %2905 = extractvalue %dx.types.ResRet.f32 %2903, 1
  %2906 = extractvalue %dx.types.ResRet.f32 %2903, 2
  %2907 = extractvalue %dx.types.ResRet.f32 %2903, 3
  %2908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2836, float %2840, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2909 = extractvalue %dx.types.ResRet.f32 %2908, 0
  %2910 = extractvalue %dx.types.ResRet.f32 %2908, 1
  %2911 = extractvalue %dx.types.ResRet.f32 %2908, 2
  %2912 = extractvalue %dx.types.ResRet.f32 %2908, 3
  %2913 = fmul fast float %2904, %2831
  %2914 = fmul fast float %2909, %2831
  %2915 = fmul fast float %2911, %2831
  %2916 = fmul fast float %2907, %2831
  %2917 = fadd fast float %2891, %2913
  %2918 = fadd fast float %2892, %2914
  %2919 = fadd fast float %2893, %2915
  %2920 = fadd fast float %2894, %2916
  %2921 = fmul fast float %2905, %2831
  %2922 = fmul fast float %2910, %2831
  %2923 = fadd fast float %2897, %2921
  %2924 = fadd fast float %2898, %2922
  %2925 = fmul fast float %2906, %2831
  %2926 = fmul fast float %2912, %2831
  %2927 = fadd fast float %2901, %2925
  %2928 = fadd fast float %2902, %2926
  %2929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2930 = extractvalue %dx.types.CBufRet.f32 %2929, 0
  %2931 = fsub fast float %2398, %2930
  %2932 = fsub fast float %2773, %2398
  %2933 = call float @dx.op.binary.f32(i32 35, float %2932, float %2931)  ; FMax(a,b)
  %2934 = extractvalue %dx.types.CBufRet.f32 %2929, 1
  %2935 = fsub fast float %2399, %2934
  %2936 = fsub fast float %2774, %2399
  %2937 = call float @dx.op.binary.f32(i32 35, float %2936, float %2935)  ; FMax(a,b)
  %2938 = call float @dx.op.binary.f32(i32 35, float %2933, float %2937)  ; FMax(a,b)
  %2939 = extractvalue %dx.types.CBufRet.f32 %2777, 3
  %2940 = fmul fast float %2939, %2938
  %2941 = call float @dx.op.unary.f32(i32 7, float %2940)  ; Saturate(value)
  %2942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2943 = extractvalue %dx.types.CBufRet.f32 %2942, 0
  %2944 = extractvalue %dx.types.CBufRet.f32 %2942, 1
  %2945 = extractvalue %dx.types.CBufRet.f32 %2942, 2
  %2946 = extractvalue %dx.types.CBufRet.f32 %2942, 3
  %2947 = fsub fast float %2943, %2917
  %2948 = fsub fast float %2944, %2918
  %2949 = fsub fast float %2945, %2919
  %2950 = fsub fast float %2946, %2920
  %2951 = fmul fast float %2947, %2941
  %2952 = fmul fast float %2948, %2941
  %2953 = fmul fast float %2949, %2941
  %2954 = fmul fast float %2950, %2941
  %2955 = fadd fast float %2951, %2917
  %2956 = fadd fast float %2952, %2918
  %2957 = fadd fast float %2953, %2919
  %2958 = fadd fast float %2954, %2920
  %2959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2960 = extractvalue %dx.types.CBufRet.f32 %2959, 0
  %2961 = extractvalue %dx.types.CBufRet.f32 %2959, 1
  %2962 = fsub fast float %2960, %2923
  %2963 = fsub fast float %2961, %2924
  %2964 = fmul fast float %2962, %2941
  %2965 = fmul fast float %2963, %2941
  %2966 = fadd fast float %2964, %2923
  %2967 = fadd fast float %2965, %2924
  %2968 = extractvalue %dx.types.CBufRet.f32 %2959, 2
  %2969 = extractvalue %dx.types.CBufRet.f32 %2959, 3
  %2970 = fsub fast float %2968, %2927
  %2971 = fsub fast float %2969, %2928
  %2972 = fmul fast float %2970, %2941
  %2973 = fmul fast float %2971, %2941
  %2974 = fadd fast float %2972, %2927
  %2975 = fadd fast float %2973, %2928
  %2976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2977 = extractvalue %dx.types.CBufRet.f32 %2976, 0
  %2978 = fmul fast float %2977, %2955
  %2979 = fmul fast float %2977, %2956
  %2980 = fmul fast float %2977, %2957
  %2981 = fmul fast float %2977, %2958
  %2982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2983 = extractvalue %dx.types.CBufRet.f32 %2982, 0
  %2984 = fmul fast float %2983, %2966
  %2985 = fmul fast float %2983, %2967
  %2986 = fadd fast float %2984, %2978
  %2987 = fadd fast float %2985, %2980
  %2988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2989 = extractvalue %dx.types.CBufRet.f32 %2988, 0
  %2990 = fmul fast float %2989, %2974
  %2991 = fmul fast float %2989, %2975
  %2992 = fadd fast float %2986, %2990
  %2993 = fadd fast float %2987, %2991
  %2994 = extractvalue %dx.types.CBufRet.f32 %2976, 1
  %2995 = fmul fast float %2994, %2955
  %2996 = fmul fast float %2994, %2956
  %2997 = fmul fast float %2994, %2957
  %2998 = fmul fast float %2994, %2958
  %2999 = extractvalue %dx.types.CBufRet.f32 %2982, 1
  %3000 = fmul fast float %2999, %2966
  %3001 = fmul fast float %2999, %2967
  %3002 = fadd fast float %3000, %2995
  %3003 = fadd fast float %3001, %2997
  %3004 = extractvalue %dx.types.CBufRet.f32 %2988, 1
  %3005 = fmul fast float %3004, %2974
  %3006 = fmul fast float %3004, %2975
  %3007 = fadd fast float %3002, %3005
  %3008 = fadd fast float %3003, %3006
  %3009 = extractvalue %dx.types.CBufRet.f32 %2976, 2
  %3010 = fmul fast float %3009, %2955
  %3011 = fmul fast float %3009, %2956
  %3012 = fmul fast float %3009, %2957
  %3013 = fmul fast float %3009, %2958
  %3014 = extractvalue %dx.types.CBufRet.f32 %2982, 2
  %3015 = fmul fast float %3014, %2966
  %3016 = fmul fast float %3014, %2967
  %3017 = fadd fast float %3015, %3010
  %3018 = fadd fast float %3016, %3012
  %3019 = extractvalue %dx.types.CBufRet.f32 %2988, 2
  %3020 = fmul fast float %3019, %2974
  %3021 = fmul fast float %3019, %2975
  %3022 = fadd fast float %3017, %3020
  %3023 = fadd fast float %3018, %3021
  %3024 = fmul fast float %3011, %3011
  %3025 = fmul fast float %3023, %3023
  %3026 = fmul fast float %3013, %3013
  %3027 = fadd fast float %3026, %3024
  %3028 = fadd fast float %3027, %3025
  %3029 = call float @dx.op.unary.f32(i32 24, float %3028)  ; Sqrt(value)
  %3030 = fcmp fast ugt float %3029, 0.000000e+00
  br i1 %3030, label %3031, label %3046

; <label>:3031                                    ; preds = %2765
  %3032 = fsub fast float -0.000000e+00, %3013
  %3033 = fdiv fast float %3032, %3029
  %3034 = fsub fast float -0.000000e+00, %3011
  %3035 = fdiv fast float %3034, %3029
  %3036 = fdiv fast float %3023, %3029
  %3037 = fmul fast float %3022, 0x3FE279A760000000
  %3038 = fmul fast float %3035, %3011
  %3039 = fmul fast float %3036, %3023
  %3040 = fmul fast float %3033, %3013
  %3041 = fadd fast float %3038, %3040
  %3042 = fsub fast float %3041, %3039
  %3043 = call float @dx.op.unary.f32(i32 6, float %3042)  ; FAbs(value)
  %3044 = fadd fast float %3043, 0x3DDB7CDFE0000000
  %3045 = fdiv fast float %3037, %3044
  br label %3046

; <label>:3046                                    ; preds = %3031, %2765
  %3047 = phi float [ %3045, %3031 ], [ 1.000000e+00, %2765 ]
  %3048 = fmul fast float %2996, %2996
  %3049 = fmul fast float %3008, %3008
  %3050 = fmul fast float %2998, %2998
  %3051 = fadd fast float %3050, %3048
  %3052 = fadd fast float %3051, %3049
  %3053 = call float @dx.op.unary.f32(i32 24, float %3052)  ; Sqrt(value)
  %3054 = fcmp fast ugt float %3053, 0.000000e+00
  br i1 %3054, label %3055, label %3070

; <label>:3055                                    ; preds = %3046
  %3056 = fsub fast float -0.000000e+00, %2998
  %3057 = fdiv fast float %3056, %3053
  %3058 = fsub fast float -0.000000e+00, %2996
  %3059 = fdiv fast float %3058, %3053
  %3060 = fdiv fast float %3008, %3053
  %3061 = fmul fast float %3007, 0x3FE279A760000000
  %3062 = fmul fast float %3059, %2996
  %3063 = fmul fast float %3060, %3008
  %3064 = fmul fast float %3057, %2998
  %3065 = fadd fast float %3062, %3064
  %3066 = fsub fast float %3065, %3063
  %3067 = call float @dx.op.unary.f32(i32 6, float %3066)  ; FAbs(value)
  %3068 = fadd fast float %3067, 0x3DDB7CDFE0000000
  %3069 = fdiv fast float %3061, %3068
  br label %3070

; <label>:3070                                    ; preds = %3055, %3046
  %3071 = phi float [ %3069, %3055 ], [ 1.000000e+00, %3046 ]
  %3072 = call float @dx.op.binary.f32(i32 36, float %3071, float %3047)  ; FMin(a,b)
  %3073 = fmul fast float %2979, %2979
  %3074 = fmul fast float %2993, %2993
  %3075 = fmul fast float %2981, %2981
  %3076 = fadd fast float %3075, %3073
  %3077 = fadd fast float %3076, %3074
  %3078 = call float @dx.op.unary.f32(i32 24, float %3077)  ; Sqrt(value)
  %3079 = fcmp fast ugt float %3078, 0.000000e+00
  br i1 %3079, label %3080, label %3095

; <label>:3080                                    ; preds = %3070
  %3081 = fsub fast float -0.000000e+00, %2981
  %3082 = fdiv fast float %3081, %3078
  %3083 = fsub fast float -0.000000e+00, %2979
  %3084 = fdiv fast float %3083, %3078
  %3085 = fdiv fast float %2993, %3078
  %3086 = fmul fast float %2992, 0x3FE279A760000000
  %3087 = fmul fast float %3084, %2979
  %3088 = fmul fast float %3085, %2993
  %3089 = fmul fast float %3082, %2981
  %3090 = fadd fast float %3087, %3089
  %3091 = fsub fast float %3090, %3088
  %3092 = call float @dx.op.unary.f32(i32 6, float %3091)  ; FAbs(value)
  %3093 = fadd fast float %3092, 0x3DDB7CDFE0000000
  %3094 = fdiv fast float %3086, %3093
  br label %3095

; <label>:3095                                    ; preds = %3080, %3070
  %3096 = phi float [ %3094, %3080 ], [ 1.000000e+00, %3070 ]
  %3097 = call float @dx.op.binary.f32(i32 36, float %3096, float %3072)  ; FMin(a,b)
  %3098 = call float @dx.op.unary.f32(i32 7, float %3097)  ; Saturate(value)
  %3099 = fcmp fast olt float %3098, 1.000000e+00
  br i1 %3099, label %3100, label %3110

; <label>:3100                                    ; preds = %3095
  %3101 = fmul fast float %3098, %2979
  %3102 = fmul fast float %3098, %2993
  %3103 = fmul fast float %3098, %2981
  %3104 = fmul fast float %3098, %2996
  %3105 = fmul fast float %3098, %3008
  %3106 = fmul fast float %3098, %2998
  %3107 = fmul fast float %3098, %3011
  %3108 = fmul fast float %3098, %3023
  %3109 = fmul fast float %3098, %3013
  br label %3110

; <label>:3110                                    ; preds = %3100, %3095
  %3111 = phi float [ %3107, %3100 ], [ %3011, %3095 ]
  %3112 = phi float [ %3108, %3100 ], [ %3023, %3095 ]
  %3113 = phi float [ %3109, %3100 ], [ %3013, %3095 ]
  %3114 = phi float [ %3104, %3100 ], [ %2996, %3095 ]
  %3115 = phi float [ %3105, %3100 ], [ %3008, %3095 ]
  %3116 = phi float [ %3106, %3100 ], [ %2998, %3095 ]
  %3117 = phi float [ %3101, %3100 ], [ %2979, %3095 ]
  %3118 = phi float [ %3102, %3100 ], [ %2993, %3095 ]
  %3119 = phi float [ %3103, %3100 ], [ %2981, %3095 ]
  %3120 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2992)  ; FMax(a,b)
  %3121 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3007)  ; FMax(a,b)
  %3122 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3022)  ; FMax(a,b)
  %3123 = fcmp fast oge float %2780, 0.000000e+00
  %3124 = and i1 %3123, %2548
  %3125 = fcmp fast ole float %2780, 1.000000e+00
  %3126 = and i1 %3125, %3124
  %3127 = fcmp fast oge float %2781, 0.000000e+00
  %3128 = and i1 %3127, %3126
  %3129 = fcmp fast ole float %2781, 1.000000e+00
  %3130 = and i1 %3129, %3128
  br i1 %3130, label %3131, label %3276, !dx.controlflow.hints !105

; <label>:3131                                    ; preds = %3110
  %3132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3133 = extractvalue %dx.types.CBufRet.f32 %3132, 2
  %3134 = extractvalue %dx.types.CBufRet.f32 %3132, 3
  %3135 = fmul fast float %3133, %2780
  %3136 = fmul fast float %3134, %2781
  %3137 = call float @dx.op.unary.f32(i32 27, float %3135)  ; Round_ni(value)
  %3138 = call float @dx.op.unary.f32(i32 27, float %3136)  ; Round_ni(value)
  %3139 = fptosi float %3137 to i32
  %3140 = fptosi float %3138 to i32
  %3141 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %3139, i32 %3140, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3142 = extractvalue %dx.types.ResRet.i32 %3141, 0
  %3143 = and i32 %3142, 65535
  %3144 = lshr i32 %3142, 16
  %3145 = icmp eq i32 %3143, 65535
  br i1 %3145, label %3182, label %3146

; <label>:3146                                    ; preds = %3131
  %3147 = extractvalue %dx.types.CBufRet.f32 %2546, 1
  %3148 = extractvalue %dx.types.CBufRet.f32 %3132, 0
  %3149 = extractvalue %dx.types.CBufRet.f32 %3132, 1
  %3150 = fmul fast float %3148, %2780
  %3151 = fmul fast float %3149, %2781
  %3152 = fmul fast float %3150, 1.250000e-01
  %3153 = fmul fast float %3151, 1.250000e-01
  %3154 = call float @dx.op.unary.f32(i32 27, float %3152)  ; Round_ni(value)
  %3155 = call float @dx.op.unary.f32(i32 27, float %3153)  ; Round_ni(value)
  %3156 = fmul fast float %3154, 8.000000e+00
  %3157 = fmul fast float %3155, 8.000000e+00
  %3158 = and i32 %3142, 255
  %3159 = lshr i32 %3142, 8
  %3160 = and i32 %3159, 255
  %3161 = mul nuw nsw i32 %3158, 9
  %3162 = uitofp i32 %3161 to float
  %3163 = mul nuw nsw i32 %3160, 9
  %3164 = uitofp i32 %3163 to float
  %3165 = fadd fast float %3162, 5.000000e-01
  %3166 = fadd fast float %3165, %3150
  %3167 = fsub fast float %3166, %3156
  %3168 = fadd fast float %3164, 5.000000e-01
  %3169 = fadd fast float %3168, %3151
  %3170 = fsub fast float %3169, %3157
  %3171 = fdiv fast float %3167, %2547
  %3172 = fdiv fast float %3170, %3147
  %3173 = fmul fast float %2808, 4.375000e-01
  %3174 = fadd fast float %3173, 3.125000e-02
  %3175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3171, float %3172, float %3174, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3176 = extractvalue %dx.types.ResRet.f32 %3175, 0
  %3177 = extractvalue %dx.types.ResRet.f32 %3175, 1
  %3178 = extractvalue %dx.types.ResRet.f32 %3175, 2
  %3179 = fadd fast float %3176, %3120
  %3180 = fadd fast float %3177, %3121
  %3181 = fadd fast float %3178, %3122
  br label %3182

; <label>:3182                                    ; preds = %3146, %3131
  %3183 = phi float [ %3181, %3146 ], [ %3122, %3131 ]
  %3184 = phi float [ %3180, %3146 ], [ %3121, %3131 ]
  %3185 = phi float [ %3179, %3146 ], [ %3120, %3131 ]
  %3186 = icmp eq i32 %3144, 65535
  br i1 %3186, label %3276, label %3187

; <label>:3187                                    ; preds = %3182
  %3188 = extractvalue %dx.types.CBufRet.f32 %2546, 1
  %3189 = extractvalue %dx.types.CBufRet.f32 %3132, 0
  %3190 = extractvalue %dx.types.CBufRet.f32 %3132, 1
  %3191 = fmul fast float %3189, %2780
  %3192 = fmul fast float %3190, %2781
  %3193 = fmul fast float %3191, 1.250000e-01
  %3194 = fmul fast float %3192, 1.250000e-01
  %3195 = call float @dx.op.unary.f32(i32 27, float %3193)  ; Round_ni(value)
  %3196 = call float @dx.op.unary.f32(i32 27, float %3194)  ; Round_ni(value)
  %3197 = fmul fast float %3195, 8.000000e+00
  %3198 = fmul fast float %3196, 8.000000e+00
  %3199 = fsub fast float %3191, %3197
  %3200 = fsub fast float %3192, %3198
  %3201 = fadd fast float %3199, 5.000000e-01
  %3202 = fadd fast float %3200, 5.000000e-01
  %3203 = and i32 %3144, 255
  %3204 = lshr i32 %3142, 24
  %3205 = mul nuw nsw i32 %3203, 9
  %3206 = uitofp i32 %3205 to float
  %3207 = mul nuw nsw i32 %3204, 9
  %3208 = uitofp i32 %3207 to float
  %3209 = fadd fast float %3201, %3206
  %3210 = fadd fast float %3202, %3208
  %3211 = fdiv fast float %3209, %2547
  %3212 = fdiv fast float %3210, %3188
  %3213 = fmul fast float %2808, 4.375000e-01
  %3214 = fadd fast float %3213, 3.125000e-02
  %3215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3211, float %3212, float %3214, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3216 = extractvalue %dx.types.ResRet.f32 %3215, 0
  %3217 = extractvalue %dx.types.ResRet.f32 %3215, 1
  %3218 = extractvalue %dx.types.ResRet.f32 %3215, 2
  %3219 = fadd fast float %3213, 5.312500e-01
  %3220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3211, float %3212, float %3219, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3221 = extractvalue %dx.types.ResRet.f32 %3220, 0
  %3222 = extractvalue %dx.types.ResRet.f32 %3220, 1
  %3223 = extractvalue %dx.types.ResRet.f32 %3220, 2
  %3224 = fmul fast float %3221, 2.000000e+00
  %3225 = fmul fast float %3222, 2.000000e+00
  %3226 = fmul fast float %3223, 2.000000e+00
  %3227 = fadd fast float %3224, -1.000000e+00
  %3228 = fadd fast float %3225, -1.000000e+00
  %3229 = fadd fast float %3226, -1.000000e+00
  %3230 = fmul fast float %3227, %3227
  %3231 = fmul fast float %3228, %3228
  %3232 = fadd fast float %3230, %3231
  %3233 = fmul fast float %3229, %3229
  %3234 = fadd fast float %3232, %3233
  %3235 = call float @dx.op.unary.f32(i32 24, float %3234)  ; Sqrt(value)
  %3236 = fcmp fast ogt float %3235, 0.000000e+00
  br i1 %3236, label %3237, label %3241

; <label>:3237                                    ; preds = %3187
  %3238 = fdiv fast float %3227, %3235
  %3239 = fdiv fast float %3228, %3235
  %3240 = fdiv fast float %3229, %3235
  br label %3241

; <label>:3241                                    ; preds = %3237, %3187
  %3242 = phi float [ %3238, %3237 ], [ 0.000000e+00, %3187 ]
  %3243 = phi float [ %3239, %3237 ], [ 0.000000e+00, %3187 ]
  %3244 = phi float [ %3240, %3237 ], [ 0.000000e+00, %3187 ]
  %3245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3246 = extractvalue %dx.types.CBufRet.f32 %3245, 0
  %3247 = extractvalue %dx.types.CBufRet.f32 %3245, 1
  %3248 = fsub fast float %2398, %3246
  %3249 = fsub fast float %2399, %3247
  %3250 = fmul fast float %3248, %3248
  %3251 = fmul fast float %3249, %3249
  %3252 = fadd fast float %3250, %3251
  %3253 = call float @dx.op.unary.f32(i32 24, float %3252)  ; Sqrt(value)
  %3254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3255 = extractvalue %dx.types.CBufRet.f32 %3254, 0
  %3256 = extractvalue %dx.types.CBufRet.f32 %3254, 1
  %3257 = fsub fast float %3253, %3255
  %3258 = fdiv fast float %3257, %3256
  %3259 = call float @dx.op.unary.f32(i32 7, float %3258)  ; Saturate(value)
  %3260 = fmul fast float %3259, 2.000000e+00
  %3261 = fsub fast float 3.000000e+00, %3260
  %3262 = fmul fast float %3259, %3259
  %3263 = fmul fast float %3262, %3261
  %3264 = call float @dx.op.dot3.f32(i32 55, float %3242, float %3243, float %3244, float %2373, float %2374, float %2375)  ; Dot3(ax,ay,az,bx,by,bz)
  %3265 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3264)  ; FMax(a,b)
  %3266 = fmul fast float %3265, 0x400C5BF8A0000000
  %3267 = fmul fast float %3263, %3216
  %3268 = fmul fast float %3267, %3266
  %3269 = fadd fast float %3268, %3185
  %3270 = fmul fast float %3263, %3217
  %3271 = fmul fast float %3270, %3266
  %3272 = fadd fast float %3271, %3184
  %3273 = fmul fast float %3263, %3218
  %3274 = fmul fast float %3273, %3266
  %3275 = fadd fast float %3274, %3183
  br label %3276

; <label>:3276                                    ; preds = %3241, %3182, %3110
  %3277 = phi float [ %3275, %3241 ], [ %3183, %3182 ], [ %3122, %3110 ]
  %3278 = phi float [ %3272, %3241 ], [ %3184, %3182 ], [ %3121, %3110 ]
  %3279 = phi float [ %3269, %3241 ], [ %3185, %3182 ], [ %3120, %3110 ]
  %3280 = fcmp fast ogt float %2767, %2804
  %3281 = and i1 %3123, %3280
  %3282 = and i1 %3125, %3281
  %3283 = and i1 %3127, %3282
  %3284 = and i1 %3129, %3283
  br i1 %3284, label %3285, label %3342, !dx.controlflow.hints !106

; <label>:3285                                    ; preds = %3276
  %3286 = fmul fast float %2806, 0x3FC24924A0000000
  %3287 = fsub fast float %2767, %2804
  %3288 = fdiv fast float %3287, %3286
  %3289 = call float @dx.op.unary.f32(i32 7, float %3288)  ; Saturate(value)
  %3290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3291 = extractvalue %dx.types.CBufRet.f32 %3290, 0
  %3292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3293 = extractvalue %dx.types.CBufRet.f32 %3292, 0
  %3294 = extractvalue %dx.types.CBufRet.f32 %3292, 1
  %3295 = extractvalue %dx.types.CBufRet.f32 %3292, 2
  %3296 = fsub fast float %3291, %3279
  %3297 = fsub fast float %3293, %3117
  %3298 = fsub fast float %3294, %3118
  %3299 = fsub fast float %3295, %3119
  %3300 = fmul fast float %3296, %3289
  %3301 = fmul fast float %3297, %3289
  %3302 = fmul fast float %3298, %3289
  %3303 = fmul fast float %3299, %3289
  %3304 = fadd fast float %3300, %3279
  %3305 = fadd fast float %3301, %3117
  %3306 = fadd fast float %3302, %3118
  %3307 = fadd fast float %3303, %3119
  %3308 = extractvalue %dx.types.CBufRet.f32 %3290, 1
  %3309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3310 = extractvalue %dx.types.CBufRet.f32 %3309, 0
  %3311 = extractvalue %dx.types.CBufRet.f32 %3309, 1
  %3312 = extractvalue %dx.types.CBufRet.f32 %3309, 2
  %3313 = fsub fast float %3308, %3278
  %3314 = fsub fast float %3310, %3114
  %3315 = fsub fast float %3311, %3115
  %3316 = fsub fast float %3312, %3116
  %3317 = fmul fast float %3313, %3289
  %3318 = fmul fast float %3314, %3289
  %3319 = fmul fast float %3315, %3289
  %3320 = fmul fast float %3316, %3289
  %3321 = fadd fast float %3317, %3278
  %3322 = fadd fast float %3318, %3114
  %3323 = fadd fast float %3319, %3115
  %3324 = fadd fast float %3320, %3116
  %3325 = extractvalue %dx.types.CBufRet.f32 %3290, 2
  %3326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3327 = extractvalue %dx.types.CBufRet.f32 %3326, 0
  %3328 = extractvalue %dx.types.CBufRet.f32 %3326, 1
  %3329 = extractvalue %dx.types.CBufRet.f32 %3326, 2
  %3330 = fsub fast float %3325, %3277
  %3331 = fsub fast float %3327, %3111
  %3332 = fsub fast float %3328, %3112
  %3333 = fsub fast float %3329, %3113
  %3334 = fmul fast float %3330, %3289
  %3335 = fmul fast float %3331, %3289
  %3336 = fmul fast float %3332, %3289
  %3337 = fmul fast float %3333, %3289
  %3338 = fadd fast float %3334, %3277
  %3339 = fadd fast float %3335, %3111
  %3340 = fadd fast float %3336, %3112
  %3341 = fadd fast float %3337, %3113
  br label %3342

; <label>:3342                                    ; preds = %3285, %3276
  %3343 = phi float [ %3338, %3285 ], [ %3277, %3276 ]
  %3344 = phi float [ %3339, %3285 ], [ %3111, %3276 ]
  %3345 = phi float [ %3340, %3285 ], [ %3112, %3276 ]
  %3346 = phi float [ %3341, %3285 ], [ %3113, %3276 ]
  %3347 = phi float [ %3321, %3285 ], [ %3278, %3276 ]
  %3348 = phi float [ %3322, %3285 ], [ %3114, %3276 ]
  %3349 = phi float [ %3323, %3285 ], [ %3115, %3276 ]
  %3350 = phi float [ %3324, %3285 ], [ %3116, %3276 ]
  %3351 = phi float [ %3304, %3285 ], [ %3279, %3276 ]
  %3352 = phi float [ %3305, %3285 ], [ %3117, %3276 ]
  %3353 = phi float [ %3306, %3285 ], [ %3118, %3276 ]
  %3354 = phi float [ %3307, %3285 ], [ %3119, %3276 ]
  %3355 = extractvalue %dx.types.CBufRet.f32 %2929, 3
  %3356 = fmul fast float %3355, %3351
  %3357 = fmul fast float %3355, %3347
  %3358 = fmul fast float %3355, %3343
  %3359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3360 = extractvalue %dx.types.CBufRet.f32 %3359, 3
  %3361 = fmul fast float %3356, %3360
  %3362 = fmul fast float %3357, %3360
  %3363 = fmul fast float %3358, %3360
  %3364 = fmul fast float %3352, 1.500000e+00
  %3365 = fmul fast float %3364, %3355
  %3366 = fmul fast float %3365, %3360
  %3367 = fmul fast float %3353, 1.500000e+00
  %3368 = fmul fast float %3367, %3355
  %3369 = fmul fast float %3368, %3360
  %3370 = fmul fast float %3354, 1.500000e+00
  %3371 = fmul fast float %3370, %3355
  %3372 = fmul fast float %3371, %3360
  %3373 = fmul fast float %3348, 1.500000e+00
  %3374 = fmul fast float %3373, %3355
  %3375 = fmul fast float %3374, %3360
  %3376 = fmul fast float %3349, 1.500000e+00
  %3377 = fmul fast float %3376, %3355
  %3378 = fmul fast float %3377, %3360
  %3379 = fmul fast float %3350, 1.500000e+00
  %3380 = fmul fast float %3379, %3355
  %3381 = fmul fast float %3380, %3360
  %3382 = fmul fast float %3344, 1.500000e+00
  %3383 = fmul fast float %3382, %3355
  %3384 = fmul fast float %3383, %3360
  %3385 = fmul fast float %3345, 1.500000e+00
  %3386 = fmul fast float %3385, %3355
  %3387 = fmul fast float %3386, %3360
  %3388 = fmul fast float %3346, 1.500000e+00
  %3389 = fmul fast float %3388, %3355
  %3390 = fmul fast float %3389, %3360
  %3391 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3361)  ; FMax(a,b)
  %3392 = call float @dx.op.dot3.f32(i32 55, float %3366, float %3369, float %3372, float %3366, float %3369, float %3372)  ; Dot3(ax,ay,az,bx,by,bz)
  %3393 = fcmp fast oeq float %3392, 0.000000e+00
  %3394 = fcmp fast oeq float %3391, 0.000000e+00
  %3395 = or i1 %3394, %3393
  br i1 %3395, label %3425, label %3396

; <label>:3396                                    ; preds = %3342
  %3397 = fsub fast float -0.000000e+00, %3372
  %3398 = fsub fast float -0.000000e+00, %3366
  %3399 = call float @dx.op.unary.f32(i32 24, float %3392)  ; Sqrt(value)
  %3400 = fdiv fast float %3399, %3391
  %3401 = fcmp fast ogt float %3400, 0x3FFB6F8900000000
  %3402 = select i1 %3401, float 0x3FFB6F8900000000, float %3400
  %3403 = fmul fast float %3402, 0x3FE8A23460000000
  %3404 = call float @dx.op.unary.f32(i32 7, float %3403)  ; Saturate(value)
  %3405 = call float @dx.op.binary.f32(i32 35, float %3402, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3406 = fmul fast float %3404, %3391
  %3407 = fmul fast float %3405, 0x3FF279A740000000
  %3408 = fadd fast float %3407, -1.000000e+00
  %3409 = call float @dx.op.dot3.f32(i32 55, float %3397, float %3398, float %3369, float %3397, float %3398, float %3369)  ; Dot3(ax,ay,az,bx,by,bz)
  %3410 = call float @dx.op.unary.f32(i32 25, float %3409)  ; Rsqrt(value)
  %3411 = fmul fast float %3410, %3397
  %3412 = fmul fast float %3410, %3398
  %3413 = fmul fast float %3410, %3369
  %3414 = fmul fast float %3408, %3408
  %3415 = fsub fast float 1.000000e+00, %3414
  %3416 = fmul fast float %3405, 0x40005F8BE0000000
  %3417 = fsub fast float 0x400C5BF8A0000000, %3416
  %3418 = fdiv fast float %3406, %3417
  %3419 = fmul fast float %3418, 0x3FEE31C3C0000000
  %3420 = fmul fast float %3419, %3415
  %3421 = fmul fast float %3405, 0x3FDACB7480000000
  %3422 = fadd fast float %3421, 0xBFD7347680000000
  %3423 = fmul fast float %3422, %3418
  %3424 = fmul fast float %3423, %3415
  br label %3425

; <label>:3425                                    ; preds = %3396, %3342
  %3426 = phi float [ %3411, %3396 ], [ 0.000000e+00, %3342 ]
  %3427 = phi float [ %3412, %3396 ], [ 0.000000e+00, %3342 ]
  %3428 = phi float [ %3413, %3396 ], [ 0.000000e+00, %3342 ]
  %3429 = phi float [ %3420, %3396 ], [ 0.000000e+00, %3342 ]
  %3430 = phi float [ %3424, %3396 ], [ 0.000000e+00, %3342 ]
  %3431 = call float @dx.op.dot3.f32(i32 55, float %3426, float %3427, float %3428, float %2373, float %2374, float %2375)  ; Dot3(ax,ay,az,bx,by,bz)
  %3432 = fmul fast float %3431, 0x3FDF454380000000
  %3433 = fmul fast float %3431, %3431
  %3434 = fmul fast float %3433, 0x3FEE471020000000
  %3435 = fadd fast float %3434, 0xBFD42F6020000000
  %3436 = fmul fast float %3391, 0x3FD20DD760000000
  %3437 = fmul fast float %3435, %3430
  %3438 = fadd fast float %3437, %3436
  %3439 = fmul fast float %3432, %3429
  %3440 = fadd fast float %3438, %3439
  %3441 = fsub fast float %3438, %3439
  %3442 = call float @dx.op.dot3.f32(i32 55, float %3426, float %3427, float %3428, float %2387, float %2388, float %2389)  ; Dot3(ax,ay,az,bx,by,bz)
  %3443 = fmul fast float %3442, 0x3FDF454380000000
  %3444 = fmul fast float %3442, %3442
  %3445 = fmul fast float %3444, 0x3FEE471020000000
  %3446 = fadd fast float %3445, 0xBFD42F6020000000
  %3447 = call float @dx.op.dot3.f32(i32 55, float %3391, float %3429, float %3430, float 0x3FD20DD760000000, float %3443, float %3446)  ; Dot3(ax,ay,az,bx,by,bz)
  %3448 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3362)  ; FMax(a,b)
  %3449 = call float @dx.op.dot3.f32(i32 55, float %3375, float %3378, float %3381, float %3375, float %3378, float %3381)  ; Dot3(ax,ay,az,bx,by,bz)
  %3450 = fcmp fast oeq float %3449, 0.000000e+00
  %3451 = fcmp fast oeq float %3448, 0.000000e+00
  %3452 = or i1 %3451, %3450
  br i1 %3452, label %3482, label %3453

; <label>:3453                                    ; preds = %3425
  %3454 = fsub fast float -0.000000e+00, %3381
  %3455 = fsub fast float -0.000000e+00, %3375
  %3456 = call float @dx.op.unary.f32(i32 24, float %3449)  ; Sqrt(value)
  %3457 = fdiv fast float %3456, %3448
  %3458 = fcmp fast ogt float %3457, 0x3FFB6F8900000000
  %3459 = select i1 %3458, float 0x3FFB6F8900000000, float %3457
  %3460 = fmul fast float %3459, 0x3FE8A23460000000
  %3461 = call float @dx.op.unary.f32(i32 7, float %3460)  ; Saturate(value)
  %3462 = call float @dx.op.binary.f32(i32 35, float %3459, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3463 = fmul fast float %3461, %3448
  %3464 = fmul fast float %3462, 0x3FF279A740000000
  %3465 = fadd fast float %3464, -1.000000e+00
  %3466 = call float @dx.op.dot3.f32(i32 55, float %3454, float %3455, float %3378, float %3454, float %3455, float %3378)  ; Dot3(ax,ay,az,bx,by,bz)
  %3467 = call float @dx.op.unary.f32(i32 25, float %3466)  ; Rsqrt(value)
  %3468 = fmul fast float %3467, %3454
  %3469 = fmul fast float %3467, %3455
  %3470 = fmul fast float %3467, %3378
  %3471 = fmul fast float %3465, %3465
  %3472 = fsub fast float 1.000000e+00, %3471
  %3473 = fmul fast float %3462, 0x40005F8BE0000000
  %3474 = fsub fast float 0x400C5BF8A0000000, %3473
  %3475 = fdiv fast float %3463, %3474
  %3476 = fmul fast float %3475, 0x3FEE31C3C0000000
  %3477 = fmul fast float %3476, %3472
  %3478 = fmul fast float %3462, 0x3FDACB7480000000
  %3479 = fadd fast float %3478, 0xBFD7347680000000
  %3480 = fmul fast float %3479, %3475
  %3481 = fmul fast float %3480, %3472
  br label %3482

; <label>:3482                                    ; preds = %3453, %3425
  %3483 = phi float [ %3468, %3453 ], [ 0.000000e+00, %3425 ]
  %3484 = phi float [ %3469, %3453 ], [ 0.000000e+00, %3425 ]
  %3485 = phi float [ %3470, %3453 ], [ 0.000000e+00, %3425 ]
  %3486 = phi float [ %3477, %3453 ], [ 0.000000e+00, %3425 ]
  %3487 = phi float [ %3481, %3453 ], [ 0.000000e+00, %3425 ]
  %3488 = call float @dx.op.dot3.f32(i32 55, float %3483, float %3484, float %3485, float %2373, float %2374, float %2375)  ; Dot3(ax,ay,az,bx,by,bz)
  %3489 = fmul fast float %3488, 0x3FDF454380000000
  %3490 = fmul fast float %3488, %3488
  %3491 = fmul fast float %3490, 0x3FEE471020000000
  %3492 = fadd fast float %3491, 0xBFD42F6020000000
  %3493 = fmul fast float %3448, 0x3FD20DD760000000
  %3494 = fmul fast float %3492, %3487
  %3495 = fadd fast float %3494, %3493
  %3496 = fmul fast float %3489, %3486
  %3497 = fadd fast float %3495, %3496
  %3498 = fsub fast float %3495, %3496
  %3499 = call float @dx.op.dot3.f32(i32 55, float %3483, float %3484, float %3485, float %2387, float %2388, float %2389)  ; Dot3(ax,ay,az,bx,by,bz)
  %3500 = fmul fast float %3499, 0x3FDF454380000000
  %3501 = fmul fast float %3499, %3499
  %3502 = fmul fast float %3501, 0x3FEE471020000000
  %3503 = fadd fast float %3502, 0xBFD42F6020000000
  %3504 = call float @dx.op.dot3.f32(i32 55, float %3448, float %3486, float %3487, float 0x3FD20DD760000000, float %3500, float %3503)  ; Dot3(ax,ay,az,bx,by,bz)
  %3505 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3363)  ; FMax(a,b)
  %3506 = call float @dx.op.dot3.f32(i32 55, float %3384, float %3387, float %3390, float %3384, float %3387, float %3390)  ; Dot3(ax,ay,az,bx,by,bz)
  %3507 = fcmp fast oeq float %3506, 0.000000e+00
  %3508 = fcmp fast oeq float %3505, 0.000000e+00
  %3509 = or i1 %3508, %3507
  br i1 %3509, label %3539, label %3510

; <label>:3510                                    ; preds = %3482
  %3511 = fsub fast float -0.000000e+00, %3390
  %3512 = fsub fast float -0.000000e+00, %3384
  %3513 = call float @dx.op.unary.f32(i32 24, float %3506)  ; Sqrt(value)
  %3514 = fdiv fast float %3513, %3505
  %3515 = fcmp fast ogt float %3514, 0x3FFB6F8900000000
  %3516 = select i1 %3515, float 0x3FFB6F8900000000, float %3514
  %3517 = fmul fast float %3516, 0x3FE8A23460000000
  %3518 = call float @dx.op.unary.f32(i32 7, float %3517)  ; Saturate(value)
  %3519 = call float @dx.op.binary.f32(i32 35, float %3516, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3520 = fmul fast float %3518, %3505
  %3521 = fmul fast float %3519, 0x3FF279A740000000
  %3522 = fadd fast float %3521, -1.000000e+00
  %3523 = call float @dx.op.dot3.f32(i32 55, float %3511, float %3512, float %3387, float %3511, float %3512, float %3387)  ; Dot3(ax,ay,az,bx,by,bz)
  %3524 = call float @dx.op.unary.f32(i32 25, float %3523)  ; Rsqrt(value)
  %3525 = fmul fast float %3524, %3511
  %3526 = fmul fast float %3524, %3512
  %3527 = fmul fast float %3524, %3387
  %3528 = fmul fast float %3522, %3522
  %3529 = fsub fast float 1.000000e+00, %3528
  %3530 = fmul fast float %3519, 0x40005F8BE0000000
  %3531 = fsub fast float 0x400C5BF8A0000000, %3530
  %3532 = fdiv fast float %3520, %3531
  %3533 = fmul fast float %3532, 0x3FEE31C3C0000000
  %3534 = fmul fast float %3533, %3529
  %3535 = fmul fast float %3519, 0x3FDACB7480000000
  %3536 = fadd fast float %3535, 0xBFD7347680000000
  %3537 = fmul fast float %3536, %3532
  %3538 = fmul fast float %3537, %3529
  br label %3539

; <label>:3539                                    ; preds = %3510, %3482
  %3540 = phi float [ %3525, %3510 ], [ 0.000000e+00, %3482 ]
  %3541 = phi float [ %3526, %3510 ], [ 0.000000e+00, %3482 ]
  %3542 = phi float [ %3527, %3510 ], [ 0.000000e+00, %3482 ]
  %3543 = phi float [ %3534, %3510 ], [ 0.000000e+00, %3482 ]
  %3544 = phi float [ %3538, %3510 ], [ 0.000000e+00, %3482 ]
  %3545 = call float @dx.op.dot3.f32(i32 55, float %3540, float %3541, float %3542, float %2373, float %2374, float %2375)  ; Dot3(ax,ay,az,bx,by,bz)
  %3546 = fmul fast float %3545, 0x3FDF454380000000
  %3547 = fmul fast float %3545, %3545
  %3548 = fmul fast float %3547, 0x3FEE471020000000
  %3549 = fadd fast float %3548, 0xBFD42F6020000000
  %3550 = fmul fast float %3505, 0x3FD20DD760000000
  %3551 = fmul fast float %3549, %3544
  %3552 = fadd fast float %3551, %3550
  %3553 = fmul fast float %3546, %3543
  %3554 = fadd fast float %3552, %3553
  %3555 = fsub fast float %3552, %3553
  %3556 = call float @dx.op.dot3.f32(i32 55, float %3540, float %3541, float %3542, float %2387, float %2388, float %2389)  ; Dot3(ax,ay,az,bx,by,bz)
  %3557 = fmul fast float %3556, 0x3FDF454380000000
  %3558 = fmul fast float %3556, %3556
  %3559 = fmul fast float %3558, 0x3FEE471020000000
  %3560 = fadd fast float %3559, 0xBFD42F6020000000
  %3561 = call float @dx.op.dot3.f32(i32 55, float %3505, float %3543, float %3544, float 0x3FD20DD760000000, float %3557, float %3560)  ; Dot3(ax,ay,az,bx,by,bz)
  %3562 = call float @dx.op.binary.f32(i32 35, float %3440, float 0.000000e+00)  ; FMax(a,b)
  %3563 = call float @dx.op.binary.f32(i32 35, float %3497, float 0.000000e+00)  ; FMax(a,b)
  %3564 = call float @dx.op.binary.f32(i32 35, float %3554, float 0.000000e+00)  ; FMax(a,b)
  %3565 = call float @dx.op.binary.f32(i32 35, float %3441, float 0.000000e+00)  ; FMax(a,b)
  %3566 = call float @dx.op.binary.f32(i32 35, float %3498, float 0.000000e+00)  ; FMax(a,b)
  %3567 = call float @dx.op.binary.f32(i32 35, float %3555, float 0.000000e+00)  ; FMax(a,b)
  %3568 = call float @dx.op.binary.f32(i32 35, float %3447, float 0.000000e+00)  ; FMax(a,b)
  %3569 = call float @dx.op.binary.f32(i32 35, float %3504, float 0.000000e+00)  ; FMax(a,b)
  %3570 = call float @dx.op.binary.f32(i32 35, float %3561, float 0.000000e+00)  ; FMax(a,b)
  %3571 = fsub fast float %2761, %3562
  %3572 = fsub fast float %2762, %3563
  %3573 = fsub fast float %2763, %3564
  %3574 = fmul fast float %3571, %2439
  %3575 = fmul fast float %3572, %2439
  %3576 = fmul fast float %3573, %2439
  %3577 = fadd fast float %3574, %3562
  %3578 = fadd fast float %3575, %3563
  %3579 = fadd fast float %3576, %3564
  %3580 = fsub fast float %2758, %3565
  %3581 = fsub fast float %2759, %3566
  %3582 = fsub fast float %2760, %3567
  %3583 = fmul fast float %3580, %2439
  %3584 = fmul fast float %3581, %2439
  %3585 = fmul fast float %3582, %2439
  %3586 = fadd fast float %3583, %3565
  %3587 = fadd fast float %3584, %3566
  %3588 = fadd fast float %3585, %3567
  %3589 = fsub fast float %2755, %3568
  %3590 = fsub fast float %2756, %3569
  %3591 = fsub fast float %2757, %3570
  %3592 = fmul fast float %3589, %2439
  %3593 = fmul fast float %3590, %2439
  %3594 = fmul fast float %3591, %2439
  %3595 = fadd fast float %3592, %3568
  %3596 = fadd fast float %3593, %3569
  %3597 = fadd fast float %3594, %3570
  br label %3598

; <label>:3598                                    ; preds = %3539, %2754
  %3599 = phi float [ %3595, %3539 ], [ %2755, %2754 ]
  %3600 = phi float [ %3596, %3539 ], [ %2756, %2754 ]
  %3601 = phi float [ %3597, %3539 ], [ %2757, %2754 ]
  %3602 = phi float [ %3586, %3539 ], [ %2758, %2754 ]
  %3603 = phi float [ %3587, %3539 ], [ %2759, %2754 ]
  %3604 = phi float [ %3588, %3539 ], [ %2760, %2754 ]
  %3605 = phi float [ %3577, %3539 ], [ %2761, %2754 ]
  %3606 = phi float [ %3578, %3539 ], [ %2762, %2754 ]
  %3607 = phi float [ %3579, %3539 ], [ %2763, %2754 ]
  %3608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3609 = extractvalue %dx.types.CBufRet.f32 %3608, 0
  %3610 = call float @dx.op.binary.f32(i32 36, float %2370, float %3609)  ; FMin(a,b)
  %3611 = fsub fast float 1.000000e+00, %2390
  %3612 = fmul fast float %3610, %3611
  %3613 = fsub fast float 1.000000e+00, %3612
  %3614 = bitcast float %3613 to i32
  %3615 = sub nsw i32 2129859010, %3614
  %3616 = bitcast i32 %3615 to float
  %3617 = call float @dx.op.binary.f32(i32 36, float %2371, float %3609)  ; FMin(a,b)
  %3618 = fmul fast float %3617, %3611
  %3619 = fsub fast float 1.000000e+00, %3618
  %3620 = bitcast float %3619 to i32
  %3621 = sub nsw i32 2129859010, %3620
  %3622 = bitcast i32 %3621 to float
  %3623 = call float @dx.op.binary.f32(i32 36, float %2372, float %3609)  ; FMin(a,b)
  %3624 = fmul fast float %3623, %3611
  %3625 = fsub fast float 1.000000e+00, %3624
  %3626 = bitcast float %3625 to i32
  %3627 = sub nsw i32 2129859010, %3626
  %3628 = bitcast i32 %3627 to float
  %3629 = fmul fast float %3605, %2390
  %3630 = fmul fast float %3629, %3616
  %3631 = fmul fast float %3606, %2390
  %3632 = fmul fast float %3631, %3622
  %3633 = fmul fast float %3607, %2390
  %3634 = fmul fast float %3633, %3628
  %3635 = call float @dx.op.binary.f32(i32 36, float %2367, float %3609)  ; FMin(a,b)
  %3636 = fmul fast float %3635, %3611
  %3637 = fsub fast float 1.000000e+00, %3636
  %3638 = bitcast float %3637 to i32
  %3639 = sub nsw i32 2129859010, %3638
  %3640 = bitcast i32 %3639 to float
  %3641 = call float @dx.op.binary.f32(i32 36, float %2368, float %3609)  ; FMin(a,b)
  %3642 = fmul fast float %3641, %3611
  %3643 = fsub fast float 1.000000e+00, %3642
  %3644 = bitcast float %3643 to i32
  %3645 = sub nsw i32 2129859010, %3644
  %3646 = bitcast i32 %3645 to float
  %3647 = call float @dx.op.binary.f32(i32 36, float %2379, float %3609)  ; FMin(a,b)
  %3648 = fmul fast float %3647, %3611
  %3649 = fsub fast float 1.000000e+00, %3648
  %3650 = bitcast float %3649 to i32
  %3651 = sub nsw i32 2129859010, %3650
  %3652 = bitcast i32 %3651 to float
  %3653 = fmul fast float %3599, %2390
  %3654 = fmul fast float %3653, %3640
  %3655 = fmul fast float %3600, %2390
  %3656 = fmul fast float %3655, %3646
  %3657 = fmul fast float %3601, %2390
  %3658 = fmul fast float %3657, %3652
  %3659 = call float @dx.op.dot3.f32(i32 55, float %3630, float %3632, float %3634, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3660 = select i1 %260, float 0.000000e+00, float %3630
  %3661 = select i1 %260, float %3659, float %3632
  %3662 = select i1 %260, float 0.000000e+00, float %3634
  %3663 = call float @dx.op.dot3.f32(i32 55, float %3602, float %3603, float %3604, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3664 = select i1 %260, float 0.000000e+00, float %3602
  %3665 = select i1 %260, float %3663, float %3603
  %3666 = select i1 %260, float 0.000000e+00, float %3604
  %3667 = call float @dx.op.dot3.f32(i32 55, float %3654, float %3656, float %3658, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3668 = select i1 %260, float 0.000000e+00, float %3654
  %3669 = select i1 %260, float %3667, float %3656
  %3670 = select i1 %260, float 0.000000e+00, float %3658
  %3671 = fmul fast float %1108, %1108
  %3672 = call float @dx.op.unary.f32(i32 7, float %3671)  ; Saturate(value)
  %3673 = fmul fast float %2381, 9.843750e-01
  %3674 = fmul fast float %2376, 9.843750e-01
  %3675 = fadd fast float %3673, 7.812500e-03
  %3676 = fadd fast float %3674, 7.812500e-03
  %3677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %3675, float %3676, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3678 = extractvalue %dx.types.ResRet.f32 %3677, 0
  %3679 = extractvalue %dx.types.ResRet.f32 %3677, 1
  %3680 = extractvalue %dx.types.ResRet.f32 %3677, 2
  %3681 = extractvalue %dx.types.ResRet.f32 %3677, 3
  %3682 = fsub fast float 1.000000e+00, %3672
  %3683 = fsub fast float %3680, %3678
  %3684 = fsub fast float %3681, %3679
  %3685 = fmul fast float %3683, %3682
  %3686 = fmul fast float %3684, %3682
  %3687 = fadd fast float %3685, %3678
  %3688 = fadd fast float %3686, %3679
  %3689 = fmul fast float %3687, %2367
  %3690 = fmul fast float %3687, %2368
  %3691 = fmul fast float %3687, %2379
  %3692 = fadd fast float %3689, %3688
  %3693 = fadd fast float %3690, %3688
  %3694 = fadd fast float %3691, %3688
  %3695 = fcmp fast ogt float %1708, 0.000000e+00
  br i1 %3695, label %3696, label %3722

; <label>:3696                                    ; preds = %3598
  %3697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1708, float %2381, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3698 = extractvalue %dx.types.ResRet.f32 %3697, 0
  %3699 = extractvalue %dx.types.ResRet.f32 %3697, 1
  %3700 = extractvalue %dx.types.ResRet.f32 %3697, 2
  %3701 = fadd fast float %3698, -5.000000e-01
  %3702 = fadd fast float %3699, -5.000000e-01
  %3703 = fadd fast float %3700, -5.000000e-01
  %3704 = fsub fast float 1.000000e+00, %2367
  %3705 = fsub fast float 1.000000e+00, %2368
  %3706 = fsub fast float 1.000000e+00, %2379
  %3707 = fmul fast float %2367, 4.000000e+00
  %3708 = fmul fast float %3707, %3704
  %3709 = fmul fast float %3708, %3701
  %3710 = fmul fast float %2368, 4.000000e+00
  %3711 = fmul fast float %3710, %3705
  %3712 = fmul fast float %3711, %3702
  %3713 = fmul fast float %2379, 4.000000e+00
  %3714 = fmul fast float %3713, %3706
  %3715 = fmul fast float %3714, %3703
  %3716 = fadd fast float %3709, %3692
  %3717 = fadd fast float %3712, %3693
  %3718 = fadd fast float %3715, %3694
  %3719 = call float @dx.op.unary.f32(i32 7, float %3716)  ; Saturate(value)
  %3720 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3721 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  br label %3722

; <label>:3722                                    ; preds = %3696, %3598
  %3723 = phi float [ %3719, %3696 ], [ %3692, %3598 ]
  %3724 = phi float [ %3720, %3696 ], [ %3693, %3598 ]
  %3725 = phi float [ %3721, %3696 ], [ %3694, %3598 ]
  %3726 = call float @dx.op.binary.f32(i32 35, float %3724, float %3725)  ; FMax(a,b)
  %3727 = call float @dx.op.binary.f32(i32 35, float %3723, float %3726)  ; FMax(a,b)
  %3728 = fsub fast float 1.000000e+00, %3727
  %3729 = call float @dx.op.dot3.f32(i32 55, float %2370, float %2371, float %2372, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3730 = fcmp fast ogt float %3729, 0x3E7FF19E20000000
  %3731 = fdiv fast float 1.000000e+00, %3729
  %3732 = select i1 %3730, float %3731, float 0.000000e+00
  %3733 = fmul fast float %3732, %2370
  %3734 = fmul fast float %3732, %2371
  %3735 = fmul fast float %3732, %2372
  %3736 = fadd fast float %3733, -1.000000e+00
  %3737 = fadd fast float %3734, -1.000000e+00
  %3738 = fadd fast float %3735, -1.000000e+00
  %3739 = fmul fast float %3736, 5.000000e-01
  %3740 = fmul fast float %3737, 5.000000e-01
  %3741 = fmul fast float %3738, 5.000000e-01
  %3742 = fadd fast float %3739, 1.000000e+00
  %3743 = fadd fast float %3740, 1.000000e+00
  %3744 = fadd fast float %3741, 1.000000e+00
  %3745 = call float @dx.op.binary.f32(i32 35, float %2381, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3746 = fdiv fast float %1108, %3745
  %3747 = fcmp fast olt float %1803, 1.270000e+02
  %3748 = fcmp fast olt float %1804, 1.270000e+02
  %3749 = fcmp fast olt float %1805, 1.270000e+02
  %3750 = fmul fast float %1803, 0xBFF7154760000000
  %3751 = fmul fast float %3750, %3746
  %3752 = fmul fast float %1804, 0xBFF7154760000000
  %3753 = fmul fast float %3752, %3746
  %3754 = fmul fast float %1805, 0xBFF7154760000000
  %3755 = fmul fast float %3754, %3746
  %3756 = call float @dx.op.unary.f32(i32 21, float %3751)  ; Exp(value)
  %3757 = call float @dx.op.unary.f32(i32 21, float %3753)  ; Exp(value)
  %3758 = call float @dx.op.unary.f32(i32 21, float %3755)  ; Exp(value)
  %3759 = call float @dx.op.unary.f32(i32 7, float %3756)  ; Saturate(value)
  %3760 = call float @dx.op.unary.f32(i32 7, float %3757)  ; Saturate(value)
  %3761 = call float @dx.op.unary.f32(i32 7, float %3758)  ; Saturate(value)
  %3762 = select i1 %3747, float %3759, float 0.000000e+00
  %3763 = select i1 %3748, float %3760, float 0.000000e+00
  %3764 = select i1 %3749, float %3761, float 0.000000e+00
  %3765 = fmul fast float %3762, %3728
  %3766 = fmul fast float %3763, %3728
  %3767 = fmul fast float %3764, %3728
  %3768 = fadd fast float %3765, -1.000000e+00
  %3769 = fadd fast float %3766, -1.000000e+00
  %3770 = fadd fast float %3767, -1.000000e+00
  %3771 = fmul fast float %3768, %1758
  %3772 = fmul fast float %3769, %1758
  %3773 = fmul fast float %3770, %1758
  %3774 = fmul fast float %3723, %3668
  %3775 = fmul fast float %3724, %3669
  %3776 = fmul fast float %3725, %3670
  %3777 = fsub fast float 1.000000e+00, %2381
  %3778 = bitcast float %3777 to i32
  %3779 = sitofp i32 %3778 to float
  %3780 = fmul fast float %3779, 5.000000e+00
  %3781 = fadd fast float %3780, 0xC1EFBF8940000000
  %3782 = fptosi float %3781 to i32
  %3783 = bitcast i32 %3782 to float
  %3784 = fmul fast float %3783, %1707
  %3785 = fmul fast float %3660, %3784
  %3786 = fmul fast float %3785, %3728
  %3787 = fmul fast float %3786, %3742
  %3788 = fmul fast float %3661, %3784
  %3789 = fmul fast float %3788, %3728
  %3790 = fmul fast float %3789, %3743
  %3791 = fmul fast float %3662, %3784
  %3792 = fmul fast float %3791, %3728
  %3793 = fmul fast float %3792, %3744
  %3794 = fadd fast float %3774, %1712
  %3795 = fadd fast float %3794, %3787
  %3796 = fmul fast float %3795, %1758
  %3797 = fadd fast float %3775, %1713
  %3798 = fadd fast float %3797, %3790
  %3799 = fmul fast float %3798, %1758
  %3800 = fadd fast float %3776, %1714
  %3801 = fadd fast float %3800, %3793
  %3802 = fmul fast float %3801, %1758
  %3803 = fmul fast float %2368, 0x4012D0A400000000
  %3804 = fadd fast float %3773, 1.000000e+00
  %3805 = fadd fast float %3772, 1.000000e+00
  %3806 = fadd fast float %3771, 1.000000e+00
  %3807 = fmul fast float %3728, %3662
  %3808 = fmul fast float %3728, %3661
  %3809 = fmul fast float %3728, %3660
  %3810 = fsub fast float 1.000000e+00, %2376
  %3811 = fmul fast float %3810, %1758
  %3812 = fsub fast float 1.000000e+00, %3811
  %3813 = call float @dx.op.unary.f32(i32 7, float %3812)  ; Saturate(value)
  %3814 = fsub fast float 1.000000e+00, %3813
  %3815 = fadd fast float %3803, 0x3FDB6377A0000000
  %3816 = fmul fast float %3814, %3815
  %3817 = call float @dx.op.dot3.f32(i32 55, float %1821, float %1822, float %1823, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3818 = fadd fast float %3816, %3817
  %3819 = call float @dx.op.unary.f32(i32 7, float %3818)  ; Saturate(value)
  %3820 = call float @dx.op.binary.f32(i32 35, float %3819, float 0x3F847AE140000000)  ; FMax(a,b)
  %3821 = fmul fast float %3820, %3820
  %3822 = fmul fast float %3821, %3821
  %3823 = fmul fast float %3822, 0xC00A935000000000
  %3824 = call float @dx.op.unary.f32(i32 21, float %3823)  ; Exp(value)
  %3825 = fsub fast float 1.000000e+00, %3824
  %3826 = fmul fast float %3806, %3664
  %3827 = fmul fast float %3826, %3825
  %3828 = fmul fast float %3805, %3665
  %3829 = fmul fast float %3828, %3825
  %3830 = fmul fast float %3804, %3666
  %3831 = fmul fast float %3830, %3825
  %3832 = fadd fast float %3827, %3809
  %3833 = fmul fast float %3832, %1758
  %3834 = fadd fast float %3829, %3808
  %3835 = fmul fast float %3834, %1758
  %3836 = fadd fast float %3831, %3807
  %3837 = fmul fast float %3836, %1758
  %3838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3839 = extractvalue %dx.types.CBufRet.f32 %3838, 3
  %3840 = fcmp fast oeq float %3839, 0.000000e+00
  br i1 %3840, label %5039, label %3841

; <label>:3841                                    ; preds = %3722
  %3842 = extractvalue %dx.types.CBufRet.f32 %3838, 0
  %3843 = extractvalue %dx.types.CBufRet.f32 %3838, 1
  %3844 = extractvalue %dx.types.CBufRet.f32 %3838, 2
  %3845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3846 = extractvalue %dx.types.CBufRet.f32 %3845, 0
  %3847 = extractvalue %dx.types.CBufRet.f32 %3845, 1
  %3848 = extractvalue %dx.types.CBufRet.f32 %3845, 2
  %3849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3850 = extractvalue %dx.types.CBufRet.f32 %3849, 0
  %3851 = extractvalue %dx.types.CBufRet.f32 %3849, 1
  %3852 = call float @dx.op.dot3.f32(i32 55, float %3846, float %3847, float %3848, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3853 = select i1 %260, float %3850, float %3846
  %3854 = select i1 %260, float %3852, float %3847
  %3855 = select i1 %260, float %3851, float %3848
  %3856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3857 = extractvalue %dx.types.CBufRet.f32 %3856, 2
  %3858 = fmul fast float %3857, %70
  %3859 = fmul fast float %3857, %71
  %3860 = fmul fast float %3857, %72
  %3861 = fadd fast float %3858, %137
  %3862 = fadd fast float %3859, %138
  %3863 = fadd fast float %3860, %139
  %3864 = fcmp fast olt float %3839, 0.000000e+00
  br i1 %3864, label %4486, label %3865

; <label>:3865                                    ; preds = %3841
  %3866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3867 = extractvalue %dx.types.CBufRet.f32 %3866, 0
  %3868 = extractvalue %dx.types.CBufRet.f32 %3866, 1
  %3869 = extractvalue %dx.types.CBufRet.f32 %3866, 2
  %3870 = extractvalue %dx.types.CBufRet.f32 %3866, 3
  %3871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3872 = extractvalue %dx.types.CBufRet.f32 %3871, 0
  %3873 = extractvalue %dx.types.CBufRet.f32 %3871, 1
  %3874 = extractvalue %dx.types.CBufRet.f32 %3871, 2
  %3875 = extractvalue %dx.types.CBufRet.f32 %3871, 3
  %3876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3877 = extractvalue %dx.types.CBufRet.f32 %3876, 0
  %3878 = extractvalue %dx.types.CBufRet.f32 %3876, 1
  %3879 = extractvalue %dx.types.CBufRet.f32 %3876, 2
  %3880 = extractvalue %dx.types.CBufRet.f32 %3876, 3
  %3881 = fmul fast float %3867, %3861
  %3882 = call float @dx.op.tertiary.f32(i32 46, float %3862, float %3868, float %3881)  ; FMad(a,b,c)
  %3883 = call float @dx.op.tertiary.f32(i32 46, float %3863, float %3869, float %3882)  ; FMad(a,b,c)
  %3884 = fadd fast float %3883, %3870
  %3885 = fmul fast float %3872, %3861
  %3886 = call float @dx.op.tertiary.f32(i32 46, float %3862, float %3873, float %3885)  ; FMad(a,b,c)
  %3887 = call float @dx.op.tertiary.f32(i32 46, float %3863, float %3874, float %3886)  ; FMad(a,b,c)
  %3888 = fadd fast float %3887, %3875
  %3889 = fmul fast float %3877, %3861
  %3890 = call float @dx.op.tertiary.f32(i32 46, float %3862, float %3878, float %3889)  ; FMad(a,b,c)
  %3891 = call float @dx.op.tertiary.f32(i32 46, float %3863, float %3879, float %3890)  ; FMad(a,b,c)
  %3892 = fadd fast float %3891, %3880
  %3893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3894 = extractvalue %dx.types.CBufRet.f32 %3893, 0
  %3895 = extractvalue %dx.types.CBufRet.f32 %3893, 1
  %3896 = extractvalue %dx.types.CBufRet.f32 %3893, 3
  %3897 = fmul fast float %3896, %3884
  %3898 = fmul fast float %3896, %3888
  %3899 = fadd fast float %3897, %3894
  %3900 = fadd fast float %3898, %3895
  %3901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3902 = extractvalue %dx.types.CBufRet.f32 %3901, 0
  %3903 = extractvalue %dx.types.CBufRet.f32 %3901, 1
  %3904 = extractvalue %dx.types.CBufRet.f32 %3901, 3
  %3905 = fmul fast float %3904, %3884
  %3906 = fmul fast float %3904, %3888
  %3907 = fadd fast float %3905, %3902
  %3908 = fadd fast float %3906, %3903
  %3909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3910 = extractvalue %dx.types.CBufRet.f32 %3909, 1
  %3911 = fsub fast float %3910, %3892
  %3912 = extractvalue %dx.types.CBufRet.f32 %3909, 2
  %3913 = fmul fast float %3911, %3912
  %3914 = fsub fast float 1.000000e+00, %3913
  %3915 = call float @dx.op.unary.f32(i32 7, float %3914)  ; Saturate(value)
  %3916 = extractvalue %dx.types.CBufRet.f32 %3901, 2
  %3917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3918 = extractvalue %dx.types.CBufRet.f32 %3917, 2
  %3919 = fadd fast float %3918, %3916
  %3920 = fcmp fast ogt float %3919, 0.000000e+00
  br i1 %3920, label %3921, label %3945

; <label>:3921                                    ; preds = %3865
  %3922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3923 = extractvalue %dx.types.CBufRet.f32 %3922, 0
  %3924 = extractvalue %dx.types.CBufRet.f32 %3922, 1
  %3925 = fsub fast float %3907, %3923
  %3926 = fsub fast float %3908, %3924
  %3927 = fcmp fast olt float %3925, 0.000000e+00
  %3928 = fcmp fast olt float %3926, 0.000000e+00
  %3929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3930 = extractvalue %dx.types.CBufRet.f32 %3929, 0
  %3931 = extractvalue %dx.types.CBufRet.f32 %3929, 1
  %3932 = extractvalue %dx.types.CBufRet.f32 %3929, 2
  %3933 = extractvalue %dx.types.CBufRet.f32 %3929, 3
  %3934 = select i1 %3927, float %3930, float %3932
  %3935 = select i1 %3928, float %3931, float %3933
  %3936 = fmul fast float %3934, %3925
  %3937 = fmul fast float %3935, %3926
  %3938 = call float @dx.op.unary.f32(i32 6, float %3936)  ; FAbs(value)
  %3939 = call float @dx.op.unary.f32(i32 6, float %3937)  ; FAbs(value)
  %3940 = extractvalue %dx.types.CBufRet.f32 %3856, 0
  %3941 = call float @dx.op.binary.f32(i32 35, float %3938, float %3939)  ; FMax(a,b)
  %3942 = fsub fast float %3940, %3941
  %3943 = call float @dx.op.unary.f32(i32 7, float %3942)  ; Saturate(value)
  %3944 = fmul fast float %3943, %3915
  br label %3945

; <label>:3945                                    ; preds = %3921, %3865
  %3946 = phi float [ %3944, %3921 ], [ 0.000000e+00, %3865 ]
  %3947 = extractvalue %dx.types.CBufRet.f32 %3893, 2
  %3948 = extractvalue %dx.types.CBufRet.f32 %3917, 1
  %3949 = fadd fast float %3948, %3947
  %3950 = fcmp fast ogt float %3949, 0.000000e+00
  %3951 = extractvalue %dx.types.CBufRet.f32 %3856, 0
  br i1 %3950, label %3952, label %3975

; <label>:3952                                    ; preds = %3945
  %3953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3954 = extractvalue %dx.types.CBufRet.f32 %3953, 0
  %3955 = extractvalue %dx.types.CBufRet.f32 %3953, 1
  %3956 = fsub fast float %3899, %3954
  %3957 = fsub fast float %3900, %3955
  %3958 = fcmp fast olt float %3956, 0.000000e+00
  %3959 = fcmp fast olt float %3957, 0.000000e+00
  %3960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3961 = extractvalue %dx.types.CBufRet.f32 %3960, 0
  %3962 = extractvalue %dx.types.CBufRet.f32 %3960, 1
  %3963 = extractvalue %dx.types.CBufRet.f32 %3960, 2
  %3964 = extractvalue %dx.types.CBufRet.f32 %3960, 3
  %3965 = select i1 %3958, float %3961, float %3963
  %3966 = select i1 %3959, float %3962, float %3964
  %3967 = fmul fast float %3965, %3956
  %3968 = fmul fast float %3966, %3957
  %3969 = call float @dx.op.unary.f32(i32 6, float %3967)  ; FAbs(value)
  %3970 = call float @dx.op.unary.f32(i32 6, float %3968)  ; FAbs(value)
  %3971 = call float @dx.op.binary.f32(i32 35, float %3969, float %3970)  ; FMax(a,b)
  %3972 = fsub fast float %3951, %3971
  %3973 = call float @dx.op.unary.f32(i32 7, float %3972)  ; Saturate(value)
  %3974 = fmul fast float %3973, %3915
  br label %3975

; <label>:3975                                    ; preds = %3952, %3945
  %3976 = phi float [ %3974, %3952 ], [ 0.000000e+00, %3945 ]
  %3977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3978 = extractvalue %dx.types.CBufRet.f32 %3977, 1
  %3979 = call float @dx.op.unary.f32(i32 7, float %3978)  ; Saturate(value)
  %3980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3981 = extractvalue %dx.types.CBufRet.f32 %3980, 0
  %3982 = extractvalue %dx.types.CBufRet.f32 %3980, 1
  %3983 = fsub fast float %3884, %3981
  %3984 = fsub fast float %3888, %3982
  %3985 = fcmp fast olt float %3983, 0.000000e+00
  %3986 = fcmp fast olt float %3984, 0.000000e+00
  %3987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3988 = extractvalue %dx.types.CBufRet.f32 %3987, 0
  %3989 = extractvalue %dx.types.CBufRet.f32 %3987, 1
  %3990 = extractvalue %dx.types.CBufRet.f32 %3987, 2
  %3991 = extractvalue %dx.types.CBufRet.f32 %3987, 3
  %3992 = select i1 %3985, float %3988, float %3990
  %3993 = select i1 %3986, float %3989, float %3991
  %3994 = fmul fast float %3992, %3983
  %3995 = fmul fast float %3993, %3984
  %3996 = call float @dx.op.unary.f32(i32 6, float %3994)  ; FAbs(value)
  %3997 = call float @dx.op.unary.f32(i32 6, float %3995)  ; FAbs(value)
  %3998 = call float @dx.op.binary.f32(i32 35, float %3996, float %3997)  ; FMax(a,b)
  %3999 = fsub fast float %3951, %3998
  %4000 = call float @dx.op.unary.f32(i32 7, float %3999)  ; Saturate(value)
  %4001 = call float @dx.op.binary.f32(i32 36, float %4000, float %3979)  ; FMin(a,b)
  %4002 = fmul fast float %4001, %3915
  %4003 = fsub fast float %3976, %4002
  %4004 = fsub fast float %3946, %3976
  %4005 = fsub fast float %4004, %4002
  %4006 = call float @dx.op.binary.f32(i32 35, float %3976, float %3946)  ; FMax(a,b)
  %4007 = call float @dx.op.binary.f32(i32 35, float %4002, float %4006)  ; FMax(a,b)
  %4008 = fcmp fast olt float %4007, 1.000000e+00
  br i1 %4008, label %4009, label %4407, !dx.controlflow.hints !107

; <label>:4009                                    ; preds = %3975
  %4010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4011 = extractvalue %dx.types.CBufRet.f32 %4010, 0
  %4012 = fcmp fast une float %4011, 0.000000e+00
  br i1 %4012, label %4013, label %4407, !dx.controlflow.hints !108

; <label>:4013                                    ; preds = %4009
  %4014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4015 = extractvalue %dx.types.CBufRet.f32 %4014, 0
  %4016 = extractvalue %dx.types.CBufRet.f32 %4014, 1
  %4017 = extractvalue %dx.types.CBufRet.f32 %4014, 2
  %4018 = extractvalue %dx.types.CBufRet.f32 %4014, 3
  %4019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4020 = extractvalue %dx.types.CBufRet.f32 %4019, 0
  %4021 = extractvalue %dx.types.CBufRet.f32 %4019, 1
  %4022 = extractvalue %dx.types.CBufRet.f32 %4019, 2
  %4023 = extractvalue %dx.types.CBufRet.f32 %4019, 3
  %4024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.f32 %4024, 0
  %4026 = extractvalue %dx.types.CBufRet.f32 %4024, 1
  %4027 = extractvalue %dx.types.CBufRet.f32 %4024, 2
  %4028 = extractvalue %dx.types.CBufRet.f32 %4024, 3
  %4029 = fmul fast float %4015, %3861
  %4030 = call float @dx.op.tertiary.f32(i32 46, float %3862, float %4016, float %4029)  ; FMad(a,b,c)
  %4031 = call float @dx.op.tertiary.f32(i32 46, float %3863, float %4017, float %4030)  ; FMad(a,b,c)
  %4032 = fadd fast float %4031, %4018
  %4033 = fmul fast float %4020, %3861
  %4034 = call float @dx.op.tertiary.f32(i32 46, float %3862, float %4021, float %4033)  ; FMad(a,b,c)
  %4035 = call float @dx.op.tertiary.f32(i32 46, float %3863, float %4022, float %4034)  ; FMad(a,b,c)
  %4036 = fadd fast float %4035, %4023
  %4037 = fmul fast float %4025, %3861
  %4038 = call float @dx.op.tertiary.f32(i32 46, float %3862, float %4026, float %4037)  ; FMad(a,b,c)
  %4039 = call float @dx.op.tertiary.f32(i32 46, float %3863, float %4027, float %4038)  ; FMad(a,b,c)
  %4040 = fadd fast float %4039, %4028
  %4041 = fcmp fast oge float %4032, 1.000000e+00
  %4042 = fcmp fast oge float %4036, 1.000000e+00
  %4043 = or i1 %4041, %4042
  %4044 = fcmp fast olt float %4032, 0.000000e+00
  %4045 = fcmp fast olt float %4036, 0.000000e+00
  %4046 = or i1 %4044, %4045
  %4047 = or i1 %4043, %4046
  br i1 %4047, label %4407, label %4048, !dx.controlflow.hints !109

; <label>:4048                                    ; preds = %4013
  %4049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4050 = extractvalue %dx.types.CBufRet.f32 %4049, 0
  %4051 = extractvalue %dx.types.CBufRet.f32 %4049, 1
  %4052 = extractvalue %dx.types.CBufRet.f32 %4049, 2
  %4053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.i32 %4053, 2
  %4055 = uitofp i32 %4054 to float
  %4056 = extractvalue %dx.types.CBufRet.i32 %4053, 3
  %4057 = uitofp i32 %4056 to float
  %4058 = extractvalue %dx.types.CBufRet.f32 %4049, 3
  %4059 = fmul fast float %4058, 2.000000e+00
  %4060 = fsub fast float %4032, %4050
  %4061 = fsub fast float %4036, %4051
  %4062 = fmul fast float %4059, %4060
  %4063 = fmul fast float %4059, %4061
  %4064 = fdiv fast float 1.000000e+00, %3844
  %4065 = fmul fast float %4063, %4064
  %4066 = call float @dx.op.unary.f32(i32 6, float %4065)  ; FAbs(value)
  %4067 = fmul fast float %4052, %3863
  %4068 = fmul fast float %4067, %4059
  %4069 = call float @dx.op.unary.f32(i32 6, float %4068)  ; FAbs(value)
  %4070 = call float @dx.op.unary.f32(i32 6, float %4062)  ; FAbs(value)
  %4071 = call float @dx.op.binary.f32(i32 35, float %4069, float %4066)  ; FMax(a,b)
  %4072 = call float @dx.op.binary.f32(i32 35, float %4070, float %4071)  ; FMax(a,b)
  %4073 = fmul fast float %4072, 2.000000e+00
  %4074 = call float @dx.op.unary.f32(i32 23, float %4073)  ; Log(value)
  %4075 = call float @dx.op.binary.f32(i32 35, float %4074, float %4055)  ; FMax(a,b)
  %4076 = call float @dx.op.unary.f32(i32 22, float %4075)  ; Frc(value)
  %4077 = fadd fast float %4076, 0xBFEA666660000000
  %4078 = fmul fast float %4077, 8.000000e+00
  %4079 = call float @dx.op.unary.f32(i32 7, float %4078)  ; Saturate(value)
  %4080 = call float @dx.op.unary.f32(i32 27, float %4075)  ; Round_ni(value)
  %4081 = fadd fast float %4080, %4079
  %4082 = call float @dx.op.binary.f32(i32 36, float %4081, float %4057)  ; FMin(a,b)
  %4083 = call float @dx.op.unary.f32(i32 27, float %4082)  ; Round_ni(value)
  %4084 = fsub fast float -0.000000e+00, %4083
  %4085 = call float @dx.op.unary.f32(i32 21, float %4084)  ; Exp(value)
  %4086 = fmul fast float %4085, %4059
  %4087 = fmul fast float %4086, %4032
  %4088 = fmul fast float %4086, %4036
  %4089 = fmul fast float %4087, 2.500000e-01
  %4090 = fmul fast float %4088, 2.500000e-01
  %4091 = fadd fast float %4089, 5.000000e-01
  %4092 = fadd fast float %4090, 5.000000e-01
  %4093 = fsub fast float %4057, %4055
  %4094 = fptoui float %4093 to i32
  %4095 = add i32 %4094, 320
  %4096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %4095)  ; CBufferLoadLegacy(handle,regIndex)
  %4097 = extractvalue %dx.types.CBufRet.f32 %4096, 0
  %4098 = extractvalue %dx.types.CBufRet.f32 %4096, 1
  %4099 = fcmp fast une float %4082, %4057
  %4100 = fsub fast float %4032, %4097
  %4101 = fsub fast float %4036, %4098
  %4102 = call float @dx.op.unary.f32(i32 6, float %4100)  ; FAbs(value)
  %4103 = call float @dx.op.unary.f32(i32 6, float %4101)  ; FAbs(value)
  %4104 = fmul fast float %4102, %4086
  %4105 = fmul fast float %4103, %4086
  %4106 = fcmp fast olt float %4104, 1.000000e+00
  %4107 = fcmp fast olt float %4105, 1.000000e+00
  %4108 = and i1 %4106, %4107
  %4109 = or i1 %4099, %4108
  br i1 %4109, label %4110, label %4407, !dx.controlflow.hints !110

; <label>:4110                                    ; preds = %4048
  %4111 = fmul fast float %4088, 5.000000e-01
  %4112 = fmul fast float %4087, 5.000000e-01
  %4113 = fadd fast float %4111, 5.000000e-01
  %4114 = fadd fast float %4112, 5.000000e-01
  %4115 = sitofp i32 %4054 to float
  %4116 = fsub fast float %4082, %4115
  %4117 = call float @dx.op.unary.f32(i32 27, float %4116)  ; Round_ni(value)
  %4118 = call float @dx.op.unary.f32(i32 22, float %4082)  ; Frc(value)
  %4119 = call float @dx.op.unary.f32(i32 22, float %4114)  ; Frc(value)
  %4120 = call float @dx.op.unary.f32(i32 22, float %4113)  ; Frc(value)
  %4121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %4119, float %4120, float %4117, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4122 = extractvalue %dx.types.ResRet.f32 %4121, 0
  %4123 = extractvalue %dx.types.ResRet.f32 %4121, 1
  %4124 = extractvalue %dx.types.ResRet.f32 %4121, 2
  %4125 = extractvalue %dx.types.ResRet.f32 %4121, 3
  %4126 = fcmp fast ogt float %4118, 0.000000e+00
  br i1 %4126, label %4127, label %4148, !dx.controlflow.hints !111

; <label>:4127                                    ; preds = %4110
  %4128 = fadd fast float %4117, 1.000000e+00
  %4129 = call float @dx.op.unary.f32(i32 22, float %4091)  ; Frc(value)
  %4130 = call float @dx.op.unary.f32(i32 22, float %4092)  ; Frc(value)
  %4131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %4129, float %4130, float %4128, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4132 = extractvalue %dx.types.ResRet.f32 %4131, 0
  %4133 = extractvalue %dx.types.ResRet.f32 %4131, 1
  %4134 = extractvalue %dx.types.ResRet.f32 %4131, 2
  %4135 = extractvalue %dx.types.ResRet.f32 %4131, 3
  %4136 = fsub fast float %4132, %4122
  %4137 = fsub fast float %4133, %4123
  %4138 = fsub fast float %4134, %4124
  %4139 = fsub fast float %4135, %4125
  %4140 = fmul fast float %4136, %4118
  %4141 = fmul fast float %4137, %4118
  %4142 = fmul fast float %4138, %4118
  %4143 = fmul fast float %4139, %4118
  %4144 = fadd fast float %4140, %4122
  %4145 = fadd fast float %4141, %4123
  %4146 = fadd fast float %4142, %4124
  %4147 = fadd fast float %4143, %4125
  br label %4148

; <label>:4148                                    ; preds = %4127, %4110
  %4149 = phi float [ %4144, %4127 ], [ %4122, %4110 ]
  %4150 = phi float [ %4145, %4127 ], [ %4123, %4110 ]
  %4151 = phi float [ %4146, %4127 ], [ %4124, %4110 ]
  %4152 = phi float [ %4147, %4127 ], [ %4125, %4110 ]
  %4153 = fadd fast float %4149, -5.000000e-01
  %4154 = fadd fast float %4151, -5.000000e-01
  %4155 = fmul fast float %4153, 0xBFD5555560000000
  %4156 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4154, float %4155)  ; FMad(a,b,c)
  %4157 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4150, float 0.000000e+00)  ; FMad(a,b,c)
  %4158 = fadd fast float %4157, %4152
  %4159 = fmul fast float %4153, -7.500000e-01
  %4160 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4154, float %4159)  ; FMad(a,b,c)
  %4161 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4150, float 0.000000e+00)  ; FMad(a,b,c)
  %4162 = fadd fast float %4161, %4152
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 0
  %4165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4166 = extractvalue %dx.types.CBufRet.f32 %4165, 0
  %4167 = extractvalue %dx.types.CBufRet.f32 %4165, 1
  %4168 = extractvalue %dx.types.CBufRet.f32 %4165, 2
  %4169 = extractvalue %dx.types.CBufRet.f32 %4165, 3
  %4170 = fsub fast float %4166, %4156
  %4171 = fsub fast float %4167, %4158
  %4172 = fsub fast float %4168, %4160
  %4173 = fsub fast float %4169, %4162
  %4174 = fmul fast float %4170, %4164
  %4175 = fmul fast float %4171, %4164
  %4176 = fmul fast float %4172, %4164
  %4177 = fmul fast float %4173, %4164
  %4178 = fadd fast float %4174, %4156
  %4179 = fadd fast float %4175, %4158
  %4180 = fadd fast float %4176, %4160
  %4181 = fadd fast float %4177, %4162
  %4182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4183 = extractvalue %dx.types.ResRet.i32 %4182, 0
  %4184 = and i32 %4183, 536870911
  %4185 = uitofp i32 %4184 to float
  %4186 = fmul fast float %4185, %4032
  %4187 = fmul fast float %4185, %4036
  %4188 = fptoui float %4186 to i32
  %4189 = fptoui float %4187 to i32
  %4190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4191 = extractvalue %dx.types.ResRet.i32 %4190, 0
  %4192 = and i32 %4191, 31
  %4193 = lshr i32 %4188, %4192
  %4194 = lshr i32 %4189, %4192
  %4195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4196 = extractvalue %dx.types.ResRet.i32 %4195, 0
  %4197 = and i32 %4196, 31
  %4198 = shl i32 1, %4197
  %4199 = call i32 @dx.op.binary.i32(i32 40, i32 %4198, i32 4)  ; UMin(a,b)
  %4200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4201 = extractvalue %dx.types.ResRet.i32 %4200, 0
  %4202 = extractvalue %dx.types.ResRet.i32 %4200, 1
  %4203 = icmp eq i32 %4199, 0
  br i1 %4203, label %4245, label %4204

; <label>:4204                                    ; preds = %4148
  br label %4205

; <label>:4205                                    ; preds = %4233, %4204
  %4206 = phi i32 [ %4236, %4233 ], [ 0, %4204 ]
  %4207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4208 = extractvalue %dx.types.ResRet.i32 %4207, 0
  %4209 = lshr i32 %4208, 16
  %4210 = and i32 %4209, 31
  %4211 = shl i32 %4194, %4210
  %4212 = add i32 %4211, %4193
  %4213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4214 = extractvalue %dx.types.ResRet.i32 %4213, 0
  %4215 = and i32 %4214, 31
  %4216 = shl i32 %4212, %4215
  %4217 = add i32 %4216, %4206
  %4218 = shl i32 %4217, 2
  %4219 = add i32 %4218, 32
  %4220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4219, i32 undef)  ; BufferLoad(srv,index,wot)
  %4221 = extractvalue %dx.types.ResRet.i32 %4220, 0
  %4222 = icmp slt i32 %4221, 0
  %4223 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %4206
  %4224 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4206
  %4225 = bitcast float* %4223 to i32*
  %4226 = bitcast float* %4224 to i32*
  br i1 %4222, label %4227, label %4233

; <label>:4227                                    ; preds = %4205
  %4228 = and i32 %4221, 1073741823
  %4229 = add nuw nsw i32 %4228, 20
  %4230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4229, i32 undef)  ; BufferLoad(srv,index,wot)
  %4231 = extractvalue %dx.types.ResRet.i32 %4230, 0
  %4232 = extractvalue %dx.types.ResRet.i32 %4230, 1
  br label %4233

; <label>:4233                                    ; preds = %4227, %4205
  %4234 = phi i32 [ %4231, %4227 ], [ %4201, %4205 ]
  %4235 = phi i32 [ %4232, %4227 ], [ %4202, %4205 ]
  store i32 %4234, i32* %4225, align 4
  store i32 %4235, i32* %4226, align 4
  %4236 = add nuw i32 %4206, 1
  %4237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4238 = extractvalue %dx.types.CBufRet.i32 %4237, 2
  %4239 = icmp eq i32 %4238, 0
  %4240 = icmp ugt i32 %4221, -1073741825
  %4241 = and i1 %4240, %4239
  %4242 = icmp ult i32 %4236, %4199
  %4243 = and i1 %4241, %4242
  br i1 %4243, label %4205, label %4244

; <label>:4244                                    ; preds = %4233
  br label %4245

; <label>:4245                                    ; preds = %4244, %4148
  %4246 = phi i32 [ 0, %4148 ], [ %4236, %4244 ]
  %4247 = extractvalue %dx.types.CBufRet.f32 %4010, 2
  %4248 = fptoui float %4247 to i32
  %4249 = icmp eq i32 %4248, 0
  br i1 %4249, label %4301, label %4250

; <label>:4250                                    ; preds = %4245
  br label %4251

; <label>:4251                                    ; preds = %4296, %4250
  %4252 = phi i32 [ %4297, %4296 ], [ %4246, %4250 ]
  %4253 = phi i32 [ %4298, %4296 ], [ 0, %4250 ]
  %4254 = lshr i32 %4253, 2
  %4255 = and i32 %4253, 3
  %4256 = add nuw nsw i32 %4254, 83
  %4257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 %4256)  ; CBufferLoadLegacy(handle,regIndex)
  %4258 = extractvalue %dx.types.CBufRet.i32 %4257, 0
  %4259 = extractvalue %dx.types.CBufRet.i32 %4257, 1
  %4260 = extractvalue %dx.types.CBufRet.i32 %4257, 2
  %4261 = extractvalue %dx.types.CBufRet.i32 %4257, 3
  %4262 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 0
  store i32 %4258, i32* %4262, align 4
  %4263 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 1
  store i32 %4259, i32* %4263, align 4
  %4264 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 2
  store i32 %4260, i32* %4264, align 4
  %4265 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 3
  store i32 %4261, i32* %4265, align 4
  %4266 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 %4255
  %4267 = load i32, i32* %4266, align 4, !tbaa !112, !noalias !116
  %4268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4269 = extractvalue %dx.types.ResRet.i32 %4268, 0
  %4270 = lshr i32 %4269, 16
  %4271 = and i32 %4270, 31
  %4272 = shl i32 %4194, %4271
  %4273 = add i32 %4272, %4193
  %4274 = shl i32 %4273, 2
  %4275 = add i32 %4274, %4267
  %4276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4275, i32 undef)  ; BufferLoad(srv,index,wot)
  %4277 = extractvalue %dx.types.ResRet.i32 %4276, 0
  %4278 = icmp eq i32 %4277, 0
  br i1 %4278, label %4296, label %4279

; <label>:4279                                    ; preds = %4251
  %4280 = icmp slt i32 %4277, 0
  %4281 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %4252
  %4282 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4252
  %4283 = bitcast float* %4281 to i32*
  %4284 = bitcast float* %4282 to i32*
  br i1 %4280, label %4285, label %4292

; <label>:4285                                    ; preds = %4279
  %4286 = and i32 %4277, 1073741823
  %4287 = add i32 %4267, 20
  %4288 = add i32 %4287, %4286
  %4289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4288, i32 undef)  ; BufferLoad(srv,index,wot)
  %4290 = extractvalue %dx.types.ResRet.i32 %4289, 0
  %4291 = extractvalue %dx.types.ResRet.i32 %4289, 1
  br label %4292

; <label>:4292                                    ; preds = %4285, %4279
  %4293 = phi i32 [ %4290, %4285 ], [ %4201, %4279 ]
  %4294 = phi i32 [ %4291, %4285 ], [ %4202, %4279 ]
  store i32 %4293, i32* %4283, align 4
  store i32 %4294, i32* %4284, align 4
  %4295 = add i32 %4252, 1
  br label %4296

; <label>:4296                                    ; preds = %4292, %4251
  %4297 = phi i32 [ %4252, %4251 ], [ %4295, %4292 ]
  %4298 = add nuw i32 %4253, 1
  %4299 = icmp eq i32 %4298, %4248
  br i1 %4299, label %4300, label %4251

; <label>:4300                                    ; preds = %4296
  br label %4301

; <label>:4301                                    ; preds = %4300, %4245
  %4302 = phi i32 [ %4246, %4245 ], [ %4297, %4300 ]
  %4303 = icmp eq i32 %4302, 1
  %4304 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 0
  %4305 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  br i1 %4303, label %4306, label %4309

; <label>:4306                                    ; preds = %4301
  %4307 = load float, float* %4304, align 4
  %4308 = load float, float* %4305, align 4
  br label %4336

; <label>:4309                                    ; preds = %4301
  %4310 = load float, float* %4304, align 4
  %4311 = load float, float* %4305, align 4
  %4312 = fdiv fast float 1.000000e+00, %4311
  %4313 = fsub fast float %4310, %4312
  %4314 = icmp ugt i32 %4302, 1
  br i1 %4314, label %4315, label %4331

; <label>:4315                                    ; preds = %4309
  br label %4316

; <label>:4316                                    ; preds = %4316, %4315
  %4317 = phi float [ %4326, %4316 ], [ %4313, %4315 ]
  %4318 = phi float [ %4327, %4316 ], [ %4310, %4315 ]
  %4319 = phi i32 [ %4328, %4316 ], [ 1, %4315 ]
  %4320 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %4319
  %4321 = load float, float* %4320, align 4
  %4322 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4319
  %4323 = load float, float* %4322, align 4
  %4324 = fdiv fast float 1.000000e+00, %4323
  %4325 = fsub fast float %4321, %4324
  %4326 = call float @dx.op.binary.f32(i32 36, float %4317, float %4325)  ; FMin(a,b)
  %4327 = call float @dx.op.binary.f32(i32 35, float %4318, float %4321)  ; FMax(a,b)
  %4328 = add nuw i32 %4319, 1
  %4329 = icmp eq i32 %4328, %4302
  br i1 %4329, label %4330, label %4316

; <label>:4330                                    ; preds = %4316
  br label %4331

; <label>:4331                                    ; preds = %4330, %4309
  %4332 = phi float [ %4313, %4309 ], [ %4326, %4330 ]
  %4333 = phi float [ %4310, %4309 ], [ %4327, %4330 ]
  %4334 = fsub fast float %4333, %4332
  %4335 = fdiv fast float 1.000000e+00, %4334
  br label %4336

; <label>:4336                                    ; preds = %4331, %4306
  %4337 = phi float [ %4307, %4306 ], [ %4333, %4331 ]
  %4338 = phi float [ %4308, %4306 ], [ %4335, %4331 ]
  %4339 = fadd fast float %4040, %4337
  %4340 = fmul fast float %4339, %4338
  %4341 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4342 = fmul fast float %4341, 2.000000e+00
  %4343 = fsub fast float 1.000000e+00, %4342
  %4344 = fmul fast float %4178, %4178
  %4345 = fsub fast float %4179, %4344
  %4346 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4345)  ; FMax(a,b)
  %4347 = fdiv fast float 1.000000e+00, %4346
  %4348 = fmul fast float %4179, %4178
  %4349 = fsub fast float %4180, %4348
  %4350 = fsub fast float %4343, %4178
  %4351 = fmul fast float %4343, %4343
  %4352 = fsub fast float %4351, %4179
  %4353 = fmul fast float %4347, %4349
  %4354 = fmul fast float %4353, %4350
  %4355 = fsub fast float %4352, %4354
  %4356 = fmul fast float %4179, %4179
  %4357 = fsub fast float %4181, %4356
  %4358 = fmul fast float %4349, %4349
  %4359 = fmul fast float %4358, %4347
  %4360 = fsub fast float %4357, %4359
  %4361 = fdiv fast float %4355, %4360
  %4362 = fmul fast float %4361, %4349
  %4363 = fsub fast float %4350, %4362
  %4364 = fmul fast float %4363, %4347
  %4365 = fmul fast float %4364, %4178
  %4366 = fsub fast float 1.000000e+00, %4365
  %4367 = fmul fast float %4361, %4179
  %4368 = fsub fast float %4366, %4367
  %4369 = fmul fast float %4364, %4364
  %4370 = fmul fast float %4361, 4.000000e+00
  %4371 = fmul fast float %4370, %4368
  %4372 = fsub fast float %4369, %4371
  %4373 = call float @dx.op.unary.f32(i32 24, float %4372)  ; Sqrt(value)
  %4374 = fcmp fast oge float %4364, 0.000000e+00
  %4375 = fsub fast float -0.000000e+00, %4373
  %4376 = select i1 %4374, float %4375, float %4373
  %4377 = fsub fast float %4376, %4364
  %4378 = fdiv fast float %4377, %4361
  %4379 = fdiv fast float %4368, %4377
  %4380 = fmul fast float %4378, 5.000000e-01
  %4381 = fmul fast float %4379, 2.000000e+00
  %4382 = select i1 %4374, float %4380, float %4381
  %4383 = select i1 %4374, float %4381, float %4380
  %4384 = call float @dx.op.binary.f32(i32 35, float %4382, float %4383)  ; FMax(a,b)
  %4385 = call float @dx.op.binary.f32(i32 36, float %4382, float %4383)  ; FMin(a,b)
  %4386 = fcmp fast ogt float %4343, %4384
  %4387 = fsub fast float %4343, %4385
  %4388 = fsub fast float %4343, %4384
  %4389 = fsub fast float %4384, %4385
  %4390 = select i1 %4386, float %4388, float %4389
  %4391 = fmul float %4387, %4390
  %4392 = select i1 %4386, float %4385, float %4343
  %4393 = fcmp fast ogt float %4343, %4385
  %4394 = fmul fast float %4392, %4384
  %4395 = fadd fast float %4392, %4384
  %4396 = fmul fast float %4395, %4178
  %4397 = fadd fast float %4394, %4179
  %4398 = fsub fast float %4397, %4396
  %4399 = fdiv fast float %4398, %4391
  %4400 = select i1 %4393, float %4399, float 0.000000e+00
  %4401 = fsub fast float 1.000000e+00, %4400
  %4402 = select i1 %4386, float %4401, float %4400
  %4403 = call float @dx.op.unary.f32(i32 7, float %4402)  ; Saturate(value)
  %4404 = extractvalue %dx.types.CBufRet.f32 %4163, 3
  %4405 = fmul fast float %4404, %4403
  %4406 = fsub fast float 1.000000e+00, %4405
  br label %4407

; <label>:4407                                    ; preds = %4336, %4048, %4013, %4009, %3975
  %4408 = phi float [ 1.000000e+00, %3975 ], [ %4406, %4336 ], [ 1.000000e+00, %4013 ], [ 1.000000e+00, %4048 ], [ 1.000000e+00, %4009 ]
  %4409 = fcmp fast ogt float %4005, 0.000000e+00
  br i1 %4409, label %4410, label %4416, !dx.controlflow.hints !125

; <label>:4410                                    ; preds = %4407
  %4411 = fadd fast float %3918, %3892
  %4412 = call float @dx.op.binary.f32(i32 35, float %4411, float 0.000000e+00)  ; FMax(a,b)
  %4413 = fadd fast float %4412, 0x3F10000000000000
  %4414 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %3907, float %3908, float undef, float undef, i32 0, i32 0, i32 undef, float %4413)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4415 = extractvalue %dx.types.ResRet.f32 %4414, 0
  br label %4416

; <label>:4416                                    ; preds = %4410, %4407
  %4417 = phi float [ %4415, %4410 ], [ 1.000000e+00, %4407 ]
  %4418 = fcmp fast ogt float %4003, 0.000000e+00
  br i1 %4418, label %4419, label %4425, !dx.controlflow.hints !126

; <label>:4419                                    ; preds = %4416
  %4420 = fadd fast float %3948, %3892
  %4421 = call float @dx.op.binary.f32(i32 35, float %4420, float 0.000000e+00)  ; FMax(a,b)
  %4422 = fadd fast float %4421, 0x3F10000000000000
  %4423 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %3899, float %3900, float undef, float undef, i32 0, i32 0, i32 undef, float %4422)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4424 = extractvalue %dx.types.ResRet.f32 %4423, 0
  br label %4425

; <label>:4425                                    ; preds = %4419, %4416
  %4426 = phi float [ %4424, %4419 ], [ 1.000000e+00, %4416 ]
  %4427 = fcmp fast ogt float %4002, 0.000000e+00
  br i1 %4427, label %4428, label %4435, !dx.controlflow.hints !127

; <label>:4428                                    ; preds = %4425
  %4429 = extractvalue %dx.types.CBufRet.f32 %3917, 0
  %4430 = fadd fast float %4429, %3892
  %4431 = call float @dx.op.binary.f32(i32 35, float %4430, float 0.000000e+00)  ; FMax(a,b)
  %4432 = fadd fast float %4431, 0x3F10000000000000
  %4433 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %3884, float %3888, float undef, float undef, i32 0, i32 0, i32 undef, float %4432)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4434 = extractvalue %dx.types.ResRet.f32 %4433, 0
  br label %4435

; <label>:4435                                    ; preds = %4428, %4425
  %4436 = phi float [ %4434, %4428 ], [ 1.000000e+00, %4425 ]
  %4437 = fsub fast float %4417, %4408
  %4438 = fmul fast float %4437, %3946
  %4439 = fadd fast float %4438, %4408
  %4440 = fsub fast float %4426, %4439
  %4441 = fmul fast float %4440, %3976
  %4442 = fadd fast float %4441, %4439
  %4443 = fsub fast float %4436, %4442
  %4444 = fmul fast float %4443, %4002
  %4445 = fadd fast float %4444, %4442
  %4446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4447 = extractvalue %dx.types.CBufRet.f32 %4446, 2
  %4448 = fcmp fast ogt float %4447, 0.000000e+00
  br i1 %4448, label %4449, label %4486, !dx.controlflow.hints !128

; <label>:4449                                    ; preds = %4435
  %4450 = fcmp fast ugt float %4447, 0.000000e+00
  br i1 %4450, label %4451, label %4483

; <label>:4451                                    ; preds = %4449
  %4452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.f32 %4452, 0
  %4454 = extractvalue %dx.types.CBufRet.f32 %4452, 1
  %4455 = extractvalue %dx.types.CBufRet.f32 %4452, 2
  %4456 = extractvalue %dx.types.CBufRet.f32 %4452, 3
  %4457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4458 = extractvalue %dx.types.CBufRet.f32 %4457, 0
  %4459 = extractvalue %dx.types.CBufRet.f32 %4457, 1
  %4460 = extractvalue %dx.types.CBufRet.f32 %4457, 2
  %4461 = extractvalue %dx.types.CBufRet.f32 %4457, 3
  %4462 = extractvalue %dx.types.CBufRet.f32 %4446, 0
  %4463 = extractvalue %dx.types.CBufRet.f32 %4446, 1
  %4464 = extractvalue %dx.types.CBufRet.f32 %2395, 2
  %4465 = fadd fast float %2396, %3861
  %4466 = fadd fast float %2397, %3862
  %4467 = fadd fast float %4464, %3863
  %4468 = fmul fast float %4465, %4453
  %4469 = call float @dx.op.tertiary.f32(i32 46, float %4454, float %4466, float %4468)  ; FMad(a,b,c)
  %4470 = call float @dx.op.tertiary.f32(i32 46, float %4455, float %4467, float %4469)  ; FMad(a,b,c)
  %4471 = fadd fast float %4470, %4456
  %4472 = fmul fast float %4465, %4458
  %4473 = call float @dx.op.tertiary.f32(i32 46, float %4459, float %4466, float %4472)  ; FMad(a,b,c)
  %4474 = call float @dx.op.tertiary.f32(i32 46, float %4460, float %4467, float %4473)  ; FMad(a,b,c)
  %4475 = fadd fast float %4474, %4461
  %4476 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %55, float %4471, float %4475, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4477 = extractvalue %dx.types.ResRet.f32 %4476, 0
  %4478 = fmul fast float %4477, %4463
  %4479 = fadd fast float %4478, %4462
  %4480 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4481 = fmul fast float %4480, %4447
  %4482 = fsub fast float 1.000000e+00, %4481
  br label %4483

; <label>:4483                                    ; preds = %4451, %4449
  %4484 = phi float [ %4482, %4451 ], [ 1.000000e+00, %4449 ]
  %4485 = fmul fast float %4484, %4445
  br label %4486

; <label>:4486                                    ; preds = %4483, %4435, %3841
  %4487 = phi float [ 1.000000e+00, %3841 ], [ %4485, %4483 ], [ %4445, %4435 ]
  %4488 = call float @dx.op.binary.f32(i32 36, float %4487, float %4487)  ; FMin(a,b)
  %4489 = call float @dx.op.binary.f32(i32 36, float %4487, float %4488)  ; FMin(a,b)
  %4490 = fcmp fast ogt float %4489, 0.000000e+00
  br i1 %4490, label %4491, label %4648, !dx.controlflow.hints !129

; <label>:4491                                    ; preds = %4486
  %4492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4493 = extractvalue %dx.types.CBufRet.f32 %4492, 0
  %4494 = extractvalue %dx.types.CBufRet.f32 %4492, 1
  %4495 = extractvalue %dx.types.CBufRet.f32 %4492, 2
  %4496 = extractvalue %dx.types.CBufRet.f32 %4492, 3
  %4497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4498 = extractvalue %dx.types.CBufRet.f32 %4497, 0
  %4499 = extractvalue %dx.types.CBufRet.f32 %4497, 1
  %4500 = extractvalue %dx.types.CBufRet.f32 %4497, 2
  %4501 = extractvalue %dx.types.CBufRet.f32 %4497, 3
  %4502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4503 = extractvalue %dx.types.CBufRet.f32 %4502, 0
  %4504 = extractvalue %dx.types.CBufRet.f32 %4502, 1
  %4505 = extractvalue %dx.types.CBufRet.f32 %4502, 2
  %4506 = extractvalue %dx.types.CBufRet.f32 %4502, 3
  %4507 = fmul fast float %4493, %3861
  %4508 = call float @dx.op.tertiary.f32(i32 46, float %3862, float %4494, float %4507)  ; FMad(a,b,c)
  %4509 = call float @dx.op.tertiary.f32(i32 46, float %3863, float %4495, float %4508)  ; FMad(a,b,c)
  %4510 = fadd fast float %4509, %4496
  %4511 = fmul fast float %4498, %3861
  %4512 = call float @dx.op.tertiary.f32(i32 46, float %3862, float %4499, float %4511)  ; FMad(a,b,c)
  %4513 = call float @dx.op.tertiary.f32(i32 46, float %3863, float %4500, float %4512)  ; FMad(a,b,c)
  %4514 = fadd fast float %4513, %4501
  %4515 = fmul fast float %4503, %3861
  %4516 = call float @dx.op.tertiary.f32(i32 46, float %3862, float %4504, float %4515)  ; FMad(a,b,c)
  %4517 = call float @dx.op.tertiary.f32(i32 46, float %3863, float %4505, float %4516)  ; FMad(a,b,c)
  %4518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4519 = extractvalue %dx.types.CBufRet.f32 %4518, 0
  %4520 = extractvalue %dx.types.CBufRet.f32 %4518, 1
  %4521 = extractvalue %dx.types.CBufRet.f32 %4518, 3
  %4522 = fmul fast float %4521, %4510
  %4523 = fmul fast float %4521, %4514
  %4524 = fadd fast float %4522, %4519
  %4525 = fadd fast float %4523, %4520
  %4526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.f32 %4526, 0
  %4528 = extractvalue %dx.types.CBufRet.f32 %4526, 1
  %4529 = fsub fast float %4524, %4527
  %4530 = fsub fast float %4525, %4528
  %4531 = fcmp fast olt float %4529, 0.000000e+00
  %4532 = fcmp fast olt float %4530, 0.000000e+00
  %4533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4534 = extractvalue %dx.types.CBufRet.f32 %4533, 0
  %4535 = extractvalue %dx.types.CBufRet.f32 %4533, 1
  %4536 = extractvalue %dx.types.CBufRet.f32 %4533, 2
  %4537 = extractvalue %dx.types.CBufRet.f32 %4533, 3
  %4538 = select i1 %4531, float %4534, float %4536
  %4539 = select i1 %4532, float %4535, float %4537
  %4540 = fmul fast float %4538, %4529
  %4541 = fmul fast float %4539, %4530
  %4542 = call float @dx.op.unary.f32(i32 6, float %4540)  ; FAbs(value)
  %4543 = call float @dx.op.unary.f32(i32 6, float %4541)  ; FAbs(value)
  %4544 = extractvalue %dx.types.CBufRet.f32 %3856, 0
  %4545 = call float @dx.op.binary.f32(i32 35, float %4542, float %4543)  ; FMax(a,b)
  %4546 = fsub fast float %4544, %4545
  %4547 = call float @dx.op.unary.f32(i32 7, float %4546)  ; Saturate(value)
  %4548 = fcmp fast ogt float %4547, 0.000000e+00
  br i1 %4548, label %4549, label %4590, !dx.controlflow.hints !130

; <label>:4549                                    ; preds = %4491
  %4550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %58, float %4524, float %4525, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4551 = extractvalue %dx.types.ResRet.f32 %4550, 1
  %4552 = fcmp fast ogt float %4551, 0.000000e+00
  br i1 %4552, label %4553, label %4585

; <label>:4553                                    ; preds = %4549
  %4554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %58, float %4524, float %4525, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4555 = extractvalue %dx.types.ResRet.f32 %4554, 0
  %4556 = extractvalue %dx.types.ResRet.f32 %4554, 1
  %4557 = extractvalue %dx.types.ResRet.f32 %4554, 2
  %4558 = extractvalue %dx.types.ResRet.f32 %4554, 3
  %4559 = fsub fast float 1.000000e+00, %4506
  %4560 = fsub fast float %4559, %4517
  %4561 = fmul fast float %4560, 0x400921FB60000000
  %4562 = fadd fast float %4561, 0x3FF921FB60000000
  %4563 = call float @dx.op.unary.f32(i32 13, float %4562)  ; Sin(value)
  %4564 = fadd fast float %4563, -1.000000e+00
  %4565 = fmul fast float %4564, 0x3FD45F3060000000
  %4566 = fmul fast float %4560, 0x401921FB60000000
  %4567 = fadd fast float %4566, 0x400921FB60000000
  %4568 = call float @dx.op.unary.f32(i32 13, float %4567)  ; Sin(value)
  %4569 = fadd fast float %4568, 0x3E7777A5C0000000
  %4570 = fmul fast float %4569, 0x3FC45F3060000000
  %4571 = fmul fast float %4560, 0x4022D97C80000000
  %4572 = fadd fast float %4571, 0x4012D97C80000000
  %4573 = call float @dx.op.unary.f32(i32 13, float %4572)  ; Sin(value)
  %4574 = fadd fast float %4573, 1.000000e+00
  %4575 = fmul fast float %4574, 0x3FBB2995E0000000
  %4576 = fmul fast float %4560, 0x402921FB60000000
  %4577 = fadd fast float %4576, 0x401921FB60000000
  %4578 = call float @dx.op.unary.f32(i32 13, float %4577)  ; Sin(value)
  %4579 = fadd fast float %4578, 0xBE8777A5C0000000
  %4580 = fmul fast float %4579, 0x3FB45F3060000000
  %4581 = call float @dx.op.dot4.f32(i32 56, float %4555, float %4556, float %4557, float %4558, float %4565, float %4570, float %4575, float %4580)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4582 = fmul fast float %4581, 0xBFF7154760000000
  %4583 = call float @dx.op.unary.f32(i32 21, float %4582)  ; Exp(value)
  %4584 = call float @dx.op.unary.f32(i32 7, float %4583)  ; Saturate(value)
  br label %4585

; <label>:4585                                    ; preds = %4553, %4549
  %4586 = phi float [ %4584, %4553 ], [ 1.000000e+00, %4549 ]
  %4587 = fadd fast float %4586, -1.000000e+00
  %4588 = fmul fast float %4587, %4547
  %4589 = fadd fast float %4588, 1.000000e+00
  br label %4590

; <label>:4590                                    ; preds = %4585, %4491
  %4591 = phi float [ %4589, %4585 ], [ 1.000000e+00, %4491 ]
  %4592 = fmul fast float %4591, %4487
  %4593 = extractvalue %dx.types.CBufRet.f32 %2395, 2
  %4594 = fadd fast float %2396, %137
  %4595 = fadd fast float %2397, %138
  %4596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4597 = extractvalue %dx.types.CBufRet.f32 %4596, 1
  %4598 = fsub fast float -0.000000e+00, %4594
  %4599 = fsub fast float -0.000000e+00, %4595
  %4600 = fsub fast float %2378, %4593
  %4601 = fadd fast float %4600, %4597
  %4602 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4598, float %4599, float %4601)  ; Dot3(ax,ay,az,bx,by,bz)
  %4603 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3842, float %3843, float %3844)  ; Dot3(ax,ay,az,bx,by,bz)
  %4604 = fdiv fast float 1.000000e+00, %4603
  %4605 = fmul fast float %4604, %4602
  %4606 = fmul fast float %3842, %4605
  %4607 = fmul fast float %3843, %4605
  %4608 = fadd fast float %4606, %4594
  %4609 = fadd fast float %4607, %4595
  %4610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4611 = extractvalue %dx.types.CBufRet.f32 %4610, 0
  %4612 = extractvalue %dx.types.CBufRet.f32 %4610, 1
  %4613 = fsub fast float %4608, %4611
  %4614 = fsub fast float %4609, %4612
  %4615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4616 = extractvalue %dx.types.CBufRet.f32 %4615, 2
  %4617 = extractvalue %dx.types.CBufRet.f32 %4615, 3
  %4618 = fmul fast float %4613, %4616
  %4619 = fmul fast float %4614, %4617
  %4620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.i32 %4620, 3
  %4622 = icmp eq i32 %4621, 0
  br i1 %4622, label %4628, label %4623

; <label>:4623                                    ; preds = %4590
  %4624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %57, float %4618, float %4619, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4625 = extractvalue %dx.types.ResRet.f32 %4624, 0
  %4626 = extractvalue %dx.types.ResRet.f32 %4624, 1
  %4627 = extractvalue %dx.types.ResRet.f32 %4624, 2
  br label %4633

; <label>:4628                                    ; preds = %4590
  %4629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %58, float %4618, float %4619, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4630 = extractvalue %dx.types.ResRet.f32 %4629, 0
  %4631 = extractvalue %dx.types.ResRet.f32 %4629, 1
  %4632 = extractvalue %dx.types.ResRet.f32 %4629, 2
  br label %4633

; <label>:4633                                    ; preds = %4628, %4623
  %4634 = phi float [ %4625, %4623 ], [ %4630, %4628 ]
  %4635 = phi float [ %4626, %4623 ], [ %4631, %4628 ]
  %4636 = phi float [ %4627, %4623 ], [ %4632, %4628 ]
  %4637 = extractvalue %dx.types.CBufRet.f32 %4596, 2
  %4638 = fmul fast float %4637, %4634
  %4639 = extractvalue %dx.types.CBufRet.f32 %4596, 0
  %4640 = fsub fast float %4605, %4639
  %4641 = fsub fast float %4640, %4638
  %4642 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4641)  ; FMax(a,b)
  %4643 = fmul fast float %4642, %4635
  %4644 = call float @dx.op.binary.f32(i32 36, float %4636, float %4643)  ; FMin(a,b)
  %4645 = fmul fast float %4644, 0xBFF7154760000000
  %4646 = call float @dx.op.unary.f32(i32 21, float %4645)  ; Exp(value)
  %4647 = fmul fast float %4592, %4646
  br label %4648

; <label>:4648                                    ; preds = %4633, %4486
  %4649 = phi float [ %4647, %4633 ], [ %4487, %4486 ]
  %4650 = call float @dx.op.binary.f32(i32 36, float %4649, float %4649)  ; FMin(a,b)
  %4651 = call float @dx.op.binary.f32(i32 36, float %4649, float %4650)  ; FMin(a,b)
  %4652 = fcmp fast ogt float %4651, 0.000000e+00
  br i1 %4652, label %4653, label %5039, !dx.controlflow.hints !131

; <label>:4653                                    ; preds = %4648
  %4654 = fmul fast float %4649, %3853
  %4655 = fmul fast float %4649, %3854
  %4656 = fmul fast float %4649, %3855
  %4657 = fsub fast float %139, %2184
  %4658 = fcmp fast ogt float %4657, 0.000000e+00
  %4659 = fmul fast float %3842, 5.120000e+02
  %4660 = fmul fast float %3843, 5.120000e+02
  %4661 = fmul fast float %3844, 5.120000e+02
  %4662 = fadd fast float %4661, %139
  %4663 = fsub fast float %2184, %4662
  %4664 = fmul fast float %4663, 2.000000e+00
  %4665 = fadd fast float %4664, %4662
  %4666 = select i1 %4658, float %4665, float %4662
  %4667 = fsub fast float %4666, %139
  %4668 = call float @dx.op.dot3.f32(i32 55, float %4659, float %4660, float %4667, float %4659, float %4660, float %4667)  ; Dot3(ax,ay,az,bx,by,bz)
  %4669 = call float @dx.op.unary.f32(i32 25, float %4668)  ; Rsqrt(value)
  %4670 = fmul fast float %4669, %4659
  %4671 = fmul fast float %4669, %4660
  %4672 = fmul fast float %4669, %4667
  %4673 = fsub fast float %2184, %139
  %4674 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4673)  ; Dot3(ax,ay,az,bx,by,bz)
  %4675 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4670, float %4671, float %4672)  ; Dot3(ax,ay,az,bx,by,bz)
  %4676 = fdiv fast float 1.000000e+00, %4675
  %4677 = fmul fast float %4676, %4674
  %4678 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4657, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4679 = fcmp fast ogt float %4678, 0.000000e+00
  %4680 = fcmp fast olt float %4678, 0.000000e+00
  %4681 = zext i1 %4679 to i32
  %4682 = zext i1 %4680 to i32
  %4683 = sub nsw i32 %4681, %4682
  %4684 = sitofp i32 %4683 to float
  %4685 = fsub fast float %4666, %2184
  %4686 = call float @dx.op.dot3.f32(i32 55, float %4659, float %4660, float %4685, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4687 = fcmp fast ogt float %4686, 0.000000e+00
  %4688 = fcmp fast olt float %4686, 0.000000e+00
  %4689 = zext i1 %4687 to i32
  %4690 = zext i1 %4688 to i32
  %4691 = sub nsw i32 %4689, %4690
  %4692 = sitofp i32 %4691 to float
  %4693 = fcmp fast une float %4684, %4692
  br i1 %4693, label %4694, label %4704

; <label>:4694                                    ; preds = %4653
  %4695 = fmul fast float %4677, %4672
  %4696 = fmul fast float %4677, %4671
  %4697 = fmul fast float %4677, %4670
  %4698 = fmul fast float %4697, %4697
  %4699 = fmul fast float %4696, %4696
  %4700 = fadd fast float %4698, %4699
  %4701 = fmul fast float %4695, %4695
  %4702 = fadd fast float %4700, %4701
  %4703 = call float @dx.op.unary.f32(i32 24, float %4702)  ; Sqrt(value)
  br label %4714

; <label>:4704                                    ; preds = %4653
  %4705 = icmp slt i32 %4683, 0
  br i1 %4705, label %4706, label %4714

; <label>:4706                                    ; preds = %4704
  %4707 = fsub fast float %139, %4666
  %4708 = fmul fast float %4659, %4659
  %4709 = fmul fast float %4660, %4660
  %4710 = fadd fast float %4708, %4709
  %4711 = fmul fast float %4707, %4707
  %4712 = fadd fast float %4710, %4711
  %4713 = call float @dx.op.unary.f32(i32 24, float %4712)  ; Sqrt(value)
  br label %4714

; <label>:4714                                    ; preds = %4706, %4704, %4694
  %4715 = phi float [ %4703, %4694 ], [ %4713, %4706 ], [ 0.000000e+00, %4704 ]
  %4716 = fsub fast float -0.000000e+00, %4715
  %4717 = select i1 %4658, float -0.000000e+00, float %4716
  %4718 = fmul fast float %2185, 0x3FF7154760000000
  %4719 = fmul fast float %4718, %4717
  %4720 = fmul fast float %2186, 0x3FF7154760000000
  %4721 = fmul fast float %4720, %4717
  %4722 = fmul fast float %2187, 0x3FF7154760000000
  %4723 = fmul fast float %4722, %4717
  %4724 = call float @dx.op.unary.f32(i32 21, float %4719)  ; Exp(value)
  %4725 = call float @dx.op.unary.f32(i32 21, float %4721)  ; Exp(value)
  %4726 = call float @dx.op.unary.f32(i32 21, float %4723)  ; Exp(value)
  %4727 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4728 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4729 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4730 = fmul fast float %4654, %4727
  %4731 = fmul fast float %4655, %4728
  %4732 = fmul fast float %4656, %4729
  %4733 = fsub fast float %3842, %186
  %4734 = fsub fast float %3843, %187
  %4735 = fsub fast float %3844, %188
  %4736 = call float @dx.op.dot3.f32(i32 55, float %4733, float %4734, float %4735, float %4733, float %4734, float %4735)  ; Dot3(ax,ay,az,bx,by,bz)
  %4737 = call float @dx.op.unary.f32(i32 25, float %4736)  ; Rsqrt(value)
  %4738 = fmul fast float %4737, %4733
  %4739 = fmul fast float %4737, %4734
  %4740 = fmul fast float %4737, %4735
  %4741 = call float @dx.op.dot3.f32(i32 55, float %3842, float %3843, float %3844, float %2373, float %2374, float %2375)  ; Dot3(ax,ay,az,bx,by,bz)
  %4742 = call float @dx.op.dot3.f32(i32 55, float %2201, float %2202, float %2203, float %4738, float %4739, float %4740)  ; Dot3(ax,ay,az,bx,by,bz)
  %4743 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4744 = fmul fast float %4743, %4743
  %4745 = fmul fast float %4744, %2394
  %4746 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4747 = fmul fast float %4746, %4743
  %4748 = call float @dx.op.dot3.f32(i32 55, float %2373, float %2374, float %2375, float %4738, float %4739, float %4740)  ; Dot3(ax,ay,az,bx,by,bz)
  %4749 = fmul fast float %4748, %4748
  %4750 = call float @dx.op.unary.f32(i32 6, float %4741)  ; FAbs(value)
  %4751 = call float @dx.op.binary.f32(i32 35, float %3810, float 0x3F847AE140000000)  ; FMax(a,b)
  %4752 = fmul fast float %4751, %4751
  %4753 = fmul fast float %4752, %4752
  %4754 = fsub fast float 1.000000e+00, %4753
  %4755 = fmul fast float %2381, %2381
  %4756 = fmul fast float %4755, %4754
  %4757 = fadd fast float %4756, %4753
  %4758 = bitcast float %4757 to i32
  %4759 = ashr i32 %4758, 1
  %4760 = add nsw i32 %4759, 532487669
  %4761 = bitcast i32 %4760 to float
  %4762 = fadd fast float %4761, %2381
  %4763 = fmul fast float %4753, %4749
  %4764 = fsub fast float 1.000000e+00, %4749
  %4765 = fadd fast float %4764, %4763
  %4766 = fmul fast float %4750, %4750
  %4767 = fmul fast float %4766, %4754
  %4768 = fadd fast float %4767, %4753
  %4769 = bitcast float %4768 to i32
  %4770 = ashr i32 %4769, 1
  %4771 = add nsw i32 %4770, 532487669
  %4772 = bitcast i32 %4771 to float
  %4773 = fadd fast float %4772, %4750
  %4774 = fmul fast float %4765, %4765
  %4775 = fmul fast float %4774, %4762
  %4776 = fmul fast float %4775, %4773
  %4777 = fdiv fast float 0x3FF0A00000000000, %4776
  %4778 = fmul fast float %4777, %4753
  %4779 = fmul fast float %3672, 0x3FF9999980000000
  %4780 = fsub fast float 5.000000e+00, %4779
  %4781 = call float @dx.op.unary.f32(i32 6, float %4742)  ; FAbs(value)
  %4782 = fsub fast float 1.000000e+00, %4781
  %4783 = fmul fast float %3672, 0x41D9660740000000
  %4784 = fadd fast float %4783, 0xC1EFBF8940000000
  %4785 = bitcast float %4782 to i32
  %4786 = sitofp i32 %4785 to float
  %4787 = fmul fast float %4786, %4780
  %4788 = fadd fast float %4784, %4787
  %4789 = fptosi float %4788 to i32
  %4790 = bitcast i32 %4789 to float
  %4791 = fsub fast float 1.000000e+00, %2367
  %4792 = fsub fast float 1.000000e+00, %2368
  %4793 = fsub fast float 1.000000e+00, %2379
  %4794 = fmul fast float %4790, %4791
  %4795 = fmul fast float %4790, %4792
  %4796 = fmul fast float %4790, %4793
  %4797 = fadd fast float %4794, %2367
  %4798 = fadd fast float %4795, %2368
  %4799 = fadd fast float %4796, %2379
  br i1 %3695, label %4800, label %4823

; <label>:4800                                    ; preds = %4714
  %4801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1708, float %4781, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4802 = extractvalue %dx.types.ResRet.f32 %4801, 0
  %4803 = extractvalue %dx.types.ResRet.f32 %4801, 1
  %4804 = extractvalue %dx.types.ResRet.f32 %4801, 2
  %4805 = fadd fast float %4802, -5.000000e-01
  %4806 = fadd fast float %4803, -5.000000e-01
  %4807 = fadd fast float %4804, -5.000000e-01
  %4808 = fmul fast float %2367, 4.000000e+00
  %4809 = fmul fast float %4808, %4791
  %4810 = fmul fast float %4809, %4805
  %4811 = fmul fast float %2368, 4.000000e+00
  %4812 = fmul fast float %4811, %4792
  %4813 = fmul fast float %4812, %4806
  %4814 = fmul fast float %2379, 4.000000e+00
  %4815 = fmul fast float %4814, %4793
  %4816 = fmul fast float %4815, %4807
  %4817 = fadd fast float %4810, %4797
  %4818 = fadd fast float %4813, %4798
  %4819 = fadd fast float %4816, %4799
  %4820 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4821 = call float @dx.op.unary.f32(i32 7, float %4818)  ; Saturate(value)
  %4822 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  br label %4823

; <label>:4823                                    ; preds = %4800, %4714
  %4824 = phi float [ %4820, %4800 ], [ %4797, %4714 ]
  %4825 = phi float [ %4821, %4800 ], [ %4798, %4714 ]
  %4826 = phi float [ %4822, %4800 ], [ %4799, %4714 ]
  %4827 = fmul fast float %4741, 9.843750e-01
  %4828 = fadd fast float %4827, 7.812500e-03
  %4829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %4828, float %3676, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4830 = extractvalue %dx.types.ResRet.f32 %4829, 0
  %4831 = extractvalue %dx.types.ResRet.f32 %4829, 1
  %4832 = extractvalue %dx.types.ResRet.f32 %4829, 2
  %4833 = extractvalue %dx.types.ResRet.f32 %4829, 3
  %4834 = fsub fast float %4832, %4830
  %4835 = fsub fast float %4833, %4831
  %4836 = fmul fast float %4834, %3682
  %4837 = fmul fast float %4835, %3682
  %4838 = fadd fast float %4836, %4830
  %4839 = fadd fast float %4837, %4831
  %4840 = fmul fast float %4838, %2367
  %4841 = fmul fast float %4838, %2368
  %4842 = fmul fast float %4838, %2379
  %4843 = fadd fast float %4840, %4839
  %4844 = fadd fast float %4841, %4839
  %4845 = fadd fast float %4842, %4839
  br i1 %3695, label %4846, label %4869

; <label>:4846                                    ; preds = %4823
  %4847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1708, float %4741, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4848 = extractvalue %dx.types.ResRet.f32 %4847, 0
  %4849 = extractvalue %dx.types.ResRet.f32 %4847, 1
  %4850 = extractvalue %dx.types.ResRet.f32 %4847, 2
  %4851 = fadd fast float %4848, -5.000000e-01
  %4852 = fadd fast float %4849, -5.000000e-01
  %4853 = fadd fast float %4850, -5.000000e-01
  %4854 = fmul fast float %2367, 4.000000e+00
  %4855 = fmul fast float %4854, %4791
  %4856 = fmul fast float %4855, %4851
  %4857 = fmul fast float %2368, 4.000000e+00
  %4858 = fmul fast float %4857, %4792
  %4859 = fmul fast float %4858, %4852
  %4860 = fmul fast float %2379, 4.000000e+00
  %4861 = fmul fast float %4860, %4793
  %4862 = fmul fast float %4861, %4853
  %4863 = fadd fast float %4856, %4843
  %4864 = fadd fast float %4859, %4844
  %4865 = fadd fast float %4862, %4845
  %4866 = call float @dx.op.unary.f32(i32 7, float %4863)  ; Saturate(value)
  %4867 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4868 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  br label %4869

; <label>:4869                                    ; preds = %4846, %4823
  %4870 = phi float [ %4866, %4846 ], [ %4843, %4823 ]
  %4871 = phi float [ %4867, %4846 ], [ %4844, %4823 ]
  %4872 = phi float [ %4868, %4846 ], [ %4845, %4823 ]
  %4873 = call float @dx.op.binary.f32(i32 35, float %4871, float %4872)  ; FMax(a,b)
  %4874 = call float @dx.op.binary.f32(i32 35, float %4870, float %4873)  ; FMax(a,b)
  %4875 = fsub fast float 1.000000e+00, %4874
  %4876 = call float @dx.op.binary.f32(i32 35, float %4750, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4877 = fdiv fast float %1108, %4876
  %4878 = fmul fast float %3750, %4877
  %4879 = fmul fast float %3752, %4877
  %4880 = fmul fast float %3754, %4877
  %4881 = call float @dx.op.unary.f32(i32 21, float %4878)  ; Exp(value)
  %4882 = call float @dx.op.unary.f32(i32 21, float %4879)  ; Exp(value)
  %4883 = call float @dx.op.unary.f32(i32 21, float %4880)  ; Exp(value)
  %4884 = call float @dx.op.unary.f32(i32 7, float %4881)  ; Saturate(value)
  %4885 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4886 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4887 = select i1 %3747, float %4884, float 0.000000e+00
  %4888 = select i1 %3748, float %4885, float 0.000000e+00
  %4889 = select i1 %3749, float %4886, float 0.000000e+00
  %4890 = fsub fast float -0.000000e+00, %2373
  %4891 = fsub fast float -0.000000e+00, %2374
  %4892 = fsub fast float -0.000000e+00, %2375
  %4893 = call float @dx.op.dot3.f32(i32 55, float %3842, float %3843, float %3844, float %4890, float %4891, float %4892)  ; Dot3(ax,ay,az,bx,by,bz)
  %4894 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4895 = fmul fast float %4894, 9.843750e-01
  %4896 = fadd fast float %4895, 7.812500e-03
  %4897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %4896, float %3676, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4898 = extractvalue %dx.types.ResRet.f32 %4897, 0
  %4899 = extractvalue %dx.types.ResRet.f32 %4897, 1
  %4900 = extractvalue %dx.types.ResRet.f32 %4897, 2
  %4901 = extractvalue %dx.types.ResRet.f32 %4897, 3
  %4902 = fsub fast float %4900, %4898
  %4903 = fsub fast float %4901, %4899
  %4904 = fmul fast float %4902, %3682
  %4905 = fmul fast float %4903, %3682
  %4906 = fadd fast float %4904, %4898
  %4907 = fadd fast float %4905, %4899
  %4908 = fmul fast float %4906, %2367
  %4909 = fmul fast float %4906, %2368
  %4910 = fmul fast float %4906, %2379
  %4911 = fadd fast float %4908, %4907
  %4912 = fadd fast float %4909, %4907
  %4913 = fadd fast float %4910, %4907
  br i1 %3695, label %4914, label %4937

; <label>:4914                                    ; preds = %4869
  %4915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1708, float %4894, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4916 = extractvalue %dx.types.ResRet.f32 %4915, 0
  %4917 = extractvalue %dx.types.ResRet.f32 %4915, 1
  %4918 = extractvalue %dx.types.ResRet.f32 %4915, 2
  %4919 = fadd fast float %4916, -5.000000e-01
  %4920 = fadd fast float %4917, -5.000000e-01
  %4921 = fadd fast float %4918, -5.000000e-01
  %4922 = fmul fast float %2367, 4.000000e+00
  %4923 = fmul fast float %4922, %4791
  %4924 = fmul fast float %4923, %4919
  %4925 = fmul fast float %2368, 4.000000e+00
  %4926 = fmul fast float %4925, %4792
  %4927 = fmul fast float %4926, %4920
  %4928 = fmul fast float %2379, 4.000000e+00
  %4929 = fmul fast float %4928, %4793
  %4930 = fmul fast float %4929, %4921
  %4931 = fadd fast float %4924, %4911
  %4932 = fadd fast float %4927, %4912
  %4933 = fadd fast float %4930, %4913
  %4934 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4935 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4936 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  br label %4937

; <label>:4937                                    ; preds = %4914, %4869
  %4938 = phi float [ %4934, %4914 ], [ %4911, %4869 ]
  %4939 = phi float [ %4935, %4914 ], [ %4912, %4869 ]
  %4940 = phi float [ %4936, %4914 ], [ %4913, %4869 ]
  %4941 = call float @dx.op.binary.f32(i32 35, float %4939, float %4940)  ; FMax(a,b)
  %4942 = call float @dx.op.binary.f32(i32 35, float %4938, float %4941)  ; FMax(a,b)
  %4943 = fsub fast float 1.000000e+00, %4942
  %4944 = fmul fast float %3810, %3815
  %4945 = fadd fast float %3817, %4944
  %4946 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4947 = fsub fast float %3842, %2387
  %4948 = fsub fast float %3843, %2388
  %4949 = fsub fast float %3844, %2389
  %4950 = call float @dx.op.dot3.f32(i32 55, float %4947, float %4948, float %4949, float %4947, float %4948, float %4949)  ; Dot3(ax,ay,az,bx,by,bz)
  %4951 = call float @dx.op.unary.f32(i32 25, float %4950)  ; Rsqrt(value)
  %4952 = fmul fast float %4951, %4947
  %4953 = fmul fast float %4951, %4948
  %4954 = fmul fast float %4951, %4949
  %4955 = call float @dx.op.dot3.f32(i32 55, float %4890, float %4891, float %4892, float %4952, float %4953, float %4954)  ; Dot3(ax,ay,az,bx,by,bz)
  %4956 = fmul fast float %4955, %4955
  %4957 = call float @dx.op.unary.f32(i32 6, float %4894)  ; FAbs(value)
  %4958 = call float @dx.op.binary.f32(i32 35, float %4946, float 0x3F847AE140000000)  ; FMax(a,b)
  %4959 = fmul fast float %4958, %4958
  %4960 = fmul fast float %4959, %4959
  %4961 = fsub fast float 1.000000e+00, %4960
  %4962 = fmul fast float %4755, %4961
  %4963 = fadd fast float %4962, %4960
  %4964 = bitcast float %4963 to i32
  %4965 = ashr i32 %4964, 1
  %4966 = add nsw i32 %4965, 532487669
  %4967 = bitcast i32 %4966 to float
  %4968 = fadd fast float %4967, %2381
  %4969 = fmul fast float %4960, %4956
  %4970 = fsub fast float 1.000000e+00, %4956
  %4971 = fadd fast float %4970, %4969
  %4972 = fmul fast float %4957, %4957
  %4973 = fmul fast float %4972, %4961
  %4974 = fadd fast float %4973, %4960
  %4975 = bitcast float %4974 to i32
  %4976 = ashr i32 %4975, 1
  %4977 = add nsw i32 %4976, 532487669
  %4978 = bitcast i32 %4977 to float
  %4979 = fadd fast float %4978, %4957
  %4980 = fmul fast float %4971, %4971
  %4981 = fmul fast float %4980, %4968
  %4982 = fmul fast float %4981, %4979
  %4983 = fdiv fast float 0x3FF0A00000000000, %4982
  %4984 = fmul fast float %4983, %4960
  %4985 = fmul fast float %4894, %4887
  %4986 = fmul fast float %4894, %4888
  %4987 = fmul fast float %4894, %4889
  %4988 = fmul fast float %4985, %4943
  %4989 = fmul fast float %4988, %4984
  %4990 = fmul fast float %4986, %4943
  %4991 = fmul fast float %4990, %4984
  %4992 = fmul fast float %4987, %4943
  %4993 = fmul fast float %4992, %4984
  %4994 = fmul fast float %4824, %4778
  %4995 = fmul fast float %4825, %4778
  %4996 = fmul fast float %4826, %4778
  %4997 = fsub fast float 1.000000e+00, %4742
  %4998 = bitcast float %4997 to i32
  %4999 = sitofp i32 %4998 to float
  %5000 = fmul fast float %4999, 5.000000e+00
  %5001 = fadd fast float %5000, 0xC1EFBF8940000000
  %5002 = fptosi float %5001 to i32
  %5003 = bitcast i32 %5002 to float
  %5004 = fmul fast float %5003, %1707
  %5005 = fmul fast float %4875, %5004
  %5006 = fmul fast float %5005, %3742
  %5007 = fmul fast float %5005, %3743
  %5008 = fmul fast float %5005, %3744
  %5009 = fadd fast float %5006, %4994
  %5010 = fadd fast float %5007, %4995
  %5011 = fadd fast float %5008, %4996
  %5012 = fmul fast float %5009, %4747
  %5013 = fmul fast float %5010, %4747
  %5014 = fmul fast float %5011, %4747
  %5015 = fmul fast float %4747, %4730
  %5016 = fmul fast float %5015, %4875
  %5017 = fmul fast float %4747, %4731
  %5018 = fmul fast float %5017, %4875
  %5019 = fmul fast float %4747, %4732
  %5020 = fmul fast float %5019, %4875
  %5021 = fadd fast float %5012, %4989
  %5022 = fadd fast float %5013, %4991
  %5023 = fadd fast float %5014, %4993
  %5024 = fmul fast float %5021, %4730
  %5025 = fmul fast float %5022, %4731
  %5026 = fmul fast float %5023, %4732
  %5027 = fadd fast float %5016, %3832
  %5028 = fmul fast float %5027, %1758
  %5029 = fadd fast float %5018, %3834
  %5030 = fmul fast float %5029, %1758
  %5031 = fadd fast float %5020, %3836
  %5032 = fmul fast float %5031, %1758
  %5033 = fadd fast float %5024, %3795
  %5034 = fmul fast float %5033, %1758
  %5035 = fadd fast float %5025, %3798
  %5036 = fmul fast float %5035, %1758
  %5037 = fadd fast float %5026, %3801
  %5038 = fmul fast float %5037, %1758
  br label %5039

; <label>:5039                                    ; preds = %4937, %4648, %3722
  %5040 = phi float [ %3796, %3722 ], [ %3796, %4648 ], [ %5034, %4937 ]
  %5041 = phi float [ %3799, %3722 ], [ %3799, %4648 ], [ %5036, %4937 ]
  %5042 = phi float [ %3802, %3722 ], [ %3802, %4648 ], [ %5038, %4937 ]
  %5043 = phi float [ %3833, %3722 ], [ %3833, %4648 ], [ %5028, %4937 ]
  %5044 = phi float [ %3835, %3722 ], [ %3835, %4648 ], [ %5030, %4937 ]
  %5045 = phi float [ %3837, %3722 ], [ %3837, %4648 ], [ %5032, %4937 ]
  %5046 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5047 = extractvalue %dx.types.CBufRet.i32 %5046, 0
  %5048 = icmp eq i32 %5047, 0
  br i1 %5048, label %5823, label %5049

; <label>:5049                                    ; preds = %5039
  %5050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5051 = extractvalue %dx.types.CBufRet.f32 %5050, 2
  %5052 = extractvalue %dx.types.CBufRet.f32 %5050, 3
  %5053 = fmul fast float %5051, %90
  %5054 = fmul fast float %5052, %91
  %5055 = fptoui float %5053 to i32
  %5056 = fptoui float %5054 to i32
  %5057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5058 = extractvalue %dx.types.CBufRet.f32 %5057, 0
  %5059 = extractvalue %dx.types.CBufRet.f32 %5057, 2
  %5060 = extractvalue %dx.types.CBufRet.f32 %5057, 3
  %5061 = fadd fast float %81, -4.000000e+00
  %5062 = call float @dx.op.binary.f32(i32 35, float %5061, float 0.000000e+00)  ; FMax(a,b)
  %5063 = fadd fast float %5062, %5058
  %5064 = fmul fast float %5063, %5059
  %5065 = call float @dx.op.unary.f32(i32 23, float %5064)  ; Log(value)
  %5066 = fmul fast float %5065, %5060
  %5067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5068 = extractvalue %dx.types.CBufRet.f32 %5067, 2
  %5069 = fmul fast float %5066, %5068
  %5070 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5072 = extractvalue %dx.types.CBufRet.i32 %5071, 1
  %5073 = add i32 %5072, -1
  %5074 = uitofp i32 %5072 to float
  %5075 = fmul fast float %5074, %5070
  %5076 = fptoui float %5075 to i32
  %5077 = call i32 @dx.op.binary.i32(i32 40, i32 %5076, i32 %5073)  ; UMin(a,b)
  %5078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5079 = extractvalue %dx.types.CBufRet.i32 %5078, 2
  %5080 = extractvalue %dx.types.CBufRet.i32 %5078, 3
  %5081 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5056, i32 %5079, i32 %5055)  ; UMad(a,b,c)
  %5082 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5077, i32 %5080, i32 %5081)  ; UMad(a,b,c)
  %5083 = add nsw i32 %5047, -1
  %5084 = call i32 @dx.op.binary.i32(i32 37, i32 %5083, i32 0)  ; IMax(a,b)
  %5085 = call float @dx.op.binary.f32(i32 35, float %81, float 0.000000e+00)  ; FMax(a,b)
  %5086 = fptoui float %5085 to i32
  %5087 = lshr i32 %5086, 5
  %5088 = call i32 @dx.op.binary.i32(i32 40, i32 %5087, i32 8191)  ; UMin(a,b)
  %5089 = shl i32 %5088, 2
  %5090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5089, i32 undef)  ; BufferLoad(srv,index,wot)
  %5091 = extractvalue %dx.types.ResRet.i32 %5090, 0
  %5092 = lshr i32 %5091, 16
  %5093 = and i32 %5091, 65535
  %5094 = lshr i32 %5091, 21
  %5095 = lshr i32 %5093, 5
  %5096 = call i32 @dx.op.binary.i32(i32 40, i32 %5095, i32 %5084)  ; UMin(a,b)
  %5097 = icmp ugt i32 %5094, %5096
  br i1 %5097, label %5823, label %5098

; <label>:5098                                    ; preds = %5049
  br label %5099

; <label>:5099                                    ; preds = %5813, %5098
  %5100 = phi i32 [ %5820, %5813 ], [ %5094, %5098 ]
  %5101 = phi float [ %5814, %5813 ], [ %5040, %5098 ]
  %5102 = phi float [ %5815, %5813 ], [ %5041, %5098 ]
  %5103 = phi float [ %5816, %5813 ], [ %5042, %5098 ]
  %5104 = phi float [ %5817, %5813 ], [ %5043, %5098 ]
  %5105 = phi float [ %5818, %5813 ], [ %5044, %5098 ]
  %5106 = phi float [ %5819, %5813 ], [ %5045, %5098 ]
  %5107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5108 = extractvalue %dx.types.CBufRet.i32 %5107, 0
  %5109 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5082, i32 %5108, i32 %5100)  ; UMad(a,b,c)
  %5110 = shl i32 %5109, 2
  %5111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5110, i32 undef)  ; BufferLoad(srv,index,wot)
  %5112 = extractvalue %dx.types.ResRet.i32 %5111, 0
  %5113 = shl i32 %5100, 5
  %5114 = sub nsw i32 %5092, %5113
  %5115 = call i32 @dx.op.binary.i32(i32 37, i32 %5114, i32 0)  ; IMax(a,b)
  %5116 = call i32 @dx.op.binary.i32(i32 38, i32 %5115, i32 31)  ; IMin(a,b)
  %5117 = sub nsw i32 1, %5092
  %5118 = add nsw i32 %5117, %5093
  %5119 = call i32 @dx.op.binary.i32(i32 37, i32 %5118, i32 0)  ; IMax(a,b)
  %5120 = call i32 @dx.op.binary.i32(i32 38, i32 %5119, i32 32)  ; IMin(a,b)
  %5121 = and i32 %5120, 31
  %5122 = shl i32 -1, %5121
  %5123 = xor i32 %5122, -1
  %5124 = and i32 %5116, 31
  %5125 = shl i32 %5123, %5124
  %5126 = icmp eq i32 %5120, 32
  %5127 = select i1 %5126, i32 -1, i32 %5125
  %5128 = and i32 %5127, %5112
  %5129 = icmp eq i32 %5128, 0
  br i1 %5129, label %5813, label %5130

; <label>:5130                                    ; preds = %5099
  br label %5131

; <label>:5131                                    ; preds = %5266, %5130
  %5132 = phi i32 [ %5143, %5266 ], [ %5128, %5130 ]
  %5133 = phi float [ %5267, %5266 ], [ %5101, %5130 ]
  %5134 = phi float [ %5268, %5266 ], [ %5102, %5130 ]
  %5135 = phi float [ %5269, %5266 ], [ %5103, %5130 ]
  %5136 = phi float [ %5270, %5266 ], [ %5104, %5130 ]
  %5137 = phi float [ %5271, %5266 ], [ %5105, %5130 ]
  %5138 = phi float [ %5272, %5266 ], [ %5106, %5130 ]
  %5139 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5132)  ; FirstbitLo(value)
  %5140 = add i32 %5139, %5113
  %5141 = and i32 %5139, 31
  %5142 = shl i32 1, %5141
  %5143 = xor i32 %5142, %5132
  %5144 = mul i32 %5140, 112
  %5145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5144, i32 undef)  ; BufferLoad(srv,index,wot)
  %5146 = extractvalue %dx.types.ResRet.f32 %5145, 0
  %5147 = extractvalue %dx.types.ResRet.f32 %5145, 1
  %5148 = extractvalue %dx.types.ResRet.f32 %5145, 2
  %5149 = or i32 %5144, 12
  %5150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5149, i32 undef)  ; BufferLoad(srv,index,wot)
  %5151 = extractvalue %dx.types.ResRet.f32 %5150, 0
  %5152 = add i32 %5144, 16
  %5153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5152, i32 undef)  ; BufferLoad(srv,index,wot)
  %5154 = extractvalue %dx.types.ResRet.f32 %5153, 0
  %5155 = extractvalue %dx.types.ResRet.f32 %5153, 1
  %5156 = extractvalue %dx.types.ResRet.f32 %5153, 2
  %5157 = add i32 %5144, 28
  %5158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5157, i32 undef)  ; BufferLoad(srv,index,wot)
  %5159 = extractvalue %dx.types.ResRet.i32 %5158, 0
  %5160 = add i32 %5144, 44
  %5161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5160, i32 undef)  ; BufferLoad(srv,index,wot)
  %5162 = extractvalue %dx.types.ResRet.f32 %5161, 0
  %5163 = add i32 %5144, 48
  %5164 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5163, i32 undef)  ; BufferLoad(srv,index,wot)
  %5165 = extractvalue %dx.types.ResRet.f32 %5164, 0
  %5166 = extractvalue %dx.types.ResRet.f32 %5164, 1
  %5167 = extractvalue %dx.types.ResRet.f32 %5164, 2
  %5168 = extractvalue %dx.types.ResRet.f32 %5164, 3
  %5169 = add i32 %5144, 64
  %5170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5169, i32 undef)  ; BufferLoad(srv,index,wot)
  %5171 = extractvalue %dx.types.ResRet.f32 %5170, 0
  %5172 = extractvalue %dx.types.ResRet.f32 %5170, 1
  %5173 = extractvalue %dx.types.ResRet.f32 %5170, 2
  %5174 = extractvalue %dx.types.ResRet.f32 %5170, 3
  %5175 = add i32 %5144, 80
  %5176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5175, i32 undef)  ; BufferLoad(srv,index,wot)
  %5177 = extractvalue %dx.types.ResRet.f32 %5176, 1
  %5178 = extractvalue %dx.types.ResRet.f32 %5176, 2
  %5179 = add i32 %5144, 92
  %5180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5179, i32 undef)  ; BufferLoad(srv,index,wot)
  %5181 = extractvalue %dx.types.ResRet.i32 %5180, 0
  %5182 = call float @dx.op.dot3.f32(i32 55, float %5146, float %5147, float %5148, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5183 = select i1 %260, float %5177, float %5146
  %5184 = select i1 %260, float %5182, float %5147
  %5185 = select i1 %260, float %5178, float %5148
  %5186 = and i32 %5181, 65535
  %5187 = uitofp i32 %5186 to float
  %5188 = lshr i32 %5181, 16
  %5189 = uitofp i32 %5188 to float
  %5190 = and i32 %5159, 65535
  %5191 = and i32 %5159, 50331648
  %5192 = icmp slt i32 %5159, 0
  %5193 = icmp eq i32 %5191, 33554432
  %5194 = fsub fast float %5165, %137
  %5195 = fsub fast float %5166, %138
  %5196 = fsub fast float %5167, %139
  %5197 = call float @dx.op.dot3.f32(i32 55, float %5194, float %5195, float %5196, float %5194, float %5195, float %5196)  ; Dot3(ax,ay,az,bx,by,bz)
  %5198 = call float @dx.op.unary.f32(i32 24, float %5197)  ; Sqrt(value)
  %5199 = fdiv fast float 1.000000e+00, %5198
  %5200 = fmul fast float %5199, %5194
  %5201 = fmul fast float %5199, %5195
  %5202 = fmul fast float %5199, %5196
  %5203 = fadd fast float %5198, %5151
  %5204 = fdiv fast float 1.000000e+00, %5203
  %5205 = fmul float %5162, %5204
  %5206 = fmul float %5205, %5205
  %5207 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  br i1 %5193, label %5208, label %5229

; <label>:5208                                    ; preds = %5131
  %5209 = fmul fast float %5173, %5154
  %5210 = fmul fast float %5173, %5155
  %5211 = fmul fast float %5173, %5156
  %5212 = fadd fast float %5194, %5209
  %5213 = fadd fast float %5195, %5210
  %5214 = fadd fast float %5196, %5211
  %5215 = call float @dx.op.dot3.f32(i32 55, float %5212, float %5213, float %5214, float %5212, float %5213, float %5214)  ; Dot3(ax,ay,az,bx,by,bz)
  %5216 = call float @dx.op.unary.f32(i32 25, float %5215)  ; Rsqrt(value)
  %5217 = fmul fast float %5216, %5212
  %5218 = fmul fast float %5216, %5213
  %5219 = fmul fast float %5216, %5214
  %5220 = fsub fast float %137, %5165
  %5221 = fsub fast float %138, %5166
  %5222 = fsub fast float %139, %5167
  %5223 = fsub fast float -0.000000e+00, %5220
  %5224 = fsub fast float -0.000000e+00, %5221
  %5225 = fsub fast float -0.000000e+00, %5222
  %5226 = call float @dx.op.dot3.f32(i32 55, float %5223, float %5224, float %5225, float %5154, float %5155, float %5156)  ; Dot3(ax,ay,az,bx,by,bz)
  %5227 = fcmp fast ogt float %5226, 0.000000e+00
  %5228 = uitofp i1 %5227 to float
  br label %5229

; <label>:5229                                    ; preds = %5208, %5131
  %5230 = phi float [ %5228, %5208 ], [ 1.000000e+00, %5131 ]
  %5231 = phi float [ %5217, %5208 ], [ %5200, %5131 ]
  %5232 = phi float [ %5218, %5208 ], [ %5201, %5131 ]
  %5233 = phi float [ %5219, %5208 ], [ %5202, %5131 ]
  %5234 = call float @dx.op.dot3.f32(i32 55, float %5154, float %5155, float %5156, float %5231, float %5232, float %5233)  ; Dot3(ax,ay,az,bx,by,bz)
  %5235 = fmul fast float %5234, %5234
  %5236 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  %5237 = fsub fast float 1.000000e+00, %5236
  %5238 = fmul fast float %5237, 5.000000e-01
  %5239 = fcmp fast ogt float %5234, 0.000000e+00
  %5240 = fsub fast float 1.000000e+00, %5238
  %5241 = select i1 %5239, float %5238, float %5240
  %5242 = fmul fast float %5241, %5189
  %5243 = fadd fast float %5242, %5187
  %5244 = fmul fast float %5243, 0x3EF0001000000000
  %5245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %58, float %5244, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5246 = extractvalue %dx.types.ResRet.f32 %5245, 0
  %5247 = fmul fast float %5234, %5171
  %5248 = fadd fast float %5247, %5172
  %5249 = call float @dx.op.unary.f32(i32 7, float %5248)  ; Saturate(value)
  %5250 = select i1 %5193, float 1.000000e+00, float %5249
  %5251 = select i1 %5193, float %5249, float 1.000000e+00
  %5252 = fmul fast float %5198, %5168
  %5253 = fsub fast float 1.000000e+00, %5252
  %5254 = fmul fast float %5253, %5174
  %5255 = call float @dx.op.unary.f32(i32 7, float %5254)  ; Saturate(value)
  %5256 = fmul fast float %5255, %5251
  %5257 = fmul fast float %5256, 2.000000e+00
  %5258 = fsub fast float 3.000000e+00, %5257
  %5259 = fmul fast float %5246, %5230
  %5260 = fmul fast float %5256, %5256
  %5261 = fmul fast float %5260, %5259
  %5262 = fmul fast float %5261, %5258
  %5263 = call float @dx.op.binary.f32(i32 36, float %5262, float %5262)  ; FMin(a,b)
  %5264 = call float @dx.op.binary.f32(i32 36, float %5262, float %5263)  ; FMin(a,b)
  %5265 = fcmp fast ogt float %5264, 0.000000e+00
  br i1 %5265, label %5274, label %5266, !dx.controlflow.hints !132

; <label>:5266                                    ; preds = %5766, %5374, %5229
  %5267 = phi float [ %5133, %5374 ], [ %5133, %5229 ], [ %5809, %5766 ]
  %5268 = phi float [ %5134, %5374 ], [ %5134, %5229 ], [ %5810, %5766 ]
  %5269 = phi float [ %5135, %5374 ], [ %5135, %5229 ], [ %5811, %5766 ]
  %5270 = phi float [ %5136, %5374 ], [ %5136, %5229 ], [ %5803, %5766 ]
  %5271 = phi float [ %5137, %5374 ], [ %5137, %5229 ], [ %5804, %5766 ]
  %5272 = phi float [ %5138, %5374 ], [ %5138, %5229 ], [ %5805, %5766 ]
  %5273 = icmp eq i32 %5132, %5142
  br i1 %5273, label %5812, label %5131

; <label>:5274                                    ; preds = %5229
  %5275 = icmp eq i32 %5190, 255
  br i1 %5275, label %5374, label %5276, !dx.controlflow.hints !133

; <label>:5276                                    ; preds = %5274
  %5277 = mul nuw nsw i32 %5190, 176
  %5278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5277, i32 undef)  ; BufferLoad(srv,index,wot)
  %5279 = extractvalue %dx.types.ResRet.f32 %5278, 0
  %5280 = extractvalue %dx.types.ResRet.f32 %5278, 1
  %5281 = extractvalue %dx.types.ResRet.f32 %5278, 2
  %5282 = extractvalue %dx.types.ResRet.f32 %5278, 3
  %5283 = add nuw nsw i32 %5277, 16
  %5284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5283, i32 undef)  ; BufferLoad(srv,index,wot)
  %5285 = extractvalue %dx.types.ResRet.f32 %5284, 0
  %5286 = extractvalue %dx.types.ResRet.f32 %5284, 1
  %5287 = add nuw nsw i32 %5277, 32
  %5288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5287, i32 undef)  ; BufferLoad(srv,index,wot)
  %5289 = extractvalue %dx.types.ResRet.f32 %5288, 0
  %5290 = extractvalue %dx.types.ResRet.f32 %5288, 1
  %5291 = extractvalue %dx.types.ResRet.f32 %5288, 2
  %5292 = add nuw nsw i32 %5277, 48
  %5293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5292, i32 undef)  ; BufferLoad(srv,index,wot)
  %5294 = extractvalue %dx.types.ResRet.f32 %5293, 0
  %5295 = extractvalue %dx.types.ResRet.f32 %5293, 1
  %5296 = extractvalue %dx.types.ResRet.f32 %5293, 2
  %5297 = extractvalue %dx.types.ResRet.f32 %5293, 3
  %5298 = add nuw nsw i32 %5277, 64
  %5299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5298, i32 undef)  ; BufferLoad(srv,index,wot)
  %5300 = extractvalue %dx.types.ResRet.f32 %5299, 0
  %5301 = extractvalue %dx.types.ResRet.f32 %5299, 1
  %5302 = extractvalue %dx.types.ResRet.f32 %5299, 2
  %5303 = extractvalue %dx.types.ResRet.f32 %5299, 3
  %5304 = add nuw nsw i32 %5277, 80
  %5305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5304, i32 undef)  ; BufferLoad(srv,index,wot)
  %5306 = extractvalue %dx.types.ResRet.f32 %5305, 0
  %5307 = extractvalue %dx.types.ResRet.f32 %5305, 1
  %5308 = extractvalue %dx.types.ResRet.f32 %5305, 2
  %5309 = extractvalue %dx.types.ResRet.f32 %5305, 3
  %5310 = add nuw nsw i32 %5277, 96
  %5311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5310, i32 undef)  ; BufferLoad(srv,index,wot)
  %5312 = extractvalue %dx.types.ResRet.f32 %5311, 0
  %5313 = extractvalue %dx.types.ResRet.f32 %5311, 1
  %5314 = extractvalue %dx.types.ResRet.f32 %5311, 2
  %5315 = extractvalue %dx.types.ResRet.f32 %5311, 3
  %5316 = bitcast float %5286 to i32
  %5317 = fmul fast float %5291, %70
  %5318 = fmul fast float %5291, %71
  %5319 = fmul fast float %5291, %72
  %5320 = fadd fast float %5317, %137
  %5321 = fadd fast float %5318, %138
  %5322 = fadd fast float %5319, %139
  %5323 = fmul fast float %5320, %5294
  %5324 = call float @dx.op.tertiary.f32(i32 46, float %5321, float %5300, float %5323)  ; FMad(a,b,c)
  %5325 = call float @dx.op.tertiary.f32(i32 46, float %5322, float %5306, float %5324)  ; FMad(a,b,c)
  %5326 = fadd fast float %5325, %5312
  %5327 = fmul fast float %5320, %5295
  %5328 = call float @dx.op.tertiary.f32(i32 46, float %5321, float %5301, float %5327)  ; FMad(a,b,c)
  %5329 = call float @dx.op.tertiary.f32(i32 46, float %5322, float %5307, float %5328)  ; FMad(a,b,c)
  %5330 = fadd fast float %5329, %5313
  %5331 = fmul fast float %5320, %5296
  %5332 = call float @dx.op.tertiary.f32(i32 46, float %5321, float %5302, float %5331)  ; FMad(a,b,c)
  %5333 = call float @dx.op.tertiary.f32(i32 46, float %5322, float %5308, float %5332)  ; FMad(a,b,c)
  %5334 = fadd fast float %5333, %5314
  %5335 = fmul fast float %5320, %5297
  %5336 = call float @dx.op.tertiary.f32(i32 46, float %5321, float %5303, float %5335)  ; FMad(a,b,c)
  %5337 = call float @dx.op.tertiary.f32(i32 46, float %5322, float %5309, float %5336)  ; FMad(a,b,c)
  %5338 = fadd fast float %5337, %5315
  %5339 = fdiv fast float %5326, %5338
  %5340 = fdiv fast float %5330, %5338
  %5341 = fdiv fast float %5334, %5338
  %5342 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5341)  ; FMax(a,b)
  %5343 = fmul fast float %271, 0x401921FB60000000
  %5344 = call float @dx.op.unary.f32(i32 13, float %5343)  ; Sin(value)
  %5345 = call float @dx.op.unary.f32(i32 12, float %5343)  ; Cos(value)
  %5346 = fsub fast float -0.000000e+00, %5344
  %5347 = fmul fast float %5281, 5.000000e-01
  %5348 = call float @dx.op.dot2.f32(i32 54, float %271, float %271, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %5349 = call float @dx.op.unary.f32(i32 22, float %5348)  ; Frc(value)
  %5350 = fmul fast float %5349, 0x404A7DD040000000
  %5351 = call float @dx.op.unary.f32(i32 22, float %5350)  ; Frc(value)
  %5352 = fmul fast float %5351, %5290
  %5353 = fadd fast float %5352, %5347
  %5354 = call float @dx.op.tertiary.f32(i32 46, float %5353, float %5346, float 0.000000e+00)  ; FMad(a,b,c)
  %5355 = call float @dx.op.tertiary.f32(i32 46, float %5353, float %5345, float 0.000000e+00)  ; FMad(a,b,c)
  %5356 = fadd fast float %5354, %5339
  %5357 = fadd fast float %5355, %5340
  %5358 = fmul fast float %5356, %5285
  %5359 = fmul fast float %5357, %5285
  %5360 = call float @dx.op.binary.f32(i32 35, float %5358, float %5281)  ; FMax(a,b)
  %5361 = call float @dx.op.binary.f32(i32 35, float %5359, float %5281)  ; FMax(a,b)
  %5362 = call float @dx.op.binary.f32(i32 36, float %5360, float %5282)  ; FMin(a,b)
  %5363 = call float @dx.op.binary.f32(i32 36, float %5361, float %5282)  ; FMin(a,b)
  %5364 = fadd fast float %5362, %5279
  %5365 = fadd fast float %5363, %5280
  %5366 = uitofp i32 %5316 to float
  %5367 = fadd fast float %5342, %5289
  %5368 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %60, float %5364, float %5365, float %5366, float undef, i32 0, i32 0, i32 undef, float %5367)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5369 = extractvalue %dx.types.ResRet.f32 %5368, 0
  %5370 = fadd fast float %5369, -1.000000e+00
  %5371 = fmul fast float %5370, %5250
  %5372 = fadd fast float %5371, 1.000000e+00
  %5373 = fmul fast float %5372, %5262
  br label %5374

; <label>:5374                                    ; preds = %5276, %5274
  %5375 = phi float [ %5373, %5276 ], [ %5262, %5274 ]
  %5376 = call float @dx.op.binary.f32(i32 36, float %5375, float %5375)  ; FMin(a,b)
  %5377 = call float @dx.op.binary.f32(i32 36, float %5375, float %5376)  ; FMin(a,b)
  %5378 = fcmp fast ogt float %5377, 0.000000e+00
  br i1 %5378, label %5379, label %5266, !dx.controlflow.hints !134

; <label>:5379                                    ; preds = %5374
  %5380 = fmul fast float %5375, %5183
  %5381 = fmul fast float %5375, %5184
  %5382 = fmul fast float %5375, %5185
  %5383 = fsub fast float %5167, %2184
  %5384 = fcmp fast ogt float %5383, 0.000000e+00
  %5385 = fsub fast float %139, %2184
  %5386 = fcmp fast ogt float %5385, 0.000000e+00
  %5387 = xor i1 %5386, %5384
  %5388 = fsub fast float %2184, %5167
  %5389 = fmul fast float %5388, 2.000000e+00
  %5390 = fadd fast float %5389, %5167
  %5391 = select i1 %5387, float %5167, float %5390
  %5392 = fsub fast float %5391, %139
  %5393 = call float @dx.op.dot3.f32(i32 55, float %5194, float %5195, float %5392, float %5194, float %5195, float %5392)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = call float @dx.op.unary.f32(i32 25, float %5393)  ; Rsqrt(value)
  %5395 = fmul fast float %5394, %5194
  %5396 = fmul fast float %5394, %5195
  %5397 = fmul fast float %5394, %5392
  %5398 = fsub fast float %2184, %139
  %5399 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5398)  ; Dot3(ax,ay,az,bx,by,bz)
  %5400 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5395, float %5396, float %5397)  ; Dot3(ax,ay,az,bx,by,bz)
  %5401 = fdiv fast float 1.000000e+00, %5400
  %5402 = fmul fast float %5401, %5399
  %5403 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5385, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5404 = fcmp fast ogt float %5403, 0.000000e+00
  %5405 = fcmp fast olt float %5403, 0.000000e+00
  %5406 = zext i1 %5404 to i32
  %5407 = zext i1 %5405 to i32
  %5408 = sub nsw i32 %5406, %5407
  %5409 = sitofp i32 %5408 to float
  %5410 = fsub fast float %5391, %2184
  %5411 = call float @dx.op.dot3.f32(i32 55, float %5194, float %5195, float %5410, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5412 = fcmp fast ogt float %5411, 0.000000e+00
  %5413 = fcmp fast olt float %5411, 0.000000e+00
  %5414 = zext i1 %5412 to i32
  %5415 = zext i1 %5413 to i32
  %5416 = sub nsw i32 %5414, %5415
  %5417 = sitofp i32 %5416 to float
  %5418 = fcmp fast une float %5409, %5417
  br i1 %5418, label %5419, label %5429

; <label>:5419                                    ; preds = %5379
  %5420 = fmul fast float %5402, %5397
  %5421 = fmul fast float %5402, %5396
  %5422 = fmul fast float %5402, %5395
  %5423 = fmul fast float %5422, %5422
  %5424 = fmul fast float %5421, %5421
  %5425 = fadd fast float %5423, %5424
  %5426 = fmul fast float %5420, %5420
  %5427 = fadd fast float %5425, %5426
  %5428 = call float @dx.op.unary.f32(i32 24, float %5427)  ; Sqrt(value)
  br label %5441

; <label>:5429                                    ; preds = %5379
  %5430 = icmp slt i32 %5408, 0
  br i1 %5430, label %5431, label %5441

; <label>:5431                                    ; preds = %5429
  %5432 = fsub fast float %137, %5165
  %5433 = fsub fast float %138, %5166
  %5434 = fsub fast float %139, %5391
  %5435 = fmul fast float %5432, %5432
  %5436 = fmul fast float %5433, %5433
  %5437 = fadd fast float %5435, %5436
  %5438 = fmul fast float %5434, %5434
  %5439 = fadd fast float %5437, %5438
  %5440 = call float @dx.op.unary.f32(i32 24, float %5439)  ; Sqrt(value)
  br label %5441

; <label>:5441                                    ; preds = %5431, %5429, %5419
  %5442 = phi float [ %5428, %5419 ], [ %5440, %5431 ], [ 0.000000e+00, %5429 ]
  %5443 = and i1 %5386, %5384
  %5444 = fsub fast float -0.000000e+00, %5442
  %5445 = select i1 %5443, float -0.000000e+00, float %5444
  %5446 = fmul fast float %2185, 0x3FF7154760000000
  %5447 = fmul fast float %5446, %5445
  %5448 = fmul fast float %2186, 0x3FF7154760000000
  %5449 = fmul fast float %5448, %5445
  %5450 = fmul fast float %2187, 0x3FF7154760000000
  %5451 = fmul fast float %5450, %5445
  %5452 = call float @dx.op.unary.f32(i32 21, float %5447)  ; Exp(value)
  %5453 = call float @dx.op.unary.f32(i32 21, float %5449)  ; Exp(value)
  %5454 = call float @dx.op.unary.f32(i32 21, float %5451)  ; Exp(value)
  %5455 = call float @dx.op.unary.f32(i32 7, float %5452)  ; Saturate(value)
  %5456 = call float @dx.op.unary.f32(i32 7, float %5453)  ; Saturate(value)
  %5457 = call float @dx.op.unary.f32(i32 7, float %5454)  ; Saturate(value)
  %5458 = fmul fast float %5380, %5455
  %5459 = fmul fast float %5381, %5456
  %5460 = fmul fast float %5382, %5457
  %5461 = fsub fast float %5200, %186
  %5462 = fsub fast float %5201, %187
  %5463 = fsub fast float %5202, %188
  %5464 = call float @dx.op.dot3.f32(i32 55, float %5461, float %5462, float %5463, float %5461, float %5462, float %5463)  ; Dot3(ax,ay,az,bx,by,bz)
  %5465 = call float @dx.op.unary.f32(i32 25, float %5464)  ; Rsqrt(value)
  %5466 = fmul fast float %5465, %5461
  %5467 = fmul fast float %5465, %5462
  %5468 = fmul fast float %5465, %5463
  %5469 = call float @dx.op.dot3.f32(i32 55, float %5200, float %5201, float %5202, float %2373, float %2374, float %2375)  ; Dot3(ax,ay,az,bx,by,bz)
  %5470 = call float @dx.op.dot3.f32(i32 55, float %2201, float %2202, float %2203, float %5466, float %5467, float %5468)  ; Dot3(ax,ay,az,bx,by,bz)
  %5471 = call float @dx.op.unary.f32(i32 7, float %5469)  ; Saturate(value)
  %5472 = fmul fast float %5471, %5207
  %5473 = fmul fast float %5471, %5471
  %5474 = fmul fast float %5473, %2394
  %5475 = call float @dx.op.unary.f32(i32 7, float %5474)  ; Saturate(value)
  %5476 = fmul fast float %5472, %5475
  %5477 = bitcast float %5197 to i32
  %5478 = ashr i32 %5477, 1
  %5479 = sub nsw i32 1597463007, %5478
  %5480 = bitcast i32 %5479 to float
  %5481 = fmul fast float %5480, %5194
  %5482 = fmul fast float %5480, %5195
  %5483 = fmul fast float %5480, %5196
  %5484 = fsub fast float %5481, %186
  %5485 = fsub fast float %5482, %187
  %5486 = fsub fast float %5483, %188
  %5487 = call float @dx.op.dot3.f32(i32 55, float %5484, float %5485, float %5486, float %5484, float %5485, float %5486)  ; Dot3(ax,ay,az,bx,by,bz)
  %5488 = call float @dx.op.unary.f32(i32 25, float %5487)  ; Rsqrt(value)
  %5489 = fmul fast float %5484, %5488
  %5490 = fmul fast float %5485, %5488
  %5491 = fmul fast float %5486, %5488
  %5492 = call float @dx.op.dot3.f32(i32 55, float %2373, float %2374, float %2375, float %5489, float %5490, float %5491)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = fmul fast float %5492, %5492
  %5494 = call float @dx.op.unary.f32(i32 6, float %5469)  ; FAbs(value)
  %5495 = call float @dx.op.binary.f32(i32 35, float %3810, float 0x3F847AE140000000)  ; FMax(a,b)
  %5496 = fmul fast float %5495, %5495
  %5497 = fmul fast float %5496, %5496
  %5498 = fsub fast float 1.000000e+00, %5497
  %5499 = fmul fast float %2381, %2381
  %5500 = fmul fast float %5499, %5498
  %5501 = fadd fast float %5500, %5497
  %5502 = bitcast float %5501 to i32
  %5503 = ashr i32 %5502, 1
  %5504 = add nsw i32 %5503, 532487669
  %5505 = bitcast i32 %5504 to float
  %5506 = fadd fast float %5505, %2381
  %5507 = fmul fast float %5497, %5493
  %5508 = fsub fast float 1.000000e+00, %5493
  %5509 = fadd fast float %5508, %5507
  %5510 = fmul fast float %5494, %5494
  %5511 = fmul fast float %5510, %5498
  %5512 = fadd fast float %5511, %5497
  %5513 = bitcast float %5512 to i32
  %5514 = ashr i32 %5513, 1
  %5515 = add nsw i32 %5514, 532487669
  %5516 = bitcast i32 %5515 to float
  %5517 = fadd fast float %5516, %5494
  %5518 = fmul fast float %5509, %5509
  %5519 = fmul fast float %5518, %5506
  %5520 = fmul fast float %5519, %5517
  %5521 = fdiv fast float 1.000000e+00, %5520
  %5522 = bitcast float %5497 to i32
  %5523 = sitofp i32 %5522 to float
  %5524 = fmul fast float %5523, 0x3FE7F73180000000
  %5525 = fadd fast float %5524, 0x41AFE27C40000000
  %5526 = fptosi float %5525 to i32
  %5527 = bitcast i32 %5526 to float
  %5528 = fmul fast float %5162, 0x3FD80E9D60000000
  %5529 = fmul fast float %5528, %5480
  %5530 = fadd fast float %5527, %5529
  %5531 = bitcast float %5530 to i32
  %5532 = sub nsw i32 2129859010, %5531
  %5533 = bitcast i32 %5532 to float
  %5534 = fmul fast float %5497, %5521
  %5535 = fmul fast float %5534, %5527
  %5536 = fmul fast float %5535, %5533
  %5537 = fmul fast float %3672, 0x3FF9999980000000
  %5538 = fsub fast float 5.000000e+00, %5537
  %5539 = call float @dx.op.unary.f32(i32 6, float %5470)  ; FAbs(value)
  %5540 = fsub fast float 1.000000e+00, %5539
  %5541 = fmul fast float %3672, 0x41D9660740000000
  %5542 = fadd fast float %5541, 0xC1EFBF8940000000
  %5543 = bitcast float %5540 to i32
  %5544 = sitofp i32 %5543 to float
  %5545 = fmul fast float %5544, %5538
  %5546 = fadd fast float %5542, %5545
  %5547 = fptosi float %5546 to i32
  %5548 = bitcast i32 %5547 to float
  %5549 = fsub fast float 1.000000e+00, %2367
  %5550 = fsub fast float 1.000000e+00, %2368
  %5551 = fsub fast float 1.000000e+00, %2379
  %5552 = fmul fast float %5548, %5549
  %5553 = fmul fast float %5548, %5550
  %5554 = fmul fast float %5548, %5551
  %5555 = fadd fast float %5552, %2367
  %5556 = fadd fast float %5553, %2368
  %5557 = fadd fast float %5554, %2379
  br i1 %3695, label %5558, label %5581

; <label>:5558                                    ; preds = %5441
  %5559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1708, float %5539, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5560 = extractvalue %dx.types.ResRet.f32 %5559, 0
  %5561 = extractvalue %dx.types.ResRet.f32 %5559, 1
  %5562 = extractvalue %dx.types.ResRet.f32 %5559, 2
  %5563 = fadd fast float %5560, -5.000000e-01
  %5564 = fadd fast float %5561, -5.000000e-01
  %5565 = fadd fast float %5562, -5.000000e-01
  %5566 = fmul fast float %2367, 4.000000e+00
  %5567 = fmul fast float %5566, %5549
  %5568 = fmul fast float %5567, %5563
  %5569 = fmul fast float %2368, 4.000000e+00
  %5570 = fmul fast float %5569, %5550
  %5571 = fmul fast float %5570, %5564
  %5572 = fmul fast float %2379, 4.000000e+00
  %5573 = fmul fast float %5572, %5551
  %5574 = fmul fast float %5573, %5565
  %5575 = fadd fast float %5568, %5555
  %5576 = fadd fast float %5571, %5556
  %5577 = fadd fast float %5574, %5557
  %5578 = call float @dx.op.unary.f32(i32 7, float %5575)  ; Saturate(value)
  %5579 = call float @dx.op.unary.f32(i32 7, float %5576)  ; Saturate(value)
  %5580 = call float @dx.op.unary.f32(i32 7, float %5577)  ; Saturate(value)
  br label %5581

; <label>:5581                                    ; preds = %5558, %5441
  %5582 = phi float [ %5578, %5558 ], [ %5555, %5441 ]
  %5583 = phi float [ %5579, %5558 ], [ %5556, %5441 ]
  %5584 = phi float [ %5580, %5558 ], [ %5557, %5441 ]
  %5585 = fmul fast float %5469, 9.843750e-01
  %5586 = fadd fast float %5585, 7.812500e-03
  %5587 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5586, float %3676, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5588 = extractvalue %dx.types.ResRet.f32 %5587, 0
  %5589 = extractvalue %dx.types.ResRet.f32 %5587, 1
  %5590 = extractvalue %dx.types.ResRet.f32 %5587, 2
  %5591 = extractvalue %dx.types.ResRet.f32 %5587, 3
  %5592 = fsub fast float %5590, %5588
  %5593 = fsub fast float %5591, %5589
  %5594 = fmul fast float %5592, %3682
  %5595 = fmul fast float %5593, %3682
  %5596 = fadd fast float %5594, %5588
  %5597 = fadd fast float %5595, %5589
  %5598 = fmul fast float %5596, %2367
  %5599 = fmul fast float %5596, %2368
  %5600 = fmul fast float %5596, %2379
  %5601 = fadd fast float %5598, %5597
  %5602 = fadd fast float %5599, %5597
  %5603 = fadd fast float %5600, %5597
  br i1 %3695, label %5604, label %5627

; <label>:5604                                    ; preds = %5581
  %5605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1708, float %5469, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5606 = extractvalue %dx.types.ResRet.f32 %5605, 0
  %5607 = extractvalue %dx.types.ResRet.f32 %5605, 1
  %5608 = extractvalue %dx.types.ResRet.f32 %5605, 2
  %5609 = fadd fast float %5606, -5.000000e-01
  %5610 = fadd fast float %5607, -5.000000e-01
  %5611 = fadd fast float %5608, -5.000000e-01
  %5612 = fmul fast float %2367, 4.000000e+00
  %5613 = fmul fast float %5612, %5549
  %5614 = fmul fast float %5613, %5609
  %5615 = fmul fast float %2368, 4.000000e+00
  %5616 = fmul fast float %5615, %5550
  %5617 = fmul fast float %5616, %5610
  %5618 = fmul fast float %2379, 4.000000e+00
  %5619 = fmul fast float %5618, %5551
  %5620 = fmul fast float %5619, %5611
  %5621 = fadd fast float %5614, %5601
  %5622 = fadd fast float %5617, %5602
  %5623 = fadd fast float %5620, %5603
  %5624 = call float @dx.op.unary.f32(i32 7, float %5621)  ; Saturate(value)
  %5625 = call float @dx.op.unary.f32(i32 7, float %5622)  ; Saturate(value)
  %5626 = call float @dx.op.unary.f32(i32 7, float %5623)  ; Saturate(value)
  br label %5627

; <label>:5627                                    ; preds = %5604, %5581
  %5628 = phi float [ %5624, %5604 ], [ %5601, %5581 ]
  %5629 = phi float [ %5625, %5604 ], [ %5602, %5581 ]
  %5630 = phi float [ %5626, %5604 ], [ %5603, %5581 ]
  %5631 = call float @dx.op.binary.f32(i32 35, float %5629, float %5630)  ; FMax(a,b)
  %5632 = call float @dx.op.binary.f32(i32 35, float %5628, float %5631)  ; FMax(a,b)
  %5633 = fsub fast float 1.000000e+00, %5632
  %5634 = call float @dx.op.binary.f32(i32 35, float %5494, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5635 = fdiv fast float %1108, %5634
  %5636 = fmul fast float %3750, %5635
  %5637 = fmul fast float %3752, %5635
  %5638 = fmul fast float %3754, %5635
  %5639 = call float @dx.op.unary.f32(i32 21, float %5636)  ; Exp(value)
  %5640 = call float @dx.op.unary.f32(i32 21, float %5637)  ; Exp(value)
  %5641 = call float @dx.op.unary.f32(i32 21, float %5638)  ; Exp(value)
  %5642 = call float @dx.op.unary.f32(i32 7, float %5639)  ; Saturate(value)
  %5643 = call float @dx.op.unary.f32(i32 7, float %5640)  ; Saturate(value)
  %5644 = call float @dx.op.unary.f32(i32 7, float %5641)  ; Saturate(value)
  %5645 = select i1 %3747, float %5642, float 0.000000e+00
  %5646 = select i1 %3748, float %5643, float 0.000000e+00
  %5647 = select i1 %3749, float %5644, float 0.000000e+00
  %5648 = fsub fast float -0.000000e+00, %2373
  %5649 = fsub fast float -0.000000e+00, %2374
  %5650 = fsub fast float -0.000000e+00, %2375
  %5651 = call float @dx.op.dot3.f32(i32 55, float %5200, float %5201, float %5202, float %5648, float %5649, float %5650)  ; Dot3(ax,ay,az,bx,by,bz)
  %5652 = call float @dx.op.unary.f32(i32 7, float %5651)  ; Saturate(value)
  %5653 = fmul fast float %5652, %5207
  %5654 = fmul fast float %5652, 9.843750e-01
  %5655 = fadd fast float %5654, 7.812500e-03
  %5656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5655, float %3676, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5657 = extractvalue %dx.types.ResRet.f32 %5656, 0
  %5658 = extractvalue %dx.types.ResRet.f32 %5656, 1
  %5659 = extractvalue %dx.types.ResRet.f32 %5656, 2
  %5660 = extractvalue %dx.types.ResRet.f32 %5656, 3
  %5661 = fsub fast float %5659, %5657
  %5662 = fsub fast float %5660, %5658
  %5663 = fmul fast float %5661, %3682
  %5664 = fmul fast float %5662, %3682
  %5665 = fadd fast float %5663, %5657
  %5666 = fadd fast float %5664, %5658
  %5667 = fmul fast float %5665, %2367
  %5668 = fmul fast float %5665, %2368
  %5669 = fmul fast float %5665, %2379
  %5670 = fadd fast float %5667, %5666
  %5671 = fadd fast float %5668, %5666
  %5672 = fadd fast float %5669, %5666
  br i1 %3695, label %5673, label %5696

; <label>:5673                                    ; preds = %5627
  %5674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1708, float %5652, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5675 = extractvalue %dx.types.ResRet.f32 %5674, 0
  %5676 = extractvalue %dx.types.ResRet.f32 %5674, 1
  %5677 = extractvalue %dx.types.ResRet.f32 %5674, 2
  %5678 = fadd fast float %5675, -5.000000e-01
  %5679 = fadd fast float %5676, -5.000000e-01
  %5680 = fadd fast float %5677, -5.000000e-01
  %5681 = fmul fast float %2367, 4.000000e+00
  %5682 = fmul fast float %5681, %5549
  %5683 = fmul fast float %5682, %5678
  %5684 = fmul fast float %2368, 4.000000e+00
  %5685 = fmul fast float %5684, %5550
  %5686 = fmul fast float %5685, %5679
  %5687 = fmul fast float %2379, 4.000000e+00
  %5688 = fmul fast float %5687, %5551
  %5689 = fmul fast float %5688, %5680
  %5690 = fadd fast float %5683, %5670
  %5691 = fadd fast float %5686, %5671
  %5692 = fadd fast float %5689, %5672
  %5693 = call float @dx.op.unary.f32(i32 7, float %5690)  ; Saturate(value)
  %5694 = call float @dx.op.unary.f32(i32 7, float %5691)  ; Saturate(value)
  %5695 = call float @dx.op.unary.f32(i32 7, float %5692)  ; Saturate(value)
  br label %5696

; <label>:5696                                    ; preds = %5673, %5627
  %5697 = phi float [ %5693, %5673 ], [ %5670, %5627 ]
  %5698 = phi float [ %5694, %5673 ], [ %5671, %5627 ]
  %5699 = phi float [ %5695, %5673 ], [ %5672, %5627 ]
  %5700 = call float @dx.op.binary.f32(i32 35, float %5698, float %5699)  ; FMax(a,b)
  %5701 = call float @dx.op.binary.f32(i32 35, float %5697, float %5700)  ; FMax(a,b)
  %5702 = fsub fast float 1.000000e+00, %5701
  %5703 = fmul fast float %3810, %3815
  %5704 = fadd fast float %3817, %5703
  %5705 = call float @dx.op.unary.f32(i32 7, float %5704)  ; Saturate(value)
  %5706 = fsub fast float %5481, %2387
  %5707 = fsub fast float %5482, %2388
  %5708 = fsub fast float %5483, %2389
  %5709 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5707, float %5708, float %5706, float %5707, float %5708)  ; Dot3(ax,ay,az,bx,by,bz)
  %5710 = call float @dx.op.unary.f32(i32 25, float %5709)  ; Rsqrt(value)
  %5711 = fmul fast float %5706, %5710
  %5712 = fmul fast float %5707, %5710
  %5713 = fmul fast float %5708, %5710
  %5714 = call float @dx.op.dot3.f32(i32 55, float %5648, float %5649, float %5650, float %5711, float %5712, float %5713)  ; Dot3(ax,ay,az,bx,by,bz)
  %5715 = fmul fast float %5714, %5714
  %5716 = call float @dx.op.unary.f32(i32 6, float %5652)  ; FAbs(value)
  %5717 = call float @dx.op.binary.f32(i32 35, float %5705, float 0x3F847AE140000000)  ; FMax(a,b)
  %5718 = fmul fast float %5717, %5717
  %5719 = fmul fast float %5718, %5718
  %5720 = fsub fast float 1.000000e+00, %5719
  %5721 = fmul fast float %5499, %5720
  %5722 = fadd fast float %5721, %5719
  %5723 = bitcast float %5722 to i32
  %5724 = ashr i32 %5723, 1
  %5725 = add nsw i32 %5724, 532487669
  %5726 = bitcast i32 %5725 to float
  %5727 = fadd fast float %5726, %2381
  %5728 = fmul fast float %5719, %5715
  %5729 = fsub fast float 1.000000e+00, %5715
  %5730 = fadd fast float %5729, %5728
  %5731 = fmul fast float %5716, %5716
  %5732 = fmul fast float %5731, %5720
  %5733 = fadd fast float %5732, %5719
  %5734 = bitcast float %5733 to i32
  %5735 = ashr i32 %5734, 1
  %5736 = add nsw i32 %5735, 532487669
  %5737 = bitcast i32 %5736 to float
  %5738 = fadd fast float %5737, %5716
  %5739 = fmul fast float %5730, %5730
  %5740 = fmul fast float %5739, %5727
  %5741 = fmul fast float %5740, %5738
  %5742 = fdiv fast float 1.000000e+00, %5741
  %5743 = bitcast float %5719 to i32
  %5744 = sitofp i32 %5743 to float
  %5745 = fmul fast float %5744, 0x3FE7F73180000000
  %5746 = fadd fast float %5745, 0x41AFE27C40000000
  %5747 = fptosi float %5746 to i32
  %5748 = bitcast i32 %5747 to float
  %5749 = fadd fast float %5748, %5529
  %5750 = bitcast float %5749 to i32
  %5751 = sub nsw i32 2129859010, %5750
  %5752 = bitcast i32 %5751 to float
  %5753 = fmul fast float %5719, %5742
  %5754 = fmul fast float %5753, %5748
  %5755 = fmul fast float %5754, %5752
  br i1 %5192, label %5756, label %5766

; <label>:5756                                    ; preds = %5696
  %5757 = fmul fast float %5653, %5645
  %5758 = fmul fast float %5653, %5646
  %5759 = fmul fast float %5653, %5647
  %5760 = fmul fast float %5757, %5702
  %5761 = fmul fast float %5760, %5755
  %5762 = fmul fast float %5758, %5702
  %5763 = fmul fast float %5762, %5755
  %5764 = fmul fast float %5759, %5702
  %5765 = fmul fast float %5764, %5755
  br label %5766

; <label>:5766                                    ; preds = %5756, %5696
  %5767 = phi float [ %5761, %5756 ], [ 0.000000e+00, %5696 ]
  %5768 = phi float [ %5763, %5756 ], [ 0.000000e+00, %5696 ]
  %5769 = phi float [ %5765, %5756 ], [ 0.000000e+00, %5696 ]
  %5770 = fmul fast float %5582, %5536
  %5771 = fmul fast float %5583, %5536
  %5772 = fmul fast float %5584, %5536
  %5773 = fsub fast float 1.000000e+00, %5470
  %5774 = bitcast float %5773 to i32
  %5775 = sitofp i32 %5774 to float
  %5776 = fmul fast float %5775, 5.000000e+00
  %5777 = fadd fast float %5776, 0xC1EFBF8940000000
  %5778 = fptosi float %5777 to i32
  %5779 = bitcast i32 %5778 to float
  %5780 = fmul fast float %5779, %1707
  %5781 = fmul fast float %5633, %5780
  %5782 = fmul fast float %5781, %3742
  %5783 = fmul fast float %5781, %3743
  %5784 = fmul fast float %5781, %3744
  %5785 = fadd fast float %5782, %5770
  %5786 = fadd fast float %5783, %5771
  %5787 = fadd fast float %5784, %5772
  %5788 = fmul fast float %5785, %5476
  %5789 = fmul fast float %5786, %5476
  %5790 = fmul fast float %5787, %5476
  %5791 = fadd fast float %5788, %5767
  %5792 = fadd fast float %5789, %5768
  %5793 = fadd fast float %5790, %5769
  %5794 = fmul fast float %5458, %1758
  %5795 = fmul fast float %5794, %5476
  %5796 = fmul fast float %5795, %5633
  %5797 = fmul fast float %5459, %1758
  %5798 = fmul fast float %5797, %5476
  %5799 = fmul fast float %5798, %5633
  %5800 = fmul fast float %5460, %1758
  %5801 = fmul fast float %5800, %5476
  %5802 = fmul fast float %5801, %5633
  %5803 = fadd fast float %5796, %5136
  %5804 = fadd fast float %5799, %5137
  %5805 = fadd fast float %5802, %5138
  %5806 = fmul fast float %5794, %5791
  %5807 = fmul fast float %5797, %5792
  %5808 = fmul fast float %5800, %5793
  %5809 = fadd fast float %5806, %5133
  %5810 = fadd fast float %5807, %5134
  %5811 = fadd fast float %5808, %5135
  br label %5266

; <label>:5812                                    ; preds = %5266
  br label %5813

; <label>:5813                                    ; preds = %5812, %5099
  %5814 = phi float [ %5101, %5099 ], [ %5267, %5812 ]
  %5815 = phi float [ %5102, %5099 ], [ %5268, %5812 ]
  %5816 = phi float [ %5103, %5099 ], [ %5269, %5812 ]
  %5817 = phi float [ %5104, %5099 ], [ %5270, %5812 ]
  %5818 = phi float [ %5105, %5099 ], [ %5271, %5812 ]
  %5819 = phi float [ %5106, %5099 ], [ %5272, %5812 ]
  %5820 = add i32 %5100, 1
  %5821 = icmp ugt i32 %5820, %5096
  br i1 %5821, label %5822, label %5099

; <label>:5822                                    ; preds = %5813
  br label %5823

; <label>:5823                                    ; preds = %5822, %5049, %5039
  %5824 = phi float [ %5040, %5039 ], [ %5040, %5049 ], [ %5814, %5822 ]
  %5825 = phi float [ %5041, %5039 ], [ %5041, %5049 ], [ %5815, %5822 ]
  %5826 = phi float [ %5042, %5039 ], [ %5042, %5049 ], [ %5816, %5822 ]
  %5827 = phi float [ %5043, %5039 ], [ %5043, %5049 ], [ %5817, %5822 ]
  %5828 = phi float [ %5044, %5039 ], [ %5044, %5049 ], [ %5818, %5822 ]
  %5829 = phi float [ %5045, %5039 ], [ %5045, %5049 ], [ %5819, %5822 ]
  %5830 = fmul fast float %1758, %3771
  %5831 = fsub fast float -0.000000e+00, %5830
  %5832 = fmul fast float %1758, %3772
  %5833 = fsub fast float -0.000000e+00, %5832
  %5834 = fmul fast float %1758, %3773
  %5835 = fsub fast float -0.000000e+00, %5834
  %5836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.f32 %5836, 0
  %5838 = fmul fast float %5837, %3777
  %5839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5840 = extractvalue %dx.types.CBufRet.f32 %5839, 3
  %5841 = fsub fast float 1.000000e+00, %1703
  %5842 = call float @dx.op.unary.f32(i32 7, float %5841)  ; Saturate(value)
  %5843 = fadd fast float %5829, %1702
  %5844 = fmul fast float %5843, %1703
  %5845 = fmul fast float %5842, %5840
  %5846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %5847 = extractvalue %dx.types.ResRet.i32 %5846, 3
  %5848 = bitcast i32 %5847 to float
  %5849 = fsub fast float %5831, %5848
  %5850 = fsub fast float %5833, %5848
  %5851 = fsub fast float %5835, %5848
  %5852 = fmul fast float %5849, %200
  %5853 = fmul fast float %5850, %200
  %5854 = fmul fast float %5851, %200
  %5855 = fadd fast float %5852, %5848
  %5856 = fadd fast float %5853, %5848
  %5857 = fadd fast float %5854, %5848
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 3
  %5860 = fmul fast float %5827, %2370
  %5861 = fmul fast float %5828, %2371
  %5862 = fmul fast float %5829, %2372
  %5863 = fcmp fast ogt float %81, %220
  %5864 = and i1 %5863, %2190
  %5865 = or i1 %2196, %5864
  %5866 = icmp eq i32 %2189, 2
  %5867 = fcmp fast ole float %81, %220
  %5868 = and i1 %5867, %5866
  %5869 = or i1 %5868, %5865
  br i1 %5864, label %5870, label %6129

; <label>:5870                                    ; preds = %5823
  %5871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.f32 %5871, 2
  %5873 = extractvalue %dx.types.CBufRet.f32 %5871, 3
  %5874 = fmul fast float %5872, %90
  %5875 = fmul fast float %5873, %91
  %5876 = call float @dx.op.unary.f32(i32 7, float %5874)  ; Saturate(value)
  %5877 = call float @dx.op.unary.f32(i32 7, float %5875)  ; Saturate(value)
  %5878 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5876, float %5877, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5879 = extractvalue %dx.types.ResRet.f32 %5878, 0
  %5880 = extractvalue %dx.types.ResRet.f32 %5878, 1
  %5881 = extractvalue %dx.types.ResRet.f32 %5878, 2
  %5882 = extractvalue %dx.types.ResRet.f32 %5878, 3
  %5883 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5876, float %5877, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5884 = extractvalue %dx.types.ResRet.f32 %5883, 0
  %5885 = extractvalue %dx.types.ResRet.f32 %5883, 1
  %5886 = extractvalue %dx.types.ResRet.f32 %5883, 2
  %5887 = extractvalue %dx.types.ResRet.f32 %5883, 3
  %5888 = call float @dx.op.binary.f32(i32 35, float %5880, float %5881)  ; FMax(a,b)
  %5889 = call float @dx.op.binary.f32(i32 35, float %5879, float %5888)  ; FMax(a,b)
  %5890 = call float @dx.op.binary.f32(i32 35, float %5889, float %5882)  ; FMax(a,b)
  %5891 = call float @dx.op.binary.f32(i32 36, float %5885, float %5886)  ; FMin(a,b)
  %5892 = call float @dx.op.binary.f32(i32 36, float %5884, float %5891)  ; FMin(a,b)
  %5893 = call float @dx.op.binary.f32(i32 36, float %5892, float %5887)  ; FMin(a,b)
  %5894 = fmul fast float %5890, 2.550000e+02
  %5895 = fadd fast float %5894, 0x3F70101020000000
  %5896 = fptoui float %5895 to i32
  %5897 = fmul fast float %5893, 2.550000e+02
  %5898 = fadd fast float %5897, 0x3F70101020000000
  %5899 = fptoui float %5898 to i32
  %5900 = icmp ult i32 %5896, %5899
  br i1 %5900, label %5901, label %6069

; <label>:5901                                    ; preds = %5870
  %5902 = fcmp fast ogt float %80, 9.843750e-01
  %5903 = fadd fast float %81, -4.000000e+00
  %5904 = select i1 %5902, float -4.000000e+00, float %5903
  %5905 = call float @dx.op.binary.f32(i32 35, float %5904, float 0.000000e+00)  ; FMax(a,b)
  %5906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5907 = extractvalue %dx.types.CBufRet.f32 %5906, 0
  %5908 = fadd fast float %5907, %5905
  %5909 = extractvalue %dx.types.CBufRet.f32 %5906, 2
  %5910 = fmul fast float %5908, %5909
  %5911 = call float @dx.op.unary.f32(i32 23, float %5910)  ; Log(value)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5906, 3
  %5913 = fmul fast float %5912, %5911
  %5914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5915 = extractvalue %dx.types.CBufRet.f32 %5914, 2
  %5916 = fmul fast float %5913, %5915
  %5917 = call float @dx.op.unary.f32(i32 7, float %5916)  ; Saturate(value)
  %5918 = uitofp i32 %5896 to float
  %5919 = uitofp i32 %5899 to float
  %5920 = fadd fast float %5918, 5.000000e-01
  %5921 = fadd fast float %5919, 5.000000e-01
  %5922 = fmul fast float %5915, %5920
  %5923 = fmul fast float %5915, %5921
  %5924 = fadd fast float %5922, 0x3F0FFB4800000000
  %5925 = fadd fast float %5923, 0xBF0FFB4800000000
  %5926 = call float @dx.op.binary.f32(i32 35, float %5917, float %5924)  ; FMax(a,b)
  %5927 = call float @dx.op.binary.f32(i32 36, float %5926, float %5925)  ; FMin(a,b)
  %5928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5929 = extractvalue %dx.types.CBufRet.f32 %5928, 1
  %5930 = extractvalue %dx.types.CBufRet.f32 %5928, 2
  %5931 = extractvalue %dx.types.CBufRet.f32 %5928, 0
  %5932 = fmul fast float %5929, %5927
  %5933 = fadd fast float %5931, %5932
  %5934 = fadd fast float %5931, %5930
  %5935 = fsub fast float %5929, %5930
  %5936 = fadd fast float %5935, %5931
  %5937 = call float @dx.op.binary.f32(i32 35, float %5933, float %5934)  ; FMax(a,b)
  %5938 = call float @dx.op.binary.f32(i32 36, float %5937, float %5936)  ; FMin(a,b)
  %5939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %5876, float %5877, float %5938, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5940 = extractvalue %dx.types.ResRet.f32 %5939, 0
  %5941 = extractvalue %dx.types.ResRet.f32 %5939, 1
  %5942 = extractvalue %dx.types.ResRet.f32 %5939, 2
  %5943 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5944 = extractvalue %dx.types.CBufRet.i32 %5943, 0
  %5945 = extractvalue %dx.types.CBufRet.i32 %5943, 1
  %5946 = uitofp i32 %5944 to float
  %5947 = uitofp i32 %5945 to float
  %5948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5949 = extractvalue %dx.types.CBufRet.f32 %5948, 0
  %5950 = extractvalue %dx.types.CBufRet.f32 %5948, 1
  %5951 = fmul fast float %5946, %5876
  %5952 = fmul fast float %5947, %5877
  %5953 = fadd fast float %5951, -5.000000e-01
  %5954 = fadd fast float %5952, -5.000000e-01
  %5955 = call float @dx.op.unary.f32(i32 22, float %5953)  ; Frc(value)
  %5956 = call float @dx.op.unary.f32(i32 22, float %5954)  ; Frc(value)
  %5957 = fmul fast float %5955, %5955
  %5958 = fmul fast float %5957, %5955
  %5959 = fsub fast float 3.000000e+00, %5955
  %5960 = fmul fast float %5957, %5959
  %5961 = fmul fast float %5955, 3.000000e+00
  %5962 = fmul fast float %5958, 3.000000e+00
  %5963 = fmul fast float %5957, 6.000000e+00
  %5964 = fsub fast float %5962, %5963
  %5965 = fadd fast float %5964, 4.000000e+00
  %5966 = fmul fast float %5965, 0x3FC5555560000000
  %5967 = fmul fast float %5958, -3.000000e+00
  %5968 = fadd fast float %5957, %5955
  %5969 = fmul fast float %5968, 3.000000e+00
  %5970 = fadd fast float %5967, 1.000000e+00
  %5971 = fadd fast float %5970, %5969
  %5972 = fmul fast float %5958, 0x3FC5555560000000
  %5973 = fmul fast float %5956, %5956
  %5974 = fmul fast float %5973, %5956
  %5975 = fsub fast float 3.000000e+00, %5956
  %5976 = fmul fast float %5973, %5975
  %5977 = fmul fast float %5956, 3.000000e+00
  %5978 = fmul fast float %5974, 3.000000e+00
  %5979 = fmul fast float %5973, 6.000000e+00
  %5980 = fsub fast float %5978, %5979
  %5981 = fadd fast float %5980, 4.000000e+00
  %5982 = fmul fast float %5981, 0x3FC5555560000000
  %5983 = fmul fast float %5974, -3.000000e+00
  %5984 = fadd fast float %5973, %5956
  %5985 = fmul fast float %5984, 3.000000e+00
  %5986 = fadd fast float %5983, 1.000000e+00
  %5987 = fadd fast float %5986, %5985
  %5988 = fmul fast float %5974, 0x3FC5555560000000
  %5989 = fadd fast float %5955, 1.000000e+00
  %5990 = fsub fast float 1.000000e+00, %5961
  %5991 = fadd fast float %5990, %5960
  %5992 = fadd fast float %5991, %5965
  %5993 = fmul fast float %5992, 0x3FC5555560000000
  %5994 = fdiv fast float %5966, %5993
  %5995 = fsub fast float %5989, %5994
  %5996 = fsub fast float 1.000000e+00, %5955
  %5997 = fadd fast float %5971, %5958
  %5998 = fmul fast float %5997, 0x3FC5555560000000
  %5999 = fdiv fast float %5972, %5998
  %6000 = fadd fast float %5996, %5999
  %6001 = fadd fast float %5956, 1.000000e+00
  %6002 = fsub fast float 1.000000e+00, %5977
  %6003 = fadd fast float %6002, %5976
  %6004 = fadd fast float %6003, %5981
  %6005 = fmul fast float %6004, 0x3FC5555560000000
  %6006 = fdiv fast float %5982, %6005
  %6007 = fsub fast float %6001, %6006
  %6008 = fsub fast float 1.000000e+00, %5956
  %6009 = fadd fast float %5987, %5974
  %6010 = fmul fast float %6009, 0x3FC5555560000000
  %6011 = fdiv fast float %5988, %6010
  %6012 = fadd fast float %6011, %6008
  %6013 = fmul fast float %5995, %5949
  %6014 = fsub fast float %5876, %6013
  %6015 = fmul fast float %6000, %5949
  %6016 = fadd fast float %6015, %5876
  %6017 = fmul fast float %6012, %5950
  %6018 = fadd fast float %6017, %5877
  %6019 = fmul fast float %6007, %5950
  %6020 = fsub fast float %5877, %6019
  %6021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6014, float %6020, float %5938, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6022 = extractvalue %dx.types.ResRet.f32 %6021, 0
  %6023 = extractvalue %dx.types.ResRet.f32 %6021, 1
  %6024 = extractvalue %dx.types.ResRet.f32 %6021, 2
  %6025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6016, float %6020, float %5938, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6026 = extractvalue %dx.types.ResRet.f32 %6025, 0
  %6027 = extractvalue %dx.types.ResRet.f32 %6025, 1
  %6028 = extractvalue %dx.types.ResRet.f32 %6025, 2
  %6029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6014, float %6018, float %5938, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6030 = extractvalue %dx.types.ResRet.f32 %6029, 0
  %6031 = extractvalue %dx.types.ResRet.f32 %6029, 1
  %6032 = extractvalue %dx.types.ResRet.f32 %6029, 2
  %6033 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6016, float %6018, float %5938, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6034 = extractvalue %dx.types.ResRet.f32 %6033, 0
  %6035 = extractvalue %dx.types.ResRet.f32 %6033, 1
  %6036 = extractvalue %dx.types.ResRet.f32 %6033, 2
  %6037 = fsub fast float %6030, %6022
  %6038 = fsub fast float %6031, %6023
  %6039 = fsub fast float %6032, %6024
  %6040 = fmul fast float %6037, %6010
  %6041 = fmul fast float %6038, %6010
  %6042 = fmul fast float %6039, %6010
  %6043 = fadd fast float %6040, %6022
  %6044 = fadd fast float %6041, %6023
  %6045 = fadd fast float %6042, %6024
  %6046 = fsub fast float %6034, %6026
  %6047 = fsub fast float %6035, %6027
  %6048 = fsub fast float %6036, %6028
  %6049 = fmul fast float %6046, %6010
  %6050 = fmul fast float %6047, %6010
  %6051 = fmul fast float %6048, %6010
  %6052 = fsub fast float %6026, %6043
  %6053 = fadd fast float %6052, %6049
  %6054 = fsub fast float %6027, %6044
  %6055 = fadd fast float %6054, %6050
  %6056 = fsub fast float %6028, %6045
  %6057 = fadd fast float %6056, %6051
  %6058 = fmul fast float %6053, %5998
  %6059 = fmul fast float %6055, %5998
  %6060 = fmul fast float %6057, %5998
  %6061 = fadd fast float %6058, %6043
  %6062 = fadd fast float %6059, %6044
  %6063 = fadd fast float %6060, %6045
  %6064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6065 = extractvalue %dx.types.CBufRet.f32 %6064, 1
  %6066 = fmul fast float %6061, %6065
  %6067 = fmul fast float %6062, %6065
  %6068 = fmul fast float %6063, %6065
  br label %6069

; <label>:6069                                    ; preds = %5901, %5870
  %6070 = phi float [ %5940, %5901 ], [ 1.000000e+00, %5870 ]
  %6071 = phi float [ %5941, %5901 ], [ 1.000000e+00, %5870 ]
  %6072 = phi float [ %5942, %5901 ], [ 1.000000e+00, %5870 ]
  %6073 = phi float [ %6066, %5901 ], [ 0.000000e+00, %5870 ]
  %6074 = phi float [ %6067, %5901 ], [ 0.000000e+00, %5870 ]
  %6075 = phi float [ %6068, %5901 ], [ 0.000000e+00, %5870 ]
  %6076 = fmul fast float %6073, %5855
  %6077 = fmul fast float %6074, %5856
  %6078 = fmul fast float %6075, %5857
  %6079 = call float @dx.op.dot3.f32(i32 55, float %6070, float %6071, float %6072, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6080 = call float @dx.op.dot3.f32(i32 55, float %6076, float %6077, float %6078, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6081 = select i1 %260, float %6079, float %6070
  %6082 = select i1 %260, float %6079, float %6071
  %6083 = select i1 %260, float 1.000000e+00, float %6072
  %6084 = select i1 %260, float %6080, float %6076
  %6085 = select i1 %260, float 0.000000e+00, float %6077
  %6086 = select i1 %260, float 0.000000e+00, float %6078
  %6087 = fmul fast float %6081, %5860
  %6088 = fmul fast float %6082, %5861
  %6089 = fmul fast float %6083, %5862
  %6090 = fadd fast float %6087, %6084
  %6091 = fadd fast float %6088, %6085
  %6092 = fadd fast float %6086, %6089
  %6093 = fmul fast float %6081, %5824
  %6094 = fmul fast float %6082, %5825
  %6095 = fmul fast float %6083, %5826
  %6096 = fmul fast float %90, 2.000000e+00
  %6097 = fmul fast float %6096, %5872
  %6098 = fmul fast float %91, 2.000000e+00
  %6099 = fmul fast float %6098, %5873
  %6100 = fsub fast float 1.000000e+00, %6097
  %6101 = fsub fast float 1.000000e+00, %6099
  %6102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6103 = extractvalue %dx.types.CBufRet.f32 %6102, 0
  %6104 = extractvalue %dx.types.CBufRet.f32 %6102, 1
  %6105 = extractvalue %dx.types.CBufRet.f32 %6102, 2
  %6106 = fmul fast float %6100, %6103
  %6107 = fmul fast float %6100, %6104
  %6108 = fmul fast float %6100, %6105
  %6109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6110 = extractvalue %dx.types.CBufRet.f32 %6109, 0
  %6111 = extractvalue %dx.types.CBufRet.f32 %6109, 1
  %6112 = extractvalue %dx.types.CBufRet.f32 %6109, 2
  %6113 = fmul fast float %6101, %6110
  %6114 = fmul fast float %6101, %6111
  %6115 = fmul fast float %6101, %6112
  %6116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6117 = extractvalue %dx.types.CBufRet.f32 %6116, 0
  %6118 = extractvalue %dx.types.CBufRet.f32 %6116, 1
  %6119 = extractvalue %dx.types.CBufRet.f32 %6116, 2
  %6120 = fadd fast float %6113, %6117
  %6121 = fadd fast float %6120, %6106
  %6122 = fadd fast float %6114, %6118
  %6123 = fadd fast float %6122, %6107
  %6124 = fadd fast float %6115, %6119
  %6125 = fadd fast float %6124, %6108
  %6126 = fmul fast float %6121, %220
  %6127 = fmul fast float %6123, %220
  %6128 = fmul fast float %6125, %220
  br label %6129

; <label>:6129                                    ; preds = %6069, %5823
  %6130 = phi float [ %6126, %6069 ], [ %137, %5823 ]
  %6131 = phi float [ %6127, %6069 ], [ %138, %5823 ]
  %6132 = phi float [ %6128, %6069 ], [ %139, %5823 ]
  %6133 = phi float [ %220, %6069 ], [ %81, %5823 ]
  %6134 = phi float [ %6090, %6069 ], [ %5860, %5823 ]
  %6135 = phi float [ %6091, %6069 ], [ %5861, %5823 ]
  %6136 = phi float [ %6092, %6069 ], [ %5862, %5823 ]
  %6137 = phi float [ %6093, %6069 ], [ %5824, %5823 ]
  %6138 = phi float [ %6094, %6069 ], [ %5825, %5823 ]
  %6139 = phi float [ %6095, %6069 ], [ %5826, %5823 ]
  %6140 = phi float [ %6070, %6069 ], [ 1.000000e+00, %5823 ]
  br i1 %5869, label %7295, label %6141

; <label>:6141                                    ; preds = %6129
  %6142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6143 = extractvalue %dx.types.CBufRet.f32 %6142, 0
  %6144 = extractvalue %dx.types.CBufRet.f32 %6142, 1
  %6145 = extractvalue %dx.types.CBufRet.f32 %6142, 2
  %6146 = extractvalue %dx.types.CBufRet.f32 %6142, 3
  %6147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6148 = extractvalue %dx.types.CBufRet.f32 %6147, 0
  %6149 = extractvalue %dx.types.CBufRet.f32 %6147, 1
  %6150 = extractvalue %dx.types.CBufRet.f32 %6147, 2
  %6151 = extractvalue %dx.types.CBufRet.f32 %6147, 3
  %6152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6153 = extractvalue %dx.types.CBufRet.f32 %6152, 0
  %6154 = extractvalue %dx.types.CBufRet.f32 %6152, 1
  %6155 = extractvalue %dx.types.CBufRet.f32 %6152, 2
  %6156 = extractvalue %dx.types.CBufRet.f32 %6152, 3
  %6157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6158 = extractvalue %dx.types.CBufRet.f32 %6157, 0
  %6159 = extractvalue %dx.types.CBufRet.f32 %6157, 1
  %6160 = extractvalue %dx.types.CBufRet.f32 %6157, 2
  %6161 = extractvalue %dx.types.CBufRet.f32 %6157, 3
  %6162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6163 = extractvalue %dx.types.CBufRet.f32 %6162, 3
  %6164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6165 = extractvalue %dx.types.CBufRet.f32 %6164, 3
  %6166 = extractvalue %dx.types.CBufRet.f32 %6164, 0
  %6167 = extractvalue %dx.types.CBufRet.f32 %6164, 1
  %6168 = extractvalue %dx.types.CBufRet.f32 %6164, 2
  %6169 = fcmp fast olt float %6168, -5.000000e-01
  %6170 = call float @dx.op.dot3.f32(i32 55, float %6130, float %6131, float %6132, float %6130, float %6131, float %6132)  ; Dot3(ax,ay,az,bx,by,bz)
  %6171 = call float @dx.op.unary.f32(i32 25, float %6170)  ; Rsqrt(value)
  %6172 = fmul fast float %6171, %6170
  %6173 = fmul fast float %6171, %6130
  %6174 = fmul fast float %6171, %6131
  %6175 = fmul fast float %6171, %6132
  %6176 = fadd fast float %6172, %6146
  %6177 = call float @dx.op.dot3.f32(i32 55, float %6173, float %6174, float %6175, float %6143, float %6144, float %6145)  ; Dot3(ax,ay,az,bx,by,bz)
  %6178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6179 = extractvalue %dx.types.CBufRet.i32 %6178, 1
  %6180 = and i32 %6179, 1
  %6181 = icmp ne i32 %6180, 0
  %6182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6183 = extractvalue %dx.types.CBufRet.f32 %6182, 2
  %6184 = fcmp fast ogt float %6183, 0.000000e+00
  %6185 = and i1 %6181, %6184
  br i1 %6185, label %6186, label %6592, !dx.controlflow.hints !135

; <label>:6186                                    ; preds = %6141
  %6187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6188 = extractvalue %dx.types.CBufRet.f32 %6187, 3
  %6189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6190 = extractvalue %dx.types.CBufRet.f32 %6189, 2
  %6191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6192 = extractvalue %dx.types.CBufRet.f32 %6191, 2
  %6193 = fsub fast float %6190, %6192
  %6194 = and i32 %6179, 2
  %6195 = extractvalue %dx.types.CBufRet.i32 %6178, 0
  %6196 = call i32 @dx.op.binary.i32(i32 40, i32 %6195, i32 3)  ; UMin(a,b)
  %6197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6198 = extractvalue %dx.types.CBufRet.f32 %6197, 0
  %6199 = extractvalue %dx.types.CBufRet.f32 %6197, 1
  %6200 = extractvalue %dx.types.CBufRet.f32 %6191, 0
  %6201 = extractvalue %dx.types.CBufRet.f32 %6191, 1
  %6202 = fsub fast float %6198, %6200
  %6203 = fsub fast float %6199, %6201
  %6204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6205 = extractvalue %dx.types.CBufRet.f32 %6204, 0
  %6206 = fcmp fast ogt float %6205, 0.000000e+00
  %6207 = fsub fast float -0.000000e+00, %6202
  %6208 = fsub fast float -0.000000e+00, %6203
  %6209 = call float @dx.op.dot2.f32(i32 54, float %6173, float %6174, float %6173, float %6174)  ; Dot2(ax,ay,bx,by)
  %6210 = call float @dx.op.dot2.f32(i32 54, float %6173, float %6174, float %6207, float %6208)  ; Dot2(ax,ay,bx,by)
  %6211 = fmul fast float %6210, 2.000000e+00
  %6212 = call float @dx.op.dot2.f32(i32 54, float %6207, float %6208, float %6207, float %6208)  ; Dot2(ax,ay,bx,by)
  %6213 = fmul fast float %6205, %6205
  %6214 = fsub fast float %6212, %6213
  %6215 = fmul fast float %6211, %6211
  %6216 = fmul fast float %6209, 4.000000e+00
  %6217 = fmul fast float %6216, %6214
  %6218 = fsub fast float %6215, %6217
  %6219 = fcmp fast ogt float %6218, 0.000000e+00
  br i1 %6219, label %6220, label %6235

; <label>:6220                                    ; preds = %6186
  %6221 = fcmp fast ogt float %6211, 0.000000e+00
  %6222 = call float @dx.op.unary.f32(i32 24, float %6218)  ; Sqrt(value)
  %6223 = fsub fast float -0.000000e+00, %6222
  %6224 = select i1 %6221, float %6222, float %6223
  %6225 = fadd fast float %6224, %6211
  %6226 = fmul float %6225, -5.000000e-01
  %6227 = fdiv fast float %6226, %6209
  %6228 = call float @dx.op.binary.f32(i32 35, float %6227, float 0.000000e+00)  ; FMax(a,b)
  %6229 = call float @dx.op.binary.f32(i32 36, float %6172, float %6228)  ; FMin(a,b)
  %6230 = fdiv fast float %6214, %6226
  %6231 = call float @dx.op.binary.f32(i32 35, float %6230, float 0.000000e+00)  ; FMax(a,b)
  %6232 = call float @dx.op.binary.f32(i32 36, float %6172, float %6231)  ; FMin(a,b)
  %6233 = call float @dx.op.binary.f32(i32 36, float %6229, float %6232)  ; FMin(a,b)
  %6234 = call float @dx.op.binary.f32(i32 35, float %6229, float %6232)  ; FMax(a,b)
  br label %6235

; <label>:6235                                    ; preds = %6220, %6186
  %6236 = phi float [ %6234, %6220 ], [ -1.000000e+00, %6186 ]
  %6237 = phi float [ %6233, %6220 ], [ -1.000000e+00, %6186 ]
  %6238 = phi i1 [ true, %6220 ], [ false, %6186 ]
  %6239 = and i1 %6206, %6238
  br i1 %6239, label %6240, label %6242

; <label>:6240                                    ; preds = %6235
  %6241 = fcmp fast oeq float %6237, %6236
  br i1 %6241, label %6545, label %6243

; <label>:6242                                    ; preds = %6235
  br i1 %6206, label %6545, label %6243

; <label>:6243                                    ; preds = %6242, %6240
  %6244 = phi float [ %6172, %6242 ], [ %6236, %6240 ]
  %6245 = phi float [ 0.000000e+00, %6242 ], [ %6237, %6240 ]
  %6246 = icmp ne i32 %6194, 0
  %6247 = fmul fast float %6244, %6175
  %6248 = fadd fast float %6247, %6188
  %6249 = fmul fast float %6248, %6244
  %6250 = select i1 %6246, float 0.000000e+00, float %6249
  %6251 = fcmp fast oeq float %6175, 0.000000e+00
  %6252 = fdiv fast float %6193, %6175
  %6253 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6252)  ; FMax(a,b)
  %6254 = select i1 %6251, float %6244, float %6253
  %6255 = call float @dx.op.binary.f32(i32 36, float %6244, float %6254)  ; FMin(a,b)
  %6256 = fcmp fast ogt float %6175, 0.000000e+00
  %6257 = fcmp fast olt float %6193, 0.000000e+00
  br i1 %6256, label %6258, label %6315

; <label>:6258                                    ; preds = %6243
  %6259 = icmp eq i32 %6194, 0
  br i1 %6257, label %6260, label %6304

; <label>:6260                                    ; preds = %6258
  %6261 = select i1 %6259, float %6244, float 0.000000e+00
  %6262 = fsub fast float -0.000000e+00, %6261
  %6263 = call float @dx.op.unary.f32(i32 6, float %6262)  ; FAbs(value)
  %6264 = fmul fast float %6261, %6175
  %6265 = fadd fast float %6264, %6188
  %6266 = fmul fast float %6263, %6265
  %6267 = fsub fast float %6250, %6266
  %6268 = fsub fast float %6244, %6263
  %6269 = select i1 %6259, float %6268, float 0.000000e+00
  %6270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6271 = extractvalue %dx.types.CBufRet.f32 %6270, 0
  %6272 = extractvalue %dx.types.CBufRet.f32 %6270, 1
  %6273 = extractvalue %dx.types.CBufRet.f32 %6270, 2
  %6274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6275 = extractvalue %dx.types.CBufRet.f32 %6274, 0
  %6276 = extractvalue %dx.types.CBufRet.f32 %6274, 1
  %6277 = extractvalue %dx.types.CBufRet.f32 %6274, 2
  %6278 = extractvalue %dx.types.CBufRet.f32 %6274, 3
  %6279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6280 = extractvalue %dx.types.CBufRet.f32 %6279, 3
  %6281 = call float @dx.op.binary.f32(i32 36, float %6267, float %6280)  ; FMin(a,b)
  %6282 = fmul fast float %6278, %6269
  %6283 = call float @dx.op.unary.f32(i32 7, float %6282)  ; Saturate(value)
  %6284 = fsub fast float %6275, %6271
  %6285 = fsub fast float %6276, %6272
  %6286 = fsub fast float %6277, %6273
  %6287 = fmul fast float %6283, %6284
  %6288 = fmul fast float %6283, %6285
  %6289 = fmul fast float %6283, %6286
  %6290 = fadd fast float %6287, %6271
  %6291 = fadd fast float %6288, %6272
  %6292 = fadd fast float %6289, %6273
  %6293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6294 = extractvalue %dx.types.CBufRet.f32 %6293, 0
  %6295 = extractvalue %dx.types.CBufRet.f32 %6293, 1
  %6296 = fadd fast float %6295, %6294
  %6297 = call float @dx.op.unary.f32(i32 7, float %6296)  ; Saturate(value)
  %6298 = extractvalue %dx.types.CBufRet.f32 %6293, 2
  %6299 = extractvalue %dx.types.CBufRet.f32 %6293, 3
  %6300 = fadd fast float %6299, %6298
  %6301 = call float @dx.op.unary.f32(i32 7, float %6300)  ; Saturate(value)
  %6302 = fmul fast float %6297, %6281
  %6303 = fmul fast float %6302, %6301
  br label %6545

; <label>:6304                                    ; preds = %6258
  br i1 %6259, label %6305, label %6326

; <label>:6305                                    ; preds = %6304
  %6306 = call float @dx.op.binary.f32(i32 36, float %6255, float %6245)  ; FMin(a,b)
  %6307 = fsub fast float %6255, %6306
  %6308 = fsub fast float %6307, %6244
  %6309 = call float @dx.op.unary.f32(i32 6, float %6308)  ; FAbs(value)
  %6310 = fadd fast float %6307, %6244
  %6311 = fmul fast float %6310, %6175
  %6312 = fadd fast float %6311, %6188
  %6313 = fmul fast float %6312, %6309
  %6314 = fsub fast float %6250, %6313
  br label %6326

; <label>:6315                                    ; preds = %6243
  br i1 %6257, label %6316, label %6326

; <label>:6316                                    ; preds = %6315
  %6317 = call float @dx.op.binary.f32(i32 35, float %6245, float %6255)  ; FMax(a,b)
  %6318 = icmp eq i32 %6194, 0
  %6319 = select i1 %6318, float %6255, float 0.000000e+00
  %6320 = fsub fast float -0.000000e+00, %6319
  %6321 = call float @dx.op.unary.f32(i32 6, float %6320)  ; FAbs(value)
  %6322 = fmul fast float %6319, %6175
  %6323 = fadd fast float %6322, %6188
  %6324 = fmul fast float %6321, %6323
  %6325 = fsub fast float %6250, %6324
  br label %6326

; <label>:6326                                    ; preds = %6316, %6315, %6305, %6304
  %6327 = phi float [ %6245, %6304 ], [ %6245, %6305 ], [ %6317, %6316 ], [ %6245, %6315 ]
  %6328 = phi float [ 0.000000e+00, %6304 ], [ %6309, %6305 ], [ %6321, %6316 ], [ 0.000000e+00, %6315 ]
  %6329 = phi float [ %6250, %6304 ], [ %6314, %6305 ], [ %6325, %6316 ], [ %6250, %6315 ]
  %6330 = phi float [ %6255, %6304 ], [ %6255, %6305 ], [ %6244, %6316 ], [ %6244, %6315 ]
  %6331 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 0
  store float -1.000000e+00, float* %6331, align 4, !tbaa !136, !noalias !138
  %6332 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 1
  store float -1.000000e+00, float* %6332, align 4, !tbaa !136, !noalias !138
  %6333 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 2
  store float -1.000000e+00, float* %6333, align 4, !tbaa !136, !noalias !138
  %6334 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 0
  store float -1.000000e+00, float* %6334, align 4, !tbaa !136, !noalias !138
  %6335 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 1
  store float -1.000000e+00, float* %6335, align 4, !tbaa !136, !noalias !138
  %6336 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 2
  store float -1.000000e+00, float* %6336, align 4, !tbaa !136, !noalias !138
  %6337 = icmp sgt i32 %6196, 0
  br i1 %6337, label %6338, label %6399

; <label>:6338                                    ; preds = %6326
  br label %6339

; <label>:6339                                    ; preds = %6388, %6338
  %6340 = phi i32 [ %6389, %6388 ], [ 0, %6338 ]
  %6341 = phi i32 [ %6390, %6388 ], [ 0, %6338 ]
  %6342 = add nuw i32 %6341, 171
  %6343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %6342)  ; CBufferLoadLegacy(handle,regIndex)
  %6344 = extractvalue %dx.types.CBufRet.f32 %6343, 0
  %6345 = extractvalue %dx.types.CBufRet.f32 %6343, 1
  %6346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6347 = extractvalue %dx.types.CBufRet.f32 %6346, 0
  %6348 = extractvalue %dx.types.CBufRet.f32 %6346, 1
  %6349 = fsub fast float %6344, %6347
  %6350 = fsub fast float %6345, %6348
  %6351 = extractvalue %dx.types.CBufRet.f32 %6343, 2
  %6352 = fsub fast float -0.000000e+00, %6349
  %6353 = fsub fast float -0.000000e+00, %6350
  %6354 = call float @dx.op.dot2.f32(i32 54, float %6173, float %6174, float %6352, float %6353)  ; Dot2(ax,ay,bx,by)
  %6355 = fmul fast float %6354, 2.000000e+00
  %6356 = call float @dx.op.dot2.f32(i32 54, float %6352, float %6353, float %6352, float %6353)  ; Dot2(ax,ay,bx,by)
  %6357 = fmul fast float %6351, %6351
  %6358 = fsub fast float %6356, %6357
  %6359 = fmul fast float %6355, %6355
  %6360 = fmul fast float %6216, %6358
  %6361 = fsub fast float %6359, %6360
  %6362 = fcmp fast ogt float %6361, 0.000000e+00
  br i1 %6362, label %6363, label %6378

; <label>:6363                                    ; preds = %6339
  %6364 = fcmp fast ogt float %6355, 0.000000e+00
  %6365 = call float @dx.op.unary.f32(i32 24, float %6361)  ; Sqrt(value)
  %6366 = fsub fast float -0.000000e+00, %6365
  %6367 = select i1 %6364, float %6365, float %6366
  %6368 = fadd fast float %6367, %6355
  %6369 = fmul float %6368, -5.000000e-01
  %6370 = fdiv fast float %6369, %6209
  %6371 = call float @dx.op.binary.f32(i32 35, float %6370, float 0.000000e+00)  ; FMax(a,b)
  %6372 = call float @dx.op.binary.f32(i32 36, float %6244, float %6371)  ; FMin(a,b)
  %6373 = fdiv fast float %6358, %6369
  %6374 = call float @dx.op.binary.f32(i32 35, float %6373, float 0.000000e+00)  ; FMax(a,b)
  %6375 = call float @dx.op.binary.f32(i32 36, float %6244, float %6374)  ; FMin(a,b)
  %6376 = call float @dx.op.binary.f32(i32 36, float %6372, float %6375)  ; FMin(a,b)
  %6377 = call float @dx.op.binary.f32(i32 35, float %6372, float %6375)  ; FMax(a,b)
  br label %6378

; <label>:6378                                    ; preds = %6363, %6339
  %6379 = phi float [ %6377, %6363 ], [ -1.000000e+00, %6339 ]
  %6380 = phi float [ %6376, %6363 ], [ -1.000000e+00, %6339 ]
  %6381 = phi i1 [ true, %6363 ], [ false, %6339 ]
  br i1 %6381, label %6382, label %6388

; <label>:6382                                    ; preds = %6378
  %6383 = call float @dx.op.binary.f32(i32 35, float %6327, float %6380)  ; FMax(a,b)
  %6384 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %6341
  store float %6383, float* %6384, align 4, !tbaa !136, !noalias !138
  %6385 = call float @dx.op.binary.f32(i32 35, float %6327, float %6379)  ; FMax(a,b)
  %6386 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %6341
  store float %6385, float* %6386, align 4, !tbaa !136, !noalias !138
  %6387 = add nsw i32 %6340, 1
  br label %6388

; <label>:6388                                    ; preds = %6382, %6378
  %6389 = phi i32 [ %6387, %6382 ], [ %6340, %6378 ]
  %6390 = add nuw nsw i32 %6341, 1
  %6391 = icmp eq i32 %6390, %6196
  br i1 %6391, label %6392, label %6339

; <label>:6392                                    ; preds = %6388
  %6393 = load float, float* %6333, align 4, !tbaa !136, !alias.scope !154, !noalias !157
  %6394 = load float, float* %6332, align 4, !tbaa !136, !alias.scope !160, !noalias !161
  %6395 = load float, float* %6331, align 4, !tbaa !136, !alias.scope !162, !noalias !163
  %6396 = load float, float* %6336, align 4, !tbaa !136, !alias.scope !164, !noalias !167
  %6397 = load float, float* %6335, align 4, !tbaa !136, !alias.scope !170, !noalias !171
  %6398 = load float, float* %6334, align 4, !tbaa !136, !alias.scope !172, !noalias !173
  br label %6399

; <label>:6399                                    ; preds = %6392, %6326
  %6400 = phi float [ -1.000000e+00, %6326 ], [ %6398, %6392 ]
  %6401 = phi float [ -1.000000e+00, %6326 ], [ %6397, %6392 ]
  %6402 = phi float [ -1.000000e+00, %6326 ], [ %6396, %6392 ]
  %6403 = phi float [ -1.000000e+00, %6326 ], [ %6395, %6392 ]
  %6404 = phi float [ -1.000000e+00, %6326 ], [ %6394, %6392 ]
  %6405 = phi float [ -1.000000e+00, %6326 ], [ %6393, %6392 ]
  %6406 = phi i32 [ 0, %6326 ], [ %6389, %6392 ]
  %6407 = call float @dx.op.binary.f32(i32 36, float %6404, float %6405)  ; FMin(a,b)
  %6408 = call float @dx.op.binary.f32(i32 36, float %6403, float %6407)  ; FMin(a,b)
  %6409 = call float @dx.op.binary.f32(i32 35, float %6403, float %6404)  ; FMax(a,b)
  %6410 = call float @dx.op.binary.f32(i32 36, float %6409, float %6405)  ; FMin(a,b)
  %6411 = call float @dx.op.binary.f32(i32 36, float %6403, float %6404)  ; FMin(a,b)
  %6412 = call float @dx.op.binary.f32(i32 35, float %6411, float %6410)  ; FMax(a,b)
  %6413 = call float @dx.op.binary.f32(i32 35, float %6404, float %6405)  ; FMax(a,b)
  %6414 = call float @dx.op.binary.f32(i32 35, float %6403, float %6413)  ; FMax(a,b)
  store float %6408, float* %6331, align 4, !tbaa !136, !alias.scope !162, !noalias !163
  store float %6412, float* %6332, align 4, !tbaa !136, !alias.scope !160, !noalias !161
  store float %6414, float* %6333, align 4, !tbaa !136, !alias.scope !154, !noalias !157
  %6415 = call float @dx.op.binary.f32(i32 36, float %6401, float %6402)  ; FMin(a,b)
  %6416 = call float @dx.op.binary.f32(i32 36, float %6400, float %6415)  ; FMin(a,b)
  %6417 = call float @dx.op.binary.f32(i32 35, float %6400, float %6401)  ; FMax(a,b)
  %6418 = call float @dx.op.binary.f32(i32 36, float %6417, float %6402)  ; FMin(a,b)
  %6419 = call float @dx.op.binary.f32(i32 36, float %6400, float %6401)  ; FMin(a,b)
  %6420 = call float @dx.op.binary.f32(i32 35, float %6419, float %6418)  ; FMax(a,b)
  %6421 = call float @dx.op.binary.f32(i32 35, float %6401, float %6402)  ; FMax(a,b)
  %6422 = call float @dx.op.binary.f32(i32 35, float %6400, float %6421)  ; FMax(a,b)
  store float %6416, float* %6334, align 4, !tbaa !136, !alias.scope !172, !noalias !173
  store float %6420, float* %6335, align 4, !tbaa !136, !alias.scope !170, !noalias !171
  store float %6422, float* %6336, align 4, !tbaa !136, !alias.scope !164, !noalias !167
  %6423 = sub nsw i32 3, %6406
  %6424 = icmp sgt i32 %6423, 2
  br i1 %6424, label %6425, label %6463

; <label>:6425                                    ; preds = %6399
  %6426 = icmp eq i32 %6194, 0
  %6427 = fsub fast float %6244, %6328
  %6428 = select i1 %6426, float %6427, float %6328
  %6429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6430 = extractvalue %dx.types.CBufRet.f32 %6429, 0
  %6431 = extractvalue %dx.types.CBufRet.f32 %6429, 1
  %6432 = extractvalue %dx.types.CBufRet.f32 %6429, 2
  %6433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6434 = extractvalue %dx.types.CBufRet.f32 %6433, 0
  %6435 = extractvalue %dx.types.CBufRet.f32 %6433, 1
  %6436 = extractvalue %dx.types.CBufRet.f32 %6433, 2
  %6437 = extractvalue %dx.types.CBufRet.f32 %6433, 3
  %6438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6439 = extractvalue %dx.types.CBufRet.f32 %6438, 3
  %6440 = call float @dx.op.binary.f32(i32 36, float %6329, float %6439)  ; FMin(a,b)
  %6441 = fmul fast float %6437, %6428
  %6442 = call float @dx.op.unary.f32(i32 7, float %6441)  ; Saturate(value)
  %6443 = fsub fast float %6434, %6430
  %6444 = fsub fast float %6435, %6431
  %6445 = fsub fast float %6436, %6432
  %6446 = fmul fast float %6442, %6443
  %6447 = fmul fast float %6442, %6444
  %6448 = fmul fast float %6442, %6445
  %6449 = fadd fast float %6446, %6430
  %6450 = fadd fast float %6447, %6431
  %6451 = fadd fast float %6448, %6432
  %6452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6453 = extractvalue %dx.types.CBufRet.f32 %6452, 0
  %6454 = extractvalue %dx.types.CBufRet.f32 %6452, 1
  %6455 = fadd fast float %6454, %6453
  %6456 = call float @dx.op.unary.f32(i32 7, float %6455)  ; Saturate(value)
  %6457 = extractvalue %dx.types.CBufRet.f32 %6452, 2
  %6458 = extractvalue %dx.types.CBufRet.f32 %6452, 3
  %6459 = fadd fast float %6458, %6457
  %6460 = call float @dx.op.unary.f32(i32 7, float %6459)  ; Saturate(value)
  %6461 = fmul fast float %6456, %6440
  %6462 = fmul fast float %6461, %6460
  br label %6545

; <label>:6463                                    ; preds = %6399
  %6464 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %6423
  %6465 = load float, float* %6464, align 4, !tbaa !136, !noalias !138
  %6466 = fcmp fast olt float %6465, %6330
  %6467 = icmp sgt i32 %6406, 0
  %6468 = and i1 %6467, %6466
  br i1 %6468, label %6469, label %6506

; <label>:6469                                    ; preds = %6463
  br label %6470

; <label>:6470                                    ; preds = %6499, %6469
  %6471 = phi float [ %6500, %6499 ], [ %6328, %6469 ]
  %6472 = phi float [ %6501, %6499 ], [ %6329, %6469 ]
  %6473 = phi float [ %6481, %6499 ], [ %6465, %6469 ]
  %6474 = phi i32 [ %6478, %6499 ], [ %6423, %6469 ]
  %6475 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %6474
  %6476 = load float, float* %6475, align 4, !tbaa !136, !noalias !138
  %6477 = icmp slt i32 %6474, 2
  %6478 = add nsw i32 %6474, 1
  %6479 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %6478
  %6480 = load float, float* %6479, align 4, !tbaa !136, !noalias !138
  %6481 = select i1 %6477, float %6480, float %6244
  %6482 = call float @dx.op.binary.f32(i32 36, float %6481, float %6476)  ; FMin(a,b)
  %6483 = call float @dx.op.binary.f32(i32 36, float %6330, float %6482)  ; FMin(a,b)
  %6484 = icmp eq i32 %6194, 0
  %6485 = fadd fast float %6483, %6473
  %6486 = fmul fast float %6485, %6175
  %6487 = fadd fast float %6486, %6188
  br i1 %6484, label %6493, label %6488

; <label>:6488                                    ; preds = %6470
  %6489 = fsub fast float %6483, %6473
  %6490 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6489)  ; FMax(a,b)
  %6491 = fmul fast float %6490, %6487
  %6492 = fadd fast float %6491, %6472
  br label %6499

; <label>:6493                                    ; preds = %6470
  %6494 = fsub fast float %6473, %6483
  %6495 = call float @dx.op.unary.f32(i32 6, float %6494)  ; FAbs(value)
  %6496 = fadd fast float %6495, %6471
  %6497 = fmul fast float %6495, %6487
  %6498 = fsub fast float %6472, %6497
  br label %6499

; <label>:6499                                    ; preds = %6493, %6488
  %6500 = phi float [ %6490, %6488 ], [ %6496, %6493 ]
  %6501 = phi float [ %6492, %6488 ], [ %6498, %6493 ]
  %6502 = fcmp fast olt float %6481, %6330
  %6503 = icmp slt i32 %6478, 3
  %6504 = and i1 %6503, %6502
  br i1 %6504, label %6470, label %6505

; <label>:6505                                    ; preds = %6499
  br label %6506

; <label>:6506                                    ; preds = %6505, %6463
  %6507 = phi float [ %6328, %6463 ], [ %6500, %6505 ]
  %6508 = phi float [ %6329, %6463 ], [ %6501, %6505 ]
  %6509 = fsub fast float %6244, %6507
  %6510 = select i1 %6246, float %6507, float %6509
  %6511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6512 = extractvalue %dx.types.CBufRet.f32 %6511, 0
  %6513 = extractvalue %dx.types.CBufRet.f32 %6511, 1
  %6514 = extractvalue %dx.types.CBufRet.f32 %6511, 2
  %6515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6516 = extractvalue %dx.types.CBufRet.f32 %6515, 0
  %6517 = extractvalue %dx.types.CBufRet.f32 %6515, 1
  %6518 = extractvalue %dx.types.CBufRet.f32 %6515, 2
  %6519 = extractvalue %dx.types.CBufRet.f32 %6515, 3
  %6520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6521 = extractvalue %dx.types.CBufRet.f32 %6520, 3
  %6522 = call float @dx.op.binary.f32(i32 36, float %6508, float %6521)  ; FMin(a,b)
  %6523 = fmul fast float %6519, %6510
  %6524 = call float @dx.op.unary.f32(i32 7, float %6523)  ; Saturate(value)
  %6525 = fsub fast float %6516, %6512
  %6526 = fsub fast float %6517, %6513
  %6527 = fsub fast float %6518, %6514
  %6528 = fmul fast float %6524, %6525
  %6529 = fmul fast float %6524, %6526
  %6530 = fmul fast float %6524, %6527
  %6531 = fadd fast float %6528, %6512
  %6532 = fadd fast float %6529, %6513
  %6533 = fadd fast float %6530, %6514
  %6534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6535 = extractvalue %dx.types.CBufRet.f32 %6534, 0
  %6536 = extractvalue %dx.types.CBufRet.f32 %6534, 1
  %6537 = fadd fast float %6536, %6535
  %6538 = call float @dx.op.unary.f32(i32 7, float %6537)  ; Saturate(value)
  %6539 = extractvalue %dx.types.CBufRet.f32 %6534, 2
  %6540 = extractvalue %dx.types.CBufRet.f32 %6534, 3
  %6541 = fadd fast float %6540, %6539
  %6542 = call float @dx.op.unary.f32(i32 7, float %6541)  ; Saturate(value)
  %6543 = fmul fast float %6538, %6522
  %6544 = fmul fast float %6543, %6542
  br label %6545

; <label>:6545                                    ; preds = %6506, %6425, %6260, %6242, %6240
  %6546 = phi float [ %6269, %6260 ], [ %6428, %6425 ], [ %6510, %6506 ], [ 0.000000e+00, %6240 ], [ 0.000000e+00, %6242 ]
  %6547 = phi float [ %6303, %6260 ], [ %6462, %6425 ], [ %6544, %6506 ], [ 0.000000e+00, %6240 ], [ 0.000000e+00, %6242 ]
  %6548 = phi float [ %6290, %6260 ], [ %6449, %6425 ], [ %6531, %6506 ], [ 0.000000e+00, %6240 ], [ 0.000000e+00, %6242 ]
  %6549 = phi float [ %6291, %6260 ], [ %6450, %6425 ], [ %6532, %6506 ], [ 0.000000e+00, %6240 ], [ 0.000000e+00, %6242 ]
  %6550 = phi float [ %6292, %6260 ], [ %6451, %6425 ], [ %6533, %6506 ], [ 0.000000e+00, %6240 ], [ 0.000000e+00, %6242 ]
  %6551 = fmul fast float %6183, %6547
  %6552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6553 = extractvalue %dx.types.CBufRet.f32 %6552, 2
  %6554 = fsub fast float %6190, %6553
  %6555 = fcmp fast olt float %6551, -2.000000e+01
  %6556 = call float @dx.op.unary.f32(i32 21, float %6551)  ; Exp(value)
  %6557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6558 = extractvalue %dx.types.CBufRet.f32 %6557, 2
  %6559 = extractvalue %dx.types.CBufRet.f32 %6557, 3
  %6560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6561 = extractvalue %dx.types.CBufRet.f32 %6560, 2
  %6562 = fmul fast float %6559, %6554
  %6563 = call float @dx.op.unary.f32(i32 7, float %6562)  ; Saturate(value)
  %6564 = fsub fast float 1.000000e+00, %6563
  %6565 = fmul fast float %6175, 5.000000e-01
  %6566 = fadd fast float %6565, 5.000000e-01
  %6567 = call float @dx.op.unary.f32(i32 7, float %6566)  ; Saturate(value)
  %6568 = fsub fast float 1.000000e+00, %6567
  %6569 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6564)  ; FMax(a,b)
  %6570 = fdiv fast float %6568, %6569
  %6571 = fsub fast float %6554, %6132
  %6572 = call float @dx.op.unary.f32(i32 6, float %6571)  ; FAbs(value)
  %6573 = fmul fast float %6572, %6558
  %6574 = call float @dx.op.unary.f32(i32 7, float %6570)  ; Saturate(value)
  %6575 = fsub fast float 1.000000e+00, %6573
  %6576 = fmul fast float %6575, %6574
  %6577 = fadd fast float %6576, %6573
  %6578 = fmul fast float %6561, %6554
  %6579 = call float @dx.op.unary.f32(i32 7, float %6578)  ; Saturate(value)
  %6580 = fsub fast float 1.000000e+00, %6577
  %6581 = fmul fast float %6580, %6579
  %6582 = fadd fast float %6581, %6577
  %6583 = call float @dx.op.unary.f32(i32 7, float %6582)  ; Saturate(value)
  %6584 = fadd fast float %6556, -1.000000e+00
  %6585 = select i1 %6555, float -1.000000e+00, float %6584
  %6586 = fmul fast float %6583, %6585
  %6587 = fadd fast float %6586, 1.000000e+00
  %6588 = fsub fast float -0.000000e+00, %6586
  %6589 = fmul fast float %6548, %6588
  %6590 = fmul fast float %6549, %6588
  %6591 = fmul fast float %6550, %6588
  br label %6592

; <label>:6592                                    ; preds = %6545, %6141
  %6593 = phi float [ %6546, %6545 ], [ 0.000000e+00, %6141 ]
  %6594 = phi float [ %6587, %6545 ], [ 1.000000e+00, %6141 ]
  %6595 = phi float [ %6589, %6545 ], [ 0.000000e+00, %6141 ]
  %6596 = phi float [ %6590, %6545 ], [ 0.000000e+00, %6141 ]
  %6597 = phi float [ %6591, %6545 ], [ 0.000000e+00, %6141 ]
  %6598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6599 = extractvalue %dx.types.CBufRet.f32 %6598, 1
  %6600 = fsub fast float 1.000000e+00, %6594
  %6601 = fmul fast float %6600, %6176
  %6602 = fmul fast float %6601, %6599
  %6603 = fsub fast float %6176, %6602
  br i1 %6169, label %6604, label %6633, !dx.controlflow.hints !174

; <label>:6604                                    ; preds = %6592
  %6605 = fmul fast float %6177, %6166
  %6606 = fadd fast float %6605, %6167
  %6607 = call float @dx.op.unary.f32(i32 7, float %6606)  ; Saturate(value)
  %6608 = fmul fast float %6148, %6603
  %6609 = fsub fast float -0.000000e+00, %6608
  %6610 = fmul fast float %6149, %6603
  %6611 = fsub fast float -0.000000e+00, %6610
  %6612 = call float @dx.op.unary.f32(i32 21, float %6609)  ; Exp(value)
  %6613 = call float @dx.op.unary.f32(i32 21, float %6611)  ; Exp(value)
  %6614 = call float @dx.op.binary.f32(i32 35, float %6156, float %6612)  ; FMax(a,b)
  %6615 = call float @dx.op.binary.f32(i32 35, float %6156, float %6613)  ; FMax(a,b)
  %6616 = fsub fast float %6615, %6614
  %6617 = fmul fast float %6616, %6607
  %6618 = fadd fast float %6617, %6614
  %6619 = call float @dx.op.unary.f32(i32 7, float %6618)  ; Saturate(value)
  %6620 = fsub fast float %6153, %6158
  %6621 = fsub fast float %6154, %6159
  %6622 = fsub fast float %6155, %6160
  %6623 = fmul fast float %6607, %6620
  %6624 = fmul fast float %6607, %6621
  %6625 = fmul fast float %6607, %6622
  %6626 = fadd fast float %6623, %6158
  %6627 = fadd fast float %6624, %6159
  %6628 = fadd fast float %6625, %6160
  %6629 = fsub fast float 1.000000e+00, %6619
  %6630 = fmul fast float %6629, %6626
  %6631 = fmul fast float %6629, %6627
  %6632 = fmul fast float %6629, %6628
  br label %6692

; <label>:6633                                    ; preds = %6592
  %6634 = fmul fast float %6603, %6165
  %6635 = call float @dx.op.unary.f32(i32 7, float %6634)  ; Saturate(value)
  %6636 = fsub fast float 2.000000e+00, %6635
  %6637 = fmul fast float %6635, 9.921875e-01
  %6638 = fmul fast float %6637, %6636
  %6639 = fadd fast float %6638, 3.906250e-03
  %6640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %58, float %6639, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6641 = extractvalue %dx.types.ResRet.f32 %6640, 0
  %6642 = fsub fast float %6635, %6641
  %6643 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6642)  ; FMax(a,b)
  %6644 = fmul fast float %6151, %6132
  %6645 = call float @dx.op.unary.f32(i32 6, float %6644)  ; FAbs(value)
  %6646 = fcmp fast ogt float %6645, 0x3EB0C6F7A0000000
  br i1 %6646, label %6647, label %6653, !dx.controlflow.hints !175

; <label>:6647                                    ; preds = %6633
  %6648 = fmul fast float %6644, 0xBFF7154760000000
  %6649 = call float @dx.op.unary.f32(i32 21, float %6648)  ; Exp(value)
  %6650 = fsub fast float 1.000000e+00, %6649
  %6651 = fdiv fast float %6650, %6644
  %6652 = fmul fast float %6651, %6161
  br label %6653

; <label>:6653                                    ; preds = %6647, %6633
  %6654 = phi float [ %6652, %6647 ], [ %6161, %6633 ]
  %6655 = fadd fast float %6654, %6163
  %6656 = fmul fast float %6655, %6643
  %6657 = fmul fast float %6148, %6656
  %6658 = fsub fast float -0.000000e+00, %6657
  %6659 = fmul fast float %6149, %6656
  %6660 = fsub fast float -0.000000e+00, %6659
  %6661 = fmul fast float %6150, %6656
  %6662 = fsub fast float -0.000000e+00, %6661
  %6663 = call float @dx.op.unary.f32(i32 21, float %6658)  ; Exp(value)
  %6664 = call float @dx.op.unary.f32(i32 21, float %6660)  ; Exp(value)
  %6665 = call float @dx.op.unary.f32(i32 21, float %6662)  ; Exp(value)
  %6666 = fmul fast float %6177, %6177
  %6667 = fadd fast float %6666, 1.000000e+00
  %6668 = fmul fast float %6667, 0x3FAE8EC8A0000000
  %6669 = fmul fast float %6668, %6158
  %6670 = fmul fast float %6668, %6159
  %6671 = fmul fast float %6668, %6160
  %6672 = fmul fast float %6177, %6156
  %6673 = fsub fast float 1.000000e+00, %6672
  %6674 = fmul fast float %6156, %6156
  %6675 = fsub fast float 1.000000e+00, %6674
  %6676 = fmul fast float %6675, 0x3FB45F3060000000
  %6677 = fmul fast float %6673, %6673
  %6678 = fdiv fast float 1.000000e+00, %6677
  %6679 = fmul fast float %6676, %6678
  %6680 = fmul fast float %6679, %6153
  %6681 = fmul fast float %6679, %6154
  %6682 = fmul fast float %6679, %6155
  %6683 = fadd fast float %6680, %6669
  %6684 = fadd fast float %6681, %6670
  %6685 = fadd fast float %6682, %6671
  %6686 = fsub fast float 1.000000e+00, %6663
  %6687 = fsub fast float 1.000000e+00, %6664
  %6688 = fsub fast float 1.000000e+00, %6665
  %6689 = fmul fast float %6683, %6686
  %6690 = fmul fast float %6684, %6687
  %6691 = fmul fast float %6685, %6688
  br label %6692

; <label>:6692                                    ; preds = %6653, %6604
  %6693 = phi float [ %6630, %6604 ], [ %6689, %6653 ]
  %6694 = phi float [ %6631, %6604 ], [ %6690, %6653 ]
  %6695 = phi float [ %6632, %6604 ], [ %6691, %6653 ]
  %6696 = phi float [ %6619, %6604 ], [ %6663, %6653 ]
  %6697 = phi float [ %6619, %6604 ], [ %6664, %6653 ]
  %6698 = phi float [ %6619, %6604 ], [ %6665, %6653 ]
  br i1 %6185, label %6699, label %6897, !dx.controlflow.hints !176

; <label>:6699                                    ; preds = %6692
  %6700 = extractvalue %dx.types.CBufRet.f32 %6598, 0
  %6701 = fmul fast float %6700, %6600
  %6702 = fsub fast float %6595, %6693
  %6703 = fsub fast float %6596, %6694
  %6704 = fsub fast float %6597, %6695
  %6705 = fmul fast float %6701, %6702
  %6706 = fmul fast float %6701, %6703
  %6707 = fmul fast float %6701, %6704
  %6708 = fadd fast float %6705, %6693
  %6709 = fadd fast float %6706, %6694
  %6710 = fadd fast float %6707, %6695
  %6711 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6696)  ; FMax(a,b)
  %6712 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6697)  ; FMax(a,b)
  %6713 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6698)  ; FMax(a,b)
  %6714 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6594)  ; FMax(a,b)
  %6715 = call float @dx.op.binary.f32(i32 35, float %6593, float %6603)  ; FMax(a,b)
  %6716 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6715)  ; FMax(a,b)
  %6717 = fdiv fast float %6593, %6716
  %6718 = call float @dx.op.unary.f32(i32 7, float %6717)  ; Saturate(value)
  %6719 = fdiv fast float %6603, %6716
  %6720 = call float @dx.op.unary.f32(i32 7, float %6719)  ; Saturate(value)
  %6721 = fcmp fast une float %6714, 1.000000e+00
  br i1 %6721, label %6722, label %6735, !dx.controlflow.hints !177

; <label>:6722                                    ; preds = %6699
  %6723 = call float @dx.op.unary.f32(i32 23, float %6714)  ; Log(value)
  %6724 = fmul fast float %6723, 0x3FE62E4300000000
  %6725 = fmul fast float %6595, %6724
  %6726 = fsub fast float -0.000000e+00, %6725
  %6727 = fmul fast float %6596, %6724
  %6728 = fsub fast float -0.000000e+00, %6727
  %6729 = fmul fast float %6597, %6724
  %6730 = fsub fast float -0.000000e+00, %6729
  %6731 = fsub fast float 1.000000e+00, %6714
  %6732 = fdiv fast float %6726, %6731
  %6733 = fdiv fast float %6728, %6731
  %6734 = fdiv fast float %6730, %6731
  br label %6735

; <label>:6735                                    ; preds = %6722, %6699
  %6736 = phi float [ %6732, %6722 ], [ %6595, %6699 ]
  %6737 = phi float [ %6733, %6722 ], [ %6596, %6699 ]
  %6738 = phi float [ %6734, %6722 ], [ %6597, %6699 ]
  %6739 = phi float [ %6724, %6722 ], [ 0.000000e+00, %6699 ]
  %6740 = fcmp fast une float %6711, 1.000000e+00
  br i1 %6740, label %6741, label %6748, !dx.controlflow.hints !178

; <label>:6741                                    ; preds = %6735
  %6742 = call float @dx.op.unary.f32(i32 23, float %6711)  ; Log(value)
  %6743 = fmul fast float %6742, 0x3FE62E4300000000
  %6744 = fmul fast float %6708, %6743
  %6745 = fsub fast float -0.000000e+00, %6744
  %6746 = fsub fast float 1.000000e+00, %6711
  %6747 = fdiv fast float %6745, %6746
  br label %6748

; <label>:6748                                    ; preds = %6741, %6735
  %6749 = phi float [ %6747, %6741 ], [ %6708, %6735 ]
  %6750 = phi float [ %6743, %6741 ], [ 0.000000e+00, %6735 ]
  %6751 = fcmp fast une float %6712, 1.000000e+00
  br i1 %6751, label %6752, label %6759, !dx.controlflow.hints !178

; <label>:6752                                    ; preds = %6748
  %6753 = call float @dx.op.unary.f32(i32 23, float %6712)  ; Log(value)
  %6754 = fmul fast float %6753, 0x3FE62E4300000000
  %6755 = fmul fast float %6709, %6754
  %6756 = fsub fast float -0.000000e+00, %6755
  %6757 = fsub fast float 1.000000e+00, %6712
  %6758 = fdiv fast float %6756, %6757
  br label %6759

; <label>:6759                                    ; preds = %6752, %6748
  %6760 = phi float [ %6758, %6752 ], [ %6709, %6748 ]
  %6761 = phi float [ %6754, %6752 ], [ 0.000000e+00, %6748 ]
  %6762 = fcmp fast une float %6713, 1.000000e+00
  br i1 %6762, label %6763, label %6770, !dx.controlflow.hints !178

; <label>:6763                                    ; preds = %6759
  %6764 = call float @dx.op.unary.f32(i32 23, float %6713)  ; Log(value)
  %6765 = fmul fast float %6764, 0x3FE62E4300000000
  %6766 = fmul fast float %6710, %6765
  %6767 = fsub fast float -0.000000e+00, %6766
  %6768 = fsub fast float 1.000000e+00, %6713
  %6769 = fdiv fast float %6767, %6768
  br label %6770

; <label>:6770                                    ; preds = %6763, %6759
  %6771 = phi float [ %6769, %6763 ], [ %6710, %6759 ]
  %6772 = phi float [ %6765, %6763 ], [ 0.000000e+00, %6759 ]
  %6773 = fmul fast float %6736, %6720
  %6774 = fmul fast float %6737, %6720
  %6775 = fmul fast float %6738, %6720
  %6776 = fmul fast float %6739, %6720
  %6777 = fmul fast float %6749, %6718
  %6778 = fmul fast float %6760, %6718
  %6779 = fmul fast float %6771, %6718
  %6780 = fmul fast float %6750, %6718
  %6781 = fmul fast float %6761, %6718
  %6782 = fmul fast float %6772, %6718
  %6783 = fadd fast float %6777, %6773
  %6784 = fadd fast float %6778, %6774
  %6785 = fadd fast float %6779, %6775
  %6786 = fadd fast float %6780, %6776
  %6787 = fadd fast float %6781, %6776
  %6788 = fadd fast float %6782, %6776
  %6789 = fcmp fast une float %6786, 0.000000e+00
  br i1 %6789, label %6790, label %6797, !dx.controlflow.hints !179

; <label>:6790                                    ; preds = %6770
  %6791 = fmul fast float %6786, 0x3FF7154760000000
  %6792 = call float @dx.op.unary.f32(i32 21, float %6791)  ; Exp(value)
  %6793 = fsub fast float 1.000000e+00, %6792
  %6794 = fmul fast float %6783, %6793
  %6795 = fsub fast float -0.000000e+00, %6794
  %6796 = fdiv fast float %6795, %6786
  br label %6797

; <label>:6797                                    ; preds = %6790, %6770
  %6798 = phi float [ %6792, %6790 ], [ 1.000000e+00, %6770 ]
  %6799 = phi float [ %6796, %6790 ], [ %6783, %6770 ]
  %6800 = fcmp fast une float %6787, 0.000000e+00
  br i1 %6800, label %6801, label %6808, !dx.controlflow.hints !179

; <label>:6801                                    ; preds = %6797
  %6802 = fmul fast float %6787, 0x3FF7154760000000
  %6803 = call float @dx.op.unary.f32(i32 21, float %6802)  ; Exp(value)
  %6804 = fsub fast float 1.000000e+00, %6803
  %6805 = fmul fast float %6784, %6804
  %6806 = fsub fast float -0.000000e+00, %6805
  %6807 = fdiv fast float %6806, %6787
  br label %6808

; <label>:6808                                    ; preds = %6801, %6797
  %6809 = phi float [ %6803, %6801 ], [ 1.000000e+00, %6797 ]
  %6810 = phi float [ %6807, %6801 ], [ %6784, %6797 ]
  %6811 = fcmp fast une float %6788, 0.000000e+00
  br i1 %6811, label %6812, label %6819, !dx.controlflow.hints !179

; <label>:6812                                    ; preds = %6808
  %6813 = fmul fast float %6788, 0x3FF7154760000000
  %6814 = call float @dx.op.unary.f32(i32 21, float %6813)  ; Exp(value)
  %6815 = fsub fast float 1.000000e+00, %6814
  %6816 = fmul fast float %6785, %6815
  %6817 = fsub fast float -0.000000e+00, %6816
  %6818 = fdiv fast float %6817, %6788
  br label %6819

; <label>:6819                                    ; preds = %6812, %6808
  %6820 = phi float [ %6814, %6812 ], [ 1.000000e+00, %6808 ]
  %6821 = phi float [ %6818, %6812 ], [ %6785, %6808 ]
  %6822 = fcmp fast ogt float %6718, %6720
  br i1 %6822, label %6823, label %6843

; <label>:6823                                    ; preds = %6819
  %6824 = fsub fast float 1.000000e+00, %6720
  %6825 = fmul fast float %6736, %6824
  %6826 = fmul fast float %6737, %6824
  %6827 = fmul fast float %6738, %6824
  %6828 = fmul fast float %6739, %6824
  %6829 = fcmp fast une float %6828, 0.000000e+00
  br i1 %6829, label %6830, label %6881, !dx.controlflow.hints !180

; <label>:6830                                    ; preds = %6823
  %6831 = fmul fast float %6828, 0x3FF7154760000000
  %6832 = call float @dx.op.unary.f32(i32 21, float %6831)  ; Exp(value)
  %6833 = fsub fast float 1.000000e+00, %6832
  %6834 = fmul fast float %6825, %6833
  %6835 = fsub fast float -0.000000e+00, %6834
  %6836 = fmul fast float %6826, %6833
  %6837 = fsub fast float -0.000000e+00, %6836
  %6838 = fmul fast float %6827, %6833
  %6839 = fsub fast float -0.000000e+00, %6838
  %6840 = fdiv fast float %6835, %6828
  %6841 = fdiv fast float %6837, %6828
  %6842 = fdiv fast float %6839, %6828
  br label %6881

; <label>:6843                                    ; preds = %6819
  %6844 = fsub fast float 1.000000e+00, %6718
  %6845 = fmul fast float %6749, %6844
  %6846 = fmul fast float %6760, %6844
  %6847 = fmul fast float %6771, %6844
  %6848 = fmul fast float %6750, %6844
  %6849 = fmul fast float %6761, %6844
  %6850 = fmul fast float %6772, %6844
  %6851 = fcmp fast une float %6848, 0.000000e+00
  br i1 %6851, label %6852, label %6859, !dx.controlflow.hints !179

; <label>:6852                                    ; preds = %6843
  %6853 = fmul fast float %6848, 0x3FF7154760000000
  %6854 = call float @dx.op.unary.f32(i32 21, float %6853)  ; Exp(value)
  %6855 = fsub fast float 1.000000e+00, %6854
  %6856 = fmul fast float %6845, %6855
  %6857 = fsub fast float -0.000000e+00, %6856
  %6858 = fdiv fast float %6857, %6848
  br label %6859

; <label>:6859                                    ; preds = %6852, %6843
  %6860 = phi float [ %6858, %6852 ], [ %6845, %6843 ]
  %6861 = phi float [ %6854, %6852 ], [ 1.000000e+00, %6843 ]
  %6862 = fcmp fast une float %6849, 0.000000e+00
  br i1 %6862, label %6863, label %6870, !dx.controlflow.hints !179

; <label>:6863                                    ; preds = %6859
  %6864 = fmul fast float %6849, 0x3FF7154760000000
  %6865 = call float @dx.op.unary.f32(i32 21, float %6864)  ; Exp(value)
  %6866 = fsub fast float 1.000000e+00, %6865
  %6867 = fmul fast float %6846, %6866
  %6868 = fsub fast float -0.000000e+00, %6867
  %6869 = fdiv fast float %6868, %6849
  br label %6870

; <label>:6870                                    ; preds = %6863, %6859
  %6871 = phi float [ %6869, %6863 ], [ %6846, %6859 ]
  %6872 = phi float [ %6865, %6863 ], [ 1.000000e+00, %6859 ]
  %6873 = fcmp fast une float %6850, 0.000000e+00
  br i1 %6873, label %6874, label %6881, !dx.controlflow.hints !179

; <label>:6874                                    ; preds = %6870
  %6875 = fmul fast float %6850, 0x3FF7154760000000
  %6876 = call float @dx.op.unary.f32(i32 21, float %6875)  ; Exp(value)
  %6877 = fsub fast float 1.000000e+00, %6876
  %6878 = fmul fast float %6847, %6877
  %6879 = fsub fast float -0.000000e+00, %6878
  %6880 = fdiv fast float %6879, %6850
  br label %6881

; <label>:6881                                    ; preds = %6874, %6870, %6830, %6823
  %6882 = phi float [ %6880, %6874 ], [ %6842, %6830 ], [ %6827, %6823 ], [ %6847, %6870 ]
  %6883 = phi float [ %6871, %6874 ], [ %6841, %6830 ], [ %6826, %6823 ], [ %6871, %6870 ]
  %6884 = phi float [ %6860, %6874 ], [ %6840, %6830 ], [ %6825, %6823 ], [ %6860, %6870 ]
  %6885 = phi float [ %6876, %6874 ], [ %6832, %6830 ], [ 1.000000e+00, %6823 ], [ 1.000000e+00, %6870 ]
  %6886 = phi float [ %6872, %6874 ], [ %6832, %6830 ], [ 1.000000e+00, %6823 ], [ %6872, %6870 ]
  %6887 = phi float [ %6861, %6874 ], [ %6832, %6830 ], [ 1.000000e+00, %6823 ], [ %6861, %6870 ]
  %6888 = fmul fast float %6887, %6799
  %6889 = fmul fast float %6886, %6810
  %6890 = fmul fast float %6885, %6821
  %6891 = fadd fast float %6888, %6884
  %6892 = fadd fast float %6889, %6883
  %6893 = fadd fast float %6890, %6882
  %6894 = fmul fast float %6887, %6798
  %6895 = fmul fast float %6886, %6809
  %6896 = fmul fast float %6885, %6820
  br label %6897

; <label>:6897                                    ; preds = %6881, %6692
  %6898 = phi float [ %6896, %6881 ], [ %6698, %6692 ]
  %6899 = phi float [ %6895, %6881 ], [ %6697, %6692 ]
  %6900 = phi float [ %6894, %6881 ], [ %6696, %6692 ]
  %6901 = phi float [ %6893, %6881 ], [ %6695, %6692 ]
  %6902 = phi float [ %6892, %6881 ], [ %6694, %6692 ]
  %6903 = phi float [ %6891, %6881 ], [ %6693, %6692 ]
  %6904 = fmul fast float %6903, %5855
  %6905 = fmul fast float %6902, %5856
  %6906 = fmul fast float %6901, %5857
  %6907 = fmul fast float %6900, %6140
  %6908 = call float @dx.op.dot3.f32(i32 55, float %6900, float %6899, float %6898, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6909 = call float @dx.op.dot3.f32(i32 55, float %6904, float %6905, float %6906, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6910 = select i1 %260, float %6908, float %6900
  %6911 = select i1 %260, float %6908, float %6899
  %6912 = select i1 %260, float 1.000000e+00, float %6898
  %6913 = select i1 %260, float %6909, float %6904
  %6914 = select i1 %260, float 0.000000e+00, float %6905
  %6915 = select i1 %260, float 0.000000e+00, float %6906
  %6916 = fmul fast float %6910, %6134
  %6917 = fmul fast float %6911, %6135
  %6918 = fmul fast float %6912, %6136
  %6919 = fadd fast float %6916, %6913
  %6920 = fadd fast float %6917, %6914
  %6921 = fadd fast float %6915, %6918
  %6922 = fmul fast float %6910, %6137
  %6923 = fmul fast float %6911, %6138
  %6924 = fmul fast float %6912, %6139
  %6925 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6926 = extractvalue %dx.types.CBufRet.i32 %6925, 0
  %6927 = icmp eq i32 %6926, 0
  br i1 %6927, label %7295, label %6928, !dx.controlflow.hints !181

; <label>:6928                                    ; preds = %6897
  %6929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6930 = extractvalue %dx.types.CBufRet.f32 %6929, 2
  %6931 = extractvalue %dx.types.CBufRet.f32 %6929, 3
  %6932 = fmul fast float %6930, %90
  %6933 = fmul fast float %6931, %91
  %6934 = fmul fast float %6932, 2.000000e+00
  %6935 = fmul fast float %6933, 2.000000e+00
  %6936 = fsub fast float 1.000000e+00, %6934
  %6937 = fsub fast float 1.000000e+00, %6935
  %6938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6939 = extractvalue %dx.types.CBufRet.f32 %6938, 0
  %6940 = extractvalue %dx.types.CBufRet.f32 %6938, 1
  %6941 = extractvalue %dx.types.CBufRet.f32 %6938, 2
  %6942 = fmul fast float %6936, %6939
  %6943 = fmul fast float %6936, %6940
  %6944 = fmul fast float %6936, %6941
  %6945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6946 = extractvalue %dx.types.CBufRet.f32 %6945, 0
  %6947 = extractvalue %dx.types.CBufRet.f32 %6945, 1
  %6948 = extractvalue %dx.types.CBufRet.f32 %6945, 2
  %6949 = fmul fast float %6937, %6946
  %6950 = fmul fast float %6937, %6947
  %6951 = fmul fast float %6937, %6948
  %6952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6953 = extractvalue %dx.types.CBufRet.f32 %6952, 0
  %6954 = extractvalue %dx.types.CBufRet.f32 %6952, 1
  %6955 = extractvalue %dx.types.CBufRet.f32 %6952, 2
  %6956 = fadd fast float %6949, %6953
  %6957 = fadd fast float %6956, %6942
  %6958 = fadd fast float %6950, %6954
  %6959 = fadd fast float %6958, %6943
  %6960 = fadd fast float %6951, %6955
  %6961 = fadd fast float %6960, %6944
  %6962 = fmul fast float %6957, %6133
  %6963 = fmul fast float %6959, %6133
  %6964 = fmul fast float %6961, %6133
  %6965 = fmul fast float %6962, %6962
  %6966 = fmul fast float %6963, %6963
  %6967 = fadd fast float %6965, %6966
  %6968 = fmul fast float %6964, %6964
  %6969 = fadd fast float %6967, %6968
  %6970 = call float @dx.op.unary.f32(i32 24, float %6969)  ; Sqrt(value)
  %6971 = extractvalue %dx.types.CBufRet.f32 %5858, 0
  %6972 = fsub fast float %6970, %6971
  %6973 = extractvalue %dx.types.CBufRet.f32 %5858, 2
  %6974 = fmul fast float %6972, %6973
  %6975 = call float @dx.op.unary.f32(i32 7, float %6974)  ; Saturate(value)
  %6976 = fadd fast float %6975, -5.000000e-01
  %6977 = fmul fast float %6976, 2.000000e+00
  %6978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6979 = extractvalue %dx.types.CBufRet.f32 %6978, 2
  %6980 = call float @dx.op.binary.f32(i32 36, float %6979, float %6977)  ; FMin(a,b)
  %6981 = fsub fast float -0.000000e+00, %6979
  %6982 = fcmp fast ogt float %6980, %6981
  br i1 %6982, label %6983, label %7295, !dx.controlflow.hints !182

; <label>:6983                                    ; preds = %6928
  %6984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6985 = extractvalue %dx.types.CBufRet.f32 %6984, 3
  %6986 = fcmp fast ogt float %6985, 0.000000e+00
  br i1 %6986, label %6987, label %7062, !dx.controlflow.hints !183

; <label>:6987                                    ; preds = %6983
  %6988 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %6989 = extractvalue %dx.types.Dimensions %6988, 0
  %6990 = sitofp i32 %6989 to float
  %6991 = extractvalue %dx.types.Dimensions %6988, 1
  %6992 = sitofp i32 %6991 to float
  %6993 = fmul fast float %6932, %6990
  %6994 = fmul fast float %6933, %6992
  %6995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6996 = extractvalue %dx.types.CBufRet.f32 %6995, 1
  %6997 = fsub fast float -0.000000e+00, %6996
  %6998 = fptoui float %6997 to i32
  %6999 = fptoui float %6993 to i32
  %7000 = fptoui float %6994 to i32
  %7001 = and i32 %6998, 31
  %7002 = lshr i32 %6999, %7001
  %7003 = lshr i32 %7000, %7001
  %7004 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %6998, i32 %7002, i32 %7003, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7005 = extractvalue %dx.types.ResRet.f32 %7004, 0
  %7006 = fcmp fast olt float %7005, -1.000000e+00
  %7007 = fcmp fast ogt float %7005, -1.000000e+00
  %7008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7009 = extractvalue %dx.types.CBufRet.f32 %7008, 1
  %7010 = select i1 %7007, float %7009, float 1.000000e+00
  %7011 = fadd fast float %7005, 1.000000e+00
  %7012 = fmul fast float %7010, %7011
  %7013 = call float @dx.op.unary.f32(i32 6, float %7012)  ; FAbs(value)
  %7014 = extractvalue %dx.types.CBufRet.f32 %7008, 3
  %7015 = fcmp fast oge float %7013, %7014
  %7016 = select i1 %7015, float 0x4197782600000000, float %7013
  %7017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7018 = extractvalue %dx.types.CBufRet.f32 %7017, 0
  %7019 = extractvalue %dx.types.CBufRet.f32 %7017, 1
  %7020 = extractvalue %dx.types.CBufRet.f32 %7017, 2
  %7021 = select i1 %7006, float %7018, float %6939
  %7022 = select i1 %7006, float %7019, float %6940
  %7023 = select i1 %7006, float %7020, float %6941
  %7024 = fmul fast float %7021, %6936
  %7025 = fmul fast float %7022, %6936
  %7026 = fmul fast float %7023, %6936
  %7027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7028 = extractvalue %dx.types.CBufRet.f32 %7027, 0
  %7029 = extractvalue %dx.types.CBufRet.f32 %7027, 1
  %7030 = extractvalue %dx.types.CBufRet.f32 %7027, 2
  %7031 = select i1 %7006, float %7028, float %6946
  %7032 = select i1 %7006, float %7029, float %6947
  %7033 = select i1 %7006, float %7030, float %6948
  %7034 = fmul fast float %7031, %6937
  %7035 = fmul fast float %7032, %6937
  %7036 = fmul fast float %7033, %6937
  %7037 = fadd fast float %7034, %7024
  %7038 = fadd fast float %7035, %7025
  %7039 = fadd fast float %7036, %7026
  %7040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7041 = extractvalue %dx.types.CBufRet.f32 %7040, 0
  %7042 = extractvalue %dx.types.CBufRet.f32 %7040, 1
  %7043 = extractvalue %dx.types.CBufRet.f32 %7040, 2
  %7044 = select i1 %7006, float %7041, float %6953
  %7045 = select i1 %7006, float %7042, float %6954
  %7046 = select i1 %7006, float %7043, float %6955
  %7047 = fadd fast float %7037, %7044
  %7048 = fadd fast float %7038, %7045
  %7049 = fadd fast float %7039, %7046
  %7050 = fmul fast float %7047, %7016
  %7051 = fmul fast float %7048, %7016
  %7052 = fmul fast float %7049, %7016
  %7053 = fmul fast float %7050, %7050
  %7054 = fmul fast float %7051, %7051
  %7055 = fadd fast float %7053, %7054
  %7056 = fmul fast float %7052, %7052
  %7057 = fadd fast float %7055, %7056
  %7058 = call float @dx.op.unary.f32(i32 24, float %7057)  ; Sqrt(value)
  %7059 = fsub fast float %7058, %6971
  %7060 = fmul fast float %7059, %6973
  %7061 = call float @dx.op.unary.f32(i32 7, float %7060)  ; Saturate(value)
  br label %7062

; <label>:7062                                    ; preds = %6987, %6983
  %7063 = phi float [ %7061, %6987 ], [ 1.000000e+00, %6983 ]
  %7064 = fmul fast float %6980, 5.000000e-01
  %7065 = fadd fast float %7064, 5.000000e-01
  %7066 = call float @dx.op.unary.f32(i32 22, float %7065)  ; Frc(value)
  %7067 = call float @dx.op.unary.f32(i32 27, float %7066)  ; Round_ni(value)
  %7068 = call float @dx.op.unary.f32(i32 22, float %7066)  ; Frc(value)
  %7069 = fmul fast float %7068, 2.000000e+00
  %7070 = fadd fast float %7069, -1.000000e+00
  %7071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %58, float %6932, float %6933, float %7067, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7072 = extractvalue %dx.types.ResRet.f32 %7071, 0
  %7073 = extractvalue %dx.types.ResRet.f32 %7071, 1
  %7074 = extractvalue %dx.types.ResRet.f32 %7071, 2
  %7075 = extractvalue %dx.types.ResRet.f32 %7071, 3
  %7076 = fadd fast float %7072, -5.000000e-01
  %7077 = fadd fast float %7074, -5.000000e-01
  %7078 = fmul fast float %7076, 0xBFD5555560000000
  %7079 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7077, float %7078)  ; FMad(a,b,c)
  %7080 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7073, float 0.000000e+00)  ; FMad(a,b,c)
  %7081 = fadd fast float %7080, %7075
  %7082 = fmul fast float %7076, -7.500000e-01
  %7083 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7077, float %7082)  ; FMad(a,b,c)
  %7084 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7073, float 0.000000e+00)  ; FMad(a,b,c)
  %7085 = fadd fast float %7084, %7075
  %7086 = call float @dx.op.binary.f32(i32 35, float %7079, float -1.000000e+00)  ; FMax(a,b)
  %7087 = call float @dx.op.binary.f32(i32 35, float %7081, float -1.000000e+00)  ; FMax(a,b)
  %7088 = call float @dx.op.binary.f32(i32 35, float %7083, float -1.000000e+00)  ; FMax(a,b)
  %7089 = call float @dx.op.binary.f32(i32 35, float %7085, float -1.000000e+00)  ; FMax(a,b)
  %7090 = call float @dx.op.binary.f32(i32 36, float %7086, float 1.000000e+00)  ; FMin(a,b)
  %7091 = call float @dx.op.binary.f32(i32 36, float %7087, float 1.000000e+00)  ; FMin(a,b)
  %7092 = call float @dx.op.binary.f32(i32 36, float %7088, float 1.000000e+00)  ; FMin(a,b)
  %7093 = call float @dx.op.binary.f32(i32 36, float %7089, float 1.000000e+00)  ; FMin(a,b)
  %7094 = fcmp fast olt float %7090, 0x3FEFFF8020000000
  br i1 %7094, label %7095, label %7210, !dx.controlflow.hints !184

; <label>:7095                                    ; preds = %7062
  %7096 = extractvalue %dx.types.CBufRet.f32 %6978, 3
  %7097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7098 = extractvalue %dx.types.CBufRet.f32 %7097, 0
  %7099 = extractvalue %dx.types.CBufRet.f32 %7097, 1
  %7100 = extractvalue %dx.types.CBufRet.f32 %7097, 2
  %7101 = extractvalue %dx.types.CBufRet.f32 %7097, 3
  %7102 = fsub fast float %7098, %7090
  %7103 = fsub fast float %7099, %7091
  %7104 = fsub fast float %7100, %7092
  %7105 = fsub fast float %7101, %7093
  %7106 = fmul fast float %7102, %7096
  %7107 = fmul fast float %7103, %7096
  %7108 = fmul fast float %7104, %7096
  %7109 = fmul fast float %7105, %7096
  %7110 = fadd fast float %7106, %7090
  %7111 = fadd fast float %7107, %7091
  %7112 = fsub fast float -0.000000e+00, %7111
  %7113 = fadd fast float %7108, %7092
  %7114 = fadd fast float %7109, %7093
  %7115 = fmul fast float %7110, %7110
  %7116 = fsub fast float %7111, %7115
  %7117 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7116)  ; FMax(a,b)
  %7118 = fdiv fast float 1.000000e+00, %7117
  %7119 = fmul fast float %7111, %7110
  %7120 = fsub fast float %7113, %7119
  %7121 = fsub fast float %7070, %7110
  %7122 = fmul fast float %7070, %7070
  %7123 = fsub fast float %7122, %7111
  %7124 = fmul fast float %7121, %7118
  %7125 = fmul fast float %7124, %7120
  %7126 = fsub fast float %7123, %7125
  %7127 = fmul fast float %7111, %7111
  %7128 = fsub fast float %7114, %7127
  %7129 = fmul fast float %7120, %7120
  %7130 = fmul fast float %7129, %7118
  %7131 = fsub fast float %7128, %7130
  %7132 = fdiv fast float %7126, %7131
  %7133 = fmul fast float %7120, %7132
  %7134 = fsub fast float %7121, %7133
  %7135 = fmul fast float %7134, %7118
  %7136 = fmul fast float %7135, %7110
  %7137 = fsub fast float 1.000000e+00, %7136
  %7138 = fmul fast float %7111, %7132
  %7139 = fsub fast float %7137, %7138
  %7140 = fmul fast float %7135, %7135
  %7141 = fmul fast float %7132, 4.000000e+00
  %7142 = fmul fast float %7141, %7139
  %7143 = fsub fast float %7140, %7142
  %7144 = call float @dx.op.unary.f32(i32 24, float %7143)  ; Sqrt(value)
  %7145 = fcmp fast oge float %7135, 0.000000e+00
  %7146 = fsub fast float -0.000000e+00, %7144
  %7147 = select i1 %7145, float %7146, float %7144
  %7148 = fsub fast float %7147, %7135
  %7149 = fdiv fast float %7148, %7132
  %7150 = fdiv fast float %7139, %7148
  %7151 = fmul fast float %7149, 5.000000e-01
  %7152 = fmul fast float %7150, 2.000000e+00
  %7153 = select i1 %7145, float %7151, float %7152
  %7154 = select i1 %7145, float %7152, float %7151
  %7155 = call float @dx.op.binary.f32(i32 35, float %7153, float %7154)  ; FMax(a,b)
  %7156 = call float @dx.op.binary.f32(i32 36, float %7153, float %7154)  ; FMin(a,b)
  %7157 = fcmp fast ogt float %7070, %7156
  br i1 %7157, label %7158, label %7168

; <label>:7158                                    ; preds = %7095
  %7159 = fsub fast float %7070, %7156
  %7160 = fsub fast float %7155, %7156
  %7161 = fmul fast float %7159, %7160
  %7162 = fmul fast float %7155, %7070
  %7163 = fadd fast float %7155, %7070
  %7164 = fmul fast float %7163, %7110
  %7165 = fadd fast float %7162, %7111
  %7166 = fsub fast float %7165, %7164
  %7167 = fdiv fast float %7166, %7161
  br label %7168

; <label>:7168                                    ; preds = %7158, %7095
  %7169 = phi float [ %7167, %7158 ], [ 0.000000e+00, %7095 ]
  %7170 = fcmp fast ogt float %7070, %7155
  %7171 = fsub fast float %7070, %7155
  br i1 %7170, label %7172, label %7182

; <label>:7172                                    ; preds = %7168
  %7173 = fsub fast float %7155, %7156
  %7174 = fmul fast float %7173, %7171
  %7175 = fmul fast float %7156, %7070
  %7176 = fadd fast float %7156, %7070
  %7177 = fmul fast float %7176, %7110
  %7178 = fsub fast float %7112, %7175
  %7179 = fadd fast float %7178, %7177
  %7180 = fdiv fast float %7179, %7174
  %7181 = fadd fast float %7180, %7169
  br label %7182

; <label>:7182                                    ; preds = %7172, %7168
  %7183 = phi float [ %7181, %7172 ], [ %7169, %7168 ]
  %7184 = fsub fast float %7070, %7156
  %7185 = fmul fast float %7184, %7171
  %7186 = fmul fast float %7156, %7155
  %7187 = fadd fast float %7156, %7155
  %7188 = fmul fast float %7187, %7110
  %7189 = fadd fast float %7186, %7111
  %7190 = fsub fast float %7189, %7188
  %7191 = fdiv fast float %7190, %7185
  %7192 = call float @dx.op.unary.f32(i32 7, float %7183)  ; Saturate(value)
  %7193 = fcmp fast oeq float %5859, 0.000000e+00
  %7194 = extractvalue %dx.types.CBufRet.f32 %6978, 0
  %7195 = fcmp fast oeq float %7194, 0.000000e+00
  %7196 = or i1 %7193, %7195
  %7197 = fmul fast float %7194, 2.000000e+00
  %7198 = fadd fast float %6979, %6980
  %7199 = fdiv fast float %7198, %7197
  %7200 = call float @dx.op.unary.f32(i32 7, float %7199)  ; Saturate(value)
  %7201 = fmul fast float %7200, 2.000000e+00
  %7202 = fsub fast float 3.000000e+00, %7201
  %7203 = fmul fast float %7200, %7200
  %7204 = fmul fast float %7203, %7202
  %7205 = select i1 %7196, float 1.000000e+00, float %7204
  %7206 = fmul fast float %7191, %5859
  %7207 = fadd fast float %7192, %7206
  %7208 = call float @dx.op.unary.f32(i32 7, float %7207)  ; Saturate(value)
  %7209 = fmul fast float %7205, %7208
  br label %7210

; <label>:7210                                    ; preds = %7182, %7062
  %7211 = phi float [ %7209, %7182 ], [ 0.000000e+00, %7062 ]
  %7212 = fsub fast float 1.000000e+00, %7211
  %7213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %58, float %6932, float %6933, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7214 = extractvalue %dx.types.ResRet.f32 %7213, 0
  %7215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7216 = extractvalue %dx.types.CBufRet.i32 %7215, 2
  %7217 = icmp eq i32 %7216, 0
  br i1 %7217, label %7223, label %7218

; <label>:7218                                    ; preds = %7210
  %7219 = call float @dx.op.unary.f32(i32 7, float %7211)  ; Saturate(value)
  %7220 = fadd fast float %7214, -1.000000e+00
  %7221 = fmul fast float %7219, %7220
  %7222 = fadd fast float %7221, 1.000000e+00
  br label %7223

; <label>:7223                                    ; preds = %7218, %7210
  %7224 = phi float [ %7222, %7218 ], [ %7212, %7210 ]
  br i1 %6986, label %7225, label %7243

; <label>:7225                                    ; preds = %7223
  %7226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7227 = extractvalue %dx.types.CBufRet.f32 %7226, 1
  %7228 = fsub fast float %7063, %7227
  %7229 = call float @dx.op.unary.f32(i32 7, float %7228)  ; Saturate(value)
  %7230 = fsub fast float %7063, %6985
  %7231 = call float @dx.op.unary.f32(i32 7, float %7230)  ; Saturate(value)
  %7232 = fsub fast float %7229, %7231
  %7233 = fsub fast float %7065, %7231
  %7234 = fdiv fast float %7233, %7232
  %7235 = call float @dx.op.unary.f32(i32 7, float %7234)  ; Saturate(value)
  %7236 = fmul fast float %7235, 2.000000e+00
  %7237 = fsub fast float 3.000000e+00, %7236
  %7238 = fsub fast float %7214, %7224
  %7239 = fmul fast float %7235, %7235
  %7240 = fmul fast float %7239, %7238
  %7241 = fmul fast float %7240, %7237
  %7242 = fadd fast float %7241, %7224
  br label %7243

; <label>:7243                                    ; preds = %7225, %7223
  %7244 = phi float [ %7242, %7225 ], [ %7224, %7223 ]
  %7245 = call float @dx.op.binary.f32(i32 35, float %7214, float %7244)  ; FMax(a,b)
  %7246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7247 = extractvalue %dx.types.CBufRet.i32 %7246, 2
  %7248 = and i32 %7247, 1
  %7249 = icmp eq i32 %7248, 0
  %7250 = fcmp fast une float %7245, 1.000000e+00
  %7251 = and i1 %7250, %7249
  br i1 %7251, label %7252, label %7271

; <label>:7252                                    ; preds = %7243
  %7253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %58, float %6932, float %6933, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7254 = extractvalue %dx.types.ResRet.f32 %7253, 0
  %7255 = extractvalue %dx.types.ResRet.f32 %7253, 1
  %7256 = extractvalue %dx.types.ResRet.f32 %7253, 2
  %7257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7258 = extractvalue %dx.types.CBufRet.f32 %7257, 1
  %7259 = fmul fast float %7258, %7254
  %7260 = fmul fast float %7258, %7255
  %7261 = fmul fast float %7258, %7256
  %7262 = fcmp fast ogt float %7214, 0x3FEFFF2E40000000
  %7263 = fsub fast float 1.000000e+00, %7245
  %7264 = fsub fast float 1.000000e+00, %7214
  %7265 = fdiv fast float %7263, %7264
  %7266 = call float @dx.op.unary.f32(i32 7, float %7265)  ; Saturate(value)
  %7267 = select i1 %7262, float 0.000000e+00, float %7266
  %7268 = fmul fast float %7259, %7267
  %7269 = fmul fast float %7260, %7267
  %7270 = fmul fast float %7261, %7267
  br label %7271

; <label>:7271                                    ; preds = %7252, %7243
  %7272 = phi float [ 0.000000e+00, %7243 ], [ %7268, %7252 ]
  %7273 = phi float [ 0.000000e+00, %7243 ], [ %7269, %7252 ]
  %7274 = phi float [ 0.000000e+00, %7243 ], [ %7270, %7252 ]
  %7275 = fmul fast float %7272, %5855
  %7276 = fmul fast float %7273, %5856
  %7277 = fmul fast float %7274, %5857
  %7278 = fmul fast float %7245, %6907
  %7279 = call float @dx.op.dot3.f32(i32 55, float %7245, float %7245, float %7245, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7280 = call float @dx.op.dot3.f32(i32 55, float %7275, float %7276, float %7277, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7281 = select i1 %260, float %7279, float %7245
  %7282 = select i1 %260, float 1.000000e+00, float %7245
  %7283 = select i1 %260, float %7280, float %7275
  %7284 = select i1 %260, float 0.000000e+00, float %7276
  %7285 = select i1 %260, float 0.000000e+00, float %7277
  %7286 = fmul fast float %7281, %6919
  %7287 = fmul fast float %7281, %6920
  %7288 = fmul fast float %7282, %6921
  %7289 = fadd fast float %7286, %7283
  %7290 = fadd fast float %7287, %7284
  %7291 = fadd fast float %7285, %7288
  %7292 = fmul fast float %7281, %6922
  %7293 = fmul fast float %7281, %6923
  %7294 = fmul fast float %7282, %6924
  br label %7295

; <label>:7295                                    ; preds = %7271, %6928, %6897, %6129
  %7296 = phi float [ %6134, %6129 ], [ %6919, %6897 ], [ %7289, %7271 ], [ %6919, %6928 ]
  %7297 = phi float [ %6135, %6129 ], [ %6920, %6897 ], [ %7290, %7271 ], [ %6920, %6928 ]
  %7298 = phi float [ %6136, %6129 ], [ %6921, %6897 ], [ %7291, %7271 ], [ %6921, %6928 ]
  %7299 = phi float [ %6137, %6129 ], [ %6922, %6897 ], [ %7292, %7271 ], [ %6922, %6928 ]
  %7300 = phi float [ %6138, %6129 ], [ %6923, %6897 ], [ %7293, %7271 ], [ %6923, %6928 ]
  %7301 = phi float [ %6139, %6129 ], [ %6924, %6897 ], [ %7294, %7271 ], [ %6924, %6928 ]
  %7302 = phi float [ %6140, %6129 ], [ %6907, %6897 ], [ %7278, %7271 ], [ %6907, %6928 ]
  %7303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7304 = extractvalue %dx.types.CBufRet.f32 %7303, 2
  %7305 = extractvalue %dx.types.CBufRet.f32 %7303, 3
  %7306 = fmul fast float %7304, %90
  %7307 = fmul fast float %7305, %91
  %7308 = call float @dx.op.unary.f32(i32 7, float %7306)  ; Saturate(value)
  %7309 = call float @dx.op.unary.f32(i32 7, float %7307)  ; Saturate(value)
  %7310 = select i1 %5869, i32 2, i32 0
  %7311 = or i32 %7310, 1
  %7312 = uitofp i32 %7311 to float
  %7313 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %7308, float %7309, float %7312, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7314 = extractvalue %dx.types.ResRet.f32 %7313, 0
  %7315 = extractvalue %dx.types.ResRet.f32 %7313, 1
  %7316 = extractvalue %dx.types.ResRet.f32 %7313, 2
  %7317 = extractvalue %dx.types.ResRet.f32 %7313, 3
  %7318 = add nuw nsw i32 %7310, 2
  %7319 = uitofp i32 %7318 to float
  %7320 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %7308, float %7309, float %7319, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7321 = extractvalue %dx.types.ResRet.f32 %7320, 0
  %7322 = extractvalue %dx.types.ResRet.f32 %7320, 1
  %7323 = extractvalue %dx.types.ResRet.f32 %7320, 2
  %7324 = extractvalue %dx.types.ResRet.f32 %7320, 3
  %7325 = call float @dx.op.binary.f32(i32 35, float %7315, float %7316)  ; FMax(a,b)
  %7326 = call float @dx.op.binary.f32(i32 35, float %7314, float %7325)  ; FMax(a,b)
  %7327 = call float @dx.op.binary.f32(i32 35, float %7326, float %7317)  ; FMax(a,b)
  %7328 = call float @dx.op.binary.f32(i32 36, float %7322, float %7323)  ; FMin(a,b)
  %7329 = call float @dx.op.binary.f32(i32 36, float %7321, float %7328)  ; FMin(a,b)
  %7330 = call float @dx.op.binary.f32(i32 36, float %7329, float %7324)  ; FMin(a,b)
  %7331 = fmul fast float %7327, 2.550000e+02
  %7332 = fadd fast float %7331, 0x3F70101020000000
  %7333 = fptoui float %7332 to i32
  %7334 = fmul fast float %7330, 2.550000e+02
  %7335 = fadd fast float %7334, 0x3F70101020000000
  %7336 = fptoui float %7335 to i32
  %7337 = icmp ult i32 %7333, %7336
  br i1 %7337, label %7338, label %7507

; <label>:7338                                    ; preds = %7295
  %7339 = fcmp fast ogt float %80, 9.843750e-01
  %7340 = fadd fast float %6133, -4.000000e+00
  %7341 = select i1 %7339, float -4.000000e+00, float %7340
  %7342 = call float @dx.op.binary.f32(i32 35, float %7341, float 0.000000e+00)  ; FMax(a,b)
  %7343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7344 = extractvalue %dx.types.CBufRet.f32 %7343, 0
  %7345 = fadd fast float %7344, %7342
  %7346 = extractvalue %dx.types.CBufRet.f32 %7343, 2
  %7347 = fmul fast float %7345, %7346
  %7348 = call float @dx.op.unary.f32(i32 23, float %7347)  ; Log(value)
  %7349 = extractvalue %dx.types.CBufRet.f32 %7343, 3
  %7350 = fmul fast float %7349, %7348
  %7351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7352 = extractvalue %dx.types.CBufRet.f32 %7351, 2
  %7353 = fmul fast float %7350, %7352
  %7354 = call float @dx.op.unary.f32(i32 7, float %7353)  ; Saturate(value)
  %7355 = uitofp i32 %7333 to float
  %7356 = uitofp i32 %7336 to float
  %7357 = fadd fast float %7355, 5.000000e-01
  %7358 = fadd fast float %7356, 5.000000e-01
  %7359 = fmul fast float %7352, %7357
  %7360 = fmul fast float %7352, %7358
  %7361 = fadd fast float %7359, 0x3F0FFB4800000000
  %7362 = fadd fast float %7360, 0xBF0FFB4800000000
  %7363 = call float @dx.op.binary.f32(i32 35, float %7354, float %7361)  ; FMax(a,b)
  %7364 = call float @dx.op.binary.f32(i32 36, float %7363, float %7362)  ; FMin(a,b)
  %7365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7366 = extractvalue %dx.types.CBufRet.f32 %7365, 1
  %7367 = extractvalue %dx.types.CBufRet.f32 %7365, 2
  %7368 = extractvalue %dx.types.CBufRet.f32 %7365, 0
  %7369 = select i1 %5869, float %7368, float 0.000000e+00
  %7370 = fmul fast float %7366, %7364
  %7371 = fadd fast float %7369, %7370
  %7372 = fadd fast float %7369, %7367
  %7373 = fsub fast float %7366, %7367
  %7374 = fadd fast float %7373, %7369
  %7375 = call float @dx.op.binary.f32(i32 35, float %7371, float %7372)  ; FMax(a,b)
  %7376 = call float @dx.op.binary.f32(i32 36, float %7375, float %7374)  ; FMin(a,b)
  %7377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %7308, float %7309, float %7376, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7378 = extractvalue %dx.types.ResRet.f32 %7377, 0
  %7379 = extractvalue %dx.types.ResRet.f32 %7377, 1
  %7380 = extractvalue %dx.types.ResRet.f32 %7377, 2
  %7381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7382 = extractvalue %dx.types.CBufRet.i32 %7381, 0
  %7383 = extractvalue %dx.types.CBufRet.i32 %7381, 1
  %7384 = uitofp i32 %7382 to float
  %7385 = uitofp i32 %7383 to float
  %7386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7387 = extractvalue %dx.types.CBufRet.f32 %7386, 0
  %7388 = extractvalue %dx.types.CBufRet.f32 %7386, 1
  %7389 = fmul fast float %7384, %7308
  %7390 = fmul fast float %7385, %7309
  %7391 = fadd fast float %7389, -5.000000e-01
  %7392 = fadd fast float %7390, -5.000000e-01
  %7393 = call float @dx.op.unary.f32(i32 22, float %7391)  ; Frc(value)
  %7394 = call float @dx.op.unary.f32(i32 22, float %7392)  ; Frc(value)
  %7395 = fmul fast float %7393, %7393
  %7396 = fmul fast float %7395, %7393
  %7397 = fsub fast float 3.000000e+00, %7393
  %7398 = fmul fast float %7395, %7397
  %7399 = fmul fast float %7393, 3.000000e+00
  %7400 = fmul fast float %7396, 3.000000e+00
  %7401 = fmul fast float %7395, 6.000000e+00
  %7402 = fsub fast float %7400, %7401
  %7403 = fadd fast float %7402, 4.000000e+00
  %7404 = fmul fast float %7403, 0x3FC5555560000000
  %7405 = fmul fast float %7396, -3.000000e+00
  %7406 = fadd fast float %7395, %7393
  %7407 = fmul fast float %7406, 3.000000e+00
  %7408 = fadd fast float %7405, 1.000000e+00
  %7409 = fadd fast float %7408, %7407
  %7410 = fmul fast float %7396, 0x3FC5555560000000
  %7411 = fmul fast float %7394, %7394
  %7412 = fmul fast float %7411, %7394
  %7413 = fsub fast float 3.000000e+00, %7394
  %7414 = fmul fast float %7411, %7413
  %7415 = fmul fast float %7394, 3.000000e+00
  %7416 = fmul fast float %7412, 3.000000e+00
  %7417 = fmul fast float %7411, 6.000000e+00
  %7418 = fsub fast float %7416, %7417
  %7419 = fadd fast float %7418, 4.000000e+00
  %7420 = fmul fast float %7419, 0x3FC5555560000000
  %7421 = fmul fast float %7412, -3.000000e+00
  %7422 = fadd fast float %7411, %7394
  %7423 = fmul fast float %7422, 3.000000e+00
  %7424 = fadd fast float %7421, 1.000000e+00
  %7425 = fadd fast float %7424, %7423
  %7426 = fmul fast float %7412, 0x3FC5555560000000
  %7427 = fadd fast float %7393, 1.000000e+00
  %7428 = fsub fast float 1.000000e+00, %7399
  %7429 = fadd fast float %7428, %7398
  %7430 = fadd fast float %7429, %7403
  %7431 = fmul fast float %7430, 0x3FC5555560000000
  %7432 = fdiv fast float %7404, %7431
  %7433 = fsub fast float %7427, %7432
  %7434 = fsub fast float 1.000000e+00, %7393
  %7435 = fadd fast float %7409, %7396
  %7436 = fmul fast float %7435, 0x3FC5555560000000
  %7437 = fdiv fast float %7410, %7436
  %7438 = fadd fast float %7434, %7437
  %7439 = fadd fast float %7394, 1.000000e+00
  %7440 = fsub fast float 1.000000e+00, %7415
  %7441 = fadd fast float %7440, %7414
  %7442 = fadd fast float %7441, %7419
  %7443 = fmul fast float %7442, 0x3FC5555560000000
  %7444 = fdiv fast float %7420, %7443
  %7445 = fsub fast float %7439, %7444
  %7446 = fsub fast float 1.000000e+00, %7394
  %7447 = fadd fast float %7425, %7412
  %7448 = fmul fast float %7447, 0x3FC5555560000000
  %7449 = fdiv fast float %7426, %7448
  %7450 = fadd fast float %7449, %7446
  %7451 = fmul fast float %7433, %7387
  %7452 = fsub fast float %7308, %7451
  %7453 = fmul fast float %7438, %7387
  %7454 = fadd fast float %7453, %7308
  %7455 = fmul fast float %7450, %7388
  %7456 = fadd fast float %7455, %7309
  %7457 = fmul fast float %7445, %7388
  %7458 = fsub fast float %7309, %7457
  %7459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7452, float %7458, float %7376, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7460 = extractvalue %dx.types.ResRet.f32 %7459, 0
  %7461 = extractvalue %dx.types.ResRet.f32 %7459, 1
  %7462 = extractvalue %dx.types.ResRet.f32 %7459, 2
  %7463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7454, float %7458, float %7376, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7464 = extractvalue %dx.types.ResRet.f32 %7463, 0
  %7465 = extractvalue %dx.types.ResRet.f32 %7463, 1
  %7466 = extractvalue %dx.types.ResRet.f32 %7463, 2
  %7467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7452, float %7456, float %7376, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7468 = extractvalue %dx.types.ResRet.f32 %7467, 0
  %7469 = extractvalue %dx.types.ResRet.f32 %7467, 1
  %7470 = extractvalue %dx.types.ResRet.f32 %7467, 2
  %7471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7454, float %7456, float %7376, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7472 = extractvalue %dx.types.ResRet.f32 %7471, 0
  %7473 = extractvalue %dx.types.ResRet.f32 %7471, 1
  %7474 = extractvalue %dx.types.ResRet.f32 %7471, 2
  %7475 = fsub fast float %7468, %7460
  %7476 = fsub fast float %7469, %7461
  %7477 = fsub fast float %7470, %7462
  %7478 = fmul fast float %7475, %7448
  %7479 = fmul fast float %7476, %7448
  %7480 = fmul fast float %7477, %7448
  %7481 = fadd fast float %7478, %7460
  %7482 = fadd fast float %7479, %7461
  %7483 = fadd fast float %7480, %7462
  %7484 = fsub fast float %7472, %7464
  %7485 = fsub fast float %7473, %7465
  %7486 = fsub fast float %7474, %7466
  %7487 = fmul fast float %7484, %7448
  %7488 = fmul fast float %7485, %7448
  %7489 = fmul fast float %7486, %7448
  %7490 = fsub fast float %7464, %7481
  %7491 = fadd fast float %7490, %7487
  %7492 = fsub fast float %7465, %7482
  %7493 = fadd fast float %7492, %7488
  %7494 = fsub fast float %7466, %7483
  %7495 = fadd fast float %7494, %7489
  %7496 = fmul fast float %7491, %7436
  %7497 = fmul fast float %7493, %7436
  %7498 = fmul fast float %7495, %7436
  %7499 = fadd fast float %7496, %7481
  %7500 = fadd fast float %7497, %7482
  %7501 = fadd fast float %7498, %7483
  %7502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7503 = extractvalue %dx.types.CBufRet.f32 %7502, 1
  %7504 = fmul fast float %7499, %7503
  %7505 = fmul fast float %7500, %7503
  %7506 = fmul fast float %7501, %7503
  br label %7507

; <label>:7507                                    ; preds = %7338, %7295
  %7508 = phi float [ %7378, %7338 ], [ 1.000000e+00, %7295 ]
  %7509 = phi float [ %7379, %7338 ], [ 1.000000e+00, %7295 ]
  %7510 = phi float [ %7380, %7338 ], [ 1.000000e+00, %7295 ]
  %7511 = phi float [ %7504, %7338 ], [ 0.000000e+00, %7295 ]
  %7512 = phi float [ %7505, %7338 ], [ 0.000000e+00, %7295 ]
  %7513 = phi float [ %7506, %7338 ], [ 0.000000e+00, %7295 ]
  %7514 = fmul fast float %7511, %5855
  %7515 = fmul fast float %7512, %5856
  %7516 = fmul fast float %7513, %5857
  %7517 = fmul fast float %7508, %7302
  %7518 = call float @dx.op.dot3.f32(i32 55, float %7508, float %7509, float %7510, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7519 = call float @dx.op.dot3.f32(i32 55, float %7514, float %7515, float %7516, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7520 = select i1 %260, float %7518, float %7508
  %7521 = select i1 %260, float %7518, float %7509
  %7522 = select i1 %260, float 1.000000e+00, float %7510
  %7523 = select i1 %260, float %7519, float %7514
  %7524 = select i1 %260, float 0.000000e+00, float %7515
  %7525 = select i1 %260, float 0.000000e+00, float %7516
  %7526 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7527 = extractvalue %dx.types.CBufRet.i32 %7526, 3
  %7528 = and i32 %7527, 3
  %7529 = icmp ne i32 %7528, 0
  %7530 = and i32 %7527, 4
  %7531 = icmp ne i32 %7530, 0
  %7532 = and i1 %7529, %7531
  %7533 = and i1 %260, %7532
  br i1 %7533, label %7534, label %7540

; <label>:7534                                    ; preds = %7507
  %7535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7536 = extractvalue %dx.types.CBufRet.f32 %7535, 1
  %7537 = fadd fast float %7517, -1.000000e+00
  %7538 = fmul fast float %7536, %7537
  %7539 = fadd fast float %7538, 1.000000e+00
  br label %7540

; <label>:7540                                    ; preds = %7534, %7507
  %7541 = phi float [ %7539, %7534 ], [ %7517, %7507 ]
  %7542 = fadd fast float %7299, %7296
  %7543 = fmul fast float %7520, %7542
  %7544 = fadd fast float %7543, %7523
  %7545 = fadd fast float %7300, %7297
  %7546 = fmul fast float %7521, %7545
  %7547 = fadd fast float %7546, %7524
  %7548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7549 = extractvalue %dx.types.CBufRet.f32 %7548, 0
  br i1 %260, label %7550, label %7565

; <label>:7550                                    ; preds = %7540
  %7551 = fadd fast float %7544, %7547
  %7552 = fmul fast float %7549, %7551
  %7553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7554 = extractvalue %dx.types.CBufRet.f32 %7553, 3
  %7555 = extractvalue %dx.types.CBufRet.f32 %5839, 1
  %7556 = fsub fast float %5844, %5838
  %7557 = fadd fast float %7556, %5845
  %7558 = fsub fast float %7557, %7555
  %7559 = extractvalue %dx.types.CBufRet.f32 %5839, 2
  %7560 = fmul fast float %7558, %7559
  %7561 = call float @dx.op.unary.f32(i32 7, float %7560)  ; Saturate(value)
  %7562 = fsub fast float %7561, %7554
  %7563 = fmul fast float %7562, %7541
  %7564 = fadd fast float %7563, %7554
  br label %7591

; <label>:7565                                    ; preds = %7540
  %7566 = fadd fast float %7301, %7298
  %7567 = fmul fast float %7522, %7566
  %7568 = fadd fast float %7567, %7525
  %7569 = fmul fast float %7549, %7544
  %7570 = fmul fast float %7549, %7547
  %7571 = fmul fast float %7549, %7568
  %7572 = call float @dx.op.binary.f32(i32 35, float %7570, float %7571)  ; FMax(a,b)
  %7573 = call float @dx.op.binary.f32(i32 35, float %7569, float %7572)  ; FMax(a,b)
  %7574 = call float @dx.op.binary.f32(i32 35, float %5856, float %5857)  ; FMax(a,b)
  %7575 = call float @dx.op.binary.f32(i32 35, float %5855, float %7574)  ; FMax(a,b)
  %7576 = call float @dx.op.binary.f32(i32 35, float %7573, float %7575)  ; FMax(a,b)
  %7577 = fcmp fast ugt float %7576, 0x3F10000000000000
  br i1 %7577, label %7579, label %7578

; <label>:7578                                    ; preds = %7565
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7579

; <label>:7579                                    ; preds = %7578, %7565
  %7580 = add i32 %65, 116
  %7581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %7580, i32 undef)  ; BufferLoad(srv,index,wot)
  %7582 = extractvalue %dx.types.ResRet.i32 %7581, 0
  %7583 = and i32 %7582, 32
  %7584 = icmp eq i32 %7583, 0
  br i1 %7584, label %7591, label %7585

; <label>:7585                                    ; preds = %7579
  %7586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7587 = extractvalue %dx.types.CBufRet.f32 %7586, 0
  %7588 = fmul fast float %7587, 0x3FE99999A0000000
  %7589 = fadd fast float %7587, %7569
  %7590 = fadd fast float %7588, %7571
  br label %7591

; <label>:7591                                    ; preds = %7585, %7579, %7550
  %7592 = phi float [ 1.000000e+00, %7550 ], [ %5856, %7585 ], [ %5856, %7579 ]
  %7593 = phi float [ 1.000000e+00, %7550 ], [ %5857, %7585 ], [ %5857, %7579 ]
  %7594 = phi float [ %7552, %7550 ], [ %7589, %7585 ], [ %7569, %7579 ]
  %7595 = phi float [ %7564, %7550 ], [ %7570, %7585 ], [ %7570, %7579 ]
  %7596 = phi float [ 1.000000e+00, %7550 ], [ %7590, %7585 ], [ %7571, %7579 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7597 = call float @dx.op.binary.f32(i32 36, float %7594, float 3.225500e+04)  ; FMin(a,b)
  %7598 = call float @dx.op.binary.f32(i32 36, float %7595, float 3.225500e+04)  ; FMin(a,b)
  %7599 = call float @dx.op.binary.f32(i32 36, float %7596, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7597)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7598)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7599)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7600 = call float @dx.op.binary.f32(i32 36, float %5855, float 3.225500e+04)  ; FMin(a,b)
  %7601 = call float @dx.op.binary.f32(i32 36, float %7592, float 3.225500e+04)  ; FMin(a,b)
  %7602 = call float @dx.op.binary.f32(i32 36, float %7593, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %7600)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %7601)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %7602)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!78 = !{[24 x i32] [i32 22, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119]}
!79 = !{void ()* @ps_main, !"ps_main", !80, !4, !99}
!80 = !{!81, !95, null}
!81 = !{!82, !85, !87, !89, !90, !91, !93, !94}
!82 = !{i32 0, !"SV_Position", i8 9, i8 3, !83, i8 4, i32 1, i8 4, i32 0, i8 0, !84}
!83 = !{i32 0}
!84 = !{i32 3, i32 15}
!85 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !83, i8 2, i32 1, i8 2, i32 1, i8 0, !86}
!86 = !{i32 3, i32 3}
!87 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !83, i8 2, i32 1, i8 3, i32 2, i8 0, !88}
!88 = !{i32 3, i32 7}
!89 = !{i32 3, !"NORMAL", i8 9, i8 0, !83, i8 2, i32 1, i8 3, i32 3, i8 0, !88}
!90 = !{i32 4, !"TANGENT", i8 9, i8 0, !83, i8 2, i32 1, i8 4, i32 4, i8 0, !84}
!91 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !83, i8 1, i32 1, i8 1, i32 5, i8 0, !92}
!92 = !{i32 3, i32 1}
!93 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !83, i8 1, i32 1, i8 1, i32 5, i8 1, !92}
!94 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !83, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!95 = !{!96, !97}
!96 = !{i32 0, !"SV_Target", i8 9, i8 16, !83, i8 0, i32 1, i8 4, i32 0, i8 0, !84}
!97 = !{i32 1, !"SV_Target", i8 9, i8 16, !98, i8 0, i32 1, i8 4, i32 1, i8 0, !84}
!98 = !{i32 1}
!99 = !{i32 0, i64 16}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = !{!113, !113, i64 0}
!113 = !{!"int", !114, i64 0}
!114 = !{!"omnipotent char", !115, i64 0}
!115 = !{!"Simple C/C++ TBAA"}
!116 = !{!117, !119, !121, !123}
!117 = distinct !{!117, !118, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!118 = distinct !{!118, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!119 = distinct !{!119, !120, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!120 = distinct !{!120, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!121 = distinct !{!121, !122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!122 = distinct !{!122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!123 = distinct !{!123, !124, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!124 = distinct !{!124, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = !{!137, !137, i64 0}
!137 = !{!"float", !114, i64 0}
!138 = !{!139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!139 = distinct !{!139, !140, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!140 = distinct !{!140, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!141 = distinct !{!141, !142, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!142 = distinct !{!142, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!143 = distinct !{!143, !142, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!144 = distinct !{!144, !145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!145 = distinct !{!145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!146 = distinct !{!146, !145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!147 = distinct !{!147, !145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!148 = distinct !{!148, !149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!149 = distinct !{!149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!150 = distinct !{!150, !149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!151 = distinct !{!151, !149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!152 = distinct !{!152, !153, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!153 = distinct !{!153, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"\01?sort@@YAXAIAM00@Z: %c"}
!156 = distinct !{!156, !"\01?sort@@YAXAIAM00@Z"}
!157 = !{!158, !159, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!158 = distinct !{!158, !156, !"\01?sort@@YAXAIAM00@Z: %a"}
!159 = distinct !{!159, !156, !"\01?sort@@YAXAIAM00@Z: %b"}
!160 = !{!159}
!161 = !{!158, !155, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!162 = !{!158}
!163 = !{!159, !155, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!164 = !{!165}
!165 = distinct !{!165, !166, !"\01?sort@@YAXAIAM00@Z: %c"}
!166 = distinct !{!166, !"\01?sort@@YAXAIAM00@Z"}
!167 = !{!168, !169, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!168 = distinct !{!168, !166, !"\01?sort@@YAXAIAM00@Z: %a"}
!169 = distinct !{!169, !166, !"\01?sort@@YAXAIAM00@Z: %b"}
!170 = !{!169}
!171 = !{!168, !165, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!172 = !{!168}
!173 = !{!169, !165, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 2}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}

