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
;
; shader hash: 9b122e3918bde6587179782276073a15
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
; Number of inputs: 22, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %169 = fmul fast float %90, 5.000000e-01
  %170 = fmul fast float %91, 5.000000e-01
  %171 = fptosi float %169 to i32
  %172 = fptosi float %170 to i32
  %173 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %171, i32 %172, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = lshr i32 %174, 18
  %176 = uitofp i32 %175 to float
  %177 = fmul fast float %176, 0x3F4C00EBA0000000
  %178 = call float @dx.op.unary.f32(i32 21, float %177)  ; Exp(value)
  %179 = fadd fast float %178, -1.000000e+00
  %180 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %181 = extractvalue %dx.types.Dimensions %180, 0
  %182 = sitofp i32 %181 to float
  %183 = extractvalue %dx.types.Dimensions %180, 1
  %184 = sitofp i32 %183 to float
  %185 = fcmp fast oge float %169, %182
  %186 = fcmp fast oge float %170, %184
  %187 = or i1 %185, %186
  %188 = select i1 %187, float 0x4197782600000000, float %179
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %191 = extractvalue %dx.types.CBufRet.f32 %189, 3
  %192 = fmul fast float %190, %90
  %193 = fmul fast float %191, %91
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = and i32 %195, 114688
  %197 = icmp ne i32 %196, 0
  %198 = select i1 %197, float %192, float 0.000000e+00
  %199 = select i1 %197, float %193, float 0.000000e+00
  %200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %59, float %198, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %201 = extractvalue %dx.types.ResRet.f32 %200, 0
  %202 = fmul fast float %201, 2.550000e+02
  %203 = fptoui float %202 to i32
  %204 = select i1 %197, i32 %203, i32 0
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.i32 %206, 3
  %208 = and i32 %207, 3
  %209 = icmp ne i32 %208, 0
  %210 = and i32 %207, 4
  %211 = icmp ne i32 %210, 0
  %212 = and i1 %209, %211
  br i1 %212, label %213, label %224

; <label>:213                                     ; preds = %0
  %214 = extractvalue %dx.types.CBufRet.f32 %205, 3
  %215 = fmul fast float %214, %91
  %216 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %217 = fmul fast float %216, %90
  %218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %58, float %217, float %215, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = fsub fast float 1.000000e+00, %219
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = fcmp fast olt float %220, %222
  br label %227

; <label>:224                                     ; preds = %0
  %225 = icmp eq i32 %210, 0
  %226 = and i1 %209, %225
  br label %227

; <label>:227                                     ; preds = %224, %213
  %228 = phi i1 [ %223, %213 ], [ %226, %224 ]
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %231 = fmul fast float %230, 0x3FE3C6EF40000000
  %232 = frem fast float %90, 2.560000e+02
  %233 = frem fast float %91, 2.560000e+02
  %234 = fptoui float %232 to i32
  %235 = fptoui float %233 to i32
  %236 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %234, i32 %235, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = fadd fast float %237, %231
  %239 = call float @dx.op.unary.f32(i32 22, float %238)  ; Frc(value)
  %240 = add i32 %65, 60
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = shl i32 %242, 4
  %244 = and i32 %243, 32752
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %242, 7
  %247 = and i32 %246, 32752
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %242, 22
  %250 = shl nuw nsw i32 %249, 5
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = add i32 %65, 72
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = and i32 %254, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F70101020000000
  %258 = lshr i32 %254, 8
  %259 = and i32 %258, 255
  %260 = uitofp i32 %259 to float
  %261 = fmul fast float %260, 0x3F70101020000000
  %262 = lshr i32 %254, 16
  %263 = and i32 %262, 255
  %264 = uitofp i32 %263 to float
  %265 = fmul fast float %264, 0x3F70101020000000
  %266 = add i32 %65, 36
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = and i32 %268, 65535
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %268, 16
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = add i32 %65, 96
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 65535
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %275, 16
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = fmul fast float %277, 0x3F50624DE0000000
  %281 = fmul fast float %279, 0x3F50624DE0000000
  %282 = add i32 %65, 108
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 2
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %295, label %287

; <label>:287                                     ; preds = %227
  %288 = add i32 %65, 152
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = add i32 %290, 0
  %292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %291, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %293 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %292, %dx.types.Handle %87, float %76, float %77, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %294 = extractvalue %dx.types.ResRet.f32 %293, 3
  br label %295

; <label>:295                                     ; preds = %287, %227
  %296 = phi float [ 1.000000e+00, %227 ], [ %294, %287 ]
  %297 = add i32 %65, 24
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = add i32 %65, 28
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = or i32 %302, %299
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %1057, label %305

; <label>:305                                     ; preds = %295
  %306 = add i32 %65, 92
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = lshr i32 %308, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = fmul fast float %310, 0x3F50624DE0000000
  %312 = add i32 %65, 40
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = lshr i32 %314, 16
  %316 = and i32 %315, 255
  %317 = lshr i32 %314, 24
  %318 = add i32 %65, 100
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %320, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = add i32 %65, 32
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = lshr i32 %327, 22
  %329 = shl nuw nsw i32 %328, 5
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = shl i32 %327, 4
  %332 = and i32 %331, 32752
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %327, 7
  %335 = and i32 %334, 32752
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.f32 %337, 3
  %339 = fmul fast float %338, 1.000000e+03
  %340 = fmul fast float %280, %339
  %341 = call float @dx.op.unary.f32(i32 22, float %340)  ; Frc(value)
  %342 = fadd fast float %341, %270
  %343 = fmul fast float %281, %339
  %344 = call float @dx.op.unary.f32(i32 22, float %343)  ; Frc(value)
  %345 = fadd fast float %344, %272
  %346 = fmul fast float %311, %339
  %347 = call float @dx.op.unary.f32(i32 22, float %346)  ; Frc(value)
  %348 = fmul fast float %347, 0x401921FB60000000
  %349 = fadd fast float %348, %330
  %350 = call float @dx.op.unary.f32(i32 13, float %349)  ; Sin(value)
  %351 = call float @dx.op.unary.f32(i32 12, float %349)  ; Cos(value)
  %352 = fsub fast float -0.000000e+00, %350
  %353 = fadd fast float %76, -5.000000e-01
  %354 = fadd fast float %77, -5.000000e-01
  %355 = fmul fast float %322, %353
  %356 = fmul fast float %324, %354
  %357 = fadd fast float %355, 5.000000e-01
  %358 = fadd fast float %356, 5.000000e-01
  %359 = fmul fast float %333, %357
  %360 = fmul fast float %336, %358
  %361 = fmul fast float %351, %359
  %362 = call float @dx.op.tertiary.f32(i32 46, float %352, float %360, float %361)  ; FMad(a,b,c)
  %363 = fmul fast float %350, %359
  %364 = call float @dx.op.tertiary.f32(i32 46, float %351, float %360, float %363)  ; FMad(a,b,c)
  %365 = fadd fast float %342, %362
  %366 = fadd fast float %345, %364
  %367 = icmp ugt i32 %316, 1
  %368 = icmp ugt i32 %314, 33554431
  %369 = or i1 %368, %367
  br i1 %369, label %370, label %395

; <label>:370                                     ; preds = %305
  %371 = add i32 %65, 84
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = lshr i32 %373, 16
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = fmul fast float %338, %375
  %377 = call float @dx.op.unary.f32(i32 22, float %376)  ; Frc(value)
  %378 = mul nuw nsw i32 %316, %317
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %377, %379
  %381 = call float @dx.op.unary.f32(i32 27, float %380)  ; Round_ni(value)
  %382 = fptoui float %381 to i32
  %383 = urem i32 %382, %316
  %384 = udiv i32 %382, %317
  %385 = call float @dx.op.unary.f32(i32 22, float %365)  ; Frc(value)
  %386 = call float @dx.op.unary.f32(i32 22, float %366)  ; Frc(value)
  %387 = uitofp i32 %383 to float
  %388 = uitofp i32 %384 to float
  %389 = fadd fast float %385, %387
  %390 = fadd fast float %386, %388
  %391 = uitofp i32 %316 to float
  %392 = uitofp i32 %317 to float
  %393 = fdiv fast float %389, %391
  %394 = fdiv fast float %390, %392
  br label %395

; <label>:395                                     ; preds = %370, %305
  %396 = phi float [ %393, %370 ], [ %365, %305 ]
  %397 = phi float [ %394, %370 ], [ %366, %305 ]
  %398 = and i32 %299, 16777216
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %509, label %400

; <label>:400                                     ; preds = %395
  %401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.f32 %401, 0
  %403 = extractvalue %dx.types.CBufRet.f32 %401, 1
  %404 = extractvalue %dx.types.CBufRet.f32 %401, 2
  %405 = fadd fast float %402, %137
  %406 = fadd fast float %403, %138
  %407 = fadd fast float %404, %139
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 0
  %410 = call float @dx.op.unary.f32(i32 7, float %409)  ; Saturate(value)
  %411 = icmp eq i32 %64, 65535
  br i1 %411, label %506, label %412

; <label>:412                                     ; preds = %400
  %413 = lshr i32 %64, 1
  %414 = shl i32 %413, 2
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %64, 1
  %418 = icmp ne i32 %417, 0
  %419 = lshr i32 %416, 16
  %420 = and i32 %416, 65535
  %421 = select i1 %418, i32 %419, i32 %420
  %422 = icmp eq i32 %421, 65535
  br i1 %422, label %502, label %423

; <label>:423                                     ; preds = %412
  %424 = mul nuw nsw i32 %421, 40
  %425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.f32 %425, 0
  %427 = extractvalue %dx.types.ResRet.f32 %425, 1
  %428 = extractvalue %dx.types.ResRet.f32 %425, 2
  %429 = add nuw nsw i32 %424, 12
  %430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  %434 = add nuw nsw i32 %424, 24
  %435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = extractvalue %dx.types.ResRet.f32 %435, 1
  %438 = extractvalue %dx.types.ResRet.f32 %435, 2
  %439 = add nuw nsw i32 %424, 36
  %440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = fsub fast float %405, %426
  %443 = fsub fast float %406, %427
  %444 = fsub fast float %407, %428
  %445 = fmul fast float %441, %442
  %446 = fmul fast float %441, %443
  %447 = fmul fast float %441, %444
  %448 = call float @dx.op.unary.f32(i32 27, float %445)  ; Round_ni(value)
  %449 = call float @dx.op.unary.f32(i32 27, float %446)  ; Round_ni(value)
  %450 = call float @dx.op.unary.f32(i32 27, float %447)  ; Round_ni(value)
  %451 = fadd fast float %448, 5.000000e-01
  %452 = fadd fast float %449, 5.000000e-01
  %453 = fadd fast float %450, 5.000000e-01
  %454 = fmul fast float %451, %431
  %455 = fmul fast float %452, %432
  %456 = fmul fast float %453, %433
  %457 = shl i32 %64, 2
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = add i32 %459, 0
  %461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %460, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %462 = call float @dx.op.unary.f32(i32 22, float %454)  ; Frc(value)
  %463 = call float @dx.op.unary.f32(i32 22, float %455)  ; Frc(value)
  %464 = call float @dx.op.unary.f32(i32 22, float %456)  ; Frc(value)
  %465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %461, %dx.types.Handle %59, float %462, float %463, float %464, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %466 = extractvalue %dx.types.ResRet.f32 %465, 0
  %467 = extractvalue %dx.types.ResRet.f32 %465, 1
  %468 = extractvalue %dx.types.ResRet.f32 %465, 2
  %469 = fmul fast float %466, 1.023000e+03
  %470 = fmul fast float %467, 1.023000e+03
  %471 = fmul fast float %468, 1.023000e+03
  %472 = fadd fast float %469, 5.000000e-01
  %473 = fadd fast float %470, 5.000000e-01
  %474 = fadd fast float %471, 5.000000e-01
  %475 = call float @dx.op.unary.f32(i32 27, float %472)  ; Round_ni(value)
  %476 = call float @dx.op.unary.f32(i32 27, float %473)  ; Round_ni(value)
  %477 = call float @dx.op.unary.f32(i32 27, float %474)  ; Round_ni(value)
  %478 = fsub fast float %445, %448
  %479 = fsub fast float %446, %449
  %480 = fsub fast float %447, %450
  %481 = fmul fast float %478, 7.500000e-01
  %482 = fmul fast float %479, 7.500000e-01
  %483 = fmul fast float %480, 7.500000e-01
  %484 = fadd fast float %448, 1.250000e-01
  %485 = fadd fast float %484, %481
  %486 = fadd fast float %485, %475
  %487 = fadd fast float %449, 1.250000e-01
  %488 = fadd fast float %487, %482
  %489 = fadd fast float %488, %476
  %490 = fadd fast float %450, 1.250000e-01
  %491 = fadd fast float %490, %483
  %492 = fadd fast float %491, %477
  %493 = fmul fast float %486, %436
  %494 = fmul fast float %489, %437
  %495 = fmul fast float %492, %438
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = add i32 %497, 0
  %499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %498, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %499, %dx.types.Handle %57, float %493, float %494, float %495, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 0
  br label %502

; <label>:502                                     ; preds = %423, %412
  %503 = phi float [ %501, %423 ], [ -1.000000e+00, %412 ]
  %504 = fadd fast float %503, %410
  %505 = call float @dx.op.unary.f32(i32 7, float %504)  ; Saturate(value)
  br label %506

; <label>:506                                     ; preds = %502, %400
  %507 = phi float [ %505, %502 ], [ %410, %400 ]
  %508 = fmul fast float %507, %296
  br label %509

; <label>:509                                     ; preds = %506, %395
  %510 = phi float [ %508, %506 ], [ %296, %395 ]
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = and i32 %512, 256
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %561, label %515

; <label>:515                                     ; preds = %509
  %516 = add i32 %65, 136
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = add i32 %518, 0
  %520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %521 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %520, %dx.types.Handle %87, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 0
  %523 = add i32 %65, 52
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = shl i32 %525, 4
  %527 = and i32 %526, 32752
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = lshr i32 %525, 7
  %530 = and i32 %529, 32752
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = fsub fast float 1.000000e+00, %510
  %533 = call float @dx.op.binary.f32(i32 35, float %532, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %534 = bitcast float %510 to i32
  %535 = sitofp i32 %534 to float
  %536 = fadd fast float %535, 0xC1CFBF8940000000
  %537 = fmul fast float %531, %536
  %538 = fadd fast float %537, 0x41CFBF8940000000
  %539 = fptosi float %538 to i32
  %540 = bitcast i32 %539 to float
  %541 = bitcast float %533 to i32
  %542 = sitofp i32 %541 to float
  %543 = fadd fast float %542, 0xC1CFBF8940000000
  %544 = fmul fast float %543, %531
  %545 = fadd fast float %544, 0x41CFBF8940000000
  %546 = fptosi float %545 to i32
  %547 = bitcast i32 %546 to float
  %548 = fmul fast float %540, %528
  %549 = fmul fast float %547, %528
  %550 = fsub fast float %533, %548
  %551 = fadd fast float %549, %533
  %552 = call float @dx.op.unary.f32(i32 7, float %550)  ; Saturate(value)
  %553 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  %554 = fsub fast float %522, %552
  %555 = fsub fast float %553, %552
  %556 = bitcast float %555 to i32
  %557 = sub nsw i32 2129859010, %556
  %558 = bitcast i32 %557 to float
  %559 = fmul fast float %558, %554
  %560 = call float @dx.op.unary.f32(i32 7, float %559)  ; Saturate(value)
  br label %561

; <label>:561                                     ; preds = %515, %509
  %562 = phi float [ %560, %515 ], [ %510, %509 ]
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = and i32 %564, 128
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %583, label %567

; <label>:567                                     ; preds = %561
  %568 = add i32 %65, 132
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = add i32 %570, 0
  %572 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %571, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %573 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %572, %dx.types.Handle %87, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = and i32 %576, 524288
  %578 = icmp ne i32 %577, 0
  %579 = fcmp fast ogt float %574, 0x3FE0101020000000
  %580 = select i1 %579, float 1.000000e+00, float 0.000000e+00
  %581 = select i1 %578, float %580, float %574
  %582 = fmul fast float %581, %562
  br label %583

; <label>:583                                     ; preds = %567, %561
  %584 = phi float [ %582, %567 ], [ %562, %561 ]
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = and i32 %586, 16
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %787, label %589

; <label>:589                                     ; preds = %583
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = add i32 %65, 120
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = add i32 %594, 0
  %596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %596, %dx.types.Handle %86, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  %599 = extractvalue %dx.types.ResRet.f32 %597, 1
  %600 = extractvalue %dx.types.ResRet.f32 %597, 2
  %601 = extractvalue %dx.types.ResRet.f32 %597, 3
  %602 = and i32 %591, 255
  %603 = uitofp i32 %602 to float
  %604 = lshr i32 %591, 8
  %605 = and i32 %604, 255
  %606 = uitofp i32 %605 to float
  %607 = fmul fast float %601, %603
  %608 = fadd fast float %607, %606
  %609 = fmul fast float %608, 0x3F70101000000000
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = and i32 %611, 512
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %622, label %614

; <label>:614                                     ; preds = %589
  %615 = add i32 %65, 140
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = add i32 %617, 0
  %619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %618, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %620 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %619, %dx.types.Handle %87, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  br label %622

; <label>:622                                     ; preds = %614, %589
  %623 = phi float [ %621, %614 ], [ 1.000000e+00, %589 ]
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = and i32 %625, 33554432
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %734, label %628

; <label>:628                                     ; preds = %622
  %629 = add i32 %65, 80
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = and i32 %631, 65535
  %633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %632)  ; LegacyF16ToF32(value)
  %634 = lshr i32 %631, 16
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = add i32 %65, 84
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = and i32 %638, 65535
  %640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %639)  ; LegacyF16ToF32(value)
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = lshr i32 %642, 24
  %644 = uitofp i32 %643 to float
  %645 = fmul fast float %644, 0x3F70101020000000
  %646 = and i32 %642, 255
  %647 = uitofp i32 %646 to float
  %648 = fmul fast float %647, 0x3F70101020000000
  %649 = lshr i32 %642, 8
  %650 = and i32 %649, 255
  %651 = uitofp i32 %650 to float
  %652 = fmul fast float %651, 0x3F70101020000000
  %653 = lshr i32 %642, 16
  %654 = and i32 %653, 255
  %655 = uitofp i32 %654 to float
  %656 = fmul fast float %655, 0x3F70101020000000
  %657 = add i32 %65, 76
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = lshr i32 %659, 24
  %661 = uitofp i32 %660 to float
  %662 = fmul fast float %661, 0x3F70101020000000
  %663 = and i32 %659, 255
  %664 = uitofp i32 %663 to float
  %665 = fmul fast float %664, 0x3F70101020000000
  %666 = lshr i32 %659, 8
  %667 = and i32 %666, 255
  %668 = uitofp i32 %667 to float
  %669 = fmul fast float %668, 0x3F70101020000000
  %670 = lshr i32 %659, 16
  %671 = and i32 %670, 255
  %672 = uitofp i32 %671 to float
  %673 = fmul fast float %672, 0x3F70101020000000
  %674 = bitcast float %598 to i32
  %675 = ashr i32 %674, 1
  %676 = sub nsw i32 1597463174, %675
  %677 = bitcast i32 %676 to float
  %678 = fmul fast float %598, 5.000000e-01
  %679 = fmul fast float %677, %677
  %680 = fmul fast float %679, %678
  %681 = fsub fast float 1.500000e+00, %680
  %682 = fmul fast float %677, %598
  %683 = fmul fast float %682, %681
  %684 = bitcast float %599 to i32
  %685 = ashr i32 %684, 1
  %686 = sub nsw i32 1597463174, %685
  %687 = bitcast i32 %686 to float
  %688 = fmul fast float %599, 5.000000e-01
  %689 = fmul fast float %687, %687
  %690 = fmul fast float %689, %688
  %691 = fsub fast float 1.500000e+00, %690
  %692 = fmul fast float %687, %599
  %693 = fmul fast float %692, %691
  %694 = bitcast float %600 to i32
  %695 = ashr i32 %694, 1
  %696 = sub nsw i32 1597463174, %695
  %697 = bitcast i32 %696 to float
  %698 = fmul fast float %600, 5.000000e-01
  %699 = fmul fast float %697, %697
  %700 = fmul fast float %699, %698
  %701 = fsub fast float 1.500000e+00, %700
  %702 = fmul fast float %697, %600
  %703 = fmul fast float %702, %701
  %704 = fsub fast float %683, %665
  %705 = fsub fast float %693, %669
  %706 = fsub fast float %703, %673
  %707 = fmul fast float %704, %633
  %708 = fmul fast float %705, %635
  %709 = fmul fast float %706, %640
  %710 = fadd fast float %707, %648
  %711 = fadd fast float %708, %652
  %712 = fadd fast float %709, %656
  %713 = call float @dx.op.unary.f32(i32 7, float %710)  ; Saturate(value)
  %714 = call float @dx.op.unary.f32(i32 7, float %711)  ; Saturate(value)
  %715 = call float @dx.op.unary.f32(i32 7, float %712)  ; Saturate(value)
  %716 = fmul fast float %713, %713
  %717 = fmul fast float %714, %714
  %718 = fmul fast float %715, %715
  %719 = fsub fast float %716, %598
  %720 = fsub fast float %717, %599
  %721 = fsub fast float %718, %600
  %722 = fmul fast float %719, %623
  %723 = fmul fast float %720, %623
  %724 = fmul fast float %721, %623
  %725 = fadd fast float %722, %598
  %726 = fadd fast float %723, %599
  %727 = fadd fast float %724, %600
  %728 = fadd fast float %645, %609
  %729 = fsub fast float %728, %662
  %730 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  %731 = fsub fast float %730, %609
  %732 = fmul fast float %731, %623
  %733 = fadd fast float %732, %609
  br label %787

; <label>:734                                     ; preds = %622
  %735 = and i32 %625, 134217728
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %771, label %737

; <label>:737                                     ; preds = %734
  %738 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %739 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %740 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %741 = fadd fast float %738, -5.000000e-01
  %742 = fadd fast float %739, -5.000000e-01
  %743 = fadd fast float %740, -5.000000e-01
  %744 = fmul fast float %741, %623
  %745 = fmul fast float %742, %623
  %746 = fmul fast float %743, %623
  %747 = fadd fast float %744, 5.000000e-01
  %748 = fadd fast float %745, 5.000000e-01
  %749 = fadd fast float %746, 5.000000e-01
  %750 = call float @dx.op.unary.f32(i32 24, float %598)  ; Sqrt(value)
  %751 = call float @dx.op.unary.f32(i32 24, float %599)  ; Sqrt(value)
  %752 = call float @dx.op.unary.f32(i32 24, float %600)  ; Sqrt(value)
  %753 = fmul fast float %747, 2.000000e+00
  %754 = fsub fast float 1.000000e+00, %753
  %755 = fmul fast float %754, %750
  %756 = fadd fast float %755, %753
  %757 = fmul fast float %756, %750
  %758 = fmul fast float %748, 2.000000e+00
  %759 = fsub fast float 1.000000e+00, %758
  %760 = fmul fast float %759, %751
  %761 = fadd fast float %760, %758
  %762 = fmul fast float %761, %751
  %763 = fmul fast float %749, 2.000000e+00
  %764 = fsub fast float 1.000000e+00, %763
  %765 = fmul fast float %764, %752
  %766 = fadd fast float %765, %763
  %767 = fmul fast float %766, %752
  %768 = fmul fast float %757, %757
  %769 = fmul fast float %762, %762
  %770 = fmul fast float %767, %767
  br label %787

; <label>:771                                     ; preds = %734
  %772 = fmul fast float %257, %257
  %773 = fmul fast float %261, %261
  %774 = fmul fast float %265, %265
  %775 = fadd fast float %772, -1.000000e+00
  %776 = fadd fast float %773, -1.000000e+00
  %777 = fadd fast float %774, -1.000000e+00
  %778 = fmul fast float %623, %775
  %779 = fmul fast float %623, %776
  %780 = fmul fast float %623, %777
  %781 = fadd fast float %778, 1.000000e+00
  %782 = fadd fast float %779, 1.000000e+00
  %783 = fadd fast float %780, 1.000000e+00
  %784 = fmul fast float %781, %598
  %785 = fmul fast float %782, %599
  %786 = fmul fast float %783, %600
  br label %787

; <label>:787                                     ; preds = %771, %737, %628, %583
  %788 = phi float [ %733, %628 ], [ %609, %737 ], [ %609, %771 ], [ 0x3FA23C0BE0000000, %583 ]
  %789 = phi float [ %725, %628 ], [ %768, %737 ], [ %784, %771 ], [ 1.000000e+00, %583 ]
  %790 = phi float [ %726, %628 ], [ %769, %737 ], [ %785, %771 ], [ 1.000000e+00, %583 ]
  %791 = phi float [ %727, %628 ], [ %770, %737 ], [ %786, %771 ], [ 1.000000e+00, %583 ]
  %792 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %793 = extractvalue %dx.types.CBufRet.i32 %792, 1
  %794 = and i32 %793, 1
  %795 = icmp ne i32 %794, 0
  %796 = add i32 %65, 116
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = and i32 %798, 32
  %800 = icmp ne i32 %799, 0
  %801 = and i1 %795, %800
  %802 = select i1 %801, float 1.000000e+00, float %789
  %803 = select i1 %801, float 0x3FD3333340000000, float %790
  %804 = select i1 %801, float 0x3FD3333340000000, float %791
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = and i32 %806, 32
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %881, label %809

; <label>:809                                     ; preds = %787
  %810 = add i32 %65, 44
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = add i32 %65, 124
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %813, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = add i32 %815, 0
  %817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %816, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %818 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %817, %dx.types.Handle %86, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %819 = extractvalue %dx.types.ResRet.f32 %818, 0
  %820 = extractvalue %dx.types.ResRet.f32 %818, 1
  %821 = extractvalue %dx.types.ResRet.f32 %818, 2
  %822 = extractvalue %dx.types.ResRet.f32 %818, 3
  %823 = and i32 %812, 255
  %824 = uitofp i32 %823 to float
  %825 = lshr i32 %812, 8
  %826 = and i32 %825, 255
  %827 = uitofp i32 %826 to float
  %828 = lshr i32 %812, 16
  %829 = and i32 %828, 255
  %830 = uitofp i32 %829 to float
  %831 = fmul fast float %830, 0x3F70101000000000
  %832 = fmul fast float %819, %824
  %833 = fadd fast float %832, %827
  %834 = fmul fast float %833, 0x3F70101000000000
  %835 = fadd fast float %820, -5.000000e-01
  %836 = fadd fast float %822, -5.000000e-01
  %837 = fmul fast float %835, %831
  %838 = fmul fast float %836, %831
  %839 = fadd fast float %837, 5.000000e-01
  %840 = fadd fast float %838, 5.000000e-01
  %841 = fmul fast float %839, 2.000000e+00
  %842 = fadd fast float %841, -1.000000e+00
  %843 = fmul fast float %840, 2.000000e+00
  %844 = fadd fast float %843, -1.000000e+00
  %845 = fadd fast float %842, %844
  %846 = fmul fast float %845, 5.000000e-01
  %847 = fsub fast float %842, %844
  %848 = fmul fast float %847, 5.000000e-01
  %849 = call float @dx.op.unary.f32(i32 6, float %846)  ; FAbs(value)
  %850 = fsub fast float 1.000000e+00, %849
  %851 = call float @dx.op.unary.f32(i32 6, float %848)  ; FAbs(value)
  %852 = fsub fast float %850, %851
  %853 = call float @dx.op.dot3.f32(i32 55, float %846, float %848, float %852, float %846, float %848, float %852)  ; Dot3(ax,ay,az,bx,by,bz)
  %854 = call float @dx.op.unary.f32(i32 25, float %853)  ; Rsqrt(value)
  %855 = fmul fast float %846, %854
  %856 = fmul fast float %848, %854
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = and i32 %858, 67108864
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %877, label %861

; <label>:861                                     ; preds = %809
  %862 = add i32 %65, 88
  %863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %862, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.i32 %863, 0
  %865 = and i32 %864, 65535
  %866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %865)  ; LegacyF16ToF32(value)
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = and i32 %868, 65535
  %870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %869)  ; LegacyF16ToF32(value)
  %871 = lshr i32 %864, 16
  %872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %871)  ; LegacyF16ToF32(value)
  %873 = fsub fast float %834, %872
  %874 = fmul fast float %873, %866
  %875 = fadd fast float %874, %870
  %876 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  br label %877

; <label>:877                                     ; preds = %861, %809
  %878 = phi float [ %876, %861 ], [ %834, %809 ]
  %879 = call float @dx.op.dot2.f32(i32 54, float %855, float %856, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %880 = call float @dx.op.dot2.f32(i32 54, float %855, float %856, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %881

; <label>:881                                     ; preds = %877, %787
  %882 = phi float [ %878, %877 ], [ 0x3FD6666660000000, %787 ]
  %883 = phi float [ %879, %877 ], [ 0.000000e+00, %787 ]
  %884 = phi float [ %880, %877 ], [ 0.000000e+00, %787 ]
  %885 = phi float [ %821, %877 ], [ 1.000000e+00, %787 ]
  %886 = add i32 %65, 64
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = lshr i32 %888, 22
  %890 = shl nuw nsw i32 %889, 5
  %891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %890)  ; LegacyF16ToF32(value)
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = and i32 %893, 64
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %929, label %896

; <label>:896                                     ; preds = %881
  %897 = add i32 %65, 128
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = add i32 %899, 0
  %901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = and i32 %903, 131072
  %905 = icmp eq i32 %904, 0
  %906 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %901, %dx.types.Handle %86, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %907 = extractvalue %dx.types.ResRet.f32 %906, 0
  %908 = extractvalue %dx.types.ResRet.f32 %906, 1
  %909 = extractvalue %dx.types.ResRet.f32 %906, 2
  %910 = fmul fast float %907, %245
  %911 = fmul fast float %908, %248
  %912 = fmul fast float %909, %251
  br i1 %905, label %919, label %913

; <label>:913                                     ; preds = %896
  %914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %915 = extractvalue %dx.types.CBufRet.f32 %914, 0
  %916 = fmul fast float %915, %910
  %917 = fmul fast float %915, %911
  %918 = fmul fast float %915, %912
  br label %919

; <label>:919                                     ; preds = %913, %896
  %920 = phi float [ %916, %913 ], [ %910, %896 ]
  %921 = phi float [ %917, %913 ], [ %911, %896 ]
  %922 = phi float [ %918, %913 ], [ %912, %896 ]
  %923 = fmul fast float %920, %891
  %924 = select i1 %228, float %923, float %920
  %925 = call float @dx.op.dot3.f32(i32 55, float %924, float %921, float %922, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %926 = select i1 %228, float 0.000000e+00, float %920
  %927 = select i1 %228, float %925, float %921
  %928 = select i1 %228, float 0.000000e+00, float %922
  br label %929

; <label>:929                                     ; preds = %919, %881
  %930 = phi float [ %926, %919 ], [ 0.000000e+00, %881 ]
  %931 = phi float [ %927, %919 ], [ 0.000000e+00, %881 ]
  %932 = phi float [ %928, %919 ], [ 0.000000e+00, %881 ]
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = and i32 %934, 1024
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %967, label %937

; <label>:937                                     ; preds = %929
  %938 = add i32 %65, 56
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = and i32 %940, 255
  %942 = uitofp i32 %941 to float
  %943 = fmul fast float %942, 0x3F70101020000000
  %944 = lshr i32 %940, 8
  %945 = and i32 %944, 255
  %946 = uitofp i32 %945 to float
  %947 = fmul fast float %946, 0x3F70101020000000
  %948 = lshr i32 %940, 16
  %949 = and i32 %948, 255
  %950 = uitofp i32 %949 to float
  %951 = fmul fast float %950, 0x3F70101020000000
  %952 = fmul fast float %943, %943
  %953 = fmul fast float %947, %947
  %954 = fmul fast float %951, %951
  %955 = add i32 %65, 144
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = add i32 %957, 0
  %959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %958, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %960 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %959, %dx.types.Handle %87, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %961 = extractvalue %dx.types.ResRet.f32 %960, 0
  %962 = extractvalue %dx.types.ResRet.f32 %960, 1
  %963 = extractvalue %dx.types.ResRet.f32 %960, 2
  %964 = fmul fast float %952, %961
  %965 = fmul fast float %953, %962
  %966 = fmul fast float %954, %963
  br label %967

; <label>:967                                     ; preds = %937, %929
  %968 = phi float [ %964, %937 ], [ 0.000000e+00, %929 ]
  %969 = phi float [ %965, %937 ], [ 0.000000e+00, %929 ]
  %970 = phi float [ %966, %937 ], [ 0.000000e+00, %929 ]
  %971 = fcmp fast ogt float %968, 0.000000e+00
  %972 = fcmp fast ogt float %969, 0.000000e+00
  %973 = fcmp fast ogt float %970, 0.000000e+00
  %974 = call float @dx.op.unary.f32(i32 23, float %968)  ; Log(value)
  %975 = call float @dx.op.unary.f32(i32 23, float %969)  ; Log(value)
  %976 = call float @dx.op.unary.f32(i32 23, float %970)  ; Log(value)
  %977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = lshr i32 %978, 7
  %980 = and i32 %979, 32752
  %981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %980)  ; LegacyF16ToF32(value)
  %982 = fmul fast float %974, 0xBFE62E4300000000
  %983 = fmul fast float %982, %981
  %984 = fmul fast float %975, 0xBFE62E4300000000
  %985 = fmul fast float %984, %981
  %986 = fmul fast float %976, 0xBFE62E4300000000
  %987 = fmul fast float %986, %981
  %988 = select i1 %971, float %983, float 1.270000e+02
  %989 = select i1 %972, float %985, float 1.270000e+02
  %990 = select i1 %973, float %987, float 1.270000e+02
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = and i32 %992, 10240
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1039, label %995

; <label>:995                                     ; preds = %967
  %996 = add i32 %65, 148
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = add i32 %998, 0
  %1000 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %999, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1001 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1000, %dx.types.Handle %87, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1002 = extractvalue %dx.types.ResRet.f32 %1001, 1
  %1003 = extractvalue %dx.types.ResRet.f32 %1001, 3
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = and i32 %1005, 1048576
  %1007 = icmp ne i32 %1006, 0
  %1008 = and i32 %1005, 8192
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1025, label %1010

; <label>:1010                                    ; preds = %995
  %1011 = extractvalue %dx.types.ResRet.f32 %1001, 2
  %1012 = select i1 %1007, float %1011, float %1002
  %1013 = extractvalue %dx.types.ResRet.f32 %1001, 0
  %1014 = select i1 %1007, float %1013, float %1002
  %1015 = add i32 %65, 48
  %1016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1015, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.i32 %1016, 0
  %1018 = lshr i32 %1017, 16
  %1019 = and i32 %1018, 255
  %1020 = uitofp i32 %1019 to float
  %1021 = fmul fast float %1020, 0x3F80101020000000
  %1022 = fmul fast float %1021, %1014
  %1023 = fmul fast float %1021, %1002
  %1024 = fmul fast float %1021, %1012
  br label %1025

; <label>:1025                                    ; preds = %1010, %995
  %1026 = phi float [ %1022, %1010 ], [ 0.000000e+00, %995 ]
  %1027 = phi float [ %1023, %1010 ], [ 0.000000e+00, %995 ]
  %1028 = phi float [ %1024, %1010 ], [ 0.000000e+00, %995 ]
  %1029 = and i32 %1005, 2048
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1039, label %1031

; <label>:1031                                    ; preds = %1025
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = shl i32 %1033, 4
  %1035 = and i32 %1034, 32752
  %1036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1035)  ; LegacyF16ToF32(value)
  %1037 = fmul fast float %1036, %1003
  %1038 = call float @dx.op.binary.f32(i32 35, float %1037, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1039

; <label>:1039                                    ; preds = %1031, %1025, %967
  %1040 = phi float [ %1026, %1031 ], [ %1026, %1025 ], [ 0.000000e+00, %967 ]
  %1041 = phi float [ %1027, %1031 ], [ %1027, %1025 ], [ 0.000000e+00, %967 ]
  %1042 = phi float [ %1028, %1031 ], [ %1028, %1025 ], [ 0.000000e+00, %967 ]
  %1043 = phi float [ %1038, %1031 ], [ 0x3F70101020000000, %1025 ], [ 0x3F70101020000000, %967 ]
  %1044 = add i32 %65, 48
  %1045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.i32 %1045, 0
  %1047 = and i32 %1046, 255
  %1048 = uitofp i32 %1047 to float
  %1049 = lshr i32 %1046, 8
  %1050 = and i32 %1049, 255
  %1051 = uitofp i32 %1050 to float
  %1052 = call float @dx.op.dot3.f32(i32 55, float %802, float %803, float %804, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1053 = fmul fast float %1051, %1052
  %1054 = fadd fast float %1053, %1048
  %1055 = fmul fast float %1054, 0x3F70101020000000
  %1056 = call float @dx.op.unary.f32(i32 7, float %1055)  ; Saturate(value)
  br label %1057

; <label>:1057                                    ; preds = %1039, %295
  %1058 = phi float [ 0.000000e+00, %295 ], [ %883, %1039 ]
  %1059 = phi float [ 0.000000e+00, %295 ], [ %884, %1039 ]
  %1060 = phi float [ 0.000000e+00, %295 ], [ %930, %1039 ]
  %1061 = phi float [ 0.000000e+00, %295 ], [ %931, %1039 ]
  %1062 = phi float [ 0.000000e+00, %295 ], [ %932, %1039 ]
  %1063 = phi float [ 0.000000e+00, %295 ], [ %802, %1039 ]
  %1064 = phi float [ 0.000000e+00, %295 ], [ %803, %1039 ]
  %1065 = phi float [ 0.000000e+00, %295 ], [ %804, %1039 ]
  %1066 = phi float [ 0.000000e+00, %295 ], [ %988, %1039 ]
  %1067 = phi float [ 0.000000e+00, %295 ], [ %989, %1039 ]
  %1068 = phi float [ 0.000000e+00, %295 ], [ %990, %1039 ]
  %1069 = phi float [ 0.000000e+00, %295 ], [ %1040, %1039 ]
  %1070 = phi float [ 0.000000e+00, %295 ], [ %1041, %1039 ]
  %1071 = phi float [ 0.000000e+00, %295 ], [ %1042, %1039 ]
  %1072 = phi float [ 0.000000e+00, %295 ], [ %788, %1039 ]
  %1073 = phi float [ 0.000000e+00, %295 ], [ %584, %1039 ]
  %1074 = phi float [ 0.000000e+00, %295 ], [ %882, %1039 ]
  %1075 = phi float [ 0.000000e+00, %295 ], [ %885, %1039 ]
  %1076 = phi float [ 0.000000e+00, %295 ], [ %1043, %1039 ]
  %1077 = phi float [ 0.000000e+00, %295 ], [ %1056, %1039 ]
  %1078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1079 = extractvalue %dx.types.CBufRet.f32 %1078, 0
  %1080 = call float @dx.op.dot2.f32(i32 54, float %1058, float %1059, float %1058, float %1059)  ; Dot2(ax,ay,bx,by)
  %1081 = fmul fast float %1080, 0x3FE3333340000000
  %1082 = fsub fast float 1.000000e+00, %1081
  %1083 = call float @dx.op.dot3.f32(i32 55, float %1058, float %1059, float %1082, float %1058, float %1059, float %1082)  ; Dot3(ax,ay,az,bx,by,bz)
  %1084 = call float @dx.op.unary.f32(i32 25, float %1083)  ; Rsqrt(value)
  %1085 = fmul fast float %1084, %1058
  %1086 = fmul fast float %1084, %1059
  %1087 = fmul fast float %1082, %1084
  %1088 = fmul fast float %1087, %70
  %1089 = fmul fast float %1087, %71
  %1090 = fmul fast float %1087, %72
  %1091 = fmul fast float %1085, %66
  %1092 = fmul fast float %1085, %67
  %1093 = fmul fast float %1085, %68
  %1094 = fadd fast float %1088, %1091
  %1095 = fadd fast float %1089, %1092
  %1096 = fadd fast float %1090, %1093
  %1097 = fmul fast float %1086, %101
  %1098 = fmul fast float %1086, %102
  %1099 = fmul fast float %1086, %103
  %1100 = fadd fast float %1094, %1097
  %1101 = fadd fast float %1095, %1098
  %1102 = fadd fast float %1096, %1099
  %1103 = call float @dx.op.dot3.f32(i32 55, float %1100, float %1101, float %1102, float %1100, float %1101, float %1102)  ; Dot3(ax,ay,az,bx,by,bz)
  %1104 = call float @dx.op.unary.f32(i32 25, float %1103)  ; Rsqrt(value)
  %1105 = fmul fast float %1100, %1104
  %1106 = fmul fast float %1101, %1104
  %1107 = fmul fast float %1102, %1104
  %1108 = call float @dx.op.unary.f32(i32 83, float %137)  ; DerivCoarseX(value)
  %1109 = call float @dx.op.unary.f32(i32 83, float %138)  ; DerivCoarseX(value)
  %1110 = call float @dx.op.unary.f32(i32 83, float %139)  ; DerivCoarseX(value)
  %1111 = call float @dx.op.unary.f32(i32 84, float %137)  ; DerivCoarseY(value)
  %1112 = call float @dx.op.unary.f32(i32 84, float %138)  ; DerivCoarseY(value)
  %1113 = call float @dx.op.unary.f32(i32 84, float %139)  ; DerivCoarseY(value)
  %1114 = fadd fast float %1108, %137
  %1115 = fadd fast float %1109, %138
  %1116 = fadd fast float %1110, %139
  %1117 = fadd fast float %1111, %137
  %1118 = fadd fast float %1112, %138
  %1119 = fadd fast float %1113, %139
  %1120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.CBufRet.f32 %1120, 1
  %1123 = extractvalue %dx.types.CBufRet.f32 %1120, 2
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 2
  %1126 = extractvalue %dx.types.CBufRet.f32 %1124, 3
  %1127 = fmul fast float %1121, %90
  %1128 = fmul fast float %1127, %1125
  %1129 = fmul fast float %1122, %91
  %1130 = fmul fast float %1129, %1126
  %1131 = fptoui float %1128 to i32
  %1132 = fptoui float %1130 to i32
  %1133 = fadd fast float %1121, -1.000000e+00
  %1134 = fadd fast float %1122, -1.000000e+00
  %1135 = fptoui float %1133 to i32
  %1136 = fptoui float %1134 to i32
  %1137 = call i32 @dx.op.binary.i32(i32 40, i32 %1131, i32 %1135)  ; UMin(a,b)
  %1138 = call i32 @dx.op.binary.i32(i32 40, i32 %1132, i32 %1136)  ; UMin(a,b)
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 2
  %1141 = extractvalue %dx.types.CBufRet.f32 %1139, 3
  %1142 = fmul fast float %1140, %81
  %1143 = fsub fast float %1142, %1141
  %1144 = fadd fast float %1123, -1.000000e+00
  %1145 = call float @dx.op.binary.f32(i32 36, float %1143, float %1144)  ; FMin(a,b)
  %1146 = fptoui float %1145 to i32
  %1147 = fptoui float %1121 to i32
  %1148 = fptoui float %1122 to i32
  %1149 = mul i32 %1146, %1148
  %1150 = add i32 %1149, %1138
  %1151 = mul i32 %1150, %1147
  %1152 = add i32 %1151, %1137
  %1153 = shl i32 %1152, 2
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = and i32 %1155, 1023
  %1157 = lshr i32 %1155, 10
  %1158 = icmp eq i32 %1156, 0
  br i1 %1158, label %1662, label %1159

; <label>:1159                                    ; preds = %1057
  %1160 = and i32 %1155, 1023
  br label %1161

; <label>:1161                                    ; preds = %1293, %1159
  %1162 = phi float [ %1294, %1293 ], [ 0.000000e+00, %1159 ]
  %1163 = phi float [ %1295, %1293 ], [ %1079, %1159 ]
  %1164 = phi float [ %1296, %1293 ], [ %1077, %1159 ]
  %1165 = phi float [ %1297, %1293 ], [ %1066, %1159 ]
  %1166 = phi float [ %1298, %1293 ], [ %1067, %1159 ]
  %1167 = phi float [ %1299, %1293 ], [ %1068, %1159 ]
  %1168 = phi float [ %1300, %1293 ], [ 0.000000e+00, %1159 ]
  %1169 = phi float [ %1301, %1293 ], [ 0.000000e+00, %1159 ]
  %1170 = phi float [ %1302, %1293 ], [ %1069, %1159 ]
  %1171 = phi float [ %1303, %1293 ], [ %1070, %1159 ]
  %1172 = phi float [ %1304, %1293 ], [ %1071, %1159 ]
  %1173 = phi float [ %1305, %1293 ], [ %1060, %1159 ]
  %1174 = phi float [ %1306, %1293 ], [ %1061, %1159 ]
  %1175 = phi float [ %1307, %1293 ], [ %1062, %1159 ]
  %1176 = phi float [ %1308, %1293 ], [ %1105, %1159 ]
  %1177 = phi float [ %1309, %1293 ], [ %1106, %1159 ]
  %1178 = phi float [ %1310, %1293 ], [ %1107, %1159 ]
  %1179 = phi float [ %1311, %1293 ], [ %1075, %1159 ]
  %1180 = phi float [ %1312, %1293 ], [ %1074, %1159 ]
  %1181 = phi float [ %1313, %1293 ], [ 0.000000e+00, %1159 ]
  %1182 = phi float [ %1314, %1293 ], [ %1072, %1159 ]
  %1183 = phi float [ %1315, %1293 ], [ %1063, %1159 ]
  %1184 = phi float [ %1316, %1293 ], [ %1064, %1159 ]
  %1185 = phi float [ %1317, %1293 ], [ %1065, %1159 ]
  %1186 = phi i32 [ %1243, %1293 ], [ 0, %1159 ]
  %1187 = add nuw nsw i32 %1186, %1157
  %1188 = shl i32 %1187, 2
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = shl i32 %1190, 8
  %1192 = or i32 %1191, 48
  %1193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.ResRet.f32 %1193, 1
  %1196 = extractvalue %dx.types.ResRet.f32 %1193, 2
  %1197 = extractvalue %dx.types.ResRet.f32 %1193, 3
  %1198 = or i32 %1191, 64
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = extractvalue %dx.types.ResRet.i32 %1199, 1
  %1202 = or i32 %1191, 80
  %1203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 2
  %1205 = extractvalue %dx.types.ResRet.f32 %1203, 3
  %1206 = or i32 %1191, 96
  %1207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1206, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.f32 %1207, 0
  %1209 = extractvalue %dx.types.ResRet.f32 %1207, 1
  %1210 = extractvalue %dx.types.ResRet.f32 %1207, 2
  %1211 = extractvalue %dx.types.ResRet.f32 %1207, 3
  %1212 = or i32 %1191, 112
  %1213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.f32 %1213, 2
  %1215 = or i32 %1191, 128
  %1216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.ResRet.f32 %1216, 1
  %1219 = extractvalue %dx.types.ResRet.f32 %1216, 2
  %1220 = extractvalue %dx.types.ResRet.f32 %1216, 3
  %1221 = or i32 %1191, 144
  %1222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.ResRet.f32 %1222, 1
  %1225 = extractvalue %dx.types.ResRet.f32 %1222, 2
  %1226 = extractvalue %dx.types.ResRet.f32 %1222, 3
  %1227 = or i32 %1191, 160
  %1228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.f32 %1228, 0
  %1230 = extractvalue %dx.types.ResRet.f32 %1228, 1
  %1231 = extractvalue %dx.types.ResRet.f32 %1228, 2
  %1232 = extractvalue %dx.types.ResRet.f32 %1228, 3
  %1233 = or i32 %1191, 192
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = or i32 %1191, 208
  %1237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  %1239 = or i32 %1191, 248
  %1240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.f32 %1240, 0
  %1242 = extractvalue %dx.types.ResRet.f32 %1240, 1
  %1243 = add nuw nsw i32 %1186, 1
  %1244 = bitcast float %1197 to i32
  %1245 = and i32 %1244, 2560
  %1246 = icmp eq i32 %1245, 0
  %1247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.ResRet.f32 %1247, 1
  %1250 = extractvalue %dx.types.ResRet.f32 %1247, 2
  %1251 = extractvalue %dx.types.ResRet.f32 %1247, 3
  %1252 = call float @dx.op.dot4.f32(i32 56, float %1248, float %1249, float %1250, float %1251, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1253 = or i32 %1191, 16
  %1254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = extractvalue %dx.types.ResRet.f32 %1254, 1
  %1257 = extractvalue %dx.types.ResRet.f32 %1254, 2
  %1258 = extractvalue %dx.types.ResRet.f32 %1254, 3
  %1259 = call float @dx.op.dot4.f32(i32 56, float %1255, float %1256, float %1257, float %1258, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1260 = or i32 %1191, 32
  %1261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.f32 %1261, 0
  %1263 = extractvalue %dx.types.ResRet.f32 %1261, 1
  %1264 = extractvalue %dx.types.ResRet.f32 %1261, 2
  %1265 = extractvalue %dx.types.ResRet.f32 %1261, 3
  %1266 = call float @dx.op.dot4.f32(i32 56, float %1262, float %1263, float %1264, float %1265, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1267 = call float @dx.op.unary.f32(i32 27, float %1252)  ; Round_ni(value)
  %1268 = call float @dx.op.unary.f32(i32 6, float %1267)  ; FAbs(value)
  %1269 = call float @dx.op.unary.f32(i32 27, float %1259)  ; Round_ni(value)
  %1270 = call float @dx.op.unary.f32(i32 6, float %1269)  ; FAbs(value)
  %1271 = call float @dx.op.unary.f32(i32 6, float %1266)  ; FAbs(value)
  %1272 = call float @dx.op.unary.f32(i32 27, float %1271)  ; Round_ni(value)
  %1273 = fadd fast float %1270, %1268
  %1274 = fadd fast float %1273, %1272
  %1275 = fcmp fast oeq float %1274, 0.000000e+00
  %1276 = call float @dx.op.dot4.f32(i32 56, float %1248, float %1249, float %1250, float %1251, float %1114, float %1115, float %1116, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1277 = call float @dx.op.dot4.f32(i32 56, float %1255, float %1256, float %1257, float %1258, float %1114, float %1115, float %1116, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1278 = call float @dx.op.dot4.f32(i32 56, float %1248, float %1249, float %1250, float %1251, float %1117, float %1118, float %1119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1279 = call float @dx.op.dot4.f32(i32 56, float %1255, float %1256, float %1257, float %1258, float %1117, float %1118, float %1119, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1280 = fsub fast float %1276, %1252
  %1281 = fsub fast float %1278, %1252
  %1282 = fsub fast float %1277, %1259
  %1283 = fsub fast float %1279, %1259
  %1284 = call float @dx.op.dot3.f32(i32 55, float %1194, float %1195, float %1196, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1285, 2
  %1287 = fadd fast float %1286, %1284
  %1288 = call float @dx.op.unary.f32(i32 7, float %1287)  ; Saturate(value)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1285, 0
  %1290 = fcmp fast ogt float %1288, %1289
  %1291 = and i1 %1275, %1290
  %1292 = and i1 %1246, %1291
  br i1 %1292, label %1319, label %1293

; <label>:1293                                    ; preds = %1648, %1400, %1319, %1161
  %1294 = phi float [ %1162, %1319 ], [ %1403, %1400 ], [ %1403, %1648 ], [ %1162, %1161 ]
  %1295 = phi float [ %1163, %1319 ], [ %1163, %1400 ], [ %1624, %1648 ], [ %1163, %1161 ]
  %1296 = phi float [ %1164, %1319 ], [ %1164, %1400 ], [ %1622, %1648 ], [ %1164, %1161 ]
  %1297 = phi float [ %1165, %1319 ], [ %1165, %1400 ], [ %1600, %1648 ], [ %1165, %1161 ]
  %1298 = phi float [ %1166, %1319 ], [ %1166, %1400 ], [ %1601, %1648 ], [ %1166, %1161 ]
  %1299 = phi float [ %1167, %1319 ], [ %1167, %1400 ], [ %1602, %1648 ], [ %1167, %1161 ]
  %1300 = phi float [ %1168, %1319 ], [ %1168, %1400 ], [ %1527, %1648 ], [ %1168, %1161 ]
  %1301 = phi float [ %1169, %1319 ], [ %1169, %1400 ], [ %1525, %1648 ], [ %1169, %1161 ]
  %1302 = phi float [ %1170, %1319 ], [ %1170, %1400 ], [ %1570, %1648 ], [ %1170, %1161 ]
  %1303 = phi float [ %1171, %1319 ], [ %1171, %1400 ], [ %1571, %1648 ], [ %1171, %1161 ]
  %1304 = phi float [ %1172, %1319 ], [ %1172, %1400 ], [ %1572, %1648 ], [ %1172, %1161 ]
  %1305 = phi float [ %1173, %1319 ], [ %1173, %1400 ], [ %1658, %1648 ], [ %1173, %1161 ]
  %1306 = phi float [ %1174, %1319 ], [ %1174, %1400 ], [ %1659, %1648 ], [ %1174, %1161 ]
  %1307 = phi float [ %1175, %1319 ], [ %1175, %1400 ], [ %1660, %1648 ], [ %1175, %1161 ]
  %1308 = phi float [ %1176, %1319 ], [ %1176, %1400 ], [ %1506, %1648 ], [ %1176, %1161 ]
  %1309 = phi float [ %1177, %1319 ], [ %1177, %1400 ], [ %1507, %1648 ], [ %1177, %1161 ]
  %1310 = phi float [ %1178, %1319 ], [ %1178, %1400 ], [ %1508, %1648 ], [ %1178, %1161 ]
  %1311 = phi float [ %1179, %1319 ], [ %1179, %1400 ], [ %1580, %1648 ], [ %1179, %1161 ]
  %1312 = phi float [ %1180, %1319 ], [ %1180, %1400 ], [ %1577, %1648 ], [ %1180, %1161 ]
  %1313 = phi float [ %1181, %1319 ], [ %1181, %1400 ], [ %1574, %1648 ], [ %1181, %1161 ]
  %1314 = phi float [ %1182, %1319 ], [ %1182, %1400 ], [ %1523, %1648 ], [ %1182, %1161 ]
  %1315 = phi float [ %1183, %1319 ], [ %1183, %1400 ], [ %1518, %1648 ], [ %1183, %1161 ]
  %1316 = phi float [ %1184, %1319 ], [ %1184, %1400 ], [ %1519, %1648 ], [ %1184, %1161 ]
  %1317 = phi float [ %1185, %1319 ], [ %1185, %1400 ], [ %1520, %1648 ], [ %1185, %1161 ]
  %1318 = icmp eq i32 %1243, %1160
  br i1 %1318, label %1661, label %1161

; <label>:1319                                    ; preds = %1161
  %1320 = extractvalue %dx.types.ResRet.f32 %1213, 3
  %1321 = extractvalue %dx.types.ResRet.f32 %1213, 1
  %1322 = extractvalue %dx.types.ResRet.f32 %1213, 0
  %1323 = extractvalue %dx.types.ResRet.f32 %1203, 1
  %1324 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1325 = extractvalue %dx.types.ResRet.i32 %1199, 3
  %1326 = extractvalue %dx.types.ResRet.i32 %1199, 2
  %1327 = add i32 %1325, 0
  %1328 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1327, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1329 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1330 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1328, %dx.types.Handle %1329, float %1252, float %1259, float undef, float undef, i32 0, i32 0, i32 undef, float %1280, float %1282, float undef, float %1281, float %1283, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1331 = extractvalue %dx.types.ResRet.f32 %1330, 0
  %1332 = fmul fast float %1331, %1324
  %1333 = fadd fast float %1332, %1323
  %1334 = call float @dx.op.unary.f32(i32 7, float %1333)  ; Saturate(value)
  %1335 = fmul fast float %1252, %1208
  %1336 = call float @dx.op.tertiary.f32(i32 46, float %1209, float %1259, float %1335)  ; FMad(a,b,c)
  %1337 = fadd fast float %1336, %1322
  %1338 = fmul fast float %1252, %1210
  %1339 = call float @dx.op.tertiary.f32(i32 46, float %1211, float %1259, float %1338)  ; FMad(a,b,c)
  %1340 = fadd fast float %1339, %1321
  %1341 = fmul fast float %1280, %1208
  %1342 = call float @dx.op.tertiary.f32(i32 46, float %1209, float %1282, float %1341)  ; FMad(a,b,c)
  %1343 = fmul fast float %1280, %1210
  %1344 = call float @dx.op.tertiary.f32(i32 46, float %1211, float %1282, float %1343)  ; FMad(a,b,c)
  %1345 = fmul fast float %1281, %1208
  %1346 = call float @dx.op.tertiary.f32(i32 46, float %1209, float %1283, float %1345)  ; FMad(a,b,c)
  %1347 = fmul fast float %1281, %1210
  %1348 = call float @dx.op.tertiary.f32(i32 46, float %1211, float %1283, float %1347)  ; FMad(a,b,c)
  %1349 = add i32 %1326, 0
  %1350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1349, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1351 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1350, %dx.types.Handle %1329, float %1337, float %1340, float undef, float undef, i32 0, i32 0, i32 undef, float %1342, float %1344, float undef, float %1346, float %1348, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1352 = extractvalue %dx.types.ResRet.f32 %1351, 0
  %1353 = and i32 %1244, 1024
  %1354 = icmp ne i32 %1353, 0
  %1355 = fcmp fast ogt float %1352, 0x3FE0101020000000
  %1356 = uitofp i1 %1355 to float
  %1357 = select i1 %1354, float %1356, float %1352
  %1358 = and i32 %1244, 8192
  %1359 = icmp ne i32 %1358, 0
  %1360 = select i1 %1359, float %1320, float 1.000000e+00
  %1361 = fmul fast float %1252, 2.000000e+00
  %1362 = fadd fast float %1361, -1.000000e+00
  %1363 = call float @dx.op.unary.f32(i32 6, float %1362)  ; FAbs(value)
  %1364 = fmul fast float %1363, %1241
  %1365 = fsub fast float %1364, %1241
  %1366 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1367 = fmul fast float %1259, 2.000000e+00
  %1368 = fadd fast float %1367, -1.000000e+00
  %1369 = call float @dx.op.unary.f32(i32 6, float %1368)  ; FAbs(value)
  %1370 = fmul fast float %1369, %1242
  %1371 = fsub fast float %1370, %1242
  %1372 = call float @dx.op.unary.f32(i32 7, float %1371)  ; Saturate(value)
  %1373 = fmul fast float %1271, %1204
  %1374 = fsub fast float %1373, %1204
  %1375 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  %1376 = fmul fast float %1334, %1360
  %1377 = fmul fast float %1376, %1331
  %1378 = fmul fast float %1377, %1366
  %1379 = fmul fast float %1378, %1357
  %1380 = fmul fast float %1379, %1372
  %1381 = fmul fast float %1380, %1375
  %1382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1383 = extractvalue %dx.types.CBufRet.f32 %1382, 1
  %1384 = extractvalue %dx.types.CBufRet.f32 %1382, 0
  %1385 = fsub fast float %1288, %1384
  %1386 = fmul fast float %1385, %1383
  %1387 = call float @dx.op.unary.f32(i32 7, float %1386)  ; Saturate(value)
  %1388 = fmul fast float %1381, %1205
  %1389 = fadd fast float %1381, %1205
  %1390 = fmul fast float %1389, %1214
  %1391 = fsub fast float %1390, %1214
  %1392 = call float @dx.op.unary.f32(i32 7, float %1391)  ; Saturate(value)
  %1393 = and i32 %1244, 128
  %1394 = icmp ne i32 %1393, 0
  %1395 = select i1 %1394, float %1392, float %1388
  %1396 = fmul fast float %1395, %1387
  %1397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1398 = extractvalue %dx.types.CBufRet.f32 %1397, 0
  %1399 = fcmp fast ugt float %1396, %1398
  br i1 %1399, label %1400, label %1293

; <label>:1400                                    ; preds = %1319
  %1401 = select i1 %1359, float %1396, float 0.000000e+00
  %1402 = fadd fast float %1401, %1162
  %1403 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  br i1 %1359, label %1293, label %1404

; <label>:1404                                    ; preds = %1400
  %1405 = and i32 %1244, 4
  %1406 = and i32 %1244, 8
  %1407 = add i32 %1200, 0
  %1408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1407, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1410 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1408, %dx.types.Handle %1409, float %1337, float %1340, float undef, float undef, i32 0, i32 0, i32 undef, float %1342, float %1344, float undef, float %1346, float %1348, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1411 = extractvalue %dx.types.ResRet.f32 %1410, 0
  %1412 = extractvalue %dx.types.ResRet.f32 %1410, 1
  %1413 = extractvalue %dx.types.ResRet.f32 %1410, 2
  %1414 = extractvalue %dx.types.ResRet.f32 %1410, 3
  %1415 = bitcast float %1226 to i32
  %1416 = and i32 %1415, 255
  %1417 = uitofp i32 %1416 to float
  %1418 = lshr i32 %1415, 8
  %1419 = and i32 %1418, 255
  %1420 = uitofp i32 %1419 to float
  %1421 = fmul fast float %1414, %1417
  %1422 = fadd fast float %1421, %1420
  %1423 = fmul fast float %1422, 0x3F70101000000000
  %1424 = add i32 %1201, 0
  %1425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1424, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1426 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1425, %dx.types.Handle %1409, float %1337, float %1340, float undef, float undef, i32 0, i32 0, i32 undef, float %1342, float %1344, float undef, float %1346, float %1348, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1427 = extractvalue %dx.types.ResRet.f32 %1426, 0
  %1428 = extractvalue %dx.types.ResRet.f32 %1426, 1
  %1429 = extractvalue %dx.types.ResRet.f32 %1426, 2
  %1430 = extractvalue %dx.types.ResRet.f32 %1426, 3
  %1431 = bitcast float %1220 to i32
  %1432 = and i32 %1431, 255
  %1433 = uitofp i32 %1432 to float
  %1434 = lshr i32 %1431, 8
  %1435 = and i32 %1434, 255
  %1436 = uitofp i32 %1435 to float
  %1437 = lshr i32 %1431, 16
  %1438 = and i32 %1437, 255
  %1439 = uitofp i32 %1438 to float
  %1440 = fmul fast float %1439, 0x3F70101000000000
  %1441 = fmul fast float %1427, %1433
  %1442 = fadd fast float %1441, %1436
  %1443 = fmul fast float %1442, 0x3F70101000000000
  %1444 = fadd fast float %1428, -5.000000e-01
  %1445 = fadd fast float %1430, -5.000000e-01
  %1446 = fmul fast float %1444, %1440
  %1447 = fmul fast float %1445, %1440
  %1448 = fadd fast float %1446, 5.000000e-01
  %1449 = fadd fast float %1447, 5.000000e-01
  %1450 = fmul fast float %1411, %1229
  %1451 = fmul fast float %1412, %1230
  %1452 = fmul fast float %1413, %1231
  %1453 = fmul fast float %1448, 2.000000e+00
  %1454 = fadd fast float %1453, -1.000000e+00
  %1455 = fmul fast float %1449, 2.000000e+00
  %1456 = fadd fast float %1455, -1.000000e+00
  %1457 = fadd fast float %1454, %1456
  %1458 = fmul fast float %1457, 5.000000e-01
  %1459 = fsub fast float %1454, %1456
  %1460 = fmul fast float %1459, 5.000000e-01
  %1461 = call float @dx.op.unary.f32(i32 6, float %1458)  ; FAbs(value)
  %1462 = fsub fast float 1.000000e+00, %1461
  %1463 = call float @dx.op.unary.f32(i32 6, float %1460)  ; FAbs(value)
  %1464 = fsub fast float %1462, %1463
  %1465 = call float @dx.op.dot3.f32(i32 55, float %1458, float %1460, float %1464, float %1458, float %1460, float %1464)  ; Dot3(ax,ay,az,bx,by,bz)
  %1466 = call float @dx.op.unary.f32(i32 25, float %1465)  ; Rsqrt(value)
  %1467 = fmul fast float %1458, %1466
  %1468 = fmul fast float %1460, %1466
  %1469 = fmul fast float %1466, %1464
  %1470 = fmul fast float %1469, %1194
  %1471 = fmul fast float %1469, %1195
  %1472 = fmul fast float %1469, %1196
  %1473 = fmul fast float %1467, %1217
  %1474 = fmul fast float %1467, %1218
  %1475 = fmul fast float %1467, %1219
  %1476 = fadd fast float %1473, %1470
  %1477 = fadd fast float %1474, %1471
  %1478 = fadd fast float %1475, %1472
  %1479 = fmul fast float %1468, %1223
  %1480 = fmul fast float %1468, %1224
  %1481 = fmul fast float %1468, %1225
  %1482 = fadd fast float %1476, %1479
  %1483 = fadd fast float %1477, %1480
  %1484 = fadd fast float %1478, %1481
  %1485 = call float @dx.op.dot3.f32(i32 55, float %1482, float %1483, float %1484, float %1482, float %1483, float %1484)  ; Dot3(ax,ay,az,bx,by,bz)
  %1486 = call float @dx.op.unary.f32(i32 25, float %1485)  ; Rsqrt(value)
  %1487 = fmul fast float %1482, %1486
  %1488 = fmul fast float %1483, %1486
  %1489 = fmul fast float %1484, %1486
  %1490 = icmp ne i32 %1406, 0
  %1491 = select i1 %1490, float 1.000000e+00, float 0.000000e+00
  %1492 = fmul fast float %1396, %1491
  %1493 = and i32 %1244, 1
  %1494 = icmp eq i32 %1493, 0
  br i1 %1494, label %1495, label %1499

; <label>:1495                                    ; preds = %1404
  %1496 = fsub fast float %1487, %1176
  %1497 = fsub fast float %1488, %1177
  %1498 = fsub fast float %1489, %1178
  br label %1499

; <label>:1499                                    ; preds = %1495, %1404
  %1500 = phi float [ %1496, %1495 ], [ %1487, %1404 ]
  %1501 = phi float [ %1497, %1495 ], [ %1488, %1404 ]
  %1502 = phi float [ %1498, %1495 ], [ %1489, %1404 ]
  %1503 = fmul float %1502, %1492
  %1504 = fmul float %1501, %1492
  %1505 = fmul float %1500, %1492
  %1506 = fadd fast float %1505, %1176
  %1507 = fadd fast float %1504, %1177
  %1508 = fadd fast float %1503, %1178
  %1509 = icmp ne i32 %1405, 0
  %1510 = select i1 %1509, float 1.000000e+00, float 0.000000e+00
  %1511 = fmul fast float %1396, %1510
  %1512 = fsub fast float %1450, %1183
  %1513 = fsub fast float %1451, %1184
  %1514 = fsub fast float %1452, %1185
  %1515 = fmul fast float %1512, %1511
  %1516 = fmul fast float %1513, %1511
  %1517 = fmul fast float %1514, %1511
  %1518 = fadd fast float %1515, %1183
  %1519 = fadd fast float %1516, %1184
  %1520 = fadd fast float %1517, %1185
  %1521 = fsub fast float %1423, %1182
  %1522 = fmul fast float %1521, %1511
  %1523 = fadd fast float %1522, %1182
  %1524 = fmul fast float %1511, %1169
  %1525 = fsub fast float %1169, %1524
  %1526 = fmul fast float %1511, %1168
  %1527 = fsub fast float %1168, %1526
  %1528 = bitcast float %1238 to i32
  %1529 = lshr i32 %1528, 16
  %1530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1529)  ; LegacyF16ToF32(value)
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 1
  %1534 = icmp eq i32 %1533, 0
  br i1 %1534, label %1535, label %1560

; <label>:1535                                    ; preds = %1499
  %1536 = fadd fast float %1423, 0xBFB99999A0000000
  %1537 = call float @dx.op.unary.f32(i32 7, float %1536)  ; Saturate(value)
  %1538 = fmul fast float %1537, 0x3FF1C71C80000000
  %1539 = fsub fast float 1.000000e+00, %1538
  %1540 = call float @dx.op.unary.f32(i32 7, float %1539)  ; Saturate(value)
  %1541 = fmul fast float %1540, %1450
  %1542 = fmul fast float %1540, %1451
  %1543 = fmul fast float %1540, %1452
  %1544 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  %1545 = call float @dx.op.unary.f32(i32 7, float %1542)  ; Saturate(value)
  %1546 = call float @dx.op.unary.f32(i32 7, float %1543)  ; Saturate(value)
  %1547 = call float @dx.op.binary.f32(i32 35, float %1545, float %1546)  ; FMax(a,b)
  %1548 = call float @dx.op.binary.f32(i32 35, float %1544, float %1547)  ; FMax(a,b)
  %1549 = fcmp fast ogt float %1548, 0.000000e+00
  %1550 = bitcast float %1548 to i32
  %1551 = sub nsw i32 2129859010, %1550
  %1552 = bitcast i32 %1551 to float
  %1553 = select i1 %1549, float %1552, float 0.000000e+00
  %1554 = fmul fast float %1544, %1530
  %1555 = fmul fast float %1545, %1530
  %1556 = fmul fast float %1546, %1530
  %1557 = fmul fast float %1554, %1553
  %1558 = fmul fast float %1555, %1553
  %1559 = fmul fast float %1556, %1553
  br label %1560

; <label>:1560                                    ; preds = %1535, %1499
  %1561 = phi float [ %1530, %1499 ], [ %1557, %1535 ]
  %1562 = phi float [ %1530, %1499 ], [ %1558, %1535 ]
  %1563 = phi float [ %1530, %1499 ], [ %1559, %1535 ]
  %1564 = fsub fast float %1561, %1170
  %1565 = fsub fast float %1562, %1171
  %1566 = fsub fast float %1563, %1172
  %1567 = fmul fast float %1564, %1511
  %1568 = fmul fast float %1565, %1511
  %1569 = fmul fast float %1566, %1511
  %1570 = fadd fast float %1567, %1170
  %1571 = fadd fast float %1568, %1171
  %1572 = fadd fast float %1569, %1172
  %1573 = fadd fast float %1396, %1181
  %1574 = call float @dx.op.unary.f32(i32 7, float %1573)  ; Saturate(value)
  %1575 = fsub fast float %1443, %1180
  %1576 = fmul fast float %1575, %1492
  %1577 = fadd fast float %1576, %1180
  %1578 = fsub fast float %1429, %1179
  %1579 = fmul fast float %1578, %1492
  %1580 = fadd fast float %1579, %1179
  br i1 %1494, label %1589, label %1581

; <label>:1581                                    ; preds = %1560
  %1582 = and i32 %1244, 32768
  %1583 = icmp eq i32 %1582, 0
  br i1 %1583, label %1599, label %1584

; <label>:1584                                    ; preds = %1581
  %1585 = fmul fast float %1492, 1.270000e+02
  %1586 = fadd fast float %1585, %1165
  %1587 = fadd fast float %1585, %1166
  %1588 = fadd fast float %1585, %1167
  br label %1599

; <label>:1589                                    ; preds = %1560
  %1590 = fsub fast float 1.270000e+02, %1165
  %1591 = fsub fast float 1.270000e+02, %1166
  %1592 = fsub fast float 1.270000e+02, %1167
  %1593 = fmul fast float %1492, %1590
  %1594 = fmul fast float %1492, %1591
  %1595 = fmul fast float %1492, %1592
  %1596 = fadd fast float %1593, %1165
  %1597 = fadd fast float %1594, %1166
  %1598 = fadd fast float %1595, %1167
  br label %1599

; <label>:1599                                    ; preds = %1589, %1584, %1581
  %1600 = phi float [ %1586, %1584 ], [ %1165, %1581 ], [ %1596, %1589 ]
  %1601 = phi float [ %1587, %1584 ], [ %1166, %1581 ], [ %1597, %1589 ]
  %1602 = phi float [ %1588, %1584 ], [ %1167, %1581 ], [ %1598, %1589 ]
  %1603 = call float @dx.op.dot3.f32(i32 55, float %1450, float %1451, float %1452, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1605 = extractvalue %dx.types.CBufRet.f32 %1604, 0
  %1606 = extractvalue %dx.types.CBufRet.f32 %1604, 1
  %1607 = fmul fast float %1606, %1603
  %1608 = fadd fast float %1607, %1605
  %1609 = call float @dx.op.unary.f32(i32 7, float %1608)  ; Saturate(value)
  %1610 = bitcast float %1232 to i32
  %1611 = and i32 %1610, 65535
  %1612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1611)  ; LegacyF16ToF32(value)
  %1613 = lshr i32 %1610, 16
  %1614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1613)  ; LegacyF16ToF32(value)
  %1615 = fcmp fast oge float %1612, 0.000000e+00
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 0
  %1618 = select i1 %1615, float %1612, float %1617
  %1619 = fadd fast float %1618, %1614
  %1620 = fsub fast float %1609, %1164
  %1621 = fmul fast float %1620, %1396
  %1622 = fadd fast float %1621, %1164
  %1623 = fmul fast float %1619, %1396
  %1624 = call float @dx.op.binary.f32(i32 35, float %1163, float %1623)  ; FMax(a,b)
  %1625 = and i32 %1244, 16
  %1626 = icmp eq i32 %1625, 0
  br i1 %1626, label %1648, label %1627

; <label>:1627                                    ; preds = %1599
  %1628 = add i32 %1235, 0
  %1629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1628, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1630 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1629, %dx.types.Handle %1409, float %1337, float %1340, float undef, float undef, i32 0, i32 0, i32 undef, float %1342, float %1344, float undef, float %1346, float %1348, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1631 = extractvalue %dx.types.ResRet.f32 %1630, 0
  %1632 = extractvalue %dx.types.ResRet.f32 %1630, 1
  %1633 = extractvalue %dx.types.ResRet.f32 %1630, 2
  %1634 = and i32 %1528, 65535
  %1635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1634)  ; LegacyF16ToF32(value)
  %1636 = fmul fast float %1631, %1229
  %1637 = fmul fast float %1632, %1230
  %1638 = fmul fast float %1633, %1231
  %1639 = and i32 %1244, 16384
  %1640 = icmp ne i32 %1639, 0
  %1641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1641, 0
  %1643 = select i1 %1640, float %1642, float 1.000000e+00
  %1644 = fmul fast float %1643, %1635
  %1645 = fmul fast float %1636, %1644
  %1646 = fmul fast float %1637, %1644
  %1647 = fmul fast float %1638, %1644
  br label %1648

; <label>:1648                                    ; preds = %1627, %1599
  %1649 = phi float [ %1645, %1627 ], [ 0.000000e+00, %1599 ]
  %1650 = phi float [ %1646, %1627 ], [ 0.000000e+00, %1599 ]
  %1651 = phi float [ %1647, %1627 ], [ 0.000000e+00, %1599 ]
  %1652 = fsub fast float %1649, %1173
  %1653 = fsub fast float %1650, %1174
  %1654 = fsub fast float %1651, %1175
  %1655 = fmul fast float %1652, %1396
  %1656 = fmul fast float %1653, %1396
  %1657 = fmul fast float %1654, %1396
  %1658 = fadd fast float %1655, %1173
  %1659 = fadd fast float %1656, %1174
  %1660 = fadd fast float %1657, %1175
  br label %1293

; <label>:1661                                    ; preds = %1293
  br label %1662

; <label>:1662                                    ; preds = %1661, %1057
  %1663 = phi float [ 0.000000e+00, %1057 ], [ %1294, %1661 ]
  %1664 = phi float [ %1079, %1057 ], [ %1295, %1661 ]
  %1665 = phi float [ %1077, %1057 ], [ %1296, %1661 ]
  %1666 = phi float [ %1066, %1057 ], [ %1297, %1661 ]
  %1667 = phi float [ %1067, %1057 ], [ %1298, %1661 ]
  %1668 = phi float [ %1068, %1057 ], [ %1299, %1661 ]
  %1669 = phi float [ 0.000000e+00, %1057 ], [ %1300, %1661 ]
  %1670 = phi float [ 0.000000e+00, %1057 ], [ %1301, %1661 ]
  %1671 = phi float [ %1069, %1057 ], [ %1302, %1661 ]
  %1672 = phi float [ %1070, %1057 ], [ %1303, %1661 ]
  %1673 = phi float [ %1071, %1057 ], [ %1304, %1661 ]
  %1674 = phi float [ %1060, %1057 ], [ %1305, %1661 ]
  %1675 = phi float [ %1061, %1057 ], [ %1306, %1661 ]
  %1676 = phi float [ %1062, %1057 ], [ %1307, %1661 ]
  %1677 = phi float [ %1105, %1057 ], [ %1308, %1661 ]
  %1678 = phi float [ %1106, %1057 ], [ %1309, %1661 ]
  %1679 = phi float [ %1107, %1057 ], [ %1310, %1661 ]
  %1680 = phi float [ %1075, %1057 ], [ %1311, %1661 ]
  %1681 = phi float [ %1074, %1057 ], [ %1312, %1661 ]
  %1682 = phi float [ 0.000000e+00, %1057 ], [ %1313, %1661 ]
  %1683 = phi float [ %1072, %1057 ], [ %1314, %1661 ]
  %1684 = phi float [ %1063, %1057 ], [ %1315, %1661 ]
  %1685 = phi float [ %1064, %1057 ], [ %1316, %1661 ]
  %1686 = phi float [ %1065, %1057 ], [ %1317, %1661 ]
  %1687 = call float @dx.op.dot3.f32(i32 55, float %1677, float %1678, float %1679, float %1677, float %1678, float %1679)  ; Dot3(ax,ay,az,bx,by,bz)
  %1688 = call float @dx.op.unary.f32(i32 25, float %1687)  ; Rsqrt(value)
  %1689 = fmul fast float %1688, %1677
  %1690 = fmul fast float %1688, %1678
  %1691 = fmul fast float %1688, %1679
  %1692 = fadd fast float %1682, %1073
  %1693 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  %1694 = call float @dx.op.dot3.f32(i32 55, float %1689, float %1690, float %1691, float %1689, float %1690, float %1691)  ; Dot3(ax,ay,az,bx,by,bz)
  %1695 = call float @dx.op.unary.f32(i32 25, float %1694)  ; Rsqrt(value)
  %1696 = fmul fast float %1695, %1689
  %1697 = fmul fast float %1695, %1690
  %1698 = fmul fast float %1695, %1691
  %1699 = fadd fast float %1683, 0xBFB99999A0000000
  %1700 = call float @dx.op.unary.f32(i32 7, float %1699)  ; Saturate(value)
  %1701 = fmul fast float %1700, 0x3FF1C71C80000000
  %1702 = call float @dx.op.binary.f32(i32 36, float %1683, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1703 = fsub fast float 1.000000e+00, %1701
  %1704 = call float @dx.op.unary.f32(i32 7, float %1703)  ; Saturate(value)
  %1705 = fmul fast float %1704, %1684
  %1706 = fmul fast float %1704, %1685
  %1707 = fmul fast float %1704, %1686
  %1708 = call float @dx.op.unary.f32(i32 7, float %1705)  ; Saturate(value)
  %1709 = call float @dx.op.unary.f32(i32 7, float %1706)  ; Saturate(value)
  %1710 = call float @dx.op.unary.f32(i32 7, float %1707)  ; Saturate(value)
  %1711 = fmul fast float %1701, %1684
  %1712 = fmul fast float %1701, %1685
  %1713 = fmul fast float %1701, %1686
  %1714 = fadd fast float %1711, %1702
  %1715 = fadd fast float %1712, %1702
  %1716 = fadd fast float %1713, %1702
  %1717 = call float @dx.op.unary.f32(i32 7, float %1714)  ; Saturate(value)
  %1718 = call float @dx.op.unary.f32(i32 7, float %1715)  ; Saturate(value)
  %1719 = call float @dx.op.unary.f32(i32 7, float %1716)  ; Saturate(value)
  %1720 = call float @dx.op.unary.f32(i32 7, float %1681)  ; Saturate(value)
  %1721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1722 = extractvalue %dx.types.ResRet.i32 %1721, 0
  %1723 = and i32 %1722, 1
  %1724 = icmp eq i32 %1723, 0
  br i1 %1724, label %1739, label %1725

; <label>:1725                                    ; preds = %1662
  %1726 = call float @dx.op.binary.f32(i32 35, float %1709, float %1710)  ; FMax(a,b)
  %1727 = call float @dx.op.binary.f32(i32 35, float %1708, float %1726)  ; FMax(a,b)
  %1728 = fcmp fast ogt float %1727, 0.000000e+00
  %1729 = bitcast float %1727 to i32
  %1730 = sub nsw i32 2129859010, %1729
  %1731 = bitcast i32 %1730 to float
  %1732 = select i1 %1728, float %1731, float 0.000000e+00
  %1733 = fmul fast float %1708, %1671
  %1734 = fmul fast float %1709, %1672
  %1735 = fmul fast float %1710, %1673
  %1736 = fmul fast float %1733, %1732
  %1737 = fmul fast float %1734, %1732
  %1738 = fmul fast float %1735, %1732
  br label %1739

; <label>:1739                                    ; preds = %1725, %1662
  %1740 = phi float [ %1736, %1725 ], [ %1671, %1662 ]
  %1741 = phi float [ %1737, %1725 ], [ %1672, %1662 ]
  %1742 = phi float [ %1738, %1725 ], [ %1673, %1662 ]
  %1743 = call float @dx.op.binary.f32(i32 36, float %1666, float 1.270000e+02)  ; FMin(a,b)
  %1744 = call float @dx.op.binary.f32(i32 36, float %1667, float 1.270000e+02)  ; FMin(a,b)
  %1745 = call float @dx.op.binary.f32(i32 36, float %1668, float 1.270000e+02)  ; FMin(a,b)
  %1746 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1747 = extractvalue %dx.types.CBufRet.i32 %1746, 3
  %1748 = and i32 %1747, 8
  %1749 = icmp ne i32 %1748, 0
  %1750 = call float @dx.op.binary.f32(i32 35, float %1708, float %1684)  ; FMax(a,b)
  %1751 = call float @dx.op.binary.f32(i32 35, float %1709, float %1684)  ; FMax(a,b)
  %1752 = call float @dx.op.binary.f32(i32 35, float %1710, float %1684)  ; FMax(a,b)
  %1753 = call float @dx.op.dot3.f32(i32 55, float %1708, float %1709, float %1710, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1754 = select i1 %228, float %1684, float %1708
  %1755 = select i1 %228, float %1753, float %1709
  %1756 = select i1 %228, float 1.000000e+00, float %1710
  %1757 = select i1 %1749, float %1750, float %1754
  %1758 = select i1 %1749, float %1751, float %1755
  %1759 = select i1 %1749, float %1752, float %1756
  %1760 = call float @dx.op.dot3.f32(i32 55, float %1740, float %1741, float %1742, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1761 = select i1 %228, float %1760, float %1740
  %1762 = select i1 %228, float %1760, float %1741
  %1763 = select i1 %228, float %1760, float %1742
  %1764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1765 = extractvalue %dx.types.CBufRet.f32 %1764, 0
  %1766 = extractvalue %dx.types.CBufRet.f32 %1764, 1
  %1767 = extractvalue %dx.types.CBufRet.f32 %1764, 2
  %1768 = fadd fast float %1765, %137
  %1769 = fadd fast float %1766, %138
  %1770 = fadd fast float %1767, %139
  %1771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.f32 %1771, 0
  %1773 = extractvalue %dx.types.CBufRet.f32 %1771, 1
  %1774 = fsub fast float %1768, %1772
  %1775 = fsub fast float %1769, %1773
  %1776 = fmul fast float %1774, %1774
  %1777 = fmul fast float %1775, %1775
  %1778 = fadd fast float %1776, %1777
  %1779 = call float @dx.op.unary.f32(i32 24, float %1778)  ; Sqrt(value)
  %1780 = extractvalue %dx.types.CBufRet.f32 %1771, 2
  %1781 = fcmp fast olt float %1779, %1780
  br i1 %1781, label %1782, label %1849

; <label>:1782                                    ; preds = %1739
  %1783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1784 = extractvalue %dx.types.CBufRet.f32 %1783, 0
  %1785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1785, 0
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 0
  %1789 = extractvalue %dx.types.CBufRet.f32 %1783, 1
  %1790 = extractvalue %dx.types.CBufRet.f32 %1785, 1
  %1791 = extractvalue %dx.types.CBufRet.f32 %1787, 1
  %1792 = extractvalue %dx.types.CBufRet.f32 %1783, 3
  %1793 = extractvalue %dx.types.CBufRet.f32 %1785, 3
  %1794 = extractvalue %dx.types.CBufRet.f32 %1787, 3
  %1795 = fadd fast float %1792, %1768
  %1796 = fadd fast float %1793, %1769
  %1797 = fadd fast float %1794, %1770
  %1798 = fmul fast float %1795, %1784
  %1799 = call float @dx.op.tertiary.f32(i32 46, float %1796, float %1786, float %1798)  ; FMad(a,b,c)
  %1800 = call float @dx.op.tertiary.f32(i32 46, float %1797, float %1788, float %1799)  ; FMad(a,b,c)
  %1801 = fmul fast float %1795, %1789
  %1802 = call float @dx.op.tertiary.f32(i32 46, float %1796, float %1790, float %1801)  ; FMad(a,b,c)
  %1803 = call float @dx.op.tertiary.f32(i32 46, float %1797, float %1791, float %1802)  ; FMad(a,b,c)
  %1804 = fsub fast float %1800, %1792
  %1805 = fsub fast float %1803, %1793
  %1806 = fsub fast float %1804, %1772
  %1807 = fadd fast float %1806, %1780
  %1808 = fsub fast float %1805, %1773
  %1809 = fadd fast float %1808, %1780
  %1810 = extractvalue %dx.types.CBufRet.f32 %1771, 3
  %1811 = fmul fast float %1807, %1810
  %1812 = fmul fast float %1809, %1810
  %1813 = call float @dx.op.unary.f32(i32 7, float %1811)  ; Saturate(value)
  %1814 = call float @dx.op.unary.f32(i32 7, float %1812)  ; Saturate(value)
  %1815 = fsub fast float 1.000000e+00, %1813
  %1816 = fsub fast float 1.000000e+00, %1814
  %1817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %58, float %1815, float %1816, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1818 = extractvalue %dx.types.ResRet.f32 %1817, 0
  %1819 = fcmp fast ugt float %1818, 0.000000e+00
  br i1 %1819, label %1820, label %2123

; <label>:1820                                    ; preds = %1782
  %1821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1822 = extractvalue %dx.types.CBufRet.f32 %1821, 2
  %1823 = fmul fast float %1822, %1818
  %1824 = extractvalue %dx.types.CBufRet.f32 %1821, 3
  %1825 = fadd fast float %1824, %1823
  %1826 = extractvalue %dx.types.CBufRet.f32 %1787, 2
  %1827 = fadd fast float %1825, %1794
  %1828 = fmul fast float %1800, %1788
  %1829 = call float @dx.op.tertiary.f32(i32 46, float %1803, float %1791, float %1828)  ; FMad(a,b,c)
  %1830 = call float @dx.op.tertiary.f32(i32 46, float %1827, float %1826, float %1829)  ; FMad(a,b,c)
  %1831 = fsub fast float %1830, %1794
  %1832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1833 = extractvalue %dx.types.CBufRet.f32 %1832, 2
  %1834 = fsub fast float %1831, %1833
  %1835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %58, float %1815, float %1816, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1836 = extractvalue %dx.types.ResRet.f32 %1835, 0
  %1837 = extractvalue %dx.types.ResRet.f32 %1835, 1
  %1838 = extractvalue %dx.types.ResRet.f32 %1835, 2
  %1839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %58, float %1815, float %1816, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1840 = extractvalue %dx.types.ResRet.f32 %1839, 0
  %1841 = extractvalue %dx.types.ResRet.f32 %1839, 1
  %1842 = extractvalue %dx.types.ResRet.f32 %1839, 2
  %1843 = fadd fast float %1840, %1836
  %1844 = fmul fast float %1843, 0x3F847AE140000000
  %1845 = fadd fast float %1841, %1837
  %1846 = fmul fast float %1845, 0x3F847AE140000000
  %1847 = fadd fast float %1842, %1838
  %1848 = fmul fast float %1847, 0x3F847AE140000000
  br label %2123

; <label>:1849                                    ; preds = %1739
  %1850 = and i32 %204, 1
  %1851 = icmp eq i32 %1850, 0
  br i1 %1851, label %2123, label %1852

; <label>:1852                                    ; preds = %1849
  %1853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.f32 %1853, 0
  %1855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1856 = extractvalue %dx.types.CBufRet.f32 %1855, 0
  %1857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1858 = extractvalue %dx.types.CBufRet.f32 %1857, 0
  %1859 = extractvalue %dx.types.CBufRet.f32 %1853, 1
  %1860 = extractvalue %dx.types.CBufRet.f32 %1855, 1
  %1861 = extractvalue %dx.types.CBufRet.f32 %1857, 1
  %1862 = extractvalue %dx.types.CBufRet.f32 %1853, 3
  %1863 = extractvalue %dx.types.CBufRet.f32 %1855, 3
  %1864 = extractvalue %dx.types.CBufRet.f32 %1857, 3
  %1865 = fadd fast float %1862, %1768
  %1866 = fadd fast float %1863, %1769
  %1867 = fadd fast float %1864, %1770
  %1868 = fmul fast float %1865, %1854
  %1869 = call float @dx.op.tertiary.f32(i32 46, float %1866, float %1856, float %1868)  ; FMad(a,b,c)
  %1870 = call float @dx.op.tertiary.f32(i32 46, float %1867, float %1858, float %1869)  ; FMad(a,b,c)
  %1871 = fmul fast float %1865, %1859
  %1872 = call float @dx.op.tertiary.f32(i32 46, float %1866, float %1860, float %1871)  ; FMad(a,b,c)
  %1873 = call float @dx.op.tertiary.f32(i32 46, float %1867, float %1861, float %1872)  ; FMad(a,b,c)
  %1874 = fsub fast float %1870, %1862
  %1875 = fsub fast float %1873, %1863
  %1876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1877 = extractvalue %dx.types.CBufRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.CBufRet.f32 %1876, 1
  %1879 = extractvalue %dx.types.CBufRet.f32 %1876, 2
  %1880 = extractvalue %dx.types.CBufRet.f32 %1876, 3
  %1881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1882 = extractvalue %dx.types.CBufRet.f32 %1881, 3
  %1883 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.i32 %1883, 0
  %1885 = extractvalue %dx.types.CBufRet.i32 %1883, 1
  %1886 = udiv i32 %1885, %1884
  %1887 = fsub fast float %1874, %1877
  %1888 = fsub fast float %1875, %1878
  %1889 = call float @dx.op.binary.f32(i32 35, float %1887, float 0.000000e+00)  ; FMax(a,b)
  %1890 = call float @dx.op.binary.f32(i32 35, float %1888, float 0.000000e+00)  ; FMax(a,b)
  %1891 = call float @dx.op.binary.f32(i32 36, float %1889, float %1879)  ; FMin(a,b)
  %1892 = call float @dx.op.binary.f32(i32 36, float %1890, float %1880)  ; FMin(a,b)
  %1893 = add i32 %1884, -1
  %1894 = add i32 %1886, -1
  %1895 = fmul fast float %1891, %1882
  %1896 = fmul fast float %1892, %1882
  %1897 = fptoui float %1895 to i32
  %1898 = fptoui float %1896 to i32
  %1899 = call i32 @dx.op.binary.i32(i32 40, i32 %1897, i32 %1893)  ; UMin(a,b)
  %1900 = call i32 @dx.op.binary.i32(i32 40, i32 %1898, i32 %1894)  ; UMin(a,b)
  %1901 = mul i32 %1900, %1884
  %1902 = add i32 %1901, %1899
  %1903 = shl i32 %1902, 2
  %1904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.i32 %1904, 0
  %1906 = icmp eq i32 %1905, -1
  br i1 %1906, label %2123, label %1907

; <label>:1907                                    ; preds = %1852
  %1908 = mul i32 %1905, 148
  %1909 = add i32 %1908, 4
  %1910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.f32 %1910, 0
  %1912 = add i32 %1908, 8
  %1913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.f32 %1913, 0
  %1915 = add i32 %1908, 36
  %1916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.f32 %1916, 0
  %1918 = add i32 %1908, 60
  %1919 = add i32 %1908, 92
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = add i32 %1908, 116
  %1923 = fsub fast float %1874, %1911
  %1924 = fsub fast float %1875, %1914
  %1925 = fmul fast float %1882, %1923
  %1926 = fmul fast float %1882, %1924
  %1927 = call float @dx.op.unary.f32(i32 7, float %1925)  ; Saturate(value)
  %1928 = call float @dx.op.unary.f32(i32 7, float %1926)  ; Saturate(value)
  %1929 = fsub fast float 1.000000e+00, %1928
  %1930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1931 = extractvalue %dx.types.CBufRet.f32 %1930, 2
  %1932 = call float @dx.op.unary.f32(i32 83, float %1927)  ; DerivCoarseX(value)
  %1933 = call float @dx.op.unary.f32(i32 83, float %1929)  ; DerivCoarseX(value)
  %1934 = call float @dx.op.unary.f32(i32 84, float %1927)  ; DerivCoarseY(value)
  %1935 = call float @dx.op.unary.f32(i32 84, float %1929)  ; DerivCoarseY(value)
  %1936 = fmul fast float %1932, %1931
  %1937 = fmul fast float %1933, %1931
  %1938 = fmul fast float %1934, %1931
  %1939 = fmul fast float %1935, %1931
  %1940 = call float @dx.op.dot2.f32(i32 54, float %1938, float %1939, float %1938, float %1939)  ; Dot2(ax,ay,bx,by)
  %1941 = call float @dx.op.dot2.f32(i32 54, float %1936, float %1937, float %1936, float %1937)  ; Dot2(ax,ay,bx,by)
  %1942 = call float @dx.op.binary.f32(i32 35, float %1941, float %1940)  ; FMax(a,b)
  %1943 = call float @dx.op.unary.f32(i32 23, float %1942)  ; Log(value)
  %1944 = fmul fast float %1943, 5.000000e-01
  %1945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1946 = extractvalue %dx.types.CBufRet.f32 %1945, 1
  %1947 = fadd fast float %1946, %1944
  %1948 = call float @dx.op.binary.f32(i32 35, float %1947, float 0.000000e+00)  ; FMax(a,b)
  %1949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1950 = extractvalue %dx.types.CBufRet.f32 %1949, 3
  %1951 = fadd fast float %1950, %1948
  %1952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1953 = extractvalue %dx.types.CBufRet.f32 %1952, 3
  %1954 = fadd fast float %1951, %1953
  %1955 = add i32 %1921, 0
  %1956 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1955, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1957 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1956, i32 0)  ; GetDimensions(handle,mipLevel)
  %1958 = extractvalue %dx.types.Dimensions %1957, 0
  %1959 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1958)  ; FirstbitLo(value)
  %1960 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1961 = extractvalue %dx.types.CBufRet.i32 %1960, 1
  %1962 = sub nsw i32 %1961, %1959
  %1963 = sitofp i32 %1962 to float
  %1964 = fsub fast float %1954, %1963
  %1965 = call float @dx.op.binary.f32(i32 35, float %1964, float 0.000000e+00)  ; FMax(a,b)
  %1966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1956, %dx.types.Handle %56, float %1927, float %1929, float %1917, float undef, i32 0, i32 0, i32 undef, float %1965)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1967 = extractvalue %dx.types.ResRet.f32 %1966, 0
  %1968 = fcmp ule float %1967, 0x3FE0101020000000
  %1969 = extractvalue %dx.types.CBufRet.i32 %1960, 0
  %1970 = and i32 %1969, 128
  %1971 = icmp ne i32 %1970, 0
  %1972 = and i1 %1968, %1971
  br i1 %1972, label %2123, label %1973

; <label>:1973                                    ; preds = %1907
  %1974 = add i32 %1908, 20
  %1975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1977 = add i32 %1908, 24
  %1978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.f32 %1978, 0
  %1980 = add i32 %1908, 40
  %1981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.f32 %1981, 0
  %1983 = add i32 %1908, 96
  %1984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1985 = extractvalue %dx.types.ResRet.i32 %1984, 0
  %1986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1987 = extractvalue %dx.types.CBufRet.f32 %1986, 2
  %1988 = fmul fast float %1987, %1927
  %1989 = fmul fast float %1987, %1929
  %1990 = extractvalue %dx.types.CBufRet.f32 %1986, 3
  %1991 = fadd fast float %1988, %1990
  %1992 = fadd fast float %1989, %1990
  %1993 = add i32 %1985, 0
  %1994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1993, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1995 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1994, i32 0)  ; GetDimensions(handle,mipLevel)
  %1996 = extractvalue %dx.types.Dimensions %1995, 0
  %1997 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1996)  ; FirstbitLo(value)
  %1998 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1999 = extractvalue %dx.types.CBufRet.i32 %1998, 1
  %2000 = sub nsw i32 %1999, %1997
  %2001 = sitofp i32 %2000 to float
  %2002 = fsub fast float %1951, %2001
  %2003 = call float @dx.op.binary.f32(i32 35, float %2002, float 0.000000e+00)  ; FMax(a,b)
  %2004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1994, %dx.types.Handle %56, float %1991, float %1992, float %1982, float undef, i32 0, i32 0, i32 undef, float %2003)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2005 = extractvalue %dx.types.ResRet.f32 %2004, 0
  %2006 = fmul fast float %2005, %1976
  %2007 = fadd fast float %2006, %1979
  %2008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2009 = extractvalue %dx.types.CBufRet.f32 %2008, 0
  %2010 = extractvalue %dx.types.CBufRet.f32 %2008, 1
  %2011 = extractvalue %dx.types.CBufRet.f32 %2008, 2
  %2012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2013 = extractvalue %dx.types.CBufRet.f32 %2012, 3
  %2014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2015 = extractvalue %dx.types.CBufRet.f32 %2014, 3
  %2016 = extractvalue %dx.types.CBufRet.f32 %2008, 3
  %2017 = fadd fast float %2013, %1874
  %2018 = fadd fast float %2015, %1875
  %2019 = fadd fast float %2007, %2016
  %2020 = fmul fast float %2017, %2009
  %2021 = call float @dx.op.tertiary.f32(i32 46, float %2018, float %2010, float %2020)  ; FMad(a,b,c)
  %2022 = call float @dx.op.tertiary.f32(i32 46, float %2019, float %2011, float %2021)  ; FMad(a,b,c)
  %2023 = fsub fast float %2022, %2016
  %2024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2025 = extractvalue %dx.types.CBufRet.f32 %2024, 2
  %2026 = fsub fast float %2023, %2025
  %2027 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2028 = extractvalue %dx.types.CBufRet.i32 %2027, 0
  %2029 = call i32 @dx.op.binary.i32(i32 40, i32 %1905, i32 %2028)  ; UMin(a,b)
  %2030 = mul i32 %2029, 36
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = add i32 %2030, 4
  %2034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2035 = extractvalue %dx.types.CBufRet.f32 %2034, 0
  %2036 = fmul fast float %2035, %1927
  %2037 = fmul fast float %2035, %1929
  %2038 = extractvalue %dx.types.CBufRet.f32 %2034, 1
  %2039 = fadd fast float %2036, %2038
  %2040 = fadd fast float %2037, %2038
  %2041 = icmp eq i32 %2032, 0
  br i1 %2041, label %2110, label %2042

; <label>:2042                                    ; preds = %1973
  br label %2043

; <label>:2043                                    ; preds = %2100, %2042
  %2044 = phi float [ %2101, %2100 ], [ 0.000000e+00, %2042 ]
  %2045 = phi float [ %2102, %2100 ], [ 0.000000e+00, %2042 ]
  %2046 = phi float [ %2103, %2100 ], [ 0.000000e+00, %2042 ]
  %2047 = phi float [ %2104, %2100 ], [ 0.000000e+00, %2042 ]
  %2048 = phi float [ %2105, %2100 ], [ 0.000000e+00, %2042 ]
  %2049 = phi float [ %2106, %2100 ], [ 0.000000e+00, %2042 ]
  %2050 = phi i32 [ %2107, %2100 ], [ 0, %2042 ]
  %2051 = shl i32 %2050, 2
  %2052 = add i32 %1918, %2051
  %2053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.f32 %2053, 0
  %2055 = add i32 %1922, %2051
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2055, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = add i32 %2057, 0
  %2059 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2058, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2060 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2059, i32 0)  ; GetDimensions(handle,mipLevel)
  %2061 = extractvalue %dx.types.Dimensions %2060, 0
  %2062 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2061)  ; FirstbitLo(value)
  %2063 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2064 = extractvalue %dx.types.CBufRet.i32 %2063, 1
  %2065 = sub nsw i32 %2064, %2062
  %2066 = sitofp i32 %2065 to float
  %2067 = fsub fast float %1951, %2066
  %2068 = call float @dx.op.binary.f32(i32 35, float %2067, float 0.000000e+00)  ; FMax(a,b)
  %2069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2059, %dx.types.Handle %56, float %2039, float %2040, float %2054, float undef, i32 0, i32 0, i32 undef, float %2068)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2070 = extractvalue %dx.types.ResRet.f32 %2069, 0
  %2071 = fcmp fast ogt float %2070, 0.000000e+00
  br i1 %2071, label %2072, label %2100

; <label>:2072                                    ; preds = %2043
  %2073 = add i32 %2033, %2051
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2073, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = and i32 %2075, 32767
  %2077 = mul nuw nsw i32 %2076, 928
  %2078 = add nuw nsw i32 %2077, 48
  %2079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2078, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.f32 %2079, 0
  %2081 = extractvalue %dx.types.ResRet.f32 %2079, 1
  %2082 = extractvalue %dx.types.ResRet.f32 %2079, 2
  %2083 = add nuw nsw i32 %2077, 60
  %2084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.f32 %2084, 0
  %2086 = extractvalue %dx.types.ResRet.f32 %2084, 1
  %2087 = extractvalue %dx.types.ResRet.f32 %2084, 2
  %2088 = fmul fast float %2080, %2070
  %2089 = fmul fast float %2081, %2070
  %2090 = fmul fast float %2082, %2070
  %2091 = fadd fast float %2088, %2044
  %2092 = fadd fast float %2089, %2045
  %2093 = fadd fast float %2090, %2046
  %2094 = fmul fast float %2085, %2070
  %2095 = fmul fast float %2086, %2070
  %2096 = fmul fast float %2087, %2070
  %2097 = fadd fast float %2094, %2047
  %2098 = fadd fast float %2095, %2048
  %2099 = fadd fast float %2096, %2049
  br label %2100

; <label>:2100                                    ; preds = %2072, %2043
  %2101 = phi float [ %2091, %2072 ], [ %2044, %2043 ]
  %2102 = phi float [ %2092, %2072 ], [ %2045, %2043 ]
  %2103 = phi float [ %2093, %2072 ], [ %2046, %2043 ]
  %2104 = phi float [ %2097, %2072 ], [ %2047, %2043 ]
  %2105 = phi float [ %2098, %2072 ], [ %2048, %2043 ]
  %2106 = phi float [ %2099, %2072 ], [ %2049, %2043 ]
  %2107 = add nuw i32 %2050, 1
  %2108 = icmp eq i32 %2107, %2032
  br i1 %2108, label %2109, label %2043

; <label>:2109                                    ; preds = %2100
  br label %2110

; <label>:2110                                    ; preds = %2109, %1973
  %2111 = phi float [ 0.000000e+00, %1973 ], [ %2101, %2109 ]
  %2112 = phi float [ 0.000000e+00, %1973 ], [ %2102, %2109 ]
  %2113 = phi float [ 0.000000e+00, %1973 ], [ %2103, %2109 ]
  %2114 = phi float [ 0.000000e+00, %1973 ], [ %2104, %2109 ]
  %2115 = phi float [ 0.000000e+00, %1973 ], [ %2105, %2109 ]
  %2116 = phi float [ 0.000000e+00, %1973 ], [ %2106, %2109 ]
  %2117 = fadd fast float %2114, %2111
  %2118 = fmul fast float %2117, 0x3F847AE140000000
  %2119 = fadd fast float %2115, %2112
  %2120 = fmul fast float %2119, 0x3F847AE140000000
  %2121 = fadd fast float %2116, %2113
  %2122 = fmul fast float %2121, 0x3F847AE140000000
  br label %2123

; <label>:2123                                    ; preds = %2110, %1907, %1852, %1849, %1820, %1782
  %2124 = phi float [ %1834, %1820 ], [ -1.310720e+05, %1782 ], [ %2026, %2110 ], [ -1.310720e+05, %1852 ], [ -1.310720e+05, %1907 ], [ -1.310720e+05, %1849 ]
  %2125 = phi float [ %1844, %1820 ], [ 0.000000e+00, %1782 ], [ %2118, %2110 ], [ 0.000000e+00, %1852 ], [ 0.000000e+00, %1907 ], [ 0.000000e+00, %1849 ]
  %2126 = phi float [ %1846, %1820 ], [ 0.000000e+00, %1782 ], [ %2120, %2110 ], [ 0.000000e+00, %1852 ], [ 0.000000e+00, %1907 ], [ 0.000000e+00, %1849 ]
  %2127 = phi float [ %1848, %1820 ], [ 0.000000e+00, %1782 ], [ %2122, %2110 ], [ 0.000000e+00, %1852 ], [ 0.000000e+00, %1907 ], [ 0.000000e+00, %1849 ]
  %2128 = phi i1 [ true, %1820 ], [ false, %1782 ], [ true, %2110 ], [ false, %1852 ], [ false, %1907 ], [ false, %1849 ]
  %2129 = and i32 %204, 3
  %2130 = icmp eq i32 %2129, 1
  %2131 = select i1 %2130, float 1.000000e+00, float 0.000000e+00
  %2132 = fsub fast float %2124, %139
  %2133 = call float @dx.op.unary.f32(i32 7, float %2132)  ; Saturate(value)
  %2134 = select i1 %2128, float %2133, float 1.000000e+00
  %2135 = fmul fast float %2134, %2131
  %2136 = icmp eq i32 %2129, 3
  %2137 = select i1 %2136, float 1.000000e+00, float %2135
  %2138 = call float @dx.op.binary.f32(i32 35, float %1663, float %2137)  ; FMax(a,b)
  %2139 = call float @dx.op.unary.f32(i32 7, float %2138)  ; Saturate(value)
  %2140 = fcmp fast une float %2139, 0.000000e+00
  %2141 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %2142 = call float @dx.op.unary.f32(i32 25, float %2141)  ; Rsqrt(value)
  br i1 %2140, label %2150, label %2143

; <label>:2143                                    ; preds = %2123
  %2144 = fmul fast float %2142, %137
  %2145 = fmul fast float %2142, %138
  %2146 = fmul fast float %2142, %139
  %2147 = fsub fast float -0.000000e+00, %2144
  %2148 = fsub fast float -0.000000e+00, %2145
  %2149 = fsub fast float -0.000000e+00, %2146
  br label %2318

; <label>:2150                                    ; preds = %2123
  %2151 = fmul fast float %137, %2142
  %2152 = fsub fast float -0.000000e+00, %2151
  %2153 = fmul fast float %138, %2142
  %2154 = fsub fast float -0.000000e+00, %2153
  %2155 = fmul fast float %139, %2142
  %2156 = fsub fast float -0.000000e+00, %2155
  %2157 = call float @dx.op.dot3.f32(i32 55, float %2152, float %2154, float %2156, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %2158 = fmul fast float %2139, 2.500000e+00
  %2159 = call float @dx.op.unary.f32(i32 7, float %2158)  ; Saturate(value)
  %2160 = fmul fast float %2139, 0x4013FFFFE0000000
  %2161 = fadd fast float %2160, 0xBFFFFFFFE0000000
  %2162 = call float @dx.op.unary.f32(i32 7, float %2161)  ; Saturate(value)
  %2163 = fmul fast float %2139, 0x4004000020000000
  %2164 = fadd fast float %2163, 0xBFF8000040000000
  %2165 = call float @dx.op.unary.f32(i32 7, float %2164)  ; Saturate(value)
  %2166 = call float @dx.op.unary.f32(i32 7, float %2159)  ; Saturate(value)
  %2167 = fmul fast float %1699, 1.000000e+01
  %2168 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2169 = fmul fast float %2168, 2.000000e+00
  %2170 = fsub fast float 3.000000e+00, %2169
  %2171 = fmul fast float %2168, %2168
  %2172 = fmul fast float %2171, %2170
  %2173 = fsub fast float 1.000000e+00, %2172
  %2174 = fsub fast float 0x3FE3333340000000, %1720
  %2175 = fmul fast float %2174, 0x400AAAAAA0000000
  %2176 = call float @dx.op.unary.f32(i32 7, float %2175)  ; Saturate(value)
  %2177 = fmul fast float %2173, %2176
  %2178 = fmul fast float %1757, 0x3FEA2B8620000000
  %2179 = fmul fast float %1758, 0x3FEA2B8620000000
  %2180 = fmul fast float %1759, 0x3FEA2B8620000000
  %2181 = fadd fast float %2178, 0x3FC81DFBA0000000
  %2182 = fmul fast float %2181, %1757
  %2183 = fadd fast float %2182, 0x3F910E6020000000
  %2184 = fadd fast float %2179, 0x3FC81DFBA0000000
  %2185 = fmul fast float %2184, %1758
  %2186 = fadd fast float %2185, 0x3F910E6020000000
  %2187 = fadd fast float %2180, 0x3FC81DFBA0000000
  %2188 = fmul fast float %2187, %1759
  %2189 = fadd fast float %2188, 0x3F910E6020000000
  %2190 = call float @dx.op.unary.f32(i32 7, float %2183)  ; Saturate(value)
  %2191 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  %2192 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2193 = fsub fast float %2190, %1757
  %2194 = fsub fast float %2191, %1758
  %2195 = fsub fast float %2192, %1759
  %2196 = fmul fast float %2193, %2166
  %2197 = fmul fast float %2196, %2177
  %2198 = fmul fast float %2194, %2166
  %2199 = fmul fast float %2198, %2177
  %2200 = fmul fast float %2195, %2166
  %2201 = fmul fast float %2200, %2177
  %2202 = fadd fast float %2197, %1757
  %2203 = fadd fast float %2199, %1758
  %2204 = fadd fast float %2201, %1759
  %2205 = fmul fast float %1680, %1680
  %2206 = fmul fast float %2205, %2205
  %2207 = fadd fast float %2162, 1.000000e+00
  %2208 = fsub fast float %2207, %2177
  %2209 = call float @dx.op.unary.f32(i32 7, float %2208)  ; Saturate(value)
  %2210 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2211 = call float @dx.op.unary.f32(i32 7, float %2210)  ; Saturate(value)
  %2212 = fsub fast float 1.000000e+00, %2206
  %2213 = call float @dx.op.binary.f32(i32 36, float %2209, float %2212)  ; FMin(a,b)
  %2214 = call float @dx.op.unary.f32(i32 7, float %2165)  ; Saturate(value)
  %2215 = call float @dx.op.binary.f32(i32 35, float %2213, float %2214)  ; FMax(a,b)
  %2216 = fadd fast float %2211, 0xBFE4CCCCC0000000
  %2217 = fmul fast float %2216, 0x4006DB6DA0000000
  %2218 = call float @dx.op.unary.f32(i32 7, float %2217)  ; Saturate(value)
  %2219 = fmul fast float %2218, 2.000000e+00
  %2220 = fsub fast float 3.000000e+00, %2219
  %2221 = bitcast float %1717 to i32
  %2222 = ashr i32 %2221, 1
  %2223 = add nsw i32 %2222, 532487669
  %2224 = bitcast i32 %2223 to float
  %2225 = fsub fast float 1.000000e+00, %2224
  %2226 = bitcast float %2225 to i32
  %2227 = sub nsw i32 2129859010, %2226
  %2228 = bitcast i32 %2227 to float
  %2229 = fmul fast float %2228, 2.000000e+00
  %2230 = bitcast float %1718 to i32
  %2231 = ashr i32 %2230, 1
  %2232 = add nsw i32 %2231, 532487669
  %2233 = bitcast i32 %2232 to float
  %2234 = fsub fast float 1.000000e+00, %2233
  %2235 = bitcast float %2234 to i32
  %2236 = sub nsw i32 2129859010, %2235
  %2237 = bitcast i32 %2236 to float
  %2238 = fmul fast float %2237, 2.000000e+00
  %2239 = bitcast float %1719 to i32
  %2240 = ashr i32 %2239, 1
  %2241 = add nsw i32 %2240, 532487669
  %2242 = bitcast i32 %2241 to float
  %2243 = fsub fast float 1.000000e+00, %2242
  %2244 = bitcast float %2243 to i32
  %2245 = sub nsw i32 2129859010, %2244
  %2246 = bitcast i32 %2245 to float
  %2247 = fmul fast float %2246, 2.000000e+00
  %2248 = fsub fast float 0x4002A9FBE0000000, %2229
  %2249 = fadd fast float %2229, 0x3FD54FDF00000000
  %2250 = bitcast float %2249 to i32
  %2251 = sub nsw i32 2129859010, %2250
  %2252 = bitcast i32 %2251 to float
  %2253 = fmul fast float %2252, %2248
  %2254 = fmul fast float %2253, %2253
  %2255 = fsub fast float 0x4002A9FBE0000000, %2238
  %2256 = fadd fast float %2238, 0x3FD54FDF00000000
  %2257 = bitcast float %2256 to i32
  %2258 = sub nsw i32 2129859010, %2257
  %2259 = bitcast i32 %2258 to float
  %2260 = fmul fast float %2259, %2255
  %2261 = fmul fast float %2260, %2260
  %2262 = fsub fast float 0x4002A9FBE0000000, %2247
  %2263 = fadd fast float %2247, 0x3FD54FDF00000000
  %2264 = bitcast float %2263 to i32
  %2265 = sub nsw i32 2129859010, %2264
  %2266 = bitcast i32 %2265 to float
  %2267 = fmul fast float %2266, %2262
  %2268 = fmul fast float %2267, %2267
  %2269 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2254)  ; FMax(a,b)
  %2270 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2261)  ; FMax(a,b)
  %2271 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2268)  ; FMax(a,b)
  %2272 = fsub fast float 1.000000e+00, %2157
  %2273 = fadd fast float %2272, %2173
  %2274 = call float @dx.op.unary.f32(i32 7, float %2273)  ; Saturate(value)
  %2275 = fsub fast float 1.000000e+00, %2137
  %2276 = fmul fast float %2215, %2275
  %2277 = fmul fast float %2218, %2218
  %2278 = fmul fast float %2277, %2276
  %2279 = fmul fast float %2278, %2220
  %2280 = fmul fast float %2275, 0xBFE99999A0000000
  %2281 = fmul fast float %2280, %2166
  %2282 = fmul fast float %2281, %2177
  %2283 = fadd fast float %2282, 1.000000e+00
  %2284 = fadd fast float %1720, -1.000000e+00
  %2285 = fmul fast float %2283, %2284
  %2286 = fadd fast float %2285, 1.000000e+00
  %2287 = fsub fast float %2269, %1717
  %2288 = fsub fast float %2270, %1718
  %2289 = fsub fast float %2271, %1719
  %2290 = fmul fast float %2279, %2287
  %2291 = fmul fast float %2279, %2288
  %2292 = fmul fast float %2279, %2289
  %2293 = fadd fast float %2290, %1717
  %2294 = fadd fast float %2291, %1718
  %2295 = fadd fast float %2292, %1719
  %2296 = fsub fast float %70, %1696
  %2297 = fsub fast float %71, %1697
  %2298 = fsub fast float %72, %1698
  %2299 = fmul fast float %2279, %2296
  %2300 = fmul fast float %2279, %2297
  %2301 = fmul fast float %2279, %2298
  %2302 = fadd fast float %2299, %1696
  %2303 = fadd fast float %2300, %1697
  %2304 = fadd fast float %2301, %1698
  %2305 = fmul fast float %2279, %2274
  %2306 = call float @dx.op.unary.f32(i32 7, float %2286)  ; Saturate(value)
  %2307 = fsub fast float 1.000000e+00, %2306
  %2308 = fmul fast float %2305, %2307
  %2309 = fadd fast float %2308, %2306
  %2310 = fsub fast float 1.000000e+00, %1680
  %2311 = fmul fast float %2279, %2310
  %2312 = fadd fast float %2311, %1680
  %2313 = call float @dx.op.dot3.f32(i32 55, float %2302, float %2303, float %2304, float %2302, float %2303, float %2304)  ; Dot3(ax,ay,az,bx,by,bz)
  %2314 = call float @dx.op.unary.f32(i32 25, float %2313)  ; Rsqrt(value)
  %2315 = fmul fast float %2302, %2314
  %2316 = fmul fast float %2303, %2314
  %2317 = fmul fast float %2304, %2314
  br label %2318

; <label>:2318                                    ; preds = %2150, %2143
  %2319 = phi float [ %2149, %2143 ], [ %2156, %2150 ]
  %2320 = phi float [ %2148, %2143 ], [ %2154, %2150 ]
  %2321 = phi float [ %2147, %2143 ], [ %2152, %2150 ]
  %2322 = phi float [ %2146, %2143 ], [ %2155, %2150 ]
  %2323 = phi float [ %2145, %2143 ], [ %2153, %2150 ]
  %2324 = phi float [ %2144, %2143 ], [ %2151, %2150 ]
  %2325 = phi float [ %1757, %2143 ], [ %2202, %2150 ]
  %2326 = phi float [ %1758, %2143 ], [ %2203, %2150 ]
  %2327 = phi float [ %1759, %2143 ], [ %2204, %2150 ]
  %2328 = phi float [ %1717, %2143 ], [ %2293, %2150 ]
  %2329 = phi float [ %1718, %2143 ], [ %2294, %2150 ]
  %2330 = phi float [ %1719, %2143 ], [ %2295, %2150 ]
  %2331 = phi float [ %1696, %2143 ], [ %2315, %2150 ]
  %2332 = phi float [ %1697, %2143 ], [ %2316, %2150 ]
  %2333 = phi float [ %1698, %2143 ], [ %2317, %2150 ]
  %2334 = phi float [ %1720, %2143 ], [ %2309, %2150 ]
  %2335 = phi float [ %1680, %2143 ], [ %2312, %2150 ]
  %2336 = fsub fast float -0.000000e+00, %139
  %2337 = select i1 %228, float 0.000000e+00, float %2330
  %2338 = call float @dx.op.dot3.f32(i32 55, float %2331, float %2332, float %2333, float %2321, float %2320, float %2319)  ; Dot3(ax,ay,az,bx,by,bz)
  %2339 = call float @dx.op.unary.f32(i32 7, float %2338)  ; Saturate(value)
  %2340 = call float @dx.op.dot3.f32(i32 55, float %2324, float %2323, float %2322, float %2331, float %2332, float %2333)  ; Dot3(ax,ay,az,bx,by,bz)
  %2341 = fmul fast float %2340, 2.000000e+00
  %2342 = fmul fast float %2341, %2331
  %2343 = fmul fast float %2341, %2332
  %2344 = fmul fast float %2341, %2333
  %2345 = fsub fast float %2324, %2342
  %2346 = fsub fast float %2323, %2343
  %2347 = fsub fast float %2322, %2344
  %2348 = call float @dx.op.binary.f32(i32 36, float %2335, float 1.000000e+00)  ; FMin(a,b)
  %2349 = fsub fast float 1.000000e+00, %2335
  %2350 = bitcast float %2349 to i32
  %2351 = sub nsw i32 2129859010, %2350
  %2352 = bitcast i32 %2351 to float
  %2353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2354 = extractvalue %dx.types.CBufRet.f32 %2353, 0
  %2355 = extractvalue %dx.types.CBufRet.f32 %2353, 1
  %2356 = fadd fast float %2354, %137
  %2357 = fadd fast float %2355, %138
  %2358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2359 = extractvalue %dx.types.CBufRet.i32 %2358, 0
  %2360 = icmp eq i32 %2359, 1
  br i1 %2360, label %2361, label %2396

; <label>:2361                                    ; preds = %2318
  %2362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2363 = extractvalue %dx.types.CBufRet.f32 %2362, 0
  %2364 = extractvalue %dx.types.CBufRet.f32 %2362, 1
  %2365 = fsub fast float %2356, %2363
  %2366 = fsub fast float %2357, %2364
  %2367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2368 = extractvalue %dx.types.CBufRet.f32 %2367, 0
  %2369 = extractvalue %dx.types.CBufRet.f32 %2367, 1
  %2370 = fmul fast float %2365, %2368
  %2371 = fmul fast float %2366, %2369
  %2372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %2370, float %2371, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2373 = extractvalue %dx.types.ResRet.f32 %2372, 0
  %2374 = fcmp fast ogt float %2373, 0.000000e+00
  %2375 = extractvalue %dx.types.CBufRet.i32 %2358, 3
  %2376 = icmp ne i32 %2375, 0
  %2377 = and i1 %2374, %2376
  br i1 %2377, label %2378, label %2396, !dx.controlflow.hints !98

; <label>:2378                                    ; preds = %2361
  %2379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2380 = extractvalue %dx.types.CBufRet.f32 %2379, 0
  %2381 = extractvalue %dx.types.CBufRet.f32 %2379, 1
  %2382 = fsub fast float %2356, %2380
  %2383 = fsub fast float %2357, %2381
  %2384 = fmul fast float %2382, %2382
  %2385 = fmul fast float %2383, %2383
  %2386 = fadd fast float %2384, %2385
  %2387 = uitofp i32 %2375 to float
  %2388 = fmul fast float %2387, %2387
  %2389 = fcmp fast ogt float %2386, %2388
  br i1 %2389, label %2396, label %2390

; <label>:2390                                    ; preds = %2378
  %2391 = call float @dx.op.unary.f32(i32 24, float %2386)  ; Sqrt(value)
  %2392 = fsub fast float %2387, %2391
  %2393 = fmul fast float %2392, 0x3F75555560000000
  %2394 = call float @dx.op.unary.f32(i32 7, float %2393)  ; Saturate(value)
  %2395 = call float @dx.op.binary.f32(i32 36, float %2394, float %2373)  ; FMin(a,b)
  br label %2396

; <label>:2396                                    ; preds = %2390, %2378, %2361, %2318
  %2397 = phi float [ 1.000000e+00, %2318 ], [ %2395, %2390 ], [ %2373, %2361 ], [ 0.000000e+00, %2378 ]
  %2398 = fcmp fast ogt float %2397, 0.000000e+00
  br i1 %2398, label %2399, label %2497, !dx.controlflow.hints !99

; <label>:2399                                    ; preds = %2396
  %2400 = fadd fast float %168, 5.000000e-01
  %2401 = call float @dx.op.unary.f32(i32 27, float %2400)  ; Round_ni(value)
  %2402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %58, float %166, float %167, float %2401, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2403 = extractvalue %dx.types.ResRet.f32 %2402, 0
  %2404 = extractvalue %dx.types.ResRet.f32 %2402, 1
  %2405 = extractvalue %dx.types.ResRet.f32 %2402, 2
  %2406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2407 = extractvalue %dx.types.CBufRet.f32 %2406, 3
  %2408 = fmul fast float %2407, %2403
  %2409 = fmul fast float %2407, %2404
  %2410 = fmul fast float %2407, %2405
  %2411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %58, float %166, float %167, float %2401, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2412 = extractvalue %dx.types.ResRet.f32 %2411, 0
  %2413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %58, float %166, float %167, float %2401, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2414 = extractvalue %dx.types.ResRet.f32 %2413, 0
  %2415 = extractvalue %dx.types.ResRet.f32 %2413, 1
  %2416 = fmul fast float %2414, 2.000000e+00
  %2417 = fmul fast float %2415, 2.000000e+00
  %2418 = fadd fast float %2416, -1.000000e+00
  %2419 = fadd fast float %2417, -1.000000e+00
  %2420 = fadd fast float %2418, %2419
  %2421 = fmul fast float %2420, 5.000000e-01
  %2422 = fsub fast float %2418, %2419
  %2423 = fmul fast float %2422, 5.000000e-01
  %2424 = call float @dx.op.unary.f32(i32 6, float %2421)  ; FAbs(value)
  %2425 = fsub fast float 1.000000e+00, %2424
  %2426 = call float @dx.op.unary.f32(i32 6, float %2423)  ; FAbs(value)
  %2427 = fsub fast float %2425, %2426
  %2428 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2427)  ; FMax(a,b)
  %2429 = call float @dx.op.dot3.f32(i32 55, float %2421, float %2423, float %2428, float %2421, float %2423, float %2428)  ; Dot3(ax,ay,az,bx,by,bz)
  %2430 = bitcast float %2429 to i32
  %2431 = ashr i32 %2430, 1
  %2432 = sub nsw i32 1597250115, %2431
  %2433 = bitcast i32 %2432 to float
  %2434 = fmul fast float %2433, %2421
  %2435 = fmul fast float %2433, %2423
  %2436 = fmul fast float %2433, %2428
  %2437 = fsub fast float 1.000000e+00, %2412
  %2438 = fdiv fast float %2437, %2436
  %2439 = fmul fast float %2436, %70
  %2440 = fmul fast float %2436, %71
  %2441 = fmul fast float %2436, %72
  %2442 = fmul fast float %2434, %66
  %2443 = fmul fast float %2434, %67
  %2444 = fmul fast float %2434, %68
  %2445 = fadd fast float %2439, %2442
  %2446 = fadd fast float %2440, %2443
  %2447 = fadd fast float %2441, %2444
  %2448 = fmul fast float %2435, %101
  %2449 = fmul fast float %2435, %102
  %2450 = fmul fast float %2435, %103
  %2451 = fadd fast float %2445, %2448
  %2452 = fadd fast float %2446, %2449
  %2453 = fadd fast float %2447, %2450
  %2454 = call float @dx.op.dot3.f32(i32 55, float %2451, float %2452, float %2453, float %2451, float %2452, float %2453)  ; Dot3(ax,ay,az,bx,by,bz)
  %2455 = call float @dx.op.unary.f32(i32 25, float %2454)  ; Rsqrt(value)
  %2456 = fmul fast float %2451, %2455
  %2457 = fmul fast float %2452, %2455
  %2458 = fmul fast float %2453, %2455
  %2459 = call float @dx.op.dot3.f32(i32 55, float %2331, float %2332, float %2333, float %2331, float %2332, float %2333)  ; Dot3(ax,ay,az,bx,by,bz)
  %2460 = call float @dx.op.unary.f32(i32 7, float %2459)  ; Saturate(value)
  %2461 = fmul fast float %2460, 5.000000e-01
  %2462 = fadd fast float %2461, 5.000000e-01
  %2463 = fmul fast float %2462, %2412
  %2464 = call float @dx.op.dot3.f32(i32 55, float %2331, float %2332, float %2333, float %2456, float %2457, float %2458)  ; Dot3(ax,ay,az,bx,by,bz)
  %2465 = call float @dx.op.unary.f32(i32 7, float %2464)  ; Saturate(value)
  %2466 = fmul fast float %2465, %2438
  %2467 = fadd fast float %2463, %2466
  %2468 = fsub fast float 5.000000e-01, %2461
  %2469 = fmul fast float %2468, %2325
  %2470 = fmul fast float %2468, %2326
  %2471 = fmul fast float %2468, %2327
  %2472 = fadd fast float %2467, %2469
  %2473 = fmul fast float %2472, %2408
  %2474 = fadd fast float %2467, %2470
  %2475 = fmul fast float %2474, %2409
  %2476 = fadd fast float %2467, %2471
  %2477 = fmul fast float %2476, %2410
  %2478 = call float @dx.op.dot3.f32(i32 55, float %2345, float %2346, float %2347, float %2331, float %2332, float %2333)  ; Dot3(ax,ay,az,bx,by,bz)
  %2479 = call float @dx.op.unary.f32(i32 7, float %2478)  ; Saturate(value)
  %2480 = fmul fast float %2479, 5.000000e-01
  %2481 = fadd fast float %2480, 5.000000e-01
  %2482 = fmul fast float %2481, %2412
  %2483 = call float @dx.op.dot3.f32(i32 55, float %2345, float %2346, float %2347, float %2456, float %2457, float %2458)  ; Dot3(ax,ay,az,bx,by,bz)
  %2484 = call float @dx.op.unary.f32(i32 7, float %2483)  ; Saturate(value)
  %2485 = fmul fast float %2484, %2438
  %2486 = fadd fast float %2482, %2485
  %2487 = fsub fast float 5.000000e-01, %2480
  %2488 = fmul fast float %2487, %2325
  %2489 = fmul fast float %2487, %2326
  %2490 = fmul fast float %2487, %2327
  %2491 = fadd fast float %2486, %2488
  %2492 = fmul fast float %2491, %2408
  %2493 = fadd fast float %2486, %2489
  %2494 = fmul fast float %2493, %2409
  %2495 = fadd fast float %2486, %2490
  %2496 = fmul fast float %2495, %2410
  br label %2497

; <label>:2497                                    ; preds = %2399, %2396
  %2498 = phi float [ %2492, %2399 ], [ 0.000000e+00, %2396 ]
  %2499 = phi float [ %2494, %2399 ], [ 0.000000e+00, %2396 ]
  %2500 = phi float [ %2496, %2399 ], [ 0.000000e+00, %2396 ]
  %2501 = phi float [ %2473, %2399 ], [ 0.000000e+00, %2396 ]
  %2502 = phi float [ %2475, %2399 ], [ 0.000000e+00, %2396 ]
  %2503 = phi float [ %2477, %2399 ], [ 0.000000e+00, %2396 ]
  %2504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2505 = extractvalue %dx.types.CBufRet.f32 %2504, 0
  %2506 = fcmp fast ogt float %2505, 0.000000e+00
  %2507 = and i1 %2398, %2506
  br i1 %2507, label %2508, label %2712, !dx.controlflow.hints !100

; <label>:2508                                    ; preds = %2497
  %2509 = extractvalue %dx.types.CBufRet.f32 %2353, 2
  %2510 = fadd fast float %2509, %139
  %2511 = fmul fast float %2331, 3.200000e+01
  %2512 = fmul fast float %2332, 3.200000e+01
  %2513 = fadd fast float %2356, %2511
  %2514 = fadd fast float %2357, %2512
  %2515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2516 = extractvalue %dx.types.CBufRet.f32 %2515, 0
  %2517 = extractvalue %dx.types.CBufRet.f32 %2515, 1
  %2518 = fsub fast float %2513, %2516
  %2519 = fsub fast float %2514, %2517
  %2520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2521 = extractvalue %dx.types.CBufRet.f32 %2520, 0
  %2522 = extractvalue %dx.types.CBufRet.f32 %2520, 1
  %2523 = fmul fast float %2518, %2521
  %2524 = fmul fast float %2519, %2522
  %2525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2526 = extractvalue %dx.types.CBufRet.f32 %2525, 0
  %2527 = extractvalue %dx.types.CBufRet.f32 %2525, 1
  %2528 = fsub fast float %2356, %2526
  %2529 = fsub fast float %2357, %2527
  %2530 = fmul fast float %2528, %2528
  %2531 = fmul fast float %2529, %2529
  %2532 = fadd fast float %2530, %2531
  %2533 = call float @dx.op.unary.f32(i32 24, float %2532)  ; Sqrt(value)
  %2534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2535 = extractvalue %dx.types.CBufRet.f32 %2534, 0
  %2536 = extractvalue %dx.types.CBufRet.f32 %2534, 1
  %2537 = fsub fast float %2533, %2535
  %2538 = fdiv fast float %2537, %2536
  %2539 = call float @dx.op.unary.f32(i32 7, float %2538)  ; Saturate(value)
  %2540 = fmul fast float %2539, 2.000000e+00
  %2541 = fsub fast float 3.000000e+00, %2540
  %2542 = fmul fast float %2539, %2539
  %2543 = fmul fast float %2542, %2541
  %2544 = fcmp fast oge float %2523, 0.000000e+00
  %2545 = fcmp fast ole float %2523, 1.000000e+00
  %2546 = and i1 %2545, %2544
  %2547 = fcmp fast oge float %2524, 0.000000e+00
  %2548 = and i1 %2547, %2546
  %2549 = fcmp fast ole float %2524, 1.000000e+00
  %2550 = and i1 %2549, %2548
  %2551 = fcmp fast ogt float %2543, 0.000000e+00
  %2552 = and i1 %2551, %2550
  br i1 %2552, label %2553, label %2676, !dx.controlflow.hints !101

; <label>:2553                                    ; preds = %2508
  %2554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2555 = extractvalue %dx.types.CBufRet.f32 %2554, 2
  %2556 = extractvalue %dx.types.CBufRet.f32 %2554, 3
  %2557 = fmul fast float %2555, %2523
  %2558 = fmul fast float %2556, %2524
  %2559 = call float @dx.op.unary.f32(i32 27, float %2557)  ; Round_ni(value)
  %2560 = call float @dx.op.unary.f32(i32 27, float %2558)  ; Round_ni(value)
  %2561 = fptosi float %2559 to i32
  %2562 = fptosi float %2560 to i32
  %2563 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %2561, i32 %2562, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = lshr i32 %2564, 16
  %2566 = icmp eq i32 %2565, 65535
  br i1 %2566, label %2676, label %2567

; <label>:2567                                    ; preds = %2553
  %2568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2569 = extractvalue %dx.types.CBufRet.f32 %2568, 0
  %2570 = fmul fast float %2569, %2523
  %2571 = extractvalue %dx.types.CBufRet.f32 %2568, 1
  %2572 = fadd fast float %2570, %2571
  %2573 = extractvalue %dx.types.CBufRet.f32 %2568, 2
  %2574 = fmul fast float %2573, %2524
  %2575 = extractvalue %dx.types.CBufRet.f32 %2568, 3
  %2576 = fadd fast float %2574, %2575
  %2577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2572, float %2576, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2578 = extractvalue %dx.types.ResRet.f32 %2577, 0
  %2579 = extractvalue %dx.types.ResRet.f32 %2577, 1
  %2580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2581 = extractvalue %dx.types.CBufRet.f32 %2580, 1
  %2582 = extractvalue %dx.types.CBufRet.f32 %2580, 0
  %2583 = fsub fast float %2581, %2582
  %2584 = fmul fast float %2583, %2578
  %2585 = fadd fast float %2584, %2582
  %2586 = extractvalue %dx.types.CBufRet.f32 %2580, 3
  %2587 = extractvalue %dx.types.CBufRet.f32 %2580, 2
  %2588 = fsub fast float %2586, %2587
  %2589 = fmul fast float %2588, %2579
  %2590 = fadd fast float %2589, %2587
  %2591 = fsub fast float %2510, %2585
  %2592 = fsub fast float %2590, %2585
  %2593 = fdiv fast float %2591, %2592
  %2594 = call float @dx.op.unary.f32(i32 7, float %2593)  ; Saturate(value)
  %2595 = extractvalue %dx.types.CBufRet.f32 %2504, 1
  %2596 = extractvalue %dx.types.CBufRet.f32 %2554, 0
  %2597 = extractvalue %dx.types.CBufRet.f32 %2554, 1
  %2598 = fmul fast float %2596, %2523
  %2599 = fmul fast float %2597, %2524
  %2600 = fmul fast float %2598, 1.250000e-01
  %2601 = fmul fast float %2599, 1.250000e-01
  %2602 = call float @dx.op.unary.f32(i32 27, float %2600)  ; Round_ni(value)
  %2603 = call float @dx.op.unary.f32(i32 27, float %2601)  ; Round_ni(value)
  %2604 = fmul fast float %2602, 8.000000e+00
  %2605 = fmul fast float %2603, 8.000000e+00
  %2606 = fsub fast float %2598, %2604
  %2607 = fsub fast float %2599, %2605
  %2608 = fadd fast float %2606, 5.000000e-01
  %2609 = fadd fast float %2607, 5.000000e-01
  %2610 = and i32 %2565, 255
  %2611 = lshr i32 %2564, 24
  %2612 = mul nuw nsw i32 %2610, 9
  %2613 = uitofp i32 %2612 to float
  %2614 = mul nuw nsw i32 %2611, 9
  %2615 = uitofp i32 %2614 to float
  %2616 = fadd fast float %2608, %2613
  %2617 = fadd fast float %2609, %2615
  %2618 = fdiv fast float %2616, %2505
  %2619 = fdiv fast float %2617, %2595
  %2620 = fmul fast float %2594, 4.375000e-01
  %2621 = fadd fast float %2620, 3.125000e-02
  %2622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2618, float %2619, float %2621, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2623 = extractvalue %dx.types.ResRet.f32 %2622, 0
  %2624 = extractvalue %dx.types.ResRet.f32 %2622, 1
  %2625 = extractvalue %dx.types.ResRet.f32 %2622, 2
  %2626 = fadd fast float %2620, 5.312500e-01
  %2627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2618, float %2619, float %2626, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2628 = extractvalue %dx.types.ResRet.f32 %2627, 0
  %2629 = extractvalue %dx.types.ResRet.f32 %2627, 1
  %2630 = extractvalue %dx.types.ResRet.f32 %2627, 2
  %2631 = fmul fast float %2628, 2.000000e+00
  %2632 = fmul fast float %2629, 2.000000e+00
  %2633 = fmul fast float %2630, 2.000000e+00
  %2634 = fadd fast float %2631, -1.000000e+00
  %2635 = fadd fast float %2632, -1.000000e+00
  %2636 = fadd fast float %2633, -1.000000e+00
  %2637 = fmul fast float %2634, %2634
  %2638 = fmul fast float %2635, %2635
  %2639 = fadd fast float %2637, %2638
  %2640 = fmul fast float %2636, %2636
  %2641 = fadd fast float %2639, %2640
  %2642 = call float @dx.op.unary.f32(i32 24, float %2641)  ; Sqrt(value)
  %2643 = fcmp fast ogt float %2642, 0.000000e+00
  br i1 %2643, label %2644, label %2648

; <label>:2644                                    ; preds = %2567
  %2645 = fdiv fast float %2634, %2642
  %2646 = fdiv fast float %2635, %2642
  %2647 = fdiv fast float %2636, %2642
  br label %2648

; <label>:2648                                    ; preds = %2644, %2567
  %2649 = phi float [ %2645, %2644 ], [ 0.000000e+00, %2567 ]
  %2650 = phi float [ %2646, %2644 ], [ 0.000000e+00, %2567 ]
  %2651 = phi float [ %2647, %2644 ], [ 0.000000e+00, %2567 ]
  %2652 = call float @dx.op.dot3.f32(i32 55, float %2649, float %2650, float %2651, float %2331, float %2332, float %2333)  ; Dot3(ax,ay,az,bx,by,bz)
  %2653 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2652)  ; FMax(a,b)
  %2654 = fmul fast float %2653, 0x400C5BF8A0000000
  %2655 = fmul fast float %2623, %2543
  %2656 = fmul fast float %2655, %2654
  %2657 = fmul fast float %2624, %2543
  %2658 = fmul fast float %2657, %2654
  %2659 = fmul fast float %2625, %2543
  %2660 = fmul fast float %2659, %2654
  %2661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2662 = extractvalue %dx.types.CBufRet.f32 %2661, 3
  %2663 = fmul fast float %2656, %2662
  %2664 = fmul fast float %2658, %2662
  %2665 = fmul fast float %2660, %2662
  %2666 = fcmp fast ogt float %2510, %2590
  br i1 %2666, label %2667, label %2676

; <label>:2667                                    ; preds = %2648
  %2668 = fmul fast float %2592, 0x3FC24924A0000000
  %2669 = fsub fast float %2510, %2590
  %2670 = fdiv fast float %2669, %2668
  %2671 = call float @dx.op.unary.f32(i32 7, float %2670)  ; Saturate(value)
  %2672 = fsub fast float 1.000000e+00, %2671
  %2673 = fmul fast float %2672, %2663
  %2674 = fmul fast float %2672, %2664
  %2675 = fmul fast float %2672, %2665
  br label %2676

; <label>:2676                                    ; preds = %2667, %2648, %2553, %2508
  %2677 = phi float [ %2675, %2667 ], [ %2665, %2648 ], [ 0.000000e+00, %2553 ], [ 0.000000e+00, %2508 ]
  %2678 = phi float [ %2674, %2667 ], [ %2664, %2648 ], [ 0.000000e+00, %2553 ], [ 0.000000e+00, %2508 ]
  %2679 = phi float [ %2673, %2667 ], [ %2663, %2648 ], [ 0.000000e+00, %2553 ], [ 0.000000e+00, %2508 ]
  %2680 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2679)  ; FMax(a,b)
  %2681 = fmul fast float %2680, 0x3FD20DD760000000
  %2682 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2345, float %2346, float %2347)  ; Dot3(ax,ay,az,bx,by,bz)
  %2683 = fmul fast float %2682, 0x3FDF454380000000
  %2684 = fmul fast float %2682, %2682
  %2685 = fmul fast float %2684, 0x3FEE471020000000
  %2686 = fadd fast float %2685, 0xBFD42F6020000000
  %2687 = call float @dx.op.dot3.f32(i32 55, float %2680, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2683, float %2686)  ; Dot3(ax,ay,az,bx,by,bz)
  %2688 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2678)  ; FMax(a,b)
  %2689 = fmul fast float %2688, 0x3FD20DD760000000
  %2690 = call float @dx.op.dot3.f32(i32 55, float %2688, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2683, float %2686)  ; Dot3(ax,ay,az,bx,by,bz)
  %2691 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2677)  ; FMax(a,b)
  %2692 = fmul fast float %2691, 0x3FD20DD760000000
  %2693 = call float @dx.op.dot3.f32(i32 55, float %2691, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2683, float %2686)  ; Dot3(ax,ay,az,bx,by,bz)
  %2694 = call float @dx.op.binary.f32(i32 35, float %2681, float 0.000000e+00)  ; FMax(a,b)
  %2695 = call float @dx.op.binary.f32(i32 35, float %2689, float 0.000000e+00)  ; FMax(a,b)
  %2696 = call float @dx.op.binary.f32(i32 35, float %2692, float 0.000000e+00)  ; FMax(a,b)
  %2697 = call float @dx.op.binary.f32(i32 35, float %2687, float 0.000000e+00)  ; FMax(a,b)
  %2698 = call float @dx.op.binary.f32(i32 35, float %2690, float 0.000000e+00)  ; FMax(a,b)
  %2699 = call float @dx.op.binary.f32(i32 35, float %2693, float 0.000000e+00)  ; FMax(a,b)
  %2700 = fmul fast float %2694, %2397
  %2701 = fmul fast float %2695, %2397
  %2702 = fmul fast float %2696, %2397
  %2703 = fadd fast float %2700, %2501
  %2704 = fadd fast float %2701, %2502
  %2705 = fadd fast float %2702, %2503
  %2706 = fmul fast float %2697, %2397
  %2707 = fmul fast float %2698, %2397
  %2708 = fmul fast float %2699, %2397
  %2709 = fadd fast float %2706, %2498
  %2710 = fadd fast float %2707, %2499
  %2711 = fadd fast float %2708, %2500
  br label %2712

; <label>:2712                                    ; preds = %2676, %2497
  %2713 = phi float [ %2709, %2676 ], [ %2498, %2497 ]
  %2714 = phi float [ %2710, %2676 ], [ %2499, %2497 ]
  %2715 = phi float [ %2711, %2676 ], [ %2500, %2497 ]
  %2716 = phi float [ %2700, %2676 ], [ 0.000000e+00, %2497 ]
  %2717 = phi float [ %2701, %2676 ], [ 0.000000e+00, %2497 ]
  %2718 = phi float [ %2702, %2676 ], [ 0.000000e+00, %2497 ]
  %2719 = phi float [ %2703, %2676 ], [ %2501, %2497 ]
  %2720 = phi float [ %2704, %2676 ], [ %2502, %2497 ]
  %2721 = phi float [ %2705, %2676 ], [ %2503, %2497 ]
  %2722 = fcmp fast olt float %2397, 1.000000e+00
  br i1 %2722, label %2723, label %3556, !dx.controlflow.hints !102

; <label>:2723                                    ; preds = %2712
  %2724 = extractvalue %dx.types.CBufRet.f32 %2353, 2
  %2725 = fadd fast float %2724, %139
  %2726 = fmul fast float %2331, 3.200000e+01
  %2727 = fmul fast float %2332, 3.200000e+01
  %2728 = fadd fast float %2356, %2726
  %2729 = fadd fast float %2357, %2727
  %2730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2731 = extractvalue %dx.types.CBufRet.f32 %2730, 0
  %2732 = extractvalue %dx.types.CBufRet.f32 %2730, 1
  %2733 = fsub fast float %2728, %2731
  %2734 = fsub fast float %2729, %2732
  %2735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2736 = extractvalue %dx.types.CBufRet.f32 %2735, 0
  %2737 = extractvalue %dx.types.CBufRet.f32 %2735, 1
  %2738 = fmul fast float %2733, %2736
  %2739 = fmul fast float %2734, %2737
  %2740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2741 = extractvalue %dx.types.CBufRet.f32 %2740, 0
  %2742 = fmul fast float %2738, %2741
  %2743 = extractvalue %dx.types.CBufRet.f32 %2740, 1
  %2744 = fadd fast float %2742, %2743
  %2745 = extractvalue %dx.types.CBufRet.f32 %2740, 2
  %2746 = fmul fast float %2745, %2739
  %2747 = extractvalue %dx.types.CBufRet.f32 %2740, 3
  %2748 = fadd fast float %2746, %2747
  %2749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2744, float %2748, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2750 = extractvalue %dx.types.ResRet.f32 %2749, 0
  %2751 = extractvalue %dx.types.ResRet.f32 %2749, 1
  %2752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2753 = extractvalue %dx.types.CBufRet.f32 %2752, 1
  %2754 = extractvalue %dx.types.CBufRet.f32 %2752, 0
  %2755 = fsub fast float %2753, %2754
  %2756 = fmul fast float %2755, %2750
  %2757 = fadd fast float %2756, %2754
  %2758 = extractvalue %dx.types.CBufRet.f32 %2752, 3
  %2759 = extractvalue %dx.types.CBufRet.f32 %2752, 2
  %2760 = fsub fast float %2758, %2759
  %2761 = fmul fast float %2760, %2751
  %2762 = fadd fast float %2761, %2759
  %2763 = fsub fast float %2725, %2757
  %2764 = fsub fast float %2762, %2757
  %2765 = fdiv fast float %2763, %2764
  %2766 = call float @dx.op.unary.f32(i32 7, float %2765)  ; Saturate(value)
  %2767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2768 = extractvalue %dx.types.CBufRet.f32 %2767, 0
  %2769 = fmul fast float %2768, %2766
  %2770 = extractvalue %dx.types.CBufRet.f32 %2767, 1
  %2771 = fadd fast float %2769, %2770
  %2772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %58, float %2744, float %2748, float %2771, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2773 = extractvalue %dx.types.ResRet.f32 %2772, 0
  %2774 = extractvalue %dx.types.ResRet.f32 %2772, 1
  %2775 = extractvalue %dx.types.ResRet.f32 %2772, 2
  %2776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2777 = extractvalue %dx.types.CBufRet.f32 %2776, 0
  %2778 = extractvalue %dx.types.CBufRet.f32 %2776, 1
  %2779 = extractvalue %dx.types.CBufRet.f32 %2776, 2
  %2780 = fmul fast float %2777, %2773
  %2781 = fmul fast float %2778, %2774
  %2782 = fmul fast float %2779, %2775
  %2783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2784 = extractvalue %dx.types.CBufRet.f32 %2783, 0
  %2785 = extractvalue %dx.types.CBufRet.f32 %2783, 1
  %2786 = extractvalue %dx.types.CBufRet.f32 %2783, 2
  %2787 = fadd fast float %2780, %2784
  %2788 = fadd fast float %2781, %2785
  %2789 = fadd fast float %2782, %2786
  %2790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2791 = extractvalue %dx.types.CBufRet.f32 %2790, 0
  %2792 = fmul fast float %2791, %2738
  %2793 = extractvalue %dx.types.CBufRet.f32 %2790, 1
  %2794 = fadd fast float %2792, %2793
  %2795 = extractvalue %dx.types.CBufRet.f32 %2790, 2
  %2796 = fmul fast float %2795, %2739
  %2797 = extractvalue %dx.types.CBufRet.f32 %2790, 3
  %2798 = fadd fast float %2796, %2797
  %2799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2800 = extractvalue %dx.types.CBufRet.f32 %2799, 0
  %2801 = extractvalue %dx.types.CBufRet.f32 %2799, 1
  %2802 = extractvalue %dx.types.CBufRet.f32 %2799, 2
  %2803 = extractvalue %dx.types.CBufRet.f32 %2799, 3
  %2804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2805 = extractvalue %dx.types.CBufRet.f32 %2804, 0
  %2806 = extractvalue %dx.types.CBufRet.f32 %2804, 1
  %2807 = extractvalue %dx.types.CBufRet.f32 %2804, 2
  %2808 = extractvalue %dx.types.CBufRet.f32 %2804, 3
  %2809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2794, float %2798, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2810 = extractvalue %dx.types.ResRet.f32 %2809, 0
  %2811 = extractvalue %dx.types.ResRet.f32 %2809, 1
  %2812 = extractvalue %dx.types.ResRet.f32 %2809, 2
  %2813 = extractvalue %dx.types.ResRet.f32 %2809, 3
  %2814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2794, float %2798, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2815 = extractvalue %dx.types.ResRet.f32 %2814, 0
  %2816 = extractvalue %dx.types.ResRet.f32 %2814, 1
  %2817 = extractvalue %dx.types.ResRet.f32 %2814, 2
  %2818 = extractvalue %dx.types.ResRet.f32 %2814, 3
  %2819 = fmul fast float %2810, %2787
  %2820 = fmul fast float %2815, %2787
  %2821 = fmul fast float %2817, %2787
  %2822 = fmul fast float %2813, %2787
  %2823 = fadd fast float %2819, %2800
  %2824 = fadd fast float %2820, %2801
  %2825 = fadd fast float %2821, %2802
  %2826 = fadd fast float %2822, %2803
  %2827 = fmul fast float %2811, %2787
  %2828 = fmul fast float %2816, %2787
  %2829 = fadd fast float %2827, %2805
  %2830 = fadd fast float %2828, %2806
  %2831 = fmul fast float %2812, %2787
  %2832 = fmul fast float %2818, %2787
  %2833 = fadd fast float %2831, %2807
  %2834 = fadd fast float %2832, %2808
  %2835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2794, float %2798, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2836 = extractvalue %dx.types.ResRet.f32 %2835, 0
  %2837 = extractvalue %dx.types.ResRet.f32 %2835, 1
  %2838 = extractvalue %dx.types.ResRet.f32 %2835, 2
  %2839 = extractvalue %dx.types.ResRet.f32 %2835, 3
  %2840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2794, float %2798, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2841 = extractvalue %dx.types.ResRet.f32 %2840, 0
  %2842 = extractvalue %dx.types.ResRet.f32 %2840, 1
  %2843 = extractvalue %dx.types.ResRet.f32 %2840, 2
  %2844 = extractvalue %dx.types.ResRet.f32 %2840, 3
  %2845 = fmul fast float %2836, %2788
  %2846 = fmul fast float %2841, %2788
  %2847 = fmul fast float %2843, %2788
  %2848 = fmul fast float %2839, %2788
  %2849 = fadd fast float %2823, %2845
  %2850 = fadd fast float %2824, %2846
  %2851 = fadd fast float %2825, %2847
  %2852 = fadd fast float %2826, %2848
  %2853 = fmul fast float %2837, %2788
  %2854 = fmul fast float %2842, %2788
  %2855 = fadd fast float %2829, %2853
  %2856 = fadd fast float %2830, %2854
  %2857 = fmul fast float %2838, %2788
  %2858 = fmul fast float %2844, %2788
  %2859 = fadd fast float %2833, %2857
  %2860 = fadd fast float %2834, %2858
  %2861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2794, float %2798, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2862 = extractvalue %dx.types.ResRet.f32 %2861, 0
  %2863 = extractvalue %dx.types.ResRet.f32 %2861, 1
  %2864 = extractvalue %dx.types.ResRet.f32 %2861, 2
  %2865 = extractvalue %dx.types.ResRet.f32 %2861, 3
  %2866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2794, float %2798, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2867 = extractvalue %dx.types.ResRet.f32 %2866, 0
  %2868 = extractvalue %dx.types.ResRet.f32 %2866, 1
  %2869 = extractvalue %dx.types.ResRet.f32 %2866, 2
  %2870 = extractvalue %dx.types.ResRet.f32 %2866, 3
  %2871 = fmul fast float %2862, %2789
  %2872 = fmul fast float %2867, %2789
  %2873 = fmul fast float %2869, %2789
  %2874 = fmul fast float %2865, %2789
  %2875 = fadd fast float %2849, %2871
  %2876 = fadd fast float %2850, %2872
  %2877 = fadd fast float %2851, %2873
  %2878 = fadd fast float %2852, %2874
  %2879 = fmul fast float %2863, %2789
  %2880 = fmul fast float %2868, %2789
  %2881 = fadd fast float %2855, %2879
  %2882 = fadd fast float %2856, %2880
  %2883 = fmul fast float %2864, %2789
  %2884 = fmul fast float %2870, %2789
  %2885 = fadd fast float %2859, %2883
  %2886 = fadd fast float %2860, %2884
  %2887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2888 = extractvalue %dx.types.CBufRet.f32 %2887, 0
  %2889 = fsub fast float %2356, %2888
  %2890 = fsub fast float %2731, %2356
  %2891 = call float @dx.op.binary.f32(i32 35, float %2890, float %2889)  ; FMax(a,b)
  %2892 = extractvalue %dx.types.CBufRet.f32 %2887, 1
  %2893 = fsub fast float %2357, %2892
  %2894 = fsub fast float %2732, %2357
  %2895 = call float @dx.op.binary.f32(i32 35, float %2894, float %2893)  ; FMax(a,b)
  %2896 = call float @dx.op.binary.f32(i32 35, float %2891, float %2895)  ; FMax(a,b)
  %2897 = extractvalue %dx.types.CBufRet.f32 %2735, 3
  %2898 = fmul fast float %2897, %2896
  %2899 = call float @dx.op.unary.f32(i32 7, float %2898)  ; Saturate(value)
  %2900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2901 = extractvalue %dx.types.CBufRet.f32 %2900, 0
  %2902 = extractvalue %dx.types.CBufRet.f32 %2900, 1
  %2903 = extractvalue %dx.types.CBufRet.f32 %2900, 2
  %2904 = extractvalue %dx.types.CBufRet.f32 %2900, 3
  %2905 = fsub fast float %2901, %2875
  %2906 = fsub fast float %2902, %2876
  %2907 = fsub fast float %2903, %2877
  %2908 = fsub fast float %2904, %2878
  %2909 = fmul fast float %2905, %2899
  %2910 = fmul fast float %2906, %2899
  %2911 = fmul fast float %2907, %2899
  %2912 = fmul fast float %2908, %2899
  %2913 = fadd fast float %2909, %2875
  %2914 = fadd fast float %2910, %2876
  %2915 = fadd fast float %2911, %2877
  %2916 = fadd fast float %2912, %2878
  %2917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2918 = extractvalue %dx.types.CBufRet.f32 %2917, 0
  %2919 = extractvalue %dx.types.CBufRet.f32 %2917, 1
  %2920 = fsub fast float %2918, %2881
  %2921 = fsub fast float %2919, %2882
  %2922 = fmul fast float %2920, %2899
  %2923 = fmul fast float %2921, %2899
  %2924 = fadd fast float %2922, %2881
  %2925 = fadd fast float %2923, %2882
  %2926 = extractvalue %dx.types.CBufRet.f32 %2917, 2
  %2927 = extractvalue %dx.types.CBufRet.f32 %2917, 3
  %2928 = fsub fast float %2926, %2885
  %2929 = fsub fast float %2927, %2886
  %2930 = fmul fast float %2928, %2899
  %2931 = fmul fast float %2929, %2899
  %2932 = fadd fast float %2930, %2885
  %2933 = fadd fast float %2931, %2886
  %2934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2935 = extractvalue %dx.types.CBufRet.f32 %2934, 0
  %2936 = fmul fast float %2935, %2913
  %2937 = fmul fast float %2935, %2914
  %2938 = fmul fast float %2935, %2915
  %2939 = fmul fast float %2935, %2916
  %2940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2941 = extractvalue %dx.types.CBufRet.f32 %2940, 0
  %2942 = fmul fast float %2941, %2924
  %2943 = fmul fast float %2941, %2925
  %2944 = fadd fast float %2942, %2936
  %2945 = fadd fast float %2943, %2938
  %2946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2947 = extractvalue %dx.types.CBufRet.f32 %2946, 0
  %2948 = fmul fast float %2947, %2932
  %2949 = fmul fast float %2947, %2933
  %2950 = fadd fast float %2944, %2948
  %2951 = fadd fast float %2945, %2949
  %2952 = extractvalue %dx.types.CBufRet.f32 %2934, 1
  %2953 = fmul fast float %2952, %2913
  %2954 = fmul fast float %2952, %2914
  %2955 = fmul fast float %2952, %2915
  %2956 = fmul fast float %2952, %2916
  %2957 = extractvalue %dx.types.CBufRet.f32 %2940, 1
  %2958 = fmul fast float %2957, %2924
  %2959 = fmul fast float %2957, %2925
  %2960 = fadd fast float %2958, %2953
  %2961 = fadd fast float %2959, %2955
  %2962 = extractvalue %dx.types.CBufRet.f32 %2946, 1
  %2963 = fmul fast float %2962, %2932
  %2964 = fmul fast float %2962, %2933
  %2965 = fadd fast float %2960, %2963
  %2966 = fadd fast float %2961, %2964
  %2967 = extractvalue %dx.types.CBufRet.f32 %2934, 2
  %2968 = fmul fast float %2967, %2913
  %2969 = fmul fast float %2967, %2914
  %2970 = fmul fast float %2967, %2915
  %2971 = fmul fast float %2967, %2916
  %2972 = extractvalue %dx.types.CBufRet.f32 %2940, 2
  %2973 = fmul fast float %2972, %2924
  %2974 = fmul fast float %2972, %2925
  %2975 = fadd fast float %2973, %2968
  %2976 = fadd fast float %2974, %2970
  %2977 = extractvalue %dx.types.CBufRet.f32 %2946, 2
  %2978 = fmul fast float %2977, %2932
  %2979 = fmul fast float %2977, %2933
  %2980 = fadd fast float %2975, %2978
  %2981 = fadd fast float %2976, %2979
  %2982 = fmul fast float %2969, %2969
  %2983 = fmul fast float %2981, %2981
  %2984 = fmul fast float %2971, %2971
  %2985 = fadd fast float %2984, %2982
  %2986 = fadd fast float %2985, %2983
  %2987 = call float @dx.op.unary.f32(i32 24, float %2986)  ; Sqrt(value)
  %2988 = fcmp fast ugt float %2987, 0.000000e+00
  br i1 %2988, label %2989, label %3004

; <label>:2989                                    ; preds = %2723
  %2990 = fsub fast float -0.000000e+00, %2971
  %2991 = fdiv fast float %2990, %2987
  %2992 = fsub fast float -0.000000e+00, %2969
  %2993 = fdiv fast float %2992, %2987
  %2994 = fdiv fast float %2981, %2987
  %2995 = fmul fast float %2980, 0x3FE279A760000000
  %2996 = fmul fast float %2993, %2969
  %2997 = fmul fast float %2994, %2981
  %2998 = fmul fast float %2991, %2971
  %2999 = fadd fast float %2996, %2998
  %3000 = fsub fast float %2999, %2997
  %3001 = call float @dx.op.unary.f32(i32 6, float %3000)  ; FAbs(value)
  %3002 = fadd fast float %3001, 0x3DDB7CDFE0000000
  %3003 = fdiv fast float %2995, %3002
  br label %3004

; <label>:3004                                    ; preds = %2989, %2723
  %3005 = phi float [ %3003, %2989 ], [ 1.000000e+00, %2723 ]
  %3006 = fmul fast float %2954, %2954
  %3007 = fmul fast float %2966, %2966
  %3008 = fmul fast float %2956, %2956
  %3009 = fadd fast float %3008, %3006
  %3010 = fadd fast float %3009, %3007
  %3011 = call float @dx.op.unary.f32(i32 24, float %3010)  ; Sqrt(value)
  %3012 = fcmp fast ugt float %3011, 0.000000e+00
  br i1 %3012, label %3013, label %3028

; <label>:3013                                    ; preds = %3004
  %3014 = fsub fast float -0.000000e+00, %2956
  %3015 = fdiv fast float %3014, %3011
  %3016 = fsub fast float -0.000000e+00, %2954
  %3017 = fdiv fast float %3016, %3011
  %3018 = fdiv fast float %2966, %3011
  %3019 = fmul fast float %2965, 0x3FE279A760000000
  %3020 = fmul fast float %3017, %2954
  %3021 = fmul fast float %3018, %2966
  %3022 = fmul fast float %3015, %2956
  %3023 = fadd fast float %3020, %3022
  %3024 = fsub fast float %3023, %3021
  %3025 = call float @dx.op.unary.f32(i32 6, float %3024)  ; FAbs(value)
  %3026 = fadd fast float %3025, 0x3DDB7CDFE0000000
  %3027 = fdiv fast float %3019, %3026
  br label %3028

; <label>:3028                                    ; preds = %3013, %3004
  %3029 = phi float [ %3027, %3013 ], [ 1.000000e+00, %3004 ]
  %3030 = call float @dx.op.binary.f32(i32 36, float %3029, float %3005)  ; FMin(a,b)
  %3031 = fmul fast float %2937, %2937
  %3032 = fmul fast float %2951, %2951
  %3033 = fmul fast float %2939, %2939
  %3034 = fadd fast float %3033, %3031
  %3035 = fadd fast float %3034, %3032
  %3036 = call float @dx.op.unary.f32(i32 24, float %3035)  ; Sqrt(value)
  %3037 = fcmp fast ugt float %3036, 0.000000e+00
  br i1 %3037, label %3038, label %3053

; <label>:3038                                    ; preds = %3028
  %3039 = fsub fast float -0.000000e+00, %2939
  %3040 = fdiv fast float %3039, %3036
  %3041 = fsub fast float -0.000000e+00, %2937
  %3042 = fdiv fast float %3041, %3036
  %3043 = fdiv fast float %2951, %3036
  %3044 = fmul fast float %2950, 0x3FE279A760000000
  %3045 = fmul fast float %3042, %2937
  %3046 = fmul fast float %3043, %2951
  %3047 = fmul fast float %3040, %2939
  %3048 = fadd fast float %3045, %3047
  %3049 = fsub fast float %3048, %3046
  %3050 = call float @dx.op.unary.f32(i32 6, float %3049)  ; FAbs(value)
  %3051 = fadd fast float %3050, 0x3DDB7CDFE0000000
  %3052 = fdiv fast float %3044, %3051
  br label %3053

; <label>:3053                                    ; preds = %3038, %3028
  %3054 = phi float [ %3052, %3038 ], [ 1.000000e+00, %3028 ]
  %3055 = call float @dx.op.binary.f32(i32 36, float %3054, float %3030)  ; FMin(a,b)
  %3056 = call float @dx.op.unary.f32(i32 7, float %3055)  ; Saturate(value)
  %3057 = fcmp fast olt float %3056, 1.000000e+00
  br i1 %3057, label %3058, label %3068

; <label>:3058                                    ; preds = %3053
  %3059 = fmul fast float %3056, %2937
  %3060 = fmul fast float %3056, %2951
  %3061 = fmul fast float %3056, %2939
  %3062 = fmul fast float %3056, %2954
  %3063 = fmul fast float %3056, %2966
  %3064 = fmul fast float %3056, %2956
  %3065 = fmul fast float %3056, %2969
  %3066 = fmul fast float %3056, %2981
  %3067 = fmul fast float %3056, %2971
  br label %3068

; <label>:3068                                    ; preds = %3058, %3053
  %3069 = phi float [ %3065, %3058 ], [ %2969, %3053 ]
  %3070 = phi float [ %3066, %3058 ], [ %2981, %3053 ]
  %3071 = phi float [ %3067, %3058 ], [ %2971, %3053 ]
  %3072 = phi float [ %3062, %3058 ], [ %2954, %3053 ]
  %3073 = phi float [ %3063, %3058 ], [ %2966, %3053 ]
  %3074 = phi float [ %3064, %3058 ], [ %2956, %3053 ]
  %3075 = phi float [ %3059, %3058 ], [ %2937, %3053 ]
  %3076 = phi float [ %3060, %3058 ], [ %2951, %3053 ]
  %3077 = phi float [ %3061, %3058 ], [ %2939, %3053 ]
  %3078 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2950)  ; FMax(a,b)
  %3079 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2965)  ; FMax(a,b)
  %3080 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2980)  ; FMax(a,b)
  %3081 = fcmp fast oge float %2738, 0.000000e+00
  %3082 = and i1 %3081, %2506
  %3083 = fcmp fast ole float %2738, 1.000000e+00
  %3084 = and i1 %3083, %3082
  %3085 = fcmp fast oge float %2739, 0.000000e+00
  %3086 = and i1 %3085, %3084
  %3087 = fcmp fast ole float %2739, 1.000000e+00
  %3088 = and i1 %3087, %3086
  br i1 %3088, label %3089, label %3234, !dx.controlflow.hints !103

; <label>:3089                                    ; preds = %3068
  %3090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3091 = extractvalue %dx.types.CBufRet.f32 %3090, 2
  %3092 = extractvalue %dx.types.CBufRet.f32 %3090, 3
  %3093 = fmul fast float %3091, %2738
  %3094 = fmul fast float %3092, %2739
  %3095 = call float @dx.op.unary.f32(i32 27, float %3093)  ; Round_ni(value)
  %3096 = call float @dx.op.unary.f32(i32 27, float %3094)  ; Round_ni(value)
  %3097 = fptosi float %3095 to i32
  %3098 = fptosi float %3096 to i32
  %3099 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %3097, i32 %3098, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = and i32 %3100, 65535
  %3102 = lshr i32 %3100, 16
  %3103 = icmp eq i32 %3101, 65535
  br i1 %3103, label %3140, label %3104

; <label>:3104                                    ; preds = %3089
  %3105 = extractvalue %dx.types.CBufRet.f32 %2504, 1
  %3106 = extractvalue %dx.types.CBufRet.f32 %3090, 0
  %3107 = extractvalue %dx.types.CBufRet.f32 %3090, 1
  %3108 = fmul fast float %3106, %2738
  %3109 = fmul fast float %3107, %2739
  %3110 = fmul fast float %3108, 1.250000e-01
  %3111 = fmul fast float %3109, 1.250000e-01
  %3112 = call float @dx.op.unary.f32(i32 27, float %3110)  ; Round_ni(value)
  %3113 = call float @dx.op.unary.f32(i32 27, float %3111)  ; Round_ni(value)
  %3114 = fmul fast float %3112, 8.000000e+00
  %3115 = fmul fast float %3113, 8.000000e+00
  %3116 = and i32 %3100, 255
  %3117 = lshr i32 %3100, 8
  %3118 = and i32 %3117, 255
  %3119 = mul nuw nsw i32 %3116, 9
  %3120 = uitofp i32 %3119 to float
  %3121 = mul nuw nsw i32 %3118, 9
  %3122 = uitofp i32 %3121 to float
  %3123 = fadd fast float %3120, 5.000000e-01
  %3124 = fadd fast float %3123, %3108
  %3125 = fsub fast float %3124, %3114
  %3126 = fadd fast float %3122, 5.000000e-01
  %3127 = fadd fast float %3126, %3109
  %3128 = fsub fast float %3127, %3115
  %3129 = fdiv fast float %3125, %2505
  %3130 = fdiv fast float %3128, %3105
  %3131 = fmul fast float %2766, 4.375000e-01
  %3132 = fadd fast float %3131, 3.125000e-02
  %3133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3129, float %3130, float %3132, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3134 = extractvalue %dx.types.ResRet.f32 %3133, 0
  %3135 = extractvalue %dx.types.ResRet.f32 %3133, 1
  %3136 = extractvalue %dx.types.ResRet.f32 %3133, 2
  %3137 = fadd fast float %3134, %3078
  %3138 = fadd fast float %3135, %3079
  %3139 = fadd fast float %3136, %3080
  br label %3140

; <label>:3140                                    ; preds = %3104, %3089
  %3141 = phi float [ %3139, %3104 ], [ %3080, %3089 ]
  %3142 = phi float [ %3138, %3104 ], [ %3079, %3089 ]
  %3143 = phi float [ %3137, %3104 ], [ %3078, %3089 ]
  %3144 = icmp eq i32 %3102, 65535
  br i1 %3144, label %3234, label %3145

; <label>:3145                                    ; preds = %3140
  %3146 = extractvalue %dx.types.CBufRet.f32 %2504, 1
  %3147 = extractvalue %dx.types.CBufRet.f32 %3090, 0
  %3148 = extractvalue %dx.types.CBufRet.f32 %3090, 1
  %3149 = fmul fast float %3147, %2738
  %3150 = fmul fast float %3148, %2739
  %3151 = fmul fast float %3149, 1.250000e-01
  %3152 = fmul fast float %3150, 1.250000e-01
  %3153 = call float @dx.op.unary.f32(i32 27, float %3151)  ; Round_ni(value)
  %3154 = call float @dx.op.unary.f32(i32 27, float %3152)  ; Round_ni(value)
  %3155 = fmul fast float %3153, 8.000000e+00
  %3156 = fmul fast float %3154, 8.000000e+00
  %3157 = fsub fast float %3149, %3155
  %3158 = fsub fast float %3150, %3156
  %3159 = fadd fast float %3157, 5.000000e-01
  %3160 = fadd fast float %3158, 5.000000e-01
  %3161 = and i32 %3102, 255
  %3162 = lshr i32 %3100, 24
  %3163 = mul nuw nsw i32 %3161, 9
  %3164 = uitofp i32 %3163 to float
  %3165 = mul nuw nsw i32 %3162, 9
  %3166 = uitofp i32 %3165 to float
  %3167 = fadd fast float %3159, %3164
  %3168 = fadd fast float %3160, %3166
  %3169 = fdiv fast float %3167, %2505
  %3170 = fdiv fast float %3168, %3146
  %3171 = fmul fast float %2766, 4.375000e-01
  %3172 = fadd fast float %3171, 3.125000e-02
  %3173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3169, float %3170, float %3172, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3174 = extractvalue %dx.types.ResRet.f32 %3173, 0
  %3175 = extractvalue %dx.types.ResRet.f32 %3173, 1
  %3176 = extractvalue %dx.types.ResRet.f32 %3173, 2
  %3177 = fadd fast float %3171, 5.312500e-01
  %3178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3169, float %3170, float %3177, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3179 = extractvalue %dx.types.ResRet.f32 %3178, 0
  %3180 = extractvalue %dx.types.ResRet.f32 %3178, 1
  %3181 = extractvalue %dx.types.ResRet.f32 %3178, 2
  %3182 = fmul fast float %3179, 2.000000e+00
  %3183 = fmul fast float %3180, 2.000000e+00
  %3184 = fmul fast float %3181, 2.000000e+00
  %3185 = fadd fast float %3182, -1.000000e+00
  %3186 = fadd fast float %3183, -1.000000e+00
  %3187 = fadd fast float %3184, -1.000000e+00
  %3188 = fmul fast float %3185, %3185
  %3189 = fmul fast float %3186, %3186
  %3190 = fadd fast float %3188, %3189
  %3191 = fmul fast float %3187, %3187
  %3192 = fadd fast float %3190, %3191
  %3193 = call float @dx.op.unary.f32(i32 24, float %3192)  ; Sqrt(value)
  %3194 = fcmp fast ogt float %3193, 0.000000e+00
  br i1 %3194, label %3195, label %3199

; <label>:3195                                    ; preds = %3145
  %3196 = fdiv fast float %3185, %3193
  %3197 = fdiv fast float %3186, %3193
  %3198 = fdiv fast float %3187, %3193
  br label %3199

; <label>:3199                                    ; preds = %3195, %3145
  %3200 = phi float [ %3196, %3195 ], [ 0.000000e+00, %3145 ]
  %3201 = phi float [ %3197, %3195 ], [ 0.000000e+00, %3145 ]
  %3202 = phi float [ %3198, %3195 ], [ 0.000000e+00, %3145 ]
  %3203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3204 = extractvalue %dx.types.CBufRet.f32 %3203, 0
  %3205 = extractvalue %dx.types.CBufRet.f32 %3203, 1
  %3206 = fsub fast float %2356, %3204
  %3207 = fsub fast float %2357, %3205
  %3208 = fmul fast float %3206, %3206
  %3209 = fmul fast float %3207, %3207
  %3210 = fadd fast float %3208, %3209
  %3211 = call float @dx.op.unary.f32(i32 24, float %3210)  ; Sqrt(value)
  %3212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3213 = extractvalue %dx.types.CBufRet.f32 %3212, 0
  %3214 = extractvalue %dx.types.CBufRet.f32 %3212, 1
  %3215 = fsub fast float %3211, %3213
  %3216 = fdiv fast float %3215, %3214
  %3217 = call float @dx.op.unary.f32(i32 7, float %3216)  ; Saturate(value)
  %3218 = fmul fast float %3217, 2.000000e+00
  %3219 = fsub fast float 3.000000e+00, %3218
  %3220 = fmul fast float %3217, %3217
  %3221 = fmul fast float %3220, %3219
  %3222 = call float @dx.op.dot3.f32(i32 55, float %3200, float %3201, float %3202, float %2331, float %2332, float %2333)  ; Dot3(ax,ay,az,bx,by,bz)
  %3223 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3222)  ; FMax(a,b)
  %3224 = fmul fast float %3223, 0x400C5BF8A0000000
  %3225 = fmul fast float %3221, %3174
  %3226 = fmul fast float %3225, %3224
  %3227 = fadd fast float %3226, %3143
  %3228 = fmul fast float %3221, %3175
  %3229 = fmul fast float %3228, %3224
  %3230 = fadd fast float %3229, %3142
  %3231 = fmul fast float %3221, %3176
  %3232 = fmul fast float %3231, %3224
  %3233 = fadd fast float %3232, %3141
  br label %3234

; <label>:3234                                    ; preds = %3199, %3140, %3068
  %3235 = phi float [ %3233, %3199 ], [ %3141, %3140 ], [ %3080, %3068 ]
  %3236 = phi float [ %3230, %3199 ], [ %3142, %3140 ], [ %3079, %3068 ]
  %3237 = phi float [ %3227, %3199 ], [ %3143, %3140 ], [ %3078, %3068 ]
  %3238 = fcmp fast ogt float %2725, %2762
  %3239 = and i1 %3081, %3238
  %3240 = and i1 %3083, %3239
  %3241 = and i1 %3085, %3240
  %3242 = and i1 %3087, %3241
  br i1 %3242, label %3243, label %3300, !dx.controlflow.hints !104

; <label>:3243                                    ; preds = %3234
  %3244 = fmul fast float %2764, 0x3FC24924A0000000
  %3245 = fsub fast float %2725, %2762
  %3246 = fdiv fast float %3245, %3244
  %3247 = call float @dx.op.unary.f32(i32 7, float %3246)  ; Saturate(value)
  %3248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3249 = extractvalue %dx.types.CBufRet.f32 %3248, 0
  %3250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3251 = extractvalue %dx.types.CBufRet.f32 %3250, 0
  %3252 = extractvalue %dx.types.CBufRet.f32 %3250, 1
  %3253 = extractvalue %dx.types.CBufRet.f32 %3250, 2
  %3254 = fsub fast float %3249, %3237
  %3255 = fsub fast float %3251, %3075
  %3256 = fsub fast float %3252, %3076
  %3257 = fsub fast float %3253, %3077
  %3258 = fmul fast float %3254, %3247
  %3259 = fmul fast float %3255, %3247
  %3260 = fmul fast float %3256, %3247
  %3261 = fmul fast float %3257, %3247
  %3262 = fadd fast float %3258, %3237
  %3263 = fadd fast float %3259, %3075
  %3264 = fadd fast float %3260, %3076
  %3265 = fadd fast float %3261, %3077
  %3266 = extractvalue %dx.types.CBufRet.f32 %3248, 1
  %3267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3268 = extractvalue %dx.types.CBufRet.f32 %3267, 0
  %3269 = extractvalue %dx.types.CBufRet.f32 %3267, 1
  %3270 = extractvalue %dx.types.CBufRet.f32 %3267, 2
  %3271 = fsub fast float %3266, %3236
  %3272 = fsub fast float %3268, %3072
  %3273 = fsub fast float %3269, %3073
  %3274 = fsub fast float %3270, %3074
  %3275 = fmul fast float %3271, %3247
  %3276 = fmul fast float %3272, %3247
  %3277 = fmul fast float %3273, %3247
  %3278 = fmul fast float %3274, %3247
  %3279 = fadd fast float %3275, %3236
  %3280 = fadd fast float %3276, %3072
  %3281 = fadd fast float %3277, %3073
  %3282 = fadd fast float %3278, %3074
  %3283 = extractvalue %dx.types.CBufRet.f32 %3248, 2
  %3284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3285 = extractvalue %dx.types.CBufRet.f32 %3284, 0
  %3286 = extractvalue %dx.types.CBufRet.f32 %3284, 1
  %3287 = extractvalue %dx.types.CBufRet.f32 %3284, 2
  %3288 = fsub fast float %3283, %3235
  %3289 = fsub fast float %3285, %3069
  %3290 = fsub fast float %3286, %3070
  %3291 = fsub fast float %3287, %3071
  %3292 = fmul fast float %3288, %3247
  %3293 = fmul fast float %3289, %3247
  %3294 = fmul fast float %3290, %3247
  %3295 = fmul fast float %3291, %3247
  %3296 = fadd fast float %3292, %3235
  %3297 = fadd fast float %3293, %3069
  %3298 = fadd fast float %3294, %3070
  %3299 = fadd fast float %3295, %3071
  br label %3300

; <label>:3300                                    ; preds = %3243, %3234
  %3301 = phi float [ %3296, %3243 ], [ %3235, %3234 ]
  %3302 = phi float [ %3297, %3243 ], [ %3069, %3234 ]
  %3303 = phi float [ %3298, %3243 ], [ %3070, %3234 ]
  %3304 = phi float [ %3299, %3243 ], [ %3071, %3234 ]
  %3305 = phi float [ %3279, %3243 ], [ %3236, %3234 ]
  %3306 = phi float [ %3280, %3243 ], [ %3072, %3234 ]
  %3307 = phi float [ %3281, %3243 ], [ %3073, %3234 ]
  %3308 = phi float [ %3282, %3243 ], [ %3074, %3234 ]
  %3309 = phi float [ %3262, %3243 ], [ %3237, %3234 ]
  %3310 = phi float [ %3263, %3243 ], [ %3075, %3234 ]
  %3311 = phi float [ %3264, %3243 ], [ %3076, %3234 ]
  %3312 = phi float [ %3265, %3243 ], [ %3077, %3234 ]
  %3313 = extractvalue %dx.types.CBufRet.f32 %2887, 3
  %3314 = fmul fast float %3313, %3309
  %3315 = fmul fast float %3313, %3305
  %3316 = fmul fast float %3313, %3301
  %3317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3318 = extractvalue %dx.types.CBufRet.f32 %3317, 3
  %3319 = fmul fast float %3314, %3318
  %3320 = fmul fast float %3315, %3318
  %3321 = fmul fast float %3316, %3318
  %3322 = fmul fast float %3310, 1.500000e+00
  %3323 = fmul fast float %3322, %3313
  %3324 = fmul fast float %3323, %3318
  %3325 = fmul fast float %3311, 1.500000e+00
  %3326 = fmul fast float %3325, %3313
  %3327 = fmul fast float %3326, %3318
  %3328 = fmul fast float %3312, 1.500000e+00
  %3329 = fmul fast float %3328, %3313
  %3330 = fmul fast float %3329, %3318
  %3331 = fmul fast float %3306, 1.500000e+00
  %3332 = fmul fast float %3331, %3313
  %3333 = fmul fast float %3332, %3318
  %3334 = fmul fast float %3307, 1.500000e+00
  %3335 = fmul fast float %3334, %3313
  %3336 = fmul fast float %3335, %3318
  %3337 = fmul fast float %3308, 1.500000e+00
  %3338 = fmul fast float %3337, %3313
  %3339 = fmul fast float %3338, %3318
  %3340 = fmul fast float %3302, 1.500000e+00
  %3341 = fmul fast float %3340, %3313
  %3342 = fmul fast float %3341, %3318
  %3343 = fmul fast float %3303, 1.500000e+00
  %3344 = fmul fast float %3343, %3313
  %3345 = fmul fast float %3344, %3318
  %3346 = fmul fast float %3304, 1.500000e+00
  %3347 = fmul fast float %3346, %3313
  %3348 = fmul fast float %3347, %3318
  %3349 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3319)  ; FMax(a,b)
  %3350 = call float @dx.op.dot3.f32(i32 55, float %3324, float %3327, float %3330, float %3324, float %3327, float %3330)  ; Dot3(ax,ay,az,bx,by,bz)
  %3351 = fcmp fast oeq float %3350, 0.000000e+00
  %3352 = fcmp fast oeq float %3349, 0.000000e+00
  %3353 = or i1 %3352, %3351
  br i1 %3353, label %3383, label %3354

; <label>:3354                                    ; preds = %3300
  %3355 = fsub fast float -0.000000e+00, %3330
  %3356 = fsub fast float -0.000000e+00, %3324
  %3357 = call float @dx.op.unary.f32(i32 24, float %3350)  ; Sqrt(value)
  %3358 = fdiv fast float %3357, %3349
  %3359 = fcmp fast ogt float %3358, 0x3FFB6F8900000000
  %3360 = select i1 %3359, float 0x3FFB6F8900000000, float %3358
  %3361 = fmul fast float %3360, 0x3FE8A23460000000
  %3362 = call float @dx.op.unary.f32(i32 7, float %3361)  ; Saturate(value)
  %3363 = call float @dx.op.binary.f32(i32 35, float %3360, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3364 = fmul fast float %3362, %3349
  %3365 = fmul fast float %3363, 0x3FF279A740000000
  %3366 = fadd fast float %3365, -1.000000e+00
  %3367 = call float @dx.op.dot3.f32(i32 55, float %3355, float %3356, float %3327, float %3355, float %3356, float %3327)  ; Dot3(ax,ay,az,bx,by,bz)
  %3368 = call float @dx.op.unary.f32(i32 25, float %3367)  ; Rsqrt(value)
  %3369 = fmul fast float %3368, %3355
  %3370 = fmul fast float %3368, %3356
  %3371 = fmul fast float %3368, %3327
  %3372 = fmul fast float %3366, %3366
  %3373 = fsub fast float 1.000000e+00, %3372
  %3374 = fmul fast float %3363, 0x40005F8BE0000000
  %3375 = fsub fast float 0x400C5BF8A0000000, %3374
  %3376 = fdiv fast float %3364, %3375
  %3377 = fmul fast float %3376, 0x3FEE31C3C0000000
  %3378 = fmul fast float %3377, %3373
  %3379 = fmul fast float %3363, 0x3FDACB7480000000
  %3380 = fadd fast float %3379, 0xBFD7347680000000
  %3381 = fmul fast float %3380, %3376
  %3382 = fmul fast float %3381, %3373
  br label %3383

; <label>:3383                                    ; preds = %3354, %3300
  %3384 = phi float [ %3369, %3354 ], [ 0.000000e+00, %3300 ]
  %3385 = phi float [ %3370, %3354 ], [ 0.000000e+00, %3300 ]
  %3386 = phi float [ %3371, %3354 ], [ 0.000000e+00, %3300 ]
  %3387 = phi float [ %3378, %3354 ], [ 0.000000e+00, %3300 ]
  %3388 = phi float [ %3382, %3354 ], [ 0.000000e+00, %3300 ]
  %3389 = call float @dx.op.dot3.f32(i32 55, float %3384, float %3385, float %3386, float %2331, float %2332, float %2333)  ; Dot3(ax,ay,az,bx,by,bz)
  %3390 = fmul fast float %3389, 0x3FDF454380000000
  %3391 = fmul fast float %3389, %3389
  %3392 = fmul fast float %3391, 0x3FEE471020000000
  %3393 = fadd fast float %3392, 0xBFD42F6020000000
  %3394 = fmul fast float %3349, 0x3FD20DD760000000
  %3395 = fmul fast float %3393, %3388
  %3396 = fadd fast float %3395, %3394
  %3397 = fmul fast float %3390, %3387
  %3398 = fadd fast float %3396, %3397
  %3399 = fsub fast float %3396, %3397
  %3400 = call float @dx.op.dot3.f32(i32 55, float %3384, float %3385, float %3386, float %2345, float %2346, float %2347)  ; Dot3(ax,ay,az,bx,by,bz)
  %3401 = fmul fast float %3400, 0x3FDF454380000000
  %3402 = fmul fast float %3400, %3400
  %3403 = fmul fast float %3402, 0x3FEE471020000000
  %3404 = fadd fast float %3403, 0xBFD42F6020000000
  %3405 = call float @dx.op.dot3.f32(i32 55, float %3349, float %3387, float %3388, float 0x3FD20DD760000000, float %3401, float %3404)  ; Dot3(ax,ay,az,bx,by,bz)
  %3406 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3320)  ; FMax(a,b)
  %3407 = call float @dx.op.dot3.f32(i32 55, float %3333, float %3336, float %3339, float %3333, float %3336, float %3339)  ; Dot3(ax,ay,az,bx,by,bz)
  %3408 = fcmp fast oeq float %3407, 0.000000e+00
  %3409 = fcmp fast oeq float %3406, 0.000000e+00
  %3410 = or i1 %3409, %3408
  br i1 %3410, label %3440, label %3411

; <label>:3411                                    ; preds = %3383
  %3412 = fsub fast float -0.000000e+00, %3339
  %3413 = fsub fast float -0.000000e+00, %3333
  %3414 = call float @dx.op.unary.f32(i32 24, float %3407)  ; Sqrt(value)
  %3415 = fdiv fast float %3414, %3406
  %3416 = fcmp fast ogt float %3415, 0x3FFB6F8900000000
  %3417 = select i1 %3416, float 0x3FFB6F8900000000, float %3415
  %3418 = fmul fast float %3417, 0x3FE8A23460000000
  %3419 = call float @dx.op.unary.f32(i32 7, float %3418)  ; Saturate(value)
  %3420 = call float @dx.op.binary.f32(i32 35, float %3417, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3421 = fmul fast float %3419, %3406
  %3422 = fmul fast float %3420, 0x3FF279A740000000
  %3423 = fadd fast float %3422, -1.000000e+00
  %3424 = call float @dx.op.dot3.f32(i32 55, float %3412, float %3413, float %3336, float %3412, float %3413, float %3336)  ; Dot3(ax,ay,az,bx,by,bz)
  %3425 = call float @dx.op.unary.f32(i32 25, float %3424)  ; Rsqrt(value)
  %3426 = fmul fast float %3425, %3412
  %3427 = fmul fast float %3425, %3413
  %3428 = fmul fast float %3425, %3336
  %3429 = fmul fast float %3423, %3423
  %3430 = fsub fast float 1.000000e+00, %3429
  %3431 = fmul fast float %3420, 0x40005F8BE0000000
  %3432 = fsub fast float 0x400C5BF8A0000000, %3431
  %3433 = fdiv fast float %3421, %3432
  %3434 = fmul fast float %3433, 0x3FEE31C3C0000000
  %3435 = fmul fast float %3434, %3430
  %3436 = fmul fast float %3420, 0x3FDACB7480000000
  %3437 = fadd fast float %3436, 0xBFD7347680000000
  %3438 = fmul fast float %3437, %3433
  %3439 = fmul fast float %3438, %3430
  br label %3440

; <label>:3440                                    ; preds = %3411, %3383
  %3441 = phi float [ %3426, %3411 ], [ 0.000000e+00, %3383 ]
  %3442 = phi float [ %3427, %3411 ], [ 0.000000e+00, %3383 ]
  %3443 = phi float [ %3428, %3411 ], [ 0.000000e+00, %3383 ]
  %3444 = phi float [ %3435, %3411 ], [ 0.000000e+00, %3383 ]
  %3445 = phi float [ %3439, %3411 ], [ 0.000000e+00, %3383 ]
  %3446 = call float @dx.op.dot3.f32(i32 55, float %3441, float %3442, float %3443, float %2331, float %2332, float %2333)  ; Dot3(ax,ay,az,bx,by,bz)
  %3447 = fmul fast float %3446, 0x3FDF454380000000
  %3448 = fmul fast float %3446, %3446
  %3449 = fmul fast float %3448, 0x3FEE471020000000
  %3450 = fadd fast float %3449, 0xBFD42F6020000000
  %3451 = fmul fast float %3406, 0x3FD20DD760000000
  %3452 = fmul fast float %3450, %3445
  %3453 = fadd fast float %3452, %3451
  %3454 = fmul fast float %3447, %3444
  %3455 = fadd fast float %3453, %3454
  %3456 = fsub fast float %3453, %3454
  %3457 = call float @dx.op.dot3.f32(i32 55, float %3441, float %3442, float %3443, float %2345, float %2346, float %2347)  ; Dot3(ax,ay,az,bx,by,bz)
  %3458 = fmul fast float %3457, 0x3FDF454380000000
  %3459 = fmul fast float %3457, %3457
  %3460 = fmul fast float %3459, 0x3FEE471020000000
  %3461 = fadd fast float %3460, 0xBFD42F6020000000
  %3462 = call float @dx.op.dot3.f32(i32 55, float %3406, float %3444, float %3445, float 0x3FD20DD760000000, float %3458, float %3461)  ; Dot3(ax,ay,az,bx,by,bz)
  %3463 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3321)  ; FMax(a,b)
  %3464 = call float @dx.op.dot3.f32(i32 55, float %3342, float %3345, float %3348, float %3342, float %3345, float %3348)  ; Dot3(ax,ay,az,bx,by,bz)
  %3465 = fcmp fast oeq float %3464, 0.000000e+00
  %3466 = fcmp fast oeq float %3463, 0.000000e+00
  %3467 = or i1 %3466, %3465
  br i1 %3467, label %3497, label %3468

; <label>:3468                                    ; preds = %3440
  %3469 = fsub fast float -0.000000e+00, %3348
  %3470 = fsub fast float -0.000000e+00, %3342
  %3471 = call float @dx.op.unary.f32(i32 24, float %3464)  ; Sqrt(value)
  %3472 = fdiv fast float %3471, %3463
  %3473 = fcmp fast ogt float %3472, 0x3FFB6F8900000000
  %3474 = select i1 %3473, float 0x3FFB6F8900000000, float %3472
  %3475 = fmul fast float %3474, 0x3FE8A23460000000
  %3476 = call float @dx.op.unary.f32(i32 7, float %3475)  ; Saturate(value)
  %3477 = call float @dx.op.binary.f32(i32 35, float %3474, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3478 = fmul fast float %3476, %3463
  %3479 = fmul fast float %3477, 0x3FF279A740000000
  %3480 = fadd fast float %3479, -1.000000e+00
  %3481 = call float @dx.op.dot3.f32(i32 55, float %3469, float %3470, float %3345, float %3469, float %3470, float %3345)  ; Dot3(ax,ay,az,bx,by,bz)
  %3482 = call float @dx.op.unary.f32(i32 25, float %3481)  ; Rsqrt(value)
  %3483 = fmul fast float %3482, %3469
  %3484 = fmul fast float %3482, %3470
  %3485 = fmul fast float %3482, %3345
  %3486 = fmul fast float %3480, %3480
  %3487 = fsub fast float 1.000000e+00, %3486
  %3488 = fmul fast float %3477, 0x40005F8BE0000000
  %3489 = fsub fast float 0x400C5BF8A0000000, %3488
  %3490 = fdiv fast float %3478, %3489
  %3491 = fmul fast float %3490, 0x3FEE31C3C0000000
  %3492 = fmul fast float %3491, %3487
  %3493 = fmul fast float %3477, 0x3FDACB7480000000
  %3494 = fadd fast float %3493, 0xBFD7347680000000
  %3495 = fmul fast float %3494, %3490
  %3496 = fmul fast float %3495, %3487
  br label %3497

; <label>:3497                                    ; preds = %3468, %3440
  %3498 = phi float [ %3483, %3468 ], [ 0.000000e+00, %3440 ]
  %3499 = phi float [ %3484, %3468 ], [ 0.000000e+00, %3440 ]
  %3500 = phi float [ %3485, %3468 ], [ 0.000000e+00, %3440 ]
  %3501 = phi float [ %3492, %3468 ], [ 0.000000e+00, %3440 ]
  %3502 = phi float [ %3496, %3468 ], [ 0.000000e+00, %3440 ]
  %3503 = call float @dx.op.dot3.f32(i32 55, float %3498, float %3499, float %3500, float %2331, float %2332, float %2333)  ; Dot3(ax,ay,az,bx,by,bz)
  %3504 = fmul fast float %3503, 0x3FDF454380000000
  %3505 = fmul fast float %3503, %3503
  %3506 = fmul fast float %3505, 0x3FEE471020000000
  %3507 = fadd fast float %3506, 0xBFD42F6020000000
  %3508 = fmul fast float %3463, 0x3FD20DD760000000
  %3509 = fmul fast float %3507, %3502
  %3510 = fadd fast float %3509, %3508
  %3511 = fmul fast float %3504, %3501
  %3512 = fadd fast float %3510, %3511
  %3513 = fsub fast float %3510, %3511
  %3514 = call float @dx.op.dot3.f32(i32 55, float %3498, float %3499, float %3500, float %2345, float %2346, float %2347)  ; Dot3(ax,ay,az,bx,by,bz)
  %3515 = fmul fast float %3514, 0x3FDF454380000000
  %3516 = fmul fast float %3514, %3514
  %3517 = fmul fast float %3516, 0x3FEE471020000000
  %3518 = fadd fast float %3517, 0xBFD42F6020000000
  %3519 = call float @dx.op.dot3.f32(i32 55, float %3463, float %3501, float %3502, float 0x3FD20DD760000000, float %3515, float %3518)  ; Dot3(ax,ay,az,bx,by,bz)
  %3520 = call float @dx.op.binary.f32(i32 35, float %3398, float 0.000000e+00)  ; FMax(a,b)
  %3521 = call float @dx.op.binary.f32(i32 35, float %3455, float 0.000000e+00)  ; FMax(a,b)
  %3522 = call float @dx.op.binary.f32(i32 35, float %3512, float 0.000000e+00)  ; FMax(a,b)
  %3523 = call float @dx.op.binary.f32(i32 35, float %3399, float 0.000000e+00)  ; FMax(a,b)
  %3524 = call float @dx.op.binary.f32(i32 35, float %3456, float 0.000000e+00)  ; FMax(a,b)
  %3525 = call float @dx.op.binary.f32(i32 35, float %3513, float 0.000000e+00)  ; FMax(a,b)
  %3526 = call float @dx.op.binary.f32(i32 35, float %3405, float 0.000000e+00)  ; FMax(a,b)
  %3527 = call float @dx.op.binary.f32(i32 35, float %3462, float 0.000000e+00)  ; FMax(a,b)
  %3528 = call float @dx.op.binary.f32(i32 35, float %3519, float 0.000000e+00)  ; FMax(a,b)
  %3529 = fsub fast float %2719, %3520
  %3530 = fsub fast float %2720, %3521
  %3531 = fsub fast float %2721, %3522
  %3532 = fmul fast float %3529, %2397
  %3533 = fmul fast float %3530, %2397
  %3534 = fmul fast float %3531, %2397
  %3535 = fadd fast float %3532, %3520
  %3536 = fadd fast float %3533, %3521
  %3537 = fadd fast float %3534, %3522
  %3538 = fsub fast float %2716, %3523
  %3539 = fsub fast float %2717, %3524
  %3540 = fsub fast float %2718, %3525
  %3541 = fmul fast float %3538, %2397
  %3542 = fmul fast float %3539, %2397
  %3543 = fmul fast float %3540, %2397
  %3544 = fadd fast float %3541, %3523
  %3545 = fadd fast float %3542, %3524
  %3546 = fadd fast float %3543, %3525
  %3547 = fsub fast float %2713, %3526
  %3548 = fsub fast float %2714, %3527
  %3549 = fsub fast float %2715, %3528
  %3550 = fmul fast float %3547, %2397
  %3551 = fmul fast float %3548, %2397
  %3552 = fmul fast float %3549, %2397
  %3553 = fadd fast float %3550, %3526
  %3554 = fadd fast float %3551, %3527
  %3555 = fadd fast float %3552, %3528
  br label %3556

; <label>:3556                                    ; preds = %3497, %2712
  %3557 = phi float [ %3553, %3497 ], [ %2713, %2712 ]
  %3558 = phi float [ %3554, %3497 ], [ %2714, %2712 ]
  %3559 = phi float [ %3555, %3497 ], [ %2715, %2712 ]
  %3560 = phi float [ %3544, %3497 ], [ %2716, %2712 ]
  %3561 = phi float [ %3545, %3497 ], [ %2717, %2712 ]
  %3562 = phi float [ %3546, %3497 ], [ %2718, %2712 ]
  %3563 = phi float [ %3535, %3497 ], [ %2719, %2712 ]
  %3564 = phi float [ %3536, %3497 ], [ %2720, %2712 ]
  %3565 = phi float [ %3537, %3497 ], [ %2721, %2712 ]
  %3566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3567 = extractvalue %dx.types.CBufRet.f32 %3566, 0
  %3568 = call float @dx.op.binary.f32(i32 36, float %2325, float %3567)  ; FMin(a,b)
  %3569 = fsub fast float 1.000000e+00, %2348
  %3570 = fmul fast float %3568, %3569
  %3571 = fsub fast float 1.000000e+00, %3570
  %3572 = bitcast float %3571 to i32
  %3573 = sub nsw i32 2129859010, %3572
  %3574 = bitcast i32 %3573 to float
  %3575 = call float @dx.op.binary.f32(i32 36, float %2326, float %3567)  ; FMin(a,b)
  %3576 = fmul fast float %3575, %3569
  %3577 = fsub fast float 1.000000e+00, %3576
  %3578 = bitcast float %3577 to i32
  %3579 = sub nsw i32 2129859010, %3578
  %3580 = bitcast i32 %3579 to float
  %3581 = call float @dx.op.binary.f32(i32 36, float %2327, float %3567)  ; FMin(a,b)
  %3582 = fmul fast float %3581, %3569
  %3583 = fsub fast float 1.000000e+00, %3582
  %3584 = bitcast float %3583 to i32
  %3585 = sub nsw i32 2129859010, %3584
  %3586 = bitcast i32 %3585 to float
  %3587 = fmul fast float %3563, %2348
  %3588 = fmul fast float %3587, %3574
  %3589 = fmul fast float %3564, %2348
  %3590 = fmul fast float %3589, %3580
  %3591 = fmul fast float %3565, %2348
  %3592 = fmul fast float %3591, %3586
  %3593 = call float @dx.op.binary.f32(i32 36, float %2328, float %3567)  ; FMin(a,b)
  %3594 = fmul fast float %3593, %3569
  %3595 = fsub fast float 1.000000e+00, %3594
  %3596 = bitcast float %3595 to i32
  %3597 = sub nsw i32 2129859010, %3596
  %3598 = bitcast i32 %3597 to float
  %3599 = call float @dx.op.binary.f32(i32 36, float %2329, float %3567)  ; FMin(a,b)
  %3600 = fmul fast float %3599, %3569
  %3601 = fsub fast float 1.000000e+00, %3600
  %3602 = bitcast float %3601 to i32
  %3603 = sub nsw i32 2129859010, %3602
  %3604 = bitcast i32 %3603 to float
  %3605 = call float @dx.op.binary.f32(i32 36, float %2337, float %3567)  ; FMin(a,b)
  %3606 = fmul fast float %3605, %3569
  %3607 = fsub fast float 1.000000e+00, %3606
  %3608 = bitcast float %3607 to i32
  %3609 = sub nsw i32 2129859010, %3608
  %3610 = bitcast i32 %3609 to float
  %3611 = fmul fast float %3557, %2348
  %3612 = fmul fast float %3611, %3598
  %3613 = fmul fast float %3558, %2348
  %3614 = fmul fast float %3613, %3604
  %3615 = fmul fast float %3559, %2348
  %3616 = fmul fast float %3615, %3610
  %3617 = call float @dx.op.dot3.f32(i32 55, float %3588, float %3590, float %3592, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3618 = select i1 %228, float 0.000000e+00, float %3588
  %3619 = select i1 %228, float %3617, float %3590
  %3620 = select i1 %228, float 0.000000e+00, float %3592
  %3621 = call float @dx.op.dot3.f32(i32 55, float %3560, float %3561, float %3562, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3622 = select i1 %228, float 0.000000e+00, float %3560
  %3623 = select i1 %228, float %3621, float %3561
  %3624 = select i1 %228, float 0.000000e+00, float %3562
  %3625 = call float @dx.op.dot3.f32(i32 55, float %3612, float %3614, float %3616, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3626 = select i1 %228, float 0.000000e+00, float %3612
  %3627 = select i1 %228, float %3625, float %3614
  %3628 = select i1 %228, float 0.000000e+00, float %3616
  %3629 = fmul fast float %1076, %1076
  %3630 = call float @dx.op.unary.f32(i32 7, float %3629)  ; Saturate(value)
  %3631 = fmul fast float %2339, 9.843750e-01
  %3632 = fmul fast float %2334, 9.843750e-01
  %3633 = fadd fast float %3631, 7.812500e-03
  %3634 = fadd fast float %3632, 7.812500e-03
  %3635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %3633, float %3634, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3636 = extractvalue %dx.types.ResRet.f32 %3635, 0
  %3637 = extractvalue %dx.types.ResRet.f32 %3635, 1
  %3638 = extractvalue %dx.types.ResRet.f32 %3635, 2
  %3639 = extractvalue %dx.types.ResRet.f32 %3635, 3
  %3640 = fsub fast float 1.000000e+00, %3630
  %3641 = fsub fast float %3638, %3636
  %3642 = fsub fast float %3639, %3637
  %3643 = fmul fast float %3641, %3640
  %3644 = fmul fast float %3642, %3640
  %3645 = fadd fast float %3643, %3636
  %3646 = fadd fast float %3644, %3637
  %3647 = fmul fast float %3645, %2328
  %3648 = fmul fast float %3645, %2329
  %3649 = fmul fast float %3645, %2337
  %3650 = fadd fast float %3647, %3646
  %3651 = fadd fast float %3648, %3646
  %3652 = fadd fast float %3649, %3646
  %3653 = fcmp fast ogt float %1670, 0.000000e+00
  br i1 %3653, label %3654, label %3680

; <label>:3654                                    ; preds = %3556
  %3655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1670, float %2339, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3656 = extractvalue %dx.types.ResRet.f32 %3655, 0
  %3657 = extractvalue %dx.types.ResRet.f32 %3655, 1
  %3658 = extractvalue %dx.types.ResRet.f32 %3655, 2
  %3659 = fadd fast float %3656, -5.000000e-01
  %3660 = fadd fast float %3657, -5.000000e-01
  %3661 = fadd fast float %3658, -5.000000e-01
  %3662 = fsub fast float 1.000000e+00, %2328
  %3663 = fsub fast float 1.000000e+00, %2329
  %3664 = fsub fast float 1.000000e+00, %2337
  %3665 = fmul fast float %2328, 4.000000e+00
  %3666 = fmul fast float %3665, %3662
  %3667 = fmul fast float %3666, %3659
  %3668 = fmul fast float %2329, 4.000000e+00
  %3669 = fmul fast float %3668, %3663
  %3670 = fmul fast float %3669, %3660
  %3671 = fmul fast float %2337, 4.000000e+00
  %3672 = fmul fast float %3671, %3664
  %3673 = fmul fast float %3672, %3661
  %3674 = fadd fast float %3667, %3650
  %3675 = fadd fast float %3670, %3651
  %3676 = fadd fast float %3673, %3652
  %3677 = call float @dx.op.unary.f32(i32 7, float %3674)  ; Saturate(value)
  %3678 = call float @dx.op.unary.f32(i32 7, float %3675)  ; Saturate(value)
  %3679 = call float @dx.op.unary.f32(i32 7, float %3676)  ; Saturate(value)
  br label %3680

; <label>:3680                                    ; preds = %3654, %3556
  %3681 = phi float [ %3677, %3654 ], [ %3650, %3556 ]
  %3682 = phi float [ %3678, %3654 ], [ %3651, %3556 ]
  %3683 = phi float [ %3679, %3654 ], [ %3652, %3556 ]
  %3684 = call float @dx.op.binary.f32(i32 35, float %3682, float %3683)  ; FMax(a,b)
  %3685 = call float @dx.op.binary.f32(i32 35, float %3681, float %3684)  ; FMax(a,b)
  %3686 = fsub fast float 1.000000e+00, %3685
  %3687 = call float @dx.op.dot3.f32(i32 55, float %2325, float %2326, float %2327, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3688 = fcmp fast ogt float %3687, 0x3E7FF19E20000000
  %3689 = fdiv fast float 1.000000e+00, %3687
  %3690 = select i1 %3688, float %3689, float 0.000000e+00
  %3691 = fmul fast float %3690, %2325
  %3692 = fmul fast float %3690, %2326
  %3693 = fmul fast float %3690, %2327
  %3694 = fadd fast float %3691, -1.000000e+00
  %3695 = fadd fast float %3692, -1.000000e+00
  %3696 = fadd fast float %3693, -1.000000e+00
  %3697 = fmul fast float %3694, 5.000000e-01
  %3698 = fmul fast float %3695, 5.000000e-01
  %3699 = fmul fast float %3696, 5.000000e-01
  %3700 = fadd fast float %3697, 1.000000e+00
  %3701 = fadd fast float %3698, 1.000000e+00
  %3702 = fadd fast float %3699, 1.000000e+00
  %3703 = call float @dx.op.binary.f32(i32 35, float %2339, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3704 = fdiv fast float %1076, %3703
  %3705 = fcmp fast olt float %1743, 1.270000e+02
  %3706 = fcmp fast olt float %1744, 1.270000e+02
  %3707 = fcmp fast olt float %1745, 1.270000e+02
  %3708 = fmul fast float %1743, 0xBFF7154760000000
  %3709 = fmul fast float %3708, %3704
  %3710 = fmul fast float %1744, 0xBFF7154760000000
  %3711 = fmul fast float %3710, %3704
  %3712 = fmul fast float %1745, 0xBFF7154760000000
  %3713 = fmul fast float %3712, %3704
  %3714 = call float @dx.op.unary.f32(i32 21, float %3709)  ; Exp(value)
  %3715 = call float @dx.op.unary.f32(i32 21, float %3711)  ; Exp(value)
  %3716 = call float @dx.op.unary.f32(i32 21, float %3713)  ; Exp(value)
  %3717 = call float @dx.op.unary.f32(i32 7, float %3714)  ; Saturate(value)
  %3718 = call float @dx.op.unary.f32(i32 7, float %3715)  ; Saturate(value)
  %3719 = call float @dx.op.unary.f32(i32 7, float %3716)  ; Saturate(value)
  %3720 = select i1 %3705, float %3717, float 0.000000e+00
  %3721 = select i1 %3706, float %3718, float 0.000000e+00
  %3722 = select i1 %3707, float %3719, float 0.000000e+00
  %3723 = fmul fast float %3720, %3686
  %3724 = fmul fast float %3721, %3686
  %3725 = fmul fast float %3722, %3686
  %3726 = fadd fast float %3723, -1.000000e+00
  %3727 = fadd fast float %3724, -1.000000e+00
  %3728 = fadd fast float %3725, -1.000000e+00
  %3729 = fmul fast float %3726, %1693
  %3730 = fmul fast float %3727, %1693
  %3731 = fmul fast float %3728, %1693
  %3732 = fmul fast float %3681, %3626
  %3733 = fmul fast float %3682, %3627
  %3734 = fmul fast float %3683, %3628
  %3735 = fsub fast float 1.000000e+00, %2339
  %3736 = bitcast float %3735 to i32
  %3737 = sitofp i32 %3736 to float
  %3738 = fmul fast float %3737, 5.000000e+00
  %3739 = fadd fast float %3738, 0xC1EFBF8940000000
  %3740 = fptosi float %3739 to i32
  %3741 = bitcast i32 %3740 to float
  %3742 = fmul fast float %3741, %1669
  %3743 = fmul fast float %3618, %3742
  %3744 = fmul fast float %3743, %3686
  %3745 = fmul fast float %3744, %3700
  %3746 = fmul fast float %3619, %3742
  %3747 = fmul fast float %3746, %3686
  %3748 = fmul fast float %3747, %3701
  %3749 = fmul fast float %3620, %3742
  %3750 = fmul fast float %3749, %3686
  %3751 = fmul fast float %3750, %3702
  %3752 = fadd fast float %3732, %1674
  %3753 = fadd fast float %3752, %3745
  %3754 = fmul fast float %3753, %1693
  %3755 = fadd fast float %3733, %1675
  %3756 = fadd fast float %3755, %3748
  %3757 = fmul fast float %3756, %1693
  %3758 = fadd fast float %3734, %1676
  %3759 = fadd fast float %3758, %3751
  %3760 = fmul fast float %3759, %1693
  %3761 = fmul fast float %2329, 0x4012D0A400000000
  %3762 = fadd fast float %3731, 1.000000e+00
  %3763 = fadd fast float %3730, 1.000000e+00
  %3764 = fadd fast float %3729, 1.000000e+00
  %3765 = fmul fast float %3686, %3620
  %3766 = fmul fast float %3686, %3619
  %3767 = fmul fast float %3686, %3618
  %3768 = fsub fast float 1.000000e+00, %2334
  %3769 = fmul fast float %3768, %1693
  %3770 = fsub fast float 1.000000e+00, %3769
  %3771 = call float @dx.op.unary.f32(i32 7, float %3770)  ; Saturate(value)
  %3772 = fsub fast float 1.000000e+00, %3771
  %3773 = fadd fast float %3761, 0x3FDB6377A0000000
  %3774 = fmul fast float %3772, %3773
  %3775 = call float @dx.op.dot3.f32(i32 55, float %1761, float %1762, float %1763, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3776 = fadd fast float %3774, %3775
  %3777 = call float @dx.op.unary.f32(i32 7, float %3776)  ; Saturate(value)
  %3778 = call float @dx.op.binary.f32(i32 35, float %3777, float 0x3F847AE140000000)  ; FMax(a,b)
  %3779 = fmul fast float %3778, %3778
  %3780 = fmul fast float %3779, %3779
  %3781 = fmul fast float %3780, 0xC00A935000000000
  %3782 = call float @dx.op.unary.f32(i32 21, float %3781)  ; Exp(value)
  %3783 = fsub fast float 1.000000e+00, %3782
  %3784 = fmul fast float %3764, %3622
  %3785 = fmul fast float %3784, %3783
  %3786 = fmul fast float %3763, %3623
  %3787 = fmul fast float %3786, %3783
  %3788 = fmul fast float %3762, %3624
  %3789 = fmul fast float %3788, %3783
  %3790 = fadd fast float %3785, %3767
  %3791 = fmul fast float %3790, %1693
  %3792 = fadd fast float %3787, %3766
  %3793 = fmul fast float %3792, %1693
  %3794 = fadd fast float %3789, %3765
  %3795 = fmul fast float %3794, %1693
  %3796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3797 = extractvalue %dx.types.CBufRet.f32 %3796, 3
  %3798 = fcmp fast oeq float %3797, 0.000000e+00
  br i1 %3798, label %4997, label %3799

; <label>:3799                                    ; preds = %3680
  %3800 = extractvalue %dx.types.CBufRet.f32 %3796, 0
  %3801 = extractvalue %dx.types.CBufRet.f32 %3796, 1
  %3802 = extractvalue %dx.types.CBufRet.f32 %3796, 2
  %3803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3804 = extractvalue %dx.types.CBufRet.f32 %3803, 0
  %3805 = extractvalue %dx.types.CBufRet.f32 %3803, 1
  %3806 = extractvalue %dx.types.CBufRet.f32 %3803, 2
  %3807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3808 = extractvalue %dx.types.CBufRet.f32 %3807, 0
  %3809 = extractvalue %dx.types.CBufRet.f32 %3807, 1
  %3810 = call float @dx.op.dot3.f32(i32 55, float %3804, float %3805, float %3806, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3811 = select i1 %228, float %3808, float %3804
  %3812 = select i1 %228, float %3810, float %3805
  %3813 = select i1 %228, float %3809, float %3806
  %3814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3815 = extractvalue %dx.types.CBufRet.f32 %3814, 2
  %3816 = fmul fast float %3815, %70
  %3817 = fmul fast float %3815, %71
  %3818 = fmul fast float %3815, %72
  %3819 = fadd fast float %3816, %137
  %3820 = fadd fast float %3817, %138
  %3821 = fadd fast float %3818, %139
  %3822 = fcmp fast olt float %3797, 0.000000e+00
  br i1 %3822, label %4444, label %3823

; <label>:3823                                    ; preds = %3799
  %3824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3825 = extractvalue %dx.types.CBufRet.f32 %3824, 0
  %3826 = extractvalue %dx.types.CBufRet.f32 %3824, 1
  %3827 = extractvalue %dx.types.CBufRet.f32 %3824, 2
  %3828 = extractvalue %dx.types.CBufRet.f32 %3824, 3
  %3829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3830 = extractvalue %dx.types.CBufRet.f32 %3829, 0
  %3831 = extractvalue %dx.types.CBufRet.f32 %3829, 1
  %3832 = extractvalue %dx.types.CBufRet.f32 %3829, 2
  %3833 = extractvalue %dx.types.CBufRet.f32 %3829, 3
  %3834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3835 = extractvalue %dx.types.CBufRet.f32 %3834, 0
  %3836 = extractvalue %dx.types.CBufRet.f32 %3834, 1
  %3837 = extractvalue %dx.types.CBufRet.f32 %3834, 2
  %3838 = extractvalue %dx.types.CBufRet.f32 %3834, 3
  %3839 = fmul fast float %3825, %3819
  %3840 = call float @dx.op.tertiary.f32(i32 46, float %3820, float %3826, float %3839)  ; FMad(a,b,c)
  %3841 = call float @dx.op.tertiary.f32(i32 46, float %3821, float %3827, float %3840)  ; FMad(a,b,c)
  %3842 = fadd fast float %3841, %3828
  %3843 = fmul fast float %3830, %3819
  %3844 = call float @dx.op.tertiary.f32(i32 46, float %3820, float %3831, float %3843)  ; FMad(a,b,c)
  %3845 = call float @dx.op.tertiary.f32(i32 46, float %3821, float %3832, float %3844)  ; FMad(a,b,c)
  %3846 = fadd fast float %3845, %3833
  %3847 = fmul fast float %3835, %3819
  %3848 = call float @dx.op.tertiary.f32(i32 46, float %3820, float %3836, float %3847)  ; FMad(a,b,c)
  %3849 = call float @dx.op.tertiary.f32(i32 46, float %3821, float %3837, float %3848)  ; FMad(a,b,c)
  %3850 = fadd fast float %3849, %3838
  %3851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3852 = extractvalue %dx.types.CBufRet.f32 %3851, 0
  %3853 = extractvalue %dx.types.CBufRet.f32 %3851, 1
  %3854 = extractvalue %dx.types.CBufRet.f32 %3851, 3
  %3855 = fmul fast float %3854, %3842
  %3856 = fmul fast float %3854, %3846
  %3857 = fadd fast float %3855, %3852
  %3858 = fadd fast float %3856, %3853
  %3859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3860 = extractvalue %dx.types.CBufRet.f32 %3859, 0
  %3861 = extractvalue %dx.types.CBufRet.f32 %3859, 1
  %3862 = extractvalue %dx.types.CBufRet.f32 %3859, 3
  %3863 = fmul fast float %3862, %3842
  %3864 = fmul fast float %3862, %3846
  %3865 = fadd fast float %3863, %3860
  %3866 = fadd fast float %3864, %3861
  %3867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3868 = extractvalue %dx.types.CBufRet.f32 %3867, 1
  %3869 = fsub fast float %3868, %3850
  %3870 = extractvalue %dx.types.CBufRet.f32 %3867, 2
  %3871 = fmul fast float %3869, %3870
  %3872 = fsub fast float 1.000000e+00, %3871
  %3873 = call float @dx.op.unary.f32(i32 7, float %3872)  ; Saturate(value)
  %3874 = extractvalue %dx.types.CBufRet.f32 %3859, 2
  %3875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3876 = extractvalue %dx.types.CBufRet.f32 %3875, 2
  %3877 = fadd fast float %3876, %3874
  %3878 = fcmp fast ogt float %3877, 0.000000e+00
  br i1 %3878, label %3879, label %3903

; <label>:3879                                    ; preds = %3823
  %3880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3881 = extractvalue %dx.types.CBufRet.f32 %3880, 0
  %3882 = extractvalue %dx.types.CBufRet.f32 %3880, 1
  %3883 = fsub fast float %3865, %3881
  %3884 = fsub fast float %3866, %3882
  %3885 = fcmp fast olt float %3883, 0.000000e+00
  %3886 = fcmp fast olt float %3884, 0.000000e+00
  %3887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3888 = extractvalue %dx.types.CBufRet.f32 %3887, 0
  %3889 = extractvalue %dx.types.CBufRet.f32 %3887, 1
  %3890 = extractvalue %dx.types.CBufRet.f32 %3887, 2
  %3891 = extractvalue %dx.types.CBufRet.f32 %3887, 3
  %3892 = select i1 %3885, float %3888, float %3890
  %3893 = select i1 %3886, float %3889, float %3891
  %3894 = fmul fast float %3892, %3883
  %3895 = fmul fast float %3893, %3884
  %3896 = call float @dx.op.unary.f32(i32 6, float %3894)  ; FAbs(value)
  %3897 = call float @dx.op.unary.f32(i32 6, float %3895)  ; FAbs(value)
  %3898 = extractvalue %dx.types.CBufRet.f32 %3814, 0
  %3899 = call float @dx.op.binary.f32(i32 35, float %3896, float %3897)  ; FMax(a,b)
  %3900 = fsub fast float %3898, %3899
  %3901 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3902 = fmul fast float %3901, %3873
  br label %3903

; <label>:3903                                    ; preds = %3879, %3823
  %3904 = phi float [ %3902, %3879 ], [ 0.000000e+00, %3823 ]
  %3905 = extractvalue %dx.types.CBufRet.f32 %3851, 2
  %3906 = extractvalue %dx.types.CBufRet.f32 %3875, 1
  %3907 = fadd fast float %3906, %3905
  %3908 = fcmp fast ogt float %3907, 0.000000e+00
  %3909 = extractvalue %dx.types.CBufRet.f32 %3814, 0
  br i1 %3908, label %3910, label %3933

; <label>:3910                                    ; preds = %3903
  %3911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3912 = extractvalue %dx.types.CBufRet.f32 %3911, 0
  %3913 = extractvalue %dx.types.CBufRet.f32 %3911, 1
  %3914 = fsub fast float %3857, %3912
  %3915 = fsub fast float %3858, %3913
  %3916 = fcmp fast olt float %3914, 0.000000e+00
  %3917 = fcmp fast olt float %3915, 0.000000e+00
  %3918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3919 = extractvalue %dx.types.CBufRet.f32 %3918, 0
  %3920 = extractvalue %dx.types.CBufRet.f32 %3918, 1
  %3921 = extractvalue %dx.types.CBufRet.f32 %3918, 2
  %3922 = extractvalue %dx.types.CBufRet.f32 %3918, 3
  %3923 = select i1 %3916, float %3919, float %3921
  %3924 = select i1 %3917, float %3920, float %3922
  %3925 = fmul fast float %3923, %3914
  %3926 = fmul fast float %3924, %3915
  %3927 = call float @dx.op.unary.f32(i32 6, float %3925)  ; FAbs(value)
  %3928 = call float @dx.op.unary.f32(i32 6, float %3926)  ; FAbs(value)
  %3929 = call float @dx.op.binary.f32(i32 35, float %3927, float %3928)  ; FMax(a,b)
  %3930 = fsub fast float %3909, %3929
  %3931 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3932 = fmul fast float %3931, %3873
  br label %3933

; <label>:3933                                    ; preds = %3910, %3903
  %3934 = phi float [ %3932, %3910 ], [ 0.000000e+00, %3903 ]
  %3935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3936 = extractvalue %dx.types.CBufRet.f32 %3935, 1
  %3937 = call float @dx.op.unary.f32(i32 7, float %3936)  ; Saturate(value)
  %3938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3939 = extractvalue %dx.types.CBufRet.f32 %3938, 0
  %3940 = extractvalue %dx.types.CBufRet.f32 %3938, 1
  %3941 = fsub fast float %3842, %3939
  %3942 = fsub fast float %3846, %3940
  %3943 = fcmp fast olt float %3941, 0.000000e+00
  %3944 = fcmp fast olt float %3942, 0.000000e+00
  %3945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3946 = extractvalue %dx.types.CBufRet.f32 %3945, 0
  %3947 = extractvalue %dx.types.CBufRet.f32 %3945, 1
  %3948 = extractvalue %dx.types.CBufRet.f32 %3945, 2
  %3949 = extractvalue %dx.types.CBufRet.f32 %3945, 3
  %3950 = select i1 %3943, float %3946, float %3948
  %3951 = select i1 %3944, float %3947, float %3949
  %3952 = fmul fast float %3950, %3941
  %3953 = fmul fast float %3951, %3942
  %3954 = call float @dx.op.unary.f32(i32 6, float %3952)  ; FAbs(value)
  %3955 = call float @dx.op.unary.f32(i32 6, float %3953)  ; FAbs(value)
  %3956 = call float @dx.op.binary.f32(i32 35, float %3954, float %3955)  ; FMax(a,b)
  %3957 = fsub fast float %3909, %3956
  %3958 = call float @dx.op.unary.f32(i32 7, float %3957)  ; Saturate(value)
  %3959 = call float @dx.op.binary.f32(i32 36, float %3958, float %3937)  ; FMin(a,b)
  %3960 = fmul fast float %3959, %3873
  %3961 = fsub fast float %3934, %3960
  %3962 = fsub fast float %3904, %3934
  %3963 = fsub fast float %3962, %3960
  %3964 = call float @dx.op.binary.f32(i32 35, float %3934, float %3904)  ; FMax(a,b)
  %3965 = call float @dx.op.binary.f32(i32 35, float %3960, float %3964)  ; FMax(a,b)
  %3966 = fcmp fast olt float %3965, 1.000000e+00
  br i1 %3966, label %3967, label %4365, !dx.controlflow.hints !105

; <label>:3967                                    ; preds = %3933
  %3968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3969 = extractvalue %dx.types.CBufRet.f32 %3968, 0
  %3970 = fcmp fast une float %3969, 0.000000e+00
  br i1 %3970, label %3971, label %4365, !dx.controlflow.hints !106

; <label>:3971                                    ; preds = %3967
  %3972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3973 = extractvalue %dx.types.CBufRet.f32 %3972, 0
  %3974 = extractvalue %dx.types.CBufRet.f32 %3972, 1
  %3975 = extractvalue %dx.types.CBufRet.f32 %3972, 2
  %3976 = extractvalue %dx.types.CBufRet.f32 %3972, 3
  %3977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3978 = extractvalue %dx.types.CBufRet.f32 %3977, 0
  %3979 = extractvalue %dx.types.CBufRet.f32 %3977, 1
  %3980 = extractvalue %dx.types.CBufRet.f32 %3977, 2
  %3981 = extractvalue %dx.types.CBufRet.f32 %3977, 3
  %3982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3983 = extractvalue %dx.types.CBufRet.f32 %3982, 0
  %3984 = extractvalue %dx.types.CBufRet.f32 %3982, 1
  %3985 = extractvalue %dx.types.CBufRet.f32 %3982, 2
  %3986 = extractvalue %dx.types.CBufRet.f32 %3982, 3
  %3987 = fmul fast float %3973, %3819
  %3988 = call float @dx.op.tertiary.f32(i32 46, float %3820, float %3974, float %3987)  ; FMad(a,b,c)
  %3989 = call float @dx.op.tertiary.f32(i32 46, float %3821, float %3975, float %3988)  ; FMad(a,b,c)
  %3990 = fadd fast float %3989, %3976
  %3991 = fmul fast float %3978, %3819
  %3992 = call float @dx.op.tertiary.f32(i32 46, float %3820, float %3979, float %3991)  ; FMad(a,b,c)
  %3993 = call float @dx.op.tertiary.f32(i32 46, float %3821, float %3980, float %3992)  ; FMad(a,b,c)
  %3994 = fadd fast float %3993, %3981
  %3995 = fmul fast float %3983, %3819
  %3996 = call float @dx.op.tertiary.f32(i32 46, float %3820, float %3984, float %3995)  ; FMad(a,b,c)
  %3997 = call float @dx.op.tertiary.f32(i32 46, float %3821, float %3985, float %3996)  ; FMad(a,b,c)
  %3998 = fadd fast float %3997, %3986
  %3999 = fcmp fast oge float %3990, 1.000000e+00
  %4000 = fcmp fast oge float %3994, 1.000000e+00
  %4001 = or i1 %3999, %4000
  %4002 = fcmp fast olt float %3990, 0.000000e+00
  %4003 = fcmp fast olt float %3994, 0.000000e+00
  %4004 = or i1 %4002, %4003
  %4005 = or i1 %4001, %4004
  br i1 %4005, label %4365, label %4006, !dx.controlflow.hints !107

; <label>:4006                                    ; preds = %3971
  %4007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4008 = extractvalue %dx.types.CBufRet.f32 %4007, 0
  %4009 = extractvalue %dx.types.CBufRet.f32 %4007, 1
  %4010 = extractvalue %dx.types.CBufRet.f32 %4007, 2
  %4011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4012 = extractvalue %dx.types.CBufRet.i32 %4011, 2
  %4013 = uitofp i32 %4012 to float
  %4014 = extractvalue %dx.types.CBufRet.i32 %4011, 3
  %4015 = uitofp i32 %4014 to float
  %4016 = extractvalue %dx.types.CBufRet.f32 %4007, 3
  %4017 = fmul fast float %4016, 2.000000e+00
  %4018 = fsub fast float %3990, %4008
  %4019 = fsub fast float %3994, %4009
  %4020 = fmul fast float %4017, %4018
  %4021 = fmul fast float %4017, %4019
  %4022 = fdiv fast float 1.000000e+00, %3802
  %4023 = fmul fast float %4021, %4022
  %4024 = call float @dx.op.unary.f32(i32 6, float %4023)  ; FAbs(value)
  %4025 = fmul fast float %4010, %3821
  %4026 = fmul fast float %4025, %4017
  %4027 = call float @dx.op.unary.f32(i32 6, float %4026)  ; FAbs(value)
  %4028 = call float @dx.op.unary.f32(i32 6, float %4020)  ; FAbs(value)
  %4029 = call float @dx.op.binary.f32(i32 35, float %4027, float %4024)  ; FMax(a,b)
  %4030 = call float @dx.op.binary.f32(i32 35, float %4028, float %4029)  ; FMax(a,b)
  %4031 = fmul fast float %4030, 2.000000e+00
  %4032 = call float @dx.op.unary.f32(i32 23, float %4031)  ; Log(value)
  %4033 = call float @dx.op.binary.f32(i32 35, float %4032, float %4013)  ; FMax(a,b)
  %4034 = call float @dx.op.unary.f32(i32 22, float %4033)  ; Frc(value)
  %4035 = fadd fast float %4034, 0xBFEA666660000000
  %4036 = fmul fast float %4035, 8.000000e+00
  %4037 = call float @dx.op.unary.f32(i32 7, float %4036)  ; Saturate(value)
  %4038 = call float @dx.op.unary.f32(i32 27, float %4033)  ; Round_ni(value)
  %4039 = fadd fast float %4038, %4037
  %4040 = call float @dx.op.binary.f32(i32 36, float %4039, float %4015)  ; FMin(a,b)
  %4041 = call float @dx.op.unary.f32(i32 27, float %4040)  ; Round_ni(value)
  %4042 = fsub fast float -0.000000e+00, %4041
  %4043 = call float @dx.op.unary.f32(i32 21, float %4042)  ; Exp(value)
  %4044 = fmul fast float %4043, %4017
  %4045 = fmul fast float %4044, %3990
  %4046 = fmul fast float %4044, %3994
  %4047 = fmul fast float %4045, 2.500000e-01
  %4048 = fmul fast float %4046, 2.500000e-01
  %4049 = fadd fast float %4047, 5.000000e-01
  %4050 = fadd fast float %4048, 5.000000e-01
  %4051 = fsub fast float %4015, %4013
  %4052 = fptoui float %4051 to i32
  %4053 = add i32 %4052, 320
  %4054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %4053)  ; CBufferLoadLegacy(handle,regIndex)
  %4055 = extractvalue %dx.types.CBufRet.f32 %4054, 0
  %4056 = extractvalue %dx.types.CBufRet.f32 %4054, 1
  %4057 = fcmp fast une float %4040, %4015
  %4058 = fsub fast float %3990, %4055
  %4059 = fsub fast float %3994, %4056
  %4060 = call float @dx.op.unary.f32(i32 6, float %4058)  ; FAbs(value)
  %4061 = call float @dx.op.unary.f32(i32 6, float %4059)  ; FAbs(value)
  %4062 = fmul fast float %4060, %4044
  %4063 = fmul fast float %4061, %4044
  %4064 = fcmp fast olt float %4062, 1.000000e+00
  %4065 = fcmp fast olt float %4063, 1.000000e+00
  %4066 = and i1 %4064, %4065
  %4067 = or i1 %4057, %4066
  br i1 %4067, label %4068, label %4365, !dx.controlflow.hints !108

; <label>:4068                                    ; preds = %4006
  %4069 = fmul fast float %4046, 5.000000e-01
  %4070 = fmul fast float %4045, 5.000000e-01
  %4071 = fadd fast float %4069, 5.000000e-01
  %4072 = fadd fast float %4070, 5.000000e-01
  %4073 = sitofp i32 %4012 to float
  %4074 = fsub fast float %4040, %4073
  %4075 = call float @dx.op.unary.f32(i32 27, float %4074)  ; Round_ni(value)
  %4076 = call float @dx.op.unary.f32(i32 22, float %4040)  ; Frc(value)
  %4077 = call float @dx.op.unary.f32(i32 22, float %4072)  ; Frc(value)
  %4078 = call float @dx.op.unary.f32(i32 22, float %4071)  ; Frc(value)
  %4079 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %4077, float %4078, float %4075, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4080 = extractvalue %dx.types.ResRet.f32 %4079, 0
  %4081 = extractvalue %dx.types.ResRet.f32 %4079, 1
  %4082 = extractvalue %dx.types.ResRet.f32 %4079, 2
  %4083 = extractvalue %dx.types.ResRet.f32 %4079, 3
  %4084 = fcmp fast ogt float %4076, 0.000000e+00
  br i1 %4084, label %4085, label %4106, !dx.controlflow.hints !109

; <label>:4085                                    ; preds = %4068
  %4086 = fadd fast float %4075, 1.000000e+00
  %4087 = call float @dx.op.unary.f32(i32 22, float %4049)  ; Frc(value)
  %4088 = call float @dx.op.unary.f32(i32 22, float %4050)  ; Frc(value)
  %4089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %4087, float %4088, float %4086, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4090 = extractvalue %dx.types.ResRet.f32 %4089, 0
  %4091 = extractvalue %dx.types.ResRet.f32 %4089, 1
  %4092 = extractvalue %dx.types.ResRet.f32 %4089, 2
  %4093 = extractvalue %dx.types.ResRet.f32 %4089, 3
  %4094 = fsub fast float %4090, %4080
  %4095 = fsub fast float %4091, %4081
  %4096 = fsub fast float %4092, %4082
  %4097 = fsub fast float %4093, %4083
  %4098 = fmul fast float %4094, %4076
  %4099 = fmul fast float %4095, %4076
  %4100 = fmul fast float %4096, %4076
  %4101 = fmul fast float %4097, %4076
  %4102 = fadd fast float %4098, %4080
  %4103 = fadd fast float %4099, %4081
  %4104 = fadd fast float %4100, %4082
  %4105 = fadd fast float %4101, %4083
  br label %4106

; <label>:4106                                    ; preds = %4085, %4068
  %4107 = phi float [ %4102, %4085 ], [ %4080, %4068 ]
  %4108 = phi float [ %4103, %4085 ], [ %4081, %4068 ]
  %4109 = phi float [ %4104, %4085 ], [ %4082, %4068 ]
  %4110 = phi float [ %4105, %4085 ], [ %4083, %4068 ]
  %4111 = fadd fast float %4107, -5.000000e-01
  %4112 = fadd fast float %4109, -5.000000e-01
  %4113 = fmul fast float %4111, 0xBFD5555560000000
  %4114 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4112, float %4113)  ; FMad(a,b,c)
  %4115 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4108, float 0.000000e+00)  ; FMad(a,b,c)
  %4116 = fadd fast float %4115, %4110
  %4117 = fmul fast float %4111, -7.500000e-01
  %4118 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4112, float %4117)  ; FMad(a,b,c)
  %4119 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4108, float 0.000000e+00)  ; FMad(a,b,c)
  %4120 = fadd fast float %4119, %4110
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 0
  %4123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4124 = extractvalue %dx.types.CBufRet.f32 %4123, 0
  %4125 = extractvalue %dx.types.CBufRet.f32 %4123, 1
  %4126 = extractvalue %dx.types.CBufRet.f32 %4123, 2
  %4127 = extractvalue %dx.types.CBufRet.f32 %4123, 3
  %4128 = fsub fast float %4124, %4114
  %4129 = fsub fast float %4125, %4116
  %4130 = fsub fast float %4126, %4118
  %4131 = fsub fast float %4127, %4120
  %4132 = fmul fast float %4128, %4122
  %4133 = fmul fast float %4129, %4122
  %4134 = fmul fast float %4130, %4122
  %4135 = fmul fast float %4131, %4122
  %4136 = fadd fast float %4132, %4114
  %4137 = fadd fast float %4133, %4116
  %4138 = fadd fast float %4134, %4118
  %4139 = fadd fast float %4135, %4120
  %4140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4141 = extractvalue %dx.types.ResRet.i32 %4140, 0
  %4142 = and i32 %4141, 536870911
  %4143 = uitofp i32 %4142 to float
  %4144 = fmul fast float %4143, %3990
  %4145 = fmul fast float %4143, %3994
  %4146 = fptoui float %4144 to i32
  %4147 = fptoui float %4145 to i32
  %4148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4149 = extractvalue %dx.types.ResRet.i32 %4148, 0
  %4150 = and i32 %4149, 31
  %4151 = lshr i32 %4146, %4150
  %4152 = lshr i32 %4147, %4150
  %4153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4154 = extractvalue %dx.types.ResRet.i32 %4153, 0
  %4155 = and i32 %4154, 31
  %4156 = shl i32 1, %4155
  %4157 = call i32 @dx.op.binary.i32(i32 40, i32 %4156, i32 4)  ; UMin(a,b)
  %4158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4159 = extractvalue %dx.types.ResRet.i32 %4158, 0
  %4160 = extractvalue %dx.types.ResRet.i32 %4158, 1
  %4161 = icmp eq i32 %4157, 0
  br i1 %4161, label %4203, label %4162

; <label>:4162                                    ; preds = %4106
  br label %4163

; <label>:4163                                    ; preds = %4191, %4162
  %4164 = phi i32 [ %4194, %4191 ], [ 0, %4162 ]
  %4165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4166 = extractvalue %dx.types.ResRet.i32 %4165, 0
  %4167 = lshr i32 %4166, 16
  %4168 = and i32 %4167, 31
  %4169 = shl i32 %4152, %4168
  %4170 = add i32 %4169, %4151
  %4171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4172 = extractvalue %dx.types.ResRet.i32 %4171, 0
  %4173 = and i32 %4172, 31
  %4174 = shl i32 %4170, %4173
  %4175 = add i32 %4174, %4164
  %4176 = shl i32 %4175, 2
  %4177 = add i32 %4176, 32
  %4178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4177, i32 undef)  ; BufferLoad(srv,index,wot)
  %4179 = extractvalue %dx.types.ResRet.i32 %4178, 0
  %4180 = icmp slt i32 %4179, 0
  %4181 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %4164
  %4182 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4164
  %4183 = bitcast float* %4181 to i32*
  %4184 = bitcast float* %4182 to i32*
  br i1 %4180, label %4185, label %4191

; <label>:4185                                    ; preds = %4163
  %4186 = and i32 %4179, 1073741823
  %4187 = add nuw nsw i32 %4186, 20
  %4188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4187, i32 undef)  ; BufferLoad(srv,index,wot)
  %4189 = extractvalue %dx.types.ResRet.i32 %4188, 0
  %4190 = extractvalue %dx.types.ResRet.i32 %4188, 1
  br label %4191

; <label>:4191                                    ; preds = %4185, %4163
  %4192 = phi i32 [ %4189, %4185 ], [ %4159, %4163 ]
  %4193 = phi i32 [ %4190, %4185 ], [ %4160, %4163 ]
  store i32 %4192, i32* %4183, align 4
  store i32 %4193, i32* %4184, align 4
  %4194 = add nuw i32 %4164, 1
  %4195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.i32 %4195, 2
  %4197 = icmp eq i32 %4196, 0
  %4198 = icmp ugt i32 %4179, -1073741825
  %4199 = and i1 %4198, %4197
  %4200 = icmp ult i32 %4194, %4157
  %4201 = and i1 %4199, %4200
  br i1 %4201, label %4163, label %4202

; <label>:4202                                    ; preds = %4191
  br label %4203

; <label>:4203                                    ; preds = %4202, %4106
  %4204 = phi i32 [ 0, %4106 ], [ %4194, %4202 ]
  %4205 = extractvalue %dx.types.CBufRet.f32 %3968, 2
  %4206 = fptoui float %4205 to i32
  %4207 = icmp eq i32 %4206, 0
  br i1 %4207, label %4259, label %4208

; <label>:4208                                    ; preds = %4203
  br label %4209

; <label>:4209                                    ; preds = %4254, %4208
  %4210 = phi i32 [ %4255, %4254 ], [ %4204, %4208 ]
  %4211 = phi i32 [ %4256, %4254 ], [ 0, %4208 ]
  %4212 = lshr i32 %4211, 2
  %4213 = and i32 %4211, 3
  %4214 = add nuw nsw i32 %4212, 83
  %4215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 %4214)  ; CBufferLoadLegacy(handle,regIndex)
  %4216 = extractvalue %dx.types.CBufRet.i32 %4215, 0
  %4217 = extractvalue %dx.types.CBufRet.i32 %4215, 1
  %4218 = extractvalue %dx.types.CBufRet.i32 %4215, 2
  %4219 = extractvalue %dx.types.CBufRet.i32 %4215, 3
  %4220 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 0
  store i32 %4216, i32* %4220, align 4
  %4221 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 1
  store i32 %4217, i32* %4221, align 4
  %4222 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 2
  store i32 %4218, i32* %4222, align 4
  %4223 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 3
  store i32 %4219, i32* %4223, align 4
  %4224 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 %4213
  %4225 = load i32, i32* %4224, align 4, !tbaa !110, !noalias !114
  %4226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4227 = extractvalue %dx.types.ResRet.i32 %4226, 0
  %4228 = lshr i32 %4227, 16
  %4229 = and i32 %4228, 31
  %4230 = shl i32 %4152, %4229
  %4231 = add i32 %4230, %4151
  %4232 = shl i32 %4231, 2
  %4233 = add i32 %4232, %4225
  %4234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4233, i32 undef)  ; BufferLoad(srv,index,wot)
  %4235 = extractvalue %dx.types.ResRet.i32 %4234, 0
  %4236 = icmp eq i32 %4235, 0
  br i1 %4236, label %4254, label %4237

; <label>:4237                                    ; preds = %4209
  %4238 = icmp slt i32 %4235, 0
  %4239 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %4210
  %4240 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4210
  %4241 = bitcast float* %4239 to i32*
  %4242 = bitcast float* %4240 to i32*
  br i1 %4238, label %4243, label %4250

; <label>:4243                                    ; preds = %4237
  %4244 = and i32 %4235, 1073741823
  %4245 = add i32 %4225, 20
  %4246 = add i32 %4245, %4244
  %4247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4246, i32 undef)  ; BufferLoad(srv,index,wot)
  %4248 = extractvalue %dx.types.ResRet.i32 %4247, 0
  %4249 = extractvalue %dx.types.ResRet.i32 %4247, 1
  br label %4250

; <label>:4250                                    ; preds = %4243, %4237
  %4251 = phi i32 [ %4248, %4243 ], [ %4159, %4237 ]
  %4252 = phi i32 [ %4249, %4243 ], [ %4160, %4237 ]
  store i32 %4251, i32* %4241, align 4
  store i32 %4252, i32* %4242, align 4
  %4253 = add i32 %4210, 1
  br label %4254

; <label>:4254                                    ; preds = %4250, %4209
  %4255 = phi i32 [ %4210, %4209 ], [ %4253, %4250 ]
  %4256 = add nuw i32 %4211, 1
  %4257 = icmp eq i32 %4256, %4206
  br i1 %4257, label %4258, label %4209

; <label>:4258                                    ; preds = %4254
  br label %4259

; <label>:4259                                    ; preds = %4258, %4203
  %4260 = phi i32 [ %4204, %4203 ], [ %4255, %4258 ]
  %4261 = icmp eq i32 %4260, 1
  %4262 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 0
  %4263 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  br i1 %4261, label %4264, label %4267

; <label>:4264                                    ; preds = %4259
  %4265 = load float, float* %4262, align 4
  %4266 = load float, float* %4263, align 4
  br label %4294

; <label>:4267                                    ; preds = %4259
  %4268 = load float, float* %4262, align 4
  %4269 = load float, float* %4263, align 4
  %4270 = fdiv fast float 1.000000e+00, %4269
  %4271 = fsub fast float %4268, %4270
  %4272 = icmp ugt i32 %4260, 1
  br i1 %4272, label %4273, label %4289

; <label>:4273                                    ; preds = %4267
  br label %4274

; <label>:4274                                    ; preds = %4274, %4273
  %4275 = phi float [ %4284, %4274 ], [ %4271, %4273 ]
  %4276 = phi float [ %4285, %4274 ], [ %4268, %4273 ]
  %4277 = phi i32 [ %4286, %4274 ], [ 1, %4273 ]
  %4278 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %4277
  %4279 = load float, float* %4278, align 4
  %4280 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4277
  %4281 = load float, float* %4280, align 4
  %4282 = fdiv fast float 1.000000e+00, %4281
  %4283 = fsub fast float %4279, %4282
  %4284 = call float @dx.op.binary.f32(i32 36, float %4275, float %4283)  ; FMin(a,b)
  %4285 = call float @dx.op.binary.f32(i32 35, float %4276, float %4279)  ; FMax(a,b)
  %4286 = add nuw i32 %4277, 1
  %4287 = icmp eq i32 %4286, %4260
  br i1 %4287, label %4288, label %4274

; <label>:4288                                    ; preds = %4274
  br label %4289

; <label>:4289                                    ; preds = %4288, %4267
  %4290 = phi float [ %4271, %4267 ], [ %4284, %4288 ]
  %4291 = phi float [ %4268, %4267 ], [ %4285, %4288 ]
  %4292 = fsub fast float %4291, %4290
  %4293 = fdiv fast float 1.000000e+00, %4292
  br label %4294

; <label>:4294                                    ; preds = %4289, %4264
  %4295 = phi float [ %4265, %4264 ], [ %4291, %4289 ]
  %4296 = phi float [ %4266, %4264 ], [ %4293, %4289 ]
  %4297 = fadd fast float %3998, %4295
  %4298 = fmul fast float %4297, %4296
  %4299 = call float @dx.op.unary.f32(i32 7, float %4298)  ; Saturate(value)
  %4300 = fmul fast float %4299, 2.000000e+00
  %4301 = fsub fast float 1.000000e+00, %4300
  %4302 = fmul fast float %4136, %4136
  %4303 = fsub fast float %4137, %4302
  %4304 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4303)  ; FMax(a,b)
  %4305 = fdiv fast float 1.000000e+00, %4304
  %4306 = fmul fast float %4137, %4136
  %4307 = fsub fast float %4138, %4306
  %4308 = fsub fast float %4301, %4136
  %4309 = fmul fast float %4301, %4301
  %4310 = fsub fast float %4309, %4137
  %4311 = fmul fast float %4305, %4307
  %4312 = fmul fast float %4311, %4308
  %4313 = fsub fast float %4310, %4312
  %4314 = fmul fast float %4137, %4137
  %4315 = fsub fast float %4139, %4314
  %4316 = fmul fast float %4307, %4307
  %4317 = fmul fast float %4316, %4305
  %4318 = fsub fast float %4315, %4317
  %4319 = fdiv fast float %4313, %4318
  %4320 = fmul fast float %4319, %4307
  %4321 = fsub fast float %4308, %4320
  %4322 = fmul fast float %4321, %4305
  %4323 = fmul fast float %4322, %4136
  %4324 = fsub fast float 1.000000e+00, %4323
  %4325 = fmul fast float %4319, %4137
  %4326 = fsub fast float %4324, %4325
  %4327 = fmul fast float %4322, %4322
  %4328 = fmul fast float %4319, 4.000000e+00
  %4329 = fmul fast float %4328, %4326
  %4330 = fsub fast float %4327, %4329
  %4331 = call float @dx.op.unary.f32(i32 24, float %4330)  ; Sqrt(value)
  %4332 = fcmp fast oge float %4322, 0.000000e+00
  %4333 = fsub fast float -0.000000e+00, %4331
  %4334 = select i1 %4332, float %4333, float %4331
  %4335 = fsub fast float %4334, %4322
  %4336 = fdiv fast float %4335, %4319
  %4337 = fdiv fast float %4326, %4335
  %4338 = fmul fast float %4336, 5.000000e-01
  %4339 = fmul fast float %4337, 2.000000e+00
  %4340 = select i1 %4332, float %4338, float %4339
  %4341 = select i1 %4332, float %4339, float %4338
  %4342 = call float @dx.op.binary.f32(i32 35, float %4340, float %4341)  ; FMax(a,b)
  %4343 = call float @dx.op.binary.f32(i32 36, float %4340, float %4341)  ; FMin(a,b)
  %4344 = fcmp fast ogt float %4301, %4342
  %4345 = fsub fast float %4301, %4343
  %4346 = fsub fast float %4301, %4342
  %4347 = fsub fast float %4342, %4343
  %4348 = select i1 %4344, float %4346, float %4347
  %4349 = fmul float %4345, %4348
  %4350 = select i1 %4344, float %4343, float %4301
  %4351 = fcmp fast ogt float %4301, %4343
  %4352 = fmul fast float %4350, %4342
  %4353 = fadd fast float %4350, %4342
  %4354 = fmul fast float %4353, %4136
  %4355 = fadd fast float %4352, %4137
  %4356 = fsub fast float %4355, %4354
  %4357 = fdiv fast float %4356, %4349
  %4358 = select i1 %4351, float %4357, float 0.000000e+00
  %4359 = fsub fast float 1.000000e+00, %4358
  %4360 = select i1 %4344, float %4359, float %4358
  %4361 = call float @dx.op.unary.f32(i32 7, float %4360)  ; Saturate(value)
  %4362 = extractvalue %dx.types.CBufRet.f32 %4121, 3
  %4363 = fmul fast float %4362, %4361
  %4364 = fsub fast float 1.000000e+00, %4363
  br label %4365

; <label>:4365                                    ; preds = %4294, %4006, %3971, %3967, %3933
  %4366 = phi float [ 1.000000e+00, %3933 ], [ %4364, %4294 ], [ 1.000000e+00, %3971 ], [ 1.000000e+00, %4006 ], [ 1.000000e+00, %3967 ]
  %4367 = fcmp fast ogt float %3963, 0.000000e+00
  br i1 %4367, label %4368, label %4374, !dx.controlflow.hints !123

; <label>:4368                                    ; preds = %4365
  %4369 = fadd fast float %3876, %3850
  %4370 = call float @dx.op.binary.f32(i32 35, float %4369, float 0.000000e+00)  ; FMax(a,b)
  %4371 = fadd fast float %4370, 0x3F10000000000000
  %4372 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %3865, float %3866, float undef, float undef, i32 0, i32 0, i32 undef, float %4371)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4373 = extractvalue %dx.types.ResRet.f32 %4372, 0
  br label %4374

; <label>:4374                                    ; preds = %4368, %4365
  %4375 = phi float [ %4373, %4368 ], [ 1.000000e+00, %4365 ]
  %4376 = fcmp fast ogt float %3961, 0.000000e+00
  br i1 %4376, label %4377, label %4383, !dx.controlflow.hints !124

; <label>:4377                                    ; preds = %4374
  %4378 = fadd fast float %3906, %3850
  %4379 = call float @dx.op.binary.f32(i32 35, float %4378, float 0.000000e+00)  ; FMax(a,b)
  %4380 = fadd fast float %4379, 0x3F10000000000000
  %4381 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %3857, float %3858, float undef, float undef, i32 0, i32 0, i32 undef, float %4380)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4382 = extractvalue %dx.types.ResRet.f32 %4381, 0
  br label %4383

; <label>:4383                                    ; preds = %4377, %4374
  %4384 = phi float [ %4382, %4377 ], [ 1.000000e+00, %4374 ]
  %4385 = fcmp fast ogt float %3960, 0.000000e+00
  br i1 %4385, label %4386, label %4393, !dx.controlflow.hints !125

; <label>:4386                                    ; preds = %4383
  %4387 = extractvalue %dx.types.CBufRet.f32 %3875, 0
  %4388 = fadd fast float %4387, %3850
  %4389 = call float @dx.op.binary.f32(i32 35, float %4388, float 0.000000e+00)  ; FMax(a,b)
  %4390 = fadd fast float %4389, 0x3F10000000000000
  %4391 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %3842, float %3846, float undef, float undef, i32 0, i32 0, i32 undef, float %4390)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4392 = extractvalue %dx.types.ResRet.f32 %4391, 0
  br label %4393

; <label>:4393                                    ; preds = %4386, %4383
  %4394 = phi float [ %4392, %4386 ], [ 1.000000e+00, %4383 ]
  %4395 = fsub fast float %4375, %4366
  %4396 = fmul fast float %4395, %3904
  %4397 = fadd fast float %4396, %4366
  %4398 = fsub fast float %4384, %4397
  %4399 = fmul fast float %4398, %3934
  %4400 = fadd fast float %4399, %4397
  %4401 = fsub fast float %4394, %4400
  %4402 = fmul fast float %4401, %3960
  %4403 = fadd fast float %4402, %4400
  %4404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4405 = extractvalue %dx.types.CBufRet.f32 %4404, 2
  %4406 = fcmp fast ogt float %4405, 0.000000e+00
  br i1 %4406, label %4407, label %4444, !dx.controlflow.hints !126

; <label>:4407                                    ; preds = %4393
  %4408 = fcmp fast ugt float %4405, 0.000000e+00
  br i1 %4408, label %4409, label %4441

; <label>:4409                                    ; preds = %4407
  %4410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4411 = extractvalue %dx.types.CBufRet.f32 %4410, 0
  %4412 = extractvalue %dx.types.CBufRet.f32 %4410, 1
  %4413 = extractvalue %dx.types.CBufRet.f32 %4410, 2
  %4414 = extractvalue %dx.types.CBufRet.f32 %4410, 3
  %4415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4416 = extractvalue %dx.types.CBufRet.f32 %4415, 0
  %4417 = extractvalue %dx.types.CBufRet.f32 %4415, 1
  %4418 = extractvalue %dx.types.CBufRet.f32 %4415, 2
  %4419 = extractvalue %dx.types.CBufRet.f32 %4415, 3
  %4420 = extractvalue %dx.types.CBufRet.f32 %4404, 0
  %4421 = extractvalue %dx.types.CBufRet.f32 %4404, 1
  %4422 = extractvalue %dx.types.CBufRet.f32 %2353, 2
  %4423 = fadd fast float %2354, %3819
  %4424 = fadd fast float %2355, %3820
  %4425 = fadd fast float %4422, %3821
  %4426 = fmul fast float %4423, %4411
  %4427 = call float @dx.op.tertiary.f32(i32 46, float %4412, float %4424, float %4426)  ; FMad(a,b,c)
  %4428 = call float @dx.op.tertiary.f32(i32 46, float %4413, float %4425, float %4427)  ; FMad(a,b,c)
  %4429 = fadd fast float %4428, %4414
  %4430 = fmul fast float %4423, %4416
  %4431 = call float @dx.op.tertiary.f32(i32 46, float %4417, float %4424, float %4430)  ; FMad(a,b,c)
  %4432 = call float @dx.op.tertiary.f32(i32 46, float %4418, float %4425, float %4431)  ; FMad(a,b,c)
  %4433 = fadd fast float %4432, %4419
  %4434 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %55, float %4429, float %4433, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4435 = extractvalue %dx.types.ResRet.f32 %4434, 0
  %4436 = fmul fast float %4435, %4421
  %4437 = fadd fast float %4436, %4420
  %4438 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4439 = fmul fast float %4438, %4405
  %4440 = fsub fast float 1.000000e+00, %4439
  br label %4441

; <label>:4441                                    ; preds = %4409, %4407
  %4442 = phi float [ %4440, %4409 ], [ 1.000000e+00, %4407 ]
  %4443 = fmul fast float %4442, %4403
  br label %4444

; <label>:4444                                    ; preds = %4441, %4393, %3799
  %4445 = phi float [ 1.000000e+00, %3799 ], [ %4443, %4441 ], [ %4403, %4393 ]
  %4446 = call float @dx.op.binary.f32(i32 36, float %4445, float %4445)  ; FMin(a,b)
  %4447 = call float @dx.op.binary.f32(i32 36, float %4445, float %4446)  ; FMin(a,b)
  %4448 = fcmp fast ogt float %4447, 0.000000e+00
  br i1 %4448, label %4449, label %4606, !dx.controlflow.hints !127

; <label>:4449                                    ; preds = %4444
  %4450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4451 = extractvalue %dx.types.CBufRet.f32 %4450, 0
  %4452 = extractvalue %dx.types.CBufRet.f32 %4450, 1
  %4453 = extractvalue %dx.types.CBufRet.f32 %4450, 2
  %4454 = extractvalue %dx.types.CBufRet.f32 %4450, 3
  %4455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4456 = extractvalue %dx.types.CBufRet.f32 %4455, 0
  %4457 = extractvalue %dx.types.CBufRet.f32 %4455, 1
  %4458 = extractvalue %dx.types.CBufRet.f32 %4455, 2
  %4459 = extractvalue %dx.types.CBufRet.f32 %4455, 3
  %4460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4461 = extractvalue %dx.types.CBufRet.f32 %4460, 0
  %4462 = extractvalue %dx.types.CBufRet.f32 %4460, 1
  %4463 = extractvalue %dx.types.CBufRet.f32 %4460, 2
  %4464 = extractvalue %dx.types.CBufRet.f32 %4460, 3
  %4465 = fmul fast float %4451, %3819
  %4466 = call float @dx.op.tertiary.f32(i32 46, float %3820, float %4452, float %4465)  ; FMad(a,b,c)
  %4467 = call float @dx.op.tertiary.f32(i32 46, float %3821, float %4453, float %4466)  ; FMad(a,b,c)
  %4468 = fadd fast float %4467, %4454
  %4469 = fmul fast float %4456, %3819
  %4470 = call float @dx.op.tertiary.f32(i32 46, float %3820, float %4457, float %4469)  ; FMad(a,b,c)
  %4471 = call float @dx.op.tertiary.f32(i32 46, float %3821, float %4458, float %4470)  ; FMad(a,b,c)
  %4472 = fadd fast float %4471, %4459
  %4473 = fmul fast float %4461, %3819
  %4474 = call float @dx.op.tertiary.f32(i32 46, float %3820, float %4462, float %4473)  ; FMad(a,b,c)
  %4475 = call float @dx.op.tertiary.f32(i32 46, float %3821, float %4463, float %4474)  ; FMad(a,b,c)
  %4476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4477 = extractvalue %dx.types.CBufRet.f32 %4476, 0
  %4478 = extractvalue %dx.types.CBufRet.f32 %4476, 1
  %4479 = extractvalue %dx.types.CBufRet.f32 %4476, 3
  %4480 = fmul fast float %4479, %4468
  %4481 = fmul fast float %4479, %4472
  %4482 = fadd fast float %4480, %4477
  %4483 = fadd fast float %4481, %4478
  %4484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4485 = extractvalue %dx.types.CBufRet.f32 %4484, 0
  %4486 = extractvalue %dx.types.CBufRet.f32 %4484, 1
  %4487 = fsub fast float %4482, %4485
  %4488 = fsub fast float %4483, %4486
  %4489 = fcmp fast olt float %4487, 0.000000e+00
  %4490 = fcmp fast olt float %4488, 0.000000e+00
  %4491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4492 = extractvalue %dx.types.CBufRet.f32 %4491, 0
  %4493 = extractvalue %dx.types.CBufRet.f32 %4491, 1
  %4494 = extractvalue %dx.types.CBufRet.f32 %4491, 2
  %4495 = extractvalue %dx.types.CBufRet.f32 %4491, 3
  %4496 = select i1 %4489, float %4492, float %4494
  %4497 = select i1 %4490, float %4493, float %4495
  %4498 = fmul fast float %4496, %4487
  %4499 = fmul fast float %4497, %4488
  %4500 = call float @dx.op.unary.f32(i32 6, float %4498)  ; FAbs(value)
  %4501 = call float @dx.op.unary.f32(i32 6, float %4499)  ; FAbs(value)
  %4502 = extractvalue %dx.types.CBufRet.f32 %3814, 0
  %4503 = call float @dx.op.binary.f32(i32 35, float %4500, float %4501)  ; FMax(a,b)
  %4504 = fsub fast float %4502, %4503
  %4505 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4506 = fcmp fast ogt float %4505, 0.000000e+00
  br i1 %4506, label %4507, label %4548, !dx.controlflow.hints !128

; <label>:4507                                    ; preds = %4449
  %4508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %58, float %4482, float %4483, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4509 = extractvalue %dx.types.ResRet.f32 %4508, 1
  %4510 = fcmp fast ogt float %4509, 0.000000e+00
  br i1 %4510, label %4511, label %4543

; <label>:4511                                    ; preds = %4507
  %4512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %58, float %4482, float %4483, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4513 = extractvalue %dx.types.ResRet.f32 %4512, 0
  %4514 = extractvalue %dx.types.ResRet.f32 %4512, 1
  %4515 = extractvalue %dx.types.ResRet.f32 %4512, 2
  %4516 = extractvalue %dx.types.ResRet.f32 %4512, 3
  %4517 = fsub fast float 1.000000e+00, %4464
  %4518 = fsub fast float %4517, %4475
  %4519 = fmul fast float %4518, 0x400921FB60000000
  %4520 = fadd fast float %4519, 0x3FF921FB60000000
  %4521 = call float @dx.op.unary.f32(i32 13, float %4520)  ; Sin(value)
  %4522 = fadd fast float %4521, -1.000000e+00
  %4523 = fmul fast float %4522, 0x3FD45F3060000000
  %4524 = fmul fast float %4518, 0x401921FB60000000
  %4525 = fadd fast float %4524, 0x400921FB60000000
  %4526 = call float @dx.op.unary.f32(i32 13, float %4525)  ; Sin(value)
  %4527 = fadd fast float %4526, 0x3E7777A5C0000000
  %4528 = fmul fast float %4527, 0x3FC45F3060000000
  %4529 = fmul fast float %4518, 0x4022D97C80000000
  %4530 = fadd fast float %4529, 0x4012D97C80000000
  %4531 = call float @dx.op.unary.f32(i32 13, float %4530)  ; Sin(value)
  %4532 = fadd fast float %4531, 1.000000e+00
  %4533 = fmul fast float %4532, 0x3FBB2995E0000000
  %4534 = fmul fast float %4518, 0x402921FB60000000
  %4535 = fadd fast float %4534, 0x401921FB60000000
  %4536 = call float @dx.op.unary.f32(i32 13, float %4535)  ; Sin(value)
  %4537 = fadd fast float %4536, 0xBE8777A5C0000000
  %4538 = fmul fast float %4537, 0x3FB45F3060000000
  %4539 = call float @dx.op.dot4.f32(i32 56, float %4513, float %4514, float %4515, float %4516, float %4523, float %4528, float %4533, float %4538)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4540 = fmul fast float %4539, 0xBFF7154760000000
  %4541 = call float @dx.op.unary.f32(i32 21, float %4540)  ; Exp(value)
  %4542 = call float @dx.op.unary.f32(i32 7, float %4541)  ; Saturate(value)
  br label %4543

; <label>:4543                                    ; preds = %4511, %4507
  %4544 = phi float [ %4542, %4511 ], [ 1.000000e+00, %4507 ]
  %4545 = fadd fast float %4544, -1.000000e+00
  %4546 = fmul fast float %4545, %4505
  %4547 = fadd fast float %4546, 1.000000e+00
  br label %4548

; <label>:4548                                    ; preds = %4543, %4449
  %4549 = phi float [ %4547, %4543 ], [ 1.000000e+00, %4449 ]
  %4550 = fmul fast float %4549, %4445
  %4551 = extractvalue %dx.types.CBufRet.f32 %2353, 2
  %4552 = fadd fast float %2354, %137
  %4553 = fadd fast float %2355, %138
  %4554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4555 = extractvalue %dx.types.CBufRet.f32 %4554, 1
  %4556 = fsub fast float -0.000000e+00, %4552
  %4557 = fsub fast float -0.000000e+00, %4553
  %4558 = fsub fast float %2336, %4551
  %4559 = fadd fast float %4558, %4555
  %4560 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4556, float %4557, float %4559)  ; Dot3(ax,ay,az,bx,by,bz)
  %4561 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3800, float %3801, float %3802)  ; Dot3(ax,ay,az,bx,by,bz)
  %4562 = fdiv fast float 1.000000e+00, %4561
  %4563 = fmul fast float %4562, %4560
  %4564 = fmul fast float %3800, %4563
  %4565 = fmul fast float %3801, %4563
  %4566 = fadd fast float %4564, %4552
  %4567 = fadd fast float %4565, %4553
  %4568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4569 = extractvalue %dx.types.CBufRet.f32 %4568, 0
  %4570 = extractvalue %dx.types.CBufRet.f32 %4568, 1
  %4571 = fsub fast float %4566, %4569
  %4572 = fsub fast float %4567, %4570
  %4573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4574 = extractvalue %dx.types.CBufRet.f32 %4573, 2
  %4575 = extractvalue %dx.types.CBufRet.f32 %4573, 3
  %4576 = fmul fast float %4571, %4574
  %4577 = fmul fast float %4572, %4575
  %4578 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4579 = extractvalue %dx.types.CBufRet.i32 %4578, 3
  %4580 = icmp eq i32 %4579, 0
  br i1 %4580, label %4586, label %4581

; <label>:4581                                    ; preds = %4548
  %4582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %57, float %4576, float %4577, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4584 = extractvalue %dx.types.ResRet.f32 %4582, 1
  %4585 = extractvalue %dx.types.ResRet.f32 %4582, 2
  br label %4591

; <label>:4586                                    ; preds = %4548
  %4587 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %58, float %4576, float %4577, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4588 = extractvalue %dx.types.ResRet.f32 %4587, 0
  %4589 = extractvalue %dx.types.ResRet.f32 %4587, 1
  %4590 = extractvalue %dx.types.ResRet.f32 %4587, 2
  br label %4591

; <label>:4591                                    ; preds = %4586, %4581
  %4592 = phi float [ %4583, %4581 ], [ %4588, %4586 ]
  %4593 = phi float [ %4584, %4581 ], [ %4589, %4586 ]
  %4594 = phi float [ %4585, %4581 ], [ %4590, %4586 ]
  %4595 = extractvalue %dx.types.CBufRet.f32 %4554, 2
  %4596 = fmul fast float %4595, %4592
  %4597 = extractvalue %dx.types.CBufRet.f32 %4554, 0
  %4598 = fsub fast float %4563, %4597
  %4599 = fsub fast float %4598, %4596
  %4600 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4599)  ; FMax(a,b)
  %4601 = fmul fast float %4600, %4593
  %4602 = call float @dx.op.binary.f32(i32 36, float %4594, float %4601)  ; FMin(a,b)
  %4603 = fmul fast float %4602, 0xBFF7154760000000
  %4604 = call float @dx.op.unary.f32(i32 21, float %4603)  ; Exp(value)
  %4605 = fmul fast float %4550, %4604
  br label %4606

; <label>:4606                                    ; preds = %4591, %4444
  %4607 = phi float [ %4605, %4591 ], [ %4445, %4444 ]
  %4608 = call float @dx.op.binary.f32(i32 36, float %4607, float %4607)  ; FMin(a,b)
  %4609 = call float @dx.op.binary.f32(i32 36, float %4607, float %4608)  ; FMin(a,b)
  %4610 = fcmp fast ogt float %4609, 0.000000e+00
  br i1 %4610, label %4611, label %4997, !dx.controlflow.hints !129

; <label>:4611                                    ; preds = %4606
  %4612 = fmul fast float %4607, %3811
  %4613 = fmul fast float %4607, %3812
  %4614 = fmul fast float %4607, %3813
  %4615 = fsub fast float %139, %2124
  %4616 = fcmp fast ogt float %4615, 0.000000e+00
  %4617 = fmul fast float %3800, 5.120000e+02
  %4618 = fmul fast float %3801, 5.120000e+02
  %4619 = fmul fast float %3802, 5.120000e+02
  %4620 = fadd fast float %4619, %139
  %4621 = fsub fast float %2124, %4620
  %4622 = fmul fast float %4621, 2.000000e+00
  %4623 = fadd fast float %4622, %4620
  %4624 = select i1 %4616, float %4623, float %4620
  %4625 = fsub fast float %4624, %139
  %4626 = call float @dx.op.dot3.f32(i32 55, float %4617, float %4618, float %4625, float %4617, float %4618, float %4625)  ; Dot3(ax,ay,az,bx,by,bz)
  %4627 = call float @dx.op.unary.f32(i32 25, float %4626)  ; Rsqrt(value)
  %4628 = fmul fast float %4627, %4617
  %4629 = fmul fast float %4627, %4618
  %4630 = fmul fast float %4627, %4625
  %4631 = fsub fast float %2124, %139
  %4632 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4631)  ; Dot3(ax,ay,az,bx,by,bz)
  %4633 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4628, float %4629, float %4630)  ; Dot3(ax,ay,az,bx,by,bz)
  %4634 = fdiv fast float 1.000000e+00, %4633
  %4635 = fmul fast float %4634, %4632
  %4636 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4615, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4637 = fcmp fast ogt float %4636, 0.000000e+00
  %4638 = fcmp fast olt float %4636, 0.000000e+00
  %4639 = zext i1 %4637 to i32
  %4640 = zext i1 %4638 to i32
  %4641 = sub nsw i32 %4639, %4640
  %4642 = sitofp i32 %4641 to float
  %4643 = fsub fast float %4624, %2124
  %4644 = call float @dx.op.dot3.f32(i32 55, float %4617, float %4618, float %4643, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4645 = fcmp fast ogt float %4644, 0.000000e+00
  %4646 = fcmp fast olt float %4644, 0.000000e+00
  %4647 = zext i1 %4645 to i32
  %4648 = zext i1 %4646 to i32
  %4649 = sub nsw i32 %4647, %4648
  %4650 = sitofp i32 %4649 to float
  %4651 = fcmp fast une float %4642, %4650
  br i1 %4651, label %4652, label %4662

; <label>:4652                                    ; preds = %4611
  %4653 = fmul fast float %4635, %4630
  %4654 = fmul fast float %4635, %4629
  %4655 = fmul fast float %4635, %4628
  %4656 = fmul fast float %4655, %4655
  %4657 = fmul fast float %4654, %4654
  %4658 = fadd fast float %4656, %4657
  %4659 = fmul fast float %4653, %4653
  %4660 = fadd fast float %4658, %4659
  %4661 = call float @dx.op.unary.f32(i32 24, float %4660)  ; Sqrt(value)
  br label %4672

; <label>:4662                                    ; preds = %4611
  %4663 = icmp slt i32 %4641, 0
  br i1 %4663, label %4664, label %4672

; <label>:4664                                    ; preds = %4662
  %4665 = fsub fast float %139, %4624
  %4666 = fmul fast float %4617, %4617
  %4667 = fmul fast float %4618, %4618
  %4668 = fadd fast float %4666, %4667
  %4669 = fmul fast float %4665, %4665
  %4670 = fadd fast float %4668, %4669
  %4671 = call float @dx.op.unary.f32(i32 24, float %4670)  ; Sqrt(value)
  br label %4672

; <label>:4672                                    ; preds = %4664, %4662, %4652
  %4673 = phi float [ %4661, %4652 ], [ %4671, %4664 ], [ 0.000000e+00, %4662 ]
  %4674 = fsub fast float -0.000000e+00, %4673
  %4675 = select i1 %4616, float -0.000000e+00, float %4674
  %4676 = fmul fast float %2125, 0x3FF7154760000000
  %4677 = fmul fast float %4676, %4675
  %4678 = fmul fast float %2126, 0x3FF7154760000000
  %4679 = fmul fast float %4678, %4675
  %4680 = fmul fast float %2127, 0x3FF7154760000000
  %4681 = fmul fast float %4680, %4675
  %4682 = call float @dx.op.unary.f32(i32 21, float %4677)  ; Exp(value)
  %4683 = call float @dx.op.unary.f32(i32 21, float %4679)  ; Exp(value)
  %4684 = call float @dx.op.unary.f32(i32 21, float %4681)  ; Exp(value)
  %4685 = call float @dx.op.unary.f32(i32 7, float %4682)  ; Saturate(value)
  %4686 = call float @dx.op.unary.f32(i32 7, float %4683)  ; Saturate(value)
  %4687 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4688 = fmul fast float %4612, %4685
  %4689 = fmul fast float %4613, %4686
  %4690 = fmul fast float %4614, %4687
  %4691 = fsub fast float %3800, %2324
  %4692 = fsub fast float %3801, %2323
  %4693 = fsub fast float %3802, %2322
  %4694 = call float @dx.op.dot3.f32(i32 55, float %4691, float %4692, float %4693, float %4691, float %4692, float %4693)  ; Dot3(ax,ay,az,bx,by,bz)
  %4695 = call float @dx.op.unary.f32(i32 25, float %4694)  ; Rsqrt(value)
  %4696 = fmul fast float %4695, %4691
  %4697 = fmul fast float %4695, %4692
  %4698 = fmul fast float %4695, %4693
  %4699 = call float @dx.op.dot3.f32(i32 55, float %3800, float %3801, float %3802, float %2331, float %2332, float %2333)  ; Dot3(ax,ay,az,bx,by,bz)
  %4700 = call float @dx.op.dot3.f32(i32 55, float %2321, float %2320, float %2319, float %4696, float %4697, float %4698)  ; Dot3(ax,ay,az,bx,by,bz)
  %4701 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4702 = fmul fast float %4701, %4701
  %4703 = fmul fast float %4702, %2352
  %4704 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4705 = fmul fast float %4704, %4701
  %4706 = call float @dx.op.dot3.f32(i32 55, float %2331, float %2332, float %2333, float %4696, float %4697, float %4698)  ; Dot3(ax,ay,az,bx,by,bz)
  %4707 = fmul fast float %4706, %4706
  %4708 = call float @dx.op.unary.f32(i32 6, float %4699)  ; FAbs(value)
  %4709 = call float @dx.op.binary.f32(i32 35, float %3768, float 0x3F847AE140000000)  ; FMax(a,b)
  %4710 = fmul fast float %4709, %4709
  %4711 = fmul fast float %4710, %4710
  %4712 = fsub fast float 1.000000e+00, %4711
  %4713 = fmul fast float %2339, %2339
  %4714 = fmul fast float %4713, %4712
  %4715 = fadd fast float %4714, %4711
  %4716 = bitcast float %4715 to i32
  %4717 = ashr i32 %4716, 1
  %4718 = add nsw i32 %4717, 532487669
  %4719 = bitcast i32 %4718 to float
  %4720 = fadd fast float %4719, %2339
  %4721 = fmul fast float %4711, %4707
  %4722 = fsub fast float 1.000000e+00, %4707
  %4723 = fadd fast float %4722, %4721
  %4724 = fmul fast float %4708, %4708
  %4725 = fmul fast float %4724, %4712
  %4726 = fadd fast float %4725, %4711
  %4727 = bitcast float %4726 to i32
  %4728 = ashr i32 %4727, 1
  %4729 = add nsw i32 %4728, 532487669
  %4730 = bitcast i32 %4729 to float
  %4731 = fadd fast float %4730, %4708
  %4732 = fmul fast float %4723, %4723
  %4733 = fmul fast float %4732, %4720
  %4734 = fmul fast float %4733, %4731
  %4735 = fdiv fast float 0x3FF0A00000000000, %4734
  %4736 = fmul fast float %4735, %4711
  %4737 = fmul fast float %3630, 0x3FF9999980000000
  %4738 = fsub fast float 5.000000e+00, %4737
  %4739 = call float @dx.op.unary.f32(i32 6, float %4700)  ; FAbs(value)
  %4740 = fsub fast float 1.000000e+00, %4739
  %4741 = fmul fast float %3630, 0x41D9660740000000
  %4742 = fadd fast float %4741, 0xC1EFBF8940000000
  %4743 = bitcast float %4740 to i32
  %4744 = sitofp i32 %4743 to float
  %4745 = fmul fast float %4744, %4738
  %4746 = fadd fast float %4742, %4745
  %4747 = fptosi float %4746 to i32
  %4748 = bitcast i32 %4747 to float
  %4749 = fsub fast float 1.000000e+00, %2328
  %4750 = fsub fast float 1.000000e+00, %2329
  %4751 = fsub fast float 1.000000e+00, %2337
  %4752 = fmul fast float %4748, %4749
  %4753 = fmul fast float %4748, %4750
  %4754 = fmul fast float %4748, %4751
  %4755 = fadd fast float %4752, %2328
  %4756 = fadd fast float %4753, %2329
  %4757 = fadd fast float %4754, %2337
  br i1 %3653, label %4758, label %4781

; <label>:4758                                    ; preds = %4672
  %4759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1670, float %4739, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4760 = extractvalue %dx.types.ResRet.f32 %4759, 0
  %4761 = extractvalue %dx.types.ResRet.f32 %4759, 1
  %4762 = extractvalue %dx.types.ResRet.f32 %4759, 2
  %4763 = fadd fast float %4760, -5.000000e-01
  %4764 = fadd fast float %4761, -5.000000e-01
  %4765 = fadd fast float %4762, -5.000000e-01
  %4766 = fmul fast float %2328, 4.000000e+00
  %4767 = fmul fast float %4766, %4749
  %4768 = fmul fast float %4767, %4763
  %4769 = fmul fast float %2329, 4.000000e+00
  %4770 = fmul fast float %4769, %4750
  %4771 = fmul fast float %4770, %4764
  %4772 = fmul fast float %2337, 4.000000e+00
  %4773 = fmul fast float %4772, %4751
  %4774 = fmul fast float %4773, %4765
  %4775 = fadd fast float %4768, %4755
  %4776 = fadd fast float %4771, %4756
  %4777 = fadd fast float %4774, %4757
  %4778 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4779 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4780 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  br label %4781

; <label>:4781                                    ; preds = %4758, %4672
  %4782 = phi float [ %4778, %4758 ], [ %4755, %4672 ]
  %4783 = phi float [ %4779, %4758 ], [ %4756, %4672 ]
  %4784 = phi float [ %4780, %4758 ], [ %4757, %4672 ]
  %4785 = fmul fast float %4699, 9.843750e-01
  %4786 = fadd fast float %4785, 7.812500e-03
  %4787 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %4786, float %3634, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4788 = extractvalue %dx.types.ResRet.f32 %4787, 0
  %4789 = extractvalue %dx.types.ResRet.f32 %4787, 1
  %4790 = extractvalue %dx.types.ResRet.f32 %4787, 2
  %4791 = extractvalue %dx.types.ResRet.f32 %4787, 3
  %4792 = fsub fast float %4790, %4788
  %4793 = fsub fast float %4791, %4789
  %4794 = fmul fast float %4792, %3640
  %4795 = fmul fast float %4793, %3640
  %4796 = fadd fast float %4794, %4788
  %4797 = fadd fast float %4795, %4789
  %4798 = fmul fast float %4796, %2328
  %4799 = fmul fast float %4796, %2329
  %4800 = fmul fast float %4796, %2337
  %4801 = fadd fast float %4798, %4797
  %4802 = fadd fast float %4799, %4797
  %4803 = fadd fast float %4800, %4797
  br i1 %3653, label %4804, label %4827

; <label>:4804                                    ; preds = %4781
  %4805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1670, float %4699, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4806 = extractvalue %dx.types.ResRet.f32 %4805, 0
  %4807 = extractvalue %dx.types.ResRet.f32 %4805, 1
  %4808 = extractvalue %dx.types.ResRet.f32 %4805, 2
  %4809 = fadd fast float %4806, -5.000000e-01
  %4810 = fadd fast float %4807, -5.000000e-01
  %4811 = fadd fast float %4808, -5.000000e-01
  %4812 = fmul fast float %2328, 4.000000e+00
  %4813 = fmul fast float %4812, %4749
  %4814 = fmul fast float %4813, %4809
  %4815 = fmul fast float %2329, 4.000000e+00
  %4816 = fmul fast float %4815, %4750
  %4817 = fmul fast float %4816, %4810
  %4818 = fmul fast float %2337, 4.000000e+00
  %4819 = fmul fast float %4818, %4751
  %4820 = fmul fast float %4819, %4811
  %4821 = fadd fast float %4814, %4801
  %4822 = fadd fast float %4817, %4802
  %4823 = fadd fast float %4820, %4803
  %4824 = call float @dx.op.unary.f32(i32 7, float %4821)  ; Saturate(value)
  %4825 = call float @dx.op.unary.f32(i32 7, float %4822)  ; Saturate(value)
  %4826 = call float @dx.op.unary.f32(i32 7, float %4823)  ; Saturate(value)
  br label %4827

; <label>:4827                                    ; preds = %4804, %4781
  %4828 = phi float [ %4824, %4804 ], [ %4801, %4781 ]
  %4829 = phi float [ %4825, %4804 ], [ %4802, %4781 ]
  %4830 = phi float [ %4826, %4804 ], [ %4803, %4781 ]
  %4831 = call float @dx.op.binary.f32(i32 35, float %4829, float %4830)  ; FMax(a,b)
  %4832 = call float @dx.op.binary.f32(i32 35, float %4828, float %4831)  ; FMax(a,b)
  %4833 = fsub fast float 1.000000e+00, %4832
  %4834 = call float @dx.op.binary.f32(i32 35, float %4708, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4835 = fdiv fast float %1076, %4834
  %4836 = fmul fast float %3708, %4835
  %4837 = fmul fast float %3710, %4835
  %4838 = fmul fast float %3712, %4835
  %4839 = call float @dx.op.unary.f32(i32 21, float %4836)  ; Exp(value)
  %4840 = call float @dx.op.unary.f32(i32 21, float %4837)  ; Exp(value)
  %4841 = call float @dx.op.unary.f32(i32 21, float %4838)  ; Exp(value)
  %4842 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4843 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4844 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4845 = select i1 %3705, float %4842, float 0.000000e+00
  %4846 = select i1 %3706, float %4843, float 0.000000e+00
  %4847 = select i1 %3707, float %4844, float 0.000000e+00
  %4848 = fsub fast float -0.000000e+00, %2331
  %4849 = fsub fast float -0.000000e+00, %2332
  %4850 = fsub fast float -0.000000e+00, %2333
  %4851 = call float @dx.op.dot3.f32(i32 55, float %3800, float %3801, float %3802, float %4848, float %4849, float %4850)  ; Dot3(ax,ay,az,bx,by,bz)
  %4852 = call float @dx.op.unary.f32(i32 7, float %4851)  ; Saturate(value)
  %4853 = fmul fast float %4852, 9.843750e-01
  %4854 = fadd fast float %4853, 7.812500e-03
  %4855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %4854, float %3634, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4856 = extractvalue %dx.types.ResRet.f32 %4855, 0
  %4857 = extractvalue %dx.types.ResRet.f32 %4855, 1
  %4858 = extractvalue %dx.types.ResRet.f32 %4855, 2
  %4859 = extractvalue %dx.types.ResRet.f32 %4855, 3
  %4860 = fsub fast float %4858, %4856
  %4861 = fsub fast float %4859, %4857
  %4862 = fmul fast float %4860, %3640
  %4863 = fmul fast float %4861, %3640
  %4864 = fadd fast float %4862, %4856
  %4865 = fadd fast float %4863, %4857
  %4866 = fmul fast float %4864, %2328
  %4867 = fmul fast float %4864, %2329
  %4868 = fmul fast float %4864, %2337
  %4869 = fadd fast float %4866, %4865
  %4870 = fadd fast float %4867, %4865
  %4871 = fadd fast float %4868, %4865
  br i1 %3653, label %4872, label %4895

; <label>:4872                                    ; preds = %4827
  %4873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1670, float %4852, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4874 = extractvalue %dx.types.ResRet.f32 %4873, 0
  %4875 = extractvalue %dx.types.ResRet.f32 %4873, 1
  %4876 = extractvalue %dx.types.ResRet.f32 %4873, 2
  %4877 = fadd fast float %4874, -5.000000e-01
  %4878 = fadd fast float %4875, -5.000000e-01
  %4879 = fadd fast float %4876, -5.000000e-01
  %4880 = fmul fast float %2328, 4.000000e+00
  %4881 = fmul fast float %4880, %4749
  %4882 = fmul fast float %4881, %4877
  %4883 = fmul fast float %2329, 4.000000e+00
  %4884 = fmul fast float %4883, %4750
  %4885 = fmul fast float %4884, %4878
  %4886 = fmul fast float %2337, 4.000000e+00
  %4887 = fmul fast float %4886, %4751
  %4888 = fmul fast float %4887, %4879
  %4889 = fadd fast float %4882, %4869
  %4890 = fadd fast float %4885, %4870
  %4891 = fadd fast float %4888, %4871
  %4892 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4893 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4894 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  br label %4895

; <label>:4895                                    ; preds = %4872, %4827
  %4896 = phi float [ %4892, %4872 ], [ %4869, %4827 ]
  %4897 = phi float [ %4893, %4872 ], [ %4870, %4827 ]
  %4898 = phi float [ %4894, %4872 ], [ %4871, %4827 ]
  %4899 = call float @dx.op.binary.f32(i32 35, float %4897, float %4898)  ; FMax(a,b)
  %4900 = call float @dx.op.binary.f32(i32 35, float %4896, float %4899)  ; FMax(a,b)
  %4901 = fsub fast float 1.000000e+00, %4900
  %4902 = fmul fast float %3768, %3773
  %4903 = fadd fast float %3775, %4902
  %4904 = call float @dx.op.unary.f32(i32 7, float %4903)  ; Saturate(value)
  %4905 = fsub fast float %3800, %2345
  %4906 = fsub fast float %3801, %2346
  %4907 = fsub fast float %3802, %2347
  %4908 = call float @dx.op.dot3.f32(i32 55, float %4905, float %4906, float %4907, float %4905, float %4906, float %4907)  ; Dot3(ax,ay,az,bx,by,bz)
  %4909 = call float @dx.op.unary.f32(i32 25, float %4908)  ; Rsqrt(value)
  %4910 = fmul fast float %4909, %4905
  %4911 = fmul fast float %4909, %4906
  %4912 = fmul fast float %4909, %4907
  %4913 = call float @dx.op.dot3.f32(i32 55, float %4848, float %4849, float %4850, float %4910, float %4911, float %4912)  ; Dot3(ax,ay,az,bx,by,bz)
  %4914 = fmul fast float %4913, %4913
  %4915 = call float @dx.op.unary.f32(i32 6, float %4852)  ; FAbs(value)
  %4916 = call float @dx.op.binary.f32(i32 35, float %4904, float 0x3F847AE140000000)  ; FMax(a,b)
  %4917 = fmul fast float %4916, %4916
  %4918 = fmul fast float %4917, %4917
  %4919 = fsub fast float 1.000000e+00, %4918
  %4920 = fmul fast float %4713, %4919
  %4921 = fadd fast float %4920, %4918
  %4922 = bitcast float %4921 to i32
  %4923 = ashr i32 %4922, 1
  %4924 = add nsw i32 %4923, 532487669
  %4925 = bitcast i32 %4924 to float
  %4926 = fadd fast float %4925, %2339
  %4927 = fmul fast float %4918, %4914
  %4928 = fsub fast float 1.000000e+00, %4914
  %4929 = fadd fast float %4928, %4927
  %4930 = fmul fast float %4915, %4915
  %4931 = fmul fast float %4930, %4919
  %4932 = fadd fast float %4931, %4918
  %4933 = bitcast float %4932 to i32
  %4934 = ashr i32 %4933, 1
  %4935 = add nsw i32 %4934, 532487669
  %4936 = bitcast i32 %4935 to float
  %4937 = fadd fast float %4936, %4915
  %4938 = fmul fast float %4929, %4929
  %4939 = fmul fast float %4938, %4926
  %4940 = fmul fast float %4939, %4937
  %4941 = fdiv fast float 0x3FF0A00000000000, %4940
  %4942 = fmul fast float %4941, %4918
  %4943 = fmul fast float %4852, %4845
  %4944 = fmul fast float %4852, %4846
  %4945 = fmul fast float %4852, %4847
  %4946 = fmul fast float %4943, %4901
  %4947 = fmul fast float %4946, %4942
  %4948 = fmul fast float %4944, %4901
  %4949 = fmul fast float %4948, %4942
  %4950 = fmul fast float %4945, %4901
  %4951 = fmul fast float %4950, %4942
  %4952 = fmul fast float %4782, %4736
  %4953 = fmul fast float %4783, %4736
  %4954 = fmul fast float %4784, %4736
  %4955 = fsub fast float 1.000000e+00, %4700
  %4956 = bitcast float %4955 to i32
  %4957 = sitofp i32 %4956 to float
  %4958 = fmul fast float %4957, 5.000000e+00
  %4959 = fadd fast float %4958, 0xC1EFBF8940000000
  %4960 = fptosi float %4959 to i32
  %4961 = bitcast i32 %4960 to float
  %4962 = fmul fast float %4961, %1669
  %4963 = fmul fast float %4833, %4962
  %4964 = fmul fast float %4963, %3700
  %4965 = fmul fast float %4963, %3701
  %4966 = fmul fast float %4963, %3702
  %4967 = fadd fast float %4964, %4952
  %4968 = fadd fast float %4965, %4953
  %4969 = fadd fast float %4966, %4954
  %4970 = fmul fast float %4967, %4705
  %4971 = fmul fast float %4968, %4705
  %4972 = fmul fast float %4969, %4705
  %4973 = fmul fast float %4705, %4688
  %4974 = fmul fast float %4973, %4833
  %4975 = fmul fast float %4705, %4689
  %4976 = fmul fast float %4975, %4833
  %4977 = fmul fast float %4705, %4690
  %4978 = fmul fast float %4977, %4833
  %4979 = fadd fast float %4970, %4947
  %4980 = fadd fast float %4971, %4949
  %4981 = fadd fast float %4972, %4951
  %4982 = fmul fast float %4979, %4688
  %4983 = fmul fast float %4980, %4689
  %4984 = fmul fast float %4981, %4690
  %4985 = fadd fast float %4974, %3790
  %4986 = fmul fast float %4985, %1693
  %4987 = fadd fast float %4976, %3792
  %4988 = fmul fast float %4987, %1693
  %4989 = fadd fast float %4978, %3794
  %4990 = fmul fast float %4989, %1693
  %4991 = fadd fast float %4982, %3753
  %4992 = fmul fast float %4991, %1693
  %4993 = fadd fast float %4983, %3756
  %4994 = fmul fast float %4993, %1693
  %4995 = fadd fast float %4984, %3759
  %4996 = fmul fast float %4995, %1693
  br label %4997

; <label>:4997                                    ; preds = %4895, %4606, %3680
  %4998 = phi float [ %3754, %3680 ], [ %3754, %4606 ], [ %4992, %4895 ]
  %4999 = phi float [ %3757, %3680 ], [ %3757, %4606 ], [ %4994, %4895 ]
  %5000 = phi float [ %3760, %3680 ], [ %3760, %4606 ], [ %4996, %4895 ]
  %5001 = phi float [ %3791, %3680 ], [ %3791, %4606 ], [ %4986, %4895 ]
  %5002 = phi float [ %3793, %3680 ], [ %3793, %4606 ], [ %4988, %4895 ]
  %5003 = phi float [ %3795, %3680 ], [ %3795, %4606 ], [ %4990, %4895 ]
  %5004 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5005 = extractvalue %dx.types.CBufRet.i32 %5004, 0
  %5006 = icmp eq i32 %5005, 0
  br i1 %5006, label %5781, label %5007

; <label>:5007                                    ; preds = %4997
  %5008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5009 = extractvalue %dx.types.CBufRet.f32 %5008, 2
  %5010 = extractvalue %dx.types.CBufRet.f32 %5008, 3
  %5011 = fmul fast float %5009, %90
  %5012 = fmul fast float %5010, %91
  %5013 = fptoui float %5011 to i32
  %5014 = fptoui float %5012 to i32
  %5015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5016 = extractvalue %dx.types.CBufRet.f32 %5015, 0
  %5017 = extractvalue %dx.types.CBufRet.f32 %5015, 2
  %5018 = extractvalue %dx.types.CBufRet.f32 %5015, 3
  %5019 = fadd fast float %81, -4.000000e+00
  %5020 = call float @dx.op.binary.f32(i32 35, float %5019, float 0.000000e+00)  ; FMax(a,b)
  %5021 = fadd fast float %5020, %5016
  %5022 = fmul fast float %5021, %5017
  %5023 = call float @dx.op.unary.f32(i32 23, float %5022)  ; Log(value)
  %5024 = fmul fast float %5023, %5018
  %5025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5026 = extractvalue %dx.types.CBufRet.f32 %5025, 2
  %5027 = fmul fast float %5024, %5026
  %5028 = call float @dx.op.unary.f32(i32 7, float %5027)  ; Saturate(value)
  %5029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5030 = extractvalue %dx.types.CBufRet.i32 %5029, 1
  %5031 = add i32 %5030, -1
  %5032 = uitofp i32 %5030 to float
  %5033 = fmul fast float %5032, %5028
  %5034 = fptoui float %5033 to i32
  %5035 = call i32 @dx.op.binary.i32(i32 40, i32 %5034, i32 %5031)  ; UMin(a,b)
  %5036 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5037 = extractvalue %dx.types.CBufRet.i32 %5036, 2
  %5038 = extractvalue %dx.types.CBufRet.i32 %5036, 3
  %5039 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5014, i32 %5037, i32 %5013)  ; UMad(a,b,c)
  %5040 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5035, i32 %5038, i32 %5039)  ; UMad(a,b,c)
  %5041 = add nsw i32 %5005, -1
  %5042 = call i32 @dx.op.binary.i32(i32 37, i32 %5041, i32 0)  ; IMax(a,b)
  %5043 = call float @dx.op.binary.f32(i32 35, float %81, float 0.000000e+00)  ; FMax(a,b)
  %5044 = fptoui float %5043 to i32
  %5045 = lshr i32 %5044, 5
  %5046 = call i32 @dx.op.binary.i32(i32 40, i32 %5045, i32 8191)  ; UMin(a,b)
  %5047 = shl i32 %5046, 2
  %5048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5047, i32 undef)  ; BufferLoad(srv,index,wot)
  %5049 = extractvalue %dx.types.ResRet.i32 %5048, 0
  %5050 = lshr i32 %5049, 16
  %5051 = and i32 %5049, 65535
  %5052 = lshr i32 %5049, 21
  %5053 = lshr i32 %5051, 5
  %5054 = call i32 @dx.op.binary.i32(i32 40, i32 %5053, i32 %5042)  ; UMin(a,b)
  %5055 = icmp ugt i32 %5052, %5054
  br i1 %5055, label %5781, label %5056

; <label>:5056                                    ; preds = %5007
  br label %5057

; <label>:5057                                    ; preds = %5771, %5056
  %5058 = phi i32 [ %5778, %5771 ], [ %5052, %5056 ]
  %5059 = phi float [ %5772, %5771 ], [ %4998, %5056 ]
  %5060 = phi float [ %5773, %5771 ], [ %4999, %5056 ]
  %5061 = phi float [ %5774, %5771 ], [ %5000, %5056 ]
  %5062 = phi float [ %5775, %5771 ], [ %5001, %5056 ]
  %5063 = phi float [ %5776, %5771 ], [ %5002, %5056 ]
  %5064 = phi float [ %5777, %5771 ], [ %5003, %5056 ]
  %5065 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5066 = extractvalue %dx.types.CBufRet.i32 %5065, 0
  %5067 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5040, i32 %5066, i32 %5058)  ; UMad(a,b,c)
  %5068 = shl i32 %5067, 2
  %5069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5068, i32 undef)  ; BufferLoad(srv,index,wot)
  %5070 = extractvalue %dx.types.ResRet.i32 %5069, 0
  %5071 = shl i32 %5058, 5
  %5072 = sub nsw i32 %5050, %5071
  %5073 = call i32 @dx.op.binary.i32(i32 37, i32 %5072, i32 0)  ; IMax(a,b)
  %5074 = call i32 @dx.op.binary.i32(i32 38, i32 %5073, i32 31)  ; IMin(a,b)
  %5075 = sub nsw i32 1, %5050
  %5076 = add nsw i32 %5075, %5051
  %5077 = call i32 @dx.op.binary.i32(i32 37, i32 %5076, i32 0)  ; IMax(a,b)
  %5078 = call i32 @dx.op.binary.i32(i32 38, i32 %5077, i32 32)  ; IMin(a,b)
  %5079 = and i32 %5078, 31
  %5080 = shl i32 -1, %5079
  %5081 = xor i32 %5080, -1
  %5082 = and i32 %5074, 31
  %5083 = shl i32 %5081, %5082
  %5084 = icmp eq i32 %5078, 32
  %5085 = select i1 %5084, i32 -1, i32 %5083
  %5086 = and i32 %5085, %5070
  %5087 = icmp eq i32 %5086, 0
  br i1 %5087, label %5771, label %5088

; <label>:5088                                    ; preds = %5057
  br label %5089

; <label>:5089                                    ; preds = %5224, %5088
  %5090 = phi i32 [ %5101, %5224 ], [ %5086, %5088 ]
  %5091 = phi float [ %5225, %5224 ], [ %5059, %5088 ]
  %5092 = phi float [ %5226, %5224 ], [ %5060, %5088 ]
  %5093 = phi float [ %5227, %5224 ], [ %5061, %5088 ]
  %5094 = phi float [ %5228, %5224 ], [ %5062, %5088 ]
  %5095 = phi float [ %5229, %5224 ], [ %5063, %5088 ]
  %5096 = phi float [ %5230, %5224 ], [ %5064, %5088 ]
  %5097 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5090)  ; FirstbitLo(value)
  %5098 = add i32 %5097, %5071
  %5099 = and i32 %5097, 31
  %5100 = shl i32 1, %5099
  %5101 = xor i32 %5100, %5090
  %5102 = mul i32 %5098, 112
  %5103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5102, i32 undef)  ; BufferLoad(srv,index,wot)
  %5104 = extractvalue %dx.types.ResRet.f32 %5103, 0
  %5105 = extractvalue %dx.types.ResRet.f32 %5103, 1
  %5106 = extractvalue %dx.types.ResRet.f32 %5103, 2
  %5107 = or i32 %5102, 12
  %5108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5107, i32 undef)  ; BufferLoad(srv,index,wot)
  %5109 = extractvalue %dx.types.ResRet.f32 %5108, 0
  %5110 = add i32 %5102, 16
  %5111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5110, i32 undef)  ; BufferLoad(srv,index,wot)
  %5112 = extractvalue %dx.types.ResRet.f32 %5111, 0
  %5113 = extractvalue %dx.types.ResRet.f32 %5111, 1
  %5114 = extractvalue %dx.types.ResRet.f32 %5111, 2
  %5115 = add i32 %5102, 28
  %5116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5115, i32 undef)  ; BufferLoad(srv,index,wot)
  %5117 = extractvalue %dx.types.ResRet.i32 %5116, 0
  %5118 = add i32 %5102, 44
  %5119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5118, i32 undef)  ; BufferLoad(srv,index,wot)
  %5120 = extractvalue %dx.types.ResRet.f32 %5119, 0
  %5121 = add i32 %5102, 48
  %5122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5121, i32 undef)  ; BufferLoad(srv,index,wot)
  %5123 = extractvalue %dx.types.ResRet.f32 %5122, 0
  %5124 = extractvalue %dx.types.ResRet.f32 %5122, 1
  %5125 = extractvalue %dx.types.ResRet.f32 %5122, 2
  %5126 = extractvalue %dx.types.ResRet.f32 %5122, 3
  %5127 = add i32 %5102, 64
  %5128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5127, i32 undef)  ; BufferLoad(srv,index,wot)
  %5129 = extractvalue %dx.types.ResRet.f32 %5128, 0
  %5130 = extractvalue %dx.types.ResRet.f32 %5128, 1
  %5131 = extractvalue %dx.types.ResRet.f32 %5128, 2
  %5132 = extractvalue %dx.types.ResRet.f32 %5128, 3
  %5133 = add i32 %5102, 80
  %5134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5133, i32 undef)  ; BufferLoad(srv,index,wot)
  %5135 = extractvalue %dx.types.ResRet.f32 %5134, 1
  %5136 = extractvalue %dx.types.ResRet.f32 %5134, 2
  %5137 = add i32 %5102, 92
  %5138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5137, i32 undef)  ; BufferLoad(srv,index,wot)
  %5139 = extractvalue %dx.types.ResRet.i32 %5138, 0
  %5140 = call float @dx.op.dot3.f32(i32 55, float %5104, float %5105, float %5106, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5141 = select i1 %228, float %5135, float %5104
  %5142 = select i1 %228, float %5140, float %5105
  %5143 = select i1 %228, float %5136, float %5106
  %5144 = and i32 %5139, 65535
  %5145 = uitofp i32 %5144 to float
  %5146 = lshr i32 %5139, 16
  %5147 = uitofp i32 %5146 to float
  %5148 = and i32 %5117, 65535
  %5149 = and i32 %5117, 50331648
  %5150 = icmp slt i32 %5117, 0
  %5151 = icmp eq i32 %5149, 33554432
  %5152 = fsub fast float %5123, %137
  %5153 = fsub fast float %5124, %138
  %5154 = fsub fast float %5125, %139
  %5155 = call float @dx.op.dot3.f32(i32 55, float %5152, float %5153, float %5154, float %5152, float %5153, float %5154)  ; Dot3(ax,ay,az,bx,by,bz)
  %5156 = call float @dx.op.unary.f32(i32 24, float %5155)  ; Sqrt(value)
  %5157 = fdiv fast float 1.000000e+00, %5156
  %5158 = fmul fast float %5157, %5152
  %5159 = fmul fast float %5157, %5153
  %5160 = fmul fast float %5157, %5154
  %5161 = fadd fast float %5156, %5109
  %5162 = fdiv fast float 1.000000e+00, %5161
  %5163 = fmul float %5120, %5162
  %5164 = fmul float %5163, %5163
  %5165 = call float @dx.op.unary.f32(i32 7, float %5164)  ; Saturate(value)
  br i1 %5151, label %5166, label %5187

; <label>:5166                                    ; preds = %5089
  %5167 = fmul fast float %5131, %5112
  %5168 = fmul fast float %5131, %5113
  %5169 = fmul fast float %5131, %5114
  %5170 = fadd fast float %5152, %5167
  %5171 = fadd fast float %5153, %5168
  %5172 = fadd fast float %5154, %5169
  %5173 = call float @dx.op.dot3.f32(i32 55, float %5170, float %5171, float %5172, float %5170, float %5171, float %5172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5174 = call float @dx.op.unary.f32(i32 25, float %5173)  ; Rsqrt(value)
  %5175 = fmul fast float %5174, %5170
  %5176 = fmul fast float %5174, %5171
  %5177 = fmul fast float %5174, %5172
  %5178 = fsub fast float %137, %5123
  %5179 = fsub fast float %138, %5124
  %5180 = fsub fast float %139, %5125
  %5181 = fsub fast float -0.000000e+00, %5178
  %5182 = fsub fast float -0.000000e+00, %5179
  %5183 = fsub fast float -0.000000e+00, %5180
  %5184 = call float @dx.op.dot3.f32(i32 55, float %5181, float %5182, float %5183, float %5112, float %5113, float %5114)  ; Dot3(ax,ay,az,bx,by,bz)
  %5185 = fcmp fast ogt float %5184, 0.000000e+00
  %5186 = uitofp i1 %5185 to float
  br label %5187

; <label>:5187                                    ; preds = %5166, %5089
  %5188 = phi float [ %5186, %5166 ], [ 1.000000e+00, %5089 ]
  %5189 = phi float [ %5175, %5166 ], [ %5158, %5089 ]
  %5190 = phi float [ %5176, %5166 ], [ %5159, %5089 ]
  %5191 = phi float [ %5177, %5166 ], [ %5160, %5089 ]
  %5192 = call float @dx.op.dot3.f32(i32 55, float %5112, float %5113, float %5114, float %5189, float %5190, float %5191)  ; Dot3(ax,ay,az,bx,by,bz)
  %5193 = fmul fast float %5192, %5192
  %5194 = call float @dx.op.unary.f32(i32 7, float %5193)  ; Saturate(value)
  %5195 = fsub fast float 1.000000e+00, %5194
  %5196 = fmul fast float %5195, 5.000000e-01
  %5197 = fcmp fast ogt float %5192, 0.000000e+00
  %5198 = fsub fast float 1.000000e+00, %5196
  %5199 = select i1 %5197, float %5196, float %5198
  %5200 = fmul fast float %5199, %5147
  %5201 = fadd fast float %5200, %5145
  %5202 = fmul fast float %5201, 0x3EF0001000000000
  %5203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %58, float %5202, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5204 = extractvalue %dx.types.ResRet.f32 %5203, 0
  %5205 = fmul fast float %5192, %5129
  %5206 = fadd fast float %5205, %5130
  %5207 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5208 = select i1 %5151, float 1.000000e+00, float %5207
  %5209 = select i1 %5151, float %5207, float 1.000000e+00
  %5210 = fmul fast float %5156, %5126
  %5211 = fsub fast float 1.000000e+00, %5210
  %5212 = fmul fast float %5211, %5132
  %5213 = call float @dx.op.unary.f32(i32 7, float %5212)  ; Saturate(value)
  %5214 = fmul fast float %5213, %5209
  %5215 = fmul fast float %5214, 2.000000e+00
  %5216 = fsub fast float 3.000000e+00, %5215
  %5217 = fmul fast float %5204, %5188
  %5218 = fmul fast float %5214, %5214
  %5219 = fmul fast float %5218, %5217
  %5220 = fmul fast float %5219, %5216
  %5221 = call float @dx.op.binary.f32(i32 36, float %5220, float %5220)  ; FMin(a,b)
  %5222 = call float @dx.op.binary.f32(i32 36, float %5220, float %5221)  ; FMin(a,b)
  %5223 = fcmp fast ogt float %5222, 0.000000e+00
  br i1 %5223, label %5232, label %5224, !dx.controlflow.hints !130

; <label>:5224                                    ; preds = %5724, %5332, %5187
  %5225 = phi float [ %5091, %5332 ], [ %5091, %5187 ], [ %5767, %5724 ]
  %5226 = phi float [ %5092, %5332 ], [ %5092, %5187 ], [ %5768, %5724 ]
  %5227 = phi float [ %5093, %5332 ], [ %5093, %5187 ], [ %5769, %5724 ]
  %5228 = phi float [ %5094, %5332 ], [ %5094, %5187 ], [ %5761, %5724 ]
  %5229 = phi float [ %5095, %5332 ], [ %5095, %5187 ], [ %5762, %5724 ]
  %5230 = phi float [ %5096, %5332 ], [ %5096, %5187 ], [ %5763, %5724 ]
  %5231 = icmp eq i32 %5090, %5100
  br i1 %5231, label %5770, label %5089

; <label>:5232                                    ; preds = %5187
  %5233 = icmp eq i32 %5148, 255
  br i1 %5233, label %5332, label %5234, !dx.controlflow.hints !131

; <label>:5234                                    ; preds = %5232
  %5235 = mul nuw nsw i32 %5148, 176
  %5236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5235, i32 undef)  ; BufferLoad(srv,index,wot)
  %5237 = extractvalue %dx.types.ResRet.f32 %5236, 0
  %5238 = extractvalue %dx.types.ResRet.f32 %5236, 1
  %5239 = extractvalue %dx.types.ResRet.f32 %5236, 2
  %5240 = extractvalue %dx.types.ResRet.f32 %5236, 3
  %5241 = add nuw nsw i32 %5235, 16
  %5242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5241, i32 undef)  ; BufferLoad(srv,index,wot)
  %5243 = extractvalue %dx.types.ResRet.f32 %5242, 0
  %5244 = extractvalue %dx.types.ResRet.f32 %5242, 1
  %5245 = add nuw nsw i32 %5235, 32
  %5246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5245, i32 undef)  ; BufferLoad(srv,index,wot)
  %5247 = extractvalue %dx.types.ResRet.f32 %5246, 0
  %5248 = extractvalue %dx.types.ResRet.f32 %5246, 1
  %5249 = extractvalue %dx.types.ResRet.f32 %5246, 2
  %5250 = add nuw nsw i32 %5235, 48
  %5251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5250, i32 undef)  ; BufferLoad(srv,index,wot)
  %5252 = extractvalue %dx.types.ResRet.f32 %5251, 0
  %5253 = extractvalue %dx.types.ResRet.f32 %5251, 1
  %5254 = extractvalue %dx.types.ResRet.f32 %5251, 2
  %5255 = extractvalue %dx.types.ResRet.f32 %5251, 3
  %5256 = add nuw nsw i32 %5235, 64
  %5257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5256, i32 undef)  ; BufferLoad(srv,index,wot)
  %5258 = extractvalue %dx.types.ResRet.f32 %5257, 0
  %5259 = extractvalue %dx.types.ResRet.f32 %5257, 1
  %5260 = extractvalue %dx.types.ResRet.f32 %5257, 2
  %5261 = extractvalue %dx.types.ResRet.f32 %5257, 3
  %5262 = add nuw nsw i32 %5235, 80
  %5263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5262, i32 undef)  ; BufferLoad(srv,index,wot)
  %5264 = extractvalue %dx.types.ResRet.f32 %5263, 0
  %5265 = extractvalue %dx.types.ResRet.f32 %5263, 1
  %5266 = extractvalue %dx.types.ResRet.f32 %5263, 2
  %5267 = extractvalue %dx.types.ResRet.f32 %5263, 3
  %5268 = add nuw nsw i32 %5235, 96
  %5269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5268, i32 undef)  ; BufferLoad(srv,index,wot)
  %5270 = extractvalue %dx.types.ResRet.f32 %5269, 0
  %5271 = extractvalue %dx.types.ResRet.f32 %5269, 1
  %5272 = extractvalue %dx.types.ResRet.f32 %5269, 2
  %5273 = extractvalue %dx.types.ResRet.f32 %5269, 3
  %5274 = bitcast float %5244 to i32
  %5275 = fmul fast float %5249, %70
  %5276 = fmul fast float %5249, %71
  %5277 = fmul fast float %5249, %72
  %5278 = fadd fast float %5275, %137
  %5279 = fadd fast float %5276, %138
  %5280 = fadd fast float %5277, %139
  %5281 = fmul fast float %5278, %5252
  %5282 = call float @dx.op.tertiary.f32(i32 46, float %5279, float %5258, float %5281)  ; FMad(a,b,c)
  %5283 = call float @dx.op.tertiary.f32(i32 46, float %5280, float %5264, float %5282)  ; FMad(a,b,c)
  %5284 = fadd fast float %5283, %5270
  %5285 = fmul fast float %5278, %5253
  %5286 = call float @dx.op.tertiary.f32(i32 46, float %5279, float %5259, float %5285)  ; FMad(a,b,c)
  %5287 = call float @dx.op.tertiary.f32(i32 46, float %5280, float %5265, float %5286)  ; FMad(a,b,c)
  %5288 = fadd fast float %5287, %5271
  %5289 = fmul fast float %5278, %5254
  %5290 = call float @dx.op.tertiary.f32(i32 46, float %5279, float %5260, float %5289)  ; FMad(a,b,c)
  %5291 = call float @dx.op.tertiary.f32(i32 46, float %5280, float %5266, float %5290)  ; FMad(a,b,c)
  %5292 = fadd fast float %5291, %5272
  %5293 = fmul fast float %5278, %5255
  %5294 = call float @dx.op.tertiary.f32(i32 46, float %5279, float %5261, float %5293)  ; FMad(a,b,c)
  %5295 = call float @dx.op.tertiary.f32(i32 46, float %5280, float %5267, float %5294)  ; FMad(a,b,c)
  %5296 = fadd fast float %5295, %5273
  %5297 = fdiv fast float %5284, %5296
  %5298 = fdiv fast float %5288, %5296
  %5299 = fdiv fast float %5292, %5296
  %5300 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5299)  ; FMax(a,b)
  %5301 = fmul fast float %239, 0x401921FB60000000
  %5302 = call float @dx.op.unary.f32(i32 13, float %5301)  ; Sin(value)
  %5303 = call float @dx.op.unary.f32(i32 12, float %5301)  ; Cos(value)
  %5304 = fsub fast float -0.000000e+00, %5302
  %5305 = fmul fast float %5239, 5.000000e-01
  %5306 = call float @dx.op.dot2.f32(i32 54, float %239, float %239, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %5307 = call float @dx.op.unary.f32(i32 22, float %5306)  ; Frc(value)
  %5308 = fmul fast float %5307, 0x404A7DD040000000
  %5309 = call float @dx.op.unary.f32(i32 22, float %5308)  ; Frc(value)
  %5310 = fmul fast float %5309, %5248
  %5311 = fadd fast float %5310, %5305
  %5312 = call float @dx.op.tertiary.f32(i32 46, float %5311, float %5304, float 0.000000e+00)  ; FMad(a,b,c)
  %5313 = call float @dx.op.tertiary.f32(i32 46, float %5311, float %5303, float 0.000000e+00)  ; FMad(a,b,c)
  %5314 = fadd fast float %5312, %5297
  %5315 = fadd fast float %5313, %5298
  %5316 = fmul fast float %5314, %5243
  %5317 = fmul fast float %5315, %5243
  %5318 = call float @dx.op.binary.f32(i32 35, float %5316, float %5239)  ; FMax(a,b)
  %5319 = call float @dx.op.binary.f32(i32 35, float %5317, float %5239)  ; FMax(a,b)
  %5320 = call float @dx.op.binary.f32(i32 36, float %5318, float %5240)  ; FMin(a,b)
  %5321 = call float @dx.op.binary.f32(i32 36, float %5319, float %5240)  ; FMin(a,b)
  %5322 = fadd fast float %5320, %5237
  %5323 = fadd fast float %5321, %5238
  %5324 = uitofp i32 %5274 to float
  %5325 = fadd fast float %5300, %5247
  %5326 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %60, float %5322, float %5323, float %5324, float undef, i32 0, i32 0, i32 undef, float %5325)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5327 = extractvalue %dx.types.ResRet.f32 %5326, 0
  %5328 = fadd fast float %5327, -1.000000e+00
  %5329 = fmul fast float %5328, %5208
  %5330 = fadd fast float %5329, 1.000000e+00
  %5331 = fmul fast float %5330, %5220
  br label %5332

; <label>:5332                                    ; preds = %5234, %5232
  %5333 = phi float [ %5331, %5234 ], [ %5220, %5232 ]
  %5334 = call float @dx.op.binary.f32(i32 36, float %5333, float %5333)  ; FMin(a,b)
  %5335 = call float @dx.op.binary.f32(i32 36, float %5333, float %5334)  ; FMin(a,b)
  %5336 = fcmp fast ogt float %5335, 0.000000e+00
  br i1 %5336, label %5337, label %5224, !dx.controlflow.hints !132

; <label>:5337                                    ; preds = %5332
  %5338 = fmul fast float %5333, %5141
  %5339 = fmul fast float %5333, %5142
  %5340 = fmul fast float %5333, %5143
  %5341 = fsub fast float %5125, %2124
  %5342 = fcmp fast ogt float %5341, 0.000000e+00
  %5343 = fsub fast float %139, %2124
  %5344 = fcmp fast ogt float %5343, 0.000000e+00
  %5345 = xor i1 %5344, %5342
  %5346 = fsub fast float %2124, %5125
  %5347 = fmul fast float %5346, 2.000000e+00
  %5348 = fadd fast float %5347, %5125
  %5349 = select i1 %5345, float %5125, float %5348
  %5350 = fsub fast float %5349, %139
  %5351 = call float @dx.op.dot3.f32(i32 55, float %5152, float %5153, float %5350, float %5152, float %5153, float %5350)  ; Dot3(ax,ay,az,bx,by,bz)
  %5352 = call float @dx.op.unary.f32(i32 25, float %5351)  ; Rsqrt(value)
  %5353 = fmul fast float %5352, %5152
  %5354 = fmul fast float %5352, %5153
  %5355 = fmul fast float %5352, %5350
  %5356 = fsub fast float %2124, %139
  %5357 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5356)  ; Dot3(ax,ay,az,bx,by,bz)
  %5358 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5353, float %5354, float %5355)  ; Dot3(ax,ay,az,bx,by,bz)
  %5359 = fdiv fast float 1.000000e+00, %5358
  %5360 = fmul fast float %5359, %5357
  %5361 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5343, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5362 = fcmp fast ogt float %5361, 0.000000e+00
  %5363 = fcmp fast olt float %5361, 0.000000e+00
  %5364 = zext i1 %5362 to i32
  %5365 = zext i1 %5363 to i32
  %5366 = sub nsw i32 %5364, %5365
  %5367 = sitofp i32 %5366 to float
  %5368 = fsub fast float %5349, %2124
  %5369 = call float @dx.op.dot3.f32(i32 55, float %5152, float %5153, float %5368, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5370 = fcmp fast ogt float %5369, 0.000000e+00
  %5371 = fcmp fast olt float %5369, 0.000000e+00
  %5372 = zext i1 %5370 to i32
  %5373 = zext i1 %5371 to i32
  %5374 = sub nsw i32 %5372, %5373
  %5375 = sitofp i32 %5374 to float
  %5376 = fcmp fast une float %5367, %5375
  br i1 %5376, label %5377, label %5387

; <label>:5377                                    ; preds = %5337
  %5378 = fmul fast float %5360, %5355
  %5379 = fmul fast float %5360, %5354
  %5380 = fmul fast float %5360, %5353
  %5381 = fmul fast float %5380, %5380
  %5382 = fmul fast float %5379, %5379
  %5383 = fadd fast float %5381, %5382
  %5384 = fmul fast float %5378, %5378
  %5385 = fadd fast float %5383, %5384
  %5386 = call float @dx.op.unary.f32(i32 24, float %5385)  ; Sqrt(value)
  br label %5399

; <label>:5387                                    ; preds = %5337
  %5388 = icmp slt i32 %5366, 0
  br i1 %5388, label %5389, label %5399

; <label>:5389                                    ; preds = %5387
  %5390 = fsub fast float %137, %5123
  %5391 = fsub fast float %138, %5124
  %5392 = fsub fast float %139, %5349
  %5393 = fmul fast float %5390, %5390
  %5394 = fmul fast float %5391, %5391
  %5395 = fadd fast float %5393, %5394
  %5396 = fmul fast float %5392, %5392
  %5397 = fadd fast float %5395, %5396
  %5398 = call float @dx.op.unary.f32(i32 24, float %5397)  ; Sqrt(value)
  br label %5399

; <label>:5399                                    ; preds = %5389, %5387, %5377
  %5400 = phi float [ %5386, %5377 ], [ %5398, %5389 ], [ 0.000000e+00, %5387 ]
  %5401 = and i1 %5344, %5342
  %5402 = fsub fast float -0.000000e+00, %5400
  %5403 = select i1 %5401, float -0.000000e+00, float %5402
  %5404 = fmul fast float %2125, 0x3FF7154760000000
  %5405 = fmul fast float %5404, %5403
  %5406 = fmul fast float %2126, 0x3FF7154760000000
  %5407 = fmul fast float %5406, %5403
  %5408 = fmul fast float %2127, 0x3FF7154760000000
  %5409 = fmul fast float %5408, %5403
  %5410 = call float @dx.op.unary.f32(i32 21, float %5405)  ; Exp(value)
  %5411 = call float @dx.op.unary.f32(i32 21, float %5407)  ; Exp(value)
  %5412 = call float @dx.op.unary.f32(i32 21, float %5409)  ; Exp(value)
  %5413 = call float @dx.op.unary.f32(i32 7, float %5410)  ; Saturate(value)
  %5414 = call float @dx.op.unary.f32(i32 7, float %5411)  ; Saturate(value)
  %5415 = call float @dx.op.unary.f32(i32 7, float %5412)  ; Saturate(value)
  %5416 = fmul fast float %5338, %5413
  %5417 = fmul fast float %5339, %5414
  %5418 = fmul fast float %5340, %5415
  %5419 = fsub fast float %5158, %2324
  %5420 = fsub fast float %5159, %2323
  %5421 = fsub fast float %5160, %2322
  %5422 = call float @dx.op.dot3.f32(i32 55, float %5419, float %5420, float %5421, float %5419, float %5420, float %5421)  ; Dot3(ax,ay,az,bx,by,bz)
  %5423 = call float @dx.op.unary.f32(i32 25, float %5422)  ; Rsqrt(value)
  %5424 = fmul fast float %5423, %5419
  %5425 = fmul fast float %5423, %5420
  %5426 = fmul fast float %5423, %5421
  %5427 = call float @dx.op.dot3.f32(i32 55, float %5158, float %5159, float %5160, float %2331, float %2332, float %2333)  ; Dot3(ax,ay,az,bx,by,bz)
  %5428 = call float @dx.op.dot3.f32(i32 55, float %2321, float %2320, float %2319, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5429 = call float @dx.op.unary.f32(i32 7, float %5427)  ; Saturate(value)
  %5430 = fmul fast float %5429, %5165
  %5431 = fmul fast float %5429, %5429
  %5432 = fmul fast float %5431, %2352
  %5433 = call float @dx.op.unary.f32(i32 7, float %5432)  ; Saturate(value)
  %5434 = fmul fast float %5430, %5433
  %5435 = bitcast float %5155 to i32
  %5436 = ashr i32 %5435, 1
  %5437 = sub nsw i32 1597463007, %5436
  %5438 = bitcast i32 %5437 to float
  %5439 = fmul fast float %5438, %5152
  %5440 = fmul fast float %5438, %5153
  %5441 = fmul fast float %5438, %5154
  %5442 = fsub fast float %5439, %2324
  %5443 = fsub fast float %5440, %2323
  %5444 = fsub fast float %5441, %2322
  %5445 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %5442, float %5443, float %5444)  ; Dot3(ax,ay,az,bx,by,bz)
  %5446 = call float @dx.op.unary.f32(i32 25, float %5445)  ; Rsqrt(value)
  %5447 = fmul fast float %5442, %5446
  %5448 = fmul fast float %5443, %5446
  %5449 = fmul fast float %5444, %5446
  %5450 = call float @dx.op.dot3.f32(i32 55, float %2331, float %2332, float %2333, float %5447, float %5448, float %5449)  ; Dot3(ax,ay,az,bx,by,bz)
  %5451 = fmul fast float %5450, %5450
  %5452 = call float @dx.op.unary.f32(i32 6, float %5427)  ; FAbs(value)
  %5453 = call float @dx.op.binary.f32(i32 35, float %3768, float 0x3F847AE140000000)  ; FMax(a,b)
  %5454 = fmul fast float %5453, %5453
  %5455 = fmul fast float %5454, %5454
  %5456 = fsub fast float 1.000000e+00, %5455
  %5457 = fmul fast float %2339, %2339
  %5458 = fmul fast float %5457, %5456
  %5459 = fadd fast float %5458, %5455
  %5460 = bitcast float %5459 to i32
  %5461 = ashr i32 %5460, 1
  %5462 = add nsw i32 %5461, 532487669
  %5463 = bitcast i32 %5462 to float
  %5464 = fadd fast float %5463, %2339
  %5465 = fmul fast float %5455, %5451
  %5466 = fsub fast float 1.000000e+00, %5451
  %5467 = fadd fast float %5466, %5465
  %5468 = fmul fast float %5452, %5452
  %5469 = fmul fast float %5468, %5456
  %5470 = fadd fast float %5469, %5455
  %5471 = bitcast float %5470 to i32
  %5472 = ashr i32 %5471, 1
  %5473 = add nsw i32 %5472, 532487669
  %5474 = bitcast i32 %5473 to float
  %5475 = fadd fast float %5474, %5452
  %5476 = fmul fast float %5467, %5467
  %5477 = fmul fast float %5476, %5464
  %5478 = fmul fast float %5477, %5475
  %5479 = fdiv fast float 1.000000e+00, %5478
  %5480 = bitcast float %5455 to i32
  %5481 = sitofp i32 %5480 to float
  %5482 = fmul fast float %5481, 0x3FE7F73180000000
  %5483 = fadd fast float %5482, 0x41AFE27C40000000
  %5484 = fptosi float %5483 to i32
  %5485 = bitcast i32 %5484 to float
  %5486 = fmul fast float %5120, 0x3FD80E9D60000000
  %5487 = fmul fast float %5486, %5438
  %5488 = fadd fast float %5485, %5487
  %5489 = bitcast float %5488 to i32
  %5490 = sub nsw i32 2129859010, %5489
  %5491 = bitcast i32 %5490 to float
  %5492 = fmul fast float %5455, %5479
  %5493 = fmul fast float %5492, %5485
  %5494 = fmul fast float %5493, %5491
  %5495 = fmul fast float %3630, 0x3FF9999980000000
  %5496 = fsub fast float 5.000000e+00, %5495
  %5497 = call float @dx.op.unary.f32(i32 6, float %5428)  ; FAbs(value)
  %5498 = fsub fast float 1.000000e+00, %5497
  %5499 = fmul fast float %3630, 0x41D9660740000000
  %5500 = fadd fast float %5499, 0xC1EFBF8940000000
  %5501 = bitcast float %5498 to i32
  %5502 = sitofp i32 %5501 to float
  %5503 = fmul fast float %5502, %5496
  %5504 = fadd fast float %5500, %5503
  %5505 = fptosi float %5504 to i32
  %5506 = bitcast i32 %5505 to float
  %5507 = fsub fast float 1.000000e+00, %2328
  %5508 = fsub fast float 1.000000e+00, %2329
  %5509 = fsub fast float 1.000000e+00, %2337
  %5510 = fmul fast float %5506, %5507
  %5511 = fmul fast float %5506, %5508
  %5512 = fmul fast float %5506, %5509
  %5513 = fadd fast float %5510, %2328
  %5514 = fadd fast float %5511, %2329
  %5515 = fadd fast float %5512, %2337
  br i1 %3653, label %5516, label %5539

; <label>:5516                                    ; preds = %5399
  %5517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1670, float %5497, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5518 = extractvalue %dx.types.ResRet.f32 %5517, 0
  %5519 = extractvalue %dx.types.ResRet.f32 %5517, 1
  %5520 = extractvalue %dx.types.ResRet.f32 %5517, 2
  %5521 = fadd fast float %5518, -5.000000e-01
  %5522 = fadd fast float %5519, -5.000000e-01
  %5523 = fadd fast float %5520, -5.000000e-01
  %5524 = fmul fast float %2328, 4.000000e+00
  %5525 = fmul fast float %5524, %5507
  %5526 = fmul fast float %5525, %5521
  %5527 = fmul fast float %2329, 4.000000e+00
  %5528 = fmul fast float %5527, %5508
  %5529 = fmul fast float %5528, %5522
  %5530 = fmul fast float %2337, 4.000000e+00
  %5531 = fmul fast float %5530, %5509
  %5532 = fmul fast float %5531, %5523
  %5533 = fadd fast float %5526, %5513
  %5534 = fadd fast float %5529, %5514
  %5535 = fadd fast float %5532, %5515
  %5536 = call float @dx.op.unary.f32(i32 7, float %5533)  ; Saturate(value)
  %5537 = call float @dx.op.unary.f32(i32 7, float %5534)  ; Saturate(value)
  %5538 = call float @dx.op.unary.f32(i32 7, float %5535)  ; Saturate(value)
  br label %5539

; <label>:5539                                    ; preds = %5516, %5399
  %5540 = phi float [ %5536, %5516 ], [ %5513, %5399 ]
  %5541 = phi float [ %5537, %5516 ], [ %5514, %5399 ]
  %5542 = phi float [ %5538, %5516 ], [ %5515, %5399 ]
  %5543 = fmul fast float %5427, 9.843750e-01
  %5544 = fadd fast float %5543, 7.812500e-03
  %5545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5544, float %3634, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5546 = extractvalue %dx.types.ResRet.f32 %5545, 0
  %5547 = extractvalue %dx.types.ResRet.f32 %5545, 1
  %5548 = extractvalue %dx.types.ResRet.f32 %5545, 2
  %5549 = extractvalue %dx.types.ResRet.f32 %5545, 3
  %5550 = fsub fast float %5548, %5546
  %5551 = fsub fast float %5549, %5547
  %5552 = fmul fast float %5550, %3640
  %5553 = fmul fast float %5551, %3640
  %5554 = fadd fast float %5552, %5546
  %5555 = fadd fast float %5553, %5547
  %5556 = fmul fast float %5554, %2328
  %5557 = fmul fast float %5554, %2329
  %5558 = fmul fast float %5554, %2337
  %5559 = fadd fast float %5556, %5555
  %5560 = fadd fast float %5557, %5555
  %5561 = fadd fast float %5558, %5555
  br i1 %3653, label %5562, label %5585

; <label>:5562                                    ; preds = %5539
  %5563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1670, float %5427, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5564 = extractvalue %dx.types.ResRet.f32 %5563, 0
  %5565 = extractvalue %dx.types.ResRet.f32 %5563, 1
  %5566 = extractvalue %dx.types.ResRet.f32 %5563, 2
  %5567 = fadd fast float %5564, -5.000000e-01
  %5568 = fadd fast float %5565, -5.000000e-01
  %5569 = fadd fast float %5566, -5.000000e-01
  %5570 = fmul fast float %2328, 4.000000e+00
  %5571 = fmul fast float %5570, %5507
  %5572 = fmul fast float %5571, %5567
  %5573 = fmul fast float %2329, 4.000000e+00
  %5574 = fmul fast float %5573, %5508
  %5575 = fmul fast float %5574, %5568
  %5576 = fmul fast float %2337, 4.000000e+00
  %5577 = fmul fast float %5576, %5509
  %5578 = fmul fast float %5577, %5569
  %5579 = fadd fast float %5572, %5559
  %5580 = fadd fast float %5575, %5560
  %5581 = fadd fast float %5578, %5561
  %5582 = call float @dx.op.unary.f32(i32 7, float %5579)  ; Saturate(value)
  %5583 = call float @dx.op.unary.f32(i32 7, float %5580)  ; Saturate(value)
  %5584 = call float @dx.op.unary.f32(i32 7, float %5581)  ; Saturate(value)
  br label %5585

; <label>:5585                                    ; preds = %5562, %5539
  %5586 = phi float [ %5582, %5562 ], [ %5559, %5539 ]
  %5587 = phi float [ %5583, %5562 ], [ %5560, %5539 ]
  %5588 = phi float [ %5584, %5562 ], [ %5561, %5539 ]
  %5589 = call float @dx.op.binary.f32(i32 35, float %5587, float %5588)  ; FMax(a,b)
  %5590 = call float @dx.op.binary.f32(i32 35, float %5586, float %5589)  ; FMax(a,b)
  %5591 = fsub fast float 1.000000e+00, %5590
  %5592 = call float @dx.op.binary.f32(i32 35, float %5452, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5593 = fdiv fast float %1076, %5592
  %5594 = fmul fast float %3708, %5593
  %5595 = fmul fast float %3710, %5593
  %5596 = fmul fast float %3712, %5593
  %5597 = call float @dx.op.unary.f32(i32 21, float %5594)  ; Exp(value)
  %5598 = call float @dx.op.unary.f32(i32 21, float %5595)  ; Exp(value)
  %5599 = call float @dx.op.unary.f32(i32 21, float %5596)  ; Exp(value)
  %5600 = call float @dx.op.unary.f32(i32 7, float %5597)  ; Saturate(value)
  %5601 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5602 = call float @dx.op.unary.f32(i32 7, float %5599)  ; Saturate(value)
  %5603 = select i1 %3705, float %5600, float 0.000000e+00
  %5604 = select i1 %3706, float %5601, float 0.000000e+00
  %5605 = select i1 %3707, float %5602, float 0.000000e+00
  %5606 = fsub fast float -0.000000e+00, %2331
  %5607 = fsub fast float -0.000000e+00, %2332
  %5608 = fsub fast float -0.000000e+00, %2333
  %5609 = call float @dx.op.dot3.f32(i32 55, float %5158, float %5159, float %5160, float %5606, float %5607, float %5608)  ; Dot3(ax,ay,az,bx,by,bz)
  %5610 = call float @dx.op.unary.f32(i32 7, float %5609)  ; Saturate(value)
  %5611 = fmul fast float %5610, %5165
  %5612 = fmul fast float %5610, 9.843750e-01
  %5613 = fadd fast float %5612, 7.812500e-03
  %5614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5613, float %3634, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5615 = extractvalue %dx.types.ResRet.f32 %5614, 0
  %5616 = extractvalue %dx.types.ResRet.f32 %5614, 1
  %5617 = extractvalue %dx.types.ResRet.f32 %5614, 2
  %5618 = extractvalue %dx.types.ResRet.f32 %5614, 3
  %5619 = fsub fast float %5617, %5615
  %5620 = fsub fast float %5618, %5616
  %5621 = fmul fast float %5619, %3640
  %5622 = fmul fast float %5620, %3640
  %5623 = fadd fast float %5621, %5615
  %5624 = fadd fast float %5622, %5616
  %5625 = fmul fast float %5623, %2328
  %5626 = fmul fast float %5623, %2329
  %5627 = fmul fast float %5623, %2337
  %5628 = fadd fast float %5625, %5624
  %5629 = fadd fast float %5626, %5624
  %5630 = fadd fast float %5627, %5624
  br i1 %3653, label %5631, label %5654

; <label>:5631                                    ; preds = %5585
  %5632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1670, float %5610, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5633 = extractvalue %dx.types.ResRet.f32 %5632, 0
  %5634 = extractvalue %dx.types.ResRet.f32 %5632, 1
  %5635 = extractvalue %dx.types.ResRet.f32 %5632, 2
  %5636 = fadd fast float %5633, -5.000000e-01
  %5637 = fadd fast float %5634, -5.000000e-01
  %5638 = fadd fast float %5635, -5.000000e-01
  %5639 = fmul fast float %2328, 4.000000e+00
  %5640 = fmul fast float %5639, %5507
  %5641 = fmul fast float %5640, %5636
  %5642 = fmul fast float %2329, 4.000000e+00
  %5643 = fmul fast float %5642, %5508
  %5644 = fmul fast float %5643, %5637
  %5645 = fmul fast float %2337, 4.000000e+00
  %5646 = fmul fast float %5645, %5509
  %5647 = fmul fast float %5646, %5638
  %5648 = fadd fast float %5641, %5628
  %5649 = fadd fast float %5644, %5629
  %5650 = fadd fast float %5647, %5630
  %5651 = call float @dx.op.unary.f32(i32 7, float %5648)  ; Saturate(value)
  %5652 = call float @dx.op.unary.f32(i32 7, float %5649)  ; Saturate(value)
  %5653 = call float @dx.op.unary.f32(i32 7, float %5650)  ; Saturate(value)
  br label %5654

; <label>:5654                                    ; preds = %5631, %5585
  %5655 = phi float [ %5651, %5631 ], [ %5628, %5585 ]
  %5656 = phi float [ %5652, %5631 ], [ %5629, %5585 ]
  %5657 = phi float [ %5653, %5631 ], [ %5630, %5585 ]
  %5658 = call float @dx.op.binary.f32(i32 35, float %5656, float %5657)  ; FMax(a,b)
  %5659 = call float @dx.op.binary.f32(i32 35, float %5655, float %5658)  ; FMax(a,b)
  %5660 = fsub fast float 1.000000e+00, %5659
  %5661 = fmul fast float %3768, %3773
  %5662 = fadd fast float %3775, %5661
  %5663 = call float @dx.op.unary.f32(i32 7, float %5662)  ; Saturate(value)
  %5664 = fsub fast float %5439, %2345
  %5665 = fsub fast float %5440, %2346
  %5666 = fsub fast float %5441, %2347
  %5667 = call float @dx.op.dot3.f32(i32 55, float %5664, float %5665, float %5666, float %5664, float %5665, float %5666)  ; Dot3(ax,ay,az,bx,by,bz)
  %5668 = call float @dx.op.unary.f32(i32 25, float %5667)  ; Rsqrt(value)
  %5669 = fmul fast float %5664, %5668
  %5670 = fmul fast float %5665, %5668
  %5671 = fmul fast float %5666, %5668
  %5672 = call float @dx.op.dot3.f32(i32 55, float %5606, float %5607, float %5608, float %5669, float %5670, float %5671)  ; Dot3(ax,ay,az,bx,by,bz)
  %5673 = fmul fast float %5672, %5672
  %5674 = call float @dx.op.unary.f32(i32 6, float %5610)  ; FAbs(value)
  %5675 = call float @dx.op.binary.f32(i32 35, float %5663, float 0x3F847AE140000000)  ; FMax(a,b)
  %5676 = fmul fast float %5675, %5675
  %5677 = fmul fast float %5676, %5676
  %5678 = fsub fast float 1.000000e+00, %5677
  %5679 = fmul fast float %5457, %5678
  %5680 = fadd fast float %5679, %5677
  %5681 = bitcast float %5680 to i32
  %5682 = ashr i32 %5681, 1
  %5683 = add nsw i32 %5682, 532487669
  %5684 = bitcast i32 %5683 to float
  %5685 = fadd fast float %5684, %2339
  %5686 = fmul fast float %5677, %5673
  %5687 = fsub fast float 1.000000e+00, %5673
  %5688 = fadd fast float %5687, %5686
  %5689 = fmul fast float %5674, %5674
  %5690 = fmul fast float %5689, %5678
  %5691 = fadd fast float %5690, %5677
  %5692 = bitcast float %5691 to i32
  %5693 = ashr i32 %5692, 1
  %5694 = add nsw i32 %5693, 532487669
  %5695 = bitcast i32 %5694 to float
  %5696 = fadd fast float %5695, %5674
  %5697 = fmul fast float %5688, %5688
  %5698 = fmul fast float %5697, %5685
  %5699 = fmul fast float %5698, %5696
  %5700 = fdiv fast float 1.000000e+00, %5699
  %5701 = bitcast float %5677 to i32
  %5702 = sitofp i32 %5701 to float
  %5703 = fmul fast float %5702, 0x3FE7F73180000000
  %5704 = fadd fast float %5703, 0x41AFE27C40000000
  %5705 = fptosi float %5704 to i32
  %5706 = bitcast i32 %5705 to float
  %5707 = fadd fast float %5706, %5487
  %5708 = bitcast float %5707 to i32
  %5709 = sub nsw i32 2129859010, %5708
  %5710 = bitcast i32 %5709 to float
  %5711 = fmul fast float %5677, %5700
  %5712 = fmul fast float %5711, %5706
  %5713 = fmul fast float %5712, %5710
  br i1 %5150, label %5714, label %5724

; <label>:5714                                    ; preds = %5654
  %5715 = fmul fast float %5611, %5603
  %5716 = fmul fast float %5611, %5604
  %5717 = fmul fast float %5611, %5605
  %5718 = fmul fast float %5715, %5660
  %5719 = fmul fast float %5718, %5713
  %5720 = fmul fast float %5716, %5660
  %5721 = fmul fast float %5720, %5713
  %5722 = fmul fast float %5717, %5660
  %5723 = fmul fast float %5722, %5713
  br label %5724

; <label>:5724                                    ; preds = %5714, %5654
  %5725 = phi float [ %5719, %5714 ], [ 0.000000e+00, %5654 ]
  %5726 = phi float [ %5721, %5714 ], [ 0.000000e+00, %5654 ]
  %5727 = phi float [ %5723, %5714 ], [ 0.000000e+00, %5654 ]
  %5728 = fmul fast float %5540, %5494
  %5729 = fmul fast float %5541, %5494
  %5730 = fmul fast float %5542, %5494
  %5731 = fsub fast float 1.000000e+00, %5428
  %5732 = bitcast float %5731 to i32
  %5733 = sitofp i32 %5732 to float
  %5734 = fmul fast float %5733, 5.000000e+00
  %5735 = fadd fast float %5734, 0xC1EFBF8940000000
  %5736 = fptosi float %5735 to i32
  %5737 = bitcast i32 %5736 to float
  %5738 = fmul fast float %5737, %1669
  %5739 = fmul fast float %5591, %5738
  %5740 = fmul fast float %5739, %3700
  %5741 = fmul fast float %5739, %3701
  %5742 = fmul fast float %5739, %3702
  %5743 = fadd fast float %5740, %5728
  %5744 = fadd fast float %5741, %5729
  %5745 = fadd fast float %5742, %5730
  %5746 = fmul fast float %5743, %5434
  %5747 = fmul fast float %5744, %5434
  %5748 = fmul fast float %5745, %5434
  %5749 = fadd fast float %5746, %5725
  %5750 = fadd fast float %5747, %5726
  %5751 = fadd fast float %5748, %5727
  %5752 = fmul fast float %5416, %1693
  %5753 = fmul fast float %5752, %5434
  %5754 = fmul fast float %5753, %5591
  %5755 = fmul fast float %5417, %1693
  %5756 = fmul fast float %5755, %5434
  %5757 = fmul fast float %5756, %5591
  %5758 = fmul fast float %5418, %1693
  %5759 = fmul fast float %5758, %5434
  %5760 = fmul fast float %5759, %5591
  %5761 = fadd fast float %5754, %5094
  %5762 = fadd fast float %5757, %5095
  %5763 = fadd fast float %5760, %5096
  %5764 = fmul fast float %5752, %5749
  %5765 = fmul fast float %5755, %5750
  %5766 = fmul fast float %5758, %5751
  %5767 = fadd fast float %5764, %5091
  %5768 = fadd fast float %5765, %5092
  %5769 = fadd fast float %5766, %5093
  br label %5224

; <label>:5770                                    ; preds = %5224
  br label %5771

; <label>:5771                                    ; preds = %5770, %5057
  %5772 = phi float [ %5059, %5057 ], [ %5225, %5770 ]
  %5773 = phi float [ %5060, %5057 ], [ %5226, %5770 ]
  %5774 = phi float [ %5061, %5057 ], [ %5227, %5770 ]
  %5775 = phi float [ %5062, %5057 ], [ %5228, %5770 ]
  %5776 = phi float [ %5063, %5057 ], [ %5229, %5770 ]
  %5777 = phi float [ %5064, %5057 ], [ %5230, %5770 ]
  %5778 = add i32 %5058, 1
  %5779 = icmp ugt i32 %5778, %5054
  br i1 %5779, label %5780, label %5057

; <label>:5780                                    ; preds = %5771
  br label %5781

; <label>:5781                                    ; preds = %5780, %5007, %4997
  %5782 = phi float [ %4998, %4997 ], [ %4998, %5007 ], [ %5772, %5780 ]
  %5783 = phi float [ %4999, %4997 ], [ %4999, %5007 ], [ %5773, %5780 ]
  %5784 = phi float [ %5000, %4997 ], [ %5000, %5007 ], [ %5774, %5780 ]
  %5785 = phi float [ %5001, %4997 ], [ %5001, %5007 ], [ %5775, %5780 ]
  %5786 = phi float [ %5002, %4997 ], [ %5002, %5007 ], [ %5776, %5780 ]
  %5787 = phi float [ %5003, %4997 ], [ %5003, %5007 ], [ %5777, %5780 ]
  %5788 = fmul fast float %3729, %1693
  %5789 = fmul fast float %3730, %1693
  %5790 = fmul fast float %3731, %1693
  %5791 = fadd fast float %5788, 1.000000e+00
  %5792 = fadd fast float %5789, 1.000000e+00
  %5793 = fadd fast float %5790, 1.000000e+00
  %5794 = call float @dx.op.dot3.f32(i32 55, float %5791, float %5792, float %5793, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5795 = fsub fast float 1.000000e+00, %5794
  %5796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5797 = extractvalue %dx.types.CBufRet.f32 %5796, 0
  %5798 = fmul fast float %5797, %3735
  %5799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5800 = extractvalue %dx.types.CBufRet.f32 %5799, 3
  %5801 = fsub fast float 1.000000e+00, %1665
  %5802 = call float @dx.op.unary.f32(i32 7, float %5801)  ; Saturate(value)
  %5803 = fadd fast float %5787, %1664
  %5804 = fmul fast float %5803, %1665
  %5805 = fmul fast float %5802, %5800
  %5806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5807 = extractvalue %dx.types.CBufRet.f32 %5806, 3
  %5808 = fmul fast float %5785, %2325
  %5809 = fmul fast float %5786, %2326
  %5810 = fmul fast float %5787, %2327
  %5811 = fcmp fast ogt float %81, %188
  %5812 = and i1 %5811, %2130
  %5813 = or i1 %2136, %5812
  %5814 = icmp eq i32 %2129, 2
  %5815 = fcmp fast ole float %81, %188
  %5816 = and i1 %5815, %5814
  %5817 = or i1 %5816, %5813
  br i1 %5812, label %5818, label %6077

; <label>:5818                                    ; preds = %5781
  %5819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5820 = extractvalue %dx.types.CBufRet.f32 %5819, 2
  %5821 = extractvalue %dx.types.CBufRet.f32 %5819, 3
  %5822 = fmul fast float %5820, %90
  %5823 = fmul fast float %5821, %91
  %5824 = call float @dx.op.unary.f32(i32 7, float %5822)  ; Saturate(value)
  %5825 = call float @dx.op.unary.f32(i32 7, float %5823)  ; Saturate(value)
  %5826 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5824, float %5825, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5827 = extractvalue %dx.types.ResRet.f32 %5826, 0
  %5828 = extractvalue %dx.types.ResRet.f32 %5826, 1
  %5829 = extractvalue %dx.types.ResRet.f32 %5826, 2
  %5830 = extractvalue %dx.types.ResRet.f32 %5826, 3
  %5831 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5824, float %5825, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5832 = extractvalue %dx.types.ResRet.f32 %5831, 0
  %5833 = extractvalue %dx.types.ResRet.f32 %5831, 1
  %5834 = extractvalue %dx.types.ResRet.f32 %5831, 2
  %5835 = extractvalue %dx.types.ResRet.f32 %5831, 3
  %5836 = call float @dx.op.binary.f32(i32 35, float %5828, float %5829)  ; FMax(a,b)
  %5837 = call float @dx.op.binary.f32(i32 35, float %5827, float %5836)  ; FMax(a,b)
  %5838 = call float @dx.op.binary.f32(i32 35, float %5837, float %5830)  ; FMax(a,b)
  %5839 = call float @dx.op.binary.f32(i32 36, float %5833, float %5834)  ; FMin(a,b)
  %5840 = call float @dx.op.binary.f32(i32 36, float %5832, float %5839)  ; FMin(a,b)
  %5841 = call float @dx.op.binary.f32(i32 36, float %5840, float %5835)  ; FMin(a,b)
  %5842 = fmul fast float %5838, 2.550000e+02
  %5843 = fadd fast float %5842, 0x3F70101020000000
  %5844 = fptoui float %5843 to i32
  %5845 = fmul fast float %5841, 2.550000e+02
  %5846 = fadd fast float %5845, 0x3F70101020000000
  %5847 = fptoui float %5846 to i32
  %5848 = icmp ult i32 %5844, %5847
  br i1 %5848, label %5849, label %6017

; <label>:5849                                    ; preds = %5818
  %5850 = fcmp fast ogt float %80, 9.843750e-01
  %5851 = fadd fast float %81, -4.000000e+00
  %5852 = select i1 %5850, float -4.000000e+00, float %5851
  %5853 = call float @dx.op.binary.f32(i32 35, float %5852, float 0.000000e+00)  ; FMax(a,b)
  %5854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5855 = extractvalue %dx.types.CBufRet.f32 %5854, 0
  %5856 = fadd fast float %5855, %5853
  %5857 = extractvalue %dx.types.CBufRet.f32 %5854, 2
  %5858 = fmul fast float %5856, %5857
  %5859 = call float @dx.op.unary.f32(i32 23, float %5858)  ; Log(value)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5854, 3
  %5861 = fmul fast float %5860, %5859
  %5862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5863 = extractvalue %dx.types.CBufRet.f32 %5862, 2
  %5864 = fmul fast float %5861, %5863
  %5865 = call float @dx.op.unary.f32(i32 7, float %5864)  ; Saturate(value)
  %5866 = uitofp i32 %5844 to float
  %5867 = uitofp i32 %5847 to float
  %5868 = fadd fast float %5866, 5.000000e-01
  %5869 = fadd fast float %5867, 5.000000e-01
  %5870 = fmul fast float %5863, %5868
  %5871 = fmul fast float %5863, %5869
  %5872 = fadd fast float %5870, 0x3F0FFB4800000000
  %5873 = fadd fast float %5871, 0xBF0FFB4800000000
  %5874 = call float @dx.op.binary.f32(i32 35, float %5865, float %5872)  ; FMax(a,b)
  %5875 = call float @dx.op.binary.f32(i32 36, float %5874, float %5873)  ; FMin(a,b)
  %5876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5877 = extractvalue %dx.types.CBufRet.f32 %5876, 1
  %5878 = extractvalue %dx.types.CBufRet.f32 %5876, 2
  %5879 = extractvalue %dx.types.CBufRet.f32 %5876, 0
  %5880 = fmul fast float %5877, %5875
  %5881 = fadd fast float %5879, %5880
  %5882 = fadd fast float %5879, %5878
  %5883 = fsub fast float %5877, %5878
  %5884 = fadd fast float %5883, %5879
  %5885 = call float @dx.op.binary.f32(i32 35, float %5881, float %5882)  ; FMax(a,b)
  %5886 = call float @dx.op.binary.f32(i32 36, float %5885, float %5884)  ; FMin(a,b)
  %5887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %5824, float %5825, float %5886, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5888 = extractvalue %dx.types.ResRet.f32 %5887, 0
  %5889 = extractvalue %dx.types.ResRet.f32 %5887, 1
  %5890 = extractvalue %dx.types.ResRet.f32 %5887, 2
  %5891 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5892 = extractvalue %dx.types.CBufRet.i32 %5891, 0
  %5893 = extractvalue %dx.types.CBufRet.i32 %5891, 1
  %5894 = uitofp i32 %5892 to float
  %5895 = uitofp i32 %5893 to float
  %5896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.f32 %5896, 0
  %5898 = extractvalue %dx.types.CBufRet.f32 %5896, 1
  %5899 = fmul fast float %5894, %5824
  %5900 = fmul fast float %5895, %5825
  %5901 = fadd fast float %5899, -5.000000e-01
  %5902 = fadd fast float %5900, -5.000000e-01
  %5903 = call float @dx.op.unary.f32(i32 22, float %5901)  ; Frc(value)
  %5904 = call float @dx.op.unary.f32(i32 22, float %5902)  ; Frc(value)
  %5905 = fmul fast float %5903, %5903
  %5906 = fmul fast float %5905, %5903
  %5907 = fsub fast float 3.000000e+00, %5903
  %5908 = fmul fast float %5905, %5907
  %5909 = fmul fast float %5903, 3.000000e+00
  %5910 = fmul fast float %5906, 3.000000e+00
  %5911 = fmul fast float %5905, 6.000000e+00
  %5912 = fsub fast float %5910, %5911
  %5913 = fadd fast float %5912, 4.000000e+00
  %5914 = fmul fast float %5913, 0x3FC5555560000000
  %5915 = fmul fast float %5906, -3.000000e+00
  %5916 = fadd fast float %5905, %5903
  %5917 = fmul fast float %5916, 3.000000e+00
  %5918 = fadd fast float %5915, 1.000000e+00
  %5919 = fadd fast float %5918, %5917
  %5920 = fmul fast float %5906, 0x3FC5555560000000
  %5921 = fmul fast float %5904, %5904
  %5922 = fmul fast float %5921, %5904
  %5923 = fsub fast float 3.000000e+00, %5904
  %5924 = fmul fast float %5921, %5923
  %5925 = fmul fast float %5904, 3.000000e+00
  %5926 = fmul fast float %5922, 3.000000e+00
  %5927 = fmul fast float %5921, 6.000000e+00
  %5928 = fsub fast float %5926, %5927
  %5929 = fadd fast float %5928, 4.000000e+00
  %5930 = fmul fast float %5929, 0x3FC5555560000000
  %5931 = fmul fast float %5922, -3.000000e+00
  %5932 = fadd fast float %5921, %5904
  %5933 = fmul fast float %5932, 3.000000e+00
  %5934 = fadd fast float %5931, 1.000000e+00
  %5935 = fadd fast float %5934, %5933
  %5936 = fmul fast float %5922, 0x3FC5555560000000
  %5937 = fadd fast float %5903, 1.000000e+00
  %5938 = fsub fast float 1.000000e+00, %5909
  %5939 = fadd fast float %5938, %5908
  %5940 = fadd fast float %5939, %5913
  %5941 = fmul fast float %5940, 0x3FC5555560000000
  %5942 = fdiv fast float %5914, %5941
  %5943 = fsub fast float %5937, %5942
  %5944 = fsub fast float 1.000000e+00, %5903
  %5945 = fadd fast float %5919, %5906
  %5946 = fmul fast float %5945, 0x3FC5555560000000
  %5947 = fdiv fast float %5920, %5946
  %5948 = fadd fast float %5944, %5947
  %5949 = fadd fast float %5904, 1.000000e+00
  %5950 = fsub fast float 1.000000e+00, %5925
  %5951 = fadd fast float %5950, %5924
  %5952 = fadd fast float %5951, %5929
  %5953 = fmul fast float %5952, 0x3FC5555560000000
  %5954 = fdiv fast float %5930, %5953
  %5955 = fsub fast float %5949, %5954
  %5956 = fsub fast float 1.000000e+00, %5904
  %5957 = fadd fast float %5935, %5922
  %5958 = fmul fast float %5957, 0x3FC5555560000000
  %5959 = fdiv fast float %5936, %5958
  %5960 = fadd fast float %5959, %5956
  %5961 = fmul fast float %5943, %5897
  %5962 = fsub fast float %5824, %5961
  %5963 = fmul fast float %5948, %5897
  %5964 = fadd fast float %5963, %5824
  %5965 = fmul fast float %5960, %5898
  %5966 = fadd fast float %5965, %5825
  %5967 = fmul fast float %5955, %5898
  %5968 = fsub fast float %5825, %5967
  %5969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5962, float %5968, float %5886, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5970 = extractvalue %dx.types.ResRet.f32 %5969, 0
  %5971 = extractvalue %dx.types.ResRet.f32 %5969, 1
  %5972 = extractvalue %dx.types.ResRet.f32 %5969, 2
  %5973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5964, float %5968, float %5886, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5974 = extractvalue %dx.types.ResRet.f32 %5973, 0
  %5975 = extractvalue %dx.types.ResRet.f32 %5973, 1
  %5976 = extractvalue %dx.types.ResRet.f32 %5973, 2
  %5977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5962, float %5966, float %5886, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5978 = extractvalue %dx.types.ResRet.f32 %5977, 0
  %5979 = extractvalue %dx.types.ResRet.f32 %5977, 1
  %5980 = extractvalue %dx.types.ResRet.f32 %5977, 2
  %5981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5964, float %5966, float %5886, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5982 = extractvalue %dx.types.ResRet.f32 %5981, 0
  %5983 = extractvalue %dx.types.ResRet.f32 %5981, 1
  %5984 = extractvalue %dx.types.ResRet.f32 %5981, 2
  %5985 = fsub fast float %5978, %5970
  %5986 = fsub fast float %5979, %5971
  %5987 = fsub fast float %5980, %5972
  %5988 = fmul fast float %5985, %5958
  %5989 = fmul fast float %5986, %5958
  %5990 = fmul fast float %5987, %5958
  %5991 = fadd fast float %5988, %5970
  %5992 = fadd fast float %5989, %5971
  %5993 = fadd fast float %5990, %5972
  %5994 = fsub fast float %5982, %5974
  %5995 = fsub fast float %5983, %5975
  %5996 = fsub fast float %5984, %5976
  %5997 = fmul fast float %5994, %5958
  %5998 = fmul fast float %5995, %5958
  %5999 = fmul fast float %5996, %5958
  %6000 = fsub fast float %5974, %5991
  %6001 = fadd fast float %6000, %5997
  %6002 = fsub fast float %5975, %5992
  %6003 = fadd fast float %6002, %5998
  %6004 = fsub fast float %5976, %5993
  %6005 = fadd fast float %6004, %5999
  %6006 = fmul fast float %6001, %5946
  %6007 = fmul fast float %6003, %5946
  %6008 = fmul fast float %6005, %5946
  %6009 = fadd fast float %6006, %5991
  %6010 = fadd fast float %6007, %5992
  %6011 = fadd fast float %6008, %5993
  %6012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6013 = extractvalue %dx.types.CBufRet.f32 %6012, 1
  %6014 = fmul fast float %6009, %6013
  %6015 = fmul fast float %6010, %6013
  %6016 = fmul fast float %6011, %6013
  br label %6017

; <label>:6017                                    ; preds = %5849, %5818
  %6018 = phi float [ %5888, %5849 ], [ 1.000000e+00, %5818 ]
  %6019 = phi float [ %5889, %5849 ], [ 1.000000e+00, %5818 ]
  %6020 = phi float [ %5890, %5849 ], [ 1.000000e+00, %5818 ]
  %6021 = phi float [ %6014, %5849 ], [ 0.000000e+00, %5818 ]
  %6022 = phi float [ %6015, %5849 ], [ 0.000000e+00, %5818 ]
  %6023 = phi float [ %6016, %5849 ], [ 0.000000e+00, %5818 ]
  %6024 = fmul fast float %6021, %5795
  %6025 = fmul fast float %6022, %5795
  %6026 = fmul fast float %6023, %5795
  %6027 = call float @dx.op.dot3.f32(i32 55, float %6018, float %6019, float %6020, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6028 = call float @dx.op.dot3.f32(i32 55, float %6024, float %6025, float %6026, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6029 = select i1 %228, float %6027, float %6018
  %6030 = select i1 %228, float %6027, float %6019
  %6031 = select i1 %228, float 1.000000e+00, float %6020
  %6032 = select i1 %228, float %6028, float %6024
  %6033 = select i1 %228, float 0.000000e+00, float %6025
  %6034 = select i1 %228, float 0.000000e+00, float %6026
  %6035 = fmul fast float %6029, %5808
  %6036 = fmul fast float %6030, %5809
  %6037 = fmul fast float %6031, %5810
  %6038 = fadd fast float %6035, %6032
  %6039 = fadd fast float %6036, %6033
  %6040 = fadd fast float %6034, %6037
  %6041 = fmul fast float %6029, %5782
  %6042 = fmul fast float %6030, %5783
  %6043 = fmul fast float %6031, %5784
  %6044 = fmul fast float %90, 2.000000e+00
  %6045 = fmul fast float %6044, %5820
  %6046 = fmul fast float %91, 2.000000e+00
  %6047 = fmul fast float %6046, %5821
  %6048 = fsub fast float 1.000000e+00, %6045
  %6049 = fsub fast float 1.000000e+00, %6047
  %6050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6051 = extractvalue %dx.types.CBufRet.f32 %6050, 0
  %6052 = extractvalue %dx.types.CBufRet.f32 %6050, 1
  %6053 = extractvalue %dx.types.CBufRet.f32 %6050, 2
  %6054 = fmul fast float %6048, %6051
  %6055 = fmul fast float %6048, %6052
  %6056 = fmul fast float %6048, %6053
  %6057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6058 = extractvalue %dx.types.CBufRet.f32 %6057, 0
  %6059 = extractvalue %dx.types.CBufRet.f32 %6057, 1
  %6060 = extractvalue %dx.types.CBufRet.f32 %6057, 2
  %6061 = fmul fast float %6049, %6058
  %6062 = fmul fast float %6049, %6059
  %6063 = fmul fast float %6049, %6060
  %6064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6065 = extractvalue %dx.types.CBufRet.f32 %6064, 0
  %6066 = extractvalue %dx.types.CBufRet.f32 %6064, 1
  %6067 = extractvalue %dx.types.CBufRet.f32 %6064, 2
  %6068 = fadd fast float %6061, %6065
  %6069 = fadd fast float %6068, %6054
  %6070 = fadd fast float %6062, %6066
  %6071 = fadd fast float %6070, %6055
  %6072 = fadd fast float %6063, %6067
  %6073 = fadd fast float %6072, %6056
  %6074 = fmul fast float %6069, %188
  %6075 = fmul fast float %6071, %188
  %6076 = fmul fast float %6073, %188
  br label %6077

; <label>:6077                                    ; preds = %6017, %5781
  %6078 = phi float [ %6074, %6017 ], [ %137, %5781 ]
  %6079 = phi float [ %6075, %6017 ], [ %138, %5781 ]
  %6080 = phi float [ %6076, %6017 ], [ %139, %5781 ]
  %6081 = phi float [ %188, %6017 ], [ %81, %5781 ]
  %6082 = phi float [ %6038, %6017 ], [ %5808, %5781 ]
  %6083 = phi float [ %6039, %6017 ], [ %5809, %5781 ]
  %6084 = phi float [ %6040, %6017 ], [ %5810, %5781 ]
  %6085 = phi float [ %6041, %6017 ], [ %5782, %5781 ]
  %6086 = phi float [ %6042, %6017 ], [ %5783, %5781 ]
  %6087 = phi float [ %6043, %6017 ], [ %5784, %5781 ]
  %6088 = phi float [ %6018, %6017 ], [ 1.000000e+00, %5781 ]
  br i1 %5817, label %7243, label %6089

; <label>:6089                                    ; preds = %6077
  %6090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6091 = extractvalue %dx.types.CBufRet.f32 %6090, 0
  %6092 = extractvalue %dx.types.CBufRet.f32 %6090, 1
  %6093 = extractvalue %dx.types.CBufRet.f32 %6090, 2
  %6094 = extractvalue %dx.types.CBufRet.f32 %6090, 3
  %6095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6096 = extractvalue %dx.types.CBufRet.f32 %6095, 0
  %6097 = extractvalue %dx.types.CBufRet.f32 %6095, 1
  %6098 = extractvalue %dx.types.CBufRet.f32 %6095, 2
  %6099 = extractvalue %dx.types.CBufRet.f32 %6095, 3
  %6100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6101 = extractvalue %dx.types.CBufRet.f32 %6100, 0
  %6102 = extractvalue %dx.types.CBufRet.f32 %6100, 1
  %6103 = extractvalue %dx.types.CBufRet.f32 %6100, 2
  %6104 = extractvalue %dx.types.CBufRet.f32 %6100, 3
  %6105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6106 = extractvalue %dx.types.CBufRet.f32 %6105, 0
  %6107 = extractvalue %dx.types.CBufRet.f32 %6105, 1
  %6108 = extractvalue %dx.types.CBufRet.f32 %6105, 2
  %6109 = extractvalue %dx.types.CBufRet.f32 %6105, 3
  %6110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6111 = extractvalue %dx.types.CBufRet.f32 %6110, 3
  %6112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6113 = extractvalue %dx.types.CBufRet.f32 %6112, 3
  %6114 = extractvalue %dx.types.CBufRet.f32 %6112, 0
  %6115 = extractvalue %dx.types.CBufRet.f32 %6112, 1
  %6116 = extractvalue %dx.types.CBufRet.f32 %6112, 2
  %6117 = fcmp fast olt float %6116, -5.000000e-01
  %6118 = call float @dx.op.dot3.f32(i32 55, float %6078, float %6079, float %6080, float %6078, float %6079, float %6080)  ; Dot3(ax,ay,az,bx,by,bz)
  %6119 = call float @dx.op.unary.f32(i32 25, float %6118)  ; Rsqrt(value)
  %6120 = fmul fast float %6119, %6118
  %6121 = fmul fast float %6119, %6078
  %6122 = fmul fast float %6119, %6079
  %6123 = fmul fast float %6119, %6080
  %6124 = fadd fast float %6120, %6094
  %6125 = call float @dx.op.dot3.f32(i32 55, float %6121, float %6122, float %6123, float %6091, float %6092, float %6093)  ; Dot3(ax,ay,az,bx,by,bz)
  %6126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6127 = extractvalue %dx.types.CBufRet.i32 %6126, 1
  %6128 = and i32 %6127, 1
  %6129 = icmp ne i32 %6128, 0
  %6130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6131 = extractvalue %dx.types.CBufRet.f32 %6130, 2
  %6132 = fcmp fast ogt float %6131, 0.000000e+00
  %6133 = and i1 %6129, %6132
  br i1 %6133, label %6134, label %6540, !dx.controlflow.hints !133

; <label>:6134                                    ; preds = %6089
  %6135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6136 = extractvalue %dx.types.CBufRet.f32 %6135, 3
  %6137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6138 = extractvalue %dx.types.CBufRet.f32 %6137, 2
  %6139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6140 = extractvalue %dx.types.CBufRet.f32 %6139, 2
  %6141 = fsub fast float %6138, %6140
  %6142 = and i32 %6127, 2
  %6143 = extractvalue %dx.types.CBufRet.i32 %6126, 0
  %6144 = call i32 @dx.op.binary.i32(i32 40, i32 %6143, i32 3)  ; UMin(a,b)
  %6145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6146 = extractvalue %dx.types.CBufRet.f32 %6145, 0
  %6147 = extractvalue %dx.types.CBufRet.f32 %6145, 1
  %6148 = extractvalue %dx.types.CBufRet.f32 %6139, 0
  %6149 = extractvalue %dx.types.CBufRet.f32 %6139, 1
  %6150 = fsub fast float %6146, %6148
  %6151 = fsub fast float %6147, %6149
  %6152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6153 = extractvalue %dx.types.CBufRet.f32 %6152, 0
  %6154 = fcmp fast ogt float %6153, 0.000000e+00
  %6155 = fsub fast float -0.000000e+00, %6150
  %6156 = fsub fast float -0.000000e+00, %6151
  %6157 = call float @dx.op.dot2.f32(i32 54, float %6121, float %6122, float %6121, float %6122)  ; Dot2(ax,ay,bx,by)
  %6158 = call float @dx.op.dot2.f32(i32 54, float %6121, float %6122, float %6155, float %6156)  ; Dot2(ax,ay,bx,by)
  %6159 = fmul fast float %6158, 2.000000e+00
  %6160 = call float @dx.op.dot2.f32(i32 54, float %6155, float %6156, float %6155, float %6156)  ; Dot2(ax,ay,bx,by)
  %6161 = fmul fast float %6153, %6153
  %6162 = fsub fast float %6160, %6161
  %6163 = fmul fast float %6159, %6159
  %6164 = fmul fast float %6157, 4.000000e+00
  %6165 = fmul fast float %6164, %6162
  %6166 = fsub fast float %6163, %6165
  %6167 = fcmp fast ogt float %6166, 0.000000e+00
  br i1 %6167, label %6168, label %6183

; <label>:6168                                    ; preds = %6134
  %6169 = fcmp fast ogt float %6159, 0.000000e+00
  %6170 = call float @dx.op.unary.f32(i32 24, float %6166)  ; Sqrt(value)
  %6171 = fsub fast float -0.000000e+00, %6170
  %6172 = select i1 %6169, float %6170, float %6171
  %6173 = fadd fast float %6172, %6159
  %6174 = fmul float %6173, -5.000000e-01
  %6175 = fdiv fast float %6174, %6157
  %6176 = call float @dx.op.binary.f32(i32 35, float %6175, float 0.000000e+00)  ; FMax(a,b)
  %6177 = call float @dx.op.binary.f32(i32 36, float %6120, float %6176)  ; FMin(a,b)
  %6178 = fdiv fast float %6162, %6174
  %6179 = call float @dx.op.binary.f32(i32 35, float %6178, float 0.000000e+00)  ; FMax(a,b)
  %6180 = call float @dx.op.binary.f32(i32 36, float %6120, float %6179)  ; FMin(a,b)
  %6181 = call float @dx.op.binary.f32(i32 36, float %6177, float %6180)  ; FMin(a,b)
  %6182 = call float @dx.op.binary.f32(i32 35, float %6177, float %6180)  ; FMax(a,b)
  br label %6183

; <label>:6183                                    ; preds = %6168, %6134
  %6184 = phi float [ %6182, %6168 ], [ -1.000000e+00, %6134 ]
  %6185 = phi float [ %6181, %6168 ], [ -1.000000e+00, %6134 ]
  %6186 = phi i1 [ true, %6168 ], [ false, %6134 ]
  %6187 = and i1 %6154, %6186
  br i1 %6187, label %6188, label %6190

; <label>:6188                                    ; preds = %6183
  %6189 = fcmp fast oeq float %6185, %6184
  br i1 %6189, label %6493, label %6191

; <label>:6190                                    ; preds = %6183
  br i1 %6154, label %6493, label %6191

; <label>:6191                                    ; preds = %6190, %6188
  %6192 = phi float [ %6120, %6190 ], [ %6184, %6188 ]
  %6193 = phi float [ 0.000000e+00, %6190 ], [ %6185, %6188 ]
  %6194 = icmp ne i32 %6142, 0
  %6195 = fmul fast float %6192, %6123
  %6196 = fadd fast float %6195, %6136
  %6197 = fmul fast float %6196, %6192
  %6198 = select i1 %6194, float 0.000000e+00, float %6197
  %6199 = fcmp fast oeq float %6123, 0.000000e+00
  %6200 = fdiv fast float %6141, %6123
  %6201 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6200)  ; FMax(a,b)
  %6202 = select i1 %6199, float %6192, float %6201
  %6203 = call float @dx.op.binary.f32(i32 36, float %6192, float %6202)  ; FMin(a,b)
  %6204 = fcmp fast ogt float %6123, 0.000000e+00
  %6205 = fcmp fast olt float %6141, 0.000000e+00
  br i1 %6204, label %6206, label %6263

; <label>:6206                                    ; preds = %6191
  %6207 = icmp eq i32 %6142, 0
  br i1 %6205, label %6208, label %6252

; <label>:6208                                    ; preds = %6206
  %6209 = select i1 %6207, float %6192, float 0.000000e+00
  %6210 = fsub fast float -0.000000e+00, %6209
  %6211 = call float @dx.op.unary.f32(i32 6, float %6210)  ; FAbs(value)
  %6212 = fmul fast float %6209, %6123
  %6213 = fadd fast float %6212, %6136
  %6214 = fmul fast float %6211, %6213
  %6215 = fsub fast float %6198, %6214
  %6216 = fsub fast float %6192, %6211
  %6217 = select i1 %6207, float %6216, float 0.000000e+00
  %6218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6219 = extractvalue %dx.types.CBufRet.f32 %6218, 0
  %6220 = extractvalue %dx.types.CBufRet.f32 %6218, 1
  %6221 = extractvalue %dx.types.CBufRet.f32 %6218, 2
  %6222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6223 = extractvalue %dx.types.CBufRet.f32 %6222, 0
  %6224 = extractvalue %dx.types.CBufRet.f32 %6222, 1
  %6225 = extractvalue %dx.types.CBufRet.f32 %6222, 2
  %6226 = extractvalue %dx.types.CBufRet.f32 %6222, 3
  %6227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6228 = extractvalue %dx.types.CBufRet.f32 %6227, 3
  %6229 = call float @dx.op.binary.f32(i32 36, float %6215, float %6228)  ; FMin(a,b)
  %6230 = fmul fast float %6226, %6217
  %6231 = call float @dx.op.unary.f32(i32 7, float %6230)  ; Saturate(value)
  %6232 = fsub fast float %6223, %6219
  %6233 = fsub fast float %6224, %6220
  %6234 = fsub fast float %6225, %6221
  %6235 = fmul fast float %6231, %6232
  %6236 = fmul fast float %6231, %6233
  %6237 = fmul fast float %6231, %6234
  %6238 = fadd fast float %6235, %6219
  %6239 = fadd fast float %6236, %6220
  %6240 = fadd fast float %6237, %6221
  %6241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.CBufRet.f32 %6241, 1
  %6244 = fadd fast float %6243, %6242
  %6245 = call float @dx.op.unary.f32(i32 7, float %6244)  ; Saturate(value)
  %6246 = extractvalue %dx.types.CBufRet.f32 %6241, 2
  %6247 = extractvalue %dx.types.CBufRet.f32 %6241, 3
  %6248 = fadd fast float %6247, %6246
  %6249 = call float @dx.op.unary.f32(i32 7, float %6248)  ; Saturate(value)
  %6250 = fmul fast float %6245, %6229
  %6251 = fmul fast float %6250, %6249
  br label %6493

; <label>:6252                                    ; preds = %6206
  br i1 %6207, label %6253, label %6274

; <label>:6253                                    ; preds = %6252
  %6254 = call float @dx.op.binary.f32(i32 36, float %6203, float %6193)  ; FMin(a,b)
  %6255 = fsub fast float %6203, %6254
  %6256 = fsub fast float %6255, %6192
  %6257 = call float @dx.op.unary.f32(i32 6, float %6256)  ; FAbs(value)
  %6258 = fadd fast float %6255, %6192
  %6259 = fmul fast float %6258, %6123
  %6260 = fadd fast float %6259, %6136
  %6261 = fmul fast float %6260, %6257
  %6262 = fsub fast float %6198, %6261
  br label %6274

; <label>:6263                                    ; preds = %6191
  br i1 %6205, label %6264, label %6274

; <label>:6264                                    ; preds = %6263
  %6265 = call float @dx.op.binary.f32(i32 35, float %6193, float %6203)  ; FMax(a,b)
  %6266 = icmp eq i32 %6142, 0
  %6267 = select i1 %6266, float %6203, float 0.000000e+00
  %6268 = fsub fast float -0.000000e+00, %6267
  %6269 = call float @dx.op.unary.f32(i32 6, float %6268)  ; FAbs(value)
  %6270 = fmul fast float %6267, %6123
  %6271 = fadd fast float %6270, %6136
  %6272 = fmul fast float %6269, %6271
  %6273 = fsub fast float %6198, %6272
  br label %6274

; <label>:6274                                    ; preds = %6264, %6263, %6253, %6252
  %6275 = phi float [ %6193, %6252 ], [ %6193, %6253 ], [ %6265, %6264 ], [ %6193, %6263 ]
  %6276 = phi float [ 0.000000e+00, %6252 ], [ %6257, %6253 ], [ %6269, %6264 ], [ 0.000000e+00, %6263 ]
  %6277 = phi float [ %6198, %6252 ], [ %6262, %6253 ], [ %6273, %6264 ], [ %6198, %6263 ]
  %6278 = phi float [ %6203, %6252 ], [ %6203, %6253 ], [ %6192, %6264 ], [ %6192, %6263 ]
  %6279 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 0
  store float -1.000000e+00, float* %6279, align 4, !tbaa !134, !noalias !136
  %6280 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 1
  store float -1.000000e+00, float* %6280, align 4, !tbaa !134, !noalias !136
  %6281 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 2
  store float -1.000000e+00, float* %6281, align 4, !tbaa !134, !noalias !136
  %6282 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 0
  store float -1.000000e+00, float* %6282, align 4, !tbaa !134, !noalias !136
  %6283 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 1
  store float -1.000000e+00, float* %6283, align 4, !tbaa !134, !noalias !136
  %6284 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 2
  store float -1.000000e+00, float* %6284, align 4, !tbaa !134, !noalias !136
  %6285 = icmp sgt i32 %6144, 0
  br i1 %6285, label %6286, label %6347

; <label>:6286                                    ; preds = %6274
  br label %6287

; <label>:6287                                    ; preds = %6336, %6286
  %6288 = phi i32 [ %6337, %6336 ], [ 0, %6286 ]
  %6289 = phi i32 [ %6338, %6336 ], [ 0, %6286 ]
  %6290 = add nuw i32 %6289, 171
  %6291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %6290)  ; CBufferLoadLegacy(handle,regIndex)
  %6292 = extractvalue %dx.types.CBufRet.f32 %6291, 0
  %6293 = extractvalue %dx.types.CBufRet.f32 %6291, 1
  %6294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6295 = extractvalue %dx.types.CBufRet.f32 %6294, 0
  %6296 = extractvalue %dx.types.CBufRet.f32 %6294, 1
  %6297 = fsub fast float %6292, %6295
  %6298 = fsub fast float %6293, %6296
  %6299 = extractvalue %dx.types.CBufRet.f32 %6291, 2
  %6300 = fsub fast float -0.000000e+00, %6297
  %6301 = fsub fast float -0.000000e+00, %6298
  %6302 = call float @dx.op.dot2.f32(i32 54, float %6121, float %6122, float %6300, float %6301)  ; Dot2(ax,ay,bx,by)
  %6303 = fmul fast float %6302, 2.000000e+00
  %6304 = call float @dx.op.dot2.f32(i32 54, float %6300, float %6301, float %6300, float %6301)  ; Dot2(ax,ay,bx,by)
  %6305 = fmul fast float %6299, %6299
  %6306 = fsub fast float %6304, %6305
  %6307 = fmul fast float %6303, %6303
  %6308 = fmul fast float %6164, %6306
  %6309 = fsub fast float %6307, %6308
  %6310 = fcmp fast ogt float %6309, 0.000000e+00
  br i1 %6310, label %6311, label %6326

; <label>:6311                                    ; preds = %6287
  %6312 = fcmp fast ogt float %6303, 0.000000e+00
  %6313 = call float @dx.op.unary.f32(i32 24, float %6309)  ; Sqrt(value)
  %6314 = fsub fast float -0.000000e+00, %6313
  %6315 = select i1 %6312, float %6313, float %6314
  %6316 = fadd fast float %6315, %6303
  %6317 = fmul float %6316, -5.000000e-01
  %6318 = fdiv fast float %6317, %6157
  %6319 = call float @dx.op.binary.f32(i32 35, float %6318, float 0.000000e+00)  ; FMax(a,b)
  %6320 = call float @dx.op.binary.f32(i32 36, float %6192, float %6319)  ; FMin(a,b)
  %6321 = fdiv fast float %6306, %6317
  %6322 = call float @dx.op.binary.f32(i32 35, float %6321, float 0.000000e+00)  ; FMax(a,b)
  %6323 = call float @dx.op.binary.f32(i32 36, float %6192, float %6322)  ; FMin(a,b)
  %6324 = call float @dx.op.binary.f32(i32 36, float %6320, float %6323)  ; FMin(a,b)
  %6325 = call float @dx.op.binary.f32(i32 35, float %6320, float %6323)  ; FMax(a,b)
  br label %6326

; <label>:6326                                    ; preds = %6311, %6287
  %6327 = phi float [ %6325, %6311 ], [ -1.000000e+00, %6287 ]
  %6328 = phi float [ %6324, %6311 ], [ -1.000000e+00, %6287 ]
  %6329 = phi i1 [ true, %6311 ], [ false, %6287 ]
  br i1 %6329, label %6330, label %6336

; <label>:6330                                    ; preds = %6326
  %6331 = call float @dx.op.binary.f32(i32 35, float %6275, float %6328)  ; FMax(a,b)
  %6332 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %6289
  store float %6331, float* %6332, align 4, !tbaa !134, !noalias !136
  %6333 = call float @dx.op.binary.f32(i32 35, float %6275, float %6327)  ; FMax(a,b)
  %6334 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %6289
  store float %6333, float* %6334, align 4, !tbaa !134, !noalias !136
  %6335 = add nsw i32 %6288, 1
  br label %6336

; <label>:6336                                    ; preds = %6330, %6326
  %6337 = phi i32 [ %6335, %6330 ], [ %6288, %6326 ]
  %6338 = add nuw nsw i32 %6289, 1
  %6339 = icmp eq i32 %6338, %6144
  br i1 %6339, label %6340, label %6287

; <label>:6340                                    ; preds = %6336
  %6341 = load float, float* %6281, align 4, !tbaa !134, !alias.scope !152, !noalias !155
  %6342 = load float, float* %6280, align 4, !tbaa !134, !alias.scope !158, !noalias !159
  %6343 = load float, float* %6279, align 4, !tbaa !134, !alias.scope !160, !noalias !161
  %6344 = load float, float* %6284, align 4, !tbaa !134, !alias.scope !162, !noalias !165
  %6345 = load float, float* %6283, align 4, !tbaa !134, !alias.scope !168, !noalias !169
  %6346 = load float, float* %6282, align 4, !tbaa !134, !alias.scope !170, !noalias !171
  br label %6347

; <label>:6347                                    ; preds = %6340, %6274
  %6348 = phi float [ -1.000000e+00, %6274 ], [ %6346, %6340 ]
  %6349 = phi float [ -1.000000e+00, %6274 ], [ %6345, %6340 ]
  %6350 = phi float [ -1.000000e+00, %6274 ], [ %6344, %6340 ]
  %6351 = phi float [ -1.000000e+00, %6274 ], [ %6343, %6340 ]
  %6352 = phi float [ -1.000000e+00, %6274 ], [ %6342, %6340 ]
  %6353 = phi float [ -1.000000e+00, %6274 ], [ %6341, %6340 ]
  %6354 = phi i32 [ 0, %6274 ], [ %6337, %6340 ]
  %6355 = call float @dx.op.binary.f32(i32 36, float %6352, float %6353)  ; FMin(a,b)
  %6356 = call float @dx.op.binary.f32(i32 36, float %6351, float %6355)  ; FMin(a,b)
  %6357 = call float @dx.op.binary.f32(i32 35, float %6351, float %6352)  ; FMax(a,b)
  %6358 = call float @dx.op.binary.f32(i32 36, float %6357, float %6353)  ; FMin(a,b)
  %6359 = call float @dx.op.binary.f32(i32 36, float %6351, float %6352)  ; FMin(a,b)
  %6360 = call float @dx.op.binary.f32(i32 35, float %6359, float %6358)  ; FMax(a,b)
  %6361 = call float @dx.op.binary.f32(i32 35, float %6352, float %6353)  ; FMax(a,b)
  %6362 = call float @dx.op.binary.f32(i32 35, float %6351, float %6361)  ; FMax(a,b)
  store float %6356, float* %6279, align 4, !tbaa !134, !alias.scope !160, !noalias !161
  store float %6360, float* %6280, align 4, !tbaa !134, !alias.scope !158, !noalias !159
  store float %6362, float* %6281, align 4, !tbaa !134, !alias.scope !152, !noalias !155
  %6363 = call float @dx.op.binary.f32(i32 36, float %6349, float %6350)  ; FMin(a,b)
  %6364 = call float @dx.op.binary.f32(i32 36, float %6348, float %6363)  ; FMin(a,b)
  %6365 = call float @dx.op.binary.f32(i32 35, float %6348, float %6349)  ; FMax(a,b)
  %6366 = call float @dx.op.binary.f32(i32 36, float %6365, float %6350)  ; FMin(a,b)
  %6367 = call float @dx.op.binary.f32(i32 36, float %6348, float %6349)  ; FMin(a,b)
  %6368 = call float @dx.op.binary.f32(i32 35, float %6367, float %6366)  ; FMax(a,b)
  %6369 = call float @dx.op.binary.f32(i32 35, float %6349, float %6350)  ; FMax(a,b)
  %6370 = call float @dx.op.binary.f32(i32 35, float %6348, float %6369)  ; FMax(a,b)
  store float %6364, float* %6282, align 4, !tbaa !134, !alias.scope !170, !noalias !171
  store float %6368, float* %6283, align 4, !tbaa !134, !alias.scope !168, !noalias !169
  store float %6370, float* %6284, align 4, !tbaa !134, !alias.scope !162, !noalias !165
  %6371 = sub nsw i32 3, %6354
  %6372 = icmp sgt i32 %6371, 2
  br i1 %6372, label %6373, label %6411

; <label>:6373                                    ; preds = %6347
  %6374 = icmp eq i32 %6142, 0
  %6375 = fsub fast float %6192, %6276
  %6376 = select i1 %6374, float %6375, float %6276
  %6377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6378 = extractvalue %dx.types.CBufRet.f32 %6377, 0
  %6379 = extractvalue %dx.types.CBufRet.f32 %6377, 1
  %6380 = extractvalue %dx.types.CBufRet.f32 %6377, 2
  %6381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6382 = extractvalue %dx.types.CBufRet.f32 %6381, 0
  %6383 = extractvalue %dx.types.CBufRet.f32 %6381, 1
  %6384 = extractvalue %dx.types.CBufRet.f32 %6381, 2
  %6385 = extractvalue %dx.types.CBufRet.f32 %6381, 3
  %6386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6386, 3
  %6388 = call float @dx.op.binary.f32(i32 36, float %6277, float %6387)  ; FMin(a,b)
  %6389 = fmul fast float %6385, %6376
  %6390 = call float @dx.op.unary.f32(i32 7, float %6389)  ; Saturate(value)
  %6391 = fsub fast float %6382, %6378
  %6392 = fsub fast float %6383, %6379
  %6393 = fsub fast float %6384, %6380
  %6394 = fmul fast float %6390, %6391
  %6395 = fmul fast float %6390, %6392
  %6396 = fmul fast float %6390, %6393
  %6397 = fadd fast float %6394, %6378
  %6398 = fadd fast float %6395, %6379
  %6399 = fadd fast float %6396, %6380
  %6400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6401 = extractvalue %dx.types.CBufRet.f32 %6400, 0
  %6402 = extractvalue %dx.types.CBufRet.f32 %6400, 1
  %6403 = fadd fast float %6402, %6401
  %6404 = call float @dx.op.unary.f32(i32 7, float %6403)  ; Saturate(value)
  %6405 = extractvalue %dx.types.CBufRet.f32 %6400, 2
  %6406 = extractvalue %dx.types.CBufRet.f32 %6400, 3
  %6407 = fadd fast float %6406, %6405
  %6408 = call float @dx.op.unary.f32(i32 7, float %6407)  ; Saturate(value)
  %6409 = fmul fast float %6404, %6388
  %6410 = fmul fast float %6409, %6408
  br label %6493

; <label>:6411                                    ; preds = %6347
  %6412 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %6371
  %6413 = load float, float* %6412, align 4, !tbaa !134, !noalias !136
  %6414 = fcmp fast olt float %6413, %6278
  %6415 = icmp sgt i32 %6354, 0
  %6416 = and i1 %6415, %6414
  br i1 %6416, label %6417, label %6454

; <label>:6417                                    ; preds = %6411
  br label %6418

; <label>:6418                                    ; preds = %6447, %6417
  %6419 = phi float [ %6448, %6447 ], [ %6276, %6417 ]
  %6420 = phi float [ %6449, %6447 ], [ %6277, %6417 ]
  %6421 = phi float [ %6429, %6447 ], [ %6413, %6417 ]
  %6422 = phi i32 [ %6426, %6447 ], [ %6371, %6417 ]
  %6423 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %6422
  %6424 = load float, float* %6423, align 4, !tbaa !134, !noalias !136
  %6425 = icmp slt i32 %6422, 2
  %6426 = add nsw i32 %6422, 1
  %6427 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %6426
  %6428 = load float, float* %6427, align 4, !tbaa !134, !noalias !136
  %6429 = select i1 %6425, float %6428, float %6192
  %6430 = call float @dx.op.binary.f32(i32 36, float %6429, float %6424)  ; FMin(a,b)
  %6431 = call float @dx.op.binary.f32(i32 36, float %6278, float %6430)  ; FMin(a,b)
  %6432 = icmp eq i32 %6142, 0
  %6433 = fadd fast float %6431, %6421
  %6434 = fmul fast float %6433, %6123
  %6435 = fadd fast float %6434, %6136
  br i1 %6432, label %6441, label %6436

; <label>:6436                                    ; preds = %6418
  %6437 = fsub fast float %6431, %6421
  %6438 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6437)  ; FMax(a,b)
  %6439 = fmul fast float %6438, %6435
  %6440 = fadd fast float %6439, %6420
  br label %6447

; <label>:6441                                    ; preds = %6418
  %6442 = fsub fast float %6421, %6431
  %6443 = call float @dx.op.unary.f32(i32 6, float %6442)  ; FAbs(value)
  %6444 = fadd fast float %6443, %6419
  %6445 = fmul fast float %6443, %6435
  %6446 = fsub fast float %6420, %6445
  br label %6447

; <label>:6447                                    ; preds = %6441, %6436
  %6448 = phi float [ %6438, %6436 ], [ %6444, %6441 ]
  %6449 = phi float [ %6440, %6436 ], [ %6446, %6441 ]
  %6450 = fcmp fast olt float %6429, %6278
  %6451 = icmp slt i32 %6426, 3
  %6452 = and i1 %6451, %6450
  br i1 %6452, label %6418, label %6453

; <label>:6453                                    ; preds = %6447
  br label %6454

; <label>:6454                                    ; preds = %6453, %6411
  %6455 = phi float [ %6276, %6411 ], [ %6448, %6453 ]
  %6456 = phi float [ %6277, %6411 ], [ %6449, %6453 ]
  %6457 = fsub fast float %6192, %6455
  %6458 = select i1 %6194, float %6455, float %6457
  %6459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6460 = extractvalue %dx.types.CBufRet.f32 %6459, 0
  %6461 = extractvalue %dx.types.CBufRet.f32 %6459, 1
  %6462 = extractvalue %dx.types.CBufRet.f32 %6459, 2
  %6463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6464 = extractvalue %dx.types.CBufRet.f32 %6463, 0
  %6465 = extractvalue %dx.types.CBufRet.f32 %6463, 1
  %6466 = extractvalue %dx.types.CBufRet.f32 %6463, 2
  %6467 = extractvalue %dx.types.CBufRet.f32 %6463, 3
  %6468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6469 = extractvalue %dx.types.CBufRet.f32 %6468, 3
  %6470 = call float @dx.op.binary.f32(i32 36, float %6456, float %6469)  ; FMin(a,b)
  %6471 = fmul fast float %6467, %6458
  %6472 = call float @dx.op.unary.f32(i32 7, float %6471)  ; Saturate(value)
  %6473 = fsub fast float %6464, %6460
  %6474 = fsub fast float %6465, %6461
  %6475 = fsub fast float %6466, %6462
  %6476 = fmul fast float %6472, %6473
  %6477 = fmul fast float %6472, %6474
  %6478 = fmul fast float %6472, %6475
  %6479 = fadd fast float %6476, %6460
  %6480 = fadd fast float %6477, %6461
  %6481 = fadd fast float %6478, %6462
  %6482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6483 = extractvalue %dx.types.CBufRet.f32 %6482, 0
  %6484 = extractvalue %dx.types.CBufRet.f32 %6482, 1
  %6485 = fadd fast float %6484, %6483
  %6486 = call float @dx.op.unary.f32(i32 7, float %6485)  ; Saturate(value)
  %6487 = extractvalue %dx.types.CBufRet.f32 %6482, 2
  %6488 = extractvalue %dx.types.CBufRet.f32 %6482, 3
  %6489 = fadd fast float %6488, %6487
  %6490 = call float @dx.op.unary.f32(i32 7, float %6489)  ; Saturate(value)
  %6491 = fmul fast float %6486, %6470
  %6492 = fmul fast float %6491, %6490
  br label %6493

; <label>:6493                                    ; preds = %6454, %6373, %6208, %6190, %6188
  %6494 = phi float [ %6217, %6208 ], [ %6376, %6373 ], [ %6458, %6454 ], [ 0.000000e+00, %6188 ], [ 0.000000e+00, %6190 ]
  %6495 = phi float [ %6251, %6208 ], [ %6410, %6373 ], [ %6492, %6454 ], [ 0.000000e+00, %6188 ], [ 0.000000e+00, %6190 ]
  %6496 = phi float [ %6238, %6208 ], [ %6397, %6373 ], [ %6479, %6454 ], [ 0.000000e+00, %6188 ], [ 0.000000e+00, %6190 ]
  %6497 = phi float [ %6239, %6208 ], [ %6398, %6373 ], [ %6480, %6454 ], [ 0.000000e+00, %6188 ], [ 0.000000e+00, %6190 ]
  %6498 = phi float [ %6240, %6208 ], [ %6399, %6373 ], [ %6481, %6454 ], [ 0.000000e+00, %6188 ], [ 0.000000e+00, %6190 ]
  %6499 = fmul fast float %6131, %6495
  %6500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6501 = extractvalue %dx.types.CBufRet.f32 %6500, 2
  %6502 = fsub fast float %6138, %6501
  %6503 = fcmp fast olt float %6499, -2.000000e+01
  %6504 = call float @dx.op.unary.f32(i32 21, float %6499)  ; Exp(value)
  %6505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6506 = extractvalue %dx.types.CBufRet.f32 %6505, 2
  %6507 = extractvalue %dx.types.CBufRet.f32 %6505, 3
  %6508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6509 = extractvalue %dx.types.CBufRet.f32 %6508, 2
  %6510 = fmul fast float %6507, %6502
  %6511 = call float @dx.op.unary.f32(i32 7, float %6510)  ; Saturate(value)
  %6512 = fsub fast float 1.000000e+00, %6511
  %6513 = fmul fast float %6123, 5.000000e-01
  %6514 = fadd fast float %6513, 5.000000e-01
  %6515 = call float @dx.op.unary.f32(i32 7, float %6514)  ; Saturate(value)
  %6516 = fsub fast float 1.000000e+00, %6515
  %6517 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6512)  ; FMax(a,b)
  %6518 = fdiv fast float %6516, %6517
  %6519 = fsub fast float %6502, %6080
  %6520 = call float @dx.op.unary.f32(i32 6, float %6519)  ; FAbs(value)
  %6521 = fmul fast float %6520, %6506
  %6522 = call float @dx.op.unary.f32(i32 7, float %6518)  ; Saturate(value)
  %6523 = fsub fast float 1.000000e+00, %6521
  %6524 = fmul fast float %6523, %6522
  %6525 = fadd fast float %6524, %6521
  %6526 = fmul fast float %6509, %6502
  %6527 = call float @dx.op.unary.f32(i32 7, float %6526)  ; Saturate(value)
  %6528 = fsub fast float 1.000000e+00, %6525
  %6529 = fmul fast float %6528, %6527
  %6530 = fadd fast float %6529, %6525
  %6531 = call float @dx.op.unary.f32(i32 7, float %6530)  ; Saturate(value)
  %6532 = fadd fast float %6504, -1.000000e+00
  %6533 = select i1 %6503, float -1.000000e+00, float %6532
  %6534 = fmul fast float %6531, %6533
  %6535 = fadd fast float %6534, 1.000000e+00
  %6536 = fsub fast float -0.000000e+00, %6534
  %6537 = fmul fast float %6496, %6536
  %6538 = fmul fast float %6497, %6536
  %6539 = fmul fast float %6498, %6536
  br label %6540

; <label>:6540                                    ; preds = %6493, %6089
  %6541 = phi float [ %6494, %6493 ], [ 0.000000e+00, %6089 ]
  %6542 = phi float [ %6535, %6493 ], [ 1.000000e+00, %6089 ]
  %6543 = phi float [ %6537, %6493 ], [ 0.000000e+00, %6089 ]
  %6544 = phi float [ %6538, %6493 ], [ 0.000000e+00, %6089 ]
  %6545 = phi float [ %6539, %6493 ], [ 0.000000e+00, %6089 ]
  %6546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6547 = extractvalue %dx.types.CBufRet.f32 %6546, 1
  %6548 = fsub fast float 1.000000e+00, %6542
  %6549 = fmul fast float %6548, %6124
  %6550 = fmul fast float %6549, %6547
  %6551 = fsub fast float %6124, %6550
  br i1 %6117, label %6552, label %6581, !dx.controlflow.hints !172

; <label>:6552                                    ; preds = %6540
  %6553 = fmul fast float %6125, %6114
  %6554 = fadd fast float %6553, %6115
  %6555 = call float @dx.op.unary.f32(i32 7, float %6554)  ; Saturate(value)
  %6556 = fmul fast float %6096, %6551
  %6557 = fsub fast float -0.000000e+00, %6556
  %6558 = fmul fast float %6097, %6551
  %6559 = fsub fast float -0.000000e+00, %6558
  %6560 = call float @dx.op.unary.f32(i32 21, float %6557)  ; Exp(value)
  %6561 = call float @dx.op.unary.f32(i32 21, float %6559)  ; Exp(value)
  %6562 = call float @dx.op.binary.f32(i32 35, float %6104, float %6560)  ; FMax(a,b)
  %6563 = call float @dx.op.binary.f32(i32 35, float %6104, float %6561)  ; FMax(a,b)
  %6564 = fsub fast float %6563, %6562
  %6565 = fmul fast float %6564, %6555
  %6566 = fadd fast float %6565, %6562
  %6567 = call float @dx.op.unary.f32(i32 7, float %6566)  ; Saturate(value)
  %6568 = fsub fast float %6101, %6106
  %6569 = fsub fast float %6102, %6107
  %6570 = fsub fast float %6103, %6108
  %6571 = fmul fast float %6555, %6568
  %6572 = fmul fast float %6555, %6569
  %6573 = fmul fast float %6555, %6570
  %6574 = fadd fast float %6571, %6106
  %6575 = fadd fast float %6572, %6107
  %6576 = fadd fast float %6573, %6108
  %6577 = fsub fast float 1.000000e+00, %6567
  %6578 = fmul fast float %6577, %6574
  %6579 = fmul fast float %6577, %6575
  %6580 = fmul fast float %6577, %6576
  br label %6640

; <label>:6581                                    ; preds = %6540
  %6582 = fmul fast float %6551, %6113
  %6583 = call float @dx.op.unary.f32(i32 7, float %6582)  ; Saturate(value)
  %6584 = fsub fast float 2.000000e+00, %6583
  %6585 = fmul fast float %6583, 9.921875e-01
  %6586 = fmul fast float %6585, %6584
  %6587 = fadd fast float %6586, 3.906250e-03
  %6588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %58, float %6587, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6589 = extractvalue %dx.types.ResRet.f32 %6588, 0
  %6590 = fsub fast float %6583, %6589
  %6591 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6590)  ; FMax(a,b)
  %6592 = fmul fast float %6099, %6080
  %6593 = call float @dx.op.unary.f32(i32 6, float %6592)  ; FAbs(value)
  %6594 = fcmp fast ogt float %6593, 0x3EB0C6F7A0000000
  br i1 %6594, label %6595, label %6601, !dx.controlflow.hints !173

; <label>:6595                                    ; preds = %6581
  %6596 = fmul fast float %6592, 0xBFF7154760000000
  %6597 = call float @dx.op.unary.f32(i32 21, float %6596)  ; Exp(value)
  %6598 = fsub fast float 1.000000e+00, %6597
  %6599 = fdiv fast float %6598, %6592
  %6600 = fmul fast float %6599, %6109
  br label %6601

; <label>:6601                                    ; preds = %6595, %6581
  %6602 = phi float [ %6600, %6595 ], [ %6109, %6581 ]
  %6603 = fadd fast float %6602, %6111
  %6604 = fmul fast float %6603, %6591
  %6605 = fmul fast float %6096, %6604
  %6606 = fsub fast float -0.000000e+00, %6605
  %6607 = fmul fast float %6097, %6604
  %6608 = fsub fast float -0.000000e+00, %6607
  %6609 = fmul fast float %6098, %6604
  %6610 = fsub fast float -0.000000e+00, %6609
  %6611 = call float @dx.op.unary.f32(i32 21, float %6606)  ; Exp(value)
  %6612 = call float @dx.op.unary.f32(i32 21, float %6608)  ; Exp(value)
  %6613 = call float @dx.op.unary.f32(i32 21, float %6610)  ; Exp(value)
  %6614 = fmul fast float %6125, %6125
  %6615 = fadd fast float %6614, 1.000000e+00
  %6616 = fmul fast float %6615, 0x3FAE8EC8A0000000
  %6617 = fmul fast float %6616, %6106
  %6618 = fmul fast float %6616, %6107
  %6619 = fmul fast float %6616, %6108
  %6620 = fmul fast float %6125, %6104
  %6621 = fsub fast float 1.000000e+00, %6620
  %6622 = fmul fast float %6104, %6104
  %6623 = fsub fast float 1.000000e+00, %6622
  %6624 = fmul fast float %6623, 0x3FB45F3060000000
  %6625 = fmul fast float %6621, %6621
  %6626 = fdiv fast float 1.000000e+00, %6625
  %6627 = fmul fast float %6624, %6626
  %6628 = fmul fast float %6627, %6101
  %6629 = fmul fast float %6627, %6102
  %6630 = fmul fast float %6627, %6103
  %6631 = fadd fast float %6628, %6617
  %6632 = fadd fast float %6629, %6618
  %6633 = fadd fast float %6630, %6619
  %6634 = fsub fast float 1.000000e+00, %6611
  %6635 = fsub fast float 1.000000e+00, %6612
  %6636 = fsub fast float 1.000000e+00, %6613
  %6637 = fmul fast float %6631, %6634
  %6638 = fmul fast float %6632, %6635
  %6639 = fmul fast float %6633, %6636
  br label %6640

; <label>:6640                                    ; preds = %6601, %6552
  %6641 = phi float [ %6578, %6552 ], [ %6637, %6601 ]
  %6642 = phi float [ %6579, %6552 ], [ %6638, %6601 ]
  %6643 = phi float [ %6580, %6552 ], [ %6639, %6601 ]
  %6644 = phi float [ %6567, %6552 ], [ %6611, %6601 ]
  %6645 = phi float [ %6567, %6552 ], [ %6612, %6601 ]
  %6646 = phi float [ %6567, %6552 ], [ %6613, %6601 ]
  br i1 %6133, label %6647, label %6845, !dx.controlflow.hints !174

; <label>:6647                                    ; preds = %6640
  %6648 = extractvalue %dx.types.CBufRet.f32 %6546, 0
  %6649 = fmul fast float %6648, %6548
  %6650 = fsub fast float %6543, %6641
  %6651 = fsub fast float %6544, %6642
  %6652 = fsub fast float %6545, %6643
  %6653 = fmul fast float %6649, %6650
  %6654 = fmul fast float %6649, %6651
  %6655 = fmul fast float %6649, %6652
  %6656 = fadd fast float %6653, %6641
  %6657 = fadd fast float %6654, %6642
  %6658 = fadd fast float %6655, %6643
  %6659 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6644)  ; FMax(a,b)
  %6660 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6645)  ; FMax(a,b)
  %6661 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6646)  ; FMax(a,b)
  %6662 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6542)  ; FMax(a,b)
  %6663 = call float @dx.op.binary.f32(i32 35, float %6541, float %6551)  ; FMax(a,b)
  %6664 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6663)  ; FMax(a,b)
  %6665 = fdiv fast float %6541, %6664
  %6666 = call float @dx.op.unary.f32(i32 7, float %6665)  ; Saturate(value)
  %6667 = fdiv fast float %6551, %6664
  %6668 = call float @dx.op.unary.f32(i32 7, float %6667)  ; Saturate(value)
  %6669 = fcmp fast une float %6662, 1.000000e+00
  br i1 %6669, label %6670, label %6683, !dx.controlflow.hints !175

; <label>:6670                                    ; preds = %6647
  %6671 = call float @dx.op.unary.f32(i32 23, float %6662)  ; Log(value)
  %6672 = fmul fast float %6671, 0x3FE62E4300000000
  %6673 = fmul fast float %6543, %6672
  %6674 = fsub fast float -0.000000e+00, %6673
  %6675 = fmul fast float %6544, %6672
  %6676 = fsub fast float -0.000000e+00, %6675
  %6677 = fmul fast float %6545, %6672
  %6678 = fsub fast float -0.000000e+00, %6677
  %6679 = fsub fast float 1.000000e+00, %6662
  %6680 = fdiv fast float %6674, %6679
  %6681 = fdiv fast float %6676, %6679
  %6682 = fdiv fast float %6678, %6679
  br label %6683

; <label>:6683                                    ; preds = %6670, %6647
  %6684 = phi float [ %6680, %6670 ], [ %6543, %6647 ]
  %6685 = phi float [ %6681, %6670 ], [ %6544, %6647 ]
  %6686 = phi float [ %6682, %6670 ], [ %6545, %6647 ]
  %6687 = phi float [ %6672, %6670 ], [ 0.000000e+00, %6647 ]
  %6688 = fcmp fast une float %6659, 1.000000e+00
  br i1 %6688, label %6689, label %6696, !dx.controlflow.hints !176

; <label>:6689                                    ; preds = %6683
  %6690 = call float @dx.op.unary.f32(i32 23, float %6659)  ; Log(value)
  %6691 = fmul fast float %6690, 0x3FE62E4300000000
  %6692 = fmul fast float %6656, %6691
  %6693 = fsub fast float -0.000000e+00, %6692
  %6694 = fsub fast float 1.000000e+00, %6659
  %6695 = fdiv fast float %6693, %6694
  br label %6696

; <label>:6696                                    ; preds = %6689, %6683
  %6697 = phi float [ %6695, %6689 ], [ %6656, %6683 ]
  %6698 = phi float [ %6691, %6689 ], [ 0.000000e+00, %6683 ]
  %6699 = fcmp fast une float %6660, 1.000000e+00
  br i1 %6699, label %6700, label %6707, !dx.controlflow.hints !176

; <label>:6700                                    ; preds = %6696
  %6701 = call float @dx.op.unary.f32(i32 23, float %6660)  ; Log(value)
  %6702 = fmul fast float %6701, 0x3FE62E4300000000
  %6703 = fmul fast float %6657, %6702
  %6704 = fsub fast float -0.000000e+00, %6703
  %6705 = fsub fast float 1.000000e+00, %6660
  %6706 = fdiv fast float %6704, %6705
  br label %6707

; <label>:6707                                    ; preds = %6700, %6696
  %6708 = phi float [ %6706, %6700 ], [ %6657, %6696 ]
  %6709 = phi float [ %6702, %6700 ], [ 0.000000e+00, %6696 ]
  %6710 = fcmp fast une float %6661, 1.000000e+00
  br i1 %6710, label %6711, label %6718, !dx.controlflow.hints !176

; <label>:6711                                    ; preds = %6707
  %6712 = call float @dx.op.unary.f32(i32 23, float %6661)  ; Log(value)
  %6713 = fmul fast float %6712, 0x3FE62E4300000000
  %6714 = fmul fast float %6658, %6713
  %6715 = fsub fast float -0.000000e+00, %6714
  %6716 = fsub fast float 1.000000e+00, %6661
  %6717 = fdiv fast float %6715, %6716
  br label %6718

; <label>:6718                                    ; preds = %6711, %6707
  %6719 = phi float [ %6717, %6711 ], [ %6658, %6707 ]
  %6720 = phi float [ %6713, %6711 ], [ 0.000000e+00, %6707 ]
  %6721 = fmul fast float %6684, %6668
  %6722 = fmul fast float %6685, %6668
  %6723 = fmul fast float %6686, %6668
  %6724 = fmul fast float %6687, %6668
  %6725 = fmul fast float %6697, %6666
  %6726 = fmul fast float %6708, %6666
  %6727 = fmul fast float %6719, %6666
  %6728 = fmul fast float %6698, %6666
  %6729 = fmul fast float %6709, %6666
  %6730 = fmul fast float %6720, %6666
  %6731 = fadd fast float %6725, %6721
  %6732 = fadd fast float %6726, %6722
  %6733 = fadd fast float %6727, %6723
  %6734 = fadd fast float %6728, %6724
  %6735 = fadd fast float %6729, %6724
  %6736 = fadd fast float %6730, %6724
  %6737 = fcmp fast une float %6734, 0.000000e+00
  br i1 %6737, label %6738, label %6745, !dx.controlflow.hints !177

; <label>:6738                                    ; preds = %6718
  %6739 = fmul fast float %6734, 0x3FF7154760000000
  %6740 = call float @dx.op.unary.f32(i32 21, float %6739)  ; Exp(value)
  %6741 = fsub fast float 1.000000e+00, %6740
  %6742 = fmul fast float %6731, %6741
  %6743 = fsub fast float -0.000000e+00, %6742
  %6744 = fdiv fast float %6743, %6734
  br label %6745

; <label>:6745                                    ; preds = %6738, %6718
  %6746 = phi float [ %6740, %6738 ], [ 1.000000e+00, %6718 ]
  %6747 = phi float [ %6744, %6738 ], [ %6731, %6718 ]
  %6748 = fcmp fast une float %6735, 0.000000e+00
  br i1 %6748, label %6749, label %6756, !dx.controlflow.hints !177

; <label>:6749                                    ; preds = %6745
  %6750 = fmul fast float %6735, 0x3FF7154760000000
  %6751 = call float @dx.op.unary.f32(i32 21, float %6750)  ; Exp(value)
  %6752 = fsub fast float 1.000000e+00, %6751
  %6753 = fmul fast float %6732, %6752
  %6754 = fsub fast float -0.000000e+00, %6753
  %6755 = fdiv fast float %6754, %6735
  br label %6756

; <label>:6756                                    ; preds = %6749, %6745
  %6757 = phi float [ %6751, %6749 ], [ 1.000000e+00, %6745 ]
  %6758 = phi float [ %6755, %6749 ], [ %6732, %6745 ]
  %6759 = fcmp fast une float %6736, 0.000000e+00
  br i1 %6759, label %6760, label %6767, !dx.controlflow.hints !177

; <label>:6760                                    ; preds = %6756
  %6761 = fmul fast float %6736, 0x3FF7154760000000
  %6762 = call float @dx.op.unary.f32(i32 21, float %6761)  ; Exp(value)
  %6763 = fsub fast float 1.000000e+00, %6762
  %6764 = fmul fast float %6733, %6763
  %6765 = fsub fast float -0.000000e+00, %6764
  %6766 = fdiv fast float %6765, %6736
  br label %6767

; <label>:6767                                    ; preds = %6760, %6756
  %6768 = phi float [ %6762, %6760 ], [ 1.000000e+00, %6756 ]
  %6769 = phi float [ %6766, %6760 ], [ %6733, %6756 ]
  %6770 = fcmp fast ogt float %6666, %6668
  br i1 %6770, label %6771, label %6791

; <label>:6771                                    ; preds = %6767
  %6772 = fsub fast float 1.000000e+00, %6668
  %6773 = fmul fast float %6684, %6772
  %6774 = fmul fast float %6685, %6772
  %6775 = fmul fast float %6686, %6772
  %6776 = fmul fast float %6687, %6772
  %6777 = fcmp fast une float %6776, 0.000000e+00
  br i1 %6777, label %6778, label %6829, !dx.controlflow.hints !178

; <label>:6778                                    ; preds = %6771
  %6779 = fmul fast float %6776, 0x3FF7154760000000
  %6780 = call float @dx.op.unary.f32(i32 21, float %6779)  ; Exp(value)
  %6781 = fsub fast float 1.000000e+00, %6780
  %6782 = fmul fast float %6773, %6781
  %6783 = fsub fast float -0.000000e+00, %6782
  %6784 = fmul fast float %6774, %6781
  %6785 = fsub fast float -0.000000e+00, %6784
  %6786 = fmul fast float %6775, %6781
  %6787 = fsub fast float -0.000000e+00, %6786
  %6788 = fdiv fast float %6783, %6776
  %6789 = fdiv fast float %6785, %6776
  %6790 = fdiv fast float %6787, %6776
  br label %6829

; <label>:6791                                    ; preds = %6767
  %6792 = fsub fast float 1.000000e+00, %6666
  %6793 = fmul fast float %6697, %6792
  %6794 = fmul fast float %6708, %6792
  %6795 = fmul fast float %6719, %6792
  %6796 = fmul fast float %6698, %6792
  %6797 = fmul fast float %6709, %6792
  %6798 = fmul fast float %6720, %6792
  %6799 = fcmp fast une float %6796, 0.000000e+00
  br i1 %6799, label %6800, label %6807, !dx.controlflow.hints !177

; <label>:6800                                    ; preds = %6791
  %6801 = fmul fast float %6796, 0x3FF7154760000000
  %6802 = call float @dx.op.unary.f32(i32 21, float %6801)  ; Exp(value)
  %6803 = fsub fast float 1.000000e+00, %6802
  %6804 = fmul fast float %6793, %6803
  %6805 = fsub fast float -0.000000e+00, %6804
  %6806 = fdiv fast float %6805, %6796
  br label %6807

; <label>:6807                                    ; preds = %6800, %6791
  %6808 = phi float [ %6806, %6800 ], [ %6793, %6791 ]
  %6809 = phi float [ %6802, %6800 ], [ 1.000000e+00, %6791 ]
  %6810 = fcmp fast une float %6797, 0.000000e+00
  br i1 %6810, label %6811, label %6818, !dx.controlflow.hints !177

; <label>:6811                                    ; preds = %6807
  %6812 = fmul fast float %6797, 0x3FF7154760000000
  %6813 = call float @dx.op.unary.f32(i32 21, float %6812)  ; Exp(value)
  %6814 = fsub fast float 1.000000e+00, %6813
  %6815 = fmul fast float %6794, %6814
  %6816 = fsub fast float -0.000000e+00, %6815
  %6817 = fdiv fast float %6816, %6797
  br label %6818

; <label>:6818                                    ; preds = %6811, %6807
  %6819 = phi float [ %6817, %6811 ], [ %6794, %6807 ]
  %6820 = phi float [ %6813, %6811 ], [ 1.000000e+00, %6807 ]
  %6821 = fcmp fast une float %6798, 0.000000e+00
  br i1 %6821, label %6822, label %6829, !dx.controlflow.hints !177

; <label>:6822                                    ; preds = %6818
  %6823 = fmul fast float %6798, 0x3FF7154760000000
  %6824 = call float @dx.op.unary.f32(i32 21, float %6823)  ; Exp(value)
  %6825 = fsub fast float 1.000000e+00, %6824
  %6826 = fmul fast float %6795, %6825
  %6827 = fsub fast float -0.000000e+00, %6826
  %6828 = fdiv fast float %6827, %6798
  br label %6829

; <label>:6829                                    ; preds = %6822, %6818, %6778, %6771
  %6830 = phi float [ %6828, %6822 ], [ %6790, %6778 ], [ %6775, %6771 ], [ %6795, %6818 ]
  %6831 = phi float [ %6819, %6822 ], [ %6789, %6778 ], [ %6774, %6771 ], [ %6819, %6818 ]
  %6832 = phi float [ %6808, %6822 ], [ %6788, %6778 ], [ %6773, %6771 ], [ %6808, %6818 ]
  %6833 = phi float [ %6824, %6822 ], [ %6780, %6778 ], [ 1.000000e+00, %6771 ], [ 1.000000e+00, %6818 ]
  %6834 = phi float [ %6820, %6822 ], [ %6780, %6778 ], [ 1.000000e+00, %6771 ], [ %6820, %6818 ]
  %6835 = phi float [ %6809, %6822 ], [ %6780, %6778 ], [ 1.000000e+00, %6771 ], [ %6809, %6818 ]
  %6836 = fmul fast float %6835, %6747
  %6837 = fmul fast float %6834, %6758
  %6838 = fmul fast float %6833, %6769
  %6839 = fadd fast float %6836, %6832
  %6840 = fadd fast float %6837, %6831
  %6841 = fadd fast float %6838, %6830
  %6842 = fmul fast float %6835, %6746
  %6843 = fmul fast float %6834, %6757
  %6844 = fmul fast float %6833, %6768
  br label %6845

; <label>:6845                                    ; preds = %6829, %6640
  %6846 = phi float [ %6844, %6829 ], [ %6646, %6640 ]
  %6847 = phi float [ %6843, %6829 ], [ %6645, %6640 ]
  %6848 = phi float [ %6842, %6829 ], [ %6644, %6640 ]
  %6849 = phi float [ %6841, %6829 ], [ %6643, %6640 ]
  %6850 = phi float [ %6840, %6829 ], [ %6642, %6640 ]
  %6851 = phi float [ %6839, %6829 ], [ %6641, %6640 ]
  %6852 = fmul fast float %6851, %5795
  %6853 = fmul fast float %6850, %5795
  %6854 = fmul fast float %6849, %5795
  %6855 = fmul fast float %6848, %6088
  %6856 = call float @dx.op.dot3.f32(i32 55, float %6848, float %6847, float %6846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6857 = call float @dx.op.dot3.f32(i32 55, float %6852, float %6853, float %6854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6858 = select i1 %228, float %6856, float %6848
  %6859 = select i1 %228, float %6856, float %6847
  %6860 = select i1 %228, float 1.000000e+00, float %6846
  %6861 = select i1 %228, float %6857, float %6852
  %6862 = select i1 %228, float 0.000000e+00, float %6853
  %6863 = select i1 %228, float 0.000000e+00, float %6854
  %6864 = fmul fast float %6858, %6082
  %6865 = fmul fast float %6859, %6083
  %6866 = fmul fast float %6860, %6084
  %6867 = fadd fast float %6864, %6861
  %6868 = fadd fast float %6865, %6862
  %6869 = fadd fast float %6863, %6866
  %6870 = fmul fast float %6858, %6085
  %6871 = fmul fast float %6859, %6086
  %6872 = fmul fast float %6860, %6087
  %6873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6874 = extractvalue %dx.types.CBufRet.i32 %6873, 0
  %6875 = icmp eq i32 %6874, 0
  br i1 %6875, label %7243, label %6876, !dx.controlflow.hints !179

; <label>:6876                                    ; preds = %6845
  %6877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6878 = extractvalue %dx.types.CBufRet.f32 %6877, 2
  %6879 = extractvalue %dx.types.CBufRet.f32 %6877, 3
  %6880 = fmul fast float %6878, %90
  %6881 = fmul fast float %6879, %91
  %6882 = fmul fast float %6880, 2.000000e+00
  %6883 = fmul fast float %6881, 2.000000e+00
  %6884 = fsub fast float 1.000000e+00, %6882
  %6885 = fsub fast float 1.000000e+00, %6883
  %6886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6887 = extractvalue %dx.types.CBufRet.f32 %6886, 0
  %6888 = extractvalue %dx.types.CBufRet.f32 %6886, 1
  %6889 = extractvalue %dx.types.CBufRet.f32 %6886, 2
  %6890 = fmul fast float %6884, %6887
  %6891 = fmul fast float %6884, %6888
  %6892 = fmul fast float %6884, %6889
  %6893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6894 = extractvalue %dx.types.CBufRet.f32 %6893, 0
  %6895 = extractvalue %dx.types.CBufRet.f32 %6893, 1
  %6896 = extractvalue %dx.types.CBufRet.f32 %6893, 2
  %6897 = fmul fast float %6885, %6894
  %6898 = fmul fast float %6885, %6895
  %6899 = fmul fast float %6885, %6896
  %6900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6901 = extractvalue %dx.types.CBufRet.f32 %6900, 0
  %6902 = extractvalue %dx.types.CBufRet.f32 %6900, 1
  %6903 = extractvalue %dx.types.CBufRet.f32 %6900, 2
  %6904 = fadd fast float %6897, %6901
  %6905 = fadd fast float %6904, %6890
  %6906 = fadd fast float %6898, %6902
  %6907 = fadd fast float %6906, %6891
  %6908 = fadd fast float %6899, %6903
  %6909 = fadd fast float %6908, %6892
  %6910 = fmul fast float %6905, %6081
  %6911 = fmul fast float %6907, %6081
  %6912 = fmul fast float %6909, %6081
  %6913 = fmul fast float %6910, %6910
  %6914 = fmul fast float %6911, %6911
  %6915 = fadd fast float %6913, %6914
  %6916 = fmul fast float %6912, %6912
  %6917 = fadd fast float %6915, %6916
  %6918 = call float @dx.op.unary.f32(i32 24, float %6917)  ; Sqrt(value)
  %6919 = extractvalue %dx.types.CBufRet.f32 %5806, 0
  %6920 = fsub fast float %6918, %6919
  %6921 = extractvalue %dx.types.CBufRet.f32 %5806, 2
  %6922 = fmul fast float %6920, %6921
  %6923 = call float @dx.op.unary.f32(i32 7, float %6922)  ; Saturate(value)
  %6924 = fadd fast float %6923, -5.000000e-01
  %6925 = fmul fast float %6924, 2.000000e+00
  %6926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6927 = extractvalue %dx.types.CBufRet.f32 %6926, 2
  %6928 = call float @dx.op.binary.f32(i32 36, float %6927, float %6925)  ; FMin(a,b)
  %6929 = fsub fast float -0.000000e+00, %6927
  %6930 = fcmp fast ogt float %6928, %6929
  br i1 %6930, label %6931, label %7243, !dx.controlflow.hints !180

; <label>:6931                                    ; preds = %6876
  %6932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6933 = extractvalue %dx.types.CBufRet.f32 %6932, 3
  %6934 = fcmp fast ogt float %6933, 0.000000e+00
  br i1 %6934, label %6935, label %7010, !dx.controlflow.hints !181

; <label>:6935                                    ; preds = %6931
  %6936 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %6937 = extractvalue %dx.types.Dimensions %6936, 0
  %6938 = sitofp i32 %6937 to float
  %6939 = extractvalue %dx.types.Dimensions %6936, 1
  %6940 = sitofp i32 %6939 to float
  %6941 = fmul fast float %6880, %6938
  %6942 = fmul fast float %6881, %6940
  %6943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6944 = extractvalue %dx.types.CBufRet.f32 %6943, 1
  %6945 = fsub fast float -0.000000e+00, %6944
  %6946 = fptoui float %6945 to i32
  %6947 = fptoui float %6941 to i32
  %6948 = fptoui float %6942 to i32
  %6949 = and i32 %6946, 31
  %6950 = lshr i32 %6947, %6949
  %6951 = lshr i32 %6948, %6949
  %6952 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %6946, i32 %6950, i32 %6951, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6953 = extractvalue %dx.types.ResRet.f32 %6952, 0
  %6954 = fcmp fast olt float %6953, -1.000000e+00
  %6955 = fcmp fast ogt float %6953, -1.000000e+00
  %6956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6957 = extractvalue %dx.types.CBufRet.f32 %6956, 1
  %6958 = select i1 %6955, float %6957, float 1.000000e+00
  %6959 = fadd fast float %6953, 1.000000e+00
  %6960 = fmul fast float %6958, %6959
  %6961 = call float @dx.op.unary.f32(i32 6, float %6960)  ; FAbs(value)
  %6962 = extractvalue %dx.types.CBufRet.f32 %6956, 3
  %6963 = fcmp fast oge float %6961, %6962
  %6964 = select i1 %6963, float 0x4197782600000000, float %6961
  %6965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6966 = extractvalue %dx.types.CBufRet.f32 %6965, 0
  %6967 = extractvalue %dx.types.CBufRet.f32 %6965, 1
  %6968 = extractvalue %dx.types.CBufRet.f32 %6965, 2
  %6969 = select i1 %6954, float %6966, float %6887
  %6970 = select i1 %6954, float %6967, float %6888
  %6971 = select i1 %6954, float %6968, float %6889
  %6972 = fmul fast float %6969, %6884
  %6973 = fmul fast float %6970, %6884
  %6974 = fmul fast float %6971, %6884
  %6975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6976 = extractvalue %dx.types.CBufRet.f32 %6975, 0
  %6977 = extractvalue %dx.types.CBufRet.f32 %6975, 1
  %6978 = extractvalue %dx.types.CBufRet.f32 %6975, 2
  %6979 = select i1 %6954, float %6976, float %6894
  %6980 = select i1 %6954, float %6977, float %6895
  %6981 = select i1 %6954, float %6978, float %6896
  %6982 = fmul fast float %6979, %6885
  %6983 = fmul fast float %6980, %6885
  %6984 = fmul fast float %6981, %6885
  %6985 = fadd fast float %6982, %6972
  %6986 = fadd fast float %6983, %6973
  %6987 = fadd fast float %6984, %6974
  %6988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6989 = extractvalue %dx.types.CBufRet.f32 %6988, 0
  %6990 = extractvalue %dx.types.CBufRet.f32 %6988, 1
  %6991 = extractvalue %dx.types.CBufRet.f32 %6988, 2
  %6992 = select i1 %6954, float %6989, float %6901
  %6993 = select i1 %6954, float %6990, float %6902
  %6994 = select i1 %6954, float %6991, float %6903
  %6995 = fadd fast float %6985, %6992
  %6996 = fadd fast float %6986, %6993
  %6997 = fadd fast float %6987, %6994
  %6998 = fmul fast float %6995, %6964
  %6999 = fmul fast float %6996, %6964
  %7000 = fmul fast float %6997, %6964
  %7001 = fmul fast float %6998, %6998
  %7002 = fmul fast float %6999, %6999
  %7003 = fadd fast float %7001, %7002
  %7004 = fmul fast float %7000, %7000
  %7005 = fadd fast float %7003, %7004
  %7006 = call float @dx.op.unary.f32(i32 24, float %7005)  ; Sqrt(value)
  %7007 = fsub fast float %7006, %6919
  %7008 = fmul fast float %7007, %6921
  %7009 = call float @dx.op.unary.f32(i32 7, float %7008)  ; Saturate(value)
  br label %7010

; <label>:7010                                    ; preds = %6935, %6931
  %7011 = phi float [ %7009, %6935 ], [ 1.000000e+00, %6931 ]
  %7012 = fmul fast float %6928, 5.000000e-01
  %7013 = fadd fast float %7012, 5.000000e-01
  %7014 = call float @dx.op.unary.f32(i32 22, float %7013)  ; Frc(value)
  %7015 = call float @dx.op.unary.f32(i32 27, float %7014)  ; Round_ni(value)
  %7016 = call float @dx.op.unary.f32(i32 22, float %7014)  ; Frc(value)
  %7017 = fmul fast float %7016, 2.000000e+00
  %7018 = fadd fast float %7017, -1.000000e+00
  %7019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %58, float %6880, float %6881, float %7015, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7020 = extractvalue %dx.types.ResRet.f32 %7019, 0
  %7021 = extractvalue %dx.types.ResRet.f32 %7019, 1
  %7022 = extractvalue %dx.types.ResRet.f32 %7019, 2
  %7023 = extractvalue %dx.types.ResRet.f32 %7019, 3
  %7024 = fadd fast float %7020, -5.000000e-01
  %7025 = fadd fast float %7022, -5.000000e-01
  %7026 = fmul fast float %7024, 0xBFD5555560000000
  %7027 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7025, float %7026)  ; FMad(a,b,c)
  %7028 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7021, float 0.000000e+00)  ; FMad(a,b,c)
  %7029 = fadd fast float %7028, %7023
  %7030 = fmul fast float %7024, -7.500000e-01
  %7031 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7025, float %7030)  ; FMad(a,b,c)
  %7032 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7021, float 0.000000e+00)  ; FMad(a,b,c)
  %7033 = fadd fast float %7032, %7023
  %7034 = call float @dx.op.binary.f32(i32 35, float %7027, float -1.000000e+00)  ; FMax(a,b)
  %7035 = call float @dx.op.binary.f32(i32 35, float %7029, float -1.000000e+00)  ; FMax(a,b)
  %7036 = call float @dx.op.binary.f32(i32 35, float %7031, float -1.000000e+00)  ; FMax(a,b)
  %7037 = call float @dx.op.binary.f32(i32 35, float %7033, float -1.000000e+00)  ; FMax(a,b)
  %7038 = call float @dx.op.binary.f32(i32 36, float %7034, float 1.000000e+00)  ; FMin(a,b)
  %7039 = call float @dx.op.binary.f32(i32 36, float %7035, float 1.000000e+00)  ; FMin(a,b)
  %7040 = call float @dx.op.binary.f32(i32 36, float %7036, float 1.000000e+00)  ; FMin(a,b)
  %7041 = call float @dx.op.binary.f32(i32 36, float %7037, float 1.000000e+00)  ; FMin(a,b)
  %7042 = fcmp fast olt float %7038, 0x3FEFFF8020000000
  br i1 %7042, label %7043, label %7158, !dx.controlflow.hints !182

; <label>:7043                                    ; preds = %7010
  %7044 = extractvalue %dx.types.CBufRet.f32 %6926, 3
  %7045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7046 = extractvalue %dx.types.CBufRet.f32 %7045, 0
  %7047 = extractvalue %dx.types.CBufRet.f32 %7045, 1
  %7048 = extractvalue %dx.types.CBufRet.f32 %7045, 2
  %7049 = extractvalue %dx.types.CBufRet.f32 %7045, 3
  %7050 = fsub fast float %7046, %7038
  %7051 = fsub fast float %7047, %7039
  %7052 = fsub fast float %7048, %7040
  %7053 = fsub fast float %7049, %7041
  %7054 = fmul fast float %7050, %7044
  %7055 = fmul fast float %7051, %7044
  %7056 = fmul fast float %7052, %7044
  %7057 = fmul fast float %7053, %7044
  %7058 = fadd fast float %7054, %7038
  %7059 = fadd fast float %7055, %7039
  %7060 = fsub fast float -0.000000e+00, %7059
  %7061 = fadd fast float %7056, %7040
  %7062 = fadd fast float %7057, %7041
  %7063 = fmul fast float %7058, %7058
  %7064 = fsub fast float %7059, %7063
  %7065 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7064)  ; FMax(a,b)
  %7066 = fdiv fast float 1.000000e+00, %7065
  %7067 = fmul fast float %7059, %7058
  %7068 = fsub fast float %7061, %7067
  %7069 = fsub fast float %7018, %7058
  %7070 = fmul fast float %7018, %7018
  %7071 = fsub fast float %7070, %7059
  %7072 = fmul fast float %7069, %7066
  %7073 = fmul fast float %7072, %7068
  %7074 = fsub fast float %7071, %7073
  %7075 = fmul fast float %7059, %7059
  %7076 = fsub fast float %7062, %7075
  %7077 = fmul fast float %7068, %7068
  %7078 = fmul fast float %7077, %7066
  %7079 = fsub fast float %7076, %7078
  %7080 = fdiv fast float %7074, %7079
  %7081 = fmul fast float %7068, %7080
  %7082 = fsub fast float %7069, %7081
  %7083 = fmul fast float %7082, %7066
  %7084 = fmul fast float %7083, %7058
  %7085 = fsub fast float 1.000000e+00, %7084
  %7086 = fmul fast float %7059, %7080
  %7087 = fsub fast float %7085, %7086
  %7088 = fmul fast float %7083, %7083
  %7089 = fmul fast float %7080, 4.000000e+00
  %7090 = fmul fast float %7089, %7087
  %7091 = fsub fast float %7088, %7090
  %7092 = call float @dx.op.unary.f32(i32 24, float %7091)  ; Sqrt(value)
  %7093 = fcmp fast oge float %7083, 0.000000e+00
  %7094 = fsub fast float -0.000000e+00, %7092
  %7095 = select i1 %7093, float %7094, float %7092
  %7096 = fsub fast float %7095, %7083
  %7097 = fdiv fast float %7096, %7080
  %7098 = fdiv fast float %7087, %7096
  %7099 = fmul fast float %7097, 5.000000e-01
  %7100 = fmul fast float %7098, 2.000000e+00
  %7101 = select i1 %7093, float %7099, float %7100
  %7102 = select i1 %7093, float %7100, float %7099
  %7103 = call float @dx.op.binary.f32(i32 35, float %7101, float %7102)  ; FMax(a,b)
  %7104 = call float @dx.op.binary.f32(i32 36, float %7101, float %7102)  ; FMin(a,b)
  %7105 = fcmp fast ogt float %7018, %7104
  br i1 %7105, label %7106, label %7116

; <label>:7106                                    ; preds = %7043
  %7107 = fsub fast float %7018, %7104
  %7108 = fsub fast float %7103, %7104
  %7109 = fmul fast float %7107, %7108
  %7110 = fmul fast float %7103, %7018
  %7111 = fadd fast float %7103, %7018
  %7112 = fmul fast float %7111, %7058
  %7113 = fadd fast float %7110, %7059
  %7114 = fsub fast float %7113, %7112
  %7115 = fdiv fast float %7114, %7109
  br label %7116

; <label>:7116                                    ; preds = %7106, %7043
  %7117 = phi float [ %7115, %7106 ], [ 0.000000e+00, %7043 ]
  %7118 = fcmp fast ogt float %7018, %7103
  %7119 = fsub fast float %7018, %7103
  br i1 %7118, label %7120, label %7130

; <label>:7120                                    ; preds = %7116
  %7121 = fsub fast float %7103, %7104
  %7122 = fmul fast float %7121, %7119
  %7123 = fmul fast float %7104, %7018
  %7124 = fadd fast float %7104, %7018
  %7125 = fmul fast float %7124, %7058
  %7126 = fsub fast float %7060, %7123
  %7127 = fadd fast float %7126, %7125
  %7128 = fdiv fast float %7127, %7122
  %7129 = fadd fast float %7128, %7117
  br label %7130

; <label>:7130                                    ; preds = %7120, %7116
  %7131 = phi float [ %7129, %7120 ], [ %7117, %7116 ]
  %7132 = fsub fast float %7018, %7104
  %7133 = fmul fast float %7132, %7119
  %7134 = fmul fast float %7104, %7103
  %7135 = fadd fast float %7104, %7103
  %7136 = fmul fast float %7135, %7058
  %7137 = fadd fast float %7134, %7059
  %7138 = fsub fast float %7137, %7136
  %7139 = fdiv fast float %7138, %7133
  %7140 = call float @dx.op.unary.f32(i32 7, float %7131)  ; Saturate(value)
  %7141 = fcmp fast oeq float %5807, 0.000000e+00
  %7142 = extractvalue %dx.types.CBufRet.f32 %6926, 0
  %7143 = fcmp fast oeq float %7142, 0.000000e+00
  %7144 = or i1 %7141, %7143
  %7145 = fmul fast float %7142, 2.000000e+00
  %7146 = fadd fast float %6927, %6928
  %7147 = fdiv fast float %7146, %7145
  %7148 = call float @dx.op.unary.f32(i32 7, float %7147)  ; Saturate(value)
  %7149 = fmul fast float %7148, 2.000000e+00
  %7150 = fsub fast float 3.000000e+00, %7149
  %7151 = fmul fast float %7148, %7148
  %7152 = fmul fast float %7151, %7150
  %7153 = select i1 %7144, float 1.000000e+00, float %7152
  %7154 = fmul fast float %7139, %5807
  %7155 = fadd fast float %7140, %7154
  %7156 = call float @dx.op.unary.f32(i32 7, float %7155)  ; Saturate(value)
  %7157 = fmul fast float %7153, %7156
  br label %7158

; <label>:7158                                    ; preds = %7130, %7010
  %7159 = phi float [ %7157, %7130 ], [ 0.000000e+00, %7010 ]
  %7160 = fsub fast float 1.000000e+00, %7159
  %7161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %58, float %6880, float %6881, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7162 = extractvalue %dx.types.ResRet.f32 %7161, 0
  %7163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7164 = extractvalue %dx.types.CBufRet.i32 %7163, 2
  %7165 = icmp eq i32 %7164, 0
  br i1 %7165, label %7171, label %7166

; <label>:7166                                    ; preds = %7158
  %7167 = call float @dx.op.unary.f32(i32 7, float %7159)  ; Saturate(value)
  %7168 = fadd fast float %7162, -1.000000e+00
  %7169 = fmul fast float %7167, %7168
  %7170 = fadd fast float %7169, 1.000000e+00
  br label %7171

; <label>:7171                                    ; preds = %7166, %7158
  %7172 = phi float [ %7170, %7166 ], [ %7160, %7158 ]
  br i1 %6934, label %7173, label %7191

; <label>:7173                                    ; preds = %7171
  %7174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7174, 1
  %7176 = fsub fast float %7011, %7175
  %7177 = call float @dx.op.unary.f32(i32 7, float %7176)  ; Saturate(value)
  %7178 = fsub fast float %7011, %6933
  %7179 = call float @dx.op.unary.f32(i32 7, float %7178)  ; Saturate(value)
  %7180 = fsub fast float %7177, %7179
  %7181 = fsub fast float %7013, %7179
  %7182 = fdiv fast float %7181, %7180
  %7183 = call float @dx.op.unary.f32(i32 7, float %7182)  ; Saturate(value)
  %7184 = fmul fast float %7183, 2.000000e+00
  %7185 = fsub fast float 3.000000e+00, %7184
  %7186 = fsub fast float %7162, %7172
  %7187 = fmul fast float %7183, %7183
  %7188 = fmul fast float %7187, %7186
  %7189 = fmul fast float %7188, %7185
  %7190 = fadd fast float %7189, %7172
  br label %7191

; <label>:7191                                    ; preds = %7173, %7171
  %7192 = phi float [ %7190, %7173 ], [ %7172, %7171 ]
  %7193 = call float @dx.op.binary.f32(i32 35, float %7162, float %7192)  ; FMax(a,b)
  %7194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7195 = extractvalue %dx.types.CBufRet.i32 %7194, 2
  %7196 = and i32 %7195, 1
  %7197 = icmp eq i32 %7196, 0
  %7198 = fcmp fast une float %7193, 1.000000e+00
  %7199 = and i1 %7198, %7197
  br i1 %7199, label %7200, label %7219

; <label>:7200                                    ; preds = %7191
  %7201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %58, float %6880, float %6881, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7202 = extractvalue %dx.types.ResRet.f32 %7201, 0
  %7203 = extractvalue %dx.types.ResRet.f32 %7201, 1
  %7204 = extractvalue %dx.types.ResRet.f32 %7201, 2
  %7205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7206 = extractvalue %dx.types.CBufRet.f32 %7205, 1
  %7207 = fmul fast float %7206, %7202
  %7208 = fmul fast float %7206, %7203
  %7209 = fmul fast float %7206, %7204
  %7210 = fcmp fast ogt float %7162, 0x3FEFFF2E40000000
  %7211 = fsub fast float 1.000000e+00, %7193
  %7212 = fsub fast float 1.000000e+00, %7162
  %7213 = fdiv fast float %7211, %7212
  %7214 = call float @dx.op.unary.f32(i32 7, float %7213)  ; Saturate(value)
  %7215 = select i1 %7210, float 0.000000e+00, float %7214
  %7216 = fmul fast float %7207, %7215
  %7217 = fmul fast float %7208, %7215
  %7218 = fmul fast float %7209, %7215
  br label %7219

; <label>:7219                                    ; preds = %7200, %7191
  %7220 = phi float [ 0.000000e+00, %7191 ], [ %7216, %7200 ]
  %7221 = phi float [ 0.000000e+00, %7191 ], [ %7217, %7200 ]
  %7222 = phi float [ 0.000000e+00, %7191 ], [ %7218, %7200 ]
  %7223 = fmul fast float %7220, %5795
  %7224 = fmul fast float %7221, %5795
  %7225 = fmul fast float %7222, %5795
  %7226 = fmul fast float %7193, %6855
  %7227 = call float @dx.op.dot3.f32(i32 55, float %7193, float %7193, float %7193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7228 = call float @dx.op.dot3.f32(i32 55, float %7223, float %7224, float %7225, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7229 = select i1 %228, float %7227, float %7193
  %7230 = select i1 %228, float 1.000000e+00, float %7193
  %7231 = select i1 %228, float %7228, float %7223
  %7232 = select i1 %228, float 0.000000e+00, float %7224
  %7233 = select i1 %228, float 0.000000e+00, float %7225
  %7234 = fmul fast float %7229, %6867
  %7235 = fmul fast float %7229, %6868
  %7236 = fmul fast float %7230, %6869
  %7237 = fadd fast float %7234, %7231
  %7238 = fadd fast float %7235, %7232
  %7239 = fadd fast float %7233, %7236
  %7240 = fmul fast float %7229, %6870
  %7241 = fmul fast float %7229, %6871
  %7242 = fmul fast float %7230, %6872
  br label %7243

; <label>:7243                                    ; preds = %7219, %6876, %6845, %6077
  %7244 = phi float [ %6082, %6077 ], [ %6867, %6845 ], [ %7237, %7219 ], [ %6867, %6876 ]
  %7245 = phi float [ %6083, %6077 ], [ %6868, %6845 ], [ %7238, %7219 ], [ %6868, %6876 ]
  %7246 = phi float [ %6084, %6077 ], [ %6869, %6845 ], [ %7239, %7219 ], [ %6869, %6876 ]
  %7247 = phi float [ %6085, %6077 ], [ %6870, %6845 ], [ %7240, %7219 ], [ %6870, %6876 ]
  %7248 = phi float [ %6086, %6077 ], [ %6871, %6845 ], [ %7241, %7219 ], [ %6871, %6876 ]
  %7249 = phi float [ %6087, %6077 ], [ %6872, %6845 ], [ %7242, %7219 ], [ %6872, %6876 ]
  %7250 = phi float [ %6088, %6077 ], [ %6855, %6845 ], [ %7226, %7219 ], [ %6855, %6876 ]
  %7251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7252 = extractvalue %dx.types.CBufRet.f32 %7251, 2
  %7253 = extractvalue %dx.types.CBufRet.f32 %7251, 3
  %7254 = fmul fast float %7252, %90
  %7255 = fmul fast float %7253, %91
  %7256 = call float @dx.op.unary.f32(i32 7, float %7254)  ; Saturate(value)
  %7257 = call float @dx.op.unary.f32(i32 7, float %7255)  ; Saturate(value)
  %7258 = select i1 %5817, i32 2, i32 0
  %7259 = or i32 %7258, 1
  %7260 = uitofp i32 %7259 to float
  %7261 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %7256, float %7257, float %7260, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7262 = extractvalue %dx.types.ResRet.f32 %7261, 0
  %7263 = extractvalue %dx.types.ResRet.f32 %7261, 1
  %7264 = extractvalue %dx.types.ResRet.f32 %7261, 2
  %7265 = extractvalue %dx.types.ResRet.f32 %7261, 3
  %7266 = add nuw nsw i32 %7258, 2
  %7267 = uitofp i32 %7266 to float
  %7268 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %7256, float %7257, float %7267, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7269 = extractvalue %dx.types.ResRet.f32 %7268, 0
  %7270 = extractvalue %dx.types.ResRet.f32 %7268, 1
  %7271 = extractvalue %dx.types.ResRet.f32 %7268, 2
  %7272 = extractvalue %dx.types.ResRet.f32 %7268, 3
  %7273 = call float @dx.op.binary.f32(i32 35, float %7263, float %7264)  ; FMax(a,b)
  %7274 = call float @dx.op.binary.f32(i32 35, float %7262, float %7273)  ; FMax(a,b)
  %7275 = call float @dx.op.binary.f32(i32 35, float %7274, float %7265)  ; FMax(a,b)
  %7276 = call float @dx.op.binary.f32(i32 36, float %7270, float %7271)  ; FMin(a,b)
  %7277 = call float @dx.op.binary.f32(i32 36, float %7269, float %7276)  ; FMin(a,b)
  %7278 = call float @dx.op.binary.f32(i32 36, float %7277, float %7272)  ; FMin(a,b)
  %7279 = fmul fast float %7275, 2.550000e+02
  %7280 = fadd fast float %7279, 0x3F70101020000000
  %7281 = fptoui float %7280 to i32
  %7282 = fmul fast float %7278, 2.550000e+02
  %7283 = fadd fast float %7282, 0x3F70101020000000
  %7284 = fptoui float %7283 to i32
  %7285 = icmp ult i32 %7281, %7284
  br i1 %7285, label %7286, label %7455

; <label>:7286                                    ; preds = %7243
  %7287 = fcmp fast ogt float %80, 9.843750e-01
  %7288 = fadd fast float %6081, -4.000000e+00
  %7289 = select i1 %7287, float -4.000000e+00, float %7288
  %7290 = call float @dx.op.binary.f32(i32 35, float %7289, float 0.000000e+00)  ; FMax(a,b)
  %7291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7292 = extractvalue %dx.types.CBufRet.f32 %7291, 0
  %7293 = fadd fast float %7292, %7290
  %7294 = extractvalue %dx.types.CBufRet.f32 %7291, 2
  %7295 = fmul fast float %7293, %7294
  %7296 = call float @dx.op.unary.f32(i32 23, float %7295)  ; Log(value)
  %7297 = extractvalue %dx.types.CBufRet.f32 %7291, 3
  %7298 = fmul fast float %7297, %7296
  %7299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7300 = extractvalue %dx.types.CBufRet.f32 %7299, 2
  %7301 = fmul fast float %7298, %7300
  %7302 = call float @dx.op.unary.f32(i32 7, float %7301)  ; Saturate(value)
  %7303 = uitofp i32 %7281 to float
  %7304 = uitofp i32 %7284 to float
  %7305 = fadd fast float %7303, 5.000000e-01
  %7306 = fadd fast float %7304, 5.000000e-01
  %7307 = fmul fast float %7300, %7305
  %7308 = fmul fast float %7300, %7306
  %7309 = fadd fast float %7307, 0x3F0FFB4800000000
  %7310 = fadd fast float %7308, 0xBF0FFB4800000000
  %7311 = call float @dx.op.binary.f32(i32 35, float %7302, float %7309)  ; FMax(a,b)
  %7312 = call float @dx.op.binary.f32(i32 36, float %7311, float %7310)  ; FMin(a,b)
  %7313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7314 = extractvalue %dx.types.CBufRet.f32 %7313, 1
  %7315 = extractvalue %dx.types.CBufRet.f32 %7313, 2
  %7316 = extractvalue %dx.types.CBufRet.f32 %7313, 0
  %7317 = select i1 %5817, float %7316, float 0.000000e+00
  %7318 = fmul fast float %7314, %7312
  %7319 = fadd fast float %7317, %7318
  %7320 = fadd fast float %7317, %7315
  %7321 = fsub fast float %7314, %7315
  %7322 = fadd fast float %7321, %7317
  %7323 = call float @dx.op.binary.f32(i32 35, float %7319, float %7320)  ; FMax(a,b)
  %7324 = call float @dx.op.binary.f32(i32 36, float %7323, float %7322)  ; FMin(a,b)
  %7325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %7256, float %7257, float %7324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7326 = extractvalue %dx.types.ResRet.f32 %7325, 0
  %7327 = extractvalue %dx.types.ResRet.f32 %7325, 1
  %7328 = extractvalue %dx.types.ResRet.f32 %7325, 2
  %7329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7330 = extractvalue %dx.types.CBufRet.i32 %7329, 0
  %7331 = extractvalue %dx.types.CBufRet.i32 %7329, 1
  %7332 = uitofp i32 %7330 to float
  %7333 = uitofp i32 %7331 to float
  %7334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7335 = extractvalue %dx.types.CBufRet.f32 %7334, 0
  %7336 = extractvalue %dx.types.CBufRet.f32 %7334, 1
  %7337 = fmul fast float %7332, %7256
  %7338 = fmul fast float %7333, %7257
  %7339 = fadd fast float %7337, -5.000000e-01
  %7340 = fadd fast float %7338, -5.000000e-01
  %7341 = call float @dx.op.unary.f32(i32 22, float %7339)  ; Frc(value)
  %7342 = call float @dx.op.unary.f32(i32 22, float %7340)  ; Frc(value)
  %7343 = fmul fast float %7341, %7341
  %7344 = fmul fast float %7343, %7341
  %7345 = fsub fast float 3.000000e+00, %7341
  %7346 = fmul fast float %7343, %7345
  %7347 = fmul fast float %7341, 3.000000e+00
  %7348 = fmul fast float %7344, 3.000000e+00
  %7349 = fmul fast float %7343, 6.000000e+00
  %7350 = fsub fast float %7348, %7349
  %7351 = fadd fast float %7350, 4.000000e+00
  %7352 = fmul fast float %7351, 0x3FC5555560000000
  %7353 = fmul fast float %7344, -3.000000e+00
  %7354 = fadd fast float %7343, %7341
  %7355 = fmul fast float %7354, 3.000000e+00
  %7356 = fadd fast float %7353, 1.000000e+00
  %7357 = fadd fast float %7356, %7355
  %7358 = fmul fast float %7344, 0x3FC5555560000000
  %7359 = fmul fast float %7342, %7342
  %7360 = fmul fast float %7359, %7342
  %7361 = fsub fast float 3.000000e+00, %7342
  %7362 = fmul fast float %7359, %7361
  %7363 = fmul fast float %7342, 3.000000e+00
  %7364 = fmul fast float %7360, 3.000000e+00
  %7365 = fmul fast float %7359, 6.000000e+00
  %7366 = fsub fast float %7364, %7365
  %7367 = fadd fast float %7366, 4.000000e+00
  %7368 = fmul fast float %7367, 0x3FC5555560000000
  %7369 = fmul fast float %7360, -3.000000e+00
  %7370 = fadd fast float %7359, %7342
  %7371 = fmul fast float %7370, 3.000000e+00
  %7372 = fadd fast float %7369, 1.000000e+00
  %7373 = fadd fast float %7372, %7371
  %7374 = fmul fast float %7360, 0x3FC5555560000000
  %7375 = fadd fast float %7341, 1.000000e+00
  %7376 = fsub fast float 1.000000e+00, %7347
  %7377 = fadd fast float %7376, %7346
  %7378 = fadd fast float %7377, %7351
  %7379 = fmul fast float %7378, 0x3FC5555560000000
  %7380 = fdiv fast float %7352, %7379
  %7381 = fsub fast float %7375, %7380
  %7382 = fsub fast float 1.000000e+00, %7341
  %7383 = fadd fast float %7357, %7344
  %7384 = fmul fast float %7383, 0x3FC5555560000000
  %7385 = fdiv fast float %7358, %7384
  %7386 = fadd fast float %7382, %7385
  %7387 = fadd fast float %7342, 1.000000e+00
  %7388 = fsub fast float 1.000000e+00, %7363
  %7389 = fadd fast float %7388, %7362
  %7390 = fadd fast float %7389, %7367
  %7391 = fmul fast float %7390, 0x3FC5555560000000
  %7392 = fdiv fast float %7368, %7391
  %7393 = fsub fast float %7387, %7392
  %7394 = fsub fast float 1.000000e+00, %7342
  %7395 = fadd fast float %7373, %7360
  %7396 = fmul fast float %7395, 0x3FC5555560000000
  %7397 = fdiv fast float %7374, %7396
  %7398 = fadd fast float %7397, %7394
  %7399 = fmul fast float %7381, %7335
  %7400 = fsub fast float %7256, %7399
  %7401 = fmul fast float %7386, %7335
  %7402 = fadd fast float %7401, %7256
  %7403 = fmul fast float %7398, %7336
  %7404 = fadd fast float %7403, %7257
  %7405 = fmul fast float %7393, %7336
  %7406 = fsub fast float %7257, %7405
  %7407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7400, float %7406, float %7324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7408 = extractvalue %dx.types.ResRet.f32 %7407, 0
  %7409 = extractvalue %dx.types.ResRet.f32 %7407, 1
  %7410 = extractvalue %dx.types.ResRet.f32 %7407, 2
  %7411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7402, float %7406, float %7324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7412 = extractvalue %dx.types.ResRet.f32 %7411, 0
  %7413 = extractvalue %dx.types.ResRet.f32 %7411, 1
  %7414 = extractvalue %dx.types.ResRet.f32 %7411, 2
  %7415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7400, float %7404, float %7324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7416 = extractvalue %dx.types.ResRet.f32 %7415, 0
  %7417 = extractvalue %dx.types.ResRet.f32 %7415, 1
  %7418 = extractvalue %dx.types.ResRet.f32 %7415, 2
  %7419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7402, float %7404, float %7324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7420 = extractvalue %dx.types.ResRet.f32 %7419, 0
  %7421 = extractvalue %dx.types.ResRet.f32 %7419, 1
  %7422 = extractvalue %dx.types.ResRet.f32 %7419, 2
  %7423 = fsub fast float %7416, %7408
  %7424 = fsub fast float %7417, %7409
  %7425 = fsub fast float %7418, %7410
  %7426 = fmul fast float %7423, %7396
  %7427 = fmul fast float %7424, %7396
  %7428 = fmul fast float %7425, %7396
  %7429 = fadd fast float %7426, %7408
  %7430 = fadd fast float %7427, %7409
  %7431 = fadd fast float %7428, %7410
  %7432 = fsub fast float %7420, %7412
  %7433 = fsub fast float %7421, %7413
  %7434 = fsub fast float %7422, %7414
  %7435 = fmul fast float %7432, %7396
  %7436 = fmul fast float %7433, %7396
  %7437 = fmul fast float %7434, %7396
  %7438 = fsub fast float %7412, %7429
  %7439 = fadd fast float %7438, %7435
  %7440 = fsub fast float %7413, %7430
  %7441 = fadd fast float %7440, %7436
  %7442 = fsub fast float %7414, %7431
  %7443 = fadd fast float %7442, %7437
  %7444 = fmul fast float %7439, %7384
  %7445 = fmul fast float %7441, %7384
  %7446 = fmul fast float %7443, %7384
  %7447 = fadd fast float %7444, %7429
  %7448 = fadd fast float %7445, %7430
  %7449 = fadd fast float %7446, %7431
  %7450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7451 = extractvalue %dx.types.CBufRet.f32 %7450, 1
  %7452 = fmul fast float %7447, %7451
  %7453 = fmul fast float %7448, %7451
  %7454 = fmul fast float %7449, %7451
  br label %7455

; <label>:7455                                    ; preds = %7286, %7243
  %7456 = phi float [ %7326, %7286 ], [ 1.000000e+00, %7243 ]
  %7457 = phi float [ %7327, %7286 ], [ 1.000000e+00, %7243 ]
  %7458 = phi float [ %7328, %7286 ], [ 1.000000e+00, %7243 ]
  %7459 = phi float [ %7452, %7286 ], [ 0.000000e+00, %7243 ]
  %7460 = phi float [ %7453, %7286 ], [ 0.000000e+00, %7243 ]
  %7461 = phi float [ %7454, %7286 ], [ 0.000000e+00, %7243 ]
  %7462 = fmul fast float %7459, %5795
  %7463 = fmul fast float %7460, %5795
  %7464 = fmul fast float %7461, %5795
  %7465 = fmul fast float %7456, %7250
  %7466 = call float @dx.op.dot3.f32(i32 55, float %7456, float %7457, float %7458, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7467 = call float @dx.op.dot3.f32(i32 55, float %7462, float %7463, float %7464, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7468 = select i1 %228, float %7466, float %7456
  %7469 = select i1 %228, float %7466, float %7457
  %7470 = select i1 %228, float 1.000000e+00, float %7458
  %7471 = select i1 %228, float %7467, float %7462
  %7472 = select i1 %228, float 0.000000e+00, float %7463
  %7473 = select i1 %228, float 0.000000e+00, float %7464
  %7474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7475 = extractvalue %dx.types.CBufRet.i32 %7474, 3
  %7476 = and i32 %7475, 3
  %7477 = icmp ne i32 %7476, 0
  %7478 = and i32 %7475, 4
  %7479 = icmp ne i32 %7478, 0
  %7480 = and i1 %7477, %7479
  %7481 = and i1 %228, %7480
  br i1 %7481, label %7482, label %7488

; <label>:7482                                    ; preds = %7455
  %7483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7484 = extractvalue %dx.types.CBufRet.f32 %7483, 1
  %7485 = fadd fast float %7465, -1.000000e+00
  %7486 = fmul fast float %7484, %7485
  %7487 = fadd fast float %7486, 1.000000e+00
  br label %7488

; <label>:7488                                    ; preds = %7482, %7455
  %7489 = phi float [ %7487, %7482 ], [ %7465, %7455 ]
  %7490 = fadd fast float %7247, %7244
  %7491 = fmul fast float %7468, %7490
  %7492 = fadd fast float %7491, %7471
  %7493 = fadd fast float %7248, %7245
  %7494 = fmul fast float %7469, %7493
  %7495 = fadd fast float %7494, %7472
  %7496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7497 = extractvalue %dx.types.CBufRet.f32 %7496, 0
  br i1 %228, label %7498, label %7521

; <label>:7498                                    ; preds = %7488
  %7499 = fadd fast float %7492, %7495
  %7500 = fmul fast float %7497, %7499
  %7501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7502 = extractvalue %dx.types.CBufRet.f32 %7501, 3
  %7503 = extractvalue %dx.types.CBufRet.f32 %5799, 1
  %7504 = fsub fast float %5804, %5798
  %7505 = fadd fast float %7504, %5805
  %7506 = fsub fast float %7505, %7503
  %7507 = extractvalue %dx.types.CBufRet.f32 %5799, 2
  %7508 = fmul fast float %7506, %7507
  %7509 = call float @dx.op.unary.f32(i32 7, float %7508)  ; Saturate(value)
  %7510 = fsub fast float %7509, %7502
  %7511 = fmul fast float %7510, %7489
  %7512 = fadd fast float %7511, %7502
  %7513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7514 = extractvalue %dx.types.CBufRet.f32 %7513, 0
  %7515 = fsub fast float %7512, %7514
  %7516 = fmul fast float %7515, 1.000000e+01
  %7517 = call float @dx.op.unary.f32(i32 7, float %7516)  ; Saturate(value)
  %7518 = fmul fast float %7517, %5794
  %7519 = fadd fast float %7518, %5795
  %7520 = fmul fast float %7519, %7512
  br label %7545

; <label>:7521                                    ; preds = %7488
  %7522 = fadd fast float %7249, %7246
  %7523 = fmul fast float %7470, %7522
  %7524 = fadd fast float %7523, %7473
  %7525 = fmul fast float %7497, %7492
  %7526 = fmul fast float %7497, %7495
  %7527 = fmul fast float %7497, %7524
  %7528 = call float @dx.op.binary.f32(i32 35, float %7526, float %7527)  ; FMax(a,b)
  %7529 = call float @dx.op.binary.f32(i32 35, float %7525, float %7528)  ; FMax(a,b)
  %7530 = call float @dx.op.binary.f32(i32 35, float %7529, float %5795)  ; FMax(a,b)
  %7531 = fcmp fast ugt float %7530, 0x3F10000000000000
  br i1 %7531, label %7533, label %7532

; <label>:7532                                    ; preds = %7521
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7533

; <label>:7533                                    ; preds = %7532, %7521
  %7534 = add i32 %65, 116
  %7535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %7534, i32 undef)  ; BufferLoad(srv,index,wot)
  %7536 = extractvalue %dx.types.ResRet.i32 %7535, 0
  %7537 = and i32 %7536, 32
  %7538 = icmp eq i32 %7537, 0
  br i1 %7538, label %7545, label %7539

; <label>:7539                                    ; preds = %7533
  %7540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7541 = extractvalue %dx.types.CBufRet.f32 %7540, 0
  %7542 = fmul fast float %7541, 0x3FE99999A0000000
  %7543 = fadd fast float %7541, %7525
  %7544 = fadd fast float %7542, %7527
  br label %7545

; <label>:7545                                    ; preds = %7539, %7533, %7498
  %7546 = phi float [ %7500, %7498 ], [ %7543, %7539 ], [ %7525, %7533 ]
  %7547 = phi float [ %7520, %7498 ], [ %7526, %7539 ], [ %7526, %7533 ]
  %7548 = phi float [ %7519, %7498 ], [ %7544, %7539 ], [ %7527, %7533 ]
  %7549 = phi float [ %7519, %7498 ], [ %5795, %7539 ], [ %5795, %7533 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7550 = call float @dx.op.binary.f32(i32 36, float %7546, float 3.225500e+04)  ; FMin(a,b)
  %7551 = call float @dx.op.binary.f32(i32 36, float %7547, float 3.225500e+04)  ; FMin(a,b)
  %7552 = call float @dx.op.binary.f32(i32 36, float %7548, float 3.225500e+04)  ; FMin(a,b)
  %7553 = call float @dx.op.binary.f32(i32 36, float %7549, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7550)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7551)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7552)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7553)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!69 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!70 = !{!71, !72, !73, !74, !75, !76, !77}
!71 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!72 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!73 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!74 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!75 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!76 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!77 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!78 = !{[24 x i32] [i32 22, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
!79 = !{void ()* @ps_main, !"ps_main", !80, !4, !97}
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
!95 = !{!96}
!96 = !{i32 0, !"SV_Target", i8 9, i8 16, !83, i8 0, i32 1, i8 4, i32 0, i8 0, !84}
!97 = !{i32 0, i64 16}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
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
!110 = !{!111, !111, i64 0}
!111 = !{!"int", !112, i64 0}
!112 = !{!"omnipotent char", !113, i64 0}
!113 = !{!"Simple C/C++ TBAA"}
!114 = !{!115, !117, !119, !121}
!115 = distinct !{!115, !116, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!116 = distinct !{!116, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!117 = distinct !{!117, !118, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!118 = distinct !{!118, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!119 = distinct !{!119, !120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!120 = distinct !{!120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!121 = distinct !{!121, !122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!122 = distinct !{!122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
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
!134 = !{!135, !135, i64 0}
!135 = !{!"float", !112, i64 0}
!136 = !{!137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!137 = distinct !{!137, !138, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!138 = distinct !{!138, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!139 = distinct !{!139, !140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!140 = distinct !{!140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!141 = distinct !{!141, !140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!142 = distinct !{!142, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!143 = distinct !{!143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!144 = distinct !{!144, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!145 = distinct !{!145, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!146 = distinct !{!146, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!147 = distinct !{!147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!148 = distinct !{!148, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!149 = distinct !{!149, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!150 = distinct !{!150, !151, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!151 = distinct !{!151, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"\01?sort@@YAXAIAM00@Z: %c"}
!154 = distinct !{!154, !"\01?sort@@YAXAIAM00@Z"}
!155 = !{!156, !157, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!156 = distinct !{!156, !154, !"\01?sort@@YAXAIAM00@Z: %a"}
!157 = distinct !{!157, !154, !"\01?sort@@YAXAIAM00@Z: %b"}
!158 = !{!157}
!159 = !{!156, !153, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!160 = !{!156}
!161 = !{!157, !153, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!162 = !{!163}
!163 = distinct !{!163, !164, !"\01?sort@@YAXAIAM00@Z: %c"}
!164 = distinct !{!164, !"\01?sort@@YAXAIAM00@Z"}
!165 = !{!166, !167, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!166 = distinct !{!166, !164, !"\01?sort@@YAXAIAM00@Z: %a"}
!167 = distinct !{!167, !164, !"\01?sort@@YAXAIAM00@Z: %b"}
!168 = !{!167}
!169 = !{!166, !163, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!170 = !{!166}
!171 = !{!167, !163, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 2}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}

