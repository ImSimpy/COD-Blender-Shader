;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   x   
; TEXCOORDS                0   xy          2     NONE   float   xy  
; LMAPCOORDS               0   xyz         3     NONE   float   xyz 
; NORMAL                   0   xyz         4     NONE   float   xyz 
; TANGENT                  0   xyzw        5     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           6     NONE    uint   x   
; TRANSIENT_INDEX          0    y          6     NONE    uint    y  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 063c2cbdb2f3359b8cfd979ae0ae3381
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
; Number of inputs: 26, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
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
  %64 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = alloca [12 x float], align 4
  %84 = alloca [12 x float], align 4
  %85 = alloca [3 x float], align 4
  %86 = alloca [3 x float], align 4
  %87 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %88 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = fmul fast float %90, %79
  %92 = fmul fast float %90, %80
  %93 = fmul fast float %71, %68
  %94 = fmul fast float %72, %67
  %95 = fsub fast float %93, %94
  %96 = fmul fast float %72, %66
  %97 = fmul fast float %70, %68
  %98 = fsub fast float %96, %97
  %99 = fmul fast float %70, %67
  %100 = fmul fast float %71, %66
  %101 = fsub fast float %99, %100
  %102 = fmul fast float %95, %69
  %103 = fmul fast float %98, %69
  %104 = fmul fast float %101, %69
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 3
  %108 = fmul fast float %106, 2.000000e+00
  %109 = fmul fast float %108, %91
  %110 = fmul fast float %107, 2.000000e+00
  %111 = fmul fast float %110, %92
  %112 = fsub fast float 1.000000e+00, %109
  %113 = fsub fast float 1.000000e+00, %111
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %117 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %118 = fmul fast float %112, %115
  %119 = fmul fast float %112, %116
  %120 = fmul fast float %112, %117
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = fmul fast float %113, %122
  %126 = fmul fast float %113, %123
  %127 = fmul fast float %113, %124
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = fadd fast float %125, %129
  %133 = fadd fast float %132, %118
  %134 = fadd fast float %126, %130
  %135 = fadd fast float %134, %119
  %136 = fadd fast float %127, %131
  %137 = fadd fast float %136, %120
  %138 = fmul fast float %133, %82
  %139 = fmul fast float %135, %82
  %140 = fmul fast float %137, %82
  %141 = fadd fast float %75, 5.000000e-01
  %142 = fptoui float %141 to i32
  %143 = shl i32 %142, 3
  %144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %143, i32 undef)  ; BufferLoad(srv,index,wot)
  %145 = extractvalue %dx.types.ResRet.i32 %144, 0
  %146 = or i32 %143, 4
  %147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %146, i32 undef)  ; BufferLoad(srv,index,wot)
  %148 = extractvalue %dx.types.ResRet.i32 %147, 0
  %149 = and i32 %145, 8191
  %150 = lshr i32 %145, 13
  %151 = and i32 %150, 8191
  %152 = lshr i32 %145, 26
  %153 = and i32 %148, 65535
  %154 = lshr i32 %148, 16
  %155 = uitofp i32 %153 to float
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %158 = uitofp i32 %154 to float
  %159 = uitofp i32 %149 to float
  %160 = fmul fast float %157, %159
  %161 = uitofp i32 %151 to float
  %162 = fmul fast float %157, %161
  %163 = fmul fast float %157, %73
  %164 = fmul fast float %163, %155
  %165 = fmul fast float %157, %74
  %166 = fmul fast float %165, %158
  %167 = fadd fast float %164, %160
  %168 = fadd fast float %162, %166
  %169 = uitofp i32 %152 to float
  %170 = fmul fast float %91, 5.000000e-01
  %171 = fmul fast float %92, 5.000000e-01
  %172 = fptosi float %170 to i32
  %173 = fptosi float %171 to i32
  %174 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %172, i32 %173, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = lshr i32 %175, 18
  %177 = uitofp i32 %176 to float
  %178 = fmul fast float %177, 0x3F4C00EBA0000000
  %179 = call float @dx.op.unary.f32(i32 21, float %178)  ; Exp(value)
  %180 = fadd fast float %179, -1.000000e+00
  %181 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %182 = extractvalue %dx.types.Dimensions %181, 0
  %183 = sitofp i32 %182 to float
  %184 = extractvalue %dx.types.Dimensions %181, 1
  %185 = sitofp i32 %184 to float
  %186 = fcmp fast oge float %170, %183
  %187 = fcmp fast oge float %171, %185
  %188 = or i1 %186, %187
  %189 = select i1 %188, float 0x4197782600000000, float %180
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 3
  %193 = fmul fast float %191, %91
  %194 = fmul fast float %192, %92
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = and i32 %196, 114688
  %198 = icmp ne i32 %197, 0
  %199 = select i1 %198, float %193, float 0.000000e+00
  %200 = select i1 %198, float %194, float 0.000000e+00
  %201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %59, float %199, float %200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = fmul fast float %202, 2.550000e+02
  %204 = fptoui float %203 to i32
  %205 = select i1 %198, i32 %204, i32 0
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.i32 %207, 3
  %209 = and i32 %208, 3
  %210 = icmp ne i32 %209, 0
  %211 = and i32 %208, 4
  %212 = icmp ne i32 %211, 0
  %213 = and i1 %210, %212
  br i1 %213, label %214, label %225

; <label>:214                                     ; preds = %0
  %215 = extractvalue %dx.types.CBufRet.f32 %206, 3
  %216 = fmul fast float %215, %92
  %217 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %218 = fmul fast float %217, %91
  %219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %58, float %218, float %216, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %220 = extractvalue %dx.types.ResRet.f32 %219, 0
  %221 = fsub fast float 1.000000e+00, %220
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 0
  %224 = fcmp fast olt float %221, %223
  br label %228

; <label>:225                                     ; preds = %0
  %226 = icmp eq i32 %211, 0
  %227 = and i1 %210, %226
  br label %228

; <label>:228                                     ; preds = %225, %214
  %229 = phi i1 [ %224, %214 ], [ %227, %225 ]
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 2
  %232 = fmul fast float %231, 0x3FE3C6EF40000000
  %233 = frem fast float %91, 2.560000e+02
  %234 = frem fast float %92, 2.560000e+02
  %235 = fptoui float %233 to i32
  %236 = fptoui float %234 to i32
  %237 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %235, i32 %236, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = fadd fast float %238, %232
  %240 = call float @dx.op.unary.f32(i32 22, float %239)  ; Frc(value)
  %241 = add i32 %65, 60
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = shl i32 %243, 4
  %245 = and i32 %244, 32752
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %243, 7
  %248 = and i32 %247, 32752
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %243, 22
  %251 = shl nuw nsw i32 %250, 5
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = add i32 %65, 72
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = and i32 %255, 255
  %257 = uitofp i32 %256 to float
  %258 = fmul fast float %257, 0x3F70101020000000
  %259 = lshr i32 %255, 8
  %260 = and i32 %259, 255
  %261 = uitofp i32 %260 to float
  %262 = fmul fast float %261, 0x3F70101020000000
  %263 = lshr i32 %255, 16
  %264 = and i32 %263, 255
  %265 = uitofp i32 %264 to float
  %266 = fmul fast float %265, 0x3F70101020000000
  %267 = add i32 %65, 36
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 65535
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = lshr i32 %269, 16
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = add i32 %65, 96
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 65535
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %276, 16
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = fmul fast float %278, 0x3F50624DE0000000
  %282 = fmul fast float %280, 0x3F50624DE0000000
  %283 = add i32 %65, 124
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 2
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %297, label %288

; <label>:288                                     ; preds = %228
  %289 = add i32 %65, 164
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = add i32 %291, 0
  %293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %292, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %294 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %293, %dx.types.Handle %88, float %76, float %77, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 3
  %296 = fmul fast float %295, %78
  br label %297

; <label>:297                                     ; preds = %288, %228
  %298 = phi float [ %78, %228 ], [ %296, %288 ]
  %299 = add i32 %65, 24
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = add i32 %65, 28
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = or i32 %304, %301
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %948, label %307

; <label>:307                                     ; preds = %297
  %308 = add i32 %65, 92
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = lshr i32 %310, 16
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = fmul fast float %312, 0x3F50624DE0000000
  %314 = add i32 %65, 40
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = lshr i32 %316, 16
  %318 = and i32 %317, 255
  %319 = lshr i32 %316, 24
  %320 = add i32 %65, 100
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 65535
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %322, 16
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = add i32 %65, 32
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = lshr i32 %329, 22
  %331 = shl nuw nsw i32 %330, 5
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = shl i32 %329, 4
  %334 = and i32 %333, 32752
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %329, 7
  %337 = and i32 %336, 32752
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 3
  %341 = fmul fast float %340, 1.000000e+03
  %342 = fmul fast float %281, %341
  %343 = call float @dx.op.unary.f32(i32 22, float %342)  ; Frc(value)
  %344 = fadd fast float %343, %271
  %345 = fmul fast float %282, %341
  %346 = call float @dx.op.unary.f32(i32 22, float %345)  ; Frc(value)
  %347 = fadd fast float %346, %273
  %348 = fmul fast float %313, %341
  %349 = call float @dx.op.unary.f32(i32 22, float %348)  ; Frc(value)
  %350 = fmul fast float %349, 0x401921FB60000000
  %351 = fadd fast float %350, %332
  %352 = call float @dx.op.unary.f32(i32 13, float %351)  ; Sin(value)
  %353 = call float @dx.op.unary.f32(i32 12, float %351)  ; Cos(value)
  %354 = fsub fast float -0.000000e+00, %352
  %355 = fadd fast float %76, -5.000000e-01
  %356 = fadd fast float %77, -5.000000e-01
  %357 = fmul fast float %324, %355
  %358 = fmul fast float %326, %356
  %359 = fadd fast float %357, 5.000000e-01
  %360 = fadd fast float %358, 5.000000e-01
  %361 = fmul fast float %335, %359
  %362 = fmul fast float %338, %360
  %363 = fmul fast float %353, %361
  %364 = call float @dx.op.tertiary.f32(i32 46, float %354, float %362, float %363)  ; FMad(a,b,c)
  %365 = fmul fast float %352, %361
  %366 = call float @dx.op.tertiary.f32(i32 46, float %353, float %362, float %365)  ; FMad(a,b,c)
  %367 = fadd fast float %344, %364
  %368 = fadd fast float %347, %366
  %369 = icmp ugt i32 %318, 1
  %370 = icmp ugt i32 %316, 33554431
  %371 = or i1 %370, %369
  br i1 %371, label %372, label %397

; <label>:372                                     ; preds = %307
  %373 = add i32 %65, 84
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = lshr i32 %375, 16
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = fmul fast float %340, %377
  %379 = call float @dx.op.unary.f32(i32 22, float %378)  ; Frc(value)
  %380 = mul nuw nsw i32 %318, %319
  %381 = uitofp i32 %380 to float
  %382 = fmul fast float %379, %381
  %383 = call float @dx.op.unary.f32(i32 27, float %382)  ; Round_ni(value)
  %384 = fptoui float %383 to i32
  %385 = urem i32 %384, %318
  %386 = udiv i32 %384, %319
  %387 = call float @dx.op.unary.f32(i32 22, float %367)  ; Frc(value)
  %388 = call float @dx.op.unary.f32(i32 22, float %368)  ; Frc(value)
  %389 = uitofp i32 %385 to float
  %390 = uitofp i32 %386 to float
  %391 = fadd fast float %387, %389
  %392 = fadd fast float %388, %390
  %393 = uitofp i32 %318 to float
  %394 = uitofp i32 %319 to float
  %395 = fdiv fast float %391, %393
  %396 = fdiv fast float %392, %394
  br label %397

; <label>:397                                     ; preds = %372, %307
  %398 = phi float [ %395, %372 ], [ %367, %307 ]
  %399 = phi float [ %396, %372 ], [ %368, %307 ]
  %400 = and i32 %301, 16777216
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %511, label %402

; <label>:402                                     ; preds = %397
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.f32 %403, 0
  %405 = extractvalue %dx.types.CBufRet.f32 %403, 1
  %406 = extractvalue %dx.types.CBufRet.f32 %403, 2
  %407 = fadd fast float %404, %138
  %408 = fadd fast float %405, %139
  %409 = fadd fast float %406, %140
  %410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.f32 %410, 0
  %412 = call float @dx.op.unary.f32(i32 7, float %411)  ; Saturate(value)
  %413 = icmp eq i32 %64, 65535
  br i1 %413, label %508, label %414

; <label>:414                                     ; preds = %402
  %415 = lshr i32 %64, 1
  %416 = shl i32 %415, 2
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %64, 1
  %420 = icmp ne i32 %419, 0
  %421 = lshr i32 %418, 16
  %422 = and i32 %418, 65535
  %423 = select i1 %420, i32 %421, i32 %422
  %424 = icmp eq i32 %423, 65535
  br i1 %424, label %504, label %425

; <label>:425                                     ; preds = %414
  %426 = mul nuw nsw i32 %423, 40
  %427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 0
  %429 = extractvalue %dx.types.ResRet.f32 %427, 1
  %430 = extractvalue %dx.types.ResRet.f32 %427, 2
  %431 = add nuw nsw i32 %426, 12
  %432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  %434 = extractvalue %dx.types.ResRet.f32 %432, 1
  %435 = extractvalue %dx.types.ResRet.f32 %432, 2
  %436 = add nuw nsw i32 %426, 24
  %437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.f32 %437, 0
  %439 = extractvalue %dx.types.ResRet.f32 %437, 1
  %440 = extractvalue %dx.types.ResRet.f32 %437, 2
  %441 = add nuw nsw i32 %426, 36
  %442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = fsub fast float %407, %428
  %445 = fsub fast float %408, %429
  %446 = fsub fast float %409, %430
  %447 = fmul fast float %443, %444
  %448 = fmul fast float %443, %445
  %449 = fmul fast float %443, %446
  %450 = call float @dx.op.unary.f32(i32 27, float %447)  ; Round_ni(value)
  %451 = call float @dx.op.unary.f32(i32 27, float %448)  ; Round_ni(value)
  %452 = call float @dx.op.unary.f32(i32 27, float %449)  ; Round_ni(value)
  %453 = fadd fast float %450, 5.000000e-01
  %454 = fadd fast float %451, 5.000000e-01
  %455 = fadd fast float %452, 5.000000e-01
  %456 = fmul fast float %453, %433
  %457 = fmul fast float %454, %434
  %458 = fmul fast float %455, %435
  %459 = shl i32 %64, 2
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = add i32 %461, 0
  %463 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %462, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %464 = call float @dx.op.unary.f32(i32 22, float %456)  ; Frc(value)
  %465 = call float @dx.op.unary.f32(i32 22, float %457)  ; Frc(value)
  %466 = call float @dx.op.unary.f32(i32 22, float %458)  ; Frc(value)
  %467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %463, %dx.types.Handle %59, float %464, float %465, float %466, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  %471 = fmul fast float %468, 1.023000e+03
  %472 = fmul fast float %469, 1.023000e+03
  %473 = fmul fast float %470, 1.023000e+03
  %474 = fadd fast float %471, 5.000000e-01
  %475 = fadd fast float %472, 5.000000e-01
  %476 = fadd fast float %473, 5.000000e-01
  %477 = call float @dx.op.unary.f32(i32 27, float %474)  ; Round_ni(value)
  %478 = call float @dx.op.unary.f32(i32 27, float %475)  ; Round_ni(value)
  %479 = call float @dx.op.unary.f32(i32 27, float %476)  ; Round_ni(value)
  %480 = fsub fast float %447, %450
  %481 = fsub fast float %448, %451
  %482 = fsub fast float %449, %452
  %483 = fmul fast float %480, 7.500000e-01
  %484 = fmul fast float %481, 7.500000e-01
  %485 = fmul fast float %482, 7.500000e-01
  %486 = fadd fast float %450, 1.250000e-01
  %487 = fadd fast float %486, %483
  %488 = fadd fast float %487, %477
  %489 = fadd fast float %451, 1.250000e-01
  %490 = fadd fast float %489, %484
  %491 = fadd fast float %490, %478
  %492 = fadd fast float %452, 1.250000e-01
  %493 = fadd fast float %492, %485
  %494 = fadd fast float %493, %479
  %495 = fmul fast float %488, %438
  %496 = fmul fast float %491, %439
  %497 = fmul fast float %494, %440
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = add i32 %499, 0
  %501 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %500, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %501, %dx.types.Handle %57, float %495, float %496, float %497, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  br label %504

; <label>:504                                     ; preds = %425, %414
  %505 = phi float [ %503, %425 ], [ -1.000000e+00, %414 ]
  %506 = fadd fast float %505, %412
  %507 = call float @dx.op.unary.f32(i32 7, float %506)  ; Saturate(value)
  br label %508

; <label>:508                                     ; preds = %504, %402
  %509 = phi float [ %507, %504 ], [ %412, %402 ]
  %510 = fmul fast float %509, %298
  br label %511

; <label>:511                                     ; preds = %508, %397
  %512 = phi float [ %510, %508 ], [ %298, %397 ]
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = and i32 %514, 256
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %563, label %517

; <label>:517                                     ; preds = %511
  %518 = add i32 %65, 152
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = add i32 %520, 0
  %522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %523 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %522, %dx.types.Handle %88, float %398, float %399, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %524 = extractvalue %dx.types.ResRet.f32 %523, 0
  %525 = add i32 %65, 52
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = shl i32 %527, 4
  %529 = and i32 %528, 32752
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = lshr i32 %527, 7
  %532 = and i32 %531, 32752
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = fsub fast float 1.000000e+00, %512
  %535 = call float @dx.op.binary.f32(i32 35, float %534, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %536 = bitcast float %512 to i32
  %537 = sitofp i32 %536 to float
  %538 = fadd fast float %537, 0xC1CFBF8940000000
  %539 = fmul fast float %533, %538
  %540 = fadd fast float %539, 0x41CFBF8940000000
  %541 = fptosi float %540 to i32
  %542 = bitcast i32 %541 to float
  %543 = bitcast float %535 to i32
  %544 = sitofp i32 %543 to float
  %545 = fadd fast float %544, 0xC1CFBF8940000000
  %546 = fmul fast float %545, %533
  %547 = fadd fast float %546, 0x41CFBF8940000000
  %548 = fptosi float %547 to i32
  %549 = bitcast i32 %548 to float
  %550 = fmul fast float %542, %530
  %551 = fmul fast float %549, %530
  %552 = fsub fast float %535, %550
  %553 = fadd fast float %551, %535
  %554 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %555 = call float @dx.op.unary.f32(i32 7, float %553)  ; Saturate(value)
  %556 = fsub fast float %524, %554
  %557 = fsub fast float %555, %554
  %558 = bitcast float %557 to i32
  %559 = sub nsw i32 2129859010, %558
  %560 = bitcast i32 %559 to float
  %561 = fmul fast float %560, %556
  %562 = call float @dx.op.unary.f32(i32 7, float %561)  ; Saturate(value)
  br label %563

; <label>:563                                     ; preds = %517, %511
  %564 = phi float [ %562, %517 ], [ %512, %511 ]
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = and i32 %566, 128
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %585, label %569

; <label>:569                                     ; preds = %563
  %570 = add i32 %65, 148
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = add i32 %572, 0
  %574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %575 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %574, %dx.types.Handle %88, float %398, float %399, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 0
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = and i32 %578, 524288
  %580 = icmp ne i32 %579, 0
  %581 = fcmp fast ogt float %576, 0x3FE0101020000000
  %582 = select i1 %581, float 1.000000e+00, float 0.000000e+00
  %583 = select i1 %580, float %582, float %576
  %584 = fmul fast float %583, %564
  br label %585

; <label>:585                                     ; preds = %569, %563
  %586 = phi float [ %584, %569 ], [ %564, %563 ]
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 16
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %789, label %591

; <label>:591                                     ; preds = %585
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = add i32 %65, 136
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = add i32 %596, 0
  %598 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %597, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %599 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %598, %dx.types.Handle %87, float %398, float %399, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = extractvalue %dx.types.ResRet.f32 %599, 1
  %602 = extractvalue %dx.types.ResRet.f32 %599, 2
  %603 = extractvalue %dx.types.ResRet.f32 %599, 3
  %604 = and i32 %593, 255
  %605 = uitofp i32 %604 to float
  %606 = lshr i32 %593, 8
  %607 = and i32 %606, 255
  %608 = uitofp i32 %607 to float
  %609 = fmul fast float %603, %605
  %610 = fadd fast float %609, %608
  %611 = fmul fast float %610, 0x3F70101000000000
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = and i32 %613, 512
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %624, label %616

; <label>:616                                     ; preds = %591
  %617 = add i32 %65, 156
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = add i32 %619, 0
  %621 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %620, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %622 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %621, %dx.types.Handle %88, float %398, float %399, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %623 = extractvalue %dx.types.ResRet.f32 %622, 0
  br label %624

; <label>:624                                     ; preds = %616, %591
  %625 = phi float [ %623, %616 ], [ 1.000000e+00, %591 ]
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = and i32 %627, 33554432
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %736, label %630

; <label>:630                                     ; preds = %624
  %631 = add i32 %65, 80
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = and i32 %633, 65535
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = lshr i32 %633, 16
  %637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %636)  ; LegacyF16ToF32(value)
  %638 = add i32 %65, 84
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = and i32 %640, 65535
  %642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %641)  ; LegacyF16ToF32(value)
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = lshr i32 %644, 24
  %646 = uitofp i32 %645 to float
  %647 = fmul fast float %646, 0x3F70101020000000
  %648 = and i32 %644, 255
  %649 = uitofp i32 %648 to float
  %650 = fmul fast float %649, 0x3F70101020000000
  %651 = lshr i32 %644, 8
  %652 = and i32 %651, 255
  %653 = uitofp i32 %652 to float
  %654 = fmul fast float %653, 0x3F70101020000000
  %655 = lshr i32 %644, 16
  %656 = and i32 %655, 255
  %657 = uitofp i32 %656 to float
  %658 = fmul fast float %657, 0x3F70101020000000
  %659 = add i32 %65, 76
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = lshr i32 %661, 24
  %663 = uitofp i32 %662 to float
  %664 = fmul fast float %663, 0x3F70101020000000
  %665 = and i32 %661, 255
  %666 = uitofp i32 %665 to float
  %667 = fmul fast float %666, 0x3F70101020000000
  %668 = lshr i32 %661, 8
  %669 = and i32 %668, 255
  %670 = uitofp i32 %669 to float
  %671 = fmul fast float %670, 0x3F70101020000000
  %672 = lshr i32 %661, 16
  %673 = and i32 %672, 255
  %674 = uitofp i32 %673 to float
  %675 = fmul fast float %674, 0x3F70101020000000
  %676 = bitcast float %600 to i32
  %677 = ashr i32 %676, 1
  %678 = sub nsw i32 1597463174, %677
  %679 = bitcast i32 %678 to float
  %680 = fmul fast float %600, 5.000000e-01
  %681 = fmul fast float %679, %679
  %682 = fmul fast float %681, %680
  %683 = fsub fast float 1.500000e+00, %682
  %684 = fmul fast float %679, %600
  %685 = fmul fast float %684, %683
  %686 = bitcast float %601 to i32
  %687 = ashr i32 %686, 1
  %688 = sub nsw i32 1597463174, %687
  %689 = bitcast i32 %688 to float
  %690 = fmul fast float %601, 5.000000e-01
  %691 = fmul fast float %689, %689
  %692 = fmul fast float %691, %690
  %693 = fsub fast float 1.500000e+00, %692
  %694 = fmul fast float %689, %601
  %695 = fmul fast float %694, %693
  %696 = bitcast float %602 to i32
  %697 = ashr i32 %696, 1
  %698 = sub nsw i32 1597463174, %697
  %699 = bitcast i32 %698 to float
  %700 = fmul fast float %602, 5.000000e-01
  %701 = fmul fast float %699, %699
  %702 = fmul fast float %701, %700
  %703 = fsub fast float 1.500000e+00, %702
  %704 = fmul fast float %699, %602
  %705 = fmul fast float %704, %703
  %706 = fsub fast float %685, %667
  %707 = fsub fast float %695, %671
  %708 = fsub fast float %705, %675
  %709 = fmul fast float %706, %635
  %710 = fmul fast float %707, %637
  %711 = fmul fast float %708, %642
  %712 = fadd fast float %709, %650
  %713 = fadd fast float %710, %654
  %714 = fadd fast float %711, %658
  %715 = call float @dx.op.unary.f32(i32 7, float %712)  ; Saturate(value)
  %716 = call float @dx.op.unary.f32(i32 7, float %713)  ; Saturate(value)
  %717 = call float @dx.op.unary.f32(i32 7, float %714)  ; Saturate(value)
  %718 = fmul fast float %715, %715
  %719 = fmul fast float %716, %716
  %720 = fmul fast float %717, %717
  %721 = fsub fast float %718, %600
  %722 = fsub fast float %719, %601
  %723 = fsub fast float %720, %602
  %724 = fmul fast float %721, %625
  %725 = fmul fast float %722, %625
  %726 = fmul fast float %723, %625
  %727 = fadd fast float %724, %600
  %728 = fadd fast float %725, %601
  %729 = fadd fast float %726, %602
  %730 = fadd fast float %647, %611
  %731 = fsub fast float %730, %664
  %732 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  %733 = fsub fast float %732, %611
  %734 = fmul fast float %733, %625
  %735 = fadd fast float %734, %611
  br label %789

; <label>:736                                     ; preds = %624
  %737 = and i32 %627, 134217728
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %773, label %739

; <label>:739                                     ; preds = %736
  %740 = call float @dx.op.unary.f32(i32 24, float %258)  ; Sqrt(value)
  %741 = call float @dx.op.unary.f32(i32 24, float %262)  ; Sqrt(value)
  %742 = call float @dx.op.unary.f32(i32 24, float %266)  ; Sqrt(value)
  %743 = fadd fast float %740, -5.000000e-01
  %744 = fadd fast float %741, -5.000000e-01
  %745 = fadd fast float %742, -5.000000e-01
  %746 = fmul fast float %743, %625
  %747 = fmul fast float %744, %625
  %748 = fmul fast float %745, %625
  %749 = fadd fast float %746, 5.000000e-01
  %750 = fadd fast float %747, 5.000000e-01
  %751 = fadd fast float %748, 5.000000e-01
  %752 = call float @dx.op.unary.f32(i32 24, float %600)  ; Sqrt(value)
  %753 = call float @dx.op.unary.f32(i32 24, float %601)  ; Sqrt(value)
  %754 = call float @dx.op.unary.f32(i32 24, float %602)  ; Sqrt(value)
  %755 = fmul fast float %749, 2.000000e+00
  %756 = fsub fast float 1.000000e+00, %755
  %757 = fmul fast float %756, %752
  %758 = fadd fast float %757, %755
  %759 = fmul fast float %758, %752
  %760 = fmul fast float %750, 2.000000e+00
  %761 = fsub fast float 1.000000e+00, %760
  %762 = fmul fast float %761, %753
  %763 = fadd fast float %762, %760
  %764 = fmul fast float %763, %753
  %765 = fmul fast float %751, 2.000000e+00
  %766 = fsub fast float 1.000000e+00, %765
  %767 = fmul fast float %766, %754
  %768 = fadd fast float %767, %765
  %769 = fmul fast float %768, %754
  %770 = fmul fast float %759, %759
  %771 = fmul fast float %764, %764
  %772 = fmul fast float %769, %769
  br label %789

; <label>:773                                     ; preds = %736
  %774 = fmul fast float %258, %258
  %775 = fmul fast float %262, %262
  %776 = fmul fast float %266, %266
  %777 = fadd fast float %774, -1.000000e+00
  %778 = fadd fast float %775, -1.000000e+00
  %779 = fadd fast float %776, -1.000000e+00
  %780 = fmul fast float %625, %777
  %781 = fmul fast float %625, %778
  %782 = fmul fast float %625, %779
  %783 = fadd fast float %780, 1.000000e+00
  %784 = fadd fast float %781, 1.000000e+00
  %785 = fadd fast float %782, 1.000000e+00
  %786 = fmul fast float %783, %600
  %787 = fmul fast float %784, %601
  %788 = fmul fast float %785, %602
  br label %789

; <label>:789                                     ; preds = %773, %739, %630, %585
  %790 = phi float [ %735, %630 ], [ %611, %739 ], [ %611, %773 ], [ 0x3FA23C0BE0000000, %585 ]
  %791 = phi float [ %727, %630 ], [ %770, %739 ], [ %786, %773 ], [ 1.000000e+00, %585 ]
  %792 = phi float [ %728, %630 ], [ %771, %739 ], [ %787, %773 ], [ 1.000000e+00, %585 ]
  %793 = phi float [ %729, %630 ], [ %772, %739 ], [ %788, %773 ], [ 1.000000e+00, %585 ]
  %794 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %795 = extractvalue %dx.types.CBufRet.i32 %794, 1
  %796 = and i32 %795, 1
  %797 = icmp ne i32 %796, 0
  %798 = add i32 %65, 132
  %799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.i32 %799, 0
  %801 = and i32 %800, 32
  %802 = icmp ne i32 %801, 0
  %803 = and i1 %797, %802
  %804 = select i1 %803, float 1.000000e+00, float %791
  %805 = select i1 %803, float 0x3FD3333340000000, float %792
  %806 = select i1 %803, float 0x3FD3333340000000, float %793
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = and i32 %808, 32
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %883, label %811

; <label>:811                                     ; preds = %789
  %812 = add i32 %65, 44
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = add i32 %65, 140
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = add i32 %817, 0
  %819 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %818, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %820 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %819, %dx.types.Handle %87, float %398, float %399, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = extractvalue %dx.types.ResRet.f32 %820, 1
  %823 = extractvalue %dx.types.ResRet.f32 %820, 2
  %824 = extractvalue %dx.types.ResRet.f32 %820, 3
  %825 = and i32 %814, 255
  %826 = uitofp i32 %825 to float
  %827 = lshr i32 %814, 8
  %828 = and i32 %827, 255
  %829 = uitofp i32 %828 to float
  %830 = lshr i32 %814, 16
  %831 = and i32 %830, 255
  %832 = uitofp i32 %831 to float
  %833 = fmul fast float %832, 0x3F70101000000000
  %834 = fmul fast float %821, %826
  %835 = fadd fast float %834, %829
  %836 = fmul fast float %835, 0x3F70101000000000
  %837 = fadd fast float %822, -5.000000e-01
  %838 = fadd fast float %824, -5.000000e-01
  %839 = fmul fast float %837, %833
  %840 = fmul fast float %838, %833
  %841 = fadd fast float %839, 5.000000e-01
  %842 = fadd fast float %840, 5.000000e-01
  %843 = fmul fast float %841, 2.000000e+00
  %844 = fadd fast float %843, -1.000000e+00
  %845 = fmul fast float %842, 2.000000e+00
  %846 = fadd fast float %845, -1.000000e+00
  %847 = fadd fast float %844, %846
  %848 = fmul fast float %847, 5.000000e-01
  %849 = fsub fast float %844, %846
  %850 = fmul fast float %849, 5.000000e-01
  %851 = call float @dx.op.unary.f32(i32 6, float %848)  ; FAbs(value)
  %852 = fsub fast float 1.000000e+00, %851
  %853 = call float @dx.op.unary.f32(i32 6, float %850)  ; FAbs(value)
  %854 = fsub fast float %852, %853
  %855 = call float @dx.op.dot3.f32(i32 55, float %848, float %850, float %854, float %848, float %850, float %854)  ; Dot3(ax,ay,az,bx,by,bz)
  %856 = call float @dx.op.unary.f32(i32 25, float %855)  ; Rsqrt(value)
  %857 = fmul fast float %848, %856
  %858 = fmul fast float %850, %856
  %859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = and i32 %860, 67108864
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %879, label %863

; <label>:863                                     ; preds = %811
  %864 = add i32 %65, 88
  %865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %864, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.i32 %865, 0
  %867 = and i32 %866, 65535
  %868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %867)  ; LegacyF16ToF32(value)
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = and i32 %870, 65535
  %872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %871)  ; LegacyF16ToF32(value)
  %873 = lshr i32 %866, 16
  %874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %873)  ; LegacyF16ToF32(value)
  %875 = fsub fast float %836, %874
  %876 = fmul fast float %875, %868
  %877 = fadd fast float %876, %872
  %878 = call float @dx.op.unary.f32(i32 7, float %877)  ; Saturate(value)
  br label %879

; <label>:879                                     ; preds = %863, %811
  %880 = phi float [ %878, %863 ], [ %836, %811 ]
  %881 = call float @dx.op.dot2.f32(i32 54, float %857, float %858, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %882 = call float @dx.op.dot2.f32(i32 54, float %857, float %858, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %883

; <label>:883                                     ; preds = %879, %789
  %884 = phi float [ %880, %879 ], [ 0x3FD6666660000000, %789 ]
  %885 = phi float [ %881, %879 ], [ 0.000000e+00, %789 ]
  %886 = phi float [ %882, %879 ], [ 0.000000e+00, %789 ]
  %887 = phi float [ %823, %879 ], [ 1.000000e+00, %789 ]
  %888 = add i32 %65, 64
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = lshr i32 %890, 22
  %892 = shl nuw nsw i32 %891, 5
  %893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %892)  ; LegacyF16ToF32(value)
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = and i32 %895, 64
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %931, label %898

; <label>:898                                     ; preds = %883
  %899 = add i32 %65, 144
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = add i32 %901, 0
  %903 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %902, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = and i32 %905, 131072
  %907 = icmp eq i32 %906, 0
  %908 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %903, %dx.types.Handle %87, float %398, float %399, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %909 = extractvalue %dx.types.ResRet.f32 %908, 0
  %910 = extractvalue %dx.types.ResRet.f32 %908, 1
  %911 = extractvalue %dx.types.ResRet.f32 %908, 2
  %912 = fmul fast float %909, %246
  %913 = fmul fast float %910, %249
  %914 = fmul fast float %911, %252
  br i1 %907, label %921, label %915

; <label>:915                                     ; preds = %898
  %916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %917 = extractvalue %dx.types.CBufRet.f32 %916, 0
  %918 = fmul fast float %917, %912
  %919 = fmul fast float %917, %913
  %920 = fmul fast float %917, %914
  br label %921

; <label>:921                                     ; preds = %915, %898
  %922 = phi float [ %918, %915 ], [ %912, %898 ]
  %923 = phi float [ %919, %915 ], [ %913, %898 ]
  %924 = phi float [ %920, %915 ], [ %914, %898 ]
  %925 = fmul fast float %922, %893
  %926 = select i1 %229, float %925, float %922
  %927 = call float @dx.op.dot3.f32(i32 55, float %926, float %923, float %924, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %928 = select i1 %229, float 0.000000e+00, float %922
  %929 = select i1 %229, float %927, float %923
  %930 = select i1 %229, float 0.000000e+00, float %924
  br label %931

; <label>:931                                     ; preds = %921, %883
  %932 = phi float [ %928, %921 ], [ 0.000000e+00, %883 ]
  %933 = phi float [ %929, %921 ], [ 0.000000e+00, %883 ]
  %934 = phi float [ %930, %921 ], [ 0.000000e+00, %883 ]
  %935 = add i32 %65, 48
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = and i32 %937, 255
  %939 = uitofp i32 %938 to float
  %940 = lshr i32 %937, 8
  %941 = and i32 %940, 255
  %942 = uitofp i32 %941 to float
  %943 = call float @dx.op.dot3.f32(i32 55, float %804, float %805, float %806, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %944 = fmul fast float %942, %943
  %945 = fadd fast float %944, %939
  %946 = fmul fast float %945, 0x3F70101020000000
  %947 = call float @dx.op.unary.f32(i32 7, float %946)  ; Saturate(value)
  br label %948

; <label>:948                                     ; preds = %931, %297
  %949 = phi float [ 0.000000e+00, %297 ], [ %885, %931 ]
  %950 = phi float [ 0.000000e+00, %297 ], [ %886, %931 ]
  %951 = phi float [ 0.000000e+00, %297 ], [ %804, %931 ]
  %952 = phi float [ 0.000000e+00, %297 ], [ %805, %931 ]
  %953 = phi float [ 0.000000e+00, %297 ], [ %806, %931 ]
  %954 = phi float [ 0.000000e+00, %297 ], [ %932, %931 ]
  %955 = phi float [ 0.000000e+00, %297 ], [ %933, %931 ]
  %956 = phi float [ 0.000000e+00, %297 ], [ %934, %931 ]
  %957 = phi float [ 0.000000e+00, %297 ], [ %790, %931 ]
  %958 = phi float [ 0.000000e+00, %297 ], [ %586, %931 ]
  %959 = phi float [ 0.000000e+00, %297 ], [ %884, %931 ]
  %960 = phi float [ 0.000000e+00, %297 ], [ %887, %931 ]
  %961 = phi float [ 0.000000e+00, %297 ], [ %947, %931 ]
  %962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.f32 %962, 0
  %964 = call float @dx.op.dot2.f32(i32 54, float %949, float %950, float %949, float %950)  ; Dot2(ax,ay,bx,by)
  %965 = fmul fast float %964, 0x3FE3333340000000
  %966 = fsub fast float 1.000000e+00, %965
  %967 = call float @dx.op.dot3.f32(i32 55, float %949, float %950, float %966, float %949, float %950, float %966)  ; Dot3(ax,ay,az,bx,by,bz)
  %968 = call float @dx.op.unary.f32(i32 25, float %967)  ; Rsqrt(value)
  %969 = fmul fast float %968, %949
  %970 = fmul fast float %968, %950
  %971 = fmul fast float %966, %968
  %972 = fmul fast float %971, %70
  %973 = fmul fast float %971, %71
  %974 = fmul fast float %971, %72
  %975 = fmul fast float %969, %66
  %976 = fmul fast float %969, %67
  %977 = fmul fast float %969, %68
  %978 = fadd fast float %972, %975
  %979 = fadd fast float %973, %976
  %980 = fadd fast float %974, %977
  %981 = fmul fast float %970, %102
  %982 = fmul fast float %970, %103
  %983 = fmul fast float %970, %104
  %984 = fadd fast float %978, %981
  %985 = fadd fast float %979, %982
  %986 = fadd fast float %980, %983
  %987 = call float @dx.op.dot3.f32(i32 55, float %984, float %985, float %986, float %984, float %985, float %986)  ; Dot3(ax,ay,az,bx,by,bz)
  %988 = call float @dx.op.unary.f32(i32 25, float %987)  ; Rsqrt(value)
  %989 = fmul fast float %984, %988
  %990 = fmul fast float %985, %988
  %991 = fmul fast float %986, %988
  %992 = call float @dx.op.unary.f32(i32 83, float %138)  ; DerivCoarseX(value)
  %993 = call float @dx.op.unary.f32(i32 83, float %139)  ; DerivCoarseX(value)
  %994 = call float @dx.op.unary.f32(i32 83, float %140)  ; DerivCoarseX(value)
  %995 = call float @dx.op.unary.f32(i32 84, float %138)  ; DerivCoarseY(value)
  %996 = call float @dx.op.unary.f32(i32 84, float %139)  ; DerivCoarseY(value)
  %997 = call float @dx.op.unary.f32(i32 84, float %140)  ; DerivCoarseY(value)
  %998 = fadd fast float %992, %138
  %999 = fadd fast float %993, %139
  %1000 = fadd fast float %994, %140
  %1001 = fadd fast float %995, %138
  %1002 = fadd fast float %996, %139
  %1003 = fadd fast float %997, %140
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.CBufRet.f32 %1004, 1
  %1007 = extractvalue %dx.types.CBufRet.f32 %1004, 2
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 2
  %1010 = extractvalue %dx.types.CBufRet.f32 %1008, 3
  %1011 = fmul fast float %1005, %91
  %1012 = fmul fast float %1011, %1009
  %1013 = fmul fast float %1006, %92
  %1014 = fmul fast float %1013, %1010
  %1015 = fptoui float %1012 to i32
  %1016 = fptoui float %1014 to i32
  %1017 = fadd fast float %1005, -1.000000e+00
  %1018 = fadd fast float %1006, -1.000000e+00
  %1019 = fptoui float %1017 to i32
  %1020 = fptoui float %1018 to i32
  %1021 = call i32 @dx.op.binary.i32(i32 40, i32 %1015, i32 %1019)  ; UMin(a,b)
  %1022 = call i32 @dx.op.binary.i32(i32 40, i32 %1016, i32 %1020)  ; UMin(a,b)
  %1023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.f32 %1023, 2
  %1025 = extractvalue %dx.types.CBufRet.f32 %1023, 3
  %1026 = fmul fast float %1024, %82
  %1027 = fsub fast float %1026, %1025
  %1028 = fadd fast float %1007, -1.000000e+00
  %1029 = call float @dx.op.binary.f32(i32 36, float %1027, float %1028)  ; FMin(a,b)
  %1030 = fptoui float %1029 to i32
  %1031 = fptoui float %1005 to i32
  %1032 = fptoui float %1006 to i32
  %1033 = mul i32 %1030, %1032
  %1034 = add i32 %1033, %1022
  %1035 = mul i32 %1034, %1031
  %1036 = add i32 %1035, %1021
  %1037 = shl i32 %1036, 2
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = and i32 %1039, 1023
  %1041 = lshr i32 %1039, 10
  %1042 = icmp eq i32 %1040, 0
  br i1 %1042, label %1471, label %1043

; <label>:1043                                    ; preds = %948
  %1044 = and i32 %1039, 1023
  br label %1045

; <label>:1045                                    ; preds = %1172, %1043
  %1046 = phi float [ %1173, %1172 ], [ 0.000000e+00, %1043 ]
  %1047 = phi float [ %1174, %1172 ], [ %958, %1043 ]
  %1048 = phi float [ %1175, %1172 ], [ %963, %1043 ]
  %1049 = phi float [ %1176, %1172 ], [ %961, %1043 ]
  %1050 = phi float [ %1177, %1172 ], [ 0.000000e+00, %1043 ]
  %1051 = phi float [ %1178, %1172 ], [ 0.000000e+00, %1043 ]
  %1052 = phi float [ %1179, %1172 ], [ %954, %1043 ]
  %1053 = phi float [ %1180, %1172 ], [ %955, %1043 ]
  %1054 = phi float [ %1181, %1172 ], [ %956, %1043 ]
  %1055 = phi float [ %1182, %1172 ], [ %989, %1043 ]
  %1056 = phi float [ %1183, %1172 ], [ %990, %1043 ]
  %1057 = phi float [ %1184, %1172 ], [ %991, %1043 ]
  %1058 = phi float [ %1185, %1172 ], [ %960, %1043 ]
  %1059 = phi float [ %1186, %1172 ], [ %959, %1043 ]
  %1060 = phi float [ %1187, %1172 ], [ 0.000000e+00, %1043 ]
  %1061 = phi float [ %1188, %1172 ], [ %957, %1043 ]
  %1062 = phi float [ %1189, %1172 ], [ %951, %1043 ]
  %1063 = phi float [ %1190, %1172 ], [ %952, %1043 ]
  %1064 = phi float [ %1191, %1172 ], [ %953, %1043 ]
  %1065 = phi i32 [ %1122, %1172 ], [ 0, %1043 ]
  %1066 = add nuw nsw i32 %1065, %1041
  %1067 = shl i32 %1066, 2
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = shl i32 %1069, 8
  %1071 = or i32 %1070, 48
  %1072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.f32 %1072, 0
  %1074 = extractvalue %dx.types.ResRet.f32 %1072, 1
  %1075 = extractvalue %dx.types.ResRet.f32 %1072, 2
  %1076 = extractvalue %dx.types.ResRet.f32 %1072, 3
  %1077 = or i32 %1070, 64
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = extractvalue %dx.types.ResRet.i32 %1078, 1
  %1081 = or i32 %1070, 80
  %1082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.f32 %1082, 2
  %1084 = extractvalue %dx.types.ResRet.f32 %1082, 3
  %1085 = or i32 %1070, 96
  %1086 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = extractvalue %dx.types.ResRet.f32 %1086, 1
  %1089 = extractvalue %dx.types.ResRet.f32 %1086, 2
  %1090 = extractvalue %dx.types.ResRet.f32 %1086, 3
  %1091 = or i32 %1070, 112
  %1092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1091, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 2
  %1094 = or i32 %1070, 128
  %1095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.f32 %1095, 0
  %1097 = extractvalue %dx.types.ResRet.f32 %1095, 1
  %1098 = extractvalue %dx.types.ResRet.f32 %1095, 2
  %1099 = extractvalue %dx.types.ResRet.f32 %1095, 3
  %1100 = or i32 %1070, 144
  %1101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.f32 %1101, 0
  %1103 = extractvalue %dx.types.ResRet.f32 %1101, 1
  %1104 = extractvalue %dx.types.ResRet.f32 %1101, 2
  %1105 = extractvalue %dx.types.ResRet.f32 %1101, 3
  %1106 = or i32 %1070, 160
  %1107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.f32 %1107, 0
  %1109 = extractvalue %dx.types.ResRet.f32 %1107, 1
  %1110 = extractvalue %dx.types.ResRet.f32 %1107, 2
  %1111 = extractvalue %dx.types.ResRet.f32 %1107, 3
  %1112 = or i32 %1070, 192
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = or i32 %1070, 208
  %1116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = or i32 %1070, 248
  %1119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.f32 %1119, 0
  %1121 = extractvalue %dx.types.ResRet.f32 %1119, 1
  %1122 = add nuw nsw i32 %1065, 1
  %1123 = bitcast float %1076 to i32
  %1124 = and i32 %1123, 2560
  %1125 = icmp eq i32 %1124, 0
  %1126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.ResRet.f32 %1126, 1
  %1129 = extractvalue %dx.types.ResRet.f32 %1126, 2
  %1130 = extractvalue %dx.types.ResRet.f32 %1126, 3
  %1131 = call float @dx.op.dot4.f32(i32 56, float %1127, float %1128, float %1129, float %1130, float %138, float %139, float %140, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1132 = or i32 %1070, 16
  %1133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.ResRet.f32 %1133, 1
  %1136 = extractvalue %dx.types.ResRet.f32 %1133, 2
  %1137 = extractvalue %dx.types.ResRet.f32 %1133, 3
  %1138 = call float @dx.op.dot4.f32(i32 56, float %1134, float %1135, float %1136, float %1137, float %138, float %139, float %140, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1139 = or i32 %1070, 32
  %1140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  %1142 = extractvalue %dx.types.ResRet.f32 %1140, 1
  %1143 = extractvalue %dx.types.ResRet.f32 %1140, 2
  %1144 = extractvalue %dx.types.ResRet.f32 %1140, 3
  %1145 = call float @dx.op.dot4.f32(i32 56, float %1141, float %1142, float %1143, float %1144, float %138, float %139, float %140, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1146 = call float @dx.op.unary.f32(i32 27, float %1131)  ; Round_ni(value)
  %1147 = call float @dx.op.unary.f32(i32 6, float %1146)  ; FAbs(value)
  %1148 = call float @dx.op.unary.f32(i32 27, float %1138)  ; Round_ni(value)
  %1149 = call float @dx.op.unary.f32(i32 6, float %1148)  ; FAbs(value)
  %1150 = call float @dx.op.unary.f32(i32 6, float %1145)  ; FAbs(value)
  %1151 = call float @dx.op.unary.f32(i32 27, float %1150)  ; Round_ni(value)
  %1152 = fadd fast float %1149, %1147
  %1153 = fadd fast float %1152, %1151
  %1154 = fcmp fast oeq float %1153, 0.000000e+00
  %1155 = call float @dx.op.dot4.f32(i32 56, float %1127, float %1128, float %1129, float %1130, float %998, float %999, float %1000, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1156 = call float @dx.op.dot4.f32(i32 56, float %1134, float %1135, float %1136, float %1137, float %998, float %999, float %1000, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1157 = call float @dx.op.dot4.f32(i32 56, float %1127, float %1128, float %1129, float %1130, float %1001, float %1002, float %1003, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1158 = call float @dx.op.dot4.f32(i32 56, float %1134, float %1135, float %1136, float %1137, float %1001, float %1002, float %1003, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1159 = fsub fast float %1155, %1131
  %1160 = fsub fast float %1157, %1131
  %1161 = fsub fast float %1156, %1138
  %1162 = fsub fast float %1158, %1138
  %1163 = call float @dx.op.dot3.f32(i32 55, float %1073, float %1074, float %1075, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1165 = extractvalue %dx.types.CBufRet.f32 %1164, 2
  %1166 = fadd fast float %1165, %1163
  %1167 = call float @dx.op.unary.f32(i32 7, float %1166)  ; Saturate(value)
  %1168 = extractvalue %dx.types.CBufRet.f32 %1164, 0
  %1169 = fcmp fast ogt float %1167, %1168
  %1170 = and i1 %1154, %1169
  %1171 = and i1 %1125, %1170
  br i1 %1171, label %1193, label %1172

; <label>:1172                                    ; preds = %1457, %1274, %1193, %1045
  %1173 = phi float [ %1046, %1193 ], [ %1277, %1274 ], [ %1277, %1457 ], [ %1046, %1045 ]
  %1174 = phi float [ %1047, %1193 ], [ %1047, %1274 ], [ %1432, %1457 ], [ %1047, %1045 ]
  %1175 = phi float [ %1048, %1193 ], [ %1048, %1274 ], [ %1431, %1457 ], [ %1048, %1045 ]
  %1176 = phi float [ %1049, %1193 ], [ %1049, %1274 ], [ %1429, %1457 ], [ %1049, %1045 ]
  %1177 = phi float [ %1050, %1193 ], [ %1050, %1274 ], [ %1401, %1457 ], [ %1050, %1045 ]
  %1178 = phi float [ %1051, %1193 ], [ %1051, %1274 ], [ %1399, %1457 ], [ %1051, %1045 ]
  %1179 = phi float [ %1052, %1193 ], [ %1052, %1274 ], [ %1467, %1457 ], [ %1052, %1045 ]
  %1180 = phi float [ %1053, %1193 ], [ %1053, %1274 ], [ %1468, %1457 ], [ %1053, %1045 ]
  %1181 = phi float [ %1054, %1193 ], [ %1054, %1274 ], [ %1469, %1457 ], [ %1054, %1045 ]
  %1182 = phi float [ %1055, %1193 ], [ %1055, %1274 ], [ %1380, %1457 ], [ %1055, %1045 ]
  %1183 = phi float [ %1056, %1193 ], [ %1056, %1274 ], [ %1381, %1457 ], [ %1056, %1045 ]
  %1184 = phi float [ %1057, %1193 ], [ %1057, %1274 ], [ %1382, %1457 ], [ %1057, %1045 ]
  %1185 = phi float [ %1058, %1193 ], [ %1058, %1274 ], [ %1409, %1457 ], [ %1058, %1045 ]
  %1186 = phi float [ %1059, %1193 ], [ %1059, %1274 ], [ %1406, %1457 ], [ %1059, %1045 ]
  %1187 = phi float [ %1060, %1193 ], [ %1060, %1274 ], [ %1403, %1457 ], [ %1060, %1045 ]
  %1188 = phi float [ %1061, %1193 ], [ %1061, %1274 ], [ %1397, %1457 ], [ %1061, %1045 ]
  %1189 = phi float [ %1062, %1193 ], [ %1062, %1274 ], [ %1392, %1457 ], [ %1062, %1045 ]
  %1190 = phi float [ %1063, %1193 ], [ %1063, %1274 ], [ %1393, %1457 ], [ %1063, %1045 ]
  %1191 = phi float [ %1064, %1193 ], [ %1064, %1274 ], [ %1394, %1457 ], [ %1064, %1045 ]
  %1192 = icmp eq i32 %1122, %1044
  br i1 %1192, label %1470, label %1045

; <label>:1193                                    ; preds = %1045
  %1194 = extractvalue %dx.types.ResRet.f32 %1092, 3
  %1195 = extractvalue %dx.types.ResRet.f32 %1092, 1
  %1196 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1197 = extractvalue %dx.types.ResRet.f32 %1082, 1
  %1198 = extractvalue %dx.types.ResRet.f32 %1082, 0
  %1199 = extractvalue %dx.types.ResRet.i32 %1078, 3
  %1200 = extractvalue %dx.types.ResRet.i32 %1078, 2
  %1201 = add i32 %1199, 0
  %1202 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1201, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1204 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1202, %dx.types.Handle %1203, float %1131, float %1138, float undef, float undef, i32 0, i32 0, i32 undef, float %1159, float %1161, float undef, float %1160, float %1162, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1205 = extractvalue %dx.types.ResRet.f32 %1204, 0
  %1206 = fmul fast float %1205, %1198
  %1207 = fadd fast float %1206, %1197
  %1208 = call float @dx.op.unary.f32(i32 7, float %1207)  ; Saturate(value)
  %1209 = fmul fast float %1131, %1087
  %1210 = call float @dx.op.tertiary.f32(i32 46, float %1088, float %1138, float %1209)  ; FMad(a,b,c)
  %1211 = fadd fast float %1210, %1196
  %1212 = fmul fast float %1131, %1089
  %1213 = call float @dx.op.tertiary.f32(i32 46, float %1090, float %1138, float %1212)  ; FMad(a,b,c)
  %1214 = fadd fast float %1213, %1195
  %1215 = fmul fast float %1159, %1087
  %1216 = call float @dx.op.tertiary.f32(i32 46, float %1088, float %1161, float %1215)  ; FMad(a,b,c)
  %1217 = fmul fast float %1159, %1089
  %1218 = call float @dx.op.tertiary.f32(i32 46, float %1090, float %1161, float %1217)  ; FMad(a,b,c)
  %1219 = fmul fast float %1160, %1087
  %1220 = call float @dx.op.tertiary.f32(i32 46, float %1088, float %1162, float %1219)  ; FMad(a,b,c)
  %1221 = fmul fast float %1160, %1089
  %1222 = call float @dx.op.tertiary.f32(i32 46, float %1090, float %1162, float %1221)  ; FMad(a,b,c)
  %1223 = add i32 %1200, 0
  %1224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1223, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1225 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1224, %dx.types.Handle %1203, float %1211, float %1214, float undef, float undef, i32 0, i32 0, i32 undef, float %1216, float %1218, float undef, float %1220, float %1222, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1226 = extractvalue %dx.types.ResRet.f32 %1225, 0
  %1227 = and i32 %1123, 1024
  %1228 = icmp ne i32 %1227, 0
  %1229 = fcmp fast ogt float %1226, 0x3FE0101020000000
  %1230 = uitofp i1 %1229 to float
  %1231 = select i1 %1228, float %1230, float %1226
  %1232 = and i32 %1123, 8192
  %1233 = icmp ne i32 %1232, 0
  %1234 = select i1 %1233, float %1194, float 1.000000e+00
  %1235 = fmul fast float %1131, 2.000000e+00
  %1236 = fadd fast float %1235, -1.000000e+00
  %1237 = call float @dx.op.unary.f32(i32 6, float %1236)  ; FAbs(value)
  %1238 = fmul fast float %1237, %1120
  %1239 = fsub fast float %1238, %1120
  %1240 = call float @dx.op.unary.f32(i32 7, float %1239)  ; Saturate(value)
  %1241 = fmul fast float %1138, 2.000000e+00
  %1242 = fadd fast float %1241, -1.000000e+00
  %1243 = call float @dx.op.unary.f32(i32 6, float %1242)  ; FAbs(value)
  %1244 = fmul fast float %1243, %1121
  %1245 = fsub fast float %1244, %1121
  %1246 = call float @dx.op.unary.f32(i32 7, float %1245)  ; Saturate(value)
  %1247 = fmul fast float %1150, %1083
  %1248 = fsub fast float %1247, %1083
  %1249 = call float @dx.op.unary.f32(i32 7, float %1248)  ; Saturate(value)
  %1250 = fmul fast float %1208, %1234
  %1251 = fmul fast float %1250, %1205
  %1252 = fmul fast float %1251, %1240
  %1253 = fmul fast float %1252, %1231
  %1254 = fmul fast float %1253, %1246
  %1255 = fmul fast float %1254, %1249
  %1256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.f32 %1256, 1
  %1258 = extractvalue %dx.types.CBufRet.f32 %1256, 0
  %1259 = fsub fast float %1167, %1258
  %1260 = fmul fast float %1259, %1257
  %1261 = call float @dx.op.unary.f32(i32 7, float %1260)  ; Saturate(value)
  %1262 = fmul fast float %1255, %1084
  %1263 = fadd fast float %1255, %1084
  %1264 = fmul fast float %1263, %1093
  %1265 = fsub fast float %1264, %1093
  %1266 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1267 = and i32 %1123, 128
  %1268 = icmp ne i32 %1267, 0
  %1269 = select i1 %1268, float %1266, float %1262
  %1270 = fmul fast float %1269, %1261
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 0
  %1273 = fcmp fast ugt float %1270, %1272
  br i1 %1273, label %1274, label %1172

; <label>:1274                                    ; preds = %1193
  %1275 = select i1 %1233, float %1270, float 0.000000e+00
  %1276 = fadd fast float %1275, %1046
  %1277 = call float @dx.op.unary.f32(i32 7, float %1276)  ; Saturate(value)
  br i1 %1233, label %1172, label %1278

; <label>:1278                                    ; preds = %1274
  %1279 = and i32 %1123, 4
  %1280 = and i32 %1123, 8
  %1281 = add i32 %1079, 0
  %1282 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1281, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1284 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1282, %dx.types.Handle %1283, float %1211, float %1214, float undef, float undef, i32 0, i32 0, i32 undef, float %1216, float %1218, float undef, float %1220, float %1222, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = extractvalue %dx.types.ResRet.f32 %1284, 1
  %1287 = extractvalue %dx.types.ResRet.f32 %1284, 2
  %1288 = extractvalue %dx.types.ResRet.f32 %1284, 3
  %1289 = bitcast float %1105 to i32
  %1290 = and i32 %1289, 255
  %1291 = uitofp i32 %1290 to float
  %1292 = lshr i32 %1289, 8
  %1293 = and i32 %1292, 255
  %1294 = uitofp i32 %1293 to float
  %1295 = fmul fast float %1288, %1291
  %1296 = fadd fast float %1295, %1294
  %1297 = fmul fast float %1296, 0x3F70101000000000
  %1298 = add i32 %1080, 0
  %1299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1298, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1300 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1299, %dx.types.Handle %1283, float %1211, float %1214, float undef, float undef, i32 0, i32 0, i32 undef, float %1216, float %1218, float undef, float %1220, float %1222, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1301 = extractvalue %dx.types.ResRet.f32 %1300, 0
  %1302 = extractvalue %dx.types.ResRet.f32 %1300, 1
  %1303 = extractvalue %dx.types.ResRet.f32 %1300, 2
  %1304 = extractvalue %dx.types.ResRet.f32 %1300, 3
  %1305 = bitcast float %1099 to i32
  %1306 = and i32 %1305, 255
  %1307 = uitofp i32 %1306 to float
  %1308 = lshr i32 %1305, 8
  %1309 = and i32 %1308, 255
  %1310 = uitofp i32 %1309 to float
  %1311 = lshr i32 %1305, 16
  %1312 = and i32 %1311, 255
  %1313 = uitofp i32 %1312 to float
  %1314 = fmul fast float %1313, 0x3F70101000000000
  %1315 = fmul fast float %1301, %1307
  %1316 = fadd fast float %1315, %1310
  %1317 = fmul fast float %1316, 0x3F70101000000000
  %1318 = fadd fast float %1302, -5.000000e-01
  %1319 = fadd fast float %1304, -5.000000e-01
  %1320 = fmul fast float %1318, %1314
  %1321 = fmul fast float %1319, %1314
  %1322 = fadd fast float %1320, 5.000000e-01
  %1323 = fadd fast float %1321, 5.000000e-01
  %1324 = fmul fast float %1285, %1108
  %1325 = fmul fast float %1286, %1109
  %1326 = fmul fast float %1287, %1110
  %1327 = fmul fast float %1322, 2.000000e+00
  %1328 = fadd fast float %1327, -1.000000e+00
  %1329 = fmul fast float %1323, 2.000000e+00
  %1330 = fadd fast float %1329, -1.000000e+00
  %1331 = fadd fast float %1328, %1330
  %1332 = fmul fast float %1331, 5.000000e-01
  %1333 = fsub fast float %1328, %1330
  %1334 = fmul fast float %1333, 5.000000e-01
  %1335 = call float @dx.op.unary.f32(i32 6, float %1332)  ; FAbs(value)
  %1336 = fsub fast float 1.000000e+00, %1335
  %1337 = call float @dx.op.unary.f32(i32 6, float %1334)  ; FAbs(value)
  %1338 = fsub fast float %1336, %1337
  %1339 = call float @dx.op.dot3.f32(i32 55, float %1332, float %1334, float %1338, float %1332, float %1334, float %1338)  ; Dot3(ax,ay,az,bx,by,bz)
  %1340 = call float @dx.op.unary.f32(i32 25, float %1339)  ; Rsqrt(value)
  %1341 = fmul fast float %1332, %1340
  %1342 = fmul fast float %1334, %1340
  %1343 = fmul fast float %1340, %1338
  %1344 = fmul fast float %1343, %1073
  %1345 = fmul fast float %1343, %1074
  %1346 = fmul fast float %1343, %1075
  %1347 = fmul fast float %1341, %1096
  %1348 = fmul fast float %1341, %1097
  %1349 = fmul fast float %1341, %1098
  %1350 = fadd fast float %1347, %1344
  %1351 = fadd fast float %1348, %1345
  %1352 = fadd fast float %1349, %1346
  %1353 = fmul fast float %1342, %1102
  %1354 = fmul fast float %1342, %1103
  %1355 = fmul fast float %1342, %1104
  %1356 = fadd fast float %1350, %1353
  %1357 = fadd fast float %1351, %1354
  %1358 = fadd fast float %1352, %1355
  %1359 = call float @dx.op.dot3.f32(i32 55, float %1356, float %1357, float %1358, float %1356, float %1357, float %1358)  ; Dot3(ax,ay,az,bx,by,bz)
  %1360 = call float @dx.op.unary.f32(i32 25, float %1359)  ; Rsqrt(value)
  %1361 = fmul fast float %1356, %1360
  %1362 = fmul fast float %1357, %1360
  %1363 = fmul fast float %1358, %1360
  %1364 = icmp ne i32 %1280, 0
  %1365 = select i1 %1364, float 1.000000e+00, float 0.000000e+00
  %1366 = fmul fast float %1270, %1365
  %1367 = and i32 %1123, 1
  %1368 = icmp eq i32 %1367, 0
  br i1 %1368, label %1369, label %1373

; <label>:1369                                    ; preds = %1278
  %1370 = fsub fast float %1361, %1055
  %1371 = fsub fast float %1362, %1056
  %1372 = fsub fast float %1363, %1057
  br label %1373

; <label>:1373                                    ; preds = %1369, %1278
  %1374 = phi float [ %1370, %1369 ], [ %1361, %1278 ]
  %1375 = phi float [ %1371, %1369 ], [ %1362, %1278 ]
  %1376 = phi float [ %1372, %1369 ], [ %1363, %1278 ]
  %1377 = fmul float %1376, %1366
  %1378 = fmul float %1375, %1366
  %1379 = fmul float %1374, %1366
  %1380 = fadd fast float %1379, %1055
  %1381 = fadd fast float %1378, %1056
  %1382 = fadd fast float %1377, %1057
  %1383 = icmp ne i32 %1279, 0
  %1384 = select i1 %1383, float 1.000000e+00, float 0.000000e+00
  %1385 = fmul fast float %1270, %1384
  %1386 = fsub fast float %1324, %1062
  %1387 = fsub fast float %1325, %1063
  %1388 = fsub fast float %1326, %1064
  %1389 = fmul fast float %1386, %1385
  %1390 = fmul fast float %1387, %1385
  %1391 = fmul fast float %1388, %1385
  %1392 = fadd fast float %1389, %1062
  %1393 = fadd fast float %1390, %1063
  %1394 = fadd fast float %1391, %1064
  %1395 = fsub fast float %1297, %1061
  %1396 = fmul fast float %1395, %1385
  %1397 = fadd fast float %1396, %1061
  %1398 = fmul fast float %1385, %1051
  %1399 = fsub fast float %1051, %1398
  %1400 = fmul fast float %1385, %1050
  %1401 = fsub fast float %1050, %1400
  %1402 = fadd fast float %1270, %1060
  %1403 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  %1404 = fsub fast float %1317, %1059
  %1405 = fmul fast float %1404, %1366
  %1406 = fadd fast float %1405, %1059
  %1407 = fsub fast float %1303, %1058
  %1408 = fmul fast float %1407, %1366
  %1409 = fadd fast float %1408, %1058
  %1410 = call float @dx.op.dot3.f32(i32 55, float %1324, float %1325, float %1326, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1411, 0
  %1413 = extractvalue %dx.types.CBufRet.f32 %1411, 1
  %1414 = fmul fast float %1413, %1410
  %1415 = fadd fast float %1414, %1412
  %1416 = call float @dx.op.unary.f32(i32 7, float %1415)  ; Saturate(value)
  %1417 = bitcast float %1111 to i32
  %1418 = and i32 %1417, 65535
  %1419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1418)  ; LegacyF16ToF32(value)
  %1420 = lshr i32 %1417, 16
  %1421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1420)  ; LegacyF16ToF32(value)
  %1422 = fcmp fast oge float %1419, 0.000000e+00
  %1423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1424 = extractvalue %dx.types.CBufRet.f32 %1423, 0
  %1425 = select i1 %1422, float %1419, float %1424
  %1426 = fadd fast float %1425, %1421
  %1427 = fsub fast float %1416, %1049
  %1428 = fmul fast float %1427, %1270
  %1429 = fadd fast float %1428, %1049
  %1430 = fmul fast float %1426, %1270
  %1431 = call float @dx.op.binary.f32(i32 35, float %1048, float %1430)  ; FMax(a,b)
  %1432 = call float @dx.op.binary.f32(i32 35, float %1047, float %1270)  ; FMax(a,b)
  %1433 = and i32 %1123, 16
  %1434 = icmp eq i32 %1433, 0
  br i1 %1434, label %1457, label %1435

; <label>:1435                                    ; preds = %1373
  %1436 = bitcast float %1117 to i32
  %1437 = add i32 %1114, 0
  %1438 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1437, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1439 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1438, %dx.types.Handle %1283, float %1211, float %1214, float undef, float undef, i32 0, i32 0, i32 undef, float %1216, float %1218, float undef, float %1220, float %1222, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1440 = extractvalue %dx.types.ResRet.f32 %1439, 0
  %1441 = extractvalue %dx.types.ResRet.f32 %1439, 1
  %1442 = extractvalue %dx.types.ResRet.f32 %1439, 2
  %1443 = and i32 %1436, 65535
  %1444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1443)  ; LegacyF16ToF32(value)
  %1445 = fmul fast float %1440, %1108
  %1446 = fmul fast float %1441, %1109
  %1447 = fmul fast float %1442, %1110
  %1448 = and i32 %1123, 16384
  %1449 = icmp ne i32 %1448, 0
  %1450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1451 = extractvalue %dx.types.CBufRet.f32 %1450, 0
  %1452 = select i1 %1449, float %1451, float 1.000000e+00
  %1453 = fmul fast float %1452, %1444
  %1454 = fmul fast float %1445, %1453
  %1455 = fmul fast float %1446, %1453
  %1456 = fmul fast float %1447, %1453
  br label %1457

; <label>:1457                                    ; preds = %1435, %1373
  %1458 = phi float [ %1454, %1435 ], [ 0.000000e+00, %1373 ]
  %1459 = phi float [ %1455, %1435 ], [ 0.000000e+00, %1373 ]
  %1460 = phi float [ %1456, %1435 ], [ 0.000000e+00, %1373 ]
  %1461 = fsub fast float %1458, %1052
  %1462 = fsub fast float %1459, %1053
  %1463 = fsub fast float %1460, %1054
  %1464 = fmul fast float %1461, %1270
  %1465 = fmul fast float %1462, %1270
  %1466 = fmul fast float %1463, %1270
  %1467 = fadd fast float %1464, %1052
  %1468 = fadd fast float %1465, %1053
  %1469 = fadd fast float %1466, %1054
  br label %1172

; <label>:1470                                    ; preds = %1172
  br label %1471

; <label>:1471                                    ; preds = %1470, %948
  %1472 = phi float [ 0.000000e+00, %948 ], [ %1173, %1470 ]
  %1473 = phi float [ %958, %948 ], [ %1174, %1470 ]
  %1474 = phi float [ %963, %948 ], [ %1175, %1470 ]
  %1475 = phi float [ %961, %948 ], [ %1176, %1470 ]
  %1476 = phi float [ 0.000000e+00, %948 ], [ %1177, %1470 ]
  %1477 = phi float [ 0.000000e+00, %948 ], [ %1178, %1470 ]
  %1478 = phi float [ %954, %948 ], [ %1179, %1470 ]
  %1479 = phi float [ %955, %948 ], [ %1180, %1470 ]
  %1480 = phi float [ %956, %948 ], [ %1181, %1470 ]
  %1481 = phi float [ %989, %948 ], [ %1182, %1470 ]
  %1482 = phi float [ %990, %948 ], [ %1183, %1470 ]
  %1483 = phi float [ %991, %948 ], [ %1184, %1470 ]
  %1484 = phi float [ %960, %948 ], [ %1185, %1470 ]
  %1485 = phi float [ %959, %948 ], [ %1186, %1470 ]
  %1486 = phi float [ 0.000000e+00, %948 ], [ %1187, %1470 ]
  %1487 = phi float [ %957, %948 ], [ %1188, %1470 ]
  %1488 = phi float [ %951, %948 ], [ %1189, %1470 ]
  %1489 = phi float [ %952, %948 ], [ %1190, %1470 ]
  %1490 = phi float [ %953, %948 ], [ %1191, %1470 ]
  %1491 = call float @dx.op.dot3.f32(i32 55, float %1481, float %1482, float %1483, float %1481, float %1482, float %1483)  ; Dot3(ax,ay,az,bx,by,bz)
  %1492 = call float @dx.op.unary.f32(i32 25, float %1491)  ; Rsqrt(value)
  %1493 = fmul fast float %1492, %1481
  %1494 = fmul fast float %1492, %1482
  %1495 = fmul fast float %1492, %1483
  %1496 = fadd fast float %1486, %958
  %1497 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  %1498 = call float @dx.op.dot3.f32(i32 55, float %1493, float %1494, float %1495, float %1493, float %1494, float %1495)  ; Dot3(ax,ay,az,bx,by,bz)
  %1499 = call float @dx.op.unary.f32(i32 25, float %1498)  ; Rsqrt(value)
  %1500 = fmul fast float %1499, %1493
  %1501 = fmul fast float %1499, %1494
  %1502 = fmul fast float %1499, %1495
  %1503 = fadd fast float %1487, 0xBFB99999A0000000
  %1504 = call float @dx.op.unary.f32(i32 7, float %1503)  ; Saturate(value)
  %1505 = fmul fast float %1504, 0x3FF1C71C80000000
  %1506 = call float @dx.op.binary.f32(i32 36, float %1487, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1507 = fsub fast float 1.000000e+00, %1505
  %1508 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  %1509 = fmul fast float %1508, %1488
  %1510 = fmul fast float %1508, %1489
  %1511 = fmul fast float %1508, %1490
  %1512 = call float @dx.op.unary.f32(i32 7, float %1509)  ; Saturate(value)
  %1513 = call float @dx.op.unary.f32(i32 7, float %1510)  ; Saturate(value)
  %1514 = call float @dx.op.unary.f32(i32 7, float %1511)  ; Saturate(value)
  %1515 = fmul fast float %1505, %1488
  %1516 = fmul fast float %1505, %1489
  %1517 = fmul fast float %1505, %1490
  %1518 = fadd fast float %1515, %1506
  %1519 = fadd fast float %1516, %1506
  %1520 = fadd fast float %1517, %1506
  %1521 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1522 = call float @dx.op.unary.f32(i32 7, float %1519)  ; Saturate(value)
  %1523 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1524 = call float @dx.op.unary.f32(i32 7, float %1485)  ; Saturate(value)
  %1525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.i32 %1525, 3
  %1527 = and i32 %1526, 8
  %1528 = icmp ne i32 %1527, 0
  %1529 = call float @dx.op.binary.f32(i32 35, float %1512, float %1488)  ; FMax(a,b)
  %1530 = call float @dx.op.binary.f32(i32 35, float %1513, float %1488)  ; FMax(a,b)
  %1531 = call float @dx.op.binary.f32(i32 35, float %1514, float %1488)  ; FMax(a,b)
  %1532 = call float @dx.op.dot3.f32(i32 55, float %1512, float %1513, float %1514, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1533 = select i1 %229, float %1488, float %1512
  %1534 = select i1 %229, float %1532, float %1513
  %1535 = select i1 %229, float 1.000000e+00, float %1514
  %1536 = select i1 %1528, float %1529, float %1533
  %1537 = select i1 %1528, float %1530, float %1534
  %1538 = select i1 %1528, float %1531, float %1535
  %1539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1540 = extractvalue %dx.types.CBufRet.f32 %1539, 0
  %1541 = extractvalue %dx.types.CBufRet.f32 %1539, 1
  %1542 = extractvalue %dx.types.CBufRet.f32 %1539, 2
  %1543 = fadd fast float %1540, %138
  %1544 = fadd fast float %1541, %139
  %1545 = fadd fast float %1542, %140
  %1546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1547 = extractvalue %dx.types.CBufRet.f32 %1546, 0
  %1548 = extractvalue %dx.types.CBufRet.f32 %1546, 1
  %1549 = fsub fast float %1543, %1547
  %1550 = fsub fast float %1544, %1548
  %1551 = fmul fast float %1549, %1549
  %1552 = fmul fast float %1550, %1550
  %1553 = fadd fast float %1551, %1552
  %1554 = call float @dx.op.unary.f32(i32 24, float %1553)  ; Sqrt(value)
  %1555 = extractvalue %dx.types.CBufRet.f32 %1546, 2
  %1556 = fcmp fast olt float %1554, %1555
  br i1 %1556, label %1557, label %1624

; <label>:1557                                    ; preds = %1471
  %1558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1559 = extractvalue %dx.types.CBufRet.f32 %1558, 0
  %1560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1561 = extractvalue %dx.types.CBufRet.f32 %1560, 0
  %1562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1563 = extractvalue %dx.types.CBufRet.f32 %1562, 0
  %1564 = extractvalue %dx.types.CBufRet.f32 %1558, 1
  %1565 = extractvalue %dx.types.CBufRet.f32 %1560, 1
  %1566 = extractvalue %dx.types.CBufRet.f32 %1562, 1
  %1567 = extractvalue %dx.types.CBufRet.f32 %1558, 3
  %1568 = extractvalue %dx.types.CBufRet.f32 %1560, 3
  %1569 = extractvalue %dx.types.CBufRet.f32 %1562, 3
  %1570 = fadd fast float %1567, %1543
  %1571 = fadd fast float %1568, %1544
  %1572 = fadd fast float %1569, %1545
  %1573 = fmul fast float %1570, %1559
  %1574 = call float @dx.op.tertiary.f32(i32 46, float %1571, float %1561, float %1573)  ; FMad(a,b,c)
  %1575 = call float @dx.op.tertiary.f32(i32 46, float %1572, float %1563, float %1574)  ; FMad(a,b,c)
  %1576 = fmul fast float %1570, %1564
  %1577 = call float @dx.op.tertiary.f32(i32 46, float %1571, float %1565, float %1576)  ; FMad(a,b,c)
  %1578 = call float @dx.op.tertiary.f32(i32 46, float %1572, float %1566, float %1577)  ; FMad(a,b,c)
  %1579 = fsub fast float %1575, %1567
  %1580 = fsub fast float %1578, %1568
  %1581 = fsub fast float %1579, %1547
  %1582 = fadd fast float %1581, %1555
  %1583 = fsub fast float %1580, %1548
  %1584 = fadd fast float %1583, %1555
  %1585 = extractvalue %dx.types.CBufRet.f32 %1546, 3
  %1586 = fmul fast float %1582, %1585
  %1587 = fmul fast float %1584, %1585
  %1588 = call float @dx.op.unary.f32(i32 7, float %1586)  ; Saturate(value)
  %1589 = call float @dx.op.unary.f32(i32 7, float %1587)  ; Saturate(value)
  %1590 = fsub fast float 1.000000e+00, %1588
  %1591 = fsub fast float 1.000000e+00, %1589
  %1592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %58, float %1590, float %1591, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1593 = extractvalue %dx.types.ResRet.f32 %1592, 0
  %1594 = fcmp fast ugt float %1593, 0.000000e+00
  br i1 %1594, label %1595, label %1898

; <label>:1595                                    ; preds = %1557
  %1596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1597 = extractvalue %dx.types.CBufRet.f32 %1596, 2
  %1598 = fmul fast float %1597, %1593
  %1599 = extractvalue %dx.types.CBufRet.f32 %1596, 3
  %1600 = fadd fast float %1599, %1598
  %1601 = extractvalue %dx.types.CBufRet.f32 %1562, 2
  %1602 = fadd fast float %1600, %1569
  %1603 = fmul fast float %1575, %1563
  %1604 = call float @dx.op.tertiary.f32(i32 46, float %1578, float %1566, float %1603)  ; FMad(a,b,c)
  %1605 = call float @dx.op.tertiary.f32(i32 46, float %1602, float %1601, float %1604)  ; FMad(a,b,c)
  %1606 = fsub fast float %1605, %1569
  %1607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1608 = extractvalue %dx.types.CBufRet.f32 %1607, 2
  %1609 = fsub fast float %1606, %1608
  %1610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %58, float %1590, float %1591, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1611 = extractvalue %dx.types.ResRet.f32 %1610, 0
  %1612 = extractvalue %dx.types.ResRet.f32 %1610, 1
  %1613 = extractvalue %dx.types.ResRet.f32 %1610, 2
  %1614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %58, float %1590, float %1591, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1615 = extractvalue %dx.types.ResRet.f32 %1614, 0
  %1616 = extractvalue %dx.types.ResRet.f32 %1614, 1
  %1617 = extractvalue %dx.types.ResRet.f32 %1614, 2
  %1618 = fadd fast float %1615, %1611
  %1619 = fmul fast float %1618, 0x3F847AE140000000
  %1620 = fadd fast float %1616, %1612
  %1621 = fmul fast float %1620, 0x3F847AE140000000
  %1622 = fadd fast float %1617, %1613
  %1623 = fmul fast float %1622, 0x3F847AE140000000
  br label %1898

; <label>:1624                                    ; preds = %1471
  %1625 = and i32 %205, 1
  %1626 = icmp eq i32 %1625, 0
  br i1 %1626, label %1898, label %1627

; <label>:1627                                    ; preds = %1624
  %1628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1629 = extractvalue %dx.types.CBufRet.f32 %1628, 0
  %1630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1631 = extractvalue %dx.types.CBufRet.f32 %1630, 0
  %1632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1633 = extractvalue %dx.types.CBufRet.f32 %1632, 0
  %1634 = extractvalue %dx.types.CBufRet.f32 %1628, 1
  %1635 = extractvalue %dx.types.CBufRet.f32 %1630, 1
  %1636 = extractvalue %dx.types.CBufRet.f32 %1632, 1
  %1637 = extractvalue %dx.types.CBufRet.f32 %1628, 3
  %1638 = extractvalue %dx.types.CBufRet.f32 %1630, 3
  %1639 = extractvalue %dx.types.CBufRet.f32 %1632, 3
  %1640 = fadd fast float %1637, %1543
  %1641 = fadd fast float %1638, %1544
  %1642 = fadd fast float %1639, %1545
  %1643 = fmul fast float %1640, %1629
  %1644 = call float @dx.op.tertiary.f32(i32 46, float %1641, float %1631, float %1643)  ; FMad(a,b,c)
  %1645 = call float @dx.op.tertiary.f32(i32 46, float %1642, float %1633, float %1644)  ; FMad(a,b,c)
  %1646 = fmul fast float %1640, %1634
  %1647 = call float @dx.op.tertiary.f32(i32 46, float %1641, float %1635, float %1646)  ; FMad(a,b,c)
  %1648 = call float @dx.op.tertiary.f32(i32 46, float %1642, float %1636, float %1647)  ; FMad(a,b,c)
  %1649 = fsub fast float %1645, %1637
  %1650 = fsub fast float %1648, %1638
  %1651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1652 = extractvalue %dx.types.CBufRet.f32 %1651, 0
  %1653 = extractvalue %dx.types.CBufRet.f32 %1651, 1
  %1654 = extractvalue %dx.types.CBufRet.f32 %1651, 2
  %1655 = extractvalue %dx.types.CBufRet.f32 %1651, 3
  %1656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.f32 %1656, 3
  %1658 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1659 = extractvalue %dx.types.CBufRet.i32 %1658, 0
  %1660 = extractvalue %dx.types.CBufRet.i32 %1658, 1
  %1661 = udiv i32 %1660, %1659
  %1662 = fsub fast float %1649, %1652
  %1663 = fsub fast float %1650, %1653
  %1664 = call float @dx.op.binary.f32(i32 35, float %1662, float 0.000000e+00)  ; FMax(a,b)
  %1665 = call float @dx.op.binary.f32(i32 35, float %1663, float 0.000000e+00)  ; FMax(a,b)
  %1666 = call float @dx.op.binary.f32(i32 36, float %1664, float %1654)  ; FMin(a,b)
  %1667 = call float @dx.op.binary.f32(i32 36, float %1665, float %1655)  ; FMin(a,b)
  %1668 = add i32 %1659, -1
  %1669 = add i32 %1661, -1
  %1670 = fmul fast float %1666, %1657
  %1671 = fmul fast float %1667, %1657
  %1672 = fptoui float %1670 to i32
  %1673 = fptoui float %1671 to i32
  %1674 = call i32 @dx.op.binary.i32(i32 40, i32 %1672, i32 %1668)  ; UMin(a,b)
  %1675 = call i32 @dx.op.binary.i32(i32 40, i32 %1673, i32 %1669)  ; UMin(a,b)
  %1676 = mul i32 %1675, %1659
  %1677 = add i32 %1676, %1674
  %1678 = shl i32 %1677, 2
  %1679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1680 = extractvalue %dx.types.ResRet.i32 %1679, 0
  %1681 = icmp eq i32 %1680, -1
  br i1 %1681, label %1898, label %1682

; <label>:1682                                    ; preds = %1627
  %1683 = mul i32 %1680, 148
  %1684 = add i32 %1683, 4
  %1685 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1684, i32 undef)  ; BufferLoad(srv,index,wot)
  %1686 = extractvalue %dx.types.ResRet.f32 %1685, 0
  %1687 = add i32 %1683, 8
  %1688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1687, i32 undef)  ; BufferLoad(srv,index,wot)
  %1689 = extractvalue %dx.types.ResRet.f32 %1688, 0
  %1690 = add i32 %1683, 36
  %1691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1690, i32 undef)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.f32 %1691, 0
  %1693 = add i32 %1683, 60
  %1694 = add i32 %1683, 92
  %1695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1694, i32 undef)  ; BufferLoad(srv,index,wot)
  %1696 = extractvalue %dx.types.ResRet.i32 %1695, 0
  %1697 = add i32 %1683, 116
  %1698 = fsub fast float %1649, %1686
  %1699 = fsub fast float %1650, %1689
  %1700 = fmul fast float %1657, %1698
  %1701 = fmul fast float %1657, %1699
  %1702 = call float @dx.op.unary.f32(i32 7, float %1700)  ; Saturate(value)
  %1703 = call float @dx.op.unary.f32(i32 7, float %1701)  ; Saturate(value)
  %1704 = fsub fast float 1.000000e+00, %1703
  %1705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1706 = extractvalue %dx.types.CBufRet.f32 %1705, 2
  %1707 = call float @dx.op.unary.f32(i32 83, float %1702)  ; DerivCoarseX(value)
  %1708 = call float @dx.op.unary.f32(i32 83, float %1704)  ; DerivCoarseX(value)
  %1709 = call float @dx.op.unary.f32(i32 84, float %1702)  ; DerivCoarseY(value)
  %1710 = call float @dx.op.unary.f32(i32 84, float %1704)  ; DerivCoarseY(value)
  %1711 = fmul fast float %1707, %1706
  %1712 = fmul fast float %1708, %1706
  %1713 = fmul fast float %1709, %1706
  %1714 = fmul fast float %1710, %1706
  %1715 = call float @dx.op.dot2.f32(i32 54, float %1713, float %1714, float %1713, float %1714)  ; Dot2(ax,ay,bx,by)
  %1716 = call float @dx.op.dot2.f32(i32 54, float %1711, float %1712, float %1711, float %1712)  ; Dot2(ax,ay,bx,by)
  %1717 = call float @dx.op.binary.f32(i32 35, float %1716, float %1715)  ; FMax(a,b)
  %1718 = call float @dx.op.unary.f32(i32 23, float %1717)  ; Log(value)
  %1719 = fmul fast float %1718, 5.000000e-01
  %1720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1721 = extractvalue %dx.types.CBufRet.f32 %1720, 1
  %1722 = fadd fast float %1721, %1719
  %1723 = call float @dx.op.binary.f32(i32 35, float %1722, float 0.000000e+00)  ; FMax(a,b)
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 3
  %1726 = fadd fast float %1725, %1723
  %1727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1728 = extractvalue %dx.types.CBufRet.f32 %1727, 3
  %1729 = fadd fast float %1726, %1728
  %1730 = add i32 %1696, 0
  %1731 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1730, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1732 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1731, i32 0)  ; GetDimensions(handle,mipLevel)
  %1733 = extractvalue %dx.types.Dimensions %1732, 0
  %1734 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1733)  ; FirstbitLo(value)
  %1735 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1736 = extractvalue %dx.types.CBufRet.i32 %1735, 1
  %1737 = sub nsw i32 %1736, %1734
  %1738 = sitofp i32 %1737 to float
  %1739 = fsub fast float %1729, %1738
  %1740 = call float @dx.op.binary.f32(i32 35, float %1739, float 0.000000e+00)  ; FMax(a,b)
  %1741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1731, %dx.types.Handle %56, float %1702, float %1704, float %1692, float undef, i32 0, i32 0, i32 undef, float %1740)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1742 = extractvalue %dx.types.ResRet.f32 %1741, 0
  %1743 = fcmp ule float %1742, 0x3FE0101020000000
  %1744 = extractvalue %dx.types.CBufRet.i32 %1735, 0
  %1745 = and i32 %1744, 128
  %1746 = icmp ne i32 %1745, 0
  %1747 = and i1 %1743, %1746
  br i1 %1747, label %1898, label %1748

; <label>:1748                                    ; preds = %1682
  %1749 = add i32 %1683, 20
  %1750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.f32 %1750, 0
  %1752 = add i32 %1683, 24
  %1753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.f32 %1753, 0
  %1755 = add i32 %1683, 40
  %1756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.f32 %1756, 0
  %1758 = add i32 %1683, 96
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.f32 %1761, 2
  %1763 = fmul fast float %1762, %1702
  %1764 = fmul fast float %1762, %1704
  %1765 = extractvalue %dx.types.CBufRet.f32 %1761, 3
  %1766 = fadd fast float %1763, %1765
  %1767 = fadd fast float %1764, %1765
  %1768 = add i32 %1760, 0
  %1769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1768, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1770 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1769, i32 0)  ; GetDimensions(handle,mipLevel)
  %1771 = extractvalue %dx.types.Dimensions %1770, 0
  %1772 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1771)  ; FirstbitLo(value)
  %1773 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1774 = extractvalue %dx.types.CBufRet.i32 %1773, 1
  %1775 = sub nsw i32 %1774, %1772
  %1776 = sitofp i32 %1775 to float
  %1777 = fsub fast float %1726, %1776
  %1778 = call float @dx.op.binary.f32(i32 35, float %1777, float 0.000000e+00)  ; FMax(a,b)
  %1779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1769, %dx.types.Handle %56, float %1766, float %1767, float %1757, float undef, i32 0, i32 0, i32 undef, float %1778)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1780 = extractvalue %dx.types.ResRet.f32 %1779, 0
  %1781 = fmul fast float %1780, %1751
  %1782 = fadd fast float %1781, %1754
  %1783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1784 = extractvalue %dx.types.CBufRet.f32 %1783, 0
  %1785 = extractvalue %dx.types.CBufRet.f32 %1783, 1
  %1786 = extractvalue %dx.types.CBufRet.f32 %1783, 2
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 3
  %1789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1790 = extractvalue %dx.types.CBufRet.f32 %1789, 3
  %1791 = extractvalue %dx.types.CBufRet.f32 %1783, 3
  %1792 = fadd fast float %1788, %1649
  %1793 = fadd fast float %1790, %1650
  %1794 = fadd fast float %1782, %1791
  %1795 = fmul fast float %1792, %1784
  %1796 = call float @dx.op.tertiary.f32(i32 46, float %1793, float %1785, float %1795)  ; FMad(a,b,c)
  %1797 = call float @dx.op.tertiary.f32(i32 46, float %1794, float %1786, float %1796)  ; FMad(a,b,c)
  %1798 = fsub fast float %1797, %1791
  %1799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1800 = extractvalue %dx.types.CBufRet.f32 %1799, 2
  %1801 = fsub fast float %1798, %1800
  %1802 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1803 = extractvalue %dx.types.CBufRet.i32 %1802, 0
  %1804 = call i32 @dx.op.binary.i32(i32 40, i32 %1680, i32 %1803)  ; UMin(a,b)
  %1805 = mul i32 %1804, 36
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = add i32 %1805, 4
  %1809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1810 = extractvalue %dx.types.CBufRet.f32 %1809, 0
  %1811 = fmul fast float %1810, %1702
  %1812 = fmul fast float %1810, %1704
  %1813 = extractvalue %dx.types.CBufRet.f32 %1809, 1
  %1814 = fadd fast float %1811, %1813
  %1815 = fadd fast float %1812, %1813
  %1816 = icmp eq i32 %1807, 0
  br i1 %1816, label %1885, label %1817

; <label>:1817                                    ; preds = %1748
  br label %1818

; <label>:1818                                    ; preds = %1875, %1817
  %1819 = phi float [ %1876, %1875 ], [ 0.000000e+00, %1817 ]
  %1820 = phi float [ %1877, %1875 ], [ 0.000000e+00, %1817 ]
  %1821 = phi float [ %1878, %1875 ], [ 0.000000e+00, %1817 ]
  %1822 = phi float [ %1879, %1875 ], [ 0.000000e+00, %1817 ]
  %1823 = phi float [ %1880, %1875 ], [ 0.000000e+00, %1817 ]
  %1824 = phi float [ %1881, %1875 ], [ 0.000000e+00, %1817 ]
  %1825 = phi i32 [ %1882, %1875 ], [ 0, %1817 ]
  %1826 = shl i32 %1825, 2
  %1827 = add i32 %1693, %1826
  %1828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1827, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.f32 %1828, 0
  %1830 = add i32 %1697, %1826
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = add i32 %1832, 0
  %1834 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1833, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1835 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1834, i32 0)  ; GetDimensions(handle,mipLevel)
  %1836 = extractvalue %dx.types.Dimensions %1835, 0
  %1837 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1836)  ; FirstbitLo(value)
  %1838 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.i32 %1838, 1
  %1840 = sub nsw i32 %1839, %1837
  %1841 = sitofp i32 %1840 to float
  %1842 = fsub fast float %1726, %1841
  %1843 = call float @dx.op.binary.f32(i32 35, float %1842, float 0.000000e+00)  ; FMax(a,b)
  %1844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1834, %dx.types.Handle %56, float %1814, float %1815, float %1829, float undef, i32 0, i32 0, i32 undef, float %1843)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1845 = extractvalue %dx.types.ResRet.f32 %1844, 0
  %1846 = fcmp fast ogt float %1845, 0.000000e+00
  br i1 %1846, label %1847, label %1875

; <label>:1847                                    ; preds = %1818
  %1848 = add i32 %1808, %1826
  %1849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.i32 %1849, 0
  %1851 = and i32 %1850, 32767
  %1852 = mul nuw nsw i32 %1851, 928
  %1853 = add nuw nsw i32 %1852, 48
  %1854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.f32 %1854, 0
  %1856 = extractvalue %dx.types.ResRet.f32 %1854, 1
  %1857 = extractvalue %dx.types.ResRet.f32 %1854, 2
  %1858 = add nuw nsw i32 %1852, 60
  %1859 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.f32 %1859, 0
  %1861 = extractvalue %dx.types.ResRet.f32 %1859, 1
  %1862 = extractvalue %dx.types.ResRet.f32 %1859, 2
  %1863 = fmul fast float %1855, %1845
  %1864 = fmul fast float %1856, %1845
  %1865 = fmul fast float %1857, %1845
  %1866 = fadd fast float %1863, %1819
  %1867 = fadd fast float %1864, %1820
  %1868 = fadd fast float %1865, %1821
  %1869 = fmul fast float %1860, %1845
  %1870 = fmul fast float %1861, %1845
  %1871 = fmul fast float %1862, %1845
  %1872 = fadd fast float %1869, %1822
  %1873 = fadd fast float %1870, %1823
  %1874 = fadd fast float %1871, %1824
  br label %1875

; <label>:1875                                    ; preds = %1847, %1818
  %1876 = phi float [ %1866, %1847 ], [ %1819, %1818 ]
  %1877 = phi float [ %1867, %1847 ], [ %1820, %1818 ]
  %1878 = phi float [ %1868, %1847 ], [ %1821, %1818 ]
  %1879 = phi float [ %1872, %1847 ], [ %1822, %1818 ]
  %1880 = phi float [ %1873, %1847 ], [ %1823, %1818 ]
  %1881 = phi float [ %1874, %1847 ], [ %1824, %1818 ]
  %1882 = add nuw i32 %1825, 1
  %1883 = icmp eq i32 %1882, %1807
  br i1 %1883, label %1884, label %1818

; <label>:1884                                    ; preds = %1875
  br label %1885

; <label>:1885                                    ; preds = %1884, %1748
  %1886 = phi float [ 0.000000e+00, %1748 ], [ %1876, %1884 ]
  %1887 = phi float [ 0.000000e+00, %1748 ], [ %1877, %1884 ]
  %1888 = phi float [ 0.000000e+00, %1748 ], [ %1878, %1884 ]
  %1889 = phi float [ 0.000000e+00, %1748 ], [ %1879, %1884 ]
  %1890 = phi float [ 0.000000e+00, %1748 ], [ %1880, %1884 ]
  %1891 = phi float [ 0.000000e+00, %1748 ], [ %1881, %1884 ]
  %1892 = fadd fast float %1889, %1886
  %1893 = fmul fast float %1892, 0x3F847AE140000000
  %1894 = fadd fast float %1890, %1887
  %1895 = fmul fast float %1894, 0x3F847AE140000000
  %1896 = fadd fast float %1891, %1888
  %1897 = fmul fast float %1896, 0x3F847AE140000000
  br label %1898

; <label>:1898                                    ; preds = %1885, %1682, %1627, %1624, %1595, %1557
  %1899 = phi float [ %1609, %1595 ], [ -1.310720e+05, %1557 ], [ %1801, %1885 ], [ -1.310720e+05, %1627 ], [ -1.310720e+05, %1682 ], [ -1.310720e+05, %1624 ]
  %1900 = phi float [ %1619, %1595 ], [ 0.000000e+00, %1557 ], [ %1893, %1885 ], [ 0.000000e+00, %1627 ], [ 0.000000e+00, %1682 ], [ 0.000000e+00, %1624 ]
  %1901 = phi float [ %1621, %1595 ], [ 0.000000e+00, %1557 ], [ %1895, %1885 ], [ 0.000000e+00, %1627 ], [ 0.000000e+00, %1682 ], [ 0.000000e+00, %1624 ]
  %1902 = phi float [ %1623, %1595 ], [ 0.000000e+00, %1557 ], [ %1897, %1885 ], [ 0.000000e+00, %1627 ], [ 0.000000e+00, %1682 ], [ 0.000000e+00, %1624 ]
  %1903 = phi i1 [ true, %1595 ], [ false, %1557 ], [ true, %1885 ], [ false, %1627 ], [ false, %1682 ], [ false, %1624 ]
  %1904 = and i32 %205, 3
  %1905 = icmp eq i32 %1904, 1
  %1906 = select i1 %1905, float 1.000000e+00, float 0.000000e+00
  %1907 = fsub fast float %1899, %140
  %1908 = call float @dx.op.unary.f32(i32 7, float %1907)  ; Saturate(value)
  %1909 = select i1 %1903, float %1908, float 1.000000e+00
  %1910 = fmul fast float %1909, %1906
  %1911 = icmp eq i32 %1904, 3
  %1912 = select i1 %1911, float 1.000000e+00, float %1910
  %1913 = call float @dx.op.binary.f32(i32 35, float %1472, float %1912)  ; FMax(a,b)
  %1914 = call float @dx.op.unary.f32(i32 7, float %1913)  ; Saturate(value)
  %1915 = fcmp fast une float %1914, 0.000000e+00
  %1916 = call float @dx.op.dot3.f32(i32 55, float %138, float %139, float %140, float %138, float %139, float %140)  ; Dot3(ax,ay,az,bx,by,bz)
  %1917 = call float @dx.op.unary.f32(i32 25, float %1916)  ; Rsqrt(value)
  br i1 %1915, label %1925, label %1918

; <label>:1918                                    ; preds = %1898
  %1919 = fmul fast float %1917, %138
  %1920 = fmul fast float %1917, %139
  %1921 = fmul fast float %1917, %140
  %1922 = fsub fast float -0.000000e+00, %1919
  %1923 = fsub fast float -0.000000e+00, %1920
  %1924 = fsub fast float -0.000000e+00, %1921
  br label %2093

; <label>:1925                                    ; preds = %1898
  %1926 = fmul fast float %138, %1917
  %1927 = fsub fast float -0.000000e+00, %1926
  %1928 = fmul fast float %139, %1917
  %1929 = fsub fast float -0.000000e+00, %1928
  %1930 = fmul fast float %140, %1917
  %1931 = fsub fast float -0.000000e+00, %1930
  %1932 = call float @dx.op.dot3.f32(i32 55, float %1927, float %1929, float %1931, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1933 = fmul fast float %1914, 2.500000e+00
  %1934 = call float @dx.op.unary.f32(i32 7, float %1933)  ; Saturate(value)
  %1935 = fmul fast float %1914, 0x4013FFFFE0000000
  %1936 = fadd fast float %1935, 0xBFFFFFFFE0000000
  %1937 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  %1938 = fmul fast float %1914, 0x4004000020000000
  %1939 = fadd fast float %1938, 0xBFF8000040000000
  %1940 = call float @dx.op.unary.f32(i32 7, float %1939)  ; Saturate(value)
  %1941 = call float @dx.op.unary.f32(i32 7, float %1934)  ; Saturate(value)
  %1942 = fmul fast float %1503, 1.000000e+01
  %1943 = call float @dx.op.unary.f32(i32 7, float %1942)  ; Saturate(value)
  %1944 = fmul fast float %1943, 2.000000e+00
  %1945 = fsub fast float 3.000000e+00, %1944
  %1946 = fmul fast float %1943, %1943
  %1947 = fmul fast float %1946, %1945
  %1948 = fsub fast float 1.000000e+00, %1947
  %1949 = fsub fast float 0x3FE3333340000000, %1524
  %1950 = fmul fast float %1949, 0x400AAAAAA0000000
  %1951 = call float @dx.op.unary.f32(i32 7, float %1950)  ; Saturate(value)
  %1952 = fmul fast float %1948, %1951
  %1953 = fmul fast float %1536, 0x3FEA2B8620000000
  %1954 = fmul fast float %1537, 0x3FEA2B8620000000
  %1955 = fmul fast float %1538, 0x3FEA2B8620000000
  %1956 = fadd fast float %1953, 0x3FC81DFBA0000000
  %1957 = fmul fast float %1956, %1536
  %1958 = fadd fast float %1957, 0x3F910E6020000000
  %1959 = fadd fast float %1954, 0x3FC81DFBA0000000
  %1960 = fmul fast float %1959, %1537
  %1961 = fadd fast float %1960, 0x3F910E6020000000
  %1962 = fadd fast float %1955, 0x3FC81DFBA0000000
  %1963 = fmul fast float %1962, %1538
  %1964 = fadd fast float %1963, 0x3F910E6020000000
  %1965 = call float @dx.op.unary.f32(i32 7, float %1958)  ; Saturate(value)
  %1966 = call float @dx.op.unary.f32(i32 7, float %1961)  ; Saturate(value)
  %1967 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  %1968 = fsub fast float %1965, %1536
  %1969 = fsub fast float %1966, %1537
  %1970 = fsub fast float %1967, %1538
  %1971 = fmul fast float %1968, %1941
  %1972 = fmul fast float %1971, %1952
  %1973 = fmul fast float %1969, %1941
  %1974 = fmul fast float %1973, %1952
  %1975 = fmul fast float %1970, %1941
  %1976 = fmul fast float %1975, %1952
  %1977 = fadd fast float %1972, %1536
  %1978 = fadd fast float %1974, %1537
  %1979 = fadd fast float %1976, %1538
  %1980 = fmul fast float %1484, %1484
  %1981 = fmul fast float %1980, %1980
  %1982 = fadd fast float %1937, 1.000000e+00
  %1983 = fsub fast float %1982, %1952
  %1984 = call float @dx.op.unary.f32(i32 7, float %1983)  ; Saturate(value)
  %1985 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1986 = call float @dx.op.unary.f32(i32 7, float %1985)  ; Saturate(value)
  %1987 = fsub fast float 1.000000e+00, %1981
  %1988 = call float @dx.op.binary.f32(i32 36, float %1984, float %1987)  ; FMin(a,b)
  %1989 = call float @dx.op.unary.f32(i32 7, float %1940)  ; Saturate(value)
  %1990 = call float @dx.op.binary.f32(i32 35, float %1988, float %1989)  ; FMax(a,b)
  %1991 = fadd fast float %1986, 0xBFE4CCCCC0000000
  %1992 = fmul fast float %1991, 0x4006DB6DA0000000
  %1993 = call float @dx.op.unary.f32(i32 7, float %1992)  ; Saturate(value)
  %1994 = fmul fast float %1993, 2.000000e+00
  %1995 = fsub fast float 3.000000e+00, %1994
  %1996 = bitcast float %1521 to i32
  %1997 = ashr i32 %1996, 1
  %1998 = add nsw i32 %1997, 532487669
  %1999 = bitcast i32 %1998 to float
  %2000 = fsub fast float 1.000000e+00, %1999
  %2001 = bitcast float %2000 to i32
  %2002 = sub nsw i32 2129859010, %2001
  %2003 = bitcast i32 %2002 to float
  %2004 = fmul fast float %2003, 2.000000e+00
  %2005 = bitcast float %1522 to i32
  %2006 = ashr i32 %2005, 1
  %2007 = add nsw i32 %2006, 532487669
  %2008 = bitcast i32 %2007 to float
  %2009 = fsub fast float 1.000000e+00, %2008
  %2010 = bitcast float %2009 to i32
  %2011 = sub nsw i32 2129859010, %2010
  %2012 = bitcast i32 %2011 to float
  %2013 = fmul fast float %2012, 2.000000e+00
  %2014 = bitcast float %1523 to i32
  %2015 = ashr i32 %2014, 1
  %2016 = add nsw i32 %2015, 532487669
  %2017 = bitcast i32 %2016 to float
  %2018 = fsub fast float 1.000000e+00, %2017
  %2019 = bitcast float %2018 to i32
  %2020 = sub nsw i32 2129859010, %2019
  %2021 = bitcast i32 %2020 to float
  %2022 = fmul fast float %2021, 2.000000e+00
  %2023 = fsub fast float 0x4002A9FBE0000000, %2004
  %2024 = fadd fast float %2004, 0x3FD54FDF00000000
  %2025 = bitcast float %2024 to i32
  %2026 = sub nsw i32 2129859010, %2025
  %2027 = bitcast i32 %2026 to float
  %2028 = fmul fast float %2027, %2023
  %2029 = fmul fast float %2028, %2028
  %2030 = fsub fast float 0x4002A9FBE0000000, %2013
  %2031 = fadd fast float %2013, 0x3FD54FDF00000000
  %2032 = bitcast float %2031 to i32
  %2033 = sub nsw i32 2129859010, %2032
  %2034 = bitcast i32 %2033 to float
  %2035 = fmul fast float %2034, %2030
  %2036 = fmul fast float %2035, %2035
  %2037 = fsub fast float 0x4002A9FBE0000000, %2022
  %2038 = fadd fast float %2022, 0x3FD54FDF00000000
  %2039 = bitcast float %2038 to i32
  %2040 = sub nsw i32 2129859010, %2039
  %2041 = bitcast i32 %2040 to float
  %2042 = fmul fast float %2041, %2037
  %2043 = fmul fast float %2042, %2042
  %2044 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2029)  ; FMax(a,b)
  %2045 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2036)  ; FMax(a,b)
  %2046 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2043)  ; FMax(a,b)
  %2047 = fsub fast float 1.000000e+00, %1932
  %2048 = fadd fast float %2047, %1948
  %2049 = call float @dx.op.unary.f32(i32 7, float %2048)  ; Saturate(value)
  %2050 = fsub fast float 1.000000e+00, %1912
  %2051 = fmul fast float %1990, %2050
  %2052 = fmul fast float %1993, %1993
  %2053 = fmul fast float %2052, %2051
  %2054 = fmul fast float %2053, %1995
  %2055 = fmul fast float %2050, 0xBFE99999A0000000
  %2056 = fmul fast float %2055, %1941
  %2057 = fmul fast float %2056, %1952
  %2058 = fadd fast float %2057, 1.000000e+00
  %2059 = fadd fast float %1524, -1.000000e+00
  %2060 = fmul fast float %2058, %2059
  %2061 = fadd fast float %2060, 1.000000e+00
  %2062 = fsub fast float %2044, %1521
  %2063 = fsub fast float %2045, %1522
  %2064 = fsub fast float %2046, %1523
  %2065 = fmul fast float %2054, %2062
  %2066 = fmul fast float %2054, %2063
  %2067 = fmul fast float %2054, %2064
  %2068 = fadd fast float %2065, %1521
  %2069 = fadd fast float %2066, %1522
  %2070 = fadd fast float %2067, %1523
  %2071 = fsub fast float %70, %1500
  %2072 = fsub fast float %71, %1501
  %2073 = fsub fast float %72, %1502
  %2074 = fmul fast float %2054, %2071
  %2075 = fmul fast float %2054, %2072
  %2076 = fmul fast float %2054, %2073
  %2077 = fadd fast float %2074, %1500
  %2078 = fadd fast float %2075, %1501
  %2079 = fadd fast float %2076, %1502
  %2080 = fmul fast float %2054, %2049
  %2081 = call float @dx.op.unary.f32(i32 7, float %2061)  ; Saturate(value)
  %2082 = fsub fast float 1.000000e+00, %2081
  %2083 = fmul fast float %2080, %2082
  %2084 = fadd fast float %2083, %2081
  %2085 = fsub fast float 1.000000e+00, %1484
  %2086 = fmul fast float %2054, %2085
  %2087 = fadd fast float %2086, %1484
  %2088 = call float @dx.op.dot3.f32(i32 55, float %2077, float %2078, float %2079, float %2077, float %2078, float %2079)  ; Dot3(ax,ay,az,bx,by,bz)
  %2089 = call float @dx.op.unary.f32(i32 25, float %2088)  ; Rsqrt(value)
  %2090 = fmul fast float %2077, %2089
  %2091 = fmul fast float %2078, %2089
  %2092 = fmul fast float %2079, %2089
  br label %2093

; <label>:2093                                    ; preds = %1925, %1918
  %2094 = phi float [ %1924, %1918 ], [ %1931, %1925 ]
  %2095 = phi float [ %1923, %1918 ], [ %1929, %1925 ]
  %2096 = phi float [ %1922, %1918 ], [ %1927, %1925 ]
  %2097 = phi float [ %1921, %1918 ], [ %1930, %1925 ]
  %2098 = phi float [ %1920, %1918 ], [ %1928, %1925 ]
  %2099 = phi float [ %1919, %1918 ], [ %1926, %1925 ]
  %2100 = phi float [ %1536, %1918 ], [ %1977, %1925 ]
  %2101 = phi float [ %1537, %1918 ], [ %1978, %1925 ]
  %2102 = phi float [ %1538, %1918 ], [ %1979, %1925 ]
  %2103 = phi float [ %1521, %1918 ], [ %2068, %1925 ]
  %2104 = phi float [ %1522, %1918 ], [ %2069, %1925 ]
  %2105 = phi float [ %1523, %1918 ], [ %2070, %1925 ]
  %2106 = phi float [ %1500, %1918 ], [ %2090, %1925 ]
  %2107 = phi float [ %1501, %1918 ], [ %2091, %1925 ]
  %2108 = phi float [ %1502, %1918 ], [ %2092, %1925 ]
  %2109 = phi float [ %1524, %1918 ], [ %2084, %1925 ]
  %2110 = phi float [ %1484, %1918 ], [ %2087, %1925 ]
  %2111 = fsub fast float -0.000000e+00, %140
  %2112 = select i1 %229, float 0.000000e+00, float %2105
  %2113 = call float @dx.op.dot3.f32(i32 55, float %2106, float %2107, float %2108, float %2096, float %2095, float %2094)  ; Dot3(ax,ay,az,bx,by,bz)
  %2114 = call float @dx.op.unary.f32(i32 7, float %2113)  ; Saturate(value)
  %2115 = call float @dx.op.dot3.f32(i32 55, float %2099, float %2098, float %2097, float %2106, float %2107, float %2108)  ; Dot3(ax,ay,az,bx,by,bz)
  %2116 = fmul fast float %2115, 2.000000e+00
  %2117 = fmul fast float %2116, %2106
  %2118 = fmul fast float %2116, %2107
  %2119 = fmul fast float %2116, %2108
  %2120 = fsub fast float %2099, %2117
  %2121 = fsub fast float %2098, %2118
  %2122 = fsub fast float %2097, %2119
  %2123 = call float @dx.op.binary.f32(i32 36, float %2110, float 1.000000e+00)  ; FMin(a,b)
  %2124 = fsub fast float 1.000000e+00, %2110
  %2125 = bitcast float %2124 to i32
  %2126 = sub nsw i32 2129859010, %2125
  %2127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2128 = extractvalue %dx.types.CBufRet.f32 %2127, 0
  %2129 = extractvalue %dx.types.CBufRet.f32 %2127, 1
  %2130 = fadd fast float %2128, %138
  %2131 = fadd fast float %2129, %139
  %2132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2133 = extractvalue %dx.types.CBufRet.i32 %2132, 0
  %2134 = icmp eq i32 %2133, 1
  br i1 %2134, label %2135, label %2170

; <label>:2135                                    ; preds = %2093
  %2136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2137 = extractvalue %dx.types.CBufRet.f32 %2136, 0
  %2138 = extractvalue %dx.types.CBufRet.f32 %2136, 1
  %2139 = fsub fast float %2130, %2137
  %2140 = fsub fast float %2131, %2138
  %2141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2142 = extractvalue %dx.types.CBufRet.f32 %2141, 0
  %2143 = extractvalue %dx.types.CBufRet.f32 %2141, 1
  %2144 = fmul fast float %2139, %2142
  %2145 = fmul fast float %2140, %2143
  %2146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2147 = extractvalue %dx.types.ResRet.f32 %2146, 0
  %2148 = fcmp fast ogt float %2147, 0.000000e+00
  %2149 = extractvalue %dx.types.CBufRet.i32 %2132, 3
  %2150 = icmp ne i32 %2149, 0
  %2151 = and i1 %2148, %2150
  br i1 %2151, label %2152, label %2170, !dx.controlflow.hints !99

; <label>:2152                                    ; preds = %2135
  %2153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2154 = extractvalue %dx.types.CBufRet.f32 %2153, 0
  %2155 = extractvalue %dx.types.CBufRet.f32 %2153, 1
  %2156 = fsub fast float %2130, %2154
  %2157 = fsub fast float %2131, %2155
  %2158 = fmul fast float %2156, %2156
  %2159 = fmul fast float %2157, %2157
  %2160 = fadd fast float %2158, %2159
  %2161 = uitofp i32 %2149 to float
  %2162 = fmul fast float %2161, %2161
  %2163 = fcmp fast ogt float %2160, %2162
  br i1 %2163, label %2170, label %2164

; <label>:2164                                    ; preds = %2152
  %2165 = call float @dx.op.unary.f32(i32 24, float %2160)  ; Sqrt(value)
  %2166 = fsub fast float %2161, %2165
  %2167 = fmul fast float %2166, 0x3F75555560000000
  %2168 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2169 = call float @dx.op.binary.f32(i32 36, float %2168, float %2147)  ; FMin(a,b)
  br label %2170

; <label>:2170                                    ; preds = %2164, %2152, %2135, %2093
  %2171 = phi float [ 1.000000e+00, %2093 ], [ %2169, %2164 ], [ %2147, %2135 ], [ 0.000000e+00, %2152 ]
  %2172 = fcmp fast ogt float %2171, 0.000000e+00
  br i1 %2172, label %2173, label %2271, !dx.controlflow.hints !100

; <label>:2173                                    ; preds = %2170
  %2174 = fadd fast float %169, 5.000000e-01
  %2175 = call float @dx.op.unary.f32(i32 27, float %2174)  ; Round_ni(value)
  %2176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %58, float %167, float %168, float %2175, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2177 = extractvalue %dx.types.ResRet.f32 %2176, 0
  %2178 = extractvalue %dx.types.ResRet.f32 %2176, 1
  %2179 = extractvalue %dx.types.ResRet.f32 %2176, 2
  %2180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2181 = extractvalue %dx.types.CBufRet.f32 %2180, 3
  %2182 = fmul fast float %2181, %2177
  %2183 = fmul fast float %2181, %2178
  %2184 = fmul fast float %2181, %2179
  %2185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %58, float %167, float %168, float %2175, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2186 = extractvalue %dx.types.ResRet.f32 %2185, 0
  %2187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %58, float %167, float %168, float %2175, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2188 = extractvalue %dx.types.ResRet.f32 %2187, 0
  %2189 = extractvalue %dx.types.ResRet.f32 %2187, 1
  %2190 = fmul fast float %2188, 2.000000e+00
  %2191 = fmul fast float %2189, 2.000000e+00
  %2192 = fadd fast float %2190, -1.000000e+00
  %2193 = fadd fast float %2191, -1.000000e+00
  %2194 = fadd fast float %2192, %2193
  %2195 = fmul fast float %2194, 5.000000e-01
  %2196 = fsub fast float %2192, %2193
  %2197 = fmul fast float %2196, 5.000000e-01
  %2198 = call float @dx.op.unary.f32(i32 6, float %2195)  ; FAbs(value)
  %2199 = fsub fast float 1.000000e+00, %2198
  %2200 = call float @dx.op.unary.f32(i32 6, float %2197)  ; FAbs(value)
  %2201 = fsub fast float %2199, %2200
  %2202 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2201)  ; FMax(a,b)
  %2203 = call float @dx.op.dot3.f32(i32 55, float %2195, float %2197, float %2202, float %2195, float %2197, float %2202)  ; Dot3(ax,ay,az,bx,by,bz)
  %2204 = bitcast float %2203 to i32
  %2205 = ashr i32 %2204, 1
  %2206 = sub nsw i32 1597250115, %2205
  %2207 = bitcast i32 %2206 to float
  %2208 = fmul fast float %2207, %2195
  %2209 = fmul fast float %2207, %2197
  %2210 = fmul fast float %2207, %2202
  %2211 = fsub fast float 1.000000e+00, %2186
  %2212 = fdiv fast float %2211, %2210
  %2213 = fmul fast float %2210, %70
  %2214 = fmul fast float %2210, %71
  %2215 = fmul fast float %2210, %72
  %2216 = fmul fast float %2208, %66
  %2217 = fmul fast float %2208, %67
  %2218 = fmul fast float %2208, %68
  %2219 = fadd fast float %2213, %2216
  %2220 = fadd fast float %2214, %2217
  %2221 = fadd fast float %2215, %2218
  %2222 = fmul fast float %2209, %102
  %2223 = fmul fast float %2209, %103
  %2224 = fmul fast float %2209, %104
  %2225 = fadd fast float %2219, %2222
  %2226 = fadd fast float %2220, %2223
  %2227 = fadd fast float %2221, %2224
  %2228 = call float @dx.op.dot3.f32(i32 55, float %2225, float %2226, float %2227, float %2225, float %2226, float %2227)  ; Dot3(ax,ay,az,bx,by,bz)
  %2229 = call float @dx.op.unary.f32(i32 25, float %2228)  ; Rsqrt(value)
  %2230 = fmul fast float %2225, %2229
  %2231 = fmul fast float %2226, %2229
  %2232 = fmul fast float %2227, %2229
  %2233 = call float @dx.op.dot3.f32(i32 55, float %2106, float %2107, float %2108, float %2106, float %2107, float %2108)  ; Dot3(ax,ay,az,bx,by,bz)
  %2234 = call float @dx.op.unary.f32(i32 7, float %2233)  ; Saturate(value)
  %2235 = fmul fast float %2234, 5.000000e-01
  %2236 = fadd fast float %2235, 5.000000e-01
  %2237 = fmul fast float %2236, %2186
  %2238 = call float @dx.op.dot3.f32(i32 55, float %2106, float %2107, float %2108, float %2230, float %2231, float %2232)  ; Dot3(ax,ay,az,bx,by,bz)
  %2239 = call float @dx.op.unary.f32(i32 7, float %2238)  ; Saturate(value)
  %2240 = fmul fast float %2239, %2212
  %2241 = fadd fast float %2237, %2240
  %2242 = fsub fast float 5.000000e-01, %2235
  %2243 = fmul fast float %2242, %2100
  %2244 = fmul fast float %2242, %2101
  %2245 = fmul fast float %2242, %2102
  %2246 = fadd fast float %2241, %2243
  %2247 = fmul fast float %2246, %2182
  %2248 = fadd fast float %2241, %2244
  %2249 = fmul fast float %2248, %2183
  %2250 = fadd fast float %2241, %2245
  %2251 = fmul fast float %2250, %2184
  %2252 = call float @dx.op.dot3.f32(i32 55, float %2120, float %2121, float %2122, float %2106, float %2107, float %2108)  ; Dot3(ax,ay,az,bx,by,bz)
  %2253 = call float @dx.op.unary.f32(i32 7, float %2252)  ; Saturate(value)
  %2254 = fmul fast float %2253, 5.000000e-01
  %2255 = fadd fast float %2254, 5.000000e-01
  %2256 = fmul fast float %2255, %2186
  %2257 = call float @dx.op.dot3.f32(i32 55, float %2120, float %2121, float %2122, float %2230, float %2231, float %2232)  ; Dot3(ax,ay,az,bx,by,bz)
  %2258 = call float @dx.op.unary.f32(i32 7, float %2257)  ; Saturate(value)
  %2259 = fmul fast float %2258, %2212
  %2260 = fadd fast float %2256, %2259
  %2261 = fsub fast float 5.000000e-01, %2254
  %2262 = fmul fast float %2261, %2100
  %2263 = fmul fast float %2261, %2101
  %2264 = fmul fast float %2261, %2102
  %2265 = fadd fast float %2260, %2262
  %2266 = fmul fast float %2265, %2182
  %2267 = fadd fast float %2260, %2263
  %2268 = fmul fast float %2267, %2183
  %2269 = fadd fast float %2260, %2264
  %2270 = fmul fast float %2269, %2184
  br label %2271

; <label>:2271                                    ; preds = %2173, %2170
  %2272 = phi float [ %2266, %2173 ], [ 0.000000e+00, %2170 ]
  %2273 = phi float [ %2268, %2173 ], [ 0.000000e+00, %2170 ]
  %2274 = phi float [ %2270, %2173 ], [ 0.000000e+00, %2170 ]
  %2275 = phi float [ %2247, %2173 ], [ 0.000000e+00, %2170 ]
  %2276 = phi float [ %2249, %2173 ], [ 0.000000e+00, %2170 ]
  %2277 = phi float [ %2251, %2173 ], [ 0.000000e+00, %2170 ]
  %2278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2279 = extractvalue %dx.types.CBufRet.f32 %2278, 0
  %2280 = fcmp fast ogt float %2279, 0.000000e+00
  %2281 = and i1 %2172, %2280
  br i1 %2281, label %2282, label %2486, !dx.controlflow.hints !101

; <label>:2282                                    ; preds = %2271
  %2283 = extractvalue %dx.types.CBufRet.f32 %2127, 2
  %2284 = fadd fast float %2283, %140
  %2285 = fmul fast float %2106, 3.200000e+01
  %2286 = fmul fast float %2107, 3.200000e+01
  %2287 = fadd fast float %2130, %2285
  %2288 = fadd fast float %2131, %2286
  %2289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2290 = extractvalue %dx.types.CBufRet.f32 %2289, 0
  %2291 = extractvalue %dx.types.CBufRet.f32 %2289, 1
  %2292 = fsub fast float %2287, %2290
  %2293 = fsub fast float %2288, %2291
  %2294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2295 = extractvalue %dx.types.CBufRet.f32 %2294, 0
  %2296 = extractvalue %dx.types.CBufRet.f32 %2294, 1
  %2297 = fmul fast float %2292, %2295
  %2298 = fmul fast float %2293, %2296
  %2299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2300 = extractvalue %dx.types.CBufRet.f32 %2299, 0
  %2301 = extractvalue %dx.types.CBufRet.f32 %2299, 1
  %2302 = fsub fast float %2130, %2300
  %2303 = fsub fast float %2131, %2301
  %2304 = fmul fast float %2302, %2302
  %2305 = fmul fast float %2303, %2303
  %2306 = fadd fast float %2304, %2305
  %2307 = call float @dx.op.unary.f32(i32 24, float %2306)  ; Sqrt(value)
  %2308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2309 = extractvalue %dx.types.CBufRet.f32 %2308, 0
  %2310 = extractvalue %dx.types.CBufRet.f32 %2308, 1
  %2311 = fsub fast float %2307, %2309
  %2312 = fdiv fast float %2311, %2310
  %2313 = call float @dx.op.unary.f32(i32 7, float %2312)  ; Saturate(value)
  %2314 = fmul fast float %2313, 2.000000e+00
  %2315 = fsub fast float 3.000000e+00, %2314
  %2316 = fmul fast float %2313, %2313
  %2317 = fmul fast float %2316, %2315
  %2318 = fcmp fast oge float %2297, 0.000000e+00
  %2319 = fcmp fast ole float %2297, 1.000000e+00
  %2320 = and i1 %2319, %2318
  %2321 = fcmp fast oge float %2298, 0.000000e+00
  %2322 = and i1 %2321, %2320
  %2323 = fcmp fast ole float %2298, 1.000000e+00
  %2324 = and i1 %2323, %2322
  %2325 = fcmp fast ogt float %2317, 0.000000e+00
  %2326 = and i1 %2325, %2324
  br i1 %2326, label %2327, label %2450, !dx.controlflow.hints !102

; <label>:2327                                    ; preds = %2282
  %2328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2329 = extractvalue %dx.types.CBufRet.f32 %2328, 2
  %2330 = extractvalue %dx.types.CBufRet.f32 %2328, 3
  %2331 = fmul fast float %2329, %2297
  %2332 = fmul fast float %2330, %2298
  %2333 = call float @dx.op.unary.f32(i32 27, float %2331)  ; Round_ni(value)
  %2334 = call float @dx.op.unary.f32(i32 27, float %2332)  ; Round_ni(value)
  %2335 = fptosi float %2333 to i32
  %2336 = fptosi float %2334 to i32
  %2337 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %2335, i32 %2336, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = lshr i32 %2338, 16
  %2340 = icmp eq i32 %2339, 65535
  br i1 %2340, label %2450, label %2341

; <label>:2341                                    ; preds = %2327
  %2342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2343 = extractvalue %dx.types.CBufRet.f32 %2342, 0
  %2344 = fmul fast float %2343, %2297
  %2345 = extractvalue %dx.types.CBufRet.f32 %2342, 1
  %2346 = fadd fast float %2344, %2345
  %2347 = extractvalue %dx.types.CBufRet.f32 %2342, 2
  %2348 = fmul fast float %2347, %2298
  %2349 = extractvalue %dx.types.CBufRet.f32 %2342, 3
  %2350 = fadd fast float %2348, %2349
  %2351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2346, float %2350, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2352 = extractvalue %dx.types.ResRet.f32 %2351, 0
  %2353 = extractvalue %dx.types.ResRet.f32 %2351, 1
  %2354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2355 = extractvalue %dx.types.CBufRet.f32 %2354, 1
  %2356 = extractvalue %dx.types.CBufRet.f32 %2354, 0
  %2357 = fsub fast float %2355, %2356
  %2358 = fmul fast float %2357, %2352
  %2359 = fadd fast float %2358, %2356
  %2360 = extractvalue %dx.types.CBufRet.f32 %2354, 3
  %2361 = extractvalue %dx.types.CBufRet.f32 %2354, 2
  %2362 = fsub fast float %2360, %2361
  %2363 = fmul fast float %2362, %2353
  %2364 = fadd fast float %2363, %2361
  %2365 = fsub fast float %2284, %2359
  %2366 = fsub fast float %2364, %2359
  %2367 = fdiv fast float %2365, %2366
  %2368 = call float @dx.op.unary.f32(i32 7, float %2367)  ; Saturate(value)
  %2369 = extractvalue %dx.types.CBufRet.f32 %2278, 1
  %2370 = extractvalue %dx.types.CBufRet.f32 %2328, 0
  %2371 = extractvalue %dx.types.CBufRet.f32 %2328, 1
  %2372 = fmul fast float %2370, %2297
  %2373 = fmul fast float %2371, %2298
  %2374 = fmul fast float %2372, 1.250000e-01
  %2375 = fmul fast float %2373, 1.250000e-01
  %2376 = call float @dx.op.unary.f32(i32 27, float %2374)  ; Round_ni(value)
  %2377 = call float @dx.op.unary.f32(i32 27, float %2375)  ; Round_ni(value)
  %2378 = fmul fast float %2376, 8.000000e+00
  %2379 = fmul fast float %2377, 8.000000e+00
  %2380 = fsub fast float %2372, %2378
  %2381 = fsub fast float %2373, %2379
  %2382 = fadd fast float %2380, 5.000000e-01
  %2383 = fadd fast float %2381, 5.000000e-01
  %2384 = and i32 %2339, 255
  %2385 = lshr i32 %2338, 24
  %2386 = mul nuw nsw i32 %2384, 9
  %2387 = uitofp i32 %2386 to float
  %2388 = mul nuw nsw i32 %2385, 9
  %2389 = uitofp i32 %2388 to float
  %2390 = fadd fast float %2382, %2387
  %2391 = fadd fast float %2383, %2389
  %2392 = fdiv fast float %2390, %2279
  %2393 = fdiv fast float %2391, %2369
  %2394 = fmul fast float %2368, 4.375000e-01
  %2395 = fadd fast float %2394, 3.125000e-02
  %2396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2392, float %2393, float %2395, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2397 = extractvalue %dx.types.ResRet.f32 %2396, 0
  %2398 = extractvalue %dx.types.ResRet.f32 %2396, 1
  %2399 = extractvalue %dx.types.ResRet.f32 %2396, 2
  %2400 = fadd fast float %2394, 5.312500e-01
  %2401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2392, float %2393, float %2400, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2402 = extractvalue %dx.types.ResRet.f32 %2401, 0
  %2403 = extractvalue %dx.types.ResRet.f32 %2401, 1
  %2404 = extractvalue %dx.types.ResRet.f32 %2401, 2
  %2405 = fmul fast float %2402, 2.000000e+00
  %2406 = fmul fast float %2403, 2.000000e+00
  %2407 = fmul fast float %2404, 2.000000e+00
  %2408 = fadd fast float %2405, -1.000000e+00
  %2409 = fadd fast float %2406, -1.000000e+00
  %2410 = fadd fast float %2407, -1.000000e+00
  %2411 = fmul fast float %2408, %2408
  %2412 = fmul fast float %2409, %2409
  %2413 = fadd fast float %2411, %2412
  %2414 = fmul fast float %2410, %2410
  %2415 = fadd fast float %2413, %2414
  %2416 = call float @dx.op.unary.f32(i32 24, float %2415)  ; Sqrt(value)
  %2417 = fcmp fast ogt float %2416, 0.000000e+00
  br i1 %2417, label %2418, label %2422

; <label>:2418                                    ; preds = %2341
  %2419 = fdiv fast float %2408, %2416
  %2420 = fdiv fast float %2409, %2416
  %2421 = fdiv fast float %2410, %2416
  br label %2422

; <label>:2422                                    ; preds = %2418, %2341
  %2423 = phi float [ %2419, %2418 ], [ 0.000000e+00, %2341 ]
  %2424 = phi float [ %2420, %2418 ], [ 0.000000e+00, %2341 ]
  %2425 = phi float [ %2421, %2418 ], [ 0.000000e+00, %2341 ]
  %2426 = call float @dx.op.dot3.f32(i32 55, float %2423, float %2424, float %2425, float %2106, float %2107, float %2108)  ; Dot3(ax,ay,az,bx,by,bz)
  %2427 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2426)  ; FMax(a,b)
  %2428 = fmul fast float %2427, 0x400C5BF8A0000000
  %2429 = fmul fast float %2397, %2317
  %2430 = fmul fast float %2429, %2428
  %2431 = fmul fast float %2398, %2317
  %2432 = fmul fast float %2431, %2428
  %2433 = fmul fast float %2399, %2317
  %2434 = fmul fast float %2433, %2428
  %2435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2436 = extractvalue %dx.types.CBufRet.f32 %2435, 3
  %2437 = fmul fast float %2430, %2436
  %2438 = fmul fast float %2432, %2436
  %2439 = fmul fast float %2434, %2436
  %2440 = fcmp fast ogt float %2284, %2364
  br i1 %2440, label %2441, label %2450

; <label>:2441                                    ; preds = %2422
  %2442 = fmul fast float %2366, 0x3FC24924A0000000
  %2443 = fsub fast float %2284, %2364
  %2444 = fdiv fast float %2443, %2442
  %2445 = call float @dx.op.unary.f32(i32 7, float %2444)  ; Saturate(value)
  %2446 = fsub fast float 1.000000e+00, %2445
  %2447 = fmul fast float %2446, %2437
  %2448 = fmul fast float %2446, %2438
  %2449 = fmul fast float %2446, %2439
  br label %2450

; <label>:2450                                    ; preds = %2441, %2422, %2327, %2282
  %2451 = phi float [ %2449, %2441 ], [ %2439, %2422 ], [ 0.000000e+00, %2327 ], [ 0.000000e+00, %2282 ]
  %2452 = phi float [ %2448, %2441 ], [ %2438, %2422 ], [ 0.000000e+00, %2327 ], [ 0.000000e+00, %2282 ]
  %2453 = phi float [ %2447, %2441 ], [ %2437, %2422 ], [ 0.000000e+00, %2327 ], [ 0.000000e+00, %2282 ]
  %2454 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2453)  ; FMax(a,b)
  %2455 = fmul fast float %2454, 0x3FD20DD760000000
  %2456 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2120, float %2121, float %2122)  ; Dot3(ax,ay,az,bx,by,bz)
  %2457 = fmul fast float %2456, 0x3FDF454380000000
  %2458 = fmul fast float %2456, %2456
  %2459 = fmul fast float %2458, 0x3FEE471020000000
  %2460 = fadd fast float %2459, 0xBFD42F6020000000
  %2461 = call float @dx.op.dot3.f32(i32 55, float %2454, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2457, float %2460)  ; Dot3(ax,ay,az,bx,by,bz)
  %2462 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2452)  ; FMax(a,b)
  %2463 = fmul fast float %2462, 0x3FD20DD760000000
  %2464 = call float @dx.op.dot3.f32(i32 55, float %2462, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2457, float %2460)  ; Dot3(ax,ay,az,bx,by,bz)
  %2465 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2451)  ; FMax(a,b)
  %2466 = fmul fast float %2465, 0x3FD20DD760000000
  %2467 = call float @dx.op.dot3.f32(i32 55, float %2465, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2457, float %2460)  ; Dot3(ax,ay,az,bx,by,bz)
  %2468 = call float @dx.op.binary.f32(i32 35, float %2455, float 0.000000e+00)  ; FMax(a,b)
  %2469 = call float @dx.op.binary.f32(i32 35, float %2463, float 0.000000e+00)  ; FMax(a,b)
  %2470 = call float @dx.op.binary.f32(i32 35, float %2466, float 0.000000e+00)  ; FMax(a,b)
  %2471 = call float @dx.op.binary.f32(i32 35, float %2461, float 0.000000e+00)  ; FMax(a,b)
  %2472 = call float @dx.op.binary.f32(i32 35, float %2464, float 0.000000e+00)  ; FMax(a,b)
  %2473 = call float @dx.op.binary.f32(i32 35, float %2467, float 0.000000e+00)  ; FMax(a,b)
  %2474 = fmul fast float %2468, %2171
  %2475 = fmul fast float %2469, %2171
  %2476 = fmul fast float %2470, %2171
  %2477 = fadd fast float %2474, %2275
  %2478 = fadd fast float %2475, %2276
  %2479 = fadd fast float %2476, %2277
  %2480 = fmul fast float %2471, %2171
  %2481 = fmul fast float %2472, %2171
  %2482 = fmul fast float %2473, %2171
  %2483 = fadd fast float %2480, %2272
  %2484 = fadd fast float %2481, %2273
  %2485 = fadd fast float %2482, %2274
  br label %2486

; <label>:2486                                    ; preds = %2450, %2271
  %2487 = phi float [ %2483, %2450 ], [ %2272, %2271 ]
  %2488 = phi float [ %2484, %2450 ], [ %2273, %2271 ]
  %2489 = phi float [ %2485, %2450 ], [ %2274, %2271 ]
  %2490 = phi float [ %2477, %2450 ], [ %2275, %2271 ]
  %2491 = phi float [ %2478, %2450 ], [ %2276, %2271 ]
  %2492 = phi float [ %2479, %2450 ], [ %2277, %2271 ]
  %2493 = fcmp fast olt float %2171, 1.000000e+00
  br i1 %2493, label %2494, label %3312, !dx.controlflow.hints !103

; <label>:2494                                    ; preds = %2486
  %2495 = extractvalue %dx.types.CBufRet.f32 %2127, 2
  %2496 = fadd fast float %2495, %140
  %2497 = fmul fast float %2106, 3.200000e+01
  %2498 = fmul fast float %2107, 3.200000e+01
  %2499 = fadd fast float %2130, %2497
  %2500 = fadd fast float %2131, %2498
  %2501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2502 = extractvalue %dx.types.CBufRet.f32 %2501, 0
  %2503 = extractvalue %dx.types.CBufRet.f32 %2501, 1
  %2504 = fsub fast float %2499, %2502
  %2505 = fsub fast float %2500, %2503
  %2506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2507 = extractvalue %dx.types.CBufRet.f32 %2506, 0
  %2508 = extractvalue %dx.types.CBufRet.f32 %2506, 1
  %2509 = fmul fast float %2504, %2507
  %2510 = fmul fast float %2505, %2508
  %2511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2512 = extractvalue %dx.types.CBufRet.f32 %2511, 0
  %2513 = fmul fast float %2509, %2512
  %2514 = extractvalue %dx.types.CBufRet.f32 %2511, 1
  %2515 = fadd fast float %2513, %2514
  %2516 = extractvalue %dx.types.CBufRet.f32 %2511, 2
  %2517 = fmul fast float %2516, %2510
  %2518 = extractvalue %dx.types.CBufRet.f32 %2511, 3
  %2519 = fadd fast float %2517, %2518
  %2520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2515, float %2519, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2521 = extractvalue %dx.types.ResRet.f32 %2520, 0
  %2522 = extractvalue %dx.types.ResRet.f32 %2520, 1
  %2523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2524 = extractvalue %dx.types.CBufRet.f32 %2523, 1
  %2525 = extractvalue %dx.types.CBufRet.f32 %2523, 0
  %2526 = fsub fast float %2524, %2525
  %2527 = fmul fast float %2526, %2521
  %2528 = fadd fast float %2527, %2525
  %2529 = extractvalue %dx.types.CBufRet.f32 %2523, 3
  %2530 = extractvalue %dx.types.CBufRet.f32 %2523, 2
  %2531 = fsub fast float %2529, %2530
  %2532 = fmul fast float %2531, %2522
  %2533 = fadd fast float %2532, %2530
  %2534 = fsub fast float %2496, %2528
  %2535 = fsub fast float %2533, %2528
  %2536 = fdiv fast float %2534, %2535
  %2537 = call float @dx.op.unary.f32(i32 7, float %2536)  ; Saturate(value)
  %2538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2539 = extractvalue %dx.types.CBufRet.f32 %2538, 0
  %2540 = fmul fast float %2539, %2537
  %2541 = extractvalue %dx.types.CBufRet.f32 %2538, 1
  %2542 = fadd fast float %2540, %2541
  %2543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %58, float %2515, float %2519, float %2542, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2544 = extractvalue %dx.types.ResRet.f32 %2543, 0
  %2545 = extractvalue %dx.types.ResRet.f32 %2543, 1
  %2546 = extractvalue %dx.types.ResRet.f32 %2543, 2
  %2547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2548 = extractvalue %dx.types.CBufRet.f32 %2547, 0
  %2549 = extractvalue %dx.types.CBufRet.f32 %2547, 1
  %2550 = extractvalue %dx.types.CBufRet.f32 %2547, 2
  %2551 = fmul fast float %2548, %2544
  %2552 = fmul fast float %2549, %2545
  %2553 = fmul fast float %2550, %2546
  %2554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2555 = extractvalue %dx.types.CBufRet.f32 %2554, 0
  %2556 = extractvalue %dx.types.CBufRet.f32 %2554, 1
  %2557 = extractvalue %dx.types.CBufRet.f32 %2554, 2
  %2558 = fadd fast float %2551, %2555
  %2559 = fadd fast float %2552, %2556
  %2560 = fadd fast float %2553, %2557
  %2561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2562 = extractvalue %dx.types.CBufRet.f32 %2561, 0
  %2563 = fmul fast float %2562, %2509
  %2564 = extractvalue %dx.types.CBufRet.f32 %2561, 1
  %2565 = fadd fast float %2563, %2564
  %2566 = extractvalue %dx.types.CBufRet.f32 %2561, 2
  %2567 = fmul fast float %2566, %2510
  %2568 = extractvalue %dx.types.CBufRet.f32 %2561, 3
  %2569 = fadd fast float %2567, %2568
  %2570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2571 = extractvalue %dx.types.CBufRet.f32 %2570, 0
  %2572 = extractvalue %dx.types.CBufRet.f32 %2570, 1
  %2573 = extractvalue %dx.types.CBufRet.f32 %2570, 2
  %2574 = extractvalue %dx.types.CBufRet.f32 %2570, 3
  %2575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2576 = extractvalue %dx.types.CBufRet.f32 %2575, 0
  %2577 = extractvalue %dx.types.CBufRet.f32 %2575, 1
  %2578 = extractvalue %dx.types.CBufRet.f32 %2575, 2
  %2579 = extractvalue %dx.types.CBufRet.f32 %2575, 3
  %2580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2565, float %2569, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2581 = extractvalue %dx.types.ResRet.f32 %2580, 0
  %2582 = extractvalue %dx.types.ResRet.f32 %2580, 1
  %2583 = extractvalue %dx.types.ResRet.f32 %2580, 2
  %2584 = extractvalue %dx.types.ResRet.f32 %2580, 3
  %2585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2565, float %2569, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2586 = extractvalue %dx.types.ResRet.f32 %2585, 0
  %2587 = extractvalue %dx.types.ResRet.f32 %2585, 1
  %2588 = extractvalue %dx.types.ResRet.f32 %2585, 2
  %2589 = extractvalue %dx.types.ResRet.f32 %2585, 3
  %2590 = fmul fast float %2581, %2558
  %2591 = fmul fast float %2586, %2558
  %2592 = fmul fast float %2588, %2558
  %2593 = fmul fast float %2584, %2558
  %2594 = fadd fast float %2590, %2571
  %2595 = fadd fast float %2591, %2572
  %2596 = fadd fast float %2592, %2573
  %2597 = fadd fast float %2593, %2574
  %2598 = fmul fast float %2582, %2558
  %2599 = fmul fast float %2587, %2558
  %2600 = fadd fast float %2598, %2576
  %2601 = fadd fast float %2599, %2577
  %2602 = fmul fast float %2583, %2558
  %2603 = fmul fast float %2589, %2558
  %2604 = fadd fast float %2602, %2578
  %2605 = fadd fast float %2603, %2579
  %2606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2565, float %2569, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2607 = extractvalue %dx.types.ResRet.f32 %2606, 0
  %2608 = extractvalue %dx.types.ResRet.f32 %2606, 1
  %2609 = extractvalue %dx.types.ResRet.f32 %2606, 2
  %2610 = extractvalue %dx.types.ResRet.f32 %2606, 3
  %2611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2565, float %2569, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2612 = extractvalue %dx.types.ResRet.f32 %2611, 0
  %2613 = extractvalue %dx.types.ResRet.f32 %2611, 1
  %2614 = extractvalue %dx.types.ResRet.f32 %2611, 2
  %2615 = extractvalue %dx.types.ResRet.f32 %2611, 3
  %2616 = fmul fast float %2607, %2559
  %2617 = fmul fast float %2612, %2559
  %2618 = fmul fast float %2614, %2559
  %2619 = fmul fast float %2610, %2559
  %2620 = fadd fast float %2594, %2616
  %2621 = fadd fast float %2595, %2617
  %2622 = fadd fast float %2596, %2618
  %2623 = fadd fast float %2597, %2619
  %2624 = fmul fast float %2608, %2559
  %2625 = fmul fast float %2613, %2559
  %2626 = fadd fast float %2600, %2624
  %2627 = fadd fast float %2601, %2625
  %2628 = fmul fast float %2609, %2559
  %2629 = fmul fast float %2615, %2559
  %2630 = fadd fast float %2604, %2628
  %2631 = fadd fast float %2605, %2629
  %2632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2565, float %2569, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2633 = extractvalue %dx.types.ResRet.f32 %2632, 0
  %2634 = extractvalue %dx.types.ResRet.f32 %2632, 1
  %2635 = extractvalue %dx.types.ResRet.f32 %2632, 2
  %2636 = extractvalue %dx.types.ResRet.f32 %2632, 3
  %2637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2565, float %2569, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2638 = extractvalue %dx.types.ResRet.f32 %2637, 0
  %2639 = extractvalue %dx.types.ResRet.f32 %2637, 1
  %2640 = extractvalue %dx.types.ResRet.f32 %2637, 2
  %2641 = extractvalue %dx.types.ResRet.f32 %2637, 3
  %2642 = fmul fast float %2633, %2560
  %2643 = fmul fast float %2638, %2560
  %2644 = fmul fast float %2640, %2560
  %2645 = fmul fast float %2636, %2560
  %2646 = fadd fast float %2620, %2642
  %2647 = fadd fast float %2621, %2643
  %2648 = fadd fast float %2622, %2644
  %2649 = fadd fast float %2623, %2645
  %2650 = fmul fast float %2634, %2560
  %2651 = fmul fast float %2639, %2560
  %2652 = fadd fast float %2626, %2650
  %2653 = fadd fast float %2627, %2651
  %2654 = fmul fast float %2635, %2560
  %2655 = fmul fast float %2641, %2560
  %2656 = fadd fast float %2630, %2654
  %2657 = fadd fast float %2631, %2655
  %2658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2659 = extractvalue %dx.types.CBufRet.f32 %2658, 0
  %2660 = fsub fast float %2130, %2659
  %2661 = fsub fast float %2502, %2130
  %2662 = call float @dx.op.binary.f32(i32 35, float %2661, float %2660)  ; FMax(a,b)
  %2663 = extractvalue %dx.types.CBufRet.f32 %2658, 1
  %2664 = fsub fast float %2131, %2663
  %2665 = fsub fast float %2503, %2131
  %2666 = call float @dx.op.binary.f32(i32 35, float %2665, float %2664)  ; FMax(a,b)
  %2667 = call float @dx.op.binary.f32(i32 35, float %2662, float %2666)  ; FMax(a,b)
  %2668 = extractvalue %dx.types.CBufRet.f32 %2506, 3
  %2669 = fmul fast float %2668, %2667
  %2670 = call float @dx.op.unary.f32(i32 7, float %2669)  ; Saturate(value)
  %2671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2672 = extractvalue %dx.types.CBufRet.f32 %2671, 0
  %2673 = extractvalue %dx.types.CBufRet.f32 %2671, 1
  %2674 = extractvalue %dx.types.CBufRet.f32 %2671, 2
  %2675 = extractvalue %dx.types.CBufRet.f32 %2671, 3
  %2676 = fsub fast float %2672, %2646
  %2677 = fsub fast float %2673, %2647
  %2678 = fsub fast float %2674, %2648
  %2679 = fsub fast float %2675, %2649
  %2680 = fmul fast float %2676, %2670
  %2681 = fmul fast float %2677, %2670
  %2682 = fmul fast float %2678, %2670
  %2683 = fmul fast float %2679, %2670
  %2684 = fadd fast float %2680, %2646
  %2685 = fadd fast float %2681, %2647
  %2686 = fadd fast float %2682, %2648
  %2687 = fadd fast float %2683, %2649
  %2688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2689 = extractvalue %dx.types.CBufRet.f32 %2688, 0
  %2690 = extractvalue %dx.types.CBufRet.f32 %2688, 1
  %2691 = fsub fast float %2689, %2652
  %2692 = fsub fast float %2690, %2653
  %2693 = fmul fast float %2691, %2670
  %2694 = fmul fast float %2692, %2670
  %2695 = fadd fast float %2693, %2652
  %2696 = fadd fast float %2694, %2653
  %2697 = extractvalue %dx.types.CBufRet.f32 %2688, 2
  %2698 = extractvalue %dx.types.CBufRet.f32 %2688, 3
  %2699 = fsub fast float %2697, %2656
  %2700 = fsub fast float %2698, %2657
  %2701 = fmul fast float %2699, %2670
  %2702 = fmul fast float %2700, %2670
  %2703 = fadd fast float %2701, %2656
  %2704 = fadd fast float %2702, %2657
  %2705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2706 = extractvalue %dx.types.CBufRet.f32 %2705, 0
  %2707 = fmul fast float %2706, %2684
  %2708 = fmul fast float %2706, %2685
  %2709 = fmul fast float %2706, %2686
  %2710 = fmul fast float %2706, %2687
  %2711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2712 = extractvalue %dx.types.CBufRet.f32 %2711, 0
  %2713 = fmul fast float %2712, %2695
  %2714 = fmul fast float %2712, %2696
  %2715 = fadd fast float %2713, %2707
  %2716 = fadd fast float %2714, %2709
  %2717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2718 = extractvalue %dx.types.CBufRet.f32 %2717, 0
  %2719 = fmul fast float %2718, %2703
  %2720 = fmul fast float %2718, %2704
  %2721 = fadd fast float %2715, %2719
  %2722 = fadd fast float %2716, %2720
  %2723 = extractvalue %dx.types.CBufRet.f32 %2705, 1
  %2724 = fmul fast float %2723, %2684
  %2725 = fmul fast float %2723, %2685
  %2726 = fmul fast float %2723, %2686
  %2727 = fmul fast float %2723, %2687
  %2728 = extractvalue %dx.types.CBufRet.f32 %2711, 1
  %2729 = fmul fast float %2728, %2695
  %2730 = fmul fast float %2728, %2696
  %2731 = fadd fast float %2729, %2724
  %2732 = fadd fast float %2730, %2726
  %2733 = extractvalue %dx.types.CBufRet.f32 %2717, 1
  %2734 = fmul fast float %2733, %2703
  %2735 = fmul fast float %2733, %2704
  %2736 = fadd fast float %2731, %2734
  %2737 = fadd fast float %2732, %2735
  %2738 = extractvalue %dx.types.CBufRet.f32 %2705, 2
  %2739 = fmul fast float %2738, %2684
  %2740 = fmul fast float %2738, %2685
  %2741 = fmul fast float %2738, %2686
  %2742 = fmul fast float %2738, %2687
  %2743 = extractvalue %dx.types.CBufRet.f32 %2711, 2
  %2744 = fmul fast float %2743, %2695
  %2745 = fmul fast float %2743, %2696
  %2746 = fadd fast float %2744, %2739
  %2747 = fadd fast float %2745, %2741
  %2748 = extractvalue %dx.types.CBufRet.f32 %2717, 2
  %2749 = fmul fast float %2748, %2703
  %2750 = fmul fast float %2748, %2704
  %2751 = fadd fast float %2746, %2749
  %2752 = fadd fast float %2747, %2750
  %2753 = fmul fast float %2740, %2740
  %2754 = fmul fast float %2752, %2752
  %2755 = fmul fast float %2742, %2742
  %2756 = fadd fast float %2755, %2753
  %2757 = fadd fast float %2756, %2754
  %2758 = call float @dx.op.unary.f32(i32 24, float %2757)  ; Sqrt(value)
  %2759 = fcmp fast ugt float %2758, 0.000000e+00
  br i1 %2759, label %2760, label %2775

; <label>:2760                                    ; preds = %2494
  %2761 = fsub fast float -0.000000e+00, %2742
  %2762 = fdiv fast float %2761, %2758
  %2763 = fsub fast float -0.000000e+00, %2740
  %2764 = fdiv fast float %2763, %2758
  %2765 = fdiv fast float %2752, %2758
  %2766 = fmul fast float %2751, 0x3FE279A760000000
  %2767 = fmul fast float %2764, %2740
  %2768 = fmul fast float %2765, %2752
  %2769 = fmul fast float %2762, %2742
  %2770 = fadd fast float %2767, %2769
  %2771 = fsub fast float %2770, %2768
  %2772 = call float @dx.op.unary.f32(i32 6, float %2771)  ; FAbs(value)
  %2773 = fadd fast float %2772, 0x3DDB7CDFE0000000
  %2774 = fdiv fast float %2766, %2773
  br label %2775

; <label>:2775                                    ; preds = %2760, %2494
  %2776 = phi float [ %2774, %2760 ], [ 1.000000e+00, %2494 ]
  %2777 = fmul fast float %2725, %2725
  %2778 = fmul fast float %2737, %2737
  %2779 = fmul fast float %2727, %2727
  %2780 = fadd fast float %2779, %2777
  %2781 = fadd fast float %2780, %2778
  %2782 = call float @dx.op.unary.f32(i32 24, float %2781)  ; Sqrt(value)
  %2783 = fcmp fast ugt float %2782, 0.000000e+00
  br i1 %2783, label %2784, label %2799

; <label>:2784                                    ; preds = %2775
  %2785 = fsub fast float -0.000000e+00, %2727
  %2786 = fdiv fast float %2785, %2782
  %2787 = fsub fast float -0.000000e+00, %2725
  %2788 = fdiv fast float %2787, %2782
  %2789 = fdiv fast float %2737, %2782
  %2790 = fmul fast float %2736, 0x3FE279A760000000
  %2791 = fmul fast float %2788, %2725
  %2792 = fmul fast float %2789, %2737
  %2793 = fmul fast float %2786, %2727
  %2794 = fadd fast float %2791, %2793
  %2795 = fsub fast float %2794, %2792
  %2796 = call float @dx.op.unary.f32(i32 6, float %2795)  ; FAbs(value)
  %2797 = fadd fast float %2796, 0x3DDB7CDFE0000000
  %2798 = fdiv fast float %2790, %2797
  br label %2799

; <label>:2799                                    ; preds = %2784, %2775
  %2800 = phi float [ %2798, %2784 ], [ 1.000000e+00, %2775 ]
  %2801 = call float @dx.op.binary.f32(i32 36, float %2800, float %2776)  ; FMin(a,b)
  %2802 = fmul fast float %2708, %2708
  %2803 = fmul fast float %2722, %2722
  %2804 = fmul fast float %2710, %2710
  %2805 = fadd fast float %2804, %2802
  %2806 = fadd fast float %2805, %2803
  %2807 = call float @dx.op.unary.f32(i32 24, float %2806)  ; Sqrt(value)
  %2808 = fcmp fast ugt float %2807, 0.000000e+00
  br i1 %2808, label %2809, label %2824

; <label>:2809                                    ; preds = %2799
  %2810 = fsub fast float -0.000000e+00, %2710
  %2811 = fdiv fast float %2810, %2807
  %2812 = fsub fast float -0.000000e+00, %2708
  %2813 = fdiv fast float %2812, %2807
  %2814 = fdiv fast float %2722, %2807
  %2815 = fmul fast float %2721, 0x3FE279A760000000
  %2816 = fmul fast float %2813, %2708
  %2817 = fmul fast float %2814, %2722
  %2818 = fmul fast float %2811, %2710
  %2819 = fadd fast float %2816, %2818
  %2820 = fsub fast float %2819, %2817
  %2821 = call float @dx.op.unary.f32(i32 6, float %2820)  ; FAbs(value)
  %2822 = fadd fast float %2821, 0x3DDB7CDFE0000000
  %2823 = fdiv fast float %2815, %2822
  br label %2824

; <label>:2824                                    ; preds = %2809, %2799
  %2825 = phi float [ %2823, %2809 ], [ 1.000000e+00, %2799 ]
  %2826 = call float @dx.op.binary.f32(i32 36, float %2825, float %2801)  ; FMin(a,b)
  %2827 = call float @dx.op.unary.f32(i32 7, float %2826)  ; Saturate(value)
  %2828 = fcmp fast olt float %2827, 1.000000e+00
  br i1 %2828, label %2829, label %2839

; <label>:2829                                    ; preds = %2824
  %2830 = fmul fast float %2827, %2708
  %2831 = fmul fast float %2827, %2722
  %2832 = fmul fast float %2827, %2710
  %2833 = fmul fast float %2827, %2725
  %2834 = fmul fast float %2827, %2737
  %2835 = fmul fast float %2827, %2727
  %2836 = fmul fast float %2827, %2740
  %2837 = fmul fast float %2827, %2752
  %2838 = fmul fast float %2827, %2742
  br label %2839

; <label>:2839                                    ; preds = %2829, %2824
  %2840 = phi float [ %2836, %2829 ], [ %2740, %2824 ]
  %2841 = phi float [ %2837, %2829 ], [ %2752, %2824 ]
  %2842 = phi float [ %2838, %2829 ], [ %2742, %2824 ]
  %2843 = phi float [ %2833, %2829 ], [ %2725, %2824 ]
  %2844 = phi float [ %2834, %2829 ], [ %2737, %2824 ]
  %2845 = phi float [ %2835, %2829 ], [ %2727, %2824 ]
  %2846 = phi float [ %2830, %2829 ], [ %2708, %2824 ]
  %2847 = phi float [ %2831, %2829 ], [ %2722, %2824 ]
  %2848 = phi float [ %2832, %2829 ], [ %2710, %2824 ]
  %2849 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2721)  ; FMax(a,b)
  %2850 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2736)  ; FMax(a,b)
  %2851 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2751)  ; FMax(a,b)
  %2852 = fcmp fast oge float %2509, 0.000000e+00
  %2853 = and i1 %2852, %2280
  %2854 = fcmp fast ole float %2509, 1.000000e+00
  %2855 = and i1 %2854, %2853
  %2856 = fcmp fast oge float %2510, 0.000000e+00
  %2857 = and i1 %2856, %2855
  %2858 = fcmp fast ole float %2510, 1.000000e+00
  %2859 = and i1 %2858, %2857
  br i1 %2859, label %2860, label %3005, !dx.controlflow.hints !104

; <label>:2860                                    ; preds = %2839
  %2861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2862 = extractvalue %dx.types.CBufRet.f32 %2861, 2
  %2863 = extractvalue %dx.types.CBufRet.f32 %2861, 3
  %2864 = fmul fast float %2862, %2509
  %2865 = fmul fast float %2863, %2510
  %2866 = call float @dx.op.unary.f32(i32 27, float %2864)  ; Round_ni(value)
  %2867 = call float @dx.op.unary.f32(i32 27, float %2865)  ; Round_ni(value)
  %2868 = fptosi float %2866 to i32
  %2869 = fptosi float %2867 to i32
  %2870 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %2868, i32 %2869, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = and i32 %2871, 65535
  %2873 = lshr i32 %2871, 16
  %2874 = icmp eq i32 %2872, 65535
  br i1 %2874, label %2911, label %2875

; <label>:2875                                    ; preds = %2860
  %2876 = extractvalue %dx.types.CBufRet.f32 %2278, 1
  %2877 = extractvalue %dx.types.CBufRet.f32 %2861, 0
  %2878 = extractvalue %dx.types.CBufRet.f32 %2861, 1
  %2879 = fmul fast float %2877, %2509
  %2880 = fmul fast float %2878, %2510
  %2881 = fmul fast float %2879, 1.250000e-01
  %2882 = fmul fast float %2880, 1.250000e-01
  %2883 = call float @dx.op.unary.f32(i32 27, float %2881)  ; Round_ni(value)
  %2884 = call float @dx.op.unary.f32(i32 27, float %2882)  ; Round_ni(value)
  %2885 = fmul fast float %2883, 8.000000e+00
  %2886 = fmul fast float %2884, 8.000000e+00
  %2887 = and i32 %2871, 255
  %2888 = lshr i32 %2871, 8
  %2889 = and i32 %2888, 255
  %2890 = mul nuw nsw i32 %2887, 9
  %2891 = uitofp i32 %2890 to float
  %2892 = mul nuw nsw i32 %2889, 9
  %2893 = uitofp i32 %2892 to float
  %2894 = fadd fast float %2891, 5.000000e-01
  %2895 = fadd fast float %2894, %2879
  %2896 = fsub fast float %2895, %2885
  %2897 = fadd fast float %2893, 5.000000e-01
  %2898 = fadd fast float %2897, %2880
  %2899 = fsub fast float %2898, %2886
  %2900 = fdiv fast float %2896, %2279
  %2901 = fdiv fast float %2899, %2876
  %2902 = fmul fast float %2537, 4.375000e-01
  %2903 = fadd fast float %2902, 3.125000e-02
  %2904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2900, float %2901, float %2903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2905 = extractvalue %dx.types.ResRet.f32 %2904, 0
  %2906 = extractvalue %dx.types.ResRet.f32 %2904, 1
  %2907 = extractvalue %dx.types.ResRet.f32 %2904, 2
  %2908 = fadd fast float %2905, %2849
  %2909 = fadd fast float %2906, %2850
  %2910 = fadd fast float %2907, %2851
  br label %2911

; <label>:2911                                    ; preds = %2875, %2860
  %2912 = phi float [ %2910, %2875 ], [ %2851, %2860 ]
  %2913 = phi float [ %2909, %2875 ], [ %2850, %2860 ]
  %2914 = phi float [ %2908, %2875 ], [ %2849, %2860 ]
  %2915 = icmp eq i32 %2873, 65535
  br i1 %2915, label %3005, label %2916

; <label>:2916                                    ; preds = %2911
  %2917 = extractvalue %dx.types.CBufRet.f32 %2278, 1
  %2918 = extractvalue %dx.types.CBufRet.f32 %2861, 0
  %2919 = extractvalue %dx.types.CBufRet.f32 %2861, 1
  %2920 = fmul fast float %2918, %2509
  %2921 = fmul fast float %2919, %2510
  %2922 = fmul fast float %2920, 1.250000e-01
  %2923 = fmul fast float %2921, 1.250000e-01
  %2924 = call float @dx.op.unary.f32(i32 27, float %2922)  ; Round_ni(value)
  %2925 = call float @dx.op.unary.f32(i32 27, float %2923)  ; Round_ni(value)
  %2926 = fmul fast float %2924, 8.000000e+00
  %2927 = fmul fast float %2925, 8.000000e+00
  %2928 = fsub fast float %2920, %2926
  %2929 = fsub fast float %2921, %2927
  %2930 = fadd fast float %2928, 5.000000e-01
  %2931 = fadd fast float %2929, 5.000000e-01
  %2932 = and i32 %2873, 255
  %2933 = lshr i32 %2871, 24
  %2934 = mul nuw nsw i32 %2932, 9
  %2935 = uitofp i32 %2934 to float
  %2936 = mul nuw nsw i32 %2933, 9
  %2937 = uitofp i32 %2936 to float
  %2938 = fadd fast float %2930, %2935
  %2939 = fadd fast float %2931, %2937
  %2940 = fdiv fast float %2938, %2279
  %2941 = fdiv fast float %2939, %2917
  %2942 = fmul fast float %2537, 4.375000e-01
  %2943 = fadd fast float %2942, 3.125000e-02
  %2944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2940, float %2941, float %2943, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2945 = extractvalue %dx.types.ResRet.f32 %2944, 0
  %2946 = extractvalue %dx.types.ResRet.f32 %2944, 1
  %2947 = extractvalue %dx.types.ResRet.f32 %2944, 2
  %2948 = fadd fast float %2942, 5.312500e-01
  %2949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2940, float %2941, float %2948, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2950 = extractvalue %dx.types.ResRet.f32 %2949, 0
  %2951 = extractvalue %dx.types.ResRet.f32 %2949, 1
  %2952 = extractvalue %dx.types.ResRet.f32 %2949, 2
  %2953 = fmul fast float %2950, 2.000000e+00
  %2954 = fmul fast float %2951, 2.000000e+00
  %2955 = fmul fast float %2952, 2.000000e+00
  %2956 = fadd fast float %2953, -1.000000e+00
  %2957 = fadd fast float %2954, -1.000000e+00
  %2958 = fadd fast float %2955, -1.000000e+00
  %2959 = fmul fast float %2956, %2956
  %2960 = fmul fast float %2957, %2957
  %2961 = fadd fast float %2959, %2960
  %2962 = fmul fast float %2958, %2958
  %2963 = fadd fast float %2961, %2962
  %2964 = call float @dx.op.unary.f32(i32 24, float %2963)  ; Sqrt(value)
  %2965 = fcmp fast ogt float %2964, 0.000000e+00
  br i1 %2965, label %2966, label %2970

; <label>:2966                                    ; preds = %2916
  %2967 = fdiv fast float %2956, %2964
  %2968 = fdiv fast float %2957, %2964
  %2969 = fdiv fast float %2958, %2964
  br label %2970

; <label>:2970                                    ; preds = %2966, %2916
  %2971 = phi float [ %2967, %2966 ], [ 0.000000e+00, %2916 ]
  %2972 = phi float [ %2968, %2966 ], [ 0.000000e+00, %2916 ]
  %2973 = phi float [ %2969, %2966 ], [ 0.000000e+00, %2916 ]
  %2974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2975 = extractvalue %dx.types.CBufRet.f32 %2974, 0
  %2976 = extractvalue %dx.types.CBufRet.f32 %2974, 1
  %2977 = fsub fast float %2130, %2975
  %2978 = fsub fast float %2131, %2976
  %2979 = fmul fast float %2977, %2977
  %2980 = fmul fast float %2978, %2978
  %2981 = fadd fast float %2979, %2980
  %2982 = call float @dx.op.unary.f32(i32 24, float %2981)  ; Sqrt(value)
  %2983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2984 = extractvalue %dx.types.CBufRet.f32 %2983, 0
  %2985 = extractvalue %dx.types.CBufRet.f32 %2983, 1
  %2986 = fsub fast float %2982, %2984
  %2987 = fdiv fast float %2986, %2985
  %2988 = call float @dx.op.unary.f32(i32 7, float %2987)  ; Saturate(value)
  %2989 = fmul fast float %2988, 2.000000e+00
  %2990 = fsub fast float 3.000000e+00, %2989
  %2991 = fmul fast float %2988, %2988
  %2992 = fmul fast float %2991, %2990
  %2993 = call float @dx.op.dot3.f32(i32 55, float %2971, float %2972, float %2973, float %2106, float %2107, float %2108)  ; Dot3(ax,ay,az,bx,by,bz)
  %2994 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2993)  ; FMax(a,b)
  %2995 = fmul fast float %2994, 0x400C5BF8A0000000
  %2996 = fmul fast float %2992, %2945
  %2997 = fmul fast float %2996, %2995
  %2998 = fadd fast float %2997, %2914
  %2999 = fmul fast float %2992, %2946
  %3000 = fmul fast float %2999, %2995
  %3001 = fadd fast float %3000, %2913
  %3002 = fmul fast float %2992, %2947
  %3003 = fmul fast float %3002, %2995
  %3004 = fadd fast float %3003, %2912
  br label %3005

; <label>:3005                                    ; preds = %2970, %2911, %2839
  %3006 = phi float [ %3004, %2970 ], [ %2912, %2911 ], [ %2851, %2839 ]
  %3007 = phi float [ %3001, %2970 ], [ %2913, %2911 ], [ %2850, %2839 ]
  %3008 = phi float [ %2998, %2970 ], [ %2914, %2911 ], [ %2849, %2839 ]
  %3009 = fcmp fast ogt float %2496, %2533
  %3010 = and i1 %2852, %3009
  %3011 = and i1 %2854, %3010
  %3012 = and i1 %2856, %3011
  %3013 = and i1 %2858, %3012
  br i1 %3013, label %3014, label %3071, !dx.controlflow.hints !105

; <label>:3014                                    ; preds = %3005
  %3015 = fmul fast float %2535, 0x3FC24924A0000000
  %3016 = fsub fast float %2496, %2533
  %3017 = fdiv fast float %3016, %3015
  %3018 = call float @dx.op.unary.f32(i32 7, float %3017)  ; Saturate(value)
  %3019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3020 = extractvalue %dx.types.CBufRet.f32 %3019, 0
  %3021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3022 = extractvalue %dx.types.CBufRet.f32 %3021, 0
  %3023 = extractvalue %dx.types.CBufRet.f32 %3021, 1
  %3024 = extractvalue %dx.types.CBufRet.f32 %3021, 2
  %3025 = fsub fast float %3020, %3008
  %3026 = fsub fast float %3022, %2846
  %3027 = fsub fast float %3023, %2847
  %3028 = fsub fast float %3024, %2848
  %3029 = fmul fast float %3025, %3018
  %3030 = fmul fast float %3026, %3018
  %3031 = fmul fast float %3027, %3018
  %3032 = fmul fast float %3028, %3018
  %3033 = fadd fast float %3029, %3008
  %3034 = fadd fast float %3030, %2846
  %3035 = fadd fast float %3031, %2847
  %3036 = fadd fast float %3032, %2848
  %3037 = extractvalue %dx.types.CBufRet.f32 %3019, 1
  %3038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3039 = extractvalue %dx.types.CBufRet.f32 %3038, 0
  %3040 = extractvalue %dx.types.CBufRet.f32 %3038, 1
  %3041 = extractvalue %dx.types.CBufRet.f32 %3038, 2
  %3042 = fsub fast float %3037, %3007
  %3043 = fsub fast float %3039, %2843
  %3044 = fsub fast float %3040, %2844
  %3045 = fsub fast float %3041, %2845
  %3046 = fmul fast float %3042, %3018
  %3047 = fmul fast float %3043, %3018
  %3048 = fmul fast float %3044, %3018
  %3049 = fmul fast float %3045, %3018
  %3050 = fadd fast float %3046, %3007
  %3051 = fadd fast float %3047, %2843
  %3052 = fadd fast float %3048, %2844
  %3053 = fadd fast float %3049, %2845
  %3054 = extractvalue %dx.types.CBufRet.f32 %3019, 2
  %3055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3056 = extractvalue %dx.types.CBufRet.f32 %3055, 0
  %3057 = extractvalue %dx.types.CBufRet.f32 %3055, 1
  %3058 = extractvalue %dx.types.CBufRet.f32 %3055, 2
  %3059 = fsub fast float %3054, %3006
  %3060 = fsub fast float %3056, %2840
  %3061 = fsub fast float %3057, %2841
  %3062 = fsub fast float %3058, %2842
  %3063 = fmul fast float %3059, %3018
  %3064 = fmul fast float %3060, %3018
  %3065 = fmul fast float %3061, %3018
  %3066 = fmul fast float %3062, %3018
  %3067 = fadd fast float %3063, %3006
  %3068 = fadd fast float %3064, %2840
  %3069 = fadd fast float %3065, %2841
  %3070 = fadd fast float %3066, %2842
  br label %3071

; <label>:3071                                    ; preds = %3014, %3005
  %3072 = phi float [ %3067, %3014 ], [ %3006, %3005 ]
  %3073 = phi float [ %3068, %3014 ], [ %2840, %3005 ]
  %3074 = phi float [ %3069, %3014 ], [ %2841, %3005 ]
  %3075 = phi float [ %3070, %3014 ], [ %2842, %3005 ]
  %3076 = phi float [ %3050, %3014 ], [ %3007, %3005 ]
  %3077 = phi float [ %3051, %3014 ], [ %2843, %3005 ]
  %3078 = phi float [ %3052, %3014 ], [ %2844, %3005 ]
  %3079 = phi float [ %3053, %3014 ], [ %2845, %3005 ]
  %3080 = phi float [ %3033, %3014 ], [ %3008, %3005 ]
  %3081 = phi float [ %3034, %3014 ], [ %2846, %3005 ]
  %3082 = phi float [ %3035, %3014 ], [ %2847, %3005 ]
  %3083 = phi float [ %3036, %3014 ], [ %2848, %3005 ]
  %3084 = extractvalue %dx.types.CBufRet.f32 %2658, 3
  %3085 = fmul fast float %3084, %3080
  %3086 = fmul fast float %3084, %3076
  %3087 = fmul fast float %3084, %3072
  %3088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3089 = extractvalue %dx.types.CBufRet.f32 %3088, 3
  %3090 = fmul fast float %3085, %3089
  %3091 = fmul fast float %3086, %3089
  %3092 = fmul fast float %3087, %3089
  %3093 = fmul fast float %3081, 1.500000e+00
  %3094 = fmul fast float %3093, %3084
  %3095 = fmul fast float %3094, %3089
  %3096 = fmul fast float %3082, 1.500000e+00
  %3097 = fmul fast float %3096, %3084
  %3098 = fmul fast float %3097, %3089
  %3099 = fmul fast float %3083, 1.500000e+00
  %3100 = fmul fast float %3099, %3084
  %3101 = fmul fast float %3100, %3089
  %3102 = fmul fast float %3077, 1.500000e+00
  %3103 = fmul fast float %3102, %3084
  %3104 = fmul fast float %3103, %3089
  %3105 = fmul fast float %3078, 1.500000e+00
  %3106 = fmul fast float %3105, %3084
  %3107 = fmul fast float %3106, %3089
  %3108 = fmul fast float %3079, 1.500000e+00
  %3109 = fmul fast float %3108, %3084
  %3110 = fmul fast float %3109, %3089
  %3111 = fmul fast float %3073, 1.500000e+00
  %3112 = fmul fast float %3111, %3084
  %3113 = fmul fast float %3112, %3089
  %3114 = fmul fast float %3074, 1.500000e+00
  %3115 = fmul fast float %3114, %3084
  %3116 = fmul fast float %3115, %3089
  %3117 = fmul fast float %3075, 1.500000e+00
  %3118 = fmul fast float %3117, %3084
  %3119 = fmul fast float %3118, %3089
  %3120 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3090)  ; FMax(a,b)
  %3121 = call float @dx.op.dot3.f32(i32 55, float %3095, float %3098, float %3101, float %3095, float %3098, float %3101)  ; Dot3(ax,ay,az,bx,by,bz)
  %3122 = fcmp fast oeq float %3121, 0.000000e+00
  %3123 = fcmp fast oeq float %3120, 0.000000e+00
  %3124 = or i1 %3123, %3122
  br i1 %3124, label %3154, label %3125

; <label>:3125                                    ; preds = %3071
  %3126 = fsub fast float -0.000000e+00, %3101
  %3127 = fsub fast float -0.000000e+00, %3095
  %3128 = call float @dx.op.unary.f32(i32 24, float %3121)  ; Sqrt(value)
  %3129 = fdiv fast float %3128, %3120
  %3130 = fcmp fast ogt float %3129, 0x3FFB6F8900000000
  %3131 = select i1 %3130, float 0x3FFB6F8900000000, float %3129
  %3132 = fmul fast float %3131, 0x3FE8A23460000000
  %3133 = call float @dx.op.unary.f32(i32 7, float %3132)  ; Saturate(value)
  %3134 = call float @dx.op.binary.f32(i32 35, float %3131, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3135 = fmul fast float %3133, %3120
  %3136 = fmul fast float %3134, 0x3FF279A740000000
  %3137 = fadd fast float %3136, -1.000000e+00
  %3138 = call float @dx.op.dot3.f32(i32 55, float %3126, float %3127, float %3098, float %3126, float %3127, float %3098)  ; Dot3(ax,ay,az,bx,by,bz)
  %3139 = call float @dx.op.unary.f32(i32 25, float %3138)  ; Rsqrt(value)
  %3140 = fmul fast float %3139, %3126
  %3141 = fmul fast float %3139, %3127
  %3142 = fmul fast float %3139, %3098
  %3143 = fmul fast float %3137, %3137
  %3144 = fsub fast float 1.000000e+00, %3143
  %3145 = fmul fast float %3134, 0x40005F8BE0000000
  %3146 = fsub fast float 0x400C5BF8A0000000, %3145
  %3147 = fdiv fast float %3135, %3146
  %3148 = fmul fast float %3147, 0x3FEE31C3C0000000
  %3149 = fmul fast float %3148, %3144
  %3150 = fmul fast float %3134, 0x3FDACB7480000000
  %3151 = fadd fast float %3150, 0xBFD7347680000000
  %3152 = fmul fast float %3151, %3147
  %3153 = fmul fast float %3152, %3144
  br label %3154

; <label>:3154                                    ; preds = %3125, %3071
  %3155 = phi float [ %3140, %3125 ], [ 0.000000e+00, %3071 ]
  %3156 = phi float [ %3141, %3125 ], [ 0.000000e+00, %3071 ]
  %3157 = phi float [ %3142, %3125 ], [ 0.000000e+00, %3071 ]
  %3158 = phi float [ %3149, %3125 ], [ 0.000000e+00, %3071 ]
  %3159 = phi float [ %3153, %3125 ], [ 0.000000e+00, %3071 ]
  %3160 = call float @dx.op.dot3.f32(i32 55, float %3155, float %3156, float %3157, float %2106, float %2107, float %2108)  ; Dot3(ax,ay,az,bx,by,bz)
  %3161 = fmul fast float %3160, %3160
  %3162 = fmul fast float %3161, 0x3FEE471020000000
  %3163 = fadd fast float %3162, 0xBFD42F6020000000
  %3164 = fmul fast float %3120, 0x3FD20DD760000000
  %3165 = fmul fast float %3163, %3159
  %3166 = fmul fast float %3158, 0x3FDF454380000000
  %3167 = fmul fast float %3166, %3160
  %3168 = fadd fast float %3167, %3164
  %3169 = fadd fast float %3168, %3165
  %3170 = call float @dx.op.dot3.f32(i32 55, float %3155, float %3156, float %3157, float %2120, float %2121, float %2122)  ; Dot3(ax,ay,az,bx,by,bz)
  %3171 = fmul fast float %3170, 0x3FDF454380000000
  %3172 = fmul fast float %3170, %3170
  %3173 = fmul fast float %3172, 0x3FEE471020000000
  %3174 = fadd fast float %3173, 0xBFD42F6020000000
  %3175 = call float @dx.op.dot3.f32(i32 55, float %3120, float %3158, float %3159, float 0x3FD20DD760000000, float %3171, float %3174)  ; Dot3(ax,ay,az,bx,by,bz)
  %3176 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3091)  ; FMax(a,b)
  %3177 = call float @dx.op.dot3.f32(i32 55, float %3104, float %3107, float %3110, float %3104, float %3107, float %3110)  ; Dot3(ax,ay,az,bx,by,bz)
  %3178 = fcmp fast oeq float %3177, 0.000000e+00
  %3179 = fcmp fast oeq float %3176, 0.000000e+00
  %3180 = or i1 %3179, %3178
  br i1 %3180, label %3210, label %3181

; <label>:3181                                    ; preds = %3154
  %3182 = fsub fast float -0.000000e+00, %3110
  %3183 = fsub fast float -0.000000e+00, %3104
  %3184 = call float @dx.op.unary.f32(i32 24, float %3177)  ; Sqrt(value)
  %3185 = fdiv fast float %3184, %3176
  %3186 = fcmp fast ogt float %3185, 0x3FFB6F8900000000
  %3187 = select i1 %3186, float 0x3FFB6F8900000000, float %3185
  %3188 = fmul fast float %3187, 0x3FE8A23460000000
  %3189 = call float @dx.op.unary.f32(i32 7, float %3188)  ; Saturate(value)
  %3190 = call float @dx.op.binary.f32(i32 35, float %3187, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3191 = fmul fast float %3189, %3176
  %3192 = fmul fast float %3190, 0x3FF279A740000000
  %3193 = fadd fast float %3192, -1.000000e+00
  %3194 = call float @dx.op.dot3.f32(i32 55, float %3182, float %3183, float %3107, float %3182, float %3183, float %3107)  ; Dot3(ax,ay,az,bx,by,bz)
  %3195 = call float @dx.op.unary.f32(i32 25, float %3194)  ; Rsqrt(value)
  %3196 = fmul fast float %3195, %3182
  %3197 = fmul fast float %3195, %3183
  %3198 = fmul fast float %3195, %3107
  %3199 = fmul fast float %3193, %3193
  %3200 = fsub fast float 1.000000e+00, %3199
  %3201 = fmul fast float %3190, 0x40005F8BE0000000
  %3202 = fsub fast float 0x400C5BF8A0000000, %3201
  %3203 = fdiv fast float %3191, %3202
  %3204 = fmul fast float %3203, 0x3FEE31C3C0000000
  %3205 = fmul fast float %3204, %3200
  %3206 = fmul fast float %3190, 0x3FDACB7480000000
  %3207 = fadd fast float %3206, 0xBFD7347680000000
  %3208 = fmul fast float %3207, %3203
  %3209 = fmul fast float %3208, %3200
  br label %3210

; <label>:3210                                    ; preds = %3181, %3154
  %3211 = phi float [ %3196, %3181 ], [ 0.000000e+00, %3154 ]
  %3212 = phi float [ %3197, %3181 ], [ 0.000000e+00, %3154 ]
  %3213 = phi float [ %3198, %3181 ], [ 0.000000e+00, %3154 ]
  %3214 = phi float [ %3205, %3181 ], [ 0.000000e+00, %3154 ]
  %3215 = phi float [ %3209, %3181 ], [ 0.000000e+00, %3154 ]
  %3216 = call float @dx.op.dot3.f32(i32 55, float %3211, float %3212, float %3213, float %2106, float %2107, float %2108)  ; Dot3(ax,ay,az,bx,by,bz)
  %3217 = fmul fast float %3216, %3216
  %3218 = fmul fast float %3217, 0x3FEE471020000000
  %3219 = fadd fast float %3218, 0xBFD42F6020000000
  %3220 = fmul fast float %3176, 0x3FD20DD760000000
  %3221 = fmul fast float %3219, %3215
  %3222 = fmul fast float %3214, 0x3FDF454380000000
  %3223 = fmul fast float %3222, %3216
  %3224 = fadd fast float %3223, %3220
  %3225 = fadd fast float %3224, %3221
  %3226 = call float @dx.op.dot3.f32(i32 55, float %3211, float %3212, float %3213, float %2120, float %2121, float %2122)  ; Dot3(ax,ay,az,bx,by,bz)
  %3227 = fmul fast float %3226, 0x3FDF454380000000
  %3228 = fmul fast float %3226, %3226
  %3229 = fmul fast float %3228, 0x3FEE471020000000
  %3230 = fadd fast float %3229, 0xBFD42F6020000000
  %3231 = call float @dx.op.dot3.f32(i32 55, float %3176, float %3214, float %3215, float 0x3FD20DD760000000, float %3227, float %3230)  ; Dot3(ax,ay,az,bx,by,bz)
  %3232 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3092)  ; FMax(a,b)
  %3233 = call float @dx.op.dot3.f32(i32 55, float %3113, float %3116, float %3119, float %3113, float %3116, float %3119)  ; Dot3(ax,ay,az,bx,by,bz)
  %3234 = fcmp fast oeq float %3233, 0.000000e+00
  %3235 = fcmp fast oeq float %3232, 0.000000e+00
  %3236 = or i1 %3235, %3234
  br i1 %3236, label %3266, label %3237

; <label>:3237                                    ; preds = %3210
  %3238 = fsub fast float -0.000000e+00, %3119
  %3239 = fsub fast float -0.000000e+00, %3113
  %3240 = call float @dx.op.unary.f32(i32 24, float %3233)  ; Sqrt(value)
  %3241 = fdiv fast float %3240, %3232
  %3242 = fcmp fast ogt float %3241, 0x3FFB6F8900000000
  %3243 = select i1 %3242, float 0x3FFB6F8900000000, float %3241
  %3244 = fmul fast float %3243, 0x3FE8A23460000000
  %3245 = call float @dx.op.unary.f32(i32 7, float %3244)  ; Saturate(value)
  %3246 = call float @dx.op.binary.f32(i32 35, float %3243, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3247 = fmul fast float %3245, %3232
  %3248 = fmul fast float %3246, 0x3FF279A740000000
  %3249 = fadd fast float %3248, -1.000000e+00
  %3250 = call float @dx.op.dot3.f32(i32 55, float %3238, float %3239, float %3116, float %3238, float %3239, float %3116)  ; Dot3(ax,ay,az,bx,by,bz)
  %3251 = call float @dx.op.unary.f32(i32 25, float %3250)  ; Rsqrt(value)
  %3252 = fmul fast float %3251, %3238
  %3253 = fmul fast float %3251, %3239
  %3254 = fmul fast float %3251, %3116
  %3255 = fmul fast float %3249, %3249
  %3256 = fsub fast float 1.000000e+00, %3255
  %3257 = fmul fast float %3246, 0x40005F8BE0000000
  %3258 = fsub fast float 0x400C5BF8A0000000, %3257
  %3259 = fdiv fast float %3247, %3258
  %3260 = fmul fast float %3259, 0x3FEE31C3C0000000
  %3261 = fmul fast float %3260, %3256
  %3262 = fmul fast float %3246, 0x3FDACB7480000000
  %3263 = fadd fast float %3262, 0xBFD7347680000000
  %3264 = fmul fast float %3263, %3259
  %3265 = fmul fast float %3264, %3256
  br label %3266

; <label>:3266                                    ; preds = %3237, %3210
  %3267 = phi float [ %3252, %3237 ], [ 0.000000e+00, %3210 ]
  %3268 = phi float [ %3253, %3237 ], [ 0.000000e+00, %3210 ]
  %3269 = phi float [ %3254, %3237 ], [ 0.000000e+00, %3210 ]
  %3270 = phi float [ %3261, %3237 ], [ 0.000000e+00, %3210 ]
  %3271 = phi float [ %3265, %3237 ], [ 0.000000e+00, %3210 ]
  %3272 = call float @dx.op.dot3.f32(i32 55, float %3267, float %3268, float %3269, float %2106, float %2107, float %2108)  ; Dot3(ax,ay,az,bx,by,bz)
  %3273 = fmul fast float %3272, %3272
  %3274 = fmul fast float %3273, 0x3FEE471020000000
  %3275 = fadd fast float %3274, 0xBFD42F6020000000
  %3276 = fmul fast float %3232, 0x3FD20DD760000000
  %3277 = fmul fast float %3275, %3271
  %3278 = fmul fast float %3270, 0x3FDF454380000000
  %3279 = fmul fast float %3278, %3272
  %3280 = fadd fast float %3279, %3276
  %3281 = fadd fast float %3280, %3277
  %3282 = call float @dx.op.dot3.f32(i32 55, float %3267, float %3268, float %3269, float %2120, float %2121, float %2122)  ; Dot3(ax,ay,az,bx,by,bz)
  %3283 = fmul fast float %3282, 0x3FDF454380000000
  %3284 = fmul fast float %3282, %3282
  %3285 = fmul fast float %3284, 0x3FEE471020000000
  %3286 = fadd fast float %3285, 0xBFD42F6020000000
  %3287 = call float @dx.op.dot3.f32(i32 55, float %3232, float %3270, float %3271, float 0x3FD20DD760000000, float %3283, float %3286)  ; Dot3(ax,ay,az,bx,by,bz)
  %3288 = call float @dx.op.binary.f32(i32 35, float %3169, float 0.000000e+00)  ; FMax(a,b)
  %3289 = call float @dx.op.binary.f32(i32 35, float %3225, float 0.000000e+00)  ; FMax(a,b)
  %3290 = call float @dx.op.binary.f32(i32 35, float %3281, float 0.000000e+00)  ; FMax(a,b)
  %3291 = call float @dx.op.binary.f32(i32 35, float %3175, float 0.000000e+00)  ; FMax(a,b)
  %3292 = call float @dx.op.binary.f32(i32 35, float %3231, float 0.000000e+00)  ; FMax(a,b)
  %3293 = call float @dx.op.binary.f32(i32 35, float %3287, float 0.000000e+00)  ; FMax(a,b)
  %3294 = fsub fast float %2490, %3288
  %3295 = fsub fast float %2491, %3289
  %3296 = fsub fast float %2492, %3290
  %3297 = fmul fast float %3294, %2171
  %3298 = fmul fast float %3295, %2171
  %3299 = fmul fast float %3296, %2171
  %3300 = fadd fast float %3297, %3288
  %3301 = fadd fast float %3298, %3289
  %3302 = fadd fast float %3299, %3290
  %3303 = fsub fast float %2487, %3291
  %3304 = fsub fast float %2488, %3292
  %3305 = fsub fast float %2489, %3293
  %3306 = fmul fast float %3303, %2171
  %3307 = fmul fast float %3304, %2171
  %3308 = fmul fast float %3305, %2171
  %3309 = fadd fast float %3306, %3291
  %3310 = fadd fast float %3307, %3292
  %3311 = fadd fast float %3308, %3293
  br label %3312

; <label>:3312                                    ; preds = %3266, %2486
  %3313 = phi float [ %3309, %3266 ], [ %2487, %2486 ]
  %3314 = phi float [ %3310, %3266 ], [ %2488, %2486 ]
  %3315 = phi float [ %3311, %3266 ], [ %2489, %2486 ]
  %3316 = phi float [ %3300, %3266 ], [ %2490, %2486 ]
  %3317 = phi float [ %3301, %3266 ], [ %2491, %2486 ]
  %3318 = phi float [ %3302, %3266 ], [ %2492, %2486 ]
  %3319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3320 = extractvalue %dx.types.CBufRet.f32 %3319, 0
  %3321 = call float @dx.op.binary.f32(i32 36, float %2100, float %3320)  ; FMin(a,b)
  %3322 = fsub fast float 1.000000e+00, %2123
  %3323 = fmul fast float %3321, %3322
  %3324 = fsub fast float 1.000000e+00, %3323
  %3325 = bitcast float %3324 to i32
  %3326 = sub nsw i32 2129859010, %3325
  %3327 = bitcast i32 %3326 to float
  %3328 = call float @dx.op.binary.f32(i32 36, float %2101, float %3320)  ; FMin(a,b)
  %3329 = fmul fast float %3328, %3322
  %3330 = fsub fast float 1.000000e+00, %3329
  %3331 = bitcast float %3330 to i32
  %3332 = sub nsw i32 2129859010, %3331
  %3333 = bitcast i32 %3332 to float
  %3334 = call float @dx.op.binary.f32(i32 36, float %2102, float %3320)  ; FMin(a,b)
  %3335 = fmul fast float %3334, %3322
  %3336 = fsub fast float 1.000000e+00, %3335
  %3337 = bitcast float %3336 to i32
  %3338 = sub nsw i32 2129859010, %3337
  %3339 = bitcast i32 %3338 to float
  %3340 = fmul fast float %3316, %2123
  %3341 = fmul fast float %3340, %3327
  %3342 = fmul fast float %3317, %2123
  %3343 = fmul fast float %3342, %3333
  %3344 = fmul fast float %3318, %2123
  %3345 = fmul fast float %3344, %3339
  %3346 = call float @dx.op.binary.f32(i32 36, float %2103, float %3320)  ; FMin(a,b)
  %3347 = fmul fast float %3346, %3322
  %3348 = fsub fast float 1.000000e+00, %3347
  %3349 = bitcast float %3348 to i32
  %3350 = sub nsw i32 2129859010, %3349
  %3351 = bitcast i32 %3350 to float
  %3352 = call float @dx.op.binary.f32(i32 36, float %2104, float %3320)  ; FMin(a,b)
  %3353 = fmul fast float %3352, %3322
  %3354 = fsub fast float 1.000000e+00, %3353
  %3355 = bitcast float %3354 to i32
  %3356 = sub nsw i32 2129859010, %3355
  %3357 = bitcast i32 %3356 to float
  %3358 = call float @dx.op.binary.f32(i32 36, float %2112, float %3320)  ; FMin(a,b)
  %3359 = fmul fast float %3358, %3322
  %3360 = fsub fast float 1.000000e+00, %3359
  %3361 = bitcast float %3360 to i32
  %3362 = sub nsw i32 2129859010, %3361
  %3363 = bitcast i32 %3362 to float
  %3364 = fmul fast float %3313, %2123
  %3365 = fmul fast float %3364, %3351
  %3366 = fmul fast float %3314, %2123
  %3367 = fmul fast float %3366, %3357
  %3368 = fmul fast float %3315, %2123
  %3369 = fmul fast float %3368, %3363
  %3370 = call float @dx.op.dot3.f32(i32 55, float %3341, float %3343, float %3345, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3371 = select i1 %229, float 0.000000e+00, float %3341
  %3372 = select i1 %229, float %3370, float %3343
  %3373 = select i1 %229, float 0.000000e+00, float %3345
  %3374 = call float @dx.op.dot3.f32(i32 55, float %3365, float %3367, float %3369, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3375 = select i1 %229, float 0.000000e+00, float %3365
  %3376 = select i1 %229, float %3374, float %3367
  %3377 = select i1 %229, float 0.000000e+00, float %3369
  %3378 = fmul fast float %2114, 9.843750e-01
  %3379 = fmul fast float %2109, 9.843750e-01
  %3380 = fadd fast float %3378, 7.812500e-03
  %3381 = fadd fast float %3379, 7.812500e-03
  %3382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %3380, float %3381, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3383 = extractvalue %dx.types.ResRet.f32 %3382, 2
  %3384 = extractvalue %dx.types.ResRet.f32 %3382, 3
  %3385 = fmul fast float %3383, %2103
  %3386 = fmul fast float %3383, %2104
  %3387 = fmul fast float %3383, %2112
  %3388 = fadd fast float %3385, %3384
  %3389 = fadd fast float %3386, %3384
  %3390 = fadd fast float %3387, %3384
  %3391 = fcmp fast ogt float %1477, 0.000000e+00
  br i1 %3391, label %3392, label %3418

; <label>:3392                                    ; preds = %3312
  %3393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1477, float %2114, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3394 = extractvalue %dx.types.ResRet.f32 %3393, 0
  %3395 = extractvalue %dx.types.ResRet.f32 %3393, 1
  %3396 = extractvalue %dx.types.ResRet.f32 %3393, 2
  %3397 = fadd fast float %3394, -5.000000e-01
  %3398 = fadd fast float %3395, -5.000000e-01
  %3399 = fadd fast float %3396, -5.000000e-01
  %3400 = fsub fast float 1.000000e+00, %2103
  %3401 = fsub fast float 1.000000e+00, %2104
  %3402 = fsub fast float 1.000000e+00, %2112
  %3403 = fmul fast float %2103, 4.000000e+00
  %3404 = fmul fast float %3403, %3400
  %3405 = fmul fast float %3404, %3397
  %3406 = fmul fast float %2104, 4.000000e+00
  %3407 = fmul fast float %3406, %3401
  %3408 = fmul fast float %3407, %3398
  %3409 = fmul fast float %2112, 4.000000e+00
  %3410 = fmul fast float %3409, %3402
  %3411 = fmul fast float %3410, %3399
  %3412 = fadd fast float %3405, %3388
  %3413 = fadd fast float %3408, %3389
  %3414 = fadd fast float %3411, %3390
  %3415 = call float @dx.op.unary.f32(i32 7, float %3412)  ; Saturate(value)
  %3416 = call float @dx.op.unary.f32(i32 7, float %3413)  ; Saturate(value)
  %3417 = call float @dx.op.unary.f32(i32 7, float %3414)  ; Saturate(value)
  br label %3418

; <label>:3418                                    ; preds = %3392, %3312
  %3419 = phi float [ %3415, %3392 ], [ %3388, %3312 ]
  %3420 = phi float [ %3416, %3392 ], [ %3389, %3312 ]
  %3421 = phi float [ %3417, %3392 ], [ %3390, %3312 ]
  %3422 = call float @dx.op.binary.f32(i32 35, float %3420, float %3421)  ; FMax(a,b)
  %3423 = call float @dx.op.binary.f32(i32 35, float %3419, float %3422)  ; FMax(a,b)
  %3424 = fsub fast float 1.000000e+00, %3423
  %3425 = fmul fast float %3424, %3371
  %3426 = fmul fast float %3424, %3372
  %3427 = fmul fast float %3424, %3373
  %3428 = call float @dx.op.dot3.f32(i32 55, float %2100, float %2101, float %2102, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3429 = fcmp fast ogt float %3428, 0x3E7FF19E20000000
  %3430 = fdiv fast float 1.000000e+00, %3428
  %3431 = select i1 %3429, float %3430, float 0.000000e+00
  %3432 = fmul fast float %3431, %2100
  %3433 = fmul fast float %3431, %2101
  %3434 = fmul fast float %3431, %2102
  %3435 = fadd fast float %3432, -1.000000e+00
  %3436 = fadd fast float %3433, -1.000000e+00
  %3437 = fadd fast float %3434, -1.000000e+00
  %3438 = fmul fast float %3435, 5.000000e-01
  %3439 = fmul fast float %3436, 5.000000e-01
  %3440 = fmul fast float %3437, 5.000000e-01
  %3441 = fadd fast float %3438, 1.000000e+00
  %3442 = fadd fast float %3439, 1.000000e+00
  %3443 = fadd fast float %3440, 1.000000e+00
  %3444 = fmul fast float %3419, %3375
  %3445 = fmul fast float %3420, %3376
  %3446 = fmul fast float %3421, %3377
  %3447 = fsub fast float 1.000000e+00, %2114
  %3448 = bitcast float %3447 to i32
  %3449 = sitofp i32 %3448 to float
  %3450 = fmul fast float %3449, 5.000000e+00
  %3451 = fadd fast float %3450, 0xC1EFBF8940000000
  %3452 = fptosi float %3451 to i32
  %3453 = bitcast i32 %3452 to float
  %3454 = fmul fast float %3453, %1476
  %3455 = fmul fast float %3371, %3454
  %3456 = fmul fast float %3455, %3424
  %3457 = fmul fast float %3456, %3441
  %3458 = fmul fast float %3372, %3454
  %3459 = fmul fast float %3458, %3424
  %3460 = fmul fast float %3459, %3442
  %3461 = fmul fast float %3373, %3454
  %3462 = fmul fast float %3461, %3424
  %3463 = fmul fast float %3462, %3443
  %3464 = fmul fast float %3425, %1497
  %3465 = fmul fast float %3426, %1497
  %3466 = fmul fast float %3427, %1497
  %3467 = fadd fast float %3444, %1478
  %3468 = fadd fast float %3467, %3457
  %3469 = fmul fast float %3468, %1497
  %3470 = fadd fast float %3445, %1479
  %3471 = fadd fast float %3470, %3460
  %3472 = fmul fast float %3471, %1497
  %3473 = fadd fast float %3446, %1480
  %3474 = fadd fast float %3473, %3463
  %3475 = fmul fast float %3474, %1497
  %3476 = bitcast i32 %2126 to float
  %3477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3478 = extractvalue %dx.types.CBufRet.f32 %3477, 3
  %3479 = fcmp fast oeq float %3478, 0.000000e+00
  br i1 %3479, label %4543, label %3480

; <label>:3480                                    ; preds = %3418
  %3481 = extractvalue %dx.types.CBufRet.f32 %3477, 0
  %3482 = extractvalue %dx.types.CBufRet.f32 %3477, 1
  %3483 = extractvalue %dx.types.CBufRet.f32 %3477, 2
  %3484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3485 = extractvalue %dx.types.CBufRet.f32 %3484, 0
  %3486 = extractvalue %dx.types.CBufRet.f32 %3484, 1
  %3487 = extractvalue %dx.types.CBufRet.f32 %3484, 2
  %3488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3489 = extractvalue %dx.types.CBufRet.f32 %3488, 0
  %3490 = extractvalue %dx.types.CBufRet.f32 %3488, 1
  %3491 = call float @dx.op.dot3.f32(i32 55, float %3485, float %3486, float %3487, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3492 = select i1 %229, float %3489, float %3485
  %3493 = select i1 %229, float %3491, float %3486
  %3494 = select i1 %229, float %3490, float %3487
  %3495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3496 = extractvalue %dx.types.CBufRet.f32 %3495, 2
  %3497 = fmul fast float %3496, %70
  %3498 = fmul fast float %3496, %71
  %3499 = fmul fast float %3496, %72
  %3500 = fadd fast float %3497, %138
  %3501 = fadd fast float %3498, %139
  %3502 = fadd fast float %3499, %140
  %3503 = fcmp fast olt float %3478, 0.000000e+00
  br i1 %3503, label %4125, label %3504

; <label>:3504                                    ; preds = %3480
  %3505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3506 = extractvalue %dx.types.CBufRet.f32 %3505, 0
  %3507 = extractvalue %dx.types.CBufRet.f32 %3505, 1
  %3508 = extractvalue %dx.types.CBufRet.f32 %3505, 2
  %3509 = extractvalue %dx.types.CBufRet.f32 %3505, 3
  %3510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3511 = extractvalue %dx.types.CBufRet.f32 %3510, 0
  %3512 = extractvalue %dx.types.CBufRet.f32 %3510, 1
  %3513 = extractvalue %dx.types.CBufRet.f32 %3510, 2
  %3514 = extractvalue %dx.types.CBufRet.f32 %3510, 3
  %3515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3516 = extractvalue %dx.types.CBufRet.f32 %3515, 0
  %3517 = extractvalue %dx.types.CBufRet.f32 %3515, 1
  %3518 = extractvalue %dx.types.CBufRet.f32 %3515, 2
  %3519 = extractvalue %dx.types.CBufRet.f32 %3515, 3
  %3520 = fmul fast float %3506, %3500
  %3521 = call float @dx.op.tertiary.f32(i32 46, float %3501, float %3507, float %3520)  ; FMad(a,b,c)
  %3522 = call float @dx.op.tertiary.f32(i32 46, float %3502, float %3508, float %3521)  ; FMad(a,b,c)
  %3523 = fadd fast float %3522, %3509
  %3524 = fmul fast float %3511, %3500
  %3525 = call float @dx.op.tertiary.f32(i32 46, float %3501, float %3512, float %3524)  ; FMad(a,b,c)
  %3526 = call float @dx.op.tertiary.f32(i32 46, float %3502, float %3513, float %3525)  ; FMad(a,b,c)
  %3527 = fadd fast float %3526, %3514
  %3528 = fmul fast float %3516, %3500
  %3529 = call float @dx.op.tertiary.f32(i32 46, float %3501, float %3517, float %3528)  ; FMad(a,b,c)
  %3530 = call float @dx.op.tertiary.f32(i32 46, float %3502, float %3518, float %3529)  ; FMad(a,b,c)
  %3531 = fadd fast float %3530, %3519
  %3532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3533 = extractvalue %dx.types.CBufRet.f32 %3532, 0
  %3534 = extractvalue %dx.types.CBufRet.f32 %3532, 1
  %3535 = extractvalue %dx.types.CBufRet.f32 %3532, 3
  %3536 = fmul fast float %3535, %3523
  %3537 = fmul fast float %3535, %3527
  %3538 = fadd fast float %3536, %3533
  %3539 = fadd fast float %3537, %3534
  %3540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3541 = extractvalue %dx.types.CBufRet.f32 %3540, 0
  %3542 = extractvalue %dx.types.CBufRet.f32 %3540, 1
  %3543 = extractvalue %dx.types.CBufRet.f32 %3540, 3
  %3544 = fmul fast float %3543, %3523
  %3545 = fmul fast float %3543, %3527
  %3546 = fadd fast float %3544, %3541
  %3547 = fadd fast float %3545, %3542
  %3548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3549 = extractvalue %dx.types.CBufRet.f32 %3548, 1
  %3550 = fsub fast float %3549, %3531
  %3551 = extractvalue %dx.types.CBufRet.f32 %3548, 2
  %3552 = fmul fast float %3550, %3551
  %3553 = fsub fast float 1.000000e+00, %3552
  %3554 = call float @dx.op.unary.f32(i32 7, float %3553)  ; Saturate(value)
  %3555 = extractvalue %dx.types.CBufRet.f32 %3540, 2
  %3556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3557 = extractvalue %dx.types.CBufRet.f32 %3556, 2
  %3558 = fadd fast float %3557, %3555
  %3559 = fcmp fast ogt float %3558, 0.000000e+00
  br i1 %3559, label %3560, label %3584

; <label>:3560                                    ; preds = %3504
  %3561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3562 = extractvalue %dx.types.CBufRet.f32 %3561, 0
  %3563 = extractvalue %dx.types.CBufRet.f32 %3561, 1
  %3564 = fsub fast float %3546, %3562
  %3565 = fsub fast float %3547, %3563
  %3566 = fcmp fast olt float %3564, 0.000000e+00
  %3567 = fcmp fast olt float %3565, 0.000000e+00
  %3568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3569 = extractvalue %dx.types.CBufRet.f32 %3568, 0
  %3570 = extractvalue %dx.types.CBufRet.f32 %3568, 1
  %3571 = extractvalue %dx.types.CBufRet.f32 %3568, 2
  %3572 = extractvalue %dx.types.CBufRet.f32 %3568, 3
  %3573 = select i1 %3566, float %3569, float %3571
  %3574 = select i1 %3567, float %3570, float %3572
  %3575 = fmul fast float %3573, %3564
  %3576 = fmul fast float %3574, %3565
  %3577 = call float @dx.op.unary.f32(i32 6, float %3575)  ; FAbs(value)
  %3578 = call float @dx.op.unary.f32(i32 6, float %3576)  ; FAbs(value)
  %3579 = extractvalue %dx.types.CBufRet.f32 %3495, 0
  %3580 = call float @dx.op.binary.f32(i32 35, float %3577, float %3578)  ; FMax(a,b)
  %3581 = fsub fast float %3579, %3580
  %3582 = call float @dx.op.unary.f32(i32 7, float %3581)  ; Saturate(value)
  %3583 = fmul fast float %3582, %3554
  br label %3584

; <label>:3584                                    ; preds = %3560, %3504
  %3585 = phi float [ %3583, %3560 ], [ 0.000000e+00, %3504 ]
  %3586 = extractvalue %dx.types.CBufRet.f32 %3532, 2
  %3587 = extractvalue %dx.types.CBufRet.f32 %3556, 1
  %3588 = fadd fast float %3587, %3586
  %3589 = fcmp fast ogt float %3588, 0.000000e+00
  %3590 = extractvalue %dx.types.CBufRet.f32 %3495, 0
  br i1 %3589, label %3591, label %3614

; <label>:3591                                    ; preds = %3584
  %3592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3593 = extractvalue %dx.types.CBufRet.f32 %3592, 0
  %3594 = extractvalue %dx.types.CBufRet.f32 %3592, 1
  %3595 = fsub fast float %3538, %3593
  %3596 = fsub fast float %3539, %3594
  %3597 = fcmp fast olt float %3595, 0.000000e+00
  %3598 = fcmp fast olt float %3596, 0.000000e+00
  %3599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3600 = extractvalue %dx.types.CBufRet.f32 %3599, 0
  %3601 = extractvalue %dx.types.CBufRet.f32 %3599, 1
  %3602 = extractvalue %dx.types.CBufRet.f32 %3599, 2
  %3603 = extractvalue %dx.types.CBufRet.f32 %3599, 3
  %3604 = select i1 %3597, float %3600, float %3602
  %3605 = select i1 %3598, float %3601, float %3603
  %3606 = fmul fast float %3604, %3595
  %3607 = fmul fast float %3605, %3596
  %3608 = call float @dx.op.unary.f32(i32 6, float %3606)  ; FAbs(value)
  %3609 = call float @dx.op.unary.f32(i32 6, float %3607)  ; FAbs(value)
  %3610 = call float @dx.op.binary.f32(i32 35, float %3608, float %3609)  ; FMax(a,b)
  %3611 = fsub fast float %3590, %3610
  %3612 = call float @dx.op.unary.f32(i32 7, float %3611)  ; Saturate(value)
  %3613 = fmul fast float %3612, %3554
  br label %3614

; <label>:3614                                    ; preds = %3591, %3584
  %3615 = phi float [ %3613, %3591 ], [ 0.000000e+00, %3584 ]
  %3616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3617 = extractvalue %dx.types.CBufRet.f32 %3616, 1
  %3618 = call float @dx.op.unary.f32(i32 7, float %3617)  ; Saturate(value)
  %3619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3620 = extractvalue %dx.types.CBufRet.f32 %3619, 0
  %3621 = extractvalue %dx.types.CBufRet.f32 %3619, 1
  %3622 = fsub fast float %3523, %3620
  %3623 = fsub fast float %3527, %3621
  %3624 = fcmp fast olt float %3622, 0.000000e+00
  %3625 = fcmp fast olt float %3623, 0.000000e+00
  %3626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3627 = extractvalue %dx.types.CBufRet.f32 %3626, 0
  %3628 = extractvalue %dx.types.CBufRet.f32 %3626, 1
  %3629 = extractvalue %dx.types.CBufRet.f32 %3626, 2
  %3630 = extractvalue %dx.types.CBufRet.f32 %3626, 3
  %3631 = select i1 %3624, float %3627, float %3629
  %3632 = select i1 %3625, float %3628, float %3630
  %3633 = fmul fast float %3631, %3622
  %3634 = fmul fast float %3632, %3623
  %3635 = call float @dx.op.unary.f32(i32 6, float %3633)  ; FAbs(value)
  %3636 = call float @dx.op.unary.f32(i32 6, float %3634)  ; FAbs(value)
  %3637 = call float @dx.op.binary.f32(i32 35, float %3635, float %3636)  ; FMax(a,b)
  %3638 = fsub fast float %3590, %3637
  %3639 = call float @dx.op.unary.f32(i32 7, float %3638)  ; Saturate(value)
  %3640 = call float @dx.op.binary.f32(i32 36, float %3639, float %3618)  ; FMin(a,b)
  %3641 = fmul fast float %3640, %3554
  %3642 = fsub fast float %3615, %3641
  %3643 = fsub fast float %3585, %3615
  %3644 = fsub fast float %3643, %3641
  %3645 = call float @dx.op.binary.f32(i32 35, float %3615, float %3585)  ; FMax(a,b)
  %3646 = call float @dx.op.binary.f32(i32 35, float %3641, float %3645)  ; FMax(a,b)
  %3647 = fcmp fast olt float %3646, 1.000000e+00
  br i1 %3647, label %3648, label %4046, !dx.controlflow.hints !106

; <label>:3648                                    ; preds = %3614
  %3649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3650 = extractvalue %dx.types.CBufRet.f32 %3649, 0
  %3651 = fcmp fast une float %3650, 0.000000e+00
  br i1 %3651, label %3652, label %4046, !dx.controlflow.hints !107

; <label>:3652                                    ; preds = %3648
  %3653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3654 = extractvalue %dx.types.CBufRet.f32 %3653, 0
  %3655 = extractvalue %dx.types.CBufRet.f32 %3653, 1
  %3656 = extractvalue %dx.types.CBufRet.f32 %3653, 2
  %3657 = extractvalue %dx.types.CBufRet.f32 %3653, 3
  %3658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3659 = extractvalue %dx.types.CBufRet.f32 %3658, 0
  %3660 = extractvalue %dx.types.CBufRet.f32 %3658, 1
  %3661 = extractvalue %dx.types.CBufRet.f32 %3658, 2
  %3662 = extractvalue %dx.types.CBufRet.f32 %3658, 3
  %3663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3664 = extractvalue %dx.types.CBufRet.f32 %3663, 0
  %3665 = extractvalue %dx.types.CBufRet.f32 %3663, 1
  %3666 = extractvalue %dx.types.CBufRet.f32 %3663, 2
  %3667 = extractvalue %dx.types.CBufRet.f32 %3663, 3
  %3668 = fmul fast float %3654, %3500
  %3669 = call float @dx.op.tertiary.f32(i32 46, float %3501, float %3655, float %3668)  ; FMad(a,b,c)
  %3670 = call float @dx.op.tertiary.f32(i32 46, float %3502, float %3656, float %3669)  ; FMad(a,b,c)
  %3671 = fadd fast float %3670, %3657
  %3672 = fmul fast float %3659, %3500
  %3673 = call float @dx.op.tertiary.f32(i32 46, float %3501, float %3660, float %3672)  ; FMad(a,b,c)
  %3674 = call float @dx.op.tertiary.f32(i32 46, float %3502, float %3661, float %3673)  ; FMad(a,b,c)
  %3675 = fadd fast float %3674, %3662
  %3676 = fmul fast float %3664, %3500
  %3677 = call float @dx.op.tertiary.f32(i32 46, float %3501, float %3665, float %3676)  ; FMad(a,b,c)
  %3678 = call float @dx.op.tertiary.f32(i32 46, float %3502, float %3666, float %3677)  ; FMad(a,b,c)
  %3679 = fadd fast float %3678, %3667
  %3680 = fcmp fast oge float %3671, 1.000000e+00
  %3681 = fcmp fast oge float %3675, 1.000000e+00
  %3682 = or i1 %3680, %3681
  %3683 = fcmp fast olt float %3671, 0.000000e+00
  %3684 = fcmp fast olt float %3675, 0.000000e+00
  %3685 = or i1 %3683, %3684
  %3686 = or i1 %3682, %3685
  br i1 %3686, label %4046, label %3687, !dx.controlflow.hints !108

; <label>:3687                                    ; preds = %3652
  %3688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3689 = extractvalue %dx.types.CBufRet.f32 %3688, 0
  %3690 = extractvalue %dx.types.CBufRet.f32 %3688, 1
  %3691 = extractvalue %dx.types.CBufRet.f32 %3688, 2
  %3692 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3693 = extractvalue %dx.types.CBufRet.i32 %3692, 2
  %3694 = uitofp i32 %3693 to float
  %3695 = extractvalue %dx.types.CBufRet.i32 %3692, 3
  %3696 = uitofp i32 %3695 to float
  %3697 = extractvalue %dx.types.CBufRet.f32 %3688, 3
  %3698 = fmul fast float %3697, 2.000000e+00
  %3699 = fsub fast float %3671, %3689
  %3700 = fsub fast float %3675, %3690
  %3701 = fmul fast float %3698, %3699
  %3702 = fmul fast float %3698, %3700
  %3703 = fdiv fast float 1.000000e+00, %3483
  %3704 = fmul fast float %3702, %3703
  %3705 = call float @dx.op.unary.f32(i32 6, float %3704)  ; FAbs(value)
  %3706 = fmul fast float %3691, %3502
  %3707 = fmul fast float %3706, %3698
  %3708 = call float @dx.op.unary.f32(i32 6, float %3707)  ; FAbs(value)
  %3709 = call float @dx.op.unary.f32(i32 6, float %3701)  ; FAbs(value)
  %3710 = call float @dx.op.binary.f32(i32 35, float %3708, float %3705)  ; FMax(a,b)
  %3711 = call float @dx.op.binary.f32(i32 35, float %3709, float %3710)  ; FMax(a,b)
  %3712 = fmul fast float %3711, 2.000000e+00
  %3713 = call float @dx.op.unary.f32(i32 23, float %3712)  ; Log(value)
  %3714 = call float @dx.op.binary.f32(i32 35, float %3713, float %3694)  ; FMax(a,b)
  %3715 = call float @dx.op.unary.f32(i32 22, float %3714)  ; Frc(value)
  %3716 = fadd fast float %3715, 0xBFEA666660000000
  %3717 = fmul fast float %3716, 8.000000e+00
  %3718 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3719 = call float @dx.op.unary.f32(i32 27, float %3714)  ; Round_ni(value)
  %3720 = fadd fast float %3719, %3718
  %3721 = call float @dx.op.binary.f32(i32 36, float %3720, float %3696)  ; FMin(a,b)
  %3722 = call float @dx.op.unary.f32(i32 27, float %3721)  ; Round_ni(value)
  %3723 = fsub fast float -0.000000e+00, %3722
  %3724 = call float @dx.op.unary.f32(i32 21, float %3723)  ; Exp(value)
  %3725 = fmul fast float %3724, %3698
  %3726 = fmul fast float %3725, %3671
  %3727 = fmul fast float %3725, %3675
  %3728 = fmul fast float %3726, 2.500000e-01
  %3729 = fmul fast float %3727, 2.500000e-01
  %3730 = fadd fast float %3728, 5.000000e-01
  %3731 = fadd fast float %3729, 5.000000e-01
  %3732 = fsub fast float %3696, %3694
  %3733 = fptoui float %3732 to i32
  %3734 = add i32 %3733, 320
  %3735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %3734)  ; CBufferLoadLegacy(handle,regIndex)
  %3736 = extractvalue %dx.types.CBufRet.f32 %3735, 0
  %3737 = extractvalue %dx.types.CBufRet.f32 %3735, 1
  %3738 = fcmp fast une float %3721, %3696
  %3739 = fsub fast float %3671, %3736
  %3740 = fsub fast float %3675, %3737
  %3741 = call float @dx.op.unary.f32(i32 6, float %3739)  ; FAbs(value)
  %3742 = call float @dx.op.unary.f32(i32 6, float %3740)  ; FAbs(value)
  %3743 = fmul fast float %3741, %3725
  %3744 = fmul fast float %3742, %3725
  %3745 = fcmp fast olt float %3743, 1.000000e+00
  %3746 = fcmp fast olt float %3744, 1.000000e+00
  %3747 = and i1 %3745, %3746
  %3748 = or i1 %3738, %3747
  br i1 %3748, label %3749, label %4046, !dx.controlflow.hints !109

; <label>:3749                                    ; preds = %3687
  %3750 = fmul fast float %3727, 5.000000e-01
  %3751 = fmul fast float %3726, 5.000000e-01
  %3752 = fadd fast float %3750, 5.000000e-01
  %3753 = fadd fast float %3751, 5.000000e-01
  %3754 = sitofp i32 %3693 to float
  %3755 = fsub fast float %3721, %3754
  %3756 = call float @dx.op.unary.f32(i32 27, float %3755)  ; Round_ni(value)
  %3757 = call float @dx.op.unary.f32(i32 22, float %3721)  ; Frc(value)
  %3758 = call float @dx.op.unary.f32(i32 22, float %3753)  ; Frc(value)
  %3759 = call float @dx.op.unary.f32(i32 22, float %3752)  ; Frc(value)
  %3760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %3758, float %3759, float %3756, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3761 = extractvalue %dx.types.ResRet.f32 %3760, 0
  %3762 = extractvalue %dx.types.ResRet.f32 %3760, 1
  %3763 = extractvalue %dx.types.ResRet.f32 %3760, 2
  %3764 = extractvalue %dx.types.ResRet.f32 %3760, 3
  %3765 = fcmp fast ogt float %3757, 0.000000e+00
  br i1 %3765, label %3766, label %3787, !dx.controlflow.hints !110

; <label>:3766                                    ; preds = %3749
  %3767 = fadd fast float %3756, 1.000000e+00
  %3768 = call float @dx.op.unary.f32(i32 22, float %3730)  ; Frc(value)
  %3769 = call float @dx.op.unary.f32(i32 22, float %3731)  ; Frc(value)
  %3770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %3768, float %3769, float %3767, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3771 = extractvalue %dx.types.ResRet.f32 %3770, 0
  %3772 = extractvalue %dx.types.ResRet.f32 %3770, 1
  %3773 = extractvalue %dx.types.ResRet.f32 %3770, 2
  %3774 = extractvalue %dx.types.ResRet.f32 %3770, 3
  %3775 = fsub fast float %3771, %3761
  %3776 = fsub fast float %3772, %3762
  %3777 = fsub fast float %3773, %3763
  %3778 = fsub fast float %3774, %3764
  %3779 = fmul fast float %3775, %3757
  %3780 = fmul fast float %3776, %3757
  %3781 = fmul fast float %3777, %3757
  %3782 = fmul fast float %3778, %3757
  %3783 = fadd fast float %3779, %3761
  %3784 = fadd fast float %3780, %3762
  %3785 = fadd fast float %3781, %3763
  %3786 = fadd fast float %3782, %3764
  br label %3787

; <label>:3787                                    ; preds = %3766, %3749
  %3788 = phi float [ %3783, %3766 ], [ %3761, %3749 ]
  %3789 = phi float [ %3784, %3766 ], [ %3762, %3749 ]
  %3790 = phi float [ %3785, %3766 ], [ %3763, %3749 ]
  %3791 = phi float [ %3786, %3766 ], [ %3764, %3749 ]
  %3792 = fadd fast float %3788, -5.000000e-01
  %3793 = fadd fast float %3790, -5.000000e-01
  %3794 = fmul fast float %3792, 0xBFD5555560000000
  %3795 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3793, float %3794)  ; FMad(a,b,c)
  %3796 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3789, float 0.000000e+00)  ; FMad(a,b,c)
  %3797 = fadd fast float %3796, %3791
  %3798 = fmul fast float %3792, -7.500000e-01
  %3799 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3793, float %3798)  ; FMad(a,b,c)
  %3800 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3789, float 0.000000e+00)  ; FMad(a,b,c)
  %3801 = fadd fast float %3800, %3791
  %3802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3803 = extractvalue %dx.types.CBufRet.f32 %3802, 0
  %3804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3805 = extractvalue %dx.types.CBufRet.f32 %3804, 0
  %3806 = extractvalue %dx.types.CBufRet.f32 %3804, 1
  %3807 = extractvalue %dx.types.CBufRet.f32 %3804, 2
  %3808 = extractvalue %dx.types.CBufRet.f32 %3804, 3
  %3809 = fsub fast float %3805, %3795
  %3810 = fsub fast float %3806, %3797
  %3811 = fsub fast float %3807, %3799
  %3812 = fsub fast float %3808, %3801
  %3813 = fmul fast float %3809, %3803
  %3814 = fmul fast float %3810, %3803
  %3815 = fmul fast float %3811, %3803
  %3816 = fmul fast float %3812, %3803
  %3817 = fadd fast float %3813, %3795
  %3818 = fadd fast float %3814, %3797
  %3819 = fadd fast float %3815, %3799
  %3820 = fadd fast float %3816, %3801
  %3821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3822 = extractvalue %dx.types.ResRet.i32 %3821, 0
  %3823 = and i32 %3822, 536870911
  %3824 = uitofp i32 %3823 to float
  %3825 = fmul fast float %3824, %3671
  %3826 = fmul fast float %3824, %3675
  %3827 = fptoui float %3825 to i32
  %3828 = fptoui float %3826 to i32
  %3829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3830 = extractvalue %dx.types.ResRet.i32 %3829, 0
  %3831 = and i32 %3830, 31
  %3832 = lshr i32 %3827, %3831
  %3833 = lshr i32 %3828, %3831
  %3834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3835 = extractvalue %dx.types.ResRet.i32 %3834, 0
  %3836 = and i32 %3835, 31
  %3837 = shl i32 1, %3836
  %3838 = call i32 @dx.op.binary.i32(i32 40, i32 %3837, i32 4)  ; UMin(a,b)
  %3839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3840 = extractvalue %dx.types.ResRet.i32 %3839, 0
  %3841 = extractvalue %dx.types.ResRet.i32 %3839, 1
  %3842 = icmp eq i32 %3838, 0
  br i1 %3842, label %3884, label %3843

; <label>:3843                                    ; preds = %3787
  br label %3844

; <label>:3844                                    ; preds = %3872, %3843
  %3845 = phi i32 [ %3875, %3872 ], [ 0, %3843 ]
  %3846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.i32 %3846, 0
  %3848 = lshr i32 %3847, 16
  %3849 = and i32 %3848, 31
  %3850 = shl i32 %3833, %3849
  %3851 = add i32 %3850, %3832
  %3852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.i32 %3852, 0
  %3854 = and i32 %3853, 31
  %3855 = shl i32 %3851, %3854
  %3856 = add i32 %3855, %3845
  %3857 = shl i32 %3856, 2
  %3858 = add i32 %3857, 32
  %3859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3858, i32 undef)  ; BufferLoad(srv,index,wot)
  %3860 = extractvalue %dx.types.ResRet.i32 %3859, 0
  %3861 = icmp slt i32 %3860, 0
  %3862 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3845
  %3863 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3845
  %3864 = bitcast float* %3862 to i32*
  %3865 = bitcast float* %3863 to i32*
  br i1 %3861, label %3866, label %3872

; <label>:3866                                    ; preds = %3844
  %3867 = and i32 %3860, 1073741823
  %3868 = add nuw nsw i32 %3867, 20
  %3869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3868, i32 undef)  ; BufferLoad(srv,index,wot)
  %3870 = extractvalue %dx.types.ResRet.i32 %3869, 0
  %3871 = extractvalue %dx.types.ResRet.i32 %3869, 1
  br label %3872

; <label>:3872                                    ; preds = %3866, %3844
  %3873 = phi i32 [ %3870, %3866 ], [ %3840, %3844 ]
  %3874 = phi i32 [ %3871, %3866 ], [ %3841, %3844 ]
  store i32 %3873, i32* %3864, align 4
  store i32 %3874, i32* %3865, align 4
  %3875 = add nuw i32 %3845, 1
  %3876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3877 = extractvalue %dx.types.CBufRet.i32 %3876, 2
  %3878 = icmp eq i32 %3877, 0
  %3879 = icmp ugt i32 %3860, -1073741825
  %3880 = and i1 %3879, %3878
  %3881 = icmp ult i32 %3875, %3838
  %3882 = and i1 %3880, %3881
  br i1 %3882, label %3844, label %3883

; <label>:3883                                    ; preds = %3872
  br label %3884

; <label>:3884                                    ; preds = %3883, %3787
  %3885 = phi i32 [ 0, %3787 ], [ %3875, %3883 ]
  %3886 = extractvalue %dx.types.CBufRet.f32 %3649, 2
  %3887 = fptoui float %3886 to i32
  %3888 = icmp eq i32 %3887, 0
  br i1 %3888, label %3940, label %3889

; <label>:3889                                    ; preds = %3884
  br label %3890

; <label>:3890                                    ; preds = %3935, %3889
  %3891 = phi i32 [ %3936, %3935 ], [ %3885, %3889 ]
  %3892 = phi i32 [ %3937, %3935 ], [ 0, %3889 ]
  %3893 = lshr i32 %3892, 2
  %3894 = and i32 %3892, 3
  %3895 = add nuw nsw i32 %3893, 83
  %3896 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 %3895)  ; CBufferLoadLegacy(handle,regIndex)
  %3897 = extractvalue %dx.types.CBufRet.i32 %3896, 0
  %3898 = extractvalue %dx.types.CBufRet.i32 %3896, 1
  %3899 = extractvalue %dx.types.CBufRet.i32 %3896, 2
  %3900 = extractvalue %dx.types.CBufRet.i32 %3896, 3
  %3901 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 0
  store i32 %3897, i32* %3901, align 4
  %3902 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 1
  store i32 %3898, i32* %3902, align 4
  %3903 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 2
  store i32 %3899, i32* %3903, align 4
  %3904 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 3
  store i32 %3900, i32* %3904, align 4
  %3905 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 %3894
  %3906 = load i32, i32* %3905, align 4, !tbaa !111, !noalias !115
  %3907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3908 = extractvalue %dx.types.ResRet.i32 %3907, 0
  %3909 = lshr i32 %3908, 16
  %3910 = and i32 %3909, 31
  %3911 = shl i32 %3833, %3910
  %3912 = add i32 %3911, %3832
  %3913 = shl i32 %3912, 2
  %3914 = add i32 %3913, %3906
  %3915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3914, i32 undef)  ; BufferLoad(srv,index,wot)
  %3916 = extractvalue %dx.types.ResRet.i32 %3915, 0
  %3917 = icmp eq i32 %3916, 0
  br i1 %3917, label %3935, label %3918

; <label>:3918                                    ; preds = %3890
  %3919 = icmp slt i32 %3916, 0
  %3920 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3891
  %3921 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3891
  %3922 = bitcast float* %3920 to i32*
  %3923 = bitcast float* %3921 to i32*
  br i1 %3919, label %3924, label %3931

; <label>:3924                                    ; preds = %3918
  %3925 = and i32 %3916, 1073741823
  %3926 = add i32 %3906, 20
  %3927 = add i32 %3926, %3925
  %3928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3929 = extractvalue %dx.types.ResRet.i32 %3928, 0
  %3930 = extractvalue %dx.types.ResRet.i32 %3928, 1
  br label %3931

; <label>:3931                                    ; preds = %3924, %3918
  %3932 = phi i32 [ %3929, %3924 ], [ %3840, %3918 ]
  %3933 = phi i32 [ %3930, %3924 ], [ %3841, %3918 ]
  store i32 %3932, i32* %3922, align 4
  store i32 %3933, i32* %3923, align 4
  %3934 = add i32 %3891, 1
  br label %3935

; <label>:3935                                    ; preds = %3931, %3890
  %3936 = phi i32 [ %3891, %3890 ], [ %3934, %3931 ]
  %3937 = add nuw i32 %3892, 1
  %3938 = icmp eq i32 %3937, %3887
  br i1 %3938, label %3939, label %3890

; <label>:3939                                    ; preds = %3935
  br label %3940

; <label>:3940                                    ; preds = %3939, %3884
  %3941 = phi i32 [ %3885, %3884 ], [ %3936, %3939 ]
  %3942 = icmp eq i32 %3941, 1
  %3943 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  %3944 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 0
  br i1 %3942, label %3945, label %3948

; <label>:3945                                    ; preds = %3940
  %3946 = load float, float* %3943, align 4
  %3947 = load float, float* %3944, align 4
  br label %3975

; <label>:3948                                    ; preds = %3940
  %3949 = load float, float* %3943, align 4
  %3950 = load float, float* %3944, align 4
  %3951 = fdiv fast float 1.000000e+00, %3950
  %3952 = fsub fast float %3949, %3951
  %3953 = icmp ugt i32 %3941, 1
  br i1 %3953, label %3954, label %3970

; <label>:3954                                    ; preds = %3948
  br label %3955

; <label>:3955                                    ; preds = %3955, %3954
  %3956 = phi float [ %3965, %3955 ], [ %3952, %3954 ]
  %3957 = phi float [ %3966, %3955 ], [ %3949, %3954 ]
  %3958 = phi i32 [ %3967, %3955 ], [ 1, %3954 ]
  %3959 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3958
  %3960 = load float, float* %3959, align 4
  %3961 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3958
  %3962 = load float, float* %3961, align 4
  %3963 = fdiv fast float 1.000000e+00, %3962
  %3964 = fsub fast float %3960, %3963
  %3965 = call float @dx.op.binary.f32(i32 36, float %3956, float %3964)  ; FMin(a,b)
  %3966 = call float @dx.op.binary.f32(i32 35, float %3957, float %3960)  ; FMax(a,b)
  %3967 = add nuw i32 %3958, 1
  %3968 = icmp eq i32 %3967, %3941
  br i1 %3968, label %3969, label %3955

; <label>:3969                                    ; preds = %3955
  br label %3970

; <label>:3970                                    ; preds = %3969, %3948
  %3971 = phi float [ %3952, %3948 ], [ %3965, %3969 ]
  %3972 = phi float [ %3949, %3948 ], [ %3966, %3969 ]
  %3973 = fsub fast float %3972, %3971
  %3974 = fdiv fast float 1.000000e+00, %3973
  br label %3975

; <label>:3975                                    ; preds = %3970, %3945
  %3976 = phi float [ %3946, %3945 ], [ %3972, %3970 ]
  %3977 = phi float [ %3947, %3945 ], [ %3974, %3970 ]
  %3978 = fadd fast float %3679, %3976
  %3979 = fmul fast float %3978, %3977
  %3980 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3981 = fmul fast float %3980, 2.000000e+00
  %3982 = fsub fast float 1.000000e+00, %3981
  %3983 = fmul fast float %3817, %3817
  %3984 = fsub fast float %3818, %3983
  %3985 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3984)  ; FMax(a,b)
  %3986 = fdiv fast float 1.000000e+00, %3985
  %3987 = fmul fast float %3818, %3817
  %3988 = fsub fast float %3819, %3987
  %3989 = fsub fast float %3982, %3817
  %3990 = fmul fast float %3982, %3982
  %3991 = fsub fast float %3990, %3818
  %3992 = fmul fast float %3986, %3988
  %3993 = fmul fast float %3992, %3989
  %3994 = fsub fast float %3991, %3993
  %3995 = fmul fast float %3818, %3818
  %3996 = fsub fast float %3820, %3995
  %3997 = fmul fast float %3988, %3988
  %3998 = fmul fast float %3997, %3986
  %3999 = fsub fast float %3996, %3998
  %4000 = fdiv fast float %3994, %3999
  %4001 = fmul fast float %4000, %3988
  %4002 = fsub fast float %3989, %4001
  %4003 = fmul fast float %4002, %3986
  %4004 = fmul fast float %4003, %3817
  %4005 = fsub fast float 1.000000e+00, %4004
  %4006 = fmul fast float %4000, %3818
  %4007 = fsub fast float %4005, %4006
  %4008 = fmul fast float %4003, %4003
  %4009 = fmul fast float %4000, 4.000000e+00
  %4010 = fmul fast float %4009, %4007
  %4011 = fsub fast float %4008, %4010
  %4012 = call float @dx.op.unary.f32(i32 24, float %4011)  ; Sqrt(value)
  %4013 = fcmp fast oge float %4003, 0.000000e+00
  %4014 = fsub fast float -0.000000e+00, %4012
  %4015 = select i1 %4013, float %4014, float %4012
  %4016 = fsub fast float %4015, %4003
  %4017 = fdiv fast float %4016, %4000
  %4018 = fdiv fast float %4007, %4016
  %4019 = fmul fast float %4017, 5.000000e-01
  %4020 = fmul fast float %4018, 2.000000e+00
  %4021 = select i1 %4013, float %4019, float %4020
  %4022 = select i1 %4013, float %4020, float %4019
  %4023 = call float @dx.op.binary.f32(i32 35, float %4021, float %4022)  ; FMax(a,b)
  %4024 = call float @dx.op.binary.f32(i32 36, float %4021, float %4022)  ; FMin(a,b)
  %4025 = fcmp fast ogt float %3982, %4023
  %4026 = fsub fast float %3982, %4024
  %4027 = fsub fast float %3982, %4023
  %4028 = fsub fast float %4023, %4024
  %4029 = select i1 %4025, float %4027, float %4028
  %4030 = fmul float %4026, %4029
  %4031 = select i1 %4025, float %4024, float %3982
  %4032 = fcmp fast ogt float %3982, %4024
  %4033 = fmul fast float %4031, %4023
  %4034 = fadd fast float %4031, %4023
  %4035 = fmul fast float %4034, %3817
  %4036 = fadd fast float %4033, %3818
  %4037 = fsub fast float %4036, %4035
  %4038 = fdiv fast float %4037, %4030
  %4039 = select i1 %4032, float %4038, float 0.000000e+00
  %4040 = fsub fast float 1.000000e+00, %4039
  %4041 = select i1 %4025, float %4040, float %4039
  %4042 = call float @dx.op.unary.f32(i32 7, float %4041)  ; Saturate(value)
  %4043 = extractvalue %dx.types.CBufRet.f32 %3802, 3
  %4044 = fmul fast float %4043, %4042
  %4045 = fsub fast float 1.000000e+00, %4044
  br label %4046

; <label>:4046                                    ; preds = %3975, %3687, %3652, %3648, %3614
  %4047 = phi float [ 1.000000e+00, %3614 ], [ %4045, %3975 ], [ 1.000000e+00, %3652 ], [ 1.000000e+00, %3687 ], [ 1.000000e+00, %3648 ]
  %4048 = fcmp fast ogt float %3644, 0.000000e+00
  br i1 %4048, label %4049, label %4055, !dx.controlflow.hints !124

; <label>:4049                                    ; preds = %4046
  %4050 = fadd fast float %3557, %3531
  %4051 = call float @dx.op.binary.f32(i32 35, float %4050, float 0.000000e+00)  ; FMax(a,b)
  %4052 = fadd fast float %4051, 0x3F10000000000000
  %4053 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %3546, float %3547, float undef, float undef, i32 0, i32 0, i32 undef, float %4052)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4054 = extractvalue %dx.types.ResRet.f32 %4053, 0
  br label %4055

; <label>:4055                                    ; preds = %4049, %4046
  %4056 = phi float [ %4054, %4049 ], [ 1.000000e+00, %4046 ]
  %4057 = fcmp fast ogt float %3642, 0.000000e+00
  br i1 %4057, label %4058, label %4064, !dx.controlflow.hints !125

; <label>:4058                                    ; preds = %4055
  %4059 = fadd fast float %3587, %3531
  %4060 = call float @dx.op.binary.f32(i32 35, float %4059, float 0.000000e+00)  ; FMax(a,b)
  %4061 = fadd fast float %4060, 0x3F10000000000000
  %4062 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %3538, float %3539, float undef, float undef, i32 0, i32 0, i32 undef, float %4061)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4063 = extractvalue %dx.types.ResRet.f32 %4062, 0
  br label %4064

; <label>:4064                                    ; preds = %4058, %4055
  %4065 = phi float [ %4063, %4058 ], [ 1.000000e+00, %4055 ]
  %4066 = fcmp fast ogt float %3641, 0.000000e+00
  br i1 %4066, label %4067, label %4074, !dx.controlflow.hints !126

; <label>:4067                                    ; preds = %4064
  %4068 = extractvalue %dx.types.CBufRet.f32 %3556, 0
  %4069 = fadd fast float %4068, %3531
  %4070 = call float @dx.op.binary.f32(i32 35, float %4069, float 0.000000e+00)  ; FMax(a,b)
  %4071 = fadd fast float %4070, 0x3F10000000000000
  %4072 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %3523, float %3527, float undef, float undef, i32 0, i32 0, i32 undef, float %4071)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4073 = extractvalue %dx.types.ResRet.f32 %4072, 0
  br label %4074

; <label>:4074                                    ; preds = %4067, %4064
  %4075 = phi float [ %4073, %4067 ], [ 1.000000e+00, %4064 ]
  %4076 = fsub fast float %4056, %4047
  %4077 = fmul fast float %4076, %3585
  %4078 = fadd fast float %4077, %4047
  %4079 = fsub fast float %4065, %4078
  %4080 = fmul fast float %4079, %3615
  %4081 = fadd fast float %4080, %4078
  %4082 = fsub fast float %4075, %4081
  %4083 = fmul fast float %4082, %3641
  %4084 = fadd fast float %4083, %4081
  %4085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4086 = extractvalue %dx.types.CBufRet.f32 %4085, 2
  %4087 = fcmp fast ogt float %4086, 0.000000e+00
  br i1 %4087, label %4088, label %4125, !dx.controlflow.hints !127

; <label>:4088                                    ; preds = %4074
  %4089 = fcmp fast ugt float %4086, 0.000000e+00
  br i1 %4089, label %4090, label %4122

; <label>:4090                                    ; preds = %4088
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 0
  %4093 = extractvalue %dx.types.CBufRet.f32 %4091, 1
  %4094 = extractvalue %dx.types.CBufRet.f32 %4091, 2
  %4095 = extractvalue %dx.types.CBufRet.f32 %4091, 3
  %4096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4097 = extractvalue %dx.types.CBufRet.f32 %4096, 0
  %4098 = extractvalue %dx.types.CBufRet.f32 %4096, 1
  %4099 = extractvalue %dx.types.CBufRet.f32 %4096, 2
  %4100 = extractvalue %dx.types.CBufRet.f32 %4096, 3
  %4101 = extractvalue %dx.types.CBufRet.f32 %4085, 0
  %4102 = extractvalue %dx.types.CBufRet.f32 %4085, 1
  %4103 = extractvalue %dx.types.CBufRet.f32 %2127, 2
  %4104 = fadd fast float %2128, %3500
  %4105 = fadd fast float %2129, %3501
  %4106 = fadd fast float %4103, %3502
  %4107 = fmul fast float %4104, %4092
  %4108 = call float @dx.op.tertiary.f32(i32 46, float %4093, float %4105, float %4107)  ; FMad(a,b,c)
  %4109 = call float @dx.op.tertiary.f32(i32 46, float %4094, float %4106, float %4108)  ; FMad(a,b,c)
  %4110 = fadd fast float %4109, %4095
  %4111 = fmul fast float %4104, %4097
  %4112 = call float @dx.op.tertiary.f32(i32 46, float %4098, float %4105, float %4111)  ; FMad(a,b,c)
  %4113 = call float @dx.op.tertiary.f32(i32 46, float %4099, float %4106, float %4112)  ; FMad(a,b,c)
  %4114 = fadd fast float %4113, %4100
  %4115 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %55, float %4110, float %4114, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4116 = extractvalue %dx.types.ResRet.f32 %4115, 0
  %4117 = fmul fast float %4116, %4102
  %4118 = fadd fast float %4117, %4101
  %4119 = call float @dx.op.unary.f32(i32 7, float %4118)  ; Saturate(value)
  %4120 = fmul fast float %4119, %4086
  %4121 = fsub fast float 1.000000e+00, %4120
  br label %4122

; <label>:4122                                    ; preds = %4090, %4088
  %4123 = phi float [ %4121, %4090 ], [ 1.000000e+00, %4088 ]
  %4124 = fmul fast float %4123, %4084
  br label %4125

; <label>:4125                                    ; preds = %4122, %4074, %3480
  %4126 = phi float [ 1.000000e+00, %3480 ], [ %4124, %4122 ], [ %4084, %4074 ]
  %4127 = call float @dx.op.binary.f32(i32 36, float %4126, float %4126)  ; FMin(a,b)
  %4128 = call float @dx.op.binary.f32(i32 36, float %4126, float %4127)  ; FMin(a,b)
  %4129 = fcmp fast ogt float %4128, 0.000000e+00
  br i1 %4129, label %4130, label %4287, !dx.controlflow.hints !128

; <label>:4130                                    ; preds = %4125
  %4131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4132 = extractvalue %dx.types.CBufRet.f32 %4131, 0
  %4133 = extractvalue %dx.types.CBufRet.f32 %4131, 1
  %4134 = extractvalue %dx.types.CBufRet.f32 %4131, 2
  %4135 = extractvalue %dx.types.CBufRet.f32 %4131, 3
  %4136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4137 = extractvalue %dx.types.CBufRet.f32 %4136, 0
  %4138 = extractvalue %dx.types.CBufRet.f32 %4136, 1
  %4139 = extractvalue %dx.types.CBufRet.f32 %4136, 2
  %4140 = extractvalue %dx.types.CBufRet.f32 %4136, 3
  %4141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4142 = extractvalue %dx.types.CBufRet.f32 %4141, 0
  %4143 = extractvalue %dx.types.CBufRet.f32 %4141, 1
  %4144 = extractvalue %dx.types.CBufRet.f32 %4141, 2
  %4145 = extractvalue %dx.types.CBufRet.f32 %4141, 3
  %4146 = fmul fast float %4132, %3500
  %4147 = call float @dx.op.tertiary.f32(i32 46, float %3501, float %4133, float %4146)  ; FMad(a,b,c)
  %4148 = call float @dx.op.tertiary.f32(i32 46, float %3502, float %4134, float %4147)  ; FMad(a,b,c)
  %4149 = fadd fast float %4148, %4135
  %4150 = fmul fast float %4137, %3500
  %4151 = call float @dx.op.tertiary.f32(i32 46, float %3501, float %4138, float %4150)  ; FMad(a,b,c)
  %4152 = call float @dx.op.tertiary.f32(i32 46, float %3502, float %4139, float %4151)  ; FMad(a,b,c)
  %4153 = fadd fast float %4152, %4140
  %4154 = fmul fast float %4142, %3500
  %4155 = call float @dx.op.tertiary.f32(i32 46, float %3501, float %4143, float %4154)  ; FMad(a,b,c)
  %4156 = call float @dx.op.tertiary.f32(i32 46, float %3502, float %4144, float %4155)  ; FMad(a,b,c)
  %4157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4157, 0
  %4159 = extractvalue %dx.types.CBufRet.f32 %4157, 1
  %4160 = extractvalue %dx.types.CBufRet.f32 %4157, 3
  %4161 = fmul fast float %4160, %4149
  %4162 = fmul fast float %4160, %4153
  %4163 = fadd fast float %4161, %4158
  %4164 = fadd fast float %4162, %4159
  %4165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4166 = extractvalue %dx.types.CBufRet.f32 %4165, 0
  %4167 = extractvalue %dx.types.CBufRet.f32 %4165, 1
  %4168 = fsub fast float %4163, %4166
  %4169 = fsub fast float %4164, %4167
  %4170 = fcmp fast olt float %4168, 0.000000e+00
  %4171 = fcmp fast olt float %4169, 0.000000e+00
  %4172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4173 = extractvalue %dx.types.CBufRet.f32 %4172, 0
  %4174 = extractvalue %dx.types.CBufRet.f32 %4172, 1
  %4175 = extractvalue %dx.types.CBufRet.f32 %4172, 2
  %4176 = extractvalue %dx.types.CBufRet.f32 %4172, 3
  %4177 = select i1 %4170, float %4173, float %4175
  %4178 = select i1 %4171, float %4174, float %4176
  %4179 = fmul fast float %4177, %4168
  %4180 = fmul fast float %4178, %4169
  %4181 = call float @dx.op.unary.f32(i32 6, float %4179)  ; FAbs(value)
  %4182 = call float @dx.op.unary.f32(i32 6, float %4180)  ; FAbs(value)
  %4183 = extractvalue %dx.types.CBufRet.f32 %3495, 0
  %4184 = call float @dx.op.binary.f32(i32 35, float %4181, float %4182)  ; FMax(a,b)
  %4185 = fsub fast float %4183, %4184
  %4186 = call float @dx.op.unary.f32(i32 7, float %4185)  ; Saturate(value)
  %4187 = fcmp fast ogt float %4186, 0.000000e+00
  br i1 %4187, label %4188, label %4229, !dx.controlflow.hints !129

; <label>:4188                                    ; preds = %4130
  %4189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %58, float %4163, float %4164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4190 = extractvalue %dx.types.ResRet.f32 %4189, 1
  %4191 = fcmp fast ogt float %4190, 0.000000e+00
  br i1 %4191, label %4192, label %4224

; <label>:4192                                    ; preds = %4188
  %4193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %58, float %4163, float %4164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4194 = extractvalue %dx.types.ResRet.f32 %4193, 0
  %4195 = extractvalue %dx.types.ResRet.f32 %4193, 1
  %4196 = extractvalue %dx.types.ResRet.f32 %4193, 2
  %4197 = extractvalue %dx.types.ResRet.f32 %4193, 3
  %4198 = fsub fast float 1.000000e+00, %4145
  %4199 = fsub fast float %4198, %4156
  %4200 = fmul fast float %4199, 0x400921FB60000000
  %4201 = fadd fast float %4200, 0x3FF921FB60000000
  %4202 = call float @dx.op.unary.f32(i32 13, float %4201)  ; Sin(value)
  %4203 = fadd fast float %4202, -1.000000e+00
  %4204 = fmul fast float %4203, 0x3FD45F3060000000
  %4205 = fmul fast float %4199, 0x401921FB60000000
  %4206 = fadd fast float %4205, 0x400921FB60000000
  %4207 = call float @dx.op.unary.f32(i32 13, float %4206)  ; Sin(value)
  %4208 = fadd fast float %4207, 0x3E7777A5C0000000
  %4209 = fmul fast float %4208, 0x3FC45F3060000000
  %4210 = fmul fast float %4199, 0x4022D97C80000000
  %4211 = fadd fast float %4210, 0x4012D97C80000000
  %4212 = call float @dx.op.unary.f32(i32 13, float %4211)  ; Sin(value)
  %4213 = fadd fast float %4212, 1.000000e+00
  %4214 = fmul fast float %4213, 0x3FBB2995E0000000
  %4215 = fmul fast float %4199, 0x402921FB60000000
  %4216 = fadd fast float %4215, 0x401921FB60000000
  %4217 = call float @dx.op.unary.f32(i32 13, float %4216)  ; Sin(value)
  %4218 = fadd fast float %4217, 0xBE8777A5C0000000
  %4219 = fmul fast float %4218, 0x3FB45F3060000000
  %4220 = call float @dx.op.dot4.f32(i32 56, float %4194, float %4195, float %4196, float %4197, float %4204, float %4209, float %4214, float %4219)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4221 = fmul fast float %4220, 0xBFF7154760000000
  %4222 = call float @dx.op.unary.f32(i32 21, float %4221)  ; Exp(value)
  %4223 = call float @dx.op.unary.f32(i32 7, float %4222)  ; Saturate(value)
  br label %4224

; <label>:4224                                    ; preds = %4192, %4188
  %4225 = phi float [ %4223, %4192 ], [ 1.000000e+00, %4188 ]
  %4226 = fadd fast float %4225, -1.000000e+00
  %4227 = fmul fast float %4226, %4186
  %4228 = fadd fast float %4227, 1.000000e+00
  br label %4229

; <label>:4229                                    ; preds = %4224, %4130
  %4230 = phi float [ %4228, %4224 ], [ 1.000000e+00, %4130 ]
  %4231 = fmul fast float %4230, %4126
  %4232 = extractvalue %dx.types.CBufRet.f32 %2127, 2
  %4233 = fadd fast float %2128, %138
  %4234 = fadd fast float %2129, %139
  %4235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4236 = extractvalue %dx.types.CBufRet.f32 %4235, 1
  %4237 = fsub fast float -0.000000e+00, %4233
  %4238 = fsub fast float -0.000000e+00, %4234
  %4239 = fsub fast float %2111, %4232
  %4240 = fadd fast float %4239, %4236
  %4241 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4237, float %4238, float %4240)  ; Dot3(ax,ay,az,bx,by,bz)
  %4242 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3481, float %3482, float %3483)  ; Dot3(ax,ay,az,bx,by,bz)
  %4243 = fdiv fast float 1.000000e+00, %4242
  %4244 = fmul fast float %4243, %4241
  %4245 = fmul fast float %3481, %4244
  %4246 = fmul fast float %3482, %4244
  %4247 = fadd fast float %4245, %4233
  %4248 = fadd fast float %4246, %4234
  %4249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4250 = extractvalue %dx.types.CBufRet.f32 %4249, 0
  %4251 = extractvalue %dx.types.CBufRet.f32 %4249, 1
  %4252 = fsub fast float %4247, %4250
  %4253 = fsub fast float %4248, %4251
  %4254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4255 = extractvalue %dx.types.CBufRet.f32 %4254, 2
  %4256 = extractvalue %dx.types.CBufRet.f32 %4254, 3
  %4257 = fmul fast float %4252, %4255
  %4258 = fmul fast float %4253, %4256
  %4259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4260 = extractvalue %dx.types.CBufRet.i32 %4259, 3
  %4261 = icmp eq i32 %4260, 0
  br i1 %4261, label %4267, label %4262

; <label>:4262                                    ; preds = %4229
  %4263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %57, float %4257, float %4258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4264 = extractvalue %dx.types.ResRet.f32 %4263, 0
  %4265 = extractvalue %dx.types.ResRet.f32 %4263, 1
  %4266 = extractvalue %dx.types.ResRet.f32 %4263, 2
  br label %4272

; <label>:4267                                    ; preds = %4229
  %4268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %58, float %4257, float %4258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4269 = extractvalue %dx.types.ResRet.f32 %4268, 0
  %4270 = extractvalue %dx.types.ResRet.f32 %4268, 1
  %4271 = extractvalue %dx.types.ResRet.f32 %4268, 2
  br label %4272

; <label>:4272                                    ; preds = %4267, %4262
  %4273 = phi float [ %4264, %4262 ], [ %4269, %4267 ]
  %4274 = phi float [ %4265, %4262 ], [ %4270, %4267 ]
  %4275 = phi float [ %4266, %4262 ], [ %4271, %4267 ]
  %4276 = extractvalue %dx.types.CBufRet.f32 %4235, 2
  %4277 = fmul fast float %4276, %4273
  %4278 = extractvalue %dx.types.CBufRet.f32 %4235, 0
  %4279 = fsub fast float %4244, %4278
  %4280 = fsub fast float %4279, %4277
  %4281 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4280)  ; FMax(a,b)
  %4282 = fmul fast float %4281, %4274
  %4283 = call float @dx.op.binary.f32(i32 36, float %4275, float %4282)  ; FMin(a,b)
  %4284 = fmul fast float %4283, 0xBFF7154760000000
  %4285 = call float @dx.op.unary.f32(i32 21, float %4284)  ; Exp(value)
  %4286 = fmul fast float %4231, %4285
  br label %4287

; <label>:4287                                    ; preds = %4272, %4125
  %4288 = phi float [ %4286, %4272 ], [ %4126, %4125 ]
  %4289 = call float @dx.op.binary.f32(i32 36, float %4288, float %4288)  ; FMin(a,b)
  %4290 = call float @dx.op.binary.f32(i32 36, float %4288, float %4289)  ; FMin(a,b)
  %4291 = fcmp fast ogt float %4290, 0.000000e+00
  br i1 %4291, label %4292, label %4543, !dx.controlflow.hints !130

; <label>:4292                                    ; preds = %4287
  %4293 = fmul fast float %4288, %3492
  %4294 = fmul fast float %4288, %3493
  %4295 = fmul fast float %4288, %3494
  %4296 = fsub fast float %140, %1899
  %4297 = fcmp fast ogt float %4296, 0.000000e+00
  %4298 = fmul fast float %3481, 5.120000e+02
  %4299 = fmul fast float %3482, 5.120000e+02
  %4300 = fmul fast float %3483, 5.120000e+02
  %4301 = fadd fast float %4300, %140
  %4302 = fsub fast float %1899, %4301
  %4303 = fmul fast float %4302, 2.000000e+00
  %4304 = fadd fast float %4303, %4301
  %4305 = select i1 %4297, float %4304, float %4301
  %4306 = fsub fast float %4305, %140
  %4307 = call float @dx.op.dot3.f32(i32 55, float %4298, float %4299, float %4306, float %4298, float %4299, float %4306)  ; Dot3(ax,ay,az,bx,by,bz)
  %4308 = call float @dx.op.unary.f32(i32 25, float %4307)  ; Rsqrt(value)
  %4309 = fmul fast float %4308, %4298
  %4310 = fmul fast float %4308, %4299
  %4311 = fmul fast float %4308, %4306
  %4312 = fsub fast float %1899, %140
  %4313 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4312)  ; Dot3(ax,ay,az,bx,by,bz)
  %4314 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4309, float %4310, float %4311)  ; Dot3(ax,ay,az,bx,by,bz)
  %4315 = fdiv fast float 1.000000e+00, %4314
  %4316 = fmul fast float %4315, %4313
  %4317 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4296, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4318 = fcmp fast ogt float %4317, 0.000000e+00
  %4319 = fcmp fast olt float %4317, 0.000000e+00
  %4320 = zext i1 %4318 to i32
  %4321 = zext i1 %4319 to i32
  %4322 = sub nsw i32 %4320, %4321
  %4323 = sitofp i32 %4322 to float
  %4324 = fsub fast float %4305, %1899
  %4325 = call float @dx.op.dot3.f32(i32 55, float %4298, float %4299, float %4324, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4326 = fcmp fast ogt float %4325, 0.000000e+00
  %4327 = fcmp fast olt float %4325, 0.000000e+00
  %4328 = zext i1 %4326 to i32
  %4329 = zext i1 %4327 to i32
  %4330 = sub nsw i32 %4328, %4329
  %4331 = sitofp i32 %4330 to float
  %4332 = fcmp fast une float %4323, %4331
  br i1 %4332, label %4333, label %4343

; <label>:4333                                    ; preds = %4292
  %4334 = fmul fast float %4316, %4311
  %4335 = fmul fast float %4316, %4310
  %4336 = fmul fast float %4316, %4309
  %4337 = fmul fast float %4336, %4336
  %4338 = fmul fast float %4335, %4335
  %4339 = fadd fast float %4337, %4338
  %4340 = fmul fast float %4334, %4334
  %4341 = fadd fast float %4339, %4340
  %4342 = call float @dx.op.unary.f32(i32 24, float %4341)  ; Sqrt(value)
  br label %4353

; <label>:4343                                    ; preds = %4292
  %4344 = icmp slt i32 %4322, 0
  br i1 %4344, label %4345, label %4353

; <label>:4345                                    ; preds = %4343
  %4346 = fsub fast float %140, %4305
  %4347 = fmul fast float %4298, %4298
  %4348 = fmul fast float %4299, %4299
  %4349 = fadd fast float %4347, %4348
  %4350 = fmul fast float %4346, %4346
  %4351 = fadd fast float %4349, %4350
  %4352 = call float @dx.op.unary.f32(i32 24, float %4351)  ; Sqrt(value)
  br label %4353

; <label>:4353                                    ; preds = %4345, %4343, %4333
  %4354 = phi float [ %4342, %4333 ], [ %4352, %4345 ], [ 0.000000e+00, %4343 ]
  %4355 = fsub fast float -0.000000e+00, %4354
  %4356 = select i1 %4297, float -0.000000e+00, float %4355
  %4357 = fmul fast float %1900, 0x3FF7154760000000
  %4358 = fmul fast float %4357, %4356
  %4359 = fmul fast float %1901, 0x3FF7154760000000
  %4360 = fmul fast float %4359, %4356
  %4361 = fmul fast float %1902, 0x3FF7154760000000
  %4362 = fmul fast float %4361, %4356
  %4363 = call float @dx.op.unary.f32(i32 21, float %4358)  ; Exp(value)
  %4364 = call float @dx.op.unary.f32(i32 21, float %4360)  ; Exp(value)
  %4365 = call float @dx.op.unary.f32(i32 21, float %4362)  ; Exp(value)
  %4366 = call float @dx.op.unary.f32(i32 7, float %4363)  ; Saturate(value)
  %4367 = call float @dx.op.unary.f32(i32 7, float %4364)  ; Saturate(value)
  %4368 = call float @dx.op.unary.f32(i32 7, float %4365)  ; Saturate(value)
  %4369 = fmul fast float %4293, %4366
  %4370 = fmul fast float %4294, %4367
  %4371 = fmul fast float %4295, %4368
  %4372 = fsub fast float %3481, %2099
  %4373 = fsub fast float %3482, %2098
  %4374 = fsub fast float %3483, %2097
  %4375 = call float @dx.op.dot3.f32(i32 55, float %4372, float %4373, float %4374, float %4372, float %4373, float %4374)  ; Dot3(ax,ay,az,bx,by,bz)
  %4376 = call float @dx.op.unary.f32(i32 25, float %4375)  ; Rsqrt(value)
  %4377 = fmul fast float %4376, %4372
  %4378 = fmul fast float %4376, %4373
  %4379 = fmul fast float %4376, %4374
  %4380 = call float @dx.op.dot3.f32(i32 55, float %3481, float %3482, float %3483, float %2106, float %2107, float %2108)  ; Dot3(ax,ay,az,bx,by,bz)
  %4381 = call float @dx.op.dot3.f32(i32 55, float %2096, float %2095, float %2094, float %4377, float %4378, float %4379)  ; Dot3(ax,ay,az,bx,by,bz)
  %4382 = call float @dx.op.unary.f32(i32 7, float %4380)  ; Saturate(value)
  %4383 = fmul fast float %4382, %4382
  %4384 = fmul fast float %4383, %3476
  %4385 = call float @dx.op.unary.f32(i32 7, float %4384)  ; Saturate(value)
  %4386 = fmul fast float %4385, %4382
  %4387 = call float @dx.op.dot3.f32(i32 55, float %2106, float %2107, float %2108, float %4377, float %4378, float %4379)  ; Dot3(ax,ay,az,bx,by,bz)
  %4388 = fmul fast float %4387, %4387
  %4389 = call float @dx.op.unary.f32(i32 6, float %4380)  ; FAbs(value)
  %4390 = fsub fast float 1.000000e+00, %2109
  %4391 = call float @dx.op.binary.f32(i32 35, float %4390, float 0x3F847AE140000000)  ; FMax(a,b)
  %4392 = fmul fast float %4391, %4391
  %4393 = fmul fast float %4392, %4392
  %4394 = fsub fast float 1.000000e+00, %4393
  %4395 = fmul fast float %2114, %2114
  %4396 = fmul fast float %4395, %4394
  %4397 = fadd fast float %4396, %4393
  %4398 = bitcast float %4397 to i32
  %4399 = ashr i32 %4398, 1
  %4400 = add nsw i32 %4399, 532487669
  %4401 = bitcast i32 %4400 to float
  %4402 = fadd fast float %4401, %2114
  %4403 = fmul fast float %4393, %4388
  %4404 = fsub fast float 1.000000e+00, %4388
  %4405 = fadd fast float %4404, %4403
  %4406 = fmul fast float %4389, %4389
  %4407 = fmul fast float %4406, %4394
  %4408 = fadd fast float %4407, %4393
  %4409 = bitcast float %4408 to i32
  %4410 = ashr i32 %4409, 1
  %4411 = add nsw i32 %4410, 532487669
  %4412 = bitcast i32 %4411 to float
  %4413 = fadd fast float %4412, %4389
  %4414 = fmul fast float %4405, %4405
  %4415 = fmul fast float %4414, %4402
  %4416 = fmul fast float %4415, %4413
  %4417 = fdiv fast float 0x3FF0A00000000000, %4416
  %4418 = fmul fast float %4417, %4393
  %4419 = call float @dx.op.unary.f32(i32 6, float %4381)  ; FAbs(value)
  %4420 = fsub fast float 1.000000e+00, %4419
  %4421 = bitcast float %4420 to i32
  %4422 = sitofp i32 %4421 to float
  %4423 = fmul fast float %4422, 5.000000e+00
  %4424 = fadd fast float %4423, 0xC1EFBF8940000000
  %4425 = fptosi float %4424 to i32
  %4426 = bitcast i32 %4425 to float
  %4427 = fsub fast float 1.000000e+00, %2103
  %4428 = fsub fast float 1.000000e+00, %2104
  %4429 = fsub fast float 1.000000e+00, %2112
  %4430 = fmul fast float %4426, %4427
  %4431 = fmul fast float %4426, %4428
  %4432 = fmul fast float %4426, %4429
  %4433 = fadd fast float %4430, %2103
  %4434 = fadd fast float %4431, %2104
  %4435 = fadd fast float %4432, %2112
  br i1 %3391, label %4436, label %4459

; <label>:4436                                    ; preds = %4353
  %4437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1477, float %4419, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4438 = extractvalue %dx.types.ResRet.f32 %4437, 0
  %4439 = extractvalue %dx.types.ResRet.f32 %4437, 1
  %4440 = extractvalue %dx.types.ResRet.f32 %4437, 2
  %4441 = fadd fast float %4438, -5.000000e-01
  %4442 = fadd fast float %4439, -5.000000e-01
  %4443 = fadd fast float %4440, -5.000000e-01
  %4444 = fmul fast float %2103, 4.000000e+00
  %4445 = fmul fast float %4444, %4427
  %4446 = fmul fast float %4445, %4441
  %4447 = fmul fast float %2104, 4.000000e+00
  %4448 = fmul fast float %4447, %4428
  %4449 = fmul fast float %4448, %4442
  %4450 = fmul fast float %2112, 4.000000e+00
  %4451 = fmul fast float %4450, %4429
  %4452 = fmul fast float %4451, %4443
  %4453 = fadd fast float %4446, %4433
  %4454 = fadd fast float %4449, %4434
  %4455 = fadd fast float %4452, %4435
  %4456 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4457 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4458 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  br label %4459

; <label>:4459                                    ; preds = %4436, %4353
  %4460 = phi float [ %4456, %4436 ], [ %4433, %4353 ]
  %4461 = phi float [ %4457, %4436 ], [ %4434, %4353 ]
  %4462 = phi float [ %4458, %4436 ], [ %4435, %4353 ]
  %4463 = fmul fast float %4380, 9.843750e-01
  %4464 = fadd fast float %4463, 7.812500e-03
  %4465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %4464, float %3381, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4466 = extractvalue %dx.types.ResRet.f32 %4465, 2
  %4467 = extractvalue %dx.types.ResRet.f32 %4465, 3
  %4468 = fmul fast float %4466, %2103
  %4469 = fmul fast float %4466, %2104
  %4470 = fmul fast float %4466, %2112
  %4471 = fadd fast float %4468, %4467
  %4472 = fadd fast float %4469, %4467
  %4473 = fadd fast float %4470, %4467
  br i1 %3391, label %4474, label %4497

; <label>:4474                                    ; preds = %4459
  %4475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1477, float %4380, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4476 = extractvalue %dx.types.ResRet.f32 %4475, 0
  %4477 = extractvalue %dx.types.ResRet.f32 %4475, 1
  %4478 = extractvalue %dx.types.ResRet.f32 %4475, 2
  %4479 = fadd fast float %4476, -5.000000e-01
  %4480 = fadd fast float %4477, -5.000000e-01
  %4481 = fadd fast float %4478, -5.000000e-01
  %4482 = fmul fast float %2103, 4.000000e+00
  %4483 = fmul fast float %4482, %4427
  %4484 = fmul fast float %4483, %4479
  %4485 = fmul fast float %2104, 4.000000e+00
  %4486 = fmul fast float %4485, %4428
  %4487 = fmul fast float %4486, %4480
  %4488 = fmul fast float %2112, 4.000000e+00
  %4489 = fmul fast float %4488, %4429
  %4490 = fmul fast float %4489, %4481
  %4491 = fadd fast float %4484, %4471
  %4492 = fadd fast float %4487, %4472
  %4493 = fadd fast float %4490, %4473
  %4494 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4495 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4496 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  br label %4497

; <label>:4497                                    ; preds = %4474, %4459
  %4498 = phi float [ %4494, %4474 ], [ %4471, %4459 ]
  %4499 = phi float [ %4495, %4474 ], [ %4472, %4459 ]
  %4500 = phi float [ %4496, %4474 ], [ %4473, %4459 ]
  %4501 = call float @dx.op.binary.f32(i32 35, float %4499, float %4500)  ; FMax(a,b)
  %4502 = call float @dx.op.binary.f32(i32 35, float %4498, float %4501)  ; FMax(a,b)
  %4503 = fsub fast float 1.000000e+00, %4502
  %4504 = fmul fast float %4460, %4418
  %4505 = fmul fast float %4461, %4418
  %4506 = fmul fast float %4462, %4418
  %4507 = fsub fast float 1.000000e+00, %4381
  %4508 = bitcast float %4507 to i32
  %4509 = sitofp i32 %4508 to float
  %4510 = fmul fast float %4509, 5.000000e+00
  %4511 = fadd fast float %4510, 0xC1EFBF8940000000
  %4512 = fptosi float %4511 to i32
  %4513 = bitcast i32 %4512 to float
  %4514 = fmul fast float %4513, %1476
  %4515 = fmul fast float %4503, %4514
  %4516 = fmul fast float %4515, %3441
  %4517 = fmul fast float %4515, %3442
  %4518 = fmul fast float %4515, %3443
  %4519 = fadd fast float %4516, %4504
  %4520 = fadd fast float %4517, %4505
  %4521 = fadd fast float %4518, %4506
  %4522 = fmul fast float %4386, %4369
  %4523 = fmul fast float %4522, %4503
  %4524 = fmul fast float %4386, %4370
  %4525 = fmul fast float %4524, %4503
  %4526 = fmul fast float %4386, %4371
  %4527 = fmul fast float %4526, %4503
  %4528 = fmul fast float %4522, %4519
  %4529 = fmul fast float %4524, %4520
  %4530 = fmul fast float %4526, %4521
  %4531 = fadd fast float %4523, %3425
  %4532 = fmul fast float %4531, %1497
  %4533 = fadd fast float %4525, %3426
  %4534 = fmul fast float %4533, %1497
  %4535 = fadd fast float %4527, %3427
  %4536 = fmul fast float %4535, %1497
  %4537 = fadd fast float %4528, %3468
  %4538 = fmul fast float %4537, %1497
  %4539 = fadd fast float %4529, %3471
  %4540 = fmul fast float %4539, %1497
  %4541 = fadd fast float %4530, %3474
  %4542 = fmul fast float %4541, %1497
  br label %4543

; <label>:4543                                    ; preds = %4497, %4287, %3418
  %4544 = phi float [ %3469, %3418 ], [ %3469, %4287 ], [ %4538, %4497 ]
  %4545 = phi float [ %3472, %3418 ], [ %3472, %4287 ], [ %4540, %4497 ]
  %4546 = phi float [ %3475, %3418 ], [ %3475, %4287 ], [ %4542, %4497 ]
  %4547 = phi float [ %3464, %3418 ], [ %3464, %4287 ], [ %4532, %4497 ]
  %4548 = phi float [ %3465, %3418 ], [ %3465, %4287 ], [ %4534, %4497 ]
  %4549 = phi float [ %3466, %3418 ], [ %3466, %4287 ], [ %4536, %4497 ]
  %4550 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4551 = extractvalue %dx.types.CBufRet.i32 %4550, 0
  %4552 = icmp eq i32 %4551, 0
  br i1 %4552, label %5173, label %4553

; <label>:4553                                    ; preds = %4543
  %4554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4555 = extractvalue %dx.types.CBufRet.f32 %4554, 2
  %4556 = extractvalue %dx.types.CBufRet.f32 %4554, 3
  %4557 = fmul fast float %4555, %91
  %4558 = fmul fast float %4556, %92
  %4559 = fptoui float %4557 to i32
  %4560 = fptoui float %4558 to i32
  %4561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4562 = extractvalue %dx.types.CBufRet.f32 %4561, 0
  %4563 = extractvalue %dx.types.CBufRet.f32 %4561, 2
  %4564 = extractvalue %dx.types.CBufRet.f32 %4561, 3
  %4565 = fadd fast float %82, -4.000000e+00
  %4566 = call float @dx.op.binary.f32(i32 35, float %4565, float 0.000000e+00)  ; FMax(a,b)
  %4567 = fadd fast float %4566, %4562
  %4568 = fmul fast float %4567, %4563
  %4569 = call float @dx.op.unary.f32(i32 23, float %4568)  ; Log(value)
  %4570 = fmul fast float %4569, %4564
  %4571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4572 = extractvalue %dx.types.CBufRet.f32 %4571, 2
  %4573 = fmul fast float %4570, %4572
  %4574 = call float @dx.op.unary.f32(i32 7, float %4573)  ; Saturate(value)
  %4575 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4576 = extractvalue %dx.types.CBufRet.i32 %4575, 1
  %4577 = add i32 %4576, -1
  %4578 = uitofp i32 %4576 to float
  %4579 = fmul fast float %4578, %4574
  %4580 = fptoui float %4579 to i32
  %4581 = call i32 @dx.op.binary.i32(i32 40, i32 %4580, i32 %4577)  ; UMin(a,b)
  %4582 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4583 = extractvalue %dx.types.CBufRet.i32 %4582, 2
  %4584 = extractvalue %dx.types.CBufRet.i32 %4582, 3
  %4585 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4560, i32 %4583, i32 %4559)  ; UMad(a,b,c)
  %4586 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4581, i32 %4584, i32 %4585)  ; UMad(a,b,c)
  %4587 = add nsw i32 %4551, -1
  %4588 = call i32 @dx.op.binary.i32(i32 37, i32 %4587, i32 0)  ; IMax(a,b)
  %4589 = call float @dx.op.binary.f32(i32 35, float %82, float 0.000000e+00)  ; FMax(a,b)
  %4590 = fptoui float %4589 to i32
  %4591 = lshr i32 %4590, 5
  %4592 = call i32 @dx.op.binary.i32(i32 40, i32 %4591, i32 8191)  ; UMin(a,b)
  %4593 = shl i32 %4592, 2
  %4594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4593, i32 undef)  ; BufferLoad(srv,index,wot)
  %4595 = extractvalue %dx.types.ResRet.i32 %4594, 0
  %4596 = lshr i32 %4595, 16
  %4597 = and i32 %4595, 65535
  %4598 = lshr i32 %4595, 21
  %4599 = lshr i32 %4597, 5
  %4600 = call i32 @dx.op.binary.i32(i32 40, i32 %4599, i32 %4588)  ; UMin(a,b)
  %4601 = icmp ugt i32 %4598, %4600
  br i1 %4601, label %5173, label %4602

; <label>:4602                                    ; preds = %4553
  br label %4603

; <label>:4603                                    ; preds = %5163, %4602
  %4604 = phi i32 [ %5170, %5163 ], [ %4598, %4602 ]
  %4605 = phi float [ %5164, %5163 ], [ %4544, %4602 ]
  %4606 = phi float [ %5165, %5163 ], [ %4545, %4602 ]
  %4607 = phi float [ %5166, %5163 ], [ %4546, %4602 ]
  %4608 = phi float [ %5167, %5163 ], [ %4547, %4602 ]
  %4609 = phi float [ %5168, %5163 ], [ %4548, %4602 ]
  %4610 = phi float [ %5169, %5163 ], [ %4549, %4602 ]
  %4611 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4612 = extractvalue %dx.types.CBufRet.i32 %4611, 0
  %4613 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4586, i32 %4612, i32 %4604)  ; UMad(a,b,c)
  %4614 = shl i32 %4613, 2
  %4615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4614, i32 undef)  ; BufferLoad(srv,index,wot)
  %4616 = extractvalue %dx.types.ResRet.i32 %4615, 0
  %4617 = shl i32 %4604, 5
  %4618 = sub nsw i32 %4596, %4617
  %4619 = call i32 @dx.op.binary.i32(i32 37, i32 %4618, i32 0)  ; IMax(a,b)
  %4620 = call i32 @dx.op.binary.i32(i32 38, i32 %4619, i32 31)  ; IMin(a,b)
  %4621 = sub nsw i32 1, %4596
  %4622 = add nsw i32 %4621, %4597
  %4623 = call i32 @dx.op.binary.i32(i32 37, i32 %4622, i32 0)  ; IMax(a,b)
  %4624 = call i32 @dx.op.binary.i32(i32 38, i32 %4623, i32 32)  ; IMin(a,b)
  %4625 = and i32 %4624, 31
  %4626 = shl i32 -1, %4625
  %4627 = xor i32 %4626, -1
  %4628 = and i32 %4620, 31
  %4629 = shl i32 %4627, %4628
  %4630 = icmp eq i32 %4624, 32
  %4631 = select i1 %4630, i32 -1, i32 %4629
  %4632 = and i32 %4631, %4616
  %4633 = icmp eq i32 %4632, 0
  br i1 %4633, label %5163, label %4634

; <label>:4634                                    ; preds = %4603
  br label %4635

; <label>:4635                                    ; preds = %4769, %4634
  %4636 = phi i32 [ %4647, %4769 ], [ %4632, %4634 ]
  %4637 = phi float [ %4770, %4769 ], [ %4605, %4634 ]
  %4638 = phi float [ %4771, %4769 ], [ %4606, %4634 ]
  %4639 = phi float [ %4772, %4769 ], [ %4607, %4634 ]
  %4640 = phi float [ %4773, %4769 ], [ %4608, %4634 ]
  %4641 = phi float [ %4774, %4769 ], [ %4609, %4634 ]
  %4642 = phi float [ %4775, %4769 ], [ %4610, %4634 ]
  %4643 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4636)  ; FirstbitLo(value)
  %4644 = add i32 %4643, %4617
  %4645 = and i32 %4643, 31
  %4646 = shl i32 1, %4645
  %4647 = xor i32 %4646, %4636
  %4648 = mul i32 %4644, 112
  %4649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4648, i32 undef)  ; BufferLoad(srv,index,wot)
  %4650 = extractvalue %dx.types.ResRet.f32 %4649, 0
  %4651 = extractvalue %dx.types.ResRet.f32 %4649, 1
  %4652 = extractvalue %dx.types.ResRet.f32 %4649, 2
  %4653 = or i32 %4648, 12
  %4654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4653, i32 undef)  ; BufferLoad(srv,index,wot)
  %4655 = extractvalue %dx.types.ResRet.f32 %4654, 0
  %4656 = add i32 %4648, 16
  %4657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4656, i32 undef)  ; BufferLoad(srv,index,wot)
  %4658 = extractvalue %dx.types.ResRet.f32 %4657, 0
  %4659 = extractvalue %dx.types.ResRet.f32 %4657, 1
  %4660 = extractvalue %dx.types.ResRet.f32 %4657, 2
  %4661 = add i32 %4648, 28
  %4662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4661, i32 undef)  ; BufferLoad(srv,index,wot)
  %4663 = extractvalue %dx.types.ResRet.i32 %4662, 0
  %4664 = add i32 %4648, 44
  %4665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4664, i32 undef)  ; BufferLoad(srv,index,wot)
  %4666 = extractvalue %dx.types.ResRet.f32 %4665, 0
  %4667 = add i32 %4648, 48
  %4668 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4667, i32 undef)  ; BufferLoad(srv,index,wot)
  %4669 = extractvalue %dx.types.ResRet.f32 %4668, 0
  %4670 = extractvalue %dx.types.ResRet.f32 %4668, 1
  %4671 = extractvalue %dx.types.ResRet.f32 %4668, 2
  %4672 = extractvalue %dx.types.ResRet.f32 %4668, 3
  %4673 = add i32 %4648, 64
  %4674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4673, i32 undef)  ; BufferLoad(srv,index,wot)
  %4675 = extractvalue %dx.types.ResRet.f32 %4674, 0
  %4676 = extractvalue %dx.types.ResRet.f32 %4674, 1
  %4677 = extractvalue %dx.types.ResRet.f32 %4674, 2
  %4678 = extractvalue %dx.types.ResRet.f32 %4674, 3
  %4679 = add i32 %4648, 80
  %4680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4679, i32 undef)  ; BufferLoad(srv,index,wot)
  %4681 = extractvalue %dx.types.ResRet.f32 %4680, 1
  %4682 = extractvalue %dx.types.ResRet.f32 %4680, 2
  %4683 = add i32 %4648, 92
  %4684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4683, i32 undef)  ; BufferLoad(srv,index,wot)
  %4685 = extractvalue %dx.types.ResRet.i32 %4684, 0
  %4686 = call float @dx.op.dot3.f32(i32 55, float %4650, float %4651, float %4652, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4687 = select i1 %229, float %4681, float %4650
  %4688 = select i1 %229, float %4686, float %4651
  %4689 = select i1 %229, float %4682, float %4652
  %4690 = and i32 %4685, 65535
  %4691 = uitofp i32 %4690 to float
  %4692 = lshr i32 %4685, 16
  %4693 = uitofp i32 %4692 to float
  %4694 = and i32 %4663, 65535
  %4695 = and i32 %4663, 50331648
  %4696 = icmp eq i32 %4695, 33554432
  %4697 = fsub fast float %4669, %138
  %4698 = fsub fast float %4670, %139
  %4699 = fsub fast float %4671, %140
  %4700 = call float @dx.op.dot3.f32(i32 55, float %4697, float %4698, float %4699, float %4697, float %4698, float %4699)  ; Dot3(ax,ay,az,bx,by,bz)
  %4701 = call float @dx.op.unary.f32(i32 24, float %4700)  ; Sqrt(value)
  %4702 = fdiv fast float 1.000000e+00, %4701
  %4703 = fmul fast float %4702, %4697
  %4704 = fmul fast float %4702, %4698
  %4705 = fmul fast float %4702, %4699
  %4706 = fadd fast float %4701, %4655
  %4707 = fdiv fast float 1.000000e+00, %4706
  %4708 = fmul float %4666, %4707
  %4709 = fmul float %4708, %4708
  %4710 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  br i1 %4696, label %4711, label %4732

; <label>:4711                                    ; preds = %4635
  %4712 = fmul fast float %4677, %4658
  %4713 = fmul fast float %4677, %4659
  %4714 = fmul fast float %4677, %4660
  %4715 = fadd fast float %4697, %4712
  %4716 = fadd fast float %4698, %4713
  %4717 = fadd fast float %4699, %4714
  %4718 = call float @dx.op.dot3.f32(i32 55, float %4715, float %4716, float %4717, float %4715, float %4716, float %4717)  ; Dot3(ax,ay,az,bx,by,bz)
  %4719 = call float @dx.op.unary.f32(i32 25, float %4718)  ; Rsqrt(value)
  %4720 = fmul fast float %4719, %4715
  %4721 = fmul fast float %4719, %4716
  %4722 = fmul fast float %4719, %4717
  %4723 = fsub fast float %138, %4669
  %4724 = fsub fast float %139, %4670
  %4725 = fsub fast float %140, %4671
  %4726 = fsub fast float -0.000000e+00, %4723
  %4727 = fsub fast float -0.000000e+00, %4724
  %4728 = fsub fast float -0.000000e+00, %4725
  %4729 = call float @dx.op.dot3.f32(i32 55, float %4726, float %4727, float %4728, float %4658, float %4659, float %4660)  ; Dot3(ax,ay,az,bx,by,bz)
  %4730 = fcmp fast ogt float %4729, 0.000000e+00
  %4731 = uitofp i1 %4730 to float
  br label %4732

; <label>:4732                                    ; preds = %4711, %4635
  %4733 = phi float [ %4731, %4711 ], [ 1.000000e+00, %4635 ]
  %4734 = phi float [ %4720, %4711 ], [ %4703, %4635 ]
  %4735 = phi float [ %4721, %4711 ], [ %4704, %4635 ]
  %4736 = phi float [ %4722, %4711 ], [ %4705, %4635 ]
  %4737 = call float @dx.op.dot3.f32(i32 55, float %4658, float %4659, float %4660, float %4734, float %4735, float %4736)  ; Dot3(ax,ay,az,bx,by,bz)
  %4738 = fmul fast float %4737, %4737
  %4739 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4740 = fsub fast float 1.000000e+00, %4739
  %4741 = fmul fast float %4740, 5.000000e-01
  %4742 = fcmp fast ogt float %4737, 0.000000e+00
  %4743 = fsub fast float 1.000000e+00, %4741
  %4744 = select i1 %4742, float %4741, float %4743
  %4745 = fmul fast float %4744, %4693
  %4746 = fadd fast float %4745, %4691
  %4747 = fmul fast float %4746, 0x3EF0001000000000
  %4748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %58, float %4747, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4749 = extractvalue %dx.types.ResRet.f32 %4748, 0
  %4750 = fmul fast float %4737, %4675
  %4751 = fadd fast float %4750, %4676
  %4752 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4753 = select i1 %4696, float 1.000000e+00, float %4752
  %4754 = select i1 %4696, float %4752, float 1.000000e+00
  %4755 = fmul fast float %4701, %4672
  %4756 = fsub fast float 1.000000e+00, %4755
  %4757 = fmul fast float %4756, %4678
  %4758 = call float @dx.op.unary.f32(i32 7, float %4757)  ; Saturate(value)
  %4759 = fmul fast float %4758, %4754
  %4760 = fmul fast float %4759, 2.000000e+00
  %4761 = fsub fast float 3.000000e+00, %4760
  %4762 = fmul fast float %4749, %4733
  %4763 = fmul fast float %4759, %4759
  %4764 = fmul fast float %4763, %4762
  %4765 = fmul fast float %4764, %4761
  %4766 = call float @dx.op.binary.f32(i32 36, float %4765, float %4765)  ; FMin(a,b)
  %4767 = call float @dx.op.binary.f32(i32 36, float %4765, float %4766)  ; FMin(a,b)
  %4768 = fcmp fast ogt float %4767, 0.000000e+00
  br i1 %4768, label %4777, label %4769, !dx.controlflow.hints !131

; <label>:4769                                    ; preds = %5119, %4877, %4732
  %4770 = phi float [ %4637, %4877 ], [ %4637, %4732 ], [ %5159, %5119 ]
  %4771 = phi float [ %4638, %4877 ], [ %4638, %4732 ], [ %5160, %5119 ]
  %4772 = phi float [ %4639, %4877 ], [ %4639, %4732 ], [ %5161, %5119 ]
  %4773 = phi float [ %4640, %4877 ], [ %4640, %4732 ], [ %5153, %5119 ]
  %4774 = phi float [ %4641, %4877 ], [ %4641, %4732 ], [ %5154, %5119 ]
  %4775 = phi float [ %4642, %4877 ], [ %4642, %4732 ], [ %5155, %5119 ]
  %4776 = icmp eq i32 %4636, %4646
  br i1 %4776, label %5162, label %4635

; <label>:4777                                    ; preds = %4732
  %4778 = icmp eq i32 %4694, 255
  br i1 %4778, label %4877, label %4779, !dx.controlflow.hints !132

; <label>:4779                                    ; preds = %4777
  %4780 = mul nuw nsw i32 %4694, 176
  %4781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4780, i32 undef)  ; BufferLoad(srv,index,wot)
  %4782 = extractvalue %dx.types.ResRet.f32 %4781, 0
  %4783 = extractvalue %dx.types.ResRet.f32 %4781, 1
  %4784 = extractvalue %dx.types.ResRet.f32 %4781, 2
  %4785 = extractvalue %dx.types.ResRet.f32 %4781, 3
  %4786 = add nuw nsw i32 %4780, 16
  %4787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4786, i32 undef)  ; BufferLoad(srv,index,wot)
  %4788 = extractvalue %dx.types.ResRet.f32 %4787, 0
  %4789 = extractvalue %dx.types.ResRet.f32 %4787, 1
  %4790 = add nuw nsw i32 %4780, 32
  %4791 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4790, i32 undef)  ; BufferLoad(srv,index,wot)
  %4792 = extractvalue %dx.types.ResRet.f32 %4791, 0
  %4793 = extractvalue %dx.types.ResRet.f32 %4791, 1
  %4794 = extractvalue %dx.types.ResRet.f32 %4791, 2
  %4795 = add nuw nsw i32 %4780, 48
  %4796 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4795, i32 undef)  ; BufferLoad(srv,index,wot)
  %4797 = extractvalue %dx.types.ResRet.f32 %4796, 0
  %4798 = extractvalue %dx.types.ResRet.f32 %4796, 1
  %4799 = extractvalue %dx.types.ResRet.f32 %4796, 2
  %4800 = extractvalue %dx.types.ResRet.f32 %4796, 3
  %4801 = add nuw nsw i32 %4780, 64
  %4802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4801, i32 undef)  ; BufferLoad(srv,index,wot)
  %4803 = extractvalue %dx.types.ResRet.f32 %4802, 0
  %4804 = extractvalue %dx.types.ResRet.f32 %4802, 1
  %4805 = extractvalue %dx.types.ResRet.f32 %4802, 2
  %4806 = extractvalue %dx.types.ResRet.f32 %4802, 3
  %4807 = add nuw nsw i32 %4780, 80
  %4808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4807, i32 undef)  ; BufferLoad(srv,index,wot)
  %4809 = extractvalue %dx.types.ResRet.f32 %4808, 0
  %4810 = extractvalue %dx.types.ResRet.f32 %4808, 1
  %4811 = extractvalue %dx.types.ResRet.f32 %4808, 2
  %4812 = extractvalue %dx.types.ResRet.f32 %4808, 3
  %4813 = add nuw nsw i32 %4780, 96
  %4814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4813, i32 undef)  ; BufferLoad(srv,index,wot)
  %4815 = extractvalue %dx.types.ResRet.f32 %4814, 0
  %4816 = extractvalue %dx.types.ResRet.f32 %4814, 1
  %4817 = extractvalue %dx.types.ResRet.f32 %4814, 2
  %4818 = extractvalue %dx.types.ResRet.f32 %4814, 3
  %4819 = bitcast float %4789 to i32
  %4820 = fmul fast float %4794, %70
  %4821 = fmul fast float %4794, %71
  %4822 = fmul fast float %4794, %72
  %4823 = fadd fast float %4820, %138
  %4824 = fadd fast float %4821, %139
  %4825 = fadd fast float %4822, %140
  %4826 = fmul fast float %4823, %4797
  %4827 = call float @dx.op.tertiary.f32(i32 46, float %4824, float %4803, float %4826)  ; FMad(a,b,c)
  %4828 = call float @dx.op.tertiary.f32(i32 46, float %4825, float %4809, float %4827)  ; FMad(a,b,c)
  %4829 = fadd fast float %4828, %4815
  %4830 = fmul fast float %4823, %4798
  %4831 = call float @dx.op.tertiary.f32(i32 46, float %4824, float %4804, float %4830)  ; FMad(a,b,c)
  %4832 = call float @dx.op.tertiary.f32(i32 46, float %4825, float %4810, float %4831)  ; FMad(a,b,c)
  %4833 = fadd fast float %4832, %4816
  %4834 = fmul fast float %4823, %4799
  %4835 = call float @dx.op.tertiary.f32(i32 46, float %4824, float %4805, float %4834)  ; FMad(a,b,c)
  %4836 = call float @dx.op.tertiary.f32(i32 46, float %4825, float %4811, float %4835)  ; FMad(a,b,c)
  %4837 = fadd fast float %4836, %4817
  %4838 = fmul fast float %4823, %4800
  %4839 = call float @dx.op.tertiary.f32(i32 46, float %4824, float %4806, float %4838)  ; FMad(a,b,c)
  %4840 = call float @dx.op.tertiary.f32(i32 46, float %4825, float %4812, float %4839)  ; FMad(a,b,c)
  %4841 = fadd fast float %4840, %4818
  %4842 = fdiv fast float %4829, %4841
  %4843 = fdiv fast float %4833, %4841
  %4844 = fdiv fast float %4837, %4841
  %4845 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4844)  ; FMax(a,b)
  %4846 = fmul fast float %240, 0x401921FB60000000
  %4847 = call float @dx.op.unary.f32(i32 13, float %4846)  ; Sin(value)
  %4848 = call float @dx.op.unary.f32(i32 12, float %4846)  ; Cos(value)
  %4849 = fsub fast float -0.000000e+00, %4847
  %4850 = fmul fast float %4784, 5.000000e-01
  %4851 = call float @dx.op.dot2.f32(i32 54, float %240, float %240, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %4852 = call float @dx.op.unary.f32(i32 22, float %4851)  ; Frc(value)
  %4853 = fmul fast float %4852, 0x404A7DD040000000
  %4854 = call float @dx.op.unary.f32(i32 22, float %4853)  ; Frc(value)
  %4855 = fmul fast float %4854, %4793
  %4856 = fadd fast float %4855, %4850
  %4857 = call float @dx.op.tertiary.f32(i32 46, float %4856, float %4849, float 0.000000e+00)  ; FMad(a,b,c)
  %4858 = call float @dx.op.tertiary.f32(i32 46, float %4856, float %4848, float 0.000000e+00)  ; FMad(a,b,c)
  %4859 = fadd fast float %4857, %4842
  %4860 = fadd fast float %4858, %4843
  %4861 = fmul fast float %4859, %4788
  %4862 = fmul fast float %4860, %4788
  %4863 = call float @dx.op.binary.f32(i32 35, float %4861, float %4784)  ; FMax(a,b)
  %4864 = call float @dx.op.binary.f32(i32 35, float %4862, float %4784)  ; FMax(a,b)
  %4865 = call float @dx.op.binary.f32(i32 36, float %4863, float %4785)  ; FMin(a,b)
  %4866 = call float @dx.op.binary.f32(i32 36, float %4864, float %4785)  ; FMin(a,b)
  %4867 = fadd fast float %4865, %4782
  %4868 = fadd fast float %4866, %4783
  %4869 = uitofp i32 %4819 to float
  %4870 = fadd fast float %4845, %4792
  %4871 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %60, float %4867, float %4868, float %4869, float undef, i32 0, i32 0, i32 undef, float %4870)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4872 = extractvalue %dx.types.ResRet.f32 %4871, 0
  %4873 = fadd fast float %4872, -1.000000e+00
  %4874 = fmul fast float %4873, %4753
  %4875 = fadd fast float %4874, 1.000000e+00
  %4876 = fmul fast float %4875, %4765
  br label %4877

; <label>:4877                                    ; preds = %4779, %4777
  %4878 = phi float [ %4876, %4779 ], [ %4765, %4777 ]
  %4879 = call float @dx.op.binary.f32(i32 36, float %4878, float %4878)  ; FMin(a,b)
  %4880 = call float @dx.op.binary.f32(i32 36, float %4878, float %4879)  ; FMin(a,b)
  %4881 = fcmp fast ogt float %4880, 0.000000e+00
  br i1 %4881, label %4882, label %4769, !dx.controlflow.hints !133

; <label>:4882                                    ; preds = %4877
  %4883 = fmul fast float %4878, %4687
  %4884 = fmul fast float %4878, %4688
  %4885 = fmul fast float %4878, %4689
  %4886 = fsub fast float %4671, %1899
  %4887 = fcmp fast ogt float %4886, 0.000000e+00
  %4888 = fsub fast float %140, %1899
  %4889 = fcmp fast ogt float %4888, 0.000000e+00
  %4890 = xor i1 %4889, %4887
  %4891 = fsub fast float %1899, %4671
  %4892 = fmul fast float %4891, 2.000000e+00
  %4893 = fadd fast float %4892, %4671
  %4894 = select i1 %4890, float %4671, float %4893
  %4895 = fsub fast float %4894, %140
  %4896 = call float @dx.op.dot3.f32(i32 55, float %4697, float %4698, float %4895, float %4697, float %4698, float %4895)  ; Dot3(ax,ay,az,bx,by,bz)
  %4897 = call float @dx.op.unary.f32(i32 25, float %4896)  ; Rsqrt(value)
  %4898 = fmul fast float %4897, %4697
  %4899 = fmul fast float %4897, %4698
  %4900 = fmul fast float %4897, %4895
  %4901 = fsub fast float %1899, %140
  %4902 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4901)  ; Dot3(ax,ay,az,bx,by,bz)
  %4903 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4898, float %4899, float %4900)  ; Dot3(ax,ay,az,bx,by,bz)
  %4904 = fdiv fast float 1.000000e+00, %4903
  %4905 = fmul fast float %4904, %4902
  %4906 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4888, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4907 = fcmp fast ogt float %4906, 0.000000e+00
  %4908 = fcmp fast olt float %4906, 0.000000e+00
  %4909 = zext i1 %4907 to i32
  %4910 = zext i1 %4908 to i32
  %4911 = sub nsw i32 %4909, %4910
  %4912 = sitofp i32 %4911 to float
  %4913 = fsub fast float %4894, %1899
  %4914 = call float @dx.op.dot3.f32(i32 55, float %4697, float %4698, float %4913, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4915 = fcmp fast ogt float %4914, 0.000000e+00
  %4916 = fcmp fast olt float %4914, 0.000000e+00
  %4917 = zext i1 %4915 to i32
  %4918 = zext i1 %4916 to i32
  %4919 = sub nsw i32 %4917, %4918
  %4920 = sitofp i32 %4919 to float
  %4921 = fcmp fast une float %4912, %4920
  br i1 %4921, label %4922, label %4932

; <label>:4922                                    ; preds = %4882
  %4923 = fmul fast float %4905, %4900
  %4924 = fmul fast float %4905, %4899
  %4925 = fmul fast float %4905, %4898
  %4926 = fmul fast float %4925, %4925
  %4927 = fmul fast float %4924, %4924
  %4928 = fadd fast float %4926, %4927
  %4929 = fmul fast float %4923, %4923
  %4930 = fadd fast float %4928, %4929
  %4931 = call float @dx.op.unary.f32(i32 24, float %4930)  ; Sqrt(value)
  br label %4944

; <label>:4932                                    ; preds = %4882
  %4933 = icmp slt i32 %4911, 0
  br i1 %4933, label %4934, label %4944

; <label>:4934                                    ; preds = %4932
  %4935 = fsub fast float %138, %4669
  %4936 = fsub fast float %139, %4670
  %4937 = fsub fast float %140, %4894
  %4938 = fmul fast float %4935, %4935
  %4939 = fmul fast float %4936, %4936
  %4940 = fadd fast float %4938, %4939
  %4941 = fmul fast float %4937, %4937
  %4942 = fadd fast float %4940, %4941
  %4943 = call float @dx.op.unary.f32(i32 24, float %4942)  ; Sqrt(value)
  br label %4944

; <label>:4944                                    ; preds = %4934, %4932, %4922
  %4945 = phi float [ %4931, %4922 ], [ %4943, %4934 ], [ 0.000000e+00, %4932 ]
  %4946 = and i1 %4889, %4887
  %4947 = fsub fast float -0.000000e+00, %4945
  %4948 = select i1 %4946, float -0.000000e+00, float %4947
  %4949 = fmul fast float %1900, 0x3FF7154760000000
  %4950 = fmul fast float %4949, %4948
  %4951 = fmul fast float %1901, 0x3FF7154760000000
  %4952 = fmul fast float %4951, %4948
  %4953 = fmul fast float %1902, 0x3FF7154760000000
  %4954 = fmul fast float %4953, %4948
  %4955 = call float @dx.op.unary.f32(i32 21, float %4950)  ; Exp(value)
  %4956 = call float @dx.op.unary.f32(i32 21, float %4952)  ; Exp(value)
  %4957 = call float @dx.op.unary.f32(i32 21, float %4954)  ; Exp(value)
  %4958 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4959 = call float @dx.op.unary.f32(i32 7, float %4956)  ; Saturate(value)
  %4960 = call float @dx.op.unary.f32(i32 7, float %4957)  ; Saturate(value)
  %4961 = fmul fast float %4883, %4958
  %4962 = fmul fast float %4884, %4959
  %4963 = fmul fast float %4885, %4960
  %4964 = fsub fast float %4703, %2099
  %4965 = fsub fast float %4704, %2098
  %4966 = fsub fast float %4705, %2097
  %4967 = call float @dx.op.dot3.f32(i32 55, float %4964, float %4965, float %4966, float %4964, float %4965, float %4966)  ; Dot3(ax,ay,az,bx,by,bz)
  %4968 = call float @dx.op.unary.f32(i32 25, float %4967)  ; Rsqrt(value)
  %4969 = fmul fast float %4968, %4964
  %4970 = fmul fast float %4968, %4965
  %4971 = fmul fast float %4968, %4966
  %4972 = call float @dx.op.dot3.f32(i32 55, float %4703, float %4704, float %4705, float %2106, float %2107, float %2108)  ; Dot3(ax,ay,az,bx,by,bz)
  %4973 = call float @dx.op.dot3.f32(i32 55, float %2096, float %2095, float %2094, float %4969, float %4970, float %4971)  ; Dot3(ax,ay,az,bx,by,bz)
  %4974 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4975 = fmul fast float %4974, %4710
  %4976 = fmul fast float %4974, %4974
  %4977 = fmul fast float %4976, %3476
  %4978 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4979 = fmul fast float %4975, %4978
  %4980 = bitcast float %4700 to i32
  %4981 = ashr i32 %4980, 1
  %4982 = sub nsw i32 1597463007, %4981
  %4983 = bitcast i32 %4982 to float
  %4984 = fmul fast float %4983, %4697
  %4985 = fmul fast float %4983, %4698
  %4986 = fmul fast float %4983, %4699
  %4987 = fsub fast float %4984, %2099
  %4988 = fsub fast float %4985, %2098
  %4989 = fsub fast float %4986, %2097
  %4990 = call float @dx.op.dot3.f32(i32 55, float %4987, float %4988, float %4989, float %4987, float %4988, float %4989)  ; Dot3(ax,ay,az,bx,by,bz)
  %4991 = call float @dx.op.unary.f32(i32 25, float %4990)  ; Rsqrt(value)
  %4992 = fmul fast float %4987, %4991
  %4993 = fmul fast float %4988, %4991
  %4994 = fmul fast float %4989, %4991
  %4995 = call float @dx.op.dot3.f32(i32 55, float %2106, float %2107, float %2108, float %4992, float %4993, float %4994)  ; Dot3(ax,ay,az,bx,by,bz)
  %4996 = fmul fast float %4995, %4995
  %4997 = call float @dx.op.unary.f32(i32 6, float %4972)  ; FAbs(value)
  %4998 = fsub fast float 1.000000e+00, %2109
  %4999 = call float @dx.op.binary.f32(i32 35, float %4998, float 0x3F847AE140000000)  ; FMax(a,b)
  %5000 = fmul fast float %4999, %4999
  %5001 = fmul fast float %5000, %5000
  %5002 = fsub fast float 1.000000e+00, %5001
  %5003 = fmul fast float %2114, %2114
  %5004 = fmul fast float %5003, %5002
  %5005 = fadd fast float %5004, %5001
  %5006 = bitcast float %5005 to i32
  %5007 = ashr i32 %5006, 1
  %5008 = add nsw i32 %5007, 532487669
  %5009 = bitcast i32 %5008 to float
  %5010 = fadd fast float %5009, %2114
  %5011 = fmul fast float %5001, %4996
  %5012 = fsub fast float 1.000000e+00, %4996
  %5013 = fadd fast float %5012, %5011
  %5014 = fmul fast float %4997, %4997
  %5015 = fmul fast float %5014, %5002
  %5016 = fadd fast float %5015, %5001
  %5017 = bitcast float %5016 to i32
  %5018 = ashr i32 %5017, 1
  %5019 = add nsw i32 %5018, 532487669
  %5020 = bitcast i32 %5019 to float
  %5021 = fadd fast float %5020, %4997
  %5022 = fmul fast float %5013, %5013
  %5023 = fmul fast float %5022, %5010
  %5024 = fmul fast float %5023, %5021
  %5025 = fdiv fast float 1.000000e+00, %5024
  %5026 = bitcast float %5001 to i32
  %5027 = sitofp i32 %5026 to float
  %5028 = fmul fast float %5027, 0x3FE7F73180000000
  %5029 = fadd fast float %5028, 0x41AFE27C40000000
  %5030 = fptosi float %5029 to i32
  %5031 = bitcast i32 %5030 to float
  %5032 = fmul fast float %4666, 0x3FD80E9D60000000
  %5033 = fmul fast float %5032, %4983
  %5034 = fadd fast float %5031, %5033
  %5035 = bitcast float %5034 to i32
  %5036 = sub nsw i32 2129859010, %5035
  %5037 = bitcast i32 %5036 to float
  %5038 = fmul fast float %5001, %5025
  %5039 = fmul fast float %5038, %5031
  %5040 = fmul fast float %5039, %5037
  %5041 = call float @dx.op.unary.f32(i32 6, float %4973)  ; FAbs(value)
  %5042 = fsub fast float 1.000000e+00, %5041
  %5043 = bitcast float %5042 to i32
  %5044 = sitofp i32 %5043 to float
  %5045 = fmul fast float %5044, 5.000000e+00
  %5046 = fadd fast float %5045, 0xC1EFBF8940000000
  %5047 = fptosi float %5046 to i32
  %5048 = bitcast i32 %5047 to float
  %5049 = fsub fast float 1.000000e+00, %2103
  %5050 = fsub fast float 1.000000e+00, %2104
  %5051 = fsub fast float 1.000000e+00, %2112
  %5052 = fmul fast float %5048, %5049
  %5053 = fmul fast float %5048, %5050
  %5054 = fmul fast float %5048, %5051
  %5055 = fadd fast float %5052, %2103
  %5056 = fadd fast float %5053, %2104
  %5057 = fadd fast float %5054, %2112
  br i1 %3391, label %5058, label %5081

; <label>:5058                                    ; preds = %4944
  %5059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1477, float %5041, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5060 = extractvalue %dx.types.ResRet.f32 %5059, 0
  %5061 = extractvalue %dx.types.ResRet.f32 %5059, 1
  %5062 = extractvalue %dx.types.ResRet.f32 %5059, 2
  %5063 = fadd fast float %5060, -5.000000e-01
  %5064 = fadd fast float %5061, -5.000000e-01
  %5065 = fadd fast float %5062, -5.000000e-01
  %5066 = fmul fast float %2103, 4.000000e+00
  %5067 = fmul fast float %5066, %5049
  %5068 = fmul fast float %5067, %5063
  %5069 = fmul fast float %2104, 4.000000e+00
  %5070 = fmul fast float %5069, %5050
  %5071 = fmul fast float %5070, %5064
  %5072 = fmul fast float %2112, 4.000000e+00
  %5073 = fmul fast float %5072, %5051
  %5074 = fmul fast float %5073, %5065
  %5075 = fadd fast float %5068, %5055
  %5076 = fadd fast float %5071, %5056
  %5077 = fadd fast float %5074, %5057
  %5078 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5079 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5080 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  br label %5081

; <label>:5081                                    ; preds = %5058, %4944
  %5082 = phi float [ %5078, %5058 ], [ %5055, %4944 ]
  %5083 = phi float [ %5079, %5058 ], [ %5056, %4944 ]
  %5084 = phi float [ %5080, %5058 ], [ %5057, %4944 ]
  %5085 = fmul fast float %4972, 9.843750e-01
  %5086 = fadd fast float %5085, 7.812500e-03
  %5087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5086, float %3381, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5088 = extractvalue %dx.types.ResRet.f32 %5087, 2
  %5089 = extractvalue %dx.types.ResRet.f32 %5087, 3
  %5090 = fmul fast float %5088, %2103
  %5091 = fmul fast float %5088, %2104
  %5092 = fmul fast float %5088, %2112
  %5093 = fadd fast float %5090, %5089
  %5094 = fadd fast float %5091, %5089
  %5095 = fadd fast float %5092, %5089
  br i1 %3391, label %5096, label %5119

; <label>:5096                                    ; preds = %5081
  %5097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1477, float %4972, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5098 = extractvalue %dx.types.ResRet.f32 %5097, 0
  %5099 = extractvalue %dx.types.ResRet.f32 %5097, 1
  %5100 = extractvalue %dx.types.ResRet.f32 %5097, 2
  %5101 = fadd fast float %5098, -5.000000e-01
  %5102 = fadd fast float %5099, -5.000000e-01
  %5103 = fadd fast float %5100, -5.000000e-01
  %5104 = fmul fast float %2103, 4.000000e+00
  %5105 = fmul fast float %5104, %5049
  %5106 = fmul fast float %5105, %5101
  %5107 = fmul fast float %2104, 4.000000e+00
  %5108 = fmul fast float %5107, %5050
  %5109 = fmul fast float %5108, %5102
  %5110 = fmul fast float %2112, 4.000000e+00
  %5111 = fmul fast float %5110, %5051
  %5112 = fmul fast float %5111, %5103
  %5113 = fadd fast float %5106, %5093
  %5114 = fadd fast float %5109, %5094
  %5115 = fadd fast float %5112, %5095
  %5116 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  %5117 = call float @dx.op.unary.f32(i32 7, float %5114)  ; Saturate(value)
  %5118 = call float @dx.op.unary.f32(i32 7, float %5115)  ; Saturate(value)
  br label %5119

; <label>:5119                                    ; preds = %5096, %5081
  %5120 = phi float [ %5116, %5096 ], [ %5093, %5081 ]
  %5121 = phi float [ %5117, %5096 ], [ %5094, %5081 ]
  %5122 = phi float [ %5118, %5096 ], [ %5095, %5081 ]
  %5123 = call float @dx.op.binary.f32(i32 35, float %5121, float %5122)  ; FMax(a,b)
  %5124 = call float @dx.op.binary.f32(i32 35, float %5120, float %5123)  ; FMax(a,b)
  %5125 = fsub fast float 1.000000e+00, %5124
  %5126 = fmul fast float %5082, %5040
  %5127 = fmul fast float %5083, %5040
  %5128 = fmul fast float %5084, %5040
  %5129 = fsub fast float 1.000000e+00, %4973
  %5130 = bitcast float %5129 to i32
  %5131 = sitofp i32 %5130 to float
  %5132 = fmul fast float %5131, 5.000000e+00
  %5133 = fadd fast float %5132, 0xC1EFBF8940000000
  %5134 = fptosi float %5133 to i32
  %5135 = bitcast i32 %5134 to float
  %5136 = fmul fast float %5135, %1476
  %5137 = fmul fast float %5125, %5136
  %5138 = fmul fast float %5137, %3441
  %5139 = fmul fast float %5137, %3442
  %5140 = fmul fast float %5137, %3443
  %5141 = fadd fast float %5138, %5126
  %5142 = fadd fast float %5139, %5127
  %5143 = fadd fast float %5140, %5128
  %5144 = fmul fast float %4961, %1497
  %5145 = fmul fast float %5144, %4979
  %5146 = fmul fast float %5145, %5125
  %5147 = fmul fast float %4962, %1497
  %5148 = fmul fast float %5147, %4979
  %5149 = fmul fast float %5148, %5125
  %5150 = fmul fast float %4963, %1497
  %5151 = fmul fast float %5150, %4979
  %5152 = fmul fast float %5151, %5125
  %5153 = fadd fast float %5146, %4640
  %5154 = fadd fast float %5149, %4641
  %5155 = fadd fast float %5152, %4642
  %5156 = fmul fast float %5145, %5141
  %5157 = fmul fast float %5148, %5142
  %5158 = fmul fast float %5151, %5143
  %5159 = fadd fast float %5156, %4637
  %5160 = fadd fast float %5157, %4638
  %5161 = fadd fast float %5158, %4639
  br label %4769

; <label>:5162                                    ; preds = %4769
  br label %5163

; <label>:5163                                    ; preds = %5162, %4603
  %5164 = phi float [ %4605, %4603 ], [ %4770, %5162 ]
  %5165 = phi float [ %4606, %4603 ], [ %4771, %5162 ]
  %5166 = phi float [ %4607, %4603 ], [ %4772, %5162 ]
  %5167 = phi float [ %4608, %4603 ], [ %4773, %5162 ]
  %5168 = phi float [ %4609, %4603 ], [ %4774, %5162 ]
  %5169 = phi float [ %4610, %4603 ], [ %4775, %5162 ]
  %5170 = add i32 %4604, 1
  %5171 = icmp ugt i32 %5170, %4600
  br i1 %5171, label %5172, label %4603

; <label>:5172                                    ; preds = %5163
  br label %5173

; <label>:5173                                    ; preds = %5172, %4553, %4543
  %5174 = phi float [ %4544, %4543 ], [ %4544, %4553 ], [ %5164, %5172 ]
  %5175 = phi float [ %4545, %4543 ], [ %4545, %4553 ], [ %5165, %5172 ]
  %5176 = phi float [ %4546, %4543 ], [ %4546, %4553 ], [ %5166, %5172 ]
  %5177 = phi float [ %4547, %4543 ], [ %4547, %4553 ], [ %5167, %5172 ]
  %5178 = phi float [ %4548, %4543 ], [ %4548, %4553 ], [ %5168, %5172 ]
  %5179 = phi float [ %4549, %4543 ], [ %4549, %4553 ], [ %5169, %5172 ]
  %5180 = fmul fast float %1497, %1497
  %5181 = fsub fast float 1.000000e+00, %5180
  %5182 = call float @dx.op.dot3.f32(i32 55, float %5181, float %5181, float %5181, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5183 = fsub fast float 1.000000e+00, %5182
  %5184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5185 = extractvalue %dx.types.CBufRet.f32 %5184, 0
  %5186 = fmul fast float %5185, %3447
  %5187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5188 = extractvalue %dx.types.CBufRet.f32 %5187, 3
  %5189 = fsub fast float 1.000000e+00, %1475
  %5190 = call float @dx.op.unary.f32(i32 7, float %5189)  ; Saturate(value)
  %5191 = fadd fast float %5179, %1474
  %5192 = fmul fast float %5191, %1475
  %5193 = fmul fast float %5190, %5188
  %5194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5194, 3
  %5196 = fmul fast float %5177, %2100
  %5197 = fmul fast float %5178, %2101
  %5198 = fmul fast float %5179, %2102
  %5199 = fcmp fast ogt float %82, %189
  %5200 = and i1 %5199, %1905
  %5201 = or i1 %1911, %5200
  %5202 = icmp eq i32 %1904, 2
  %5203 = fcmp fast ole float %82, %189
  %5204 = and i1 %5203, %5202
  %5205 = or i1 %5204, %5201
  br i1 %5200, label %5206, label %5465

; <label>:5206                                    ; preds = %5173
  %5207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5208 = extractvalue %dx.types.CBufRet.f32 %5207, 2
  %5209 = extractvalue %dx.types.CBufRet.f32 %5207, 3
  %5210 = fmul fast float %5208, %91
  %5211 = fmul fast float %5209, %92
  %5212 = call float @dx.op.unary.f32(i32 7, float %5210)  ; Saturate(value)
  %5213 = call float @dx.op.unary.f32(i32 7, float %5211)  ; Saturate(value)
  %5214 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5212, float %5213, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5215 = extractvalue %dx.types.ResRet.f32 %5214, 0
  %5216 = extractvalue %dx.types.ResRet.f32 %5214, 1
  %5217 = extractvalue %dx.types.ResRet.f32 %5214, 2
  %5218 = extractvalue %dx.types.ResRet.f32 %5214, 3
  %5219 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5212, float %5213, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5220 = extractvalue %dx.types.ResRet.f32 %5219, 0
  %5221 = extractvalue %dx.types.ResRet.f32 %5219, 1
  %5222 = extractvalue %dx.types.ResRet.f32 %5219, 2
  %5223 = extractvalue %dx.types.ResRet.f32 %5219, 3
  %5224 = call float @dx.op.binary.f32(i32 35, float %5216, float %5217)  ; FMax(a,b)
  %5225 = call float @dx.op.binary.f32(i32 35, float %5215, float %5224)  ; FMax(a,b)
  %5226 = call float @dx.op.binary.f32(i32 35, float %5225, float %5218)  ; FMax(a,b)
  %5227 = call float @dx.op.binary.f32(i32 36, float %5221, float %5222)  ; FMin(a,b)
  %5228 = call float @dx.op.binary.f32(i32 36, float %5220, float %5227)  ; FMin(a,b)
  %5229 = call float @dx.op.binary.f32(i32 36, float %5228, float %5223)  ; FMin(a,b)
  %5230 = fmul fast float %5226, 2.550000e+02
  %5231 = fadd fast float %5230, 0x3F70101020000000
  %5232 = fptoui float %5231 to i32
  %5233 = fmul fast float %5229, 2.550000e+02
  %5234 = fadd fast float %5233, 0x3F70101020000000
  %5235 = fptoui float %5234 to i32
  %5236 = icmp ult i32 %5232, %5235
  br i1 %5236, label %5237, label %5405

; <label>:5237                                    ; preds = %5206
  %5238 = fcmp fast ogt float %81, 9.843750e-01
  %5239 = fadd fast float %82, -4.000000e+00
  %5240 = select i1 %5238, float -4.000000e+00, float %5239
  %5241 = call float @dx.op.binary.f32(i32 35, float %5240, float 0.000000e+00)  ; FMax(a,b)
  %5242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5243 = extractvalue %dx.types.CBufRet.f32 %5242, 0
  %5244 = fadd fast float %5243, %5241
  %5245 = extractvalue %dx.types.CBufRet.f32 %5242, 2
  %5246 = fmul fast float %5244, %5245
  %5247 = call float @dx.op.unary.f32(i32 23, float %5246)  ; Log(value)
  %5248 = extractvalue %dx.types.CBufRet.f32 %5242, 3
  %5249 = fmul fast float %5248, %5247
  %5250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5251 = extractvalue %dx.types.CBufRet.f32 %5250, 2
  %5252 = fmul fast float %5249, %5251
  %5253 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5254 = uitofp i32 %5232 to float
  %5255 = uitofp i32 %5235 to float
  %5256 = fadd fast float %5254, 5.000000e-01
  %5257 = fadd fast float %5255, 5.000000e-01
  %5258 = fmul fast float %5251, %5256
  %5259 = fmul fast float %5251, %5257
  %5260 = fadd fast float %5258, 0x3F0FFB4800000000
  %5261 = fadd fast float %5259, 0xBF0FFB4800000000
  %5262 = call float @dx.op.binary.f32(i32 35, float %5253, float %5260)  ; FMax(a,b)
  %5263 = call float @dx.op.binary.f32(i32 36, float %5262, float %5261)  ; FMin(a,b)
  %5264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5265 = extractvalue %dx.types.CBufRet.f32 %5264, 1
  %5266 = extractvalue %dx.types.CBufRet.f32 %5264, 2
  %5267 = extractvalue %dx.types.CBufRet.f32 %5264, 0
  %5268 = fmul fast float %5265, %5263
  %5269 = fadd fast float %5267, %5268
  %5270 = fadd fast float %5267, %5266
  %5271 = fsub fast float %5265, %5266
  %5272 = fadd fast float %5271, %5267
  %5273 = call float @dx.op.binary.f32(i32 35, float %5269, float %5270)  ; FMax(a,b)
  %5274 = call float @dx.op.binary.f32(i32 36, float %5273, float %5272)  ; FMin(a,b)
  %5275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %5212, float %5213, float %5274, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5276 = extractvalue %dx.types.ResRet.f32 %5275, 0
  %5277 = extractvalue %dx.types.ResRet.f32 %5275, 1
  %5278 = extractvalue %dx.types.ResRet.f32 %5275, 2
  %5279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.i32 %5279, 0
  %5281 = extractvalue %dx.types.CBufRet.i32 %5279, 1
  %5282 = uitofp i32 %5280 to float
  %5283 = uitofp i32 %5281 to float
  %5284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5285 = extractvalue %dx.types.CBufRet.f32 %5284, 0
  %5286 = extractvalue %dx.types.CBufRet.f32 %5284, 1
  %5287 = fmul fast float %5282, %5212
  %5288 = fmul fast float %5283, %5213
  %5289 = fadd fast float %5287, -5.000000e-01
  %5290 = fadd fast float %5288, -5.000000e-01
  %5291 = call float @dx.op.unary.f32(i32 22, float %5289)  ; Frc(value)
  %5292 = call float @dx.op.unary.f32(i32 22, float %5290)  ; Frc(value)
  %5293 = fmul fast float %5291, %5291
  %5294 = fmul fast float %5293, %5291
  %5295 = fsub fast float 3.000000e+00, %5291
  %5296 = fmul fast float %5293, %5295
  %5297 = fmul fast float %5291, 3.000000e+00
  %5298 = fmul fast float %5294, 3.000000e+00
  %5299 = fmul fast float %5293, 6.000000e+00
  %5300 = fsub fast float %5298, %5299
  %5301 = fadd fast float %5300, 4.000000e+00
  %5302 = fmul fast float %5301, 0x3FC5555560000000
  %5303 = fmul fast float %5294, -3.000000e+00
  %5304 = fadd fast float %5293, %5291
  %5305 = fmul fast float %5304, 3.000000e+00
  %5306 = fadd fast float %5303, 1.000000e+00
  %5307 = fadd fast float %5306, %5305
  %5308 = fmul fast float %5294, 0x3FC5555560000000
  %5309 = fmul fast float %5292, %5292
  %5310 = fmul fast float %5309, %5292
  %5311 = fsub fast float 3.000000e+00, %5292
  %5312 = fmul fast float %5309, %5311
  %5313 = fmul fast float %5292, 3.000000e+00
  %5314 = fmul fast float %5310, 3.000000e+00
  %5315 = fmul fast float %5309, 6.000000e+00
  %5316 = fsub fast float %5314, %5315
  %5317 = fadd fast float %5316, 4.000000e+00
  %5318 = fmul fast float %5317, 0x3FC5555560000000
  %5319 = fmul fast float %5310, -3.000000e+00
  %5320 = fadd fast float %5309, %5292
  %5321 = fmul fast float %5320, 3.000000e+00
  %5322 = fadd fast float %5319, 1.000000e+00
  %5323 = fadd fast float %5322, %5321
  %5324 = fmul fast float %5310, 0x3FC5555560000000
  %5325 = fadd fast float %5291, 1.000000e+00
  %5326 = fsub fast float 1.000000e+00, %5297
  %5327 = fadd fast float %5326, %5296
  %5328 = fadd fast float %5327, %5301
  %5329 = fmul fast float %5328, 0x3FC5555560000000
  %5330 = fdiv fast float %5302, %5329
  %5331 = fsub fast float %5325, %5330
  %5332 = fsub fast float 1.000000e+00, %5291
  %5333 = fadd fast float %5307, %5294
  %5334 = fmul fast float %5333, 0x3FC5555560000000
  %5335 = fdiv fast float %5308, %5334
  %5336 = fadd fast float %5332, %5335
  %5337 = fadd fast float %5292, 1.000000e+00
  %5338 = fsub fast float 1.000000e+00, %5313
  %5339 = fadd fast float %5338, %5312
  %5340 = fadd fast float %5339, %5317
  %5341 = fmul fast float %5340, 0x3FC5555560000000
  %5342 = fdiv fast float %5318, %5341
  %5343 = fsub fast float %5337, %5342
  %5344 = fsub fast float 1.000000e+00, %5292
  %5345 = fadd fast float %5323, %5310
  %5346 = fmul fast float %5345, 0x3FC5555560000000
  %5347 = fdiv fast float %5324, %5346
  %5348 = fadd fast float %5347, %5344
  %5349 = fmul fast float %5331, %5285
  %5350 = fsub fast float %5212, %5349
  %5351 = fmul fast float %5336, %5285
  %5352 = fadd fast float %5351, %5212
  %5353 = fmul fast float %5348, %5286
  %5354 = fadd fast float %5353, %5213
  %5355 = fmul fast float %5343, %5286
  %5356 = fsub fast float %5213, %5355
  %5357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5350, float %5356, float %5274, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5358 = extractvalue %dx.types.ResRet.f32 %5357, 0
  %5359 = extractvalue %dx.types.ResRet.f32 %5357, 1
  %5360 = extractvalue %dx.types.ResRet.f32 %5357, 2
  %5361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5352, float %5356, float %5274, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5362 = extractvalue %dx.types.ResRet.f32 %5361, 0
  %5363 = extractvalue %dx.types.ResRet.f32 %5361, 1
  %5364 = extractvalue %dx.types.ResRet.f32 %5361, 2
  %5365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5350, float %5354, float %5274, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5366 = extractvalue %dx.types.ResRet.f32 %5365, 0
  %5367 = extractvalue %dx.types.ResRet.f32 %5365, 1
  %5368 = extractvalue %dx.types.ResRet.f32 %5365, 2
  %5369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5352, float %5354, float %5274, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5370 = extractvalue %dx.types.ResRet.f32 %5369, 0
  %5371 = extractvalue %dx.types.ResRet.f32 %5369, 1
  %5372 = extractvalue %dx.types.ResRet.f32 %5369, 2
  %5373 = fsub fast float %5366, %5358
  %5374 = fsub fast float %5367, %5359
  %5375 = fsub fast float %5368, %5360
  %5376 = fmul fast float %5373, %5346
  %5377 = fmul fast float %5374, %5346
  %5378 = fmul fast float %5375, %5346
  %5379 = fadd fast float %5376, %5358
  %5380 = fadd fast float %5377, %5359
  %5381 = fadd fast float %5378, %5360
  %5382 = fsub fast float %5370, %5362
  %5383 = fsub fast float %5371, %5363
  %5384 = fsub fast float %5372, %5364
  %5385 = fmul fast float %5382, %5346
  %5386 = fmul fast float %5383, %5346
  %5387 = fmul fast float %5384, %5346
  %5388 = fsub fast float %5362, %5379
  %5389 = fadd fast float %5388, %5385
  %5390 = fsub fast float %5363, %5380
  %5391 = fadd fast float %5390, %5386
  %5392 = fsub fast float %5364, %5381
  %5393 = fadd fast float %5392, %5387
  %5394 = fmul fast float %5389, %5334
  %5395 = fmul fast float %5391, %5334
  %5396 = fmul fast float %5393, %5334
  %5397 = fadd fast float %5394, %5379
  %5398 = fadd fast float %5395, %5380
  %5399 = fadd fast float %5396, %5381
  %5400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5400, 1
  %5402 = fmul fast float %5397, %5401
  %5403 = fmul fast float %5398, %5401
  %5404 = fmul fast float %5399, %5401
  br label %5405

; <label>:5405                                    ; preds = %5237, %5206
  %5406 = phi float [ %5276, %5237 ], [ 1.000000e+00, %5206 ]
  %5407 = phi float [ %5277, %5237 ], [ 1.000000e+00, %5206 ]
  %5408 = phi float [ %5278, %5237 ], [ 1.000000e+00, %5206 ]
  %5409 = phi float [ %5402, %5237 ], [ 0.000000e+00, %5206 ]
  %5410 = phi float [ %5403, %5237 ], [ 0.000000e+00, %5206 ]
  %5411 = phi float [ %5404, %5237 ], [ 0.000000e+00, %5206 ]
  %5412 = fmul fast float %5409, %5183
  %5413 = fmul fast float %5410, %5183
  %5414 = fmul fast float %5411, %5183
  %5415 = call float @dx.op.dot3.f32(i32 55, float %5406, float %5407, float %5408, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5416 = call float @dx.op.dot3.f32(i32 55, float %5412, float %5413, float %5414, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5417 = select i1 %229, float %5415, float %5406
  %5418 = select i1 %229, float %5415, float %5407
  %5419 = select i1 %229, float 1.000000e+00, float %5408
  %5420 = select i1 %229, float %5416, float %5412
  %5421 = select i1 %229, float 0.000000e+00, float %5413
  %5422 = select i1 %229, float 0.000000e+00, float %5414
  %5423 = fmul fast float %5417, %5196
  %5424 = fmul fast float %5418, %5197
  %5425 = fmul fast float %5419, %5198
  %5426 = fadd fast float %5423, %5420
  %5427 = fadd fast float %5424, %5421
  %5428 = fadd fast float %5422, %5425
  %5429 = fmul fast float %5417, %5174
  %5430 = fmul fast float %5418, %5175
  %5431 = fmul fast float %5419, %5176
  %5432 = fmul fast float %91, 2.000000e+00
  %5433 = fmul fast float %5432, %5208
  %5434 = fmul fast float %92, 2.000000e+00
  %5435 = fmul fast float %5434, %5209
  %5436 = fsub fast float 1.000000e+00, %5433
  %5437 = fsub fast float 1.000000e+00, %5435
  %5438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.f32 %5438, 0
  %5440 = extractvalue %dx.types.CBufRet.f32 %5438, 1
  %5441 = extractvalue %dx.types.CBufRet.f32 %5438, 2
  %5442 = fmul fast float %5436, %5439
  %5443 = fmul fast float %5436, %5440
  %5444 = fmul fast float %5436, %5441
  %5445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.f32 %5445, 0
  %5447 = extractvalue %dx.types.CBufRet.f32 %5445, 1
  %5448 = extractvalue %dx.types.CBufRet.f32 %5445, 2
  %5449 = fmul fast float %5437, %5446
  %5450 = fmul fast float %5437, %5447
  %5451 = fmul fast float %5437, %5448
  %5452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5453 = extractvalue %dx.types.CBufRet.f32 %5452, 0
  %5454 = extractvalue %dx.types.CBufRet.f32 %5452, 1
  %5455 = extractvalue %dx.types.CBufRet.f32 %5452, 2
  %5456 = fadd fast float %5449, %5453
  %5457 = fadd fast float %5456, %5442
  %5458 = fadd fast float %5450, %5454
  %5459 = fadd fast float %5458, %5443
  %5460 = fadd fast float %5451, %5455
  %5461 = fadd fast float %5460, %5444
  %5462 = fmul fast float %5457, %189
  %5463 = fmul fast float %5459, %189
  %5464 = fmul fast float %5461, %189
  br label %5465

; <label>:5465                                    ; preds = %5405, %5173
  %5466 = phi float [ %5462, %5405 ], [ %138, %5173 ]
  %5467 = phi float [ %5463, %5405 ], [ %139, %5173 ]
  %5468 = phi float [ %5464, %5405 ], [ %140, %5173 ]
  %5469 = phi float [ %189, %5405 ], [ %82, %5173 ]
  %5470 = phi float [ %5426, %5405 ], [ %5196, %5173 ]
  %5471 = phi float [ %5427, %5405 ], [ %5197, %5173 ]
  %5472 = phi float [ %5428, %5405 ], [ %5198, %5173 ]
  %5473 = phi float [ %5429, %5405 ], [ %5174, %5173 ]
  %5474 = phi float [ %5430, %5405 ], [ %5175, %5173 ]
  %5475 = phi float [ %5431, %5405 ], [ %5176, %5173 ]
  %5476 = phi float [ %5406, %5405 ], [ 1.000000e+00, %5173 ]
  br i1 %5205, label %6631, label %5477

; <label>:5477                                    ; preds = %5465
  %5478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5479 = extractvalue %dx.types.CBufRet.f32 %5478, 0
  %5480 = extractvalue %dx.types.CBufRet.f32 %5478, 1
  %5481 = extractvalue %dx.types.CBufRet.f32 %5478, 2
  %5482 = extractvalue %dx.types.CBufRet.f32 %5478, 3
  %5483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5484 = extractvalue %dx.types.CBufRet.f32 %5483, 0
  %5485 = extractvalue %dx.types.CBufRet.f32 %5483, 1
  %5486 = extractvalue %dx.types.CBufRet.f32 %5483, 2
  %5487 = extractvalue %dx.types.CBufRet.f32 %5483, 3
  %5488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5489 = extractvalue %dx.types.CBufRet.f32 %5488, 0
  %5490 = extractvalue %dx.types.CBufRet.f32 %5488, 1
  %5491 = extractvalue %dx.types.CBufRet.f32 %5488, 2
  %5492 = extractvalue %dx.types.CBufRet.f32 %5488, 3
  %5493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5494 = extractvalue %dx.types.CBufRet.f32 %5493, 0
  %5495 = extractvalue %dx.types.CBufRet.f32 %5493, 1
  %5496 = extractvalue %dx.types.CBufRet.f32 %5493, 2
  %5497 = extractvalue %dx.types.CBufRet.f32 %5493, 3
  %5498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5499 = extractvalue %dx.types.CBufRet.f32 %5498, 3
  %5500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5501 = extractvalue %dx.types.CBufRet.f32 %5500, 3
  %5502 = extractvalue %dx.types.CBufRet.f32 %5500, 0
  %5503 = extractvalue %dx.types.CBufRet.f32 %5500, 1
  %5504 = extractvalue %dx.types.CBufRet.f32 %5500, 2
  %5505 = fcmp fast olt float %5504, -5.000000e-01
  %5506 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5467, float %5468, float %5466, float %5467, float %5468)  ; Dot3(ax,ay,az,bx,by,bz)
  %5507 = call float @dx.op.unary.f32(i32 25, float %5506)  ; Rsqrt(value)
  %5508 = fmul fast float %5507, %5506
  %5509 = fmul fast float %5507, %5466
  %5510 = fmul fast float %5507, %5467
  %5511 = fmul fast float %5507, %5468
  %5512 = fadd fast float %5508, %5482
  %5513 = call float @dx.op.dot3.f32(i32 55, float %5509, float %5510, float %5511, float %5479, float %5480, float %5481)  ; Dot3(ax,ay,az,bx,by,bz)
  %5514 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5515 = extractvalue %dx.types.CBufRet.i32 %5514, 1
  %5516 = and i32 %5515, 1
  %5517 = icmp ne i32 %5516, 0
  %5518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5519 = extractvalue %dx.types.CBufRet.f32 %5518, 2
  %5520 = fcmp fast ogt float %5519, 0.000000e+00
  %5521 = and i1 %5517, %5520
  br i1 %5521, label %5522, label %5928, !dx.controlflow.hints !134

; <label>:5522                                    ; preds = %5477
  %5523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5524 = extractvalue %dx.types.CBufRet.f32 %5523, 3
  %5525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.f32 %5525, 2
  %5527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5528 = extractvalue %dx.types.CBufRet.f32 %5527, 2
  %5529 = fsub fast float %5526, %5528
  %5530 = and i32 %5515, 2
  %5531 = extractvalue %dx.types.CBufRet.i32 %5514, 0
  %5532 = call i32 @dx.op.binary.i32(i32 40, i32 %5531, i32 3)  ; UMin(a,b)
  %5533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5534 = extractvalue %dx.types.CBufRet.f32 %5533, 0
  %5535 = extractvalue %dx.types.CBufRet.f32 %5533, 1
  %5536 = extractvalue %dx.types.CBufRet.f32 %5527, 0
  %5537 = extractvalue %dx.types.CBufRet.f32 %5527, 1
  %5538 = fsub fast float %5534, %5536
  %5539 = fsub fast float %5535, %5537
  %5540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5541 = extractvalue %dx.types.CBufRet.f32 %5540, 0
  %5542 = fcmp fast ogt float %5541, 0.000000e+00
  %5543 = fsub fast float -0.000000e+00, %5538
  %5544 = fsub fast float -0.000000e+00, %5539
  %5545 = call float @dx.op.dot2.f32(i32 54, float %5509, float %5510, float %5509, float %5510)  ; Dot2(ax,ay,bx,by)
  %5546 = call float @dx.op.dot2.f32(i32 54, float %5509, float %5510, float %5543, float %5544)  ; Dot2(ax,ay,bx,by)
  %5547 = fmul fast float %5546, 2.000000e+00
  %5548 = call float @dx.op.dot2.f32(i32 54, float %5543, float %5544, float %5543, float %5544)  ; Dot2(ax,ay,bx,by)
  %5549 = fmul fast float %5541, %5541
  %5550 = fsub fast float %5548, %5549
  %5551 = fmul fast float %5547, %5547
  %5552 = fmul fast float %5545, 4.000000e+00
  %5553 = fmul fast float %5552, %5550
  %5554 = fsub fast float %5551, %5553
  %5555 = fcmp fast ogt float %5554, 0.000000e+00
  br i1 %5555, label %5556, label %5571

; <label>:5556                                    ; preds = %5522
  %5557 = fcmp fast ogt float %5547, 0.000000e+00
  %5558 = call float @dx.op.unary.f32(i32 24, float %5554)  ; Sqrt(value)
  %5559 = fsub fast float -0.000000e+00, %5558
  %5560 = select i1 %5557, float %5558, float %5559
  %5561 = fadd fast float %5560, %5547
  %5562 = fmul float %5561, -5.000000e-01
  %5563 = fdiv fast float %5562, %5545
  %5564 = call float @dx.op.binary.f32(i32 35, float %5563, float 0.000000e+00)  ; FMax(a,b)
  %5565 = call float @dx.op.binary.f32(i32 36, float %5508, float %5564)  ; FMin(a,b)
  %5566 = fdiv fast float %5550, %5562
  %5567 = call float @dx.op.binary.f32(i32 35, float %5566, float 0.000000e+00)  ; FMax(a,b)
  %5568 = call float @dx.op.binary.f32(i32 36, float %5508, float %5567)  ; FMin(a,b)
  %5569 = call float @dx.op.binary.f32(i32 36, float %5565, float %5568)  ; FMin(a,b)
  %5570 = call float @dx.op.binary.f32(i32 35, float %5565, float %5568)  ; FMax(a,b)
  br label %5571

; <label>:5571                                    ; preds = %5556, %5522
  %5572 = phi float [ %5570, %5556 ], [ -1.000000e+00, %5522 ]
  %5573 = phi float [ %5569, %5556 ], [ -1.000000e+00, %5522 ]
  %5574 = phi i1 [ true, %5556 ], [ false, %5522 ]
  %5575 = and i1 %5542, %5574
  br i1 %5575, label %5576, label %5578

; <label>:5576                                    ; preds = %5571
  %5577 = fcmp fast oeq float %5573, %5572
  br i1 %5577, label %5881, label %5579

; <label>:5578                                    ; preds = %5571
  br i1 %5542, label %5881, label %5579

; <label>:5579                                    ; preds = %5578, %5576
  %5580 = phi float [ %5508, %5578 ], [ %5572, %5576 ]
  %5581 = phi float [ 0.000000e+00, %5578 ], [ %5573, %5576 ]
  %5582 = icmp ne i32 %5530, 0
  %5583 = fmul fast float %5580, %5511
  %5584 = fadd fast float %5583, %5524
  %5585 = fmul fast float %5584, %5580
  %5586 = select i1 %5582, float 0.000000e+00, float %5585
  %5587 = fcmp fast oeq float %5511, 0.000000e+00
  %5588 = fdiv fast float %5529, %5511
  %5589 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5588)  ; FMax(a,b)
  %5590 = select i1 %5587, float %5580, float %5589
  %5591 = call float @dx.op.binary.f32(i32 36, float %5580, float %5590)  ; FMin(a,b)
  %5592 = fcmp fast ogt float %5511, 0.000000e+00
  %5593 = fcmp fast olt float %5529, 0.000000e+00
  br i1 %5592, label %5594, label %5651

; <label>:5594                                    ; preds = %5579
  %5595 = icmp eq i32 %5530, 0
  br i1 %5593, label %5596, label %5640

; <label>:5596                                    ; preds = %5594
  %5597 = select i1 %5595, float %5580, float 0.000000e+00
  %5598 = fsub fast float -0.000000e+00, %5597
  %5599 = call float @dx.op.unary.f32(i32 6, float %5598)  ; FAbs(value)
  %5600 = fmul fast float %5597, %5511
  %5601 = fadd fast float %5600, %5524
  %5602 = fmul fast float %5599, %5601
  %5603 = fsub fast float %5586, %5602
  %5604 = fsub fast float %5580, %5599
  %5605 = select i1 %5595, float %5604, float 0.000000e+00
  %5606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5607 = extractvalue %dx.types.CBufRet.f32 %5606, 0
  %5608 = extractvalue %dx.types.CBufRet.f32 %5606, 1
  %5609 = extractvalue %dx.types.CBufRet.f32 %5606, 2
  %5610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5611 = extractvalue %dx.types.CBufRet.f32 %5610, 0
  %5612 = extractvalue %dx.types.CBufRet.f32 %5610, 1
  %5613 = extractvalue %dx.types.CBufRet.f32 %5610, 2
  %5614 = extractvalue %dx.types.CBufRet.f32 %5610, 3
  %5615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5616 = extractvalue %dx.types.CBufRet.f32 %5615, 3
  %5617 = call float @dx.op.binary.f32(i32 36, float %5603, float %5616)  ; FMin(a,b)
  %5618 = fmul fast float %5614, %5605
  %5619 = call float @dx.op.unary.f32(i32 7, float %5618)  ; Saturate(value)
  %5620 = fsub fast float %5611, %5607
  %5621 = fsub fast float %5612, %5608
  %5622 = fsub fast float %5613, %5609
  %5623 = fmul fast float %5619, %5620
  %5624 = fmul fast float %5619, %5621
  %5625 = fmul fast float %5619, %5622
  %5626 = fadd fast float %5623, %5607
  %5627 = fadd fast float %5624, %5608
  %5628 = fadd fast float %5625, %5609
  %5629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5630 = extractvalue %dx.types.CBufRet.f32 %5629, 0
  %5631 = extractvalue %dx.types.CBufRet.f32 %5629, 1
  %5632 = fadd fast float %5631, %5630
  %5633 = call float @dx.op.unary.f32(i32 7, float %5632)  ; Saturate(value)
  %5634 = extractvalue %dx.types.CBufRet.f32 %5629, 2
  %5635 = extractvalue %dx.types.CBufRet.f32 %5629, 3
  %5636 = fadd fast float %5635, %5634
  %5637 = call float @dx.op.unary.f32(i32 7, float %5636)  ; Saturate(value)
  %5638 = fmul fast float %5633, %5617
  %5639 = fmul fast float %5638, %5637
  br label %5881

; <label>:5640                                    ; preds = %5594
  br i1 %5595, label %5641, label %5662

; <label>:5641                                    ; preds = %5640
  %5642 = call float @dx.op.binary.f32(i32 36, float %5591, float %5581)  ; FMin(a,b)
  %5643 = fsub fast float %5591, %5642
  %5644 = fsub fast float %5643, %5580
  %5645 = call float @dx.op.unary.f32(i32 6, float %5644)  ; FAbs(value)
  %5646 = fadd fast float %5643, %5580
  %5647 = fmul fast float %5646, %5511
  %5648 = fadd fast float %5647, %5524
  %5649 = fmul fast float %5648, %5645
  %5650 = fsub fast float %5586, %5649
  br label %5662

; <label>:5651                                    ; preds = %5579
  br i1 %5593, label %5652, label %5662

; <label>:5652                                    ; preds = %5651
  %5653 = call float @dx.op.binary.f32(i32 35, float %5581, float %5591)  ; FMax(a,b)
  %5654 = icmp eq i32 %5530, 0
  %5655 = select i1 %5654, float %5591, float 0.000000e+00
  %5656 = fsub fast float -0.000000e+00, %5655
  %5657 = call float @dx.op.unary.f32(i32 6, float %5656)  ; FAbs(value)
  %5658 = fmul fast float %5655, %5511
  %5659 = fadd fast float %5658, %5524
  %5660 = fmul fast float %5657, %5659
  %5661 = fsub fast float %5586, %5660
  br label %5662

; <label>:5662                                    ; preds = %5652, %5651, %5641, %5640
  %5663 = phi float [ %5581, %5640 ], [ %5581, %5641 ], [ %5653, %5652 ], [ %5581, %5651 ]
  %5664 = phi float [ 0.000000e+00, %5640 ], [ %5645, %5641 ], [ %5657, %5652 ], [ 0.000000e+00, %5651 ]
  %5665 = phi float [ %5586, %5640 ], [ %5650, %5641 ], [ %5661, %5652 ], [ %5586, %5651 ]
  %5666 = phi float [ %5591, %5640 ], [ %5591, %5641 ], [ %5580, %5652 ], [ %5580, %5651 ]
  %5667 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 0
  store float -1.000000e+00, float* %5667, align 4, !tbaa !135, !noalias !137
  %5668 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 1
  store float -1.000000e+00, float* %5668, align 4, !tbaa !135, !noalias !137
  %5669 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 2
  store float -1.000000e+00, float* %5669, align 4, !tbaa !135, !noalias !137
  %5670 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 0
  store float -1.000000e+00, float* %5670, align 4, !tbaa !135, !noalias !137
  %5671 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 1
  store float -1.000000e+00, float* %5671, align 4, !tbaa !135, !noalias !137
  %5672 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 2
  store float -1.000000e+00, float* %5672, align 4, !tbaa !135, !noalias !137
  %5673 = icmp sgt i32 %5532, 0
  br i1 %5673, label %5674, label %5735

; <label>:5674                                    ; preds = %5662
  br label %5675

; <label>:5675                                    ; preds = %5724, %5674
  %5676 = phi i32 [ %5725, %5724 ], [ 0, %5674 ]
  %5677 = phi i32 [ %5726, %5724 ], [ 0, %5674 ]
  %5678 = add nuw i32 %5677, 171
  %5679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %5678)  ; CBufferLoadLegacy(handle,regIndex)
  %5680 = extractvalue %dx.types.CBufRet.f32 %5679, 0
  %5681 = extractvalue %dx.types.CBufRet.f32 %5679, 1
  %5682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5683 = extractvalue %dx.types.CBufRet.f32 %5682, 0
  %5684 = extractvalue %dx.types.CBufRet.f32 %5682, 1
  %5685 = fsub fast float %5680, %5683
  %5686 = fsub fast float %5681, %5684
  %5687 = extractvalue %dx.types.CBufRet.f32 %5679, 2
  %5688 = fsub fast float -0.000000e+00, %5685
  %5689 = fsub fast float -0.000000e+00, %5686
  %5690 = call float @dx.op.dot2.f32(i32 54, float %5509, float %5510, float %5688, float %5689)  ; Dot2(ax,ay,bx,by)
  %5691 = fmul fast float %5690, 2.000000e+00
  %5692 = call float @dx.op.dot2.f32(i32 54, float %5688, float %5689, float %5688, float %5689)  ; Dot2(ax,ay,bx,by)
  %5693 = fmul fast float %5687, %5687
  %5694 = fsub fast float %5692, %5693
  %5695 = fmul fast float %5691, %5691
  %5696 = fmul fast float %5552, %5694
  %5697 = fsub fast float %5695, %5696
  %5698 = fcmp fast ogt float %5697, 0.000000e+00
  br i1 %5698, label %5699, label %5714

; <label>:5699                                    ; preds = %5675
  %5700 = fcmp fast ogt float %5691, 0.000000e+00
  %5701 = call float @dx.op.unary.f32(i32 24, float %5697)  ; Sqrt(value)
  %5702 = fsub fast float -0.000000e+00, %5701
  %5703 = select i1 %5700, float %5701, float %5702
  %5704 = fadd fast float %5703, %5691
  %5705 = fmul float %5704, -5.000000e-01
  %5706 = fdiv fast float %5705, %5545
  %5707 = call float @dx.op.binary.f32(i32 35, float %5706, float 0.000000e+00)  ; FMax(a,b)
  %5708 = call float @dx.op.binary.f32(i32 36, float %5580, float %5707)  ; FMin(a,b)
  %5709 = fdiv fast float %5694, %5705
  %5710 = call float @dx.op.binary.f32(i32 35, float %5709, float 0.000000e+00)  ; FMax(a,b)
  %5711 = call float @dx.op.binary.f32(i32 36, float %5580, float %5710)  ; FMin(a,b)
  %5712 = call float @dx.op.binary.f32(i32 36, float %5708, float %5711)  ; FMin(a,b)
  %5713 = call float @dx.op.binary.f32(i32 35, float %5708, float %5711)  ; FMax(a,b)
  br label %5714

; <label>:5714                                    ; preds = %5699, %5675
  %5715 = phi float [ %5713, %5699 ], [ -1.000000e+00, %5675 ]
  %5716 = phi float [ %5712, %5699 ], [ -1.000000e+00, %5675 ]
  %5717 = phi i1 [ true, %5699 ], [ false, %5675 ]
  br i1 %5717, label %5718, label %5724

; <label>:5718                                    ; preds = %5714
  %5719 = call float @dx.op.binary.f32(i32 35, float %5663, float %5716)  ; FMax(a,b)
  %5720 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %5677
  store float %5719, float* %5720, align 4, !tbaa !135, !noalias !137
  %5721 = call float @dx.op.binary.f32(i32 35, float %5663, float %5715)  ; FMax(a,b)
  %5722 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %5677
  store float %5721, float* %5722, align 4, !tbaa !135, !noalias !137
  %5723 = add nsw i32 %5676, 1
  br label %5724

; <label>:5724                                    ; preds = %5718, %5714
  %5725 = phi i32 [ %5723, %5718 ], [ %5676, %5714 ]
  %5726 = add nuw nsw i32 %5677, 1
  %5727 = icmp eq i32 %5726, %5532
  br i1 %5727, label %5728, label %5675

; <label>:5728                                    ; preds = %5724
  %5729 = load float, float* %5669, align 4, !tbaa !135, !alias.scope !153, !noalias !156
  %5730 = load float, float* %5668, align 4, !tbaa !135, !alias.scope !159, !noalias !160
  %5731 = load float, float* %5667, align 4, !tbaa !135, !alias.scope !161, !noalias !162
  %5732 = load float, float* %5672, align 4, !tbaa !135, !alias.scope !163, !noalias !166
  %5733 = load float, float* %5671, align 4, !tbaa !135, !alias.scope !169, !noalias !170
  %5734 = load float, float* %5670, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  br label %5735

; <label>:5735                                    ; preds = %5728, %5662
  %5736 = phi float [ -1.000000e+00, %5662 ], [ %5734, %5728 ]
  %5737 = phi float [ -1.000000e+00, %5662 ], [ %5733, %5728 ]
  %5738 = phi float [ -1.000000e+00, %5662 ], [ %5732, %5728 ]
  %5739 = phi float [ -1.000000e+00, %5662 ], [ %5731, %5728 ]
  %5740 = phi float [ -1.000000e+00, %5662 ], [ %5730, %5728 ]
  %5741 = phi float [ -1.000000e+00, %5662 ], [ %5729, %5728 ]
  %5742 = phi i32 [ 0, %5662 ], [ %5725, %5728 ]
  %5743 = call float @dx.op.binary.f32(i32 36, float %5740, float %5741)  ; FMin(a,b)
  %5744 = call float @dx.op.binary.f32(i32 36, float %5739, float %5743)  ; FMin(a,b)
  %5745 = call float @dx.op.binary.f32(i32 35, float %5739, float %5740)  ; FMax(a,b)
  %5746 = call float @dx.op.binary.f32(i32 36, float %5745, float %5741)  ; FMin(a,b)
  %5747 = call float @dx.op.binary.f32(i32 36, float %5739, float %5740)  ; FMin(a,b)
  %5748 = call float @dx.op.binary.f32(i32 35, float %5747, float %5746)  ; FMax(a,b)
  %5749 = call float @dx.op.binary.f32(i32 35, float %5740, float %5741)  ; FMax(a,b)
  %5750 = call float @dx.op.binary.f32(i32 35, float %5739, float %5749)  ; FMax(a,b)
  store float %5744, float* %5667, align 4, !tbaa !135, !alias.scope !161, !noalias !162
  store float %5748, float* %5668, align 4, !tbaa !135, !alias.scope !159, !noalias !160
  store float %5750, float* %5669, align 4, !tbaa !135, !alias.scope !153, !noalias !156
  %5751 = call float @dx.op.binary.f32(i32 36, float %5737, float %5738)  ; FMin(a,b)
  %5752 = call float @dx.op.binary.f32(i32 36, float %5736, float %5751)  ; FMin(a,b)
  %5753 = call float @dx.op.binary.f32(i32 35, float %5736, float %5737)  ; FMax(a,b)
  %5754 = call float @dx.op.binary.f32(i32 36, float %5753, float %5738)  ; FMin(a,b)
  %5755 = call float @dx.op.binary.f32(i32 36, float %5736, float %5737)  ; FMin(a,b)
  %5756 = call float @dx.op.binary.f32(i32 35, float %5755, float %5754)  ; FMax(a,b)
  %5757 = call float @dx.op.binary.f32(i32 35, float %5737, float %5738)  ; FMax(a,b)
  %5758 = call float @dx.op.binary.f32(i32 35, float %5736, float %5757)  ; FMax(a,b)
  store float %5752, float* %5670, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  store float %5756, float* %5671, align 4, !tbaa !135, !alias.scope !169, !noalias !170
  store float %5758, float* %5672, align 4, !tbaa !135, !alias.scope !163, !noalias !166
  %5759 = sub nsw i32 3, %5742
  %5760 = icmp sgt i32 %5759, 2
  br i1 %5760, label %5761, label %5799

; <label>:5761                                    ; preds = %5735
  %5762 = icmp eq i32 %5530, 0
  %5763 = fsub fast float %5580, %5664
  %5764 = select i1 %5762, float %5763, float %5664
  %5765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5766 = extractvalue %dx.types.CBufRet.f32 %5765, 0
  %5767 = extractvalue %dx.types.CBufRet.f32 %5765, 1
  %5768 = extractvalue %dx.types.CBufRet.f32 %5765, 2
  %5769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5770 = extractvalue %dx.types.CBufRet.f32 %5769, 0
  %5771 = extractvalue %dx.types.CBufRet.f32 %5769, 1
  %5772 = extractvalue %dx.types.CBufRet.f32 %5769, 2
  %5773 = extractvalue %dx.types.CBufRet.f32 %5769, 3
  %5774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5775 = extractvalue %dx.types.CBufRet.f32 %5774, 3
  %5776 = call float @dx.op.binary.f32(i32 36, float %5665, float %5775)  ; FMin(a,b)
  %5777 = fmul fast float %5773, %5764
  %5778 = call float @dx.op.unary.f32(i32 7, float %5777)  ; Saturate(value)
  %5779 = fsub fast float %5770, %5766
  %5780 = fsub fast float %5771, %5767
  %5781 = fsub fast float %5772, %5768
  %5782 = fmul fast float %5778, %5779
  %5783 = fmul fast float %5778, %5780
  %5784 = fmul fast float %5778, %5781
  %5785 = fadd fast float %5782, %5766
  %5786 = fadd fast float %5783, %5767
  %5787 = fadd fast float %5784, %5768
  %5788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5789 = extractvalue %dx.types.CBufRet.f32 %5788, 0
  %5790 = extractvalue %dx.types.CBufRet.f32 %5788, 1
  %5791 = fadd fast float %5790, %5789
  %5792 = call float @dx.op.unary.f32(i32 7, float %5791)  ; Saturate(value)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5788, 2
  %5794 = extractvalue %dx.types.CBufRet.f32 %5788, 3
  %5795 = fadd fast float %5794, %5793
  %5796 = call float @dx.op.unary.f32(i32 7, float %5795)  ; Saturate(value)
  %5797 = fmul fast float %5792, %5776
  %5798 = fmul fast float %5797, %5796
  br label %5881

; <label>:5799                                    ; preds = %5735
  %5800 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %5759
  %5801 = load float, float* %5800, align 4, !tbaa !135, !noalias !137
  %5802 = fcmp fast olt float %5801, %5666
  %5803 = icmp sgt i32 %5742, 0
  %5804 = and i1 %5803, %5802
  br i1 %5804, label %5805, label %5842

; <label>:5805                                    ; preds = %5799
  br label %5806

; <label>:5806                                    ; preds = %5835, %5805
  %5807 = phi float [ %5836, %5835 ], [ %5664, %5805 ]
  %5808 = phi float [ %5837, %5835 ], [ %5665, %5805 ]
  %5809 = phi float [ %5817, %5835 ], [ %5801, %5805 ]
  %5810 = phi i32 [ %5814, %5835 ], [ %5759, %5805 ]
  %5811 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %5810
  %5812 = load float, float* %5811, align 4, !tbaa !135, !noalias !137
  %5813 = icmp slt i32 %5810, 2
  %5814 = add nsw i32 %5810, 1
  %5815 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %5814
  %5816 = load float, float* %5815, align 4, !tbaa !135, !noalias !137
  %5817 = select i1 %5813, float %5816, float %5580
  %5818 = call float @dx.op.binary.f32(i32 36, float %5817, float %5812)  ; FMin(a,b)
  %5819 = call float @dx.op.binary.f32(i32 36, float %5666, float %5818)  ; FMin(a,b)
  %5820 = icmp eq i32 %5530, 0
  %5821 = fadd fast float %5819, %5809
  %5822 = fmul fast float %5821, %5511
  %5823 = fadd fast float %5822, %5524
  br i1 %5820, label %5829, label %5824

; <label>:5824                                    ; preds = %5806
  %5825 = fsub fast float %5819, %5809
  %5826 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5825)  ; FMax(a,b)
  %5827 = fmul fast float %5826, %5823
  %5828 = fadd fast float %5827, %5808
  br label %5835

; <label>:5829                                    ; preds = %5806
  %5830 = fsub fast float %5809, %5819
  %5831 = call float @dx.op.unary.f32(i32 6, float %5830)  ; FAbs(value)
  %5832 = fadd fast float %5831, %5807
  %5833 = fmul fast float %5831, %5823
  %5834 = fsub fast float %5808, %5833
  br label %5835

; <label>:5835                                    ; preds = %5829, %5824
  %5836 = phi float [ %5826, %5824 ], [ %5832, %5829 ]
  %5837 = phi float [ %5828, %5824 ], [ %5834, %5829 ]
  %5838 = fcmp fast olt float %5817, %5666
  %5839 = icmp slt i32 %5814, 3
  %5840 = and i1 %5839, %5838
  br i1 %5840, label %5806, label %5841

; <label>:5841                                    ; preds = %5835
  br label %5842

; <label>:5842                                    ; preds = %5841, %5799
  %5843 = phi float [ %5664, %5799 ], [ %5836, %5841 ]
  %5844 = phi float [ %5665, %5799 ], [ %5837, %5841 ]
  %5845 = fsub fast float %5580, %5843
  %5846 = select i1 %5582, float %5843, float %5845
  %5847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5848 = extractvalue %dx.types.CBufRet.f32 %5847, 0
  %5849 = extractvalue %dx.types.CBufRet.f32 %5847, 1
  %5850 = extractvalue %dx.types.CBufRet.f32 %5847, 2
  %5851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5852 = extractvalue %dx.types.CBufRet.f32 %5851, 0
  %5853 = extractvalue %dx.types.CBufRet.f32 %5851, 1
  %5854 = extractvalue %dx.types.CBufRet.f32 %5851, 2
  %5855 = extractvalue %dx.types.CBufRet.f32 %5851, 3
  %5856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5857 = extractvalue %dx.types.CBufRet.f32 %5856, 3
  %5858 = call float @dx.op.binary.f32(i32 36, float %5844, float %5857)  ; FMin(a,b)
  %5859 = fmul fast float %5855, %5846
  %5860 = call float @dx.op.unary.f32(i32 7, float %5859)  ; Saturate(value)
  %5861 = fsub fast float %5852, %5848
  %5862 = fsub fast float %5853, %5849
  %5863 = fsub fast float %5854, %5850
  %5864 = fmul fast float %5860, %5861
  %5865 = fmul fast float %5860, %5862
  %5866 = fmul fast float %5860, %5863
  %5867 = fadd fast float %5864, %5848
  %5868 = fadd fast float %5865, %5849
  %5869 = fadd fast float %5866, %5850
  %5870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5871 = extractvalue %dx.types.CBufRet.f32 %5870, 0
  %5872 = extractvalue %dx.types.CBufRet.f32 %5870, 1
  %5873 = fadd fast float %5872, %5871
  %5874 = call float @dx.op.unary.f32(i32 7, float %5873)  ; Saturate(value)
  %5875 = extractvalue %dx.types.CBufRet.f32 %5870, 2
  %5876 = extractvalue %dx.types.CBufRet.f32 %5870, 3
  %5877 = fadd fast float %5876, %5875
  %5878 = call float @dx.op.unary.f32(i32 7, float %5877)  ; Saturate(value)
  %5879 = fmul fast float %5874, %5858
  %5880 = fmul fast float %5879, %5878
  br label %5881

; <label>:5881                                    ; preds = %5842, %5761, %5596, %5578, %5576
  %5882 = phi float [ %5605, %5596 ], [ %5764, %5761 ], [ %5846, %5842 ], [ 0.000000e+00, %5576 ], [ 0.000000e+00, %5578 ]
  %5883 = phi float [ %5639, %5596 ], [ %5798, %5761 ], [ %5880, %5842 ], [ 0.000000e+00, %5576 ], [ 0.000000e+00, %5578 ]
  %5884 = phi float [ %5626, %5596 ], [ %5785, %5761 ], [ %5867, %5842 ], [ 0.000000e+00, %5576 ], [ 0.000000e+00, %5578 ]
  %5885 = phi float [ %5627, %5596 ], [ %5786, %5761 ], [ %5868, %5842 ], [ 0.000000e+00, %5576 ], [ 0.000000e+00, %5578 ]
  %5886 = phi float [ %5628, %5596 ], [ %5787, %5761 ], [ %5869, %5842 ], [ 0.000000e+00, %5576 ], [ 0.000000e+00, %5578 ]
  %5887 = fmul fast float %5519, %5883
  %5888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5889 = extractvalue %dx.types.CBufRet.f32 %5888, 2
  %5890 = fsub fast float %5526, %5889
  %5891 = fcmp fast olt float %5887, -2.000000e+01
  %5892 = call float @dx.op.unary.f32(i32 21, float %5887)  ; Exp(value)
  %5893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5894 = extractvalue %dx.types.CBufRet.f32 %5893, 2
  %5895 = extractvalue %dx.types.CBufRet.f32 %5893, 3
  %5896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.f32 %5896, 2
  %5898 = fmul fast float %5895, %5890
  %5899 = call float @dx.op.unary.f32(i32 7, float %5898)  ; Saturate(value)
  %5900 = fsub fast float 1.000000e+00, %5899
  %5901 = fmul fast float %5511, 5.000000e-01
  %5902 = fadd fast float %5901, 5.000000e-01
  %5903 = call float @dx.op.unary.f32(i32 7, float %5902)  ; Saturate(value)
  %5904 = fsub fast float 1.000000e+00, %5903
  %5905 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5900)  ; FMax(a,b)
  %5906 = fdiv fast float %5904, %5905
  %5907 = fsub fast float %5890, %5468
  %5908 = call float @dx.op.unary.f32(i32 6, float %5907)  ; FAbs(value)
  %5909 = fmul fast float %5908, %5894
  %5910 = call float @dx.op.unary.f32(i32 7, float %5906)  ; Saturate(value)
  %5911 = fsub fast float 1.000000e+00, %5909
  %5912 = fmul fast float %5911, %5910
  %5913 = fadd fast float %5912, %5909
  %5914 = fmul fast float %5897, %5890
  %5915 = call float @dx.op.unary.f32(i32 7, float %5914)  ; Saturate(value)
  %5916 = fsub fast float 1.000000e+00, %5913
  %5917 = fmul fast float %5916, %5915
  %5918 = fadd fast float %5917, %5913
  %5919 = call float @dx.op.unary.f32(i32 7, float %5918)  ; Saturate(value)
  %5920 = fadd fast float %5892, -1.000000e+00
  %5921 = select i1 %5891, float -1.000000e+00, float %5920
  %5922 = fmul fast float %5919, %5921
  %5923 = fadd fast float %5922, 1.000000e+00
  %5924 = fsub fast float -0.000000e+00, %5922
  %5925 = fmul fast float %5884, %5924
  %5926 = fmul fast float %5885, %5924
  %5927 = fmul fast float %5886, %5924
  br label %5928

; <label>:5928                                    ; preds = %5881, %5477
  %5929 = phi float [ %5882, %5881 ], [ 0.000000e+00, %5477 ]
  %5930 = phi float [ %5923, %5881 ], [ 1.000000e+00, %5477 ]
  %5931 = phi float [ %5925, %5881 ], [ 0.000000e+00, %5477 ]
  %5932 = phi float [ %5926, %5881 ], [ 0.000000e+00, %5477 ]
  %5933 = phi float [ %5927, %5881 ], [ 0.000000e+00, %5477 ]
  %5934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5935 = extractvalue %dx.types.CBufRet.f32 %5934, 1
  %5936 = fsub fast float 1.000000e+00, %5930
  %5937 = fmul fast float %5936, %5512
  %5938 = fmul fast float %5937, %5935
  %5939 = fsub fast float %5512, %5938
  br i1 %5505, label %5940, label %5969, !dx.controlflow.hints !173

; <label>:5940                                    ; preds = %5928
  %5941 = fmul fast float %5513, %5502
  %5942 = fadd fast float %5941, %5503
  %5943 = call float @dx.op.unary.f32(i32 7, float %5942)  ; Saturate(value)
  %5944 = fmul fast float %5484, %5939
  %5945 = fsub fast float -0.000000e+00, %5944
  %5946 = fmul fast float %5485, %5939
  %5947 = fsub fast float -0.000000e+00, %5946
  %5948 = call float @dx.op.unary.f32(i32 21, float %5945)  ; Exp(value)
  %5949 = call float @dx.op.unary.f32(i32 21, float %5947)  ; Exp(value)
  %5950 = call float @dx.op.binary.f32(i32 35, float %5492, float %5948)  ; FMax(a,b)
  %5951 = call float @dx.op.binary.f32(i32 35, float %5492, float %5949)  ; FMax(a,b)
  %5952 = fsub fast float %5951, %5950
  %5953 = fmul fast float %5952, %5943
  %5954 = fadd fast float %5953, %5950
  %5955 = call float @dx.op.unary.f32(i32 7, float %5954)  ; Saturate(value)
  %5956 = fsub fast float %5489, %5494
  %5957 = fsub fast float %5490, %5495
  %5958 = fsub fast float %5491, %5496
  %5959 = fmul fast float %5943, %5956
  %5960 = fmul fast float %5943, %5957
  %5961 = fmul fast float %5943, %5958
  %5962 = fadd fast float %5959, %5494
  %5963 = fadd fast float %5960, %5495
  %5964 = fadd fast float %5961, %5496
  %5965 = fsub fast float 1.000000e+00, %5955
  %5966 = fmul fast float %5965, %5962
  %5967 = fmul fast float %5965, %5963
  %5968 = fmul fast float %5965, %5964
  br label %6028

; <label>:5969                                    ; preds = %5928
  %5970 = fmul fast float %5939, %5501
  %5971 = call float @dx.op.unary.f32(i32 7, float %5970)  ; Saturate(value)
  %5972 = fsub fast float 2.000000e+00, %5971
  %5973 = fmul fast float %5971, 9.921875e-01
  %5974 = fmul fast float %5973, %5972
  %5975 = fadd fast float %5974, 3.906250e-03
  %5976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %58, float %5975, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5977 = extractvalue %dx.types.ResRet.f32 %5976, 0
  %5978 = fsub fast float %5971, %5977
  %5979 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5978)  ; FMax(a,b)
  %5980 = fmul fast float %5487, %5468
  %5981 = call float @dx.op.unary.f32(i32 6, float %5980)  ; FAbs(value)
  %5982 = fcmp fast ogt float %5981, 0x3EB0C6F7A0000000
  br i1 %5982, label %5983, label %5989, !dx.controlflow.hints !174

; <label>:5983                                    ; preds = %5969
  %5984 = fmul fast float %5980, 0xBFF7154760000000
  %5985 = call float @dx.op.unary.f32(i32 21, float %5984)  ; Exp(value)
  %5986 = fsub fast float 1.000000e+00, %5985
  %5987 = fdiv fast float %5986, %5980
  %5988 = fmul fast float %5987, %5497
  br label %5989

; <label>:5989                                    ; preds = %5983, %5969
  %5990 = phi float [ %5988, %5983 ], [ %5497, %5969 ]
  %5991 = fadd fast float %5990, %5499
  %5992 = fmul fast float %5991, %5979
  %5993 = fmul fast float %5484, %5992
  %5994 = fsub fast float -0.000000e+00, %5993
  %5995 = fmul fast float %5485, %5992
  %5996 = fsub fast float -0.000000e+00, %5995
  %5997 = fmul fast float %5486, %5992
  %5998 = fsub fast float -0.000000e+00, %5997
  %5999 = call float @dx.op.unary.f32(i32 21, float %5994)  ; Exp(value)
  %6000 = call float @dx.op.unary.f32(i32 21, float %5996)  ; Exp(value)
  %6001 = call float @dx.op.unary.f32(i32 21, float %5998)  ; Exp(value)
  %6002 = fmul fast float %5513, %5513
  %6003 = fadd fast float %6002, 1.000000e+00
  %6004 = fmul fast float %6003, 0x3FAE8EC8A0000000
  %6005 = fmul fast float %6004, %5494
  %6006 = fmul fast float %6004, %5495
  %6007 = fmul fast float %6004, %5496
  %6008 = fmul fast float %5513, %5492
  %6009 = fsub fast float 1.000000e+00, %6008
  %6010 = fmul fast float %5492, %5492
  %6011 = fsub fast float 1.000000e+00, %6010
  %6012 = fmul fast float %6011, 0x3FB45F3060000000
  %6013 = fmul fast float %6009, %6009
  %6014 = fdiv fast float 1.000000e+00, %6013
  %6015 = fmul fast float %6012, %6014
  %6016 = fmul fast float %6015, %5489
  %6017 = fmul fast float %6015, %5490
  %6018 = fmul fast float %6015, %5491
  %6019 = fadd fast float %6016, %6005
  %6020 = fadd fast float %6017, %6006
  %6021 = fadd fast float %6018, %6007
  %6022 = fsub fast float 1.000000e+00, %5999
  %6023 = fsub fast float 1.000000e+00, %6000
  %6024 = fsub fast float 1.000000e+00, %6001
  %6025 = fmul fast float %6019, %6022
  %6026 = fmul fast float %6020, %6023
  %6027 = fmul fast float %6021, %6024
  br label %6028

; <label>:6028                                    ; preds = %5989, %5940
  %6029 = phi float [ %5966, %5940 ], [ %6025, %5989 ]
  %6030 = phi float [ %5967, %5940 ], [ %6026, %5989 ]
  %6031 = phi float [ %5968, %5940 ], [ %6027, %5989 ]
  %6032 = phi float [ %5955, %5940 ], [ %5999, %5989 ]
  %6033 = phi float [ %5955, %5940 ], [ %6000, %5989 ]
  %6034 = phi float [ %5955, %5940 ], [ %6001, %5989 ]
  br i1 %5521, label %6035, label %6233, !dx.controlflow.hints !175

; <label>:6035                                    ; preds = %6028
  %6036 = extractvalue %dx.types.CBufRet.f32 %5934, 0
  %6037 = fmul fast float %6036, %5936
  %6038 = fsub fast float %5931, %6029
  %6039 = fsub fast float %5932, %6030
  %6040 = fsub fast float %5933, %6031
  %6041 = fmul fast float %6037, %6038
  %6042 = fmul fast float %6037, %6039
  %6043 = fmul fast float %6037, %6040
  %6044 = fadd fast float %6041, %6029
  %6045 = fadd fast float %6042, %6030
  %6046 = fadd fast float %6043, %6031
  %6047 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6032)  ; FMax(a,b)
  %6048 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6033)  ; FMax(a,b)
  %6049 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6034)  ; FMax(a,b)
  %6050 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5930)  ; FMax(a,b)
  %6051 = call float @dx.op.binary.f32(i32 35, float %5929, float %5939)  ; FMax(a,b)
  %6052 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6051)  ; FMax(a,b)
  %6053 = fdiv fast float %5929, %6052
  %6054 = call float @dx.op.unary.f32(i32 7, float %6053)  ; Saturate(value)
  %6055 = fdiv fast float %5939, %6052
  %6056 = call float @dx.op.unary.f32(i32 7, float %6055)  ; Saturate(value)
  %6057 = fcmp fast une float %6050, 1.000000e+00
  br i1 %6057, label %6058, label %6071, !dx.controlflow.hints !176

; <label>:6058                                    ; preds = %6035
  %6059 = call float @dx.op.unary.f32(i32 23, float %6050)  ; Log(value)
  %6060 = fmul fast float %6059, 0x3FE62E4300000000
  %6061 = fmul fast float %5931, %6060
  %6062 = fsub fast float -0.000000e+00, %6061
  %6063 = fmul fast float %5932, %6060
  %6064 = fsub fast float -0.000000e+00, %6063
  %6065 = fmul fast float %5933, %6060
  %6066 = fsub fast float -0.000000e+00, %6065
  %6067 = fsub fast float 1.000000e+00, %6050
  %6068 = fdiv fast float %6062, %6067
  %6069 = fdiv fast float %6064, %6067
  %6070 = fdiv fast float %6066, %6067
  br label %6071

; <label>:6071                                    ; preds = %6058, %6035
  %6072 = phi float [ %6068, %6058 ], [ %5931, %6035 ]
  %6073 = phi float [ %6069, %6058 ], [ %5932, %6035 ]
  %6074 = phi float [ %6070, %6058 ], [ %5933, %6035 ]
  %6075 = phi float [ %6060, %6058 ], [ 0.000000e+00, %6035 ]
  %6076 = fcmp fast une float %6047, 1.000000e+00
  br i1 %6076, label %6077, label %6084, !dx.controlflow.hints !177

; <label>:6077                                    ; preds = %6071
  %6078 = call float @dx.op.unary.f32(i32 23, float %6047)  ; Log(value)
  %6079 = fmul fast float %6078, 0x3FE62E4300000000
  %6080 = fmul fast float %6044, %6079
  %6081 = fsub fast float -0.000000e+00, %6080
  %6082 = fsub fast float 1.000000e+00, %6047
  %6083 = fdiv fast float %6081, %6082
  br label %6084

; <label>:6084                                    ; preds = %6077, %6071
  %6085 = phi float [ %6083, %6077 ], [ %6044, %6071 ]
  %6086 = phi float [ %6079, %6077 ], [ 0.000000e+00, %6071 ]
  %6087 = fcmp fast une float %6048, 1.000000e+00
  br i1 %6087, label %6088, label %6095, !dx.controlflow.hints !177

; <label>:6088                                    ; preds = %6084
  %6089 = call float @dx.op.unary.f32(i32 23, float %6048)  ; Log(value)
  %6090 = fmul fast float %6089, 0x3FE62E4300000000
  %6091 = fmul fast float %6045, %6090
  %6092 = fsub fast float -0.000000e+00, %6091
  %6093 = fsub fast float 1.000000e+00, %6048
  %6094 = fdiv fast float %6092, %6093
  br label %6095

; <label>:6095                                    ; preds = %6088, %6084
  %6096 = phi float [ %6094, %6088 ], [ %6045, %6084 ]
  %6097 = phi float [ %6090, %6088 ], [ 0.000000e+00, %6084 ]
  %6098 = fcmp fast une float %6049, 1.000000e+00
  br i1 %6098, label %6099, label %6106, !dx.controlflow.hints !177

; <label>:6099                                    ; preds = %6095
  %6100 = call float @dx.op.unary.f32(i32 23, float %6049)  ; Log(value)
  %6101 = fmul fast float %6100, 0x3FE62E4300000000
  %6102 = fmul fast float %6046, %6101
  %6103 = fsub fast float -0.000000e+00, %6102
  %6104 = fsub fast float 1.000000e+00, %6049
  %6105 = fdiv fast float %6103, %6104
  br label %6106

; <label>:6106                                    ; preds = %6099, %6095
  %6107 = phi float [ %6105, %6099 ], [ %6046, %6095 ]
  %6108 = phi float [ %6101, %6099 ], [ 0.000000e+00, %6095 ]
  %6109 = fmul fast float %6072, %6056
  %6110 = fmul fast float %6073, %6056
  %6111 = fmul fast float %6074, %6056
  %6112 = fmul fast float %6075, %6056
  %6113 = fmul fast float %6085, %6054
  %6114 = fmul fast float %6096, %6054
  %6115 = fmul fast float %6107, %6054
  %6116 = fmul fast float %6086, %6054
  %6117 = fmul fast float %6097, %6054
  %6118 = fmul fast float %6108, %6054
  %6119 = fadd fast float %6113, %6109
  %6120 = fadd fast float %6114, %6110
  %6121 = fadd fast float %6115, %6111
  %6122 = fadd fast float %6116, %6112
  %6123 = fadd fast float %6117, %6112
  %6124 = fadd fast float %6118, %6112
  %6125 = fcmp fast une float %6122, 0.000000e+00
  br i1 %6125, label %6126, label %6133, !dx.controlflow.hints !178

; <label>:6126                                    ; preds = %6106
  %6127 = fmul fast float %6122, 0x3FF7154760000000
  %6128 = call float @dx.op.unary.f32(i32 21, float %6127)  ; Exp(value)
  %6129 = fsub fast float 1.000000e+00, %6128
  %6130 = fmul fast float %6119, %6129
  %6131 = fsub fast float -0.000000e+00, %6130
  %6132 = fdiv fast float %6131, %6122
  br label %6133

; <label>:6133                                    ; preds = %6126, %6106
  %6134 = phi float [ %6128, %6126 ], [ 1.000000e+00, %6106 ]
  %6135 = phi float [ %6132, %6126 ], [ %6119, %6106 ]
  %6136 = fcmp fast une float %6123, 0.000000e+00
  br i1 %6136, label %6137, label %6144, !dx.controlflow.hints !178

; <label>:6137                                    ; preds = %6133
  %6138 = fmul fast float %6123, 0x3FF7154760000000
  %6139 = call float @dx.op.unary.f32(i32 21, float %6138)  ; Exp(value)
  %6140 = fsub fast float 1.000000e+00, %6139
  %6141 = fmul fast float %6120, %6140
  %6142 = fsub fast float -0.000000e+00, %6141
  %6143 = fdiv fast float %6142, %6123
  br label %6144

; <label>:6144                                    ; preds = %6137, %6133
  %6145 = phi float [ %6139, %6137 ], [ 1.000000e+00, %6133 ]
  %6146 = phi float [ %6143, %6137 ], [ %6120, %6133 ]
  %6147 = fcmp fast une float %6124, 0.000000e+00
  br i1 %6147, label %6148, label %6155, !dx.controlflow.hints !178

; <label>:6148                                    ; preds = %6144
  %6149 = fmul fast float %6124, 0x3FF7154760000000
  %6150 = call float @dx.op.unary.f32(i32 21, float %6149)  ; Exp(value)
  %6151 = fsub fast float 1.000000e+00, %6150
  %6152 = fmul fast float %6121, %6151
  %6153 = fsub fast float -0.000000e+00, %6152
  %6154 = fdiv fast float %6153, %6124
  br label %6155

; <label>:6155                                    ; preds = %6148, %6144
  %6156 = phi float [ %6150, %6148 ], [ 1.000000e+00, %6144 ]
  %6157 = phi float [ %6154, %6148 ], [ %6121, %6144 ]
  %6158 = fcmp fast ogt float %6054, %6056
  br i1 %6158, label %6159, label %6179

; <label>:6159                                    ; preds = %6155
  %6160 = fsub fast float 1.000000e+00, %6056
  %6161 = fmul fast float %6072, %6160
  %6162 = fmul fast float %6073, %6160
  %6163 = fmul fast float %6074, %6160
  %6164 = fmul fast float %6075, %6160
  %6165 = fcmp fast une float %6164, 0.000000e+00
  br i1 %6165, label %6166, label %6217, !dx.controlflow.hints !179

; <label>:6166                                    ; preds = %6159
  %6167 = fmul fast float %6164, 0x3FF7154760000000
  %6168 = call float @dx.op.unary.f32(i32 21, float %6167)  ; Exp(value)
  %6169 = fsub fast float 1.000000e+00, %6168
  %6170 = fmul fast float %6161, %6169
  %6171 = fsub fast float -0.000000e+00, %6170
  %6172 = fmul fast float %6162, %6169
  %6173 = fsub fast float -0.000000e+00, %6172
  %6174 = fmul fast float %6163, %6169
  %6175 = fsub fast float -0.000000e+00, %6174
  %6176 = fdiv fast float %6171, %6164
  %6177 = fdiv fast float %6173, %6164
  %6178 = fdiv fast float %6175, %6164
  br label %6217

; <label>:6179                                    ; preds = %6155
  %6180 = fsub fast float 1.000000e+00, %6054
  %6181 = fmul fast float %6085, %6180
  %6182 = fmul fast float %6096, %6180
  %6183 = fmul fast float %6107, %6180
  %6184 = fmul fast float %6086, %6180
  %6185 = fmul fast float %6097, %6180
  %6186 = fmul fast float %6108, %6180
  %6187 = fcmp fast une float %6184, 0.000000e+00
  br i1 %6187, label %6188, label %6195, !dx.controlflow.hints !178

; <label>:6188                                    ; preds = %6179
  %6189 = fmul fast float %6184, 0x3FF7154760000000
  %6190 = call float @dx.op.unary.f32(i32 21, float %6189)  ; Exp(value)
  %6191 = fsub fast float 1.000000e+00, %6190
  %6192 = fmul fast float %6181, %6191
  %6193 = fsub fast float -0.000000e+00, %6192
  %6194 = fdiv fast float %6193, %6184
  br label %6195

; <label>:6195                                    ; preds = %6188, %6179
  %6196 = phi float [ %6194, %6188 ], [ %6181, %6179 ]
  %6197 = phi float [ %6190, %6188 ], [ 1.000000e+00, %6179 ]
  %6198 = fcmp fast une float %6185, 0.000000e+00
  br i1 %6198, label %6199, label %6206, !dx.controlflow.hints !178

; <label>:6199                                    ; preds = %6195
  %6200 = fmul fast float %6185, 0x3FF7154760000000
  %6201 = call float @dx.op.unary.f32(i32 21, float %6200)  ; Exp(value)
  %6202 = fsub fast float 1.000000e+00, %6201
  %6203 = fmul fast float %6182, %6202
  %6204 = fsub fast float -0.000000e+00, %6203
  %6205 = fdiv fast float %6204, %6185
  br label %6206

; <label>:6206                                    ; preds = %6199, %6195
  %6207 = phi float [ %6205, %6199 ], [ %6182, %6195 ]
  %6208 = phi float [ %6201, %6199 ], [ 1.000000e+00, %6195 ]
  %6209 = fcmp fast une float %6186, 0.000000e+00
  br i1 %6209, label %6210, label %6217, !dx.controlflow.hints !178

; <label>:6210                                    ; preds = %6206
  %6211 = fmul fast float %6186, 0x3FF7154760000000
  %6212 = call float @dx.op.unary.f32(i32 21, float %6211)  ; Exp(value)
  %6213 = fsub fast float 1.000000e+00, %6212
  %6214 = fmul fast float %6183, %6213
  %6215 = fsub fast float -0.000000e+00, %6214
  %6216 = fdiv fast float %6215, %6186
  br label %6217

; <label>:6217                                    ; preds = %6210, %6206, %6166, %6159
  %6218 = phi float [ %6216, %6210 ], [ %6178, %6166 ], [ %6163, %6159 ], [ %6183, %6206 ]
  %6219 = phi float [ %6207, %6210 ], [ %6177, %6166 ], [ %6162, %6159 ], [ %6207, %6206 ]
  %6220 = phi float [ %6196, %6210 ], [ %6176, %6166 ], [ %6161, %6159 ], [ %6196, %6206 ]
  %6221 = phi float [ %6212, %6210 ], [ %6168, %6166 ], [ 1.000000e+00, %6159 ], [ 1.000000e+00, %6206 ]
  %6222 = phi float [ %6208, %6210 ], [ %6168, %6166 ], [ 1.000000e+00, %6159 ], [ %6208, %6206 ]
  %6223 = phi float [ %6197, %6210 ], [ %6168, %6166 ], [ 1.000000e+00, %6159 ], [ %6197, %6206 ]
  %6224 = fmul fast float %6223, %6135
  %6225 = fmul fast float %6222, %6146
  %6226 = fmul fast float %6221, %6157
  %6227 = fadd fast float %6224, %6220
  %6228 = fadd fast float %6225, %6219
  %6229 = fadd fast float %6226, %6218
  %6230 = fmul fast float %6223, %6134
  %6231 = fmul fast float %6222, %6145
  %6232 = fmul fast float %6221, %6156
  br label %6233

; <label>:6233                                    ; preds = %6217, %6028
  %6234 = phi float [ %6232, %6217 ], [ %6034, %6028 ]
  %6235 = phi float [ %6231, %6217 ], [ %6033, %6028 ]
  %6236 = phi float [ %6230, %6217 ], [ %6032, %6028 ]
  %6237 = phi float [ %6229, %6217 ], [ %6031, %6028 ]
  %6238 = phi float [ %6228, %6217 ], [ %6030, %6028 ]
  %6239 = phi float [ %6227, %6217 ], [ %6029, %6028 ]
  %6240 = fmul fast float %6239, %5183
  %6241 = fmul fast float %6238, %5183
  %6242 = fmul fast float %6237, %5183
  %6243 = fmul fast float %6236, %5476
  %6244 = call float @dx.op.dot3.f32(i32 55, float %6236, float %6235, float %6234, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6245 = call float @dx.op.dot3.f32(i32 55, float %6240, float %6241, float %6242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6246 = select i1 %229, float %6244, float %6236
  %6247 = select i1 %229, float %6244, float %6235
  %6248 = select i1 %229, float 1.000000e+00, float %6234
  %6249 = select i1 %229, float %6245, float %6240
  %6250 = select i1 %229, float 0.000000e+00, float %6241
  %6251 = select i1 %229, float 0.000000e+00, float %6242
  %6252 = fmul fast float %6246, %5470
  %6253 = fmul fast float %6247, %5471
  %6254 = fmul fast float %6248, %5472
  %6255 = fadd fast float %6252, %6249
  %6256 = fadd fast float %6253, %6250
  %6257 = fadd fast float %6251, %6254
  %6258 = fmul fast float %6246, %5473
  %6259 = fmul fast float %6247, %5474
  %6260 = fmul fast float %6248, %5475
  %6261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6262 = extractvalue %dx.types.CBufRet.i32 %6261, 0
  %6263 = icmp eq i32 %6262, 0
  br i1 %6263, label %6631, label %6264, !dx.controlflow.hints !180

; <label>:6264                                    ; preds = %6233
  %6265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6266 = extractvalue %dx.types.CBufRet.f32 %6265, 2
  %6267 = extractvalue %dx.types.CBufRet.f32 %6265, 3
  %6268 = fmul fast float %6266, %91
  %6269 = fmul fast float %6267, %92
  %6270 = fmul fast float %6268, 2.000000e+00
  %6271 = fmul fast float %6269, 2.000000e+00
  %6272 = fsub fast float 1.000000e+00, %6270
  %6273 = fsub fast float 1.000000e+00, %6271
  %6274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6275 = extractvalue %dx.types.CBufRet.f32 %6274, 0
  %6276 = extractvalue %dx.types.CBufRet.f32 %6274, 1
  %6277 = extractvalue %dx.types.CBufRet.f32 %6274, 2
  %6278 = fmul fast float %6272, %6275
  %6279 = fmul fast float %6272, %6276
  %6280 = fmul fast float %6272, %6277
  %6281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6282 = extractvalue %dx.types.CBufRet.f32 %6281, 0
  %6283 = extractvalue %dx.types.CBufRet.f32 %6281, 1
  %6284 = extractvalue %dx.types.CBufRet.f32 %6281, 2
  %6285 = fmul fast float %6273, %6282
  %6286 = fmul fast float %6273, %6283
  %6287 = fmul fast float %6273, %6284
  %6288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6289 = extractvalue %dx.types.CBufRet.f32 %6288, 0
  %6290 = extractvalue %dx.types.CBufRet.f32 %6288, 1
  %6291 = extractvalue %dx.types.CBufRet.f32 %6288, 2
  %6292 = fadd fast float %6285, %6289
  %6293 = fadd fast float %6292, %6278
  %6294 = fadd fast float %6286, %6290
  %6295 = fadd fast float %6294, %6279
  %6296 = fadd fast float %6287, %6291
  %6297 = fadd fast float %6296, %6280
  %6298 = fmul fast float %6293, %5469
  %6299 = fmul fast float %6295, %5469
  %6300 = fmul fast float %6297, %5469
  %6301 = fmul fast float %6298, %6298
  %6302 = fmul fast float %6299, %6299
  %6303 = fadd fast float %6301, %6302
  %6304 = fmul fast float %6300, %6300
  %6305 = fadd fast float %6303, %6304
  %6306 = call float @dx.op.unary.f32(i32 24, float %6305)  ; Sqrt(value)
  %6307 = extractvalue %dx.types.CBufRet.f32 %5194, 0
  %6308 = fsub fast float %6306, %6307
  %6309 = extractvalue %dx.types.CBufRet.f32 %5194, 2
  %6310 = fmul fast float %6308, %6309
  %6311 = call float @dx.op.unary.f32(i32 7, float %6310)  ; Saturate(value)
  %6312 = fadd fast float %6311, -5.000000e-01
  %6313 = fmul fast float %6312, 2.000000e+00
  %6314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6315 = extractvalue %dx.types.CBufRet.f32 %6314, 2
  %6316 = call float @dx.op.binary.f32(i32 36, float %6315, float %6313)  ; FMin(a,b)
  %6317 = fsub fast float -0.000000e+00, %6315
  %6318 = fcmp fast ogt float %6316, %6317
  br i1 %6318, label %6319, label %6631, !dx.controlflow.hints !181

; <label>:6319                                    ; preds = %6264
  %6320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6321 = extractvalue %dx.types.CBufRet.f32 %6320, 3
  %6322 = fcmp fast ogt float %6321, 0.000000e+00
  br i1 %6322, label %6323, label %6398, !dx.controlflow.hints !182

; <label>:6323                                    ; preds = %6319
  %6324 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %6325 = extractvalue %dx.types.Dimensions %6324, 0
  %6326 = sitofp i32 %6325 to float
  %6327 = extractvalue %dx.types.Dimensions %6324, 1
  %6328 = sitofp i32 %6327 to float
  %6329 = fmul fast float %6268, %6326
  %6330 = fmul fast float %6269, %6328
  %6331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6332 = extractvalue %dx.types.CBufRet.f32 %6331, 1
  %6333 = fsub fast float -0.000000e+00, %6332
  %6334 = fptoui float %6333 to i32
  %6335 = fptoui float %6329 to i32
  %6336 = fptoui float %6330 to i32
  %6337 = and i32 %6334, 31
  %6338 = lshr i32 %6335, %6337
  %6339 = lshr i32 %6336, %6337
  %6340 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %6334, i32 %6338, i32 %6339, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6341 = extractvalue %dx.types.ResRet.f32 %6340, 0
  %6342 = fcmp fast olt float %6341, -1.000000e+00
  %6343 = fcmp fast ogt float %6341, -1.000000e+00
  %6344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6345 = extractvalue %dx.types.CBufRet.f32 %6344, 1
  %6346 = select i1 %6343, float %6345, float 1.000000e+00
  %6347 = fadd fast float %6341, 1.000000e+00
  %6348 = fmul fast float %6346, %6347
  %6349 = call float @dx.op.unary.f32(i32 6, float %6348)  ; FAbs(value)
  %6350 = extractvalue %dx.types.CBufRet.f32 %6344, 3
  %6351 = fcmp fast oge float %6349, %6350
  %6352 = select i1 %6351, float 0x4197782600000000, float %6349
  %6353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6354 = extractvalue %dx.types.CBufRet.f32 %6353, 0
  %6355 = extractvalue %dx.types.CBufRet.f32 %6353, 1
  %6356 = extractvalue %dx.types.CBufRet.f32 %6353, 2
  %6357 = select i1 %6342, float %6354, float %6275
  %6358 = select i1 %6342, float %6355, float %6276
  %6359 = select i1 %6342, float %6356, float %6277
  %6360 = fmul fast float %6357, %6272
  %6361 = fmul fast float %6358, %6272
  %6362 = fmul fast float %6359, %6272
  %6363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6364 = extractvalue %dx.types.CBufRet.f32 %6363, 0
  %6365 = extractvalue %dx.types.CBufRet.f32 %6363, 1
  %6366 = extractvalue %dx.types.CBufRet.f32 %6363, 2
  %6367 = select i1 %6342, float %6364, float %6282
  %6368 = select i1 %6342, float %6365, float %6283
  %6369 = select i1 %6342, float %6366, float %6284
  %6370 = fmul fast float %6367, %6273
  %6371 = fmul fast float %6368, %6273
  %6372 = fmul fast float %6369, %6273
  %6373 = fadd fast float %6370, %6360
  %6374 = fadd fast float %6371, %6361
  %6375 = fadd fast float %6372, %6362
  %6376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6377 = extractvalue %dx.types.CBufRet.f32 %6376, 0
  %6378 = extractvalue %dx.types.CBufRet.f32 %6376, 1
  %6379 = extractvalue %dx.types.CBufRet.f32 %6376, 2
  %6380 = select i1 %6342, float %6377, float %6289
  %6381 = select i1 %6342, float %6378, float %6290
  %6382 = select i1 %6342, float %6379, float %6291
  %6383 = fadd fast float %6373, %6380
  %6384 = fadd fast float %6374, %6381
  %6385 = fadd fast float %6375, %6382
  %6386 = fmul fast float %6383, %6352
  %6387 = fmul fast float %6384, %6352
  %6388 = fmul fast float %6385, %6352
  %6389 = fmul fast float %6386, %6386
  %6390 = fmul fast float %6387, %6387
  %6391 = fadd fast float %6389, %6390
  %6392 = fmul fast float %6388, %6388
  %6393 = fadd fast float %6391, %6392
  %6394 = call float @dx.op.unary.f32(i32 24, float %6393)  ; Sqrt(value)
  %6395 = fsub fast float %6394, %6307
  %6396 = fmul fast float %6395, %6309
  %6397 = call float @dx.op.unary.f32(i32 7, float %6396)  ; Saturate(value)
  br label %6398

; <label>:6398                                    ; preds = %6323, %6319
  %6399 = phi float [ %6397, %6323 ], [ 1.000000e+00, %6319 ]
  %6400 = fmul fast float %6316, 5.000000e-01
  %6401 = fadd fast float %6400, 5.000000e-01
  %6402 = call float @dx.op.unary.f32(i32 22, float %6401)  ; Frc(value)
  %6403 = call float @dx.op.unary.f32(i32 27, float %6402)  ; Round_ni(value)
  %6404 = call float @dx.op.unary.f32(i32 22, float %6402)  ; Frc(value)
  %6405 = fmul fast float %6404, 2.000000e+00
  %6406 = fadd fast float %6405, -1.000000e+00
  %6407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %58, float %6268, float %6269, float %6403, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6408 = extractvalue %dx.types.ResRet.f32 %6407, 0
  %6409 = extractvalue %dx.types.ResRet.f32 %6407, 1
  %6410 = extractvalue %dx.types.ResRet.f32 %6407, 2
  %6411 = extractvalue %dx.types.ResRet.f32 %6407, 3
  %6412 = fadd fast float %6408, -5.000000e-01
  %6413 = fadd fast float %6410, -5.000000e-01
  %6414 = fmul fast float %6412, 0xBFD5555560000000
  %6415 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6413, float %6414)  ; FMad(a,b,c)
  %6416 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6409, float 0.000000e+00)  ; FMad(a,b,c)
  %6417 = fadd fast float %6416, %6411
  %6418 = fmul fast float %6412, -7.500000e-01
  %6419 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6413, float %6418)  ; FMad(a,b,c)
  %6420 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6409, float 0.000000e+00)  ; FMad(a,b,c)
  %6421 = fadd fast float %6420, %6411
  %6422 = call float @dx.op.binary.f32(i32 35, float %6415, float -1.000000e+00)  ; FMax(a,b)
  %6423 = call float @dx.op.binary.f32(i32 35, float %6417, float -1.000000e+00)  ; FMax(a,b)
  %6424 = call float @dx.op.binary.f32(i32 35, float %6419, float -1.000000e+00)  ; FMax(a,b)
  %6425 = call float @dx.op.binary.f32(i32 35, float %6421, float -1.000000e+00)  ; FMax(a,b)
  %6426 = call float @dx.op.binary.f32(i32 36, float %6422, float 1.000000e+00)  ; FMin(a,b)
  %6427 = call float @dx.op.binary.f32(i32 36, float %6423, float 1.000000e+00)  ; FMin(a,b)
  %6428 = call float @dx.op.binary.f32(i32 36, float %6424, float 1.000000e+00)  ; FMin(a,b)
  %6429 = call float @dx.op.binary.f32(i32 36, float %6425, float 1.000000e+00)  ; FMin(a,b)
  %6430 = fcmp fast olt float %6426, 0x3FEFFF8020000000
  br i1 %6430, label %6431, label %6546, !dx.controlflow.hints !183

; <label>:6431                                    ; preds = %6398
  %6432 = extractvalue %dx.types.CBufRet.f32 %6314, 3
  %6433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6434 = extractvalue %dx.types.CBufRet.f32 %6433, 0
  %6435 = extractvalue %dx.types.CBufRet.f32 %6433, 1
  %6436 = extractvalue %dx.types.CBufRet.f32 %6433, 2
  %6437 = extractvalue %dx.types.CBufRet.f32 %6433, 3
  %6438 = fsub fast float %6434, %6426
  %6439 = fsub fast float %6435, %6427
  %6440 = fsub fast float %6436, %6428
  %6441 = fsub fast float %6437, %6429
  %6442 = fmul fast float %6438, %6432
  %6443 = fmul fast float %6439, %6432
  %6444 = fmul fast float %6440, %6432
  %6445 = fmul fast float %6441, %6432
  %6446 = fadd fast float %6442, %6426
  %6447 = fadd fast float %6443, %6427
  %6448 = fsub fast float -0.000000e+00, %6447
  %6449 = fadd fast float %6444, %6428
  %6450 = fadd fast float %6445, %6429
  %6451 = fmul fast float %6446, %6446
  %6452 = fsub fast float %6447, %6451
  %6453 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6452)  ; FMax(a,b)
  %6454 = fdiv fast float 1.000000e+00, %6453
  %6455 = fmul fast float %6447, %6446
  %6456 = fsub fast float %6449, %6455
  %6457 = fsub fast float %6406, %6446
  %6458 = fmul fast float %6406, %6406
  %6459 = fsub fast float %6458, %6447
  %6460 = fmul fast float %6457, %6454
  %6461 = fmul fast float %6460, %6456
  %6462 = fsub fast float %6459, %6461
  %6463 = fmul fast float %6447, %6447
  %6464 = fsub fast float %6450, %6463
  %6465 = fmul fast float %6456, %6456
  %6466 = fmul fast float %6465, %6454
  %6467 = fsub fast float %6464, %6466
  %6468 = fdiv fast float %6462, %6467
  %6469 = fmul fast float %6456, %6468
  %6470 = fsub fast float %6457, %6469
  %6471 = fmul fast float %6470, %6454
  %6472 = fmul fast float %6471, %6446
  %6473 = fsub fast float 1.000000e+00, %6472
  %6474 = fmul fast float %6447, %6468
  %6475 = fsub fast float %6473, %6474
  %6476 = fmul fast float %6471, %6471
  %6477 = fmul fast float %6468, 4.000000e+00
  %6478 = fmul fast float %6477, %6475
  %6479 = fsub fast float %6476, %6478
  %6480 = call float @dx.op.unary.f32(i32 24, float %6479)  ; Sqrt(value)
  %6481 = fcmp fast oge float %6471, 0.000000e+00
  %6482 = fsub fast float -0.000000e+00, %6480
  %6483 = select i1 %6481, float %6482, float %6480
  %6484 = fsub fast float %6483, %6471
  %6485 = fdiv fast float %6484, %6468
  %6486 = fdiv fast float %6475, %6484
  %6487 = fmul fast float %6485, 5.000000e-01
  %6488 = fmul fast float %6486, 2.000000e+00
  %6489 = select i1 %6481, float %6487, float %6488
  %6490 = select i1 %6481, float %6488, float %6487
  %6491 = call float @dx.op.binary.f32(i32 35, float %6489, float %6490)  ; FMax(a,b)
  %6492 = call float @dx.op.binary.f32(i32 36, float %6489, float %6490)  ; FMin(a,b)
  %6493 = fcmp fast ogt float %6406, %6492
  br i1 %6493, label %6494, label %6504

; <label>:6494                                    ; preds = %6431
  %6495 = fsub fast float %6406, %6492
  %6496 = fsub fast float %6491, %6492
  %6497 = fmul fast float %6495, %6496
  %6498 = fmul fast float %6491, %6406
  %6499 = fadd fast float %6491, %6406
  %6500 = fmul fast float %6499, %6446
  %6501 = fadd fast float %6498, %6447
  %6502 = fsub fast float %6501, %6500
  %6503 = fdiv fast float %6502, %6497
  br label %6504

; <label>:6504                                    ; preds = %6494, %6431
  %6505 = phi float [ %6503, %6494 ], [ 0.000000e+00, %6431 ]
  %6506 = fcmp fast ogt float %6406, %6491
  %6507 = fsub fast float %6406, %6491
  br i1 %6506, label %6508, label %6518

; <label>:6508                                    ; preds = %6504
  %6509 = fsub fast float %6491, %6492
  %6510 = fmul fast float %6509, %6507
  %6511 = fmul fast float %6492, %6406
  %6512 = fadd fast float %6492, %6406
  %6513 = fmul fast float %6512, %6446
  %6514 = fsub fast float %6448, %6511
  %6515 = fadd fast float %6514, %6513
  %6516 = fdiv fast float %6515, %6510
  %6517 = fadd fast float %6516, %6505
  br label %6518

; <label>:6518                                    ; preds = %6508, %6504
  %6519 = phi float [ %6517, %6508 ], [ %6505, %6504 ]
  %6520 = fsub fast float %6406, %6492
  %6521 = fmul fast float %6520, %6507
  %6522 = fmul fast float %6492, %6491
  %6523 = fadd fast float %6492, %6491
  %6524 = fmul fast float %6523, %6446
  %6525 = fadd fast float %6522, %6447
  %6526 = fsub fast float %6525, %6524
  %6527 = fdiv fast float %6526, %6521
  %6528 = call float @dx.op.unary.f32(i32 7, float %6519)  ; Saturate(value)
  %6529 = fcmp fast oeq float %5195, 0.000000e+00
  %6530 = extractvalue %dx.types.CBufRet.f32 %6314, 0
  %6531 = fcmp fast oeq float %6530, 0.000000e+00
  %6532 = or i1 %6529, %6531
  %6533 = fmul fast float %6530, 2.000000e+00
  %6534 = fadd fast float %6315, %6316
  %6535 = fdiv fast float %6534, %6533
  %6536 = call float @dx.op.unary.f32(i32 7, float %6535)  ; Saturate(value)
  %6537 = fmul fast float %6536, 2.000000e+00
  %6538 = fsub fast float 3.000000e+00, %6537
  %6539 = fmul fast float %6536, %6536
  %6540 = fmul fast float %6539, %6538
  %6541 = select i1 %6532, float 1.000000e+00, float %6540
  %6542 = fmul fast float %6527, %5195
  %6543 = fadd fast float %6528, %6542
  %6544 = call float @dx.op.unary.f32(i32 7, float %6543)  ; Saturate(value)
  %6545 = fmul fast float %6541, %6544
  br label %6546

; <label>:6546                                    ; preds = %6518, %6398
  %6547 = phi float [ %6545, %6518 ], [ 0.000000e+00, %6398 ]
  %6548 = fsub fast float 1.000000e+00, %6547
  %6549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %58, float %6268, float %6269, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6550 = extractvalue %dx.types.ResRet.f32 %6549, 0
  %6551 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6552 = extractvalue %dx.types.CBufRet.i32 %6551, 2
  %6553 = icmp eq i32 %6552, 0
  br i1 %6553, label %6559, label %6554

; <label>:6554                                    ; preds = %6546
  %6555 = call float @dx.op.unary.f32(i32 7, float %6547)  ; Saturate(value)
  %6556 = fadd fast float %6550, -1.000000e+00
  %6557 = fmul fast float %6555, %6556
  %6558 = fadd fast float %6557, 1.000000e+00
  br label %6559

; <label>:6559                                    ; preds = %6554, %6546
  %6560 = phi float [ %6558, %6554 ], [ %6548, %6546 ]
  br i1 %6322, label %6561, label %6579

; <label>:6561                                    ; preds = %6559
  %6562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6563 = extractvalue %dx.types.CBufRet.f32 %6562, 1
  %6564 = fsub fast float %6399, %6563
  %6565 = call float @dx.op.unary.f32(i32 7, float %6564)  ; Saturate(value)
  %6566 = fsub fast float %6399, %6321
  %6567 = call float @dx.op.unary.f32(i32 7, float %6566)  ; Saturate(value)
  %6568 = fsub fast float %6565, %6567
  %6569 = fsub fast float %6401, %6567
  %6570 = fdiv fast float %6569, %6568
  %6571 = call float @dx.op.unary.f32(i32 7, float %6570)  ; Saturate(value)
  %6572 = fmul fast float %6571, 2.000000e+00
  %6573 = fsub fast float 3.000000e+00, %6572
  %6574 = fsub fast float %6550, %6560
  %6575 = fmul fast float %6571, %6571
  %6576 = fmul fast float %6575, %6574
  %6577 = fmul fast float %6576, %6573
  %6578 = fadd fast float %6577, %6560
  br label %6579

; <label>:6579                                    ; preds = %6561, %6559
  %6580 = phi float [ %6578, %6561 ], [ %6560, %6559 ]
  %6581 = call float @dx.op.binary.f32(i32 35, float %6550, float %6580)  ; FMax(a,b)
  %6582 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6583 = extractvalue %dx.types.CBufRet.i32 %6582, 2
  %6584 = and i32 %6583, 1
  %6585 = icmp eq i32 %6584, 0
  %6586 = fcmp fast une float %6581, 1.000000e+00
  %6587 = and i1 %6586, %6585
  br i1 %6587, label %6588, label %6607

; <label>:6588                                    ; preds = %6579
  %6589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %58, float %6268, float %6269, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6590 = extractvalue %dx.types.ResRet.f32 %6589, 0
  %6591 = extractvalue %dx.types.ResRet.f32 %6589, 1
  %6592 = extractvalue %dx.types.ResRet.f32 %6589, 2
  %6593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6594 = extractvalue %dx.types.CBufRet.f32 %6593, 1
  %6595 = fmul fast float %6594, %6590
  %6596 = fmul fast float %6594, %6591
  %6597 = fmul fast float %6594, %6592
  %6598 = fcmp fast ogt float %6550, 0x3FEFFF2E40000000
  %6599 = fsub fast float 1.000000e+00, %6581
  %6600 = fsub fast float 1.000000e+00, %6550
  %6601 = fdiv fast float %6599, %6600
  %6602 = call float @dx.op.unary.f32(i32 7, float %6601)  ; Saturate(value)
  %6603 = select i1 %6598, float 0.000000e+00, float %6602
  %6604 = fmul fast float %6595, %6603
  %6605 = fmul fast float %6596, %6603
  %6606 = fmul fast float %6597, %6603
  br label %6607

; <label>:6607                                    ; preds = %6588, %6579
  %6608 = phi float [ 0.000000e+00, %6579 ], [ %6604, %6588 ]
  %6609 = phi float [ 0.000000e+00, %6579 ], [ %6605, %6588 ]
  %6610 = phi float [ 0.000000e+00, %6579 ], [ %6606, %6588 ]
  %6611 = fmul fast float %6608, %5183
  %6612 = fmul fast float %6609, %5183
  %6613 = fmul fast float %6610, %5183
  %6614 = fmul fast float %6581, %6243
  %6615 = call float @dx.op.dot3.f32(i32 55, float %6581, float %6581, float %6581, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6616 = call float @dx.op.dot3.f32(i32 55, float %6611, float %6612, float %6613, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6617 = select i1 %229, float %6615, float %6581
  %6618 = select i1 %229, float 1.000000e+00, float %6581
  %6619 = select i1 %229, float %6616, float %6611
  %6620 = select i1 %229, float 0.000000e+00, float %6612
  %6621 = select i1 %229, float 0.000000e+00, float %6613
  %6622 = fmul fast float %6617, %6255
  %6623 = fmul fast float %6617, %6256
  %6624 = fmul fast float %6618, %6257
  %6625 = fadd fast float %6622, %6619
  %6626 = fadd fast float %6623, %6620
  %6627 = fadd fast float %6621, %6624
  %6628 = fmul fast float %6617, %6258
  %6629 = fmul fast float %6617, %6259
  %6630 = fmul fast float %6618, %6260
  br label %6631

; <label>:6631                                    ; preds = %6607, %6264, %6233, %5465
  %6632 = phi float [ %5470, %5465 ], [ %6255, %6233 ], [ %6625, %6607 ], [ %6255, %6264 ]
  %6633 = phi float [ %5471, %5465 ], [ %6256, %6233 ], [ %6626, %6607 ], [ %6256, %6264 ]
  %6634 = phi float [ %5472, %5465 ], [ %6257, %6233 ], [ %6627, %6607 ], [ %6257, %6264 ]
  %6635 = phi float [ %5473, %5465 ], [ %6258, %6233 ], [ %6628, %6607 ], [ %6258, %6264 ]
  %6636 = phi float [ %5474, %5465 ], [ %6259, %6233 ], [ %6629, %6607 ], [ %6259, %6264 ]
  %6637 = phi float [ %5475, %5465 ], [ %6260, %6233 ], [ %6630, %6607 ], [ %6260, %6264 ]
  %6638 = phi float [ %5476, %5465 ], [ %6243, %6233 ], [ %6614, %6607 ], [ %6243, %6264 ]
  %6639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6640 = extractvalue %dx.types.CBufRet.f32 %6639, 2
  %6641 = extractvalue %dx.types.CBufRet.f32 %6639, 3
  %6642 = fmul fast float %6640, %91
  %6643 = fmul fast float %6641, %92
  %6644 = call float @dx.op.unary.f32(i32 7, float %6642)  ; Saturate(value)
  %6645 = call float @dx.op.unary.f32(i32 7, float %6643)  ; Saturate(value)
  %6646 = select i1 %5205, i32 2, i32 0
  %6647 = or i32 %6646, 1
  %6648 = uitofp i32 %6647 to float
  %6649 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6644, float %6645, float %6648, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6650 = extractvalue %dx.types.ResRet.f32 %6649, 0
  %6651 = extractvalue %dx.types.ResRet.f32 %6649, 1
  %6652 = extractvalue %dx.types.ResRet.f32 %6649, 2
  %6653 = extractvalue %dx.types.ResRet.f32 %6649, 3
  %6654 = add nuw nsw i32 %6646, 2
  %6655 = uitofp i32 %6654 to float
  %6656 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6644, float %6645, float %6655, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6657 = extractvalue %dx.types.ResRet.f32 %6656, 0
  %6658 = extractvalue %dx.types.ResRet.f32 %6656, 1
  %6659 = extractvalue %dx.types.ResRet.f32 %6656, 2
  %6660 = extractvalue %dx.types.ResRet.f32 %6656, 3
  %6661 = call float @dx.op.binary.f32(i32 35, float %6651, float %6652)  ; FMax(a,b)
  %6662 = call float @dx.op.binary.f32(i32 35, float %6650, float %6661)  ; FMax(a,b)
  %6663 = call float @dx.op.binary.f32(i32 35, float %6662, float %6653)  ; FMax(a,b)
  %6664 = call float @dx.op.binary.f32(i32 36, float %6658, float %6659)  ; FMin(a,b)
  %6665 = call float @dx.op.binary.f32(i32 36, float %6657, float %6664)  ; FMin(a,b)
  %6666 = call float @dx.op.binary.f32(i32 36, float %6665, float %6660)  ; FMin(a,b)
  %6667 = fmul fast float %6663, 2.550000e+02
  %6668 = fadd fast float %6667, 0x3F70101020000000
  %6669 = fptoui float %6668 to i32
  %6670 = fmul fast float %6666, 2.550000e+02
  %6671 = fadd fast float %6670, 0x3F70101020000000
  %6672 = fptoui float %6671 to i32
  %6673 = icmp ult i32 %6669, %6672
  br i1 %6673, label %6674, label %6843

; <label>:6674                                    ; preds = %6631
  %6675 = fcmp fast ogt float %81, 9.843750e-01
  %6676 = fadd fast float %5469, -4.000000e+00
  %6677 = select i1 %6675, float -4.000000e+00, float %6676
  %6678 = call float @dx.op.binary.f32(i32 35, float %6677, float 0.000000e+00)  ; FMax(a,b)
  %6679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6680 = extractvalue %dx.types.CBufRet.f32 %6679, 0
  %6681 = fadd fast float %6680, %6678
  %6682 = extractvalue %dx.types.CBufRet.f32 %6679, 2
  %6683 = fmul fast float %6681, %6682
  %6684 = call float @dx.op.unary.f32(i32 23, float %6683)  ; Log(value)
  %6685 = extractvalue %dx.types.CBufRet.f32 %6679, 3
  %6686 = fmul fast float %6685, %6684
  %6687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6688 = extractvalue %dx.types.CBufRet.f32 %6687, 2
  %6689 = fmul fast float %6686, %6688
  %6690 = call float @dx.op.unary.f32(i32 7, float %6689)  ; Saturate(value)
  %6691 = uitofp i32 %6669 to float
  %6692 = uitofp i32 %6672 to float
  %6693 = fadd fast float %6691, 5.000000e-01
  %6694 = fadd fast float %6692, 5.000000e-01
  %6695 = fmul fast float %6688, %6693
  %6696 = fmul fast float %6688, %6694
  %6697 = fadd fast float %6695, 0x3F0FFB4800000000
  %6698 = fadd fast float %6696, 0xBF0FFB4800000000
  %6699 = call float @dx.op.binary.f32(i32 35, float %6690, float %6697)  ; FMax(a,b)
  %6700 = call float @dx.op.binary.f32(i32 36, float %6699, float %6698)  ; FMin(a,b)
  %6701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6702 = extractvalue %dx.types.CBufRet.f32 %6701, 1
  %6703 = extractvalue %dx.types.CBufRet.f32 %6701, 2
  %6704 = extractvalue %dx.types.CBufRet.f32 %6701, 0
  %6705 = select i1 %5205, float %6704, float 0.000000e+00
  %6706 = fmul fast float %6702, %6700
  %6707 = fadd fast float %6705, %6706
  %6708 = fadd fast float %6705, %6703
  %6709 = fsub fast float %6702, %6703
  %6710 = fadd fast float %6709, %6705
  %6711 = call float @dx.op.binary.f32(i32 35, float %6707, float %6708)  ; FMax(a,b)
  %6712 = call float @dx.op.binary.f32(i32 36, float %6711, float %6710)  ; FMin(a,b)
  %6713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %6644, float %6645, float %6712, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6714 = extractvalue %dx.types.ResRet.f32 %6713, 0
  %6715 = extractvalue %dx.types.ResRet.f32 %6713, 1
  %6716 = extractvalue %dx.types.ResRet.f32 %6713, 2
  %6717 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6718 = extractvalue %dx.types.CBufRet.i32 %6717, 0
  %6719 = extractvalue %dx.types.CBufRet.i32 %6717, 1
  %6720 = uitofp i32 %6718 to float
  %6721 = uitofp i32 %6719 to float
  %6722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6723 = extractvalue %dx.types.CBufRet.f32 %6722, 0
  %6724 = extractvalue %dx.types.CBufRet.f32 %6722, 1
  %6725 = fmul fast float %6720, %6644
  %6726 = fmul fast float %6721, %6645
  %6727 = fadd fast float %6725, -5.000000e-01
  %6728 = fadd fast float %6726, -5.000000e-01
  %6729 = call float @dx.op.unary.f32(i32 22, float %6727)  ; Frc(value)
  %6730 = call float @dx.op.unary.f32(i32 22, float %6728)  ; Frc(value)
  %6731 = fmul fast float %6729, %6729
  %6732 = fmul fast float %6731, %6729
  %6733 = fsub fast float 3.000000e+00, %6729
  %6734 = fmul fast float %6731, %6733
  %6735 = fmul fast float %6729, 3.000000e+00
  %6736 = fmul fast float %6732, 3.000000e+00
  %6737 = fmul fast float %6731, 6.000000e+00
  %6738 = fsub fast float %6736, %6737
  %6739 = fadd fast float %6738, 4.000000e+00
  %6740 = fmul fast float %6739, 0x3FC5555560000000
  %6741 = fmul fast float %6732, -3.000000e+00
  %6742 = fadd fast float %6731, %6729
  %6743 = fmul fast float %6742, 3.000000e+00
  %6744 = fadd fast float %6741, 1.000000e+00
  %6745 = fadd fast float %6744, %6743
  %6746 = fmul fast float %6732, 0x3FC5555560000000
  %6747 = fmul fast float %6730, %6730
  %6748 = fmul fast float %6747, %6730
  %6749 = fsub fast float 3.000000e+00, %6730
  %6750 = fmul fast float %6747, %6749
  %6751 = fmul fast float %6730, 3.000000e+00
  %6752 = fmul fast float %6748, 3.000000e+00
  %6753 = fmul fast float %6747, 6.000000e+00
  %6754 = fsub fast float %6752, %6753
  %6755 = fadd fast float %6754, 4.000000e+00
  %6756 = fmul fast float %6755, 0x3FC5555560000000
  %6757 = fmul fast float %6748, -3.000000e+00
  %6758 = fadd fast float %6747, %6730
  %6759 = fmul fast float %6758, 3.000000e+00
  %6760 = fadd fast float %6757, 1.000000e+00
  %6761 = fadd fast float %6760, %6759
  %6762 = fmul fast float %6748, 0x3FC5555560000000
  %6763 = fadd fast float %6729, 1.000000e+00
  %6764 = fsub fast float 1.000000e+00, %6735
  %6765 = fadd fast float %6764, %6734
  %6766 = fadd fast float %6765, %6739
  %6767 = fmul fast float %6766, 0x3FC5555560000000
  %6768 = fdiv fast float %6740, %6767
  %6769 = fsub fast float %6763, %6768
  %6770 = fsub fast float 1.000000e+00, %6729
  %6771 = fadd fast float %6745, %6732
  %6772 = fmul fast float %6771, 0x3FC5555560000000
  %6773 = fdiv fast float %6746, %6772
  %6774 = fadd fast float %6770, %6773
  %6775 = fadd fast float %6730, 1.000000e+00
  %6776 = fsub fast float 1.000000e+00, %6751
  %6777 = fadd fast float %6776, %6750
  %6778 = fadd fast float %6777, %6755
  %6779 = fmul fast float %6778, 0x3FC5555560000000
  %6780 = fdiv fast float %6756, %6779
  %6781 = fsub fast float %6775, %6780
  %6782 = fsub fast float 1.000000e+00, %6730
  %6783 = fadd fast float %6761, %6748
  %6784 = fmul fast float %6783, 0x3FC5555560000000
  %6785 = fdiv fast float %6762, %6784
  %6786 = fadd fast float %6785, %6782
  %6787 = fmul fast float %6769, %6723
  %6788 = fsub fast float %6644, %6787
  %6789 = fmul fast float %6774, %6723
  %6790 = fadd fast float %6789, %6644
  %6791 = fmul fast float %6786, %6724
  %6792 = fadd fast float %6791, %6645
  %6793 = fmul fast float %6781, %6724
  %6794 = fsub fast float %6645, %6793
  %6795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6788, float %6794, float %6712, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6796 = extractvalue %dx.types.ResRet.f32 %6795, 0
  %6797 = extractvalue %dx.types.ResRet.f32 %6795, 1
  %6798 = extractvalue %dx.types.ResRet.f32 %6795, 2
  %6799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6790, float %6794, float %6712, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6800 = extractvalue %dx.types.ResRet.f32 %6799, 0
  %6801 = extractvalue %dx.types.ResRet.f32 %6799, 1
  %6802 = extractvalue %dx.types.ResRet.f32 %6799, 2
  %6803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6788, float %6792, float %6712, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6804 = extractvalue %dx.types.ResRet.f32 %6803, 0
  %6805 = extractvalue %dx.types.ResRet.f32 %6803, 1
  %6806 = extractvalue %dx.types.ResRet.f32 %6803, 2
  %6807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6790, float %6792, float %6712, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6808 = extractvalue %dx.types.ResRet.f32 %6807, 0
  %6809 = extractvalue %dx.types.ResRet.f32 %6807, 1
  %6810 = extractvalue %dx.types.ResRet.f32 %6807, 2
  %6811 = fsub fast float %6804, %6796
  %6812 = fsub fast float %6805, %6797
  %6813 = fsub fast float %6806, %6798
  %6814 = fmul fast float %6811, %6784
  %6815 = fmul fast float %6812, %6784
  %6816 = fmul fast float %6813, %6784
  %6817 = fadd fast float %6814, %6796
  %6818 = fadd fast float %6815, %6797
  %6819 = fadd fast float %6816, %6798
  %6820 = fsub fast float %6808, %6800
  %6821 = fsub fast float %6809, %6801
  %6822 = fsub fast float %6810, %6802
  %6823 = fmul fast float %6820, %6784
  %6824 = fmul fast float %6821, %6784
  %6825 = fmul fast float %6822, %6784
  %6826 = fsub fast float %6800, %6817
  %6827 = fadd fast float %6826, %6823
  %6828 = fsub fast float %6801, %6818
  %6829 = fadd fast float %6828, %6824
  %6830 = fsub fast float %6802, %6819
  %6831 = fadd fast float %6830, %6825
  %6832 = fmul fast float %6827, %6772
  %6833 = fmul fast float %6829, %6772
  %6834 = fmul fast float %6831, %6772
  %6835 = fadd fast float %6832, %6817
  %6836 = fadd fast float %6833, %6818
  %6837 = fadd fast float %6834, %6819
  %6838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6839 = extractvalue %dx.types.CBufRet.f32 %6838, 1
  %6840 = fmul fast float %6835, %6839
  %6841 = fmul fast float %6836, %6839
  %6842 = fmul fast float %6837, %6839
  br label %6843

; <label>:6843                                    ; preds = %6674, %6631
  %6844 = phi float [ %6714, %6674 ], [ 1.000000e+00, %6631 ]
  %6845 = phi float [ %6715, %6674 ], [ 1.000000e+00, %6631 ]
  %6846 = phi float [ %6716, %6674 ], [ 1.000000e+00, %6631 ]
  %6847 = phi float [ %6840, %6674 ], [ 0.000000e+00, %6631 ]
  %6848 = phi float [ %6841, %6674 ], [ 0.000000e+00, %6631 ]
  %6849 = phi float [ %6842, %6674 ], [ 0.000000e+00, %6631 ]
  %6850 = fmul fast float %6847, %5183
  %6851 = fmul fast float %6848, %5183
  %6852 = fmul fast float %6849, %5183
  %6853 = fmul fast float %6844, %6638
  %6854 = call float @dx.op.dot3.f32(i32 55, float %6844, float %6845, float %6846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6855 = call float @dx.op.dot3.f32(i32 55, float %6850, float %6851, float %6852, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6856 = select i1 %229, float %6854, float %6844
  %6857 = select i1 %229, float %6854, float %6845
  %6858 = select i1 %229, float 1.000000e+00, float %6846
  %6859 = select i1 %229, float %6855, float %6850
  %6860 = select i1 %229, float 0.000000e+00, float %6851
  %6861 = select i1 %229, float 0.000000e+00, float %6852
  %6862 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6863 = extractvalue %dx.types.CBufRet.i32 %6862, 3
  %6864 = and i32 %6863, 3
  %6865 = icmp ne i32 %6864, 0
  %6866 = and i32 %6863, 4
  %6867 = icmp ne i32 %6866, 0
  %6868 = and i1 %6865, %6867
  %6869 = and i1 %229, %6868
  br i1 %6869, label %6870, label %6876

; <label>:6870                                    ; preds = %6843
  %6871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6872 = extractvalue %dx.types.CBufRet.f32 %6871, 1
  %6873 = fadd fast float %6853, -1.000000e+00
  %6874 = fmul fast float %6872, %6873
  %6875 = fadd fast float %6874, 1.000000e+00
  br label %6876

; <label>:6876                                    ; preds = %6870, %6843
  %6877 = phi float [ %6875, %6870 ], [ %6853, %6843 ]
  %6878 = fadd fast float %6635, %6632
  %6879 = fmul fast float %6856, %6878
  %6880 = fadd fast float %6879, %6859
  %6881 = fadd fast float %6636, %6633
  %6882 = fmul fast float %6857, %6881
  %6883 = fadd fast float %6882, %6860
  %6884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6885 = extractvalue %dx.types.CBufRet.f32 %6884, 0
  br i1 %229, label %6886, label %6910

; <label>:6886                                    ; preds = %6876
  %6887 = fadd fast float %6880, %6883
  %6888 = fmul fast float %6885, %6887
  %6889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6890 = extractvalue %dx.types.CBufRet.f32 %6889, 3
  %6891 = extractvalue %dx.types.CBufRet.f32 %5187, 1
  %6892 = fsub fast float %5192, %5186
  %6893 = fadd fast float %6892, %5193
  %6894 = fsub fast float %6893, %6891
  %6895 = extractvalue %dx.types.CBufRet.f32 %5187, 2
  %6896 = fmul fast float %6894, %6895
  %6897 = call float @dx.op.unary.f32(i32 7, float %6896)  ; Saturate(value)
  %6898 = fsub fast float %6897, %6890
  %6899 = fmul fast float %6898, %6877
  %6900 = fadd fast float %6899, %6890
  %6901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6902 = extractvalue %dx.types.CBufRet.f32 %6901, 0
  %6903 = fsub fast float %6900, %6902
  %6904 = fmul fast float %6903, 1.000000e+01
  %6905 = call float @dx.op.unary.f32(i32 7, float %6904)  ; Saturate(value)
  %6906 = fsub fast float %1473, %5183
  %6907 = fmul fast float %6905, %6906
  %6908 = fadd fast float %6907, %5183
  %6909 = fmul fast float %6908, %6900
  br label %6934

; <label>:6910                                    ; preds = %6876
  %6911 = fadd fast float %6637, %6634
  %6912 = fmul fast float %6858, %6911
  %6913 = fadd fast float %6912, %6861
  %6914 = fmul fast float %6885, %6880
  %6915 = fmul fast float %6885, %6883
  %6916 = fmul fast float %6885, %6913
  %6917 = call float @dx.op.binary.f32(i32 35, float %6915, float %6916)  ; FMax(a,b)
  %6918 = call float @dx.op.binary.f32(i32 35, float %6914, float %6917)  ; FMax(a,b)
  %6919 = call float @dx.op.binary.f32(i32 35, float %6918, float %5183)  ; FMax(a,b)
  %6920 = fcmp fast ugt float %6919, 0x3F10000000000000
  br i1 %6920, label %6922, label %6921

; <label>:6921                                    ; preds = %6910
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6922

; <label>:6922                                    ; preds = %6921, %6910
  %6923 = add i32 %65, 132
  %6924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %6923, i32 undef)  ; BufferLoad(srv,index,wot)
  %6925 = extractvalue %dx.types.ResRet.i32 %6924, 0
  %6926 = and i32 %6925, 32
  %6927 = icmp eq i32 %6926, 0
  br i1 %6927, label %6934, label %6928

; <label>:6928                                    ; preds = %6922
  %6929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6930 = extractvalue %dx.types.CBufRet.f32 %6929, 0
  %6931 = fmul fast float %6930, 0x3FE99999A0000000
  %6932 = fadd fast float %6930, %6914
  %6933 = fadd fast float %6931, %6916
  br label %6934

; <label>:6934                                    ; preds = %6928, %6922, %6886
  %6935 = phi float [ %6888, %6886 ], [ %6932, %6928 ], [ %6914, %6922 ]
  %6936 = phi float [ %6909, %6886 ], [ %6915, %6928 ], [ %6915, %6922 ]
  %6937 = phi float [ %6908, %6886 ], [ %6933, %6928 ], [ %6916, %6922 ]
  %6938 = phi float [ %6908, %6886 ], [ %5183, %6928 ], [ %5183, %6922 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6939 = call float @dx.op.binary.f32(i32 36, float %6935, float 3.225500e+04)  ; FMin(a,b)
  %6940 = call float @dx.op.binary.f32(i32 36, float %6936, float 3.225500e+04)  ; FMin(a,b)
  %6941 = call float @dx.op.binary.f32(i32 36, float %6937, float 3.225500e+04)  ; FMin(a,b)
  %6942 = call float @dx.op.binary.f32(i32 36, float %6938, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6939)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6940)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6941)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6942)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!78 = !{[28 x i32] [i32 26, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
!79 = !{void ()* @ps_main, !"ps_main", !80, !4, !98}
!80 = !{!81, !96, null}
!81 = !{!82, !85, !87, !89, !91, !92, !93, !94, !95}
!82 = !{i32 0, !"SV_Position", i8 9, i8 3, !83, i8 4, i32 1, i8 4, i32 0, i8 0, !84}
!83 = !{i32 0}
!84 = !{i32 3, i32 15}
!85 = !{i32 1, !"COLOR", i8 9, i8 0, !83, i8 2, i32 1, i8 4, i32 1, i8 0, !86}
!86 = !{i32 3, i32 1}
!87 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !83, i8 2, i32 1, i8 2, i32 2, i8 0, !88}
!88 = !{i32 3, i32 3}
!89 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !83, i8 2, i32 1, i8 3, i32 3, i8 0, !90}
!90 = !{i32 3, i32 7}
!91 = !{i32 4, !"NORMAL", i8 9, i8 0, !83, i8 2, i32 1, i8 3, i32 4, i8 0, !90}
!92 = !{i32 5, !"TANGENT", i8 9, i8 0, !83, i8 2, i32 1, i8 4, i32 5, i8 0, !84}
!93 = !{i32 6, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !83, i8 1, i32 1, i8 1, i32 6, i8 0, !86}
!94 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !83, i8 1, i32 1, i8 1, i32 6, i8 1, !86}
!95 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !83, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!96 = !{!97}
!97 = !{i32 0, !"SV_Target", i8 9, i8 16, !83, i8 0, i32 1, i8 4, i32 0, i8 0, !84}
!98 = !{i32 0, i64 16}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
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
!111 = !{!112, !112, i64 0}
!112 = !{!"int", !113, i64 0}
!113 = !{!"omnipotent char", !114, i64 0}
!114 = !{!"Simple C/C++ TBAA"}
!115 = !{!116, !118, !120, !122}
!116 = distinct !{!116, !117, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!117 = distinct !{!117, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!118 = distinct !{!118, !119, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!119 = distinct !{!119, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!120 = distinct !{!120, !121, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!121 = distinct !{!121, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!122 = distinct !{!122, !123, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!123 = distinct !{!123, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
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
!135 = !{!136, !136, i64 0}
!136 = !{!"float", !113, i64 0}
!137 = !{!138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!138 = distinct !{!138, !139, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!139 = distinct !{!139, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!140 = distinct !{!140, !141, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!141 = distinct !{!141, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!142 = distinct !{!142, !141, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!143 = distinct !{!143, !144, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!144 = distinct !{!144, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!145 = distinct !{!145, !144, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!146 = distinct !{!146, !144, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!147 = distinct !{!147, !148, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!148 = distinct !{!148, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!149 = distinct !{!149, !148, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!150 = distinct !{!150, !148, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!151 = distinct !{!151, !152, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!152 = distinct !{!152, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"\01?sort@@YAXAIAM00@Z: %c"}
!155 = distinct !{!155, !"\01?sort@@YAXAIAM00@Z"}
!156 = !{!157, !158, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!157 = distinct !{!157, !155, !"\01?sort@@YAXAIAM00@Z: %a"}
!158 = distinct !{!158, !155, !"\01?sort@@YAXAIAM00@Z: %b"}
!159 = !{!158}
!160 = !{!157, !154, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!161 = !{!157}
!162 = !{!158, !154, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!163 = !{!164}
!164 = distinct !{!164, !165, !"\01?sort@@YAXAIAM00@Z: %c"}
!165 = distinct !{!165, !"\01?sort@@YAXAIAM00@Z"}
!166 = !{!167, !168, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!167 = distinct !{!167, !165, !"\01?sort@@YAXAIAM00@Z: %a"}
!168 = distinct !{!168, !165, !"\01?sort@@YAXAIAM00@Z: %b"}
!169 = !{!168}
!170 = !{!167, !164, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!171 = !{!167}
!172 = !{!168, !164, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 2}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}

