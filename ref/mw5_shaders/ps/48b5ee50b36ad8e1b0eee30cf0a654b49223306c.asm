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
; shader hash: b8e7a1b7bbd7c34dfeb7b1ccbd179adf
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
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %283 = add i32 %65, 108
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 2
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %297, label %288

; <label>:288                                     ; preds = %228
  %289 = add i32 %65, 184
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
  br i1 %306, label %1100, label %307

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
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
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
  %518 = add i32 %65, 168
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
  %570 = add i32 %65, 164
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
  %594 = add i32 %65, 152
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
  %617 = add i32 %65, 172
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
  %798 = add i32 %65, 116
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
  br i1 %810, label %951, label %811

; <label>:811                                     ; preds = %789
  %812 = add i32 %65, 44
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = add i32 %65, 156
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = add i32 %817, 0
  %819 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %818, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %820 = add i32 %65, 120
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = extractvalue %dx.types.ResRet.i32 %821, 1
  %824 = extractvalue %dx.types.ResRet.i32 %821, 2
  %825 = extractvalue %dx.types.ResRet.i32 %821, 3
  %826 = bitcast i32 %823 to float
  %827 = bitcast i32 %824 to float
  %828 = bitcast i32 %825 to float
  %829 = add i32 %65, 136
  %830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.i32 %830, 0
  %832 = extractvalue %dx.types.ResRet.i32 %830, 1
  %833 = extractvalue %dx.types.ResRet.i32 %830, 2
  %834 = extractvalue %dx.types.ResRet.i32 %830, 3
  %835 = bitcast i32 %832 to float
  %836 = bitcast i32 %833 to float
  %837 = bitcast i32 %834 to float
  %838 = fmul fast float %826, %398
  %839 = fmul fast float %826, %399
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 3
  %842 = fmul fast float %841, %827
  %843 = fmul fast float %841, %828
  %844 = fadd fast float %842, %838
  %845 = fadd fast float %843, %839
  %846 = fmul fast float %835, %398
  %847 = fmul fast float %835, %399
  %848 = fmul fast float %841, %836
  %849 = fmul fast float %841, %837
  %850 = fadd fast float %848, %846
  %851 = fadd fast float %849, %847
  %852 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %819, i32 0)  ; GetDimensions(handle,mipLevel)
  %853 = extractvalue %dx.types.Dimensions %852, 3
  %854 = sitofp i32 %853 to float
  %855 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %819, %dx.types.Handle %87, float %844, float %845, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %856 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %819, %dx.types.Handle %87, float %850, float %851, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %857 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %819, %dx.types.Handle %87, float %844, float %845, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %858 = extractvalue %dx.types.ResRet.f32 %857, 0
  %859 = extractvalue %dx.types.ResRet.f32 %857, 1
  %860 = extractvalue %dx.types.ResRet.f32 %857, 2
  %861 = extractvalue %dx.types.ResRet.f32 %857, 3
  %862 = and i32 %814, 255
  %863 = uitofp i32 %862 to float
  %864 = lshr i32 %814, 8
  %865 = and i32 %864, 255
  %866 = uitofp i32 %865 to float
  %867 = lshr i32 %814, 16
  %868 = and i32 %867, 255
  %869 = uitofp i32 %868 to float
  %870 = fmul fast float %869, 0x3F70101000000000
  %871 = fmul fast float %858, %863
  %872 = fadd fast float %871, %866
  %873 = fadd fast float %859, -5.000000e-01
  %874 = fadd fast float %861, -5.000000e-01
  %875 = fmul fast float %873, %870
  %876 = fmul fast float %874, %870
  %877 = fadd fast float %875, 5.000000e-01
  %878 = fadd fast float %876, 5.000000e-01
  %879 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %819, %dx.types.Handle %87, float %850, float %851, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %880 = extractvalue %dx.types.ResRet.f32 %879, 0
  %881 = extractvalue %dx.types.ResRet.f32 %879, 1
  %882 = extractvalue %dx.types.ResRet.f32 %879, 2
  %883 = extractvalue %dx.types.ResRet.f32 %879, 3
  %884 = fmul fast float %880, %863
  %885 = fadd fast float %884, %866
  %886 = fadd fast float %881, -5.000000e-01
  %887 = fadd fast float %883, -5.000000e-01
  %888 = fmul fast float %886, %870
  %889 = fmul fast float %887, %870
  %890 = fadd fast float %888, 5.000000e-01
  %891 = fadd fast float %889, 5.000000e-01
  %892 = fmul fast float %877, 2.000000e+00
  %893 = fadd fast float %892, -1.000000e+00
  %894 = fmul fast float %878, 2.000000e+00
  %895 = fadd fast float %894, -1.000000e+00
  %896 = fadd fast float %893, %895
  %897 = fmul fast float %896, 5.000000e-01
  %898 = fsub fast float %893, %895
  %899 = fmul fast float %898, 5.000000e-01
  %900 = call float @dx.op.unary.f32(i32 6, float %897)  ; FAbs(value)
  %901 = fsub fast float 1.000000e+00, %900
  %902 = call float @dx.op.unary.f32(i32 6, float %899)  ; FAbs(value)
  %903 = fsub fast float %901, %902
  %904 = call float @dx.op.dot3.f32(i32 55, float %897, float %899, float %903, float %897, float %899, float %903)  ; Dot3(ax,ay,az,bx,by,bz)
  %905 = call float @dx.op.unary.f32(i32 25, float %904)  ; Rsqrt(value)
  %906 = fmul fast float %890, 2.000000e+00
  %907 = fadd fast float %906, -1.000000e+00
  %908 = fmul fast float %891, 2.000000e+00
  %909 = fadd fast float %908, -1.000000e+00
  %910 = fadd fast float %907, %909
  %911 = fmul fast float %910, 5.000000e-01
  %912 = fsub fast float %907, %909
  %913 = fmul fast float %912, 5.000000e-01
  %914 = call float @dx.op.unary.f32(i32 6, float %911)  ; FAbs(value)
  %915 = fsub fast float 1.000000e+00, %914
  %916 = call float @dx.op.unary.f32(i32 6, float %913)  ; FAbs(value)
  %917 = fsub fast float %915, %916
  %918 = call float @dx.op.dot3.f32(i32 55, float %911, float %913, float %917, float %911, float %913, float %917)  ; Dot3(ax,ay,az,bx,by,bz)
  %919 = call float @dx.op.unary.f32(i32 25, float %918)  ; Rsqrt(value)
  %920 = fadd fast float %854, -1.000000e+00
  %921 = fsub fast float %920, %855
  %922 = fmul fast float %921, 5.000000e-01
  %923 = call float @dx.op.unary.f32(i32 7, float %922)  ; Saturate(value)
  %924 = fsub fast float %920, %856
  %925 = fmul fast float %924, 5.000000e-01
  %926 = call float @dx.op.unary.f32(i32 7, float %925)  ; Saturate(value)
  %927 = bitcast i32 %822 to float
  %928 = bitcast i32 %831 to float
  %929 = fmul fast float %897, %927
  %930 = fmul fast float %929, %905
  %931 = fmul fast float %930, %923
  %932 = fmul fast float %899, %927
  %933 = fmul fast float %932, %905
  %934 = fmul fast float %933, %923
  %935 = fmul fast float %919, %928
  %936 = fmul fast float %935, %911
  %937 = fmul fast float %936, %926
  %938 = fmul fast float %935, %913
  %939 = fmul fast float %938, %926
  %940 = fadd fast float %937, %931
  %941 = fadd fast float %939, %934
  %942 = fmul fast float %860, %927
  %943 = fmul fast float %882, %928
  %944 = fadd fast float %943, %942
  %945 = fmul fast float %872, %927
  %946 = fmul fast float %885, %928
  %947 = fadd fast float %946, %945
  %948 = fmul fast float %947, 0x3F70101000000000
  %949 = call float @dx.op.dot2.f32(i32 54, float %940, float %941, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %950 = call float @dx.op.dot2.f32(i32 54, float %940, float %941, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %951

; <label>:951                                     ; preds = %811, %789
  %952 = phi float [ %948, %811 ], [ 0x3FD6666660000000, %789 ]
  %953 = phi float [ %949, %811 ], [ 0.000000e+00, %789 ]
  %954 = phi float [ %950, %811 ], [ 0.000000e+00, %789 ]
  %955 = phi float [ %944, %811 ], [ 1.000000e+00, %789 ]
  %956 = add i32 %65, 64
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = lshr i32 %958, 22
  %960 = shl nuw nsw i32 %959, 5
  %961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %960)  ; LegacyF16ToF32(value)
  %962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.i32 %962, 0
  %964 = and i32 %963, 64
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %999, label %966

; <label>:966                                     ; preds = %951
  %967 = add i32 %65, 160
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = add i32 %969, 0
  %971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %970, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %973 = extractvalue %dx.types.ResRet.i32 %972, 0
  %974 = and i32 %973, 131072
  %975 = icmp eq i32 %974, 0
  %976 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %971, %dx.types.Handle %87, float %398, float %399, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %977 = extractvalue %dx.types.ResRet.f32 %976, 0
  %978 = extractvalue %dx.types.ResRet.f32 %976, 1
  %979 = extractvalue %dx.types.ResRet.f32 %976, 2
  %980 = fmul fast float %977, %246
  %981 = fmul fast float %978, %249
  %982 = fmul fast float %979, %252
  br i1 %975, label %989, label %983

; <label>:983                                     ; preds = %966
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 0
  %986 = fmul fast float %985, %980
  %987 = fmul fast float %985, %981
  %988 = fmul fast float %985, %982
  br label %989

; <label>:989                                     ; preds = %983, %966
  %990 = phi float [ %986, %983 ], [ %980, %966 ]
  %991 = phi float [ %987, %983 ], [ %981, %966 ]
  %992 = phi float [ %988, %983 ], [ %982, %966 ]
  %993 = fmul fast float %990, %961
  %994 = select i1 %229, float %993, float %990
  %995 = call float @dx.op.dot3.f32(i32 55, float %994, float %991, float %992, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %996 = select i1 %229, float 0.000000e+00, float %990
  %997 = select i1 %229, float %995, float %991
  %998 = select i1 %229, float 0.000000e+00, float %992
  br label %999

; <label>:999                                     ; preds = %989, %951
  %1000 = phi float [ %996, %989 ], [ 0.000000e+00, %951 ]
  %1001 = phi float [ %997, %989 ], [ 0.000000e+00, %951 ]
  %1002 = phi float [ %998, %989 ], [ 0.000000e+00, %951 ]
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = and i32 %1004, 1024
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1037, label %1007

; <label>:1007                                    ; preds = %999
  %1008 = add i32 %65, 56
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1008, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = and i32 %1010, 255
  %1012 = uitofp i32 %1011 to float
  %1013 = fmul fast float %1012, 0x3F70101020000000
  %1014 = lshr i32 %1010, 8
  %1015 = and i32 %1014, 255
  %1016 = uitofp i32 %1015 to float
  %1017 = fmul fast float %1016, 0x3F70101020000000
  %1018 = lshr i32 %1010, 16
  %1019 = and i32 %1018, 255
  %1020 = uitofp i32 %1019 to float
  %1021 = fmul fast float %1020, 0x3F70101020000000
  %1022 = fmul fast float %1013, %1013
  %1023 = fmul fast float %1017, %1017
  %1024 = fmul fast float %1021, %1021
  %1025 = add i32 %65, 176
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = add i32 %1027, 0
  %1029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1028, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1030 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1029, %dx.types.Handle %88, float %398, float %399, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 0
  %1032 = extractvalue %dx.types.ResRet.f32 %1030, 1
  %1033 = extractvalue %dx.types.ResRet.f32 %1030, 2
  %1034 = fmul fast float %1022, %1031
  %1035 = fmul fast float %1023, %1032
  %1036 = fmul fast float %1024, %1033
  br label %1037

; <label>:1037                                    ; preds = %1007, %999
  %1038 = phi float [ %1034, %1007 ], [ 0.000000e+00, %999 ]
  %1039 = phi float [ %1035, %1007 ], [ 0.000000e+00, %999 ]
  %1040 = phi float [ %1036, %1007 ], [ 0.000000e+00, %999 ]
  %1041 = fcmp fast ogt float %1038, 0.000000e+00
  %1042 = fcmp fast ogt float %1039, 0.000000e+00
  %1043 = fcmp fast ogt float %1040, 0.000000e+00
  %1044 = call float @dx.op.unary.f32(i32 23, float %1038)  ; Log(value)
  %1045 = call float @dx.op.unary.f32(i32 23, float %1039)  ; Log(value)
  %1046 = call float @dx.op.unary.f32(i32 23, float %1040)  ; Log(value)
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = lshr i32 %1048, 7
  %1050 = and i32 %1049, 32752
  %1051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1050)  ; LegacyF16ToF32(value)
  %1052 = fmul fast float %1044, 0xBFE62E4300000000
  %1053 = fmul fast float %1052, %1051
  %1054 = fmul fast float %1045, 0xBFE62E4300000000
  %1055 = fmul fast float %1054, %1051
  %1056 = fmul fast float %1046, 0xBFE62E4300000000
  %1057 = fmul fast float %1056, %1051
  %1058 = select i1 %1041, float %1053, float 1.270000e+02
  %1059 = select i1 %1042, float %1055, float 1.270000e+02
  %1060 = select i1 %1043, float %1057, float 1.270000e+02
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = and i32 %1062, 10240
  %1064 = icmp eq i32 %1063, 0
  br i1 %1064, label %1085, label %1065

; <label>:1065                                    ; preds = %1037
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = and i32 %1067, 2048
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1085, label %1070

; <label>:1070                                    ; preds = %1065
  %1071 = add i32 %65, 180
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = add i32 %1073, 0
  %1075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1074, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1076 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1075, %dx.types.Handle %88, float %398, float %399, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 3
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = shl i32 %1079, 4
  %1081 = and i32 %1080, 32752
  %1082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1081)  ; LegacyF16ToF32(value)
  %1083 = fmul fast float %1082, %1077
  %1084 = call float @dx.op.binary.f32(i32 35, float %1083, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1085

; <label>:1085                                    ; preds = %1070, %1065, %1037
  %1086 = phi float [ %1084, %1070 ], [ 0x3F70101020000000, %1065 ], [ 0x3F70101020000000, %1037 ]
  %1087 = add i32 %65, 48
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = and i32 %1089, 255
  %1091 = uitofp i32 %1090 to float
  %1092 = lshr i32 %1089, 8
  %1093 = and i32 %1092, 255
  %1094 = uitofp i32 %1093 to float
  %1095 = call float @dx.op.dot3.f32(i32 55, float %804, float %805, float %806, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1096 = fmul fast float %1094, %1095
  %1097 = fadd fast float %1096, %1091
  %1098 = fmul fast float %1097, 0x3F70101020000000
  %1099 = call float @dx.op.unary.f32(i32 7, float %1098)  ; Saturate(value)
  br label %1100

; <label>:1100                                    ; preds = %1085, %297
  %1101 = phi float [ 0.000000e+00, %297 ], [ %953, %1085 ]
  %1102 = phi float [ 0.000000e+00, %297 ], [ %954, %1085 ]
  %1103 = phi float [ 0.000000e+00, %297 ], [ %804, %1085 ]
  %1104 = phi float [ 0.000000e+00, %297 ], [ %805, %1085 ]
  %1105 = phi float [ 0.000000e+00, %297 ], [ %806, %1085 ]
  %1106 = phi float [ 0.000000e+00, %297 ], [ %1000, %1085 ]
  %1107 = phi float [ 0.000000e+00, %297 ], [ %1001, %1085 ]
  %1108 = phi float [ 0.000000e+00, %297 ], [ %1002, %1085 ]
  %1109 = phi float [ 0.000000e+00, %297 ], [ %1058, %1085 ]
  %1110 = phi float [ 0.000000e+00, %297 ], [ %1059, %1085 ]
  %1111 = phi float [ 0.000000e+00, %297 ], [ %1060, %1085 ]
  %1112 = phi float [ 0.000000e+00, %297 ], [ %790, %1085 ]
  %1113 = phi float [ 0.000000e+00, %297 ], [ %586, %1085 ]
  %1114 = phi float [ 0.000000e+00, %297 ], [ %952, %1085 ]
  %1115 = phi float [ 0.000000e+00, %297 ], [ %955, %1085 ]
  %1116 = phi float [ 0.000000e+00, %297 ], [ %1086, %1085 ]
  %1117 = phi float [ 0.000000e+00, %297 ], [ %1099, %1085 ]
  %1118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1118, 0
  %1120 = call float @dx.op.dot2.f32(i32 54, float %1101, float %1102, float %1101, float %1102)  ; Dot2(ax,ay,bx,by)
  %1121 = fmul fast float %1120, 0x3FE3333340000000
  %1122 = fsub fast float 1.000000e+00, %1121
  %1123 = call float @dx.op.dot3.f32(i32 55, float %1101, float %1102, float %1122, float %1101, float %1102, float %1122)  ; Dot3(ax,ay,az,bx,by,bz)
  %1124 = call float @dx.op.unary.f32(i32 25, float %1123)  ; Rsqrt(value)
  %1125 = fmul fast float %1124, %1101
  %1126 = fmul fast float %1124, %1102
  %1127 = fmul fast float %1122, %1124
  %1128 = fmul fast float %1127, %70
  %1129 = fmul fast float %1127, %71
  %1130 = fmul fast float %1127, %72
  %1131 = fmul fast float %1125, %66
  %1132 = fmul fast float %1125, %67
  %1133 = fmul fast float %1125, %68
  %1134 = fadd fast float %1128, %1131
  %1135 = fadd fast float %1129, %1132
  %1136 = fadd fast float %1130, %1133
  %1137 = fmul fast float %1126, %102
  %1138 = fmul fast float %1126, %103
  %1139 = fmul fast float %1126, %104
  %1140 = fadd fast float %1134, %1137
  %1141 = fadd fast float %1135, %1138
  %1142 = fadd fast float %1136, %1139
  %1143 = call float @dx.op.dot3.f32(i32 55, float %1140, float %1141, float %1142, float %1140, float %1141, float %1142)  ; Dot3(ax,ay,az,bx,by,bz)
  %1144 = call float @dx.op.unary.f32(i32 25, float %1143)  ; Rsqrt(value)
  %1145 = fmul fast float %1140, %1144
  %1146 = fmul fast float %1141, %1144
  %1147 = fmul fast float %1142, %1144
  %1148 = call float @dx.op.unary.f32(i32 83, float %138)  ; DerivCoarseX(value)
  %1149 = call float @dx.op.unary.f32(i32 83, float %139)  ; DerivCoarseX(value)
  %1150 = call float @dx.op.unary.f32(i32 83, float %140)  ; DerivCoarseX(value)
  %1151 = call float @dx.op.unary.f32(i32 84, float %138)  ; DerivCoarseY(value)
  %1152 = call float @dx.op.unary.f32(i32 84, float %139)  ; DerivCoarseY(value)
  %1153 = call float @dx.op.unary.f32(i32 84, float %140)  ; DerivCoarseY(value)
  %1154 = fadd fast float %1148, %138
  %1155 = fadd fast float %1149, %139
  %1156 = fadd fast float %1150, %140
  %1157 = fadd fast float %1151, %138
  %1158 = fadd fast float %1152, %139
  %1159 = fadd fast float %1153, %140
  %1160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1161 = extractvalue %dx.types.CBufRet.f32 %1160, 0
  %1162 = extractvalue %dx.types.CBufRet.f32 %1160, 1
  %1163 = extractvalue %dx.types.CBufRet.f32 %1160, 2
  %1164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1165 = extractvalue %dx.types.CBufRet.f32 %1164, 2
  %1166 = extractvalue %dx.types.CBufRet.f32 %1164, 3
  %1167 = fmul fast float %1161, %91
  %1168 = fmul fast float %1167, %1165
  %1169 = fmul fast float %1162, %92
  %1170 = fmul fast float %1169, %1166
  %1171 = fptoui float %1168 to i32
  %1172 = fptoui float %1170 to i32
  %1173 = fadd fast float %1161, -1.000000e+00
  %1174 = fadd fast float %1162, -1.000000e+00
  %1175 = fptoui float %1173 to i32
  %1176 = fptoui float %1174 to i32
  %1177 = call i32 @dx.op.binary.i32(i32 40, i32 %1171, i32 %1175)  ; UMin(a,b)
  %1178 = call i32 @dx.op.binary.i32(i32 40, i32 %1172, i32 %1176)  ; UMin(a,b)
  %1179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1180 = extractvalue %dx.types.CBufRet.f32 %1179, 2
  %1181 = extractvalue %dx.types.CBufRet.f32 %1179, 3
  %1182 = fmul fast float %1180, %82
  %1183 = fsub fast float %1182, %1181
  %1184 = fadd fast float %1163, -1.000000e+00
  %1185 = call float @dx.op.binary.f32(i32 36, float %1183, float %1184)  ; FMin(a,b)
  %1186 = fptoui float %1185 to i32
  %1187 = fptoui float %1161 to i32
  %1188 = fptoui float %1162 to i32
  %1189 = mul i32 %1186, %1188
  %1190 = add i32 %1189, %1178
  %1191 = mul i32 %1190, %1187
  %1192 = add i32 %1191, %1177
  %1193 = shl i32 %1192, 2
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = and i32 %1195, 1023
  %1197 = lshr i32 %1195, 10
  %1198 = icmp eq i32 %1196, 0
  br i1 %1198, label %1652, label %1199

; <label>:1199                                    ; preds = %1100
  %1200 = and i32 %1195, 1023
  br label %1201

; <label>:1201                                    ; preds = %1330, %1199
  %1202 = phi float [ %1331, %1330 ], [ 0.000000e+00, %1199 ]
  %1203 = phi float [ %1332, %1330 ], [ %1119, %1199 ]
  %1204 = phi float [ %1333, %1330 ], [ %1117, %1199 ]
  %1205 = phi float [ %1334, %1330 ], [ %1109, %1199 ]
  %1206 = phi float [ %1335, %1330 ], [ %1110, %1199 ]
  %1207 = phi float [ %1336, %1330 ], [ %1111, %1199 ]
  %1208 = phi float [ %1337, %1330 ], [ 0.000000e+00, %1199 ]
  %1209 = phi float [ %1338, %1330 ], [ 0.000000e+00, %1199 ]
  %1210 = phi float [ %1339, %1330 ], [ %1106, %1199 ]
  %1211 = phi float [ %1340, %1330 ], [ %1107, %1199 ]
  %1212 = phi float [ %1341, %1330 ], [ %1108, %1199 ]
  %1213 = phi float [ %1342, %1330 ], [ %1145, %1199 ]
  %1214 = phi float [ %1343, %1330 ], [ %1146, %1199 ]
  %1215 = phi float [ %1344, %1330 ], [ %1147, %1199 ]
  %1216 = phi float [ %1345, %1330 ], [ %1115, %1199 ]
  %1217 = phi float [ %1346, %1330 ], [ %1114, %1199 ]
  %1218 = phi float [ %1347, %1330 ], [ 0.000000e+00, %1199 ]
  %1219 = phi float [ %1348, %1330 ], [ %1112, %1199 ]
  %1220 = phi float [ %1349, %1330 ], [ %1103, %1199 ]
  %1221 = phi float [ %1350, %1330 ], [ %1104, %1199 ]
  %1222 = phi float [ %1351, %1330 ], [ %1105, %1199 ]
  %1223 = phi i32 [ %1280, %1330 ], [ 0, %1199 ]
  %1224 = add nuw nsw i32 %1223, %1197
  %1225 = shl i32 %1224, 2
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = shl i32 %1227, 8
  %1229 = or i32 %1228, 48
  %1230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = extractvalue %dx.types.ResRet.f32 %1230, 1
  %1233 = extractvalue %dx.types.ResRet.f32 %1230, 2
  %1234 = extractvalue %dx.types.ResRet.f32 %1230, 3
  %1235 = or i32 %1228, 64
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = extractvalue %dx.types.ResRet.i32 %1236, 1
  %1239 = or i32 %1228, 80
  %1240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.f32 %1240, 2
  %1242 = extractvalue %dx.types.ResRet.f32 %1240, 3
  %1243 = or i32 %1228, 96
  %1244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  %1246 = extractvalue %dx.types.ResRet.f32 %1244, 1
  %1247 = extractvalue %dx.types.ResRet.f32 %1244, 2
  %1248 = extractvalue %dx.types.ResRet.f32 %1244, 3
  %1249 = or i32 %1228, 112
  %1250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 2
  %1252 = or i32 %1228, 128
  %1253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.f32 %1253, 0
  %1255 = extractvalue %dx.types.ResRet.f32 %1253, 1
  %1256 = extractvalue %dx.types.ResRet.f32 %1253, 2
  %1257 = extractvalue %dx.types.ResRet.f32 %1253, 3
  %1258 = or i32 %1228, 144
  %1259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.f32 %1259, 0
  %1261 = extractvalue %dx.types.ResRet.f32 %1259, 1
  %1262 = extractvalue %dx.types.ResRet.f32 %1259, 2
  %1263 = extractvalue %dx.types.ResRet.f32 %1259, 3
  %1264 = or i32 %1228, 160
  %1265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.f32 %1265, 0
  %1267 = extractvalue %dx.types.ResRet.f32 %1265, 1
  %1268 = extractvalue %dx.types.ResRet.f32 %1265, 2
  %1269 = extractvalue %dx.types.ResRet.f32 %1265, 3
  %1270 = or i32 %1228, 192
  %1271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = or i32 %1228, 208
  %1274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  %1276 = or i32 %1228, 248
  %1277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.f32 %1277, 0
  %1279 = extractvalue %dx.types.ResRet.f32 %1277, 1
  %1280 = add nuw nsw i32 %1223, 1
  %1281 = bitcast float %1234 to i32
  %1282 = and i32 %1281, 2560
  %1283 = icmp eq i32 %1282, 0
  %1284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = extractvalue %dx.types.ResRet.f32 %1284, 1
  %1287 = extractvalue %dx.types.ResRet.f32 %1284, 2
  %1288 = extractvalue %dx.types.ResRet.f32 %1284, 3
  %1289 = call float @dx.op.dot4.f32(i32 56, float %1285, float %1286, float %1287, float %1288, float %138, float %139, float %140, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1290 = or i32 %1228, 16
  %1291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.f32 %1291, 0
  %1293 = extractvalue %dx.types.ResRet.f32 %1291, 1
  %1294 = extractvalue %dx.types.ResRet.f32 %1291, 2
  %1295 = extractvalue %dx.types.ResRet.f32 %1291, 3
  %1296 = call float @dx.op.dot4.f32(i32 56, float %1292, float %1293, float %1294, float %1295, float %138, float %139, float %140, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1297 = or i32 %1228, 32
  %1298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.f32 %1298, 0
  %1300 = extractvalue %dx.types.ResRet.f32 %1298, 1
  %1301 = extractvalue %dx.types.ResRet.f32 %1298, 2
  %1302 = extractvalue %dx.types.ResRet.f32 %1298, 3
  %1303 = call float @dx.op.dot4.f32(i32 56, float %1299, float %1300, float %1301, float %1302, float %138, float %139, float %140, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1304 = call float @dx.op.unary.f32(i32 27, float %1289)  ; Round_ni(value)
  %1305 = call float @dx.op.unary.f32(i32 6, float %1304)  ; FAbs(value)
  %1306 = call float @dx.op.unary.f32(i32 27, float %1296)  ; Round_ni(value)
  %1307 = call float @dx.op.unary.f32(i32 6, float %1306)  ; FAbs(value)
  %1308 = call float @dx.op.unary.f32(i32 6, float %1303)  ; FAbs(value)
  %1309 = call float @dx.op.unary.f32(i32 27, float %1308)  ; Round_ni(value)
  %1310 = fadd fast float %1307, %1305
  %1311 = fadd fast float %1310, %1309
  %1312 = fcmp fast oeq float %1311, 0.000000e+00
  %1313 = call float @dx.op.dot4.f32(i32 56, float %1285, float %1286, float %1287, float %1288, float %1154, float %1155, float %1156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1314 = call float @dx.op.dot4.f32(i32 56, float %1292, float %1293, float %1294, float %1295, float %1154, float %1155, float %1156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1315 = call float @dx.op.dot4.f32(i32 56, float %1285, float %1286, float %1287, float %1288, float %1157, float %1158, float %1159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1316 = call float @dx.op.dot4.f32(i32 56, float %1292, float %1293, float %1294, float %1295, float %1157, float %1158, float %1159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1317 = fsub fast float %1313, %1289
  %1318 = fsub fast float %1315, %1289
  %1319 = fsub fast float %1314, %1296
  %1320 = fsub fast float %1316, %1296
  %1321 = call float @dx.op.dot3.f32(i32 55, float %1231, float %1232, float %1233, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1323 = extractvalue %dx.types.CBufRet.f32 %1322, 2
  %1324 = fadd fast float %1323, %1321
  %1325 = call float @dx.op.unary.f32(i32 7, float %1324)  ; Saturate(value)
  %1326 = extractvalue %dx.types.CBufRet.f32 %1322, 0
  %1327 = fcmp fast ogt float %1325, %1326
  %1328 = and i1 %1312, %1327
  %1329 = and i1 %1283, %1328
  br i1 %1329, label %1353, label %1330

; <label>:1330                                    ; preds = %1638, %1434, %1353, %1201
  %1331 = phi float [ %1202, %1353 ], [ %1437, %1434 ], [ %1437, %1638 ], [ %1202, %1201 ]
  %1332 = phi float [ %1203, %1353 ], [ %1203, %1434 ], [ %1614, %1638 ], [ %1203, %1201 ]
  %1333 = phi float [ %1204, %1353 ], [ %1204, %1434 ], [ %1612, %1638 ], [ %1204, %1201 ]
  %1334 = phi float [ %1205, %1353 ], [ %1205, %1434 ], [ %1590, %1638 ], [ %1205, %1201 ]
  %1335 = phi float [ %1206, %1353 ], [ %1206, %1434 ], [ %1591, %1638 ], [ %1206, %1201 ]
  %1336 = phi float [ %1207, %1353 ], [ %1207, %1434 ], [ %1592, %1638 ], [ %1207, %1201 ]
  %1337 = phi float [ %1208, %1353 ], [ %1208, %1434 ], [ %1561, %1638 ], [ %1208, %1201 ]
  %1338 = phi float [ %1209, %1353 ], [ %1209, %1434 ], [ %1559, %1638 ], [ %1209, %1201 ]
  %1339 = phi float [ %1210, %1353 ], [ %1210, %1434 ], [ %1648, %1638 ], [ %1210, %1201 ]
  %1340 = phi float [ %1211, %1353 ], [ %1211, %1434 ], [ %1649, %1638 ], [ %1211, %1201 ]
  %1341 = phi float [ %1212, %1353 ], [ %1212, %1434 ], [ %1650, %1638 ], [ %1212, %1201 ]
  %1342 = phi float [ %1213, %1353 ], [ %1213, %1434 ], [ %1540, %1638 ], [ %1213, %1201 ]
  %1343 = phi float [ %1214, %1353 ], [ %1214, %1434 ], [ %1541, %1638 ], [ %1214, %1201 ]
  %1344 = phi float [ %1215, %1353 ], [ %1215, %1434 ], [ %1542, %1638 ], [ %1215, %1201 ]
  %1345 = phi float [ %1216, %1353 ], [ %1216, %1434 ], [ %1570, %1638 ], [ %1216, %1201 ]
  %1346 = phi float [ %1217, %1353 ], [ %1217, %1434 ], [ %1567, %1638 ], [ %1217, %1201 ]
  %1347 = phi float [ %1218, %1353 ], [ %1218, %1434 ], [ %1564, %1638 ], [ %1218, %1201 ]
  %1348 = phi float [ %1219, %1353 ], [ %1219, %1434 ], [ %1557, %1638 ], [ %1219, %1201 ]
  %1349 = phi float [ %1220, %1353 ], [ %1220, %1434 ], [ %1552, %1638 ], [ %1220, %1201 ]
  %1350 = phi float [ %1221, %1353 ], [ %1221, %1434 ], [ %1553, %1638 ], [ %1221, %1201 ]
  %1351 = phi float [ %1222, %1353 ], [ %1222, %1434 ], [ %1554, %1638 ], [ %1222, %1201 ]
  %1352 = icmp eq i32 %1280, %1200
  br i1 %1352, label %1651, label %1201

; <label>:1353                                    ; preds = %1201
  %1354 = extractvalue %dx.types.ResRet.f32 %1250, 3
  %1355 = extractvalue %dx.types.ResRet.f32 %1250, 1
  %1356 = extractvalue %dx.types.ResRet.f32 %1250, 0
  %1357 = extractvalue %dx.types.ResRet.f32 %1240, 1
  %1358 = extractvalue %dx.types.ResRet.f32 %1240, 0
  %1359 = extractvalue %dx.types.ResRet.i32 %1236, 3
  %1360 = extractvalue %dx.types.ResRet.i32 %1236, 2
  %1361 = add i32 %1359, 0
  %1362 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1361, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1364 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1362, %dx.types.Handle %1363, float %1289, float %1296, float undef, float undef, i32 0, i32 0, i32 undef, float %1317, float %1319, float undef, float %1318, float %1320, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1365 = extractvalue %dx.types.ResRet.f32 %1364, 0
  %1366 = fmul fast float %1365, %1358
  %1367 = fadd fast float %1366, %1357
  %1368 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  %1369 = fmul fast float %1289, %1245
  %1370 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1296, float %1369)  ; FMad(a,b,c)
  %1371 = fadd fast float %1370, %1356
  %1372 = fmul fast float %1289, %1247
  %1373 = call float @dx.op.tertiary.f32(i32 46, float %1248, float %1296, float %1372)  ; FMad(a,b,c)
  %1374 = fadd fast float %1373, %1355
  %1375 = fmul fast float %1317, %1245
  %1376 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1319, float %1375)  ; FMad(a,b,c)
  %1377 = fmul fast float %1317, %1247
  %1378 = call float @dx.op.tertiary.f32(i32 46, float %1248, float %1319, float %1377)  ; FMad(a,b,c)
  %1379 = fmul fast float %1318, %1245
  %1380 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1320, float %1379)  ; FMad(a,b,c)
  %1381 = fmul fast float %1318, %1247
  %1382 = call float @dx.op.tertiary.f32(i32 46, float %1248, float %1320, float %1381)  ; FMad(a,b,c)
  %1383 = add i32 %1360, 0
  %1384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1383, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1385 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1384, %dx.types.Handle %1363, float %1371, float %1374, float undef, float undef, i32 0, i32 0, i32 undef, float %1376, float %1378, float undef, float %1380, float %1382, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1386 = extractvalue %dx.types.ResRet.f32 %1385, 0
  %1387 = and i32 %1281, 1024
  %1388 = icmp ne i32 %1387, 0
  %1389 = fcmp fast ogt float %1386, 0x3FE0101020000000
  %1390 = uitofp i1 %1389 to float
  %1391 = select i1 %1388, float %1390, float %1386
  %1392 = and i32 %1281, 8192
  %1393 = icmp ne i32 %1392, 0
  %1394 = select i1 %1393, float %1354, float 1.000000e+00
  %1395 = fmul fast float %1289, 2.000000e+00
  %1396 = fadd fast float %1395, -1.000000e+00
  %1397 = call float @dx.op.unary.f32(i32 6, float %1396)  ; FAbs(value)
  %1398 = fmul fast float %1397, %1278
  %1399 = fsub fast float %1398, %1278
  %1400 = call float @dx.op.unary.f32(i32 7, float %1399)  ; Saturate(value)
  %1401 = fmul fast float %1296, 2.000000e+00
  %1402 = fadd fast float %1401, -1.000000e+00
  %1403 = call float @dx.op.unary.f32(i32 6, float %1402)  ; FAbs(value)
  %1404 = fmul fast float %1403, %1279
  %1405 = fsub fast float %1404, %1279
  %1406 = call float @dx.op.unary.f32(i32 7, float %1405)  ; Saturate(value)
  %1407 = fmul fast float %1308, %1241
  %1408 = fsub fast float %1407, %1241
  %1409 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1410 = fmul fast float %1368, %1394
  %1411 = fmul fast float %1410, %1365
  %1412 = fmul fast float %1411, %1400
  %1413 = fmul fast float %1412, %1391
  %1414 = fmul fast float %1413, %1406
  %1415 = fmul fast float %1414, %1409
  %1416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.f32 %1416, 1
  %1418 = extractvalue %dx.types.CBufRet.f32 %1416, 0
  %1419 = fsub fast float %1325, %1418
  %1420 = fmul fast float %1419, %1417
  %1421 = call float @dx.op.unary.f32(i32 7, float %1420)  ; Saturate(value)
  %1422 = fmul fast float %1415, %1242
  %1423 = fadd fast float %1415, %1242
  %1424 = fmul fast float %1423, %1251
  %1425 = fsub fast float %1424, %1251
  %1426 = call float @dx.op.unary.f32(i32 7, float %1425)  ; Saturate(value)
  %1427 = and i32 %1281, 128
  %1428 = icmp ne i32 %1427, 0
  %1429 = select i1 %1428, float %1426, float %1422
  %1430 = fmul fast float %1429, %1421
  %1431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1432 = extractvalue %dx.types.CBufRet.f32 %1431, 0
  %1433 = fcmp fast ugt float %1430, %1432
  br i1 %1433, label %1434, label %1330

; <label>:1434                                    ; preds = %1353
  %1435 = select i1 %1393, float %1430, float 0.000000e+00
  %1436 = fadd fast float %1435, %1202
  %1437 = call float @dx.op.unary.f32(i32 7, float %1436)  ; Saturate(value)
  br i1 %1393, label %1330, label %1438

; <label>:1438                                    ; preds = %1434
  %1439 = and i32 %1281, 4
  %1440 = and i32 %1281, 8
  %1441 = add i32 %1237, 0
  %1442 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1441, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1443 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1444 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1442, %dx.types.Handle %1443, float %1371, float %1374, float undef, float undef, i32 0, i32 0, i32 undef, float %1376, float %1378, float undef, float %1380, float %1382, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  %1446 = extractvalue %dx.types.ResRet.f32 %1444, 1
  %1447 = extractvalue %dx.types.ResRet.f32 %1444, 2
  %1448 = extractvalue %dx.types.ResRet.f32 %1444, 3
  %1449 = bitcast float %1263 to i32
  %1450 = and i32 %1449, 255
  %1451 = uitofp i32 %1450 to float
  %1452 = lshr i32 %1449, 8
  %1453 = and i32 %1452, 255
  %1454 = uitofp i32 %1453 to float
  %1455 = fmul fast float %1448, %1451
  %1456 = fadd fast float %1455, %1454
  %1457 = fmul fast float %1456, 0x3F70101000000000
  %1458 = add i32 %1238, 0
  %1459 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1458, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1460 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1459, %dx.types.Handle %1443, float %1371, float %1374, float undef, float undef, i32 0, i32 0, i32 undef, float %1376, float %1378, float undef, float %1380, float %1382, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1461 = extractvalue %dx.types.ResRet.f32 %1460, 0
  %1462 = extractvalue %dx.types.ResRet.f32 %1460, 1
  %1463 = extractvalue %dx.types.ResRet.f32 %1460, 2
  %1464 = extractvalue %dx.types.ResRet.f32 %1460, 3
  %1465 = bitcast float %1257 to i32
  %1466 = and i32 %1465, 255
  %1467 = uitofp i32 %1466 to float
  %1468 = lshr i32 %1465, 8
  %1469 = and i32 %1468, 255
  %1470 = uitofp i32 %1469 to float
  %1471 = lshr i32 %1465, 16
  %1472 = and i32 %1471, 255
  %1473 = uitofp i32 %1472 to float
  %1474 = fmul fast float %1473, 0x3F70101000000000
  %1475 = fmul fast float %1461, %1467
  %1476 = fadd fast float %1475, %1470
  %1477 = fmul fast float %1476, 0x3F70101000000000
  %1478 = fadd fast float %1462, -5.000000e-01
  %1479 = fadd fast float %1464, -5.000000e-01
  %1480 = fmul fast float %1478, %1474
  %1481 = fmul fast float %1479, %1474
  %1482 = fadd fast float %1480, 5.000000e-01
  %1483 = fadd fast float %1481, 5.000000e-01
  %1484 = fmul fast float %1445, %1266
  %1485 = fmul fast float %1446, %1267
  %1486 = fmul fast float %1447, %1268
  %1487 = fmul fast float %1482, 2.000000e+00
  %1488 = fadd fast float %1487, -1.000000e+00
  %1489 = fmul fast float %1483, 2.000000e+00
  %1490 = fadd fast float %1489, -1.000000e+00
  %1491 = fadd fast float %1488, %1490
  %1492 = fmul fast float %1491, 5.000000e-01
  %1493 = fsub fast float %1488, %1490
  %1494 = fmul fast float %1493, 5.000000e-01
  %1495 = call float @dx.op.unary.f32(i32 6, float %1492)  ; FAbs(value)
  %1496 = fsub fast float 1.000000e+00, %1495
  %1497 = call float @dx.op.unary.f32(i32 6, float %1494)  ; FAbs(value)
  %1498 = fsub fast float %1496, %1497
  %1499 = call float @dx.op.dot3.f32(i32 55, float %1492, float %1494, float %1498, float %1492, float %1494, float %1498)  ; Dot3(ax,ay,az,bx,by,bz)
  %1500 = call float @dx.op.unary.f32(i32 25, float %1499)  ; Rsqrt(value)
  %1501 = fmul fast float %1492, %1500
  %1502 = fmul fast float %1494, %1500
  %1503 = fmul fast float %1500, %1498
  %1504 = fmul fast float %1503, %1231
  %1505 = fmul fast float %1503, %1232
  %1506 = fmul fast float %1503, %1233
  %1507 = fmul fast float %1501, %1254
  %1508 = fmul fast float %1501, %1255
  %1509 = fmul fast float %1501, %1256
  %1510 = fadd fast float %1507, %1504
  %1511 = fadd fast float %1508, %1505
  %1512 = fadd fast float %1509, %1506
  %1513 = fmul fast float %1502, %1260
  %1514 = fmul fast float %1502, %1261
  %1515 = fmul fast float %1502, %1262
  %1516 = fadd fast float %1510, %1513
  %1517 = fadd fast float %1511, %1514
  %1518 = fadd fast float %1512, %1515
  %1519 = call float @dx.op.dot3.f32(i32 55, float %1516, float %1517, float %1518, float %1516, float %1517, float %1518)  ; Dot3(ax,ay,az,bx,by,bz)
  %1520 = call float @dx.op.unary.f32(i32 25, float %1519)  ; Rsqrt(value)
  %1521 = fmul fast float %1516, %1520
  %1522 = fmul fast float %1517, %1520
  %1523 = fmul fast float %1518, %1520
  %1524 = icmp ne i32 %1440, 0
  %1525 = select i1 %1524, float 1.000000e+00, float 0.000000e+00
  %1526 = fmul fast float %1430, %1525
  %1527 = and i32 %1281, 1
  %1528 = icmp eq i32 %1527, 0
  br i1 %1528, label %1529, label %1533

; <label>:1529                                    ; preds = %1438
  %1530 = fsub fast float %1521, %1213
  %1531 = fsub fast float %1522, %1214
  %1532 = fsub fast float %1523, %1215
  br label %1533

; <label>:1533                                    ; preds = %1529, %1438
  %1534 = phi float [ %1530, %1529 ], [ %1521, %1438 ]
  %1535 = phi float [ %1531, %1529 ], [ %1522, %1438 ]
  %1536 = phi float [ %1532, %1529 ], [ %1523, %1438 ]
  %1537 = fmul float %1536, %1526
  %1538 = fmul float %1535, %1526
  %1539 = fmul float %1534, %1526
  %1540 = fadd fast float %1539, %1213
  %1541 = fadd fast float %1538, %1214
  %1542 = fadd fast float %1537, %1215
  %1543 = icmp ne i32 %1439, 0
  %1544 = select i1 %1543, float 1.000000e+00, float 0.000000e+00
  %1545 = fmul fast float %1430, %1544
  %1546 = fsub fast float %1484, %1220
  %1547 = fsub fast float %1485, %1221
  %1548 = fsub fast float %1486, %1222
  %1549 = fmul fast float %1546, %1545
  %1550 = fmul fast float %1547, %1545
  %1551 = fmul fast float %1548, %1545
  %1552 = fadd fast float %1549, %1220
  %1553 = fadd fast float %1550, %1221
  %1554 = fadd fast float %1551, %1222
  %1555 = fsub fast float %1457, %1219
  %1556 = fmul fast float %1555, %1545
  %1557 = fadd fast float %1556, %1219
  %1558 = fmul fast float %1545, %1209
  %1559 = fsub fast float %1209, %1558
  %1560 = fmul fast float %1545, %1208
  %1561 = fsub fast float %1208, %1560
  %1562 = bitcast float %1275 to i32
  %1563 = fadd fast float %1430, %1218
  %1564 = call float @dx.op.unary.f32(i32 7, float %1563)  ; Saturate(value)
  %1565 = fsub fast float %1477, %1217
  %1566 = fmul fast float %1565, %1526
  %1567 = fadd fast float %1566, %1217
  %1568 = fsub fast float %1463, %1216
  %1569 = fmul fast float %1568, %1526
  %1570 = fadd fast float %1569, %1216
  br i1 %1528, label %1579, label %1571

; <label>:1571                                    ; preds = %1533
  %1572 = and i32 %1281, 32768
  %1573 = icmp eq i32 %1572, 0
  br i1 %1573, label %1589, label %1574

; <label>:1574                                    ; preds = %1571
  %1575 = fmul fast float %1526, 1.270000e+02
  %1576 = fadd fast float %1575, %1205
  %1577 = fadd fast float %1575, %1206
  %1578 = fadd fast float %1575, %1207
  br label %1589

; <label>:1579                                    ; preds = %1533
  %1580 = fsub fast float 1.270000e+02, %1205
  %1581 = fsub fast float 1.270000e+02, %1206
  %1582 = fsub fast float 1.270000e+02, %1207
  %1583 = fmul fast float %1526, %1580
  %1584 = fmul fast float %1526, %1581
  %1585 = fmul fast float %1526, %1582
  %1586 = fadd fast float %1583, %1205
  %1587 = fadd fast float %1584, %1206
  %1588 = fadd fast float %1585, %1207
  br label %1589

; <label>:1589                                    ; preds = %1579, %1574, %1571
  %1590 = phi float [ %1576, %1574 ], [ %1205, %1571 ], [ %1586, %1579 ]
  %1591 = phi float [ %1577, %1574 ], [ %1206, %1571 ], [ %1587, %1579 ]
  %1592 = phi float [ %1578, %1574 ], [ %1207, %1571 ], [ %1588, %1579 ]
  %1593 = call float @dx.op.dot3.f32(i32 55, float %1484, float %1485, float %1486, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1595 = extractvalue %dx.types.CBufRet.f32 %1594, 0
  %1596 = extractvalue %dx.types.CBufRet.f32 %1594, 1
  %1597 = fmul fast float %1596, %1593
  %1598 = fadd fast float %1597, %1595
  %1599 = call float @dx.op.unary.f32(i32 7, float %1598)  ; Saturate(value)
  %1600 = bitcast float %1269 to i32
  %1601 = and i32 %1600, 65535
  %1602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1601)  ; LegacyF16ToF32(value)
  %1603 = lshr i32 %1600, 16
  %1604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1603)  ; LegacyF16ToF32(value)
  %1605 = fcmp fast oge float %1602, 0.000000e+00
  %1606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1607 = extractvalue %dx.types.CBufRet.f32 %1606, 0
  %1608 = select i1 %1605, float %1602, float %1607
  %1609 = fadd fast float %1608, %1604
  %1610 = fsub fast float %1599, %1204
  %1611 = fmul fast float %1610, %1430
  %1612 = fadd fast float %1611, %1204
  %1613 = fmul fast float %1609, %1430
  %1614 = call float @dx.op.binary.f32(i32 35, float %1203, float %1613)  ; FMax(a,b)
  %1615 = and i32 %1281, 16
  %1616 = icmp eq i32 %1615, 0
  br i1 %1616, label %1638, label %1617

; <label>:1617                                    ; preds = %1589
  %1618 = add i32 %1272, 0
  %1619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1618, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1620 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1619, %dx.types.Handle %1443, float %1371, float %1374, float undef, float undef, i32 0, i32 0, i32 undef, float %1376, float %1378, float undef, float %1380, float %1382, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1621 = extractvalue %dx.types.ResRet.f32 %1620, 0
  %1622 = extractvalue %dx.types.ResRet.f32 %1620, 1
  %1623 = extractvalue %dx.types.ResRet.f32 %1620, 2
  %1624 = and i32 %1562, 65535
  %1625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1624)  ; LegacyF16ToF32(value)
  %1626 = fmul fast float %1621, %1266
  %1627 = fmul fast float %1622, %1267
  %1628 = fmul fast float %1623, %1268
  %1629 = and i32 %1281, 16384
  %1630 = icmp ne i32 %1629, 0
  %1631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1632 = extractvalue %dx.types.CBufRet.f32 %1631, 0
  %1633 = select i1 %1630, float %1632, float 1.000000e+00
  %1634 = fmul fast float %1633, %1625
  %1635 = fmul fast float %1626, %1634
  %1636 = fmul fast float %1627, %1634
  %1637 = fmul fast float %1628, %1634
  br label %1638

; <label>:1638                                    ; preds = %1617, %1589
  %1639 = phi float [ %1635, %1617 ], [ 0.000000e+00, %1589 ]
  %1640 = phi float [ %1636, %1617 ], [ 0.000000e+00, %1589 ]
  %1641 = phi float [ %1637, %1617 ], [ 0.000000e+00, %1589 ]
  %1642 = fsub fast float %1639, %1210
  %1643 = fsub fast float %1640, %1211
  %1644 = fsub fast float %1641, %1212
  %1645 = fmul fast float %1642, %1430
  %1646 = fmul fast float %1643, %1430
  %1647 = fmul fast float %1644, %1430
  %1648 = fadd fast float %1645, %1210
  %1649 = fadd fast float %1646, %1211
  %1650 = fadd fast float %1647, %1212
  br label %1330

; <label>:1651                                    ; preds = %1330
  br label %1652

; <label>:1652                                    ; preds = %1651, %1100
  %1653 = phi float [ 0.000000e+00, %1100 ], [ %1331, %1651 ]
  %1654 = phi float [ %1119, %1100 ], [ %1332, %1651 ]
  %1655 = phi float [ %1117, %1100 ], [ %1333, %1651 ]
  %1656 = phi float [ %1109, %1100 ], [ %1334, %1651 ]
  %1657 = phi float [ %1110, %1100 ], [ %1335, %1651 ]
  %1658 = phi float [ %1111, %1100 ], [ %1336, %1651 ]
  %1659 = phi float [ 0.000000e+00, %1100 ], [ %1337, %1651 ]
  %1660 = phi float [ 0.000000e+00, %1100 ], [ %1338, %1651 ]
  %1661 = phi float [ %1106, %1100 ], [ %1339, %1651 ]
  %1662 = phi float [ %1107, %1100 ], [ %1340, %1651 ]
  %1663 = phi float [ %1108, %1100 ], [ %1341, %1651 ]
  %1664 = phi float [ %1145, %1100 ], [ %1342, %1651 ]
  %1665 = phi float [ %1146, %1100 ], [ %1343, %1651 ]
  %1666 = phi float [ %1147, %1100 ], [ %1344, %1651 ]
  %1667 = phi float [ %1115, %1100 ], [ %1345, %1651 ]
  %1668 = phi float [ %1114, %1100 ], [ %1346, %1651 ]
  %1669 = phi float [ 0.000000e+00, %1100 ], [ %1347, %1651 ]
  %1670 = phi float [ %1112, %1100 ], [ %1348, %1651 ]
  %1671 = phi float [ %1103, %1100 ], [ %1349, %1651 ]
  %1672 = phi float [ %1104, %1100 ], [ %1350, %1651 ]
  %1673 = phi float [ %1105, %1100 ], [ %1351, %1651 ]
  %1674 = call float @dx.op.dot3.f32(i32 55, float %1664, float %1665, float %1666, float %1664, float %1665, float %1666)  ; Dot3(ax,ay,az,bx,by,bz)
  %1675 = call float @dx.op.unary.f32(i32 25, float %1674)  ; Rsqrt(value)
  %1676 = fmul fast float %1675, %1664
  %1677 = fmul fast float %1675, %1665
  %1678 = fmul fast float %1675, %1666
  %1679 = fadd fast float %1669, %1113
  %1680 = call float @dx.op.unary.f32(i32 7, float %1679)  ; Saturate(value)
  %1681 = call float @dx.op.dot3.f32(i32 55, float %1676, float %1677, float %1678, float %1676, float %1677, float %1678)  ; Dot3(ax,ay,az,bx,by,bz)
  %1682 = call float @dx.op.unary.f32(i32 25, float %1681)  ; Rsqrt(value)
  %1683 = fmul fast float %1682, %1676
  %1684 = fmul fast float %1682, %1677
  %1685 = fmul fast float %1682, %1678
  %1686 = fadd fast float %1670, 0xBFB99999A0000000
  %1687 = call float @dx.op.unary.f32(i32 7, float %1686)  ; Saturate(value)
  %1688 = fmul fast float %1687, 0x3FF1C71C80000000
  %1689 = call float @dx.op.binary.f32(i32 36, float %1670, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1690 = fsub fast float 1.000000e+00, %1688
  %1691 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1692 = fmul fast float %1691, %1671
  %1693 = fmul fast float %1691, %1672
  %1694 = fmul fast float %1691, %1673
  %1695 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  %1696 = call float @dx.op.unary.f32(i32 7, float %1693)  ; Saturate(value)
  %1697 = call float @dx.op.unary.f32(i32 7, float %1694)  ; Saturate(value)
  %1698 = fmul fast float %1688, %1671
  %1699 = fmul fast float %1688, %1672
  %1700 = fmul fast float %1688, %1673
  %1701 = fadd fast float %1698, %1689
  %1702 = fadd fast float %1699, %1689
  %1703 = fadd fast float %1700, %1689
  %1704 = call float @dx.op.unary.f32(i32 7, float %1701)  ; Saturate(value)
  %1705 = call float @dx.op.unary.f32(i32 7, float %1702)  ; Saturate(value)
  %1706 = call float @dx.op.unary.f32(i32 7, float %1703)  ; Saturate(value)
  %1707 = call float @dx.op.unary.f32(i32 7, float %1668)  ; Saturate(value)
  %1708 = call float @dx.op.binary.f32(i32 36, float %1656, float 1.270000e+02)  ; FMin(a,b)
  %1709 = call float @dx.op.binary.f32(i32 36, float %1657, float 1.270000e+02)  ; FMin(a,b)
  %1710 = call float @dx.op.binary.f32(i32 36, float %1658, float 1.270000e+02)  ; FMin(a,b)
  %1711 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1712 = extractvalue %dx.types.CBufRet.i32 %1711, 3
  %1713 = and i32 %1712, 8
  %1714 = icmp ne i32 %1713, 0
  %1715 = call float @dx.op.binary.f32(i32 35, float %1695, float %1671)  ; FMax(a,b)
  %1716 = call float @dx.op.binary.f32(i32 35, float %1696, float %1671)  ; FMax(a,b)
  %1717 = call float @dx.op.binary.f32(i32 35, float %1697, float %1671)  ; FMax(a,b)
  %1718 = call float @dx.op.dot3.f32(i32 55, float %1695, float %1696, float %1697, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1719 = select i1 %229, float %1671, float %1695
  %1720 = select i1 %229, float %1718, float %1696
  %1721 = select i1 %229, float 1.000000e+00, float %1697
  %1722 = select i1 %1714, float %1715, float %1719
  %1723 = select i1 %1714, float %1716, float %1720
  %1724 = select i1 %1714, float %1717, float %1721
  %1725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1726 = extractvalue %dx.types.CBufRet.f32 %1725, 0
  %1727 = extractvalue %dx.types.CBufRet.f32 %1725, 1
  %1728 = extractvalue %dx.types.CBufRet.f32 %1725, 2
  %1729 = fadd fast float %1726, %138
  %1730 = fadd fast float %1727, %139
  %1731 = fadd fast float %1728, %140
  %1732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1733 = extractvalue %dx.types.CBufRet.f32 %1732, 0
  %1734 = extractvalue %dx.types.CBufRet.f32 %1732, 1
  %1735 = fsub fast float %1729, %1733
  %1736 = fsub fast float %1730, %1734
  %1737 = fmul fast float %1735, %1735
  %1738 = fmul fast float %1736, %1736
  %1739 = fadd fast float %1737, %1738
  %1740 = call float @dx.op.unary.f32(i32 24, float %1739)  ; Sqrt(value)
  %1741 = extractvalue %dx.types.CBufRet.f32 %1732, 2
  %1742 = fcmp fast olt float %1740, %1741
  br i1 %1742, label %1743, label %1810

; <label>:1743                                    ; preds = %1652
  %1744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1745 = extractvalue %dx.types.CBufRet.f32 %1744, 0
  %1746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1747 = extractvalue %dx.types.CBufRet.f32 %1746, 0
  %1748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1749 = extractvalue %dx.types.CBufRet.f32 %1748, 0
  %1750 = extractvalue %dx.types.CBufRet.f32 %1744, 1
  %1751 = extractvalue %dx.types.CBufRet.f32 %1746, 1
  %1752 = extractvalue %dx.types.CBufRet.f32 %1748, 1
  %1753 = extractvalue %dx.types.CBufRet.f32 %1744, 3
  %1754 = extractvalue %dx.types.CBufRet.f32 %1746, 3
  %1755 = extractvalue %dx.types.CBufRet.f32 %1748, 3
  %1756 = fadd fast float %1753, %1729
  %1757 = fadd fast float %1754, %1730
  %1758 = fadd fast float %1755, %1731
  %1759 = fmul fast float %1756, %1745
  %1760 = call float @dx.op.tertiary.f32(i32 46, float %1757, float %1747, float %1759)  ; FMad(a,b,c)
  %1761 = call float @dx.op.tertiary.f32(i32 46, float %1758, float %1749, float %1760)  ; FMad(a,b,c)
  %1762 = fmul fast float %1756, %1750
  %1763 = call float @dx.op.tertiary.f32(i32 46, float %1757, float %1751, float %1762)  ; FMad(a,b,c)
  %1764 = call float @dx.op.tertiary.f32(i32 46, float %1758, float %1752, float %1763)  ; FMad(a,b,c)
  %1765 = fsub fast float %1761, %1753
  %1766 = fsub fast float %1764, %1754
  %1767 = fsub fast float %1765, %1733
  %1768 = fadd fast float %1767, %1741
  %1769 = fsub fast float %1766, %1734
  %1770 = fadd fast float %1769, %1741
  %1771 = extractvalue %dx.types.CBufRet.f32 %1732, 3
  %1772 = fmul fast float %1768, %1771
  %1773 = fmul fast float %1770, %1771
  %1774 = call float @dx.op.unary.f32(i32 7, float %1772)  ; Saturate(value)
  %1775 = call float @dx.op.unary.f32(i32 7, float %1773)  ; Saturate(value)
  %1776 = fsub fast float 1.000000e+00, %1774
  %1777 = fsub fast float 1.000000e+00, %1775
  %1778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %58, float %1776, float %1777, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1779 = extractvalue %dx.types.ResRet.f32 %1778, 0
  %1780 = fcmp fast ugt float %1779, 0.000000e+00
  br i1 %1780, label %1781, label %2084

; <label>:1781                                    ; preds = %1743
  %1782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.f32 %1782, 2
  %1784 = fmul fast float %1783, %1779
  %1785 = extractvalue %dx.types.CBufRet.f32 %1782, 3
  %1786 = fadd fast float %1785, %1784
  %1787 = extractvalue %dx.types.CBufRet.f32 %1748, 2
  %1788 = fadd fast float %1786, %1755
  %1789 = fmul fast float %1761, %1749
  %1790 = call float @dx.op.tertiary.f32(i32 46, float %1764, float %1752, float %1789)  ; FMad(a,b,c)
  %1791 = call float @dx.op.tertiary.f32(i32 46, float %1788, float %1787, float %1790)  ; FMad(a,b,c)
  %1792 = fsub fast float %1791, %1755
  %1793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1794 = extractvalue %dx.types.CBufRet.f32 %1793, 2
  %1795 = fsub fast float %1792, %1794
  %1796 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %58, float %1776, float %1777, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1797 = extractvalue %dx.types.ResRet.f32 %1796, 0
  %1798 = extractvalue %dx.types.ResRet.f32 %1796, 1
  %1799 = extractvalue %dx.types.ResRet.f32 %1796, 2
  %1800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %58, float %1776, float %1777, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1801 = extractvalue %dx.types.ResRet.f32 %1800, 0
  %1802 = extractvalue %dx.types.ResRet.f32 %1800, 1
  %1803 = extractvalue %dx.types.ResRet.f32 %1800, 2
  %1804 = fadd fast float %1801, %1797
  %1805 = fmul fast float %1804, 0x3F847AE140000000
  %1806 = fadd fast float %1802, %1798
  %1807 = fmul fast float %1806, 0x3F847AE140000000
  %1808 = fadd fast float %1803, %1799
  %1809 = fmul fast float %1808, 0x3F847AE140000000
  br label %2084

; <label>:1810                                    ; preds = %1652
  %1811 = and i32 %205, 1
  %1812 = icmp eq i32 %1811, 0
  br i1 %1812, label %2084, label %1813

; <label>:1813                                    ; preds = %1810
  %1814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1815 = extractvalue %dx.types.CBufRet.f32 %1814, 0
  %1816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1817 = extractvalue %dx.types.CBufRet.f32 %1816, 0
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 0
  %1820 = extractvalue %dx.types.CBufRet.f32 %1814, 1
  %1821 = extractvalue %dx.types.CBufRet.f32 %1816, 1
  %1822 = extractvalue %dx.types.CBufRet.f32 %1818, 1
  %1823 = extractvalue %dx.types.CBufRet.f32 %1814, 3
  %1824 = extractvalue %dx.types.CBufRet.f32 %1816, 3
  %1825 = extractvalue %dx.types.CBufRet.f32 %1818, 3
  %1826 = fadd fast float %1823, %1729
  %1827 = fadd fast float %1824, %1730
  %1828 = fadd fast float %1825, %1731
  %1829 = fmul fast float %1826, %1815
  %1830 = call float @dx.op.tertiary.f32(i32 46, float %1827, float %1817, float %1829)  ; FMad(a,b,c)
  %1831 = call float @dx.op.tertiary.f32(i32 46, float %1828, float %1819, float %1830)  ; FMad(a,b,c)
  %1832 = fmul fast float %1826, %1820
  %1833 = call float @dx.op.tertiary.f32(i32 46, float %1827, float %1821, float %1832)  ; FMad(a,b,c)
  %1834 = call float @dx.op.tertiary.f32(i32 46, float %1828, float %1822, float %1833)  ; FMad(a,b,c)
  %1835 = fsub fast float %1831, %1823
  %1836 = fsub fast float %1834, %1824
  %1837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1838 = extractvalue %dx.types.CBufRet.f32 %1837, 0
  %1839 = extractvalue %dx.types.CBufRet.f32 %1837, 1
  %1840 = extractvalue %dx.types.CBufRet.f32 %1837, 2
  %1841 = extractvalue %dx.types.CBufRet.f32 %1837, 3
  %1842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1843 = extractvalue %dx.types.CBufRet.f32 %1842, 3
  %1844 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1845 = extractvalue %dx.types.CBufRet.i32 %1844, 0
  %1846 = extractvalue %dx.types.CBufRet.i32 %1844, 1
  %1847 = udiv i32 %1846, %1845
  %1848 = fsub fast float %1835, %1838
  %1849 = fsub fast float %1836, %1839
  %1850 = call float @dx.op.binary.f32(i32 35, float %1848, float 0.000000e+00)  ; FMax(a,b)
  %1851 = call float @dx.op.binary.f32(i32 35, float %1849, float 0.000000e+00)  ; FMax(a,b)
  %1852 = call float @dx.op.binary.f32(i32 36, float %1850, float %1840)  ; FMin(a,b)
  %1853 = call float @dx.op.binary.f32(i32 36, float %1851, float %1841)  ; FMin(a,b)
  %1854 = add i32 %1845, -1
  %1855 = add i32 %1847, -1
  %1856 = fmul fast float %1852, %1843
  %1857 = fmul fast float %1853, %1843
  %1858 = fptoui float %1856 to i32
  %1859 = fptoui float %1857 to i32
  %1860 = call i32 @dx.op.binary.i32(i32 40, i32 %1858, i32 %1854)  ; UMin(a,b)
  %1861 = call i32 @dx.op.binary.i32(i32 40, i32 %1859, i32 %1855)  ; UMin(a,b)
  %1862 = mul i32 %1861, %1845
  %1863 = add i32 %1862, %1860
  %1864 = shl i32 %1863, 2
  %1865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.i32 %1865, 0
  %1867 = icmp eq i32 %1866, -1
  br i1 %1867, label %2084, label %1868

; <label>:1868                                    ; preds = %1813
  %1869 = mul i32 %1866, 148
  %1870 = add i32 %1869, 4
  %1871 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.f32 %1871, 0
  %1873 = add i32 %1869, 8
  %1874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.f32 %1874, 0
  %1876 = add i32 %1869, 36
  %1877 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.f32 %1877, 0
  %1879 = add i32 %1869, 60
  %1880 = add i32 %1869, 92
  %1881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %1882 = extractvalue %dx.types.ResRet.i32 %1881, 0
  %1883 = add i32 %1869, 116
  %1884 = fsub fast float %1835, %1872
  %1885 = fsub fast float %1836, %1875
  %1886 = fmul fast float %1843, %1884
  %1887 = fmul fast float %1843, %1885
  %1888 = call float @dx.op.unary.f32(i32 7, float %1886)  ; Saturate(value)
  %1889 = call float @dx.op.unary.f32(i32 7, float %1887)  ; Saturate(value)
  %1890 = fsub fast float 1.000000e+00, %1889
  %1891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1892 = extractvalue %dx.types.CBufRet.f32 %1891, 2
  %1893 = call float @dx.op.unary.f32(i32 83, float %1888)  ; DerivCoarseX(value)
  %1894 = call float @dx.op.unary.f32(i32 83, float %1890)  ; DerivCoarseX(value)
  %1895 = call float @dx.op.unary.f32(i32 84, float %1888)  ; DerivCoarseY(value)
  %1896 = call float @dx.op.unary.f32(i32 84, float %1890)  ; DerivCoarseY(value)
  %1897 = fmul fast float %1893, %1892
  %1898 = fmul fast float %1894, %1892
  %1899 = fmul fast float %1895, %1892
  %1900 = fmul fast float %1896, %1892
  %1901 = call float @dx.op.dot2.f32(i32 54, float %1899, float %1900, float %1899, float %1900)  ; Dot2(ax,ay,bx,by)
  %1902 = call float @dx.op.dot2.f32(i32 54, float %1897, float %1898, float %1897, float %1898)  ; Dot2(ax,ay,bx,by)
  %1903 = call float @dx.op.binary.f32(i32 35, float %1902, float %1901)  ; FMax(a,b)
  %1904 = call float @dx.op.unary.f32(i32 23, float %1903)  ; Log(value)
  %1905 = fmul fast float %1904, 5.000000e-01
  %1906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1907 = extractvalue %dx.types.CBufRet.f32 %1906, 1
  %1908 = fadd fast float %1907, %1905
  %1909 = call float @dx.op.binary.f32(i32 35, float %1908, float 0.000000e+00)  ; FMax(a,b)
  %1910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.f32 %1910, 3
  %1912 = fadd fast float %1911, %1909
  %1913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1914 = extractvalue %dx.types.CBufRet.f32 %1913, 3
  %1915 = fadd fast float %1912, %1914
  %1916 = add i32 %1882, 0
  %1917 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1916, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1918 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1917, i32 0)  ; GetDimensions(handle,mipLevel)
  %1919 = extractvalue %dx.types.Dimensions %1918, 0
  %1920 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1919)  ; FirstbitLo(value)
  %1921 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.i32 %1921, 1
  %1923 = sub nsw i32 %1922, %1920
  %1924 = sitofp i32 %1923 to float
  %1925 = fsub fast float %1915, %1924
  %1926 = call float @dx.op.binary.f32(i32 35, float %1925, float 0.000000e+00)  ; FMax(a,b)
  %1927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1917, %dx.types.Handle %56, float %1888, float %1890, float %1878, float undef, i32 0, i32 0, i32 undef, float %1926)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1928 = extractvalue %dx.types.ResRet.f32 %1927, 0
  %1929 = fcmp ule float %1928, 0x3FE0101020000000
  %1930 = extractvalue %dx.types.CBufRet.i32 %1921, 0
  %1931 = and i32 %1930, 128
  %1932 = icmp ne i32 %1931, 0
  %1933 = and i1 %1929, %1932
  br i1 %1933, label %2084, label %1934

; <label>:1934                                    ; preds = %1868
  %1935 = add i32 %1869, 20
  %1936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.f32 %1936, 0
  %1938 = add i32 %1869, 24
  %1939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1940 = extractvalue %dx.types.ResRet.f32 %1939, 0
  %1941 = add i32 %1869, 40
  %1942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.f32 %1942, 0
  %1944 = add i32 %1869, 96
  %1945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.i32 %1945, 0
  %1947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1948 = extractvalue %dx.types.CBufRet.f32 %1947, 2
  %1949 = fmul fast float %1948, %1888
  %1950 = fmul fast float %1948, %1890
  %1951 = extractvalue %dx.types.CBufRet.f32 %1947, 3
  %1952 = fadd fast float %1949, %1951
  %1953 = fadd fast float %1950, %1951
  %1954 = add i32 %1946, 0
  %1955 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1954, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1956 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1955, i32 0)  ; GetDimensions(handle,mipLevel)
  %1957 = extractvalue %dx.types.Dimensions %1956, 0
  %1958 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1957)  ; FirstbitLo(value)
  %1959 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1960 = extractvalue %dx.types.CBufRet.i32 %1959, 1
  %1961 = sub nsw i32 %1960, %1958
  %1962 = sitofp i32 %1961 to float
  %1963 = fsub fast float %1912, %1962
  %1964 = call float @dx.op.binary.f32(i32 35, float %1963, float 0.000000e+00)  ; FMax(a,b)
  %1965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1955, %dx.types.Handle %56, float %1952, float %1953, float %1943, float undef, i32 0, i32 0, i32 undef, float %1964)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1966 = extractvalue %dx.types.ResRet.f32 %1965, 0
  %1967 = fmul fast float %1966, %1937
  %1968 = fadd fast float %1967, %1940
  %1969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1970 = extractvalue %dx.types.CBufRet.f32 %1969, 0
  %1971 = extractvalue %dx.types.CBufRet.f32 %1969, 1
  %1972 = extractvalue %dx.types.CBufRet.f32 %1969, 2
  %1973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1974 = extractvalue %dx.types.CBufRet.f32 %1973, 3
  %1975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1976 = extractvalue %dx.types.CBufRet.f32 %1975, 3
  %1977 = extractvalue %dx.types.CBufRet.f32 %1969, 3
  %1978 = fadd fast float %1974, %1835
  %1979 = fadd fast float %1976, %1836
  %1980 = fadd fast float %1968, %1977
  %1981 = fmul fast float %1978, %1970
  %1982 = call float @dx.op.tertiary.f32(i32 46, float %1979, float %1971, float %1981)  ; FMad(a,b,c)
  %1983 = call float @dx.op.tertiary.f32(i32 46, float %1980, float %1972, float %1982)  ; FMad(a,b,c)
  %1984 = fsub fast float %1983, %1977
  %1985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1986 = extractvalue %dx.types.CBufRet.f32 %1985, 2
  %1987 = fsub fast float %1984, %1986
  %1988 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1989 = extractvalue %dx.types.CBufRet.i32 %1988, 0
  %1990 = call i32 @dx.op.binary.i32(i32 40, i32 %1866, i32 %1989)  ; UMin(a,b)
  %1991 = mul i32 %1990, 36
  %1992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1991, i32 undef)  ; BufferLoad(srv,index,wot)
  %1993 = extractvalue %dx.types.ResRet.i32 %1992, 0
  %1994 = add i32 %1991, 4
  %1995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1996 = extractvalue %dx.types.CBufRet.f32 %1995, 0
  %1997 = fmul fast float %1996, %1888
  %1998 = fmul fast float %1996, %1890
  %1999 = extractvalue %dx.types.CBufRet.f32 %1995, 1
  %2000 = fadd fast float %1997, %1999
  %2001 = fadd fast float %1998, %1999
  %2002 = icmp eq i32 %1993, 0
  br i1 %2002, label %2071, label %2003

; <label>:2003                                    ; preds = %1934
  br label %2004

; <label>:2004                                    ; preds = %2061, %2003
  %2005 = phi float [ %2062, %2061 ], [ 0.000000e+00, %2003 ]
  %2006 = phi float [ %2063, %2061 ], [ 0.000000e+00, %2003 ]
  %2007 = phi float [ %2064, %2061 ], [ 0.000000e+00, %2003 ]
  %2008 = phi float [ %2065, %2061 ], [ 0.000000e+00, %2003 ]
  %2009 = phi float [ %2066, %2061 ], [ 0.000000e+00, %2003 ]
  %2010 = phi float [ %2067, %2061 ], [ 0.000000e+00, %2003 ]
  %2011 = phi i32 [ %2068, %2061 ], [ 0, %2003 ]
  %2012 = shl i32 %2011, 2
  %2013 = add i32 %1879, %2012
  %2014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.f32 %2014, 0
  %2016 = add i32 %1883, %2012
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = add i32 %2018, 0
  %2020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2019, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2021 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2020, i32 0)  ; GetDimensions(handle,mipLevel)
  %2022 = extractvalue %dx.types.Dimensions %2021, 0
  %2023 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2022)  ; FirstbitLo(value)
  %2024 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2025 = extractvalue %dx.types.CBufRet.i32 %2024, 1
  %2026 = sub nsw i32 %2025, %2023
  %2027 = sitofp i32 %2026 to float
  %2028 = fsub fast float %1912, %2027
  %2029 = call float @dx.op.binary.f32(i32 35, float %2028, float 0.000000e+00)  ; FMax(a,b)
  %2030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2020, %dx.types.Handle %56, float %2000, float %2001, float %2015, float undef, i32 0, i32 0, i32 undef, float %2029)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2031 = extractvalue %dx.types.ResRet.f32 %2030, 0
  %2032 = fcmp fast ogt float %2031, 0.000000e+00
  br i1 %2032, label %2033, label %2061

; <label>:2033                                    ; preds = %2004
  %2034 = add i32 %1994, %2012
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = and i32 %2036, 32767
  %2038 = mul nuw nsw i32 %2037, 928
  %2039 = add nuw nsw i32 %2038, 48
  %2040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.f32 %2040, 0
  %2042 = extractvalue %dx.types.ResRet.f32 %2040, 1
  %2043 = extractvalue %dx.types.ResRet.f32 %2040, 2
  %2044 = add nuw nsw i32 %2038, 60
  %2045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.f32 %2045, 0
  %2047 = extractvalue %dx.types.ResRet.f32 %2045, 1
  %2048 = extractvalue %dx.types.ResRet.f32 %2045, 2
  %2049 = fmul fast float %2041, %2031
  %2050 = fmul fast float %2042, %2031
  %2051 = fmul fast float %2043, %2031
  %2052 = fadd fast float %2049, %2005
  %2053 = fadd fast float %2050, %2006
  %2054 = fadd fast float %2051, %2007
  %2055 = fmul fast float %2046, %2031
  %2056 = fmul fast float %2047, %2031
  %2057 = fmul fast float %2048, %2031
  %2058 = fadd fast float %2055, %2008
  %2059 = fadd fast float %2056, %2009
  %2060 = fadd fast float %2057, %2010
  br label %2061

; <label>:2061                                    ; preds = %2033, %2004
  %2062 = phi float [ %2052, %2033 ], [ %2005, %2004 ]
  %2063 = phi float [ %2053, %2033 ], [ %2006, %2004 ]
  %2064 = phi float [ %2054, %2033 ], [ %2007, %2004 ]
  %2065 = phi float [ %2058, %2033 ], [ %2008, %2004 ]
  %2066 = phi float [ %2059, %2033 ], [ %2009, %2004 ]
  %2067 = phi float [ %2060, %2033 ], [ %2010, %2004 ]
  %2068 = add nuw i32 %2011, 1
  %2069 = icmp eq i32 %2068, %1993
  br i1 %2069, label %2070, label %2004

; <label>:2070                                    ; preds = %2061
  br label %2071

; <label>:2071                                    ; preds = %2070, %1934
  %2072 = phi float [ 0.000000e+00, %1934 ], [ %2062, %2070 ]
  %2073 = phi float [ 0.000000e+00, %1934 ], [ %2063, %2070 ]
  %2074 = phi float [ 0.000000e+00, %1934 ], [ %2064, %2070 ]
  %2075 = phi float [ 0.000000e+00, %1934 ], [ %2065, %2070 ]
  %2076 = phi float [ 0.000000e+00, %1934 ], [ %2066, %2070 ]
  %2077 = phi float [ 0.000000e+00, %1934 ], [ %2067, %2070 ]
  %2078 = fadd fast float %2075, %2072
  %2079 = fmul fast float %2078, 0x3F847AE140000000
  %2080 = fadd fast float %2076, %2073
  %2081 = fmul fast float %2080, 0x3F847AE140000000
  %2082 = fadd fast float %2077, %2074
  %2083 = fmul fast float %2082, 0x3F847AE140000000
  br label %2084

; <label>:2084                                    ; preds = %2071, %1868, %1813, %1810, %1781, %1743
  %2085 = phi float [ %1795, %1781 ], [ -1.310720e+05, %1743 ], [ %1987, %2071 ], [ -1.310720e+05, %1813 ], [ -1.310720e+05, %1868 ], [ -1.310720e+05, %1810 ]
  %2086 = phi float [ %1805, %1781 ], [ 0.000000e+00, %1743 ], [ %2079, %2071 ], [ 0.000000e+00, %1813 ], [ 0.000000e+00, %1868 ], [ 0.000000e+00, %1810 ]
  %2087 = phi float [ %1807, %1781 ], [ 0.000000e+00, %1743 ], [ %2081, %2071 ], [ 0.000000e+00, %1813 ], [ 0.000000e+00, %1868 ], [ 0.000000e+00, %1810 ]
  %2088 = phi float [ %1809, %1781 ], [ 0.000000e+00, %1743 ], [ %2083, %2071 ], [ 0.000000e+00, %1813 ], [ 0.000000e+00, %1868 ], [ 0.000000e+00, %1810 ]
  %2089 = phi i1 [ true, %1781 ], [ false, %1743 ], [ true, %2071 ], [ false, %1813 ], [ false, %1868 ], [ false, %1810 ]
  %2090 = and i32 %205, 3
  %2091 = icmp eq i32 %2090, 1
  %2092 = select i1 %2091, float 1.000000e+00, float 0.000000e+00
  %2093 = fsub fast float %2085, %140
  %2094 = call float @dx.op.unary.f32(i32 7, float %2093)  ; Saturate(value)
  %2095 = select i1 %2089, float %2094, float 1.000000e+00
  %2096 = fmul fast float %2095, %2092
  %2097 = icmp eq i32 %2090, 3
  %2098 = select i1 %2097, float 1.000000e+00, float %2096
  %2099 = call float @dx.op.binary.f32(i32 35, float %1653, float %2098)  ; FMax(a,b)
  %2100 = call float @dx.op.unary.f32(i32 7, float %2099)  ; Saturate(value)
  %2101 = fcmp fast une float %2100, 0.000000e+00
  %2102 = call float @dx.op.dot3.f32(i32 55, float %138, float %139, float %140, float %138, float %139, float %140)  ; Dot3(ax,ay,az,bx,by,bz)
  %2103 = call float @dx.op.unary.f32(i32 25, float %2102)  ; Rsqrt(value)
  br i1 %2101, label %2111, label %2104

; <label>:2104                                    ; preds = %2084
  %2105 = fmul fast float %2103, %138
  %2106 = fmul fast float %2103, %139
  %2107 = fmul fast float %2103, %140
  %2108 = fsub fast float -0.000000e+00, %2105
  %2109 = fsub fast float -0.000000e+00, %2106
  %2110 = fsub fast float -0.000000e+00, %2107
  br label %2279

; <label>:2111                                    ; preds = %2084
  %2112 = fmul fast float %138, %2103
  %2113 = fsub fast float -0.000000e+00, %2112
  %2114 = fmul fast float %139, %2103
  %2115 = fsub fast float -0.000000e+00, %2114
  %2116 = fmul fast float %140, %2103
  %2117 = fsub fast float -0.000000e+00, %2116
  %2118 = call float @dx.op.dot3.f32(i32 55, float %2113, float %2115, float %2117, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %2119 = fmul fast float %2100, 2.500000e+00
  %2120 = call float @dx.op.unary.f32(i32 7, float %2119)  ; Saturate(value)
  %2121 = fmul fast float %2100, 0x4013FFFFE0000000
  %2122 = fadd fast float %2121, 0xBFFFFFFFE0000000
  %2123 = call float @dx.op.unary.f32(i32 7, float %2122)  ; Saturate(value)
  %2124 = fmul fast float %2100, 0x4004000020000000
  %2125 = fadd fast float %2124, 0xBFF8000040000000
  %2126 = call float @dx.op.unary.f32(i32 7, float %2125)  ; Saturate(value)
  %2127 = call float @dx.op.unary.f32(i32 7, float %2120)  ; Saturate(value)
  %2128 = fmul fast float %1686, 1.000000e+01
  %2129 = call float @dx.op.unary.f32(i32 7, float %2128)  ; Saturate(value)
  %2130 = fmul fast float %2129, 2.000000e+00
  %2131 = fsub fast float 3.000000e+00, %2130
  %2132 = fmul fast float %2129, %2129
  %2133 = fmul fast float %2132, %2131
  %2134 = fsub fast float 1.000000e+00, %2133
  %2135 = fsub fast float 0x3FE3333340000000, %1707
  %2136 = fmul fast float %2135, 0x400AAAAAA0000000
  %2137 = call float @dx.op.unary.f32(i32 7, float %2136)  ; Saturate(value)
  %2138 = fmul fast float %2134, %2137
  %2139 = fmul fast float %1722, 0x3FEA2B8620000000
  %2140 = fmul fast float %1723, 0x3FEA2B8620000000
  %2141 = fmul fast float %1724, 0x3FEA2B8620000000
  %2142 = fadd fast float %2139, 0x3FC81DFBA0000000
  %2143 = fmul fast float %2142, %1722
  %2144 = fadd fast float %2143, 0x3F910E6020000000
  %2145 = fadd fast float %2140, 0x3FC81DFBA0000000
  %2146 = fmul fast float %2145, %1723
  %2147 = fadd fast float %2146, 0x3F910E6020000000
  %2148 = fadd fast float %2141, 0x3FC81DFBA0000000
  %2149 = fmul fast float %2148, %1724
  %2150 = fadd fast float %2149, 0x3F910E6020000000
  %2151 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  %2152 = call float @dx.op.unary.f32(i32 7, float %2147)  ; Saturate(value)
  %2153 = call float @dx.op.unary.f32(i32 7, float %2150)  ; Saturate(value)
  %2154 = fsub fast float %2151, %1722
  %2155 = fsub fast float %2152, %1723
  %2156 = fsub fast float %2153, %1724
  %2157 = fmul fast float %2154, %2127
  %2158 = fmul fast float %2157, %2138
  %2159 = fmul fast float %2155, %2127
  %2160 = fmul fast float %2159, %2138
  %2161 = fmul fast float %2156, %2127
  %2162 = fmul fast float %2161, %2138
  %2163 = fadd fast float %2158, %1722
  %2164 = fadd fast float %2160, %1723
  %2165 = fadd fast float %2162, %1724
  %2166 = fmul fast float %1667, %1667
  %2167 = fmul fast float %2166, %2166
  %2168 = fadd fast float %2123, 1.000000e+00
  %2169 = fsub fast float %2168, %2138
  %2170 = call float @dx.op.unary.f32(i32 7, float %2169)  ; Saturate(value)
  %2171 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2172 = call float @dx.op.unary.f32(i32 7, float %2171)  ; Saturate(value)
  %2173 = fsub fast float 1.000000e+00, %2167
  %2174 = call float @dx.op.binary.f32(i32 36, float %2170, float %2173)  ; FMin(a,b)
  %2175 = call float @dx.op.unary.f32(i32 7, float %2126)  ; Saturate(value)
  %2176 = call float @dx.op.binary.f32(i32 35, float %2174, float %2175)  ; FMax(a,b)
  %2177 = fadd fast float %2172, 0xBFE4CCCCC0000000
  %2178 = fmul fast float %2177, 0x4006DB6DA0000000
  %2179 = call float @dx.op.unary.f32(i32 7, float %2178)  ; Saturate(value)
  %2180 = fmul fast float %2179, 2.000000e+00
  %2181 = fsub fast float 3.000000e+00, %2180
  %2182 = bitcast float %1704 to i32
  %2183 = ashr i32 %2182, 1
  %2184 = add nsw i32 %2183, 532487669
  %2185 = bitcast i32 %2184 to float
  %2186 = fsub fast float 1.000000e+00, %2185
  %2187 = bitcast float %2186 to i32
  %2188 = sub nsw i32 2129859010, %2187
  %2189 = bitcast i32 %2188 to float
  %2190 = fmul fast float %2189, 2.000000e+00
  %2191 = bitcast float %1705 to i32
  %2192 = ashr i32 %2191, 1
  %2193 = add nsw i32 %2192, 532487669
  %2194 = bitcast i32 %2193 to float
  %2195 = fsub fast float 1.000000e+00, %2194
  %2196 = bitcast float %2195 to i32
  %2197 = sub nsw i32 2129859010, %2196
  %2198 = bitcast i32 %2197 to float
  %2199 = fmul fast float %2198, 2.000000e+00
  %2200 = bitcast float %1706 to i32
  %2201 = ashr i32 %2200, 1
  %2202 = add nsw i32 %2201, 532487669
  %2203 = bitcast i32 %2202 to float
  %2204 = fsub fast float 1.000000e+00, %2203
  %2205 = bitcast float %2204 to i32
  %2206 = sub nsw i32 2129859010, %2205
  %2207 = bitcast i32 %2206 to float
  %2208 = fmul fast float %2207, 2.000000e+00
  %2209 = fsub fast float 0x4002A9FBE0000000, %2190
  %2210 = fadd fast float %2190, 0x3FD54FDF00000000
  %2211 = bitcast float %2210 to i32
  %2212 = sub nsw i32 2129859010, %2211
  %2213 = bitcast i32 %2212 to float
  %2214 = fmul fast float %2213, %2209
  %2215 = fmul fast float %2214, %2214
  %2216 = fsub fast float 0x4002A9FBE0000000, %2199
  %2217 = fadd fast float %2199, 0x3FD54FDF00000000
  %2218 = bitcast float %2217 to i32
  %2219 = sub nsw i32 2129859010, %2218
  %2220 = bitcast i32 %2219 to float
  %2221 = fmul fast float %2220, %2216
  %2222 = fmul fast float %2221, %2221
  %2223 = fsub fast float 0x4002A9FBE0000000, %2208
  %2224 = fadd fast float %2208, 0x3FD54FDF00000000
  %2225 = bitcast float %2224 to i32
  %2226 = sub nsw i32 2129859010, %2225
  %2227 = bitcast i32 %2226 to float
  %2228 = fmul fast float %2227, %2223
  %2229 = fmul fast float %2228, %2228
  %2230 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2215)  ; FMax(a,b)
  %2231 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2222)  ; FMax(a,b)
  %2232 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2229)  ; FMax(a,b)
  %2233 = fsub fast float 1.000000e+00, %2118
  %2234 = fadd fast float %2233, %2134
  %2235 = call float @dx.op.unary.f32(i32 7, float %2234)  ; Saturate(value)
  %2236 = fsub fast float 1.000000e+00, %2098
  %2237 = fmul fast float %2176, %2236
  %2238 = fmul fast float %2179, %2179
  %2239 = fmul fast float %2238, %2237
  %2240 = fmul fast float %2239, %2181
  %2241 = fmul fast float %2236, 0xBFE99999A0000000
  %2242 = fmul fast float %2241, %2127
  %2243 = fmul fast float %2242, %2138
  %2244 = fadd fast float %2243, 1.000000e+00
  %2245 = fadd fast float %1707, -1.000000e+00
  %2246 = fmul fast float %2244, %2245
  %2247 = fadd fast float %2246, 1.000000e+00
  %2248 = fsub fast float %2230, %1704
  %2249 = fsub fast float %2231, %1705
  %2250 = fsub fast float %2232, %1706
  %2251 = fmul fast float %2240, %2248
  %2252 = fmul fast float %2240, %2249
  %2253 = fmul fast float %2240, %2250
  %2254 = fadd fast float %2251, %1704
  %2255 = fadd fast float %2252, %1705
  %2256 = fadd fast float %2253, %1706
  %2257 = fsub fast float %70, %1683
  %2258 = fsub fast float %71, %1684
  %2259 = fsub fast float %72, %1685
  %2260 = fmul fast float %2240, %2257
  %2261 = fmul fast float %2240, %2258
  %2262 = fmul fast float %2240, %2259
  %2263 = fadd fast float %2260, %1683
  %2264 = fadd fast float %2261, %1684
  %2265 = fadd fast float %2262, %1685
  %2266 = fmul fast float %2240, %2235
  %2267 = call float @dx.op.unary.f32(i32 7, float %2247)  ; Saturate(value)
  %2268 = fsub fast float 1.000000e+00, %2267
  %2269 = fmul fast float %2266, %2268
  %2270 = fadd fast float %2269, %2267
  %2271 = fsub fast float 1.000000e+00, %1667
  %2272 = fmul fast float %2240, %2271
  %2273 = fadd fast float %2272, %1667
  %2274 = call float @dx.op.dot3.f32(i32 55, float %2263, float %2264, float %2265, float %2263, float %2264, float %2265)  ; Dot3(ax,ay,az,bx,by,bz)
  %2275 = call float @dx.op.unary.f32(i32 25, float %2274)  ; Rsqrt(value)
  %2276 = fmul fast float %2263, %2275
  %2277 = fmul fast float %2264, %2275
  %2278 = fmul fast float %2265, %2275
  br label %2279

; <label>:2279                                    ; preds = %2111, %2104
  %2280 = phi float [ %2110, %2104 ], [ %2117, %2111 ]
  %2281 = phi float [ %2109, %2104 ], [ %2115, %2111 ]
  %2282 = phi float [ %2108, %2104 ], [ %2113, %2111 ]
  %2283 = phi float [ %2107, %2104 ], [ %2116, %2111 ]
  %2284 = phi float [ %2106, %2104 ], [ %2114, %2111 ]
  %2285 = phi float [ %2105, %2104 ], [ %2112, %2111 ]
  %2286 = phi float [ %1722, %2104 ], [ %2163, %2111 ]
  %2287 = phi float [ %1723, %2104 ], [ %2164, %2111 ]
  %2288 = phi float [ %1724, %2104 ], [ %2165, %2111 ]
  %2289 = phi float [ %1704, %2104 ], [ %2254, %2111 ]
  %2290 = phi float [ %1705, %2104 ], [ %2255, %2111 ]
  %2291 = phi float [ %1706, %2104 ], [ %2256, %2111 ]
  %2292 = phi float [ %1683, %2104 ], [ %2276, %2111 ]
  %2293 = phi float [ %1684, %2104 ], [ %2277, %2111 ]
  %2294 = phi float [ %1685, %2104 ], [ %2278, %2111 ]
  %2295 = phi float [ %1707, %2104 ], [ %2270, %2111 ]
  %2296 = phi float [ %1667, %2104 ], [ %2273, %2111 ]
  %2297 = fsub fast float -0.000000e+00, %140
  %2298 = select i1 %229, float 0.000000e+00, float %2291
  %2299 = call float @dx.op.dot3.f32(i32 55, float %2292, float %2293, float %2294, float %2282, float %2281, float %2280)  ; Dot3(ax,ay,az,bx,by,bz)
  %2300 = call float @dx.op.unary.f32(i32 7, float %2299)  ; Saturate(value)
  %2301 = call float @dx.op.dot3.f32(i32 55, float %2285, float %2284, float %2283, float %2292, float %2293, float %2294)  ; Dot3(ax,ay,az,bx,by,bz)
  %2302 = fmul fast float %2301, 2.000000e+00
  %2303 = fmul fast float %2302, %2292
  %2304 = fmul fast float %2302, %2293
  %2305 = fmul fast float %2302, %2294
  %2306 = fsub fast float %2285, %2303
  %2307 = fsub fast float %2284, %2304
  %2308 = fsub fast float %2283, %2305
  %2309 = call float @dx.op.binary.f32(i32 36, float %2296, float 1.000000e+00)  ; FMin(a,b)
  %2310 = fsub fast float 1.000000e+00, %2296
  %2311 = bitcast float %2310 to i32
  %2312 = sub nsw i32 2129859010, %2311
  %2313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2314 = extractvalue %dx.types.CBufRet.f32 %2313, 0
  %2315 = extractvalue %dx.types.CBufRet.f32 %2313, 1
  %2316 = fadd fast float %2314, %138
  %2317 = fadd fast float %2315, %139
  %2318 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2319 = extractvalue %dx.types.CBufRet.i32 %2318, 0
  %2320 = icmp eq i32 %2319, 1
  br i1 %2320, label %2321, label %2356

; <label>:2321                                    ; preds = %2279
  %2322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2323 = extractvalue %dx.types.CBufRet.f32 %2322, 0
  %2324 = extractvalue %dx.types.CBufRet.f32 %2322, 1
  %2325 = fsub fast float %2316, %2323
  %2326 = fsub fast float %2317, %2324
  %2327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2328 = extractvalue %dx.types.CBufRet.f32 %2327, 0
  %2329 = extractvalue %dx.types.CBufRet.f32 %2327, 1
  %2330 = fmul fast float %2325, %2328
  %2331 = fmul fast float %2326, %2329
  %2332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %2330, float %2331, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2333 = extractvalue %dx.types.ResRet.f32 %2332, 0
  %2334 = fcmp fast ogt float %2333, 0.000000e+00
  %2335 = extractvalue %dx.types.CBufRet.i32 %2318, 3
  %2336 = icmp ne i32 %2335, 0
  %2337 = and i1 %2334, %2336
  br i1 %2337, label %2338, label %2356, !dx.controlflow.hints !99

; <label>:2338                                    ; preds = %2321
  %2339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2340 = extractvalue %dx.types.CBufRet.f32 %2339, 0
  %2341 = extractvalue %dx.types.CBufRet.f32 %2339, 1
  %2342 = fsub fast float %2316, %2340
  %2343 = fsub fast float %2317, %2341
  %2344 = fmul fast float %2342, %2342
  %2345 = fmul fast float %2343, %2343
  %2346 = fadd fast float %2344, %2345
  %2347 = uitofp i32 %2335 to float
  %2348 = fmul fast float %2347, %2347
  %2349 = fcmp fast ogt float %2346, %2348
  br i1 %2349, label %2356, label %2350

; <label>:2350                                    ; preds = %2338
  %2351 = call float @dx.op.unary.f32(i32 24, float %2346)  ; Sqrt(value)
  %2352 = fsub fast float %2347, %2351
  %2353 = fmul fast float %2352, 0x3F75555560000000
  %2354 = call float @dx.op.unary.f32(i32 7, float %2353)  ; Saturate(value)
  %2355 = call float @dx.op.binary.f32(i32 36, float %2354, float %2333)  ; FMin(a,b)
  br label %2356

; <label>:2356                                    ; preds = %2350, %2338, %2321, %2279
  %2357 = phi float [ 1.000000e+00, %2279 ], [ %2355, %2350 ], [ %2333, %2321 ], [ 0.000000e+00, %2338 ]
  %2358 = fcmp fast ogt float %2357, 0.000000e+00
  br i1 %2358, label %2359, label %2457, !dx.controlflow.hints !100

; <label>:2359                                    ; preds = %2356
  %2360 = fadd fast float %169, 5.000000e-01
  %2361 = call float @dx.op.unary.f32(i32 27, float %2360)  ; Round_ni(value)
  %2362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %58, float %167, float %168, float %2361, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2363 = extractvalue %dx.types.ResRet.f32 %2362, 0
  %2364 = extractvalue %dx.types.ResRet.f32 %2362, 1
  %2365 = extractvalue %dx.types.ResRet.f32 %2362, 2
  %2366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2367 = extractvalue %dx.types.CBufRet.f32 %2366, 3
  %2368 = fmul fast float %2367, %2363
  %2369 = fmul fast float %2367, %2364
  %2370 = fmul fast float %2367, %2365
  %2371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %58, float %167, float %168, float %2361, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2372 = extractvalue %dx.types.ResRet.f32 %2371, 0
  %2373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %58, float %167, float %168, float %2361, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2374 = extractvalue %dx.types.ResRet.f32 %2373, 0
  %2375 = extractvalue %dx.types.ResRet.f32 %2373, 1
  %2376 = fmul fast float %2374, 2.000000e+00
  %2377 = fmul fast float %2375, 2.000000e+00
  %2378 = fadd fast float %2376, -1.000000e+00
  %2379 = fadd fast float %2377, -1.000000e+00
  %2380 = fadd fast float %2378, %2379
  %2381 = fmul fast float %2380, 5.000000e-01
  %2382 = fsub fast float %2378, %2379
  %2383 = fmul fast float %2382, 5.000000e-01
  %2384 = call float @dx.op.unary.f32(i32 6, float %2381)  ; FAbs(value)
  %2385 = fsub fast float 1.000000e+00, %2384
  %2386 = call float @dx.op.unary.f32(i32 6, float %2383)  ; FAbs(value)
  %2387 = fsub fast float %2385, %2386
  %2388 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2387)  ; FMax(a,b)
  %2389 = call float @dx.op.dot3.f32(i32 55, float %2381, float %2383, float %2388, float %2381, float %2383, float %2388)  ; Dot3(ax,ay,az,bx,by,bz)
  %2390 = bitcast float %2389 to i32
  %2391 = ashr i32 %2390, 1
  %2392 = sub nsw i32 1597250115, %2391
  %2393 = bitcast i32 %2392 to float
  %2394 = fmul fast float %2393, %2381
  %2395 = fmul fast float %2393, %2383
  %2396 = fmul fast float %2393, %2388
  %2397 = fsub fast float 1.000000e+00, %2372
  %2398 = fdiv fast float %2397, %2396
  %2399 = fmul fast float %2396, %70
  %2400 = fmul fast float %2396, %71
  %2401 = fmul fast float %2396, %72
  %2402 = fmul fast float %2394, %66
  %2403 = fmul fast float %2394, %67
  %2404 = fmul fast float %2394, %68
  %2405 = fadd fast float %2399, %2402
  %2406 = fadd fast float %2400, %2403
  %2407 = fadd fast float %2401, %2404
  %2408 = fmul fast float %2395, %102
  %2409 = fmul fast float %2395, %103
  %2410 = fmul fast float %2395, %104
  %2411 = fadd fast float %2405, %2408
  %2412 = fadd fast float %2406, %2409
  %2413 = fadd fast float %2407, %2410
  %2414 = call float @dx.op.dot3.f32(i32 55, float %2411, float %2412, float %2413, float %2411, float %2412, float %2413)  ; Dot3(ax,ay,az,bx,by,bz)
  %2415 = call float @dx.op.unary.f32(i32 25, float %2414)  ; Rsqrt(value)
  %2416 = fmul fast float %2411, %2415
  %2417 = fmul fast float %2412, %2415
  %2418 = fmul fast float %2413, %2415
  %2419 = call float @dx.op.dot3.f32(i32 55, float %2292, float %2293, float %2294, float %2292, float %2293, float %2294)  ; Dot3(ax,ay,az,bx,by,bz)
  %2420 = call float @dx.op.unary.f32(i32 7, float %2419)  ; Saturate(value)
  %2421 = fmul fast float %2420, 5.000000e-01
  %2422 = fadd fast float %2421, 5.000000e-01
  %2423 = fmul fast float %2422, %2372
  %2424 = call float @dx.op.dot3.f32(i32 55, float %2292, float %2293, float %2294, float %2416, float %2417, float %2418)  ; Dot3(ax,ay,az,bx,by,bz)
  %2425 = call float @dx.op.unary.f32(i32 7, float %2424)  ; Saturate(value)
  %2426 = fmul fast float %2425, %2398
  %2427 = fadd fast float %2423, %2426
  %2428 = fsub fast float 5.000000e-01, %2421
  %2429 = fmul fast float %2428, %2286
  %2430 = fmul fast float %2428, %2287
  %2431 = fmul fast float %2428, %2288
  %2432 = fadd fast float %2427, %2429
  %2433 = fmul fast float %2432, %2368
  %2434 = fadd fast float %2427, %2430
  %2435 = fmul fast float %2434, %2369
  %2436 = fadd fast float %2427, %2431
  %2437 = fmul fast float %2436, %2370
  %2438 = call float @dx.op.dot3.f32(i32 55, float %2306, float %2307, float %2308, float %2292, float %2293, float %2294)  ; Dot3(ax,ay,az,bx,by,bz)
  %2439 = call float @dx.op.unary.f32(i32 7, float %2438)  ; Saturate(value)
  %2440 = fmul fast float %2439, 5.000000e-01
  %2441 = fadd fast float %2440, 5.000000e-01
  %2442 = fmul fast float %2441, %2372
  %2443 = call float @dx.op.dot3.f32(i32 55, float %2306, float %2307, float %2308, float %2416, float %2417, float %2418)  ; Dot3(ax,ay,az,bx,by,bz)
  %2444 = call float @dx.op.unary.f32(i32 7, float %2443)  ; Saturate(value)
  %2445 = fmul fast float %2444, %2398
  %2446 = fadd fast float %2442, %2445
  %2447 = fsub fast float 5.000000e-01, %2440
  %2448 = fmul fast float %2447, %2286
  %2449 = fmul fast float %2447, %2287
  %2450 = fmul fast float %2447, %2288
  %2451 = fadd fast float %2446, %2448
  %2452 = fmul fast float %2451, %2368
  %2453 = fadd fast float %2446, %2449
  %2454 = fmul fast float %2453, %2369
  %2455 = fadd fast float %2446, %2450
  %2456 = fmul fast float %2455, %2370
  br label %2457

; <label>:2457                                    ; preds = %2359, %2356
  %2458 = phi float [ %2452, %2359 ], [ 0.000000e+00, %2356 ]
  %2459 = phi float [ %2454, %2359 ], [ 0.000000e+00, %2356 ]
  %2460 = phi float [ %2456, %2359 ], [ 0.000000e+00, %2356 ]
  %2461 = phi float [ %2433, %2359 ], [ 0.000000e+00, %2356 ]
  %2462 = phi float [ %2435, %2359 ], [ 0.000000e+00, %2356 ]
  %2463 = phi float [ %2437, %2359 ], [ 0.000000e+00, %2356 ]
  %2464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2465 = extractvalue %dx.types.CBufRet.f32 %2464, 0
  %2466 = fcmp fast ogt float %2465, 0.000000e+00
  %2467 = and i1 %2358, %2466
  br i1 %2467, label %2468, label %2672, !dx.controlflow.hints !101

; <label>:2468                                    ; preds = %2457
  %2469 = extractvalue %dx.types.CBufRet.f32 %2313, 2
  %2470 = fadd fast float %2469, %140
  %2471 = fmul fast float %2292, 3.200000e+01
  %2472 = fmul fast float %2293, 3.200000e+01
  %2473 = fadd fast float %2316, %2471
  %2474 = fadd fast float %2317, %2472
  %2475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2476 = extractvalue %dx.types.CBufRet.f32 %2475, 0
  %2477 = extractvalue %dx.types.CBufRet.f32 %2475, 1
  %2478 = fsub fast float %2473, %2476
  %2479 = fsub fast float %2474, %2477
  %2480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2481 = extractvalue %dx.types.CBufRet.f32 %2480, 0
  %2482 = extractvalue %dx.types.CBufRet.f32 %2480, 1
  %2483 = fmul fast float %2478, %2481
  %2484 = fmul fast float %2479, %2482
  %2485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2486 = extractvalue %dx.types.CBufRet.f32 %2485, 0
  %2487 = extractvalue %dx.types.CBufRet.f32 %2485, 1
  %2488 = fsub fast float %2316, %2486
  %2489 = fsub fast float %2317, %2487
  %2490 = fmul fast float %2488, %2488
  %2491 = fmul fast float %2489, %2489
  %2492 = fadd fast float %2490, %2491
  %2493 = call float @dx.op.unary.f32(i32 24, float %2492)  ; Sqrt(value)
  %2494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2495 = extractvalue %dx.types.CBufRet.f32 %2494, 0
  %2496 = extractvalue %dx.types.CBufRet.f32 %2494, 1
  %2497 = fsub fast float %2493, %2495
  %2498 = fdiv fast float %2497, %2496
  %2499 = call float @dx.op.unary.f32(i32 7, float %2498)  ; Saturate(value)
  %2500 = fmul fast float %2499, 2.000000e+00
  %2501 = fsub fast float 3.000000e+00, %2500
  %2502 = fmul fast float %2499, %2499
  %2503 = fmul fast float %2502, %2501
  %2504 = fcmp fast oge float %2483, 0.000000e+00
  %2505 = fcmp fast ole float %2483, 1.000000e+00
  %2506 = and i1 %2505, %2504
  %2507 = fcmp fast oge float %2484, 0.000000e+00
  %2508 = and i1 %2507, %2506
  %2509 = fcmp fast ole float %2484, 1.000000e+00
  %2510 = and i1 %2509, %2508
  %2511 = fcmp fast ogt float %2503, 0.000000e+00
  %2512 = and i1 %2511, %2510
  br i1 %2512, label %2513, label %2636, !dx.controlflow.hints !102

; <label>:2513                                    ; preds = %2468
  %2514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2515 = extractvalue %dx.types.CBufRet.f32 %2514, 2
  %2516 = extractvalue %dx.types.CBufRet.f32 %2514, 3
  %2517 = fmul fast float %2515, %2483
  %2518 = fmul fast float %2516, %2484
  %2519 = call float @dx.op.unary.f32(i32 27, float %2517)  ; Round_ni(value)
  %2520 = call float @dx.op.unary.f32(i32 27, float %2518)  ; Round_ni(value)
  %2521 = fptosi float %2519 to i32
  %2522 = fptosi float %2520 to i32
  %2523 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %2521, i32 %2522, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2524 = extractvalue %dx.types.ResRet.i32 %2523, 0
  %2525 = lshr i32 %2524, 16
  %2526 = icmp eq i32 %2525, 65535
  br i1 %2526, label %2636, label %2527

; <label>:2527                                    ; preds = %2513
  %2528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2529 = extractvalue %dx.types.CBufRet.f32 %2528, 0
  %2530 = fmul fast float %2529, %2483
  %2531 = extractvalue %dx.types.CBufRet.f32 %2528, 1
  %2532 = fadd fast float %2530, %2531
  %2533 = extractvalue %dx.types.CBufRet.f32 %2528, 2
  %2534 = fmul fast float %2533, %2484
  %2535 = extractvalue %dx.types.CBufRet.f32 %2528, 3
  %2536 = fadd fast float %2534, %2535
  %2537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2532, float %2536, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2538 = extractvalue %dx.types.ResRet.f32 %2537, 0
  %2539 = extractvalue %dx.types.ResRet.f32 %2537, 1
  %2540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2541 = extractvalue %dx.types.CBufRet.f32 %2540, 1
  %2542 = extractvalue %dx.types.CBufRet.f32 %2540, 0
  %2543 = fsub fast float %2541, %2542
  %2544 = fmul fast float %2543, %2538
  %2545 = fadd fast float %2544, %2542
  %2546 = extractvalue %dx.types.CBufRet.f32 %2540, 3
  %2547 = extractvalue %dx.types.CBufRet.f32 %2540, 2
  %2548 = fsub fast float %2546, %2547
  %2549 = fmul fast float %2548, %2539
  %2550 = fadd fast float %2549, %2547
  %2551 = fsub fast float %2470, %2545
  %2552 = fsub fast float %2550, %2545
  %2553 = fdiv fast float %2551, %2552
  %2554 = call float @dx.op.unary.f32(i32 7, float %2553)  ; Saturate(value)
  %2555 = extractvalue %dx.types.CBufRet.f32 %2464, 1
  %2556 = extractvalue %dx.types.CBufRet.f32 %2514, 0
  %2557 = extractvalue %dx.types.CBufRet.f32 %2514, 1
  %2558 = fmul fast float %2556, %2483
  %2559 = fmul fast float %2557, %2484
  %2560 = fmul fast float %2558, 1.250000e-01
  %2561 = fmul fast float %2559, 1.250000e-01
  %2562 = call float @dx.op.unary.f32(i32 27, float %2560)  ; Round_ni(value)
  %2563 = call float @dx.op.unary.f32(i32 27, float %2561)  ; Round_ni(value)
  %2564 = fmul fast float %2562, 8.000000e+00
  %2565 = fmul fast float %2563, 8.000000e+00
  %2566 = fsub fast float %2558, %2564
  %2567 = fsub fast float %2559, %2565
  %2568 = fadd fast float %2566, 5.000000e-01
  %2569 = fadd fast float %2567, 5.000000e-01
  %2570 = and i32 %2525, 255
  %2571 = lshr i32 %2524, 24
  %2572 = mul nuw nsw i32 %2570, 9
  %2573 = uitofp i32 %2572 to float
  %2574 = mul nuw nsw i32 %2571, 9
  %2575 = uitofp i32 %2574 to float
  %2576 = fadd fast float %2568, %2573
  %2577 = fadd fast float %2569, %2575
  %2578 = fdiv fast float %2576, %2465
  %2579 = fdiv fast float %2577, %2555
  %2580 = fmul fast float %2554, 4.375000e-01
  %2581 = fadd fast float %2580, 3.125000e-02
  %2582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2578, float %2579, float %2581, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2583 = extractvalue %dx.types.ResRet.f32 %2582, 0
  %2584 = extractvalue %dx.types.ResRet.f32 %2582, 1
  %2585 = extractvalue %dx.types.ResRet.f32 %2582, 2
  %2586 = fadd fast float %2580, 5.312500e-01
  %2587 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2578, float %2579, float %2586, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2588 = extractvalue %dx.types.ResRet.f32 %2587, 0
  %2589 = extractvalue %dx.types.ResRet.f32 %2587, 1
  %2590 = extractvalue %dx.types.ResRet.f32 %2587, 2
  %2591 = fmul fast float %2588, 2.000000e+00
  %2592 = fmul fast float %2589, 2.000000e+00
  %2593 = fmul fast float %2590, 2.000000e+00
  %2594 = fadd fast float %2591, -1.000000e+00
  %2595 = fadd fast float %2592, -1.000000e+00
  %2596 = fadd fast float %2593, -1.000000e+00
  %2597 = fmul fast float %2594, %2594
  %2598 = fmul fast float %2595, %2595
  %2599 = fadd fast float %2597, %2598
  %2600 = fmul fast float %2596, %2596
  %2601 = fadd fast float %2599, %2600
  %2602 = call float @dx.op.unary.f32(i32 24, float %2601)  ; Sqrt(value)
  %2603 = fcmp fast ogt float %2602, 0.000000e+00
  br i1 %2603, label %2604, label %2608

; <label>:2604                                    ; preds = %2527
  %2605 = fdiv fast float %2594, %2602
  %2606 = fdiv fast float %2595, %2602
  %2607 = fdiv fast float %2596, %2602
  br label %2608

; <label>:2608                                    ; preds = %2604, %2527
  %2609 = phi float [ %2605, %2604 ], [ 0.000000e+00, %2527 ]
  %2610 = phi float [ %2606, %2604 ], [ 0.000000e+00, %2527 ]
  %2611 = phi float [ %2607, %2604 ], [ 0.000000e+00, %2527 ]
  %2612 = call float @dx.op.dot3.f32(i32 55, float %2609, float %2610, float %2611, float %2292, float %2293, float %2294)  ; Dot3(ax,ay,az,bx,by,bz)
  %2613 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2612)  ; FMax(a,b)
  %2614 = fmul fast float %2613, 0x400C5BF8A0000000
  %2615 = fmul fast float %2583, %2503
  %2616 = fmul fast float %2615, %2614
  %2617 = fmul fast float %2584, %2503
  %2618 = fmul fast float %2617, %2614
  %2619 = fmul fast float %2585, %2503
  %2620 = fmul fast float %2619, %2614
  %2621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2622 = extractvalue %dx.types.CBufRet.f32 %2621, 3
  %2623 = fmul fast float %2616, %2622
  %2624 = fmul fast float %2618, %2622
  %2625 = fmul fast float %2620, %2622
  %2626 = fcmp fast ogt float %2470, %2550
  br i1 %2626, label %2627, label %2636

; <label>:2627                                    ; preds = %2608
  %2628 = fmul fast float %2552, 0x3FC24924A0000000
  %2629 = fsub fast float %2470, %2550
  %2630 = fdiv fast float %2629, %2628
  %2631 = call float @dx.op.unary.f32(i32 7, float %2630)  ; Saturate(value)
  %2632 = fsub fast float 1.000000e+00, %2631
  %2633 = fmul fast float %2632, %2623
  %2634 = fmul fast float %2632, %2624
  %2635 = fmul fast float %2632, %2625
  br label %2636

; <label>:2636                                    ; preds = %2627, %2608, %2513, %2468
  %2637 = phi float [ %2635, %2627 ], [ %2625, %2608 ], [ 0.000000e+00, %2513 ], [ 0.000000e+00, %2468 ]
  %2638 = phi float [ %2634, %2627 ], [ %2624, %2608 ], [ 0.000000e+00, %2513 ], [ 0.000000e+00, %2468 ]
  %2639 = phi float [ %2633, %2627 ], [ %2623, %2608 ], [ 0.000000e+00, %2513 ], [ 0.000000e+00, %2468 ]
  %2640 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2639)  ; FMax(a,b)
  %2641 = fmul fast float %2640, 0x3FD20DD760000000
  %2642 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2306, float %2307, float %2308)  ; Dot3(ax,ay,az,bx,by,bz)
  %2643 = fmul fast float %2642, 0x3FDF454380000000
  %2644 = fmul fast float %2642, %2642
  %2645 = fmul fast float %2644, 0x3FEE471020000000
  %2646 = fadd fast float %2645, 0xBFD42F6020000000
  %2647 = call float @dx.op.dot3.f32(i32 55, float %2640, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2643, float %2646)  ; Dot3(ax,ay,az,bx,by,bz)
  %2648 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2638)  ; FMax(a,b)
  %2649 = fmul fast float %2648, 0x3FD20DD760000000
  %2650 = call float @dx.op.dot3.f32(i32 55, float %2648, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2643, float %2646)  ; Dot3(ax,ay,az,bx,by,bz)
  %2651 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2637)  ; FMax(a,b)
  %2652 = fmul fast float %2651, 0x3FD20DD760000000
  %2653 = call float @dx.op.dot3.f32(i32 55, float %2651, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2643, float %2646)  ; Dot3(ax,ay,az,bx,by,bz)
  %2654 = call float @dx.op.binary.f32(i32 35, float %2641, float 0.000000e+00)  ; FMax(a,b)
  %2655 = call float @dx.op.binary.f32(i32 35, float %2649, float 0.000000e+00)  ; FMax(a,b)
  %2656 = call float @dx.op.binary.f32(i32 35, float %2652, float 0.000000e+00)  ; FMax(a,b)
  %2657 = call float @dx.op.binary.f32(i32 35, float %2647, float 0.000000e+00)  ; FMax(a,b)
  %2658 = call float @dx.op.binary.f32(i32 35, float %2650, float 0.000000e+00)  ; FMax(a,b)
  %2659 = call float @dx.op.binary.f32(i32 35, float %2653, float 0.000000e+00)  ; FMax(a,b)
  %2660 = fmul fast float %2654, %2357
  %2661 = fmul fast float %2655, %2357
  %2662 = fmul fast float %2656, %2357
  %2663 = fadd fast float %2660, %2461
  %2664 = fadd fast float %2661, %2462
  %2665 = fadd fast float %2662, %2463
  %2666 = fmul fast float %2657, %2357
  %2667 = fmul fast float %2658, %2357
  %2668 = fmul fast float %2659, %2357
  %2669 = fadd fast float %2666, %2458
  %2670 = fadd fast float %2667, %2459
  %2671 = fadd fast float %2668, %2460
  br label %2672

; <label>:2672                                    ; preds = %2636, %2457
  %2673 = phi float [ %2669, %2636 ], [ %2458, %2457 ]
  %2674 = phi float [ %2670, %2636 ], [ %2459, %2457 ]
  %2675 = phi float [ %2671, %2636 ], [ %2460, %2457 ]
  %2676 = phi float [ %2663, %2636 ], [ %2461, %2457 ]
  %2677 = phi float [ %2664, %2636 ], [ %2462, %2457 ]
  %2678 = phi float [ %2665, %2636 ], [ %2463, %2457 ]
  %2679 = fcmp fast olt float %2357, 1.000000e+00
  br i1 %2679, label %2680, label %3498, !dx.controlflow.hints !103

; <label>:2680                                    ; preds = %2672
  %2681 = extractvalue %dx.types.CBufRet.f32 %2313, 2
  %2682 = fadd fast float %2681, %140
  %2683 = fmul fast float %2292, 3.200000e+01
  %2684 = fmul fast float %2293, 3.200000e+01
  %2685 = fadd fast float %2316, %2683
  %2686 = fadd fast float %2317, %2684
  %2687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2688 = extractvalue %dx.types.CBufRet.f32 %2687, 0
  %2689 = extractvalue %dx.types.CBufRet.f32 %2687, 1
  %2690 = fsub fast float %2685, %2688
  %2691 = fsub fast float %2686, %2689
  %2692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2693 = extractvalue %dx.types.CBufRet.f32 %2692, 0
  %2694 = extractvalue %dx.types.CBufRet.f32 %2692, 1
  %2695 = fmul fast float %2690, %2693
  %2696 = fmul fast float %2691, %2694
  %2697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2698 = extractvalue %dx.types.CBufRet.f32 %2697, 0
  %2699 = fmul fast float %2695, %2698
  %2700 = extractvalue %dx.types.CBufRet.f32 %2697, 1
  %2701 = fadd fast float %2699, %2700
  %2702 = extractvalue %dx.types.CBufRet.f32 %2697, 2
  %2703 = fmul fast float %2702, %2696
  %2704 = extractvalue %dx.types.CBufRet.f32 %2697, 3
  %2705 = fadd fast float %2703, %2704
  %2706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2701, float %2705, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2707 = extractvalue %dx.types.ResRet.f32 %2706, 0
  %2708 = extractvalue %dx.types.ResRet.f32 %2706, 1
  %2709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2710 = extractvalue %dx.types.CBufRet.f32 %2709, 1
  %2711 = extractvalue %dx.types.CBufRet.f32 %2709, 0
  %2712 = fsub fast float %2710, %2711
  %2713 = fmul fast float %2712, %2707
  %2714 = fadd fast float %2713, %2711
  %2715 = extractvalue %dx.types.CBufRet.f32 %2709, 3
  %2716 = extractvalue %dx.types.CBufRet.f32 %2709, 2
  %2717 = fsub fast float %2715, %2716
  %2718 = fmul fast float %2717, %2708
  %2719 = fadd fast float %2718, %2716
  %2720 = fsub fast float %2682, %2714
  %2721 = fsub fast float %2719, %2714
  %2722 = fdiv fast float %2720, %2721
  %2723 = call float @dx.op.unary.f32(i32 7, float %2722)  ; Saturate(value)
  %2724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2725 = extractvalue %dx.types.CBufRet.f32 %2724, 0
  %2726 = fmul fast float %2725, %2723
  %2727 = extractvalue %dx.types.CBufRet.f32 %2724, 1
  %2728 = fadd fast float %2726, %2727
  %2729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %58, float %2701, float %2705, float %2728, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2730 = extractvalue %dx.types.ResRet.f32 %2729, 0
  %2731 = extractvalue %dx.types.ResRet.f32 %2729, 1
  %2732 = extractvalue %dx.types.ResRet.f32 %2729, 2
  %2733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2734 = extractvalue %dx.types.CBufRet.f32 %2733, 0
  %2735 = extractvalue %dx.types.CBufRet.f32 %2733, 1
  %2736 = extractvalue %dx.types.CBufRet.f32 %2733, 2
  %2737 = fmul fast float %2734, %2730
  %2738 = fmul fast float %2735, %2731
  %2739 = fmul fast float %2736, %2732
  %2740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2741 = extractvalue %dx.types.CBufRet.f32 %2740, 0
  %2742 = extractvalue %dx.types.CBufRet.f32 %2740, 1
  %2743 = extractvalue %dx.types.CBufRet.f32 %2740, 2
  %2744 = fadd fast float %2737, %2741
  %2745 = fadd fast float %2738, %2742
  %2746 = fadd fast float %2739, %2743
  %2747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2748 = extractvalue %dx.types.CBufRet.f32 %2747, 0
  %2749 = fmul fast float %2748, %2695
  %2750 = extractvalue %dx.types.CBufRet.f32 %2747, 1
  %2751 = fadd fast float %2749, %2750
  %2752 = extractvalue %dx.types.CBufRet.f32 %2747, 2
  %2753 = fmul fast float %2752, %2696
  %2754 = extractvalue %dx.types.CBufRet.f32 %2747, 3
  %2755 = fadd fast float %2753, %2754
  %2756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2757 = extractvalue %dx.types.CBufRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.CBufRet.f32 %2756, 1
  %2759 = extractvalue %dx.types.CBufRet.f32 %2756, 2
  %2760 = extractvalue %dx.types.CBufRet.f32 %2756, 3
  %2761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2762 = extractvalue %dx.types.CBufRet.f32 %2761, 0
  %2763 = extractvalue %dx.types.CBufRet.f32 %2761, 1
  %2764 = extractvalue %dx.types.CBufRet.f32 %2761, 2
  %2765 = extractvalue %dx.types.CBufRet.f32 %2761, 3
  %2766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2751, float %2755, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2767 = extractvalue %dx.types.ResRet.f32 %2766, 0
  %2768 = extractvalue %dx.types.ResRet.f32 %2766, 1
  %2769 = extractvalue %dx.types.ResRet.f32 %2766, 2
  %2770 = extractvalue %dx.types.ResRet.f32 %2766, 3
  %2771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2751, float %2755, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2772 = extractvalue %dx.types.ResRet.f32 %2771, 0
  %2773 = extractvalue %dx.types.ResRet.f32 %2771, 1
  %2774 = extractvalue %dx.types.ResRet.f32 %2771, 2
  %2775 = extractvalue %dx.types.ResRet.f32 %2771, 3
  %2776 = fmul fast float %2767, %2744
  %2777 = fmul fast float %2772, %2744
  %2778 = fmul fast float %2774, %2744
  %2779 = fmul fast float %2770, %2744
  %2780 = fadd fast float %2776, %2757
  %2781 = fadd fast float %2777, %2758
  %2782 = fadd fast float %2778, %2759
  %2783 = fadd fast float %2779, %2760
  %2784 = fmul fast float %2768, %2744
  %2785 = fmul fast float %2773, %2744
  %2786 = fadd fast float %2784, %2762
  %2787 = fadd fast float %2785, %2763
  %2788 = fmul fast float %2769, %2744
  %2789 = fmul fast float %2775, %2744
  %2790 = fadd fast float %2788, %2764
  %2791 = fadd fast float %2789, %2765
  %2792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2751, float %2755, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2793 = extractvalue %dx.types.ResRet.f32 %2792, 0
  %2794 = extractvalue %dx.types.ResRet.f32 %2792, 1
  %2795 = extractvalue %dx.types.ResRet.f32 %2792, 2
  %2796 = extractvalue %dx.types.ResRet.f32 %2792, 3
  %2797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2751, float %2755, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2798 = extractvalue %dx.types.ResRet.f32 %2797, 0
  %2799 = extractvalue %dx.types.ResRet.f32 %2797, 1
  %2800 = extractvalue %dx.types.ResRet.f32 %2797, 2
  %2801 = extractvalue %dx.types.ResRet.f32 %2797, 3
  %2802 = fmul fast float %2793, %2745
  %2803 = fmul fast float %2798, %2745
  %2804 = fmul fast float %2800, %2745
  %2805 = fmul fast float %2796, %2745
  %2806 = fadd fast float %2780, %2802
  %2807 = fadd fast float %2781, %2803
  %2808 = fadd fast float %2782, %2804
  %2809 = fadd fast float %2783, %2805
  %2810 = fmul fast float %2794, %2745
  %2811 = fmul fast float %2799, %2745
  %2812 = fadd fast float %2786, %2810
  %2813 = fadd fast float %2787, %2811
  %2814 = fmul fast float %2795, %2745
  %2815 = fmul fast float %2801, %2745
  %2816 = fadd fast float %2790, %2814
  %2817 = fadd fast float %2791, %2815
  %2818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2751, float %2755, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2819 = extractvalue %dx.types.ResRet.f32 %2818, 0
  %2820 = extractvalue %dx.types.ResRet.f32 %2818, 1
  %2821 = extractvalue %dx.types.ResRet.f32 %2818, 2
  %2822 = extractvalue %dx.types.ResRet.f32 %2818, 3
  %2823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2751, float %2755, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2824 = extractvalue %dx.types.ResRet.f32 %2823, 0
  %2825 = extractvalue %dx.types.ResRet.f32 %2823, 1
  %2826 = extractvalue %dx.types.ResRet.f32 %2823, 2
  %2827 = extractvalue %dx.types.ResRet.f32 %2823, 3
  %2828 = fmul fast float %2819, %2746
  %2829 = fmul fast float %2824, %2746
  %2830 = fmul fast float %2826, %2746
  %2831 = fmul fast float %2822, %2746
  %2832 = fadd fast float %2806, %2828
  %2833 = fadd fast float %2807, %2829
  %2834 = fadd fast float %2808, %2830
  %2835 = fadd fast float %2809, %2831
  %2836 = fmul fast float %2820, %2746
  %2837 = fmul fast float %2825, %2746
  %2838 = fadd fast float %2812, %2836
  %2839 = fadd fast float %2813, %2837
  %2840 = fmul fast float %2821, %2746
  %2841 = fmul fast float %2827, %2746
  %2842 = fadd fast float %2816, %2840
  %2843 = fadd fast float %2817, %2841
  %2844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2845 = extractvalue %dx.types.CBufRet.f32 %2844, 0
  %2846 = fsub fast float %2316, %2845
  %2847 = fsub fast float %2688, %2316
  %2848 = call float @dx.op.binary.f32(i32 35, float %2847, float %2846)  ; FMax(a,b)
  %2849 = extractvalue %dx.types.CBufRet.f32 %2844, 1
  %2850 = fsub fast float %2317, %2849
  %2851 = fsub fast float %2689, %2317
  %2852 = call float @dx.op.binary.f32(i32 35, float %2851, float %2850)  ; FMax(a,b)
  %2853 = call float @dx.op.binary.f32(i32 35, float %2848, float %2852)  ; FMax(a,b)
  %2854 = extractvalue %dx.types.CBufRet.f32 %2692, 3
  %2855 = fmul fast float %2854, %2853
  %2856 = call float @dx.op.unary.f32(i32 7, float %2855)  ; Saturate(value)
  %2857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2858 = extractvalue %dx.types.CBufRet.f32 %2857, 0
  %2859 = extractvalue %dx.types.CBufRet.f32 %2857, 1
  %2860 = extractvalue %dx.types.CBufRet.f32 %2857, 2
  %2861 = extractvalue %dx.types.CBufRet.f32 %2857, 3
  %2862 = fsub fast float %2858, %2832
  %2863 = fsub fast float %2859, %2833
  %2864 = fsub fast float %2860, %2834
  %2865 = fsub fast float %2861, %2835
  %2866 = fmul fast float %2862, %2856
  %2867 = fmul fast float %2863, %2856
  %2868 = fmul fast float %2864, %2856
  %2869 = fmul fast float %2865, %2856
  %2870 = fadd fast float %2866, %2832
  %2871 = fadd fast float %2867, %2833
  %2872 = fadd fast float %2868, %2834
  %2873 = fadd fast float %2869, %2835
  %2874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2875 = extractvalue %dx.types.CBufRet.f32 %2874, 0
  %2876 = extractvalue %dx.types.CBufRet.f32 %2874, 1
  %2877 = fsub fast float %2875, %2838
  %2878 = fsub fast float %2876, %2839
  %2879 = fmul fast float %2877, %2856
  %2880 = fmul fast float %2878, %2856
  %2881 = fadd fast float %2879, %2838
  %2882 = fadd fast float %2880, %2839
  %2883 = extractvalue %dx.types.CBufRet.f32 %2874, 2
  %2884 = extractvalue %dx.types.CBufRet.f32 %2874, 3
  %2885 = fsub fast float %2883, %2842
  %2886 = fsub fast float %2884, %2843
  %2887 = fmul fast float %2885, %2856
  %2888 = fmul fast float %2886, %2856
  %2889 = fadd fast float %2887, %2842
  %2890 = fadd fast float %2888, %2843
  %2891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2892 = extractvalue %dx.types.CBufRet.f32 %2891, 0
  %2893 = fmul fast float %2892, %2870
  %2894 = fmul fast float %2892, %2871
  %2895 = fmul fast float %2892, %2872
  %2896 = fmul fast float %2892, %2873
  %2897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2898 = extractvalue %dx.types.CBufRet.f32 %2897, 0
  %2899 = fmul fast float %2898, %2881
  %2900 = fmul fast float %2898, %2882
  %2901 = fadd fast float %2899, %2893
  %2902 = fadd fast float %2900, %2895
  %2903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2904 = extractvalue %dx.types.CBufRet.f32 %2903, 0
  %2905 = fmul fast float %2904, %2889
  %2906 = fmul fast float %2904, %2890
  %2907 = fadd fast float %2901, %2905
  %2908 = fadd fast float %2902, %2906
  %2909 = extractvalue %dx.types.CBufRet.f32 %2891, 1
  %2910 = fmul fast float %2909, %2870
  %2911 = fmul fast float %2909, %2871
  %2912 = fmul fast float %2909, %2872
  %2913 = fmul fast float %2909, %2873
  %2914 = extractvalue %dx.types.CBufRet.f32 %2897, 1
  %2915 = fmul fast float %2914, %2881
  %2916 = fmul fast float %2914, %2882
  %2917 = fadd fast float %2915, %2910
  %2918 = fadd fast float %2916, %2912
  %2919 = extractvalue %dx.types.CBufRet.f32 %2903, 1
  %2920 = fmul fast float %2919, %2889
  %2921 = fmul fast float %2919, %2890
  %2922 = fadd fast float %2917, %2920
  %2923 = fadd fast float %2918, %2921
  %2924 = extractvalue %dx.types.CBufRet.f32 %2891, 2
  %2925 = fmul fast float %2924, %2870
  %2926 = fmul fast float %2924, %2871
  %2927 = fmul fast float %2924, %2872
  %2928 = fmul fast float %2924, %2873
  %2929 = extractvalue %dx.types.CBufRet.f32 %2897, 2
  %2930 = fmul fast float %2929, %2881
  %2931 = fmul fast float %2929, %2882
  %2932 = fadd fast float %2930, %2925
  %2933 = fadd fast float %2931, %2927
  %2934 = extractvalue %dx.types.CBufRet.f32 %2903, 2
  %2935 = fmul fast float %2934, %2889
  %2936 = fmul fast float %2934, %2890
  %2937 = fadd fast float %2932, %2935
  %2938 = fadd fast float %2933, %2936
  %2939 = fmul fast float %2926, %2926
  %2940 = fmul fast float %2938, %2938
  %2941 = fmul fast float %2928, %2928
  %2942 = fadd fast float %2941, %2939
  %2943 = fadd fast float %2942, %2940
  %2944 = call float @dx.op.unary.f32(i32 24, float %2943)  ; Sqrt(value)
  %2945 = fcmp fast ugt float %2944, 0.000000e+00
  br i1 %2945, label %2946, label %2961

; <label>:2946                                    ; preds = %2680
  %2947 = fsub fast float -0.000000e+00, %2928
  %2948 = fdiv fast float %2947, %2944
  %2949 = fsub fast float -0.000000e+00, %2926
  %2950 = fdiv fast float %2949, %2944
  %2951 = fdiv fast float %2938, %2944
  %2952 = fmul fast float %2937, 0x3FE279A760000000
  %2953 = fmul fast float %2950, %2926
  %2954 = fmul fast float %2951, %2938
  %2955 = fmul fast float %2948, %2928
  %2956 = fadd fast float %2953, %2955
  %2957 = fsub fast float %2956, %2954
  %2958 = call float @dx.op.unary.f32(i32 6, float %2957)  ; FAbs(value)
  %2959 = fadd fast float %2958, 0x3DDB7CDFE0000000
  %2960 = fdiv fast float %2952, %2959
  br label %2961

; <label>:2961                                    ; preds = %2946, %2680
  %2962 = phi float [ %2960, %2946 ], [ 1.000000e+00, %2680 ]
  %2963 = fmul fast float %2911, %2911
  %2964 = fmul fast float %2923, %2923
  %2965 = fmul fast float %2913, %2913
  %2966 = fadd fast float %2965, %2963
  %2967 = fadd fast float %2966, %2964
  %2968 = call float @dx.op.unary.f32(i32 24, float %2967)  ; Sqrt(value)
  %2969 = fcmp fast ugt float %2968, 0.000000e+00
  br i1 %2969, label %2970, label %2985

; <label>:2970                                    ; preds = %2961
  %2971 = fsub fast float -0.000000e+00, %2913
  %2972 = fdiv fast float %2971, %2968
  %2973 = fsub fast float -0.000000e+00, %2911
  %2974 = fdiv fast float %2973, %2968
  %2975 = fdiv fast float %2923, %2968
  %2976 = fmul fast float %2922, 0x3FE279A760000000
  %2977 = fmul fast float %2974, %2911
  %2978 = fmul fast float %2975, %2923
  %2979 = fmul fast float %2972, %2913
  %2980 = fadd fast float %2977, %2979
  %2981 = fsub fast float %2980, %2978
  %2982 = call float @dx.op.unary.f32(i32 6, float %2981)  ; FAbs(value)
  %2983 = fadd fast float %2982, 0x3DDB7CDFE0000000
  %2984 = fdiv fast float %2976, %2983
  br label %2985

; <label>:2985                                    ; preds = %2970, %2961
  %2986 = phi float [ %2984, %2970 ], [ 1.000000e+00, %2961 ]
  %2987 = call float @dx.op.binary.f32(i32 36, float %2986, float %2962)  ; FMin(a,b)
  %2988 = fmul fast float %2894, %2894
  %2989 = fmul fast float %2908, %2908
  %2990 = fmul fast float %2896, %2896
  %2991 = fadd fast float %2990, %2988
  %2992 = fadd fast float %2991, %2989
  %2993 = call float @dx.op.unary.f32(i32 24, float %2992)  ; Sqrt(value)
  %2994 = fcmp fast ugt float %2993, 0.000000e+00
  br i1 %2994, label %2995, label %3010

; <label>:2995                                    ; preds = %2985
  %2996 = fsub fast float -0.000000e+00, %2896
  %2997 = fdiv fast float %2996, %2993
  %2998 = fsub fast float -0.000000e+00, %2894
  %2999 = fdiv fast float %2998, %2993
  %3000 = fdiv fast float %2908, %2993
  %3001 = fmul fast float %2907, 0x3FE279A760000000
  %3002 = fmul fast float %2999, %2894
  %3003 = fmul fast float %3000, %2908
  %3004 = fmul fast float %2997, %2896
  %3005 = fadd fast float %3002, %3004
  %3006 = fsub fast float %3005, %3003
  %3007 = call float @dx.op.unary.f32(i32 6, float %3006)  ; FAbs(value)
  %3008 = fadd fast float %3007, 0x3DDB7CDFE0000000
  %3009 = fdiv fast float %3001, %3008
  br label %3010

; <label>:3010                                    ; preds = %2995, %2985
  %3011 = phi float [ %3009, %2995 ], [ 1.000000e+00, %2985 ]
  %3012 = call float @dx.op.binary.f32(i32 36, float %3011, float %2987)  ; FMin(a,b)
  %3013 = call float @dx.op.unary.f32(i32 7, float %3012)  ; Saturate(value)
  %3014 = fcmp fast olt float %3013, 1.000000e+00
  br i1 %3014, label %3015, label %3025

; <label>:3015                                    ; preds = %3010
  %3016 = fmul fast float %3013, %2894
  %3017 = fmul fast float %3013, %2908
  %3018 = fmul fast float %3013, %2896
  %3019 = fmul fast float %3013, %2911
  %3020 = fmul fast float %3013, %2923
  %3021 = fmul fast float %3013, %2913
  %3022 = fmul fast float %3013, %2926
  %3023 = fmul fast float %3013, %2938
  %3024 = fmul fast float %3013, %2928
  br label %3025

; <label>:3025                                    ; preds = %3015, %3010
  %3026 = phi float [ %3022, %3015 ], [ %2926, %3010 ]
  %3027 = phi float [ %3023, %3015 ], [ %2938, %3010 ]
  %3028 = phi float [ %3024, %3015 ], [ %2928, %3010 ]
  %3029 = phi float [ %3019, %3015 ], [ %2911, %3010 ]
  %3030 = phi float [ %3020, %3015 ], [ %2923, %3010 ]
  %3031 = phi float [ %3021, %3015 ], [ %2913, %3010 ]
  %3032 = phi float [ %3016, %3015 ], [ %2894, %3010 ]
  %3033 = phi float [ %3017, %3015 ], [ %2908, %3010 ]
  %3034 = phi float [ %3018, %3015 ], [ %2896, %3010 ]
  %3035 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2907)  ; FMax(a,b)
  %3036 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2922)  ; FMax(a,b)
  %3037 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2937)  ; FMax(a,b)
  %3038 = fcmp fast oge float %2695, 0.000000e+00
  %3039 = and i1 %3038, %2466
  %3040 = fcmp fast ole float %2695, 1.000000e+00
  %3041 = and i1 %3040, %3039
  %3042 = fcmp fast oge float %2696, 0.000000e+00
  %3043 = and i1 %3042, %3041
  %3044 = fcmp fast ole float %2696, 1.000000e+00
  %3045 = and i1 %3044, %3043
  br i1 %3045, label %3046, label %3191, !dx.controlflow.hints !104

; <label>:3046                                    ; preds = %3025
  %3047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3048 = extractvalue %dx.types.CBufRet.f32 %3047, 2
  %3049 = extractvalue %dx.types.CBufRet.f32 %3047, 3
  %3050 = fmul fast float %3048, %2695
  %3051 = fmul fast float %3049, %2696
  %3052 = call float @dx.op.unary.f32(i32 27, float %3050)  ; Round_ni(value)
  %3053 = call float @dx.op.unary.f32(i32 27, float %3051)  ; Round_ni(value)
  %3054 = fptosi float %3052 to i32
  %3055 = fptosi float %3053 to i32
  %3056 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %3054, i32 %3055, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = and i32 %3057, 65535
  %3059 = lshr i32 %3057, 16
  %3060 = icmp eq i32 %3058, 65535
  br i1 %3060, label %3097, label %3061

; <label>:3061                                    ; preds = %3046
  %3062 = extractvalue %dx.types.CBufRet.f32 %2464, 1
  %3063 = extractvalue %dx.types.CBufRet.f32 %3047, 0
  %3064 = extractvalue %dx.types.CBufRet.f32 %3047, 1
  %3065 = fmul fast float %3063, %2695
  %3066 = fmul fast float %3064, %2696
  %3067 = fmul fast float %3065, 1.250000e-01
  %3068 = fmul fast float %3066, 1.250000e-01
  %3069 = call float @dx.op.unary.f32(i32 27, float %3067)  ; Round_ni(value)
  %3070 = call float @dx.op.unary.f32(i32 27, float %3068)  ; Round_ni(value)
  %3071 = fmul fast float %3069, 8.000000e+00
  %3072 = fmul fast float %3070, 8.000000e+00
  %3073 = and i32 %3057, 255
  %3074 = lshr i32 %3057, 8
  %3075 = and i32 %3074, 255
  %3076 = mul nuw nsw i32 %3073, 9
  %3077 = uitofp i32 %3076 to float
  %3078 = mul nuw nsw i32 %3075, 9
  %3079 = uitofp i32 %3078 to float
  %3080 = fadd fast float %3077, 5.000000e-01
  %3081 = fadd fast float %3080, %3065
  %3082 = fsub fast float %3081, %3071
  %3083 = fadd fast float %3079, 5.000000e-01
  %3084 = fadd fast float %3083, %3066
  %3085 = fsub fast float %3084, %3072
  %3086 = fdiv fast float %3082, %2465
  %3087 = fdiv fast float %3085, %3062
  %3088 = fmul fast float %2723, 4.375000e-01
  %3089 = fadd fast float %3088, 3.125000e-02
  %3090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3086, float %3087, float %3089, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3091 = extractvalue %dx.types.ResRet.f32 %3090, 0
  %3092 = extractvalue %dx.types.ResRet.f32 %3090, 1
  %3093 = extractvalue %dx.types.ResRet.f32 %3090, 2
  %3094 = fadd fast float %3091, %3035
  %3095 = fadd fast float %3092, %3036
  %3096 = fadd fast float %3093, %3037
  br label %3097

; <label>:3097                                    ; preds = %3061, %3046
  %3098 = phi float [ %3096, %3061 ], [ %3037, %3046 ]
  %3099 = phi float [ %3095, %3061 ], [ %3036, %3046 ]
  %3100 = phi float [ %3094, %3061 ], [ %3035, %3046 ]
  %3101 = icmp eq i32 %3059, 65535
  br i1 %3101, label %3191, label %3102

; <label>:3102                                    ; preds = %3097
  %3103 = extractvalue %dx.types.CBufRet.f32 %2464, 1
  %3104 = extractvalue %dx.types.CBufRet.f32 %3047, 0
  %3105 = extractvalue %dx.types.CBufRet.f32 %3047, 1
  %3106 = fmul fast float %3104, %2695
  %3107 = fmul fast float %3105, %2696
  %3108 = fmul fast float %3106, 1.250000e-01
  %3109 = fmul fast float %3107, 1.250000e-01
  %3110 = call float @dx.op.unary.f32(i32 27, float %3108)  ; Round_ni(value)
  %3111 = call float @dx.op.unary.f32(i32 27, float %3109)  ; Round_ni(value)
  %3112 = fmul fast float %3110, 8.000000e+00
  %3113 = fmul fast float %3111, 8.000000e+00
  %3114 = fsub fast float %3106, %3112
  %3115 = fsub fast float %3107, %3113
  %3116 = fadd fast float %3114, 5.000000e-01
  %3117 = fadd fast float %3115, 5.000000e-01
  %3118 = and i32 %3059, 255
  %3119 = lshr i32 %3057, 24
  %3120 = mul nuw nsw i32 %3118, 9
  %3121 = uitofp i32 %3120 to float
  %3122 = mul nuw nsw i32 %3119, 9
  %3123 = uitofp i32 %3122 to float
  %3124 = fadd fast float %3116, %3121
  %3125 = fadd fast float %3117, %3123
  %3126 = fdiv fast float %3124, %2465
  %3127 = fdiv fast float %3125, %3103
  %3128 = fmul fast float %2723, 4.375000e-01
  %3129 = fadd fast float %3128, 3.125000e-02
  %3130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3126, float %3127, float %3129, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3131 = extractvalue %dx.types.ResRet.f32 %3130, 0
  %3132 = extractvalue %dx.types.ResRet.f32 %3130, 1
  %3133 = extractvalue %dx.types.ResRet.f32 %3130, 2
  %3134 = fadd fast float %3128, 5.312500e-01
  %3135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3126, float %3127, float %3134, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3136 = extractvalue %dx.types.ResRet.f32 %3135, 0
  %3137 = extractvalue %dx.types.ResRet.f32 %3135, 1
  %3138 = extractvalue %dx.types.ResRet.f32 %3135, 2
  %3139 = fmul fast float %3136, 2.000000e+00
  %3140 = fmul fast float %3137, 2.000000e+00
  %3141 = fmul fast float %3138, 2.000000e+00
  %3142 = fadd fast float %3139, -1.000000e+00
  %3143 = fadd fast float %3140, -1.000000e+00
  %3144 = fadd fast float %3141, -1.000000e+00
  %3145 = fmul fast float %3142, %3142
  %3146 = fmul fast float %3143, %3143
  %3147 = fadd fast float %3145, %3146
  %3148 = fmul fast float %3144, %3144
  %3149 = fadd fast float %3147, %3148
  %3150 = call float @dx.op.unary.f32(i32 24, float %3149)  ; Sqrt(value)
  %3151 = fcmp fast ogt float %3150, 0.000000e+00
  br i1 %3151, label %3152, label %3156

; <label>:3152                                    ; preds = %3102
  %3153 = fdiv fast float %3142, %3150
  %3154 = fdiv fast float %3143, %3150
  %3155 = fdiv fast float %3144, %3150
  br label %3156

; <label>:3156                                    ; preds = %3152, %3102
  %3157 = phi float [ %3153, %3152 ], [ 0.000000e+00, %3102 ]
  %3158 = phi float [ %3154, %3152 ], [ 0.000000e+00, %3102 ]
  %3159 = phi float [ %3155, %3152 ], [ 0.000000e+00, %3102 ]
  %3160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3161 = extractvalue %dx.types.CBufRet.f32 %3160, 0
  %3162 = extractvalue %dx.types.CBufRet.f32 %3160, 1
  %3163 = fsub fast float %2316, %3161
  %3164 = fsub fast float %2317, %3162
  %3165 = fmul fast float %3163, %3163
  %3166 = fmul fast float %3164, %3164
  %3167 = fadd fast float %3165, %3166
  %3168 = call float @dx.op.unary.f32(i32 24, float %3167)  ; Sqrt(value)
  %3169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3170 = extractvalue %dx.types.CBufRet.f32 %3169, 0
  %3171 = extractvalue %dx.types.CBufRet.f32 %3169, 1
  %3172 = fsub fast float %3168, %3170
  %3173 = fdiv fast float %3172, %3171
  %3174 = call float @dx.op.unary.f32(i32 7, float %3173)  ; Saturate(value)
  %3175 = fmul fast float %3174, 2.000000e+00
  %3176 = fsub fast float 3.000000e+00, %3175
  %3177 = fmul fast float %3174, %3174
  %3178 = fmul fast float %3177, %3176
  %3179 = call float @dx.op.dot3.f32(i32 55, float %3157, float %3158, float %3159, float %2292, float %2293, float %2294)  ; Dot3(ax,ay,az,bx,by,bz)
  %3180 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3179)  ; FMax(a,b)
  %3181 = fmul fast float %3180, 0x400C5BF8A0000000
  %3182 = fmul fast float %3178, %3131
  %3183 = fmul fast float %3182, %3181
  %3184 = fadd fast float %3183, %3100
  %3185 = fmul fast float %3178, %3132
  %3186 = fmul fast float %3185, %3181
  %3187 = fadd fast float %3186, %3099
  %3188 = fmul fast float %3178, %3133
  %3189 = fmul fast float %3188, %3181
  %3190 = fadd fast float %3189, %3098
  br label %3191

; <label>:3191                                    ; preds = %3156, %3097, %3025
  %3192 = phi float [ %3190, %3156 ], [ %3098, %3097 ], [ %3037, %3025 ]
  %3193 = phi float [ %3187, %3156 ], [ %3099, %3097 ], [ %3036, %3025 ]
  %3194 = phi float [ %3184, %3156 ], [ %3100, %3097 ], [ %3035, %3025 ]
  %3195 = fcmp fast ogt float %2682, %2719
  %3196 = and i1 %3038, %3195
  %3197 = and i1 %3040, %3196
  %3198 = and i1 %3042, %3197
  %3199 = and i1 %3044, %3198
  br i1 %3199, label %3200, label %3257, !dx.controlflow.hints !105

; <label>:3200                                    ; preds = %3191
  %3201 = fmul fast float %2721, 0x3FC24924A0000000
  %3202 = fsub fast float %2682, %2719
  %3203 = fdiv fast float %3202, %3201
  %3204 = call float @dx.op.unary.f32(i32 7, float %3203)  ; Saturate(value)
  %3205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3206 = extractvalue %dx.types.CBufRet.f32 %3205, 0
  %3207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3208 = extractvalue %dx.types.CBufRet.f32 %3207, 0
  %3209 = extractvalue %dx.types.CBufRet.f32 %3207, 1
  %3210 = extractvalue %dx.types.CBufRet.f32 %3207, 2
  %3211 = fsub fast float %3206, %3194
  %3212 = fsub fast float %3208, %3032
  %3213 = fsub fast float %3209, %3033
  %3214 = fsub fast float %3210, %3034
  %3215 = fmul fast float %3211, %3204
  %3216 = fmul fast float %3212, %3204
  %3217 = fmul fast float %3213, %3204
  %3218 = fmul fast float %3214, %3204
  %3219 = fadd fast float %3215, %3194
  %3220 = fadd fast float %3216, %3032
  %3221 = fadd fast float %3217, %3033
  %3222 = fadd fast float %3218, %3034
  %3223 = extractvalue %dx.types.CBufRet.f32 %3205, 1
  %3224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3225 = extractvalue %dx.types.CBufRet.f32 %3224, 0
  %3226 = extractvalue %dx.types.CBufRet.f32 %3224, 1
  %3227 = extractvalue %dx.types.CBufRet.f32 %3224, 2
  %3228 = fsub fast float %3223, %3193
  %3229 = fsub fast float %3225, %3029
  %3230 = fsub fast float %3226, %3030
  %3231 = fsub fast float %3227, %3031
  %3232 = fmul fast float %3228, %3204
  %3233 = fmul fast float %3229, %3204
  %3234 = fmul fast float %3230, %3204
  %3235 = fmul fast float %3231, %3204
  %3236 = fadd fast float %3232, %3193
  %3237 = fadd fast float %3233, %3029
  %3238 = fadd fast float %3234, %3030
  %3239 = fadd fast float %3235, %3031
  %3240 = extractvalue %dx.types.CBufRet.f32 %3205, 2
  %3241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3242 = extractvalue %dx.types.CBufRet.f32 %3241, 0
  %3243 = extractvalue %dx.types.CBufRet.f32 %3241, 1
  %3244 = extractvalue %dx.types.CBufRet.f32 %3241, 2
  %3245 = fsub fast float %3240, %3192
  %3246 = fsub fast float %3242, %3026
  %3247 = fsub fast float %3243, %3027
  %3248 = fsub fast float %3244, %3028
  %3249 = fmul fast float %3245, %3204
  %3250 = fmul fast float %3246, %3204
  %3251 = fmul fast float %3247, %3204
  %3252 = fmul fast float %3248, %3204
  %3253 = fadd fast float %3249, %3192
  %3254 = fadd fast float %3250, %3026
  %3255 = fadd fast float %3251, %3027
  %3256 = fadd fast float %3252, %3028
  br label %3257

; <label>:3257                                    ; preds = %3200, %3191
  %3258 = phi float [ %3253, %3200 ], [ %3192, %3191 ]
  %3259 = phi float [ %3254, %3200 ], [ %3026, %3191 ]
  %3260 = phi float [ %3255, %3200 ], [ %3027, %3191 ]
  %3261 = phi float [ %3256, %3200 ], [ %3028, %3191 ]
  %3262 = phi float [ %3236, %3200 ], [ %3193, %3191 ]
  %3263 = phi float [ %3237, %3200 ], [ %3029, %3191 ]
  %3264 = phi float [ %3238, %3200 ], [ %3030, %3191 ]
  %3265 = phi float [ %3239, %3200 ], [ %3031, %3191 ]
  %3266 = phi float [ %3219, %3200 ], [ %3194, %3191 ]
  %3267 = phi float [ %3220, %3200 ], [ %3032, %3191 ]
  %3268 = phi float [ %3221, %3200 ], [ %3033, %3191 ]
  %3269 = phi float [ %3222, %3200 ], [ %3034, %3191 ]
  %3270 = extractvalue %dx.types.CBufRet.f32 %2844, 3
  %3271 = fmul fast float %3270, %3266
  %3272 = fmul fast float %3270, %3262
  %3273 = fmul fast float %3270, %3258
  %3274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3275 = extractvalue %dx.types.CBufRet.f32 %3274, 3
  %3276 = fmul fast float %3271, %3275
  %3277 = fmul fast float %3272, %3275
  %3278 = fmul fast float %3273, %3275
  %3279 = fmul fast float %3267, 1.500000e+00
  %3280 = fmul fast float %3279, %3270
  %3281 = fmul fast float %3280, %3275
  %3282 = fmul fast float %3268, 1.500000e+00
  %3283 = fmul fast float %3282, %3270
  %3284 = fmul fast float %3283, %3275
  %3285 = fmul fast float %3269, 1.500000e+00
  %3286 = fmul fast float %3285, %3270
  %3287 = fmul fast float %3286, %3275
  %3288 = fmul fast float %3263, 1.500000e+00
  %3289 = fmul fast float %3288, %3270
  %3290 = fmul fast float %3289, %3275
  %3291 = fmul fast float %3264, 1.500000e+00
  %3292 = fmul fast float %3291, %3270
  %3293 = fmul fast float %3292, %3275
  %3294 = fmul fast float %3265, 1.500000e+00
  %3295 = fmul fast float %3294, %3270
  %3296 = fmul fast float %3295, %3275
  %3297 = fmul fast float %3259, 1.500000e+00
  %3298 = fmul fast float %3297, %3270
  %3299 = fmul fast float %3298, %3275
  %3300 = fmul fast float %3260, 1.500000e+00
  %3301 = fmul fast float %3300, %3270
  %3302 = fmul fast float %3301, %3275
  %3303 = fmul fast float %3261, 1.500000e+00
  %3304 = fmul fast float %3303, %3270
  %3305 = fmul fast float %3304, %3275
  %3306 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3276)  ; FMax(a,b)
  %3307 = call float @dx.op.dot3.f32(i32 55, float %3281, float %3284, float %3287, float %3281, float %3284, float %3287)  ; Dot3(ax,ay,az,bx,by,bz)
  %3308 = fcmp fast oeq float %3307, 0.000000e+00
  %3309 = fcmp fast oeq float %3306, 0.000000e+00
  %3310 = or i1 %3309, %3308
  br i1 %3310, label %3340, label %3311

; <label>:3311                                    ; preds = %3257
  %3312 = fsub fast float -0.000000e+00, %3287
  %3313 = fsub fast float -0.000000e+00, %3281
  %3314 = call float @dx.op.unary.f32(i32 24, float %3307)  ; Sqrt(value)
  %3315 = fdiv fast float %3314, %3306
  %3316 = fcmp fast ogt float %3315, 0x3FFB6F8900000000
  %3317 = select i1 %3316, float 0x3FFB6F8900000000, float %3315
  %3318 = fmul fast float %3317, 0x3FE8A23460000000
  %3319 = call float @dx.op.unary.f32(i32 7, float %3318)  ; Saturate(value)
  %3320 = call float @dx.op.binary.f32(i32 35, float %3317, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3321 = fmul fast float %3319, %3306
  %3322 = fmul fast float %3320, 0x3FF279A740000000
  %3323 = fadd fast float %3322, -1.000000e+00
  %3324 = call float @dx.op.dot3.f32(i32 55, float %3312, float %3313, float %3284, float %3312, float %3313, float %3284)  ; Dot3(ax,ay,az,bx,by,bz)
  %3325 = call float @dx.op.unary.f32(i32 25, float %3324)  ; Rsqrt(value)
  %3326 = fmul fast float %3325, %3312
  %3327 = fmul fast float %3325, %3313
  %3328 = fmul fast float %3325, %3284
  %3329 = fmul fast float %3323, %3323
  %3330 = fsub fast float 1.000000e+00, %3329
  %3331 = fmul fast float %3320, 0x40005F8BE0000000
  %3332 = fsub fast float 0x400C5BF8A0000000, %3331
  %3333 = fdiv fast float %3321, %3332
  %3334 = fmul fast float %3333, 0x3FEE31C3C0000000
  %3335 = fmul fast float %3334, %3330
  %3336 = fmul fast float %3320, 0x3FDACB7480000000
  %3337 = fadd fast float %3336, 0xBFD7347680000000
  %3338 = fmul fast float %3337, %3333
  %3339 = fmul fast float %3338, %3330
  br label %3340

; <label>:3340                                    ; preds = %3311, %3257
  %3341 = phi float [ %3326, %3311 ], [ 0.000000e+00, %3257 ]
  %3342 = phi float [ %3327, %3311 ], [ 0.000000e+00, %3257 ]
  %3343 = phi float [ %3328, %3311 ], [ 0.000000e+00, %3257 ]
  %3344 = phi float [ %3335, %3311 ], [ 0.000000e+00, %3257 ]
  %3345 = phi float [ %3339, %3311 ], [ 0.000000e+00, %3257 ]
  %3346 = call float @dx.op.dot3.f32(i32 55, float %3341, float %3342, float %3343, float %2292, float %2293, float %2294)  ; Dot3(ax,ay,az,bx,by,bz)
  %3347 = fmul fast float %3346, %3346
  %3348 = fmul fast float %3347, 0x3FEE471020000000
  %3349 = fadd fast float %3348, 0xBFD42F6020000000
  %3350 = fmul fast float %3306, 0x3FD20DD760000000
  %3351 = fmul fast float %3349, %3345
  %3352 = fmul fast float %3344, 0x3FDF454380000000
  %3353 = fmul fast float %3352, %3346
  %3354 = fadd fast float %3353, %3350
  %3355 = fadd fast float %3354, %3351
  %3356 = call float @dx.op.dot3.f32(i32 55, float %3341, float %3342, float %3343, float %2306, float %2307, float %2308)  ; Dot3(ax,ay,az,bx,by,bz)
  %3357 = fmul fast float %3356, 0x3FDF454380000000
  %3358 = fmul fast float %3356, %3356
  %3359 = fmul fast float %3358, 0x3FEE471020000000
  %3360 = fadd fast float %3359, 0xBFD42F6020000000
  %3361 = call float @dx.op.dot3.f32(i32 55, float %3306, float %3344, float %3345, float 0x3FD20DD760000000, float %3357, float %3360)  ; Dot3(ax,ay,az,bx,by,bz)
  %3362 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3277)  ; FMax(a,b)
  %3363 = call float @dx.op.dot3.f32(i32 55, float %3290, float %3293, float %3296, float %3290, float %3293, float %3296)  ; Dot3(ax,ay,az,bx,by,bz)
  %3364 = fcmp fast oeq float %3363, 0.000000e+00
  %3365 = fcmp fast oeq float %3362, 0.000000e+00
  %3366 = or i1 %3365, %3364
  br i1 %3366, label %3396, label %3367

; <label>:3367                                    ; preds = %3340
  %3368 = fsub fast float -0.000000e+00, %3296
  %3369 = fsub fast float -0.000000e+00, %3290
  %3370 = call float @dx.op.unary.f32(i32 24, float %3363)  ; Sqrt(value)
  %3371 = fdiv fast float %3370, %3362
  %3372 = fcmp fast ogt float %3371, 0x3FFB6F8900000000
  %3373 = select i1 %3372, float 0x3FFB6F8900000000, float %3371
  %3374 = fmul fast float %3373, 0x3FE8A23460000000
  %3375 = call float @dx.op.unary.f32(i32 7, float %3374)  ; Saturate(value)
  %3376 = call float @dx.op.binary.f32(i32 35, float %3373, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3377 = fmul fast float %3375, %3362
  %3378 = fmul fast float %3376, 0x3FF279A740000000
  %3379 = fadd fast float %3378, -1.000000e+00
  %3380 = call float @dx.op.dot3.f32(i32 55, float %3368, float %3369, float %3293, float %3368, float %3369, float %3293)  ; Dot3(ax,ay,az,bx,by,bz)
  %3381 = call float @dx.op.unary.f32(i32 25, float %3380)  ; Rsqrt(value)
  %3382 = fmul fast float %3381, %3368
  %3383 = fmul fast float %3381, %3369
  %3384 = fmul fast float %3381, %3293
  %3385 = fmul fast float %3379, %3379
  %3386 = fsub fast float 1.000000e+00, %3385
  %3387 = fmul fast float %3376, 0x40005F8BE0000000
  %3388 = fsub fast float 0x400C5BF8A0000000, %3387
  %3389 = fdiv fast float %3377, %3388
  %3390 = fmul fast float %3389, 0x3FEE31C3C0000000
  %3391 = fmul fast float %3390, %3386
  %3392 = fmul fast float %3376, 0x3FDACB7480000000
  %3393 = fadd fast float %3392, 0xBFD7347680000000
  %3394 = fmul fast float %3393, %3389
  %3395 = fmul fast float %3394, %3386
  br label %3396

; <label>:3396                                    ; preds = %3367, %3340
  %3397 = phi float [ %3382, %3367 ], [ 0.000000e+00, %3340 ]
  %3398 = phi float [ %3383, %3367 ], [ 0.000000e+00, %3340 ]
  %3399 = phi float [ %3384, %3367 ], [ 0.000000e+00, %3340 ]
  %3400 = phi float [ %3391, %3367 ], [ 0.000000e+00, %3340 ]
  %3401 = phi float [ %3395, %3367 ], [ 0.000000e+00, %3340 ]
  %3402 = call float @dx.op.dot3.f32(i32 55, float %3397, float %3398, float %3399, float %2292, float %2293, float %2294)  ; Dot3(ax,ay,az,bx,by,bz)
  %3403 = fmul fast float %3402, %3402
  %3404 = fmul fast float %3403, 0x3FEE471020000000
  %3405 = fadd fast float %3404, 0xBFD42F6020000000
  %3406 = fmul fast float %3362, 0x3FD20DD760000000
  %3407 = fmul fast float %3405, %3401
  %3408 = fmul fast float %3400, 0x3FDF454380000000
  %3409 = fmul fast float %3408, %3402
  %3410 = fadd fast float %3409, %3406
  %3411 = fadd fast float %3410, %3407
  %3412 = call float @dx.op.dot3.f32(i32 55, float %3397, float %3398, float %3399, float %2306, float %2307, float %2308)  ; Dot3(ax,ay,az,bx,by,bz)
  %3413 = fmul fast float %3412, 0x3FDF454380000000
  %3414 = fmul fast float %3412, %3412
  %3415 = fmul fast float %3414, 0x3FEE471020000000
  %3416 = fadd fast float %3415, 0xBFD42F6020000000
  %3417 = call float @dx.op.dot3.f32(i32 55, float %3362, float %3400, float %3401, float 0x3FD20DD760000000, float %3413, float %3416)  ; Dot3(ax,ay,az,bx,by,bz)
  %3418 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3278)  ; FMax(a,b)
  %3419 = call float @dx.op.dot3.f32(i32 55, float %3299, float %3302, float %3305, float %3299, float %3302, float %3305)  ; Dot3(ax,ay,az,bx,by,bz)
  %3420 = fcmp fast oeq float %3419, 0.000000e+00
  %3421 = fcmp fast oeq float %3418, 0.000000e+00
  %3422 = or i1 %3421, %3420
  br i1 %3422, label %3452, label %3423

; <label>:3423                                    ; preds = %3396
  %3424 = fsub fast float -0.000000e+00, %3305
  %3425 = fsub fast float -0.000000e+00, %3299
  %3426 = call float @dx.op.unary.f32(i32 24, float %3419)  ; Sqrt(value)
  %3427 = fdiv fast float %3426, %3418
  %3428 = fcmp fast ogt float %3427, 0x3FFB6F8900000000
  %3429 = select i1 %3428, float 0x3FFB6F8900000000, float %3427
  %3430 = fmul fast float %3429, 0x3FE8A23460000000
  %3431 = call float @dx.op.unary.f32(i32 7, float %3430)  ; Saturate(value)
  %3432 = call float @dx.op.binary.f32(i32 35, float %3429, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3433 = fmul fast float %3431, %3418
  %3434 = fmul fast float %3432, 0x3FF279A740000000
  %3435 = fadd fast float %3434, -1.000000e+00
  %3436 = call float @dx.op.dot3.f32(i32 55, float %3424, float %3425, float %3302, float %3424, float %3425, float %3302)  ; Dot3(ax,ay,az,bx,by,bz)
  %3437 = call float @dx.op.unary.f32(i32 25, float %3436)  ; Rsqrt(value)
  %3438 = fmul fast float %3437, %3424
  %3439 = fmul fast float %3437, %3425
  %3440 = fmul fast float %3437, %3302
  %3441 = fmul fast float %3435, %3435
  %3442 = fsub fast float 1.000000e+00, %3441
  %3443 = fmul fast float %3432, 0x40005F8BE0000000
  %3444 = fsub fast float 0x400C5BF8A0000000, %3443
  %3445 = fdiv fast float %3433, %3444
  %3446 = fmul fast float %3445, 0x3FEE31C3C0000000
  %3447 = fmul fast float %3446, %3442
  %3448 = fmul fast float %3432, 0x3FDACB7480000000
  %3449 = fadd fast float %3448, 0xBFD7347680000000
  %3450 = fmul fast float %3449, %3445
  %3451 = fmul fast float %3450, %3442
  br label %3452

; <label>:3452                                    ; preds = %3423, %3396
  %3453 = phi float [ %3438, %3423 ], [ 0.000000e+00, %3396 ]
  %3454 = phi float [ %3439, %3423 ], [ 0.000000e+00, %3396 ]
  %3455 = phi float [ %3440, %3423 ], [ 0.000000e+00, %3396 ]
  %3456 = phi float [ %3447, %3423 ], [ 0.000000e+00, %3396 ]
  %3457 = phi float [ %3451, %3423 ], [ 0.000000e+00, %3396 ]
  %3458 = call float @dx.op.dot3.f32(i32 55, float %3453, float %3454, float %3455, float %2292, float %2293, float %2294)  ; Dot3(ax,ay,az,bx,by,bz)
  %3459 = fmul fast float %3458, %3458
  %3460 = fmul fast float %3459, 0x3FEE471020000000
  %3461 = fadd fast float %3460, 0xBFD42F6020000000
  %3462 = fmul fast float %3418, 0x3FD20DD760000000
  %3463 = fmul fast float %3461, %3457
  %3464 = fmul fast float %3456, 0x3FDF454380000000
  %3465 = fmul fast float %3464, %3458
  %3466 = fadd fast float %3465, %3462
  %3467 = fadd fast float %3466, %3463
  %3468 = call float @dx.op.dot3.f32(i32 55, float %3453, float %3454, float %3455, float %2306, float %2307, float %2308)  ; Dot3(ax,ay,az,bx,by,bz)
  %3469 = fmul fast float %3468, 0x3FDF454380000000
  %3470 = fmul fast float %3468, %3468
  %3471 = fmul fast float %3470, 0x3FEE471020000000
  %3472 = fadd fast float %3471, 0xBFD42F6020000000
  %3473 = call float @dx.op.dot3.f32(i32 55, float %3418, float %3456, float %3457, float 0x3FD20DD760000000, float %3469, float %3472)  ; Dot3(ax,ay,az,bx,by,bz)
  %3474 = call float @dx.op.binary.f32(i32 35, float %3355, float 0.000000e+00)  ; FMax(a,b)
  %3475 = call float @dx.op.binary.f32(i32 35, float %3411, float 0.000000e+00)  ; FMax(a,b)
  %3476 = call float @dx.op.binary.f32(i32 35, float %3467, float 0.000000e+00)  ; FMax(a,b)
  %3477 = call float @dx.op.binary.f32(i32 35, float %3361, float 0.000000e+00)  ; FMax(a,b)
  %3478 = call float @dx.op.binary.f32(i32 35, float %3417, float 0.000000e+00)  ; FMax(a,b)
  %3479 = call float @dx.op.binary.f32(i32 35, float %3473, float 0.000000e+00)  ; FMax(a,b)
  %3480 = fsub fast float %2676, %3474
  %3481 = fsub fast float %2677, %3475
  %3482 = fsub fast float %2678, %3476
  %3483 = fmul fast float %3480, %2357
  %3484 = fmul fast float %3481, %2357
  %3485 = fmul fast float %3482, %2357
  %3486 = fadd fast float %3483, %3474
  %3487 = fadd fast float %3484, %3475
  %3488 = fadd fast float %3485, %3476
  %3489 = fsub fast float %2673, %3477
  %3490 = fsub fast float %2674, %3478
  %3491 = fsub fast float %2675, %3479
  %3492 = fmul fast float %3489, %2357
  %3493 = fmul fast float %3490, %2357
  %3494 = fmul fast float %3491, %2357
  %3495 = fadd fast float %3492, %3477
  %3496 = fadd fast float %3493, %3478
  %3497 = fadd fast float %3494, %3479
  br label %3498

; <label>:3498                                    ; preds = %3452, %2672
  %3499 = phi float [ %3495, %3452 ], [ %2673, %2672 ]
  %3500 = phi float [ %3496, %3452 ], [ %2674, %2672 ]
  %3501 = phi float [ %3497, %3452 ], [ %2675, %2672 ]
  %3502 = phi float [ %3486, %3452 ], [ %2676, %2672 ]
  %3503 = phi float [ %3487, %3452 ], [ %2677, %2672 ]
  %3504 = phi float [ %3488, %3452 ], [ %2678, %2672 ]
  %3505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3506 = extractvalue %dx.types.CBufRet.f32 %3505, 0
  %3507 = call float @dx.op.binary.f32(i32 36, float %2286, float %3506)  ; FMin(a,b)
  %3508 = fsub fast float 1.000000e+00, %2309
  %3509 = fmul fast float %3507, %3508
  %3510 = fsub fast float 1.000000e+00, %3509
  %3511 = bitcast float %3510 to i32
  %3512 = sub nsw i32 2129859010, %3511
  %3513 = bitcast i32 %3512 to float
  %3514 = call float @dx.op.binary.f32(i32 36, float %2287, float %3506)  ; FMin(a,b)
  %3515 = fmul fast float %3514, %3508
  %3516 = fsub fast float 1.000000e+00, %3515
  %3517 = bitcast float %3516 to i32
  %3518 = sub nsw i32 2129859010, %3517
  %3519 = bitcast i32 %3518 to float
  %3520 = call float @dx.op.binary.f32(i32 36, float %2288, float %3506)  ; FMin(a,b)
  %3521 = fmul fast float %3520, %3508
  %3522 = fsub fast float 1.000000e+00, %3521
  %3523 = bitcast float %3522 to i32
  %3524 = sub nsw i32 2129859010, %3523
  %3525 = bitcast i32 %3524 to float
  %3526 = fmul fast float %3502, %2309
  %3527 = fmul fast float %3526, %3513
  %3528 = fmul fast float %3503, %2309
  %3529 = fmul fast float %3528, %3519
  %3530 = fmul fast float %3504, %2309
  %3531 = fmul fast float %3530, %3525
  %3532 = call float @dx.op.binary.f32(i32 36, float %2289, float %3506)  ; FMin(a,b)
  %3533 = fmul fast float %3532, %3508
  %3534 = fsub fast float 1.000000e+00, %3533
  %3535 = bitcast float %3534 to i32
  %3536 = sub nsw i32 2129859010, %3535
  %3537 = bitcast i32 %3536 to float
  %3538 = call float @dx.op.binary.f32(i32 36, float %2290, float %3506)  ; FMin(a,b)
  %3539 = fmul fast float %3538, %3508
  %3540 = fsub fast float 1.000000e+00, %3539
  %3541 = bitcast float %3540 to i32
  %3542 = sub nsw i32 2129859010, %3541
  %3543 = bitcast i32 %3542 to float
  %3544 = call float @dx.op.binary.f32(i32 36, float %2298, float %3506)  ; FMin(a,b)
  %3545 = fmul fast float %3544, %3508
  %3546 = fsub fast float 1.000000e+00, %3545
  %3547 = bitcast float %3546 to i32
  %3548 = sub nsw i32 2129859010, %3547
  %3549 = bitcast i32 %3548 to float
  %3550 = fmul fast float %3499, %2309
  %3551 = fmul fast float %3550, %3537
  %3552 = fmul fast float %3500, %2309
  %3553 = fmul fast float %3552, %3543
  %3554 = fmul fast float %3501, %2309
  %3555 = fmul fast float %3554, %3549
  %3556 = call float @dx.op.dot3.f32(i32 55, float %3527, float %3529, float %3531, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3557 = select i1 %229, float 0.000000e+00, float %3527
  %3558 = select i1 %229, float %3556, float %3529
  %3559 = select i1 %229, float 0.000000e+00, float %3531
  %3560 = call float @dx.op.dot3.f32(i32 55, float %3551, float %3553, float %3555, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3561 = select i1 %229, float 0.000000e+00, float %3551
  %3562 = select i1 %229, float %3560, float %3553
  %3563 = select i1 %229, float 0.000000e+00, float %3555
  %3564 = fmul fast float %1116, %1116
  %3565 = call float @dx.op.unary.f32(i32 7, float %3564)  ; Saturate(value)
  %3566 = fmul fast float %2300, 9.843750e-01
  %3567 = fmul fast float %2295, 9.843750e-01
  %3568 = fadd fast float %3566, 7.812500e-03
  %3569 = fadd fast float %3567, 7.812500e-03
  %3570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %3568, float %3569, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3571 = extractvalue %dx.types.ResRet.f32 %3570, 0
  %3572 = extractvalue %dx.types.ResRet.f32 %3570, 1
  %3573 = extractvalue %dx.types.ResRet.f32 %3570, 2
  %3574 = extractvalue %dx.types.ResRet.f32 %3570, 3
  %3575 = fsub fast float 1.000000e+00, %3565
  %3576 = fsub fast float %3573, %3571
  %3577 = fsub fast float %3574, %3572
  %3578 = fmul fast float %3576, %3575
  %3579 = fmul fast float %3577, %3575
  %3580 = fadd fast float %3578, %3571
  %3581 = fadd fast float %3579, %3572
  %3582 = fmul fast float %3580, %2289
  %3583 = fmul fast float %3580, %2290
  %3584 = fmul fast float %3580, %2298
  %3585 = fadd fast float %3582, %3581
  %3586 = fadd fast float %3583, %3581
  %3587 = fadd fast float %3584, %3581
  %3588 = fcmp fast ogt float %1660, 0.000000e+00
  br i1 %3588, label %3589, label %3615

; <label>:3589                                    ; preds = %3498
  %3590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1660, float %2300, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3591 = extractvalue %dx.types.ResRet.f32 %3590, 0
  %3592 = extractvalue %dx.types.ResRet.f32 %3590, 1
  %3593 = extractvalue %dx.types.ResRet.f32 %3590, 2
  %3594 = fadd fast float %3591, -5.000000e-01
  %3595 = fadd fast float %3592, -5.000000e-01
  %3596 = fadd fast float %3593, -5.000000e-01
  %3597 = fsub fast float 1.000000e+00, %2289
  %3598 = fsub fast float 1.000000e+00, %2290
  %3599 = fsub fast float 1.000000e+00, %2298
  %3600 = fmul fast float %2289, 4.000000e+00
  %3601 = fmul fast float %3600, %3597
  %3602 = fmul fast float %3601, %3594
  %3603 = fmul fast float %2290, 4.000000e+00
  %3604 = fmul fast float %3603, %3598
  %3605 = fmul fast float %3604, %3595
  %3606 = fmul fast float %2298, 4.000000e+00
  %3607 = fmul fast float %3606, %3599
  %3608 = fmul fast float %3607, %3596
  %3609 = fadd fast float %3602, %3585
  %3610 = fadd fast float %3605, %3586
  %3611 = fadd fast float %3608, %3587
  %3612 = call float @dx.op.unary.f32(i32 7, float %3609)  ; Saturate(value)
  %3613 = call float @dx.op.unary.f32(i32 7, float %3610)  ; Saturate(value)
  %3614 = call float @dx.op.unary.f32(i32 7, float %3611)  ; Saturate(value)
  br label %3615

; <label>:3615                                    ; preds = %3589, %3498
  %3616 = phi float [ %3612, %3589 ], [ %3585, %3498 ]
  %3617 = phi float [ %3613, %3589 ], [ %3586, %3498 ]
  %3618 = phi float [ %3614, %3589 ], [ %3587, %3498 ]
  %3619 = call float @dx.op.binary.f32(i32 35, float %3617, float %3618)  ; FMax(a,b)
  %3620 = call float @dx.op.binary.f32(i32 35, float %3616, float %3619)  ; FMax(a,b)
  %3621 = fsub fast float 1.000000e+00, %3620
  %3622 = fmul fast float %3621, %3557
  %3623 = fmul fast float %3621, %3558
  %3624 = fmul fast float %3621, %3559
  %3625 = call float @dx.op.dot3.f32(i32 55, float %2286, float %2287, float %2288, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3626 = fcmp fast ogt float %3625, 0x3E7FF19E20000000
  %3627 = fdiv fast float 1.000000e+00, %3625
  %3628 = select i1 %3626, float %3627, float 0.000000e+00
  %3629 = fmul fast float %3628, %2286
  %3630 = fmul fast float %3628, %2287
  %3631 = fmul fast float %3628, %2288
  %3632 = fadd fast float %3629, -1.000000e+00
  %3633 = fadd fast float %3630, -1.000000e+00
  %3634 = fadd fast float %3631, -1.000000e+00
  %3635 = fmul fast float %3632, 5.000000e-01
  %3636 = fmul fast float %3633, 5.000000e-01
  %3637 = fmul fast float %3634, 5.000000e-01
  %3638 = fadd fast float %3635, 1.000000e+00
  %3639 = fadd fast float %3636, 1.000000e+00
  %3640 = fadd fast float %3637, 1.000000e+00
  %3641 = call float @dx.op.binary.f32(i32 35, float %2300, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3642 = fdiv fast float %1116, %3641
  %3643 = fcmp fast olt float %1708, 1.270000e+02
  %3644 = fcmp fast olt float %1709, 1.270000e+02
  %3645 = fcmp fast olt float %1710, 1.270000e+02
  %3646 = fmul fast float %1708, 0xBFF7154760000000
  %3647 = fmul fast float %3646, %3642
  %3648 = fmul fast float %1709, 0xBFF7154760000000
  %3649 = fmul fast float %3648, %3642
  %3650 = fmul fast float %1710, 0xBFF7154760000000
  %3651 = fmul fast float %3650, %3642
  %3652 = call float @dx.op.unary.f32(i32 21, float %3647)  ; Exp(value)
  %3653 = call float @dx.op.unary.f32(i32 21, float %3649)  ; Exp(value)
  %3654 = call float @dx.op.unary.f32(i32 21, float %3651)  ; Exp(value)
  %3655 = call float @dx.op.unary.f32(i32 7, float %3652)  ; Saturate(value)
  %3656 = call float @dx.op.unary.f32(i32 7, float %3653)  ; Saturate(value)
  %3657 = call float @dx.op.unary.f32(i32 7, float %3654)  ; Saturate(value)
  %3658 = select i1 %3643, float %3655, float 0.000000e+00
  %3659 = select i1 %3644, float %3656, float 0.000000e+00
  %3660 = select i1 %3645, float %3657, float 0.000000e+00
  %3661 = fmul fast float %3658, %3621
  %3662 = fmul fast float %3659, %3621
  %3663 = fmul fast float %3660, %3621
  %3664 = fadd fast float %3661, -1.000000e+00
  %3665 = fadd fast float %3662, -1.000000e+00
  %3666 = fadd fast float %3663, -1.000000e+00
  %3667 = fmul fast float %3616, %3561
  %3668 = fmul fast float %3617, %3562
  %3669 = fmul fast float %3618, %3563
  %3670 = fsub fast float 1.000000e+00, %2300
  %3671 = bitcast float %3670 to i32
  %3672 = sitofp i32 %3671 to float
  %3673 = fmul fast float %3672, 5.000000e+00
  %3674 = fadd fast float %3673, 0xC1EFBF8940000000
  %3675 = fptosi float %3674 to i32
  %3676 = bitcast i32 %3675 to float
  %3677 = fmul fast float %3676, %1659
  %3678 = fmul fast float %3557, %3677
  %3679 = fmul fast float %3678, %3621
  %3680 = fmul fast float %3679, %3638
  %3681 = fmul fast float %3558, %3677
  %3682 = fmul fast float %3681, %3621
  %3683 = fmul fast float %3682, %3639
  %3684 = fmul fast float %3559, %3677
  %3685 = fmul fast float %3684, %3621
  %3686 = fmul fast float %3685, %3640
  %3687 = fmul fast float %3622, %1680
  %3688 = fmul fast float %3623, %1680
  %3689 = fmul fast float %3624, %1680
  %3690 = fadd fast float %3667, %1661
  %3691 = fadd fast float %3690, %3680
  %3692 = fmul fast float %3691, %1680
  %3693 = fadd fast float %3668, %1662
  %3694 = fadd fast float %3693, %3683
  %3695 = fmul fast float %3694, %1680
  %3696 = fadd fast float %3669, %1663
  %3697 = fadd fast float %3696, %3686
  %3698 = fmul fast float %3697, %1680
  %3699 = bitcast i32 %2312 to float
  %3700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3701 = extractvalue %dx.types.CBufRet.f32 %3700, 3
  %3702 = fcmp fast oeq float %3701, 0.000000e+00
  br i1 %3702, label %4778, label %3703

; <label>:3703                                    ; preds = %3615
  %3704 = extractvalue %dx.types.CBufRet.f32 %3700, 0
  %3705 = extractvalue %dx.types.CBufRet.f32 %3700, 1
  %3706 = extractvalue %dx.types.CBufRet.f32 %3700, 2
  %3707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3708 = extractvalue %dx.types.CBufRet.f32 %3707, 0
  %3709 = extractvalue %dx.types.CBufRet.f32 %3707, 1
  %3710 = extractvalue %dx.types.CBufRet.f32 %3707, 2
  %3711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3712 = extractvalue %dx.types.CBufRet.f32 %3711, 0
  %3713 = extractvalue %dx.types.CBufRet.f32 %3711, 1
  %3714 = call float @dx.op.dot3.f32(i32 55, float %3708, float %3709, float %3710, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3715 = select i1 %229, float %3712, float %3708
  %3716 = select i1 %229, float %3714, float %3709
  %3717 = select i1 %229, float %3713, float %3710
  %3718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3719 = extractvalue %dx.types.CBufRet.f32 %3718, 2
  %3720 = fmul fast float %3719, %70
  %3721 = fmul fast float %3719, %71
  %3722 = fmul fast float %3719, %72
  %3723 = fadd fast float %3720, %138
  %3724 = fadd fast float %3721, %139
  %3725 = fadd fast float %3722, %140
  %3726 = fcmp fast olt float %3701, 0.000000e+00
  br i1 %3726, label %4348, label %3727

; <label>:3727                                    ; preds = %3703
  %3728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3729 = extractvalue %dx.types.CBufRet.f32 %3728, 0
  %3730 = extractvalue %dx.types.CBufRet.f32 %3728, 1
  %3731 = extractvalue %dx.types.CBufRet.f32 %3728, 2
  %3732 = extractvalue %dx.types.CBufRet.f32 %3728, 3
  %3733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3734 = extractvalue %dx.types.CBufRet.f32 %3733, 0
  %3735 = extractvalue %dx.types.CBufRet.f32 %3733, 1
  %3736 = extractvalue %dx.types.CBufRet.f32 %3733, 2
  %3737 = extractvalue %dx.types.CBufRet.f32 %3733, 3
  %3738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3739 = extractvalue %dx.types.CBufRet.f32 %3738, 0
  %3740 = extractvalue %dx.types.CBufRet.f32 %3738, 1
  %3741 = extractvalue %dx.types.CBufRet.f32 %3738, 2
  %3742 = extractvalue %dx.types.CBufRet.f32 %3738, 3
  %3743 = fmul fast float %3729, %3723
  %3744 = call float @dx.op.tertiary.f32(i32 46, float %3724, float %3730, float %3743)  ; FMad(a,b,c)
  %3745 = call float @dx.op.tertiary.f32(i32 46, float %3725, float %3731, float %3744)  ; FMad(a,b,c)
  %3746 = fadd fast float %3745, %3732
  %3747 = fmul fast float %3734, %3723
  %3748 = call float @dx.op.tertiary.f32(i32 46, float %3724, float %3735, float %3747)  ; FMad(a,b,c)
  %3749 = call float @dx.op.tertiary.f32(i32 46, float %3725, float %3736, float %3748)  ; FMad(a,b,c)
  %3750 = fadd fast float %3749, %3737
  %3751 = fmul fast float %3739, %3723
  %3752 = call float @dx.op.tertiary.f32(i32 46, float %3724, float %3740, float %3751)  ; FMad(a,b,c)
  %3753 = call float @dx.op.tertiary.f32(i32 46, float %3725, float %3741, float %3752)  ; FMad(a,b,c)
  %3754 = fadd fast float %3753, %3742
  %3755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3756 = extractvalue %dx.types.CBufRet.f32 %3755, 0
  %3757 = extractvalue %dx.types.CBufRet.f32 %3755, 1
  %3758 = extractvalue %dx.types.CBufRet.f32 %3755, 3
  %3759 = fmul fast float %3758, %3746
  %3760 = fmul fast float %3758, %3750
  %3761 = fadd fast float %3759, %3756
  %3762 = fadd fast float %3760, %3757
  %3763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3764 = extractvalue %dx.types.CBufRet.f32 %3763, 0
  %3765 = extractvalue %dx.types.CBufRet.f32 %3763, 1
  %3766 = extractvalue %dx.types.CBufRet.f32 %3763, 3
  %3767 = fmul fast float %3766, %3746
  %3768 = fmul fast float %3766, %3750
  %3769 = fadd fast float %3767, %3764
  %3770 = fadd fast float %3768, %3765
  %3771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3772 = extractvalue %dx.types.CBufRet.f32 %3771, 1
  %3773 = fsub fast float %3772, %3754
  %3774 = extractvalue %dx.types.CBufRet.f32 %3771, 2
  %3775 = fmul fast float %3773, %3774
  %3776 = fsub fast float 1.000000e+00, %3775
  %3777 = call float @dx.op.unary.f32(i32 7, float %3776)  ; Saturate(value)
  %3778 = extractvalue %dx.types.CBufRet.f32 %3763, 2
  %3779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3780 = extractvalue %dx.types.CBufRet.f32 %3779, 2
  %3781 = fadd fast float %3780, %3778
  %3782 = fcmp fast ogt float %3781, 0.000000e+00
  br i1 %3782, label %3783, label %3807

; <label>:3783                                    ; preds = %3727
  %3784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3785 = extractvalue %dx.types.CBufRet.f32 %3784, 0
  %3786 = extractvalue %dx.types.CBufRet.f32 %3784, 1
  %3787 = fsub fast float %3769, %3785
  %3788 = fsub fast float %3770, %3786
  %3789 = fcmp fast olt float %3787, 0.000000e+00
  %3790 = fcmp fast olt float %3788, 0.000000e+00
  %3791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3792 = extractvalue %dx.types.CBufRet.f32 %3791, 0
  %3793 = extractvalue %dx.types.CBufRet.f32 %3791, 1
  %3794 = extractvalue %dx.types.CBufRet.f32 %3791, 2
  %3795 = extractvalue %dx.types.CBufRet.f32 %3791, 3
  %3796 = select i1 %3789, float %3792, float %3794
  %3797 = select i1 %3790, float %3793, float %3795
  %3798 = fmul fast float %3796, %3787
  %3799 = fmul fast float %3797, %3788
  %3800 = call float @dx.op.unary.f32(i32 6, float %3798)  ; FAbs(value)
  %3801 = call float @dx.op.unary.f32(i32 6, float %3799)  ; FAbs(value)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3718, 0
  %3803 = call float @dx.op.binary.f32(i32 35, float %3800, float %3801)  ; FMax(a,b)
  %3804 = fsub fast float %3802, %3803
  %3805 = call float @dx.op.unary.f32(i32 7, float %3804)  ; Saturate(value)
  %3806 = fmul fast float %3805, %3777
  br label %3807

; <label>:3807                                    ; preds = %3783, %3727
  %3808 = phi float [ %3806, %3783 ], [ 0.000000e+00, %3727 ]
  %3809 = extractvalue %dx.types.CBufRet.f32 %3755, 2
  %3810 = extractvalue %dx.types.CBufRet.f32 %3779, 1
  %3811 = fadd fast float %3810, %3809
  %3812 = fcmp fast ogt float %3811, 0.000000e+00
  %3813 = extractvalue %dx.types.CBufRet.f32 %3718, 0
  br i1 %3812, label %3814, label %3837

; <label>:3814                                    ; preds = %3807
  %3815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3816 = extractvalue %dx.types.CBufRet.f32 %3815, 0
  %3817 = extractvalue %dx.types.CBufRet.f32 %3815, 1
  %3818 = fsub fast float %3761, %3816
  %3819 = fsub fast float %3762, %3817
  %3820 = fcmp fast olt float %3818, 0.000000e+00
  %3821 = fcmp fast olt float %3819, 0.000000e+00
  %3822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3823 = extractvalue %dx.types.CBufRet.f32 %3822, 0
  %3824 = extractvalue %dx.types.CBufRet.f32 %3822, 1
  %3825 = extractvalue %dx.types.CBufRet.f32 %3822, 2
  %3826 = extractvalue %dx.types.CBufRet.f32 %3822, 3
  %3827 = select i1 %3820, float %3823, float %3825
  %3828 = select i1 %3821, float %3824, float %3826
  %3829 = fmul fast float %3827, %3818
  %3830 = fmul fast float %3828, %3819
  %3831 = call float @dx.op.unary.f32(i32 6, float %3829)  ; FAbs(value)
  %3832 = call float @dx.op.unary.f32(i32 6, float %3830)  ; FAbs(value)
  %3833 = call float @dx.op.binary.f32(i32 35, float %3831, float %3832)  ; FMax(a,b)
  %3834 = fsub fast float %3813, %3833
  %3835 = call float @dx.op.unary.f32(i32 7, float %3834)  ; Saturate(value)
  %3836 = fmul fast float %3835, %3777
  br label %3837

; <label>:3837                                    ; preds = %3814, %3807
  %3838 = phi float [ %3836, %3814 ], [ 0.000000e+00, %3807 ]
  %3839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3840 = extractvalue %dx.types.CBufRet.f32 %3839, 1
  %3841 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3843 = extractvalue %dx.types.CBufRet.f32 %3842, 0
  %3844 = extractvalue %dx.types.CBufRet.f32 %3842, 1
  %3845 = fsub fast float %3746, %3843
  %3846 = fsub fast float %3750, %3844
  %3847 = fcmp fast olt float %3845, 0.000000e+00
  %3848 = fcmp fast olt float %3846, 0.000000e+00
  %3849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3850 = extractvalue %dx.types.CBufRet.f32 %3849, 0
  %3851 = extractvalue %dx.types.CBufRet.f32 %3849, 1
  %3852 = extractvalue %dx.types.CBufRet.f32 %3849, 2
  %3853 = extractvalue %dx.types.CBufRet.f32 %3849, 3
  %3854 = select i1 %3847, float %3850, float %3852
  %3855 = select i1 %3848, float %3851, float %3853
  %3856 = fmul fast float %3854, %3845
  %3857 = fmul fast float %3855, %3846
  %3858 = call float @dx.op.unary.f32(i32 6, float %3856)  ; FAbs(value)
  %3859 = call float @dx.op.unary.f32(i32 6, float %3857)  ; FAbs(value)
  %3860 = call float @dx.op.binary.f32(i32 35, float %3858, float %3859)  ; FMax(a,b)
  %3861 = fsub fast float %3813, %3860
  %3862 = call float @dx.op.unary.f32(i32 7, float %3861)  ; Saturate(value)
  %3863 = call float @dx.op.binary.f32(i32 36, float %3862, float %3841)  ; FMin(a,b)
  %3864 = fmul fast float %3863, %3777
  %3865 = fsub fast float %3838, %3864
  %3866 = fsub fast float %3808, %3838
  %3867 = fsub fast float %3866, %3864
  %3868 = call float @dx.op.binary.f32(i32 35, float %3838, float %3808)  ; FMax(a,b)
  %3869 = call float @dx.op.binary.f32(i32 35, float %3864, float %3868)  ; FMax(a,b)
  %3870 = fcmp fast olt float %3869, 1.000000e+00
  br i1 %3870, label %3871, label %4269, !dx.controlflow.hints !106

; <label>:3871                                    ; preds = %3837
  %3872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3873 = extractvalue %dx.types.CBufRet.f32 %3872, 0
  %3874 = fcmp fast une float %3873, 0.000000e+00
  br i1 %3874, label %3875, label %4269, !dx.controlflow.hints !107

; <label>:3875                                    ; preds = %3871
  %3876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3877 = extractvalue %dx.types.CBufRet.f32 %3876, 0
  %3878 = extractvalue %dx.types.CBufRet.f32 %3876, 1
  %3879 = extractvalue %dx.types.CBufRet.f32 %3876, 2
  %3880 = extractvalue %dx.types.CBufRet.f32 %3876, 3
  %3881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3882 = extractvalue %dx.types.CBufRet.f32 %3881, 0
  %3883 = extractvalue %dx.types.CBufRet.f32 %3881, 1
  %3884 = extractvalue %dx.types.CBufRet.f32 %3881, 2
  %3885 = extractvalue %dx.types.CBufRet.f32 %3881, 3
  %3886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3887 = extractvalue %dx.types.CBufRet.f32 %3886, 0
  %3888 = extractvalue %dx.types.CBufRet.f32 %3886, 1
  %3889 = extractvalue %dx.types.CBufRet.f32 %3886, 2
  %3890 = extractvalue %dx.types.CBufRet.f32 %3886, 3
  %3891 = fmul fast float %3877, %3723
  %3892 = call float @dx.op.tertiary.f32(i32 46, float %3724, float %3878, float %3891)  ; FMad(a,b,c)
  %3893 = call float @dx.op.tertiary.f32(i32 46, float %3725, float %3879, float %3892)  ; FMad(a,b,c)
  %3894 = fadd fast float %3893, %3880
  %3895 = fmul fast float %3882, %3723
  %3896 = call float @dx.op.tertiary.f32(i32 46, float %3724, float %3883, float %3895)  ; FMad(a,b,c)
  %3897 = call float @dx.op.tertiary.f32(i32 46, float %3725, float %3884, float %3896)  ; FMad(a,b,c)
  %3898 = fadd fast float %3897, %3885
  %3899 = fmul fast float %3887, %3723
  %3900 = call float @dx.op.tertiary.f32(i32 46, float %3724, float %3888, float %3899)  ; FMad(a,b,c)
  %3901 = call float @dx.op.tertiary.f32(i32 46, float %3725, float %3889, float %3900)  ; FMad(a,b,c)
  %3902 = fadd fast float %3901, %3890
  %3903 = fcmp fast oge float %3894, 1.000000e+00
  %3904 = fcmp fast oge float %3898, 1.000000e+00
  %3905 = or i1 %3903, %3904
  %3906 = fcmp fast olt float %3894, 0.000000e+00
  %3907 = fcmp fast olt float %3898, 0.000000e+00
  %3908 = or i1 %3906, %3907
  %3909 = or i1 %3905, %3908
  br i1 %3909, label %4269, label %3910, !dx.controlflow.hints !108

; <label>:3910                                    ; preds = %3875
  %3911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3912 = extractvalue %dx.types.CBufRet.f32 %3911, 0
  %3913 = extractvalue %dx.types.CBufRet.f32 %3911, 1
  %3914 = extractvalue %dx.types.CBufRet.f32 %3911, 2
  %3915 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3916 = extractvalue %dx.types.CBufRet.i32 %3915, 2
  %3917 = uitofp i32 %3916 to float
  %3918 = extractvalue %dx.types.CBufRet.i32 %3915, 3
  %3919 = uitofp i32 %3918 to float
  %3920 = extractvalue %dx.types.CBufRet.f32 %3911, 3
  %3921 = fmul fast float %3920, 2.000000e+00
  %3922 = fsub fast float %3894, %3912
  %3923 = fsub fast float %3898, %3913
  %3924 = fmul fast float %3921, %3922
  %3925 = fmul fast float %3921, %3923
  %3926 = fdiv fast float 1.000000e+00, %3706
  %3927 = fmul fast float %3925, %3926
  %3928 = call float @dx.op.unary.f32(i32 6, float %3927)  ; FAbs(value)
  %3929 = fmul fast float %3914, %3725
  %3930 = fmul fast float %3929, %3921
  %3931 = call float @dx.op.unary.f32(i32 6, float %3930)  ; FAbs(value)
  %3932 = call float @dx.op.unary.f32(i32 6, float %3924)  ; FAbs(value)
  %3933 = call float @dx.op.binary.f32(i32 35, float %3931, float %3928)  ; FMax(a,b)
  %3934 = call float @dx.op.binary.f32(i32 35, float %3932, float %3933)  ; FMax(a,b)
  %3935 = fmul fast float %3934, 2.000000e+00
  %3936 = call float @dx.op.unary.f32(i32 23, float %3935)  ; Log(value)
  %3937 = call float @dx.op.binary.f32(i32 35, float %3936, float %3917)  ; FMax(a,b)
  %3938 = call float @dx.op.unary.f32(i32 22, float %3937)  ; Frc(value)
  %3939 = fadd fast float %3938, 0xBFEA666660000000
  %3940 = fmul fast float %3939, 8.000000e+00
  %3941 = call float @dx.op.unary.f32(i32 7, float %3940)  ; Saturate(value)
  %3942 = call float @dx.op.unary.f32(i32 27, float %3937)  ; Round_ni(value)
  %3943 = fadd fast float %3942, %3941
  %3944 = call float @dx.op.binary.f32(i32 36, float %3943, float %3919)  ; FMin(a,b)
  %3945 = call float @dx.op.unary.f32(i32 27, float %3944)  ; Round_ni(value)
  %3946 = fsub fast float -0.000000e+00, %3945
  %3947 = call float @dx.op.unary.f32(i32 21, float %3946)  ; Exp(value)
  %3948 = fmul fast float %3947, %3921
  %3949 = fmul fast float %3948, %3894
  %3950 = fmul fast float %3948, %3898
  %3951 = fmul fast float %3949, 2.500000e-01
  %3952 = fmul fast float %3950, 2.500000e-01
  %3953 = fadd fast float %3951, 5.000000e-01
  %3954 = fadd fast float %3952, 5.000000e-01
  %3955 = fsub fast float %3919, %3917
  %3956 = fptoui float %3955 to i32
  %3957 = add i32 %3956, 320
  %3958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %3957)  ; CBufferLoadLegacy(handle,regIndex)
  %3959 = extractvalue %dx.types.CBufRet.f32 %3958, 0
  %3960 = extractvalue %dx.types.CBufRet.f32 %3958, 1
  %3961 = fcmp fast une float %3944, %3919
  %3962 = fsub fast float %3894, %3959
  %3963 = fsub fast float %3898, %3960
  %3964 = call float @dx.op.unary.f32(i32 6, float %3962)  ; FAbs(value)
  %3965 = call float @dx.op.unary.f32(i32 6, float %3963)  ; FAbs(value)
  %3966 = fmul fast float %3964, %3948
  %3967 = fmul fast float %3965, %3948
  %3968 = fcmp fast olt float %3966, 1.000000e+00
  %3969 = fcmp fast olt float %3967, 1.000000e+00
  %3970 = and i1 %3968, %3969
  %3971 = or i1 %3961, %3970
  br i1 %3971, label %3972, label %4269, !dx.controlflow.hints !109

; <label>:3972                                    ; preds = %3910
  %3973 = fmul fast float %3950, 5.000000e-01
  %3974 = fmul fast float %3949, 5.000000e-01
  %3975 = fadd fast float %3973, 5.000000e-01
  %3976 = fadd fast float %3974, 5.000000e-01
  %3977 = sitofp i32 %3916 to float
  %3978 = fsub fast float %3944, %3977
  %3979 = call float @dx.op.unary.f32(i32 27, float %3978)  ; Round_ni(value)
  %3980 = call float @dx.op.unary.f32(i32 22, float %3944)  ; Frc(value)
  %3981 = call float @dx.op.unary.f32(i32 22, float %3976)  ; Frc(value)
  %3982 = call float @dx.op.unary.f32(i32 22, float %3975)  ; Frc(value)
  %3983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %3981, float %3982, float %3979, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3984 = extractvalue %dx.types.ResRet.f32 %3983, 0
  %3985 = extractvalue %dx.types.ResRet.f32 %3983, 1
  %3986 = extractvalue %dx.types.ResRet.f32 %3983, 2
  %3987 = extractvalue %dx.types.ResRet.f32 %3983, 3
  %3988 = fcmp fast ogt float %3980, 0.000000e+00
  br i1 %3988, label %3989, label %4010, !dx.controlflow.hints !110

; <label>:3989                                    ; preds = %3972
  %3990 = fadd fast float %3979, 1.000000e+00
  %3991 = call float @dx.op.unary.f32(i32 22, float %3953)  ; Frc(value)
  %3992 = call float @dx.op.unary.f32(i32 22, float %3954)  ; Frc(value)
  %3993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %3991, float %3992, float %3990, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3994 = extractvalue %dx.types.ResRet.f32 %3993, 0
  %3995 = extractvalue %dx.types.ResRet.f32 %3993, 1
  %3996 = extractvalue %dx.types.ResRet.f32 %3993, 2
  %3997 = extractvalue %dx.types.ResRet.f32 %3993, 3
  %3998 = fsub fast float %3994, %3984
  %3999 = fsub fast float %3995, %3985
  %4000 = fsub fast float %3996, %3986
  %4001 = fsub fast float %3997, %3987
  %4002 = fmul fast float %3998, %3980
  %4003 = fmul fast float %3999, %3980
  %4004 = fmul fast float %4000, %3980
  %4005 = fmul fast float %4001, %3980
  %4006 = fadd fast float %4002, %3984
  %4007 = fadd fast float %4003, %3985
  %4008 = fadd fast float %4004, %3986
  %4009 = fadd fast float %4005, %3987
  br label %4010

; <label>:4010                                    ; preds = %3989, %3972
  %4011 = phi float [ %4006, %3989 ], [ %3984, %3972 ]
  %4012 = phi float [ %4007, %3989 ], [ %3985, %3972 ]
  %4013 = phi float [ %4008, %3989 ], [ %3986, %3972 ]
  %4014 = phi float [ %4009, %3989 ], [ %3987, %3972 ]
  %4015 = fadd fast float %4011, -5.000000e-01
  %4016 = fadd fast float %4013, -5.000000e-01
  %4017 = fmul fast float %4015, 0xBFD5555560000000
  %4018 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4016, float %4017)  ; FMad(a,b,c)
  %4019 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4012, float 0.000000e+00)  ; FMad(a,b,c)
  %4020 = fadd fast float %4019, %4014
  %4021 = fmul fast float %4015, -7.500000e-01
  %4022 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4016, float %4021)  ; FMad(a,b,c)
  %4023 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4012, float 0.000000e+00)  ; FMad(a,b,c)
  %4024 = fadd fast float %4023, %4014
  %4025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.f32 %4025, 0
  %4027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4028 = extractvalue %dx.types.CBufRet.f32 %4027, 0
  %4029 = extractvalue %dx.types.CBufRet.f32 %4027, 1
  %4030 = extractvalue %dx.types.CBufRet.f32 %4027, 2
  %4031 = extractvalue %dx.types.CBufRet.f32 %4027, 3
  %4032 = fsub fast float %4028, %4018
  %4033 = fsub fast float %4029, %4020
  %4034 = fsub fast float %4030, %4022
  %4035 = fsub fast float %4031, %4024
  %4036 = fmul fast float %4032, %4026
  %4037 = fmul fast float %4033, %4026
  %4038 = fmul fast float %4034, %4026
  %4039 = fmul fast float %4035, %4026
  %4040 = fadd fast float %4036, %4018
  %4041 = fadd fast float %4037, %4020
  %4042 = fadd fast float %4038, %4022
  %4043 = fadd fast float %4039, %4024
  %4044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4045 = extractvalue %dx.types.ResRet.i32 %4044, 0
  %4046 = and i32 %4045, 536870911
  %4047 = uitofp i32 %4046 to float
  %4048 = fmul fast float %4047, %3894
  %4049 = fmul fast float %4047, %3898
  %4050 = fptoui float %4048 to i32
  %4051 = fptoui float %4049 to i32
  %4052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4053 = extractvalue %dx.types.ResRet.i32 %4052, 0
  %4054 = and i32 %4053, 31
  %4055 = lshr i32 %4050, %4054
  %4056 = lshr i32 %4051, %4054
  %4057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4058 = extractvalue %dx.types.ResRet.i32 %4057, 0
  %4059 = and i32 %4058, 31
  %4060 = shl i32 1, %4059
  %4061 = call i32 @dx.op.binary.i32(i32 40, i32 %4060, i32 4)  ; UMin(a,b)
  %4062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4063 = extractvalue %dx.types.ResRet.i32 %4062, 0
  %4064 = extractvalue %dx.types.ResRet.i32 %4062, 1
  %4065 = icmp eq i32 %4061, 0
  br i1 %4065, label %4107, label %4066

; <label>:4066                                    ; preds = %4010
  br label %4067

; <label>:4067                                    ; preds = %4095, %4066
  %4068 = phi i32 [ %4098, %4095 ], [ 0, %4066 ]
  %4069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4070 = extractvalue %dx.types.ResRet.i32 %4069, 0
  %4071 = lshr i32 %4070, 16
  %4072 = and i32 %4071, 31
  %4073 = shl i32 %4056, %4072
  %4074 = add i32 %4073, %4055
  %4075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4076 = extractvalue %dx.types.ResRet.i32 %4075, 0
  %4077 = and i32 %4076, 31
  %4078 = shl i32 %4074, %4077
  %4079 = add i32 %4078, %4068
  %4080 = shl i32 %4079, 2
  %4081 = add i32 %4080, 32
  %4082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4081, i32 undef)  ; BufferLoad(srv,index,wot)
  %4083 = extractvalue %dx.types.ResRet.i32 %4082, 0
  %4084 = icmp slt i32 %4083, 0
  %4085 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4068
  %4086 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %4068
  %4087 = bitcast float* %4085 to i32*
  %4088 = bitcast float* %4086 to i32*
  br i1 %4084, label %4089, label %4095

; <label>:4089                                    ; preds = %4067
  %4090 = and i32 %4083, 1073741823
  %4091 = add nuw nsw i32 %4090, 20
  %4092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4091, i32 undef)  ; BufferLoad(srv,index,wot)
  %4093 = extractvalue %dx.types.ResRet.i32 %4092, 0
  %4094 = extractvalue %dx.types.ResRet.i32 %4092, 1
  br label %4095

; <label>:4095                                    ; preds = %4089, %4067
  %4096 = phi i32 [ %4093, %4089 ], [ %4063, %4067 ]
  %4097 = phi i32 [ %4094, %4089 ], [ %4064, %4067 ]
  store i32 %4096, i32* %4087, align 4
  store i32 %4097, i32* %4088, align 4
  %4098 = add nuw i32 %4068, 1
  %4099 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4100 = extractvalue %dx.types.CBufRet.i32 %4099, 2
  %4101 = icmp eq i32 %4100, 0
  %4102 = icmp ugt i32 %4083, -1073741825
  %4103 = and i1 %4102, %4101
  %4104 = icmp ult i32 %4098, %4061
  %4105 = and i1 %4103, %4104
  br i1 %4105, label %4067, label %4106

; <label>:4106                                    ; preds = %4095
  br label %4107

; <label>:4107                                    ; preds = %4106, %4010
  %4108 = phi i32 [ 0, %4010 ], [ %4098, %4106 ]
  %4109 = extractvalue %dx.types.CBufRet.f32 %3872, 2
  %4110 = fptoui float %4109 to i32
  %4111 = icmp eq i32 %4110, 0
  br i1 %4111, label %4163, label %4112

; <label>:4112                                    ; preds = %4107
  br label %4113

; <label>:4113                                    ; preds = %4158, %4112
  %4114 = phi i32 [ %4159, %4158 ], [ %4108, %4112 ]
  %4115 = phi i32 [ %4160, %4158 ], [ 0, %4112 ]
  %4116 = lshr i32 %4115, 2
  %4117 = and i32 %4115, 3
  %4118 = add nuw nsw i32 %4116, 83
  %4119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 %4118)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.i32 %4119, 0
  %4121 = extractvalue %dx.types.CBufRet.i32 %4119, 1
  %4122 = extractvalue %dx.types.CBufRet.i32 %4119, 2
  %4123 = extractvalue %dx.types.CBufRet.i32 %4119, 3
  %4124 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 0
  store i32 %4120, i32* %4124, align 4
  %4125 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 1
  store i32 %4121, i32* %4125, align 4
  %4126 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 2
  store i32 %4122, i32* %4126, align 4
  %4127 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 3
  store i32 %4123, i32* %4127, align 4
  %4128 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 %4117
  %4129 = load i32, i32* %4128, align 4, !tbaa !111, !noalias !115
  %4130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4131 = extractvalue %dx.types.ResRet.i32 %4130, 0
  %4132 = lshr i32 %4131, 16
  %4133 = and i32 %4132, 31
  %4134 = shl i32 %4056, %4133
  %4135 = add i32 %4134, %4055
  %4136 = shl i32 %4135, 2
  %4137 = add i32 %4136, %4129
  %4138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4137, i32 undef)  ; BufferLoad(srv,index,wot)
  %4139 = extractvalue %dx.types.ResRet.i32 %4138, 0
  %4140 = icmp eq i32 %4139, 0
  br i1 %4140, label %4158, label %4141

; <label>:4141                                    ; preds = %4113
  %4142 = icmp slt i32 %4139, 0
  %4143 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4114
  %4144 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %4114
  %4145 = bitcast float* %4143 to i32*
  %4146 = bitcast float* %4144 to i32*
  br i1 %4142, label %4147, label %4154

; <label>:4147                                    ; preds = %4141
  %4148 = and i32 %4139, 1073741823
  %4149 = add i32 %4129, 20
  %4150 = add i32 %4149, %4148
  %4151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4150, i32 undef)  ; BufferLoad(srv,index,wot)
  %4152 = extractvalue %dx.types.ResRet.i32 %4151, 0
  %4153 = extractvalue %dx.types.ResRet.i32 %4151, 1
  br label %4154

; <label>:4154                                    ; preds = %4147, %4141
  %4155 = phi i32 [ %4152, %4147 ], [ %4063, %4141 ]
  %4156 = phi i32 [ %4153, %4147 ], [ %4064, %4141 ]
  store i32 %4155, i32* %4145, align 4
  store i32 %4156, i32* %4146, align 4
  %4157 = add i32 %4114, 1
  br label %4158

; <label>:4158                                    ; preds = %4154, %4113
  %4159 = phi i32 [ %4114, %4113 ], [ %4157, %4154 ]
  %4160 = add nuw i32 %4115, 1
  %4161 = icmp eq i32 %4160, %4110
  br i1 %4161, label %4162, label %4113

; <label>:4162                                    ; preds = %4158
  br label %4163

; <label>:4163                                    ; preds = %4162, %4107
  %4164 = phi i32 [ %4108, %4107 ], [ %4159, %4162 ]
  %4165 = icmp eq i32 %4164, 1
  %4166 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  %4167 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 0
  br i1 %4165, label %4168, label %4171

; <label>:4168                                    ; preds = %4163
  %4169 = load float, float* %4166, align 4
  %4170 = load float, float* %4167, align 4
  br label %4198

; <label>:4171                                    ; preds = %4163
  %4172 = load float, float* %4166, align 4
  %4173 = load float, float* %4167, align 4
  %4174 = fdiv fast float 1.000000e+00, %4173
  %4175 = fsub fast float %4172, %4174
  %4176 = icmp ugt i32 %4164, 1
  br i1 %4176, label %4177, label %4193

; <label>:4177                                    ; preds = %4171
  br label %4178

; <label>:4178                                    ; preds = %4178, %4177
  %4179 = phi float [ %4188, %4178 ], [ %4175, %4177 ]
  %4180 = phi float [ %4189, %4178 ], [ %4172, %4177 ]
  %4181 = phi i32 [ %4190, %4178 ], [ 1, %4177 ]
  %4182 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4181
  %4183 = load float, float* %4182, align 4
  %4184 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %4181
  %4185 = load float, float* %4184, align 4
  %4186 = fdiv fast float 1.000000e+00, %4185
  %4187 = fsub fast float %4183, %4186
  %4188 = call float @dx.op.binary.f32(i32 36, float %4179, float %4187)  ; FMin(a,b)
  %4189 = call float @dx.op.binary.f32(i32 35, float %4180, float %4183)  ; FMax(a,b)
  %4190 = add nuw i32 %4181, 1
  %4191 = icmp eq i32 %4190, %4164
  br i1 %4191, label %4192, label %4178

; <label>:4192                                    ; preds = %4178
  br label %4193

; <label>:4193                                    ; preds = %4192, %4171
  %4194 = phi float [ %4175, %4171 ], [ %4188, %4192 ]
  %4195 = phi float [ %4172, %4171 ], [ %4189, %4192 ]
  %4196 = fsub fast float %4195, %4194
  %4197 = fdiv fast float 1.000000e+00, %4196
  br label %4198

; <label>:4198                                    ; preds = %4193, %4168
  %4199 = phi float [ %4169, %4168 ], [ %4195, %4193 ]
  %4200 = phi float [ %4170, %4168 ], [ %4197, %4193 ]
  %4201 = fadd fast float %3902, %4199
  %4202 = fmul fast float %4201, %4200
  %4203 = call float @dx.op.unary.f32(i32 7, float %4202)  ; Saturate(value)
  %4204 = fmul fast float %4203, 2.000000e+00
  %4205 = fsub fast float 1.000000e+00, %4204
  %4206 = fmul fast float %4040, %4040
  %4207 = fsub fast float %4041, %4206
  %4208 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4207)  ; FMax(a,b)
  %4209 = fdiv fast float 1.000000e+00, %4208
  %4210 = fmul fast float %4041, %4040
  %4211 = fsub fast float %4042, %4210
  %4212 = fsub fast float %4205, %4040
  %4213 = fmul fast float %4205, %4205
  %4214 = fsub fast float %4213, %4041
  %4215 = fmul fast float %4209, %4211
  %4216 = fmul fast float %4215, %4212
  %4217 = fsub fast float %4214, %4216
  %4218 = fmul fast float %4041, %4041
  %4219 = fsub fast float %4043, %4218
  %4220 = fmul fast float %4211, %4211
  %4221 = fmul fast float %4220, %4209
  %4222 = fsub fast float %4219, %4221
  %4223 = fdiv fast float %4217, %4222
  %4224 = fmul fast float %4223, %4211
  %4225 = fsub fast float %4212, %4224
  %4226 = fmul fast float %4225, %4209
  %4227 = fmul fast float %4226, %4040
  %4228 = fsub fast float 1.000000e+00, %4227
  %4229 = fmul fast float %4223, %4041
  %4230 = fsub fast float %4228, %4229
  %4231 = fmul fast float %4226, %4226
  %4232 = fmul fast float %4223, 4.000000e+00
  %4233 = fmul fast float %4232, %4230
  %4234 = fsub fast float %4231, %4233
  %4235 = call float @dx.op.unary.f32(i32 24, float %4234)  ; Sqrt(value)
  %4236 = fcmp fast oge float %4226, 0.000000e+00
  %4237 = fsub fast float -0.000000e+00, %4235
  %4238 = select i1 %4236, float %4237, float %4235
  %4239 = fsub fast float %4238, %4226
  %4240 = fdiv fast float %4239, %4223
  %4241 = fdiv fast float %4230, %4239
  %4242 = fmul fast float %4240, 5.000000e-01
  %4243 = fmul fast float %4241, 2.000000e+00
  %4244 = select i1 %4236, float %4242, float %4243
  %4245 = select i1 %4236, float %4243, float %4242
  %4246 = call float @dx.op.binary.f32(i32 35, float %4244, float %4245)  ; FMax(a,b)
  %4247 = call float @dx.op.binary.f32(i32 36, float %4244, float %4245)  ; FMin(a,b)
  %4248 = fcmp fast ogt float %4205, %4246
  %4249 = fsub fast float %4205, %4247
  %4250 = fsub fast float %4205, %4246
  %4251 = fsub fast float %4246, %4247
  %4252 = select i1 %4248, float %4250, float %4251
  %4253 = fmul float %4249, %4252
  %4254 = select i1 %4248, float %4247, float %4205
  %4255 = fcmp fast ogt float %4205, %4247
  %4256 = fmul fast float %4254, %4246
  %4257 = fadd fast float %4254, %4246
  %4258 = fmul fast float %4257, %4040
  %4259 = fadd fast float %4256, %4041
  %4260 = fsub fast float %4259, %4258
  %4261 = fdiv fast float %4260, %4253
  %4262 = select i1 %4255, float %4261, float 0.000000e+00
  %4263 = fsub fast float 1.000000e+00, %4262
  %4264 = select i1 %4248, float %4263, float %4262
  %4265 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4266 = extractvalue %dx.types.CBufRet.f32 %4025, 3
  %4267 = fmul fast float %4266, %4265
  %4268 = fsub fast float 1.000000e+00, %4267
  br label %4269

; <label>:4269                                    ; preds = %4198, %3910, %3875, %3871, %3837
  %4270 = phi float [ 1.000000e+00, %3837 ], [ %4268, %4198 ], [ 1.000000e+00, %3875 ], [ 1.000000e+00, %3910 ], [ 1.000000e+00, %3871 ]
  %4271 = fcmp fast ogt float %3867, 0.000000e+00
  br i1 %4271, label %4272, label %4278, !dx.controlflow.hints !124

; <label>:4272                                    ; preds = %4269
  %4273 = fadd fast float %3780, %3754
  %4274 = call float @dx.op.binary.f32(i32 35, float %4273, float 0.000000e+00)  ; FMax(a,b)
  %4275 = fadd fast float %4274, 0x3F10000000000000
  %4276 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %3769, float %3770, float undef, float undef, i32 0, i32 0, i32 undef, float %4275)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4277 = extractvalue %dx.types.ResRet.f32 %4276, 0
  br label %4278

; <label>:4278                                    ; preds = %4272, %4269
  %4279 = phi float [ %4277, %4272 ], [ 1.000000e+00, %4269 ]
  %4280 = fcmp fast ogt float %3865, 0.000000e+00
  br i1 %4280, label %4281, label %4287, !dx.controlflow.hints !125

; <label>:4281                                    ; preds = %4278
  %4282 = fadd fast float %3810, %3754
  %4283 = call float @dx.op.binary.f32(i32 35, float %4282, float 0.000000e+00)  ; FMax(a,b)
  %4284 = fadd fast float %4283, 0x3F10000000000000
  %4285 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %3761, float %3762, float undef, float undef, i32 0, i32 0, i32 undef, float %4284)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  br label %4287

; <label>:4287                                    ; preds = %4281, %4278
  %4288 = phi float [ %4286, %4281 ], [ 1.000000e+00, %4278 ]
  %4289 = fcmp fast ogt float %3864, 0.000000e+00
  br i1 %4289, label %4290, label %4297, !dx.controlflow.hints !126

; <label>:4290                                    ; preds = %4287
  %4291 = extractvalue %dx.types.CBufRet.f32 %3779, 0
  %4292 = fadd fast float %4291, %3754
  %4293 = call float @dx.op.binary.f32(i32 35, float %4292, float 0.000000e+00)  ; FMax(a,b)
  %4294 = fadd fast float %4293, 0x3F10000000000000
  %4295 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %3746, float %3750, float undef, float undef, i32 0, i32 0, i32 undef, float %4294)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4296 = extractvalue %dx.types.ResRet.f32 %4295, 0
  br label %4297

; <label>:4297                                    ; preds = %4290, %4287
  %4298 = phi float [ %4296, %4290 ], [ 1.000000e+00, %4287 ]
  %4299 = fsub fast float %4279, %4270
  %4300 = fmul fast float %4299, %3808
  %4301 = fadd fast float %4300, %4270
  %4302 = fsub fast float %4288, %4301
  %4303 = fmul fast float %4302, %3838
  %4304 = fadd fast float %4303, %4301
  %4305 = fsub fast float %4298, %4304
  %4306 = fmul fast float %4305, %3864
  %4307 = fadd fast float %4306, %4304
  %4308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.f32 %4308, 2
  %4310 = fcmp fast ogt float %4309, 0.000000e+00
  br i1 %4310, label %4311, label %4348, !dx.controlflow.hints !127

; <label>:4311                                    ; preds = %4297
  %4312 = fcmp fast ugt float %4309, 0.000000e+00
  br i1 %4312, label %4313, label %4345

; <label>:4313                                    ; preds = %4311
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 0
  %4316 = extractvalue %dx.types.CBufRet.f32 %4314, 1
  %4317 = extractvalue %dx.types.CBufRet.f32 %4314, 2
  %4318 = extractvalue %dx.types.CBufRet.f32 %4314, 3
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 0
  %4321 = extractvalue %dx.types.CBufRet.f32 %4319, 1
  %4322 = extractvalue %dx.types.CBufRet.f32 %4319, 2
  %4323 = extractvalue %dx.types.CBufRet.f32 %4319, 3
  %4324 = extractvalue %dx.types.CBufRet.f32 %4308, 0
  %4325 = extractvalue %dx.types.CBufRet.f32 %4308, 1
  %4326 = extractvalue %dx.types.CBufRet.f32 %2313, 2
  %4327 = fadd fast float %2314, %3723
  %4328 = fadd fast float %2315, %3724
  %4329 = fadd fast float %4326, %3725
  %4330 = fmul fast float %4327, %4315
  %4331 = call float @dx.op.tertiary.f32(i32 46, float %4316, float %4328, float %4330)  ; FMad(a,b,c)
  %4332 = call float @dx.op.tertiary.f32(i32 46, float %4317, float %4329, float %4331)  ; FMad(a,b,c)
  %4333 = fadd fast float %4332, %4318
  %4334 = fmul fast float %4327, %4320
  %4335 = call float @dx.op.tertiary.f32(i32 46, float %4321, float %4328, float %4334)  ; FMad(a,b,c)
  %4336 = call float @dx.op.tertiary.f32(i32 46, float %4322, float %4329, float %4335)  ; FMad(a,b,c)
  %4337 = fadd fast float %4336, %4323
  %4338 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %55, float %4333, float %4337, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4339 = extractvalue %dx.types.ResRet.f32 %4338, 0
  %4340 = fmul fast float %4339, %4325
  %4341 = fadd fast float %4340, %4324
  %4342 = call float @dx.op.unary.f32(i32 7, float %4341)  ; Saturate(value)
  %4343 = fmul fast float %4342, %4309
  %4344 = fsub fast float 1.000000e+00, %4343
  br label %4345

; <label>:4345                                    ; preds = %4313, %4311
  %4346 = phi float [ %4344, %4313 ], [ 1.000000e+00, %4311 ]
  %4347 = fmul fast float %4346, %4307
  br label %4348

; <label>:4348                                    ; preds = %4345, %4297, %3703
  %4349 = phi float [ 1.000000e+00, %3703 ], [ %4347, %4345 ], [ %4307, %4297 ]
  %4350 = call float @dx.op.binary.f32(i32 36, float %4349, float %4349)  ; FMin(a,b)
  %4351 = call float @dx.op.binary.f32(i32 36, float %4349, float %4350)  ; FMin(a,b)
  %4352 = fcmp fast ogt float %4351, 0.000000e+00
  br i1 %4352, label %4353, label %4510, !dx.controlflow.hints !128

; <label>:4353                                    ; preds = %4348
  %4354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4355 = extractvalue %dx.types.CBufRet.f32 %4354, 0
  %4356 = extractvalue %dx.types.CBufRet.f32 %4354, 1
  %4357 = extractvalue %dx.types.CBufRet.f32 %4354, 2
  %4358 = extractvalue %dx.types.CBufRet.f32 %4354, 3
  %4359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4360 = extractvalue %dx.types.CBufRet.f32 %4359, 0
  %4361 = extractvalue %dx.types.CBufRet.f32 %4359, 1
  %4362 = extractvalue %dx.types.CBufRet.f32 %4359, 2
  %4363 = extractvalue %dx.types.CBufRet.f32 %4359, 3
  %4364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4365 = extractvalue %dx.types.CBufRet.f32 %4364, 0
  %4366 = extractvalue %dx.types.CBufRet.f32 %4364, 1
  %4367 = extractvalue %dx.types.CBufRet.f32 %4364, 2
  %4368 = extractvalue %dx.types.CBufRet.f32 %4364, 3
  %4369 = fmul fast float %4355, %3723
  %4370 = call float @dx.op.tertiary.f32(i32 46, float %3724, float %4356, float %4369)  ; FMad(a,b,c)
  %4371 = call float @dx.op.tertiary.f32(i32 46, float %3725, float %4357, float %4370)  ; FMad(a,b,c)
  %4372 = fadd fast float %4371, %4358
  %4373 = fmul fast float %4360, %3723
  %4374 = call float @dx.op.tertiary.f32(i32 46, float %3724, float %4361, float %4373)  ; FMad(a,b,c)
  %4375 = call float @dx.op.tertiary.f32(i32 46, float %3725, float %4362, float %4374)  ; FMad(a,b,c)
  %4376 = fadd fast float %4375, %4363
  %4377 = fmul fast float %4365, %3723
  %4378 = call float @dx.op.tertiary.f32(i32 46, float %3724, float %4366, float %4377)  ; FMad(a,b,c)
  %4379 = call float @dx.op.tertiary.f32(i32 46, float %3725, float %4367, float %4378)  ; FMad(a,b,c)
  %4380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.f32 %4380, 0
  %4382 = extractvalue %dx.types.CBufRet.f32 %4380, 1
  %4383 = extractvalue %dx.types.CBufRet.f32 %4380, 3
  %4384 = fmul fast float %4383, %4372
  %4385 = fmul fast float %4383, %4376
  %4386 = fadd fast float %4384, %4381
  %4387 = fadd fast float %4385, %4382
  %4388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.f32 %4388, 0
  %4390 = extractvalue %dx.types.CBufRet.f32 %4388, 1
  %4391 = fsub fast float %4386, %4389
  %4392 = fsub fast float %4387, %4390
  %4393 = fcmp fast olt float %4391, 0.000000e+00
  %4394 = fcmp fast olt float %4392, 0.000000e+00
  %4395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4396 = extractvalue %dx.types.CBufRet.f32 %4395, 0
  %4397 = extractvalue %dx.types.CBufRet.f32 %4395, 1
  %4398 = extractvalue %dx.types.CBufRet.f32 %4395, 2
  %4399 = extractvalue %dx.types.CBufRet.f32 %4395, 3
  %4400 = select i1 %4393, float %4396, float %4398
  %4401 = select i1 %4394, float %4397, float %4399
  %4402 = fmul fast float %4400, %4391
  %4403 = fmul fast float %4401, %4392
  %4404 = call float @dx.op.unary.f32(i32 6, float %4402)  ; FAbs(value)
  %4405 = call float @dx.op.unary.f32(i32 6, float %4403)  ; FAbs(value)
  %4406 = extractvalue %dx.types.CBufRet.f32 %3718, 0
  %4407 = call float @dx.op.binary.f32(i32 35, float %4404, float %4405)  ; FMax(a,b)
  %4408 = fsub fast float %4406, %4407
  %4409 = call float @dx.op.unary.f32(i32 7, float %4408)  ; Saturate(value)
  %4410 = fcmp fast ogt float %4409, 0.000000e+00
  br i1 %4410, label %4411, label %4452, !dx.controlflow.hints !129

; <label>:4411                                    ; preds = %4353
  %4412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %58, float %4386, float %4387, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4413 = extractvalue %dx.types.ResRet.f32 %4412, 1
  %4414 = fcmp fast ogt float %4413, 0.000000e+00
  br i1 %4414, label %4415, label %4447

; <label>:4415                                    ; preds = %4411
  %4416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %58, float %4386, float %4387, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4417 = extractvalue %dx.types.ResRet.f32 %4416, 0
  %4418 = extractvalue %dx.types.ResRet.f32 %4416, 1
  %4419 = extractvalue %dx.types.ResRet.f32 %4416, 2
  %4420 = extractvalue %dx.types.ResRet.f32 %4416, 3
  %4421 = fsub fast float 1.000000e+00, %4368
  %4422 = fsub fast float %4421, %4379
  %4423 = fmul fast float %4422, 0x400921FB60000000
  %4424 = fadd fast float %4423, 0x3FF921FB60000000
  %4425 = call float @dx.op.unary.f32(i32 13, float %4424)  ; Sin(value)
  %4426 = fadd fast float %4425, -1.000000e+00
  %4427 = fmul fast float %4426, 0x3FD45F3060000000
  %4428 = fmul fast float %4422, 0x401921FB60000000
  %4429 = fadd fast float %4428, 0x400921FB60000000
  %4430 = call float @dx.op.unary.f32(i32 13, float %4429)  ; Sin(value)
  %4431 = fadd fast float %4430, 0x3E7777A5C0000000
  %4432 = fmul fast float %4431, 0x3FC45F3060000000
  %4433 = fmul fast float %4422, 0x4022D97C80000000
  %4434 = fadd fast float %4433, 0x4012D97C80000000
  %4435 = call float @dx.op.unary.f32(i32 13, float %4434)  ; Sin(value)
  %4436 = fadd fast float %4435, 1.000000e+00
  %4437 = fmul fast float %4436, 0x3FBB2995E0000000
  %4438 = fmul fast float %4422, 0x402921FB60000000
  %4439 = fadd fast float %4438, 0x401921FB60000000
  %4440 = call float @dx.op.unary.f32(i32 13, float %4439)  ; Sin(value)
  %4441 = fadd fast float %4440, 0xBE8777A5C0000000
  %4442 = fmul fast float %4441, 0x3FB45F3060000000
  %4443 = call float @dx.op.dot4.f32(i32 56, float %4417, float %4418, float %4419, float %4420, float %4427, float %4432, float %4437, float %4442)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4444 = fmul fast float %4443, 0xBFF7154760000000
  %4445 = call float @dx.op.unary.f32(i32 21, float %4444)  ; Exp(value)
  %4446 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  br label %4447

; <label>:4447                                    ; preds = %4415, %4411
  %4448 = phi float [ %4446, %4415 ], [ 1.000000e+00, %4411 ]
  %4449 = fadd fast float %4448, -1.000000e+00
  %4450 = fmul fast float %4449, %4409
  %4451 = fadd fast float %4450, 1.000000e+00
  br label %4452

; <label>:4452                                    ; preds = %4447, %4353
  %4453 = phi float [ %4451, %4447 ], [ 1.000000e+00, %4353 ]
  %4454 = fmul fast float %4453, %4349
  %4455 = extractvalue %dx.types.CBufRet.f32 %2313, 2
  %4456 = fadd fast float %2314, %138
  %4457 = fadd fast float %2315, %139
  %4458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4459 = extractvalue %dx.types.CBufRet.f32 %4458, 1
  %4460 = fsub fast float -0.000000e+00, %4456
  %4461 = fsub fast float -0.000000e+00, %4457
  %4462 = fsub fast float %2297, %4455
  %4463 = fadd fast float %4462, %4459
  %4464 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4460, float %4461, float %4463)  ; Dot3(ax,ay,az,bx,by,bz)
  %4465 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3704, float %3705, float %3706)  ; Dot3(ax,ay,az,bx,by,bz)
  %4466 = fdiv fast float 1.000000e+00, %4465
  %4467 = fmul fast float %4466, %4464
  %4468 = fmul fast float %3704, %4467
  %4469 = fmul fast float %3705, %4467
  %4470 = fadd fast float %4468, %4456
  %4471 = fadd fast float %4469, %4457
  %4472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4473 = extractvalue %dx.types.CBufRet.f32 %4472, 0
  %4474 = extractvalue %dx.types.CBufRet.f32 %4472, 1
  %4475 = fsub fast float %4470, %4473
  %4476 = fsub fast float %4471, %4474
  %4477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4478 = extractvalue %dx.types.CBufRet.f32 %4477, 2
  %4479 = extractvalue %dx.types.CBufRet.f32 %4477, 3
  %4480 = fmul fast float %4475, %4478
  %4481 = fmul fast float %4476, %4479
  %4482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4483 = extractvalue %dx.types.CBufRet.i32 %4482, 3
  %4484 = icmp eq i32 %4483, 0
  br i1 %4484, label %4490, label %4485

; <label>:4485                                    ; preds = %4452
  %4486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %57, float %4480, float %4481, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4487 = extractvalue %dx.types.ResRet.f32 %4486, 0
  %4488 = extractvalue %dx.types.ResRet.f32 %4486, 1
  %4489 = extractvalue %dx.types.ResRet.f32 %4486, 2
  br label %4495

; <label>:4490                                    ; preds = %4452
  %4491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %58, float %4480, float %4481, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4492 = extractvalue %dx.types.ResRet.f32 %4491, 0
  %4493 = extractvalue %dx.types.ResRet.f32 %4491, 1
  %4494 = extractvalue %dx.types.ResRet.f32 %4491, 2
  br label %4495

; <label>:4495                                    ; preds = %4490, %4485
  %4496 = phi float [ %4487, %4485 ], [ %4492, %4490 ]
  %4497 = phi float [ %4488, %4485 ], [ %4493, %4490 ]
  %4498 = phi float [ %4489, %4485 ], [ %4494, %4490 ]
  %4499 = extractvalue %dx.types.CBufRet.f32 %4458, 2
  %4500 = fmul fast float %4499, %4496
  %4501 = extractvalue %dx.types.CBufRet.f32 %4458, 0
  %4502 = fsub fast float %4467, %4501
  %4503 = fsub fast float %4502, %4500
  %4504 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4503)  ; FMax(a,b)
  %4505 = fmul fast float %4504, %4497
  %4506 = call float @dx.op.binary.f32(i32 36, float %4498, float %4505)  ; FMin(a,b)
  %4507 = fmul fast float %4506, 0xBFF7154760000000
  %4508 = call float @dx.op.unary.f32(i32 21, float %4507)  ; Exp(value)
  %4509 = fmul fast float %4454, %4508
  br label %4510

; <label>:4510                                    ; preds = %4495, %4348
  %4511 = phi float [ %4509, %4495 ], [ %4349, %4348 ]
  %4512 = call float @dx.op.binary.f32(i32 36, float %4511, float %4511)  ; FMin(a,b)
  %4513 = call float @dx.op.binary.f32(i32 36, float %4511, float %4512)  ; FMin(a,b)
  %4514 = fcmp fast ogt float %4513, 0.000000e+00
  br i1 %4514, label %4515, label %4778, !dx.controlflow.hints !130

; <label>:4515                                    ; preds = %4510
  %4516 = fmul fast float %4511, %3715
  %4517 = fmul fast float %4511, %3716
  %4518 = fmul fast float %4511, %3717
  %4519 = fsub fast float %140, %2085
  %4520 = fcmp fast ogt float %4519, 0.000000e+00
  %4521 = fmul fast float %3704, 5.120000e+02
  %4522 = fmul fast float %3705, 5.120000e+02
  %4523 = fmul fast float %3706, 5.120000e+02
  %4524 = fadd fast float %4523, %140
  %4525 = fsub fast float %2085, %4524
  %4526 = fmul fast float %4525, 2.000000e+00
  %4527 = fadd fast float %4526, %4524
  %4528 = select i1 %4520, float %4527, float %4524
  %4529 = fsub fast float %4528, %140
  %4530 = call float @dx.op.dot3.f32(i32 55, float %4521, float %4522, float %4529, float %4521, float %4522, float %4529)  ; Dot3(ax,ay,az,bx,by,bz)
  %4531 = call float @dx.op.unary.f32(i32 25, float %4530)  ; Rsqrt(value)
  %4532 = fmul fast float %4531, %4521
  %4533 = fmul fast float %4531, %4522
  %4534 = fmul fast float %4531, %4529
  %4535 = fsub fast float %2085, %140
  %4536 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4535)  ; Dot3(ax,ay,az,bx,by,bz)
  %4537 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4532, float %4533, float %4534)  ; Dot3(ax,ay,az,bx,by,bz)
  %4538 = fdiv fast float 1.000000e+00, %4537
  %4539 = fmul fast float %4538, %4536
  %4540 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4519, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4541 = fcmp fast ogt float %4540, 0.000000e+00
  %4542 = fcmp fast olt float %4540, 0.000000e+00
  %4543 = zext i1 %4541 to i32
  %4544 = zext i1 %4542 to i32
  %4545 = sub nsw i32 %4543, %4544
  %4546 = sitofp i32 %4545 to float
  %4547 = fsub fast float %4528, %2085
  %4548 = call float @dx.op.dot3.f32(i32 55, float %4521, float %4522, float %4547, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4549 = fcmp fast ogt float %4548, 0.000000e+00
  %4550 = fcmp fast olt float %4548, 0.000000e+00
  %4551 = zext i1 %4549 to i32
  %4552 = zext i1 %4550 to i32
  %4553 = sub nsw i32 %4551, %4552
  %4554 = sitofp i32 %4553 to float
  %4555 = fcmp fast une float %4546, %4554
  br i1 %4555, label %4556, label %4566

; <label>:4556                                    ; preds = %4515
  %4557 = fmul fast float %4539, %4534
  %4558 = fmul fast float %4539, %4533
  %4559 = fmul fast float %4539, %4532
  %4560 = fmul fast float %4559, %4559
  %4561 = fmul fast float %4558, %4558
  %4562 = fadd fast float %4560, %4561
  %4563 = fmul fast float %4557, %4557
  %4564 = fadd fast float %4562, %4563
  %4565 = call float @dx.op.unary.f32(i32 24, float %4564)  ; Sqrt(value)
  br label %4576

; <label>:4566                                    ; preds = %4515
  %4567 = icmp slt i32 %4545, 0
  br i1 %4567, label %4568, label %4576

; <label>:4568                                    ; preds = %4566
  %4569 = fsub fast float %140, %4528
  %4570 = fmul fast float %4521, %4521
  %4571 = fmul fast float %4522, %4522
  %4572 = fadd fast float %4570, %4571
  %4573 = fmul fast float %4569, %4569
  %4574 = fadd fast float %4572, %4573
  %4575 = call float @dx.op.unary.f32(i32 24, float %4574)  ; Sqrt(value)
  br label %4576

; <label>:4576                                    ; preds = %4568, %4566, %4556
  %4577 = phi float [ %4565, %4556 ], [ %4575, %4568 ], [ 0.000000e+00, %4566 ]
  %4578 = fsub fast float -0.000000e+00, %4577
  %4579 = select i1 %4520, float -0.000000e+00, float %4578
  %4580 = fmul fast float %2086, 0x3FF7154760000000
  %4581 = fmul fast float %4580, %4579
  %4582 = fmul fast float %2087, 0x3FF7154760000000
  %4583 = fmul fast float %4582, %4579
  %4584 = fmul fast float %2088, 0x3FF7154760000000
  %4585 = fmul fast float %4584, %4579
  %4586 = call float @dx.op.unary.f32(i32 21, float %4581)  ; Exp(value)
  %4587 = call float @dx.op.unary.f32(i32 21, float %4583)  ; Exp(value)
  %4588 = call float @dx.op.unary.f32(i32 21, float %4585)  ; Exp(value)
  %4589 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4590 = call float @dx.op.unary.f32(i32 7, float %4587)  ; Saturate(value)
  %4591 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4592 = fmul fast float %4516, %4589
  %4593 = fmul fast float %4517, %4590
  %4594 = fmul fast float %4518, %4591
  %4595 = fsub fast float %3704, %2285
  %4596 = fsub fast float %3705, %2284
  %4597 = fsub fast float %3706, %2283
  %4598 = call float @dx.op.dot3.f32(i32 55, float %4595, float %4596, float %4597, float %4595, float %4596, float %4597)  ; Dot3(ax,ay,az,bx,by,bz)
  %4599 = call float @dx.op.unary.f32(i32 25, float %4598)  ; Rsqrt(value)
  %4600 = fmul fast float %4599, %4595
  %4601 = fmul fast float %4599, %4596
  %4602 = fmul fast float %4599, %4597
  %4603 = call float @dx.op.dot3.f32(i32 55, float %3704, float %3705, float %3706, float %2292, float %2293, float %2294)  ; Dot3(ax,ay,az,bx,by,bz)
  %4604 = call float @dx.op.dot3.f32(i32 55, float %2282, float %2281, float %2280, float %4600, float %4601, float %4602)  ; Dot3(ax,ay,az,bx,by,bz)
  %4605 = call float @dx.op.unary.f32(i32 7, float %4603)  ; Saturate(value)
  %4606 = fmul fast float %4605, %4605
  %4607 = fmul fast float %4606, %3699
  %4608 = call float @dx.op.unary.f32(i32 7, float %4607)  ; Saturate(value)
  %4609 = fmul fast float %4608, %4605
  %4610 = call float @dx.op.dot3.f32(i32 55, float %2292, float %2293, float %2294, float %4600, float %4601, float %4602)  ; Dot3(ax,ay,az,bx,by,bz)
  %4611 = fmul fast float %4610, %4610
  %4612 = call float @dx.op.unary.f32(i32 6, float %4603)  ; FAbs(value)
  %4613 = fsub fast float 1.000000e+00, %2295
  %4614 = call float @dx.op.binary.f32(i32 35, float %4613, float 0x3F847AE140000000)  ; FMax(a,b)
  %4615 = fmul fast float %4614, %4614
  %4616 = fmul fast float %4615, %4615
  %4617 = fsub fast float 1.000000e+00, %4616
  %4618 = fmul fast float %2300, %2300
  %4619 = fmul fast float %4618, %4617
  %4620 = fadd fast float %4619, %4616
  %4621 = bitcast float %4620 to i32
  %4622 = ashr i32 %4621, 1
  %4623 = add nsw i32 %4622, 532487669
  %4624 = bitcast i32 %4623 to float
  %4625 = fadd fast float %4624, %2300
  %4626 = fmul fast float %4616, %4611
  %4627 = fsub fast float 1.000000e+00, %4611
  %4628 = fadd fast float %4627, %4626
  %4629 = fmul fast float %4612, %4612
  %4630 = fmul fast float %4629, %4617
  %4631 = fadd fast float %4630, %4616
  %4632 = bitcast float %4631 to i32
  %4633 = ashr i32 %4632, 1
  %4634 = add nsw i32 %4633, 532487669
  %4635 = bitcast i32 %4634 to float
  %4636 = fadd fast float %4635, %4612
  %4637 = fmul fast float %4628, %4628
  %4638 = fmul fast float %4637, %4625
  %4639 = fmul fast float %4638, %4636
  %4640 = fdiv fast float 0x3FF0A00000000000, %4639
  %4641 = fmul fast float %4640, %4616
  %4642 = fmul fast float %3565, 0x3FF9999980000000
  %4643 = fsub fast float 5.000000e+00, %4642
  %4644 = call float @dx.op.unary.f32(i32 6, float %4604)  ; FAbs(value)
  %4645 = fsub fast float 1.000000e+00, %4644
  %4646 = fmul fast float %3565, 0x41D9660740000000
  %4647 = fadd fast float %4646, 0xC1EFBF8940000000
  %4648 = bitcast float %4645 to i32
  %4649 = sitofp i32 %4648 to float
  %4650 = fmul fast float %4649, %4643
  %4651 = fadd fast float %4647, %4650
  %4652 = fptosi float %4651 to i32
  %4653 = bitcast i32 %4652 to float
  %4654 = fsub fast float 1.000000e+00, %2289
  %4655 = fsub fast float 1.000000e+00, %2290
  %4656 = fsub fast float 1.000000e+00, %2298
  %4657 = fmul fast float %4653, %4654
  %4658 = fmul fast float %4653, %4655
  %4659 = fmul fast float %4653, %4656
  %4660 = fadd fast float %4657, %2289
  %4661 = fadd fast float %4658, %2290
  %4662 = fadd fast float %4659, %2298
  br i1 %3588, label %4663, label %4686

; <label>:4663                                    ; preds = %4576
  %4664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1660, float %4644, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4665 = extractvalue %dx.types.ResRet.f32 %4664, 0
  %4666 = extractvalue %dx.types.ResRet.f32 %4664, 1
  %4667 = extractvalue %dx.types.ResRet.f32 %4664, 2
  %4668 = fadd fast float %4665, -5.000000e-01
  %4669 = fadd fast float %4666, -5.000000e-01
  %4670 = fadd fast float %4667, -5.000000e-01
  %4671 = fmul fast float %2289, 4.000000e+00
  %4672 = fmul fast float %4671, %4654
  %4673 = fmul fast float %4672, %4668
  %4674 = fmul fast float %2290, 4.000000e+00
  %4675 = fmul fast float %4674, %4655
  %4676 = fmul fast float %4675, %4669
  %4677 = fmul fast float %2298, 4.000000e+00
  %4678 = fmul fast float %4677, %4656
  %4679 = fmul fast float %4678, %4670
  %4680 = fadd fast float %4673, %4660
  %4681 = fadd fast float %4676, %4661
  %4682 = fadd fast float %4679, %4662
  %4683 = call float @dx.op.unary.f32(i32 7, float %4680)  ; Saturate(value)
  %4684 = call float @dx.op.unary.f32(i32 7, float %4681)  ; Saturate(value)
  %4685 = call float @dx.op.unary.f32(i32 7, float %4682)  ; Saturate(value)
  br label %4686

; <label>:4686                                    ; preds = %4663, %4576
  %4687 = phi float [ %4683, %4663 ], [ %4660, %4576 ]
  %4688 = phi float [ %4684, %4663 ], [ %4661, %4576 ]
  %4689 = phi float [ %4685, %4663 ], [ %4662, %4576 ]
  %4690 = fmul fast float %4603, 9.843750e-01
  %4691 = fadd fast float %4690, 7.812500e-03
  %4692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %4691, float %3569, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4693 = extractvalue %dx.types.ResRet.f32 %4692, 0
  %4694 = extractvalue %dx.types.ResRet.f32 %4692, 1
  %4695 = extractvalue %dx.types.ResRet.f32 %4692, 2
  %4696 = extractvalue %dx.types.ResRet.f32 %4692, 3
  %4697 = fsub fast float %4695, %4693
  %4698 = fsub fast float %4696, %4694
  %4699 = fmul fast float %4697, %3575
  %4700 = fmul fast float %4698, %3575
  %4701 = fadd fast float %4699, %4693
  %4702 = fadd fast float %4700, %4694
  %4703 = fmul fast float %4701, %2289
  %4704 = fmul fast float %4701, %2290
  %4705 = fmul fast float %4701, %2298
  %4706 = fadd fast float %4703, %4702
  %4707 = fadd fast float %4704, %4702
  %4708 = fadd fast float %4705, %4702
  br i1 %3588, label %4709, label %4732

; <label>:4709                                    ; preds = %4686
  %4710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1660, float %4603, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4711 = extractvalue %dx.types.ResRet.f32 %4710, 0
  %4712 = extractvalue %dx.types.ResRet.f32 %4710, 1
  %4713 = extractvalue %dx.types.ResRet.f32 %4710, 2
  %4714 = fadd fast float %4711, -5.000000e-01
  %4715 = fadd fast float %4712, -5.000000e-01
  %4716 = fadd fast float %4713, -5.000000e-01
  %4717 = fmul fast float %2289, 4.000000e+00
  %4718 = fmul fast float %4717, %4654
  %4719 = fmul fast float %4718, %4714
  %4720 = fmul fast float %2290, 4.000000e+00
  %4721 = fmul fast float %4720, %4655
  %4722 = fmul fast float %4721, %4715
  %4723 = fmul fast float %2298, 4.000000e+00
  %4724 = fmul fast float %4723, %4656
  %4725 = fmul fast float %4724, %4716
  %4726 = fadd fast float %4719, %4706
  %4727 = fadd fast float %4722, %4707
  %4728 = fadd fast float %4725, %4708
  %4729 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4730 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4731 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  br label %4732

; <label>:4732                                    ; preds = %4709, %4686
  %4733 = phi float [ %4729, %4709 ], [ %4706, %4686 ]
  %4734 = phi float [ %4730, %4709 ], [ %4707, %4686 ]
  %4735 = phi float [ %4731, %4709 ], [ %4708, %4686 ]
  %4736 = call float @dx.op.binary.f32(i32 35, float %4734, float %4735)  ; FMax(a,b)
  %4737 = call float @dx.op.binary.f32(i32 35, float %4733, float %4736)  ; FMax(a,b)
  %4738 = fsub fast float 1.000000e+00, %4737
  %4739 = fmul fast float %4687, %4641
  %4740 = fmul fast float %4688, %4641
  %4741 = fmul fast float %4689, %4641
  %4742 = fsub fast float 1.000000e+00, %4604
  %4743 = bitcast float %4742 to i32
  %4744 = sitofp i32 %4743 to float
  %4745 = fmul fast float %4744, 5.000000e+00
  %4746 = fadd fast float %4745, 0xC1EFBF8940000000
  %4747 = fptosi float %4746 to i32
  %4748 = bitcast i32 %4747 to float
  %4749 = fmul fast float %4748, %1659
  %4750 = fmul fast float %4738, %4749
  %4751 = fmul fast float %4750, %3638
  %4752 = fmul fast float %4750, %3639
  %4753 = fmul fast float %4750, %3640
  %4754 = fadd fast float %4751, %4739
  %4755 = fadd fast float %4752, %4740
  %4756 = fadd fast float %4753, %4741
  %4757 = fmul fast float %4609, %4592
  %4758 = fmul fast float %4757, %4738
  %4759 = fmul fast float %4609, %4593
  %4760 = fmul fast float %4759, %4738
  %4761 = fmul fast float %4609, %4594
  %4762 = fmul fast float %4761, %4738
  %4763 = fmul fast float %4757, %4754
  %4764 = fmul fast float %4759, %4755
  %4765 = fmul fast float %4761, %4756
  %4766 = fadd fast float %4758, %3622
  %4767 = fmul fast float %4766, %1680
  %4768 = fadd fast float %4760, %3623
  %4769 = fmul fast float %4768, %1680
  %4770 = fadd fast float %4762, %3624
  %4771 = fmul fast float %4770, %1680
  %4772 = fadd fast float %4763, %3691
  %4773 = fmul fast float %4772, %1680
  %4774 = fadd fast float %4764, %3694
  %4775 = fmul fast float %4774, %1680
  %4776 = fadd fast float %4765, %3697
  %4777 = fmul fast float %4776, %1680
  br label %4778

; <label>:4778                                    ; preds = %4732, %4510, %3615
  %4779 = phi float [ %3692, %3615 ], [ %3692, %4510 ], [ %4773, %4732 ]
  %4780 = phi float [ %3695, %3615 ], [ %3695, %4510 ], [ %4775, %4732 ]
  %4781 = phi float [ %3698, %3615 ], [ %3698, %4510 ], [ %4777, %4732 ]
  %4782 = phi float [ %3687, %3615 ], [ %3687, %4510 ], [ %4767, %4732 ]
  %4783 = phi float [ %3688, %3615 ], [ %3688, %4510 ], [ %4769, %4732 ]
  %4784 = phi float [ %3689, %3615 ], [ %3689, %4510 ], [ %4771, %4732 ]
  %4785 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4786 = extractvalue %dx.types.CBufRet.i32 %4785, 0
  %4787 = icmp eq i32 %4786, 0
  br i1 %4787, label %5420, label %4788

; <label>:4788                                    ; preds = %4778
  %4789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.f32 %4789, 2
  %4791 = extractvalue %dx.types.CBufRet.f32 %4789, 3
  %4792 = fmul fast float %4790, %91
  %4793 = fmul fast float %4791, %92
  %4794 = fptoui float %4792 to i32
  %4795 = fptoui float %4793 to i32
  %4796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4797 = extractvalue %dx.types.CBufRet.f32 %4796, 0
  %4798 = extractvalue %dx.types.CBufRet.f32 %4796, 2
  %4799 = extractvalue %dx.types.CBufRet.f32 %4796, 3
  %4800 = fadd fast float %82, -4.000000e+00
  %4801 = call float @dx.op.binary.f32(i32 35, float %4800, float 0.000000e+00)  ; FMax(a,b)
  %4802 = fadd fast float %4801, %4797
  %4803 = fmul fast float %4802, %4798
  %4804 = call float @dx.op.unary.f32(i32 23, float %4803)  ; Log(value)
  %4805 = fmul fast float %4804, %4799
  %4806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4807 = extractvalue %dx.types.CBufRet.f32 %4806, 2
  %4808 = fmul fast float %4805, %4807
  %4809 = call float @dx.op.unary.f32(i32 7, float %4808)  ; Saturate(value)
  %4810 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4811 = extractvalue %dx.types.CBufRet.i32 %4810, 1
  %4812 = add i32 %4811, -1
  %4813 = uitofp i32 %4811 to float
  %4814 = fmul fast float %4813, %4809
  %4815 = fptoui float %4814 to i32
  %4816 = call i32 @dx.op.binary.i32(i32 40, i32 %4815, i32 %4812)  ; UMin(a,b)
  %4817 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4818 = extractvalue %dx.types.CBufRet.i32 %4817, 2
  %4819 = extractvalue %dx.types.CBufRet.i32 %4817, 3
  %4820 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4795, i32 %4818, i32 %4794)  ; UMad(a,b,c)
  %4821 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4816, i32 %4819, i32 %4820)  ; UMad(a,b,c)
  %4822 = add nsw i32 %4786, -1
  %4823 = call i32 @dx.op.binary.i32(i32 37, i32 %4822, i32 0)  ; IMax(a,b)
  %4824 = call float @dx.op.binary.f32(i32 35, float %82, float 0.000000e+00)  ; FMax(a,b)
  %4825 = fptoui float %4824 to i32
  %4826 = lshr i32 %4825, 5
  %4827 = call i32 @dx.op.binary.i32(i32 40, i32 %4826, i32 8191)  ; UMin(a,b)
  %4828 = shl i32 %4827, 2
  %4829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4828, i32 undef)  ; BufferLoad(srv,index,wot)
  %4830 = extractvalue %dx.types.ResRet.i32 %4829, 0
  %4831 = lshr i32 %4830, 16
  %4832 = and i32 %4830, 65535
  %4833 = lshr i32 %4830, 21
  %4834 = lshr i32 %4832, 5
  %4835 = call i32 @dx.op.binary.i32(i32 40, i32 %4834, i32 %4823)  ; UMin(a,b)
  %4836 = icmp ugt i32 %4833, %4835
  br i1 %4836, label %5420, label %4837

; <label>:4837                                    ; preds = %4788
  br label %4838

; <label>:4838                                    ; preds = %5410, %4837
  %4839 = phi i32 [ %5417, %5410 ], [ %4833, %4837 ]
  %4840 = phi float [ %5411, %5410 ], [ %4779, %4837 ]
  %4841 = phi float [ %5412, %5410 ], [ %4780, %4837 ]
  %4842 = phi float [ %5413, %5410 ], [ %4781, %4837 ]
  %4843 = phi float [ %5414, %5410 ], [ %4782, %4837 ]
  %4844 = phi float [ %5415, %5410 ], [ %4783, %4837 ]
  %4845 = phi float [ %5416, %5410 ], [ %4784, %4837 ]
  %4846 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4847 = extractvalue %dx.types.CBufRet.i32 %4846, 0
  %4848 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4821, i32 %4847, i32 %4839)  ; UMad(a,b,c)
  %4849 = shl i32 %4848, 2
  %4850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4849, i32 undef)  ; BufferLoad(srv,index,wot)
  %4851 = extractvalue %dx.types.ResRet.i32 %4850, 0
  %4852 = shl i32 %4839, 5
  %4853 = sub nsw i32 %4831, %4852
  %4854 = call i32 @dx.op.binary.i32(i32 37, i32 %4853, i32 0)  ; IMax(a,b)
  %4855 = call i32 @dx.op.binary.i32(i32 38, i32 %4854, i32 31)  ; IMin(a,b)
  %4856 = sub nsw i32 1, %4831
  %4857 = add nsw i32 %4856, %4832
  %4858 = call i32 @dx.op.binary.i32(i32 37, i32 %4857, i32 0)  ; IMax(a,b)
  %4859 = call i32 @dx.op.binary.i32(i32 38, i32 %4858, i32 32)  ; IMin(a,b)
  %4860 = and i32 %4859, 31
  %4861 = shl i32 -1, %4860
  %4862 = xor i32 %4861, -1
  %4863 = and i32 %4855, 31
  %4864 = shl i32 %4862, %4863
  %4865 = icmp eq i32 %4859, 32
  %4866 = select i1 %4865, i32 -1, i32 %4864
  %4867 = and i32 %4866, %4851
  %4868 = icmp eq i32 %4867, 0
  br i1 %4868, label %5410, label %4869

; <label>:4869                                    ; preds = %4838
  br label %4870

; <label>:4870                                    ; preds = %5004, %4869
  %4871 = phi i32 [ %4882, %5004 ], [ %4867, %4869 ]
  %4872 = phi float [ %5005, %5004 ], [ %4840, %4869 ]
  %4873 = phi float [ %5006, %5004 ], [ %4841, %4869 ]
  %4874 = phi float [ %5007, %5004 ], [ %4842, %4869 ]
  %4875 = phi float [ %5008, %5004 ], [ %4843, %4869 ]
  %4876 = phi float [ %5009, %5004 ], [ %4844, %4869 ]
  %4877 = phi float [ %5010, %5004 ], [ %4845, %4869 ]
  %4878 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4871)  ; FirstbitLo(value)
  %4879 = add i32 %4878, %4852
  %4880 = and i32 %4878, 31
  %4881 = shl i32 1, %4880
  %4882 = xor i32 %4881, %4871
  %4883 = mul i32 %4879, 112
  %4884 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4883, i32 undef)  ; BufferLoad(srv,index,wot)
  %4885 = extractvalue %dx.types.ResRet.f32 %4884, 0
  %4886 = extractvalue %dx.types.ResRet.f32 %4884, 1
  %4887 = extractvalue %dx.types.ResRet.f32 %4884, 2
  %4888 = or i32 %4883, 12
  %4889 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4888, i32 undef)  ; BufferLoad(srv,index,wot)
  %4890 = extractvalue %dx.types.ResRet.f32 %4889, 0
  %4891 = add i32 %4883, 16
  %4892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4891, i32 undef)  ; BufferLoad(srv,index,wot)
  %4893 = extractvalue %dx.types.ResRet.f32 %4892, 0
  %4894 = extractvalue %dx.types.ResRet.f32 %4892, 1
  %4895 = extractvalue %dx.types.ResRet.f32 %4892, 2
  %4896 = add i32 %4883, 28
  %4897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4896, i32 undef)  ; BufferLoad(srv,index,wot)
  %4898 = extractvalue %dx.types.ResRet.i32 %4897, 0
  %4899 = add i32 %4883, 44
  %4900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4899, i32 undef)  ; BufferLoad(srv,index,wot)
  %4901 = extractvalue %dx.types.ResRet.f32 %4900, 0
  %4902 = add i32 %4883, 48
  %4903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4902, i32 undef)  ; BufferLoad(srv,index,wot)
  %4904 = extractvalue %dx.types.ResRet.f32 %4903, 0
  %4905 = extractvalue %dx.types.ResRet.f32 %4903, 1
  %4906 = extractvalue %dx.types.ResRet.f32 %4903, 2
  %4907 = extractvalue %dx.types.ResRet.f32 %4903, 3
  %4908 = add i32 %4883, 64
  %4909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4908, i32 undef)  ; BufferLoad(srv,index,wot)
  %4910 = extractvalue %dx.types.ResRet.f32 %4909, 0
  %4911 = extractvalue %dx.types.ResRet.f32 %4909, 1
  %4912 = extractvalue %dx.types.ResRet.f32 %4909, 2
  %4913 = extractvalue %dx.types.ResRet.f32 %4909, 3
  %4914 = add i32 %4883, 80
  %4915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4914, i32 undef)  ; BufferLoad(srv,index,wot)
  %4916 = extractvalue %dx.types.ResRet.f32 %4915, 1
  %4917 = extractvalue %dx.types.ResRet.f32 %4915, 2
  %4918 = add i32 %4883, 92
  %4919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4918, i32 undef)  ; BufferLoad(srv,index,wot)
  %4920 = extractvalue %dx.types.ResRet.i32 %4919, 0
  %4921 = call float @dx.op.dot3.f32(i32 55, float %4885, float %4886, float %4887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4922 = select i1 %229, float %4916, float %4885
  %4923 = select i1 %229, float %4921, float %4886
  %4924 = select i1 %229, float %4917, float %4887
  %4925 = and i32 %4920, 65535
  %4926 = uitofp i32 %4925 to float
  %4927 = lshr i32 %4920, 16
  %4928 = uitofp i32 %4927 to float
  %4929 = and i32 %4898, 65535
  %4930 = and i32 %4898, 50331648
  %4931 = icmp eq i32 %4930, 33554432
  %4932 = fsub fast float %4904, %138
  %4933 = fsub fast float %4905, %139
  %4934 = fsub fast float %4906, %140
  %4935 = call float @dx.op.dot3.f32(i32 55, float %4932, float %4933, float %4934, float %4932, float %4933, float %4934)  ; Dot3(ax,ay,az,bx,by,bz)
  %4936 = call float @dx.op.unary.f32(i32 24, float %4935)  ; Sqrt(value)
  %4937 = fdiv fast float 1.000000e+00, %4936
  %4938 = fmul fast float %4937, %4932
  %4939 = fmul fast float %4937, %4933
  %4940 = fmul fast float %4937, %4934
  %4941 = fadd fast float %4936, %4890
  %4942 = fdiv fast float 1.000000e+00, %4941
  %4943 = fmul float %4901, %4942
  %4944 = fmul float %4943, %4943
  %4945 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  br i1 %4931, label %4946, label %4967

; <label>:4946                                    ; preds = %4870
  %4947 = fmul fast float %4912, %4893
  %4948 = fmul fast float %4912, %4894
  %4949 = fmul fast float %4912, %4895
  %4950 = fadd fast float %4932, %4947
  %4951 = fadd fast float %4933, %4948
  %4952 = fadd fast float %4934, %4949
  %4953 = call float @dx.op.dot3.f32(i32 55, float %4950, float %4951, float %4952, float %4950, float %4951, float %4952)  ; Dot3(ax,ay,az,bx,by,bz)
  %4954 = call float @dx.op.unary.f32(i32 25, float %4953)  ; Rsqrt(value)
  %4955 = fmul fast float %4954, %4950
  %4956 = fmul fast float %4954, %4951
  %4957 = fmul fast float %4954, %4952
  %4958 = fsub fast float %138, %4904
  %4959 = fsub fast float %139, %4905
  %4960 = fsub fast float %140, %4906
  %4961 = fsub fast float -0.000000e+00, %4958
  %4962 = fsub fast float -0.000000e+00, %4959
  %4963 = fsub fast float -0.000000e+00, %4960
  %4964 = call float @dx.op.dot3.f32(i32 55, float %4961, float %4962, float %4963, float %4893, float %4894, float %4895)  ; Dot3(ax,ay,az,bx,by,bz)
  %4965 = fcmp fast ogt float %4964, 0.000000e+00
  %4966 = uitofp i1 %4965 to float
  br label %4967

; <label>:4967                                    ; preds = %4946, %4870
  %4968 = phi float [ %4966, %4946 ], [ 1.000000e+00, %4870 ]
  %4969 = phi float [ %4955, %4946 ], [ %4938, %4870 ]
  %4970 = phi float [ %4956, %4946 ], [ %4939, %4870 ]
  %4971 = phi float [ %4957, %4946 ], [ %4940, %4870 ]
  %4972 = call float @dx.op.dot3.f32(i32 55, float %4893, float %4894, float %4895, float %4969, float %4970, float %4971)  ; Dot3(ax,ay,az,bx,by,bz)
  %4973 = fmul fast float %4972, %4972
  %4974 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4975 = fsub fast float 1.000000e+00, %4974
  %4976 = fmul fast float %4975, 5.000000e-01
  %4977 = fcmp fast ogt float %4972, 0.000000e+00
  %4978 = fsub fast float 1.000000e+00, %4976
  %4979 = select i1 %4977, float %4976, float %4978
  %4980 = fmul fast float %4979, %4928
  %4981 = fadd fast float %4980, %4926
  %4982 = fmul fast float %4981, 0x3EF0001000000000
  %4983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %58, float %4982, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4984 = extractvalue %dx.types.ResRet.f32 %4983, 0
  %4985 = fmul fast float %4972, %4910
  %4986 = fadd fast float %4985, %4911
  %4987 = call float @dx.op.unary.f32(i32 7, float %4986)  ; Saturate(value)
  %4988 = select i1 %4931, float 1.000000e+00, float %4987
  %4989 = select i1 %4931, float %4987, float 1.000000e+00
  %4990 = fmul fast float %4936, %4907
  %4991 = fsub fast float 1.000000e+00, %4990
  %4992 = fmul fast float %4991, %4913
  %4993 = call float @dx.op.unary.f32(i32 7, float %4992)  ; Saturate(value)
  %4994 = fmul fast float %4993, %4989
  %4995 = fmul fast float %4994, 2.000000e+00
  %4996 = fsub fast float 3.000000e+00, %4995
  %4997 = fmul fast float %4984, %4968
  %4998 = fmul fast float %4994, %4994
  %4999 = fmul fast float %4998, %4997
  %5000 = fmul fast float %4999, %4996
  %5001 = call float @dx.op.binary.f32(i32 36, float %5000, float %5000)  ; FMin(a,b)
  %5002 = call float @dx.op.binary.f32(i32 36, float %5000, float %5001)  ; FMin(a,b)
  %5003 = fcmp fast ogt float %5002, 0.000000e+00
  br i1 %5003, label %5012, label %5004, !dx.controlflow.hints !131

; <label>:5004                                    ; preds = %5366, %5112, %4967
  %5005 = phi float [ %4872, %5112 ], [ %4872, %4967 ], [ %5406, %5366 ]
  %5006 = phi float [ %4873, %5112 ], [ %4873, %4967 ], [ %5407, %5366 ]
  %5007 = phi float [ %4874, %5112 ], [ %4874, %4967 ], [ %5408, %5366 ]
  %5008 = phi float [ %4875, %5112 ], [ %4875, %4967 ], [ %5400, %5366 ]
  %5009 = phi float [ %4876, %5112 ], [ %4876, %4967 ], [ %5401, %5366 ]
  %5010 = phi float [ %4877, %5112 ], [ %4877, %4967 ], [ %5402, %5366 ]
  %5011 = icmp eq i32 %4871, %4881
  br i1 %5011, label %5409, label %4870

; <label>:5012                                    ; preds = %4967
  %5013 = icmp eq i32 %4929, 255
  br i1 %5013, label %5112, label %5014, !dx.controlflow.hints !132

; <label>:5014                                    ; preds = %5012
  %5015 = mul nuw nsw i32 %4929, 176
  %5016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5015, i32 undef)  ; BufferLoad(srv,index,wot)
  %5017 = extractvalue %dx.types.ResRet.f32 %5016, 0
  %5018 = extractvalue %dx.types.ResRet.f32 %5016, 1
  %5019 = extractvalue %dx.types.ResRet.f32 %5016, 2
  %5020 = extractvalue %dx.types.ResRet.f32 %5016, 3
  %5021 = add nuw nsw i32 %5015, 16
  %5022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5021, i32 undef)  ; BufferLoad(srv,index,wot)
  %5023 = extractvalue %dx.types.ResRet.f32 %5022, 0
  %5024 = extractvalue %dx.types.ResRet.f32 %5022, 1
  %5025 = add nuw nsw i32 %5015, 32
  %5026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5025, i32 undef)  ; BufferLoad(srv,index,wot)
  %5027 = extractvalue %dx.types.ResRet.f32 %5026, 0
  %5028 = extractvalue %dx.types.ResRet.f32 %5026, 1
  %5029 = extractvalue %dx.types.ResRet.f32 %5026, 2
  %5030 = add nuw nsw i32 %5015, 48
  %5031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5030, i32 undef)  ; BufferLoad(srv,index,wot)
  %5032 = extractvalue %dx.types.ResRet.f32 %5031, 0
  %5033 = extractvalue %dx.types.ResRet.f32 %5031, 1
  %5034 = extractvalue %dx.types.ResRet.f32 %5031, 2
  %5035 = extractvalue %dx.types.ResRet.f32 %5031, 3
  %5036 = add nuw nsw i32 %5015, 64
  %5037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5036, i32 undef)  ; BufferLoad(srv,index,wot)
  %5038 = extractvalue %dx.types.ResRet.f32 %5037, 0
  %5039 = extractvalue %dx.types.ResRet.f32 %5037, 1
  %5040 = extractvalue %dx.types.ResRet.f32 %5037, 2
  %5041 = extractvalue %dx.types.ResRet.f32 %5037, 3
  %5042 = add nuw nsw i32 %5015, 80
  %5043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5042, i32 undef)  ; BufferLoad(srv,index,wot)
  %5044 = extractvalue %dx.types.ResRet.f32 %5043, 0
  %5045 = extractvalue %dx.types.ResRet.f32 %5043, 1
  %5046 = extractvalue %dx.types.ResRet.f32 %5043, 2
  %5047 = extractvalue %dx.types.ResRet.f32 %5043, 3
  %5048 = add nuw nsw i32 %5015, 96
  %5049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5048, i32 undef)  ; BufferLoad(srv,index,wot)
  %5050 = extractvalue %dx.types.ResRet.f32 %5049, 0
  %5051 = extractvalue %dx.types.ResRet.f32 %5049, 1
  %5052 = extractvalue %dx.types.ResRet.f32 %5049, 2
  %5053 = extractvalue %dx.types.ResRet.f32 %5049, 3
  %5054 = bitcast float %5024 to i32
  %5055 = fmul fast float %5029, %70
  %5056 = fmul fast float %5029, %71
  %5057 = fmul fast float %5029, %72
  %5058 = fadd fast float %5055, %138
  %5059 = fadd fast float %5056, %139
  %5060 = fadd fast float %5057, %140
  %5061 = fmul fast float %5058, %5032
  %5062 = call float @dx.op.tertiary.f32(i32 46, float %5059, float %5038, float %5061)  ; FMad(a,b,c)
  %5063 = call float @dx.op.tertiary.f32(i32 46, float %5060, float %5044, float %5062)  ; FMad(a,b,c)
  %5064 = fadd fast float %5063, %5050
  %5065 = fmul fast float %5058, %5033
  %5066 = call float @dx.op.tertiary.f32(i32 46, float %5059, float %5039, float %5065)  ; FMad(a,b,c)
  %5067 = call float @dx.op.tertiary.f32(i32 46, float %5060, float %5045, float %5066)  ; FMad(a,b,c)
  %5068 = fadd fast float %5067, %5051
  %5069 = fmul fast float %5058, %5034
  %5070 = call float @dx.op.tertiary.f32(i32 46, float %5059, float %5040, float %5069)  ; FMad(a,b,c)
  %5071 = call float @dx.op.tertiary.f32(i32 46, float %5060, float %5046, float %5070)  ; FMad(a,b,c)
  %5072 = fadd fast float %5071, %5052
  %5073 = fmul fast float %5058, %5035
  %5074 = call float @dx.op.tertiary.f32(i32 46, float %5059, float %5041, float %5073)  ; FMad(a,b,c)
  %5075 = call float @dx.op.tertiary.f32(i32 46, float %5060, float %5047, float %5074)  ; FMad(a,b,c)
  %5076 = fadd fast float %5075, %5053
  %5077 = fdiv fast float %5064, %5076
  %5078 = fdiv fast float %5068, %5076
  %5079 = fdiv fast float %5072, %5076
  %5080 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5079)  ; FMax(a,b)
  %5081 = fmul fast float %240, 0x401921FB60000000
  %5082 = call float @dx.op.unary.f32(i32 13, float %5081)  ; Sin(value)
  %5083 = call float @dx.op.unary.f32(i32 12, float %5081)  ; Cos(value)
  %5084 = fsub fast float -0.000000e+00, %5082
  %5085 = fmul fast float %5019, 5.000000e-01
  %5086 = call float @dx.op.dot2.f32(i32 54, float %240, float %240, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %5087 = call float @dx.op.unary.f32(i32 22, float %5086)  ; Frc(value)
  %5088 = fmul fast float %5087, 0x404A7DD040000000
  %5089 = call float @dx.op.unary.f32(i32 22, float %5088)  ; Frc(value)
  %5090 = fmul fast float %5089, %5028
  %5091 = fadd fast float %5090, %5085
  %5092 = call float @dx.op.tertiary.f32(i32 46, float %5091, float %5084, float 0.000000e+00)  ; FMad(a,b,c)
  %5093 = call float @dx.op.tertiary.f32(i32 46, float %5091, float %5083, float 0.000000e+00)  ; FMad(a,b,c)
  %5094 = fadd fast float %5092, %5077
  %5095 = fadd fast float %5093, %5078
  %5096 = fmul fast float %5094, %5023
  %5097 = fmul fast float %5095, %5023
  %5098 = call float @dx.op.binary.f32(i32 35, float %5096, float %5019)  ; FMax(a,b)
  %5099 = call float @dx.op.binary.f32(i32 35, float %5097, float %5019)  ; FMax(a,b)
  %5100 = call float @dx.op.binary.f32(i32 36, float %5098, float %5020)  ; FMin(a,b)
  %5101 = call float @dx.op.binary.f32(i32 36, float %5099, float %5020)  ; FMin(a,b)
  %5102 = fadd fast float %5100, %5017
  %5103 = fadd fast float %5101, %5018
  %5104 = uitofp i32 %5054 to float
  %5105 = fadd fast float %5080, %5027
  %5106 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %60, float %5102, float %5103, float %5104, float undef, i32 0, i32 0, i32 undef, float %5105)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5107 = extractvalue %dx.types.ResRet.f32 %5106, 0
  %5108 = fadd fast float %5107, -1.000000e+00
  %5109 = fmul fast float %5108, %4988
  %5110 = fadd fast float %5109, 1.000000e+00
  %5111 = fmul fast float %5110, %5000
  br label %5112

; <label>:5112                                    ; preds = %5014, %5012
  %5113 = phi float [ %5111, %5014 ], [ %5000, %5012 ]
  %5114 = call float @dx.op.binary.f32(i32 36, float %5113, float %5113)  ; FMin(a,b)
  %5115 = call float @dx.op.binary.f32(i32 36, float %5113, float %5114)  ; FMin(a,b)
  %5116 = fcmp fast ogt float %5115, 0.000000e+00
  br i1 %5116, label %5117, label %5004, !dx.controlflow.hints !133

; <label>:5117                                    ; preds = %5112
  %5118 = fmul fast float %5113, %4922
  %5119 = fmul fast float %5113, %4923
  %5120 = fmul fast float %5113, %4924
  %5121 = fsub fast float %4906, %2085
  %5122 = fcmp fast ogt float %5121, 0.000000e+00
  %5123 = fsub fast float %140, %2085
  %5124 = fcmp fast ogt float %5123, 0.000000e+00
  %5125 = xor i1 %5124, %5122
  %5126 = fsub fast float %2085, %4906
  %5127 = fmul fast float %5126, 2.000000e+00
  %5128 = fadd fast float %5127, %4906
  %5129 = select i1 %5125, float %4906, float %5128
  %5130 = fsub fast float %5129, %140
  %5131 = call float @dx.op.dot3.f32(i32 55, float %4932, float %4933, float %5130, float %4932, float %4933, float %5130)  ; Dot3(ax,ay,az,bx,by,bz)
  %5132 = call float @dx.op.unary.f32(i32 25, float %5131)  ; Rsqrt(value)
  %5133 = fmul fast float %5132, %4932
  %5134 = fmul fast float %5132, %4933
  %5135 = fmul fast float %5132, %5130
  %5136 = fsub fast float %2085, %140
  %5137 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5136)  ; Dot3(ax,ay,az,bx,by,bz)
  %5138 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5133, float %5134, float %5135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = fdiv fast float 1.000000e+00, %5138
  %5140 = fmul fast float %5139, %5137
  %5141 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5123, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5142 = fcmp fast ogt float %5141, 0.000000e+00
  %5143 = fcmp fast olt float %5141, 0.000000e+00
  %5144 = zext i1 %5142 to i32
  %5145 = zext i1 %5143 to i32
  %5146 = sub nsw i32 %5144, %5145
  %5147 = sitofp i32 %5146 to float
  %5148 = fsub fast float %5129, %2085
  %5149 = call float @dx.op.dot3.f32(i32 55, float %4932, float %4933, float %5148, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5150 = fcmp fast ogt float %5149, 0.000000e+00
  %5151 = fcmp fast olt float %5149, 0.000000e+00
  %5152 = zext i1 %5150 to i32
  %5153 = zext i1 %5151 to i32
  %5154 = sub nsw i32 %5152, %5153
  %5155 = sitofp i32 %5154 to float
  %5156 = fcmp fast une float %5147, %5155
  br i1 %5156, label %5157, label %5167

; <label>:5157                                    ; preds = %5117
  %5158 = fmul fast float %5140, %5135
  %5159 = fmul fast float %5140, %5134
  %5160 = fmul fast float %5140, %5133
  %5161 = fmul fast float %5160, %5160
  %5162 = fmul fast float %5159, %5159
  %5163 = fadd fast float %5161, %5162
  %5164 = fmul fast float %5158, %5158
  %5165 = fadd fast float %5163, %5164
  %5166 = call float @dx.op.unary.f32(i32 24, float %5165)  ; Sqrt(value)
  br label %5179

; <label>:5167                                    ; preds = %5117
  %5168 = icmp slt i32 %5146, 0
  br i1 %5168, label %5169, label %5179

; <label>:5169                                    ; preds = %5167
  %5170 = fsub fast float %138, %4904
  %5171 = fsub fast float %139, %4905
  %5172 = fsub fast float %140, %5129
  %5173 = fmul fast float %5170, %5170
  %5174 = fmul fast float %5171, %5171
  %5175 = fadd fast float %5173, %5174
  %5176 = fmul fast float %5172, %5172
  %5177 = fadd fast float %5175, %5176
  %5178 = call float @dx.op.unary.f32(i32 24, float %5177)  ; Sqrt(value)
  br label %5179

; <label>:5179                                    ; preds = %5169, %5167, %5157
  %5180 = phi float [ %5166, %5157 ], [ %5178, %5169 ], [ 0.000000e+00, %5167 ]
  %5181 = and i1 %5124, %5122
  %5182 = fsub fast float -0.000000e+00, %5180
  %5183 = select i1 %5181, float -0.000000e+00, float %5182
  %5184 = fmul fast float %2086, 0x3FF7154760000000
  %5185 = fmul fast float %5184, %5183
  %5186 = fmul fast float %2087, 0x3FF7154760000000
  %5187 = fmul fast float %5186, %5183
  %5188 = fmul fast float %2088, 0x3FF7154760000000
  %5189 = fmul fast float %5188, %5183
  %5190 = call float @dx.op.unary.f32(i32 21, float %5185)  ; Exp(value)
  %5191 = call float @dx.op.unary.f32(i32 21, float %5187)  ; Exp(value)
  %5192 = call float @dx.op.unary.f32(i32 21, float %5189)  ; Exp(value)
  %5193 = call float @dx.op.unary.f32(i32 7, float %5190)  ; Saturate(value)
  %5194 = call float @dx.op.unary.f32(i32 7, float %5191)  ; Saturate(value)
  %5195 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  %5196 = fmul fast float %5118, %5193
  %5197 = fmul fast float %5119, %5194
  %5198 = fmul fast float %5120, %5195
  %5199 = fsub fast float %4938, %2285
  %5200 = fsub fast float %4939, %2284
  %5201 = fsub fast float %4940, %2283
  %5202 = call float @dx.op.dot3.f32(i32 55, float %5199, float %5200, float %5201, float %5199, float %5200, float %5201)  ; Dot3(ax,ay,az,bx,by,bz)
  %5203 = call float @dx.op.unary.f32(i32 25, float %5202)  ; Rsqrt(value)
  %5204 = fmul fast float %5203, %5199
  %5205 = fmul fast float %5203, %5200
  %5206 = fmul fast float %5203, %5201
  %5207 = call float @dx.op.dot3.f32(i32 55, float %4938, float %4939, float %4940, float %2292, float %2293, float %2294)  ; Dot3(ax,ay,az,bx,by,bz)
  %5208 = call float @dx.op.dot3.f32(i32 55, float %2282, float %2281, float %2280, float %5204, float %5205, float %5206)  ; Dot3(ax,ay,az,bx,by,bz)
  %5209 = call float @dx.op.unary.f32(i32 7, float %5207)  ; Saturate(value)
  %5210 = fmul fast float %5209, %4945
  %5211 = fmul fast float %5209, %5209
  %5212 = fmul fast float %5211, %3699
  %5213 = call float @dx.op.unary.f32(i32 7, float %5212)  ; Saturate(value)
  %5214 = fmul fast float %5210, %5213
  %5215 = bitcast float %4935 to i32
  %5216 = ashr i32 %5215, 1
  %5217 = sub nsw i32 1597463007, %5216
  %5218 = bitcast i32 %5217 to float
  %5219 = fmul fast float %5218, %4932
  %5220 = fmul fast float %5218, %4933
  %5221 = fmul fast float %5218, %4934
  %5222 = fsub fast float %5219, %2285
  %5223 = fsub fast float %5220, %2284
  %5224 = fsub fast float %5221, %2283
  %5225 = call float @dx.op.dot3.f32(i32 55, float %5222, float %5223, float %5224, float %5222, float %5223, float %5224)  ; Dot3(ax,ay,az,bx,by,bz)
  %5226 = call float @dx.op.unary.f32(i32 25, float %5225)  ; Rsqrt(value)
  %5227 = fmul fast float %5222, %5226
  %5228 = fmul fast float %5223, %5226
  %5229 = fmul fast float %5224, %5226
  %5230 = call float @dx.op.dot3.f32(i32 55, float %2292, float %2293, float %2294, float %5227, float %5228, float %5229)  ; Dot3(ax,ay,az,bx,by,bz)
  %5231 = fmul fast float %5230, %5230
  %5232 = call float @dx.op.unary.f32(i32 6, float %5207)  ; FAbs(value)
  %5233 = fsub fast float 1.000000e+00, %2295
  %5234 = call float @dx.op.binary.f32(i32 35, float %5233, float 0x3F847AE140000000)  ; FMax(a,b)
  %5235 = fmul fast float %5234, %5234
  %5236 = fmul fast float %5235, %5235
  %5237 = fsub fast float 1.000000e+00, %5236
  %5238 = fmul fast float %2300, %2300
  %5239 = fmul fast float %5238, %5237
  %5240 = fadd fast float %5239, %5236
  %5241 = bitcast float %5240 to i32
  %5242 = ashr i32 %5241, 1
  %5243 = add nsw i32 %5242, 532487669
  %5244 = bitcast i32 %5243 to float
  %5245 = fadd fast float %5244, %2300
  %5246 = fmul fast float %5236, %5231
  %5247 = fsub fast float 1.000000e+00, %5231
  %5248 = fadd fast float %5247, %5246
  %5249 = fmul fast float %5232, %5232
  %5250 = fmul fast float %5249, %5237
  %5251 = fadd fast float %5250, %5236
  %5252 = bitcast float %5251 to i32
  %5253 = ashr i32 %5252, 1
  %5254 = add nsw i32 %5253, 532487669
  %5255 = bitcast i32 %5254 to float
  %5256 = fadd fast float %5255, %5232
  %5257 = fmul fast float %5248, %5248
  %5258 = fmul fast float %5257, %5245
  %5259 = fmul fast float %5258, %5256
  %5260 = fdiv fast float 1.000000e+00, %5259
  %5261 = bitcast float %5236 to i32
  %5262 = sitofp i32 %5261 to float
  %5263 = fmul fast float %5262, 0x3FE7F73180000000
  %5264 = fadd fast float %5263, 0x41AFE27C40000000
  %5265 = fptosi float %5264 to i32
  %5266 = bitcast i32 %5265 to float
  %5267 = fmul fast float %4901, 0x3FD80E9D60000000
  %5268 = fmul fast float %5267, %5218
  %5269 = fadd fast float %5266, %5268
  %5270 = bitcast float %5269 to i32
  %5271 = sub nsw i32 2129859010, %5270
  %5272 = bitcast i32 %5271 to float
  %5273 = fmul fast float %5236, %5260
  %5274 = fmul fast float %5273, %5266
  %5275 = fmul fast float %5274, %5272
  %5276 = fmul fast float %3565, 0x3FF9999980000000
  %5277 = fsub fast float 5.000000e+00, %5276
  %5278 = call float @dx.op.unary.f32(i32 6, float %5208)  ; FAbs(value)
  %5279 = fsub fast float 1.000000e+00, %5278
  %5280 = fmul fast float %3565, 0x41D9660740000000
  %5281 = fadd fast float %5280, 0xC1EFBF8940000000
  %5282 = bitcast float %5279 to i32
  %5283 = sitofp i32 %5282 to float
  %5284 = fmul fast float %5283, %5277
  %5285 = fadd fast float %5281, %5284
  %5286 = fptosi float %5285 to i32
  %5287 = bitcast i32 %5286 to float
  %5288 = fsub fast float 1.000000e+00, %2289
  %5289 = fsub fast float 1.000000e+00, %2290
  %5290 = fsub fast float 1.000000e+00, %2298
  %5291 = fmul fast float %5287, %5288
  %5292 = fmul fast float %5287, %5289
  %5293 = fmul fast float %5287, %5290
  %5294 = fadd fast float %5291, %2289
  %5295 = fadd fast float %5292, %2290
  %5296 = fadd fast float %5293, %2298
  br i1 %3588, label %5297, label %5320

; <label>:5297                                    ; preds = %5179
  %5298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1660, float %5278, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5299 = extractvalue %dx.types.ResRet.f32 %5298, 0
  %5300 = extractvalue %dx.types.ResRet.f32 %5298, 1
  %5301 = extractvalue %dx.types.ResRet.f32 %5298, 2
  %5302 = fadd fast float %5299, -5.000000e-01
  %5303 = fadd fast float %5300, -5.000000e-01
  %5304 = fadd fast float %5301, -5.000000e-01
  %5305 = fmul fast float %2289, 4.000000e+00
  %5306 = fmul fast float %5305, %5288
  %5307 = fmul fast float %5306, %5302
  %5308 = fmul fast float %2290, 4.000000e+00
  %5309 = fmul fast float %5308, %5289
  %5310 = fmul fast float %5309, %5303
  %5311 = fmul fast float %2298, 4.000000e+00
  %5312 = fmul fast float %5311, %5290
  %5313 = fmul fast float %5312, %5304
  %5314 = fadd fast float %5307, %5294
  %5315 = fadd fast float %5310, %5295
  %5316 = fadd fast float %5313, %5296
  %5317 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5318 = call float @dx.op.unary.f32(i32 7, float %5315)  ; Saturate(value)
  %5319 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  br label %5320

; <label>:5320                                    ; preds = %5297, %5179
  %5321 = phi float [ %5317, %5297 ], [ %5294, %5179 ]
  %5322 = phi float [ %5318, %5297 ], [ %5295, %5179 ]
  %5323 = phi float [ %5319, %5297 ], [ %5296, %5179 ]
  %5324 = fmul fast float %5207, 9.843750e-01
  %5325 = fadd fast float %5324, 7.812500e-03
  %5326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5325, float %3569, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5327 = extractvalue %dx.types.ResRet.f32 %5326, 0
  %5328 = extractvalue %dx.types.ResRet.f32 %5326, 1
  %5329 = extractvalue %dx.types.ResRet.f32 %5326, 2
  %5330 = extractvalue %dx.types.ResRet.f32 %5326, 3
  %5331 = fsub fast float %5329, %5327
  %5332 = fsub fast float %5330, %5328
  %5333 = fmul fast float %5331, %3575
  %5334 = fmul fast float %5332, %3575
  %5335 = fadd fast float %5333, %5327
  %5336 = fadd fast float %5334, %5328
  %5337 = fmul fast float %5335, %2289
  %5338 = fmul fast float %5335, %2290
  %5339 = fmul fast float %5335, %2298
  %5340 = fadd fast float %5337, %5336
  %5341 = fadd fast float %5338, %5336
  %5342 = fadd fast float %5339, %5336
  br i1 %3588, label %5343, label %5366

; <label>:5343                                    ; preds = %5320
  %5344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1660, float %5207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5345 = extractvalue %dx.types.ResRet.f32 %5344, 0
  %5346 = extractvalue %dx.types.ResRet.f32 %5344, 1
  %5347 = extractvalue %dx.types.ResRet.f32 %5344, 2
  %5348 = fadd fast float %5345, -5.000000e-01
  %5349 = fadd fast float %5346, -5.000000e-01
  %5350 = fadd fast float %5347, -5.000000e-01
  %5351 = fmul fast float %2289, 4.000000e+00
  %5352 = fmul fast float %5351, %5288
  %5353 = fmul fast float %5352, %5348
  %5354 = fmul fast float %2290, 4.000000e+00
  %5355 = fmul fast float %5354, %5289
  %5356 = fmul fast float %5355, %5349
  %5357 = fmul fast float %2298, 4.000000e+00
  %5358 = fmul fast float %5357, %5290
  %5359 = fmul fast float %5358, %5350
  %5360 = fadd fast float %5353, %5340
  %5361 = fadd fast float %5356, %5341
  %5362 = fadd fast float %5359, %5342
  %5363 = call float @dx.op.unary.f32(i32 7, float %5360)  ; Saturate(value)
  %5364 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5365 = call float @dx.op.unary.f32(i32 7, float %5362)  ; Saturate(value)
  br label %5366

; <label>:5366                                    ; preds = %5343, %5320
  %5367 = phi float [ %5363, %5343 ], [ %5340, %5320 ]
  %5368 = phi float [ %5364, %5343 ], [ %5341, %5320 ]
  %5369 = phi float [ %5365, %5343 ], [ %5342, %5320 ]
  %5370 = call float @dx.op.binary.f32(i32 35, float %5368, float %5369)  ; FMax(a,b)
  %5371 = call float @dx.op.binary.f32(i32 35, float %5367, float %5370)  ; FMax(a,b)
  %5372 = fsub fast float 1.000000e+00, %5371
  %5373 = fmul fast float %5321, %5275
  %5374 = fmul fast float %5322, %5275
  %5375 = fmul fast float %5323, %5275
  %5376 = fsub fast float 1.000000e+00, %5208
  %5377 = bitcast float %5376 to i32
  %5378 = sitofp i32 %5377 to float
  %5379 = fmul fast float %5378, 5.000000e+00
  %5380 = fadd fast float %5379, 0xC1EFBF8940000000
  %5381 = fptosi float %5380 to i32
  %5382 = bitcast i32 %5381 to float
  %5383 = fmul fast float %5382, %1659
  %5384 = fmul fast float %5372, %5383
  %5385 = fmul fast float %5384, %3638
  %5386 = fmul fast float %5384, %3639
  %5387 = fmul fast float %5384, %3640
  %5388 = fadd fast float %5385, %5373
  %5389 = fadd fast float %5386, %5374
  %5390 = fadd fast float %5387, %5375
  %5391 = fmul fast float %5196, %1680
  %5392 = fmul fast float %5391, %5214
  %5393 = fmul fast float %5392, %5372
  %5394 = fmul fast float %5197, %1680
  %5395 = fmul fast float %5394, %5214
  %5396 = fmul fast float %5395, %5372
  %5397 = fmul fast float %5198, %1680
  %5398 = fmul fast float %5397, %5214
  %5399 = fmul fast float %5398, %5372
  %5400 = fadd fast float %5393, %4875
  %5401 = fadd fast float %5396, %4876
  %5402 = fadd fast float %5399, %4877
  %5403 = fmul fast float %5392, %5388
  %5404 = fmul fast float %5395, %5389
  %5405 = fmul fast float %5398, %5390
  %5406 = fadd fast float %5403, %4872
  %5407 = fadd fast float %5404, %4873
  %5408 = fadd fast float %5405, %4874
  br label %5004

; <label>:5409                                    ; preds = %5004
  br label %5410

; <label>:5410                                    ; preds = %5409, %4838
  %5411 = phi float [ %4840, %4838 ], [ %5005, %5409 ]
  %5412 = phi float [ %4841, %4838 ], [ %5006, %5409 ]
  %5413 = phi float [ %4842, %4838 ], [ %5007, %5409 ]
  %5414 = phi float [ %4843, %4838 ], [ %5008, %5409 ]
  %5415 = phi float [ %4844, %4838 ], [ %5009, %5409 ]
  %5416 = phi float [ %4845, %4838 ], [ %5010, %5409 ]
  %5417 = add i32 %4839, 1
  %5418 = icmp ugt i32 %5417, %4835
  br i1 %5418, label %5419, label %4838

; <label>:5419                                    ; preds = %5410
  br label %5420

; <label>:5420                                    ; preds = %5419, %4788, %4778
  %5421 = phi float [ %4779, %4778 ], [ %4779, %4788 ], [ %5411, %5419 ]
  %5422 = phi float [ %4780, %4778 ], [ %4780, %4788 ], [ %5412, %5419 ]
  %5423 = phi float [ %4781, %4778 ], [ %4781, %4788 ], [ %5413, %5419 ]
  %5424 = phi float [ %4782, %4778 ], [ %4782, %4788 ], [ %5414, %5419 ]
  %5425 = phi float [ %4783, %4778 ], [ %4783, %4788 ], [ %5415, %5419 ]
  %5426 = phi float [ %4784, %4778 ], [ %4784, %4788 ], [ %5416, %5419 ]
  %5427 = fmul fast float %1680, %1680
  %5428 = fmul fast float %5427, %3664
  %5429 = fmul fast float %5427, %3665
  %5430 = fmul fast float %5427, %3666
  %5431 = fadd fast float %5428, 1.000000e+00
  %5432 = fadd fast float %5429, 1.000000e+00
  %5433 = fadd fast float %5430, 1.000000e+00
  %5434 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5432, float %5433, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5435 = fsub fast float 1.000000e+00, %5434
  %5436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5437 = extractvalue %dx.types.CBufRet.f32 %5436, 0
  %5438 = fmul fast float %5437, %3670
  %5439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5440 = extractvalue %dx.types.CBufRet.f32 %5439, 3
  %5441 = fsub fast float 1.000000e+00, %1655
  %5442 = call float @dx.op.unary.f32(i32 7, float %5441)  ; Saturate(value)
  %5443 = fadd fast float %5426, %1654
  %5444 = fmul fast float %5443, %1655
  %5445 = fmul fast float %5442, %5440
  %5446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5447 = extractvalue %dx.types.CBufRet.f32 %5446, 3
  %5448 = fmul fast float %5424, %2286
  %5449 = fmul fast float %5425, %2287
  %5450 = fmul fast float %5426, %2288
  %5451 = fcmp fast ogt float %82, %189
  %5452 = and i1 %5451, %2091
  %5453 = or i1 %2097, %5452
  %5454 = icmp eq i32 %2090, 2
  %5455 = fcmp fast ole float %82, %189
  %5456 = and i1 %5455, %5454
  %5457 = or i1 %5456, %5453
  br i1 %5452, label %5458, label %5717

; <label>:5458                                    ; preds = %5420
  %5459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5460 = extractvalue %dx.types.CBufRet.f32 %5459, 2
  %5461 = extractvalue %dx.types.CBufRet.f32 %5459, 3
  %5462 = fmul fast float %5460, %91
  %5463 = fmul fast float %5461, %92
  %5464 = call float @dx.op.unary.f32(i32 7, float %5462)  ; Saturate(value)
  %5465 = call float @dx.op.unary.f32(i32 7, float %5463)  ; Saturate(value)
  %5466 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5464, float %5465, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5467 = extractvalue %dx.types.ResRet.f32 %5466, 0
  %5468 = extractvalue %dx.types.ResRet.f32 %5466, 1
  %5469 = extractvalue %dx.types.ResRet.f32 %5466, 2
  %5470 = extractvalue %dx.types.ResRet.f32 %5466, 3
  %5471 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5464, float %5465, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5472 = extractvalue %dx.types.ResRet.f32 %5471, 0
  %5473 = extractvalue %dx.types.ResRet.f32 %5471, 1
  %5474 = extractvalue %dx.types.ResRet.f32 %5471, 2
  %5475 = extractvalue %dx.types.ResRet.f32 %5471, 3
  %5476 = call float @dx.op.binary.f32(i32 35, float %5468, float %5469)  ; FMax(a,b)
  %5477 = call float @dx.op.binary.f32(i32 35, float %5467, float %5476)  ; FMax(a,b)
  %5478 = call float @dx.op.binary.f32(i32 35, float %5477, float %5470)  ; FMax(a,b)
  %5479 = call float @dx.op.binary.f32(i32 36, float %5473, float %5474)  ; FMin(a,b)
  %5480 = call float @dx.op.binary.f32(i32 36, float %5472, float %5479)  ; FMin(a,b)
  %5481 = call float @dx.op.binary.f32(i32 36, float %5480, float %5475)  ; FMin(a,b)
  %5482 = fmul fast float %5478, 2.550000e+02
  %5483 = fadd fast float %5482, 0x3F70101020000000
  %5484 = fptoui float %5483 to i32
  %5485 = fmul fast float %5481, 2.550000e+02
  %5486 = fadd fast float %5485, 0x3F70101020000000
  %5487 = fptoui float %5486 to i32
  %5488 = icmp ult i32 %5484, %5487
  br i1 %5488, label %5489, label %5657

; <label>:5489                                    ; preds = %5458
  %5490 = fcmp fast ogt float %81, 9.843750e-01
  %5491 = fadd fast float %82, -4.000000e+00
  %5492 = select i1 %5490, float -4.000000e+00, float %5491
  %5493 = call float @dx.op.binary.f32(i32 35, float %5492, float 0.000000e+00)  ; FMax(a,b)
  %5494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5495 = extractvalue %dx.types.CBufRet.f32 %5494, 0
  %5496 = fadd fast float %5495, %5493
  %5497 = extractvalue %dx.types.CBufRet.f32 %5494, 2
  %5498 = fmul fast float %5496, %5497
  %5499 = call float @dx.op.unary.f32(i32 23, float %5498)  ; Log(value)
  %5500 = extractvalue %dx.types.CBufRet.f32 %5494, 3
  %5501 = fmul fast float %5500, %5499
  %5502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5503 = extractvalue %dx.types.CBufRet.f32 %5502, 2
  %5504 = fmul fast float %5501, %5503
  %5505 = call float @dx.op.unary.f32(i32 7, float %5504)  ; Saturate(value)
  %5506 = uitofp i32 %5484 to float
  %5507 = uitofp i32 %5487 to float
  %5508 = fadd fast float %5506, 5.000000e-01
  %5509 = fadd fast float %5507, 5.000000e-01
  %5510 = fmul fast float %5503, %5508
  %5511 = fmul fast float %5503, %5509
  %5512 = fadd fast float %5510, 0x3F0FFB4800000000
  %5513 = fadd fast float %5511, 0xBF0FFB4800000000
  %5514 = call float @dx.op.binary.f32(i32 35, float %5505, float %5512)  ; FMax(a,b)
  %5515 = call float @dx.op.binary.f32(i32 36, float %5514, float %5513)  ; FMin(a,b)
  %5516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5517 = extractvalue %dx.types.CBufRet.f32 %5516, 1
  %5518 = extractvalue %dx.types.CBufRet.f32 %5516, 2
  %5519 = extractvalue %dx.types.CBufRet.f32 %5516, 0
  %5520 = fmul fast float %5517, %5515
  %5521 = fadd fast float %5519, %5520
  %5522 = fadd fast float %5519, %5518
  %5523 = fsub fast float %5517, %5518
  %5524 = fadd fast float %5523, %5519
  %5525 = call float @dx.op.binary.f32(i32 35, float %5521, float %5522)  ; FMax(a,b)
  %5526 = call float @dx.op.binary.f32(i32 36, float %5525, float %5524)  ; FMin(a,b)
  %5527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %5464, float %5465, float %5526, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5528 = extractvalue %dx.types.ResRet.f32 %5527, 0
  %5529 = extractvalue %dx.types.ResRet.f32 %5527, 1
  %5530 = extractvalue %dx.types.ResRet.f32 %5527, 2
  %5531 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5532 = extractvalue %dx.types.CBufRet.i32 %5531, 0
  %5533 = extractvalue %dx.types.CBufRet.i32 %5531, 1
  %5534 = uitofp i32 %5532 to float
  %5535 = uitofp i32 %5533 to float
  %5536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5537 = extractvalue %dx.types.CBufRet.f32 %5536, 0
  %5538 = extractvalue %dx.types.CBufRet.f32 %5536, 1
  %5539 = fmul fast float %5534, %5464
  %5540 = fmul fast float %5535, %5465
  %5541 = fadd fast float %5539, -5.000000e-01
  %5542 = fadd fast float %5540, -5.000000e-01
  %5543 = call float @dx.op.unary.f32(i32 22, float %5541)  ; Frc(value)
  %5544 = call float @dx.op.unary.f32(i32 22, float %5542)  ; Frc(value)
  %5545 = fmul fast float %5543, %5543
  %5546 = fmul fast float %5545, %5543
  %5547 = fsub fast float 3.000000e+00, %5543
  %5548 = fmul fast float %5545, %5547
  %5549 = fmul fast float %5543, 3.000000e+00
  %5550 = fmul fast float %5546, 3.000000e+00
  %5551 = fmul fast float %5545, 6.000000e+00
  %5552 = fsub fast float %5550, %5551
  %5553 = fadd fast float %5552, 4.000000e+00
  %5554 = fmul fast float %5553, 0x3FC5555560000000
  %5555 = fmul fast float %5546, -3.000000e+00
  %5556 = fadd fast float %5545, %5543
  %5557 = fmul fast float %5556, 3.000000e+00
  %5558 = fadd fast float %5555, 1.000000e+00
  %5559 = fadd fast float %5558, %5557
  %5560 = fmul fast float %5546, 0x3FC5555560000000
  %5561 = fmul fast float %5544, %5544
  %5562 = fmul fast float %5561, %5544
  %5563 = fsub fast float 3.000000e+00, %5544
  %5564 = fmul fast float %5561, %5563
  %5565 = fmul fast float %5544, 3.000000e+00
  %5566 = fmul fast float %5562, 3.000000e+00
  %5567 = fmul fast float %5561, 6.000000e+00
  %5568 = fsub fast float %5566, %5567
  %5569 = fadd fast float %5568, 4.000000e+00
  %5570 = fmul fast float %5569, 0x3FC5555560000000
  %5571 = fmul fast float %5562, -3.000000e+00
  %5572 = fadd fast float %5561, %5544
  %5573 = fmul fast float %5572, 3.000000e+00
  %5574 = fadd fast float %5571, 1.000000e+00
  %5575 = fadd fast float %5574, %5573
  %5576 = fmul fast float %5562, 0x3FC5555560000000
  %5577 = fadd fast float %5543, 1.000000e+00
  %5578 = fsub fast float 1.000000e+00, %5549
  %5579 = fadd fast float %5578, %5548
  %5580 = fadd fast float %5579, %5553
  %5581 = fmul fast float %5580, 0x3FC5555560000000
  %5582 = fdiv fast float %5554, %5581
  %5583 = fsub fast float %5577, %5582
  %5584 = fsub fast float 1.000000e+00, %5543
  %5585 = fadd fast float %5559, %5546
  %5586 = fmul fast float %5585, 0x3FC5555560000000
  %5587 = fdiv fast float %5560, %5586
  %5588 = fadd fast float %5584, %5587
  %5589 = fadd fast float %5544, 1.000000e+00
  %5590 = fsub fast float 1.000000e+00, %5565
  %5591 = fadd fast float %5590, %5564
  %5592 = fadd fast float %5591, %5569
  %5593 = fmul fast float %5592, 0x3FC5555560000000
  %5594 = fdiv fast float %5570, %5593
  %5595 = fsub fast float %5589, %5594
  %5596 = fsub fast float 1.000000e+00, %5544
  %5597 = fadd fast float %5575, %5562
  %5598 = fmul fast float %5597, 0x3FC5555560000000
  %5599 = fdiv fast float %5576, %5598
  %5600 = fadd fast float %5599, %5596
  %5601 = fmul fast float %5583, %5537
  %5602 = fsub fast float %5464, %5601
  %5603 = fmul fast float %5588, %5537
  %5604 = fadd fast float %5603, %5464
  %5605 = fmul fast float %5600, %5538
  %5606 = fadd fast float %5605, %5465
  %5607 = fmul fast float %5595, %5538
  %5608 = fsub fast float %5465, %5607
  %5609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5602, float %5608, float %5526, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5610 = extractvalue %dx.types.ResRet.f32 %5609, 0
  %5611 = extractvalue %dx.types.ResRet.f32 %5609, 1
  %5612 = extractvalue %dx.types.ResRet.f32 %5609, 2
  %5613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5604, float %5608, float %5526, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5614 = extractvalue %dx.types.ResRet.f32 %5613, 0
  %5615 = extractvalue %dx.types.ResRet.f32 %5613, 1
  %5616 = extractvalue %dx.types.ResRet.f32 %5613, 2
  %5617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5602, float %5606, float %5526, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5618 = extractvalue %dx.types.ResRet.f32 %5617, 0
  %5619 = extractvalue %dx.types.ResRet.f32 %5617, 1
  %5620 = extractvalue %dx.types.ResRet.f32 %5617, 2
  %5621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5604, float %5606, float %5526, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5622 = extractvalue %dx.types.ResRet.f32 %5621, 0
  %5623 = extractvalue %dx.types.ResRet.f32 %5621, 1
  %5624 = extractvalue %dx.types.ResRet.f32 %5621, 2
  %5625 = fsub fast float %5618, %5610
  %5626 = fsub fast float %5619, %5611
  %5627 = fsub fast float %5620, %5612
  %5628 = fmul fast float %5625, %5598
  %5629 = fmul fast float %5626, %5598
  %5630 = fmul fast float %5627, %5598
  %5631 = fadd fast float %5628, %5610
  %5632 = fadd fast float %5629, %5611
  %5633 = fadd fast float %5630, %5612
  %5634 = fsub fast float %5622, %5614
  %5635 = fsub fast float %5623, %5615
  %5636 = fsub fast float %5624, %5616
  %5637 = fmul fast float %5634, %5598
  %5638 = fmul fast float %5635, %5598
  %5639 = fmul fast float %5636, %5598
  %5640 = fsub fast float %5614, %5631
  %5641 = fadd fast float %5640, %5637
  %5642 = fsub fast float %5615, %5632
  %5643 = fadd fast float %5642, %5638
  %5644 = fsub fast float %5616, %5633
  %5645 = fadd fast float %5644, %5639
  %5646 = fmul fast float %5641, %5586
  %5647 = fmul fast float %5643, %5586
  %5648 = fmul fast float %5645, %5586
  %5649 = fadd fast float %5646, %5631
  %5650 = fadd fast float %5647, %5632
  %5651 = fadd fast float %5648, %5633
  %5652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5653 = extractvalue %dx.types.CBufRet.f32 %5652, 1
  %5654 = fmul fast float %5649, %5653
  %5655 = fmul fast float %5650, %5653
  %5656 = fmul fast float %5651, %5653
  br label %5657

; <label>:5657                                    ; preds = %5489, %5458
  %5658 = phi float [ %5528, %5489 ], [ 1.000000e+00, %5458 ]
  %5659 = phi float [ %5529, %5489 ], [ 1.000000e+00, %5458 ]
  %5660 = phi float [ %5530, %5489 ], [ 1.000000e+00, %5458 ]
  %5661 = phi float [ %5654, %5489 ], [ 0.000000e+00, %5458 ]
  %5662 = phi float [ %5655, %5489 ], [ 0.000000e+00, %5458 ]
  %5663 = phi float [ %5656, %5489 ], [ 0.000000e+00, %5458 ]
  %5664 = fmul fast float %5661, %5435
  %5665 = fmul fast float %5662, %5435
  %5666 = fmul fast float %5663, %5435
  %5667 = call float @dx.op.dot3.f32(i32 55, float %5658, float %5659, float %5660, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5668 = call float @dx.op.dot3.f32(i32 55, float %5664, float %5665, float %5666, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5669 = select i1 %229, float %5667, float %5658
  %5670 = select i1 %229, float %5667, float %5659
  %5671 = select i1 %229, float 1.000000e+00, float %5660
  %5672 = select i1 %229, float %5668, float %5664
  %5673 = select i1 %229, float 0.000000e+00, float %5665
  %5674 = select i1 %229, float 0.000000e+00, float %5666
  %5675 = fmul fast float %5669, %5448
  %5676 = fmul fast float %5670, %5449
  %5677 = fmul fast float %5671, %5450
  %5678 = fadd fast float %5675, %5672
  %5679 = fadd fast float %5676, %5673
  %5680 = fadd fast float %5674, %5677
  %5681 = fmul fast float %5669, %5421
  %5682 = fmul fast float %5670, %5422
  %5683 = fmul fast float %5671, %5423
  %5684 = fmul fast float %91, 2.000000e+00
  %5685 = fmul fast float %5684, %5460
  %5686 = fmul fast float %92, 2.000000e+00
  %5687 = fmul fast float %5686, %5461
  %5688 = fsub fast float 1.000000e+00, %5685
  %5689 = fsub fast float 1.000000e+00, %5687
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 0
  %5692 = extractvalue %dx.types.CBufRet.f32 %5690, 1
  %5693 = extractvalue %dx.types.CBufRet.f32 %5690, 2
  %5694 = fmul fast float %5688, %5691
  %5695 = fmul fast float %5688, %5692
  %5696 = fmul fast float %5688, %5693
  %5697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5698 = extractvalue %dx.types.CBufRet.f32 %5697, 0
  %5699 = extractvalue %dx.types.CBufRet.f32 %5697, 1
  %5700 = extractvalue %dx.types.CBufRet.f32 %5697, 2
  %5701 = fmul fast float %5689, %5698
  %5702 = fmul fast float %5689, %5699
  %5703 = fmul fast float %5689, %5700
  %5704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5705 = extractvalue %dx.types.CBufRet.f32 %5704, 0
  %5706 = extractvalue %dx.types.CBufRet.f32 %5704, 1
  %5707 = extractvalue %dx.types.CBufRet.f32 %5704, 2
  %5708 = fadd fast float %5701, %5705
  %5709 = fadd fast float %5708, %5694
  %5710 = fadd fast float %5702, %5706
  %5711 = fadd fast float %5710, %5695
  %5712 = fadd fast float %5703, %5707
  %5713 = fadd fast float %5712, %5696
  %5714 = fmul fast float %5709, %189
  %5715 = fmul fast float %5711, %189
  %5716 = fmul fast float %5713, %189
  br label %5717

; <label>:5717                                    ; preds = %5657, %5420
  %5718 = phi float [ %5714, %5657 ], [ %138, %5420 ]
  %5719 = phi float [ %5715, %5657 ], [ %139, %5420 ]
  %5720 = phi float [ %5716, %5657 ], [ %140, %5420 ]
  %5721 = phi float [ %189, %5657 ], [ %82, %5420 ]
  %5722 = phi float [ %5678, %5657 ], [ %5448, %5420 ]
  %5723 = phi float [ %5679, %5657 ], [ %5449, %5420 ]
  %5724 = phi float [ %5680, %5657 ], [ %5450, %5420 ]
  %5725 = phi float [ %5681, %5657 ], [ %5421, %5420 ]
  %5726 = phi float [ %5682, %5657 ], [ %5422, %5420 ]
  %5727 = phi float [ %5683, %5657 ], [ %5423, %5420 ]
  %5728 = phi float [ %5658, %5657 ], [ 1.000000e+00, %5420 ]
  br i1 %5457, label %6883, label %5729

; <label>:5729                                    ; preds = %5717
  %5730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5731 = extractvalue %dx.types.CBufRet.f32 %5730, 0
  %5732 = extractvalue %dx.types.CBufRet.f32 %5730, 1
  %5733 = extractvalue %dx.types.CBufRet.f32 %5730, 2
  %5734 = extractvalue %dx.types.CBufRet.f32 %5730, 3
  %5735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5736 = extractvalue %dx.types.CBufRet.f32 %5735, 0
  %5737 = extractvalue %dx.types.CBufRet.f32 %5735, 1
  %5738 = extractvalue %dx.types.CBufRet.f32 %5735, 2
  %5739 = extractvalue %dx.types.CBufRet.f32 %5735, 3
  %5740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5741 = extractvalue %dx.types.CBufRet.f32 %5740, 0
  %5742 = extractvalue %dx.types.CBufRet.f32 %5740, 1
  %5743 = extractvalue %dx.types.CBufRet.f32 %5740, 2
  %5744 = extractvalue %dx.types.CBufRet.f32 %5740, 3
  %5745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5746 = extractvalue %dx.types.CBufRet.f32 %5745, 0
  %5747 = extractvalue %dx.types.CBufRet.f32 %5745, 1
  %5748 = extractvalue %dx.types.CBufRet.f32 %5745, 2
  %5749 = extractvalue %dx.types.CBufRet.f32 %5745, 3
  %5750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.f32 %5750, 3
  %5752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5753 = extractvalue %dx.types.CBufRet.f32 %5752, 3
  %5754 = extractvalue %dx.types.CBufRet.f32 %5752, 0
  %5755 = extractvalue %dx.types.CBufRet.f32 %5752, 1
  %5756 = extractvalue %dx.types.CBufRet.f32 %5752, 2
  %5757 = fcmp fast olt float %5756, -5.000000e-01
  %5758 = call float @dx.op.dot3.f32(i32 55, float %5718, float %5719, float %5720, float %5718, float %5719, float %5720)  ; Dot3(ax,ay,az,bx,by,bz)
  %5759 = call float @dx.op.unary.f32(i32 25, float %5758)  ; Rsqrt(value)
  %5760 = fmul fast float %5759, %5758
  %5761 = fmul fast float %5759, %5718
  %5762 = fmul fast float %5759, %5719
  %5763 = fmul fast float %5759, %5720
  %5764 = fadd fast float %5760, %5734
  %5765 = call float @dx.op.dot3.f32(i32 55, float %5761, float %5762, float %5763, float %5731, float %5732, float %5733)  ; Dot3(ax,ay,az,bx,by,bz)
  %5766 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5767 = extractvalue %dx.types.CBufRet.i32 %5766, 1
  %5768 = and i32 %5767, 1
  %5769 = icmp ne i32 %5768, 0
  %5770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5771 = extractvalue %dx.types.CBufRet.f32 %5770, 2
  %5772 = fcmp fast ogt float %5771, 0.000000e+00
  %5773 = and i1 %5769, %5772
  br i1 %5773, label %5774, label %6180, !dx.controlflow.hints !134

; <label>:5774                                    ; preds = %5729
  %5775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.f32 %5775, 3
  %5777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5778 = extractvalue %dx.types.CBufRet.f32 %5777, 2
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 2
  %5781 = fsub fast float %5778, %5780
  %5782 = and i32 %5767, 2
  %5783 = extractvalue %dx.types.CBufRet.i32 %5766, 0
  %5784 = call i32 @dx.op.binary.i32(i32 40, i32 %5783, i32 3)  ; UMin(a,b)
  %5785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5786 = extractvalue %dx.types.CBufRet.f32 %5785, 0
  %5787 = extractvalue %dx.types.CBufRet.f32 %5785, 1
  %5788 = extractvalue %dx.types.CBufRet.f32 %5779, 0
  %5789 = extractvalue %dx.types.CBufRet.f32 %5779, 1
  %5790 = fsub fast float %5786, %5788
  %5791 = fsub fast float %5787, %5789
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 0
  %5794 = fcmp fast ogt float %5793, 0.000000e+00
  %5795 = fsub fast float -0.000000e+00, %5790
  %5796 = fsub fast float -0.000000e+00, %5791
  %5797 = call float @dx.op.dot2.f32(i32 54, float %5761, float %5762, float %5761, float %5762)  ; Dot2(ax,ay,bx,by)
  %5798 = call float @dx.op.dot2.f32(i32 54, float %5761, float %5762, float %5795, float %5796)  ; Dot2(ax,ay,bx,by)
  %5799 = fmul fast float %5798, 2.000000e+00
  %5800 = call float @dx.op.dot2.f32(i32 54, float %5795, float %5796, float %5795, float %5796)  ; Dot2(ax,ay,bx,by)
  %5801 = fmul fast float %5793, %5793
  %5802 = fsub fast float %5800, %5801
  %5803 = fmul fast float %5799, %5799
  %5804 = fmul fast float %5797, 4.000000e+00
  %5805 = fmul fast float %5804, %5802
  %5806 = fsub fast float %5803, %5805
  %5807 = fcmp fast ogt float %5806, 0.000000e+00
  br i1 %5807, label %5808, label %5823

; <label>:5808                                    ; preds = %5774
  %5809 = fcmp fast ogt float %5799, 0.000000e+00
  %5810 = call float @dx.op.unary.f32(i32 24, float %5806)  ; Sqrt(value)
  %5811 = fsub fast float -0.000000e+00, %5810
  %5812 = select i1 %5809, float %5810, float %5811
  %5813 = fadd fast float %5812, %5799
  %5814 = fmul float %5813, -5.000000e-01
  %5815 = fdiv fast float %5814, %5797
  %5816 = call float @dx.op.binary.f32(i32 35, float %5815, float 0.000000e+00)  ; FMax(a,b)
  %5817 = call float @dx.op.binary.f32(i32 36, float %5760, float %5816)  ; FMin(a,b)
  %5818 = fdiv fast float %5802, %5814
  %5819 = call float @dx.op.binary.f32(i32 35, float %5818, float 0.000000e+00)  ; FMax(a,b)
  %5820 = call float @dx.op.binary.f32(i32 36, float %5760, float %5819)  ; FMin(a,b)
  %5821 = call float @dx.op.binary.f32(i32 36, float %5817, float %5820)  ; FMin(a,b)
  %5822 = call float @dx.op.binary.f32(i32 35, float %5817, float %5820)  ; FMax(a,b)
  br label %5823

; <label>:5823                                    ; preds = %5808, %5774
  %5824 = phi float [ %5822, %5808 ], [ -1.000000e+00, %5774 ]
  %5825 = phi float [ %5821, %5808 ], [ -1.000000e+00, %5774 ]
  %5826 = phi i1 [ true, %5808 ], [ false, %5774 ]
  %5827 = and i1 %5794, %5826
  br i1 %5827, label %5828, label %5830

; <label>:5828                                    ; preds = %5823
  %5829 = fcmp fast oeq float %5825, %5824
  br i1 %5829, label %6133, label %5831

; <label>:5830                                    ; preds = %5823
  br i1 %5794, label %6133, label %5831

; <label>:5831                                    ; preds = %5830, %5828
  %5832 = phi float [ %5760, %5830 ], [ %5824, %5828 ]
  %5833 = phi float [ 0.000000e+00, %5830 ], [ %5825, %5828 ]
  %5834 = icmp ne i32 %5782, 0
  %5835 = fmul fast float %5832, %5763
  %5836 = fadd fast float %5835, %5776
  %5837 = fmul fast float %5836, %5832
  %5838 = select i1 %5834, float 0.000000e+00, float %5837
  %5839 = fcmp fast oeq float %5763, 0.000000e+00
  %5840 = fdiv fast float %5781, %5763
  %5841 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5840)  ; FMax(a,b)
  %5842 = select i1 %5839, float %5832, float %5841
  %5843 = call float @dx.op.binary.f32(i32 36, float %5832, float %5842)  ; FMin(a,b)
  %5844 = fcmp fast ogt float %5763, 0.000000e+00
  %5845 = fcmp fast olt float %5781, 0.000000e+00
  br i1 %5844, label %5846, label %5903

; <label>:5846                                    ; preds = %5831
  %5847 = icmp eq i32 %5782, 0
  br i1 %5845, label %5848, label %5892

; <label>:5848                                    ; preds = %5846
  %5849 = select i1 %5847, float %5832, float 0.000000e+00
  %5850 = fsub fast float -0.000000e+00, %5849
  %5851 = call float @dx.op.unary.f32(i32 6, float %5850)  ; FAbs(value)
  %5852 = fmul fast float %5849, %5763
  %5853 = fadd fast float %5852, %5776
  %5854 = fmul fast float %5851, %5853
  %5855 = fsub fast float %5838, %5854
  %5856 = fsub fast float %5832, %5851
  %5857 = select i1 %5847, float %5856, float 0.000000e+00
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 0
  %5860 = extractvalue %dx.types.CBufRet.f32 %5858, 1
  %5861 = extractvalue %dx.types.CBufRet.f32 %5858, 2
  %5862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5863 = extractvalue %dx.types.CBufRet.f32 %5862, 0
  %5864 = extractvalue %dx.types.CBufRet.f32 %5862, 1
  %5865 = extractvalue %dx.types.CBufRet.f32 %5862, 2
  %5866 = extractvalue %dx.types.CBufRet.f32 %5862, 3
  %5867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5868 = extractvalue %dx.types.CBufRet.f32 %5867, 3
  %5869 = call float @dx.op.binary.f32(i32 36, float %5855, float %5868)  ; FMin(a,b)
  %5870 = fmul fast float %5866, %5857
  %5871 = call float @dx.op.unary.f32(i32 7, float %5870)  ; Saturate(value)
  %5872 = fsub fast float %5863, %5859
  %5873 = fsub fast float %5864, %5860
  %5874 = fsub fast float %5865, %5861
  %5875 = fmul fast float %5871, %5872
  %5876 = fmul fast float %5871, %5873
  %5877 = fmul fast float %5871, %5874
  %5878 = fadd fast float %5875, %5859
  %5879 = fadd fast float %5876, %5860
  %5880 = fadd fast float %5877, %5861
  %5881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5882 = extractvalue %dx.types.CBufRet.f32 %5881, 0
  %5883 = extractvalue %dx.types.CBufRet.f32 %5881, 1
  %5884 = fadd fast float %5883, %5882
  %5885 = call float @dx.op.unary.f32(i32 7, float %5884)  ; Saturate(value)
  %5886 = extractvalue %dx.types.CBufRet.f32 %5881, 2
  %5887 = extractvalue %dx.types.CBufRet.f32 %5881, 3
  %5888 = fadd fast float %5887, %5886
  %5889 = call float @dx.op.unary.f32(i32 7, float %5888)  ; Saturate(value)
  %5890 = fmul fast float %5885, %5869
  %5891 = fmul fast float %5890, %5889
  br label %6133

; <label>:5892                                    ; preds = %5846
  br i1 %5847, label %5893, label %5914

; <label>:5893                                    ; preds = %5892
  %5894 = call float @dx.op.binary.f32(i32 36, float %5843, float %5833)  ; FMin(a,b)
  %5895 = fsub fast float %5843, %5894
  %5896 = fsub fast float %5895, %5832
  %5897 = call float @dx.op.unary.f32(i32 6, float %5896)  ; FAbs(value)
  %5898 = fadd fast float %5895, %5832
  %5899 = fmul fast float %5898, %5763
  %5900 = fadd fast float %5899, %5776
  %5901 = fmul fast float %5900, %5897
  %5902 = fsub fast float %5838, %5901
  br label %5914

; <label>:5903                                    ; preds = %5831
  br i1 %5845, label %5904, label %5914

; <label>:5904                                    ; preds = %5903
  %5905 = call float @dx.op.binary.f32(i32 35, float %5833, float %5843)  ; FMax(a,b)
  %5906 = icmp eq i32 %5782, 0
  %5907 = select i1 %5906, float %5843, float 0.000000e+00
  %5908 = fsub fast float -0.000000e+00, %5907
  %5909 = call float @dx.op.unary.f32(i32 6, float %5908)  ; FAbs(value)
  %5910 = fmul fast float %5907, %5763
  %5911 = fadd fast float %5910, %5776
  %5912 = fmul fast float %5909, %5911
  %5913 = fsub fast float %5838, %5912
  br label %5914

; <label>:5914                                    ; preds = %5904, %5903, %5893, %5892
  %5915 = phi float [ %5833, %5892 ], [ %5833, %5893 ], [ %5905, %5904 ], [ %5833, %5903 ]
  %5916 = phi float [ 0.000000e+00, %5892 ], [ %5897, %5893 ], [ %5909, %5904 ], [ 0.000000e+00, %5903 ]
  %5917 = phi float [ %5838, %5892 ], [ %5902, %5893 ], [ %5913, %5904 ], [ %5838, %5903 ]
  %5918 = phi float [ %5843, %5892 ], [ %5843, %5893 ], [ %5832, %5904 ], [ %5832, %5903 ]
  %5919 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 0
  store float -1.000000e+00, float* %5919, align 4, !tbaa !135, !noalias !137
  %5920 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 1
  store float -1.000000e+00, float* %5920, align 4, !tbaa !135, !noalias !137
  %5921 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 2
  store float -1.000000e+00, float* %5921, align 4, !tbaa !135, !noalias !137
  %5922 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 0
  store float -1.000000e+00, float* %5922, align 4, !tbaa !135, !noalias !137
  %5923 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 1
  store float -1.000000e+00, float* %5923, align 4, !tbaa !135, !noalias !137
  %5924 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 2
  store float -1.000000e+00, float* %5924, align 4, !tbaa !135, !noalias !137
  %5925 = icmp sgt i32 %5784, 0
  br i1 %5925, label %5926, label %5987

; <label>:5926                                    ; preds = %5914
  br label %5927

; <label>:5927                                    ; preds = %5976, %5926
  %5928 = phi i32 [ %5977, %5976 ], [ 0, %5926 ]
  %5929 = phi i32 [ %5978, %5976 ], [ 0, %5926 ]
  %5930 = add nuw i32 %5929, 171
  %5931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %5930)  ; CBufferLoadLegacy(handle,regIndex)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5931, 0
  %5933 = extractvalue %dx.types.CBufRet.f32 %5931, 1
  %5934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5935 = extractvalue %dx.types.CBufRet.f32 %5934, 0
  %5936 = extractvalue %dx.types.CBufRet.f32 %5934, 1
  %5937 = fsub fast float %5932, %5935
  %5938 = fsub fast float %5933, %5936
  %5939 = extractvalue %dx.types.CBufRet.f32 %5931, 2
  %5940 = fsub fast float -0.000000e+00, %5937
  %5941 = fsub fast float -0.000000e+00, %5938
  %5942 = call float @dx.op.dot2.f32(i32 54, float %5761, float %5762, float %5940, float %5941)  ; Dot2(ax,ay,bx,by)
  %5943 = fmul fast float %5942, 2.000000e+00
  %5944 = call float @dx.op.dot2.f32(i32 54, float %5940, float %5941, float %5940, float %5941)  ; Dot2(ax,ay,bx,by)
  %5945 = fmul fast float %5939, %5939
  %5946 = fsub fast float %5944, %5945
  %5947 = fmul fast float %5943, %5943
  %5948 = fmul fast float %5804, %5946
  %5949 = fsub fast float %5947, %5948
  %5950 = fcmp fast ogt float %5949, 0.000000e+00
  br i1 %5950, label %5951, label %5966

; <label>:5951                                    ; preds = %5927
  %5952 = fcmp fast ogt float %5943, 0.000000e+00
  %5953 = call float @dx.op.unary.f32(i32 24, float %5949)  ; Sqrt(value)
  %5954 = fsub fast float -0.000000e+00, %5953
  %5955 = select i1 %5952, float %5953, float %5954
  %5956 = fadd fast float %5955, %5943
  %5957 = fmul float %5956, -5.000000e-01
  %5958 = fdiv fast float %5957, %5797
  %5959 = call float @dx.op.binary.f32(i32 35, float %5958, float 0.000000e+00)  ; FMax(a,b)
  %5960 = call float @dx.op.binary.f32(i32 36, float %5832, float %5959)  ; FMin(a,b)
  %5961 = fdiv fast float %5946, %5957
  %5962 = call float @dx.op.binary.f32(i32 35, float %5961, float 0.000000e+00)  ; FMax(a,b)
  %5963 = call float @dx.op.binary.f32(i32 36, float %5832, float %5962)  ; FMin(a,b)
  %5964 = call float @dx.op.binary.f32(i32 36, float %5960, float %5963)  ; FMin(a,b)
  %5965 = call float @dx.op.binary.f32(i32 35, float %5960, float %5963)  ; FMax(a,b)
  br label %5966

; <label>:5966                                    ; preds = %5951, %5927
  %5967 = phi float [ %5965, %5951 ], [ -1.000000e+00, %5927 ]
  %5968 = phi float [ %5964, %5951 ], [ -1.000000e+00, %5927 ]
  %5969 = phi i1 [ true, %5951 ], [ false, %5927 ]
  br i1 %5969, label %5970, label %5976

; <label>:5970                                    ; preds = %5966
  %5971 = call float @dx.op.binary.f32(i32 35, float %5915, float %5968)  ; FMax(a,b)
  %5972 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %5929
  store float %5971, float* %5972, align 4, !tbaa !135, !noalias !137
  %5973 = call float @dx.op.binary.f32(i32 35, float %5915, float %5967)  ; FMax(a,b)
  %5974 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %5929
  store float %5973, float* %5974, align 4, !tbaa !135, !noalias !137
  %5975 = add nsw i32 %5928, 1
  br label %5976

; <label>:5976                                    ; preds = %5970, %5966
  %5977 = phi i32 [ %5975, %5970 ], [ %5928, %5966 ]
  %5978 = add nuw nsw i32 %5929, 1
  %5979 = icmp eq i32 %5978, %5784
  br i1 %5979, label %5980, label %5927

; <label>:5980                                    ; preds = %5976
  %5981 = load float, float* %5921, align 4, !tbaa !135, !alias.scope !153, !noalias !156
  %5982 = load float, float* %5920, align 4, !tbaa !135, !alias.scope !159, !noalias !160
  %5983 = load float, float* %5919, align 4, !tbaa !135, !alias.scope !161, !noalias !162
  %5984 = load float, float* %5924, align 4, !tbaa !135, !alias.scope !163, !noalias !166
  %5985 = load float, float* %5923, align 4, !tbaa !135, !alias.scope !169, !noalias !170
  %5986 = load float, float* %5922, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  br label %5987

; <label>:5987                                    ; preds = %5980, %5914
  %5988 = phi float [ -1.000000e+00, %5914 ], [ %5986, %5980 ]
  %5989 = phi float [ -1.000000e+00, %5914 ], [ %5985, %5980 ]
  %5990 = phi float [ -1.000000e+00, %5914 ], [ %5984, %5980 ]
  %5991 = phi float [ -1.000000e+00, %5914 ], [ %5983, %5980 ]
  %5992 = phi float [ -1.000000e+00, %5914 ], [ %5982, %5980 ]
  %5993 = phi float [ -1.000000e+00, %5914 ], [ %5981, %5980 ]
  %5994 = phi i32 [ 0, %5914 ], [ %5977, %5980 ]
  %5995 = call float @dx.op.binary.f32(i32 36, float %5992, float %5993)  ; FMin(a,b)
  %5996 = call float @dx.op.binary.f32(i32 36, float %5991, float %5995)  ; FMin(a,b)
  %5997 = call float @dx.op.binary.f32(i32 35, float %5991, float %5992)  ; FMax(a,b)
  %5998 = call float @dx.op.binary.f32(i32 36, float %5997, float %5993)  ; FMin(a,b)
  %5999 = call float @dx.op.binary.f32(i32 36, float %5991, float %5992)  ; FMin(a,b)
  %6000 = call float @dx.op.binary.f32(i32 35, float %5999, float %5998)  ; FMax(a,b)
  %6001 = call float @dx.op.binary.f32(i32 35, float %5992, float %5993)  ; FMax(a,b)
  %6002 = call float @dx.op.binary.f32(i32 35, float %5991, float %6001)  ; FMax(a,b)
  store float %5996, float* %5919, align 4, !tbaa !135, !alias.scope !161, !noalias !162
  store float %6000, float* %5920, align 4, !tbaa !135, !alias.scope !159, !noalias !160
  store float %6002, float* %5921, align 4, !tbaa !135, !alias.scope !153, !noalias !156
  %6003 = call float @dx.op.binary.f32(i32 36, float %5989, float %5990)  ; FMin(a,b)
  %6004 = call float @dx.op.binary.f32(i32 36, float %5988, float %6003)  ; FMin(a,b)
  %6005 = call float @dx.op.binary.f32(i32 35, float %5988, float %5989)  ; FMax(a,b)
  %6006 = call float @dx.op.binary.f32(i32 36, float %6005, float %5990)  ; FMin(a,b)
  %6007 = call float @dx.op.binary.f32(i32 36, float %5988, float %5989)  ; FMin(a,b)
  %6008 = call float @dx.op.binary.f32(i32 35, float %6007, float %6006)  ; FMax(a,b)
  %6009 = call float @dx.op.binary.f32(i32 35, float %5989, float %5990)  ; FMax(a,b)
  %6010 = call float @dx.op.binary.f32(i32 35, float %5988, float %6009)  ; FMax(a,b)
  store float %6004, float* %5922, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  store float %6008, float* %5923, align 4, !tbaa !135, !alias.scope !169, !noalias !170
  store float %6010, float* %5924, align 4, !tbaa !135, !alias.scope !163, !noalias !166
  %6011 = sub nsw i32 3, %5994
  %6012 = icmp sgt i32 %6011, 2
  br i1 %6012, label %6013, label %6051

; <label>:6013                                    ; preds = %5987
  %6014 = icmp eq i32 %5782, 0
  %6015 = fsub fast float %5832, %5916
  %6016 = select i1 %6014, float %6015, float %5916
  %6017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6018 = extractvalue %dx.types.CBufRet.f32 %6017, 0
  %6019 = extractvalue %dx.types.CBufRet.f32 %6017, 1
  %6020 = extractvalue %dx.types.CBufRet.f32 %6017, 2
  %6021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6022 = extractvalue %dx.types.CBufRet.f32 %6021, 0
  %6023 = extractvalue %dx.types.CBufRet.f32 %6021, 1
  %6024 = extractvalue %dx.types.CBufRet.f32 %6021, 2
  %6025 = extractvalue %dx.types.CBufRet.f32 %6021, 3
  %6026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6027 = extractvalue %dx.types.CBufRet.f32 %6026, 3
  %6028 = call float @dx.op.binary.f32(i32 36, float %5917, float %6027)  ; FMin(a,b)
  %6029 = fmul fast float %6025, %6016
  %6030 = call float @dx.op.unary.f32(i32 7, float %6029)  ; Saturate(value)
  %6031 = fsub fast float %6022, %6018
  %6032 = fsub fast float %6023, %6019
  %6033 = fsub fast float %6024, %6020
  %6034 = fmul fast float %6030, %6031
  %6035 = fmul fast float %6030, %6032
  %6036 = fmul fast float %6030, %6033
  %6037 = fadd fast float %6034, %6018
  %6038 = fadd fast float %6035, %6019
  %6039 = fadd fast float %6036, %6020
  %6040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6041 = extractvalue %dx.types.CBufRet.f32 %6040, 0
  %6042 = extractvalue %dx.types.CBufRet.f32 %6040, 1
  %6043 = fadd fast float %6042, %6041
  %6044 = call float @dx.op.unary.f32(i32 7, float %6043)  ; Saturate(value)
  %6045 = extractvalue %dx.types.CBufRet.f32 %6040, 2
  %6046 = extractvalue %dx.types.CBufRet.f32 %6040, 3
  %6047 = fadd fast float %6046, %6045
  %6048 = call float @dx.op.unary.f32(i32 7, float %6047)  ; Saturate(value)
  %6049 = fmul fast float %6044, %6028
  %6050 = fmul fast float %6049, %6048
  br label %6133

; <label>:6051                                    ; preds = %5987
  %6052 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %6011
  %6053 = load float, float* %6052, align 4, !tbaa !135, !noalias !137
  %6054 = fcmp fast olt float %6053, %5918
  %6055 = icmp sgt i32 %5994, 0
  %6056 = and i1 %6055, %6054
  br i1 %6056, label %6057, label %6094

; <label>:6057                                    ; preds = %6051
  br label %6058

; <label>:6058                                    ; preds = %6087, %6057
  %6059 = phi float [ %6088, %6087 ], [ %5916, %6057 ]
  %6060 = phi float [ %6089, %6087 ], [ %5917, %6057 ]
  %6061 = phi float [ %6069, %6087 ], [ %6053, %6057 ]
  %6062 = phi i32 [ %6066, %6087 ], [ %6011, %6057 ]
  %6063 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %6062
  %6064 = load float, float* %6063, align 4, !tbaa !135, !noalias !137
  %6065 = icmp slt i32 %6062, 2
  %6066 = add nsw i32 %6062, 1
  %6067 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %6066
  %6068 = load float, float* %6067, align 4, !tbaa !135, !noalias !137
  %6069 = select i1 %6065, float %6068, float %5832
  %6070 = call float @dx.op.binary.f32(i32 36, float %6069, float %6064)  ; FMin(a,b)
  %6071 = call float @dx.op.binary.f32(i32 36, float %5918, float %6070)  ; FMin(a,b)
  %6072 = icmp eq i32 %5782, 0
  %6073 = fadd fast float %6071, %6061
  %6074 = fmul fast float %6073, %5763
  %6075 = fadd fast float %6074, %5776
  br i1 %6072, label %6081, label %6076

; <label>:6076                                    ; preds = %6058
  %6077 = fsub fast float %6071, %6061
  %6078 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6077)  ; FMax(a,b)
  %6079 = fmul fast float %6078, %6075
  %6080 = fadd fast float %6079, %6060
  br label %6087

; <label>:6081                                    ; preds = %6058
  %6082 = fsub fast float %6061, %6071
  %6083 = call float @dx.op.unary.f32(i32 6, float %6082)  ; FAbs(value)
  %6084 = fadd fast float %6083, %6059
  %6085 = fmul fast float %6083, %6075
  %6086 = fsub fast float %6060, %6085
  br label %6087

; <label>:6087                                    ; preds = %6081, %6076
  %6088 = phi float [ %6078, %6076 ], [ %6084, %6081 ]
  %6089 = phi float [ %6080, %6076 ], [ %6086, %6081 ]
  %6090 = fcmp fast olt float %6069, %5918
  %6091 = icmp slt i32 %6066, 3
  %6092 = and i1 %6091, %6090
  br i1 %6092, label %6058, label %6093

; <label>:6093                                    ; preds = %6087
  br label %6094

; <label>:6094                                    ; preds = %6093, %6051
  %6095 = phi float [ %5916, %6051 ], [ %6088, %6093 ]
  %6096 = phi float [ %5917, %6051 ], [ %6089, %6093 ]
  %6097 = fsub fast float %5832, %6095
  %6098 = select i1 %5834, float %6095, float %6097
  %6099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6100 = extractvalue %dx.types.CBufRet.f32 %6099, 0
  %6101 = extractvalue %dx.types.CBufRet.f32 %6099, 1
  %6102 = extractvalue %dx.types.CBufRet.f32 %6099, 2
  %6103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6104 = extractvalue %dx.types.CBufRet.f32 %6103, 0
  %6105 = extractvalue %dx.types.CBufRet.f32 %6103, 1
  %6106 = extractvalue %dx.types.CBufRet.f32 %6103, 2
  %6107 = extractvalue %dx.types.CBufRet.f32 %6103, 3
  %6108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6109 = extractvalue %dx.types.CBufRet.f32 %6108, 3
  %6110 = call float @dx.op.binary.f32(i32 36, float %6096, float %6109)  ; FMin(a,b)
  %6111 = fmul fast float %6107, %6098
  %6112 = call float @dx.op.unary.f32(i32 7, float %6111)  ; Saturate(value)
  %6113 = fsub fast float %6104, %6100
  %6114 = fsub fast float %6105, %6101
  %6115 = fsub fast float %6106, %6102
  %6116 = fmul fast float %6112, %6113
  %6117 = fmul fast float %6112, %6114
  %6118 = fmul fast float %6112, %6115
  %6119 = fadd fast float %6116, %6100
  %6120 = fadd fast float %6117, %6101
  %6121 = fadd fast float %6118, %6102
  %6122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6123 = extractvalue %dx.types.CBufRet.f32 %6122, 0
  %6124 = extractvalue %dx.types.CBufRet.f32 %6122, 1
  %6125 = fadd fast float %6124, %6123
  %6126 = call float @dx.op.unary.f32(i32 7, float %6125)  ; Saturate(value)
  %6127 = extractvalue %dx.types.CBufRet.f32 %6122, 2
  %6128 = extractvalue %dx.types.CBufRet.f32 %6122, 3
  %6129 = fadd fast float %6128, %6127
  %6130 = call float @dx.op.unary.f32(i32 7, float %6129)  ; Saturate(value)
  %6131 = fmul fast float %6126, %6110
  %6132 = fmul fast float %6131, %6130
  br label %6133

; <label>:6133                                    ; preds = %6094, %6013, %5848, %5830, %5828
  %6134 = phi float [ %5857, %5848 ], [ %6016, %6013 ], [ %6098, %6094 ], [ 0.000000e+00, %5828 ], [ 0.000000e+00, %5830 ]
  %6135 = phi float [ %5891, %5848 ], [ %6050, %6013 ], [ %6132, %6094 ], [ 0.000000e+00, %5828 ], [ 0.000000e+00, %5830 ]
  %6136 = phi float [ %5878, %5848 ], [ %6037, %6013 ], [ %6119, %6094 ], [ 0.000000e+00, %5828 ], [ 0.000000e+00, %5830 ]
  %6137 = phi float [ %5879, %5848 ], [ %6038, %6013 ], [ %6120, %6094 ], [ 0.000000e+00, %5828 ], [ 0.000000e+00, %5830 ]
  %6138 = phi float [ %5880, %5848 ], [ %6039, %6013 ], [ %6121, %6094 ], [ 0.000000e+00, %5828 ], [ 0.000000e+00, %5830 ]
  %6139 = fmul fast float %5771, %6135
  %6140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6141 = extractvalue %dx.types.CBufRet.f32 %6140, 2
  %6142 = fsub fast float %5778, %6141
  %6143 = fcmp fast olt float %6139, -2.000000e+01
  %6144 = call float @dx.op.unary.f32(i32 21, float %6139)  ; Exp(value)
  %6145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6146 = extractvalue %dx.types.CBufRet.f32 %6145, 2
  %6147 = extractvalue %dx.types.CBufRet.f32 %6145, 3
  %6148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6149 = extractvalue %dx.types.CBufRet.f32 %6148, 2
  %6150 = fmul fast float %6147, %6142
  %6151 = call float @dx.op.unary.f32(i32 7, float %6150)  ; Saturate(value)
  %6152 = fsub fast float 1.000000e+00, %6151
  %6153 = fmul fast float %5763, 5.000000e-01
  %6154 = fadd fast float %6153, 5.000000e-01
  %6155 = call float @dx.op.unary.f32(i32 7, float %6154)  ; Saturate(value)
  %6156 = fsub fast float 1.000000e+00, %6155
  %6157 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6152)  ; FMax(a,b)
  %6158 = fdiv fast float %6156, %6157
  %6159 = fsub fast float %6142, %5720
  %6160 = call float @dx.op.unary.f32(i32 6, float %6159)  ; FAbs(value)
  %6161 = fmul fast float %6160, %6146
  %6162 = call float @dx.op.unary.f32(i32 7, float %6158)  ; Saturate(value)
  %6163 = fsub fast float 1.000000e+00, %6161
  %6164 = fmul fast float %6163, %6162
  %6165 = fadd fast float %6164, %6161
  %6166 = fmul fast float %6149, %6142
  %6167 = call float @dx.op.unary.f32(i32 7, float %6166)  ; Saturate(value)
  %6168 = fsub fast float 1.000000e+00, %6165
  %6169 = fmul fast float %6168, %6167
  %6170 = fadd fast float %6169, %6165
  %6171 = call float @dx.op.unary.f32(i32 7, float %6170)  ; Saturate(value)
  %6172 = fadd fast float %6144, -1.000000e+00
  %6173 = select i1 %6143, float -1.000000e+00, float %6172
  %6174 = fmul fast float %6171, %6173
  %6175 = fadd fast float %6174, 1.000000e+00
  %6176 = fsub fast float -0.000000e+00, %6174
  %6177 = fmul fast float %6136, %6176
  %6178 = fmul fast float %6137, %6176
  %6179 = fmul fast float %6138, %6176
  br label %6180

; <label>:6180                                    ; preds = %6133, %5729
  %6181 = phi float [ %6134, %6133 ], [ 0.000000e+00, %5729 ]
  %6182 = phi float [ %6175, %6133 ], [ 1.000000e+00, %5729 ]
  %6183 = phi float [ %6177, %6133 ], [ 0.000000e+00, %5729 ]
  %6184 = phi float [ %6178, %6133 ], [ 0.000000e+00, %5729 ]
  %6185 = phi float [ %6179, %6133 ], [ 0.000000e+00, %5729 ]
  %6186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6187 = extractvalue %dx.types.CBufRet.f32 %6186, 1
  %6188 = fsub fast float 1.000000e+00, %6182
  %6189 = fmul fast float %6188, %5764
  %6190 = fmul fast float %6189, %6187
  %6191 = fsub fast float %5764, %6190
  br i1 %5757, label %6192, label %6221, !dx.controlflow.hints !173

; <label>:6192                                    ; preds = %6180
  %6193 = fmul fast float %5765, %5754
  %6194 = fadd fast float %6193, %5755
  %6195 = call float @dx.op.unary.f32(i32 7, float %6194)  ; Saturate(value)
  %6196 = fmul fast float %5736, %6191
  %6197 = fsub fast float -0.000000e+00, %6196
  %6198 = fmul fast float %5737, %6191
  %6199 = fsub fast float -0.000000e+00, %6198
  %6200 = call float @dx.op.unary.f32(i32 21, float %6197)  ; Exp(value)
  %6201 = call float @dx.op.unary.f32(i32 21, float %6199)  ; Exp(value)
  %6202 = call float @dx.op.binary.f32(i32 35, float %5744, float %6200)  ; FMax(a,b)
  %6203 = call float @dx.op.binary.f32(i32 35, float %5744, float %6201)  ; FMax(a,b)
  %6204 = fsub fast float %6203, %6202
  %6205 = fmul fast float %6204, %6195
  %6206 = fadd fast float %6205, %6202
  %6207 = call float @dx.op.unary.f32(i32 7, float %6206)  ; Saturate(value)
  %6208 = fsub fast float %5741, %5746
  %6209 = fsub fast float %5742, %5747
  %6210 = fsub fast float %5743, %5748
  %6211 = fmul fast float %6195, %6208
  %6212 = fmul fast float %6195, %6209
  %6213 = fmul fast float %6195, %6210
  %6214 = fadd fast float %6211, %5746
  %6215 = fadd fast float %6212, %5747
  %6216 = fadd fast float %6213, %5748
  %6217 = fsub fast float 1.000000e+00, %6207
  %6218 = fmul fast float %6217, %6214
  %6219 = fmul fast float %6217, %6215
  %6220 = fmul fast float %6217, %6216
  br label %6280

; <label>:6221                                    ; preds = %6180
  %6222 = fmul fast float %6191, %5753
  %6223 = call float @dx.op.unary.f32(i32 7, float %6222)  ; Saturate(value)
  %6224 = fsub fast float 2.000000e+00, %6223
  %6225 = fmul fast float %6223, 9.921875e-01
  %6226 = fmul fast float %6225, %6224
  %6227 = fadd fast float %6226, 3.906250e-03
  %6228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %58, float %6227, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6229 = extractvalue %dx.types.ResRet.f32 %6228, 0
  %6230 = fsub fast float %6223, %6229
  %6231 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6230)  ; FMax(a,b)
  %6232 = fmul fast float %5739, %5720
  %6233 = call float @dx.op.unary.f32(i32 6, float %6232)  ; FAbs(value)
  %6234 = fcmp fast ogt float %6233, 0x3EB0C6F7A0000000
  br i1 %6234, label %6235, label %6241, !dx.controlflow.hints !174

; <label>:6235                                    ; preds = %6221
  %6236 = fmul fast float %6232, 0xBFF7154760000000
  %6237 = call float @dx.op.unary.f32(i32 21, float %6236)  ; Exp(value)
  %6238 = fsub fast float 1.000000e+00, %6237
  %6239 = fdiv fast float %6238, %6232
  %6240 = fmul fast float %6239, %5749
  br label %6241

; <label>:6241                                    ; preds = %6235, %6221
  %6242 = phi float [ %6240, %6235 ], [ %5749, %6221 ]
  %6243 = fadd fast float %6242, %5751
  %6244 = fmul fast float %6243, %6231
  %6245 = fmul fast float %5736, %6244
  %6246 = fsub fast float -0.000000e+00, %6245
  %6247 = fmul fast float %5737, %6244
  %6248 = fsub fast float -0.000000e+00, %6247
  %6249 = fmul fast float %5738, %6244
  %6250 = fsub fast float -0.000000e+00, %6249
  %6251 = call float @dx.op.unary.f32(i32 21, float %6246)  ; Exp(value)
  %6252 = call float @dx.op.unary.f32(i32 21, float %6248)  ; Exp(value)
  %6253 = call float @dx.op.unary.f32(i32 21, float %6250)  ; Exp(value)
  %6254 = fmul fast float %5765, %5765
  %6255 = fadd fast float %6254, 1.000000e+00
  %6256 = fmul fast float %6255, 0x3FAE8EC8A0000000
  %6257 = fmul fast float %6256, %5746
  %6258 = fmul fast float %6256, %5747
  %6259 = fmul fast float %6256, %5748
  %6260 = fmul fast float %5765, %5744
  %6261 = fsub fast float 1.000000e+00, %6260
  %6262 = fmul fast float %5744, %5744
  %6263 = fsub fast float 1.000000e+00, %6262
  %6264 = fmul fast float %6263, 0x3FB45F3060000000
  %6265 = fmul fast float %6261, %6261
  %6266 = fdiv fast float 1.000000e+00, %6265
  %6267 = fmul fast float %6264, %6266
  %6268 = fmul fast float %6267, %5741
  %6269 = fmul fast float %6267, %5742
  %6270 = fmul fast float %6267, %5743
  %6271 = fadd fast float %6268, %6257
  %6272 = fadd fast float %6269, %6258
  %6273 = fadd fast float %6270, %6259
  %6274 = fsub fast float 1.000000e+00, %6251
  %6275 = fsub fast float 1.000000e+00, %6252
  %6276 = fsub fast float 1.000000e+00, %6253
  %6277 = fmul fast float %6271, %6274
  %6278 = fmul fast float %6272, %6275
  %6279 = fmul fast float %6273, %6276
  br label %6280

; <label>:6280                                    ; preds = %6241, %6192
  %6281 = phi float [ %6218, %6192 ], [ %6277, %6241 ]
  %6282 = phi float [ %6219, %6192 ], [ %6278, %6241 ]
  %6283 = phi float [ %6220, %6192 ], [ %6279, %6241 ]
  %6284 = phi float [ %6207, %6192 ], [ %6251, %6241 ]
  %6285 = phi float [ %6207, %6192 ], [ %6252, %6241 ]
  %6286 = phi float [ %6207, %6192 ], [ %6253, %6241 ]
  br i1 %5773, label %6287, label %6485, !dx.controlflow.hints !175

; <label>:6287                                    ; preds = %6280
  %6288 = extractvalue %dx.types.CBufRet.f32 %6186, 0
  %6289 = fmul fast float %6288, %6188
  %6290 = fsub fast float %6183, %6281
  %6291 = fsub fast float %6184, %6282
  %6292 = fsub fast float %6185, %6283
  %6293 = fmul fast float %6289, %6290
  %6294 = fmul fast float %6289, %6291
  %6295 = fmul fast float %6289, %6292
  %6296 = fadd fast float %6293, %6281
  %6297 = fadd fast float %6294, %6282
  %6298 = fadd fast float %6295, %6283
  %6299 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6284)  ; FMax(a,b)
  %6300 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6285)  ; FMax(a,b)
  %6301 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6286)  ; FMax(a,b)
  %6302 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6182)  ; FMax(a,b)
  %6303 = call float @dx.op.binary.f32(i32 35, float %6181, float %6191)  ; FMax(a,b)
  %6304 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6303)  ; FMax(a,b)
  %6305 = fdiv fast float %6181, %6304
  %6306 = call float @dx.op.unary.f32(i32 7, float %6305)  ; Saturate(value)
  %6307 = fdiv fast float %6191, %6304
  %6308 = call float @dx.op.unary.f32(i32 7, float %6307)  ; Saturate(value)
  %6309 = fcmp fast une float %6302, 1.000000e+00
  br i1 %6309, label %6310, label %6323, !dx.controlflow.hints !176

; <label>:6310                                    ; preds = %6287
  %6311 = call float @dx.op.unary.f32(i32 23, float %6302)  ; Log(value)
  %6312 = fmul fast float %6311, 0x3FE62E4300000000
  %6313 = fmul fast float %6183, %6312
  %6314 = fsub fast float -0.000000e+00, %6313
  %6315 = fmul fast float %6184, %6312
  %6316 = fsub fast float -0.000000e+00, %6315
  %6317 = fmul fast float %6185, %6312
  %6318 = fsub fast float -0.000000e+00, %6317
  %6319 = fsub fast float 1.000000e+00, %6302
  %6320 = fdiv fast float %6314, %6319
  %6321 = fdiv fast float %6316, %6319
  %6322 = fdiv fast float %6318, %6319
  br label %6323

; <label>:6323                                    ; preds = %6310, %6287
  %6324 = phi float [ %6320, %6310 ], [ %6183, %6287 ]
  %6325 = phi float [ %6321, %6310 ], [ %6184, %6287 ]
  %6326 = phi float [ %6322, %6310 ], [ %6185, %6287 ]
  %6327 = phi float [ %6312, %6310 ], [ 0.000000e+00, %6287 ]
  %6328 = fcmp fast une float %6299, 1.000000e+00
  br i1 %6328, label %6329, label %6336, !dx.controlflow.hints !177

; <label>:6329                                    ; preds = %6323
  %6330 = call float @dx.op.unary.f32(i32 23, float %6299)  ; Log(value)
  %6331 = fmul fast float %6330, 0x3FE62E4300000000
  %6332 = fmul fast float %6296, %6331
  %6333 = fsub fast float -0.000000e+00, %6332
  %6334 = fsub fast float 1.000000e+00, %6299
  %6335 = fdiv fast float %6333, %6334
  br label %6336

; <label>:6336                                    ; preds = %6329, %6323
  %6337 = phi float [ %6335, %6329 ], [ %6296, %6323 ]
  %6338 = phi float [ %6331, %6329 ], [ 0.000000e+00, %6323 ]
  %6339 = fcmp fast une float %6300, 1.000000e+00
  br i1 %6339, label %6340, label %6347, !dx.controlflow.hints !177

; <label>:6340                                    ; preds = %6336
  %6341 = call float @dx.op.unary.f32(i32 23, float %6300)  ; Log(value)
  %6342 = fmul fast float %6341, 0x3FE62E4300000000
  %6343 = fmul fast float %6297, %6342
  %6344 = fsub fast float -0.000000e+00, %6343
  %6345 = fsub fast float 1.000000e+00, %6300
  %6346 = fdiv fast float %6344, %6345
  br label %6347

; <label>:6347                                    ; preds = %6340, %6336
  %6348 = phi float [ %6346, %6340 ], [ %6297, %6336 ]
  %6349 = phi float [ %6342, %6340 ], [ 0.000000e+00, %6336 ]
  %6350 = fcmp fast une float %6301, 1.000000e+00
  br i1 %6350, label %6351, label %6358, !dx.controlflow.hints !177

; <label>:6351                                    ; preds = %6347
  %6352 = call float @dx.op.unary.f32(i32 23, float %6301)  ; Log(value)
  %6353 = fmul fast float %6352, 0x3FE62E4300000000
  %6354 = fmul fast float %6298, %6353
  %6355 = fsub fast float -0.000000e+00, %6354
  %6356 = fsub fast float 1.000000e+00, %6301
  %6357 = fdiv fast float %6355, %6356
  br label %6358

; <label>:6358                                    ; preds = %6351, %6347
  %6359 = phi float [ %6357, %6351 ], [ %6298, %6347 ]
  %6360 = phi float [ %6353, %6351 ], [ 0.000000e+00, %6347 ]
  %6361 = fmul fast float %6324, %6308
  %6362 = fmul fast float %6325, %6308
  %6363 = fmul fast float %6326, %6308
  %6364 = fmul fast float %6327, %6308
  %6365 = fmul fast float %6337, %6306
  %6366 = fmul fast float %6348, %6306
  %6367 = fmul fast float %6359, %6306
  %6368 = fmul fast float %6338, %6306
  %6369 = fmul fast float %6349, %6306
  %6370 = fmul fast float %6360, %6306
  %6371 = fadd fast float %6365, %6361
  %6372 = fadd fast float %6366, %6362
  %6373 = fadd fast float %6367, %6363
  %6374 = fadd fast float %6368, %6364
  %6375 = fadd fast float %6369, %6364
  %6376 = fadd fast float %6370, %6364
  %6377 = fcmp fast une float %6374, 0.000000e+00
  br i1 %6377, label %6378, label %6385, !dx.controlflow.hints !178

; <label>:6378                                    ; preds = %6358
  %6379 = fmul fast float %6374, 0x3FF7154760000000
  %6380 = call float @dx.op.unary.f32(i32 21, float %6379)  ; Exp(value)
  %6381 = fsub fast float 1.000000e+00, %6380
  %6382 = fmul fast float %6371, %6381
  %6383 = fsub fast float -0.000000e+00, %6382
  %6384 = fdiv fast float %6383, %6374
  br label %6385

; <label>:6385                                    ; preds = %6378, %6358
  %6386 = phi float [ %6380, %6378 ], [ 1.000000e+00, %6358 ]
  %6387 = phi float [ %6384, %6378 ], [ %6371, %6358 ]
  %6388 = fcmp fast une float %6375, 0.000000e+00
  br i1 %6388, label %6389, label %6396, !dx.controlflow.hints !178

; <label>:6389                                    ; preds = %6385
  %6390 = fmul fast float %6375, 0x3FF7154760000000
  %6391 = call float @dx.op.unary.f32(i32 21, float %6390)  ; Exp(value)
  %6392 = fsub fast float 1.000000e+00, %6391
  %6393 = fmul fast float %6372, %6392
  %6394 = fsub fast float -0.000000e+00, %6393
  %6395 = fdiv fast float %6394, %6375
  br label %6396

; <label>:6396                                    ; preds = %6389, %6385
  %6397 = phi float [ %6391, %6389 ], [ 1.000000e+00, %6385 ]
  %6398 = phi float [ %6395, %6389 ], [ %6372, %6385 ]
  %6399 = fcmp fast une float %6376, 0.000000e+00
  br i1 %6399, label %6400, label %6407, !dx.controlflow.hints !178

; <label>:6400                                    ; preds = %6396
  %6401 = fmul fast float %6376, 0x3FF7154760000000
  %6402 = call float @dx.op.unary.f32(i32 21, float %6401)  ; Exp(value)
  %6403 = fsub fast float 1.000000e+00, %6402
  %6404 = fmul fast float %6373, %6403
  %6405 = fsub fast float -0.000000e+00, %6404
  %6406 = fdiv fast float %6405, %6376
  br label %6407

; <label>:6407                                    ; preds = %6400, %6396
  %6408 = phi float [ %6402, %6400 ], [ 1.000000e+00, %6396 ]
  %6409 = phi float [ %6406, %6400 ], [ %6373, %6396 ]
  %6410 = fcmp fast ogt float %6306, %6308
  br i1 %6410, label %6411, label %6431

; <label>:6411                                    ; preds = %6407
  %6412 = fsub fast float 1.000000e+00, %6308
  %6413 = fmul fast float %6324, %6412
  %6414 = fmul fast float %6325, %6412
  %6415 = fmul fast float %6326, %6412
  %6416 = fmul fast float %6327, %6412
  %6417 = fcmp fast une float %6416, 0.000000e+00
  br i1 %6417, label %6418, label %6469, !dx.controlflow.hints !179

; <label>:6418                                    ; preds = %6411
  %6419 = fmul fast float %6416, 0x3FF7154760000000
  %6420 = call float @dx.op.unary.f32(i32 21, float %6419)  ; Exp(value)
  %6421 = fsub fast float 1.000000e+00, %6420
  %6422 = fmul fast float %6413, %6421
  %6423 = fsub fast float -0.000000e+00, %6422
  %6424 = fmul fast float %6414, %6421
  %6425 = fsub fast float -0.000000e+00, %6424
  %6426 = fmul fast float %6415, %6421
  %6427 = fsub fast float -0.000000e+00, %6426
  %6428 = fdiv fast float %6423, %6416
  %6429 = fdiv fast float %6425, %6416
  %6430 = fdiv fast float %6427, %6416
  br label %6469

; <label>:6431                                    ; preds = %6407
  %6432 = fsub fast float 1.000000e+00, %6306
  %6433 = fmul fast float %6337, %6432
  %6434 = fmul fast float %6348, %6432
  %6435 = fmul fast float %6359, %6432
  %6436 = fmul fast float %6338, %6432
  %6437 = fmul fast float %6349, %6432
  %6438 = fmul fast float %6360, %6432
  %6439 = fcmp fast une float %6436, 0.000000e+00
  br i1 %6439, label %6440, label %6447, !dx.controlflow.hints !178

; <label>:6440                                    ; preds = %6431
  %6441 = fmul fast float %6436, 0x3FF7154760000000
  %6442 = call float @dx.op.unary.f32(i32 21, float %6441)  ; Exp(value)
  %6443 = fsub fast float 1.000000e+00, %6442
  %6444 = fmul fast float %6433, %6443
  %6445 = fsub fast float -0.000000e+00, %6444
  %6446 = fdiv fast float %6445, %6436
  br label %6447

; <label>:6447                                    ; preds = %6440, %6431
  %6448 = phi float [ %6446, %6440 ], [ %6433, %6431 ]
  %6449 = phi float [ %6442, %6440 ], [ 1.000000e+00, %6431 ]
  %6450 = fcmp fast une float %6437, 0.000000e+00
  br i1 %6450, label %6451, label %6458, !dx.controlflow.hints !178

; <label>:6451                                    ; preds = %6447
  %6452 = fmul fast float %6437, 0x3FF7154760000000
  %6453 = call float @dx.op.unary.f32(i32 21, float %6452)  ; Exp(value)
  %6454 = fsub fast float 1.000000e+00, %6453
  %6455 = fmul fast float %6434, %6454
  %6456 = fsub fast float -0.000000e+00, %6455
  %6457 = fdiv fast float %6456, %6437
  br label %6458

; <label>:6458                                    ; preds = %6451, %6447
  %6459 = phi float [ %6457, %6451 ], [ %6434, %6447 ]
  %6460 = phi float [ %6453, %6451 ], [ 1.000000e+00, %6447 ]
  %6461 = fcmp fast une float %6438, 0.000000e+00
  br i1 %6461, label %6462, label %6469, !dx.controlflow.hints !178

; <label>:6462                                    ; preds = %6458
  %6463 = fmul fast float %6438, 0x3FF7154760000000
  %6464 = call float @dx.op.unary.f32(i32 21, float %6463)  ; Exp(value)
  %6465 = fsub fast float 1.000000e+00, %6464
  %6466 = fmul fast float %6435, %6465
  %6467 = fsub fast float -0.000000e+00, %6466
  %6468 = fdiv fast float %6467, %6438
  br label %6469

; <label>:6469                                    ; preds = %6462, %6458, %6418, %6411
  %6470 = phi float [ %6468, %6462 ], [ %6430, %6418 ], [ %6415, %6411 ], [ %6435, %6458 ]
  %6471 = phi float [ %6459, %6462 ], [ %6429, %6418 ], [ %6414, %6411 ], [ %6459, %6458 ]
  %6472 = phi float [ %6448, %6462 ], [ %6428, %6418 ], [ %6413, %6411 ], [ %6448, %6458 ]
  %6473 = phi float [ %6464, %6462 ], [ %6420, %6418 ], [ 1.000000e+00, %6411 ], [ 1.000000e+00, %6458 ]
  %6474 = phi float [ %6460, %6462 ], [ %6420, %6418 ], [ 1.000000e+00, %6411 ], [ %6460, %6458 ]
  %6475 = phi float [ %6449, %6462 ], [ %6420, %6418 ], [ 1.000000e+00, %6411 ], [ %6449, %6458 ]
  %6476 = fmul fast float %6475, %6387
  %6477 = fmul fast float %6474, %6398
  %6478 = fmul fast float %6473, %6409
  %6479 = fadd fast float %6476, %6472
  %6480 = fadd fast float %6477, %6471
  %6481 = fadd fast float %6478, %6470
  %6482 = fmul fast float %6475, %6386
  %6483 = fmul fast float %6474, %6397
  %6484 = fmul fast float %6473, %6408
  br label %6485

; <label>:6485                                    ; preds = %6469, %6280
  %6486 = phi float [ %6484, %6469 ], [ %6286, %6280 ]
  %6487 = phi float [ %6483, %6469 ], [ %6285, %6280 ]
  %6488 = phi float [ %6482, %6469 ], [ %6284, %6280 ]
  %6489 = phi float [ %6481, %6469 ], [ %6283, %6280 ]
  %6490 = phi float [ %6480, %6469 ], [ %6282, %6280 ]
  %6491 = phi float [ %6479, %6469 ], [ %6281, %6280 ]
  %6492 = fmul fast float %6491, %5435
  %6493 = fmul fast float %6490, %5435
  %6494 = fmul fast float %6489, %5435
  %6495 = fmul fast float %6488, %5728
  %6496 = call float @dx.op.dot3.f32(i32 55, float %6488, float %6487, float %6486, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6497 = call float @dx.op.dot3.f32(i32 55, float %6492, float %6493, float %6494, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6498 = select i1 %229, float %6496, float %6488
  %6499 = select i1 %229, float %6496, float %6487
  %6500 = select i1 %229, float 1.000000e+00, float %6486
  %6501 = select i1 %229, float %6497, float %6492
  %6502 = select i1 %229, float 0.000000e+00, float %6493
  %6503 = select i1 %229, float 0.000000e+00, float %6494
  %6504 = fmul fast float %6498, %5722
  %6505 = fmul fast float %6499, %5723
  %6506 = fmul fast float %6500, %5724
  %6507 = fadd fast float %6504, %6501
  %6508 = fadd fast float %6505, %6502
  %6509 = fadd fast float %6503, %6506
  %6510 = fmul fast float %6498, %5725
  %6511 = fmul fast float %6499, %5726
  %6512 = fmul fast float %6500, %5727
  %6513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6514 = extractvalue %dx.types.CBufRet.i32 %6513, 0
  %6515 = icmp eq i32 %6514, 0
  br i1 %6515, label %6883, label %6516, !dx.controlflow.hints !180

; <label>:6516                                    ; preds = %6485
  %6517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6518 = extractvalue %dx.types.CBufRet.f32 %6517, 2
  %6519 = extractvalue %dx.types.CBufRet.f32 %6517, 3
  %6520 = fmul fast float %6518, %91
  %6521 = fmul fast float %6519, %92
  %6522 = fmul fast float %6520, 2.000000e+00
  %6523 = fmul fast float %6521, 2.000000e+00
  %6524 = fsub fast float 1.000000e+00, %6522
  %6525 = fsub fast float 1.000000e+00, %6523
  %6526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6527 = extractvalue %dx.types.CBufRet.f32 %6526, 0
  %6528 = extractvalue %dx.types.CBufRet.f32 %6526, 1
  %6529 = extractvalue %dx.types.CBufRet.f32 %6526, 2
  %6530 = fmul fast float %6524, %6527
  %6531 = fmul fast float %6524, %6528
  %6532 = fmul fast float %6524, %6529
  %6533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6534 = extractvalue %dx.types.CBufRet.f32 %6533, 0
  %6535 = extractvalue %dx.types.CBufRet.f32 %6533, 1
  %6536 = extractvalue %dx.types.CBufRet.f32 %6533, 2
  %6537 = fmul fast float %6525, %6534
  %6538 = fmul fast float %6525, %6535
  %6539 = fmul fast float %6525, %6536
  %6540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6541 = extractvalue %dx.types.CBufRet.f32 %6540, 0
  %6542 = extractvalue %dx.types.CBufRet.f32 %6540, 1
  %6543 = extractvalue %dx.types.CBufRet.f32 %6540, 2
  %6544 = fadd fast float %6537, %6541
  %6545 = fadd fast float %6544, %6530
  %6546 = fadd fast float %6538, %6542
  %6547 = fadd fast float %6546, %6531
  %6548 = fadd fast float %6539, %6543
  %6549 = fadd fast float %6548, %6532
  %6550 = fmul fast float %6545, %5721
  %6551 = fmul fast float %6547, %5721
  %6552 = fmul fast float %6549, %5721
  %6553 = fmul fast float %6550, %6550
  %6554 = fmul fast float %6551, %6551
  %6555 = fadd fast float %6553, %6554
  %6556 = fmul fast float %6552, %6552
  %6557 = fadd fast float %6555, %6556
  %6558 = call float @dx.op.unary.f32(i32 24, float %6557)  ; Sqrt(value)
  %6559 = extractvalue %dx.types.CBufRet.f32 %5446, 0
  %6560 = fsub fast float %6558, %6559
  %6561 = extractvalue %dx.types.CBufRet.f32 %5446, 2
  %6562 = fmul fast float %6560, %6561
  %6563 = call float @dx.op.unary.f32(i32 7, float %6562)  ; Saturate(value)
  %6564 = fadd fast float %6563, -5.000000e-01
  %6565 = fmul fast float %6564, 2.000000e+00
  %6566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6567 = extractvalue %dx.types.CBufRet.f32 %6566, 2
  %6568 = call float @dx.op.binary.f32(i32 36, float %6567, float %6565)  ; FMin(a,b)
  %6569 = fsub fast float -0.000000e+00, %6567
  %6570 = fcmp fast ogt float %6568, %6569
  br i1 %6570, label %6571, label %6883, !dx.controlflow.hints !181

; <label>:6571                                    ; preds = %6516
  %6572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6573 = extractvalue %dx.types.CBufRet.f32 %6572, 3
  %6574 = fcmp fast ogt float %6573, 0.000000e+00
  br i1 %6574, label %6575, label %6650, !dx.controlflow.hints !182

; <label>:6575                                    ; preds = %6571
  %6576 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %6577 = extractvalue %dx.types.Dimensions %6576, 0
  %6578 = sitofp i32 %6577 to float
  %6579 = extractvalue %dx.types.Dimensions %6576, 1
  %6580 = sitofp i32 %6579 to float
  %6581 = fmul fast float %6520, %6578
  %6582 = fmul fast float %6521, %6580
  %6583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6584 = extractvalue %dx.types.CBufRet.f32 %6583, 1
  %6585 = fsub fast float -0.000000e+00, %6584
  %6586 = fptoui float %6585 to i32
  %6587 = fptoui float %6581 to i32
  %6588 = fptoui float %6582 to i32
  %6589 = and i32 %6586, 31
  %6590 = lshr i32 %6587, %6589
  %6591 = lshr i32 %6588, %6589
  %6592 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %6586, i32 %6590, i32 %6591, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6593 = extractvalue %dx.types.ResRet.f32 %6592, 0
  %6594 = fcmp fast olt float %6593, -1.000000e+00
  %6595 = fcmp fast ogt float %6593, -1.000000e+00
  %6596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6597 = extractvalue %dx.types.CBufRet.f32 %6596, 1
  %6598 = select i1 %6595, float %6597, float 1.000000e+00
  %6599 = fadd fast float %6593, 1.000000e+00
  %6600 = fmul fast float %6598, %6599
  %6601 = call float @dx.op.unary.f32(i32 6, float %6600)  ; FAbs(value)
  %6602 = extractvalue %dx.types.CBufRet.f32 %6596, 3
  %6603 = fcmp fast oge float %6601, %6602
  %6604 = select i1 %6603, float 0x4197782600000000, float %6601
  %6605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6606 = extractvalue %dx.types.CBufRet.f32 %6605, 0
  %6607 = extractvalue %dx.types.CBufRet.f32 %6605, 1
  %6608 = extractvalue %dx.types.CBufRet.f32 %6605, 2
  %6609 = select i1 %6594, float %6606, float %6527
  %6610 = select i1 %6594, float %6607, float %6528
  %6611 = select i1 %6594, float %6608, float %6529
  %6612 = fmul fast float %6609, %6524
  %6613 = fmul fast float %6610, %6524
  %6614 = fmul fast float %6611, %6524
  %6615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6616 = extractvalue %dx.types.CBufRet.f32 %6615, 0
  %6617 = extractvalue %dx.types.CBufRet.f32 %6615, 1
  %6618 = extractvalue %dx.types.CBufRet.f32 %6615, 2
  %6619 = select i1 %6594, float %6616, float %6534
  %6620 = select i1 %6594, float %6617, float %6535
  %6621 = select i1 %6594, float %6618, float %6536
  %6622 = fmul fast float %6619, %6525
  %6623 = fmul fast float %6620, %6525
  %6624 = fmul fast float %6621, %6525
  %6625 = fadd fast float %6622, %6612
  %6626 = fadd fast float %6623, %6613
  %6627 = fadd fast float %6624, %6614
  %6628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6629 = extractvalue %dx.types.CBufRet.f32 %6628, 0
  %6630 = extractvalue %dx.types.CBufRet.f32 %6628, 1
  %6631 = extractvalue %dx.types.CBufRet.f32 %6628, 2
  %6632 = select i1 %6594, float %6629, float %6541
  %6633 = select i1 %6594, float %6630, float %6542
  %6634 = select i1 %6594, float %6631, float %6543
  %6635 = fadd fast float %6625, %6632
  %6636 = fadd fast float %6626, %6633
  %6637 = fadd fast float %6627, %6634
  %6638 = fmul fast float %6635, %6604
  %6639 = fmul fast float %6636, %6604
  %6640 = fmul fast float %6637, %6604
  %6641 = fmul fast float %6638, %6638
  %6642 = fmul fast float %6639, %6639
  %6643 = fadd fast float %6641, %6642
  %6644 = fmul fast float %6640, %6640
  %6645 = fadd fast float %6643, %6644
  %6646 = call float @dx.op.unary.f32(i32 24, float %6645)  ; Sqrt(value)
  %6647 = fsub fast float %6646, %6559
  %6648 = fmul fast float %6647, %6561
  %6649 = call float @dx.op.unary.f32(i32 7, float %6648)  ; Saturate(value)
  br label %6650

; <label>:6650                                    ; preds = %6575, %6571
  %6651 = phi float [ %6649, %6575 ], [ 1.000000e+00, %6571 ]
  %6652 = fmul fast float %6568, 5.000000e-01
  %6653 = fadd fast float %6652, 5.000000e-01
  %6654 = call float @dx.op.unary.f32(i32 22, float %6653)  ; Frc(value)
  %6655 = call float @dx.op.unary.f32(i32 27, float %6654)  ; Round_ni(value)
  %6656 = call float @dx.op.unary.f32(i32 22, float %6654)  ; Frc(value)
  %6657 = fmul fast float %6656, 2.000000e+00
  %6658 = fadd fast float %6657, -1.000000e+00
  %6659 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %58, float %6520, float %6521, float %6655, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6660 = extractvalue %dx.types.ResRet.f32 %6659, 0
  %6661 = extractvalue %dx.types.ResRet.f32 %6659, 1
  %6662 = extractvalue %dx.types.ResRet.f32 %6659, 2
  %6663 = extractvalue %dx.types.ResRet.f32 %6659, 3
  %6664 = fadd fast float %6660, -5.000000e-01
  %6665 = fadd fast float %6662, -5.000000e-01
  %6666 = fmul fast float %6664, 0xBFD5555560000000
  %6667 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6665, float %6666)  ; FMad(a,b,c)
  %6668 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6661, float 0.000000e+00)  ; FMad(a,b,c)
  %6669 = fadd fast float %6668, %6663
  %6670 = fmul fast float %6664, -7.500000e-01
  %6671 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6665, float %6670)  ; FMad(a,b,c)
  %6672 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6661, float 0.000000e+00)  ; FMad(a,b,c)
  %6673 = fadd fast float %6672, %6663
  %6674 = call float @dx.op.binary.f32(i32 35, float %6667, float -1.000000e+00)  ; FMax(a,b)
  %6675 = call float @dx.op.binary.f32(i32 35, float %6669, float -1.000000e+00)  ; FMax(a,b)
  %6676 = call float @dx.op.binary.f32(i32 35, float %6671, float -1.000000e+00)  ; FMax(a,b)
  %6677 = call float @dx.op.binary.f32(i32 35, float %6673, float -1.000000e+00)  ; FMax(a,b)
  %6678 = call float @dx.op.binary.f32(i32 36, float %6674, float 1.000000e+00)  ; FMin(a,b)
  %6679 = call float @dx.op.binary.f32(i32 36, float %6675, float 1.000000e+00)  ; FMin(a,b)
  %6680 = call float @dx.op.binary.f32(i32 36, float %6676, float 1.000000e+00)  ; FMin(a,b)
  %6681 = call float @dx.op.binary.f32(i32 36, float %6677, float 1.000000e+00)  ; FMin(a,b)
  %6682 = fcmp fast olt float %6678, 0x3FEFFF8020000000
  br i1 %6682, label %6683, label %6798, !dx.controlflow.hints !183

; <label>:6683                                    ; preds = %6650
  %6684 = extractvalue %dx.types.CBufRet.f32 %6566, 3
  %6685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6686 = extractvalue %dx.types.CBufRet.f32 %6685, 0
  %6687 = extractvalue %dx.types.CBufRet.f32 %6685, 1
  %6688 = extractvalue %dx.types.CBufRet.f32 %6685, 2
  %6689 = extractvalue %dx.types.CBufRet.f32 %6685, 3
  %6690 = fsub fast float %6686, %6678
  %6691 = fsub fast float %6687, %6679
  %6692 = fsub fast float %6688, %6680
  %6693 = fsub fast float %6689, %6681
  %6694 = fmul fast float %6690, %6684
  %6695 = fmul fast float %6691, %6684
  %6696 = fmul fast float %6692, %6684
  %6697 = fmul fast float %6693, %6684
  %6698 = fadd fast float %6694, %6678
  %6699 = fadd fast float %6695, %6679
  %6700 = fsub fast float -0.000000e+00, %6699
  %6701 = fadd fast float %6696, %6680
  %6702 = fadd fast float %6697, %6681
  %6703 = fmul fast float %6698, %6698
  %6704 = fsub fast float %6699, %6703
  %6705 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6704)  ; FMax(a,b)
  %6706 = fdiv fast float 1.000000e+00, %6705
  %6707 = fmul fast float %6699, %6698
  %6708 = fsub fast float %6701, %6707
  %6709 = fsub fast float %6658, %6698
  %6710 = fmul fast float %6658, %6658
  %6711 = fsub fast float %6710, %6699
  %6712 = fmul fast float %6709, %6706
  %6713 = fmul fast float %6712, %6708
  %6714 = fsub fast float %6711, %6713
  %6715 = fmul fast float %6699, %6699
  %6716 = fsub fast float %6702, %6715
  %6717 = fmul fast float %6708, %6708
  %6718 = fmul fast float %6717, %6706
  %6719 = fsub fast float %6716, %6718
  %6720 = fdiv fast float %6714, %6719
  %6721 = fmul fast float %6708, %6720
  %6722 = fsub fast float %6709, %6721
  %6723 = fmul fast float %6722, %6706
  %6724 = fmul fast float %6723, %6698
  %6725 = fsub fast float 1.000000e+00, %6724
  %6726 = fmul fast float %6699, %6720
  %6727 = fsub fast float %6725, %6726
  %6728 = fmul fast float %6723, %6723
  %6729 = fmul fast float %6720, 4.000000e+00
  %6730 = fmul fast float %6729, %6727
  %6731 = fsub fast float %6728, %6730
  %6732 = call float @dx.op.unary.f32(i32 24, float %6731)  ; Sqrt(value)
  %6733 = fcmp fast oge float %6723, 0.000000e+00
  %6734 = fsub fast float -0.000000e+00, %6732
  %6735 = select i1 %6733, float %6734, float %6732
  %6736 = fsub fast float %6735, %6723
  %6737 = fdiv fast float %6736, %6720
  %6738 = fdiv fast float %6727, %6736
  %6739 = fmul fast float %6737, 5.000000e-01
  %6740 = fmul fast float %6738, 2.000000e+00
  %6741 = select i1 %6733, float %6739, float %6740
  %6742 = select i1 %6733, float %6740, float %6739
  %6743 = call float @dx.op.binary.f32(i32 35, float %6741, float %6742)  ; FMax(a,b)
  %6744 = call float @dx.op.binary.f32(i32 36, float %6741, float %6742)  ; FMin(a,b)
  %6745 = fcmp fast ogt float %6658, %6744
  br i1 %6745, label %6746, label %6756

; <label>:6746                                    ; preds = %6683
  %6747 = fsub fast float %6658, %6744
  %6748 = fsub fast float %6743, %6744
  %6749 = fmul fast float %6747, %6748
  %6750 = fmul fast float %6743, %6658
  %6751 = fadd fast float %6743, %6658
  %6752 = fmul fast float %6751, %6698
  %6753 = fadd fast float %6750, %6699
  %6754 = fsub fast float %6753, %6752
  %6755 = fdiv fast float %6754, %6749
  br label %6756

; <label>:6756                                    ; preds = %6746, %6683
  %6757 = phi float [ %6755, %6746 ], [ 0.000000e+00, %6683 ]
  %6758 = fcmp fast ogt float %6658, %6743
  %6759 = fsub fast float %6658, %6743
  br i1 %6758, label %6760, label %6770

; <label>:6760                                    ; preds = %6756
  %6761 = fsub fast float %6743, %6744
  %6762 = fmul fast float %6761, %6759
  %6763 = fmul fast float %6744, %6658
  %6764 = fadd fast float %6744, %6658
  %6765 = fmul fast float %6764, %6698
  %6766 = fsub fast float %6700, %6763
  %6767 = fadd fast float %6766, %6765
  %6768 = fdiv fast float %6767, %6762
  %6769 = fadd fast float %6768, %6757
  br label %6770

; <label>:6770                                    ; preds = %6760, %6756
  %6771 = phi float [ %6769, %6760 ], [ %6757, %6756 ]
  %6772 = fsub fast float %6658, %6744
  %6773 = fmul fast float %6772, %6759
  %6774 = fmul fast float %6744, %6743
  %6775 = fadd fast float %6744, %6743
  %6776 = fmul fast float %6775, %6698
  %6777 = fadd fast float %6774, %6699
  %6778 = fsub fast float %6777, %6776
  %6779 = fdiv fast float %6778, %6773
  %6780 = call float @dx.op.unary.f32(i32 7, float %6771)  ; Saturate(value)
  %6781 = fcmp fast oeq float %5447, 0.000000e+00
  %6782 = extractvalue %dx.types.CBufRet.f32 %6566, 0
  %6783 = fcmp fast oeq float %6782, 0.000000e+00
  %6784 = or i1 %6781, %6783
  %6785 = fmul fast float %6782, 2.000000e+00
  %6786 = fadd fast float %6567, %6568
  %6787 = fdiv fast float %6786, %6785
  %6788 = call float @dx.op.unary.f32(i32 7, float %6787)  ; Saturate(value)
  %6789 = fmul fast float %6788, 2.000000e+00
  %6790 = fsub fast float 3.000000e+00, %6789
  %6791 = fmul fast float %6788, %6788
  %6792 = fmul fast float %6791, %6790
  %6793 = select i1 %6784, float 1.000000e+00, float %6792
  %6794 = fmul fast float %6779, %5447
  %6795 = fadd fast float %6780, %6794
  %6796 = call float @dx.op.unary.f32(i32 7, float %6795)  ; Saturate(value)
  %6797 = fmul fast float %6793, %6796
  br label %6798

; <label>:6798                                    ; preds = %6770, %6650
  %6799 = phi float [ %6797, %6770 ], [ 0.000000e+00, %6650 ]
  %6800 = fsub fast float 1.000000e+00, %6799
  %6801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %58, float %6520, float %6521, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6802 = extractvalue %dx.types.ResRet.f32 %6801, 0
  %6803 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6804 = extractvalue %dx.types.CBufRet.i32 %6803, 2
  %6805 = icmp eq i32 %6804, 0
  br i1 %6805, label %6811, label %6806

; <label>:6806                                    ; preds = %6798
  %6807 = call float @dx.op.unary.f32(i32 7, float %6799)  ; Saturate(value)
  %6808 = fadd fast float %6802, -1.000000e+00
  %6809 = fmul fast float %6807, %6808
  %6810 = fadd fast float %6809, 1.000000e+00
  br label %6811

; <label>:6811                                    ; preds = %6806, %6798
  %6812 = phi float [ %6810, %6806 ], [ %6800, %6798 ]
  br i1 %6574, label %6813, label %6831

; <label>:6813                                    ; preds = %6811
  %6814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6815 = extractvalue %dx.types.CBufRet.f32 %6814, 1
  %6816 = fsub fast float %6651, %6815
  %6817 = call float @dx.op.unary.f32(i32 7, float %6816)  ; Saturate(value)
  %6818 = fsub fast float %6651, %6573
  %6819 = call float @dx.op.unary.f32(i32 7, float %6818)  ; Saturate(value)
  %6820 = fsub fast float %6817, %6819
  %6821 = fsub fast float %6653, %6819
  %6822 = fdiv fast float %6821, %6820
  %6823 = call float @dx.op.unary.f32(i32 7, float %6822)  ; Saturate(value)
  %6824 = fmul fast float %6823, 2.000000e+00
  %6825 = fsub fast float 3.000000e+00, %6824
  %6826 = fsub fast float %6802, %6812
  %6827 = fmul fast float %6823, %6823
  %6828 = fmul fast float %6827, %6826
  %6829 = fmul fast float %6828, %6825
  %6830 = fadd fast float %6829, %6812
  br label %6831

; <label>:6831                                    ; preds = %6813, %6811
  %6832 = phi float [ %6830, %6813 ], [ %6812, %6811 ]
  %6833 = call float @dx.op.binary.f32(i32 35, float %6802, float %6832)  ; FMax(a,b)
  %6834 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6835 = extractvalue %dx.types.CBufRet.i32 %6834, 2
  %6836 = and i32 %6835, 1
  %6837 = icmp eq i32 %6836, 0
  %6838 = fcmp fast une float %6833, 1.000000e+00
  %6839 = and i1 %6838, %6837
  br i1 %6839, label %6840, label %6859

; <label>:6840                                    ; preds = %6831
  %6841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %58, float %6520, float %6521, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6842 = extractvalue %dx.types.ResRet.f32 %6841, 0
  %6843 = extractvalue %dx.types.ResRet.f32 %6841, 1
  %6844 = extractvalue %dx.types.ResRet.f32 %6841, 2
  %6845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6846 = extractvalue %dx.types.CBufRet.f32 %6845, 1
  %6847 = fmul fast float %6846, %6842
  %6848 = fmul fast float %6846, %6843
  %6849 = fmul fast float %6846, %6844
  %6850 = fcmp fast ogt float %6802, 0x3FEFFF2E40000000
  %6851 = fsub fast float 1.000000e+00, %6833
  %6852 = fsub fast float 1.000000e+00, %6802
  %6853 = fdiv fast float %6851, %6852
  %6854 = call float @dx.op.unary.f32(i32 7, float %6853)  ; Saturate(value)
  %6855 = select i1 %6850, float 0.000000e+00, float %6854
  %6856 = fmul fast float %6847, %6855
  %6857 = fmul fast float %6848, %6855
  %6858 = fmul fast float %6849, %6855
  br label %6859

; <label>:6859                                    ; preds = %6840, %6831
  %6860 = phi float [ 0.000000e+00, %6831 ], [ %6856, %6840 ]
  %6861 = phi float [ 0.000000e+00, %6831 ], [ %6857, %6840 ]
  %6862 = phi float [ 0.000000e+00, %6831 ], [ %6858, %6840 ]
  %6863 = fmul fast float %6860, %5435
  %6864 = fmul fast float %6861, %5435
  %6865 = fmul fast float %6862, %5435
  %6866 = fmul fast float %6833, %6495
  %6867 = call float @dx.op.dot3.f32(i32 55, float %6833, float %6833, float %6833, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6868 = call float @dx.op.dot3.f32(i32 55, float %6863, float %6864, float %6865, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6869 = select i1 %229, float %6867, float %6833
  %6870 = select i1 %229, float 1.000000e+00, float %6833
  %6871 = select i1 %229, float %6868, float %6863
  %6872 = select i1 %229, float 0.000000e+00, float %6864
  %6873 = select i1 %229, float 0.000000e+00, float %6865
  %6874 = fmul fast float %6869, %6507
  %6875 = fmul fast float %6869, %6508
  %6876 = fmul fast float %6870, %6509
  %6877 = fadd fast float %6874, %6871
  %6878 = fadd fast float %6875, %6872
  %6879 = fadd fast float %6873, %6876
  %6880 = fmul fast float %6869, %6510
  %6881 = fmul fast float %6869, %6511
  %6882 = fmul fast float %6870, %6512
  br label %6883

; <label>:6883                                    ; preds = %6859, %6516, %6485, %5717
  %6884 = phi float [ %5722, %5717 ], [ %6507, %6485 ], [ %6877, %6859 ], [ %6507, %6516 ]
  %6885 = phi float [ %5723, %5717 ], [ %6508, %6485 ], [ %6878, %6859 ], [ %6508, %6516 ]
  %6886 = phi float [ %5724, %5717 ], [ %6509, %6485 ], [ %6879, %6859 ], [ %6509, %6516 ]
  %6887 = phi float [ %5725, %5717 ], [ %6510, %6485 ], [ %6880, %6859 ], [ %6510, %6516 ]
  %6888 = phi float [ %5726, %5717 ], [ %6511, %6485 ], [ %6881, %6859 ], [ %6511, %6516 ]
  %6889 = phi float [ %5727, %5717 ], [ %6512, %6485 ], [ %6882, %6859 ], [ %6512, %6516 ]
  %6890 = phi float [ %5728, %5717 ], [ %6495, %6485 ], [ %6866, %6859 ], [ %6495, %6516 ]
  %6891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6892 = extractvalue %dx.types.CBufRet.f32 %6891, 2
  %6893 = extractvalue %dx.types.CBufRet.f32 %6891, 3
  %6894 = fmul fast float %6892, %91
  %6895 = fmul fast float %6893, %92
  %6896 = call float @dx.op.unary.f32(i32 7, float %6894)  ; Saturate(value)
  %6897 = call float @dx.op.unary.f32(i32 7, float %6895)  ; Saturate(value)
  %6898 = select i1 %5457, i32 2, i32 0
  %6899 = or i32 %6898, 1
  %6900 = uitofp i32 %6899 to float
  %6901 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6896, float %6897, float %6900, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6902 = extractvalue %dx.types.ResRet.f32 %6901, 0
  %6903 = extractvalue %dx.types.ResRet.f32 %6901, 1
  %6904 = extractvalue %dx.types.ResRet.f32 %6901, 2
  %6905 = extractvalue %dx.types.ResRet.f32 %6901, 3
  %6906 = add nuw nsw i32 %6898, 2
  %6907 = uitofp i32 %6906 to float
  %6908 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6896, float %6897, float %6907, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6909 = extractvalue %dx.types.ResRet.f32 %6908, 0
  %6910 = extractvalue %dx.types.ResRet.f32 %6908, 1
  %6911 = extractvalue %dx.types.ResRet.f32 %6908, 2
  %6912 = extractvalue %dx.types.ResRet.f32 %6908, 3
  %6913 = call float @dx.op.binary.f32(i32 35, float %6903, float %6904)  ; FMax(a,b)
  %6914 = call float @dx.op.binary.f32(i32 35, float %6902, float %6913)  ; FMax(a,b)
  %6915 = call float @dx.op.binary.f32(i32 35, float %6914, float %6905)  ; FMax(a,b)
  %6916 = call float @dx.op.binary.f32(i32 36, float %6910, float %6911)  ; FMin(a,b)
  %6917 = call float @dx.op.binary.f32(i32 36, float %6909, float %6916)  ; FMin(a,b)
  %6918 = call float @dx.op.binary.f32(i32 36, float %6917, float %6912)  ; FMin(a,b)
  %6919 = fmul fast float %6915, 2.550000e+02
  %6920 = fadd fast float %6919, 0x3F70101020000000
  %6921 = fptoui float %6920 to i32
  %6922 = fmul fast float %6918, 2.550000e+02
  %6923 = fadd fast float %6922, 0x3F70101020000000
  %6924 = fptoui float %6923 to i32
  %6925 = icmp ult i32 %6921, %6924
  br i1 %6925, label %6926, label %7095

; <label>:6926                                    ; preds = %6883
  %6927 = fcmp fast ogt float %81, 9.843750e-01
  %6928 = fadd fast float %5721, -4.000000e+00
  %6929 = select i1 %6927, float -4.000000e+00, float %6928
  %6930 = call float @dx.op.binary.f32(i32 35, float %6929, float 0.000000e+00)  ; FMax(a,b)
  %6931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6932 = extractvalue %dx.types.CBufRet.f32 %6931, 0
  %6933 = fadd fast float %6932, %6930
  %6934 = extractvalue %dx.types.CBufRet.f32 %6931, 2
  %6935 = fmul fast float %6933, %6934
  %6936 = call float @dx.op.unary.f32(i32 23, float %6935)  ; Log(value)
  %6937 = extractvalue %dx.types.CBufRet.f32 %6931, 3
  %6938 = fmul fast float %6937, %6936
  %6939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6940 = extractvalue %dx.types.CBufRet.f32 %6939, 2
  %6941 = fmul fast float %6938, %6940
  %6942 = call float @dx.op.unary.f32(i32 7, float %6941)  ; Saturate(value)
  %6943 = uitofp i32 %6921 to float
  %6944 = uitofp i32 %6924 to float
  %6945 = fadd fast float %6943, 5.000000e-01
  %6946 = fadd fast float %6944, 5.000000e-01
  %6947 = fmul fast float %6940, %6945
  %6948 = fmul fast float %6940, %6946
  %6949 = fadd fast float %6947, 0x3F0FFB4800000000
  %6950 = fadd fast float %6948, 0xBF0FFB4800000000
  %6951 = call float @dx.op.binary.f32(i32 35, float %6942, float %6949)  ; FMax(a,b)
  %6952 = call float @dx.op.binary.f32(i32 36, float %6951, float %6950)  ; FMin(a,b)
  %6953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6954 = extractvalue %dx.types.CBufRet.f32 %6953, 1
  %6955 = extractvalue %dx.types.CBufRet.f32 %6953, 2
  %6956 = extractvalue %dx.types.CBufRet.f32 %6953, 0
  %6957 = select i1 %5457, float %6956, float 0.000000e+00
  %6958 = fmul fast float %6954, %6952
  %6959 = fadd fast float %6957, %6958
  %6960 = fadd fast float %6957, %6955
  %6961 = fsub fast float %6954, %6955
  %6962 = fadd fast float %6961, %6957
  %6963 = call float @dx.op.binary.f32(i32 35, float %6959, float %6960)  ; FMax(a,b)
  %6964 = call float @dx.op.binary.f32(i32 36, float %6963, float %6962)  ; FMin(a,b)
  %6965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %6896, float %6897, float %6964, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6966 = extractvalue %dx.types.ResRet.f32 %6965, 0
  %6967 = extractvalue %dx.types.ResRet.f32 %6965, 1
  %6968 = extractvalue %dx.types.ResRet.f32 %6965, 2
  %6969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6970 = extractvalue %dx.types.CBufRet.i32 %6969, 0
  %6971 = extractvalue %dx.types.CBufRet.i32 %6969, 1
  %6972 = uitofp i32 %6970 to float
  %6973 = uitofp i32 %6971 to float
  %6974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6975 = extractvalue %dx.types.CBufRet.f32 %6974, 0
  %6976 = extractvalue %dx.types.CBufRet.f32 %6974, 1
  %6977 = fmul fast float %6972, %6896
  %6978 = fmul fast float %6973, %6897
  %6979 = fadd fast float %6977, -5.000000e-01
  %6980 = fadd fast float %6978, -5.000000e-01
  %6981 = call float @dx.op.unary.f32(i32 22, float %6979)  ; Frc(value)
  %6982 = call float @dx.op.unary.f32(i32 22, float %6980)  ; Frc(value)
  %6983 = fmul fast float %6981, %6981
  %6984 = fmul fast float %6983, %6981
  %6985 = fsub fast float 3.000000e+00, %6981
  %6986 = fmul fast float %6983, %6985
  %6987 = fmul fast float %6981, 3.000000e+00
  %6988 = fmul fast float %6984, 3.000000e+00
  %6989 = fmul fast float %6983, 6.000000e+00
  %6990 = fsub fast float %6988, %6989
  %6991 = fadd fast float %6990, 4.000000e+00
  %6992 = fmul fast float %6991, 0x3FC5555560000000
  %6993 = fmul fast float %6984, -3.000000e+00
  %6994 = fadd fast float %6983, %6981
  %6995 = fmul fast float %6994, 3.000000e+00
  %6996 = fadd fast float %6993, 1.000000e+00
  %6997 = fadd fast float %6996, %6995
  %6998 = fmul fast float %6984, 0x3FC5555560000000
  %6999 = fmul fast float %6982, %6982
  %7000 = fmul fast float %6999, %6982
  %7001 = fsub fast float 3.000000e+00, %6982
  %7002 = fmul fast float %6999, %7001
  %7003 = fmul fast float %6982, 3.000000e+00
  %7004 = fmul fast float %7000, 3.000000e+00
  %7005 = fmul fast float %6999, 6.000000e+00
  %7006 = fsub fast float %7004, %7005
  %7007 = fadd fast float %7006, 4.000000e+00
  %7008 = fmul fast float %7007, 0x3FC5555560000000
  %7009 = fmul fast float %7000, -3.000000e+00
  %7010 = fadd fast float %6999, %6982
  %7011 = fmul fast float %7010, 3.000000e+00
  %7012 = fadd fast float %7009, 1.000000e+00
  %7013 = fadd fast float %7012, %7011
  %7014 = fmul fast float %7000, 0x3FC5555560000000
  %7015 = fadd fast float %6981, 1.000000e+00
  %7016 = fsub fast float 1.000000e+00, %6987
  %7017 = fadd fast float %7016, %6986
  %7018 = fadd fast float %7017, %6991
  %7019 = fmul fast float %7018, 0x3FC5555560000000
  %7020 = fdiv fast float %6992, %7019
  %7021 = fsub fast float %7015, %7020
  %7022 = fsub fast float 1.000000e+00, %6981
  %7023 = fadd fast float %6997, %6984
  %7024 = fmul fast float %7023, 0x3FC5555560000000
  %7025 = fdiv fast float %6998, %7024
  %7026 = fadd fast float %7022, %7025
  %7027 = fadd fast float %6982, 1.000000e+00
  %7028 = fsub fast float 1.000000e+00, %7003
  %7029 = fadd fast float %7028, %7002
  %7030 = fadd fast float %7029, %7007
  %7031 = fmul fast float %7030, 0x3FC5555560000000
  %7032 = fdiv fast float %7008, %7031
  %7033 = fsub fast float %7027, %7032
  %7034 = fsub fast float 1.000000e+00, %6982
  %7035 = fadd fast float %7013, %7000
  %7036 = fmul fast float %7035, 0x3FC5555560000000
  %7037 = fdiv fast float %7014, %7036
  %7038 = fadd fast float %7037, %7034
  %7039 = fmul fast float %7021, %6975
  %7040 = fsub fast float %6896, %7039
  %7041 = fmul fast float %7026, %6975
  %7042 = fadd fast float %7041, %6896
  %7043 = fmul fast float %7038, %6976
  %7044 = fadd fast float %7043, %6897
  %7045 = fmul fast float %7033, %6976
  %7046 = fsub fast float %6897, %7045
  %7047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7040, float %7046, float %6964, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7048 = extractvalue %dx.types.ResRet.f32 %7047, 0
  %7049 = extractvalue %dx.types.ResRet.f32 %7047, 1
  %7050 = extractvalue %dx.types.ResRet.f32 %7047, 2
  %7051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7042, float %7046, float %6964, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7052 = extractvalue %dx.types.ResRet.f32 %7051, 0
  %7053 = extractvalue %dx.types.ResRet.f32 %7051, 1
  %7054 = extractvalue %dx.types.ResRet.f32 %7051, 2
  %7055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7040, float %7044, float %6964, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7056 = extractvalue %dx.types.ResRet.f32 %7055, 0
  %7057 = extractvalue %dx.types.ResRet.f32 %7055, 1
  %7058 = extractvalue %dx.types.ResRet.f32 %7055, 2
  %7059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7042, float %7044, float %6964, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7060 = extractvalue %dx.types.ResRet.f32 %7059, 0
  %7061 = extractvalue %dx.types.ResRet.f32 %7059, 1
  %7062 = extractvalue %dx.types.ResRet.f32 %7059, 2
  %7063 = fsub fast float %7056, %7048
  %7064 = fsub fast float %7057, %7049
  %7065 = fsub fast float %7058, %7050
  %7066 = fmul fast float %7063, %7036
  %7067 = fmul fast float %7064, %7036
  %7068 = fmul fast float %7065, %7036
  %7069 = fadd fast float %7066, %7048
  %7070 = fadd fast float %7067, %7049
  %7071 = fadd fast float %7068, %7050
  %7072 = fsub fast float %7060, %7052
  %7073 = fsub fast float %7061, %7053
  %7074 = fsub fast float %7062, %7054
  %7075 = fmul fast float %7072, %7036
  %7076 = fmul fast float %7073, %7036
  %7077 = fmul fast float %7074, %7036
  %7078 = fsub fast float %7052, %7069
  %7079 = fadd fast float %7078, %7075
  %7080 = fsub fast float %7053, %7070
  %7081 = fadd fast float %7080, %7076
  %7082 = fsub fast float %7054, %7071
  %7083 = fadd fast float %7082, %7077
  %7084 = fmul fast float %7079, %7024
  %7085 = fmul fast float %7081, %7024
  %7086 = fmul fast float %7083, %7024
  %7087 = fadd fast float %7084, %7069
  %7088 = fadd fast float %7085, %7070
  %7089 = fadd fast float %7086, %7071
  %7090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7091 = extractvalue %dx.types.CBufRet.f32 %7090, 1
  %7092 = fmul fast float %7087, %7091
  %7093 = fmul fast float %7088, %7091
  %7094 = fmul fast float %7089, %7091
  br label %7095

; <label>:7095                                    ; preds = %6926, %6883
  %7096 = phi float [ %6966, %6926 ], [ 1.000000e+00, %6883 ]
  %7097 = phi float [ %6967, %6926 ], [ 1.000000e+00, %6883 ]
  %7098 = phi float [ %6968, %6926 ], [ 1.000000e+00, %6883 ]
  %7099 = phi float [ %7092, %6926 ], [ 0.000000e+00, %6883 ]
  %7100 = phi float [ %7093, %6926 ], [ 0.000000e+00, %6883 ]
  %7101 = phi float [ %7094, %6926 ], [ 0.000000e+00, %6883 ]
  %7102 = fmul fast float %7099, %5435
  %7103 = fmul fast float %7100, %5435
  %7104 = fmul fast float %7101, %5435
  %7105 = fmul fast float %7096, %6890
  %7106 = call float @dx.op.dot3.f32(i32 55, float %7096, float %7097, float %7098, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7107 = call float @dx.op.dot3.f32(i32 55, float %7102, float %7103, float %7104, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7108 = select i1 %229, float %7106, float %7096
  %7109 = select i1 %229, float %7106, float %7097
  %7110 = select i1 %229, float 1.000000e+00, float %7098
  %7111 = select i1 %229, float %7107, float %7102
  %7112 = select i1 %229, float 0.000000e+00, float %7103
  %7113 = select i1 %229, float 0.000000e+00, float %7104
  %7114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7115 = extractvalue %dx.types.CBufRet.i32 %7114, 3
  %7116 = and i32 %7115, 3
  %7117 = icmp ne i32 %7116, 0
  %7118 = and i32 %7115, 4
  %7119 = icmp ne i32 %7118, 0
  %7120 = and i1 %7117, %7119
  %7121 = and i1 %229, %7120
  br i1 %7121, label %7122, label %7128

; <label>:7122                                    ; preds = %7095
  %7123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7124 = extractvalue %dx.types.CBufRet.f32 %7123, 1
  %7125 = fadd fast float %7105, -1.000000e+00
  %7126 = fmul fast float %7124, %7125
  %7127 = fadd fast float %7126, 1.000000e+00
  br label %7128

; <label>:7128                                    ; preds = %7122, %7095
  %7129 = phi float [ %7127, %7122 ], [ %7105, %7095 ]
  %7130 = fadd fast float %6887, %6884
  %7131 = fmul fast float %7108, %7130
  %7132 = fadd fast float %7131, %7111
  %7133 = fadd fast float %6888, %6885
  %7134 = fmul fast float %7109, %7133
  %7135 = fadd fast float %7134, %7112
  %7136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7137 = extractvalue %dx.types.CBufRet.f32 %7136, 0
  br i1 %229, label %7138, label %7161

; <label>:7138                                    ; preds = %7128
  %7139 = fadd fast float %7132, %7135
  %7140 = fmul fast float %7137, %7139
  %7141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7142 = extractvalue %dx.types.CBufRet.f32 %7141, 3
  %7143 = extractvalue %dx.types.CBufRet.f32 %5439, 1
  %7144 = fsub fast float %5444, %5438
  %7145 = fadd fast float %7144, %5445
  %7146 = fsub fast float %7145, %7143
  %7147 = extractvalue %dx.types.CBufRet.f32 %5439, 2
  %7148 = fmul fast float %7146, %7147
  %7149 = call float @dx.op.unary.f32(i32 7, float %7148)  ; Saturate(value)
  %7150 = fsub fast float %7149, %7142
  %7151 = fmul fast float %7150, %7129
  %7152 = fadd fast float %7151, %7142
  %7153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7154 = extractvalue %dx.types.CBufRet.f32 %7153, 0
  %7155 = fsub fast float %7152, %7154
  %7156 = fmul fast float %7155, 1.000000e+01
  %7157 = call float @dx.op.unary.f32(i32 7, float %7156)  ; Saturate(value)
  %7158 = fmul fast float %7157, %5434
  %7159 = fadd fast float %7158, %5435
  %7160 = fmul fast float %7159, %7152
  br label %7185

; <label>:7161                                    ; preds = %7128
  %7162 = fadd fast float %6889, %6886
  %7163 = fmul fast float %7110, %7162
  %7164 = fadd fast float %7163, %7113
  %7165 = fmul fast float %7137, %7132
  %7166 = fmul fast float %7137, %7135
  %7167 = fmul fast float %7137, %7164
  %7168 = call float @dx.op.binary.f32(i32 35, float %7166, float %7167)  ; FMax(a,b)
  %7169 = call float @dx.op.binary.f32(i32 35, float %7165, float %7168)  ; FMax(a,b)
  %7170 = call float @dx.op.binary.f32(i32 35, float %7169, float %5435)  ; FMax(a,b)
  %7171 = fcmp fast ugt float %7170, 0x3F10000000000000
  br i1 %7171, label %7173, label %7172

; <label>:7172                                    ; preds = %7161
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7173

; <label>:7173                                    ; preds = %7172, %7161
  %7174 = add i32 %65, 116
  %7175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %7174, i32 undef)  ; BufferLoad(srv,index,wot)
  %7176 = extractvalue %dx.types.ResRet.i32 %7175, 0
  %7177 = and i32 %7176, 32
  %7178 = icmp eq i32 %7177, 0
  br i1 %7178, label %7185, label %7179

; <label>:7179                                    ; preds = %7173
  %7180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7181 = extractvalue %dx.types.CBufRet.f32 %7180, 0
  %7182 = fmul fast float %7181, 0x3FE99999A0000000
  %7183 = fadd fast float %7181, %7165
  %7184 = fadd fast float %7182, %7167
  br label %7185

; <label>:7185                                    ; preds = %7179, %7173, %7138
  %7186 = phi float [ %7140, %7138 ], [ %7183, %7179 ], [ %7165, %7173 ]
  %7187 = phi float [ %7160, %7138 ], [ %7166, %7179 ], [ %7166, %7173 ]
  %7188 = phi float [ %7159, %7138 ], [ %7184, %7179 ], [ %7167, %7173 ]
  %7189 = phi float [ %7159, %7138 ], [ %5435, %7179 ], [ %5435, %7173 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7190 = call float @dx.op.binary.f32(i32 36, float %7186, float 3.225500e+04)  ; FMin(a,b)
  %7191 = call float @dx.op.binary.f32(i32 36, float %7187, float 3.225500e+04)  ; FMin(a,b)
  %7192 = call float @dx.op.binary.f32(i32 36, float %7188, float 3.225500e+04)  ; FMin(a,b)
  %7193 = call float @dx.op.binary.f32(i32 36, float %7189, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7190)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7191)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7192)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7193)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare float @dx.op.calculateLOD.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, i1) #2

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

