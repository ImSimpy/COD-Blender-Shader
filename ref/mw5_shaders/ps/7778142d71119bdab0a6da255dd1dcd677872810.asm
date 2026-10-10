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
; shader hash: b8abbc564df88bd2586331657617c7a1
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
  %289 = add i32 %65, 196
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
  br i1 %306, label %1016, label %307

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
  %518 = add i32 %65, 184
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
  %570 = add i32 %65, 180
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
  %594 = add i32 %65, 168
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
  %617 = add i32 %65, 188
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
  br i1 %810, label %951, label %811

; <label>:811                                     ; preds = %789
  %812 = add i32 %65, 44
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = add i32 %65, 172
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = add i32 %817, 0
  %819 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %818, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %820 = add i32 %65, 136
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = extractvalue %dx.types.ResRet.i32 %821, 1
  %824 = extractvalue %dx.types.ResRet.i32 %821, 2
  %825 = extractvalue %dx.types.ResRet.i32 %821, 3
  %826 = bitcast i32 %823 to float
  %827 = bitcast i32 %824 to float
  %828 = bitcast i32 %825 to float
  %829 = add i32 %65, 152
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
  %967 = add i32 %65, 176
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
  %1003 = add i32 %65, 48
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = and i32 %1005, 255
  %1007 = uitofp i32 %1006 to float
  %1008 = lshr i32 %1005, 8
  %1009 = and i32 %1008, 255
  %1010 = uitofp i32 %1009 to float
  %1011 = call float @dx.op.dot3.f32(i32 55, float %804, float %805, float %806, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1012 = fmul fast float %1010, %1011
  %1013 = fadd fast float %1012, %1007
  %1014 = fmul fast float %1013, 0x3F70101020000000
  %1015 = call float @dx.op.unary.f32(i32 7, float %1014)  ; Saturate(value)
  br label %1016

; <label>:1016                                    ; preds = %999, %297
  %1017 = phi float [ 0.000000e+00, %297 ], [ %953, %999 ]
  %1018 = phi float [ 0.000000e+00, %297 ], [ %954, %999 ]
  %1019 = phi float [ 0.000000e+00, %297 ], [ %1000, %999 ]
  %1020 = phi float [ 0.000000e+00, %297 ], [ %1001, %999 ]
  %1021 = phi float [ 0.000000e+00, %297 ], [ %1002, %999 ]
  %1022 = phi float [ 0.000000e+00, %297 ], [ %804, %999 ]
  %1023 = phi float [ 0.000000e+00, %297 ], [ %805, %999 ]
  %1024 = phi float [ 0.000000e+00, %297 ], [ %806, %999 ]
  %1025 = phi float [ 0.000000e+00, %297 ], [ %790, %999 ]
  %1026 = phi float [ 0.000000e+00, %297 ], [ %586, %999 ]
  %1027 = phi float [ 0.000000e+00, %297 ], [ %952, %999 ]
  %1028 = phi float [ 0.000000e+00, %297 ], [ %955, %999 ]
  %1029 = phi float [ 0.000000e+00, %297 ], [ %1015, %999 ]
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 0
  %1032 = call float @dx.op.dot2.f32(i32 54, float %1017, float %1018, float %1017, float %1018)  ; Dot2(ax,ay,bx,by)
  %1033 = fmul fast float %1032, 0x3FE3333340000000
  %1034 = fsub fast float 1.000000e+00, %1033
  %1035 = call float @dx.op.dot3.f32(i32 55, float %1017, float %1018, float %1034, float %1017, float %1018, float %1034)  ; Dot3(ax,ay,az,bx,by,bz)
  %1036 = call float @dx.op.unary.f32(i32 25, float %1035)  ; Rsqrt(value)
  %1037 = fmul fast float %1036, %1017
  %1038 = fmul fast float %1036, %1018
  %1039 = fmul fast float %1034, %1036
  %1040 = fmul fast float %1039, %70
  %1041 = fmul fast float %1039, %71
  %1042 = fmul fast float %1039, %72
  %1043 = fmul fast float %1037, %66
  %1044 = fmul fast float %1037, %67
  %1045 = fmul fast float %1037, %68
  %1046 = fadd fast float %1040, %1043
  %1047 = fadd fast float %1041, %1044
  %1048 = fadd fast float %1042, %1045
  %1049 = fmul fast float %1038, %102
  %1050 = fmul fast float %1038, %103
  %1051 = fmul fast float %1038, %104
  %1052 = fadd fast float %1046, %1049
  %1053 = fadd fast float %1047, %1050
  %1054 = fadd fast float %1048, %1051
  %1055 = call float @dx.op.dot3.f32(i32 55, float %1052, float %1053, float %1054, float %1052, float %1053, float %1054)  ; Dot3(ax,ay,az,bx,by,bz)
  %1056 = call float @dx.op.unary.f32(i32 25, float %1055)  ; Rsqrt(value)
  %1057 = fmul fast float %1052, %1056
  %1058 = fmul fast float %1053, %1056
  %1059 = fmul fast float %1054, %1056
  %1060 = call float @dx.op.unary.f32(i32 83, float %138)  ; DerivCoarseX(value)
  %1061 = call float @dx.op.unary.f32(i32 83, float %139)  ; DerivCoarseX(value)
  %1062 = call float @dx.op.unary.f32(i32 83, float %140)  ; DerivCoarseX(value)
  %1063 = call float @dx.op.unary.f32(i32 84, float %138)  ; DerivCoarseY(value)
  %1064 = call float @dx.op.unary.f32(i32 84, float %139)  ; DerivCoarseY(value)
  %1065 = call float @dx.op.unary.f32(i32 84, float %140)  ; DerivCoarseY(value)
  %1066 = fadd fast float %1060, %138
  %1067 = fadd fast float %1061, %139
  %1068 = fadd fast float %1062, %140
  %1069 = fadd fast float %1063, %138
  %1070 = fadd fast float %1064, %139
  %1071 = fadd fast float %1065, %140
  %1072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1073 = extractvalue %dx.types.CBufRet.f32 %1072, 0
  %1074 = extractvalue %dx.types.CBufRet.f32 %1072, 1
  %1075 = extractvalue %dx.types.CBufRet.f32 %1072, 2
  %1076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1077 = extractvalue %dx.types.CBufRet.f32 %1076, 2
  %1078 = extractvalue %dx.types.CBufRet.f32 %1076, 3
  %1079 = fmul fast float %1073, %91
  %1080 = fmul fast float %1079, %1077
  %1081 = fmul fast float %1074, %92
  %1082 = fmul fast float %1081, %1078
  %1083 = fptoui float %1080 to i32
  %1084 = fptoui float %1082 to i32
  %1085 = fadd fast float %1073, -1.000000e+00
  %1086 = fadd fast float %1074, -1.000000e+00
  %1087 = fptoui float %1085 to i32
  %1088 = fptoui float %1086 to i32
  %1089 = call i32 @dx.op.binary.i32(i32 40, i32 %1083, i32 %1087)  ; UMin(a,b)
  %1090 = call i32 @dx.op.binary.i32(i32 40, i32 %1084, i32 %1088)  ; UMin(a,b)
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 2
  %1093 = extractvalue %dx.types.CBufRet.f32 %1091, 3
  %1094 = fmul fast float %1092, %82
  %1095 = fsub fast float %1094, %1093
  %1096 = fadd fast float %1075, -1.000000e+00
  %1097 = call float @dx.op.binary.f32(i32 36, float %1095, float %1096)  ; FMin(a,b)
  %1098 = fptoui float %1097 to i32
  %1099 = fptoui float %1073 to i32
  %1100 = fptoui float %1074 to i32
  %1101 = mul i32 %1098, %1100
  %1102 = add i32 %1101, %1090
  %1103 = mul i32 %1102, %1099
  %1104 = add i32 %1103, %1089
  %1105 = shl i32 %1104, 2
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = and i32 %1107, 1023
  %1109 = lshr i32 %1107, 10
  %1110 = icmp eq i32 %1108, 0
  br i1 %1110, label %1536, label %1111

; <label>:1111                                    ; preds = %1016
  %1112 = and i32 %1107, 1023
  br label %1113

; <label>:1113                                    ; preds = %1239, %1111
  %1114 = phi float [ %1240, %1239 ], [ 0.000000e+00, %1111 ]
  %1115 = phi float [ %1241, %1239 ], [ %1031, %1111 ]
  %1116 = phi float [ %1242, %1239 ], [ %1029, %1111 ]
  %1117 = phi float [ %1243, %1239 ], [ 0.000000e+00, %1111 ]
  %1118 = phi float [ %1244, %1239 ], [ 0.000000e+00, %1111 ]
  %1119 = phi float [ %1245, %1239 ], [ %1019, %1111 ]
  %1120 = phi float [ %1246, %1239 ], [ %1020, %1111 ]
  %1121 = phi float [ %1247, %1239 ], [ %1021, %1111 ]
  %1122 = phi float [ %1248, %1239 ], [ %1057, %1111 ]
  %1123 = phi float [ %1249, %1239 ], [ %1058, %1111 ]
  %1124 = phi float [ %1250, %1239 ], [ %1059, %1111 ]
  %1125 = phi float [ %1251, %1239 ], [ %1028, %1111 ]
  %1126 = phi float [ %1252, %1239 ], [ %1027, %1111 ]
  %1127 = phi float [ %1253, %1239 ], [ 0.000000e+00, %1111 ]
  %1128 = phi float [ %1254, %1239 ], [ %1025, %1111 ]
  %1129 = phi float [ %1255, %1239 ], [ %1022, %1111 ]
  %1130 = phi float [ %1256, %1239 ], [ %1023, %1111 ]
  %1131 = phi float [ %1257, %1239 ], [ %1024, %1111 ]
  %1132 = phi i32 [ %1189, %1239 ], [ 0, %1111 ]
  %1133 = add nuw nsw i32 %1132, %1109
  %1134 = shl i32 %1133, 2
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = shl i32 %1136, 8
  %1138 = or i32 %1137, 48
  %1139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1143 = extractvalue %dx.types.ResRet.f32 %1139, 3
  %1144 = or i32 %1137, 64
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = extractvalue %dx.types.ResRet.i32 %1145, 1
  %1148 = or i32 %1137, 80
  %1149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 2
  %1151 = extractvalue %dx.types.ResRet.f32 %1149, 3
  %1152 = or i32 %1137, 96
  %1153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.f32 %1153, 0
  %1155 = extractvalue %dx.types.ResRet.f32 %1153, 1
  %1156 = extractvalue %dx.types.ResRet.f32 %1153, 2
  %1157 = extractvalue %dx.types.ResRet.f32 %1153, 3
  %1158 = or i32 %1137, 112
  %1159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1158, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.f32 %1159, 2
  %1161 = or i32 %1137, 128
  %1162 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.f32 %1162, 0
  %1164 = extractvalue %dx.types.ResRet.f32 %1162, 1
  %1165 = extractvalue %dx.types.ResRet.f32 %1162, 2
  %1166 = extractvalue %dx.types.ResRet.f32 %1162, 3
  %1167 = or i32 %1137, 144
  %1168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1170 = extractvalue %dx.types.ResRet.f32 %1168, 1
  %1171 = extractvalue %dx.types.ResRet.f32 %1168, 2
  %1172 = extractvalue %dx.types.ResRet.f32 %1168, 3
  %1173 = or i32 %1137, 160
  %1174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.f32 %1174, 0
  %1176 = extractvalue %dx.types.ResRet.f32 %1174, 1
  %1177 = extractvalue %dx.types.ResRet.f32 %1174, 2
  %1178 = extractvalue %dx.types.ResRet.f32 %1174, 3
  %1179 = or i32 %1137, 192
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1179, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = or i32 %1137, 208
  %1183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = or i32 %1137, 248
  %1186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.f32 %1186, 0
  %1188 = extractvalue %dx.types.ResRet.f32 %1186, 1
  %1189 = add nuw nsw i32 %1132, 1
  %1190 = bitcast float %1143 to i32
  %1191 = and i32 %1190, 2560
  %1192 = icmp eq i32 %1191, 0
  %1193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.ResRet.f32 %1193, 1
  %1196 = extractvalue %dx.types.ResRet.f32 %1193, 2
  %1197 = extractvalue %dx.types.ResRet.f32 %1193, 3
  %1198 = call float @dx.op.dot4.f32(i32 56, float %1194, float %1195, float %1196, float %1197, float %138, float %139, float %140, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1199 = or i32 %1137, 16
  %1200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = extractvalue %dx.types.ResRet.f32 %1200, 1
  %1203 = extractvalue %dx.types.ResRet.f32 %1200, 2
  %1204 = extractvalue %dx.types.ResRet.f32 %1200, 3
  %1205 = call float @dx.op.dot4.f32(i32 56, float %1201, float %1202, float %1203, float %1204, float %138, float %139, float %140, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1206 = or i32 %1137, 32
  %1207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1206, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.f32 %1207, 0
  %1209 = extractvalue %dx.types.ResRet.f32 %1207, 1
  %1210 = extractvalue %dx.types.ResRet.f32 %1207, 2
  %1211 = extractvalue %dx.types.ResRet.f32 %1207, 3
  %1212 = call float @dx.op.dot4.f32(i32 56, float %1208, float %1209, float %1210, float %1211, float %138, float %139, float %140, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1213 = call float @dx.op.unary.f32(i32 27, float %1198)  ; Round_ni(value)
  %1214 = call float @dx.op.unary.f32(i32 6, float %1213)  ; FAbs(value)
  %1215 = call float @dx.op.unary.f32(i32 27, float %1205)  ; Round_ni(value)
  %1216 = call float @dx.op.unary.f32(i32 6, float %1215)  ; FAbs(value)
  %1217 = call float @dx.op.unary.f32(i32 6, float %1212)  ; FAbs(value)
  %1218 = call float @dx.op.unary.f32(i32 27, float %1217)  ; Round_ni(value)
  %1219 = fadd fast float %1216, %1214
  %1220 = fadd fast float %1219, %1218
  %1221 = fcmp fast oeq float %1220, 0.000000e+00
  %1222 = call float @dx.op.dot4.f32(i32 56, float %1194, float %1195, float %1196, float %1197, float %1066, float %1067, float %1068, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1223 = call float @dx.op.dot4.f32(i32 56, float %1201, float %1202, float %1203, float %1204, float %1066, float %1067, float %1068, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1224 = call float @dx.op.dot4.f32(i32 56, float %1194, float %1195, float %1196, float %1197, float %1069, float %1070, float %1071, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1225 = call float @dx.op.dot4.f32(i32 56, float %1201, float %1202, float %1203, float %1204, float %1069, float %1070, float %1071, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1226 = fsub fast float %1222, %1198
  %1227 = fsub fast float %1224, %1198
  %1228 = fsub fast float %1223, %1205
  %1229 = fsub fast float %1225, %1205
  %1230 = call float @dx.op.dot3.f32(i32 55, float %1140, float %1141, float %1142, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1231, 2
  %1233 = fadd fast float %1232, %1230
  %1234 = call float @dx.op.unary.f32(i32 7, float %1233)  ; Saturate(value)
  %1235 = extractvalue %dx.types.CBufRet.f32 %1231, 0
  %1236 = fcmp fast ogt float %1234, %1235
  %1237 = and i1 %1221, %1236
  %1238 = and i1 %1192, %1237
  br i1 %1238, label %1259, label %1239

; <label>:1239                                    ; preds = %1522, %1340, %1259, %1113
  %1240 = phi float [ %1114, %1259 ], [ %1343, %1340 ], [ %1343, %1522 ], [ %1114, %1113 ]
  %1241 = phi float [ %1115, %1259 ], [ %1115, %1340 ], [ %1497, %1522 ], [ %1115, %1113 ]
  %1242 = phi float [ %1116, %1259 ], [ %1116, %1340 ], [ %1495, %1522 ], [ %1116, %1113 ]
  %1243 = phi float [ %1117, %1259 ], [ %1117, %1340 ], [ %1467, %1522 ], [ %1117, %1113 ]
  %1244 = phi float [ %1118, %1259 ], [ %1118, %1340 ], [ %1465, %1522 ], [ %1118, %1113 ]
  %1245 = phi float [ %1119, %1259 ], [ %1119, %1340 ], [ %1532, %1522 ], [ %1119, %1113 ]
  %1246 = phi float [ %1120, %1259 ], [ %1120, %1340 ], [ %1533, %1522 ], [ %1120, %1113 ]
  %1247 = phi float [ %1121, %1259 ], [ %1121, %1340 ], [ %1534, %1522 ], [ %1121, %1113 ]
  %1248 = phi float [ %1122, %1259 ], [ %1122, %1340 ], [ %1446, %1522 ], [ %1122, %1113 ]
  %1249 = phi float [ %1123, %1259 ], [ %1123, %1340 ], [ %1447, %1522 ], [ %1123, %1113 ]
  %1250 = phi float [ %1124, %1259 ], [ %1124, %1340 ], [ %1448, %1522 ], [ %1124, %1113 ]
  %1251 = phi float [ %1125, %1259 ], [ %1125, %1340 ], [ %1475, %1522 ], [ %1125, %1113 ]
  %1252 = phi float [ %1126, %1259 ], [ %1126, %1340 ], [ %1472, %1522 ], [ %1126, %1113 ]
  %1253 = phi float [ %1127, %1259 ], [ %1127, %1340 ], [ %1469, %1522 ], [ %1127, %1113 ]
  %1254 = phi float [ %1128, %1259 ], [ %1128, %1340 ], [ %1463, %1522 ], [ %1128, %1113 ]
  %1255 = phi float [ %1129, %1259 ], [ %1129, %1340 ], [ %1458, %1522 ], [ %1129, %1113 ]
  %1256 = phi float [ %1130, %1259 ], [ %1130, %1340 ], [ %1459, %1522 ], [ %1130, %1113 ]
  %1257 = phi float [ %1131, %1259 ], [ %1131, %1340 ], [ %1460, %1522 ], [ %1131, %1113 ]
  %1258 = icmp eq i32 %1189, %1112
  br i1 %1258, label %1535, label %1113

; <label>:1259                                    ; preds = %1113
  %1260 = extractvalue %dx.types.ResRet.f32 %1159, 3
  %1261 = extractvalue %dx.types.ResRet.f32 %1159, 1
  %1262 = extractvalue %dx.types.ResRet.f32 %1159, 0
  %1263 = extractvalue %dx.types.ResRet.f32 %1149, 1
  %1264 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1265 = extractvalue %dx.types.ResRet.i32 %1145, 3
  %1266 = extractvalue %dx.types.ResRet.i32 %1145, 2
  %1267 = add i32 %1265, 0
  %1268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1267, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1270 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1268, %dx.types.Handle %1269, float %1198, float %1205, float undef, float undef, i32 0, i32 0, i32 undef, float %1226, float %1228, float undef, float %1227, float %1229, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1271 = extractvalue %dx.types.ResRet.f32 %1270, 0
  %1272 = fmul fast float %1271, %1264
  %1273 = fadd fast float %1272, %1263
  %1274 = call float @dx.op.unary.f32(i32 7, float %1273)  ; Saturate(value)
  %1275 = fmul fast float %1198, %1154
  %1276 = call float @dx.op.tertiary.f32(i32 46, float %1155, float %1205, float %1275)  ; FMad(a,b,c)
  %1277 = fadd fast float %1276, %1262
  %1278 = fmul fast float %1198, %1156
  %1279 = call float @dx.op.tertiary.f32(i32 46, float %1157, float %1205, float %1278)  ; FMad(a,b,c)
  %1280 = fadd fast float %1279, %1261
  %1281 = fmul fast float %1226, %1154
  %1282 = call float @dx.op.tertiary.f32(i32 46, float %1155, float %1228, float %1281)  ; FMad(a,b,c)
  %1283 = fmul fast float %1226, %1156
  %1284 = call float @dx.op.tertiary.f32(i32 46, float %1157, float %1228, float %1283)  ; FMad(a,b,c)
  %1285 = fmul fast float %1227, %1154
  %1286 = call float @dx.op.tertiary.f32(i32 46, float %1155, float %1229, float %1285)  ; FMad(a,b,c)
  %1287 = fmul fast float %1227, %1156
  %1288 = call float @dx.op.tertiary.f32(i32 46, float %1157, float %1229, float %1287)  ; FMad(a,b,c)
  %1289 = add i32 %1266, 0
  %1290 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1289, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1291 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1290, %dx.types.Handle %1269, float %1277, float %1280, float undef, float undef, i32 0, i32 0, i32 undef, float %1282, float %1284, float undef, float %1286, float %1288, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1292 = extractvalue %dx.types.ResRet.f32 %1291, 0
  %1293 = and i32 %1190, 1024
  %1294 = icmp ne i32 %1293, 0
  %1295 = fcmp fast ogt float %1292, 0x3FE0101020000000
  %1296 = uitofp i1 %1295 to float
  %1297 = select i1 %1294, float %1296, float %1292
  %1298 = and i32 %1190, 8192
  %1299 = icmp ne i32 %1298, 0
  %1300 = select i1 %1299, float %1260, float 1.000000e+00
  %1301 = fmul fast float %1198, 2.000000e+00
  %1302 = fadd fast float %1301, -1.000000e+00
  %1303 = call float @dx.op.unary.f32(i32 6, float %1302)  ; FAbs(value)
  %1304 = fmul fast float %1303, %1187
  %1305 = fsub fast float %1304, %1187
  %1306 = call float @dx.op.unary.f32(i32 7, float %1305)  ; Saturate(value)
  %1307 = fmul fast float %1205, 2.000000e+00
  %1308 = fadd fast float %1307, -1.000000e+00
  %1309 = call float @dx.op.unary.f32(i32 6, float %1308)  ; FAbs(value)
  %1310 = fmul fast float %1309, %1188
  %1311 = fsub fast float %1310, %1188
  %1312 = call float @dx.op.unary.f32(i32 7, float %1311)  ; Saturate(value)
  %1313 = fmul fast float %1217, %1150
  %1314 = fsub fast float %1313, %1150
  %1315 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1316 = fmul fast float %1274, %1300
  %1317 = fmul fast float %1316, %1271
  %1318 = fmul fast float %1317, %1306
  %1319 = fmul fast float %1318, %1297
  %1320 = fmul fast float %1319, %1312
  %1321 = fmul fast float %1320, %1315
  %1322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1323 = extractvalue %dx.types.CBufRet.f32 %1322, 1
  %1324 = extractvalue %dx.types.CBufRet.f32 %1322, 0
  %1325 = fsub fast float %1234, %1324
  %1326 = fmul fast float %1325, %1323
  %1327 = call float @dx.op.unary.f32(i32 7, float %1326)  ; Saturate(value)
  %1328 = fmul fast float %1321, %1151
  %1329 = fadd fast float %1321, %1151
  %1330 = fmul fast float %1329, %1160
  %1331 = fsub fast float %1330, %1160
  %1332 = call float @dx.op.unary.f32(i32 7, float %1331)  ; Saturate(value)
  %1333 = and i32 %1190, 128
  %1334 = icmp ne i32 %1333, 0
  %1335 = select i1 %1334, float %1332, float %1328
  %1336 = fmul fast float %1335, %1327
  %1337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1338 = extractvalue %dx.types.CBufRet.f32 %1337, 0
  %1339 = fcmp fast ugt float %1336, %1338
  br i1 %1339, label %1340, label %1239

; <label>:1340                                    ; preds = %1259
  %1341 = select i1 %1299, float %1336, float 0.000000e+00
  %1342 = fadd fast float %1341, %1114
  %1343 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  br i1 %1299, label %1239, label %1344

; <label>:1344                                    ; preds = %1340
  %1345 = and i32 %1190, 4
  %1346 = and i32 %1190, 8
  %1347 = add i32 %1146, 0
  %1348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1347, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1350 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1348, %dx.types.Handle %1349, float %1277, float %1280, float undef, float undef, i32 0, i32 0, i32 undef, float %1282, float %1284, float undef, float %1286, float %1288, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1351 = extractvalue %dx.types.ResRet.f32 %1350, 0
  %1352 = extractvalue %dx.types.ResRet.f32 %1350, 1
  %1353 = extractvalue %dx.types.ResRet.f32 %1350, 2
  %1354 = extractvalue %dx.types.ResRet.f32 %1350, 3
  %1355 = bitcast float %1172 to i32
  %1356 = and i32 %1355, 255
  %1357 = uitofp i32 %1356 to float
  %1358 = lshr i32 %1355, 8
  %1359 = and i32 %1358, 255
  %1360 = uitofp i32 %1359 to float
  %1361 = fmul fast float %1354, %1357
  %1362 = fadd fast float %1361, %1360
  %1363 = fmul fast float %1362, 0x3F70101000000000
  %1364 = add i32 %1147, 0
  %1365 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1364, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1366 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1365, %dx.types.Handle %1349, float %1277, float %1280, float undef, float undef, i32 0, i32 0, i32 undef, float %1282, float %1284, float undef, float %1286, float %1288, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1367 = extractvalue %dx.types.ResRet.f32 %1366, 0
  %1368 = extractvalue %dx.types.ResRet.f32 %1366, 1
  %1369 = extractvalue %dx.types.ResRet.f32 %1366, 2
  %1370 = extractvalue %dx.types.ResRet.f32 %1366, 3
  %1371 = bitcast float %1166 to i32
  %1372 = and i32 %1371, 255
  %1373 = uitofp i32 %1372 to float
  %1374 = lshr i32 %1371, 8
  %1375 = and i32 %1374, 255
  %1376 = uitofp i32 %1375 to float
  %1377 = lshr i32 %1371, 16
  %1378 = and i32 %1377, 255
  %1379 = uitofp i32 %1378 to float
  %1380 = fmul fast float %1379, 0x3F70101000000000
  %1381 = fmul fast float %1367, %1373
  %1382 = fadd fast float %1381, %1376
  %1383 = fmul fast float %1382, 0x3F70101000000000
  %1384 = fadd fast float %1368, -5.000000e-01
  %1385 = fadd fast float %1370, -5.000000e-01
  %1386 = fmul fast float %1384, %1380
  %1387 = fmul fast float %1385, %1380
  %1388 = fadd fast float %1386, 5.000000e-01
  %1389 = fadd fast float %1387, 5.000000e-01
  %1390 = fmul fast float %1351, %1175
  %1391 = fmul fast float %1352, %1176
  %1392 = fmul fast float %1353, %1177
  %1393 = fmul fast float %1388, 2.000000e+00
  %1394 = fadd fast float %1393, -1.000000e+00
  %1395 = fmul fast float %1389, 2.000000e+00
  %1396 = fadd fast float %1395, -1.000000e+00
  %1397 = fadd fast float %1394, %1396
  %1398 = fmul fast float %1397, 5.000000e-01
  %1399 = fsub fast float %1394, %1396
  %1400 = fmul fast float %1399, 5.000000e-01
  %1401 = call float @dx.op.unary.f32(i32 6, float %1398)  ; FAbs(value)
  %1402 = fsub fast float 1.000000e+00, %1401
  %1403 = call float @dx.op.unary.f32(i32 6, float %1400)  ; FAbs(value)
  %1404 = fsub fast float %1402, %1403
  %1405 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1400, float %1404, float %1398, float %1400, float %1404)  ; Dot3(ax,ay,az,bx,by,bz)
  %1406 = call float @dx.op.unary.f32(i32 25, float %1405)  ; Rsqrt(value)
  %1407 = fmul fast float %1398, %1406
  %1408 = fmul fast float %1400, %1406
  %1409 = fmul fast float %1406, %1404
  %1410 = fmul fast float %1409, %1140
  %1411 = fmul fast float %1409, %1141
  %1412 = fmul fast float %1409, %1142
  %1413 = fmul fast float %1407, %1163
  %1414 = fmul fast float %1407, %1164
  %1415 = fmul fast float %1407, %1165
  %1416 = fadd fast float %1413, %1410
  %1417 = fadd fast float %1414, %1411
  %1418 = fadd fast float %1415, %1412
  %1419 = fmul fast float %1408, %1169
  %1420 = fmul fast float %1408, %1170
  %1421 = fmul fast float %1408, %1171
  %1422 = fadd fast float %1416, %1419
  %1423 = fadd fast float %1417, %1420
  %1424 = fadd fast float %1418, %1421
  %1425 = call float @dx.op.dot3.f32(i32 55, float %1422, float %1423, float %1424, float %1422, float %1423, float %1424)  ; Dot3(ax,ay,az,bx,by,bz)
  %1426 = call float @dx.op.unary.f32(i32 25, float %1425)  ; Rsqrt(value)
  %1427 = fmul fast float %1422, %1426
  %1428 = fmul fast float %1423, %1426
  %1429 = fmul fast float %1424, %1426
  %1430 = icmp ne i32 %1346, 0
  %1431 = select i1 %1430, float 1.000000e+00, float 0.000000e+00
  %1432 = fmul fast float %1336, %1431
  %1433 = and i32 %1190, 1
  %1434 = icmp eq i32 %1433, 0
  br i1 %1434, label %1435, label %1439

; <label>:1435                                    ; preds = %1344
  %1436 = fsub fast float %1427, %1122
  %1437 = fsub fast float %1428, %1123
  %1438 = fsub fast float %1429, %1124
  br label %1439

; <label>:1439                                    ; preds = %1435, %1344
  %1440 = phi float [ %1436, %1435 ], [ %1427, %1344 ]
  %1441 = phi float [ %1437, %1435 ], [ %1428, %1344 ]
  %1442 = phi float [ %1438, %1435 ], [ %1429, %1344 ]
  %1443 = fmul float %1442, %1432
  %1444 = fmul float %1441, %1432
  %1445 = fmul float %1440, %1432
  %1446 = fadd fast float %1445, %1122
  %1447 = fadd fast float %1444, %1123
  %1448 = fadd fast float %1443, %1124
  %1449 = icmp ne i32 %1345, 0
  %1450 = select i1 %1449, float 1.000000e+00, float 0.000000e+00
  %1451 = fmul fast float %1336, %1450
  %1452 = fsub fast float %1390, %1129
  %1453 = fsub fast float %1391, %1130
  %1454 = fsub fast float %1392, %1131
  %1455 = fmul fast float %1452, %1451
  %1456 = fmul fast float %1453, %1451
  %1457 = fmul fast float %1454, %1451
  %1458 = fadd fast float %1455, %1129
  %1459 = fadd fast float %1456, %1130
  %1460 = fadd fast float %1457, %1131
  %1461 = fsub fast float %1363, %1128
  %1462 = fmul fast float %1461, %1451
  %1463 = fadd fast float %1462, %1128
  %1464 = fmul fast float %1451, %1118
  %1465 = fsub fast float %1118, %1464
  %1466 = fmul fast float %1451, %1117
  %1467 = fsub fast float %1117, %1466
  %1468 = fadd fast float %1336, %1127
  %1469 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  %1470 = fsub fast float %1383, %1126
  %1471 = fmul fast float %1470, %1432
  %1472 = fadd fast float %1471, %1126
  %1473 = fsub fast float %1369, %1125
  %1474 = fmul fast float %1473, %1432
  %1475 = fadd fast float %1474, %1125
  %1476 = call float @dx.op.dot3.f32(i32 55, float %1390, float %1391, float %1392, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1478 = extractvalue %dx.types.CBufRet.f32 %1477, 0
  %1479 = extractvalue %dx.types.CBufRet.f32 %1477, 1
  %1480 = fmul fast float %1479, %1476
  %1481 = fadd fast float %1480, %1478
  %1482 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  %1483 = bitcast float %1178 to i32
  %1484 = and i32 %1483, 65535
  %1485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1484)  ; LegacyF16ToF32(value)
  %1486 = lshr i32 %1483, 16
  %1487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1486)  ; LegacyF16ToF32(value)
  %1488 = fcmp fast oge float %1485, 0.000000e+00
  %1489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1490 = extractvalue %dx.types.CBufRet.f32 %1489, 0
  %1491 = select i1 %1488, float %1485, float %1490
  %1492 = fadd fast float %1491, %1487
  %1493 = fsub fast float %1482, %1116
  %1494 = fmul fast float %1493, %1336
  %1495 = fadd fast float %1494, %1116
  %1496 = fmul fast float %1492, %1336
  %1497 = call float @dx.op.binary.f32(i32 35, float %1115, float %1496)  ; FMax(a,b)
  %1498 = and i32 %1190, 16
  %1499 = icmp eq i32 %1498, 0
  br i1 %1499, label %1522, label %1500

; <label>:1500                                    ; preds = %1439
  %1501 = bitcast float %1184 to i32
  %1502 = add i32 %1181, 0
  %1503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1502, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1504 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1503, %dx.types.Handle %1349, float %1277, float %1280, float undef, float undef, i32 0, i32 0, i32 undef, float %1282, float %1284, float undef, float %1286, float %1288, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1505 = extractvalue %dx.types.ResRet.f32 %1504, 0
  %1506 = extractvalue %dx.types.ResRet.f32 %1504, 1
  %1507 = extractvalue %dx.types.ResRet.f32 %1504, 2
  %1508 = and i32 %1501, 65535
  %1509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1508)  ; LegacyF16ToF32(value)
  %1510 = fmul fast float %1505, %1175
  %1511 = fmul fast float %1506, %1176
  %1512 = fmul fast float %1507, %1177
  %1513 = and i32 %1190, 16384
  %1514 = icmp ne i32 %1513, 0
  %1515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1516 = extractvalue %dx.types.CBufRet.f32 %1515, 0
  %1517 = select i1 %1514, float %1516, float 1.000000e+00
  %1518 = fmul fast float %1517, %1509
  %1519 = fmul fast float %1510, %1518
  %1520 = fmul fast float %1511, %1518
  %1521 = fmul fast float %1512, %1518
  br label %1522

; <label>:1522                                    ; preds = %1500, %1439
  %1523 = phi float [ %1519, %1500 ], [ 0.000000e+00, %1439 ]
  %1524 = phi float [ %1520, %1500 ], [ 0.000000e+00, %1439 ]
  %1525 = phi float [ %1521, %1500 ], [ 0.000000e+00, %1439 ]
  %1526 = fsub fast float %1523, %1119
  %1527 = fsub fast float %1524, %1120
  %1528 = fsub fast float %1525, %1121
  %1529 = fmul fast float %1526, %1336
  %1530 = fmul fast float %1527, %1336
  %1531 = fmul fast float %1528, %1336
  %1532 = fadd fast float %1529, %1119
  %1533 = fadd fast float %1530, %1120
  %1534 = fadd fast float %1531, %1121
  br label %1239

; <label>:1535                                    ; preds = %1239
  br label %1536

; <label>:1536                                    ; preds = %1535, %1016
  %1537 = phi float [ 0.000000e+00, %1016 ], [ %1240, %1535 ]
  %1538 = phi float [ %1031, %1016 ], [ %1241, %1535 ]
  %1539 = phi float [ %1029, %1016 ], [ %1242, %1535 ]
  %1540 = phi float [ 0.000000e+00, %1016 ], [ %1243, %1535 ]
  %1541 = phi float [ 0.000000e+00, %1016 ], [ %1244, %1535 ]
  %1542 = phi float [ %1019, %1016 ], [ %1245, %1535 ]
  %1543 = phi float [ %1020, %1016 ], [ %1246, %1535 ]
  %1544 = phi float [ %1021, %1016 ], [ %1247, %1535 ]
  %1545 = phi float [ %1057, %1016 ], [ %1248, %1535 ]
  %1546 = phi float [ %1058, %1016 ], [ %1249, %1535 ]
  %1547 = phi float [ %1059, %1016 ], [ %1250, %1535 ]
  %1548 = phi float [ %1028, %1016 ], [ %1251, %1535 ]
  %1549 = phi float [ %1027, %1016 ], [ %1252, %1535 ]
  %1550 = phi float [ 0.000000e+00, %1016 ], [ %1253, %1535 ]
  %1551 = phi float [ %1025, %1016 ], [ %1254, %1535 ]
  %1552 = phi float [ %1022, %1016 ], [ %1255, %1535 ]
  %1553 = phi float [ %1023, %1016 ], [ %1256, %1535 ]
  %1554 = phi float [ %1024, %1016 ], [ %1257, %1535 ]
  %1555 = call float @dx.op.dot3.f32(i32 55, float %1545, float %1546, float %1547, float %1545, float %1546, float %1547)  ; Dot3(ax,ay,az,bx,by,bz)
  %1556 = call float @dx.op.unary.f32(i32 25, float %1555)  ; Rsqrt(value)
  %1557 = fmul fast float %1556, %1545
  %1558 = fmul fast float %1556, %1546
  %1559 = fmul fast float %1556, %1547
  %1560 = fadd fast float %1550, %1026
  %1561 = call float @dx.op.unary.f32(i32 7, float %1560)  ; Saturate(value)
  %1562 = call float @dx.op.dot3.f32(i32 55, float %1557, float %1558, float %1559, float %1557, float %1558, float %1559)  ; Dot3(ax,ay,az,bx,by,bz)
  %1563 = call float @dx.op.unary.f32(i32 25, float %1562)  ; Rsqrt(value)
  %1564 = fmul fast float %1563, %1557
  %1565 = fmul fast float %1563, %1558
  %1566 = fmul fast float %1563, %1559
  %1567 = fadd fast float %1551, 0xBFB99999A0000000
  %1568 = call float @dx.op.unary.f32(i32 7, float %1567)  ; Saturate(value)
  %1569 = fmul fast float %1568, 0x3FF1C71C80000000
  %1570 = call float @dx.op.binary.f32(i32 36, float %1551, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1571 = fsub fast float 1.000000e+00, %1569
  %1572 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  %1573 = fmul fast float %1572, %1552
  %1574 = fmul fast float %1572, %1553
  %1575 = fmul fast float %1572, %1554
  %1576 = call float @dx.op.unary.f32(i32 7, float %1573)  ; Saturate(value)
  %1577 = call float @dx.op.unary.f32(i32 7, float %1574)  ; Saturate(value)
  %1578 = call float @dx.op.unary.f32(i32 7, float %1575)  ; Saturate(value)
  %1579 = fmul fast float %1569, %1552
  %1580 = fmul fast float %1569, %1553
  %1581 = fmul fast float %1569, %1554
  %1582 = fadd fast float %1579, %1570
  %1583 = fadd fast float %1580, %1570
  %1584 = fadd fast float %1581, %1570
  %1585 = call float @dx.op.unary.f32(i32 7, float %1582)  ; Saturate(value)
  %1586 = call float @dx.op.unary.f32(i32 7, float %1583)  ; Saturate(value)
  %1587 = call float @dx.op.unary.f32(i32 7, float %1584)  ; Saturate(value)
  %1588 = call float @dx.op.unary.f32(i32 7, float %1549)  ; Saturate(value)
  %1589 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1590 = extractvalue %dx.types.CBufRet.i32 %1589, 3
  %1591 = and i32 %1590, 8
  %1592 = icmp ne i32 %1591, 0
  %1593 = call float @dx.op.binary.f32(i32 35, float %1576, float %1552)  ; FMax(a,b)
  %1594 = call float @dx.op.binary.f32(i32 35, float %1577, float %1552)  ; FMax(a,b)
  %1595 = call float @dx.op.binary.f32(i32 35, float %1578, float %1552)  ; FMax(a,b)
  %1596 = call float @dx.op.dot3.f32(i32 55, float %1576, float %1577, float %1578, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1597 = select i1 %229, float %1552, float %1576
  %1598 = select i1 %229, float %1596, float %1577
  %1599 = select i1 %229, float 1.000000e+00, float %1578
  %1600 = select i1 %1592, float %1593, float %1597
  %1601 = select i1 %1592, float %1594, float %1598
  %1602 = select i1 %1592, float %1595, float %1599
  %1603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.f32 %1603, 0
  %1605 = extractvalue %dx.types.CBufRet.f32 %1603, 1
  %1606 = extractvalue %dx.types.CBufRet.f32 %1603, 2
  %1607 = fadd fast float %1604, %138
  %1608 = fadd fast float %1605, %139
  %1609 = fadd fast float %1606, %140
  %1610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1611 = extractvalue %dx.types.CBufRet.f32 %1610, 0
  %1612 = extractvalue %dx.types.CBufRet.f32 %1610, 1
  %1613 = fsub fast float %1607, %1611
  %1614 = fsub fast float %1608, %1612
  %1615 = fmul fast float %1613, %1613
  %1616 = fmul fast float %1614, %1614
  %1617 = fadd fast float %1615, %1616
  %1618 = call float @dx.op.unary.f32(i32 24, float %1617)  ; Sqrt(value)
  %1619 = extractvalue %dx.types.CBufRet.f32 %1610, 2
  %1620 = fcmp fast olt float %1618, %1619
  br i1 %1620, label %1621, label %1688

; <label>:1621                                    ; preds = %1536
  %1622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.f32 %1622, 0
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 0
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 0
  %1628 = extractvalue %dx.types.CBufRet.f32 %1622, 1
  %1629 = extractvalue %dx.types.CBufRet.f32 %1624, 1
  %1630 = extractvalue %dx.types.CBufRet.f32 %1626, 1
  %1631 = extractvalue %dx.types.CBufRet.f32 %1622, 3
  %1632 = extractvalue %dx.types.CBufRet.f32 %1624, 3
  %1633 = extractvalue %dx.types.CBufRet.f32 %1626, 3
  %1634 = fadd fast float %1631, %1607
  %1635 = fadd fast float %1632, %1608
  %1636 = fadd fast float %1633, %1609
  %1637 = fmul fast float %1634, %1623
  %1638 = call float @dx.op.tertiary.f32(i32 46, float %1635, float %1625, float %1637)  ; FMad(a,b,c)
  %1639 = call float @dx.op.tertiary.f32(i32 46, float %1636, float %1627, float %1638)  ; FMad(a,b,c)
  %1640 = fmul fast float %1634, %1628
  %1641 = call float @dx.op.tertiary.f32(i32 46, float %1635, float %1629, float %1640)  ; FMad(a,b,c)
  %1642 = call float @dx.op.tertiary.f32(i32 46, float %1636, float %1630, float %1641)  ; FMad(a,b,c)
  %1643 = fsub fast float %1639, %1631
  %1644 = fsub fast float %1642, %1632
  %1645 = fsub fast float %1643, %1611
  %1646 = fadd fast float %1645, %1619
  %1647 = fsub fast float %1644, %1612
  %1648 = fadd fast float %1647, %1619
  %1649 = extractvalue %dx.types.CBufRet.f32 %1610, 3
  %1650 = fmul fast float %1646, %1649
  %1651 = fmul fast float %1648, %1649
  %1652 = call float @dx.op.unary.f32(i32 7, float %1650)  ; Saturate(value)
  %1653 = call float @dx.op.unary.f32(i32 7, float %1651)  ; Saturate(value)
  %1654 = fsub fast float 1.000000e+00, %1652
  %1655 = fsub fast float 1.000000e+00, %1653
  %1656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %58, float %1654, float %1655, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1657 = extractvalue %dx.types.ResRet.f32 %1656, 0
  %1658 = fcmp fast ugt float %1657, 0.000000e+00
  br i1 %1658, label %1659, label %1962

; <label>:1659                                    ; preds = %1621
  %1660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1661 = extractvalue %dx.types.CBufRet.f32 %1660, 2
  %1662 = fmul fast float %1661, %1657
  %1663 = extractvalue %dx.types.CBufRet.f32 %1660, 3
  %1664 = fadd fast float %1663, %1662
  %1665 = extractvalue %dx.types.CBufRet.f32 %1626, 2
  %1666 = fadd fast float %1664, %1633
  %1667 = fmul fast float %1639, %1627
  %1668 = call float @dx.op.tertiary.f32(i32 46, float %1642, float %1630, float %1667)  ; FMad(a,b,c)
  %1669 = call float @dx.op.tertiary.f32(i32 46, float %1666, float %1665, float %1668)  ; FMad(a,b,c)
  %1670 = fsub fast float %1669, %1633
  %1671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1672 = extractvalue %dx.types.CBufRet.f32 %1671, 2
  %1673 = fsub fast float %1670, %1672
  %1674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %58, float %1654, float %1655, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1675 = extractvalue %dx.types.ResRet.f32 %1674, 0
  %1676 = extractvalue %dx.types.ResRet.f32 %1674, 1
  %1677 = extractvalue %dx.types.ResRet.f32 %1674, 2
  %1678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %58, float %1654, float %1655, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1679 = extractvalue %dx.types.ResRet.f32 %1678, 0
  %1680 = extractvalue %dx.types.ResRet.f32 %1678, 1
  %1681 = extractvalue %dx.types.ResRet.f32 %1678, 2
  %1682 = fadd fast float %1679, %1675
  %1683 = fmul fast float %1682, 0x3F847AE140000000
  %1684 = fadd fast float %1680, %1676
  %1685 = fmul fast float %1684, 0x3F847AE140000000
  %1686 = fadd fast float %1681, %1677
  %1687 = fmul fast float %1686, 0x3F847AE140000000
  br label %1962

; <label>:1688                                    ; preds = %1536
  %1689 = and i32 %205, 1
  %1690 = icmp eq i32 %1689, 0
  br i1 %1690, label %1962, label %1691

; <label>:1691                                    ; preds = %1688
  %1692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1693 = extractvalue %dx.types.CBufRet.f32 %1692, 0
  %1694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1695 = extractvalue %dx.types.CBufRet.f32 %1694, 0
  %1696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.f32 %1696, 0
  %1698 = extractvalue %dx.types.CBufRet.f32 %1692, 1
  %1699 = extractvalue %dx.types.CBufRet.f32 %1694, 1
  %1700 = extractvalue %dx.types.CBufRet.f32 %1696, 1
  %1701 = extractvalue %dx.types.CBufRet.f32 %1692, 3
  %1702 = extractvalue %dx.types.CBufRet.f32 %1694, 3
  %1703 = extractvalue %dx.types.CBufRet.f32 %1696, 3
  %1704 = fadd fast float %1701, %1607
  %1705 = fadd fast float %1702, %1608
  %1706 = fadd fast float %1703, %1609
  %1707 = fmul fast float %1704, %1693
  %1708 = call float @dx.op.tertiary.f32(i32 46, float %1705, float %1695, float %1707)  ; FMad(a,b,c)
  %1709 = call float @dx.op.tertiary.f32(i32 46, float %1706, float %1697, float %1708)  ; FMad(a,b,c)
  %1710 = fmul fast float %1704, %1698
  %1711 = call float @dx.op.tertiary.f32(i32 46, float %1705, float %1699, float %1710)  ; FMad(a,b,c)
  %1712 = call float @dx.op.tertiary.f32(i32 46, float %1706, float %1700, float %1711)  ; FMad(a,b,c)
  %1713 = fsub fast float %1709, %1701
  %1714 = fsub fast float %1712, %1702
  %1715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1716 = extractvalue %dx.types.CBufRet.f32 %1715, 0
  %1717 = extractvalue %dx.types.CBufRet.f32 %1715, 1
  %1718 = extractvalue %dx.types.CBufRet.f32 %1715, 2
  %1719 = extractvalue %dx.types.CBufRet.f32 %1715, 3
  %1720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1721 = extractvalue %dx.types.CBufRet.f32 %1720, 3
  %1722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1723 = extractvalue %dx.types.CBufRet.i32 %1722, 0
  %1724 = extractvalue %dx.types.CBufRet.i32 %1722, 1
  %1725 = udiv i32 %1724, %1723
  %1726 = fsub fast float %1713, %1716
  %1727 = fsub fast float %1714, %1717
  %1728 = call float @dx.op.binary.f32(i32 35, float %1726, float 0.000000e+00)  ; FMax(a,b)
  %1729 = call float @dx.op.binary.f32(i32 35, float %1727, float 0.000000e+00)  ; FMax(a,b)
  %1730 = call float @dx.op.binary.f32(i32 36, float %1728, float %1718)  ; FMin(a,b)
  %1731 = call float @dx.op.binary.f32(i32 36, float %1729, float %1719)  ; FMin(a,b)
  %1732 = add i32 %1723, -1
  %1733 = add i32 %1725, -1
  %1734 = fmul fast float %1730, %1721
  %1735 = fmul fast float %1731, %1721
  %1736 = fptoui float %1734 to i32
  %1737 = fptoui float %1735 to i32
  %1738 = call i32 @dx.op.binary.i32(i32 40, i32 %1736, i32 %1732)  ; UMin(a,b)
  %1739 = call i32 @dx.op.binary.i32(i32 40, i32 %1737, i32 %1733)  ; UMin(a,b)
  %1740 = mul i32 %1739, %1723
  %1741 = add i32 %1740, %1738
  %1742 = shl i32 %1741, 2
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = icmp eq i32 %1744, -1
  br i1 %1745, label %1962, label %1746

; <label>:1746                                    ; preds = %1691
  %1747 = mul i32 %1744, 148
  %1748 = add i32 %1747, 4
  %1749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.f32 %1749, 0
  %1751 = add i32 %1747, 8
  %1752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1751, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.f32 %1752, 0
  %1754 = add i32 %1747, 36
  %1755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.f32 %1755, 0
  %1757 = add i32 %1747, 60
  %1758 = add i32 %1747, 92
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = add i32 %1747, 116
  %1762 = fsub fast float %1713, %1750
  %1763 = fsub fast float %1714, %1753
  %1764 = fmul fast float %1721, %1762
  %1765 = fmul fast float %1721, %1763
  %1766 = call float @dx.op.unary.f32(i32 7, float %1764)  ; Saturate(value)
  %1767 = call float @dx.op.unary.f32(i32 7, float %1765)  ; Saturate(value)
  %1768 = fsub fast float 1.000000e+00, %1767
  %1769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1770 = extractvalue %dx.types.CBufRet.f32 %1769, 2
  %1771 = call float @dx.op.unary.f32(i32 83, float %1766)  ; DerivCoarseX(value)
  %1772 = call float @dx.op.unary.f32(i32 83, float %1768)  ; DerivCoarseX(value)
  %1773 = call float @dx.op.unary.f32(i32 84, float %1766)  ; DerivCoarseY(value)
  %1774 = call float @dx.op.unary.f32(i32 84, float %1768)  ; DerivCoarseY(value)
  %1775 = fmul fast float %1771, %1770
  %1776 = fmul fast float %1772, %1770
  %1777 = fmul fast float %1773, %1770
  %1778 = fmul fast float %1774, %1770
  %1779 = call float @dx.op.dot2.f32(i32 54, float %1777, float %1778, float %1777, float %1778)  ; Dot2(ax,ay,bx,by)
  %1780 = call float @dx.op.dot2.f32(i32 54, float %1775, float %1776, float %1775, float %1776)  ; Dot2(ax,ay,bx,by)
  %1781 = call float @dx.op.binary.f32(i32 35, float %1780, float %1779)  ; FMax(a,b)
  %1782 = call float @dx.op.unary.f32(i32 23, float %1781)  ; Log(value)
  %1783 = fmul fast float %1782, 5.000000e-01
  %1784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1785 = extractvalue %dx.types.CBufRet.f32 %1784, 1
  %1786 = fadd fast float %1785, %1783
  %1787 = call float @dx.op.binary.f32(i32 35, float %1786, float 0.000000e+00)  ; FMax(a,b)
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 3
  %1790 = fadd fast float %1789, %1787
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 3
  %1793 = fadd fast float %1790, %1792
  %1794 = add i32 %1760, 0
  %1795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1794, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1796 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1795, i32 0)  ; GetDimensions(handle,mipLevel)
  %1797 = extractvalue %dx.types.Dimensions %1796, 0
  %1798 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1797)  ; FirstbitLo(value)
  %1799 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1800 = extractvalue %dx.types.CBufRet.i32 %1799, 1
  %1801 = sub nsw i32 %1800, %1798
  %1802 = sitofp i32 %1801 to float
  %1803 = fsub fast float %1793, %1802
  %1804 = call float @dx.op.binary.f32(i32 35, float %1803, float 0.000000e+00)  ; FMax(a,b)
  %1805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1795, %dx.types.Handle %56, float %1766, float %1768, float %1756, float undef, i32 0, i32 0, i32 undef, float %1804)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1806 = extractvalue %dx.types.ResRet.f32 %1805, 0
  %1807 = fcmp ule float %1806, 0x3FE0101020000000
  %1808 = extractvalue %dx.types.CBufRet.i32 %1799, 0
  %1809 = and i32 %1808, 128
  %1810 = icmp ne i32 %1809, 0
  %1811 = and i1 %1807, %1810
  br i1 %1811, label %1962, label %1812

; <label>:1812                                    ; preds = %1746
  %1813 = add i32 %1747, 20
  %1814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %1815 = extractvalue %dx.types.ResRet.f32 %1814, 0
  %1816 = add i32 %1747, 24
  %1817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1818 = extractvalue %dx.types.ResRet.f32 %1817, 0
  %1819 = add i32 %1747, 40
  %1820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1819, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.f32 %1820, 0
  %1822 = add i32 %1747, 96
  %1823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.i32 %1823, 0
  %1825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1826 = extractvalue %dx.types.CBufRet.f32 %1825, 2
  %1827 = fmul fast float %1826, %1766
  %1828 = fmul fast float %1826, %1768
  %1829 = extractvalue %dx.types.CBufRet.f32 %1825, 3
  %1830 = fadd fast float %1827, %1829
  %1831 = fadd fast float %1828, %1829
  %1832 = add i32 %1824, 0
  %1833 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1832, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1834 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1833, i32 0)  ; GetDimensions(handle,mipLevel)
  %1835 = extractvalue %dx.types.Dimensions %1834, 0
  %1836 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1835)  ; FirstbitLo(value)
  %1837 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1838 = extractvalue %dx.types.CBufRet.i32 %1837, 1
  %1839 = sub nsw i32 %1838, %1836
  %1840 = sitofp i32 %1839 to float
  %1841 = fsub fast float %1790, %1840
  %1842 = call float @dx.op.binary.f32(i32 35, float %1841, float 0.000000e+00)  ; FMax(a,b)
  %1843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1833, %dx.types.Handle %56, float %1830, float %1831, float %1821, float undef, i32 0, i32 0, i32 undef, float %1842)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1844 = extractvalue %dx.types.ResRet.f32 %1843, 0
  %1845 = fmul fast float %1844, %1815
  %1846 = fadd fast float %1845, %1818
  %1847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.f32 %1847, 0
  %1849 = extractvalue %dx.types.CBufRet.f32 %1847, 1
  %1850 = extractvalue %dx.types.CBufRet.f32 %1847, 2
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 3
  %1853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.f32 %1853, 3
  %1855 = extractvalue %dx.types.CBufRet.f32 %1847, 3
  %1856 = fadd fast float %1852, %1713
  %1857 = fadd fast float %1854, %1714
  %1858 = fadd fast float %1846, %1855
  %1859 = fmul fast float %1856, %1848
  %1860 = call float @dx.op.tertiary.f32(i32 46, float %1857, float %1849, float %1859)  ; FMad(a,b,c)
  %1861 = call float @dx.op.tertiary.f32(i32 46, float %1858, float %1850, float %1860)  ; FMad(a,b,c)
  %1862 = fsub fast float %1861, %1855
  %1863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.f32 %1863, 2
  %1865 = fsub fast float %1862, %1864
  %1866 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.i32 %1866, 0
  %1868 = call i32 @dx.op.binary.i32(i32 40, i32 %1744, i32 %1867)  ; UMin(a,b)
  %1869 = mul i32 %1868, 36
  %1870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1871 = extractvalue %dx.types.ResRet.i32 %1870, 0
  %1872 = add i32 %1869, 4
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 0
  %1875 = fmul fast float %1874, %1766
  %1876 = fmul fast float %1874, %1768
  %1877 = extractvalue %dx.types.CBufRet.f32 %1873, 1
  %1878 = fadd fast float %1875, %1877
  %1879 = fadd fast float %1876, %1877
  %1880 = icmp eq i32 %1871, 0
  br i1 %1880, label %1949, label %1881

; <label>:1881                                    ; preds = %1812
  br label %1882

; <label>:1882                                    ; preds = %1939, %1881
  %1883 = phi float [ %1940, %1939 ], [ 0.000000e+00, %1881 ]
  %1884 = phi float [ %1941, %1939 ], [ 0.000000e+00, %1881 ]
  %1885 = phi float [ %1942, %1939 ], [ 0.000000e+00, %1881 ]
  %1886 = phi float [ %1943, %1939 ], [ 0.000000e+00, %1881 ]
  %1887 = phi float [ %1944, %1939 ], [ 0.000000e+00, %1881 ]
  %1888 = phi float [ %1945, %1939 ], [ 0.000000e+00, %1881 ]
  %1889 = phi i32 [ %1946, %1939 ], [ 0, %1881 ]
  %1890 = shl i32 %1889, 2
  %1891 = add i32 %1757, %1890
  %1892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.f32 %1892, 0
  %1894 = add i32 %1761, %1890
  %1895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1894, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.i32 %1895, 0
  %1897 = add i32 %1896, 0
  %1898 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1897, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1899 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1898, i32 0)  ; GetDimensions(handle,mipLevel)
  %1900 = extractvalue %dx.types.Dimensions %1899, 0
  %1901 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1900)  ; FirstbitLo(value)
  %1902 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1903 = extractvalue %dx.types.CBufRet.i32 %1902, 1
  %1904 = sub nsw i32 %1903, %1901
  %1905 = sitofp i32 %1904 to float
  %1906 = fsub fast float %1790, %1905
  %1907 = call float @dx.op.binary.f32(i32 35, float %1906, float 0.000000e+00)  ; FMax(a,b)
  %1908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1898, %dx.types.Handle %56, float %1878, float %1879, float %1893, float undef, i32 0, i32 0, i32 undef, float %1907)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1909 = extractvalue %dx.types.ResRet.f32 %1908, 0
  %1910 = fcmp fast ogt float %1909, 0.000000e+00
  br i1 %1910, label %1911, label %1939

; <label>:1911                                    ; preds = %1882
  %1912 = add i32 %1872, %1890
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = and i32 %1914, 32767
  %1916 = mul nuw nsw i32 %1915, 928
  %1917 = add nuw nsw i32 %1916, 48
  %1918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.f32 %1918, 0
  %1920 = extractvalue %dx.types.ResRet.f32 %1918, 1
  %1921 = extractvalue %dx.types.ResRet.f32 %1918, 2
  %1922 = add nuw nsw i32 %1916, 60
  %1923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1924 = extractvalue %dx.types.ResRet.f32 %1923, 0
  %1925 = extractvalue %dx.types.ResRet.f32 %1923, 1
  %1926 = extractvalue %dx.types.ResRet.f32 %1923, 2
  %1927 = fmul fast float %1919, %1909
  %1928 = fmul fast float %1920, %1909
  %1929 = fmul fast float %1921, %1909
  %1930 = fadd fast float %1927, %1883
  %1931 = fadd fast float %1928, %1884
  %1932 = fadd fast float %1929, %1885
  %1933 = fmul fast float %1924, %1909
  %1934 = fmul fast float %1925, %1909
  %1935 = fmul fast float %1926, %1909
  %1936 = fadd fast float %1933, %1886
  %1937 = fadd fast float %1934, %1887
  %1938 = fadd fast float %1935, %1888
  br label %1939

; <label>:1939                                    ; preds = %1911, %1882
  %1940 = phi float [ %1930, %1911 ], [ %1883, %1882 ]
  %1941 = phi float [ %1931, %1911 ], [ %1884, %1882 ]
  %1942 = phi float [ %1932, %1911 ], [ %1885, %1882 ]
  %1943 = phi float [ %1936, %1911 ], [ %1886, %1882 ]
  %1944 = phi float [ %1937, %1911 ], [ %1887, %1882 ]
  %1945 = phi float [ %1938, %1911 ], [ %1888, %1882 ]
  %1946 = add nuw i32 %1889, 1
  %1947 = icmp eq i32 %1946, %1871
  br i1 %1947, label %1948, label %1882

; <label>:1948                                    ; preds = %1939
  br label %1949

; <label>:1949                                    ; preds = %1948, %1812
  %1950 = phi float [ 0.000000e+00, %1812 ], [ %1940, %1948 ]
  %1951 = phi float [ 0.000000e+00, %1812 ], [ %1941, %1948 ]
  %1952 = phi float [ 0.000000e+00, %1812 ], [ %1942, %1948 ]
  %1953 = phi float [ 0.000000e+00, %1812 ], [ %1943, %1948 ]
  %1954 = phi float [ 0.000000e+00, %1812 ], [ %1944, %1948 ]
  %1955 = phi float [ 0.000000e+00, %1812 ], [ %1945, %1948 ]
  %1956 = fadd fast float %1953, %1950
  %1957 = fmul fast float %1956, 0x3F847AE140000000
  %1958 = fadd fast float %1954, %1951
  %1959 = fmul fast float %1958, 0x3F847AE140000000
  %1960 = fadd fast float %1955, %1952
  %1961 = fmul fast float %1960, 0x3F847AE140000000
  br label %1962

; <label>:1962                                    ; preds = %1949, %1746, %1691, %1688, %1659, %1621
  %1963 = phi float [ %1673, %1659 ], [ -1.310720e+05, %1621 ], [ %1865, %1949 ], [ -1.310720e+05, %1691 ], [ -1.310720e+05, %1746 ], [ -1.310720e+05, %1688 ]
  %1964 = phi float [ %1683, %1659 ], [ 0.000000e+00, %1621 ], [ %1957, %1949 ], [ 0.000000e+00, %1691 ], [ 0.000000e+00, %1746 ], [ 0.000000e+00, %1688 ]
  %1965 = phi float [ %1685, %1659 ], [ 0.000000e+00, %1621 ], [ %1959, %1949 ], [ 0.000000e+00, %1691 ], [ 0.000000e+00, %1746 ], [ 0.000000e+00, %1688 ]
  %1966 = phi float [ %1687, %1659 ], [ 0.000000e+00, %1621 ], [ %1961, %1949 ], [ 0.000000e+00, %1691 ], [ 0.000000e+00, %1746 ], [ 0.000000e+00, %1688 ]
  %1967 = phi i1 [ true, %1659 ], [ false, %1621 ], [ true, %1949 ], [ false, %1691 ], [ false, %1746 ], [ false, %1688 ]
  %1968 = and i32 %205, 3
  %1969 = icmp eq i32 %1968, 1
  %1970 = select i1 %1969, float 1.000000e+00, float 0.000000e+00
  %1971 = fsub fast float %1963, %140
  %1972 = call float @dx.op.unary.f32(i32 7, float %1971)  ; Saturate(value)
  %1973 = select i1 %1967, float %1972, float 1.000000e+00
  %1974 = fmul fast float %1973, %1970
  %1975 = icmp eq i32 %1968, 3
  %1976 = select i1 %1975, float 1.000000e+00, float %1974
  %1977 = call float @dx.op.binary.f32(i32 35, float %1537, float %1976)  ; FMax(a,b)
  %1978 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  %1979 = fcmp fast une float %1978, 0.000000e+00
  %1980 = call float @dx.op.dot3.f32(i32 55, float %138, float %139, float %140, float %138, float %139, float %140)  ; Dot3(ax,ay,az,bx,by,bz)
  %1981 = call float @dx.op.unary.f32(i32 25, float %1980)  ; Rsqrt(value)
  br i1 %1979, label %1989, label %1982

; <label>:1982                                    ; preds = %1962
  %1983 = fmul fast float %1981, %138
  %1984 = fmul fast float %1981, %139
  %1985 = fmul fast float %1981, %140
  %1986 = fsub fast float -0.000000e+00, %1983
  %1987 = fsub fast float -0.000000e+00, %1984
  %1988 = fsub fast float -0.000000e+00, %1985
  br label %2157

; <label>:1989                                    ; preds = %1962
  %1990 = fmul fast float %138, %1981
  %1991 = fsub fast float -0.000000e+00, %1990
  %1992 = fmul fast float %139, %1981
  %1993 = fsub fast float -0.000000e+00, %1992
  %1994 = fmul fast float %140, %1981
  %1995 = fsub fast float -0.000000e+00, %1994
  %1996 = call float @dx.op.dot3.f32(i32 55, float %1991, float %1993, float %1995, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1997 = fmul fast float %1978, 2.500000e+00
  %1998 = call float @dx.op.unary.f32(i32 7, float %1997)  ; Saturate(value)
  %1999 = fmul fast float %1978, 0x4013FFFFE0000000
  %2000 = fadd fast float %1999, 0xBFFFFFFFE0000000
  %2001 = call float @dx.op.unary.f32(i32 7, float %2000)  ; Saturate(value)
  %2002 = fmul fast float %1978, 0x4004000020000000
  %2003 = fadd fast float %2002, 0xBFF8000040000000
  %2004 = call float @dx.op.unary.f32(i32 7, float %2003)  ; Saturate(value)
  %2005 = call float @dx.op.unary.f32(i32 7, float %1998)  ; Saturate(value)
  %2006 = fmul fast float %1567, 1.000000e+01
  %2007 = call float @dx.op.unary.f32(i32 7, float %2006)  ; Saturate(value)
  %2008 = fmul fast float %2007, 2.000000e+00
  %2009 = fsub fast float 3.000000e+00, %2008
  %2010 = fmul fast float %2007, %2007
  %2011 = fmul fast float %2010, %2009
  %2012 = fsub fast float 1.000000e+00, %2011
  %2013 = fsub fast float 0x3FE3333340000000, %1588
  %2014 = fmul fast float %2013, 0x400AAAAAA0000000
  %2015 = call float @dx.op.unary.f32(i32 7, float %2014)  ; Saturate(value)
  %2016 = fmul fast float %2012, %2015
  %2017 = fmul fast float %1600, 0x3FEA2B8620000000
  %2018 = fmul fast float %1601, 0x3FEA2B8620000000
  %2019 = fmul fast float %1602, 0x3FEA2B8620000000
  %2020 = fadd fast float %2017, 0x3FC81DFBA0000000
  %2021 = fmul fast float %2020, %1600
  %2022 = fadd fast float %2021, 0x3F910E6020000000
  %2023 = fadd fast float %2018, 0x3FC81DFBA0000000
  %2024 = fmul fast float %2023, %1601
  %2025 = fadd fast float %2024, 0x3F910E6020000000
  %2026 = fadd fast float %2019, 0x3FC81DFBA0000000
  %2027 = fmul fast float %2026, %1602
  %2028 = fadd fast float %2027, 0x3F910E6020000000
  %2029 = call float @dx.op.unary.f32(i32 7, float %2022)  ; Saturate(value)
  %2030 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  %2031 = call float @dx.op.unary.f32(i32 7, float %2028)  ; Saturate(value)
  %2032 = fsub fast float %2029, %1600
  %2033 = fsub fast float %2030, %1601
  %2034 = fsub fast float %2031, %1602
  %2035 = fmul fast float %2032, %2005
  %2036 = fmul fast float %2035, %2016
  %2037 = fmul fast float %2033, %2005
  %2038 = fmul fast float %2037, %2016
  %2039 = fmul fast float %2034, %2005
  %2040 = fmul fast float %2039, %2016
  %2041 = fadd fast float %2036, %1600
  %2042 = fadd fast float %2038, %1601
  %2043 = fadd fast float %2040, %1602
  %2044 = fmul fast float %1548, %1548
  %2045 = fmul fast float %2044, %2044
  %2046 = fadd fast float %2001, 1.000000e+00
  %2047 = fsub fast float %2046, %2016
  %2048 = call float @dx.op.unary.f32(i32 7, float %2047)  ; Saturate(value)
  %2049 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2050 = call float @dx.op.unary.f32(i32 7, float %2049)  ; Saturate(value)
  %2051 = fsub fast float 1.000000e+00, %2045
  %2052 = call float @dx.op.binary.f32(i32 36, float %2048, float %2051)  ; FMin(a,b)
  %2053 = call float @dx.op.unary.f32(i32 7, float %2004)  ; Saturate(value)
  %2054 = call float @dx.op.binary.f32(i32 35, float %2052, float %2053)  ; FMax(a,b)
  %2055 = fadd fast float %2050, 0xBFE4CCCCC0000000
  %2056 = fmul fast float %2055, 0x4006DB6DA0000000
  %2057 = call float @dx.op.unary.f32(i32 7, float %2056)  ; Saturate(value)
  %2058 = fmul fast float %2057, 2.000000e+00
  %2059 = fsub fast float 3.000000e+00, %2058
  %2060 = bitcast float %1585 to i32
  %2061 = ashr i32 %2060, 1
  %2062 = add nsw i32 %2061, 532487669
  %2063 = bitcast i32 %2062 to float
  %2064 = fsub fast float 1.000000e+00, %2063
  %2065 = bitcast float %2064 to i32
  %2066 = sub nsw i32 2129859010, %2065
  %2067 = bitcast i32 %2066 to float
  %2068 = fmul fast float %2067, 2.000000e+00
  %2069 = bitcast float %1586 to i32
  %2070 = ashr i32 %2069, 1
  %2071 = add nsw i32 %2070, 532487669
  %2072 = bitcast i32 %2071 to float
  %2073 = fsub fast float 1.000000e+00, %2072
  %2074 = bitcast float %2073 to i32
  %2075 = sub nsw i32 2129859010, %2074
  %2076 = bitcast i32 %2075 to float
  %2077 = fmul fast float %2076, 2.000000e+00
  %2078 = bitcast float %1587 to i32
  %2079 = ashr i32 %2078, 1
  %2080 = add nsw i32 %2079, 532487669
  %2081 = bitcast i32 %2080 to float
  %2082 = fsub fast float 1.000000e+00, %2081
  %2083 = bitcast float %2082 to i32
  %2084 = sub nsw i32 2129859010, %2083
  %2085 = bitcast i32 %2084 to float
  %2086 = fmul fast float %2085, 2.000000e+00
  %2087 = fsub fast float 0x4002A9FBE0000000, %2068
  %2088 = fadd fast float %2068, 0x3FD54FDF00000000
  %2089 = bitcast float %2088 to i32
  %2090 = sub nsw i32 2129859010, %2089
  %2091 = bitcast i32 %2090 to float
  %2092 = fmul fast float %2091, %2087
  %2093 = fmul fast float %2092, %2092
  %2094 = fsub fast float 0x4002A9FBE0000000, %2077
  %2095 = fadd fast float %2077, 0x3FD54FDF00000000
  %2096 = bitcast float %2095 to i32
  %2097 = sub nsw i32 2129859010, %2096
  %2098 = bitcast i32 %2097 to float
  %2099 = fmul fast float %2098, %2094
  %2100 = fmul fast float %2099, %2099
  %2101 = fsub fast float 0x4002A9FBE0000000, %2086
  %2102 = fadd fast float %2086, 0x3FD54FDF00000000
  %2103 = bitcast float %2102 to i32
  %2104 = sub nsw i32 2129859010, %2103
  %2105 = bitcast i32 %2104 to float
  %2106 = fmul fast float %2105, %2101
  %2107 = fmul fast float %2106, %2106
  %2108 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2093)  ; FMax(a,b)
  %2109 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2100)  ; FMax(a,b)
  %2110 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2107)  ; FMax(a,b)
  %2111 = fsub fast float 1.000000e+00, %1996
  %2112 = fadd fast float %2111, %2012
  %2113 = call float @dx.op.unary.f32(i32 7, float %2112)  ; Saturate(value)
  %2114 = fsub fast float 1.000000e+00, %1976
  %2115 = fmul fast float %2054, %2114
  %2116 = fmul fast float %2057, %2057
  %2117 = fmul fast float %2116, %2115
  %2118 = fmul fast float %2117, %2059
  %2119 = fmul fast float %2114, 0xBFE99999A0000000
  %2120 = fmul fast float %2119, %2005
  %2121 = fmul fast float %2120, %2016
  %2122 = fadd fast float %2121, 1.000000e+00
  %2123 = fadd fast float %1588, -1.000000e+00
  %2124 = fmul fast float %2122, %2123
  %2125 = fadd fast float %2124, 1.000000e+00
  %2126 = fsub fast float %2108, %1585
  %2127 = fsub fast float %2109, %1586
  %2128 = fsub fast float %2110, %1587
  %2129 = fmul fast float %2118, %2126
  %2130 = fmul fast float %2118, %2127
  %2131 = fmul fast float %2118, %2128
  %2132 = fadd fast float %2129, %1585
  %2133 = fadd fast float %2130, %1586
  %2134 = fadd fast float %2131, %1587
  %2135 = fsub fast float %70, %1564
  %2136 = fsub fast float %71, %1565
  %2137 = fsub fast float %72, %1566
  %2138 = fmul fast float %2118, %2135
  %2139 = fmul fast float %2118, %2136
  %2140 = fmul fast float %2118, %2137
  %2141 = fadd fast float %2138, %1564
  %2142 = fadd fast float %2139, %1565
  %2143 = fadd fast float %2140, %1566
  %2144 = fmul fast float %2118, %2113
  %2145 = call float @dx.op.unary.f32(i32 7, float %2125)  ; Saturate(value)
  %2146 = fsub fast float 1.000000e+00, %2145
  %2147 = fmul fast float %2144, %2146
  %2148 = fadd fast float %2147, %2145
  %2149 = fsub fast float 1.000000e+00, %1548
  %2150 = fmul fast float %2118, %2149
  %2151 = fadd fast float %2150, %1548
  %2152 = call float @dx.op.dot3.f32(i32 55, float %2141, float %2142, float %2143, float %2141, float %2142, float %2143)  ; Dot3(ax,ay,az,bx,by,bz)
  %2153 = call float @dx.op.unary.f32(i32 25, float %2152)  ; Rsqrt(value)
  %2154 = fmul fast float %2141, %2153
  %2155 = fmul fast float %2142, %2153
  %2156 = fmul fast float %2143, %2153
  br label %2157

; <label>:2157                                    ; preds = %1989, %1982
  %2158 = phi float [ %1988, %1982 ], [ %1995, %1989 ]
  %2159 = phi float [ %1987, %1982 ], [ %1993, %1989 ]
  %2160 = phi float [ %1986, %1982 ], [ %1991, %1989 ]
  %2161 = phi float [ %1985, %1982 ], [ %1994, %1989 ]
  %2162 = phi float [ %1984, %1982 ], [ %1992, %1989 ]
  %2163 = phi float [ %1983, %1982 ], [ %1990, %1989 ]
  %2164 = phi float [ %1585, %1982 ], [ %2132, %1989 ]
  %2165 = phi float [ %1586, %1982 ], [ %2133, %1989 ]
  %2166 = phi float [ %1587, %1982 ], [ %2134, %1989 ]
  %2167 = phi float [ %1600, %1982 ], [ %2041, %1989 ]
  %2168 = phi float [ %1601, %1982 ], [ %2042, %1989 ]
  %2169 = phi float [ %1602, %1982 ], [ %2043, %1989 ]
  %2170 = phi float [ %1564, %1982 ], [ %2154, %1989 ]
  %2171 = phi float [ %1565, %1982 ], [ %2155, %1989 ]
  %2172 = phi float [ %1566, %1982 ], [ %2156, %1989 ]
  %2173 = phi float [ %1588, %1982 ], [ %2148, %1989 ]
  %2174 = phi float [ %1548, %1982 ], [ %2151, %1989 ]
  %2175 = fsub fast float -0.000000e+00, %140
  %2176 = select i1 %229, float 0.000000e+00, float %2166
  %2177 = call float @dx.op.dot3.f32(i32 55, float %2170, float %2171, float %2172, float %2160, float %2159, float %2158)  ; Dot3(ax,ay,az,bx,by,bz)
  %2178 = call float @dx.op.unary.f32(i32 7, float %2177)  ; Saturate(value)
  %2179 = call float @dx.op.dot3.f32(i32 55, float %2163, float %2162, float %2161, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %2180 = fmul fast float %2179, 2.000000e+00
  %2181 = fmul fast float %2180, %2170
  %2182 = fmul fast float %2180, %2171
  %2183 = fmul fast float %2180, %2172
  %2184 = fsub fast float %2163, %2181
  %2185 = fsub fast float %2162, %2182
  %2186 = fsub fast float %2161, %2183
  %2187 = call float @dx.op.binary.f32(i32 36, float %2174, float 1.000000e+00)  ; FMin(a,b)
  %2188 = fsub fast float 1.000000e+00, %2174
  %2189 = bitcast float %2188 to i32
  %2190 = sub nsw i32 2129859010, %2189
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 0
  %2193 = extractvalue %dx.types.CBufRet.f32 %2191, 1
  %2194 = fadd fast float %2192, %138
  %2195 = fadd fast float %2193, %139
  %2196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2197 = extractvalue %dx.types.CBufRet.i32 %2196, 0
  %2198 = icmp eq i32 %2197, 1
  br i1 %2198, label %2199, label %2234

; <label>:2199                                    ; preds = %2157
  %2200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2201 = extractvalue %dx.types.CBufRet.f32 %2200, 0
  %2202 = extractvalue %dx.types.CBufRet.f32 %2200, 1
  %2203 = fsub fast float %2194, %2201
  %2204 = fsub fast float %2195, %2202
  %2205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2206 = extractvalue %dx.types.CBufRet.f32 %2205, 0
  %2207 = extractvalue %dx.types.CBufRet.f32 %2205, 1
  %2208 = fmul fast float %2203, %2206
  %2209 = fmul fast float %2204, %2207
  %2210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %2208, float %2209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2211 = extractvalue %dx.types.ResRet.f32 %2210, 0
  %2212 = fcmp fast ogt float %2211, 0.000000e+00
  %2213 = extractvalue %dx.types.CBufRet.i32 %2196, 3
  %2214 = icmp ne i32 %2213, 0
  %2215 = and i1 %2212, %2214
  br i1 %2215, label %2216, label %2234, !dx.controlflow.hints !99

; <label>:2216                                    ; preds = %2199
  %2217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2218 = extractvalue %dx.types.CBufRet.f32 %2217, 0
  %2219 = extractvalue %dx.types.CBufRet.f32 %2217, 1
  %2220 = fsub fast float %2194, %2218
  %2221 = fsub fast float %2195, %2219
  %2222 = fmul fast float %2220, %2220
  %2223 = fmul fast float %2221, %2221
  %2224 = fadd fast float %2222, %2223
  %2225 = uitofp i32 %2213 to float
  %2226 = fmul fast float %2225, %2225
  %2227 = fcmp fast ogt float %2224, %2226
  br i1 %2227, label %2234, label %2228

; <label>:2228                                    ; preds = %2216
  %2229 = call float @dx.op.unary.f32(i32 24, float %2224)  ; Sqrt(value)
  %2230 = fsub fast float %2225, %2229
  %2231 = fmul fast float %2230, 0x3F75555560000000
  %2232 = call float @dx.op.unary.f32(i32 7, float %2231)  ; Saturate(value)
  %2233 = call float @dx.op.binary.f32(i32 36, float %2232, float %2211)  ; FMin(a,b)
  br label %2234

; <label>:2234                                    ; preds = %2228, %2216, %2199, %2157
  %2235 = phi float [ 1.000000e+00, %2157 ], [ %2233, %2228 ], [ %2211, %2199 ], [ 0.000000e+00, %2216 ]
  %2236 = fcmp fast ogt float %2235, 0.000000e+00
  br i1 %2236, label %2237, label %2335, !dx.controlflow.hints !100

; <label>:2237                                    ; preds = %2234
  %2238 = fadd fast float %169, 5.000000e-01
  %2239 = call float @dx.op.unary.f32(i32 27, float %2238)  ; Round_ni(value)
  %2240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %58, float %167, float %168, float %2239, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2241 = extractvalue %dx.types.ResRet.f32 %2240, 0
  %2242 = extractvalue %dx.types.ResRet.f32 %2240, 1
  %2243 = extractvalue %dx.types.ResRet.f32 %2240, 2
  %2244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2245 = extractvalue %dx.types.CBufRet.f32 %2244, 3
  %2246 = fmul fast float %2245, %2241
  %2247 = fmul fast float %2245, %2242
  %2248 = fmul fast float %2245, %2243
  %2249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %58, float %167, float %168, float %2239, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2250 = extractvalue %dx.types.ResRet.f32 %2249, 0
  %2251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %58, float %167, float %168, float %2239, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2252 = extractvalue %dx.types.ResRet.f32 %2251, 0
  %2253 = extractvalue %dx.types.ResRet.f32 %2251, 1
  %2254 = fmul fast float %2252, 2.000000e+00
  %2255 = fmul fast float %2253, 2.000000e+00
  %2256 = fadd fast float %2254, -1.000000e+00
  %2257 = fadd fast float %2255, -1.000000e+00
  %2258 = fadd fast float %2256, %2257
  %2259 = fmul fast float %2258, 5.000000e-01
  %2260 = fsub fast float %2256, %2257
  %2261 = fmul fast float %2260, 5.000000e-01
  %2262 = call float @dx.op.unary.f32(i32 6, float %2259)  ; FAbs(value)
  %2263 = fsub fast float 1.000000e+00, %2262
  %2264 = call float @dx.op.unary.f32(i32 6, float %2261)  ; FAbs(value)
  %2265 = fsub fast float %2263, %2264
  %2266 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2265)  ; FMax(a,b)
  %2267 = call float @dx.op.dot3.f32(i32 55, float %2259, float %2261, float %2266, float %2259, float %2261, float %2266)  ; Dot3(ax,ay,az,bx,by,bz)
  %2268 = bitcast float %2267 to i32
  %2269 = ashr i32 %2268, 1
  %2270 = sub nsw i32 1597250115, %2269
  %2271 = bitcast i32 %2270 to float
  %2272 = fmul fast float %2271, %2259
  %2273 = fmul fast float %2271, %2261
  %2274 = fmul fast float %2271, %2266
  %2275 = fsub fast float 1.000000e+00, %2250
  %2276 = fdiv fast float %2275, %2274
  %2277 = fmul fast float %2274, %70
  %2278 = fmul fast float %2274, %71
  %2279 = fmul fast float %2274, %72
  %2280 = fmul fast float %2272, %66
  %2281 = fmul fast float %2272, %67
  %2282 = fmul fast float %2272, %68
  %2283 = fadd fast float %2277, %2280
  %2284 = fadd fast float %2278, %2281
  %2285 = fadd fast float %2279, %2282
  %2286 = fmul fast float %2273, %102
  %2287 = fmul fast float %2273, %103
  %2288 = fmul fast float %2273, %104
  %2289 = fadd fast float %2283, %2286
  %2290 = fadd fast float %2284, %2287
  %2291 = fadd fast float %2285, %2288
  %2292 = call float @dx.op.dot3.f32(i32 55, float %2289, float %2290, float %2291, float %2289, float %2290, float %2291)  ; Dot3(ax,ay,az,bx,by,bz)
  %2293 = call float @dx.op.unary.f32(i32 25, float %2292)  ; Rsqrt(value)
  %2294 = fmul fast float %2289, %2293
  %2295 = fmul fast float %2290, %2293
  %2296 = fmul fast float %2291, %2293
  %2297 = call float @dx.op.dot3.f32(i32 55, float %2170, float %2171, float %2172, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %2298 = call float @dx.op.unary.f32(i32 7, float %2297)  ; Saturate(value)
  %2299 = fmul fast float %2298, 5.000000e-01
  %2300 = fadd fast float %2299, 5.000000e-01
  %2301 = fmul fast float %2300, %2250
  %2302 = call float @dx.op.dot3.f32(i32 55, float %2170, float %2171, float %2172, float %2294, float %2295, float %2296)  ; Dot3(ax,ay,az,bx,by,bz)
  %2303 = call float @dx.op.unary.f32(i32 7, float %2302)  ; Saturate(value)
  %2304 = fmul fast float %2303, %2276
  %2305 = fadd fast float %2301, %2304
  %2306 = fsub fast float 5.000000e-01, %2299
  %2307 = fmul fast float %2306, %2167
  %2308 = fmul fast float %2306, %2168
  %2309 = fmul fast float %2306, %2169
  %2310 = fadd fast float %2305, %2307
  %2311 = fmul fast float %2310, %2246
  %2312 = fadd fast float %2305, %2308
  %2313 = fmul fast float %2312, %2247
  %2314 = fadd fast float %2305, %2309
  %2315 = fmul fast float %2314, %2248
  %2316 = call float @dx.op.dot3.f32(i32 55, float %2184, float %2185, float %2186, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %2317 = call float @dx.op.unary.f32(i32 7, float %2316)  ; Saturate(value)
  %2318 = fmul fast float %2317, 5.000000e-01
  %2319 = fadd fast float %2318, 5.000000e-01
  %2320 = fmul fast float %2319, %2250
  %2321 = call float @dx.op.dot3.f32(i32 55, float %2184, float %2185, float %2186, float %2294, float %2295, float %2296)  ; Dot3(ax,ay,az,bx,by,bz)
  %2322 = call float @dx.op.unary.f32(i32 7, float %2321)  ; Saturate(value)
  %2323 = fmul fast float %2322, %2276
  %2324 = fadd fast float %2320, %2323
  %2325 = fsub fast float 5.000000e-01, %2318
  %2326 = fmul fast float %2325, %2167
  %2327 = fmul fast float %2325, %2168
  %2328 = fmul fast float %2325, %2169
  %2329 = fadd fast float %2324, %2326
  %2330 = fmul fast float %2329, %2246
  %2331 = fadd fast float %2324, %2327
  %2332 = fmul fast float %2331, %2247
  %2333 = fadd fast float %2324, %2328
  %2334 = fmul fast float %2333, %2248
  br label %2335

; <label>:2335                                    ; preds = %2237, %2234
  %2336 = phi float [ %2330, %2237 ], [ 0.000000e+00, %2234 ]
  %2337 = phi float [ %2332, %2237 ], [ 0.000000e+00, %2234 ]
  %2338 = phi float [ %2334, %2237 ], [ 0.000000e+00, %2234 ]
  %2339 = phi float [ %2311, %2237 ], [ 0.000000e+00, %2234 ]
  %2340 = phi float [ %2313, %2237 ], [ 0.000000e+00, %2234 ]
  %2341 = phi float [ %2315, %2237 ], [ 0.000000e+00, %2234 ]
  %2342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2343 = extractvalue %dx.types.CBufRet.f32 %2342, 0
  %2344 = fcmp fast ogt float %2343, 0.000000e+00
  %2345 = and i1 %2236, %2344
  br i1 %2345, label %2346, label %2550, !dx.controlflow.hints !101

; <label>:2346                                    ; preds = %2335
  %2347 = extractvalue %dx.types.CBufRet.f32 %2191, 2
  %2348 = fadd fast float %2347, %140
  %2349 = fmul fast float %2170, 3.200000e+01
  %2350 = fmul fast float %2171, 3.200000e+01
  %2351 = fadd fast float %2194, %2349
  %2352 = fadd fast float %2195, %2350
  %2353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2354 = extractvalue %dx.types.CBufRet.f32 %2353, 0
  %2355 = extractvalue %dx.types.CBufRet.f32 %2353, 1
  %2356 = fsub fast float %2351, %2354
  %2357 = fsub fast float %2352, %2355
  %2358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2359 = extractvalue %dx.types.CBufRet.f32 %2358, 0
  %2360 = extractvalue %dx.types.CBufRet.f32 %2358, 1
  %2361 = fmul fast float %2356, %2359
  %2362 = fmul fast float %2357, %2360
  %2363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2364 = extractvalue %dx.types.CBufRet.f32 %2363, 0
  %2365 = extractvalue %dx.types.CBufRet.f32 %2363, 1
  %2366 = fsub fast float %2194, %2364
  %2367 = fsub fast float %2195, %2365
  %2368 = fmul fast float %2366, %2366
  %2369 = fmul fast float %2367, %2367
  %2370 = fadd fast float %2368, %2369
  %2371 = call float @dx.op.unary.f32(i32 24, float %2370)  ; Sqrt(value)
  %2372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2373 = extractvalue %dx.types.CBufRet.f32 %2372, 0
  %2374 = extractvalue %dx.types.CBufRet.f32 %2372, 1
  %2375 = fsub fast float %2371, %2373
  %2376 = fdiv fast float %2375, %2374
  %2377 = call float @dx.op.unary.f32(i32 7, float %2376)  ; Saturate(value)
  %2378 = fmul fast float %2377, 2.000000e+00
  %2379 = fsub fast float 3.000000e+00, %2378
  %2380 = fmul fast float %2377, %2377
  %2381 = fmul fast float %2380, %2379
  %2382 = fcmp fast oge float %2361, 0.000000e+00
  %2383 = fcmp fast ole float %2361, 1.000000e+00
  %2384 = and i1 %2383, %2382
  %2385 = fcmp fast oge float %2362, 0.000000e+00
  %2386 = and i1 %2385, %2384
  %2387 = fcmp fast ole float %2362, 1.000000e+00
  %2388 = and i1 %2387, %2386
  %2389 = fcmp fast ogt float %2381, 0.000000e+00
  %2390 = and i1 %2389, %2388
  br i1 %2390, label %2391, label %2514, !dx.controlflow.hints !102

; <label>:2391                                    ; preds = %2346
  %2392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2393 = extractvalue %dx.types.CBufRet.f32 %2392, 2
  %2394 = extractvalue %dx.types.CBufRet.f32 %2392, 3
  %2395 = fmul fast float %2393, %2361
  %2396 = fmul fast float %2394, %2362
  %2397 = call float @dx.op.unary.f32(i32 27, float %2395)  ; Round_ni(value)
  %2398 = call float @dx.op.unary.f32(i32 27, float %2396)  ; Round_ni(value)
  %2399 = fptosi float %2397 to i32
  %2400 = fptosi float %2398 to i32
  %2401 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %2399, i32 %2400, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2402 = extractvalue %dx.types.ResRet.i32 %2401, 0
  %2403 = lshr i32 %2402, 16
  %2404 = icmp eq i32 %2403, 65535
  br i1 %2404, label %2514, label %2405

; <label>:2405                                    ; preds = %2391
  %2406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2407 = extractvalue %dx.types.CBufRet.f32 %2406, 0
  %2408 = fmul fast float %2407, %2361
  %2409 = extractvalue %dx.types.CBufRet.f32 %2406, 1
  %2410 = fadd fast float %2408, %2409
  %2411 = extractvalue %dx.types.CBufRet.f32 %2406, 2
  %2412 = fmul fast float %2411, %2362
  %2413 = extractvalue %dx.types.CBufRet.f32 %2406, 3
  %2414 = fadd fast float %2412, %2413
  %2415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2410, float %2414, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2416 = extractvalue %dx.types.ResRet.f32 %2415, 0
  %2417 = extractvalue %dx.types.ResRet.f32 %2415, 1
  %2418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2419 = extractvalue %dx.types.CBufRet.f32 %2418, 1
  %2420 = extractvalue %dx.types.CBufRet.f32 %2418, 0
  %2421 = fsub fast float %2419, %2420
  %2422 = fmul fast float %2421, %2416
  %2423 = fadd fast float %2422, %2420
  %2424 = extractvalue %dx.types.CBufRet.f32 %2418, 3
  %2425 = extractvalue %dx.types.CBufRet.f32 %2418, 2
  %2426 = fsub fast float %2424, %2425
  %2427 = fmul fast float %2426, %2417
  %2428 = fadd fast float %2427, %2425
  %2429 = fsub fast float %2348, %2423
  %2430 = fsub fast float %2428, %2423
  %2431 = fdiv fast float %2429, %2430
  %2432 = call float @dx.op.unary.f32(i32 7, float %2431)  ; Saturate(value)
  %2433 = extractvalue %dx.types.CBufRet.f32 %2342, 1
  %2434 = extractvalue %dx.types.CBufRet.f32 %2392, 0
  %2435 = extractvalue %dx.types.CBufRet.f32 %2392, 1
  %2436 = fmul fast float %2434, %2361
  %2437 = fmul fast float %2435, %2362
  %2438 = fmul fast float %2436, 1.250000e-01
  %2439 = fmul fast float %2437, 1.250000e-01
  %2440 = call float @dx.op.unary.f32(i32 27, float %2438)  ; Round_ni(value)
  %2441 = call float @dx.op.unary.f32(i32 27, float %2439)  ; Round_ni(value)
  %2442 = fmul fast float %2440, 8.000000e+00
  %2443 = fmul fast float %2441, 8.000000e+00
  %2444 = fsub fast float %2436, %2442
  %2445 = fsub fast float %2437, %2443
  %2446 = fadd fast float %2444, 5.000000e-01
  %2447 = fadd fast float %2445, 5.000000e-01
  %2448 = and i32 %2403, 255
  %2449 = lshr i32 %2402, 24
  %2450 = mul nuw nsw i32 %2448, 9
  %2451 = uitofp i32 %2450 to float
  %2452 = mul nuw nsw i32 %2449, 9
  %2453 = uitofp i32 %2452 to float
  %2454 = fadd fast float %2446, %2451
  %2455 = fadd fast float %2447, %2453
  %2456 = fdiv fast float %2454, %2343
  %2457 = fdiv fast float %2455, %2433
  %2458 = fmul fast float %2432, 4.375000e-01
  %2459 = fadd fast float %2458, 3.125000e-02
  %2460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2456, float %2457, float %2459, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2461 = extractvalue %dx.types.ResRet.f32 %2460, 0
  %2462 = extractvalue %dx.types.ResRet.f32 %2460, 1
  %2463 = extractvalue %dx.types.ResRet.f32 %2460, 2
  %2464 = fadd fast float %2458, 5.312500e-01
  %2465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2456, float %2457, float %2464, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2466 = extractvalue %dx.types.ResRet.f32 %2465, 0
  %2467 = extractvalue %dx.types.ResRet.f32 %2465, 1
  %2468 = extractvalue %dx.types.ResRet.f32 %2465, 2
  %2469 = fmul fast float %2466, 2.000000e+00
  %2470 = fmul fast float %2467, 2.000000e+00
  %2471 = fmul fast float %2468, 2.000000e+00
  %2472 = fadd fast float %2469, -1.000000e+00
  %2473 = fadd fast float %2470, -1.000000e+00
  %2474 = fadd fast float %2471, -1.000000e+00
  %2475 = fmul fast float %2472, %2472
  %2476 = fmul fast float %2473, %2473
  %2477 = fadd fast float %2475, %2476
  %2478 = fmul fast float %2474, %2474
  %2479 = fadd fast float %2477, %2478
  %2480 = call float @dx.op.unary.f32(i32 24, float %2479)  ; Sqrt(value)
  %2481 = fcmp fast ogt float %2480, 0.000000e+00
  br i1 %2481, label %2482, label %2486

; <label>:2482                                    ; preds = %2405
  %2483 = fdiv fast float %2472, %2480
  %2484 = fdiv fast float %2473, %2480
  %2485 = fdiv fast float %2474, %2480
  br label %2486

; <label>:2486                                    ; preds = %2482, %2405
  %2487 = phi float [ %2483, %2482 ], [ 0.000000e+00, %2405 ]
  %2488 = phi float [ %2484, %2482 ], [ 0.000000e+00, %2405 ]
  %2489 = phi float [ %2485, %2482 ], [ 0.000000e+00, %2405 ]
  %2490 = call float @dx.op.dot3.f32(i32 55, float %2487, float %2488, float %2489, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %2491 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2490)  ; FMax(a,b)
  %2492 = fmul fast float %2491, 0x400C5BF8A0000000
  %2493 = fmul fast float %2461, %2381
  %2494 = fmul fast float %2493, %2492
  %2495 = fmul fast float %2462, %2381
  %2496 = fmul fast float %2495, %2492
  %2497 = fmul fast float %2463, %2381
  %2498 = fmul fast float %2497, %2492
  %2499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2500 = extractvalue %dx.types.CBufRet.f32 %2499, 3
  %2501 = fmul fast float %2494, %2500
  %2502 = fmul fast float %2496, %2500
  %2503 = fmul fast float %2498, %2500
  %2504 = fcmp fast ogt float %2348, %2428
  br i1 %2504, label %2505, label %2514

; <label>:2505                                    ; preds = %2486
  %2506 = fmul fast float %2430, 0x3FC24924A0000000
  %2507 = fsub fast float %2348, %2428
  %2508 = fdiv fast float %2507, %2506
  %2509 = call float @dx.op.unary.f32(i32 7, float %2508)  ; Saturate(value)
  %2510 = fsub fast float 1.000000e+00, %2509
  %2511 = fmul fast float %2510, %2501
  %2512 = fmul fast float %2510, %2502
  %2513 = fmul fast float %2510, %2503
  br label %2514

; <label>:2514                                    ; preds = %2505, %2486, %2391, %2346
  %2515 = phi float [ %2513, %2505 ], [ %2503, %2486 ], [ 0.000000e+00, %2391 ], [ 0.000000e+00, %2346 ]
  %2516 = phi float [ %2512, %2505 ], [ %2502, %2486 ], [ 0.000000e+00, %2391 ], [ 0.000000e+00, %2346 ]
  %2517 = phi float [ %2511, %2505 ], [ %2501, %2486 ], [ 0.000000e+00, %2391 ], [ 0.000000e+00, %2346 ]
  %2518 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2517)  ; FMax(a,b)
  %2519 = fmul fast float %2518, 0x3FD20DD760000000
  %2520 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2184, float %2185, float %2186)  ; Dot3(ax,ay,az,bx,by,bz)
  %2521 = fmul fast float %2520, 0x3FDF454380000000
  %2522 = fmul fast float %2520, %2520
  %2523 = fmul fast float %2522, 0x3FEE471020000000
  %2524 = fadd fast float %2523, 0xBFD42F6020000000
  %2525 = call float @dx.op.dot3.f32(i32 55, float %2518, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2521, float %2524)  ; Dot3(ax,ay,az,bx,by,bz)
  %2526 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2516)  ; FMax(a,b)
  %2527 = fmul fast float %2526, 0x3FD20DD760000000
  %2528 = call float @dx.op.dot3.f32(i32 55, float %2526, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2521, float %2524)  ; Dot3(ax,ay,az,bx,by,bz)
  %2529 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2515)  ; FMax(a,b)
  %2530 = fmul fast float %2529, 0x3FD20DD760000000
  %2531 = call float @dx.op.dot3.f32(i32 55, float %2529, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2521, float %2524)  ; Dot3(ax,ay,az,bx,by,bz)
  %2532 = call float @dx.op.binary.f32(i32 35, float %2519, float 0.000000e+00)  ; FMax(a,b)
  %2533 = call float @dx.op.binary.f32(i32 35, float %2527, float 0.000000e+00)  ; FMax(a,b)
  %2534 = call float @dx.op.binary.f32(i32 35, float %2530, float 0.000000e+00)  ; FMax(a,b)
  %2535 = call float @dx.op.binary.f32(i32 35, float %2525, float 0.000000e+00)  ; FMax(a,b)
  %2536 = call float @dx.op.binary.f32(i32 35, float %2528, float 0.000000e+00)  ; FMax(a,b)
  %2537 = call float @dx.op.binary.f32(i32 35, float %2531, float 0.000000e+00)  ; FMax(a,b)
  %2538 = fmul fast float %2532, %2235
  %2539 = fmul fast float %2533, %2235
  %2540 = fmul fast float %2534, %2235
  %2541 = fadd fast float %2538, %2339
  %2542 = fadd fast float %2539, %2340
  %2543 = fadd fast float %2540, %2341
  %2544 = fmul fast float %2535, %2235
  %2545 = fmul fast float %2536, %2235
  %2546 = fmul fast float %2537, %2235
  %2547 = fadd fast float %2544, %2336
  %2548 = fadd fast float %2545, %2337
  %2549 = fadd fast float %2546, %2338
  br label %2550

; <label>:2550                                    ; preds = %2514, %2335
  %2551 = phi float [ %2547, %2514 ], [ %2336, %2335 ]
  %2552 = phi float [ %2548, %2514 ], [ %2337, %2335 ]
  %2553 = phi float [ %2549, %2514 ], [ %2338, %2335 ]
  %2554 = phi float [ %2541, %2514 ], [ %2339, %2335 ]
  %2555 = phi float [ %2542, %2514 ], [ %2340, %2335 ]
  %2556 = phi float [ %2543, %2514 ], [ %2341, %2335 ]
  %2557 = fcmp fast olt float %2235, 1.000000e+00
  br i1 %2557, label %2558, label %3376, !dx.controlflow.hints !103

; <label>:2558                                    ; preds = %2550
  %2559 = extractvalue %dx.types.CBufRet.f32 %2191, 2
  %2560 = fadd fast float %2559, %140
  %2561 = fmul fast float %2170, 3.200000e+01
  %2562 = fmul fast float %2171, 3.200000e+01
  %2563 = fadd fast float %2194, %2561
  %2564 = fadd fast float %2195, %2562
  %2565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2566 = extractvalue %dx.types.CBufRet.f32 %2565, 0
  %2567 = extractvalue %dx.types.CBufRet.f32 %2565, 1
  %2568 = fsub fast float %2563, %2566
  %2569 = fsub fast float %2564, %2567
  %2570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2571 = extractvalue %dx.types.CBufRet.f32 %2570, 0
  %2572 = extractvalue %dx.types.CBufRet.f32 %2570, 1
  %2573 = fmul fast float %2568, %2571
  %2574 = fmul fast float %2569, %2572
  %2575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2576 = extractvalue %dx.types.CBufRet.f32 %2575, 0
  %2577 = fmul fast float %2573, %2576
  %2578 = extractvalue %dx.types.CBufRet.f32 %2575, 1
  %2579 = fadd fast float %2577, %2578
  %2580 = extractvalue %dx.types.CBufRet.f32 %2575, 2
  %2581 = fmul fast float %2580, %2574
  %2582 = extractvalue %dx.types.CBufRet.f32 %2575, 3
  %2583 = fadd fast float %2581, %2582
  %2584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2579, float %2583, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2585 = extractvalue %dx.types.ResRet.f32 %2584, 0
  %2586 = extractvalue %dx.types.ResRet.f32 %2584, 1
  %2587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2588 = extractvalue %dx.types.CBufRet.f32 %2587, 1
  %2589 = extractvalue %dx.types.CBufRet.f32 %2587, 0
  %2590 = fsub fast float %2588, %2589
  %2591 = fmul fast float %2590, %2585
  %2592 = fadd fast float %2591, %2589
  %2593 = extractvalue %dx.types.CBufRet.f32 %2587, 3
  %2594 = extractvalue %dx.types.CBufRet.f32 %2587, 2
  %2595 = fsub fast float %2593, %2594
  %2596 = fmul fast float %2595, %2586
  %2597 = fadd fast float %2596, %2594
  %2598 = fsub fast float %2560, %2592
  %2599 = fsub fast float %2597, %2592
  %2600 = fdiv fast float %2598, %2599
  %2601 = call float @dx.op.unary.f32(i32 7, float %2600)  ; Saturate(value)
  %2602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2603 = extractvalue %dx.types.CBufRet.f32 %2602, 0
  %2604 = fmul fast float %2603, %2601
  %2605 = extractvalue %dx.types.CBufRet.f32 %2602, 1
  %2606 = fadd fast float %2604, %2605
  %2607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %58, float %2579, float %2583, float %2606, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2608 = extractvalue %dx.types.ResRet.f32 %2607, 0
  %2609 = extractvalue %dx.types.ResRet.f32 %2607, 1
  %2610 = extractvalue %dx.types.ResRet.f32 %2607, 2
  %2611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2612 = extractvalue %dx.types.CBufRet.f32 %2611, 0
  %2613 = extractvalue %dx.types.CBufRet.f32 %2611, 1
  %2614 = extractvalue %dx.types.CBufRet.f32 %2611, 2
  %2615 = fmul fast float %2612, %2608
  %2616 = fmul fast float %2613, %2609
  %2617 = fmul fast float %2614, %2610
  %2618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2619 = extractvalue %dx.types.CBufRet.f32 %2618, 0
  %2620 = extractvalue %dx.types.CBufRet.f32 %2618, 1
  %2621 = extractvalue %dx.types.CBufRet.f32 %2618, 2
  %2622 = fadd fast float %2615, %2619
  %2623 = fadd fast float %2616, %2620
  %2624 = fadd fast float %2617, %2621
  %2625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2626 = extractvalue %dx.types.CBufRet.f32 %2625, 0
  %2627 = fmul fast float %2626, %2573
  %2628 = extractvalue %dx.types.CBufRet.f32 %2625, 1
  %2629 = fadd fast float %2627, %2628
  %2630 = extractvalue %dx.types.CBufRet.f32 %2625, 2
  %2631 = fmul fast float %2630, %2574
  %2632 = extractvalue %dx.types.CBufRet.f32 %2625, 3
  %2633 = fadd fast float %2631, %2632
  %2634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2635 = extractvalue %dx.types.CBufRet.f32 %2634, 0
  %2636 = extractvalue %dx.types.CBufRet.f32 %2634, 1
  %2637 = extractvalue %dx.types.CBufRet.f32 %2634, 2
  %2638 = extractvalue %dx.types.CBufRet.f32 %2634, 3
  %2639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2640 = extractvalue %dx.types.CBufRet.f32 %2639, 0
  %2641 = extractvalue %dx.types.CBufRet.f32 %2639, 1
  %2642 = extractvalue %dx.types.CBufRet.f32 %2639, 2
  %2643 = extractvalue %dx.types.CBufRet.f32 %2639, 3
  %2644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2629, float %2633, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2645 = extractvalue %dx.types.ResRet.f32 %2644, 0
  %2646 = extractvalue %dx.types.ResRet.f32 %2644, 1
  %2647 = extractvalue %dx.types.ResRet.f32 %2644, 2
  %2648 = extractvalue %dx.types.ResRet.f32 %2644, 3
  %2649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2629, float %2633, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2650 = extractvalue %dx.types.ResRet.f32 %2649, 0
  %2651 = extractvalue %dx.types.ResRet.f32 %2649, 1
  %2652 = extractvalue %dx.types.ResRet.f32 %2649, 2
  %2653 = extractvalue %dx.types.ResRet.f32 %2649, 3
  %2654 = fmul fast float %2645, %2622
  %2655 = fmul fast float %2650, %2622
  %2656 = fmul fast float %2652, %2622
  %2657 = fmul fast float %2648, %2622
  %2658 = fadd fast float %2654, %2635
  %2659 = fadd fast float %2655, %2636
  %2660 = fadd fast float %2656, %2637
  %2661 = fadd fast float %2657, %2638
  %2662 = fmul fast float %2646, %2622
  %2663 = fmul fast float %2651, %2622
  %2664 = fadd fast float %2662, %2640
  %2665 = fadd fast float %2663, %2641
  %2666 = fmul fast float %2647, %2622
  %2667 = fmul fast float %2653, %2622
  %2668 = fadd fast float %2666, %2642
  %2669 = fadd fast float %2667, %2643
  %2670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2629, float %2633, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2671 = extractvalue %dx.types.ResRet.f32 %2670, 0
  %2672 = extractvalue %dx.types.ResRet.f32 %2670, 1
  %2673 = extractvalue %dx.types.ResRet.f32 %2670, 2
  %2674 = extractvalue %dx.types.ResRet.f32 %2670, 3
  %2675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2629, float %2633, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2676 = extractvalue %dx.types.ResRet.f32 %2675, 0
  %2677 = extractvalue %dx.types.ResRet.f32 %2675, 1
  %2678 = extractvalue %dx.types.ResRet.f32 %2675, 2
  %2679 = extractvalue %dx.types.ResRet.f32 %2675, 3
  %2680 = fmul fast float %2671, %2623
  %2681 = fmul fast float %2676, %2623
  %2682 = fmul fast float %2678, %2623
  %2683 = fmul fast float %2674, %2623
  %2684 = fadd fast float %2658, %2680
  %2685 = fadd fast float %2659, %2681
  %2686 = fadd fast float %2660, %2682
  %2687 = fadd fast float %2661, %2683
  %2688 = fmul fast float %2672, %2623
  %2689 = fmul fast float %2677, %2623
  %2690 = fadd fast float %2664, %2688
  %2691 = fadd fast float %2665, %2689
  %2692 = fmul fast float %2673, %2623
  %2693 = fmul fast float %2679, %2623
  %2694 = fadd fast float %2668, %2692
  %2695 = fadd fast float %2669, %2693
  %2696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2629, float %2633, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2697 = extractvalue %dx.types.ResRet.f32 %2696, 0
  %2698 = extractvalue %dx.types.ResRet.f32 %2696, 1
  %2699 = extractvalue %dx.types.ResRet.f32 %2696, 2
  %2700 = extractvalue %dx.types.ResRet.f32 %2696, 3
  %2701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2629, float %2633, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2702 = extractvalue %dx.types.ResRet.f32 %2701, 0
  %2703 = extractvalue %dx.types.ResRet.f32 %2701, 1
  %2704 = extractvalue %dx.types.ResRet.f32 %2701, 2
  %2705 = extractvalue %dx.types.ResRet.f32 %2701, 3
  %2706 = fmul fast float %2697, %2624
  %2707 = fmul fast float %2702, %2624
  %2708 = fmul fast float %2704, %2624
  %2709 = fmul fast float %2700, %2624
  %2710 = fadd fast float %2684, %2706
  %2711 = fadd fast float %2685, %2707
  %2712 = fadd fast float %2686, %2708
  %2713 = fadd fast float %2687, %2709
  %2714 = fmul fast float %2698, %2624
  %2715 = fmul fast float %2703, %2624
  %2716 = fadd fast float %2690, %2714
  %2717 = fadd fast float %2691, %2715
  %2718 = fmul fast float %2699, %2624
  %2719 = fmul fast float %2705, %2624
  %2720 = fadd fast float %2694, %2718
  %2721 = fadd fast float %2695, %2719
  %2722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2723 = extractvalue %dx.types.CBufRet.f32 %2722, 0
  %2724 = fsub fast float %2194, %2723
  %2725 = fsub fast float %2566, %2194
  %2726 = call float @dx.op.binary.f32(i32 35, float %2725, float %2724)  ; FMax(a,b)
  %2727 = extractvalue %dx.types.CBufRet.f32 %2722, 1
  %2728 = fsub fast float %2195, %2727
  %2729 = fsub fast float %2567, %2195
  %2730 = call float @dx.op.binary.f32(i32 35, float %2729, float %2728)  ; FMax(a,b)
  %2731 = call float @dx.op.binary.f32(i32 35, float %2726, float %2730)  ; FMax(a,b)
  %2732 = extractvalue %dx.types.CBufRet.f32 %2570, 3
  %2733 = fmul fast float %2732, %2731
  %2734 = call float @dx.op.unary.f32(i32 7, float %2733)  ; Saturate(value)
  %2735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2736 = extractvalue %dx.types.CBufRet.f32 %2735, 0
  %2737 = extractvalue %dx.types.CBufRet.f32 %2735, 1
  %2738 = extractvalue %dx.types.CBufRet.f32 %2735, 2
  %2739 = extractvalue %dx.types.CBufRet.f32 %2735, 3
  %2740 = fsub fast float %2736, %2710
  %2741 = fsub fast float %2737, %2711
  %2742 = fsub fast float %2738, %2712
  %2743 = fsub fast float %2739, %2713
  %2744 = fmul fast float %2740, %2734
  %2745 = fmul fast float %2741, %2734
  %2746 = fmul fast float %2742, %2734
  %2747 = fmul fast float %2743, %2734
  %2748 = fadd fast float %2744, %2710
  %2749 = fadd fast float %2745, %2711
  %2750 = fadd fast float %2746, %2712
  %2751 = fadd fast float %2747, %2713
  %2752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2753 = extractvalue %dx.types.CBufRet.f32 %2752, 0
  %2754 = extractvalue %dx.types.CBufRet.f32 %2752, 1
  %2755 = fsub fast float %2753, %2716
  %2756 = fsub fast float %2754, %2717
  %2757 = fmul fast float %2755, %2734
  %2758 = fmul fast float %2756, %2734
  %2759 = fadd fast float %2757, %2716
  %2760 = fadd fast float %2758, %2717
  %2761 = extractvalue %dx.types.CBufRet.f32 %2752, 2
  %2762 = extractvalue %dx.types.CBufRet.f32 %2752, 3
  %2763 = fsub fast float %2761, %2720
  %2764 = fsub fast float %2762, %2721
  %2765 = fmul fast float %2763, %2734
  %2766 = fmul fast float %2764, %2734
  %2767 = fadd fast float %2765, %2720
  %2768 = fadd fast float %2766, %2721
  %2769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2770 = extractvalue %dx.types.CBufRet.f32 %2769, 0
  %2771 = fmul fast float %2770, %2748
  %2772 = fmul fast float %2770, %2749
  %2773 = fmul fast float %2770, %2750
  %2774 = fmul fast float %2770, %2751
  %2775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.f32 %2775, 0
  %2777 = fmul fast float %2776, %2759
  %2778 = fmul fast float %2776, %2760
  %2779 = fadd fast float %2777, %2771
  %2780 = fadd fast float %2778, %2773
  %2781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2782 = extractvalue %dx.types.CBufRet.f32 %2781, 0
  %2783 = fmul fast float %2782, %2767
  %2784 = fmul fast float %2782, %2768
  %2785 = fadd fast float %2779, %2783
  %2786 = fadd fast float %2780, %2784
  %2787 = extractvalue %dx.types.CBufRet.f32 %2769, 1
  %2788 = fmul fast float %2787, %2748
  %2789 = fmul fast float %2787, %2749
  %2790 = fmul fast float %2787, %2750
  %2791 = fmul fast float %2787, %2751
  %2792 = extractvalue %dx.types.CBufRet.f32 %2775, 1
  %2793 = fmul fast float %2792, %2759
  %2794 = fmul fast float %2792, %2760
  %2795 = fadd fast float %2793, %2788
  %2796 = fadd fast float %2794, %2790
  %2797 = extractvalue %dx.types.CBufRet.f32 %2781, 1
  %2798 = fmul fast float %2797, %2767
  %2799 = fmul fast float %2797, %2768
  %2800 = fadd fast float %2795, %2798
  %2801 = fadd fast float %2796, %2799
  %2802 = extractvalue %dx.types.CBufRet.f32 %2769, 2
  %2803 = fmul fast float %2802, %2748
  %2804 = fmul fast float %2802, %2749
  %2805 = fmul fast float %2802, %2750
  %2806 = fmul fast float %2802, %2751
  %2807 = extractvalue %dx.types.CBufRet.f32 %2775, 2
  %2808 = fmul fast float %2807, %2759
  %2809 = fmul fast float %2807, %2760
  %2810 = fadd fast float %2808, %2803
  %2811 = fadd fast float %2809, %2805
  %2812 = extractvalue %dx.types.CBufRet.f32 %2781, 2
  %2813 = fmul fast float %2812, %2767
  %2814 = fmul fast float %2812, %2768
  %2815 = fadd fast float %2810, %2813
  %2816 = fadd fast float %2811, %2814
  %2817 = fmul fast float %2804, %2804
  %2818 = fmul fast float %2816, %2816
  %2819 = fmul fast float %2806, %2806
  %2820 = fadd fast float %2819, %2817
  %2821 = fadd fast float %2820, %2818
  %2822 = call float @dx.op.unary.f32(i32 24, float %2821)  ; Sqrt(value)
  %2823 = fcmp fast ugt float %2822, 0.000000e+00
  br i1 %2823, label %2824, label %2839

; <label>:2824                                    ; preds = %2558
  %2825 = fsub fast float -0.000000e+00, %2806
  %2826 = fdiv fast float %2825, %2822
  %2827 = fsub fast float -0.000000e+00, %2804
  %2828 = fdiv fast float %2827, %2822
  %2829 = fdiv fast float %2816, %2822
  %2830 = fmul fast float %2815, 0x3FE279A760000000
  %2831 = fmul fast float %2828, %2804
  %2832 = fmul fast float %2829, %2816
  %2833 = fmul fast float %2826, %2806
  %2834 = fadd fast float %2831, %2833
  %2835 = fsub fast float %2834, %2832
  %2836 = call float @dx.op.unary.f32(i32 6, float %2835)  ; FAbs(value)
  %2837 = fadd fast float %2836, 0x3DDB7CDFE0000000
  %2838 = fdiv fast float %2830, %2837
  br label %2839

; <label>:2839                                    ; preds = %2824, %2558
  %2840 = phi float [ %2838, %2824 ], [ 1.000000e+00, %2558 ]
  %2841 = fmul fast float %2789, %2789
  %2842 = fmul fast float %2801, %2801
  %2843 = fmul fast float %2791, %2791
  %2844 = fadd fast float %2843, %2841
  %2845 = fadd fast float %2844, %2842
  %2846 = call float @dx.op.unary.f32(i32 24, float %2845)  ; Sqrt(value)
  %2847 = fcmp fast ugt float %2846, 0.000000e+00
  br i1 %2847, label %2848, label %2863

; <label>:2848                                    ; preds = %2839
  %2849 = fsub fast float -0.000000e+00, %2791
  %2850 = fdiv fast float %2849, %2846
  %2851 = fsub fast float -0.000000e+00, %2789
  %2852 = fdiv fast float %2851, %2846
  %2853 = fdiv fast float %2801, %2846
  %2854 = fmul fast float %2800, 0x3FE279A760000000
  %2855 = fmul fast float %2852, %2789
  %2856 = fmul fast float %2853, %2801
  %2857 = fmul fast float %2850, %2791
  %2858 = fadd fast float %2855, %2857
  %2859 = fsub fast float %2858, %2856
  %2860 = call float @dx.op.unary.f32(i32 6, float %2859)  ; FAbs(value)
  %2861 = fadd fast float %2860, 0x3DDB7CDFE0000000
  %2862 = fdiv fast float %2854, %2861
  br label %2863

; <label>:2863                                    ; preds = %2848, %2839
  %2864 = phi float [ %2862, %2848 ], [ 1.000000e+00, %2839 ]
  %2865 = call float @dx.op.binary.f32(i32 36, float %2864, float %2840)  ; FMin(a,b)
  %2866 = fmul fast float %2772, %2772
  %2867 = fmul fast float %2786, %2786
  %2868 = fmul fast float %2774, %2774
  %2869 = fadd fast float %2868, %2866
  %2870 = fadd fast float %2869, %2867
  %2871 = call float @dx.op.unary.f32(i32 24, float %2870)  ; Sqrt(value)
  %2872 = fcmp fast ugt float %2871, 0.000000e+00
  br i1 %2872, label %2873, label %2888

; <label>:2873                                    ; preds = %2863
  %2874 = fsub fast float -0.000000e+00, %2774
  %2875 = fdiv fast float %2874, %2871
  %2876 = fsub fast float -0.000000e+00, %2772
  %2877 = fdiv fast float %2876, %2871
  %2878 = fdiv fast float %2786, %2871
  %2879 = fmul fast float %2785, 0x3FE279A760000000
  %2880 = fmul fast float %2877, %2772
  %2881 = fmul fast float %2878, %2786
  %2882 = fmul fast float %2875, %2774
  %2883 = fadd fast float %2880, %2882
  %2884 = fsub fast float %2883, %2881
  %2885 = call float @dx.op.unary.f32(i32 6, float %2884)  ; FAbs(value)
  %2886 = fadd fast float %2885, 0x3DDB7CDFE0000000
  %2887 = fdiv fast float %2879, %2886
  br label %2888

; <label>:2888                                    ; preds = %2873, %2863
  %2889 = phi float [ %2887, %2873 ], [ 1.000000e+00, %2863 ]
  %2890 = call float @dx.op.binary.f32(i32 36, float %2889, float %2865)  ; FMin(a,b)
  %2891 = call float @dx.op.unary.f32(i32 7, float %2890)  ; Saturate(value)
  %2892 = fcmp fast olt float %2891, 1.000000e+00
  br i1 %2892, label %2893, label %2903

; <label>:2893                                    ; preds = %2888
  %2894 = fmul fast float %2891, %2772
  %2895 = fmul fast float %2891, %2786
  %2896 = fmul fast float %2891, %2774
  %2897 = fmul fast float %2891, %2789
  %2898 = fmul fast float %2891, %2801
  %2899 = fmul fast float %2891, %2791
  %2900 = fmul fast float %2891, %2804
  %2901 = fmul fast float %2891, %2816
  %2902 = fmul fast float %2891, %2806
  br label %2903

; <label>:2903                                    ; preds = %2893, %2888
  %2904 = phi float [ %2900, %2893 ], [ %2804, %2888 ]
  %2905 = phi float [ %2901, %2893 ], [ %2816, %2888 ]
  %2906 = phi float [ %2902, %2893 ], [ %2806, %2888 ]
  %2907 = phi float [ %2897, %2893 ], [ %2789, %2888 ]
  %2908 = phi float [ %2898, %2893 ], [ %2801, %2888 ]
  %2909 = phi float [ %2899, %2893 ], [ %2791, %2888 ]
  %2910 = phi float [ %2894, %2893 ], [ %2772, %2888 ]
  %2911 = phi float [ %2895, %2893 ], [ %2786, %2888 ]
  %2912 = phi float [ %2896, %2893 ], [ %2774, %2888 ]
  %2913 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2785)  ; FMax(a,b)
  %2914 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2800)  ; FMax(a,b)
  %2915 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2815)  ; FMax(a,b)
  %2916 = fcmp fast oge float %2573, 0.000000e+00
  %2917 = and i1 %2916, %2344
  %2918 = fcmp fast ole float %2573, 1.000000e+00
  %2919 = and i1 %2918, %2917
  %2920 = fcmp fast oge float %2574, 0.000000e+00
  %2921 = and i1 %2920, %2919
  %2922 = fcmp fast ole float %2574, 1.000000e+00
  %2923 = and i1 %2922, %2921
  br i1 %2923, label %2924, label %3069, !dx.controlflow.hints !104

; <label>:2924                                    ; preds = %2903
  %2925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2926 = extractvalue %dx.types.CBufRet.f32 %2925, 2
  %2927 = extractvalue %dx.types.CBufRet.f32 %2925, 3
  %2928 = fmul fast float %2926, %2573
  %2929 = fmul fast float %2927, %2574
  %2930 = call float @dx.op.unary.f32(i32 27, float %2928)  ; Round_ni(value)
  %2931 = call float @dx.op.unary.f32(i32 27, float %2929)  ; Round_ni(value)
  %2932 = fptosi float %2930 to i32
  %2933 = fptosi float %2931 to i32
  %2934 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %2932, i32 %2933, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = and i32 %2935, 65535
  %2937 = lshr i32 %2935, 16
  %2938 = icmp eq i32 %2936, 65535
  br i1 %2938, label %2975, label %2939

; <label>:2939                                    ; preds = %2924
  %2940 = extractvalue %dx.types.CBufRet.f32 %2342, 1
  %2941 = extractvalue %dx.types.CBufRet.f32 %2925, 0
  %2942 = extractvalue %dx.types.CBufRet.f32 %2925, 1
  %2943 = fmul fast float %2941, %2573
  %2944 = fmul fast float %2942, %2574
  %2945 = fmul fast float %2943, 1.250000e-01
  %2946 = fmul fast float %2944, 1.250000e-01
  %2947 = call float @dx.op.unary.f32(i32 27, float %2945)  ; Round_ni(value)
  %2948 = call float @dx.op.unary.f32(i32 27, float %2946)  ; Round_ni(value)
  %2949 = fmul fast float %2947, 8.000000e+00
  %2950 = fmul fast float %2948, 8.000000e+00
  %2951 = and i32 %2935, 255
  %2952 = lshr i32 %2935, 8
  %2953 = and i32 %2952, 255
  %2954 = mul nuw nsw i32 %2951, 9
  %2955 = uitofp i32 %2954 to float
  %2956 = mul nuw nsw i32 %2953, 9
  %2957 = uitofp i32 %2956 to float
  %2958 = fadd fast float %2955, 5.000000e-01
  %2959 = fadd fast float %2958, %2943
  %2960 = fsub fast float %2959, %2949
  %2961 = fadd fast float %2957, 5.000000e-01
  %2962 = fadd fast float %2961, %2944
  %2963 = fsub fast float %2962, %2950
  %2964 = fdiv fast float %2960, %2343
  %2965 = fdiv fast float %2963, %2940
  %2966 = fmul fast float %2601, 4.375000e-01
  %2967 = fadd fast float %2966, 3.125000e-02
  %2968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2964, float %2965, float %2967, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2969 = extractvalue %dx.types.ResRet.f32 %2968, 0
  %2970 = extractvalue %dx.types.ResRet.f32 %2968, 1
  %2971 = extractvalue %dx.types.ResRet.f32 %2968, 2
  %2972 = fadd fast float %2969, %2913
  %2973 = fadd fast float %2970, %2914
  %2974 = fadd fast float %2971, %2915
  br label %2975

; <label>:2975                                    ; preds = %2939, %2924
  %2976 = phi float [ %2974, %2939 ], [ %2915, %2924 ]
  %2977 = phi float [ %2973, %2939 ], [ %2914, %2924 ]
  %2978 = phi float [ %2972, %2939 ], [ %2913, %2924 ]
  %2979 = icmp eq i32 %2937, 65535
  br i1 %2979, label %3069, label %2980

; <label>:2980                                    ; preds = %2975
  %2981 = extractvalue %dx.types.CBufRet.f32 %2342, 1
  %2982 = extractvalue %dx.types.CBufRet.f32 %2925, 0
  %2983 = extractvalue %dx.types.CBufRet.f32 %2925, 1
  %2984 = fmul fast float %2982, %2573
  %2985 = fmul fast float %2983, %2574
  %2986 = fmul fast float %2984, 1.250000e-01
  %2987 = fmul fast float %2985, 1.250000e-01
  %2988 = call float @dx.op.unary.f32(i32 27, float %2986)  ; Round_ni(value)
  %2989 = call float @dx.op.unary.f32(i32 27, float %2987)  ; Round_ni(value)
  %2990 = fmul fast float %2988, 8.000000e+00
  %2991 = fmul fast float %2989, 8.000000e+00
  %2992 = fsub fast float %2984, %2990
  %2993 = fsub fast float %2985, %2991
  %2994 = fadd fast float %2992, 5.000000e-01
  %2995 = fadd fast float %2993, 5.000000e-01
  %2996 = and i32 %2937, 255
  %2997 = lshr i32 %2935, 24
  %2998 = mul nuw nsw i32 %2996, 9
  %2999 = uitofp i32 %2998 to float
  %3000 = mul nuw nsw i32 %2997, 9
  %3001 = uitofp i32 %3000 to float
  %3002 = fadd fast float %2994, %2999
  %3003 = fadd fast float %2995, %3001
  %3004 = fdiv fast float %3002, %2343
  %3005 = fdiv fast float %3003, %2981
  %3006 = fmul fast float %2601, 4.375000e-01
  %3007 = fadd fast float %3006, 3.125000e-02
  %3008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3004, float %3005, float %3007, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3009 = extractvalue %dx.types.ResRet.f32 %3008, 0
  %3010 = extractvalue %dx.types.ResRet.f32 %3008, 1
  %3011 = extractvalue %dx.types.ResRet.f32 %3008, 2
  %3012 = fadd fast float %3006, 5.312500e-01
  %3013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3004, float %3005, float %3012, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3014 = extractvalue %dx.types.ResRet.f32 %3013, 0
  %3015 = extractvalue %dx.types.ResRet.f32 %3013, 1
  %3016 = extractvalue %dx.types.ResRet.f32 %3013, 2
  %3017 = fmul fast float %3014, 2.000000e+00
  %3018 = fmul fast float %3015, 2.000000e+00
  %3019 = fmul fast float %3016, 2.000000e+00
  %3020 = fadd fast float %3017, -1.000000e+00
  %3021 = fadd fast float %3018, -1.000000e+00
  %3022 = fadd fast float %3019, -1.000000e+00
  %3023 = fmul fast float %3020, %3020
  %3024 = fmul fast float %3021, %3021
  %3025 = fadd fast float %3023, %3024
  %3026 = fmul fast float %3022, %3022
  %3027 = fadd fast float %3025, %3026
  %3028 = call float @dx.op.unary.f32(i32 24, float %3027)  ; Sqrt(value)
  %3029 = fcmp fast ogt float %3028, 0.000000e+00
  br i1 %3029, label %3030, label %3034

; <label>:3030                                    ; preds = %2980
  %3031 = fdiv fast float %3020, %3028
  %3032 = fdiv fast float %3021, %3028
  %3033 = fdiv fast float %3022, %3028
  br label %3034

; <label>:3034                                    ; preds = %3030, %2980
  %3035 = phi float [ %3031, %3030 ], [ 0.000000e+00, %2980 ]
  %3036 = phi float [ %3032, %3030 ], [ 0.000000e+00, %2980 ]
  %3037 = phi float [ %3033, %3030 ], [ 0.000000e+00, %2980 ]
  %3038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3039 = extractvalue %dx.types.CBufRet.f32 %3038, 0
  %3040 = extractvalue %dx.types.CBufRet.f32 %3038, 1
  %3041 = fsub fast float %2194, %3039
  %3042 = fsub fast float %2195, %3040
  %3043 = fmul fast float %3041, %3041
  %3044 = fmul fast float %3042, %3042
  %3045 = fadd fast float %3043, %3044
  %3046 = call float @dx.op.unary.f32(i32 24, float %3045)  ; Sqrt(value)
  %3047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3048 = extractvalue %dx.types.CBufRet.f32 %3047, 0
  %3049 = extractvalue %dx.types.CBufRet.f32 %3047, 1
  %3050 = fsub fast float %3046, %3048
  %3051 = fdiv fast float %3050, %3049
  %3052 = call float @dx.op.unary.f32(i32 7, float %3051)  ; Saturate(value)
  %3053 = fmul fast float %3052, 2.000000e+00
  %3054 = fsub fast float 3.000000e+00, %3053
  %3055 = fmul fast float %3052, %3052
  %3056 = fmul fast float %3055, %3054
  %3057 = call float @dx.op.dot3.f32(i32 55, float %3035, float %3036, float %3037, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %3058 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3057)  ; FMax(a,b)
  %3059 = fmul fast float %3058, 0x400C5BF8A0000000
  %3060 = fmul fast float %3056, %3009
  %3061 = fmul fast float %3060, %3059
  %3062 = fadd fast float %3061, %2978
  %3063 = fmul fast float %3056, %3010
  %3064 = fmul fast float %3063, %3059
  %3065 = fadd fast float %3064, %2977
  %3066 = fmul fast float %3056, %3011
  %3067 = fmul fast float %3066, %3059
  %3068 = fadd fast float %3067, %2976
  br label %3069

; <label>:3069                                    ; preds = %3034, %2975, %2903
  %3070 = phi float [ %3068, %3034 ], [ %2976, %2975 ], [ %2915, %2903 ]
  %3071 = phi float [ %3065, %3034 ], [ %2977, %2975 ], [ %2914, %2903 ]
  %3072 = phi float [ %3062, %3034 ], [ %2978, %2975 ], [ %2913, %2903 ]
  %3073 = fcmp fast ogt float %2560, %2597
  %3074 = and i1 %2916, %3073
  %3075 = and i1 %2918, %3074
  %3076 = and i1 %2920, %3075
  %3077 = and i1 %2922, %3076
  br i1 %3077, label %3078, label %3135, !dx.controlflow.hints !105

; <label>:3078                                    ; preds = %3069
  %3079 = fmul fast float %2599, 0x3FC24924A0000000
  %3080 = fsub fast float %2560, %2597
  %3081 = fdiv fast float %3080, %3079
  %3082 = call float @dx.op.unary.f32(i32 7, float %3081)  ; Saturate(value)
  %3083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3084 = extractvalue %dx.types.CBufRet.f32 %3083, 0
  %3085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3086 = extractvalue %dx.types.CBufRet.f32 %3085, 0
  %3087 = extractvalue %dx.types.CBufRet.f32 %3085, 1
  %3088 = extractvalue %dx.types.CBufRet.f32 %3085, 2
  %3089 = fsub fast float %3084, %3072
  %3090 = fsub fast float %3086, %2910
  %3091 = fsub fast float %3087, %2911
  %3092 = fsub fast float %3088, %2912
  %3093 = fmul fast float %3089, %3082
  %3094 = fmul fast float %3090, %3082
  %3095 = fmul fast float %3091, %3082
  %3096 = fmul fast float %3092, %3082
  %3097 = fadd fast float %3093, %3072
  %3098 = fadd fast float %3094, %2910
  %3099 = fadd fast float %3095, %2911
  %3100 = fadd fast float %3096, %2912
  %3101 = extractvalue %dx.types.CBufRet.f32 %3083, 1
  %3102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3103 = extractvalue %dx.types.CBufRet.f32 %3102, 0
  %3104 = extractvalue %dx.types.CBufRet.f32 %3102, 1
  %3105 = extractvalue %dx.types.CBufRet.f32 %3102, 2
  %3106 = fsub fast float %3101, %3071
  %3107 = fsub fast float %3103, %2907
  %3108 = fsub fast float %3104, %2908
  %3109 = fsub fast float %3105, %2909
  %3110 = fmul fast float %3106, %3082
  %3111 = fmul fast float %3107, %3082
  %3112 = fmul fast float %3108, %3082
  %3113 = fmul fast float %3109, %3082
  %3114 = fadd fast float %3110, %3071
  %3115 = fadd fast float %3111, %2907
  %3116 = fadd fast float %3112, %2908
  %3117 = fadd fast float %3113, %2909
  %3118 = extractvalue %dx.types.CBufRet.f32 %3083, 2
  %3119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3120 = extractvalue %dx.types.CBufRet.f32 %3119, 0
  %3121 = extractvalue %dx.types.CBufRet.f32 %3119, 1
  %3122 = extractvalue %dx.types.CBufRet.f32 %3119, 2
  %3123 = fsub fast float %3118, %3070
  %3124 = fsub fast float %3120, %2904
  %3125 = fsub fast float %3121, %2905
  %3126 = fsub fast float %3122, %2906
  %3127 = fmul fast float %3123, %3082
  %3128 = fmul fast float %3124, %3082
  %3129 = fmul fast float %3125, %3082
  %3130 = fmul fast float %3126, %3082
  %3131 = fadd fast float %3127, %3070
  %3132 = fadd fast float %3128, %2904
  %3133 = fadd fast float %3129, %2905
  %3134 = fadd fast float %3130, %2906
  br label %3135

; <label>:3135                                    ; preds = %3078, %3069
  %3136 = phi float [ %3131, %3078 ], [ %3070, %3069 ]
  %3137 = phi float [ %3132, %3078 ], [ %2904, %3069 ]
  %3138 = phi float [ %3133, %3078 ], [ %2905, %3069 ]
  %3139 = phi float [ %3134, %3078 ], [ %2906, %3069 ]
  %3140 = phi float [ %3114, %3078 ], [ %3071, %3069 ]
  %3141 = phi float [ %3115, %3078 ], [ %2907, %3069 ]
  %3142 = phi float [ %3116, %3078 ], [ %2908, %3069 ]
  %3143 = phi float [ %3117, %3078 ], [ %2909, %3069 ]
  %3144 = phi float [ %3097, %3078 ], [ %3072, %3069 ]
  %3145 = phi float [ %3098, %3078 ], [ %2910, %3069 ]
  %3146 = phi float [ %3099, %3078 ], [ %2911, %3069 ]
  %3147 = phi float [ %3100, %3078 ], [ %2912, %3069 ]
  %3148 = extractvalue %dx.types.CBufRet.f32 %2722, 3
  %3149 = fmul fast float %3148, %3144
  %3150 = fmul fast float %3148, %3140
  %3151 = fmul fast float %3148, %3136
  %3152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3153 = extractvalue %dx.types.CBufRet.f32 %3152, 3
  %3154 = fmul fast float %3149, %3153
  %3155 = fmul fast float %3150, %3153
  %3156 = fmul fast float %3151, %3153
  %3157 = fmul fast float %3145, 1.500000e+00
  %3158 = fmul fast float %3157, %3148
  %3159 = fmul fast float %3158, %3153
  %3160 = fmul fast float %3146, 1.500000e+00
  %3161 = fmul fast float %3160, %3148
  %3162 = fmul fast float %3161, %3153
  %3163 = fmul fast float %3147, 1.500000e+00
  %3164 = fmul fast float %3163, %3148
  %3165 = fmul fast float %3164, %3153
  %3166 = fmul fast float %3141, 1.500000e+00
  %3167 = fmul fast float %3166, %3148
  %3168 = fmul fast float %3167, %3153
  %3169 = fmul fast float %3142, 1.500000e+00
  %3170 = fmul fast float %3169, %3148
  %3171 = fmul fast float %3170, %3153
  %3172 = fmul fast float %3143, 1.500000e+00
  %3173 = fmul fast float %3172, %3148
  %3174 = fmul fast float %3173, %3153
  %3175 = fmul fast float %3137, 1.500000e+00
  %3176 = fmul fast float %3175, %3148
  %3177 = fmul fast float %3176, %3153
  %3178 = fmul fast float %3138, 1.500000e+00
  %3179 = fmul fast float %3178, %3148
  %3180 = fmul fast float %3179, %3153
  %3181 = fmul fast float %3139, 1.500000e+00
  %3182 = fmul fast float %3181, %3148
  %3183 = fmul fast float %3182, %3153
  %3184 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3154)  ; FMax(a,b)
  %3185 = call float @dx.op.dot3.f32(i32 55, float %3159, float %3162, float %3165, float %3159, float %3162, float %3165)  ; Dot3(ax,ay,az,bx,by,bz)
  %3186 = fcmp fast oeq float %3185, 0.000000e+00
  %3187 = fcmp fast oeq float %3184, 0.000000e+00
  %3188 = or i1 %3187, %3186
  br i1 %3188, label %3218, label %3189

; <label>:3189                                    ; preds = %3135
  %3190 = fsub fast float -0.000000e+00, %3165
  %3191 = fsub fast float -0.000000e+00, %3159
  %3192 = call float @dx.op.unary.f32(i32 24, float %3185)  ; Sqrt(value)
  %3193 = fdiv fast float %3192, %3184
  %3194 = fcmp fast ogt float %3193, 0x3FFB6F8900000000
  %3195 = select i1 %3194, float 0x3FFB6F8900000000, float %3193
  %3196 = fmul fast float %3195, 0x3FE8A23460000000
  %3197 = call float @dx.op.unary.f32(i32 7, float %3196)  ; Saturate(value)
  %3198 = call float @dx.op.binary.f32(i32 35, float %3195, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3199 = fmul fast float %3197, %3184
  %3200 = fmul fast float %3198, 0x3FF279A740000000
  %3201 = fadd fast float %3200, -1.000000e+00
  %3202 = call float @dx.op.dot3.f32(i32 55, float %3190, float %3191, float %3162, float %3190, float %3191, float %3162)  ; Dot3(ax,ay,az,bx,by,bz)
  %3203 = call float @dx.op.unary.f32(i32 25, float %3202)  ; Rsqrt(value)
  %3204 = fmul fast float %3203, %3190
  %3205 = fmul fast float %3203, %3191
  %3206 = fmul fast float %3203, %3162
  %3207 = fmul fast float %3201, %3201
  %3208 = fsub fast float 1.000000e+00, %3207
  %3209 = fmul fast float %3198, 0x40005F8BE0000000
  %3210 = fsub fast float 0x400C5BF8A0000000, %3209
  %3211 = fdiv fast float %3199, %3210
  %3212 = fmul fast float %3211, 0x3FEE31C3C0000000
  %3213 = fmul fast float %3212, %3208
  %3214 = fmul fast float %3198, 0x3FDACB7480000000
  %3215 = fadd fast float %3214, 0xBFD7347680000000
  %3216 = fmul fast float %3215, %3211
  %3217 = fmul fast float %3216, %3208
  br label %3218

; <label>:3218                                    ; preds = %3189, %3135
  %3219 = phi float [ %3204, %3189 ], [ 0.000000e+00, %3135 ]
  %3220 = phi float [ %3205, %3189 ], [ 0.000000e+00, %3135 ]
  %3221 = phi float [ %3206, %3189 ], [ 0.000000e+00, %3135 ]
  %3222 = phi float [ %3213, %3189 ], [ 0.000000e+00, %3135 ]
  %3223 = phi float [ %3217, %3189 ], [ 0.000000e+00, %3135 ]
  %3224 = call float @dx.op.dot3.f32(i32 55, float %3219, float %3220, float %3221, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %3225 = fmul fast float %3224, %3224
  %3226 = fmul fast float %3225, 0x3FEE471020000000
  %3227 = fadd fast float %3226, 0xBFD42F6020000000
  %3228 = fmul fast float %3184, 0x3FD20DD760000000
  %3229 = fmul fast float %3227, %3223
  %3230 = fmul fast float %3222, 0x3FDF454380000000
  %3231 = fmul fast float %3230, %3224
  %3232 = fadd fast float %3231, %3228
  %3233 = fadd fast float %3232, %3229
  %3234 = call float @dx.op.dot3.f32(i32 55, float %3219, float %3220, float %3221, float %2184, float %2185, float %2186)  ; Dot3(ax,ay,az,bx,by,bz)
  %3235 = fmul fast float %3234, 0x3FDF454380000000
  %3236 = fmul fast float %3234, %3234
  %3237 = fmul fast float %3236, 0x3FEE471020000000
  %3238 = fadd fast float %3237, 0xBFD42F6020000000
  %3239 = call float @dx.op.dot3.f32(i32 55, float %3184, float %3222, float %3223, float 0x3FD20DD760000000, float %3235, float %3238)  ; Dot3(ax,ay,az,bx,by,bz)
  %3240 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3155)  ; FMax(a,b)
  %3241 = call float @dx.op.dot3.f32(i32 55, float %3168, float %3171, float %3174, float %3168, float %3171, float %3174)  ; Dot3(ax,ay,az,bx,by,bz)
  %3242 = fcmp fast oeq float %3241, 0.000000e+00
  %3243 = fcmp fast oeq float %3240, 0.000000e+00
  %3244 = or i1 %3243, %3242
  br i1 %3244, label %3274, label %3245

; <label>:3245                                    ; preds = %3218
  %3246 = fsub fast float -0.000000e+00, %3174
  %3247 = fsub fast float -0.000000e+00, %3168
  %3248 = call float @dx.op.unary.f32(i32 24, float %3241)  ; Sqrt(value)
  %3249 = fdiv fast float %3248, %3240
  %3250 = fcmp fast ogt float %3249, 0x3FFB6F8900000000
  %3251 = select i1 %3250, float 0x3FFB6F8900000000, float %3249
  %3252 = fmul fast float %3251, 0x3FE8A23460000000
  %3253 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  %3254 = call float @dx.op.binary.f32(i32 35, float %3251, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3255 = fmul fast float %3253, %3240
  %3256 = fmul fast float %3254, 0x3FF279A740000000
  %3257 = fadd fast float %3256, -1.000000e+00
  %3258 = call float @dx.op.dot3.f32(i32 55, float %3246, float %3247, float %3171, float %3246, float %3247, float %3171)  ; Dot3(ax,ay,az,bx,by,bz)
  %3259 = call float @dx.op.unary.f32(i32 25, float %3258)  ; Rsqrt(value)
  %3260 = fmul fast float %3259, %3246
  %3261 = fmul fast float %3259, %3247
  %3262 = fmul fast float %3259, %3171
  %3263 = fmul fast float %3257, %3257
  %3264 = fsub fast float 1.000000e+00, %3263
  %3265 = fmul fast float %3254, 0x40005F8BE0000000
  %3266 = fsub fast float 0x400C5BF8A0000000, %3265
  %3267 = fdiv fast float %3255, %3266
  %3268 = fmul fast float %3267, 0x3FEE31C3C0000000
  %3269 = fmul fast float %3268, %3264
  %3270 = fmul fast float %3254, 0x3FDACB7480000000
  %3271 = fadd fast float %3270, 0xBFD7347680000000
  %3272 = fmul fast float %3271, %3267
  %3273 = fmul fast float %3272, %3264
  br label %3274

; <label>:3274                                    ; preds = %3245, %3218
  %3275 = phi float [ %3260, %3245 ], [ 0.000000e+00, %3218 ]
  %3276 = phi float [ %3261, %3245 ], [ 0.000000e+00, %3218 ]
  %3277 = phi float [ %3262, %3245 ], [ 0.000000e+00, %3218 ]
  %3278 = phi float [ %3269, %3245 ], [ 0.000000e+00, %3218 ]
  %3279 = phi float [ %3273, %3245 ], [ 0.000000e+00, %3218 ]
  %3280 = call float @dx.op.dot3.f32(i32 55, float %3275, float %3276, float %3277, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %3281 = fmul fast float %3280, %3280
  %3282 = fmul fast float %3281, 0x3FEE471020000000
  %3283 = fadd fast float %3282, 0xBFD42F6020000000
  %3284 = fmul fast float %3240, 0x3FD20DD760000000
  %3285 = fmul fast float %3283, %3279
  %3286 = fmul fast float %3278, 0x3FDF454380000000
  %3287 = fmul fast float %3286, %3280
  %3288 = fadd fast float %3287, %3284
  %3289 = fadd fast float %3288, %3285
  %3290 = call float @dx.op.dot3.f32(i32 55, float %3275, float %3276, float %3277, float %2184, float %2185, float %2186)  ; Dot3(ax,ay,az,bx,by,bz)
  %3291 = fmul fast float %3290, 0x3FDF454380000000
  %3292 = fmul fast float %3290, %3290
  %3293 = fmul fast float %3292, 0x3FEE471020000000
  %3294 = fadd fast float %3293, 0xBFD42F6020000000
  %3295 = call float @dx.op.dot3.f32(i32 55, float %3240, float %3278, float %3279, float 0x3FD20DD760000000, float %3291, float %3294)  ; Dot3(ax,ay,az,bx,by,bz)
  %3296 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3156)  ; FMax(a,b)
  %3297 = call float @dx.op.dot3.f32(i32 55, float %3177, float %3180, float %3183, float %3177, float %3180, float %3183)  ; Dot3(ax,ay,az,bx,by,bz)
  %3298 = fcmp fast oeq float %3297, 0.000000e+00
  %3299 = fcmp fast oeq float %3296, 0.000000e+00
  %3300 = or i1 %3299, %3298
  br i1 %3300, label %3330, label %3301

; <label>:3301                                    ; preds = %3274
  %3302 = fsub fast float -0.000000e+00, %3183
  %3303 = fsub fast float -0.000000e+00, %3177
  %3304 = call float @dx.op.unary.f32(i32 24, float %3297)  ; Sqrt(value)
  %3305 = fdiv fast float %3304, %3296
  %3306 = fcmp fast ogt float %3305, 0x3FFB6F8900000000
  %3307 = select i1 %3306, float 0x3FFB6F8900000000, float %3305
  %3308 = fmul fast float %3307, 0x3FE8A23460000000
  %3309 = call float @dx.op.unary.f32(i32 7, float %3308)  ; Saturate(value)
  %3310 = call float @dx.op.binary.f32(i32 35, float %3307, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3311 = fmul fast float %3309, %3296
  %3312 = fmul fast float %3310, 0x3FF279A740000000
  %3313 = fadd fast float %3312, -1.000000e+00
  %3314 = call float @dx.op.dot3.f32(i32 55, float %3302, float %3303, float %3180, float %3302, float %3303, float %3180)  ; Dot3(ax,ay,az,bx,by,bz)
  %3315 = call float @dx.op.unary.f32(i32 25, float %3314)  ; Rsqrt(value)
  %3316 = fmul fast float %3315, %3302
  %3317 = fmul fast float %3315, %3303
  %3318 = fmul fast float %3315, %3180
  %3319 = fmul fast float %3313, %3313
  %3320 = fsub fast float 1.000000e+00, %3319
  %3321 = fmul fast float %3310, 0x40005F8BE0000000
  %3322 = fsub fast float 0x400C5BF8A0000000, %3321
  %3323 = fdiv fast float %3311, %3322
  %3324 = fmul fast float %3323, 0x3FEE31C3C0000000
  %3325 = fmul fast float %3324, %3320
  %3326 = fmul fast float %3310, 0x3FDACB7480000000
  %3327 = fadd fast float %3326, 0xBFD7347680000000
  %3328 = fmul fast float %3327, %3323
  %3329 = fmul fast float %3328, %3320
  br label %3330

; <label>:3330                                    ; preds = %3301, %3274
  %3331 = phi float [ %3316, %3301 ], [ 0.000000e+00, %3274 ]
  %3332 = phi float [ %3317, %3301 ], [ 0.000000e+00, %3274 ]
  %3333 = phi float [ %3318, %3301 ], [ 0.000000e+00, %3274 ]
  %3334 = phi float [ %3325, %3301 ], [ 0.000000e+00, %3274 ]
  %3335 = phi float [ %3329, %3301 ], [ 0.000000e+00, %3274 ]
  %3336 = call float @dx.op.dot3.f32(i32 55, float %3331, float %3332, float %3333, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %3337 = fmul fast float %3336, %3336
  %3338 = fmul fast float %3337, 0x3FEE471020000000
  %3339 = fadd fast float %3338, 0xBFD42F6020000000
  %3340 = fmul fast float %3296, 0x3FD20DD760000000
  %3341 = fmul fast float %3339, %3335
  %3342 = fmul fast float %3334, 0x3FDF454380000000
  %3343 = fmul fast float %3342, %3336
  %3344 = fadd fast float %3343, %3340
  %3345 = fadd fast float %3344, %3341
  %3346 = call float @dx.op.dot3.f32(i32 55, float %3331, float %3332, float %3333, float %2184, float %2185, float %2186)  ; Dot3(ax,ay,az,bx,by,bz)
  %3347 = fmul fast float %3346, 0x3FDF454380000000
  %3348 = fmul fast float %3346, %3346
  %3349 = fmul fast float %3348, 0x3FEE471020000000
  %3350 = fadd fast float %3349, 0xBFD42F6020000000
  %3351 = call float @dx.op.dot3.f32(i32 55, float %3296, float %3334, float %3335, float 0x3FD20DD760000000, float %3347, float %3350)  ; Dot3(ax,ay,az,bx,by,bz)
  %3352 = call float @dx.op.binary.f32(i32 35, float %3233, float 0.000000e+00)  ; FMax(a,b)
  %3353 = call float @dx.op.binary.f32(i32 35, float %3289, float 0.000000e+00)  ; FMax(a,b)
  %3354 = call float @dx.op.binary.f32(i32 35, float %3345, float 0.000000e+00)  ; FMax(a,b)
  %3355 = call float @dx.op.binary.f32(i32 35, float %3239, float 0.000000e+00)  ; FMax(a,b)
  %3356 = call float @dx.op.binary.f32(i32 35, float %3295, float 0.000000e+00)  ; FMax(a,b)
  %3357 = call float @dx.op.binary.f32(i32 35, float %3351, float 0.000000e+00)  ; FMax(a,b)
  %3358 = fsub fast float %2554, %3352
  %3359 = fsub fast float %2555, %3353
  %3360 = fsub fast float %2556, %3354
  %3361 = fmul fast float %3358, %2235
  %3362 = fmul fast float %3359, %2235
  %3363 = fmul fast float %3360, %2235
  %3364 = fadd fast float %3361, %3352
  %3365 = fadd fast float %3362, %3353
  %3366 = fadd fast float %3363, %3354
  %3367 = fsub fast float %2551, %3355
  %3368 = fsub fast float %2552, %3356
  %3369 = fsub fast float %2553, %3357
  %3370 = fmul fast float %3367, %2235
  %3371 = fmul fast float %3368, %2235
  %3372 = fmul fast float %3369, %2235
  %3373 = fadd fast float %3370, %3355
  %3374 = fadd fast float %3371, %3356
  %3375 = fadd fast float %3372, %3357
  br label %3376

; <label>:3376                                    ; preds = %3330, %2550
  %3377 = phi float [ %3373, %3330 ], [ %2551, %2550 ]
  %3378 = phi float [ %3374, %3330 ], [ %2552, %2550 ]
  %3379 = phi float [ %3375, %3330 ], [ %2553, %2550 ]
  %3380 = phi float [ %3364, %3330 ], [ %2554, %2550 ]
  %3381 = phi float [ %3365, %3330 ], [ %2555, %2550 ]
  %3382 = phi float [ %3366, %3330 ], [ %2556, %2550 ]
  %3383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3384 = extractvalue %dx.types.CBufRet.f32 %3383, 0
  %3385 = call float @dx.op.binary.f32(i32 36, float %2167, float %3384)  ; FMin(a,b)
  %3386 = fsub fast float 1.000000e+00, %2187
  %3387 = fmul fast float %3385, %3386
  %3388 = fsub fast float 1.000000e+00, %3387
  %3389 = bitcast float %3388 to i32
  %3390 = sub nsw i32 2129859010, %3389
  %3391 = bitcast i32 %3390 to float
  %3392 = call float @dx.op.binary.f32(i32 36, float %2168, float %3384)  ; FMin(a,b)
  %3393 = fmul fast float %3392, %3386
  %3394 = fsub fast float 1.000000e+00, %3393
  %3395 = bitcast float %3394 to i32
  %3396 = sub nsw i32 2129859010, %3395
  %3397 = bitcast i32 %3396 to float
  %3398 = call float @dx.op.binary.f32(i32 36, float %2169, float %3384)  ; FMin(a,b)
  %3399 = fmul fast float %3398, %3386
  %3400 = fsub fast float 1.000000e+00, %3399
  %3401 = bitcast float %3400 to i32
  %3402 = sub nsw i32 2129859010, %3401
  %3403 = bitcast i32 %3402 to float
  %3404 = fmul fast float %3380, %2187
  %3405 = fmul fast float %3404, %3391
  %3406 = fmul fast float %3381, %2187
  %3407 = fmul fast float %3406, %3397
  %3408 = fmul fast float %3382, %2187
  %3409 = fmul fast float %3408, %3403
  %3410 = call float @dx.op.binary.f32(i32 36, float %2164, float %3384)  ; FMin(a,b)
  %3411 = fmul fast float %3410, %3386
  %3412 = fsub fast float 1.000000e+00, %3411
  %3413 = bitcast float %3412 to i32
  %3414 = sub nsw i32 2129859010, %3413
  %3415 = bitcast i32 %3414 to float
  %3416 = call float @dx.op.binary.f32(i32 36, float %2165, float %3384)  ; FMin(a,b)
  %3417 = fmul fast float %3416, %3386
  %3418 = fsub fast float 1.000000e+00, %3417
  %3419 = bitcast float %3418 to i32
  %3420 = sub nsw i32 2129859010, %3419
  %3421 = bitcast i32 %3420 to float
  %3422 = call float @dx.op.binary.f32(i32 36, float %2176, float %3384)  ; FMin(a,b)
  %3423 = fmul fast float %3422, %3386
  %3424 = fsub fast float 1.000000e+00, %3423
  %3425 = bitcast float %3424 to i32
  %3426 = sub nsw i32 2129859010, %3425
  %3427 = bitcast i32 %3426 to float
  %3428 = fmul fast float %3377, %2187
  %3429 = fmul fast float %3428, %3415
  %3430 = fmul fast float %3378, %2187
  %3431 = fmul fast float %3430, %3421
  %3432 = fmul fast float %3379, %2187
  %3433 = fmul fast float %3432, %3427
  %3434 = call float @dx.op.dot3.f32(i32 55, float %3405, float %3407, float %3409, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3435 = select i1 %229, float 0.000000e+00, float %3405
  %3436 = select i1 %229, float %3434, float %3407
  %3437 = select i1 %229, float 0.000000e+00, float %3409
  %3438 = call float @dx.op.dot3.f32(i32 55, float %3429, float %3431, float %3433, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3439 = select i1 %229, float 0.000000e+00, float %3429
  %3440 = select i1 %229, float %3438, float %3431
  %3441 = select i1 %229, float 0.000000e+00, float %3433
  %3442 = fmul fast float %2178, 9.843750e-01
  %3443 = fmul fast float %2173, 9.843750e-01
  %3444 = fadd fast float %3442, 7.812500e-03
  %3445 = fadd fast float %3443, 7.812500e-03
  %3446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %3444, float %3445, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3447 = extractvalue %dx.types.ResRet.f32 %3446, 2
  %3448 = extractvalue %dx.types.ResRet.f32 %3446, 3
  %3449 = fmul fast float %3447, %2164
  %3450 = fmul fast float %3447, %2165
  %3451 = fmul fast float %3447, %2176
  %3452 = fadd fast float %3449, %3448
  %3453 = fadd fast float %3450, %3448
  %3454 = fadd fast float %3451, %3448
  %3455 = fcmp fast ogt float %1541, 0.000000e+00
  br i1 %3455, label %3456, label %3482

; <label>:3456                                    ; preds = %3376
  %3457 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1541, float %2178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3458 = extractvalue %dx.types.ResRet.f32 %3457, 0
  %3459 = extractvalue %dx.types.ResRet.f32 %3457, 1
  %3460 = extractvalue %dx.types.ResRet.f32 %3457, 2
  %3461 = fadd fast float %3458, -5.000000e-01
  %3462 = fadd fast float %3459, -5.000000e-01
  %3463 = fadd fast float %3460, -5.000000e-01
  %3464 = fsub fast float 1.000000e+00, %2164
  %3465 = fsub fast float 1.000000e+00, %2165
  %3466 = fsub fast float 1.000000e+00, %2176
  %3467 = fmul fast float %2164, 4.000000e+00
  %3468 = fmul fast float %3467, %3464
  %3469 = fmul fast float %3468, %3461
  %3470 = fmul fast float %2165, 4.000000e+00
  %3471 = fmul fast float %3470, %3465
  %3472 = fmul fast float %3471, %3462
  %3473 = fmul fast float %2176, 4.000000e+00
  %3474 = fmul fast float %3473, %3466
  %3475 = fmul fast float %3474, %3463
  %3476 = fadd fast float %3469, %3452
  %3477 = fadd fast float %3472, %3453
  %3478 = fadd fast float %3475, %3454
  %3479 = call float @dx.op.unary.f32(i32 7, float %3476)  ; Saturate(value)
  %3480 = call float @dx.op.unary.f32(i32 7, float %3477)  ; Saturate(value)
  %3481 = call float @dx.op.unary.f32(i32 7, float %3478)  ; Saturate(value)
  br label %3482

; <label>:3482                                    ; preds = %3456, %3376
  %3483 = phi float [ %3479, %3456 ], [ %3452, %3376 ]
  %3484 = phi float [ %3480, %3456 ], [ %3453, %3376 ]
  %3485 = phi float [ %3481, %3456 ], [ %3454, %3376 ]
  %3486 = call float @dx.op.binary.f32(i32 35, float %3484, float %3485)  ; FMax(a,b)
  %3487 = call float @dx.op.binary.f32(i32 35, float %3483, float %3486)  ; FMax(a,b)
  %3488 = fsub fast float 1.000000e+00, %3487
  %3489 = fmul fast float %3488, %3435
  %3490 = fmul fast float %3488, %3436
  %3491 = fmul fast float %3488, %3437
  %3492 = call float @dx.op.dot3.f32(i32 55, float %2167, float %2168, float %2169, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3493 = fcmp fast ogt float %3492, 0x3E7FF19E20000000
  %3494 = fdiv fast float 1.000000e+00, %3492
  %3495 = select i1 %3493, float %3494, float 0.000000e+00
  %3496 = fmul fast float %3495, %2167
  %3497 = fmul fast float %3495, %2168
  %3498 = fmul fast float %3495, %2169
  %3499 = fadd fast float %3496, -1.000000e+00
  %3500 = fadd fast float %3497, -1.000000e+00
  %3501 = fadd fast float %3498, -1.000000e+00
  %3502 = fmul fast float %3499, 5.000000e-01
  %3503 = fmul fast float %3500, 5.000000e-01
  %3504 = fmul fast float %3501, 5.000000e-01
  %3505 = fadd fast float %3502, 1.000000e+00
  %3506 = fadd fast float %3503, 1.000000e+00
  %3507 = fadd fast float %3504, 1.000000e+00
  %3508 = fmul fast float %3483, %3439
  %3509 = fmul fast float %3484, %3440
  %3510 = fmul fast float %3485, %3441
  %3511 = fsub fast float 1.000000e+00, %2178
  %3512 = bitcast float %3511 to i32
  %3513 = sitofp i32 %3512 to float
  %3514 = fmul fast float %3513, 5.000000e+00
  %3515 = fadd fast float %3514, 0xC1EFBF8940000000
  %3516 = fptosi float %3515 to i32
  %3517 = bitcast i32 %3516 to float
  %3518 = fmul fast float %3517, %1540
  %3519 = fmul fast float %3435, %3518
  %3520 = fmul fast float %3519, %3488
  %3521 = fmul fast float %3520, %3505
  %3522 = fmul fast float %3436, %3518
  %3523 = fmul fast float %3522, %3488
  %3524 = fmul fast float %3523, %3506
  %3525 = fmul fast float %3437, %3518
  %3526 = fmul fast float %3525, %3488
  %3527 = fmul fast float %3526, %3507
  %3528 = fmul fast float %3489, %1561
  %3529 = fmul fast float %3490, %1561
  %3530 = fmul fast float %3491, %1561
  %3531 = fadd fast float %3508, %1542
  %3532 = fadd fast float %3531, %3521
  %3533 = fmul fast float %3532, %1561
  %3534 = fadd fast float %3509, %1543
  %3535 = fadd fast float %3534, %3524
  %3536 = fmul fast float %3535, %1561
  %3537 = fadd fast float %3510, %1544
  %3538 = fadd fast float %3537, %3527
  %3539 = fmul fast float %3538, %1561
  %3540 = bitcast i32 %2190 to float
  %3541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3542 = extractvalue %dx.types.CBufRet.f32 %3541, 3
  %3543 = fcmp fast oeq float %3542, 0.000000e+00
  br i1 %3543, label %4607, label %3544

; <label>:3544                                    ; preds = %3482
  %3545 = extractvalue %dx.types.CBufRet.f32 %3541, 0
  %3546 = extractvalue %dx.types.CBufRet.f32 %3541, 1
  %3547 = extractvalue %dx.types.CBufRet.f32 %3541, 2
  %3548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3549 = extractvalue %dx.types.CBufRet.f32 %3548, 0
  %3550 = extractvalue %dx.types.CBufRet.f32 %3548, 1
  %3551 = extractvalue %dx.types.CBufRet.f32 %3548, 2
  %3552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3553 = extractvalue %dx.types.CBufRet.f32 %3552, 0
  %3554 = extractvalue %dx.types.CBufRet.f32 %3552, 1
  %3555 = call float @dx.op.dot3.f32(i32 55, float %3549, float %3550, float %3551, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3556 = select i1 %229, float %3553, float %3549
  %3557 = select i1 %229, float %3555, float %3550
  %3558 = select i1 %229, float %3554, float %3551
  %3559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3560 = extractvalue %dx.types.CBufRet.f32 %3559, 2
  %3561 = fmul fast float %3560, %70
  %3562 = fmul fast float %3560, %71
  %3563 = fmul fast float %3560, %72
  %3564 = fadd fast float %3561, %138
  %3565 = fadd fast float %3562, %139
  %3566 = fadd fast float %3563, %140
  %3567 = fcmp fast olt float %3542, 0.000000e+00
  br i1 %3567, label %4189, label %3568

; <label>:3568                                    ; preds = %3544
  %3569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3570 = extractvalue %dx.types.CBufRet.f32 %3569, 0
  %3571 = extractvalue %dx.types.CBufRet.f32 %3569, 1
  %3572 = extractvalue %dx.types.CBufRet.f32 %3569, 2
  %3573 = extractvalue %dx.types.CBufRet.f32 %3569, 3
  %3574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3575 = extractvalue %dx.types.CBufRet.f32 %3574, 0
  %3576 = extractvalue %dx.types.CBufRet.f32 %3574, 1
  %3577 = extractvalue %dx.types.CBufRet.f32 %3574, 2
  %3578 = extractvalue %dx.types.CBufRet.f32 %3574, 3
  %3579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3580 = extractvalue %dx.types.CBufRet.f32 %3579, 0
  %3581 = extractvalue %dx.types.CBufRet.f32 %3579, 1
  %3582 = extractvalue %dx.types.CBufRet.f32 %3579, 2
  %3583 = extractvalue %dx.types.CBufRet.f32 %3579, 3
  %3584 = fmul fast float %3570, %3564
  %3585 = call float @dx.op.tertiary.f32(i32 46, float %3565, float %3571, float %3584)  ; FMad(a,b,c)
  %3586 = call float @dx.op.tertiary.f32(i32 46, float %3566, float %3572, float %3585)  ; FMad(a,b,c)
  %3587 = fadd fast float %3586, %3573
  %3588 = fmul fast float %3575, %3564
  %3589 = call float @dx.op.tertiary.f32(i32 46, float %3565, float %3576, float %3588)  ; FMad(a,b,c)
  %3590 = call float @dx.op.tertiary.f32(i32 46, float %3566, float %3577, float %3589)  ; FMad(a,b,c)
  %3591 = fadd fast float %3590, %3578
  %3592 = fmul fast float %3580, %3564
  %3593 = call float @dx.op.tertiary.f32(i32 46, float %3565, float %3581, float %3592)  ; FMad(a,b,c)
  %3594 = call float @dx.op.tertiary.f32(i32 46, float %3566, float %3582, float %3593)  ; FMad(a,b,c)
  %3595 = fadd fast float %3594, %3583
  %3596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3597 = extractvalue %dx.types.CBufRet.f32 %3596, 0
  %3598 = extractvalue %dx.types.CBufRet.f32 %3596, 1
  %3599 = extractvalue %dx.types.CBufRet.f32 %3596, 3
  %3600 = fmul fast float %3599, %3587
  %3601 = fmul fast float %3599, %3591
  %3602 = fadd fast float %3600, %3597
  %3603 = fadd fast float %3601, %3598
  %3604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3605 = extractvalue %dx.types.CBufRet.f32 %3604, 0
  %3606 = extractvalue %dx.types.CBufRet.f32 %3604, 1
  %3607 = extractvalue %dx.types.CBufRet.f32 %3604, 3
  %3608 = fmul fast float %3607, %3587
  %3609 = fmul fast float %3607, %3591
  %3610 = fadd fast float %3608, %3605
  %3611 = fadd fast float %3609, %3606
  %3612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3613 = extractvalue %dx.types.CBufRet.f32 %3612, 1
  %3614 = fsub fast float %3613, %3595
  %3615 = extractvalue %dx.types.CBufRet.f32 %3612, 2
  %3616 = fmul fast float %3614, %3615
  %3617 = fsub fast float 1.000000e+00, %3616
  %3618 = call float @dx.op.unary.f32(i32 7, float %3617)  ; Saturate(value)
  %3619 = extractvalue %dx.types.CBufRet.f32 %3604, 2
  %3620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3621 = extractvalue %dx.types.CBufRet.f32 %3620, 2
  %3622 = fadd fast float %3621, %3619
  %3623 = fcmp fast ogt float %3622, 0.000000e+00
  br i1 %3623, label %3624, label %3648

; <label>:3624                                    ; preds = %3568
  %3625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3626 = extractvalue %dx.types.CBufRet.f32 %3625, 0
  %3627 = extractvalue %dx.types.CBufRet.f32 %3625, 1
  %3628 = fsub fast float %3610, %3626
  %3629 = fsub fast float %3611, %3627
  %3630 = fcmp fast olt float %3628, 0.000000e+00
  %3631 = fcmp fast olt float %3629, 0.000000e+00
  %3632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3633 = extractvalue %dx.types.CBufRet.f32 %3632, 0
  %3634 = extractvalue %dx.types.CBufRet.f32 %3632, 1
  %3635 = extractvalue %dx.types.CBufRet.f32 %3632, 2
  %3636 = extractvalue %dx.types.CBufRet.f32 %3632, 3
  %3637 = select i1 %3630, float %3633, float %3635
  %3638 = select i1 %3631, float %3634, float %3636
  %3639 = fmul fast float %3637, %3628
  %3640 = fmul fast float %3638, %3629
  %3641 = call float @dx.op.unary.f32(i32 6, float %3639)  ; FAbs(value)
  %3642 = call float @dx.op.unary.f32(i32 6, float %3640)  ; FAbs(value)
  %3643 = extractvalue %dx.types.CBufRet.f32 %3559, 0
  %3644 = call float @dx.op.binary.f32(i32 35, float %3641, float %3642)  ; FMax(a,b)
  %3645 = fsub fast float %3643, %3644
  %3646 = call float @dx.op.unary.f32(i32 7, float %3645)  ; Saturate(value)
  %3647 = fmul fast float %3646, %3618
  br label %3648

; <label>:3648                                    ; preds = %3624, %3568
  %3649 = phi float [ %3647, %3624 ], [ 0.000000e+00, %3568 ]
  %3650 = extractvalue %dx.types.CBufRet.f32 %3596, 2
  %3651 = extractvalue %dx.types.CBufRet.f32 %3620, 1
  %3652 = fadd fast float %3651, %3650
  %3653 = fcmp fast ogt float %3652, 0.000000e+00
  %3654 = extractvalue %dx.types.CBufRet.f32 %3559, 0
  br i1 %3653, label %3655, label %3678

; <label>:3655                                    ; preds = %3648
  %3656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3657 = extractvalue %dx.types.CBufRet.f32 %3656, 0
  %3658 = extractvalue %dx.types.CBufRet.f32 %3656, 1
  %3659 = fsub fast float %3602, %3657
  %3660 = fsub fast float %3603, %3658
  %3661 = fcmp fast olt float %3659, 0.000000e+00
  %3662 = fcmp fast olt float %3660, 0.000000e+00
  %3663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3664 = extractvalue %dx.types.CBufRet.f32 %3663, 0
  %3665 = extractvalue %dx.types.CBufRet.f32 %3663, 1
  %3666 = extractvalue %dx.types.CBufRet.f32 %3663, 2
  %3667 = extractvalue %dx.types.CBufRet.f32 %3663, 3
  %3668 = select i1 %3661, float %3664, float %3666
  %3669 = select i1 %3662, float %3665, float %3667
  %3670 = fmul fast float %3668, %3659
  %3671 = fmul fast float %3669, %3660
  %3672 = call float @dx.op.unary.f32(i32 6, float %3670)  ; FAbs(value)
  %3673 = call float @dx.op.unary.f32(i32 6, float %3671)  ; FAbs(value)
  %3674 = call float @dx.op.binary.f32(i32 35, float %3672, float %3673)  ; FMax(a,b)
  %3675 = fsub fast float %3654, %3674
  %3676 = call float @dx.op.unary.f32(i32 7, float %3675)  ; Saturate(value)
  %3677 = fmul fast float %3676, %3618
  br label %3678

; <label>:3678                                    ; preds = %3655, %3648
  %3679 = phi float [ %3677, %3655 ], [ 0.000000e+00, %3648 ]
  %3680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3681 = extractvalue %dx.types.CBufRet.f32 %3680, 1
  %3682 = call float @dx.op.unary.f32(i32 7, float %3681)  ; Saturate(value)
  %3683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3684 = extractvalue %dx.types.CBufRet.f32 %3683, 0
  %3685 = extractvalue %dx.types.CBufRet.f32 %3683, 1
  %3686 = fsub fast float %3587, %3684
  %3687 = fsub fast float %3591, %3685
  %3688 = fcmp fast olt float %3686, 0.000000e+00
  %3689 = fcmp fast olt float %3687, 0.000000e+00
  %3690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3691 = extractvalue %dx.types.CBufRet.f32 %3690, 0
  %3692 = extractvalue %dx.types.CBufRet.f32 %3690, 1
  %3693 = extractvalue %dx.types.CBufRet.f32 %3690, 2
  %3694 = extractvalue %dx.types.CBufRet.f32 %3690, 3
  %3695 = select i1 %3688, float %3691, float %3693
  %3696 = select i1 %3689, float %3692, float %3694
  %3697 = fmul fast float %3695, %3686
  %3698 = fmul fast float %3696, %3687
  %3699 = call float @dx.op.unary.f32(i32 6, float %3697)  ; FAbs(value)
  %3700 = call float @dx.op.unary.f32(i32 6, float %3698)  ; FAbs(value)
  %3701 = call float @dx.op.binary.f32(i32 35, float %3699, float %3700)  ; FMax(a,b)
  %3702 = fsub fast float %3654, %3701
  %3703 = call float @dx.op.unary.f32(i32 7, float %3702)  ; Saturate(value)
  %3704 = call float @dx.op.binary.f32(i32 36, float %3703, float %3682)  ; FMin(a,b)
  %3705 = fmul fast float %3704, %3618
  %3706 = fsub fast float %3679, %3705
  %3707 = fsub fast float %3649, %3679
  %3708 = fsub fast float %3707, %3705
  %3709 = call float @dx.op.binary.f32(i32 35, float %3679, float %3649)  ; FMax(a,b)
  %3710 = call float @dx.op.binary.f32(i32 35, float %3705, float %3709)  ; FMax(a,b)
  %3711 = fcmp fast olt float %3710, 1.000000e+00
  br i1 %3711, label %3712, label %4110, !dx.controlflow.hints !106

; <label>:3712                                    ; preds = %3678
  %3713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3714 = extractvalue %dx.types.CBufRet.f32 %3713, 0
  %3715 = fcmp fast une float %3714, 0.000000e+00
  br i1 %3715, label %3716, label %4110, !dx.controlflow.hints !107

; <label>:3716                                    ; preds = %3712
  %3717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3718 = extractvalue %dx.types.CBufRet.f32 %3717, 0
  %3719 = extractvalue %dx.types.CBufRet.f32 %3717, 1
  %3720 = extractvalue %dx.types.CBufRet.f32 %3717, 2
  %3721 = extractvalue %dx.types.CBufRet.f32 %3717, 3
  %3722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3723 = extractvalue %dx.types.CBufRet.f32 %3722, 0
  %3724 = extractvalue %dx.types.CBufRet.f32 %3722, 1
  %3725 = extractvalue %dx.types.CBufRet.f32 %3722, 2
  %3726 = extractvalue %dx.types.CBufRet.f32 %3722, 3
  %3727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3728 = extractvalue %dx.types.CBufRet.f32 %3727, 0
  %3729 = extractvalue %dx.types.CBufRet.f32 %3727, 1
  %3730 = extractvalue %dx.types.CBufRet.f32 %3727, 2
  %3731 = extractvalue %dx.types.CBufRet.f32 %3727, 3
  %3732 = fmul fast float %3718, %3564
  %3733 = call float @dx.op.tertiary.f32(i32 46, float %3565, float %3719, float %3732)  ; FMad(a,b,c)
  %3734 = call float @dx.op.tertiary.f32(i32 46, float %3566, float %3720, float %3733)  ; FMad(a,b,c)
  %3735 = fadd fast float %3734, %3721
  %3736 = fmul fast float %3723, %3564
  %3737 = call float @dx.op.tertiary.f32(i32 46, float %3565, float %3724, float %3736)  ; FMad(a,b,c)
  %3738 = call float @dx.op.tertiary.f32(i32 46, float %3566, float %3725, float %3737)  ; FMad(a,b,c)
  %3739 = fadd fast float %3738, %3726
  %3740 = fmul fast float %3728, %3564
  %3741 = call float @dx.op.tertiary.f32(i32 46, float %3565, float %3729, float %3740)  ; FMad(a,b,c)
  %3742 = call float @dx.op.tertiary.f32(i32 46, float %3566, float %3730, float %3741)  ; FMad(a,b,c)
  %3743 = fadd fast float %3742, %3731
  %3744 = fcmp fast oge float %3735, 1.000000e+00
  %3745 = fcmp fast oge float %3739, 1.000000e+00
  %3746 = or i1 %3744, %3745
  %3747 = fcmp fast olt float %3735, 0.000000e+00
  %3748 = fcmp fast olt float %3739, 0.000000e+00
  %3749 = or i1 %3747, %3748
  %3750 = or i1 %3746, %3749
  br i1 %3750, label %4110, label %3751, !dx.controlflow.hints !108

; <label>:3751                                    ; preds = %3716
  %3752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3753 = extractvalue %dx.types.CBufRet.f32 %3752, 0
  %3754 = extractvalue %dx.types.CBufRet.f32 %3752, 1
  %3755 = extractvalue %dx.types.CBufRet.f32 %3752, 2
  %3756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3757 = extractvalue %dx.types.CBufRet.i32 %3756, 2
  %3758 = uitofp i32 %3757 to float
  %3759 = extractvalue %dx.types.CBufRet.i32 %3756, 3
  %3760 = uitofp i32 %3759 to float
  %3761 = extractvalue %dx.types.CBufRet.f32 %3752, 3
  %3762 = fmul fast float %3761, 2.000000e+00
  %3763 = fsub fast float %3735, %3753
  %3764 = fsub fast float %3739, %3754
  %3765 = fmul fast float %3762, %3763
  %3766 = fmul fast float %3762, %3764
  %3767 = fdiv fast float 1.000000e+00, %3547
  %3768 = fmul fast float %3766, %3767
  %3769 = call float @dx.op.unary.f32(i32 6, float %3768)  ; FAbs(value)
  %3770 = fmul fast float %3755, %3566
  %3771 = fmul fast float %3770, %3762
  %3772 = call float @dx.op.unary.f32(i32 6, float %3771)  ; FAbs(value)
  %3773 = call float @dx.op.unary.f32(i32 6, float %3765)  ; FAbs(value)
  %3774 = call float @dx.op.binary.f32(i32 35, float %3772, float %3769)  ; FMax(a,b)
  %3775 = call float @dx.op.binary.f32(i32 35, float %3773, float %3774)  ; FMax(a,b)
  %3776 = fmul fast float %3775, 2.000000e+00
  %3777 = call float @dx.op.unary.f32(i32 23, float %3776)  ; Log(value)
  %3778 = call float @dx.op.binary.f32(i32 35, float %3777, float %3758)  ; FMax(a,b)
  %3779 = call float @dx.op.unary.f32(i32 22, float %3778)  ; Frc(value)
  %3780 = fadd fast float %3779, 0xBFEA666660000000
  %3781 = fmul fast float %3780, 8.000000e+00
  %3782 = call float @dx.op.unary.f32(i32 7, float %3781)  ; Saturate(value)
  %3783 = call float @dx.op.unary.f32(i32 27, float %3778)  ; Round_ni(value)
  %3784 = fadd fast float %3783, %3782
  %3785 = call float @dx.op.binary.f32(i32 36, float %3784, float %3760)  ; FMin(a,b)
  %3786 = call float @dx.op.unary.f32(i32 27, float %3785)  ; Round_ni(value)
  %3787 = fsub fast float -0.000000e+00, %3786
  %3788 = call float @dx.op.unary.f32(i32 21, float %3787)  ; Exp(value)
  %3789 = fmul fast float %3788, %3762
  %3790 = fmul fast float %3789, %3735
  %3791 = fmul fast float %3789, %3739
  %3792 = fmul fast float %3790, 2.500000e-01
  %3793 = fmul fast float %3791, 2.500000e-01
  %3794 = fadd fast float %3792, 5.000000e-01
  %3795 = fadd fast float %3793, 5.000000e-01
  %3796 = fsub fast float %3760, %3758
  %3797 = fptoui float %3796 to i32
  %3798 = add i32 %3797, 320
  %3799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %3798)  ; CBufferLoadLegacy(handle,regIndex)
  %3800 = extractvalue %dx.types.CBufRet.f32 %3799, 0
  %3801 = extractvalue %dx.types.CBufRet.f32 %3799, 1
  %3802 = fcmp fast une float %3785, %3760
  %3803 = fsub fast float %3735, %3800
  %3804 = fsub fast float %3739, %3801
  %3805 = call float @dx.op.unary.f32(i32 6, float %3803)  ; FAbs(value)
  %3806 = call float @dx.op.unary.f32(i32 6, float %3804)  ; FAbs(value)
  %3807 = fmul fast float %3805, %3789
  %3808 = fmul fast float %3806, %3789
  %3809 = fcmp fast olt float %3807, 1.000000e+00
  %3810 = fcmp fast olt float %3808, 1.000000e+00
  %3811 = and i1 %3809, %3810
  %3812 = or i1 %3802, %3811
  br i1 %3812, label %3813, label %4110, !dx.controlflow.hints !109

; <label>:3813                                    ; preds = %3751
  %3814 = fmul fast float %3791, 5.000000e-01
  %3815 = fmul fast float %3790, 5.000000e-01
  %3816 = fadd fast float %3814, 5.000000e-01
  %3817 = fadd fast float %3815, 5.000000e-01
  %3818 = sitofp i32 %3757 to float
  %3819 = fsub fast float %3785, %3818
  %3820 = call float @dx.op.unary.f32(i32 27, float %3819)  ; Round_ni(value)
  %3821 = call float @dx.op.unary.f32(i32 22, float %3785)  ; Frc(value)
  %3822 = call float @dx.op.unary.f32(i32 22, float %3817)  ; Frc(value)
  %3823 = call float @dx.op.unary.f32(i32 22, float %3816)  ; Frc(value)
  %3824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %3822, float %3823, float %3820, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3825 = extractvalue %dx.types.ResRet.f32 %3824, 0
  %3826 = extractvalue %dx.types.ResRet.f32 %3824, 1
  %3827 = extractvalue %dx.types.ResRet.f32 %3824, 2
  %3828 = extractvalue %dx.types.ResRet.f32 %3824, 3
  %3829 = fcmp fast ogt float %3821, 0.000000e+00
  br i1 %3829, label %3830, label %3851, !dx.controlflow.hints !110

; <label>:3830                                    ; preds = %3813
  %3831 = fadd fast float %3820, 1.000000e+00
  %3832 = call float @dx.op.unary.f32(i32 22, float %3794)  ; Frc(value)
  %3833 = call float @dx.op.unary.f32(i32 22, float %3795)  ; Frc(value)
  %3834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %3832, float %3833, float %3831, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3835 = extractvalue %dx.types.ResRet.f32 %3834, 0
  %3836 = extractvalue %dx.types.ResRet.f32 %3834, 1
  %3837 = extractvalue %dx.types.ResRet.f32 %3834, 2
  %3838 = extractvalue %dx.types.ResRet.f32 %3834, 3
  %3839 = fsub fast float %3835, %3825
  %3840 = fsub fast float %3836, %3826
  %3841 = fsub fast float %3837, %3827
  %3842 = fsub fast float %3838, %3828
  %3843 = fmul fast float %3839, %3821
  %3844 = fmul fast float %3840, %3821
  %3845 = fmul fast float %3841, %3821
  %3846 = fmul fast float %3842, %3821
  %3847 = fadd fast float %3843, %3825
  %3848 = fadd fast float %3844, %3826
  %3849 = fadd fast float %3845, %3827
  %3850 = fadd fast float %3846, %3828
  br label %3851

; <label>:3851                                    ; preds = %3830, %3813
  %3852 = phi float [ %3847, %3830 ], [ %3825, %3813 ]
  %3853 = phi float [ %3848, %3830 ], [ %3826, %3813 ]
  %3854 = phi float [ %3849, %3830 ], [ %3827, %3813 ]
  %3855 = phi float [ %3850, %3830 ], [ %3828, %3813 ]
  %3856 = fadd fast float %3852, -5.000000e-01
  %3857 = fadd fast float %3854, -5.000000e-01
  %3858 = fmul fast float %3856, 0xBFD5555560000000
  %3859 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3857, float %3858)  ; FMad(a,b,c)
  %3860 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3853, float 0.000000e+00)  ; FMad(a,b,c)
  %3861 = fadd fast float %3860, %3855
  %3862 = fmul fast float %3856, -7.500000e-01
  %3863 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3857, float %3862)  ; FMad(a,b,c)
  %3864 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3853, float 0.000000e+00)  ; FMad(a,b,c)
  %3865 = fadd fast float %3864, %3855
  %3866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3867 = extractvalue %dx.types.CBufRet.f32 %3866, 0
  %3868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3869 = extractvalue %dx.types.CBufRet.f32 %3868, 0
  %3870 = extractvalue %dx.types.CBufRet.f32 %3868, 1
  %3871 = extractvalue %dx.types.CBufRet.f32 %3868, 2
  %3872 = extractvalue %dx.types.CBufRet.f32 %3868, 3
  %3873 = fsub fast float %3869, %3859
  %3874 = fsub fast float %3870, %3861
  %3875 = fsub fast float %3871, %3863
  %3876 = fsub fast float %3872, %3865
  %3877 = fmul fast float %3873, %3867
  %3878 = fmul fast float %3874, %3867
  %3879 = fmul fast float %3875, %3867
  %3880 = fmul fast float %3876, %3867
  %3881 = fadd fast float %3877, %3859
  %3882 = fadd fast float %3878, %3861
  %3883 = fadd fast float %3879, %3863
  %3884 = fadd fast float %3880, %3865
  %3885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3886 = extractvalue %dx.types.ResRet.i32 %3885, 0
  %3887 = and i32 %3886, 536870911
  %3888 = uitofp i32 %3887 to float
  %3889 = fmul fast float %3888, %3735
  %3890 = fmul fast float %3888, %3739
  %3891 = fptoui float %3889 to i32
  %3892 = fptoui float %3890 to i32
  %3893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3894 = extractvalue %dx.types.ResRet.i32 %3893, 0
  %3895 = and i32 %3894, 31
  %3896 = lshr i32 %3891, %3895
  %3897 = lshr i32 %3892, %3895
  %3898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3899 = extractvalue %dx.types.ResRet.i32 %3898, 0
  %3900 = and i32 %3899, 31
  %3901 = shl i32 1, %3900
  %3902 = call i32 @dx.op.binary.i32(i32 40, i32 %3901, i32 4)  ; UMin(a,b)
  %3903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3904 = extractvalue %dx.types.ResRet.i32 %3903, 0
  %3905 = extractvalue %dx.types.ResRet.i32 %3903, 1
  %3906 = icmp eq i32 %3902, 0
  br i1 %3906, label %3948, label %3907

; <label>:3907                                    ; preds = %3851
  br label %3908

; <label>:3908                                    ; preds = %3936, %3907
  %3909 = phi i32 [ %3939, %3936 ], [ 0, %3907 ]
  %3910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3911 = extractvalue %dx.types.ResRet.i32 %3910, 0
  %3912 = lshr i32 %3911, 16
  %3913 = and i32 %3912, 31
  %3914 = shl i32 %3897, %3913
  %3915 = add i32 %3914, %3896
  %3916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3917 = extractvalue %dx.types.ResRet.i32 %3916, 0
  %3918 = and i32 %3917, 31
  %3919 = shl i32 %3915, %3918
  %3920 = add i32 %3919, %3909
  %3921 = shl i32 %3920, 2
  %3922 = add i32 %3921, 32
  %3923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3922, i32 undef)  ; BufferLoad(srv,index,wot)
  %3924 = extractvalue %dx.types.ResRet.i32 %3923, 0
  %3925 = icmp slt i32 %3924, 0
  %3926 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3909
  %3927 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3909
  %3928 = bitcast float* %3926 to i32*
  %3929 = bitcast float* %3927 to i32*
  br i1 %3925, label %3930, label %3936

; <label>:3930                                    ; preds = %3908
  %3931 = and i32 %3924, 1073741823
  %3932 = add nuw nsw i32 %3931, 20
  %3933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3932, i32 undef)  ; BufferLoad(srv,index,wot)
  %3934 = extractvalue %dx.types.ResRet.i32 %3933, 0
  %3935 = extractvalue %dx.types.ResRet.i32 %3933, 1
  br label %3936

; <label>:3936                                    ; preds = %3930, %3908
  %3937 = phi i32 [ %3934, %3930 ], [ %3904, %3908 ]
  %3938 = phi i32 [ %3935, %3930 ], [ %3905, %3908 ]
  store i32 %3937, i32* %3928, align 4
  store i32 %3938, i32* %3929, align 4
  %3939 = add nuw i32 %3909, 1
  %3940 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3941 = extractvalue %dx.types.CBufRet.i32 %3940, 2
  %3942 = icmp eq i32 %3941, 0
  %3943 = icmp ugt i32 %3924, -1073741825
  %3944 = and i1 %3943, %3942
  %3945 = icmp ult i32 %3939, %3902
  %3946 = and i1 %3944, %3945
  br i1 %3946, label %3908, label %3947

; <label>:3947                                    ; preds = %3936
  br label %3948

; <label>:3948                                    ; preds = %3947, %3851
  %3949 = phi i32 [ 0, %3851 ], [ %3939, %3947 ]
  %3950 = extractvalue %dx.types.CBufRet.f32 %3713, 2
  %3951 = fptoui float %3950 to i32
  %3952 = icmp eq i32 %3951, 0
  br i1 %3952, label %4004, label %3953

; <label>:3953                                    ; preds = %3948
  br label %3954

; <label>:3954                                    ; preds = %3999, %3953
  %3955 = phi i32 [ %4000, %3999 ], [ %3949, %3953 ]
  %3956 = phi i32 [ %4001, %3999 ], [ 0, %3953 ]
  %3957 = lshr i32 %3956, 2
  %3958 = and i32 %3956, 3
  %3959 = add nuw nsw i32 %3957, 83
  %3960 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 %3959)  ; CBufferLoadLegacy(handle,regIndex)
  %3961 = extractvalue %dx.types.CBufRet.i32 %3960, 0
  %3962 = extractvalue %dx.types.CBufRet.i32 %3960, 1
  %3963 = extractvalue %dx.types.CBufRet.i32 %3960, 2
  %3964 = extractvalue %dx.types.CBufRet.i32 %3960, 3
  %3965 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 0
  store i32 %3961, i32* %3965, align 4
  %3966 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 1
  store i32 %3962, i32* %3966, align 4
  %3967 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 2
  store i32 %3963, i32* %3967, align 4
  %3968 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 3
  store i32 %3964, i32* %3968, align 4
  %3969 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 %3958
  %3970 = load i32, i32* %3969, align 4, !tbaa !111, !noalias !115
  %3971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3972 = extractvalue %dx.types.ResRet.i32 %3971, 0
  %3973 = lshr i32 %3972, 16
  %3974 = and i32 %3973, 31
  %3975 = shl i32 %3897, %3974
  %3976 = add i32 %3975, %3896
  %3977 = shl i32 %3976, 2
  %3978 = add i32 %3977, %3970
  %3979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3978, i32 undef)  ; BufferLoad(srv,index,wot)
  %3980 = extractvalue %dx.types.ResRet.i32 %3979, 0
  %3981 = icmp eq i32 %3980, 0
  br i1 %3981, label %3999, label %3982

; <label>:3982                                    ; preds = %3954
  %3983 = icmp slt i32 %3980, 0
  %3984 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3955
  %3985 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3955
  %3986 = bitcast float* %3984 to i32*
  %3987 = bitcast float* %3985 to i32*
  br i1 %3983, label %3988, label %3995

; <label>:3988                                    ; preds = %3982
  %3989 = and i32 %3980, 1073741823
  %3990 = add i32 %3970, 20
  %3991 = add i32 %3990, %3989
  %3992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3991, i32 undef)  ; BufferLoad(srv,index,wot)
  %3993 = extractvalue %dx.types.ResRet.i32 %3992, 0
  %3994 = extractvalue %dx.types.ResRet.i32 %3992, 1
  br label %3995

; <label>:3995                                    ; preds = %3988, %3982
  %3996 = phi i32 [ %3993, %3988 ], [ %3904, %3982 ]
  %3997 = phi i32 [ %3994, %3988 ], [ %3905, %3982 ]
  store i32 %3996, i32* %3986, align 4
  store i32 %3997, i32* %3987, align 4
  %3998 = add i32 %3955, 1
  br label %3999

; <label>:3999                                    ; preds = %3995, %3954
  %4000 = phi i32 [ %3955, %3954 ], [ %3998, %3995 ]
  %4001 = add nuw i32 %3956, 1
  %4002 = icmp eq i32 %4001, %3951
  br i1 %4002, label %4003, label %3954

; <label>:4003                                    ; preds = %3999
  br label %4004

; <label>:4004                                    ; preds = %4003, %3948
  %4005 = phi i32 [ %3949, %3948 ], [ %4000, %4003 ]
  %4006 = icmp eq i32 %4005, 1
  %4007 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  %4008 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 0
  br i1 %4006, label %4009, label %4012

; <label>:4009                                    ; preds = %4004
  %4010 = load float, float* %4007, align 4
  %4011 = load float, float* %4008, align 4
  br label %4039

; <label>:4012                                    ; preds = %4004
  %4013 = load float, float* %4007, align 4
  %4014 = load float, float* %4008, align 4
  %4015 = fdiv fast float 1.000000e+00, %4014
  %4016 = fsub fast float %4013, %4015
  %4017 = icmp ugt i32 %4005, 1
  br i1 %4017, label %4018, label %4034

; <label>:4018                                    ; preds = %4012
  br label %4019

; <label>:4019                                    ; preds = %4019, %4018
  %4020 = phi float [ %4029, %4019 ], [ %4016, %4018 ]
  %4021 = phi float [ %4030, %4019 ], [ %4013, %4018 ]
  %4022 = phi i32 [ %4031, %4019 ], [ 1, %4018 ]
  %4023 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4022
  %4024 = load float, float* %4023, align 4
  %4025 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %4022
  %4026 = load float, float* %4025, align 4
  %4027 = fdiv fast float 1.000000e+00, %4026
  %4028 = fsub fast float %4024, %4027
  %4029 = call float @dx.op.binary.f32(i32 36, float %4020, float %4028)  ; FMin(a,b)
  %4030 = call float @dx.op.binary.f32(i32 35, float %4021, float %4024)  ; FMax(a,b)
  %4031 = add nuw i32 %4022, 1
  %4032 = icmp eq i32 %4031, %4005
  br i1 %4032, label %4033, label %4019

; <label>:4033                                    ; preds = %4019
  br label %4034

; <label>:4034                                    ; preds = %4033, %4012
  %4035 = phi float [ %4016, %4012 ], [ %4029, %4033 ]
  %4036 = phi float [ %4013, %4012 ], [ %4030, %4033 ]
  %4037 = fsub fast float %4036, %4035
  %4038 = fdiv fast float 1.000000e+00, %4037
  br label %4039

; <label>:4039                                    ; preds = %4034, %4009
  %4040 = phi float [ %4010, %4009 ], [ %4036, %4034 ]
  %4041 = phi float [ %4011, %4009 ], [ %4038, %4034 ]
  %4042 = fadd fast float %3743, %4040
  %4043 = fmul fast float %4042, %4041
  %4044 = call float @dx.op.unary.f32(i32 7, float %4043)  ; Saturate(value)
  %4045 = fmul fast float %4044, 2.000000e+00
  %4046 = fsub fast float 1.000000e+00, %4045
  %4047 = fmul fast float %3881, %3881
  %4048 = fsub fast float %3882, %4047
  %4049 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4048)  ; FMax(a,b)
  %4050 = fdiv fast float 1.000000e+00, %4049
  %4051 = fmul fast float %3882, %3881
  %4052 = fsub fast float %3883, %4051
  %4053 = fsub fast float %4046, %3881
  %4054 = fmul fast float %4046, %4046
  %4055 = fsub fast float %4054, %3882
  %4056 = fmul fast float %4050, %4052
  %4057 = fmul fast float %4056, %4053
  %4058 = fsub fast float %4055, %4057
  %4059 = fmul fast float %3882, %3882
  %4060 = fsub fast float %3884, %4059
  %4061 = fmul fast float %4052, %4052
  %4062 = fmul fast float %4061, %4050
  %4063 = fsub fast float %4060, %4062
  %4064 = fdiv fast float %4058, %4063
  %4065 = fmul fast float %4064, %4052
  %4066 = fsub fast float %4053, %4065
  %4067 = fmul fast float %4066, %4050
  %4068 = fmul fast float %4067, %3881
  %4069 = fsub fast float 1.000000e+00, %4068
  %4070 = fmul fast float %4064, %3882
  %4071 = fsub fast float %4069, %4070
  %4072 = fmul fast float %4067, %4067
  %4073 = fmul fast float %4064, 4.000000e+00
  %4074 = fmul fast float %4073, %4071
  %4075 = fsub fast float %4072, %4074
  %4076 = call float @dx.op.unary.f32(i32 24, float %4075)  ; Sqrt(value)
  %4077 = fcmp fast oge float %4067, 0.000000e+00
  %4078 = fsub fast float -0.000000e+00, %4076
  %4079 = select i1 %4077, float %4078, float %4076
  %4080 = fsub fast float %4079, %4067
  %4081 = fdiv fast float %4080, %4064
  %4082 = fdiv fast float %4071, %4080
  %4083 = fmul fast float %4081, 5.000000e-01
  %4084 = fmul fast float %4082, 2.000000e+00
  %4085 = select i1 %4077, float %4083, float %4084
  %4086 = select i1 %4077, float %4084, float %4083
  %4087 = call float @dx.op.binary.f32(i32 35, float %4085, float %4086)  ; FMax(a,b)
  %4088 = call float @dx.op.binary.f32(i32 36, float %4085, float %4086)  ; FMin(a,b)
  %4089 = fcmp fast ogt float %4046, %4087
  %4090 = fsub fast float %4046, %4088
  %4091 = fsub fast float %4046, %4087
  %4092 = fsub fast float %4087, %4088
  %4093 = select i1 %4089, float %4091, float %4092
  %4094 = fmul float %4090, %4093
  %4095 = select i1 %4089, float %4088, float %4046
  %4096 = fcmp fast ogt float %4046, %4088
  %4097 = fmul fast float %4095, %4087
  %4098 = fadd fast float %4095, %4087
  %4099 = fmul fast float %4098, %3881
  %4100 = fadd fast float %4097, %3882
  %4101 = fsub fast float %4100, %4099
  %4102 = fdiv fast float %4101, %4094
  %4103 = select i1 %4096, float %4102, float 0.000000e+00
  %4104 = fsub fast float 1.000000e+00, %4103
  %4105 = select i1 %4089, float %4104, float %4103
  %4106 = call float @dx.op.unary.f32(i32 7, float %4105)  ; Saturate(value)
  %4107 = extractvalue %dx.types.CBufRet.f32 %3866, 3
  %4108 = fmul fast float %4107, %4106
  %4109 = fsub fast float 1.000000e+00, %4108
  br label %4110

; <label>:4110                                    ; preds = %4039, %3751, %3716, %3712, %3678
  %4111 = phi float [ 1.000000e+00, %3678 ], [ %4109, %4039 ], [ 1.000000e+00, %3716 ], [ 1.000000e+00, %3751 ], [ 1.000000e+00, %3712 ]
  %4112 = fcmp fast ogt float %3708, 0.000000e+00
  br i1 %4112, label %4113, label %4119, !dx.controlflow.hints !124

; <label>:4113                                    ; preds = %4110
  %4114 = fadd fast float %3621, %3595
  %4115 = call float @dx.op.binary.f32(i32 35, float %4114, float 0.000000e+00)  ; FMax(a,b)
  %4116 = fadd fast float %4115, 0x3F10000000000000
  %4117 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %3610, float %3611, float undef, float undef, i32 0, i32 0, i32 undef, float %4116)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4118 = extractvalue %dx.types.ResRet.f32 %4117, 0
  br label %4119

; <label>:4119                                    ; preds = %4113, %4110
  %4120 = phi float [ %4118, %4113 ], [ 1.000000e+00, %4110 ]
  %4121 = fcmp fast ogt float %3706, 0.000000e+00
  br i1 %4121, label %4122, label %4128, !dx.controlflow.hints !125

; <label>:4122                                    ; preds = %4119
  %4123 = fadd fast float %3651, %3595
  %4124 = call float @dx.op.binary.f32(i32 35, float %4123, float 0.000000e+00)  ; FMax(a,b)
  %4125 = fadd fast float %4124, 0x3F10000000000000
  %4126 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %3602, float %3603, float undef, float undef, i32 0, i32 0, i32 undef, float %4125)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4127 = extractvalue %dx.types.ResRet.f32 %4126, 0
  br label %4128

; <label>:4128                                    ; preds = %4122, %4119
  %4129 = phi float [ %4127, %4122 ], [ 1.000000e+00, %4119 ]
  %4130 = fcmp fast ogt float %3705, 0.000000e+00
  br i1 %4130, label %4131, label %4138, !dx.controlflow.hints !126

; <label>:4131                                    ; preds = %4128
  %4132 = extractvalue %dx.types.CBufRet.f32 %3620, 0
  %4133 = fadd fast float %4132, %3595
  %4134 = call float @dx.op.binary.f32(i32 35, float %4133, float 0.000000e+00)  ; FMax(a,b)
  %4135 = fadd fast float %4134, 0x3F10000000000000
  %4136 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %3587, float %3591, float undef, float undef, i32 0, i32 0, i32 undef, float %4135)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4137 = extractvalue %dx.types.ResRet.f32 %4136, 0
  br label %4138

; <label>:4138                                    ; preds = %4131, %4128
  %4139 = phi float [ %4137, %4131 ], [ 1.000000e+00, %4128 ]
  %4140 = fsub fast float %4120, %4111
  %4141 = fmul fast float %4140, %3649
  %4142 = fadd fast float %4141, %4111
  %4143 = fsub fast float %4129, %4142
  %4144 = fmul fast float %4143, %3679
  %4145 = fadd fast float %4144, %4142
  %4146 = fsub fast float %4139, %4145
  %4147 = fmul fast float %4146, %3705
  %4148 = fadd fast float %4147, %4145
  %4149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4150 = extractvalue %dx.types.CBufRet.f32 %4149, 2
  %4151 = fcmp fast ogt float %4150, 0.000000e+00
  br i1 %4151, label %4152, label %4189, !dx.controlflow.hints !127

; <label>:4152                                    ; preds = %4138
  %4153 = fcmp fast ugt float %4150, 0.000000e+00
  br i1 %4153, label %4154, label %4186

; <label>:4154                                    ; preds = %4152
  %4155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.f32 %4155, 0
  %4157 = extractvalue %dx.types.CBufRet.f32 %4155, 1
  %4158 = extractvalue %dx.types.CBufRet.f32 %4155, 2
  %4159 = extractvalue %dx.types.CBufRet.f32 %4155, 3
  %4160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4161 = extractvalue %dx.types.CBufRet.f32 %4160, 0
  %4162 = extractvalue %dx.types.CBufRet.f32 %4160, 1
  %4163 = extractvalue %dx.types.CBufRet.f32 %4160, 2
  %4164 = extractvalue %dx.types.CBufRet.f32 %4160, 3
  %4165 = extractvalue %dx.types.CBufRet.f32 %4149, 0
  %4166 = extractvalue %dx.types.CBufRet.f32 %4149, 1
  %4167 = extractvalue %dx.types.CBufRet.f32 %2191, 2
  %4168 = fadd fast float %2192, %3564
  %4169 = fadd fast float %2193, %3565
  %4170 = fadd fast float %4167, %3566
  %4171 = fmul fast float %4168, %4156
  %4172 = call float @dx.op.tertiary.f32(i32 46, float %4157, float %4169, float %4171)  ; FMad(a,b,c)
  %4173 = call float @dx.op.tertiary.f32(i32 46, float %4158, float %4170, float %4172)  ; FMad(a,b,c)
  %4174 = fadd fast float %4173, %4159
  %4175 = fmul fast float %4168, %4161
  %4176 = call float @dx.op.tertiary.f32(i32 46, float %4162, float %4169, float %4175)  ; FMad(a,b,c)
  %4177 = call float @dx.op.tertiary.f32(i32 46, float %4163, float %4170, float %4176)  ; FMad(a,b,c)
  %4178 = fadd fast float %4177, %4164
  %4179 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %55, float %4174, float %4178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = fmul fast float %4180, %4166
  %4182 = fadd fast float %4181, %4165
  %4183 = call float @dx.op.unary.f32(i32 7, float %4182)  ; Saturate(value)
  %4184 = fmul fast float %4183, %4150
  %4185 = fsub fast float 1.000000e+00, %4184
  br label %4186

; <label>:4186                                    ; preds = %4154, %4152
  %4187 = phi float [ %4185, %4154 ], [ 1.000000e+00, %4152 ]
  %4188 = fmul fast float %4187, %4148
  br label %4189

; <label>:4189                                    ; preds = %4186, %4138, %3544
  %4190 = phi float [ 1.000000e+00, %3544 ], [ %4188, %4186 ], [ %4148, %4138 ]
  %4191 = call float @dx.op.binary.f32(i32 36, float %4190, float %4190)  ; FMin(a,b)
  %4192 = call float @dx.op.binary.f32(i32 36, float %4190, float %4191)  ; FMin(a,b)
  %4193 = fcmp fast ogt float %4192, 0.000000e+00
  br i1 %4193, label %4194, label %4351, !dx.controlflow.hints !128

; <label>:4194                                    ; preds = %4189
  %4195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.f32 %4195, 0
  %4197 = extractvalue %dx.types.CBufRet.f32 %4195, 1
  %4198 = extractvalue %dx.types.CBufRet.f32 %4195, 2
  %4199 = extractvalue %dx.types.CBufRet.f32 %4195, 3
  %4200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4201 = extractvalue %dx.types.CBufRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.CBufRet.f32 %4200, 1
  %4203 = extractvalue %dx.types.CBufRet.f32 %4200, 2
  %4204 = extractvalue %dx.types.CBufRet.f32 %4200, 3
  %4205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4206 = extractvalue %dx.types.CBufRet.f32 %4205, 0
  %4207 = extractvalue %dx.types.CBufRet.f32 %4205, 1
  %4208 = extractvalue %dx.types.CBufRet.f32 %4205, 2
  %4209 = extractvalue %dx.types.CBufRet.f32 %4205, 3
  %4210 = fmul fast float %4196, %3564
  %4211 = call float @dx.op.tertiary.f32(i32 46, float %3565, float %4197, float %4210)  ; FMad(a,b,c)
  %4212 = call float @dx.op.tertiary.f32(i32 46, float %3566, float %4198, float %4211)  ; FMad(a,b,c)
  %4213 = fadd fast float %4212, %4199
  %4214 = fmul fast float %4201, %3564
  %4215 = call float @dx.op.tertiary.f32(i32 46, float %3565, float %4202, float %4214)  ; FMad(a,b,c)
  %4216 = call float @dx.op.tertiary.f32(i32 46, float %3566, float %4203, float %4215)  ; FMad(a,b,c)
  %4217 = fadd fast float %4216, %4204
  %4218 = fmul fast float %4206, %3564
  %4219 = call float @dx.op.tertiary.f32(i32 46, float %3565, float %4207, float %4218)  ; FMad(a,b,c)
  %4220 = call float @dx.op.tertiary.f32(i32 46, float %3566, float %4208, float %4219)  ; FMad(a,b,c)
  %4221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4222 = extractvalue %dx.types.CBufRet.f32 %4221, 0
  %4223 = extractvalue %dx.types.CBufRet.f32 %4221, 1
  %4224 = extractvalue %dx.types.CBufRet.f32 %4221, 3
  %4225 = fmul fast float %4224, %4213
  %4226 = fmul fast float %4224, %4217
  %4227 = fadd fast float %4225, %4222
  %4228 = fadd fast float %4226, %4223
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 0
  %4231 = extractvalue %dx.types.CBufRet.f32 %4229, 1
  %4232 = fsub fast float %4227, %4230
  %4233 = fsub fast float %4228, %4231
  %4234 = fcmp fast olt float %4232, 0.000000e+00
  %4235 = fcmp fast olt float %4233, 0.000000e+00
  %4236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4237 = extractvalue %dx.types.CBufRet.f32 %4236, 0
  %4238 = extractvalue %dx.types.CBufRet.f32 %4236, 1
  %4239 = extractvalue %dx.types.CBufRet.f32 %4236, 2
  %4240 = extractvalue %dx.types.CBufRet.f32 %4236, 3
  %4241 = select i1 %4234, float %4237, float %4239
  %4242 = select i1 %4235, float %4238, float %4240
  %4243 = fmul fast float %4241, %4232
  %4244 = fmul fast float %4242, %4233
  %4245 = call float @dx.op.unary.f32(i32 6, float %4243)  ; FAbs(value)
  %4246 = call float @dx.op.unary.f32(i32 6, float %4244)  ; FAbs(value)
  %4247 = extractvalue %dx.types.CBufRet.f32 %3559, 0
  %4248 = call float @dx.op.binary.f32(i32 35, float %4245, float %4246)  ; FMax(a,b)
  %4249 = fsub fast float %4247, %4248
  %4250 = call float @dx.op.unary.f32(i32 7, float %4249)  ; Saturate(value)
  %4251 = fcmp fast ogt float %4250, 0.000000e+00
  br i1 %4251, label %4252, label %4293, !dx.controlflow.hints !129

; <label>:4252                                    ; preds = %4194
  %4253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %58, float %4227, float %4228, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4254 = extractvalue %dx.types.ResRet.f32 %4253, 1
  %4255 = fcmp fast ogt float %4254, 0.000000e+00
  br i1 %4255, label %4256, label %4288

; <label>:4256                                    ; preds = %4252
  %4257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %58, float %4227, float %4228, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4258 = extractvalue %dx.types.ResRet.f32 %4257, 0
  %4259 = extractvalue %dx.types.ResRet.f32 %4257, 1
  %4260 = extractvalue %dx.types.ResRet.f32 %4257, 2
  %4261 = extractvalue %dx.types.ResRet.f32 %4257, 3
  %4262 = fsub fast float 1.000000e+00, %4209
  %4263 = fsub fast float %4262, %4220
  %4264 = fmul fast float %4263, 0x400921FB60000000
  %4265 = fadd fast float %4264, 0x3FF921FB60000000
  %4266 = call float @dx.op.unary.f32(i32 13, float %4265)  ; Sin(value)
  %4267 = fadd fast float %4266, -1.000000e+00
  %4268 = fmul fast float %4267, 0x3FD45F3060000000
  %4269 = fmul fast float %4263, 0x401921FB60000000
  %4270 = fadd fast float %4269, 0x400921FB60000000
  %4271 = call float @dx.op.unary.f32(i32 13, float %4270)  ; Sin(value)
  %4272 = fadd fast float %4271, 0x3E7777A5C0000000
  %4273 = fmul fast float %4272, 0x3FC45F3060000000
  %4274 = fmul fast float %4263, 0x4022D97C80000000
  %4275 = fadd fast float %4274, 0x4012D97C80000000
  %4276 = call float @dx.op.unary.f32(i32 13, float %4275)  ; Sin(value)
  %4277 = fadd fast float %4276, 1.000000e+00
  %4278 = fmul fast float %4277, 0x3FBB2995E0000000
  %4279 = fmul fast float %4263, 0x402921FB60000000
  %4280 = fadd fast float %4279, 0x401921FB60000000
  %4281 = call float @dx.op.unary.f32(i32 13, float %4280)  ; Sin(value)
  %4282 = fadd fast float %4281, 0xBE8777A5C0000000
  %4283 = fmul fast float %4282, 0x3FB45F3060000000
  %4284 = call float @dx.op.dot4.f32(i32 56, float %4258, float %4259, float %4260, float %4261, float %4268, float %4273, float %4278, float %4283)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4285 = fmul fast float %4284, 0xBFF7154760000000
  %4286 = call float @dx.op.unary.f32(i32 21, float %4285)  ; Exp(value)
  %4287 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  br label %4288

; <label>:4288                                    ; preds = %4256, %4252
  %4289 = phi float [ %4287, %4256 ], [ 1.000000e+00, %4252 ]
  %4290 = fadd fast float %4289, -1.000000e+00
  %4291 = fmul fast float %4290, %4250
  %4292 = fadd fast float %4291, 1.000000e+00
  br label %4293

; <label>:4293                                    ; preds = %4288, %4194
  %4294 = phi float [ %4292, %4288 ], [ 1.000000e+00, %4194 ]
  %4295 = fmul fast float %4294, %4190
  %4296 = extractvalue %dx.types.CBufRet.f32 %2191, 2
  %4297 = fadd fast float %2192, %138
  %4298 = fadd fast float %2193, %139
  %4299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4300 = extractvalue %dx.types.CBufRet.f32 %4299, 1
  %4301 = fsub fast float -0.000000e+00, %4297
  %4302 = fsub fast float -0.000000e+00, %4298
  %4303 = fsub fast float %2175, %4296
  %4304 = fadd fast float %4303, %4300
  %4305 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4301, float %4302, float %4304)  ; Dot3(ax,ay,az,bx,by,bz)
  %4306 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3545, float %3546, float %3547)  ; Dot3(ax,ay,az,bx,by,bz)
  %4307 = fdiv fast float 1.000000e+00, %4306
  %4308 = fmul fast float %4307, %4305
  %4309 = fmul fast float %3545, %4308
  %4310 = fmul fast float %3546, %4308
  %4311 = fadd fast float %4309, %4297
  %4312 = fadd fast float %4310, %4298
  %4313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4314 = extractvalue %dx.types.CBufRet.f32 %4313, 0
  %4315 = extractvalue %dx.types.CBufRet.f32 %4313, 1
  %4316 = fsub fast float %4311, %4314
  %4317 = fsub fast float %4312, %4315
  %4318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4319 = extractvalue %dx.types.CBufRet.f32 %4318, 2
  %4320 = extractvalue %dx.types.CBufRet.f32 %4318, 3
  %4321 = fmul fast float %4316, %4319
  %4322 = fmul fast float %4317, %4320
  %4323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4324 = extractvalue %dx.types.CBufRet.i32 %4323, 3
  %4325 = icmp eq i32 %4324, 0
  br i1 %4325, label %4331, label %4326

; <label>:4326                                    ; preds = %4293
  %4327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %57, float %4321, float %4322, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4328 = extractvalue %dx.types.ResRet.f32 %4327, 0
  %4329 = extractvalue %dx.types.ResRet.f32 %4327, 1
  %4330 = extractvalue %dx.types.ResRet.f32 %4327, 2
  br label %4336

; <label>:4331                                    ; preds = %4293
  %4332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %58, float %4321, float %4322, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4333 = extractvalue %dx.types.ResRet.f32 %4332, 0
  %4334 = extractvalue %dx.types.ResRet.f32 %4332, 1
  %4335 = extractvalue %dx.types.ResRet.f32 %4332, 2
  br label %4336

; <label>:4336                                    ; preds = %4331, %4326
  %4337 = phi float [ %4328, %4326 ], [ %4333, %4331 ]
  %4338 = phi float [ %4329, %4326 ], [ %4334, %4331 ]
  %4339 = phi float [ %4330, %4326 ], [ %4335, %4331 ]
  %4340 = extractvalue %dx.types.CBufRet.f32 %4299, 2
  %4341 = fmul fast float %4340, %4337
  %4342 = extractvalue %dx.types.CBufRet.f32 %4299, 0
  %4343 = fsub fast float %4308, %4342
  %4344 = fsub fast float %4343, %4341
  %4345 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4344)  ; FMax(a,b)
  %4346 = fmul fast float %4345, %4338
  %4347 = call float @dx.op.binary.f32(i32 36, float %4339, float %4346)  ; FMin(a,b)
  %4348 = fmul fast float %4347, 0xBFF7154760000000
  %4349 = call float @dx.op.unary.f32(i32 21, float %4348)  ; Exp(value)
  %4350 = fmul fast float %4295, %4349
  br label %4351

; <label>:4351                                    ; preds = %4336, %4189
  %4352 = phi float [ %4350, %4336 ], [ %4190, %4189 ]
  %4353 = call float @dx.op.binary.f32(i32 36, float %4352, float %4352)  ; FMin(a,b)
  %4354 = call float @dx.op.binary.f32(i32 36, float %4352, float %4353)  ; FMin(a,b)
  %4355 = fcmp fast ogt float %4354, 0.000000e+00
  br i1 %4355, label %4356, label %4607, !dx.controlflow.hints !130

; <label>:4356                                    ; preds = %4351
  %4357 = fmul fast float %4352, %3556
  %4358 = fmul fast float %4352, %3557
  %4359 = fmul fast float %4352, %3558
  %4360 = fsub fast float %140, %1963
  %4361 = fcmp fast ogt float %4360, 0.000000e+00
  %4362 = fmul fast float %3545, 5.120000e+02
  %4363 = fmul fast float %3546, 5.120000e+02
  %4364 = fmul fast float %3547, 5.120000e+02
  %4365 = fadd fast float %4364, %140
  %4366 = fsub fast float %1963, %4365
  %4367 = fmul fast float %4366, 2.000000e+00
  %4368 = fadd fast float %4367, %4365
  %4369 = select i1 %4361, float %4368, float %4365
  %4370 = fsub fast float %4369, %140
  %4371 = call float @dx.op.dot3.f32(i32 55, float %4362, float %4363, float %4370, float %4362, float %4363, float %4370)  ; Dot3(ax,ay,az,bx,by,bz)
  %4372 = call float @dx.op.unary.f32(i32 25, float %4371)  ; Rsqrt(value)
  %4373 = fmul fast float %4372, %4362
  %4374 = fmul fast float %4372, %4363
  %4375 = fmul fast float %4372, %4370
  %4376 = fsub fast float %1963, %140
  %4377 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4376)  ; Dot3(ax,ay,az,bx,by,bz)
  %4378 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4373, float %4374, float %4375)  ; Dot3(ax,ay,az,bx,by,bz)
  %4379 = fdiv fast float 1.000000e+00, %4378
  %4380 = fmul fast float %4379, %4377
  %4381 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4360, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4382 = fcmp fast ogt float %4381, 0.000000e+00
  %4383 = fcmp fast olt float %4381, 0.000000e+00
  %4384 = zext i1 %4382 to i32
  %4385 = zext i1 %4383 to i32
  %4386 = sub nsw i32 %4384, %4385
  %4387 = sitofp i32 %4386 to float
  %4388 = fsub fast float %4369, %1963
  %4389 = call float @dx.op.dot3.f32(i32 55, float %4362, float %4363, float %4388, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4390 = fcmp fast ogt float %4389, 0.000000e+00
  %4391 = fcmp fast olt float %4389, 0.000000e+00
  %4392 = zext i1 %4390 to i32
  %4393 = zext i1 %4391 to i32
  %4394 = sub nsw i32 %4392, %4393
  %4395 = sitofp i32 %4394 to float
  %4396 = fcmp fast une float %4387, %4395
  br i1 %4396, label %4397, label %4407

; <label>:4397                                    ; preds = %4356
  %4398 = fmul fast float %4380, %4375
  %4399 = fmul fast float %4380, %4374
  %4400 = fmul fast float %4380, %4373
  %4401 = fmul fast float %4400, %4400
  %4402 = fmul fast float %4399, %4399
  %4403 = fadd fast float %4401, %4402
  %4404 = fmul fast float %4398, %4398
  %4405 = fadd fast float %4403, %4404
  %4406 = call float @dx.op.unary.f32(i32 24, float %4405)  ; Sqrt(value)
  br label %4417

; <label>:4407                                    ; preds = %4356
  %4408 = icmp slt i32 %4386, 0
  br i1 %4408, label %4409, label %4417

; <label>:4409                                    ; preds = %4407
  %4410 = fsub fast float %140, %4369
  %4411 = fmul fast float %4362, %4362
  %4412 = fmul fast float %4363, %4363
  %4413 = fadd fast float %4411, %4412
  %4414 = fmul fast float %4410, %4410
  %4415 = fadd fast float %4413, %4414
  %4416 = call float @dx.op.unary.f32(i32 24, float %4415)  ; Sqrt(value)
  br label %4417

; <label>:4417                                    ; preds = %4409, %4407, %4397
  %4418 = phi float [ %4406, %4397 ], [ %4416, %4409 ], [ 0.000000e+00, %4407 ]
  %4419 = fsub fast float -0.000000e+00, %4418
  %4420 = select i1 %4361, float -0.000000e+00, float %4419
  %4421 = fmul fast float %1964, 0x3FF7154760000000
  %4422 = fmul fast float %4421, %4420
  %4423 = fmul fast float %1965, 0x3FF7154760000000
  %4424 = fmul fast float %4423, %4420
  %4425 = fmul fast float %1966, 0x3FF7154760000000
  %4426 = fmul fast float %4425, %4420
  %4427 = call float @dx.op.unary.f32(i32 21, float %4422)  ; Exp(value)
  %4428 = call float @dx.op.unary.f32(i32 21, float %4424)  ; Exp(value)
  %4429 = call float @dx.op.unary.f32(i32 21, float %4426)  ; Exp(value)
  %4430 = call float @dx.op.unary.f32(i32 7, float %4427)  ; Saturate(value)
  %4431 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4432 = call float @dx.op.unary.f32(i32 7, float %4429)  ; Saturate(value)
  %4433 = fmul fast float %4357, %4430
  %4434 = fmul fast float %4358, %4431
  %4435 = fmul fast float %4359, %4432
  %4436 = fsub fast float %3545, %2163
  %4437 = fsub fast float %3546, %2162
  %4438 = fsub fast float %3547, %2161
  %4439 = call float @dx.op.dot3.f32(i32 55, float %4436, float %4437, float %4438, float %4436, float %4437, float %4438)  ; Dot3(ax,ay,az,bx,by,bz)
  %4440 = call float @dx.op.unary.f32(i32 25, float %4439)  ; Rsqrt(value)
  %4441 = fmul fast float %4440, %4436
  %4442 = fmul fast float %4440, %4437
  %4443 = fmul fast float %4440, %4438
  %4444 = call float @dx.op.dot3.f32(i32 55, float %3545, float %3546, float %3547, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %4445 = call float @dx.op.dot3.f32(i32 55, float %2160, float %2159, float %2158, float %4441, float %4442, float %4443)  ; Dot3(ax,ay,az,bx,by,bz)
  %4446 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4447 = fmul fast float %4446, %4446
  %4448 = fmul fast float %4447, %3540
  %4449 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4450 = fmul fast float %4449, %4446
  %4451 = call float @dx.op.dot3.f32(i32 55, float %2170, float %2171, float %2172, float %4441, float %4442, float %4443)  ; Dot3(ax,ay,az,bx,by,bz)
  %4452 = fmul fast float %4451, %4451
  %4453 = call float @dx.op.unary.f32(i32 6, float %4444)  ; FAbs(value)
  %4454 = fsub fast float 1.000000e+00, %2173
  %4455 = call float @dx.op.binary.f32(i32 35, float %4454, float 0x3F847AE140000000)  ; FMax(a,b)
  %4456 = fmul fast float %4455, %4455
  %4457 = fmul fast float %4456, %4456
  %4458 = fsub fast float 1.000000e+00, %4457
  %4459 = fmul fast float %2178, %2178
  %4460 = fmul fast float %4459, %4458
  %4461 = fadd fast float %4460, %4457
  %4462 = bitcast float %4461 to i32
  %4463 = ashr i32 %4462, 1
  %4464 = add nsw i32 %4463, 532487669
  %4465 = bitcast i32 %4464 to float
  %4466 = fadd fast float %4465, %2178
  %4467 = fmul fast float %4457, %4452
  %4468 = fsub fast float 1.000000e+00, %4452
  %4469 = fadd fast float %4468, %4467
  %4470 = fmul fast float %4453, %4453
  %4471 = fmul fast float %4470, %4458
  %4472 = fadd fast float %4471, %4457
  %4473 = bitcast float %4472 to i32
  %4474 = ashr i32 %4473, 1
  %4475 = add nsw i32 %4474, 532487669
  %4476 = bitcast i32 %4475 to float
  %4477 = fadd fast float %4476, %4453
  %4478 = fmul fast float %4469, %4469
  %4479 = fmul fast float %4478, %4466
  %4480 = fmul fast float %4479, %4477
  %4481 = fdiv fast float 0x3FF0A00000000000, %4480
  %4482 = fmul fast float %4481, %4457
  %4483 = call float @dx.op.unary.f32(i32 6, float %4445)  ; FAbs(value)
  %4484 = fsub fast float 1.000000e+00, %4483
  %4485 = bitcast float %4484 to i32
  %4486 = sitofp i32 %4485 to float
  %4487 = fmul fast float %4486, 5.000000e+00
  %4488 = fadd fast float %4487, 0xC1EFBF8940000000
  %4489 = fptosi float %4488 to i32
  %4490 = bitcast i32 %4489 to float
  %4491 = fsub fast float 1.000000e+00, %2164
  %4492 = fsub fast float 1.000000e+00, %2165
  %4493 = fsub fast float 1.000000e+00, %2176
  %4494 = fmul fast float %4490, %4491
  %4495 = fmul fast float %4490, %4492
  %4496 = fmul fast float %4490, %4493
  %4497 = fadd fast float %4494, %2164
  %4498 = fadd fast float %4495, %2165
  %4499 = fadd fast float %4496, %2176
  br i1 %3455, label %4500, label %4523

; <label>:4500                                    ; preds = %4417
  %4501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1541, float %4483, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4502 = extractvalue %dx.types.ResRet.f32 %4501, 0
  %4503 = extractvalue %dx.types.ResRet.f32 %4501, 1
  %4504 = extractvalue %dx.types.ResRet.f32 %4501, 2
  %4505 = fadd fast float %4502, -5.000000e-01
  %4506 = fadd fast float %4503, -5.000000e-01
  %4507 = fadd fast float %4504, -5.000000e-01
  %4508 = fmul fast float %2164, 4.000000e+00
  %4509 = fmul fast float %4508, %4491
  %4510 = fmul fast float %4509, %4505
  %4511 = fmul fast float %2165, 4.000000e+00
  %4512 = fmul fast float %4511, %4492
  %4513 = fmul fast float %4512, %4506
  %4514 = fmul fast float %2176, 4.000000e+00
  %4515 = fmul fast float %4514, %4493
  %4516 = fmul fast float %4515, %4507
  %4517 = fadd fast float %4510, %4497
  %4518 = fadd fast float %4513, %4498
  %4519 = fadd fast float %4516, %4499
  %4520 = call float @dx.op.unary.f32(i32 7, float %4517)  ; Saturate(value)
  %4521 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4522 = call float @dx.op.unary.f32(i32 7, float %4519)  ; Saturate(value)
  br label %4523

; <label>:4523                                    ; preds = %4500, %4417
  %4524 = phi float [ %4520, %4500 ], [ %4497, %4417 ]
  %4525 = phi float [ %4521, %4500 ], [ %4498, %4417 ]
  %4526 = phi float [ %4522, %4500 ], [ %4499, %4417 ]
  %4527 = fmul fast float %4444, 9.843750e-01
  %4528 = fadd fast float %4527, 7.812500e-03
  %4529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %4528, float %3445, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4530 = extractvalue %dx.types.ResRet.f32 %4529, 2
  %4531 = extractvalue %dx.types.ResRet.f32 %4529, 3
  %4532 = fmul fast float %4530, %2164
  %4533 = fmul fast float %4530, %2165
  %4534 = fmul fast float %4530, %2176
  %4535 = fadd fast float %4532, %4531
  %4536 = fadd fast float %4533, %4531
  %4537 = fadd fast float %4534, %4531
  br i1 %3455, label %4538, label %4561

; <label>:4538                                    ; preds = %4523
  %4539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1541, float %4444, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4540 = extractvalue %dx.types.ResRet.f32 %4539, 0
  %4541 = extractvalue %dx.types.ResRet.f32 %4539, 1
  %4542 = extractvalue %dx.types.ResRet.f32 %4539, 2
  %4543 = fadd fast float %4540, -5.000000e-01
  %4544 = fadd fast float %4541, -5.000000e-01
  %4545 = fadd fast float %4542, -5.000000e-01
  %4546 = fmul fast float %2164, 4.000000e+00
  %4547 = fmul fast float %4546, %4491
  %4548 = fmul fast float %4547, %4543
  %4549 = fmul fast float %2165, 4.000000e+00
  %4550 = fmul fast float %4549, %4492
  %4551 = fmul fast float %4550, %4544
  %4552 = fmul fast float %2176, 4.000000e+00
  %4553 = fmul fast float %4552, %4493
  %4554 = fmul fast float %4553, %4545
  %4555 = fadd fast float %4548, %4535
  %4556 = fadd fast float %4551, %4536
  %4557 = fadd fast float %4554, %4537
  %4558 = call float @dx.op.unary.f32(i32 7, float %4555)  ; Saturate(value)
  %4559 = call float @dx.op.unary.f32(i32 7, float %4556)  ; Saturate(value)
  %4560 = call float @dx.op.unary.f32(i32 7, float %4557)  ; Saturate(value)
  br label %4561

; <label>:4561                                    ; preds = %4538, %4523
  %4562 = phi float [ %4558, %4538 ], [ %4535, %4523 ]
  %4563 = phi float [ %4559, %4538 ], [ %4536, %4523 ]
  %4564 = phi float [ %4560, %4538 ], [ %4537, %4523 ]
  %4565 = call float @dx.op.binary.f32(i32 35, float %4563, float %4564)  ; FMax(a,b)
  %4566 = call float @dx.op.binary.f32(i32 35, float %4562, float %4565)  ; FMax(a,b)
  %4567 = fsub fast float 1.000000e+00, %4566
  %4568 = fmul fast float %4524, %4482
  %4569 = fmul fast float %4525, %4482
  %4570 = fmul fast float %4526, %4482
  %4571 = fsub fast float 1.000000e+00, %4445
  %4572 = bitcast float %4571 to i32
  %4573 = sitofp i32 %4572 to float
  %4574 = fmul fast float %4573, 5.000000e+00
  %4575 = fadd fast float %4574, 0xC1EFBF8940000000
  %4576 = fptosi float %4575 to i32
  %4577 = bitcast i32 %4576 to float
  %4578 = fmul fast float %4577, %1540
  %4579 = fmul fast float %4567, %4578
  %4580 = fmul fast float %4579, %3505
  %4581 = fmul fast float %4579, %3506
  %4582 = fmul fast float %4579, %3507
  %4583 = fadd fast float %4580, %4568
  %4584 = fadd fast float %4581, %4569
  %4585 = fadd fast float %4582, %4570
  %4586 = fmul fast float %4450, %4433
  %4587 = fmul fast float %4586, %4567
  %4588 = fmul fast float %4450, %4434
  %4589 = fmul fast float %4588, %4567
  %4590 = fmul fast float %4450, %4435
  %4591 = fmul fast float %4590, %4567
  %4592 = fmul fast float %4586, %4583
  %4593 = fmul fast float %4588, %4584
  %4594 = fmul fast float %4590, %4585
  %4595 = fadd fast float %4587, %3489
  %4596 = fmul fast float %4595, %1561
  %4597 = fadd fast float %4589, %3490
  %4598 = fmul fast float %4597, %1561
  %4599 = fadd fast float %4591, %3491
  %4600 = fmul fast float %4599, %1561
  %4601 = fadd fast float %4592, %3532
  %4602 = fmul fast float %4601, %1561
  %4603 = fadd fast float %4593, %3535
  %4604 = fmul fast float %4603, %1561
  %4605 = fadd fast float %4594, %3538
  %4606 = fmul fast float %4605, %1561
  br label %4607

; <label>:4607                                    ; preds = %4561, %4351, %3482
  %4608 = phi float [ %3533, %3482 ], [ %3533, %4351 ], [ %4602, %4561 ]
  %4609 = phi float [ %3536, %3482 ], [ %3536, %4351 ], [ %4604, %4561 ]
  %4610 = phi float [ %3539, %3482 ], [ %3539, %4351 ], [ %4606, %4561 ]
  %4611 = phi float [ %3528, %3482 ], [ %3528, %4351 ], [ %4596, %4561 ]
  %4612 = phi float [ %3529, %3482 ], [ %3529, %4351 ], [ %4598, %4561 ]
  %4613 = phi float [ %3530, %3482 ], [ %3530, %4351 ], [ %4600, %4561 ]
  %4614 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4615 = extractvalue %dx.types.CBufRet.i32 %4614, 0
  %4616 = icmp eq i32 %4615, 0
  br i1 %4616, label %5237, label %4617

; <label>:4617                                    ; preds = %4607
  %4618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4619 = extractvalue %dx.types.CBufRet.f32 %4618, 2
  %4620 = extractvalue %dx.types.CBufRet.f32 %4618, 3
  %4621 = fmul fast float %4619, %91
  %4622 = fmul fast float %4620, %92
  %4623 = fptoui float %4621 to i32
  %4624 = fptoui float %4622 to i32
  %4625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.f32 %4625, 0
  %4627 = extractvalue %dx.types.CBufRet.f32 %4625, 2
  %4628 = extractvalue %dx.types.CBufRet.f32 %4625, 3
  %4629 = fadd fast float %82, -4.000000e+00
  %4630 = call float @dx.op.binary.f32(i32 35, float %4629, float 0.000000e+00)  ; FMax(a,b)
  %4631 = fadd fast float %4630, %4626
  %4632 = fmul fast float %4631, %4627
  %4633 = call float @dx.op.unary.f32(i32 23, float %4632)  ; Log(value)
  %4634 = fmul fast float %4633, %4628
  %4635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4636 = extractvalue %dx.types.CBufRet.f32 %4635, 2
  %4637 = fmul fast float %4634, %4636
  %4638 = call float @dx.op.unary.f32(i32 7, float %4637)  ; Saturate(value)
  %4639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4640 = extractvalue %dx.types.CBufRet.i32 %4639, 1
  %4641 = add i32 %4640, -1
  %4642 = uitofp i32 %4640 to float
  %4643 = fmul fast float %4642, %4638
  %4644 = fptoui float %4643 to i32
  %4645 = call i32 @dx.op.binary.i32(i32 40, i32 %4644, i32 %4641)  ; UMin(a,b)
  %4646 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.i32 %4646, 2
  %4648 = extractvalue %dx.types.CBufRet.i32 %4646, 3
  %4649 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4624, i32 %4647, i32 %4623)  ; UMad(a,b,c)
  %4650 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4645, i32 %4648, i32 %4649)  ; UMad(a,b,c)
  %4651 = add nsw i32 %4615, -1
  %4652 = call i32 @dx.op.binary.i32(i32 37, i32 %4651, i32 0)  ; IMax(a,b)
  %4653 = call float @dx.op.binary.f32(i32 35, float %82, float 0.000000e+00)  ; FMax(a,b)
  %4654 = fptoui float %4653 to i32
  %4655 = lshr i32 %4654, 5
  %4656 = call i32 @dx.op.binary.i32(i32 40, i32 %4655, i32 8191)  ; UMin(a,b)
  %4657 = shl i32 %4656, 2
  %4658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4657, i32 undef)  ; BufferLoad(srv,index,wot)
  %4659 = extractvalue %dx.types.ResRet.i32 %4658, 0
  %4660 = lshr i32 %4659, 16
  %4661 = and i32 %4659, 65535
  %4662 = lshr i32 %4659, 21
  %4663 = lshr i32 %4661, 5
  %4664 = call i32 @dx.op.binary.i32(i32 40, i32 %4663, i32 %4652)  ; UMin(a,b)
  %4665 = icmp ugt i32 %4662, %4664
  br i1 %4665, label %5237, label %4666

; <label>:4666                                    ; preds = %4617
  br label %4667

; <label>:4667                                    ; preds = %5227, %4666
  %4668 = phi i32 [ %5234, %5227 ], [ %4662, %4666 ]
  %4669 = phi float [ %5228, %5227 ], [ %4608, %4666 ]
  %4670 = phi float [ %5229, %5227 ], [ %4609, %4666 ]
  %4671 = phi float [ %5230, %5227 ], [ %4610, %4666 ]
  %4672 = phi float [ %5231, %5227 ], [ %4611, %4666 ]
  %4673 = phi float [ %5232, %5227 ], [ %4612, %4666 ]
  %4674 = phi float [ %5233, %5227 ], [ %4613, %4666 ]
  %4675 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4676 = extractvalue %dx.types.CBufRet.i32 %4675, 0
  %4677 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4650, i32 %4676, i32 %4668)  ; UMad(a,b,c)
  %4678 = shl i32 %4677, 2
  %4679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4678, i32 undef)  ; BufferLoad(srv,index,wot)
  %4680 = extractvalue %dx.types.ResRet.i32 %4679, 0
  %4681 = shl i32 %4668, 5
  %4682 = sub nsw i32 %4660, %4681
  %4683 = call i32 @dx.op.binary.i32(i32 37, i32 %4682, i32 0)  ; IMax(a,b)
  %4684 = call i32 @dx.op.binary.i32(i32 38, i32 %4683, i32 31)  ; IMin(a,b)
  %4685 = sub nsw i32 1, %4660
  %4686 = add nsw i32 %4685, %4661
  %4687 = call i32 @dx.op.binary.i32(i32 37, i32 %4686, i32 0)  ; IMax(a,b)
  %4688 = call i32 @dx.op.binary.i32(i32 38, i32 %4687, i32 32)  ; IMin(a,b)
  %4689 = and i32 %4688, 31
  %4690 = shl i32 -1, %4689
  %4691 = xor i32 %4690, -1
  %4692 = and i32 %4684, 31
  %4693 = shl i32 %4691, %4692
  %4694 = icmp eq i32 %4688, 32
  %4695 = select i1 %4694, i32 -1, i32 %4693
  %4696 = and i32 %4695, %4680
  %4697 = icmp eq i32 %4696, 0
  br i1 %4697, label %5227, label %4698

; <label>:4698                                    ; preds = %4667
  br label %4699

; <label>:4699                                    ; preds = %4833, %4698
  %4700 = phi i32 [ %4711, %4833 ], [ %4696, %4698 ]
  %4701 = phi float [ %4834, %4833 ], [ %4669, %4698 ]
  %4702 = phi float [ %4835, %4833 ], [ %4670, %4698 ]
  %4703 = phi float [ %4836, %4833 ], [ %4671, %4698 ]
  %4704 = phi float [ %4837, %4833 ], [ %4672, %4698 ]
  %4705 = phi float [ %4838, %4833 ], [ %4673, %4698 ]
  %4706 = phi float [ %4839, %4833 ], [ %4674, %4698 ]
  %4707 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4700)  ; FirstbitLo(value)
  %4708 = add i32 %4707, %4681
  %4709 = and i32 %4707, 31
  %4710 = shl i32 1, %4709
  %4711 = xor i32 %4710, %4700
  %4712 = mul i32 %4708, 112
  %4713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4712, i32 undef)  ; BufferLoad(srv,index,wot)
  %4714 = extractvalue %dx.types.ResRet.f32 %4713, 0
  %4715 = extractvalue %dx.types.ResRet.f32 %4713, 1
  %4716 = extractvalue %dx.types.ResRet.f32 %4713, 2
  %4717 = or i32 %4712, 12
  %4718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4717, i32 undef)  ; BufferLoad(srv,index,wot)
  %4719 = extractvalue %dx.types.ResRet.f32 %4718, 0
  %4720 = add i32 %4712, 16
  %4721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4720, i32 undef)  ; BufferLoad(srv,index,wot)
  %4722 = extractvalue %dx.types.ResRet.f32 %4721, 0
  %4723 = extractvalue %dx.types.ResRet.f32 %4721, 1
  %4724 = extractvalue %dx.types.ResRet.f32 %4721, 2
  %4725 = add i32 %4712, 28
  %4726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4725, i32 undef)  ; BufferLoad(srv,index,wot)
  %4727 = extractvalue %dx.types.ResRet.i32 %4726, 0
  %4728 = add i32 %4712, 44
  %4729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4728, i32 undef)  ; BufferLoad(srv,index,wot)
  %4730 = extractvalue %dx.types.ResRet.f32 %4729, 0
  %4731 = add i32 %4712, 48
  %4732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4731, i32 undef)  ; BufferLoad(srv,index,wot)
  %4733 = extractvalue %dx.types.ResRet.f32 %4732, 0
  %4734 = extractvalue %dx.types.ResRet.f32 %4732, 1
  %4735 = extractvalue %dx.types.ResRet.f32 %4732, 2
  %4736 = extractvalue %dx.types.ResRet.f32 %4732, 3
  %4737 = add i32 %4712, 64
  %4738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4737, i32 undef)  ; BufferLoad(srv,index,wot)
  %4739 = extractvalue %dx.types.ResRet.f32 %4738, 0
  %4740 = extractvalue %dx.types.ResRet.f32 %4738, 1
  %4741 = extractvalue %dx.types.ResRet.f32 %4738, 2
  %4742 = extractvalue %dx.types.ResRet.f32 %4738, 3
  %4743 = add i32 %4712, 80
  %4744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4743, i32 undef)  ; BufferLoad(srv,index,wot)
  %4745 = extractvalue %dx.types.ResRet.f32 %4744, 1
  %4746 = extractvalue %dx.types.ResRet.f32 %4744, 2
  %4747 = add i32 %4712, 92
  %4748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4747, i32 undef)  ; BufferLoad(srv,index,wot)
  %4749 = extractvalue %dx.types.ResRet.i32 %4748, 0
  %4750 = call float @dx.op.dot3.f32(i32 55, float %4714, float %4715, float %4716, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4751 = select i1 %229, float %4745, float %4714
  %4752 = select i1 %229, float %4750, float %4715
  %4753 = select i1 %229, float %4746, float %4716
  %4754 = and i32 %4749, 65535
  %4755 = uitofp i32 %4754 to float
  %4756 = lshr i32 %4749, 16
  %4757 = uitofp i32 %4756 to float
  %4758 = and i32 %4727, 65535
  %4759 = and i32 %4727, 50331648
  %4760 = icmp eq i32 %4759, 33554432
  %4761 = fsub fast float %4733, %138
  %4762 = fsub fast float %4734, %139
  %4763 = fsub fast float %4735, %140
  %4764 = call float @dx.op.dot3.f32(i32 55, float %4761, float %4762, float %4763, float %4761, float %4762, float %4763)  ; Dot3(ax,ay,az,bx,by,bz)
  %4765 = call float @dx.op.unary.f32(i32 24, float %4764)  ; Sqrt(value)
  %4766 = fdiv fast float 1.000000e+00, %4765
  %4767 = fmul fast float %4766, %4761
  %4768 = fmul fast float %4766, %4762
  %4769 = fmul fast float %4766, %4763
  %4770 = fadd fast float %4765, %4719
  %4771 = fdiv fast float 1.000000e+00, %4770
  %4772 = fmul float %4730, %4771
  %4773 = fmul float %4772, %4772
  %4774 = call float @dx.op.unary.f32(i32 7, float %4773)  ; Saturate(value)
  br i1 %4760, label %4775, label %4796

; <label>:4775                                    ; preds = %4699
  %4776 = fmul fast float %4741, %4722
  %4777 = fmul fast float %4741, %4723
  %4778 = fmul fast float %4741, %4724
  %4779 = fadd fast float %4761, %4776
  %4780 = fadd fast float %4762, %4777
  %4781 = fadd fast float %4763, %4778
  %4782 = call float @dx.op.dot3.f32(i32 55, float %4779, float %4780, float %4781, float %4779, float %4780, float %4781)  ; Dot3(ax,ay,az,bx,by,bz)
  %4783 = call float @dx.op.unary.f32(i32 25, float %4782)  ; Rsqrt(value)
  %4784 = fmul fast float %4783, %4779
  %4785 = fmul fast float %4783, %4780
  %4786 = fmul fast float %4783, %4781
  %4787 = fsub fast float %138, %4733
  %4788 = fsub fast float %139, %4734
  %4789 = fsub fast float %140, %4735
  %4790 = fsub fast float -0.000000e+00, %4787
  %4791 = fsub fast float -0.000000e+00, %4788
  %4792 = fsub fast float -0.000000e+00, %4789
  %4793 = call float @dx.op.dot3.f32(i32 55, float %4790, float %4791, float %4792, float %4722, float %4723, float %4724)  ; Dot3(ax,ay,az,bx,by,bz)
  %4794 = fcmp fast ogt float %4793, 0.000000e+00
  %4795 = uitofp i1 %4794 to float
  br label %4796

; <label>:4796                                    ; preds = %4775, %4699
  %4797 = phi float [ %4795, %4775 ], [ 1.000000e+00, %4699 ]
  %4798 = phi float [ %4784, %4775 ], [ %4767, %4699 ]
  %4799 = phi float [ %4785, %4775 ], [ %4768, %4699 ]
  %4800 = phi float [ %4786, %4775 ], [ %4769, %4699 ]
  %4801 = call float @dx.op.dot3.f32(i32 55, float %4722, float %4723, float %4724, float %4798, float %4799, float %4800)  ; Dot3(ax,ay,az,bx,by,bz)
  %4802 = fmul fast float %4801, %4801
  %4803 = call float @dx.op.unary.f32(i32 7, float %4802)  ; Saturate(value)
  %4804 = fsub fast float 1.000000e+00, %4803
  %4805 = fmul fast float %4804, 5.000000e-01
  %4806 = fcmp fast ogt float %4801, 0.000000e+00
  %4807 = fsub fast float 1.000000e+00, %4805
  %4808 = select i1 %4806, float %4805, float %4807
  %4809 = fmul fast float %4808, %4757
  %4810 = fadd fast float %4809, %4755
  %4811 = fmul fast float %4810, 0x3EF0001000000000
  %4812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %58, float %4811, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4813 = extractvalue %dx.types.ResRet.f32 %4812, 0
  %4814 = fmul fast float %4801, %4739
  %4815 = fadd fast float %4814, %4740
  %4816 = call float @dx.op.unary.f32(i32 7, float %4815)  ; Saturate(value)
  %4817 = select i1 %4760, float 1.000000e+00, float %4816
  %4818 = select i1 %4760, float %4816, float 1.000000e+00
  %4819 = fmul fast float %4765, %4736
  %4820 = fsub fast float 1.000000e+00, %4819
  %4821 = fmul fast float %4820, %4742
  %4822 = call float @dx.op.unary.f32(i32 7, float %4821)  ; Saturate(value)
  %4823 = fmul fast float %4822, %4818
  %4824 = fmul fast float %4823, 2.000000e+00
  %4825 = fsub fast float 3.000000e+00, %4824
  %4826 = fmul fast float %4813, %4797
  %4827 = fmul fast float %4823, %4823
  %4828 = fmul fast float %4827, %4826
  %4829 = fmul fast float %4828, %4825
  %4830 = call float @dx.op.binary.f32(i32 36, float %4829, float %4829)  ; FMin(a,b)
  %4831 = call float @dx.op.binary.f32(i32 36, float %4829, float %4830)  ; FMin(a,b)
  %4832 = fcmp fast ogt float %4831, 0.000000e+00
  br i1 %4832, label %4841, label %4833, !dx.controlflow.hints !131

; <label>:4833                                    ; preds = %5183, %4941, %4796
  %4834 = phi float [ %4701, %4941 ], [ %4701, %4796 ], [ %5223, %5183 ]
  %4835 = phi float [ %4702, %4941 ], [ %4702, %4796 ], [ %5224, %5183 ]
  %4836 = phi float [ %4703, %4941 ], [ %4703, %4796 ], [ %5225, %5183 ]
  %4837 = phi float [ %4704, %4941 ], [ %4704, %4796 ], [ %5217, %5183 ]
  %4838 = phi float [ %4705, %4941 ], [ %4705, %4796 ], [ %5218, %5183 ]
  %4839 = phi float [ %4706, %4941 ], [ %4706, %4796 ], [ %5219, %5183 ]
  %4840 = icmp eq i32 %4700, %4710
  br i1 %4840, label %5226, label %4699

; <label>:4841                                    ; preds = %4796
  %4842 = icmp eq i32 %4758, 255
  br i1 %4842, label %4941, label %4843, !dx.controlflow.hints !132

; <label>:4843                                    ; preds = %4841
  %4844 = mul nuw nsw i32 %4758, 176
  %4845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4844, i32 undef)  ; BufferLoad(srv,index,wot)
  %4846 = extractvalue %dx.types.ResRet.f32 %4845, 0
  %4847 = extractvalue %dx.types.ResRet.f32 %4845, 1
  %4848 = extractvalue %dx.types.ResRet.f32 %4845, 2
  %4849 = extractvalue %dx.types.ResRet.f32 %4845, 3
  %4850 = add nuw nsw i32 %4844, 16
  %4851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4850, i32 undef)  ; BufferLoad(srv,index,wot)
  %4852 = extractvalue %dx.types.ResRet.f32 %4851, 0
  %4853 = extractvalue %dx.types.ResRet.f32 %4851, 1
  %4854 = add nuw nsw i32 %4844, 32
  %4855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4854, i32 undef)  ; BufferLoad(srv,index,wot)
  %4856 = extractvalue %dx.types.ResRet.f32 %4855, 0
  %4857 = extractvalue %dx.types.ResRet.f32 %4855, 1
  %4858 = extractvalue %dx.types.ResRet.f32 %4855, 2
  %4859 = add nuw nsw i32 %4844, 48
  %4860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4859, i32 undef)  ; BufferLoad(srv,index,wot)
  %4861 = extractvalue %dx.types.ResRet.f32 %4860, 0
  %4862 = extractvalue %dx.types.ResRet.f32 %4860, 1
  %4863 = extractvalue %dx.types.ResRet.f32 %4860, 2
  %4864 = extractvalue %dx.types.ResRet.f32 %4860, 3
  %4865 = add nuw nsw i32 %4844, 64
  %4866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4865, i32 undef)  ; BufferLoad(srv,index,wot)
  %4867 = extractvalue %dx.types.ResRet.f32 %4866, 0
  %4868 = extractvalue %dx.types.ResRet.f32 %4866, 1
  %4869 = extractvalue %dx.types.ResRet.f32 %4866, 2
  %4870 = extractvalue %dx.types.ResRet.f32 %4866, 3
  %4871 = add nuw nsw i32 %4844, 80
  %4872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4871, i32 undef)  ; BufferLoad(srv,index,wot)
  %4873 = extractvalue %dx.types.ResRet.f32 %4872, 0
  %4874 = extractvalue %dx.types.ResRet.f32 %4872, 1
  %4875 = extractvalue %dx.types.ResRet.f32 %4872, 2
  %4876 = extractvalue %dx.types.ResRet.f32 %4872, 3
  %4877 = add nuw nsw i32 %4844, 96
  %4878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4877, i32 undef)  ; BufferLoad(srv,index,wot)
  %4879 = extractvalue %dx.types.ResRet.f32 %4878, 0
  %4880 = extractvalue %dx.types.ResRet.f32 %4878, 1
  %4881 = extractvalue %dx.types.ResRet.f32 %4878, 2
  %4882 = extractvalue %dx.types.ResRet.f32 %4878, 3
  %4883 = bitcast float %4853 to i32
  %4884 = fmul fast float %4858, %70
  %4885 = fmul fast float %4858, %71
  %4886 = fmul fast float %4858, %72
  %4887 = fadd fast float %4884, %138
  %4888 = fadd fast float %4885, %139
  %4889 = fadd fast float %4886, %140
  %4890 = fmul fast float %4887, %4861
  %4891 = call float @dx.op.tertiary.f32(i32 46, float %4888, float %4867, float %4890)  ; FMad(a,b,c)
  %4892 = call float @dx.op.tertiary.f32(i32 46, float %4889, float %4873, float %4891)  ; FMad(a,b,c)
  %4893 = fadd fast float %4892, %4879
  %4894 = fmul fast float %4887, %4862
  %4895 = call float @dx.op.tertiary.f32(i32 46, float %4888, float %4868, float %4894)  ; FMad(a,b,c)
  %4896 = call float @dx.op.tertiary.f32(i32 46, float %4889, float %4874, float %4895)  ; FMad(a,b,c)
  %4897 = fadd fast float %4896, %4880
  %4898 = fmul fast float %4887, %4863
  %4899 = call float @dx.op.tertiary.f32(i32 46, float %4888, float %4869, float %4898)  ; FMad(a,b,c)
  %4900 = call float @dx.op.tertiary.f32(i32 46, float %4889, float %4875, float %4899)  ; FMad(a,b,c)
  %4901 = fadd fast float %4900, %4881
  %4902 = fmul fast float %4887, %4864
  %4903 = call float @dx.op.tertiary.f32(i32 46, float %4888, float %4870, float %4902)  ; FMad(a,b,c)
  %4904 = call float @dx.op.tertiary.f32(i32 46, float %4889, float %4876, float %4903)  ; FMad(a,b,c)
  %4905 = fadd fast float %4904, %4882
  %4906 = fdiv fast float %4893, %4905
  %4907 = fdiv fast float %4897, %4905
  %4908 = fdiv fast float %4901, %4905
  %4909 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4908)  ; FMax(a,b)
  %4910 = fmul fast float %240, 0x401921FB60000000
  %4911 = call float @dx.op.unary.f32(i32 13, float %4910)  ; Sin(value)
  %4912 = call float @dx.op.unary.f32(i32 12, float %4910)  ; Cos(value)
  %4913 = fsub fast float -0.000000e+00, %4911
  %4914 = fmul fast float %4848, 5.000000e-01
  %4915 = call float @dx.op.dot2.f32(i32 54, float %240, float %240, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %4916 = call float @dx.op.unary.f32(i32 22, float %4915)  ; Frc(value)
  %4917 = fmul fast float %4916, 0x404A7DD040000000
  %4918 = call float @dx.op.unary.f32(i32 22, float %4917)  ; Frc(value)
  %4919 = fmul fast float %4918, %4857
  %4920 = fadd fast float %4919, %4914
  %4921 = call float @dx.op.tertiary.f32(i32 46, float %4920, float %4913, float 0.000000e+00)  ; FMad(a,b,c)
  %4922 = call float @dx.op.tertiary.f32(i32 46, float %4920, float %4912, float 0.000000e+00)  ; FMad(a,b,c)
  %4923 = fadd fast float %4921, %4906
  %4924 = fadd fast float %4922, %4907
  %4925 = fmul fast float %4923, %4852
  %4926 = fmul fast float %4924, %4852
  %4927 = call float @dx.op.binary.f32(i32 35, float %4925, float %4848)  ; FMax(a,b)
  %4928 = call float @dx.op.binary.f32(i32 35, float %4926, float %4848)  ; FMax(a,b)
  %4929 = call float @dx.op.binary.f32(i32 36, float %4927, float %4849)  ; FMin(a,b)
  %4930 = call float @dx.op.binary.f32(i32 36, float %4928, float %4849)  ; FMin(a,b)
  %4931 = fadd fast float %4929, %4846
  %4932 = fadd fast float %4930, %4847
  %4933 = uitofp i32 %4883 to float
  %4934 = fadd fast float %4909, %4856
  %4935 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %60, float %4931, float %4932, float %4933, float undef, i32 0, i32 0, i32 undef, float %4934)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4936 = extractvalue %dx.types.ResRet.f32 %4935, 0
  %4937 = fadd fast float %4936, -1.000000e+00
  %4938 = fmul fast float %4937, %4817
  %4939 = fadd fast float %4938, 1.000000e+00
  %4940 = fmul fast float %4939, %4829
  br label %4941

; <label>:4941                                    ; preds = %4843, %4841
  %4942 = phi float [ %4940, %4843 ], [ %4829, %4841 ]
  %4943 = call float @dx.op.binary.f32(i32 36, float %4942, float %4942)  ; FMin(a,b)
  %4944 = call float @dx.op.binary.f32(i32 36, float %4942, float %4943)  ; FMin(a,b)
  %4945 = fcmp fast ogt float %4944, 0.000000e+00
  br i1 %4945, label %4946, label %4833, !dx.controlflow.hints !133

; <label>:4946                                    ; preds = %4941
  %4947 = fmul fast float %4942, %4751
  %4948 = fmul fast float %4942, %4752
  %4949 = fmul fast float %4942, %4753
  %4950 = fsub fast float %4735, %1963
  %4951 = fcmp fast ogt float %4950, 0.000000e+00
  %4952 = fsub fast float %140, %1963
  %4953 = fcmp fast ogt float %4952, 0.000000e+00
  %4954 = xor i1 %4953, %4951
  %4955 = fsub fast float %1963, %4735
  %4956 = fmul fast float %4955, 2.000000e+00
  %4957 = fadd fast float %4956, %4735
  %4958 = select i1 %4954, float %4735, float %4957
  %4959 = fsub fast float %4958, %140
  %4960 = call float @dx.op.dot3.f32(i32 55, float %4761, float %4762, float %4959, float %4761, float %4762, float %4959)  ; Dot3(ax,ay,az,bx,by,bz)
  %4961 = call float @dx.op.unary.f32(i32 25, float %4960)  ; Rsqrt(value)
  %4962 = fmul fast float %4961, %4761
  %4963 = fmul fast float %4961, %4762
  %4964 = fmul fast float %4961, %4959
  %4965 = fsub fast float %1963, %140
  %4966 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4965)  ; Dot3(ax,ay,az,bx,by,bz)
  %4967 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4962, float %4963, float %4964)  ; Dot3(ax,ay,az,bx,by,bz)
  %4968 = fdiv fast float 1.000000e+00, %4967
  %4969 = fmul fast float %4968, %4966
  %4970 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4952, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4971 = fcmp fast ogt float %4970, 0.000000e+00
  %4972 = fcmp fast olt float %4970, 0.000000e+00
  %4973 = zext i1 %4971 to i32
  %4974 = zext i1 %4972 to i32
  %4975 = sub nsw i32 %4973, %4974
  %4976 = sitofp i32 %4975 to float
  %4977 = fsub fast float %4958, %1963
  %4978 = call float @dx.op.dot3.f32(i32 55, float %4761, float %4762, float %4977, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4979 = fcmp fast ogt float %4978, 0.000000e+00
  %4980 = fcmp fast olt float %4978, 0.000000e+00
  %4981 = zext i1 %4979 to i32
  %4982 = zext i1 %4980 to i32
  %4983 = sub nsw i32 %4981, %4982
  %4984 = sitofp i32 %4983 to float
  %4985 = fcmp fast une float %4976, %4984
  br i1 %4985, label %4986, label %4996

; <label>:4986                                    ; preds = %4946
  %4987 = fmul fast float %4969, %4964
  %4988 = fmul fast float %4969, %4963
  %4989 = fmul fast float %4969, %4962
  %4990 = fmul fast float %4989, %4989
  %4991 = fmul fast float %4988, %4988
  %4992 = fadd fast float %4990, %4991
  %4993 = fmul fast float %4987, %4987
  %4994 = fadd fast float %4992, %4993
  %4995 = call float @dx.op.unary.f32(i32 24, float %4994)  ; Sqrt(value)
  br label %5008

; <label>:4996                                    ; preds = %4946
  %4997 = icmp slt i32 %4975, 0
  br i1 %4997, label %4998, label %5008

; <label>:4998                                    ; preds = %4996
  %4999 = fsub fast float %138, %4733
  %5000 = fsub fast float %139, %4734
  %5001 = fsub fast float %140, %4958
  %5002 = fmul fast float %4999, %4999
  %5003 = fmul fast float %5000, %5000
  %5004 = fadd fast float %5002, %5003
  %5005 = fmul fast float %5001, %5001
  %5006 = fadd fast float %5004, %5005
  %5007 = call float @dx.op.unary.f32(i32 24, float %5006)  ; Sqrt(value)
  br label %5008

; <label>:5008                                    ; preds = %4998, %4996, %4986
  %5009 = phi float [ %4995, %4986 ], [ %5007, %4998 ], [ 0.000000e+00, %4996 ]
  %5010 = and i1 %4953, %4951
  %5011 = fsub fast float -0.000000e+00, %5009
  %5012 = select i1 %5010, float -0.000000e+00, float %5011
  %5013 = fmul fast float %1964, 0x3FF7154760000000
  %5014 = fmul fast float %5013, %5012
  %5015 = fmul fast float %1965, 0x3FF7154760000000
  %5016 = fmul fast float %5015, %5012
  %5017 = fmul fast float %1966, 0x3FF7154760000000
  %5018 = fmul fast float %5017, %5012
  %5019 = call float @dx.op.unary.f32(i32 21, float %5014)  ; Exp(value)
  %5020 = call float @dx.op.unary.f32(i32 21, float %5016)  ; Exp(value)
  %5021 = call float @dx.op.unary.f32(i32 21, float %5018)  ; Exp(value)
  %5022 = call float @dx.op.unary.f32(i32 7, float %5019)  ; Saturate(value)
  %5023 = call float @dx.op.unary.f32(i32 7, float %5020)  ; Saturate(value)
  %5024 = call float @dx.op.unary.f32(i32 7, float %5021)  ; Saturate(value)
  %5025 = fmul fast float %4947, %5022
  %5026 = fmul fast float %4948, %5023
  %5027 = fmul fast float %4949, %5024
  %5028 = fsub fast float %4767, %2163
  %5029 = fsub fast float %4768, %2162
  %5030 = fsub fast float %4769, %2161
  %5031 = call float @dx.op.dot3.f32(i32 55, float %5028, float %5029, float %5030, float %5028, float %5029, float %5030)  ; Dot3(ax,ay,az,bx,by,bz)
  %5032 = call float @dx.op.unary.f32(i32 25, float %5031)  ; Rsqrt(value)
  %5033 = fmul fast float %5032, %5028
  %5034 = fmul fast float %5032, %5029
  %5035 = fmul fast float %5032, %5030
  %5036 = call float @dx.op.dot3.f32(i32 55, float %4767, float %4768, float %4769, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5037 = call float @dx.op.dot3.f32(i32 55, float %2160, float %2159, float %2158, float %5033, float %5034, float %5035)  ; Dot3(ax,ay,az,bx,by,bz)
  %5038 = call float @dx.op.unary.f32(i32 7, float %5036)  ; Saturate(value)
  %5039 = fmul fast float %5038, %4774
  %5040 = fmul fast float %5038, %5038
  %5041 = fmul fast float %5040, %3540
  %5042 = call float @dx.op.unary.f32(i32 7, float %5041)  ; Saturate(value)
  %5043 = fmul fast float %5039, %5042
  %5044 = bitcast float %4764 to i32
  %5045 = ashr i32 %5044, 1
  %5046 = sub nsw i32 1597463007, %5045
  %5047 = bitcast i32 %5046 to float
  %5048 = fmul fast float %5047, %4761
  %5049 = fmul fast float %5047, %4762
  %5050 = fmul fast float %5047, %4763
  %5051 = fsub fast float %5048, %2163
  %5052 = fsub fast float %5049, %2162
  %5053 = fsub fast float %5050, %2161
  %5054 = call float @dx.op.dot3.f32(i32 55, float %5051, float %5052, float %5053, float %5051, float %5052, float %5053)  ; Dot3(ax,ay,az,bx,by,bz)
  %5055 = call float @dx.op.unary.f32(i32 25, float %5054)  ; Rsqrt(value)
  %5056 = fmul fast float %5051, %5055
  %5057 = fmul fast float %5052, %5055
  %5058 = fmul fast float %5053, %5055
  %5059 = call float @dx.op.dot3.f32(i32 55, float %2170, float %2171, float %2172, float %5056, float %5057, float %5058)  ; Dot3(ax,ay,az,bx,by,bz)
  %5060 = fmul fast float %5059, %5059
  %5061 = call float @dx.op.unary.f32(i32 6, float %5036)  ; FAbs(value)
  %5062 = fsub fast float 1.000000e+00, %2173
  %5063 = call float @dx.op.binary.f32(i32 35, float %5062, float 0x3F847AE140000000)  ; FMax(a,b)
  %5064 = fmul fast float %5063, %5063
  %5065 = fmul fast float %5064, %5064
  %5066 = fsub fast float 1.000000e+00, %5065
  %5067 = fmul fast float %2178, %2178
  %5068 = fmul fast float %5067, %5066
  %5069 = fadd fast float %5068, %5065
  %5070 = bitcast float %5069 to i32
  %5071 = ashr i32 %5070, 1
  %5072 = add nsw i32 %5071, 532487669
  %5073 = bitcast i32 %5072 to float
  %5074 = fadd fast float %5073, %2178
  %5075 = fmul fast float %5065, %5060
  %5076 = fsub fast float 1.000000e+00, %5060
  %5077 = fadd fast float %5076, %5075
  %5078 = fmul fast float %5061, %5061
  %5079 = fmul fast float %5078, %5066
  %5080 = fadd fast float %5079, %5065
  %5081 = bitcast float %5080 to i32
  %5082 = ashr i32 %5081, 1
  %5083 = add nsw i32 %5082, 532487669
  %5084 = bitcast i32 %5083 to float
  %5085 = fadd fast float %5084, %5061
  %5086 = fmul fast float %5077, %5077
  %5087 = fmul fast float %5086, %5074
  %5088 = fmul fast float %5087, %5085
  %5089 = fdiv fast float 1.000000e+00, %5088
  %5090 = bitcast float %5065 to i32
  %5091 = sitofp i32 %5090 to float
  %5092 = fmul fast float %5091, 0x3FE7F73180000000
  %5093 = fadd fast float %5092, 0x41AFE27C40000000
  %5094 = fptosi float %5093 to i32
  %5095 = bitcast i32 %5094 to float
  %5096 = fmul fast float %4730, 0x3FD80E9D60000000
  %5097 = fmul fast float %5096, %5047
  %5098 = fadd fast float %5095, %5097
  %5099 = bitcast float %5098 to i32
  %5100 = sub nsw i32 2129859010, %5099
  %5101 = bitcast i32 %5100 to float
  %5102 = fmul fast float %5065, %5089
  %5103 = fmul fast float %5102, %5095
  %5104 = fmul fast float %5103, %5101
  %5105 = call float @dx.op.unary.f32(i32 6, float %5037)  ; FAbs(value)
  %5106 = fsub fast float 1.000000e+00, %5105
  %5107 = bitcast float %5106 to i32
  %5108 = sitofp i32 %5107 to float
  %5109 = fmul fast float %5108, 5.000000e+00
  %5110 = fadd fast float %5109, 0xC1EFBF8940000000
  %5111 = fptosi float %5110 to i32
  %5112 = bitcast i32 %5111 to float
  %5113 = fsub fast float 1.000000e+00, %2164
  %5114 = fsub fast float 1.000000e+00, %2165
  %5115 = fsub fast float 1.000000e+00, %2176
  %5116 = fmul fast float %5112, %5113
  %5117 = fmul fast float %5112, %5114
  %5118 = fmul fast float %5112, %5115
  %5119 = fadd fast float %5116, %2164
  %5120 = fadd fast float %5117, %2165
  %5121 = fadd fast float %5118, %2176
  br i1 %3455, label %5122, label %5145

; <label>:5122                                    ; preds = %5008
  %5123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1541, float %5105, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5124 = extractvalue %dx.types.ResRet.f32 %5123, 0
  %5125 = extractvalue %dx.types.ResRet.f32 %5123, 1
  %5126 = extractvalue %dx.types.ResRet.f32 %5123, 2
  %5127 = fadd fast float %5124, -5.000000e-01
  %5128 = fadd fast float %5125, -5.000000e-01
  %5129 = fadd fast float %5126, -5.000000e-01
  %5130 = fmul fast float %2164, 4.000000e+00
  %5131 = fmul fast float %5130, %5113
  %5132 = fmul fast float %5131, %5127
  %5133 = fmul fast float %2165, 4.000000e+00
  %5134 = fmul fast float %5133, %5114
  %5135 = fmul fast float %5134, %5128
  %5136 = fmul fast float %2176, 4.000000e+00
  %5137 = fmul fast float %5136, %5115
  %5138 = fmul fast float %5137, %5129
  %5139 = fadd fast float %5132, %5119
  %5140 = fadd fast float %5135, %5120
  %5141 = fadd fast float %5138, %5121
  %5142 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5143 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5144 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  br label %5145

; <label>:5145                                    ; preds = %5122, %5008
  %5146 = phi float [ %5142, %5122 ], [ %5119, %5008 ]
  %5147 = phi float [ %5143, %5122 ], [ %5120, %5008 ]
  %5148 = phi float [ %5144, %5122 ], [ %5121, %5008 ]
  %5149 = fmul fast float %5036, 9.843750e-01
  %5150 = fadd fast float %5149, 7.812500e-03
  %5151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5150, float %3445, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5152 = extractvalue %dx.types.ResRet.f32 %5151, 2
  %5153 = extractvalue %dx.types.ResRet.f32 %5151, 3
  %5154 = fmul fast float %5152, %2164
  %5155 = fmul fast float %5152, %2165
  %5156 = fmul fast float %5152, %2176
  %5157 = fadd fast float %5154, %5153
  %5158 = fadd fast float %5155, %5153
  %5159 = fadd fast float %5156, %5153
  br i1 %3455, label %5160, label %5183

; <label>:5160                                    ; preds = %5145
  %5161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1541, float %5036, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5162 = extractvalue %dx.types.ResRet.f32 %5161, 0
  %5163 = extractvalue %dx.types.ResRet.f32 %5161, 1
  %5164 = extractvalue %dx.types.ResRet.f32 %5161, 2
  %5165 = fadd fast float %5162, -5.000000e-01
  %5166 = fadd fast float %5163, -5.000000e-01
  %5167 = fadd fast float %5164, -5.000000e-01
  %5168 = fmul fast float %2164, 4.000000e+00
  %5169 = fmul fast float %5168, %5113
  %5170 = fmul fast float %5169, %5165
  %5171 = fmul fast float %2165, 4.000000e+00
  %5172 = fmul fast float %5171, %5114
  %5173 = fmul fast float %5172, %5166
  %5174 = fmul fast float %2176, 4.000000e+00
  %5175 = fmul fast float %5174, %5115
  %5176 = fmul fast float %5175, %5167
  %5177 = fadd fast float %5170, %5157
  %5178 = fadd fast float %5173, %5158
  %5179 = fadd fast float %5176, %5159
  %5180 = call float @dx.op.unary.f32(i32 7, float %5177)  ; Saturate(value)
  %5181 = call float @dx.op.unary.f32(i32 7, float %5178)  ; Saturate(value)
  %5182 = call float @dx.op.unary.f32(i32 7, float %5179)  ; Saturate(value)
  br label %5183

; <label>:5183                                    ; preds = %5160, %5145
  %5184 = phi float [ %5180, %5160 ], [ %5157, %5145 ]
  %5185 = phi float [ %5181, %5160 ], [ %5158, %5145 ]
  %5186 = phi float [ %5182, %5160 ], [ %5159, %5145 ]
  %5187 = call float @dx.op.binary.f32(i32 35, float %5185, float %5186)  ; FMax(a,b)
  %5188 = call float @dx.op.binary.f32(i32 35, float %5184, float %5187)  ; FMax(a,b)
  %5189 = fsub fast float 1.000000e+00, %5188
  %5190 = fmul fast float %5146, %5104
  %5191 = fmul fast float %5147, %5104
  %5192 = fmul fast float %5148, %5104
  %5193 = fsub fast float 1.000000e+00, %5037
  %5194 = bitcast float %5193 to i32
  %5195 = sitofp i32 %5194 to float
  %5196 = fmul fast float %5195, 5.000000e+00
  %5197 = fadd fast float %5196, 0xC1EFBF8940000000
  %5198 = fptosi float %5197 to i32
  %5199 = bitcast i32 %5198 to float
  %5200 = fmul fast float %5199, %1540
  %5201 = fmul fast float %5189, %5200
  %5202 = fmul fast float %5201, %3505
  %5203 = fmul fast float %5201, %3506
  %5204 = fmul fast float %5201, %3507
  %5205 = fadd fast float %5202, %5190
  %5206 = fadd fast float %5203, %5191
  %5207 = fadd fast float %5204, %5192
  %5208 = fmul fast float %5025, %1561
  %5209 = fmul fast float %5208, %5043
  %5210 = fmul fast float %5209, %5189
  %5211 = fmul fast float %5026, %1561
  %5212 = fmul fast float %5211, %5043
  %5213 = fmul fast float %5212, %5189
  %5214 = fmul fast float %5027, %1561
  %5215 = fmul fast float %5214, %5043
  %5216 = fmul fast float %5215, %5189
  %5217 = fadd fast float %5210, %4704
  %5218 = fadd fast float %5213, %4705
  %5219 = fadd fast float %5216, %4706
  %5220 = fmul fast float %5209, %5205
  %5221 = fmul fast float %5212, %5206
  %5222 = fmul fast float %5215, %5207
  %5223 = fadd fast float %5220, %4701
  %5224 = fadd fast float %5221, %4702
  %5225 = fadd fast float %5222, %4703
  br label %4833

; <label>:5226                                    ; preds = %4833
  br label %5227

; <label>:5227                                    ; preds = %5226, %4667
  %5228 = phi float [ %4669, %4667 ], [ %4834, %5226 ]
  %5229 = phi float [ %4670, %4667 ], [ %4835, %5226 ]
  %5230 = phi float [ %4671, %4667 ], [ %4836, %5226 ]
  %5231 = phi float [ %4672, %4667 ], [ %4837, %5226 ]
  %5232 = phi float [ %4673, %4667 ], [ %4838, %5226 ]
  %5233 = phi float [ %4674, %4667 ], [ %4839, %5226 ]
  %5234 = add i32 %4668, 1
  %5235 = icmp ugt i32 %5234, %4664
  br i1 %5235, label %5236, label %4667

; <label>:5236                                    ; preds = %5227
  br label %5237

; <label>:5237                                    ; preds = %5236, %4617, %4607
  %5238 = phi float [ %4608, %4607 ], [ %4608, %4617 ], [ %5228, %5236 ]
  %5239 = phi float [ %4609, %4607 ], [ %4609, %4617 ], [ %5229, %5236 ]
  %5240 = phi float [ %4610, %4607 ], [ %4610, %4617 ], [ %5230, %5236 ]
  %5241 = phi float [ %4611, %4607 ], [ %4611, %4617 ], [ %5231, %5236 ]
  %5242 = phi float [ %4612, %4607 ], [ %4612, %4617 ], [ %5232, %5236 ]
  %5243 = phi float [ %4613, %4607 ], [ %4613, %4617 ], [ %5233, %5236 ]
  %5244 = fmul fast float %1561, %1561
  %5245 = fsub fast float 1.000000e+00, %5244
  %5246 = call float @dx.op.dot3.f32(i32 55, float %5245, float %5245, float %5245, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5247 = fsub fast float 1.000000e+00, %5246
  %5248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5249 = extractvalue %dx.types.CBufRet.f32 %5248, 0
  %5250 = fmul fast float %5249, %3511
  %5251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5252 = extractvalue %dx.types.CBufRet.f32 %5251, 3
  %5253 = fsub fast float 1.000000e+00, %1539
  %5254 = call float @dx.op.unary.f32(i32 7, float %5253)  ; Saturate(value)
  %5255 = fadd fast float %5243, %1538
  %5256 = fmul fast float %5255, %1539
  %5257 = fmul fast float %5254, %5252
  %5258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5259 = extractvalue %dx.types.CBufRet.f32 %5258, 3
  %5260 = fmul fast float %5241, %2167
  %5261 = fmul fast float %5242, %2168
  %5262 = fmul fast float %5243, %2169
  %5263 = fcmp fast ogt float %82, %189
  %5264 = and i1 %5263, %1969
  %5265 = or i1 %1975, %5264
  %5266 = icmp eq i32 %1968, 2
  %5267 = fcmp fast ole float %82, %189
  %5268 = and i1 %5267, %5266
  %5269 = or i1 %5268, %5265
  br i1 %5264, label %5270, label %5529

; <label>:5270                                    ; preds = %5237
  %5271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.f32 %5271, 2
  %5273 = extractvalue %dx.types.CBufRet.f32 %5271, 3
  %5274 = fmul fast float %5272, %91
  %5275 = fmul fast float %5273, %92
  %5276 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5277 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  %5278 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5276, float %5277, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5279 = extractvalue %dx.types.ResRet.f32 %5278, 0
  %5280 = extractvalue %dx.types.ResRet.f32 %5278, 1
  %5281 = extractvalue %dx.types.ResRet.f32 %5278, 2
  %5282 = extractvalue %dx.types.ResRet.f32 %5278, 3
  %5283 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5276, float %5277, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5284 = extractvalue %dx.types.ResRet.f32 %5283, 0
  %5285 = extractvalue %dx.types.ResRet.f32 %5283, 1
  %5286 = extractvalue %dx.types.ResRet.f32 %5283, 2
  %5287 = extractvalue %dx.types.ResRet.f32 %5283, 3
  %5288 = call float @dx.op.binary.f32(i32 35, float %5280, float %5281)  ; FMax(a,b)
  %5289 = call float @dx.op.binary.f32(i32 35, float %5279, float %5288)  ; FMax(a,b)
  %5290 = call float @dx.op.binary.f32(i32 35, float %5289, float %5282)  ; FMax(a,b)
  %5291 = call float @dx.op.binary.f32(i32 36, float %5285, float %5286)  ; FMin(a,b)
  %5292 = call float @dx.op.binary.f32(i32 36, float %5284, float %5291)  ; FMin(a,b)
  %5293 = call float @dx.op.binary.f32(i32 36, float %5292, float %5287)  ; FMin(a,b)
  %5294 = fmul fast float %5290, 2.550000e+02
  %5295 = fadd fast float %5294, 0x3F70101020000000
  %5296 = fptoui float %5295 to i32
  %5297 = fmul fast float %5293, 2.550000e+02
  %5298 = fadd fast float %5297, 0x3F70101020000000
  %5299 = fptoui float %5298 to i32
  %5300 = icmp ult i32 %5296, %5299
  br i1 %5300, label %5301, label %5469

; <label>:5301                                    ; preds = %5270
  %5302 = fcmp fast ogt float %81, 9.843750e-01
  %5303 = fadd fast float %82, -4.000000e+00
  %5304 = select i1 %5302, float -4.000000e+00, float %5303
  %5305 = call float @dx.op.binary.f32(i32 35, float %5304, float 0.000000e+00)  ; FMax(a,b)
  %5306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5307 = extractvalue %dx.types.CBufRet.f32 %5306, 0
  %5308 = fadd fast float %5307, %5305
  %5309 = extractvalue %dx.types.CBufRet.f32 %5306, 2
  %5310 = fmul fast float %5308, %5309
  %5311 = call float @dx.op.unary.f32(i32 23, float %5310)  ; Log(value)
  %5312 = extractvalue %dx.types.CBufRet.f32 %5306, 3
  %5313 = fmul fast float %5312, %5311
  %5314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5315 = extractvalue %dx.types.CBufRet.f32 %5314, 2
  %5316 = fmul fast float %5313, %5315
  %5317 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5318 = uitofp i32 %5296 to float
  %5319 = uitofp i32 %5299 to float
  %5320 = fadd fast float %5318, 5.000000e-01
  %5321 = fadd fast float %5319, 5.000000e-01
  %5322 = fmul fast float %5315, %5320
  %5323 = fmul fast float %5315, %5321
  %5324 = fadd fast float %5322, 0x3F0FFB4800000000
  %5325 = fadd fast float %5323, 0xBF0FFB4800000000
  %5326 = call float @dx.op.binary.f32(i32 35, float %5317, float %5324)  ; FMax(a,b)
  %5327 = call float @dx.op.binary.f32(i32 36, float %5326, float %5325)  ; FMin(a,b)
  %5328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5329 = extractvalue %dx.types.CBufRet.f32 %5328, 1
  %5330 = extractvalue %dx.types.CBufRet.f32 %5328, 2
  %5331 = extractvalue %dx.types.CBufRet.f32 %5328, 0
  %5332 = fmul fast float %5329, %5327
  %5333 = fadd fast float %5331, %5332
  %5334 = fadd fast float %5331, %5330
  %5335 = fsub fast float %5329, %5330
  %5336 = fadd fast float %5335, %5331
  %5337 = call float @dx.op.binary.f32(i32 35, float %5333, float %5334)  ; FMax(a,b)
  %5338 = call float @dx.op.binary.f32(i32 36, float %5337, float %5336)  ; FMin(a,b)
  %5339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %5276, float %5277, float %5338, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5340 = extractvalue %dx.types.ResRet.f32 %5339, 0
  %5341 = extractvalue %dx.types.ResRet.f32 %5339, 1
  %5342 = extractvalue %dx.types.ResRet.f32 %5339, 2
  %5343 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5344 = extractvalue %dx.types.CBufRet.i32 %5343, 0
  %5345 = extractvalue %dx.types.CBufRet.i32 %5343, 1
  %5346 = uitofp i32 %5344 to float
  %5347 = uitofp i32 %5345 to float
  %5348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5349 = extractvalue %dx.types.CBufRet.f32 %5348, 0
  %5350 = extractvalue %dx.types.CBufRet.f32 %5348, 1
  %5351 = fmul fast float %5346, %5276
  %5352 = fmul fast float %5347, %5277
  %5353 = fadd fast float %5351, -5.000000e-01
  %5354 = fadd fast float %5352, -5.000000e-01
  %5355 = call float @dx.op.unary.f32(i32 22, float %5353)  ; Frc(value)
  %5356 = call float @dx.op.unary.f32(i32 22, float %5354)  ; Frc(value)
  %5357 = fmul fast float %5355, %5355
  %5358 = fmul fast float %5357, %5355
  %5359 = fsub fast float 3.000000e+00, %5355
  %5360 = fmul fast float %5357, %5359
  %5361 = fmul fast float %5355, 3.000000e+00
  %5362 = fmul fast float %5358, 3.000000e+00
  %5363 = fmul fast float %5357, 6.000000e+00
  %5364 = fsub fast float %5362, %5363
  %5365 = fadd fast float %5364, 4.000000e+00
  %5366 = fmul fast float %5365, 0x3FC5555560000000
  %5367 = fmul fast float %5358, -3.000000e+00
  %5368 = fadd fast float %5357, %5355
  %5369 = fmul fast float %5368, 3.000000e+00
  %5370 = fadd fast float %5367, 1.000000e+00
  %5371 = fadd fast float %5370, %5369
  %5372 = fmul fast float %5358, 0x3FC5555560000000
  %5373 = fmul fast float %5356, %5356
  %5374 = fmul fast float %5373, %5356
  %5375 = fsub fast float 3.000000e+00, %5356
  %5376 = fmul fast float %5373, %5375
  %5377 = fmul fast float %5356, 3.000000e+00
  %5378 = fmul fast float %5374, 3.000000e+00
  %5379 = fmul fast float %5373, 6.000000e+00
  %5380 = fsub fast float %5378, %5379
  %5381 = fadd fast float %5380, 4.000000e+00
  %5382 = fmul fast float %5381, 0x3FC5555560000000
  %5383 = fmul fast float %5374, -3.000000e+00
  %5384 = fadd fast float %5373, %5356
  %5385 = fmul fast float %5384, 3.000000e+00
  %5386 = fadd fast float %5383, 1.000000e+00
  %5387 = fadd fast float %5386, %5385
  %5388 = fmul fast float %5374, 0x3FC5555560000000
  %5389 = fadd fast float %5355, 1.000000e+00
  %5390 = fsub fast float 1.000000e+00, %5361
  %5391 = fadd fast float %5390, %5360
  %5392 = fadd fast float %5391, %5365
  %5393 = fmul fast float %5392, 0x3FC5555560000000
  %5394 = fdiv fast float %5366, %5393
  %5395 = fsub fast float %5389, %5394
  %5396 = fsub fast float 1.000000e+00, %5355
  %5397 = fadd fast float %5371, %5358
  %5398 = fmul fast float %5397, 0x3FC5555560000000
  %5399 = fdiv fast float %5372, %5398
  %5400 = fadd fast float %5396, %5399
  %5401 = fadd fast float %5356, 1.000000e+00
  %5402 = fsub fast float 1.000000e+00, %5377
  %5403 = fadd fast float %5402, %5376
  %5404 = fadd fast float %5403, %5381
  %5405 = fmul fast float %5404, 0x3FC5555560000000
  %5406 = fdiv fast float %5382, %5405
  %5407 = fsub fast float %5401, %5406
  %5408 = fsub fast float 1.000000e+00, %5356
  %5409 = fadd fast float %5387, %5374
  %5410 = fmul fast float %5409, 0x3FC5555560000000
  %5411 = fdiv fast float %5388, %5410
  %5412 = fadd fast float %5411, %5408
  %5413 = fmul fast float %5395, %5349
  %5414 = fsub fast float %5276, %5413
  %5415 = fmul fast float %5400, %5349
  %5416 = fadd fast float %5415, %5276
  %5417 = fmul fast float %5412, %5350
  %5418 = fadd fast float %5417, %5277
  %5419 = fmul fast float %5407, %5350
  %5420 = fsub fast float %5277, %5419
  %5421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5414, float %5420, float %5338, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5422 = extractvalue %dx.types.ResRet.f32 %5421, 0
  %5423 = extractvalue %dx.types.ResRet.f32 %5421, 1
  %5424 = extractvalue %dx.types.ResRet.f32 %5421, 2
  %5425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5416, float %5420, float %5338, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5426 = extractvalue %dx.types.ResRet.f32 %5425, 0
  %5427 = extractvalue %dx.types.ResRet.f32 %5425, 1
  %5428 = extractvalue %dx.types.ResRet.f32 %5425, 2
  %5429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5414, float %5418, float %5338, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5430 = extractvalue %dx.types.ResRet.f32 %5429, 0
  %5431 = extractvalue %dx.types.ResRet.f32 %5429, 1
  %5432 = extractvalue %dx.types.ResRet.f32 %5429, 2
  %5433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5416, float %5418, float %5338, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5434 = extractvalue %dx.types.ResRet.f32 %5433, 0
  %5435 = extractvalue %dx.types.ResRet.f32 %5433, 1
  %5436 = extractvalue %dx.types.ResRet.f32 %5433, 2
  %5437 = fsub fast float %5430, %5422
  %5438 = fsub fast float %5431, %5423
  %5439 = fsub fast float %5432, %5424
  %5440 = fmul fast float %5437, %5410
  %5441 = fmul fast float %5438, %5410
  %5442 = fmul fast float %5439, %5410
  %5443 = fadd fast float %5440, %5422
  %5444 = fadd fast float %5441, %5423
  %5445 = fadd fast float %5442, %5424
  %5446 = fsub fast float %5434, %5426
  %5447 = fsub fast float %5435, %5427
  %5448 = fsub fast float %5436, %5428
  %5449 = fmul fast float %5446, %5410
  %5450 = fmul fast float %5447, %5410
  %5451 = fmul fast float %5448, %5410
  %5452 = fsub fast float %5426, %5443
  %5453 = fadd fast float %5452, %5449
  %5454 = fsub fast float %5427, %5444
  %5455 = fadd fast float %5454, %5450
  %5456 = fsub fast float %5428, %5445
  %5457 = fadd fast float %5456, %5451
  %5458 = fmul fast float %5453, %5398
  %5459 = fmul fast float %5455, %5398
  %5460 = fmul fast float %5457, %5398
  %5461 = fadd fast float %5458, %5443
  %5462 = fadd fast float %5459, %5444
  %5463 = fadd fast float %5460, %5445
  %5464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5465 = extractvalue %dx.types.CBufRet.f32 %5464, 1
  %5466 = fmul fast float %5461, %5465
  %5467 = fmul fast float %5462, %5465
  %5468 = fmul fast float %5463, %5465
  br label %5469

; <label>:5469                                    ; preds = %5301, %5270
  %5470 = phi float [ %5340, %5301 ], [ 1.000000e+00, %5270 ]
  %5471 = phi float [ %5341, %5301 ], [ 1.000000e+00, %5270 ]
  %5472 = phi float [ %5342, %5301 ], [ 1.000000e+00, %5270 ]
  %5473 = phi float [ %5466, %5301 ], [ 0.000000e+00, %5270 ]
  %5474 = phi float [ %5467, %5301 ], [ 0.000000e+00, %5270 ]
  %5475 = phi float [ %5468, %5301 ], [ 0.000000e+00, %5270 ]
  %5476 = fmul fast float %5473, %5247
  %5477 = fmul fast float %5474, %5247
  %5478 = fmul fast float %5475, %5247
  %5479 = call float @dx.op.dot3.f32(i32 55, float %5470, float %5471, float %5472, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5480 = call float @dx.op.dot3.f32(i32 55, float %5476, float %5477, float %5478, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5481 = select i1 %229, float %5479, float %5470
  %5482 = select i1 %229, float %5479, float %5471
  %5483 = select i1 %229, float 1.000000e+00, float %5472
  %5484 = select i1 %229, float %5480, float %5476
  %5485 = select i1 %229, float 0.000000e+00, float %5477
  %5486 = select i1 %229, float 0.000000e+00, float %5478
  %5487 = fmul fast float %5481, %5260
  %5488 = fmul fast float %5482, %5261
  %5489 = fmul fast float %5483, %5262
  %5490 = fadd fast float %5487, %5484
  %5491 = fadd fast float %5488, %5485
  %5492 = fadd fast float %5486, %5489
  %5493 = fmul fast float %5481, %5238
  %5494 = fmul fast float %5482, %5239
  %5495 = fmul fast float %5483, %5240
  %5496 = fmul fast float %91, 2.000000e+00
  %5497 = fmul fast float %5496, %5272
  %5498 = fmul fast float %92, 2.000000e+00
  %5499 = fmul fast float %5498, %5273
  %5500 = fsub fast float 1.000000e+00, %5497
  %5501 = fsub fast float 1.000000e+00, %5499
  %5502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5503 = extractvalue %dx.types.CBufRet.f32 %5502, 0
  %5504 = extractvalue %dx.types.CBufRet.f32 %5502, 1
  %5505 = extractvalue %dx.types.CBufRet.f32 %5502, 2
  %5506 = fmul fast float %5500, %5503
  %5507 = fmul fast float %5500, %5504
  %5508 = fmul fast float %5500, %5505
  %5509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5510 = extractvalue %dx.types.CBufRet.f32 %5509, 0
  %5511 = extractvalue %dx.types.CBufRet.f32 %5509, 1
  %5512 = extractvalue %dx.types.CBufRet.f32 %5509, 2
  %5513 = fmul fast float %5501, %5510
  %5514 = fmul fast float %5501, %5511
  %5515 = fmul fast float %5501, %5512
  %5516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5517 = extractvalue %dx.types.CBufRet.f32 %5516, 0
  %5518 = extractvalue %dx.types.CBufRet.f32 %5516, 1
  %5519 = extractvalue %dx.types.CBufRet.f32 %5516, 2
  %5520 = fadd fast float %5513, %5517
  %5521 = fadd fast float %5520, %5506
  %5522 = fadd fast float %5514, %5518
  %5523 = fadd fast float %5522, %5507
  %5524 = fadd fast float %5515, %5519
  %5525 = fadd fast float %5524, %5508
  %5526 = fmul fast float %5521, %189
  %5527 = fmul fast float %5523, %189
  %5528 = fmul fast float %5525, %189
  br label %5529

; <label>:5529                                    ; preds = %5469, %5237
  %5530 = phi float [ %5526, %5469 ], [ %138, %5237 ]
  %5531 = phi float [ %5527, %5469 ], [ %139, %5237 ]
  %5532 = phi float [ %5528, %5469 ], [ %140, %5237 ]
  %5533 = phi float [ %189, %5469 ], [ %82, %5237 ]
  %5534 = phi float [ %5490, %5469 ], [ %5260, %5237 ]
  %5535 = phi float [ %5491, %5469 ], [ %5261, %5237 ]
  %5536 = phi float [ %5492, %5469 ], [ %5262, %5237 ]
  %5537 = phi float [ %5493, %5469 ], [ %5238, %5237 ]
  %5538 = phi float [ %5494, %5469 ], [ %5239, %5237 ]
  %5539 = phi float [ %5495, %5469 ], [ %5240, %5237 ]
  %5540 = phi float [ %5470, %5469 ], [ 1.000000e+00, %5237 ]
  br i1 %5269, label %6695, label %5541

; <label>:5541                                    ; preds = %5529
  %5542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5543 = extractvalue %dx.types.CBufRet.f32 %5542, 0
  %5544 = extractvalue %dx.types.CBufRet.f32 %5542, 1
  %5545 = extractvalue %dx.types.CBufRet.f32 %5542, 2
  %5546 = extractvalue %dx.types.CBufRet.f32 %5542, 3
  %5547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5548 = extractvalue %dx.types.CBufRet.f32 %5547, 0
  %5549 = extractvalue %dx.types.CBufRet.f32 %5547, 1
  %5550 = extractvalue %dx.types.CBufRet.f32 %5547, 2
  %5551 = extractvalue %dx.types.CBufRet.f32 %5547, 3
  %5552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5553 = extractvalue %dx.types.CBufRet.f32 %5552, 0
  %5554 = extractvalue %dx.types.CBufRet.f32 %5552, 1
  %5555 = extractvalue %dx.types.CBufRet.f32 %5552, 2
  %5556 = extractvalue %dx.types.CBufRet.f32 %5552, 3
  %5557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5558 = extractvalue %dx.types.CBufRet.f32 %5557, 0
  %5559 = extractvalue %dx.types.CBufRet.f32 %5557, 1
  %5560 = extractvalue %dx.types.CBufRet.f32 %5557, 2
  %5561 = extractvalue %dx.types.CBufRet.f32 %5557, 3
  %5562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5563 = extractvalue %dx.types.CBufRet.f32 %5562, 3
  %5564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5565 = extractvalue %dx.types.CBufRet.f32 %5564, 3
  %5566 = extractvalue %dx.types.CBufRet.f32 %5564, 0
  %5567 = extractvalue %dx.types.CBufRet.f32 %5564, 1
  %5568 = extractvalue %dx.types.CBufRet.f32 %5564, 2
  %5569 = fcmp fast olt float %5568, -5.000000e-01
  %5570 = call float @dx.op.dot3.f32(i32 55, float %5530, float %5531, float %5532, float %5530, float %5531, float %5532)  ; Dot3(ax,ay,az,bx,by,bz)
  %5571 = call float @dx.op.unary.f32(i32 25, float %5570)  ; Rsqrt(value)
  %5572 = fmul fast float %5571, %5570
  %5573 = fmul fast float %5571, %5530
  %5574 = fmul fast float %5571, %5531
  %5575 = fmul fast float %5571, %5532
  %5576 = fadd fast float %5572, %5546
  %5577 = call float @dx.op.dot3.f32(i32 55, float %5573, float %5574, float %5575, float %5543, float %5544, float %5545)  ; Dot3(ax,ay,az,bx,by,bz)
  %5578 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5579 = extractvalue %dx.types.CBufRet.i32 %5578, 1
  %5580 = and i32 %5579, 1
  %5581 = icmp ne i32 %5580, 0
  %5582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5583 = extractvalue %dx.types.CBufRet.f32 %5582, 2
  %5584 = fcmp fast ogt float %5583, 0.000000e+00
  %5585 = and i1 %5581, %5584
  br i1 %5585, label %5586, label %5992, !dx.controlflow.hints !134

; <label>:5586                                    ; preds = %5541
  %5587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5588 = extractvalue %dx.types.CBufRet.f32 %5587, 3
  %5589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5590 = extractvalue %dx.types.CBufRet.f32 %5589, 2
  %5591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5592 = extractvalue %dx.types.CBufRet.f32 %5591, 2
  %5593 = fsub fast float %5590, %5592
  %5594 = and i32 %5579, 2
  %5595 = extractvalue %dx.types.CBufRet.i32 %5578, 0
  %5596 = call i32 @dx.op.binary.i32(i32 40, i32 %5595, i32 3)  ; UMin(a,b)
  %5597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5598 = extractvalue %dx.types.CBufRet.f32 %5597, 0
  %5599 = extractvalue %dx.types.CBufRet.f32 %5597, 1
  %5600 = extractvalue %dx.types.CBufRet.f32 %5591, 0
  %5601 = extractvalue %dx.types.CBufRet.f32 %5591, 1
  %5602 = fsub fast float %5598, %5600
  %5603 = fsub fast float %5599, %5601
  %5604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5605 = extractvalue %dx.types.CBufRet.f32 %5604, 0
  %5606 = fcmp fast ogt float %5605, 0.000000e+00
  %5607 = fsub fast float -0.000000e+00, %5602
  %5608 = fsub fast float -0.000000e+00, %5603
  %5609 = call float @dx.op.dot2.f32(i32 54, float %5573, float %5574, float %5573, float %5574)  ; Dot2(ax,ay,bx,by)
  %5610 = call float @dx.op.dot2.f32(i32 54, float %5573, float %5574, float %5607, float %5608)  ; Dot2(ax,ay,bx,by)
  %5611 = fmul fast float %5610, 2.000000e+00
  %5612 = call float @dx.op.dot2.f32(i32 54, float %5607, float %5608, float %5607, float %5608)  ; Dot2(ax,ay,bx,by)
  %5613 = fmul fast float %5605, %5605
  %5614 = fsub fast float %5612, %5613
  %5615 = fmul fast float %5611, %5611
  %5616 = fmul fast float %5609, 4.000000e+00
  %5617 = fmul fast float %5616, %5614
  %5618 = fsub fast float %5615, %5617
  %5619 = fcmp fast ogt float %5618, 0.000000e+00
  br i1 %5619, label %5620, label %5635

; <label>:5620                                    ; preds = %5586
  %5621 = fcmp fast ogt float %5611, 0.000000e+00
  %5622 = call float @dx.op.unary.f32(i32 24, float %5618)  ; Sqrt(value)
  %5623 = fsub fast float -0.000000e+00, %5622
  %5624 = select i1 %5621, float %5622, float %5623
  %5625 = fadd fast float %5624, %5611
  %5626 = fmul float %5625, -5.000000e-01
  %5627 = fdiv fast float %5626, %5609
  %5628 = call float @dx.op.binary.f32(i32 35, float %5627, float 0.000000e+00)  ; FMax(a,b)
  %5629 = call float @dx.op.binary.f32(i32 36, float %5572, float %5628)  ; FMin(a,b)
  %5630 = fdiv fast float %5614, %5626
  %5631 = call float @dx.op.binary.f32(i32 35, float %5630, float 0.000000e+00)  ; FMax(a,b)
  %5632 = call float @dx.op.binary.f32(i32 36, float %5572, float %5631)  ; FMin(a,b)
  %5633 = call float @dx.op.binary.f32(i32 36, float %5629, float %5632)  ; FMin(a,b)
  %5634 = call float @dx.op.binary.f32(i32 35, float %5629, float %5632)  ; FMax(a,b)
  br label %5635

; <label>:5635                                    ; preds = %5620, %5586
  %5636 = phi float [ %5634, %5620 ], [ -1.000000e+00, %5586 ]
  %5637 = phi float [ %5633, %5620 ], [ -1.000000e+00, %5586 ]
  %5638 = phi i1 [ true, %5620 ], [ false, %5586 ]
  %5639 = and i1 %5606, %5638
  br i1 %5639, label %5640, label %5642

; <label>:5640                                    ; preds = %5635
  %5641 = fcmp fast oeq float %5637, %5636
  br i1 %5641, label %5945, label %5643

; <label>:5642                                    ; preds = %5635
  br i1 %5606, label %5945, label %5643

; <label>:5643                                    ; preds = %5642, %5640
  %5644 = phi float [ %5572, %5642 ], [ %5636, %5640 ]
  %5645 = phi float [ 0.000000e+00, %5642 ], [ %5637, %5640 ]
  %5646 = icmp ne i32 %5594, 0
  %5647 = fmul fast float %5644, %5575
  %5648 = fadd fast float %5647, %5588
  %5649 = fmul fast float %5648, %5644
  %5650 = select i1 %5646, float 0.000000e+00, float %5649
  %5651 = fcmp fast oeq float %5575, 0.000000e+00
  %5652 = fdiv fast float %5593, %5575
  %5653 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5652)  ; FMax(a,b)
  %5654 = select i1 %5651, float %5644, float %5653
  %5655 = call float @dx.op.binary.f32(i32 36, float %5644, float %5654)  ; FMin(a,b)
  %5656 = fcmp fast ogt float %5575, 0.000000e+00
  %5657 = fcmp fast olt float %5593, 0.000000e+00
  br i1 %5656, label %5658, label %5715

; <label>:5658                                    ; preds = %5643
  %5659 = icmp eq i32 %5594, 0
  br i1 %5657, label %5660, label %5704

; <label>:5660                                    ; preds = %5658
  %5661 = select i1 %5659, float %5644, float 0.000000e+00
  %5662 = fsub fast float -0.000000e+00, %5661
  %5663 = call float @dx.op.unary.f32(i32 6, float %5662)  ; FAbs(value)
  %5664 = fmul fast float %5661, %5575
  %5665 = fadd fast float %5664, %5588
  %5666 = fmul fast float %5663, %5665
  %5667 = fsub fast float %5650, %5666
  %5668 = fsub fast float %5644, %5663
  %5669 = select i1 %5659, float %5668, float 0.000000e+00
  %5670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5671 = extractvalue %dx.types.CBufRet.f32 %5670, 0
  %5672 = extractvalue %dx.types.CBufRet.f32 %5670, 1
  %5673 = extractvalue %dx.types.CBufRet.f32 %5670, 2
  %5674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5675 = extractvalue %dx.types.CBufRet.f32 %5674, 0
  %5676 = extractvalue %dx.types.CBufRet.f32 %5674, 1
  %5677 = extractvalue %dx.types.CBufRet.f32 %5674, 2
  %5678 = extractvalue %dx.types.CBufRet.f32 %5674, 3
  %5679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5680 = extractvalue %dx.types.CBufRet.f32 %5679, 3
  %5681 = call float @dx.op.binary.f32(i32 36, float %5667, float %5680)  ; FMin(a,b)
  %5682 = fmul fast float %5678, %5669
  %5683 = call float @dx.op.unary.f32(i32 7, float %5682)  ; Saturate(value)
  %5684 = fsub fast float %5675, %5671
  %5685 = fsub fast float %5676, %5672
  %5686 = fsub fast float %5677, %5673
  %5687 = fmul fast float %5683, %5684
  %5688 = fmul fast float %5683, %5685
  %5689 = fmul fast float %5683, %5686
  %5690 = fadd fast float %5687, %5671
  %5691 = fadd fast float %5688, %5672
  %5692 = fadd fast float %5689, %5673
  %5693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5694 = extractvalue %dx.types.CBufRet.f32 %5693, 0
  %5695 = extractvalue %dx.types.CBufRet.f32 %5693, 1
  %5696 = fadd fast float %5695, %5694
  %5697 = call float @dx.op.unary.f32(i32 7, float %5696)  ; Saturate(value)
  %5698 = extractvalue %dx.types.CBufRet.f32 %5693, 2
  %5699 = extractvalue %dx.types.CBufRet.f32 %5693, 3
  %5700 = fadd fast float %5699, %5698
  %5701 = call float @dx.op.unary.f32(i32 7, float %5700)  ; Saturate(value)
  %5702 = fmul fast float %5697, %5681
  %5703 = fmul fast float %5702, %5701
  br label %5945

; <label>:5704                                    ; preds = %5658
  br i1 %5659, label %5705, label %5726

; <label>:5705                                    ; preds = %5704
  %5706 = call float @dx.op.binary.f32(i32 36, float %5655, float %5645)  ; FMin(a,b)
  %5707 = fsub fast float %5655, %5706
  %5708 = fsub fast float %5707, %5644
  %5709 = call float @dx.op.unary.f32(i32 6, float %5708)  ; FAbs(value)
  %5710 = fadd fast float %5707, %5644
  %5711 = fmul fast float %5710, %5575
  %5712 = fadd fast float %5711, %5588
  %5713 = fmul fast float %5712, %5709
  %5714 = fsub fast float %5650, %5713
  br label %5726

; <label>:5715                                    ; preds = %5643
  br i1 %5657, label %5716, label %5726

; <label>:5716                                    ; preds = %5715
  %5717 = call float @dx.op.binary.f32(i32 35, float %5645, float %5655)  ; FMax(a,b)
  %5718 = icmp eq i32 %5594, 0
  %5719 = select i1 %5718, float %5655, float 0.000000e+00
  %5720 = fsub fast float -0.000000e+00, %5719
  %5721 = call float @dx.op.unary.f32(i32 6, float %5720)  ; FAbs(value)
  %5722 = fmul fast float %5719, %5575
  %5723 = fadd fast float %5722, %5588
  %5724 = fmul fast float %5721, %5723
  %5725 = fsub fast float %5650, %5724
  br label %5726

; <label>:5726                                    ; preds = %5716, %5715, %5705, %5704
  %5727 = phi float [ %5645, %5704 ], [ %5645, %5705 ], [ %5717, %5716 ], [ %5645, %5715 ]
  %5728 = phi float [ 0.000000e+00, %5704 ], [ %5709, %5705 ], [ %5721, %5716 ], [ 0.000000e+00, %5715 ]
  %5729 = phi float [ %5650, %5704 ], [ %5714, %5705 ], [ %5725, %5716 ], [ %5650, %5715 ]
  %5730 = phi float [ %5655, %5704 ], [ %5655, %5705 ], [ %5644, %5716 ], [ %5644, %5715 ]
  %5731 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 0
  store float -1.000000e+00, float* %5731, align 4, !tbaa !135, !noalias !137
  %5732 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 1
  store float -1.000000e+00, float* %5732, align 4, !tbaa !135, !noalias !137
  %5733 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 2
  store float -1.000000e+00, float* %5733, align 4, !tbaa !135, !noalias !137
  %5734 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 0
  store float -1.000000e+00, float* %5734, align 4, !tbaa !135, !noalias !137
  %5735 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 1
  store float -1.000000e+00, float* %5735, align 4, !tbaa !135, !noalias !137
  %5736 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 2
  store float -1.000000e+00, float* %5736, align 4, !tbaa !135, !noalias !137
  %5737 = icmp sgt i32 %5596, 0
  br i1 %5737, label %5738, label %5799

; <label>:5738                                    ; preds = %5726
  br label %5739

; <label>:5739                                    ; preds = %5788, %5738
  %5740 = phi i32 [ %5789, %5788 ], [ 0, %5738 ]
  %5741 = phi i32 [ %5790, %5788 ], [ 0, %5738 ]
  %5742 = add nuw i32 %5741, 171
  %5743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %5742)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5743, 0
  %5745 = extractvalue %dx.types.CBufRet.f32 %5743, 1
  %5746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5747 = extractvalue %dx.types.CBufRet.f32 %5746, 0
  %5748 = extractvalue %dx.types.CBufRet.f32 %5746, 1
  %5749 = fsub fast float %5744, %5747
  %5750 = fsub fast float %5745, %5748
  %5751 = extractvalue %dx.types.CBufRet.f32 %5743, 2
  %5752 = fsub fast float -0.000000e+00, %5749
  %5753 = fsub fast float -0.000000e+00, %5750
  %5754 = call float @dx.op.dot2.f32(i32 54, float %5573, float %5574, float %5752, float %5753)  ; Dot2(ax,ay,bx,by)
  %5755 = fmul fast float %5754, 2.000000e+00
  %5756 = call float @dx.op.dot2.f32(i32 54, float %5752, float %5753, float %5752, float %5753)  ; Dot2(ax,ay,bx,by)
  %5757 = fmul fast float %5751, %5751
  %5758 = fsub fast float %5756, %5757
  %5759 = fmul fast float %5755, %5755
  %5760 = fmul fast float %5616, %5758
  %5761 = fsub fast float %5759, %5760
  %5762 = fcmp fast ogt float %5761, 0.000000e+00
  br i1 %5762, label %5763, label %5778

; <label>:5763                                    ; preds = %5739
  %5764 = fcmp fast ogt float %5755, 0.000000e+00
  %5765 = call float @dx.op.unary.f32(i32 24, float %5761)  ; Sqrt(value)
  %5766 = fsub fast float -0.000000e+00, %5765
  %5767 = select i1 %5764, float %5765, float %5766
  %5768 = fadd fast float %5767, %5755
  %5769 = fmul float %5768, -5.000000e-01
  %5770 = fdiv fast float %5769, %5609
  %5771 = call float @dx.op.binary.f32(i32 35, float %5770, float 0.000000e+00)  ; FMax(a,b)
  %5772 = call float @dx.op.binary.f32(i32 36, float %5644, float %5771)  ; FMin(a,b)
  %5773 = fdiv fast float %5758, %5769
  %5774 = call float @dx.op.binary.f32(i32 35, float %5773, float 0.000000e+00)  ; FMax(a,b)
  %5775 = call float @dx.op.binary.f32(i32 36, float %5644, float %5774)  ; FMin(a,b)
  %5776 = call float @dx.op.binary.f32(i32 36, float %5772, float %5775)  ; FMin(a,b)
  %5777 = call float @dx.op.binary.f32(i32 35, float %5772, float %5775)  ; FMax(a,b)
  br label %5778

; <label>:5778                                    ; preds = %5763, %5739
  %5779 = phi float [ %5777, %5763 ], [ -1.000000e+00, %5739 ]
  %5780 = phi float [ %5776, %5763 ], [ -1.000000e+00, %5739 ]
  %5781 = phi i1 [ true, %5763 ], [ false, %5739 ]
  br i1 %5781, label %5782, label %5788

; <label>:5782                                    ; preds = %5778
  %5783 = call float @dx.op.binary.f32(i32 35, float %5727, float %5780)  ; FMax(a,b)
  %5784 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %5741
  store float %5783, float* %5784, align 4, !tbaa !135, !noalias !137
  %5785 = call float @dx.op.binary.f32(i32 35, float %5727, float %5779)  ; FMax(a,b)
  %5786 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %5741
  store float %5785, float* %5786, align 4, !tbaa !135, !noalias !137
  %5787 = add nsw i32 %5740, 1
  br label %5788

; <label>:5788                                    ; preds = %5782, %5778
  %5789 = phi i32 [ %5787, %5782 ], [ %5740, %5778 ]
  %5790 = add nuw nsw i32 %5741, 1
  %5791 = icmp eq i32 %5790, %5596
  br i1 %5791, label %5792, label %5739

; <label>:5792                                    ; preds = %5788
  %5793 = load float, float* %5733, align 4, !tbaa !135, !alias.scope !153, !noalias !156
  %5794 = load float, float* %5732, align 4, !tbaa !135, !alias.scope !159, !noalias !160
  %5795 = load float, float* %5731, align 4, !tbaa !135, !alias.scope !161, !noalias !162
  %5796 = load float, float* %5736, align 4, !tbaa !135, !alias.scope !163, !noalias !166
  %5797 = load float, float* %5735, align 4, !tbaa !135, !alias.scope !169, !noalias !170
  %5798 = load float, float* %5734, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  br label %5799

; <label>:5799                                    ; preds = %5792, %5726
  %5800 = phi float [ -1.000000e+00, %5726 ], [ %5798, %5792 ]
  %5801 = phi float [ -1.000000e+00, %5726 ], [ %5797, %5792 ]
  %5802 = phi float [ -1.000000e+00, %5726 ], [ %5796, %5792 ]
  %5803 = phi float [ -1.000000e+00, %5726 ], [ %5795, %5792 ]
  %5804 = phi float [ -1.000000e+00, %5726 ], [ %5794, %5792 ]
  %5805 = phi float [ -1.000000e+00, %5726 ], [ %5793, %5792 ]
  %5806 = phi i32 [ 0, %5726 ], [ %5789, %5792 ]
  %5807 = call float @dx.op.binary.f32(i32 36, float %5804, float %5805)  ; FMin(a,b)
  %5808 = call float @dx.op.binary.f32(i32 36, float %5803, float %5807)  ; FMin(a,b)
  %5809 = call float @dx.op.binary.f32(i32 35, float %5803, float %5804)  ; FMax(a,b)
  %5810 = call float @dx.op.binary.f32(i32 36, float %5809, float %5805)  ; FMin(a,b)
  %5811 = call float @dx.op.binary.f32(i32 36, float %5803, float %5804)  ; FMin(a,b)
  %5812 = call float @dx.op.binary.f32(i32 35, float %5811, float %5810)  ; FMax(a,b)
  %5813 = call float @dx.op.binary.f32(i32 35, float %5804, float %5805)  ; FMax(a,b)
  %5814 = call float @dx.op.binary.f32(i32 35, float %5803, float %5813)  ; FMax(a,b)
  store float %5808, float* %5731, align 4, !tbaa !135, !alias.scope !161, !noalias !162
  store float %5812, float* %5732, align 4, !tbaa !135, !alias.scope !159, !noalias !160
  store float %5814, float* %5733, align 4, !tbaa !135, !alias.scope !153, !noalias !156
  %5815 = call float @dx.op.binary.f32(i32 36, float %5801, float %5802)  ; FMin(a,b)
  %5816 = call float @dx.op.binary.f32(i32 36, float %5800, float %5815)  ; FMin(a,b)
  %5817 = call float @dx.op.binary.f32(i32 35, float %5800, float %5801)  ; FMax(a,b)
  %5818 = call float @dx.op.binary.f32(i32 36, float %5817, float %5802)  ; FMin(a,b)
  %5819 = call float @dx.op.binary.f32(i32 36, float %5800, float %5801)  ; FMin(a,b)
  %5820 = call float @dx.op.binary.f32(i32 35, float %5819, float %5818)  ; FMax(a,b)
  %5821 = call float @dx.op.binary.f32(i32 35, float %5801, float %5802)  ; FMax(a,b)
  %5822 = call float @dx.op.binary.f32(i32 35, float %5800, float %5821)  ; FMax(a,b)
  store float %5816, float* %5734, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  store float %5820, float* %5735, align 4, !tbaa !135, !alias.scope !169, !noalias !170
  store float %5822, float* %5736, align 4, !tbaa !135, !alias.scope !163, !noalias !166
  %5823 = sub nsw i32 3, %5806
  %5824 = icmp sgt i32 %5823, 2
  br i1 %5824, label %5825, label %5863

; <label>:5825                                    ; preds = %5799
  %5826 = icmp eq i32 %5594, 0
  %5827 = fsub fast float %5644, %5728
  %5828 = select i1 %5826, float %5827, float %5728
  %5829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5830 = extractvalue %dx.types.CBufRet.f32 %5829, 0
  %5831 = extractvalue %dx.types.CBufRet.f32 %5829, 1
  %5832 = extractvalue %dx.types.CBufRet.f32 %5829, 2
  %5833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5834 = extractvalue %dx.types.CBufRet.f32 %5833, 0
  %5835 = extractvalue %dx.types.CBufRet.f32 %5833, 1
  %5836 = extractvalue %dx.types.CBufRet.f32 %5833, 2
  %5837 = extractvalue %dx.types.CBufRet.f32 %5833, 3
  %5838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5839 = extractvalue %dx.types.CBufRet.f32 %5838, 3
  %5840 = call float @dx.op.binary.f32(i32 36, float %5729, float %5839)  ; FMin(a,b)
  %5841 = fmul fast float %5837, %5828
  %5842 = call float @dx.op.unary.f32(i32 7, float %5841)  ; Saturate(value)
  %5843 = fsub fast float %5834, %5830
  %5844 = fsub fast float %5835, %5831
  %5845 = fsub fast float %5836, %5832
  %5846 = fmul fast float %5842, %5843
  %5847 = fmul fast float %5842, %5844
  %5848 = fmul fast float %5842, %5845
  %5849 = fadd fast float %5846, %5830
  %5850 = fadd fast float %5847, %5831
  %5851 = fadd fast float %5848, %5832
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5854 = extractvalue %dx.types.CBufRet.f32 %5852, 1
  %5855 = fadd fast float %5854, %5853
  %5856 = call float @dx.op.unary.f32(i32 7, float %5855)  ; Saturate(value)
  %5857 = extractvalue %dx.types.CBufRet.f32 %5852, 2
  %5858 = extractvalue %dx.types.CBufRet.f32 %5852, 3
  %5859 = fadd fast float %5858, %5857
  %5860 = call float @dx.op.unary.f32(i32 7, float %5859)  ; Saturate(value)
  %5861 = fmul fast float %5856, %5840
  %5862 = fmul fast float %5861, %5860
  br label %5945

; <label>:5863                                    ; preds = %5799
  %5864 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %5823
  %5865 = load float, float* %5864, align 4, !tbaa !135, !noalias !137
  %5866 = fcmp fast olt float %5865, %5730
  %5867 = icmp sgt i32 %5806, 0
  %5868 = and i1 %5867, %5866
  br i1 %5868, label %5869, label %5906

; <label>:5869                                    ; preds = %5863
  br label %5870

; <label>:5870                                    ; preds = %5899, %5869
  %5871 = phi float [ %5900, %5899 ], [ %5728, %5869 ]
  %5872 = phi float [ %5901, %5899 ], [ %5729, %5869 ]
  %5873 = phi float [ %5881, %5899 ], [ %5865, %5869 ]
  %5874 = phi i32 [ %5878, %5899 ], [ %5823, %5869 ]
  %5875 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %5874
  %5876 = load float, float* %5875, align 4, !tbaa !135, !noalias !137
  %5877 = icmp slt i32 %5874, 2
  %5878 = add nsw i32 %5874, 1
  %5879 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %5878
  %5880 = load float, float* %5879, align 4, !tbaa !135, !noalias !137
  %5881 = select i1 %5877, float %5880, float %5644
  %5882 = call float @dx.op.binary.f32(i32 36, float %5881, float %5876)  ; FMin(a,b)
  %5883 = call float @dx.op.binary.f32(i32 36, float %5730, float %5882)  ; FMin(a,b)
  %5884 = icmp eq i32 %5594, 0
  %5885 = fadd fast float %5883, %5873
  %5886 = fmul fast float %5885, %5575
  %5887 = fadd fast float %5886, %5588
  br i1 %5884, label %5893, label %5888

; <label>:5888                                    ; preds = %5870
  %5889 = fsub fast float %5883, %5873
  %5890 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5889)  ; FMax(a,b)
  %5891 = fmul fast float %5890, %5887
  %5892 = fadd fast float %5891, %5872
  br label %5899

; <label>:5893                                    ; preds = %5870
  %5894 = fsub fast float %5873, %5883
  %5895 = call float @dx.op.unary.f32(i32 6, float %5894)  ; FAbs(value)
  %5896 = fadd fast float %5895, %5871
  %5897 = fmul fast float %5895, %5887
  %5898 = fsub fast float %5872, %5897
  br label %5899

; <label>:5899                                    ; preds = %5893, %5888
  %5900 = phi float [ %5890, %5888 ], [ %5896, %5893 ]
  %5901 = phi float [ %5892, %5888 ], [ %5898, %5893 ]
  %5902 = fcmp fast olt float %5881, %5730
  %5903 = icmp slt i32 %5878, 3
  %5904 = and i1 %5903, %5902
  br i1 %5904, label %5870, label %5905

; <label>:5905                                    ; preds = %5899
  br label %5906

; <label>:5906                                    ; preds = %5905, %5863
  %5907 = phi float [ %5728, %5863 ], [ %5900, %5905 ]
  %5908 = phi float [ %5729, %5863 ], [ %5901, %5905 ]
  %5909 = fsub fast float %5644, %5907
  %5910 = select i1 %5646, float %5907, float %5909
  %5911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5911, 0
  %5913 = extractvalue %dx.types.CBufRet.f32 %5911, 1
  %5914 = extractvalue %dx.types.CBufRet.f32 %5911, 2
  %5915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5916 = extractvalue %dx.types.CBufRet.f32 %5915, 0
  %5917 = extractvalue %dx.types.CBufRet.f32 %5915, 1
  %5918 = extractvalue %dx.types.CBufRet.f32 %5915, 2
  %5919 = extractvalue %dx.types.CBufRet.f32 %5915, 3
  %5920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5921 = extractvalue %dx.types.CBufRet.f32 %5920, 3
  %5922 = call float @dx.op.binary.f32(i32 36, float %5908, float %5921)  ; FMin(a,b)
  %5923 = fmul fast float %5919, %5910
  %5924 = call float @dx.op.unary.f32(i32 7, float %5923)  ; Saturate(value)
  %5925 = fsub fast float %5916, %5912
  %5926 = fsub fast float %5917, %5913
  %5927 = fsub fast float %5918, %5914
  %5928 = fmul fast float %5924, %5925
  %5929 = fmul fast float %5924, %5926
  %5930 = fmul fast float %5924, %5927
  %5931 = fadd fast float %5928, %5912
  %5932 = fadd fast float %5929, %5913
  %5933 = fadd fast float %5930, %5914
  %5934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5935 = extractvalue %dx.types.CBufRet.f32 %5934, 0
  %5936 = extractvalue %dx.types.CBufRet.f32 %5934, 1
  %5937 = fadd fast float %5936, %5935
  %5938 = call float @dx.op.unary.f32(i32 7, float %5937)  ; Saturate(value)
  %5939 = extractvalue %dx.types.CBufRet.f32 %5934, 2
  %5940 = extractvalue %dx.types.CBufRet.f32 %5934, 3
  %5941 = fadd fast float %5940, %5939
  %5942 = call float @dx.op.unary.f32(i32 7, float %5941)  ; Saturate(value)
  %5943 = fmul fast float %5938, %5922
  %5944 = fmul fast float %5943, %5942
  br label %5945

; <label>:5945                                    ; preds = %5906, %5825, %5660, %5642, %5640
  %5946 = phi float [ %5669, %5660 ], [ %5828, %5825 ], [ %5910, %5906 ], [ 0.000000e+00, %5640 ], [ 0.000000e+00, %5642 ]
  %5947 = phi float [ %5703, %5660 ], [ %5862, %5825 ], [ %5944, %5906 ], [ 0.000000e+00, %5640 ], [ 0.000000e+00, %5642 ]
  %5948 = phi float [ %5690, %5660 ], [ %5849, %5825 ], [ %5931, %5906 ], [ 0.000000e+00, %5640 ], [ 0.000000e+00, %5642 ]
  %5949 = phi float [ %5691, %5660 ], [ %5850, %5825 ], [ %5932, %5906 ], [ 0.000000e+00, %5640 ], [ 0.000000e+00, %5642 ]
  %5950 = phi float [ %5692, %5660 ], [ %5851, %5825 ], [ %5933, %5906 ], [ 0.000000e+00, %5640 ], [ 0.000000e+00, %5642 ]
  %5951 = fmul fast float %5583, %5947
  %5952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5953 = extractvalue %dx.types.CBufRet.f32 %5952, 2
  %5954 = fsub fast float %5590, %5953
  %5955 = fcmp fast olt float %5951, -2.000000e+01
  %5956 = call float @dx.op.unary.f32(i32 21, float %5951)  ; Exp(value)
  %5957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5958 = extractvalue %dx.types.CBufRet.f32 %5957, 2
  %5959 = extractvalue %dx.types.CBufRet.f32 %5957, 3
  %5960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5961 = extractvalue %dx.types.CBufRet.f32 %5960, 2
  %5962 = fmul fast float %5959, %5954
  %5963 = call float @dx.op.unary.f32(i32 7, float %5962)  ; Saturate(value)
  %5964 = fsub fast float 1.000000e+00, %5963
  %5965 = fmul fast float %5575, 5.000000e-01
  %5966 = fadd fast float %5965, 5.000000e-01
  %5967 = call float @dx.op.unary.f32(i32 7, float %5966)  ; Saturate(value)
  %5968 = fsub fast float 1.000000e+00, %5967
  %5969 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5964)  ; FMax(a,b)
  %5970 = fdiv fast float %5968, %5969
  %5971 = fsub fast float %5954, %5532
  %5972 = call float @dx.op.unary.f32(i32 6, float %5971)  ; FAbs(value)
  %5973 = fmul fast float %5972, %5958
  %5974 = call float @dx.op.unary.f32(i32 7, float %5970)  ; Saturate(value)
  %5975 = fsub fast float 1.000000e+00, %5973
  %5976 = fmul fast float %5975, %5974
  %5977 = fadd fast float %5976, %5973
  %5978 = fmul fast float %5961, %5954
  %5979 = call float @dx.op.unary.f32(i32 7, float %5978)  ; Saturate(value)
  %5980 = fsub fast float 1.000000e+00, %5977
  %5981 = fmul fast float %5980, %5979
  %5982 = fadd fast float %5981, %5977
  %5983 = call float @dx.op.unary.f32(i32 7, float %5982)  ; Saturate(value)
  %5984 = fadd fast float %5956, -1.000000e+00
  %5985 = select i1 %5955, float -1.000000e+00, float %5984
  %5986 = fmul fast float %5983, %5985
  %5987 = fadd fast float %5986, 1.000000e+00
  %5988 = fsub fast float -0.000000e+00, %5986
  %5989 = fmul fast float %5948, %5988
  %5990 = fmul fast float %5949, %5988
  %5991 = fmul fast float %5950, %5988
  br label %5992

; <label>:5992                                    ; preds = %5945, %5541
  %5993 = phi float [ %5946, %5945 ], [ 0.000000e+00, %5541 ]
  %5994 = phi float [ %5987, %5945 ], [ 1.000000e+00, %5541 ]
  %5995 = phi float [ %5989, %5945 ], [ 0.000000e+00, %5541 ]
  %5996 = phi float [ %5990, %5945 ], [ 0.000000e+00, %5541 ]
  %5997 = phi float [ %5991, %5945 ], [ 0.000000e+00, %5541 ]
  %5998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5999 = extractvalue %dx.types.CBufRet.f32 %5998, 1
  %6000 = fsub fast float 1.000000e+00, %5994
  %6001 = fmul fast float %6000, %5576
  %6002 = fmul fast float %6001, %5999
  %6003 = fsub fast float %5576, %6002
  br i1 %5569, label %6004, label %6033, !dx.controlflow.hints !173

; <label>:6004                                    ; preds = %5992
  %6005 = fmul fast float %5577, %5566
  %6006 = fadd fast float %6005, %5567
  %6007 = call float @dx.op.unary.f32(i32 7, float %6006)  ; Saturate(value)
  %6008 = fmul fast float %5548, %6003
  %6009 = fsub fast float -0.000000e+00, %6008
  %6010 = fmul fast float %5549, %6003
  %6011 = fsub fast float -0.000000e+00, %6010
  %6012 = call float @dx.op.unary.f32(i32 21, float %6009)  ; Exp(value)
  %6013 = call float @dx.op.unary.f32(i32 21, float %6011)  ; Exp(value)
  %6014 = call float @dx.op.binary.f32(i32 35, float %5556, float %6012)  ; FMax(a,b)
  %6015 = call float @dx.op.binary.f32(i32 35, float %5556, float %6013)  ; FMax(a,b)
  %6016 = fsub fast float %6015, %6014
  %6017 = fmul fast float %6016, %6007
  %6018 = fadd fast float %6017, %6014
  %6019 = call float @dx.op.unary.f32(i32 7, float %6018)  ; Saturate(value)
  %6020 = fsub fast float %5553, %5558
  %6021 = fsub fast float %5554, %5559
  %6022 = fsub fast float %5555, %5560
  %6023 = fmul fast float %6007, %6020
  %6024 = fmul fast float %6007, %6021
  %6025 = fmul fast float %6007, %6022
  %6026 = fadd fast float %6023, %5558
  %6027 = fadd fast float %6024, %5559
  %6028 = fadd fast float %6025, %5560
  %6029 = fsub fast float 1.000000e+00, %6019
  %6030 = fmul fast float %6029, %6026
  %6031 = fmul fast float %6029, %6027
  %6032 = fmul fast float %6029, %6028
  br label %6092

; <label>:6033                                    ; preds = %5992
  %6034 = fmul fast float %6003, %5565
  %6035 = call float @dx.op.unary.f32(i32 7, float %6034)  ; Saturate(value)
  %6036 = fsub fast float 2.000000e+00, %6035
  %6037 = fmul fast float %6035, 9.921875e-01
  %6038 = fmul fast float %6037, %6036
  %6039 = fadd fast float %6038, 3.906250e-03
  %6040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %58, float %6039, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6041 = extractvalue %dx.types.ResRet.f32 %6040, 0
  %6042 = fsub fast float %6035, %6041
  %6043 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6042)  ; FMax(a,b)
  %6044 = fmul fast float %5551, %5532
  %6045 = call float @dx.op.unary.f32(i32 6, float %6044)  ; FAbs(value)
  %6046 = fcmp fast ogt float %6045, 0x3EB0C6F7A0000000
  br i1 %6046, label %6047, label %6053, !dx.controlflow.hints !174

; <label>:6047                                    ; preds = %6033
  %6048 = fmul fast float %6044, 0xBFF7154760000000
  %6049 = call float @dx.op.unary.f32(i32 21, float %6048)  ; Exp(value)
  %6050 = fsub fast float 1.000000e+00, %6049
  %6051 = fdiv fast float %6050, %6044
  %6052 = fmul fast float %6051, %5561
  br label %6053

; <label>:6053                                    ; preds = %6047, %6033
  %6054 = phi float [ %6052, %6047 ], [ %5561, %6033 ]
  %6055 = fadd fast float %6054, %5563
  %6056 = fmul fast float %6055, %6043
  %6057 = fmul fast float %5548, %6056
  %6058 = fsub fast float -0.000000e+00, %6057
  %6059 = fmul fast float %5549, %6056
  %6060 = fsub fast float -0.000000e+00, %6059
  %6061 = fmul fast float %5550, %6056
  %6062 = fsub fast float -0.000000e+00, %6061
  %6063 = call float @dx.op.unary.f32(i32 21, float %6058)  ; Exp(value)
  %6064 = call float @dx.op.unary.f32(i32 21, float %6060)  ; Exp(value)
  %6065 = call float @dx.op.unary.f32(i32 21, float %6062)  ; Exp(value)
  %6066 = fmul fast float %5577, %5577
  %6067 = fadd fast float %6066, 1.000000e+00
  %6068 = fmul fast float %6067, 0x3FAE8EC8A0000000
  %6069 = fmul fast float %6068, %5558
  %6070 = fmul fast float %6068, %5559
  %6071 = fmul fast float %6068, %5560
  %6072 = fmul fast float %5577, %5556
  %6073 = fsub fast float 1.000000e+00, %6072
  %6074 = fmul fast float %5556, %5556
  %6075 = fsub fast float 1.000000e+00, %6074
  %6076 = fmul fast float %6075, 0x3FB45F3060000000
  %6077 = fmul fast float %6073, %6073
  %6078 = fdiv fast float 1.000000e+00, %6077
  %6079 = fmul fast float %6076, %6078
  %6080 = fmul fast float %6079, %5553
  %6081 = fmul fast float %6079, %5554
  %6082 = fmul fast float %6079, %5555
  %6083 = fadd fast float %6080, %6069
  %6084 = fadd fast float %6081, %6070
  %6085 = fadd fast float %6082, %6071
  %6086 = fsub fast float 1.000000e+00, %6063
  %6087 = fsub fast float 1.000000e+00, %6064
  %6088 = fsub fast float 1.000000e+00, %6065
  %6089 = fmul fast float %6083, %6086
  %6090 = fmul fast float %6084, %6087
  %6091 = fmul fast float %6085, %6088
  br label %6092

; <label>:6092                                    ; preds = %6053, %6004
  %6093 = phi float [ %6030, %6004 ], [ %6089, %6053 ]
  %6094 = phi float [ %6031, %6004 ], [ %6090, %6053 ]
  %6095 = phi float [ %6032, %6004 ], [ %6091, %6053 ]
  %6096 = phi float [ %6019, %6004 ], [ %6063, %6053 ]
  %6097 = phi float [ %6019, %6004 ], [ %6064, %6053 ]
  %6098 = phi float [ %6019, %6004 ], [ %6065, %6053 ]
  br i1 %5585, label %6099, label %6297, !dx.controlflow.hints !175

; <label>:6099                                    ; preds = %6092
  %6100 = extractvalue %dx.types.CBufRet.f32 %5998, 0
  %6101 = fmul fast float %6100, %6000
  %6102 = fsub fast float %5995, %6093
  %6103 = fsub fast float %5996, %6094
  %6104 = fsub fast float %5997, %6095
  %6105 = fmul fast float %6101, %6102
  %6106 = fmul fast float %6101, %6103
  %6107 = fmul fast float %6101, %6104
  %6108 = fadd fast float %6105, %6093
  %6109 = fadd fast float %6106, %6094
  %6110 = fadd fast float %6107, %6095
  %6111 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6096)  ; FMax(a,b)
  %6112 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6097)  ; FMax(a,b)
  %6113 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6098)  ; FMax(a,b)
  %6114 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5994)  ; FMax(a,b)
  %6115 = call float @dx.op.binary.f32(i32 35, float %5993, float %6003)  ; FMax(a,b)
  %6116 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6115)  ; FMax(a,b)
  %6117 = fdiv fast float %5993, %6116
  %6118 = call float @dx.op.unary.f32(i32 7, float %6117)  ; Saturate(value)
  %6119 = fdiv fast float %6003, %6116
  %6120 = call float @dx.op.unary.f32(i32 7, float %6119)  ; Saturate(value)
  %6121 = fcmp fast une float %6114, 1.000000e+00
  br i1 %6121, label %6122, label %6135, !dx.controlflow.hints !176

; <label>:6122                                    ; preds = %6099
  %6123 = call float @dx.op.unary.f32(i32 23, float %6114)  ; Log(value)
  %6124 = fmul fast float %6123, 0x3FE62E4300000000
  %6125 = fmul fast float %5995, %6124
  %6126 = fsub fast float -0.000000e+00, %6125
  %6127 = fmul fast float %5996, %6124
  %6128 = fsub fast float -0.000000e+00, %6127
  %6129 = fmul fast float %5997, %6124
  %6130 = fsub fast float -0.000000e+00, %6129
  %6131 = fsub fast float 1.000000e+00, %6114
  %6132 = fdiv fast float %6126, %6131
  %6133 = fdiv fast float %6128, %6131
  %6134 = fdiv fast float %6130, %6131
  br label %6135

; <label>:6135                                    ; preds = %6122, %6099
  %6136 = phi float [ %6132, %6122 ], [ %5995, %6099 ]
  %6137 = phi float [ %6133, %6122 ], [ %5996, %6099 ]
  %6138 = phi float [ %6134, %6122 ], [ %5997, %6099 ]
  %6139 = phi float [ %6124, %6122 ], [ 0.000000e+00, %6099 ]
  %6140 = fcmp fast une float %6111, 1.000000e+00
  br i1 %6140, label %6141, label %6148, !dx.controlflow.hints !177

; <label>:6141                                    ; preds = %6135
  %6142 = call float @dx.op.unary.f32(i32 23, float %6111)  ; Log(value)
  %6143 = fmul fast float %6142, 0x3FE62E4300000000
  %6144 = fmul fast float %6108, %6143
  %6145 = fsub fast float -0.000000e+00, %6144
  %6146 = fsub fast float 1.000000e+00, %6111
  %6147 = fdiv fast float %6145, %6146
  br label %6148

; <label>:6148                                    ; preds = %6141, %6135
  %6149 = phi float [ %6147, %6141 ], [ %6108, %6135 ]
  %6150 = phi float [ %6143, %6141 ], [ 0.000000e+00, %6135 ]
  %6151 = fcmp fast une float %6112, 1.000000e+00
  br i1 %6151, label %6152, label %6159, !dx.controlflow.hints !177

; <label>:6152                                    ; preds = %6148
  %6153 = call float @dx.op.unary.f32(i32 23, float %6112)  ; Log(value)
  %6154 = fmul fast float %6153, 0x3FE62E4300000000
  %6155 = fmul fast float %6109, %6154
  %6156 = fsub fast float -0.000000e+00, %6155
  %6157 = fsub fast float 1.000000e+00, %6112
  %6158 = fdiv fast float %6156, %6157
  br label %6159

; <label>:6159                                    ; preds = %6152, %6148
  %6160 = phi float [ %6158, %6152 ], [ %6109, %6148 ]
  %6161 = phi float [ %6154, %6152 ], [ 0.000000e+00, %6148 ]
  %6162 = fcmp fast une float %6113, 1.000000e+00
  br i1 %6162, label %6163, label %6170, !dx.controlflow.hints !177

; <label>:6163                                    ; preds = %6159
  %6164 = call float @dx.op.unary.f32(i32 23, float %6113)  ; Log(value)
  %6165 = fmul fast float %6164, 0x3FE62E4300000000
  %6166 = fmul fast float %6110, %6165
  %6167 = fsub fast float -0.000000e+00, %6166
  %6168 = fsub fast float 1.000000e+00, %6113
  %6169 = fdiv fast float %6167, %6168
  br label %6170

; <label>:6170                                    ; preds = %6163, %6159
  %6171 = phi float [ %6169, %6163 ], [ %6110, %6159 ]
  %6172 = phi float [ %6165, %6163 ], [ 0.000000e+00, %6159 ]
  %6173 = fmul fast float %6136, %6120
  %6174 = fmul fast float %6137, %6120
  %6175 = fmul fast float %6138, %6120
  %6176 = fmul fast float %6139, %6120
  %6177 = fmul fast float %6149, %6118
  %6178 = fmul fast float %6160, %6118
  %6179 = fmul fast float %6171, %6118
  %6180 = fmul fast float %6150, %6118
  %6181 = fmul fast float %6161, %6118
  %6182 = fmul fast float %6172, %6118
  %6183 = fadd fast float %6177, %6173
  %6184 = fadd fast float %6178, %6174
  %6185 = fadd fast float %6179, %6175
  %6186 = fadd fast float %6180, %6176
  %6187 = fadd fast float %6181, %6176
  %6188 = fadd fast float %6182, %6176
  %6189 = fcmp fast une float %6186, 0.000000e+00
  br i1 %6189, label %6190, label %6197, !dx.controlflow.hints !178

; <label>:6190                                    ; preds = %6170
  %6191 = fmul fast float %6186, 0x3FF7154760000000
  %6192 = call float @dx.op.unary.f32(i32 21, float %6191)  ; Exp(value)
  %6193 = fsub fast float 1.000000e+00, %6192
  %6194 = fmul fast float %6183, %6193
  %6195 = fsub fast float -0.000000e+00, %6194
  %6196 = fdiv fast float %6195, %6186
  br label %6197

; <label>:6197                                    ; preds = %6190, %6170
  %6198 = phi float [ %6192, %6190 ], [ 1.000000e+00, %6170 ]
  %6199 = phi float [ %6196, %6190 ], [ %6183, %6170 ]
  %6200 = fcmp fast une float %6187, 0.000000e+00
  br i1 %6200, label %6201, label %6208, !dx.controlflow.hints !178

; <label>:6201                                    ; preds = %6197
  %6202 = fmul fast float %6187, 0x3FF7154760000000
  %6203 = call float @dx.op.unary.f32(i32 21, float %6202)  ; Exp(value)
  %6204 = fsub fast float 1.000000e+00, %6203
  %6205 = fmul fast float %6184, %6204
  %6206 = fsub fast float -0.000000e+00, %6205
  %6207 = fdiv fast float %6206, %6187
  br label %6208

; <label>:6208                                    ; preds = %6201, %6197
  %6209 = phi float [ %6203, %6201 ], [ 1.000000e+00, %6197 ]
  %6210 = phi float [ %6207, %6201 ], [ %6184, %6197 ]
  %6211 = fcmp fast une float %6188, 0.000000e+00
  br i1 %6211, label %6212, label %6219, !dx.controlflow.hints !178

; <label>:6212                                    ; preds = %6208
  %6213 = fmul fast float %6188, 0x3FF7154760000000
  %6214 = call float @dx.op.unary.f32(i32 21, float %6213)  ; Exp(value)
  %6215 = fsub fast float 1.000000e+00, %6214
  %6216 = fmul fast float %6185, %6215
  %6217 = fsub fast float -0.000000e+00, %6216
  %6218 = fdiv fast float %6217, %6188
  br label %6219

; <label>:6219                                    ; preds = %6212, %6208
  %6220 = phi float [ %6214, %6212 ], [ 1.000000e+00, %6208 ]
  %6221 = phi float [ %6218, %6212 ], [ %6185, %6208 ]
  %6222 = fcmp fast ogt float %6118, %6120
  br i1 %6222, label %6223, label %6243

; <label>:6223                                    ; preds = %6219
  %6224 = fsub fast float 1.000000e+00, %6120
  %6225 = fmul fast float %6136, %6224
  %6226 = fmul fast float %6137, %6224
  %6227 = fmul fast float %6138, %6224
  %6228 = fmul fast float %6139, %6224
  %6229 = fcmp fast une float %6228, 0.000000e+00
  br i1 %6229, label %6230, label %6281, !dx.controlflow.hints !179

; <label>:6230                                    ; preds = %6223
  %6231 = fmul fast float %6228, 0x3FF7154760000000
  %6232 = call float @dx.op.unary.f32(i32 21, float %6231)  ; Exp(value)
  %6233 = fsub fast float 1.000000e+00, %6232
  %6234 = fmul fast float %6225, %6233
  %6235 = fsub fast float -0.000000e+00, %6234
  %6236 = fmul fast float %6226, %6233
  %6237 = fsub fast float -0.000000e+00, %6236
  %6238 = fmul fast float %6227, %6233
  %6239 = fsub fast float -0.000000e+00, %6238
  %6240 = fdiv fast float %6235, %6228
  %6241 = fdiv fast float %6237, %6228
  %6242 = fdiv fast float %6239, %6228
  br label %6281

; <label>:6243                                    ; preds = %6219
  %6244 = fsub fast float 1.000000e+00, %6118
  %6245 = fmul fast float %6149, %6244
  %6246 = fmul fast float %6160, %6244
  %6247 = fmul fast float %6171, %6244
  %6248 = fmul fast float %6150, %6244
  %6249 = fmul fast float %6161, %6244
  %6250 = fmul fast float %6172, %6244
  %6251 = fcmp fast une float %6248, 0.000000e+00
  br i1 %6251, label %6252, label %6259, !dx.controlflow.hints !178

; <label>:6252                                    ; preds = %6243
  %6253 = fmul fast float %6248, 0x3FF7154760000000
  %6254 = call float @dx.op.unary.f32(i32 21, float %6253)  ; Exp(value)
  %6255 = fsub fast float 1.000000e+00, %6254
  %6256 = fmul fast float %6245, %6255
  %6257 = fsub fast float -0.000000e+00, %6256
  %6258 = fdiv fast float %6257, %6248
  br label %6259

; <label>:6259                                    ; preds = %6252, %6243
  %6260 = phi float [ %6258, %6252 ], [ %6245, %6243 ]
  %6261 = phi float [ %6254, %6252 ], [ 1.000000e+00, %6243 ]
  %6262 = fcmp fast une float %6249, 0.000000e+00
  br i1 %6262, label %6263, label %6270, !dx.controlflow.hints !178

; <label>:6263                                    ; preds = %6259
  %6264 = fmul fast float %6249, 0x3FF7154760000000
  %6265 = call float @dx.op.unary.f32(i32 21, float %6264)  ; Exp(value)
  %6266 = fsub fast float 1.000000e+00, %6265
  %6267 = fmul fast float %6246, %6266
  %6268 = fsub fast float -0.000000e+00, %6267
  %6269 = fdiv fast float %6268, %6249
  br label %6270

; <label>:6270                                    ; preds = %6263, %6259
  %6271 = phi float [ %6269, %6263 ], [ %6246, %6259 ]
  %6272 = phi float [ %6265, %6263 ], [ 1.000000e+00, %6259 ]
  %6273 = fcmp fast une float %6250, 0.000000e+00
  br i1 %6273, label %6274, label %6281, !dx.controlflow.hints !178

; <label>:6274                                    ; preds = %6270
  %6275 = fmul fast float %6250, 0x3FF7154760000000
  %6276 = call float @dx.op.unary.f32(i32 21, float %6275)  ; Exp(value)
  %6277 = fsub fast float 1.000000e+00, %6276
  %6278 = fmul fast float %6247, %6277
  %6279 = fsub fast float -0.000000e+00, %6278
  %6280 = fdiv fast float %6279, %6250
  br label %6281

; <label>:6281                                    ; preds = %6274, %6270, %6230, %6223
  %6282 = phi float [ %6280, %6274 ], [ %6242, %6230 ], [ %6227, %6223 ], [ %6247, %6270 ]
  %6283 = phi float [ %6271, %6274 ], [ %6241, %6230 ], [ %6226, %6223 ], [ %6271, %6270 ]
  %6284 = phi float [ %6260, %6274 ], [ %6240, %6230 ], [ %6225, %6223 ], [ %6260, %6270 ]
  %6285 = phi float [ %6276, %6274 ], [ %6232, %6230 ], [ 1.000000e+00, %6223 ], [ 1.000000e+00, %6270 ]
  %6286 = phi float [ %6272, %6274 ], [ %6232, %6230 ], [ 1.000000e+00, %6223 ], [ %6272, %6270 ]
  %6287 = phi float [ %6261, %6274 ], [ %6232, %6230 ], [ 1.000000e+00, %6223 ], [ %6261, %6270 ]
  %6288 = fmul fast float %6287, %6199
  %6289 = fmul fast float %6286, %6210
  %6290 = fmul fast float %6285, %6221
  %6291 = fadd fast float %6288, %6284
  %6292 = fadd fast float %6289, %6283
  %6293 = fadd fast float %6290, %6282
  %6294 = fmul fast float %6287, %6198
  %6295 = fmul fast float %6286, %6209
  %6296 = fmul fast float %6285, %6220
  br label %6297

; <label>:6297                                    ; preds = %6281, %6092
  %6298 = phi float [ %6296, %6281 ], [ %6098, %6092 ]
  %6299 = phi float [ %6295, %6281 ], [ %6097, %6092 ]
  %6300 = phi float [ %6294, %6281 ], [ %6096, %6092 ]
  %6301 = phi float [ %6293, %6281 ], [ %6095, %6092 ]
  %6302 = phi float [ %6292, %6281 ], [ %6094, %6092 ]
  %6303 = phi float [ %6291, %6281 ], [ %6093, %6092 ]
  %6304 = fmul fast float %6303, %5247
  %6305 = fmul fast float %6302, %5247
  %6306 = fmul fast float %6301, %5247
  %6307 = fmul fast float %6300, %5540
  %6308 = call float @dx.op.dot3.f32(i32 55, float %6300, float %6299, float %6298, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6309 = call float @dx.op.dot3.f32(i32 55, float %6304, float %6305, float %6306, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6310 = select i1 %229, float %6308, float %6300
  %6311 = select i1 %229, float %6308, float %6299
  %6312 = select i1 %229, float 1.000000e+00, float %6298
  %6313 = select i1 %229, float %6309, float %6304
  %6314 = select i1 %229, float 0.000000e+00, float %6305
  %6315 = select i1 %229, float 0.000000e+00, float %6306
  %6316 = fmul fast float %6310, %5534
  %6317 = fmul fast float %6311, %5535
  %6318 = fmul fast float %6312, %5536
  %6319 = fadd fast float %6316, %6313
  %6320 = fadd fast float %6317, %6314
  %6321 = fadd fast float %6315, %6318
  %6322 = fmul fast float %6310, %5537
  %6323 = fmul fast float %6311, %5538
  %6324 = fmul fast float %6312, %5539
  %6325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.i32 %6325, 0
  %6327 = icmp eq i32 %6326, 0
  br i1 %6327, label %6695, label %6328, !dx.controlflow.hints !180

; <label>:6328                                    ; preds = %6297
  %6329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6330 = extractvalue %dx.types.CBufRet.f32 %6329, 2
  %6331 = extractvalue %dx.types.CBufRet.f32 %6329, 3
  %6332 = fmul fast float %6330, %91
  %6333 = fmul fast float %6331, %92
  %6334 = fmul fast float %6332, 2.000000e+00
  %6335 = fmul fast float %6333, 2.000000e+00
  %6336 = fsub fast float 1.000000e+00, %6334
  %6337 = fsub fast float 1.000000e+00, %6335
  %6338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6339 = extractvalue %dx.types.CBufRet.f32 %6338, 0
  %6340 = extractvalue %dx.types.CBufRet.f32 %6338, 1
  %6341 = extractvalue %dx.types.CBufRet.f32 %6338, 2
  %6342 = fmul fast float %6336, %6339
  %6343 = fmul fast float %6336, %6340
  %6344 = fmul fast float %6336, %6341
  %6345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6346 = extractvalue %dx.types.CBufRet.f32 %6345, 0
  %6347 = extractvalue %dx.types.CBufRet.f32 %6345, 1
  %6348 = extractvalue %dx.types.CBufRet.f32 %6345, 2
  %6349 = fmul fast float %6337, %6346
  %6350 = fmul fast float %6337, %6347
  %6351 = fmul fast float %6337, %6348
  %6352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6353 = extractvalue %dx.types.CBufRet.f32 %6352, 0
  %6354 = extractvalue %dx.types.CBufRet.f32 %6352, 1
  %6355 = extractvalue %dx.types.CBufRet.f32 %6352, 2
  %6356 = fadd fast float %6349, %6353
  %6357 = fadd fast float %6356, %6342
  %6358 = fadd fast float %6350, %6354
  %6359 = fadd fast float %6358, %6343
  %6360 = fadd fast float %6351, %6355
  %6361 = fadd fast float %6360, %6344
  %6362 = fmul fast float %6357, %5533
  %6363 = fmul fast float %6359, %5533
  %6364 = fmul fast float %6361, %5533
  %6365 = fmul fast float %6362, %6362
  %6366 = fmul fast float %6363, %6363
  %6367 = fadd fast float %6365, %6366
  %6368 = fmul fast float %6364, %6364
  %6369 = fadd fast float %6367, %6368
  %6370 = call float @dx.op.unary.f32(i32 24, float %6369)  ; Sqrt(value)
  %6371 = extractvalue %dx.types.CBufRet.f32 %5258, 0
  %6372 = fsub fast float %6370, %6371
  %6373 = extractvalue %dx.types.CBufRet.f32 %5258, 2
  %6374 = fmul fast float %6372, %6373
  %6375 = call float @dx.op.unary.f32(i32 7, float %6374)  ; Saturate(value)
  %6376 = fadd fast float %6375, -5.000000e-01
  %6377 = fmul fast float %6376, 2.000000e+00
  %6378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6379 = extractvalue %dx.types.CBufRet.f32 %6378, 2
  %6380 = call float @dx.op.binary.f32(i32 36, float %6379, float %6377)  ; FMin(a,b)
  %6381 = fsub fast float -0.000000e+00, %6379
  %6382 = fcmp fast ogt float %6380, %6381
  br i1 %6382, label %6383, label %6695, !dx.controlflow.hints !181

; <label>:6383                                    ; preds = %6328
  %6384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6385 = extractvalue %dx.types.CBufRet.f32 %6384, 3
  %6386 = fcmp fast ogt float %6385, 0.000000e+00
  br i1 %6386, label %6387, label %6462, !dx.controlflow.hints !182

; <label>:6387                                    ; preds = %6383
  %6388 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %6389 = extractvalue %dx.types.Dimensions %6388, 0
  %6390 = sitofp i32 %6389 to float
  %6391 = extractvalue %dx.types.Dimensions %6388, 1
  %6392 = sitofp i32 %6391 to float
  %6393 = fmul fast float %6332, %6390
  %6394 = fmul fast float %6333, %6392
  %6395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6396 = extractvalue %dx.types.CBufRet.f32 %6395, 1
  %6397 = fsub fast float -0.000000e+00, %6396
  %6398 = fptoui float %6397 to i32
  %6399 = fptoui float %6393 to i32
  %6400 = fptoui float %6394 to i32
  %6401 = and i32 %6398, 31
  %6402 = lshr i32 %6399, %6401
  %6403 = lshr i32 %6400, %6401
  %6404 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %6398, i32 %6402, i32 %6403, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6405 = extractvalue %dx.types.ResRet.f32 %6404, 0
  %6406 = fcmp fast olt float %6405, -1.000000e+00
  %6407 = fcmp fast ogt float %6405, -1.000000e+00
  %6408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6409 = extractvalue %dx.types.CBufRet.f32 %6408, 1
  %6410 = select i1 %6407, float %6409, float 1.000000e+00
  %6411 = fadd fast float %6405, 1.000000e+00
  %6412 = fmul fast float %6410, %6411
  %6413 = call float @dx.op.unary.f32(i32 6, float %6412)  ; FAbs(value)
  %6414 = extractvalue %dx.types.CBufRet.f32 %6408, 3
  %6415 = fcmp fast oge float %6413, %6414
  %6416 = select i1 %6415, float 0x4197782600000000, float %6413
  %6417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6418 = extractvalue %dx.types.CBufRet.f32 %6417, 0
  %6419 = extractvalue %dx.types.CBufRet.f32 %6417, 1
  %6420 = extractvalue %dx.types.CBufRet.f32 %6417, 2
  %6421 = select i1 %6406, float %6418, float %6339
  %6422 = select i1 %6406, float %6419, float %6340
  %6423 = select i1 %6406, float %6420, float %6341
  %6424 = fmul fast float %6421, %6336
  %6425 = fmul fast float %6422, %6336
  %6426 = fmul fast float %6423, %6336
  %6427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6428 = extractvalue %dx.types.CBufRet.f32 %6427, 0
  %6429 = extractvalue %dx.types.CBufRet.f32 %6427, 1
  %6430 = extractvalue %dx.types.CBufRet.f32 %6427, 2
  %6431 = select i1 %6406, float %6428, float %6346
  %6432 = select i1 %6406, float %6429, float %6347
  %6433 = select i1 %6406, float %6430, float %6348
  %6434 = fmul fast float %6431, %6337
  %6435 = fmul fast float %6432, %6337
  %6436 = fmul fast float %6433, %6337
  %6437 = fadd fast float %6434, %6424
  %6438 = fadd fast float %6435, %6425
  %6439 = fadd fast float %6436, %6426
  %6440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6441 = extractvalue %dx.types.CBufRet.f32 %6440, 0
  %6442 = extractvalue %dx.types.CBufRet.f32 %6440, 1
  %6443 = extractvalue %dx.types.CBufRet.f32 %6440, 2
  %6444 = select i1 %6406, float %6441, float %6353
  %6445 = select i1 %6406, float %6442, float %6354
  %6446 = select i1 %6406, float %6443, float %6355
  %6447 = fadd fast float %6437, %6444
  %6448 = fadd fast float %6438, %6445
  %6449 = fadd fast float %6439, %6446
  %6450 = fmul fast float %6447, %6416
  %6451 = fmul fast float %6448, %6416
  %6452 = fmul fast float %6449, %6416
  %6453 = fmul fast float %6450, %6450
  %6454 = fmul fast float %6451, %6451
  %6455 = fadd fast float %6453, %6454
  %6456 = fmul fast float %6452, %6452
  %6457 = fadd fast float %6455, %6456
  %6458 = call float @dx.op.unary.f32(i32 24, float %6457)  ; Sqrt(value)
  %6459 = fsub fast float %6458, %6371
  %6460 = fmul fast float %6459, %6373
  %6461 = call float @dx.op.unary.f32(i32 7, float %6460)  ; Saturate(value)
  br label %6462

; <label>:6462                                    ; preds = %6387, %6383
  %6463 = phi float [ %6461, %6387 ], [ 1.000000e+00, %6383 ]
  %6464 = fmul fast float %6380, 5.000000e-01
  %6465 = fadd fast float %6464, 5.000000e-01
  %6466 = call float @dx.op.unary.f32(i32 22, float %6465)  ; Frc(value)
  %6467 = call float @dx.op.unary.f32(i32 27, float %6466)  ; Round_ni(value)
  %6468 = call float @dx.op.unary.f32(i32 22, float %6466)  ; Frc(value)
  %6469 = fmul fast float %6468, 2.000000e+00
  %6470 = fadd fast float %6469, -1.000000e+00
  %6471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %58, float %6332, float %6333, float %6467, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6472 = extractvalue %dx.types.ResRet.f32 %6471, 0
  %6473 = extractvalue %dx.types.ResRet.f32 %6471, 1
  %6474 = extractvalue %dx.types.ResRet.f32 %6471, 2
  %6475 = extractvalue %dx.types.ResRet.f32 %6471, 3
  %6476 = fadd fast float %6472, -5.000000e-01
  %6477 = fadd fast float %6474, -5.000000e-01
  %6478 = fmul fast float %6476, 0xBFD5555560000000
  %6479 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6477, float %6478)  ; FMad(a,b,c)
  %6480 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6473, float 0.000000e+00)  ; FMad(a,b,c)
  %6481 = fadd fast float %6480, %6475
  %6482 = fmul fast float %6476, -7.500000e-01
  %6483 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6477, float %6482)  ; FMad(a,b,c)
  %6484 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6473, float 0.000000e+00)  ; FMad(a,b,c)
  %6485 = fadd fast float %6484, %6475
  %6486 = call float @dx.op.binary.f32(i32 35, float %6479, float -1.000000e+00)  ; FMax(a,b)
  %6487 = call float @dx.op.binary.f32(i32 35, float %6481, float -1.000000e+00)  ; FMax(a,b)
  %6488 = call float @dx.op.binary.f32(i32 35, float %6483, float -1.000000e+00)  ; FMax(a,b)
  %6489 = call float @dx.op.binary.f32(i32 35, float %6485, float -1.000000e+00)  ; FMax(a,b)
  %6490 = call float @dx.op.binary.f32(i32 36, float %6486, float 1.000000e+00)  ; FMin(a,b)
  %6491 = call float @dx.op.binary.f32(i32 36, float %6487, float 1.000000e+00)  ; FMin(a,b)
  %6492 = call float @dx.op.binary.f32(i32 36, float %6488, float 1.000000e+00)  ; FMin(a,b)
  %6493 = call float @dx.op.binary.f32(i32 36, float %6489, float 1.000000e+00)  ; FMin(a,b)
  %6494 = fcmp fast olt float %6490, 0x3FEFFF8020000000
  br i1 %6494, label %6495, label %6610, !dx.controlflow.hints !183

; <label>:6495                                    ; preds = %6462
  %6496 = extractvalue %dx.types.CBufRet.f32 %6378, 3
  %6497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6498 = extractvalue %dx.types.CBufRet.f32 %6497, 0
  %6499 = extractvalue %dx.types.CBufRet.f32 %6497, 1
  %6500 = extractvalue %dx.types.CBufRet.f32 %6497, 2
  %6501 = extractvalue %dx.types.CBufRet.f32 %6497, 3
  %6502 = fsub fast float %6498, %6490
  %6503 = fsub fast float %6499, %6491
  %6504 = fsub fast float %6500, %6492
  %6505 = fsub fast float %6501, %6493
  %6506 = fmul fast float %6502, %6496
  %6507 = fmul fast float %6503, %6496
  %6508 = fmul fast float %6504, %6496
  %6509 = fmul fast float %6505, %6496
  %6510 = fadd fast float %6506, %6490
  %6511 = fadd fast float %6507, %6491
  %6512 = fsub fast float -0.000000e+00, %6511
  %6513 = fadd fast float %6508, %6492
  %6514 = fadd fast float %6509, %6493
  %6515 = fmul fast float %6510, %6510
  %6516 = fsub fast float %6511, %6515
  %6517 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6516)  ; FMax(a,b)
  %6518 = fdiv fast float 1.000000e+00, %6517
  %6519 = fmul fast float %6511, %6510
  %6520 = fsub fast float %6513, %6519
  %6521 = fsub fast float %6470, %6510
  %6522 = fmul fast float %6470, %6470
  %6523 = fsub fast float %6522, %6511
  %6524 = fmul fast float %6521, %6518
  %6525 = fmul fast float %6524, %6520
  %6526 = fsub fast float %6523, %6525
  %6527 = fmul fast float %6511, %6511
  %6528 = fsub fast float %6514, %6527
  %6529 = fmul fast float %6520, %6520
  %6530 = fmul fast float %6529, %6518
  %6531 = fsub fast float %6528, %6530
  %6532 = fdiv fast float %6526, %6531
  %6533 = fmul fast float %6520, %6532
  %6534 = fsub fast float %6521, %6533
  %6535 = fmul fast float %6534, %6518
  %6536 = fmul fast float %6535, %6510
  %6537 = fsub fast float 1.000000e+00, %6536
  %6538 = fmul fast float %6511, %6532
  %6539 = fsub fast float %6537, %6538
  %6540 = fmul fast float %6535, %6535
  %6541 = fmul fast float %6532, 4.000000e+00
  %6542 = fmul fast float %6541, %6539
  %6543 = fsub fast float %6540, %6542
  %6544 = call float @dx.op.unary.f32(i32 24, float %6543)  ; Sqrt(value)
  %6545 = fcmp fast oge float %6535, 0.000000e+00
  %6546 = fsub fast float -0.000000e+00, %6544
  %6547 = select i1 %6545, float %6546, float %6544
  %6548 = fsub fast float %6547, %6535
  %6549 = fdiv fast float %6548, %6532
  %6550 = fdiv fast float %6539, %6548
  %6551 = fmul fast float %6549, 5.000000e-01
  %6552 = fmul fast float %6550, 2.000000e+00
  %6553 = select i1 %6545, float %6551, float %6552
  %6554 = select i1 %6545, float %6552, float %6551
  %6555 = call float @dx.op.binary.f32(i32 35, float %6553, float %6554)  ; FMax(a,b)
  %6556 = call float @dx.op.binary.f32(i32 36, float %6553, float %6554)  ; FMin(a,b)
  %6557 = fcmp fast ogt float %6470, %6556
  br i1 %6557, label %6558, label %6568

; <label>:6558                                    ; preds = %6495
  %6559 = fsub fast float %6470, %6556
  %6560 = fsub fast float %6555, %6556
  %6561 = fmul fast float %6559, %6560
  %6562 = fmul fast float %6555, %6470
  %6563 = fadd fast float %6555, %6470
  %6564 = fmul fast float %6563, %6510
  %6565 = fadd fast float %6562, %6511
  %6566 = fsub fast float %6565, %6564
  %6567 = fdiv fast float %6566, %6561
  br label %6568

; <label>:6568                                    ; preds = %6558, %6495
  %6569 = phi float [ %6567, %6558 ], [ 0.000000e+00, %6495 ]
  %6570 = fcmp fast ogt float %6470, %6555
  %6571 = fsub fast float %6470, %6555
  br i1 %6570, label %6572, label %6582

; <label>:6572                                    ; preds = %6568
  %6573 = fsub fast float %6555, %6556
  %6574 = fmul fast float %6573, %6571
  %6575 = fmul fast float %6556, %6470
  %6576 = fadd fast float %6556, %6470
  %6577 = fmul fast float %6576, %6510
  %6578 = fsub fast float %6512, %6575
  %6579 = fadd fast float %6578, %6577
  %6580 = fdiv fast float %6579, %6574
  %6581 = fadd fast float %6580, %6569
  br label %6582

; <label>:6582                                    ; preds = %6572, %6568
  %6583 = phi float [ %6581, %6572 ], [ %6569, %6568 ]
  %6584 = fsub fast float %6470, %6556
  %6585 = fmul fast float %6584, %6571
  %6586 = fmul fast float %6556, %6555
  %6587 = fadd fast float %6556, %6555
  %6588 = fmul fast float %6587, %6510
  %6589 = fadd fast float %6586, %6511
  %6590 = fsub fast float %6589, %6588
  %6591 = fdiv fast float %6590, %6585
  %6592 = call float @dx.op.unary.f32(i32 7, float %6583)  ; Saturate(value)
  %6593 = fcmp fast oeq float %5259, 0.000000e+00
  %6594 = extractvalue %dx.types.CBufRet.f32 %6378, 0
  %6595 = fcmp fast oeq float %6594, 0.000000e+00
  %6596 = or i1 %6593, %6595
  %6597 = fmul fast float %6594, 2.000000e+00
  %6598 = fadd fast float %6379, %6380
  %6599 = fdiv fast float %6598, %6597
  %6600 = call float @dx.op.unary.f32(i32 7, float %6599)  ; Saturate(value)
  %6601 = fmul fast float %6600, 2.000000e+00
  %6602 = fsub fast float 3.000000e+00, %6601
  %6603 = fmul fast float %6600, %6600
  %6604 = fmul fast float %6603, %6602
  %6605 = select i1 %6596, float 1.000000e+00, float %6604
  %6606 = fmul fast float %6591, %5259
  %6607 = fadd fast float %6592, %6606
  %6608 = call float @dx.op.unary.f32(i32 7, float %6607)  ; Saturate(value)
  %6609 = fmul fast float %6605, %6608
  br label %6610

; <label>:6610                                    ; preds = %6582, %6462
  %6611 = phi float [ %6609, %6582 ], [ 0.000000e+00, %6462 ]
  %6612 = fsub fast float 1.000000e+00, %6611
  %6613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %58, float %6332, float %6333, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6614 = extractvalue %dx.types.ResRet.f32 %6613, 0
  %6615 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6616 = extractvalue %dx.types.CBufRet.i32 %6615, 2
  %6617 = icmp eq i32 %6616, 0
  br i1 %6617, label %6623, label %6618

; <label>:6618                                    ; preds = %6610
  %6619 = call float @dx.op.unary.f32(i32 7, float %6611)  ; Saturate(value)
  %6620 = fadd fast float %6614, -1.000000e+00
  %6621 = fmul fast float %6619, %6620
  %6622 = fadd fast float %6621, 1.000000e+00
  br label %6623

; <label>:6623                                    ; preds = %6618, %6610
  %6624 = phi float [ %6622, %6618 ], [ %6612, %6610 ]
  br i1 %6386, label %6625, label %6643

; <label>:6625                                    ; preds = %6623
  %6626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6627 = extractvalue %dx.types.CBufRet.f32 %6626, 1
  %6628 = fsub fast float %6463, %6627
  %6629 = call float @dx.op.unary.f32(i32 7, float %6628)  ; Saturate(value)
  %6630 = fsub fast float %6463, %6385
  %6631 = call float @dx.op.unary.f32(i32 7, float %6630)  ; Saturate(value)
  %6632 = fsub fast float %6629, %6631
  %6633 = fsub fast float %6465, %6631
  %6634 = fdiv fast float %6633, %6632
  %6635 = call float @dx.op.unary.f32(i32 7, float %6634)  ; Saturate(value)
  %6636 = fmul fast float %6635, 2.000000e+00
  %6637 = fsub fast float 3.000000e+00, %6636
  %6638 = fsub fast float %6614, %6624
  %6639 = fmul fast float %6635, %6635
  %6640 = fmul fast float %6639, %6638
  %6641 = fmul fast float %6640, %6637
  %6642 = fadd fast float %6641, %6624
  br label %6643

; <label>:6643                                    ; preds = %6625, %6623
  %6644 = phi float [ %6642, %6625 ], [ %6624, %6623 ]
  %6645 = call float @dx.op.binary.f32(i32 35, float %6614, float %6644)  ; FMax(a,b)
  %6646 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6647 = extractvalue %dx.types.CBufRet.i32 %6646, 2
  %6648 = and i32 %6647, 1
  %6649 = icmp eq i32 %6648, 0
  %6650 = fcmp fast une float %6645, 1.000000e+00
  %6651 = and i1 %6650, %6649
  br i1 %6651, label %6652, label %6671

; <label>:6652                                    ; preds = %6643
  %6653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %58, float %6332, float %6333, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6654 = extractvalue %dx.types.ResRet.f32 %6653, 0
  %6655 = extractvalue %dx.types.ResRet.f32 %6653, 1
  %6656 = extractvalue %dx.types.ResRet.f32 %6653, 2
  %6657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6658 = extractvalue %dx.types.CBufRet.f32 %6657, 1
  %6659 = fmul fast float %6658, %6654
  %6660 = fmul fast float %6658, %6655
  %6661 = fmul fast float %6658, %6656
  %6662 = fcmp fast ogt float %6614, 0x3FEFFF2E40000000
  %6663 = fsub fast float 1.000000e+00, %6645
  %6664 = fsub fast float 1.000000e+00, %6614
  %6665 = fdiv fast float %6663, %6664
  %6666 = call float @dx.op.unary.f32(i32 7, float %6665)  ; Saturate(value)
  %6667 = select i1 %6662, float 0.000000e+00, float %6666
  %6668 = fmul fast float %6659, %6667
  %6669 = fmul fast float %6660, %6667
  %6670 = fmul fast float %6661, %6667
  br label %6671

; <label>:6671                                    ; preds = %6652, %6643
  %6672 = phi float [ 0.000000e+00, %6643 ], [ %6668, %6652 ]
  %6673 = phi float [ 0.000000e+00, %6643 ], [ %6669, %6652 ]
  %6674 = phi float [ 0.000000e+00, %6643 ], [ %6670, %6652 ]
  %6675 = fmul fast float %6672, %5247
  %6676 = fmul fast float %6673, %5247
  %6677 = fmul fast float %6674, %5247
  %6678 = fmul fast float %6645, %6307
  %6679 = call float @dx.op.dot3.f32(i32 55, float %6645, float %6645, float %6645, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6680 = call float @dx.op.dot3.f32(i32 55, float %6675, float %6676, float %6677, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6681 = select i1 %229, float %6679, float %6645
  %6682 = select i1 %229, float 1.000000e+00, float %6645
  %6683 = select i1 %229, float %6680, float %6675
  %6684 = select i1 %229, float 0.000000e+00, float %6676
  %6685 = select i1 %229, float 0.000000e+00, float %6677
  %6686 = fmul fast float %6681, %6319
  %6687 = fmul fast float %6681, %6320
  %6688 = fmul fast float %6682, %6321
  %6689 = fadd fast float %6686, %6683
  %6690 = fadd fast float %6687, %6684
  %6691 = fadd fast float %6685, %6688
  %6692 = fmul fast float %6681, %6322
  %6693 = fmul fast float %6681, %6323
  %6694 = fmul fast float %6682, %6324
  br label %6695

; <label>:6695                                    ; preds = %6671, %6328, %6297, %5529
  %6696 = phi float [ %5534, %5529 ], [ %6319, %6297 ], [ %6689, %6671 ], [ %6319, %6328 ]
  %6697 = phi float [ %5535, %5529 ], [ %6320, %6297 ], [ %6690, %6671 ], [ %6320, %6328 ]
  %6698 = phi float [ %5536, %5529 ], [ %6321, %6297 ], [ %6691, %6671 ], [ %6321, %6328 ]
  %6699 = phi float [ %5537, %5529 ], [ %6322, %6297 ], [ %6692, %6671 ], [ %6322, %6328 ]
  %6700 = phi float [ %5538, %5529 ], [ %6323, %6297 ], [ %6693, %6671 ], [ %6323, %6328 ]
  %6701 = phi float [ %5539, %5529 ], [ %6324, %6297 ], [ %6694, %6671 ], [ %6324, %6328 ]
  %6702 = phi float [ %5540, %5529 ], [ %6307, %6297 ], [ %6678, %6671 ], [ %6307, %6328 ]
  %6703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6704 = extractvalue %dx.types.CBufRet.f32 %6703, 2
  %6705 = extractvalue %dx.types.CBufRet.f32 %6703, 3
  %6706 = fmul fast float %6704, %91
  %6707 = fmul fast float %6705, %92
  %6708 = call float @dx.op.unary.f32(i32 7, float %6706)  ; Saturate(value)
  %6709 = call float @dx.op.unary.f32(i32 7, float %6707)  ; Saturate(value)
  %6710 = select i1 %5269, i32 2, i32 0
  %6711 = or i32 %6710, 1
  %6712 = uitofp i32 %6711 to float
  %6713 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6708, float %6709, float %6712, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6714 = extractvalue %dx.types.ResRet.f32 %6713, 0
  %6715 = extractvalue %dx.types.ResRet.f32 %6713, 1
  %6716 = extractvalue %dx.types.ResRet.f32 %6713, 2
  %6717 = extractvalue %dx.types.ResRet.f32 %6713, 3
  %6718 = add nuw nsw i32 %6710, 2
  %6719 = uitofp i32 %6718 to float
  %6720 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6708, float %6709, float %6719, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6721 = extractvalue %dx.types.ResRet.f32 %6720, 0
  %6722 = extractvalue %dx.types.ResRet.f32 %6720, 1
  %6723 = extractvalue %dx.types.ResRet.f32 %6720, 2
  %6724 = extractvalue %dx.types.ResRet.f32 %6720, 3
  %6725 = call float @dx.op.binary.f32(i32 35, float %6715, float %6716)  ; FMax(a,b)
  %6726 = call float @dx.op.binary.f32(i32 35, float %6714, float %6725)  ; FMax(a,b)
  %6727 = call float @dx.op.binary.f32(i32 35, float %6726, float %6717)  ; FMax(a,b)
  %6728 = call float @dx.op.binary.f32(i32 36, float %6722, float %6723)  ; FMin(a,b)
  %6729 = call float @dx.op.binary.f32(i32 36, float %6721, float %6728)  ; FMin(a,b)
  %6730 = call float @dx.op.binary.f32(i32 36, float %6729, float %6724)  ; FMin(a,b)
  %6731 = fmul fast float %6727, 2.550000e+02
  %6732 = fadd fast float %6731, 0x3F70101020000000
  %6733 = fptoui float %6732 to i32
  %6734 = fmul fast float %6730, 2.550000e+02
  %6735 = fadd fast float %6734, 0x3F70101020000000
  %6736 = fptoui float %6735 to i32
  %6737 = icmp ult i32 %6733, %6736
  br i1 %6737, label %6738, label %6907

; <label>:6738                                    ; preds = %6695
  %6739 = fcmp fast ogt float %81, 9.843750e-01
  %6740 = fadd fast float %5533, -4.000000e+00
  %6741 = select i1 %6739, float -4.000000e+00, float %6740
  %6742 = call float @dx.op.binary.f32(i32 35, float %6741, float 0.000000e+00)  ; FMax(a,b)
  %6743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6744 = extractvalue %dx.types.CBufRet.f32 %6743, 0
  %6745 = fadd fast float %6744, %6742
  %6746 = extractvalue %dx.types.CBufRet.f32 %6743, 2
  %6747 = fmul fast float %6745, %6746
  %6748 = call float @dx.op.unary.f32(i32 23, float %6747)  ; Log(value)
  %6749 = extractvalue %dx.types.CBufRet.f32 %6743, 3
  %6750 = fmul fast float %6749, %6748
  %6751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6752 = extractvalue %dx.types.CBufRet.f32 %6751, 2
  %6753 = fmul fast float %6750, %6752
  %6754 = call float @dx.op.unary.f32(i32 7, float %6753)  ; Saturate(value)
  %6755 = uitofp i32 %6733 to float
  %6756 = uitofp i32 %6736 to float
  %6757 = fadd fast float %6755, 5.000000e-01
  %6758 = fadd fast float %6756, 5.000000e-01
  %6759 = fmul fast float %6752, %6757
  %6760 = fmul fast float %6752, %6758
  %6761 = fadd fast float %6759, 0x3F0FFB4800000000
  %6762 = fadd fast float %6760, 0xBF0FFB4800000000
  %6763 = call float @dx.op.binary.f32(i32 35, float %6754, float %6761)  ; FMax(a,b)
  %6764 = call float @dx.op.binary.f32(i32 36, float %6763, float %6762)  ; FMin(a,b)
  %6765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6766 = extractvalue %dx.types.CBufRet.f32 %6765, 1
  %6767 = extractvalue %dx.types.CBufRet.f32 %6765, 2
  %6768 = extractvalue %dx.types.CBufRet.f32 %6765, 0
  %6769 = select i1 %5269, float %6768, float 0.000000e+00
  %6770 = fmul fast float %6766, %6764
  %6771 = fadd fast float %6769, %6770
  %6772 = fadd fast float %6769, %6767
  %6773 = fsub fast float %6766, %6767
  %6774 = fadd fast float %6773, %6769
  %6775 = call float @dx.op.binary.f32(i32 35, float %6771, float %6772)  ; FMax(a,b)
  %6776 = call float @dx.op.binary.f32(i32 36, float %6775, float %6774)  ; FMin(a,b)
  %6777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %6708, float %6709, float %6776, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6778 = extractvalue %dx.types.ResRet.f32 %6777, 0
  %6779 = extractvalue %dx.types.ResRet.f32 %6777, 1
  %6780 = extractvalue %dx.types.ResRet.f32 %6777, 2
  %6781 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6782 = extractvalue %dx.types.CBufRet.i32 %6781, 0
  %6783 = extractvalue %dx.types.CBufRet.i32 %6781, 1
  %6784 = uitofp i32 %6782 to float
  %6785 = uitofp i32 %6783 to float
  %6786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6787 = extractvalue %dx.types.CBufRet.f32 %6786, 0
  %6788 = extractvalue %dx.types.CBufRet.f32 %6786, 1
  %6789 = fmul fast float %6784, %6708
  %6790 = fmul fast float %6785, %6709
  %6791 = fadd fast float %6789, -5.000000e-01
  %6792 = fadd fast float %6790, -5.000000e-01
  %6793 = call float @dx.op.unary.f32(i32 22, float %6791)  ; Frc(value)
  %6794 = call float @dx.op.unary.f32(i32 22, float %6792)  ; Frc(value)
  %6795 = fmul fast float %6793, %6793
  %6796 = fmul fast float %6795, %6793
  %6797 = fsub fast float 3.000000e+00, %6793
  %6798 = fmul fast float %6795, %6797
  %6799 = fmul fast float %6793, 3.000000e+00
  %6800 = fmul fast float %6796, 3.000000e+00
  %6801 = fmul fast float %6795, 6.000000e+00
  %6802 = fsub fast float %6800, %6801
  %6803 = fadd fast float %6802, 4.000000e+00
  %6804 = fmul fast float %6803, 0x3FC5555560000000
  %6805 = fmul fast float %6796, -3.000000e+00
  %6806 = fadd fast float %6795, %6793
  %6807 = fmul fast float %6806, 3.000000e+00
  %6808 = fadd fast float %6805, 1.000000e+00
  %6809 = fadd fast float %6808, %6807
  %6810 = fmul fast float %6796, 0x3FC5555560000000
  %6811 = fmul fast float %6794, %6794
  %6812 = fmul fast float %6811, %6794
  %6813 = fsub fast float 3.000000e+00, %6794
  %6814 = fmul fast float %6811, %6813
  %6815 = fmul fast float %6794, 3.000000e+00
  %6816 = fmul fast float %6812, 3.000000e+00
  %6817 = fmul fast float %6811, 6.000000e+00
  %6818 = fsub fast float %6816, %6817
  %6819 = fadd fast float %6818, 4.000000e+00
  %6820 = fmul fast float %6819, 0x3FC5555560000000
  %6821 = fmul fast float %6812, -3.000000e+00
  %6822 = fadd fast float %6811, %6794
  %6823 = fmul fast float %6822, 3.000000e+00
  %6824 = fadd fast float %6821, 1.000000e+00
  %6825 = fadd fast float %6824, %6823
  %6826 = fmul fast float %6812, 0x3FC5555560000000
  %6827 = fadd fast float %6793, 1.000000e+00
  %6828 = fsub fast float 1.000000e+00, %6799
  %6829 = fadd fast float %6828, %6798
  %6830 = fadd fast float %6829, %6803
  %6831 = fmul fast float %6830, 0x3FC5555560000000
  %6832 = fdiv fast float %6804, %6831
  %6833 = fsub fast float %6827, %6832
  %6834 = fsub fast float 1.000000e+00, %6793
  %6835 = fadd fast float %6809, %6796
  %6836 = fmul fast float %6835, 0x3FC5555560000000
  %6837 = fdiv fast float %6810, %6836
  %6838 = fadd fast float %6834, %6837
  %6839 = fadd fast float %6794, 1.000000e+00
  %6840 = fsub fast float 1.000000e+00, %6815
  %6841 = fadd fast float %6840, %6814
  %6842 = fadd fast float %6841, %6819
  %6843 = fmul fast float %6842, 0x3FC5555560000000
  %6844 = fdiv fast float %6820, %6843
  %6845 = fsub fast float %6839, %6844
  %6846 = fsub fast float 1.000000e+00, %6794
  %6847 = fadd fast float %6825, %6812
  %6848 = fmul fast float %6847, 0x3FC5555560000000
  %6849 = fdiv fast float %6826, %6848
  %6850 = fadd fast float %6849, %6846
  %6851 = fmul fast float %6833, %6787
  %6852 = fsub fast float %6708, %6851
  %6853 = fmul fast float %6838, %6787
  %6854 = fadd fast float %6853, %6708
  %6855 = fmul fast float %6850, %6788
  %6856 = fadd fast float %6855, %6709
  %6857 = fmul fast float %6845, %6788
  %6858 = fsub fast float %6709, %6857
  %6859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6852, float %6858, float %6776, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6860 = extractvalue %dx.types.ResRet.f32 %6859, 0
  %6861 = extractvalue %dx.types.ResRet.f32 %6859, 1
  %6862 = extractvalue %dx.types.ResRet.f32 %6859, 2
  %6863 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6854, float %6858, float %6776, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6864 = extractvalue %dx.types.ResRet.f32 %6863, 0
  %6865 = extractvalue %dx.types.ResRet.f32 %6863, 1
  %6866 = extractvalue %dx.types.ResRet.f32 %6863, 2
  %6867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6852, float %6856, float %6776, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6868 = extractvalue %dx.types.ResRet.f32 %6867, 0
  %6869 = extractvalue %dx.types.ResRet.f32 %6867, 1
  %6870 = extractvalue %dx.types.ResRet.f32 %6867, 2
  %6871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6854, float %6856, float %6776, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6872 = extractvalue %dx.types.ResRet.f32 %6871, 0
  %6873 = extractvalue %dx.types.ResRet.f32 %6871, 1
  %6874 = extractvalue %dx.types.ResRet.f32 %6871, 2
  %6875 = fsub fast float %6868, %6860
  %6876 = fsub fast float %6869, %6861
  %6877 = fsub fast float %6870, %6862
  %6878 = fmul fast float %6875, %6848
  %6879 = fmul fast float %6876, %6848
  %6880 = fmul fast float %6877, %6848
  %6881 = fadd fast float %6878, %6860
  %6882 = fadd fast float %6879, %6861
  %6883 = fadd fast float %6880, %6862
  %6884 = fsub fast float %6872, %6864
  %6885 = fsub fast float %6873, %6865
  %6886 = fsub fast float %6874, %6866
  %6887 = fmul fast float %6884, %6848
  %6888 = fmul fast float %6885, %6848
  %6889 = fmul fast float %6886, %6848
  %6890 = fsub fast float %6864, %6881
  %6891 = fadd fast float %6890, %6887
  %6892 = fsub fast float %6865, %6882
  %6893 = fadd fast float %6892, %6888
  %6894 = fsub fast float %6866, %6883
  %6895 = fadd fast float %6894, %6889
  %6896 = fmul fast float %6891, %6836
  %6897 = fmul fast float %6893, %6836
  %6898 = fmul fast float %6895, %6836
  %6899 = fadd fast float %6896, %6881
  %6900 = fadd fast float %6897, %6882
  %6901 = fadd fast float %6898, %6883
  %6902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6903 = extractvalue %dx.types.CBufRet.f32 %6902, 1
  %6904 = fmul fast float %6899, %6903
  %6905 = fmul fast float %6900, %6903
  %6906 = fmul fast float %6901, %6903
  br label %6907

; <label>:6907                                    ; preds = %6738, %6695
  %6908 = phi float [ %6778, %6738 ], [ 1.000000e+00, %6695 ]
  %6909 = phi float [ %6779, %6738 ], [ 1.000000e+00, %6695 ]
  %6910 = phi float [ %6780, %6738 ], [ 1.000000e+00, %6695 ]
  %6911 = phi float [ %6904, %6738 ], [ 0.000000e+00, %6695 ]
  %6912 = phi float [ %6905, %6738 ], [ 0.000000e+00, %6695 ]
  %6913 = phi float [ %6906, %6738 ], [ 0.000000e+00, %6695 ]
  %6914 = fmul fast float %6911, %5247
  %6915 = fmul fast float %6912, %5247
  %6916 = fmul fast float %6913, %5247
  %6917 = fmul fast float %6908, %6702
  %6918 = call float @dx.op.dot3.f32(i32 55, float %6908, float %6909, float %6910, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6919 = call float @dx.op.dot3.f32(i32 55, float %6914, float %6915, float %6916, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6920 = select i1 %229, float %6918, float %6908
  %6921 = select i1 %229, float %6918, float %6909
  %6922 = select i1 %229, float 1.000000e+00, float %6910
  %6923 = select i1 %229, float %6919, float %6914
  %6924 = select i1 %229, float 0.000000e+00, float %6915
  %6925 = select i1 %229, float 0.000000e+00, float %6916
  %6926 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6927 = extractvalue %dx.types.CBufRet.i32 %6926, 3
  %6928 = and i32 %6927, 3
  %6929 = icmp ne i32 %6928, 0
  %6930 = and i32 %6927, 4
  %6931 = icmp ne i32 %6930, 0
  %6932 = and i1 %6929, %6931
  %6933 = and i1 %229, %6932
  br i1 %6933, label %6934, label %6940

; <label>:6934                                    ; preds = %6907
  %6935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6936 = extractvalue %dx.types.CBufRet.f32 %6935, 1
  %6937 = fadd fast float %6917, -1.000000e+00
  %6938 = fmul fast float %6936, %6937
  %6939 = fadd fast float %6938, 1.000000e+00
  br label %6940

; <label>:6940                                    ; preds = %6934, %6907
  %6941 = phi float [ %6939, %6934 ], [ %6917, %6907 ]
  %6942 = fadd fast float %6699, %6696
  %6943 = fmul fast float %6920, %6942
  %6944 = fadd fast float %6943, %6923
  %6945 = fadd fast float %6700, %6697
  %6946 = fmul fast float %6921, %6945
  %6947 = fadd fast float %6946, %6924
  %6948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6949 = extractvalue %dx.types.CBufRet.f32 %6948, 0
  br i1 %229, label %6950, label %6973

; <label>:6950                                    ; preds = %6940
  %6951 = fadd fast float %6944, %6947
  %6952 = fmul fast float %6949, %6951
  %6953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6954 = extractvalue %dx.types.CBufRet.f32 %6953, 3
  %6955 = extractvalue %dx.types.CBufRet.f32 %5251, 1
  %6956 = fsub fast float %5256, %5250
  %6957 = fadd fast float %6956, %5257
  %6958 = fsub fast float %6957, %6955
  %6959 = extractvalue %dx.types.CBufRet.f32 %5251, 2
  %6960 = fmul fast float %6958, %6959
  %6961 = call float @dx.op.unary.f32(i32 7, float %6960)  ; Saturate(value)
  %6962 = fsub fast float %6961, %6954
  %6963 = fmul fast float %6962, %6941
  %6964 = fadd fast float %6963, %6954
  %6965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6966 = extractvalue %dx.types.CBufRet.f32 %6965, 0
  %6967 = fsub fast float %6964, %6966
  %6968 = fmul fast float %6967, 1.000000e+01
  %6969 = call float @dx.op.unary.f32(i32 7, float %6968)  ; Saturate(value)
  %6970 = fmul fast float %6969, %5246
  %6971 = fadd fast float %6970, %5247
  %6972 = fmul fast float %6971, %6964
  br label %6997

; <label>:6973                                    ; preds = %6940
  %6974 = fadd fast float %6701, %6698
  %6975 = fmul fast float %6922, %6974
  %6976 = fadd fast float %6975, %6925
  %6977 = fmul fast float %6949, %6944
  %6978 = fmul fast float %6949, %6947
  %6979 = fmul fast float %6949, %6976
  %6980 = call float @dx.op.binary.f32(i32 35, float %6978, float %6979)  ; FMax(a,b)
  %6981 = call float @dx.op.binary.f32(i32 35, float %6977, float %6980)  ; FMax(a,b)
  %6982 = call float @dx.op.binary.f32(i32 35, float %6981, float %5247)  ; FMax(a,b)
  %6983 = fcmp fast ugt float %6982, 0x3F10000000000000
  br i1 %6983, label %6985, label %6984

; <label>:6984                                    ; preds = %6973
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6985

; <label>:6985                                    ; preds = %6984, %6973
  %6986 = add i32 %65, 132
  %6987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %6986, i32 undef)  ; BufferLoad(srv,index,wot)
  %6988 = extractvalue %dx.types.ResRet.i32 %6987, 0
  %6989 = and i32 %6988, 32
  %6990 = icmp eq i32 %6989, 0
  br i1 %6990, label %6997, label %6991

; <label>:6991                                    ; preds = %6985
  %6992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6993 = extractvalue %dx.types.CBufRet.f32 %6992, 0
  %6994 = fmul fast float %6993, 0x3FE99999A0000000
  %6995 = fadd fast float %6993, %6977
  %6996 = fadd fast float %6994, %6979
  br label %6997

; <label>:6997                                    ; preds = %6991, %6985, %6950
  %6998 = phi float [ %6952, %6950 ], [ %6995, %6991 ], [ %6977, %6985 ]
  %6999 = phi float [ %6972, %6950 ], [ %6978, %6991 ], [ %6978, %6985 ]
  %7000 = phi float [ %6971, %6950 ], [ %6996, %6991 ], [ %6979, %6985 ]
  %7001 = phi float [ %6971, %6950 ], [ %5247, %6991 ], [ %5247, %6985 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7002 = call float @dx.op.binary.f32(i32 36, float %6998, float 3.225500e+04)  ; FMin(a,b)
  %7003 = call float @dx.op.binary.f32(i32 36, float %6999, float 3.225500e+04)  ; FMin(a,b)
  %7004 = call float @dx.op.binary.f32(i32 36, float %7000, float 3.225500e+04)  ; FMin(a,b)
  %7005 = call float @dx.op.binary.f32(i32 36, float %7001, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7002)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7003)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7004)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7005)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

