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
; shader hash: 4c1e41e787488e4ac1e1e031907c8b61
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
  %170 = add i32 %65, 136
  %171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %170, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = extractvalue %dx.types.ResRet.i32 %171, 1
  %174 = extractvalue %dx.types.ResRet.i32 %171, 2
  %175 = extractvalue %dx.types.ResRet.i32 %171, 3
  %176 = bitcast i32 %172 to float
  %177 = bitcast i32 %173 to float
  %178 = bitcast i32 %174 to float
  %179 = bitcast i32 %175 to float
  %180 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %181 = call float @dx.op.unary.f32(i32 25, float %180)  ; Rsqrt(value)
  %182 = fmul fast float %181, %70
  %183 = fmul fast float %181, %71
  %184 = fmul fast float %181, %72
  %185 = call float @dx.op.dot3.f32(i32 55, float %138, float %139, float %140, float %138, float %139, float %140)  ; Dot3(ax,ay,az,bx,by,bz)
  %186 = call float @dx.op.unary.f32(i32 25, float %185)  ; Rsqrt(value)
  %187 = fmul fast float %186, %138
  %188 = fmul fast float %186, %139
  %189 = fmul fast float %186, %140
  %190 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %182, float %183, float %184)  ; Dot3(ax,ay,az,bx,by,bz)
  %191 = fmul fast float %190, %190
  %192 = fmul fast float %191, %178
  %193 = fadd fast float %192, %179
  %194 = call float @dx.op.unary.f32(i32 7, float %193)  ; Saturate(value)
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 3
  %197 = fmul fast float %196, %185
  %198 = fsub fast float %176, %197
  %199 = fmul fast float %198, %177
  %200 = call float @dx.op.unary.f32(i32 7, float %199)  ; Saturate(value)
  %201 = fmul fast float %200, %194
  %202 = fmul fast float %91, 5.000000e-01
  %203 = fmul fast float %92, 5.000000e-01
  %204 = fptosi float %202 to i32
  %205 = fptosi float %203 to i32
  %206 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %204, i32 %205, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = lshr i32 %207, 18
  %209 = uitofp i32 %208 to float
  %210 = fmul fast float %209, 0x3F4C00EBA0000000
  %211 = call float @dx.op.unary.f32(i32 21, float %210)  ; Exp(value)
  %212 = fadd fast float %211, -1.000000e+00
  %213 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %214 = extractvalue %dx.types.Dimensions %213, 0
  %215 = sitofp i32 %214 to float
  %216 = extractvalue %dx.types.Dimensions %213, 1
  %217 = sitofp i32 %216 to float
  %218 = fcmp fast oge float %202, %215
  %219 = fcmp fast oge float %203, %217
  %220 = or i1 %218, %219
  %221 = select i1 %220, float 0x4197782600000000, float %212
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 2
  %224 = extractvalue %dx.types.CBufRet.f32 %222, 3
  %225 = fmul fast float %223, %91
  %226 = fmul fast float %224, %92
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 114688
  %230 = icmp ne i32 %229, 0
  %231 = select i1 %230, float %225, float 0.000000e+00
  %232 = select i1 %230, float %226, float 0.000000e+00
  %233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %59, float %231, float %232, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %234 = extractvalue %dx.types.ResRet.f32 %233, 0
  %235 = fmul fast float %234, 2.550000e+02
  %236 = fptoui float %235 to i32
  %237 = select i1 %230, i32 %236, i32 0
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.i32 %239, 3
  %241 = and i32 %240, 3
  %242 = icmp ne i32 %241, 0
  %243 = and i32 %240, 4
  %244 = icmp ne i32 %243, 0
  %245 = and i1 %242, %244
  br i1 %245, label %246, label %257

; <label>:246                                     ; preds = %0
  %247 = extractvalue %dx.types.CBufRet.f32 %238, 3
  %248 = fmul fast float %247, %92
  %249 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %250 = fmul fast float %249, %91
  %251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %58, float %250, float %248, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = fsub fast float 1.000000e+00, %252
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = fcmp fast olt float %253, %255
  br label %260

; <label>:257                                     ; preds = %0
  %258 = icmp eq i32 %243, 0
  %259 = and i1 %242, %258
  br label %260

; <label>:260                                     ; preds = %257, %246
  %261 = phi i1 [ %256, %246 ], [ %259, %257 ]
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 2
  %264 = fmul fast float %263, 0x3FE3C6EF40000000
  %265 = frem fast float %91, 2.560000e+02
  %266 = frem fast float %92, 2.560000e+02
  %267 = fptoui float %265 to i32
  %268 = fptoui float %266 to i32
  %269 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %267, i32 %268, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = fadd fast float %270, %264
  %272 = call float @dx.op.unary.f32(i32 22, float %271)  ; Frc(value)
  %273 = add i32 %65, 60
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = shl i32 %275, 4
  %277 = and i32 %276, 32752
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %275, 7
  %280 = and i32 %279, 32752
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %275, 22
  %283 = shl nuw nsw i32 %282, 5
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = add i32 %65, 72
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 255
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %289, 0x3F70101020000000
  %291 = lshr i32 %287, 8
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = lshr i32 %287, 16
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = add i32 %65, 36
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 65535
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %301, 16
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = add i32 %65, 96
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 65535
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %308, 16
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = fmul fast float %310, 0x3F50624DE0000000
  %314 = fmul fast float %312, 0x3F50624DE0000000
  %315 = add i32 %65, 124
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 2
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %329, label %320

; <label>:320                                     ; preds = %260
  %321 = add i32 %65, 248
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = add i32 %323, 0
  %325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %324, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %326 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %325, %dx.types.Handle %88, float %76, float %77, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %327 = extractvalue %dx.types.ResRet.f32 %326, 3
  %328 = fmul fast float %327, %78
  br label %329

; <label>:329                                     ; preds = %320, %260
  %330 = phi float [ %78, %260 ], [ %328, %320 ]
  %331 = add i32 %65, 24
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = add i32 %65, 28
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = or i32 %336, %333
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %1132, label %339

; <label>:339                                     ; preds = %329
  %340 = add i32 %65, 92
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = lshr i32 %342, 16
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = fmul fast float %344, 0x3F50624DE0000000
  %346 = add i32 %65, 40
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = lshr i32 %348, 16
  %350 = and i32 %349, 255
  %351 = lshr i32 %348, 24
  %352 = add i32 %65, 100
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = add i32 %65, 32
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = lshr i32 %361, 22
  %363 = shl nuw nsw i32 %362, 5
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = shl i32 %361, 4
  %366 = and i32 %365, 32752
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = lshr i32 %361, 7
  %369 = and i32 %368, 32752
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.f32 %371, 3
  %373 = fmul fast float %372, 1.000000e+03
  %374 = fmul fast float %313, %373
  %375 = call float @dx.op.unary.f32(i32 22, float %374)  ; Frc(value)
  %376 = fadd fast float %375, %303
  %377 = fmul fast float %314, %373
  %378 = call float @dx.op.unary.f32(i32 22, float %377)  ; Frc(value)
  %379 = fadd fast float %378, %305
  %380 = fmul fast float %345, %373
  %381 = call float @dx.op.unary.f32(i32 22, float %380)  ; Frc(value)
  %382 = fmul fast float %381, 0x401921FB60000000
  %383 = fadd fast float %382, %364
  %384 = call float @dx.op.unary.f32(i32 13, float %383)  ; Sin(value)
  %385 = call float @dx.op.unary.f32(i32 12, float %383)  ; Cos(value)
  %386 = fsub fast float -0.000000e+00, %384
  %387 = fadd fast float %76, -5.000000e-01
  %388 = fadd fast float %77, -5.000000e-01
  %389 = fmul fast float %356, %387
  %390 = fmul fast float %358, %388
  %391 = fadd fast float %389, 5.000000e-01
  %392 = fadd fast float %390, 5.000000e-01
  %393 = fmul fast float %367, %391
  %394 = fmul fast float %370, %392
  %395 = fmul fast float %385, %393
  %396 = call float @dx.op.tertiary.f32(i32 46, float %386, float %394, float %395)  ; FMad(a,b,c)
  %397 = fmul fast float %384, %393
  %398 = call float @dx.op.tertiary.f32(i32 46, float %385, float %394, float %397)  ; FMad(a,b,c)
  %399 = fadd fast float %376, %396
  %400 = fadd fast float %379, %398
  %401 = icmp ugt i32 %350, 1
  %402 = icmp ugt i32 %348, 33554431
  %403 = or i1 %402, %401
  br i1 %403, label %404, label %429

; <label>:404                                     ; preds = %339
  %405 = add i32 %65, 84
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = lshr i32 %407, 16
  %409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %408)  ; LegacyF16ToF32(value)
  %410 = fmul fast float %372, %409
  %411 = call float @dx.op.unary.f32(i32 22, float %410)  ; Frc(value)
  %412 = mul nuw nsw i32 %350, %351
  %413 = uitofp i32 %412 to float
  %414 = fmul fast float %411, %413
  %415 = call float @dx.op.unary.f32(i32 27, float %414)  ; Round_ni(value)
  %416 = fptoui float %415 to i32
  %417 = urem i32 %416, %350
  %418 = udiv i32 %416, %351
  %419 = call float @dx.op.unary.f32(i32 22, float %399)  ; Frc(value)
  %420 = call float @dx.op.unary.f32(i32 22, float %400)  ; Frc(value)
  %421 = uitofp i32 %417 to float
  %422 = uitofp i32 %418 to float
  %423 = fadd fast float %419, %421
  %424 = fadd fast float %420, %422
  %425 = uitofp i32 %350 to float
  %426 = uitofp i32 %351 to float
  %427 = fdiv fast float %423, %425
  %428 = fdiv fast float %424, %426
  br label %429

; <label>:429                                     ; preds = %404, %339
  %430 = phi float [ %427, %404 ], [ %399, %339 ]
  %431 = phi float [ %428, %404 ], [ %400, %339 ]
  %432 = and i32 %333, 16777216
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %543, label %434

; <label>:434                                     ; preds = %429
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 0
  %437 = extractvalue %dx.types.CBufRet.f32 %435, 1
  %438 = extractvalue %dx.types.CBufRet.f32 %435, 2
  %439 = fadd fast float %436, %138
  %440 = fadd fast float %437, %139
  %441 = fadd fast float %438, %140
  %442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.f32 %442, 0
  %444 = call float @dx.op.unary.f32(i32 7, float %443)  ; Saturate(value)
  %445 = icmp eq i32 %64, 65535
  br i1 %445, label %540, label %446

; <label>:446                                     ; preds = %434
  %447 = lshr i32 %64, 1
  %448 = shl i32 %447, 2
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = and i32 %64, 1
  %452 = icmp ne i32 %451, 0
  %453 = lshr i32 %450, 16
  %454 = and i32 %450, 65535
  %455 = select i1 %452, i32 %453, i32 %454
  %456 = icmp eq i32 %455, 65535
  br i1 %456, label %536, label %457

; <label>:457                                     ; preds = %446
  %458 = mul nuw nsw i32 %455, 40
  %459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = extractvalue %dx.types.ResRet.f32 %459, 1
  %462 = extractvalue %dx.types.ResRet.f32 %459, 2
  %463 = add nuw nsw i32 %458, 12
  %464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.f32 %464, 0
  %466 = extractvalue %dx.types.ResRet.f32 %464, 1
  %467 = extractvalue %dx.types.ResRet.f32 %464, 2
  %468 = add nuw nsw i32 %458, 24
  %469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.f32 %469, 0
  %471 = extractvalue %dx.types.ResRet.f32 %469, 1
  %472 = extractvalue %dx.types.ResRet.f32 %469, 2
  %473 = add nuw nsw i32 %458, 36
  %474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = fsub fast float %439, %460
  %477 = fsub fast float %440, %461
  %478 = fsub fast float %441, %462
  %479 = fmul fast float %475, %476
  %480 = fmul fast float %475, %477
  %481 = fmul fast float %475, %478
  %482 = call float @dx.op.unary.f32(i32 27, float %479)  ; Round_ni(value)
  %483 = call float @dx.op.unary.f32(i32 27, float %480)  ; Round_ni(value)
  %484 = call float @dx.op.unary.f32(i32 27, float %481)  ; Round_ni(value)
  %485 = fadd fast float %482, 5.000000e-01
  %486 = fadd fast float %483, 5.000000e-01
  %487 = fadd fast float %484, 5.000000e-01
  %488 = fmul fast float %485, %465
  %489 = fmul fast float %486, %466
  %490 = fmul fast float %487, %467
  %491 = shl i32 %64, 2
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = add i32 %493, 0
  %495 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %494, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %496 = call float @dx.op.unary.f32(i32 22, float %488)  ; Frc(value)
  %497 = call float @dx.op.unary.f32(i32 22, float %489)  ; Frc(value)
  %498 = call float @dx.op.unary.f32(i32 22, float %490)  ; Frc(value)
  %499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %495, %dx.types.Handle %59, float %496, float %497, float %498, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %500 = extractvalue %dx.types.ResRet.f32 %499, 0
  %501 = extractvalue %dx.types.ResRet.f32 %499, 1
  %502 = extractvalue %dx.types.ResRet.f32 %499, 2
  %503 = fmul fast float %500, 1.023000e+03
  %504 = fmul fast float %501, 1.023000e+03
  %505 = fmul fast float %502, 1.023000e+03
  %506 = fadd fast float %503, 5.000000e-01
  %507 = fadd fast float %504, 5.000000e-01
  %508 = fadd fast float %505, 5.000000e-01
  %509 = call float @dx.op.unary.f32(i32 27, float %506)  ; Round_ni(value)
  %510 = call float @dx.op.unary.f32(i32 27, float %507)  ; Round_ni(value)
  %511 = call float @dx.op.unary.f32(i32 27, float %508)  ; Round_ni(value)
  %512 = fsub fast float %479, %482
  %513 = fsub fast float %480, %483
  %514 = fsub fast float %481, %484
  %515 = fmul fast float %512, 7.500000e-01
  %516 = fmul fast float %513, 7.500000e-01
  %517 = fmul fast float %514, 7.500000e-01
  %518 = fadd fast float %482, 1.250000e-01
  %519 = fadd fast float %518, %515
  %520 = fadd fast float %519, %509
  %521 = fadd fast float %483, 1.250000e-01
  %522 = fadd fast float %521, %516
  %523 = fadd fast float %522, %510
  %524 = fadd fast float %484, 1.250000e-01
  %525 = fadd fast float %524, %517
  %526 = fadd fast float %525, %511
  %527 = fmul fast float %520, %470
  %528 = fmul fast float %523, %471
  %529 = fmul fast float %526, %472
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = add i32 %531, 0
  %533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %533, %dx.types.Handle %57, float %527, float %528, float %529, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  br label %536

; <label>:536                                     ; preds = %457, %446
  %537 = phi float [ %535, %457 ], [ -1.000000e+00, %446 ]
  %538 = fadd fast float %537, %444
  %539 = call float @dx.op.unary.f32(i32 7, float %538)  ; Saturate(value)
  br label %540

; <label>:540                                     ; preds = %536, %434
  %541 = phi float [ %539, %536 ], [ %444, %434 ]
  %542 = fmul fast float %541, %330
  br label %543

; <label>:543                                     ; preds = %540, %429
  %544 = phi float [ %542, %540 ], [ %330, %429 ]
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = and i32 %546, 256
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %595, label %549

; <label>:549                                     ; preds = %543
  %550 = add i32 %65, 232
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = add i32 %552, 0
  %554 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %553, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %555 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %554, %dx.types.Handle %88, float %430, float %431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 0
  %557 = add i32 %65, 52
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = shl i32 %559, 4
  %561 = and i32 %560, 32752
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = lshr i32 %559, 7
  %564 = and i32 %563, 32752
  %565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %564)  ; LegacyF16ToF32(value)
  %566 = fsub fast float 1.000000e+00, %544
  %567 = call float @dx.op.binary.f32(i32 35, float %566, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %568 = bitcast float %544 to i32
  %569 = sitofp i32 %568 to float
  %570 = fadd fast float %569, 0xC1CFBF8940000000
  %571 = fmul fast float %565, %570
  %572 = fadd fast float %571, 0x41CFBF8940000000
  %573 = fptosi float %572 to i32
  %574 = bitcast i32 %573 to float
  %575 = bitcast float %567 to i32
  %576 = sitofp i32 %575 to float
  %577 = fadd fast float %576, 0xC1CFBF8940000000
  %578 = fmul fast float %577, %565
  %579 = fadd fast float %578, 0x41CFBF8940000000
  %580 = fptosi float %579 to i32
  %581 = bitcast i32 %580 to float
  %582 = fmul fast float %574, %562
  %583 = fmul fast float %581, %562
  %584 = fsub fast float %567, %582
  %585 = fadd fast float %583, %567
  %586 = call float @dx.op.unary.f32(i32 7, float %584)  ; Saturate(value)
  %587 = call float @dx.op.unary.f32(i32 7, float %585)  ; Saturate(value)
  %588 = fsub fast float %556, %586
  %589 = fsub fast float %587, %586
  %590 = bitcast float %589 to i32
  %591 = sub nsw i32 2129859010, %590
  %592 = bitcast i32 %591 to float
  %593 = fmul fast float %592, %588
  %594 = call float @dx.op.unary.f32(i32 7, float %593)  ; Saturate(value)
  br label %595

; <label>:595                                     ; preds = %549, %543
  %596 = phi float [ %594, %549 ], [ %544, %543 ]
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = and i32 %598, 128
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %617, label %601

; <label>:601                                     ; preds = %595
  %602 = add i32 %65, 228
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = add i32 %604, 0
  %606 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %605, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %607 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %606, %dx.types.Handle %88, float %430, float %431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = and i32 %610, 524288
  %612 = icmp ne i32 %611, 0
  %613 = fcmp fast ogt float %608, 0x3FE0101020000000
  %614 = select i1 %613, float 1.000000e+00, float 0.000000e+00
  %615 = select i1 %612, float %614, float %608
  %616 = fmul fast float %615, %596
  br label %617

; <label>:617                                     ; preds = %601, %595
  %618 = phi float [ %616, %601 ], [ %596, %595 ]
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = and i32 %620, 16
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %821, label %623

; <label>:623                                     ; preds = %617
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = add i32 %65, 216
  %627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.i32 %627, 0
  %629 = add i32 %628, 0
  %630 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %629, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %631 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %630, %dx.types.Handle %87, float %430, float %431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %632 = extractvalue %dx.types.ResRet.f32 %631, 0
  %633 = extractvalue %dx.types.ResRet.f32 %631, 1
  %634 = extractvalue %dx.types.ResRet.f32 %631, 2
  %635 = extractvalue %dx.types.ResRet.f32 %631, 3
  %636 = and i32 %625, 255
  %637 = uitofp i32 %636 to float
  %638 = lshr i32 %625, 8
  %639 = and i32 %638, 255
  %640 = uitofp i32 %639 to float
  %641 = fmul fast float %635, %637
  %642 = fadd fast float %641, %640
  %643 = fmul fast float %642, 0x3F70101000000000
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = and i32 %645, 512
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %656, label %648

; <label>:648                                     ; preds = %623
  %649 = add i32 %65, 236
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = add i32 %651, 0
  %653 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %652, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %654 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %653, %dx.types.Handle %88, float %430, float %431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %655 = extractvalue %dx.types.ResRet.f32 %654, 0
  br label %656

; <label>:656                                     ; preds = %648, %623
  %657 = phi float [ %655, %648 ], [ 1.000000e+00, %623 ]
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = and i32 %659, 33554432
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %768, label %662

; <label>:662                                     ; preds = %656
  %663 = add i32 %65, 80
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %663, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = and i32 %665, 65535
  %667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %666)  ; LegacyF16ToF32(value)
  %668 = lshr i32 %665, 16
  %669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %668)  ; LegacyF16ToF32(value)
  %670 = add i32 %65, 84
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %670, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = and i32 %672, 65535
  %674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %673)  ; LegacyF16ToF32(value)
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = lshr i32 %676, 24
  %678 = uitofp i32 %677 to float
  %679 = fmul fast float %678, 0x3F70101020000000
  %680 = and i32 %676, 255
  %681 = uitofp i32 %680 to float
  %682 = fmul fast float %681, 0x3F70101020000000
  %683 = lshr i32 %676, 8
  %684 = and i32 %683, 255
  %685 = uitofp i32 %684 to float
  %686 = fmul fast float %685, 0x3F70101020000000
  %687 = lshr i32 %676, 16
  %688 = and i32 %687, 255
  %689 = uitofp i32 %688 to float
  %690 = fmul fast float %689, 0x3F70101020000000
  %691 = add i32 %65, 76
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = lshr i32 %693, 24
  %695 = uitofp i32 %694 to float
  %696 = fmul fast float %695, 0x3F70101020000000
  %697 = and i32 %693, 255
  %698 = uitofp i32 %697 to float
  %699 = fmul fast float %698, 0x3F70101020000000
  %700 = lshr i32 %693, 8
  %701 = and i32 %700, 255
  %702 = uitofp i32 %701 to float
  %703 = fmul fast float %702, 0x3F70101020000000
  %704 = lshr i32 %693, 16
  %705 = and i32 %704, 255
  %706 = uitofp i32 %705 to float
  %707 = fmul fast float %706, 0x3F70101020000000
  %708 = bitcast float %632 to i32
  %709 = ashr i32 %708, 1
  %710 = sub nsw i32 1597463174, %709
  %711 = bitcast i32 %710 to float
  %712 = fmul fast float %632, 5.000000e-01
  %713 = fmul fast float %711, %711
  %714 = fmul fast float %713, %712
  %715 = fsub fast float 1.500000e+00, %714
  %716 = fmul fast float %711, %632
  %717 = fmul fast float %716, %715
  %718 = bitcast float %633 to i32
  %719 = ashr i32 %718, 1
  %720 = sub nsw i32 1597463174, %719
  %721 = bitcast i32 %720 to float
  %722 = fmul fast float %633, 5.000000e-01
  %723 = fmul fast float %721, %721
  %724 = fmul fast float %723, %722
  %725 = fsub fast float 1.500000e+00, %724
  %726 = fmul fast float %721, %633
  %727 = fmul fast float %726, %725
  %728 = bitcast float %634 to i32
  %729 = ashr i32 %728, 1
  %730 = sub nsw i32 1597463174, %729
  %731 = bitcast i32 %730 to float
  %732 = fmul fast float %634, 5.000000e-01
  %733 = fmul fast float %731, %731
  %734 = fmul fast float %733, %732
  %735 = fsub fast float 1.500000e+00, %734
  %736 = fmul fast float %731, %634
  %737 = fmul fast float %736, %735
  %738 = fsub fast float %717, %699
  %739 = fsub fast float %727, %703
  %740 = fsub fast float %737, %707
  %741 = fmul fast float %738, %667
  %742 = fmul fast float %739, %669
  %743 = fmul fast float %740, %674
  %744 = fadd fast float %741, %682
  %745 = fadd fast float %742, %686
  %746 = fadd fast float %743, %690
  %747 = call float @dx.op.unary.f32(i32 7, float %744)  ; Saturate(value)
  %748 = call float @dx.op.unary.f32(i32 7, float %745)  ; Saturate(value)
  %749 = call float @dx.op.unary.f32(i32 7, float %746)  ; Saturate(value)
  %750 = fmul fast float %747, %747
  %751 = fmul fast float %748, %748
  %752 = fmul fast float %749, %749
  %753 = fsub fast float %750, %632
  %754 = fsub fast float %751, %633
  %755 = fsub fast float %752, %634
  %756 = fmul fast float %753, %657
  %757 = fmul fast float %754, %657
  %758 = fmul fast float %755, %657
  %759 = fadd fast float %756, %632
  %760 = fadd fast float %757, %633
  %761 = fadd fast float %758, %634
  %762 = fadd fast float %679, %643
  %763 = fsub fast float %762, %696
  %764 = call float @dx.op.unary.f32(i32 7, float %763)  ; Saturate(value)
  %765 = fsub fast float %764, %643
  %766 = fmul fast float %765, %657
  %767 = fadd fast float %766, %643
  br label %821

; <label>:768                                     ; preds = %656
  %769 = and i32 %659, 134217728
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %805, label %771

; <label>:771                                     ; preds = %768
  %772 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %773 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %774 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %775 = fadd fast float %772, -5.000000e-01
  %776 = fadd fast float %773, -5.000000e-01
  %777 = fadd fast float %774, -5.000000e-01
  %778 = fmul fast float %775, %657
  %779 = fmul fast float %776, %657
  %780 = fmul fast float %777, %657
  %781 = fadd fast float %778, 5.000000e-01
  %782 = fadd fast float %779, 5.000000e-01
  %783 = fadd fast float %780, 5.000000e-01
  %784 = call float @dx.op.unary.f32(i32 24, float %632)  ; Sqrt(value)
  %785 = call float @dx.op.unary.f32(i32 24, float %633)  ; Sqrt(value)
  %786 = call float @dx.op.unary.f32(i32 24, float %634)  ; Sqrt(value)
  %787 = fmul fast float %781, 2.000000e+00
  %788 = fsub fast float 1.000000e+00, %787
  %789 = fmul fast float %788, %784
  %790 = fadd fast float %789, %787
  %791 = fmul fast float %790, %784
  %792 = fmul fast float %782, 2.000000e+00
  %793 = fsub fast float 1.000000e+00, %792
  %794 = fmul fast float %793, %785
  %795 = fadd fast float %794, %792
  %796 = fmul fast float %795, %785
  %797 = fmul fast float %783, 2.000000e+00
  %798 = fsub fast float 1.000000e+00, %797
  %799 = fmul fast float %798, %786
  %800 = fadd fast float %799, %797
  %801 = fmul fast float %800, %786
  %802 = fmul fast float %791, %791
  %803 = fmul fast float %796, %796
  %804 = fmul fast float %801, %801
  br label %821

; <label>:805                                     ; preds = %768
  %806 = fmul fast float %290, %290
  %807 = fmul fast float %294, %294
  %808 = fmul fast float %298, %298
  %809 = fadd fast float %806, -1.000000e+00
  %810 = fadd fast float %807, -1.000000e+00
  %811 = fadd fast float %808, -1.000000e+00
  %812 = fmul fast float %657, %809
  %813 = fmul fast float %657, %810
  %814 = fmul fast float %657, %811
  %815 = fadd fast float %812, 1.000000e+00
  %816 = fadd fast float %813, 1.000000e+00
  %817 = fadd fast float %814, 1.000000e+00
  %818 = fmul fast float %815, %632
  %819 = fmul fast float %816, %633
  %820 = fmul fast float %817, %634
  br label %821

; <label>:821                                     ; preds = %805, %771, %662, %617
  %822 = phi float [ %767, %662 ], [ %643, %771 ], [ %643, %805 ], [ 0x3FA23C0BE0000000, %617 ]
  %823 = phi float [ %759, %662 ], [ %802, %771 ], [ %818, %805 ], [ 1.000000e+00, %617 ]
  %824 = phi float [ %760, %662 ], [ %803, %771 ], [ %819, %805 ], [ 1.000000e+00, %617 ]
  %825 = phi float [ %761, %662 ], [ %804, %771 ], [ %820, %805 ], [ 1.000000e+00, %617 ]
  %826 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.i32 %826, 1
  %828 = and i32 %827, 1
  %829 = icmp ne i32 %828, 0
  %830 = add i32 %65, 132
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = and i32 %832, 32
  %834 = icmp ne i32 %833, 0
  %835 = and i1 %829, %834
  %836 = select i1 %835, float 1.000000e+00, float %823
  %837 = select i1 %835, float 0x3FD3333340000000, float %824
  %838 = select i1 %835, float 0x3FD3333340000000, float %825
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = and i32 %840, 32
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %983, label %843

; <label>:843                                     ; preds = %821
  %844 = add i32 %65, 44
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = add i32 %65, 220
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %847, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = add i32 %849, 0
  %851 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %850, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %852 = add i32 %65, 184
  %853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %852, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.i32 %853, 0
  %855 = extractvalue %dx.types.ResRet.i32 %853, 1
  %856 = extractvalue %dx.types.ResRet.i32 %853, 2
  %857 = extractvalue %dx.types.ResRet.i32 %853, 3
  %858 = bitcast i32 %855 to float
  %859 = bitcast i32 %856 to float
  %860 = bitcast i32 %857 to float
  %861 = add i32 %65, 200
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %861, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = extractvalue %dx.types.ResRet.i32 %862, 1
  %865 = extractvalue %dx.types.ResRet.i32 %862, 2
  %866 = extractvalue %dx.types.ResRet.i32 %862, 3
  %867 = bitcast i32 %864 to float
  %868 = bitcast i32 %865 to float
  %869 = bitcast i32 %866 to float
  %870 = fmul fast float %858, %430
  %871 = fmul fast float %858, %431
  %872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %873 = extractvalue %dx.types.CBufRet.f32 %872, 3
  %874 = fmul fast float %873, %859
  %875 = fmul fast float %873, %860
  %876 = fadd fast float %874, %870
  %877 = fadd fast float %875, %871
  %878 = fmul fast float %867, %430
  %879 = fmul fast float %867, %431
  %880 = fmul fast float %873, %868
  %881 = fmul fast float %873, %869
  %882 = fadd fast float %880, %878
  %883 = fadd fast float %881, %879
  %884 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %851, i32 0)  ; GetDimensions(handle,mipLevel)
  %885 = extractvalue %dx.types.Dimensions %884, 3
  %886 = sitofp i32 %885 to float
  %887 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %851, %dx.types.Handle %87, float %876, float %877, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %888 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %851, %dx.types.Handle %87, float %882, float %883, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %889 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %851, %dx.types.Handle %87, float %876, float %877, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %890 = extractvalue %dx.types.ResRet.f32 %889, 0
  %891 = extractvalue %dx.types.ResRet.f32 %889, 1
  %892 = extractvalue %dx.types.ResRet.f32 %889, 2
  %893 = extractvalue %dx.types.ResRet.f32 %889, 3
  %894 = and i32 %846, 255
  %895 = uitofp i32 %894 to float
  %896 = lshr i32 %846, 8
  %897 = and i32 %896, 255
  %898 = uitofp i32 %897 to float
  %899 = lshr i32 %846, 16
  %900 = and i32 %899, 255
  %901 = uitofp i32 %900 to float
  %902 = fmul fast float %901, 0x3F70101000000000
  %903 = fmul fast float %890, %895
  %904 = fadd fast float %903, %898
  %905 = fadd fast float %891, -5.000000e-01
  %906 = fadd fast float %893, -5.000000e-01
  %907 = fmul fast float %905, %902
  %908 = fmul fast float %906, %902
  %909 = fadd fast float %907, 5.000000e-01
  %910 = fadd fast float %908, 5.000000e-01
  %911 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %851, %dx.types.Handle %87, float %882, float %883, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %912 = extractvalue %dx.types.ResRet.f32 %911, 0
  %913 = extractvalue %dx.types.ResRet.f32 %911, 1
  %914 = extractvalue %dx.types.ResRet.f32 %911, 2
  %915 = extractvalue %dx.types.ResRet.f32 %911, 3
  %916 = fmul fast float %912, %895
  %917 = fadd fast float %916, %898
  %918 = fadd fast float %913, -5.000000e-01
  %919 = fadd fast float %915, -5.000000e-01
  %920 = fmul fast float %918, %902
  %921 = fmul fast float %919, %902
  %922 = fadd fast float %920, 5.000000e-01
  %923 = fadd fast float %921, 5.000000e-01
  %924 = fmul fast float %909, 2.000000e+00
  %925 = fadd fast float %924, -1.000000e+00
  %926 = fmul fast float %910, 2.000000e+00
  %927 = fadd fast float %926, -1.000000e+00
  %928 = fadd fast float %925, %927
  %929 = fmul fast float %928, 5.000000e-01
  %930 = fsub fast float %925, %927
  %931 = fmul fast float %930, 5.000000e-01
  %932 = call float @dx.op.unary.f32(i32 6, float %929)  ; FAbs(value)
  %933 = fsub fast float 1.000000e+00, %932
  %934 = call float @dx.op.unary.f32(i32 6, float %931)  ; FAbs(value)
  %935 = fsub fast float %933, %934
  %936 = call float @dx.op.dot3.f32(i32 55, float %929, float %931, float %935, float %929, float %931, float %935)  ; Dot3(ax,ay,az,bx,by,bz)
  %937 = call float @dx.op.unary.f32(i32 25, float %936)  ; Rsqrt(value)
  %938 = fmul fast float %922, 2.000000e+00
  %939 = fadd fast float %938, -1.000000e+00
  %940 = fmul fast float %923, 2.000000e+00
  %941 = fadd fast float %940, -1.000000e+00
  %942 = fadd fast float %939, %941
  %943 = fmul fast float %942, 5.000000e-01
  %944 = fsub fast float %939, %941
  %945 = fmul fast float %944, 5.000000e-01
  %946 = call float @dx.op.unary.f32(i32 6, float %943)  ; FAbs(value)
  %947 = fsub fast float 1.000000e+00, %946
  %948 = call float @dx.op.unary.f32(i32 6, float %945)  ; FAbs(value)
  %949 = fsub fast float %947, %948
  %950 = call float @dx.op.dot3.f32(i32 55, float %943, float %945, float %949, float %943, float %945, float %949)  ; Dot3(ax,ay,az,bx,by,bz)
  %951 = call float @dx.op.unary.f32(i32 25, float %950)  ; Rsqrt(value)
  %952 = fadd fast float %886, -1.000000e+00
  %953 = fsub fast float %952, %887
  %954 = fmul fast float %953, 5.000000e-01
  %955 = call float @dx.op.unary.f32(i32 7, float %954)  ; Saturate(value)
  %956 = fsub fast float %952, %888
  %957 = fmul fast float %956, 5.000000e-01
  %958 = call float @dx.op.unary.f32(i32 7, float %957)  ; Saturate(value)
  %959 = bitcast i32 %854 to float
  %960 = bitcast i32 %863 to float
  %961 = fmul fast float %929, %959
  %962 = fmul fast float %961, %937
  %963 = fmul fast float %962, %955
  %964 = fmul fast float %931, %959
  %965 = fmul fast float %964, %937
  %966 = fmul fast float %965, %955
  %967 = fmul fast float %951, %960
  %968 = fmul fast float %967, %943
  %969 = fmul fast float %968, %958
  %970 = fmul fast float %967, %945
  %971 = fmul fast float %970, %958
  %972 = fadd fast float %969, %963
  %973 = fadd fast float %971, %966
  %974 = fmul fast float %892, %959
  %975 = fmul fast float %914, %960
  %976 = fadd fast float %975, %974
  %977 = fmul fast float %904, %959
  %978 = fmul fast float %917, %960
  %979 = fadd fast float %978, %977
  %980 = fmul fast float %979, 0x3F70101000000000
  %981 = call float @dx.op.dot2.f32(i32 54, float %972, float %973, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %982 = call float @dx.op.dot2.f32(i32 54, float %972, float %973, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %983

; <label>:983                                     ; preds = %843, %821
  %984 = phi float [ %980, %843 ], [ 0x3FD6666660000000, %821 ]
  %985 = phi float [ %981, %843 ], [ 0.000000e+00, %821 ]
  %986 = phi float [ %982, %843 ], [ 0.000000e+00, %821 ]
  %987 = phi float [ %976, %843 ], [ 1.000000e+00, %821 ]
  %988 = add i32 %65, 64
  %989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.i32 %989, 0
  %991 = lshr i32 %990, 22
  %992 = shl nuw nsw i32 %991, 5
  %993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %992)  ; LegacyF16ToF32(value)
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = and i32 %995, 64
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %1031, label %998

; <label>:998                                     ; preds = %983
  %999 = add i32 %65, 224
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = add i32 %1001, 0
  %1003 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1002, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = and i32 %1005, 131072
  %1007 = icmp eq i32 %1006, 0
  %1008 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1003, %dx.types.Handle %87, float %430, float %431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1009 = extractvalue %dx.types.ResRet.f32 %1008, 0
  %1010 = extractvalue %dx.types.ResRet.f32 %1008, 1
  %1011 = extractvalue %dx.types.ResRet.f32 %1008, 2
  %1012 = fmul fast float %1009, %278
  %1013 = fmul fast float %1010, %281
  %1014 = fmul fast float %1011, %284
  br i1 %1007, label %1021, label %1015

; <label>:1015                                    ; preds = %998
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 0
  %1018 = fmul fast float %1017, %1012
  %1019 = fmul fast float %1017, %1013
  %1020 = fmul fast float %1017, %1014
  br label %1021

; <label>:1021                                    ; preds = %1015, %998
  %1022 = phi float [ %1018, %1015 ], [ %1012, %998 ]
  %1023 = phi float [ %1019, %1015 ], [ %1013, %998 ]
  %1024 = phi float [ %1020, %1015 ], [ %1014, %998 ]
  %1025 = fmul fast float %1022, %993
  %1026 = select i1 %261, float %1025, float %1022
  %1027 = call float @dx.op.dot3.f32(i32 55, float %1026, float %1023, float %1024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1028 = select i1 %261, float 0.000000e+00, float %1022
  %1029 = select i1 %261, float %1027, float %1023
  %1030 = select i1 %261, float 0.000000e+00, float %1024
  br label %1031

; <label>:1031                                    ; preds = %1021, %983
  %1032 = phi float [ %1028, %1021 ], [ 0.000000e+00, %983 ]
  %1033 = phi float [ %1029, %1021 ], [ 0.000000e+00, %983 ]
  %1034 = phi float [ %1030, %1021 ], [ 0.000000e+00, %983 ]
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = and i32 %1036, 1024
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1069, label %1039

; <label>:1039                                    ; preds = %1031
  %1040 = add i32 %65, 56
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1040, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = and i32 %1042, 255
  %1044 = uitofp i32 %1043 to float
  %1045 = fmul fast float %1044, 0x3F70101020000000
  %1046 = lshr i32 %1042, 8
  %1047 = and i32 %1046, 255
  %1048 = uitofp i32 %1047 to float
  %1049 = fmul fast float %1048, 0x3F70101020000000
  %1050 = lshr i32 %1042, 16
  %1051 = and i32 %1050, 255
  %1052 = uitofp i32 %1051 to float
  %1053 = fmul fast float %1052, 0x3F70101020000000
  %1054 = fmul fast float %1045, %1045
  %1055 = fmul fast float %1049, %1049
  %1056 = fmul fast float %1053, %1053
  %1057 = add i32 %65, 240
  %1058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = add i32 %1059, 0
  %1061 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1060, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1062 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1061, %dx.types.Handle %88, float %430, float %431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1063 = extractvalue %dx.types.ResRet.f32 %1062, 0
  %1064 = extractvalue %dx.types.ResRet.f32 %1062, 1
  %1065 = extractvalue %dx.types.ResRet.f32 %1062, 2
  %1066 = fmul fast float %1054, %1063
  %1067 = fmul fast float %1055, %1064
  %1068 = fmul fast float %1056, %1065
  br label %1069

; <label>:1069                                    ; preds = %1039, %1031
  %1070 = phi float [ %1066, %1039 ], [ 0.000000e+00, %1031 ]
  %1071 = phi float [ %1067, %1039 ], [ 0.000000e+00, %1031 ]
  %1072 = phi float [ %1068, %1039 ], [ 0.000000e+00, %1031 ]
  %1073 = fcmp fast ogt float %1070, 0.000000e+00
  %1074 = fcmp fast ogt float %1071, 0.000000e+00
  %1075 = fcmp fast ogt float %1072, 0.000000e+00
  %1076 = call float @dx.op.unary.f32(i32 23, float %1070)  ; Log(value)
  %1077 = call float @dx.op.unary.f32(i32 23, float %1071)  ; Log(value)
  %1078 = call float @dx.op.unary.f32(i32 23, float %1072)  ; Log(value)
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = lshr i32 %1080, 7
  %1082 = and i32 %1081, 32752
  %1083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1082)  ; LegacyF16ToF32(value)
  %1084 = fmul fast float %1076, 0xBFE62E4300000000
  %1085 = fmul fast float %1084, %1083
  %1086 = fmul fast float %1077, 0xBFE62E4300000000
  %1087 = fmul fast float %1086, %1083
  %1088 = fmul fast float %1078, 0xBFE62E4300000000
  %1089 = fmul fast float %1088, %1083
  %1090 = select i1 %1073, float %1085, float 1.270000e+02
  %1091 = select i1 %1074, float %1087, float 1.270000e+02
  %1092 = select i1 %1075, float %1089, float 1.270000e+02
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = and i32 %1094, 10240
  %1096 = icmp eq i32 %1095, 0
  br i1 %1096, label %1117, label %1097

; <label>:1097                                    ; preds = %1069
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = and i32 %1099, 2048
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1117, label %1102

; <label>:1102                                    ; preds = %1097
  %1103 = add i32 %65, 244
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = add i32 %1105, 0
  %1107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1106, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1108 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1107, %dx.types.Handle %88, float %430, float %431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 3
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = shl i32 %1111, 4
  %1113 = and i32 %1112, 32752
  %1114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1113)  ; LegacyF16ToF32(value)
  %1115 = fmul fast float %1114, %1109
  %1116 = call float @dx.op.binary.f32(i32 35, float %1115, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1117

; <label>:1117                                    ; preds = %1102, %1097, %1069
  %1118 = phi float [ %1116, %1102 ], [ 0x3F70101020000000, %1097 ], [ 0x3F70101020000000, %1069 ]
  %1119 = add i32 %65, 48
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = and i32 %1121, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = lshr i32 %1121, 8
  %1125 = and i32 %1124, 255
  %1126 = uitofp i32 %1125 to float
  %1127 = call float @dx.op.dot3.f32(i32 55, float %836, float %837, float %838, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1128 = fmul fast float %1126, %1127
  %1129 = fadd fast float %1128, %1123
  %1130 = fmul fast float %1129, 0x3F70101020000000
  %1131 = call float @dx.op.unary.f32(i32 7, float %1130)  ; Saturate(value)
  br label %1132

; <label>:1132                                    ; preds = %1117, %329
  %1133 = phi float [ 0.000000e+00, %329 ], [ %985, %1117 ]
  %1134 = phi float [ 0.000000e+00, %329 ], [ %986, %1117 ]
  %1135 = phi float [ 0.000000e+00, %329 ], [ %836, %1117 ]
  %1136 = phi float [ 0.000000e+00, %329 ], [ %837, %1117 ]
  %1137 = phi float [ 0.000000e+00, %329 ], [ %838, %1117 ]
  %1138 = phi float [ 0.000000e+00, %329 ], [ %1032, %1117 ]
  %1139 = phi float [ 0.000000e+00, %329 ], [ %1033, %1117 ]
  %1140 = phi float [ 0.000000e+00, %329 ], [ %1034, %1117 ]
  %1141 = phi float [ 0.000000e+00, %329 ], [ %1090, %1117 ]
  %1142 = phi float [ 0.000000e+00, %329 ], [ %1091, %1117 ]
  %1143 = phi float [ 0.000000e+00, %329 ], [ %1092, %1117 ]
  %1144 = phi float [ 0.000000e+00, %329 ], [ %822, %1117 ]
  %1145 = phi float [ 0.000000e+00, %329 ], [ %618, %1117 ]
  %1146 = phi float [ 0.000000e+00, %329 ], [ %984, %1117 ]
  %1147 = phi float [ 0.000000e+00, %329 ], [ %987, %1117 ]
  %1148 = phi float [ 0.000000e+00, %329 ], [ %1118, %1117 ]
  %1149 = phi float [ 0.000000e+00, %329 ], [ %1131, %1117 ]
  %1150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1151 = extractvalue %dx.types.CBufRet.f32 %1150, 0
  %1152 = call float @dx.op.dot2.f32(i32 54, float %1133, float %1134, float %1133, float %1134)  ; Dot2(ax,ay,bx,by)
  %1153 = fmul fast float %1152, 0x3FE3333340000000
  %1154 = fsub fast float 1.000000e+00, %1153
  %1155 = call float @dx.op.dot3.f32(i32 55, float %1133, float %1134, float %1154, float %1133, float %1134, float %1154)  ; Dot3(ax,ay,az,bx,by,bz)
  %1156 = call float @dx.op.unary.f32(i32 25, float %1155)  ; Rsqrt(value)
  %1157 = fmul fast float %1156, %1133
  %1158 = fmul fast float %1156, %1134
  %1159 = fmul fast float %1154, %1156
  %1160 = fmul fast float %1159, %70
  %1161 = fmul fast float %1159, %71
  %1162 = fmul fast float %1159, %72
  %1163 = fmul fast float %1157, %66
  %1164 = fmul fast float %1157, %67
  %1165 = fmul fast float %1157, %68
  %1166 = fadd fast float %1160, %1163
  %1167 = fadd fast float %1161, %1164
  %1168 = fadd fast float %1162, %1165
  %1169 = fmul fast float %1158, %102
  %1170 = fmul fast float %1158, %103
  %1171 = fmul fast float %1158, %104
  %1172 = fadd fast float %1166, %1169
  %1173 = fadd fast float %1167, %1170
  %1174 = fadd fast float %1168, %1171
  %1175 = call float @dx.op.dot3.f32(i32 55, float %1172, float %1173, float %1174, float %1172, float %1173, float %1174)  ; Dot3(ax,ay,az,bx,by,bz)
  %1176 = call float @dx.op.unary.f32(i32 25, float %1175)  ; Rsqrt(value)
  %1177 = fmul fast float %1172, %1176
  %1178 = fmul fast float %1173, %1176
  %1179 = fmul fast float %1174, %1176
  %1180 = call float @dx.op.unary.f32(i32 83, float %138)  ; DerivCoarseX(value)
  %1181 = call float @dx.op.unary.f32(i32 83, float %139)  ; DerivCoarseX(value)
  %1182 = call float @dx.op.unary.f32(i32 83, float %140)  ; DerivCoarseX(value)
  %1183 = call float @dx.op.unary.f32(i32 84, float %138)  ; DerivCoarseY(value)
  %1184 = call float @dx.op.unary.f32(i32 84, float %139)  ; DerivCoarseY(value)
  %1185 = call float @dx.op.unary.f32(i32 84, float %140)  ; DerivCoarseY(value)
  %1186 = fadd fast float %1180, %138
  %1187 = fadd fast float %1181, %139
  %1188 = fadd fast float %1182, %140
  %1189 = fadd fast float %1183, %138
  %1190 = fadd fast float %1184, %139
  %1191 = fadd fast float %1185, %140
  %1192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.f32 %1192, 0
  %1194 = extractvalue %dx.types.CBufRet.f32 %1192, 1
  %1195 = extractvalue %dx.types.CBufRet.f32 %1192, 2
  %1196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1196, 2
  %1198 = extractvalue %dx.types.CBufRet.f32 %1196, 3
  %1199 = fmul fast float %1193, %91
  %1200 = fmul fast float %1199, %1197
  %1201 = fmul fast float %1194, %92
  %1202 = fmul fast float %1201, %1198
  %1203 = fptoui float %1200 to i32
  %1204 = fptoui float %1202 to i32
  %1205 = fadd fast float %1193, -1.000000e+00
  %1206 = fadd fast float %1194, -1.000000e+00
  %1207 = fptoui float %1205 to i32
  %1208 = fptoui float %1206 to i32
  %1209 = call i32 @dx.op.binary.i32(i32 40, i32 %1203, i32 %1207)  ; UMin(a,b)
  %1210 = call i32 @dx.op.binary.i32(i32 40, i32 %1204, i32 %1208)  ; UMin(a,b)
  %1211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.f32 %1211, 2
  %1213 = extractvalue %dx.types.CBufRet.f32 %1211, 3
  %1214 = fmul fast float %1212, %82
  %1215 = fsub fast float %1214, %1213
  %1216 = fadd fast float %1195, -1.000000e+00
  %1217 = call float @dx.op.binary.f32(i32 36, float %1215, float %1216)  ; FMin(a,b)
  %1218 = fptoui float %1217 to i32
  %1219 = fptoui float %1193 to i32
  %1220 = fptoui float %1194 to i32
  %1221 = mul i32 %1218, %1220
  %1222 = add i32 %1221, %1210
  %1223 = mul i32 %1222, %1219
  %1224 = add i32 %1223, %1209
  %1225 = shl i32 %1224, 2
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = and i32 %1227, 1023
  %1229 = lshr i32 %1227, 10
  %1230 = icmp eq i32 %1228, 0
  br i1 %1230, label %1684, label %1231

; <label>:1231                                    ; preds = %1132
  %1232 = and i32 %1227, 1023
  br label %1233

; <label>:1233                                    ; preds = %1362, %1231
  %1234 = phi float [ %1363, %1362 ], [ 0.000000e+00, %1231 ]
  %1235 = phi float [ %1364, %1362 ], [ %1151, %1231 ]
  %1236 = phi float [ %1365, %1362 ], [ %1149, %1231 ]
  %1237 = phi float [ %1366, %1362 ], [ %1141, %1231 ]
  %1238 = phi float [ %1367, %1362 ], [ %1142, %1231 ]
  %1239 = phi float [ %1368, %1362 ], [ %1143, %1231 ]
  %1240 = phi float [ %1369, %1362 ], [ 0.000000e+00, %1231 ]
  %1241 = phi float [ %1370, %1362 ], [ 0.000000e+00, %1231 ]
  %1242 = phi float [ %1371, %1362 ], [ %1138, %1231 ]
  %1243 = phi float [ %1372, %1362 ], [ %1139, %1231 ]
  %1244 = phi float [ %1373, %1362 ], [ %1140, %1231 ]
  %1245 = phi float [ %1374, %1362 ], [ %1177, %1231 ]
  %1246 = phi float [ %1375, %1362 ], [ %1178, %1231 ]
  %1247 = phi float [ %1376, %1362 ], [ %1179, %1231 ]
  %1248 = phi float [ %1377, %1362 ], [ %1147, %1231 ]
  %1249 = phi float [ %1378, %1362 ], [ %1146, %1231 ]
  %1250 = phi float [ %1379, %1362 ], [ 0.000000e+00, %1231 ]
  %1251 = phi float [ %1380, %1362 ], [ %1144, %1231 ]
  %1252 = phi float [ %1381, %1362 ], [ %1135, %1231 ]
  %1253 = phi float [ %1382, %1362 ], [ %1136, %1231 ]
  %1254 = phi float [ %1383, %1362 ], [ %1137, %1231 ]
  %1255 = phi i32 [ %1312, %1362 ], [ 0, %1231 ]
  %1256 = add nuw nsw i32 %1255, %1229
  %1257 = shl i32 %1256, 2
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = shl i32 %1259, 8
  %1261 = or i32 %1260, 48
  %1262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.ResRet.f32 %1262, 1
  %1265 = extractvalue %dx.types.ResRet.f32 %1262, 2
  %1266 = extractvalue %dx.types.ResRet.f32 %1262, 3
  %1267 = or i32 %1260, 64
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = extractvalue %dx.types.ResRet.i32 %1268, 1
  %1271 = or i32 %1260, 80
  %1272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.f32 %1272, 2
  %1274 = extractvalue %dx.types.ResRet.f32 %1272, 3
  %1275 = or i32 %1260, 96
  %1276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 0
  %1278 = extractvalue %dx.types.ResRet.f32 %1276, 1
  %1279 = extractvalue %dx.types.ResRet.f32 %1276, 2
  %1280 = extractvalue %dx.types.ResRet.f32 %1276, 3
  %1281 = or i32 %1260, 112
  %1282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.f32 %1282, 2
  %1284 = or i32 %1260, 128
  %1285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.f32 %1285, 0
  %1287 = extractvalue %dx.types.ResRet.f32 %1285, 1
  %1288 = extractvalue %dx.types.ResRet.f32 %1285, 2
  %1289 = extractvalue %dx.types.ResRet.f32 %1285, 3
  %1290 = or i32 %1260, 144
  %1291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.f32 %1291, 0
  %1293 = extractvalue %dx.types.ResRet.f32 %1291, 1
  %1294 = extractvalue %dx.types.ResRet.f32 %1291, 2
  %1295 = extractvalue %dx.types.ResRet.f32 %1291, 3
  %1296 = or i32 %1260, 160
  %1297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.f32 %1297, 0
  %1299 = extractvalue %dx.types.ResRet.f32 %1297, 1
  %1300 = extractvalue %dx.types.ResRet.f32 %1297, 2
  %1301 = extractvalue %dx.types.ResRet.f32 %1297, 3
  %1302 = or i32 %1260, 192
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = or i32 %1260, 208
  %1306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1305, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.f32 %1306, 0
  %1308 = or i32 %1260, 248
  %1309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.f32 %1309, 0
  %1311 = extractvalue %dx.types.ResRet.f32 %1309, 1
  %1312 = add nuw nsw i32 %1255, 1
  %1313 = bitcast float %1266 to i32
  %1314 = and i32 %1313, 2560
  %1315 = icmp eq i32 %1314, 0
  %1316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.f32 %1316, 0
  %1318 = extractvalue %dx.types.ResRet.f32 %1316, 1
  %1319 = extractvalue %dx.types.ResRet.f32 %1316, 2
  %1320 = extractvalue %dx.types.ResRet.f32 %1316, 3
  %1321 = call float @dx.op.dot4.f32(i32 56, float %1317, float %1318, float %1319, float %1320, float %138, float %139, float %140, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1322 = or i32 %1260, 16
  %1323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1322, i32 undef)  ; BufferLoad(srv,index,wot)
  %1324 = extractvalue %dx.types.ResRet.f32 %1323, 0
  %1325 = extractvalue %dx.types.ResRet.f32 %1323, 1
  %1326 = extractvalue %dx.types.ResRet.f32 %1323, 2
  %1327 = extractvalue %dx.types.ResRet.f32 %1323, 3
  %1328 = call float @dx.op.dot4.f32(i32 56, float %1324, float %1325, float %1326, float %1327, float %138, float %139, float %140, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1329 = or i32 %1260, 32
  %1330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.f32 %1330, 0
  %1332 = extractvalue %dx.types.ResRet.f32 %1330, 1
  %1333 = extractvalue %dx.types.ResRet.f32 %1330, 2
  %1334 = extractvalue %dx.types.ResRet.f32 %1330, 3
  %1335 = call float @dx.op.dot4.f32(i32 56, float %1331, float %1332, float %1333, float %1334, float %138, float %139, float %140, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1336 = call float @dx.op.unary.f32(i32 27, float %1321)  ; Round_ni(value)
  %1337 = call float @dx.op.unary.f32(i32 6, float %1336)  ; FAbs(value)
  %1338 = call float @dx.op.unary.f32(i32 27, float %1328)  ; Round_ni(value)
  %1339 = call float @dx.op.unary.f32(i32 6, float %1338)  ; FAbs(value)
  %1340 = call float @dx.op.unary.f32(i32 6, float %1335)  ; FAbs(value)
  %1341 = call float @dx.op.unary.f32(i32 27, float %1340)  ; Round_ni(value)
  %1342 = fadd fast float %1339, %1337
  %1343 = fadd fast float %1342, %1341
  %1344 = fcmp fast oeq float %1343, 0.000000e+00
  %1345 = call float @dx.op.dot4.f32(i32 56, float %1317, float %1318, float %1319, float %1320, float %1186, float %1187, float %1188, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1346 = call float @dx.op.dot4.f32(i32 56, float %1324, float %1325, float %1326, float %1327, float %1186, float %1187, float %1188, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1347 = call float @dx.op.dot4.f32(i32 56, float %1317, float %1318, float %1319, float %1320, float %1189, float %1190, float %1191, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1348 = call float @dx.op.dot4.f32(i32 56, float %1324, float %1325, float %1326, float %1327, float %1189, float %1190, float %1191, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1349 = fsub fast float %1345, %1321
  %1350 = fsub fast float %1347, %1321
  %1351 = fsub fast float %1346, %1328
  %1352 = fsub fast float %1348, %1328
  %1353 = call float @dx.op.dot3.f32(i32 55, float %1263, float %1264, float %1265, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1355 = extractvalue %dx.types.CBufRet.f32 %1354, 2
  %1356 = fadd fast float %1355, %1353
  %1357 = call float @dx.op.unary.f32(i32 7, float %1356)  ; Saturate(value)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1354, 0
  %1359 = fcmp fast ogt float %1357, %1358
  %1360 = and i1 %1344, %1359
  %1361 = and i1 %1315, %1360
  br i1 %1361, label %1385, label %1362

; <label>:1362                                    ; preds = %1670, %1466, %1385, %1233
  %1363 = phi float [ %1234, %1385 ], [ %1469, %1466 ], [ %1469, %1670 ], [ %1234, %1233 ]
  %1364 = phi float [ %1235, %1385 ], [ %1235, %1466 ], [ %1646, %1670 ], [ %1235, %1233 ]
  %1365 = phi float [ %1236, %1385 ], [ %1236, %1466 ], [ %1644, %1670 ], [ %1236, %1233 ]
  %1366 = phi float [ %1237, %1385 ], [ %1237, %1466 ], [ %1622, %1670 ], [ %1237, %1233 ]
  %1367 = phi float [ %1238, %1385 ], [ %1238, %1466 ], [ %1623, %1670 ], [ %1238, %1233 ]
  %1368 = phi float [ %1239, %1385 ], [ %1239, %1466 ], [ %1624, %1670 ], [ %1239, %1233 ]
  %1369 = phi float [ %1240, %1385 ], [ %1240, %1466 ], [ %1593, %1670 ], [ %1240, %1233 ]
  %1370 = phi float [ %1241, %1385 ], [ %1241, %1466 ], [ %1591, %1670 ], [ %1241, %1233 ]
  %1371 = phi float [ %1242, %1385 ], [ %1242, %1466 ], [ %1680, %1670 ], [ %1242, %1233 ]
  %1372 = phi float [ %1243, %1385 ], [ %1243, %1466 ], [ %1681, %1670 ], [ %1243, %1233 ]
  %1373 = phi float [ %1244, %1385 ], [ %1244, %1466 ], [ %1682, %1670 ], [ %1244, %1233 ]
  %1374 = phi float [ %1245, %1385 ], [ %1245, %1466 ], [ %1572, %1670 ], [ %1245, %1233 ]
  %1375 = phi float [ %1246, %1385 ], [ %1246, %1466 ], [ %1573, %1670 ], [ %1246, %1233 ]
  %1376 = phi float [ %1247, %1385 ], [ %1247, %1466 ], [ %1574, %1670 ], [ %1247, %1233 ]
  %1377 = phi float [ %1248, %1385 ], [ %1248, %1466 ], [ %1602, %1670 ], [ %1248, %1233 ]
  %1378 = phi float [ %1249, %1385 ], [ %1249, %1466 ], [ %1599, %1670 ], [ %1249, %1233 ]
  %1379 = phi float [ %1250, %1385 ], [ %1250, %1466 ], [ %1596, %1670 ], [ %1250, %1233 ]
  %1380 = phi float [ %1251, %1385 ], [ %1251, %1466 ], [ %1589, %1670 ], [ %1251, %1233 ]
  %1381 = phi float [ %1252, %1385 ], [ %1252, %1466 ], [ %1584, %1670 ], [ %1252, %1233 ]
  %1382 = phi float [ %1253, %1385 ], [ %1253, %1466 ], [ %1585, %1670 ], [ %1253, %1233 ]
  %1383 = phi float [ %1254, %1385 ], [ %1254, %1466 ], [ %1586, %1670 ], [ %1254, %1233 ]
  %1384 = icmp eq i32 %1312, %1232
  br i1 %1384, label %1683, label %1233

; <label>:1385                                    ; preds = %1233
  %1386 = extractvalue %dx.types.ResRet.f32 %1282, 3
  %1387 = extractvalue %dx.types.ResRet.f32 %1282, 1
  %1388 = extractvalue %dx.types.ResRet.f32 %1282, 0
  %1389 = extractvalue %dx.types.ResRet.f32 %1272, 1
  %1390 = extractvalue %dx.types.ResRet.f32 %1272, 0
  %1391 = extractvalue %dx.types.ResRet.i32 %1268, 3
  %1392 = extractvalue %dx.types.ResRet.i32 %1268, 2
  %1393 = add i32 %1391, 0
  %1394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1393, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1395 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1396 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1394, %dx.types.Handle %1395, float %1321, float %1328, float undef, float undef, i32 0, i32 0, i32 undef, float %1349, float %1351, float undef, float %1350, float %1352, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1397 = extractvalue %dx.types.ResRet.f32 %1396, 0
  %1398 = fmul fast float %1397, %1390
  %1399 = fadd fast float %1398, %1389
  %1400 = call float @dx.op.unary.f32(i32 7, float %1399)  ; Saturate(value)
  %1401 = fmul fast float %1321, %1277
  %1402 = call float @dx.op.tertiary.f32(i32 46, float %1278, float %1328, float %1401)  ; FMad(a,b,c)
  %1403 = fadd fast float %1402, %1388
  %1404 = fmul fast float %1321, %1279
  %1405 = call float @dx.op.tertiary.f32(i32 46, float %1280, float %1328, float %1404)  ; FMad(a,b,c)
  %1406 = fadd fast float %1405, %1387
  %1407 = fmul fast float %1349, %1277
  %1408 = call float @dx.op.tertiary.f32(i32 46, float %1278, float %1351, float %1407)  ; FMad(a,b,c)
  %1409 = fmul fast float %1349, %1279
  %1410 = call float @dx.op.tertiary.f32(i32 46, float %1280, float %1351, float %1409)  ; FMad(a,b,c)
  %1411 = fmul fast float %1350, %1277
  %1412 = call float @dx.op.tertiary.f32(i32 46, float %1278, float %1352, float %1411)  ; FMad(a,b,c)
  %1413 = fmul fast float %1350, %1279
  %1414 = call float @dx.op.tertiary.f32(i32 46, float %1280, float %1352, float %1413)  ; FMad(a,b,c)
  %1415 = add i32 %1392, 0
  %1416 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1415, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1417 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1416, %dx.types.Handle %1395, float %1403, float %1406, float undef, float undef, i32 0, i32 0, i32 undef, float %1408, float %1410, float undef, float %1412, float %1414, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1418 = extractvalue %dx.types.ResRet.f32 %1417, 0
  %1419 = and i32 %1313, 1024
  %1420 = icmp ne i32 %1419, 0
  %1421 = fcmp fast ogt float %1418, 0x3FE0101020000000
  %1422 = uitofp i1 %1421 to float
  %1423 = select i1 %1420, float %1422, float %1418
  %1424 = and i32 %1313, 8192
  %1425 = icmp ne i32 %1424, 0
  %1426 = select i1 %1425, float %1386, float 1.000000e+00
  %1427 = fmul fast float %1321, 2.000000e+00
  %1428 = fadd fast float %1427, -1.000000e+00
  %1429 = call float @dx.op.unary.f32(i32 6, float %1428)  ; FAbs(value)
  %1430 = fmul fast float %1429, %1310
  %1431 = fsub fast float %1430, %1310
  %1432 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  %1433 = fmul fast float %1328, 2.000000e+00
  %1434 = fadd fast float %1433, -1.000000e+00
  %1435 = call float @dx.op.unary.f32(i32 6, float %1434)  ; FAbs(value)
  %1436 = fmul fast float %1435, %1311
  %1437 = fsub fast float %1436, %1311
  %1438 = call float @dx.op.unary.f32(i32 7, float %1437)  ; Saturate(value)
  %1439 = fmul fast float %1340, %1273
  %1440 = fsub fast float %1439, %1273
  %1441 = call float @dx.op.unary.f32(i32 7, float %1440)  ; Saturate(value)
  %1442 = fmul fast float %1400, %1426
  %1443 = fmul fast float %1442, %1397
  %1444 = fmul fast float %1443, %1432
  %1445 = fmul fast float %1444, %1423
  %1446 = fmul fast float %1445, %1438
  %1447 = fmul fast float %1446, %1441
  %1448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1449 = extractvalue %dx.types.CBufRet.f32 %1448, 1
  %1450 = extractvalue %dx.types.CBufRet.f32 %1448, 0
  %1451 = fsub fast float %1357, %1450
  %1452 = fmul fast float %1451, %1449
  %1453 = call float @dx.op.unary.f32(i32 7, float %1452)  ; Saturate(value)
  %1454 = fmul fast float %1447, %1274
  %1455 = fadd fast float %1447, %1274
  %1456 = fmul fast float %1455, %1283
  %1457 = fsub fast float %1456, %1283
  %1458 = call float @dx.op.unary.f32(i32 7, float %1457)  ; Saturate(value)
  %1459 = and i32 %1313, 128
  %1460 = icmp ne i32 %1459, 0
  %1461 = select i1 %1460, float %1458, float %1454
  %1462 = fmul fast float %1461, %1453
  %1463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1464 = extractvalue %dx.types.CBufRet.f32 %1463, 0
  %1465 = fcmp fast ugt float %1462, %1464
  br i1 %1465, label %1466, label %1362

; <label>:1466                                    ; preds = %1385
  %1467 = select i1 %1425, float %1462, float 0.000000e+00
  %1468 = fadd fast float %1467, %1234
  %1469 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  br i1 %1425, label %1362, label %1470

; <label>:1470                                    ; preds = %1466
  %1471 = and i32 %1313, 4
  %1472 = and i32 %1313, 8
  %1473 = add i32 %1269, 0
  %1474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1473, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1476 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1474, %dx.types.Handle %1475, float %1403, float %1406, float undef, float undef, i32 0, i32 0, i32 undef, float %1408, float %1410, float undef, float %1412, float %1414, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1477 = extractvalue %dx.types.ResRet.f32 %1476, 0
  %1478 = extractvalue %dx.types.ResRet.f32 %1476, 1
  %1479 = extractvalue %dx.types.ResRet.f32 %1476, 2
  %1480 = extractvalue %dx.types.ResRet.f32 %1476, 3
  %1481 = bitcast float %1295 to i32
  %1482 = and i32 %1481, 255
  %1483 = uitofp i32 %1482 to float
  %1484 = lshr i32 %1481, 8
  %1485 = and i32 %1484, 255
  %1486 = uitofp i32 %1485 to float
  %1487 = fmul fast float %1480, %1483
  %1488 = fadd fast float %1487, %1486
  %1489 = fmul fast float %1488, 0x3F70101000000000
  %1490 = add i32 %1270, 0
  %1491 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1490, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1492 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1491, %dx.types.Handle %1475, float %1403, float %1406, float undef, float undef, i32 0, i32 0, i32 undef, float %1408, float %1410, float undef, float %1412, float %1414, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1493 = extractvalue %dx.types.ResRet.f32 %1492, 0
  %1494 = extractvalue %dx.types.ResRet.f32 %1492, 1
  %1495 = extractvalue %dx.types.ResRet.f32 %1492, 2
  %1496 = extractvalue %dx.types.ResRet.f32 %1492, 3
  %1497 = bitcast float %1289 to i32
  %1498 = and i32 %1497, 255
  %1499 = uitofp i32 %1498 to float
  %1500 = lshr i32 %1497, 8
  %1501 = and i32 %1500, 255
  %1502 = uitofp i32 %1501 to float
  %1503 = lshr i32 %1497, 16
  %1504 = and i32 %1503, 255
  %1505 = uitofp i32 %1504 to float
  %1506 = fmul fast float %1505, 0x3F70101000000000
  %1507 = fmul fast float %1493, %1499
  %1508 = fadd fast float %1507, %1502
  %1509 = fmul fast float %1508, 0x3F70101000000000
  %1510 = fadd fast float %1494, -5.000000e-01
  %1511 = fadd fast float %1496, -5.000000e-01
  %1512 = fmul fast float %1510, %1506
  %1513 = fmul fast float %1511, %1506
  %1514 = fadd fast float %1512, 5.000000e-01
  %1515 = fadd fast float %1513, 5.000000e-01
  %1516 = fmul fast float %1477, %1298
  %1517 = fmul fast float %1478, %1299
  %1518 = fmul fast float %1479, %1300
  %1519 = fmul fast float %1514, 2.000000e+00
  %1520 = fadd fast float %1519, -1.000000e+00
  %1521 = fmul fast float %1515, 2.000000e+00
  %1522 = fadd fast float %1521, -1.000000e+00
  %1523 = fadd fast float %1520, %1522
  %1524 = fmul fast float %1523, 5.000000e-01
  %1525 = fsub fast float %1520, %1522
  %1526 = fmul fast float %1525, 5.000000e-01
  %1527 = call float @dx.op.unary.f32(i32 6, float %1524)  ; FAbs(value)
  %1528 = fsub fast float 1.000000e+00, %1527
  %1529 = call float @dx.op.unary.f32(i32 6, float %1526)  ; FAbs(value)
  %1530 = fsub fast float %1528, %1529
  %1531 = call float @dx.op.dot3.f32(i32 55, float %1524, float %1526, float %1530, float %1524, float %1526, float %1530)  ; Dot3(ax,ay,az,bx,by,bz)
  %1532 = call float @dx.op.unary.f32(i32 25, float %1531)  ; Rsqrt(value)
  %1533 = fmul fast float %1524, %1532
  %1534 = fmul fast float %1526, %1532
  %1535 = fmul fast float %1532, %1530
  %1536 = fmul fast float %1535, %1263
  %1537 = fmul fast float %1535, %1264
  %1538 = fmul fast float %1535, %1265
  %1539 = fmul fast float %1533, %1286
  %1540 = fmul fast float %1533, %1287
  %1541 = fmul fast float %1533, %1288
  %1542 = fadd fast float %1539, %1536
  %1543 = fadd fast float %1540, %1537
  %1544 = fadd fast float %1541, %1538
  %1545 = fmul fast float %1534, %1292
  %1546 = fmul fast float %1534, %1293
  %1547 = fmul fast float %1534, %1294
  %1548 = fadd fast float %1542, %1545
  %1549 = fadd fast float %1543, %1546
  %1550 = fadd fast float %1544, %1547
  %1551 = call float @dx.op.dot3.f32(i32 55, float %1548, float %1549, float %1550, float %1548, float %1549, float %1550)  ; Dot3(ax,ay,az,bx,by,bz)
  %1552 = call float @dx.op.unary.f32(i32 25, float %1551)  ; Rsqrt(value)
  %1553 = fmul fast float %1548, %1552
  %1554 = fmul fast float %1549, %1552
  %1555 = fmul fast float %1550, %1552
  %1556 = icmp ne i32 %1472, 0
  %1557 = select i1 %1556, float 1.000000e+00, float 0.000000e+00
  %1558 = fmul fast float %1462, %1557
  %1559 = and i32 %1313, 1
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1561, label %1565

; <label>:1561                                    ; preds = %1470
  %1562 = fsub fast float %1553, %1245
  %1563 = fsub fast float %1554, %1246
  %1564 = fsub fast float %1555, %1247
  br label %1565

; <label>:1565                                    ; preds = %1561, %1470
  %1566 = phi float [ %1562, %1561 ], [ %1553, %1470 ]
  %1567 = phi float [ %1563, %1561 ], [ %1554, %1470 ]
  %1568 = phi float [ %1564, %1561 ], [ %1555, %1470 ]
  %1569 = fmul float %1568, %1558
  %1570 = fmul float %1567, %1558
  %1571 = fmul float %1566, %1558
  %1572 = fadd fast float %1571, %1245
  %1573 = fadd fast float %1570, %1246
  %1574 = fadd fast float %1569, %1247
  %1575 = icmp ne i32 %1471, 0
  %1576 = select i1 %1575, float 1.000000e+00, float 0.000000e+00
  %1577 = fmul fast float %1462, %1576
  %1578 = fsub fast float %1516, %1252
  %1579 = fsub fast float %1517, %1253
  %1580 = fsub fast float %1518, %1254
  %1581 = fmul fast float %1578, %1577
  %1582 = fmul fast float %1579, %1577
  %1583 = fmul fast float %1580, %1577
  %1584 = fadd fast float %1581, %1252
  %1585 = fadd fast float %1582, %1253
  %1586 = fadd fast float %1583, %1254
  %1587 = fsub fast float %1489, %1251
  %1588 = fmul fast float %1587, %1577
  %1589 = fadd fast float %1588, %1251
  %1590 = fmul fast float %1577, %1241
  %1591 = fsub fast float %1241, %1590
  %1592 = fmul fast float %1577, %1240
  %1593 = fsub fast float %1240, %1592
  %1594 = bitcast float %1307 to i32
  %1595 = fadd fast float %1462, %1250
  %1596 = call float @dx.op.unary.f32(i32 7, float %1595)  ; Saturate(value)
  %1597 = fsub fast float %1509, %1249
  %1598 = fmul fast float %1597, %1558
  %1599 = fadd fast float %1598, %1249
  %1600 = fsub fast float %1495, %1248
  %1601 = fmul fast float %1600, %1558
  %1602 = fadd fast float %1601, %1248
  br i1 %1560, label %1611, label %1603

; <label>:1603                                    ; preds = %1565
  %1604 = and i32 %1313, 32768
  %1605 = icmp eq i32 %1604, 0
  br i1 %1605, label %1621, label %1606

; <label>:1606                                    ; preds = %1603
  %1607 = fmul fast float %1558, 1.270000e+02
  %1608 = fadd fast float %1607, %1237
  %1609 = fadd fast float %1607, %1238
  %1610 = fadd fast float %1607, %1239
  br label %1621

; <label>:1611                                    ; preds = %1565
  %1612 = fsub fast float 1.270000e+02, %1237
  %1613 = fsub fast float 1.270000e+02, %1238
  %1614 = fsub fast float 1.270000e+02, %1239
  %1615 = fmul fast float %1558, %1612
  %1616 = fmul fast float %1558, %1613
  %1617 = fmul fast float %1558, %1614
  %1618 = fadd fast float %1615, %1237
  %1619 = fadd fast float %1616, %1238
  %1620 = fadd fast float %1617, %1239
  br label %1621

; <label>:1621                                    ; preds = %1611, %1606, %1603
  %1622 = phi float [ %1608, %1606 ], [ %1237, %1603 ], [ %1618, %1611 ]
  %1623 = phi float [ %1609, %1606 ], [ %1238, %1603 ], [ %1619, %1611 ]
  %1624 = phi float [ %1610, %1606 ], [ %1239, %1603 ], [ %1620, %1611 ]
  %1625 = call float @dx.op.dot3.f32(i32 55, float %1516, float %1517, float %1518, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 0
  %1628 = extractvalue %dx.types.CBufRet.f32 %1626, 1
  %1629 = fmul fast float %1628, %1625
  %1630 = fadd fast float %1629, %1627
  %1631 = call float @dx.op.unary.f32(i32 7, float %1630)  ; Saturate(value)
  %1632 = bitcast float %1301 to i32
  %1633 = and i32 %1632, 65535
  %1634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1633)  ; LegacyF16ToF32(value)
  %1635 = lshr i32 %1632, 16
  %1636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1635)  ; LegacyF16ToF32(value)
  %1637 = fcmp fast oge float %1634, 0.000000e+00
  %1638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1639 = extractvalue %dx.types.CBufRet.f32 %1638, 0
  %1640 = select i1 %1637, float %1634, float %1639
  %1641 = fadd fast float %1640, %1636
  %1642 = fsub fast float %1631, %1236
  %1643 = fmul fast float %1642, %1462
  %1644 = fadd fast float %1643, %1236
  %1645 = fmul fast float %1641, %1462
  %1646 = call float @dx.op.binary.f32(i32 35, float %1235, float %1645)  ; FMax(a,b)
  %1647 = and i32 %1313, 16
  %1648 = icmp eq i32 %1647, 0
  br i1 %1648, label %1670, label %1649

; <label>:1649                                    ; preds = %1621
  %1650 = add i32 %1304, 0
  %1651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1650, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1652 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1651, %dx.types.Handle %1475, float %1403, float %1406, float undef, float undef, i32 0, i32 0, i32 undef, float %1408, float %1410, float undef, float %1412, float %1414, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1653 = extractvalue %dx.types.ResRet.f32 %1652, 0
  %1654 = extractvalue %dx.types.ResRet.f32 %1652, 1
  %1655 = extractvalue %dx.types.ResRet.f32 %1652, 2
  %1656 = and i32 %1594, 65535
  %1657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1656)  ; LegacyF16ToF32(value)
  %1658 = fmul fast float %1653, %1298
  %1659 = fmul fast float %1654, %1299
  %1660 = fmul fast float %1655, %1300
  %1661 = and i32 %1313, 16384
  %1662 = icmp ne i32 %1661, 0
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 0
  %1665 = select i1 %1662, float %1664, float 1.000000e+00
  %1666 = fmul fast float %1665, %1657
  %1667 = fmul fast float %1658, %1666
  %1668 = fmul fast float %1659, %1666
  %1669 = fmul fast float %1660, %1666
  br label %1670

; <label>:1670                                    ; preds = %1649, %1621
  %1671 = phi float [ %1667, %1649 ], [ 0.000000e+00, %1621 ]
  %1672 = phi float [ %1668, %1649 ], [ 0.000000e+00, %1621 ]
  %1673 = phi float [ %1669, %1649 ], [ 0.000000e+00, %1621 ]
  %1674 = fsub fast float %1671, %1242
  %1675 = fsub fast float %1672, %1243
  %1676 = fsub fast float %1673, %1244
  %1677 = fmul fast float %1674, %1462
  %1678 = fmul fast float %1675, %1462
  %1679 = fmul fast float %1676, %1462
  %1680 = fadd fast float %1677, %1242
  %1681 = fadd fast float %1678, %1243
  %1682 = fadd fast float %1679, %1244
  br label %1362

; <label>:1683                                    ; preds = %1362
  br label %1684

; <label>:1684                                    ; preds = %1683, %1132
  %1685 = phi float [ 0.000000e+00, %1132 ], [ %1363, %1683 ]
  %1686 = phi float [ %1151, %1132 ], [ %1364, %1683 ]
  %1687 = phi float [ %1149, %1132 ], [ %1365, %1683 ]
  %1688 = phi float [ %1141, %1132 ], [ %1366, %1683 ]
  %1689 = phi float [ %1142, %1132 ], [ %1367, %1683 ]
  %1690 = phi float [ %1143, %1132 ], [ %1368, %1683 ]
  %1691 = phi float [ 0.000000e+00, %1132 ], [ %1369, %1683 ]
  %1692 = phi float [ 0.000000e+00, %1132 ], [ %1370, %1683 ]
  %1693 = phi float [ %1138, %1132 ], [ %1371, %1683 ]
  %1694 = phi float [ %1139, %1132 ], [ %1372, %1683 ]
  %1695 = phi float [ %1140, %1132 ], [ %1373, %1683 ]
  %1696 = phi float [ %1177, %1132 ], [ %1374, %1683 ]
  %1697 = phi float [ %1178, %1132 ], [ %1375, %1683 ]
  %1698 = phi float [ %1179, %1132 ], [ %1376, %1683 ]
  %1699 = phi float [ %1147, %1132 ], [ %1377, %1683 ]
  %1700 = phi float [ %1146, %1132 ], [ %1378, %1683 ]
  %1701 = phi float [ 0.000000e+00, %1132 ], [ %1379, %1683 ]
  %1702 = phi float [ %1144, %1132 ], [ %1380, %1683 ]
  %1703 = phi float [ %1135, %1132 ], [ %1381, %1683 ]
  %1704 = phi float [ %1136, %1132 ], [ %1382, %1683 ]
  %1705 = phi float [ %1137, %1132 ], [ %1383, %1683 ]
  %1706 = call float @dx.op.dot3.f32(i32 55, float %1696, float %1697, float %1698, float %1696, float %1697, float %1698)  ; Dot3(ax,ay,az,bx,by,bz)
  %1707 = call float @dx.op.unary.f32(i32 25, float %1706)  ; Rsqrt(value)
  %1708 = fmul fast float %1707, %1696
  %1709 = fmul fast float %1707, %1697
  %1710 = fmul fast float %1707, %1698
  %1711 = fadd fast float %1701, %1145
  %1712 = call float @dx.op.unary.f32(i32 7, float %1711)  ; Saturate(value)
  %1713 = call float @dx.op.dot3.f32(i32 55, float %1708, float %1709, float %1710, float %1708, float %1709, float %1710)  ; Dot3(ax,ay,az,bx,by,bz)
  %1714 = call float @dx.op.unary.f32(i32 25, float %1713)  ; Rsqrt(value)
  %1715 = fmul fast float %1714, %1708
  %1716 = fmul fast float %1714, %1709
  %1717 = fmul fast float %1714, %1710
  %1718 = add i32 %65, 168
  %1719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1718, i32 undef)  ; BufferLoad(srv,index,wot)
  %1720 = extractvalue %dx.types.ResRet.i32 %1719, 0
  %1721 = extractvalue %dx.types.ResRet.i32 %1719, 1
  %1722 = extractvalue %dx.types.ResRet.i32 %1719, 2
  %1723 = extractvalue %dx.types.ResRet.i32 %1719, 3
  %1724 = bitcast i32 %1720 to float
  %1725 = bitcast i32 %1721 to float
  %1726 = bitcast i32 %1722 to float
  %1727 = bitcast i32 %1723 to float
  %1728 = fsub fast float %1703, %1724
  %1729 = fsub fast float %1704, %1725
  %1730 = fsub fast float %1705, %1726
  %1731 = fmul fast float %1728, %201
  %1732 = fmul fast float %1729, %201
  %1733 = fmul fast float %1730, %201
  %1734 = fadd fast float %1731, %1724
  %1735 = fadd fast float %1732, %1725
  %1736 = fadd fast float %1733, %1726
  %1737 = fsub fast float %1712, %1727
  %1738 = fmul fast float %1737, %201
  %1739 = fadd fast float %1738, %1727
  %1740 = fadd fast float %1702, 0xBFB99999A0000000
  %1741 = call float @dx.op.unary.f32(i32 7, float %1740)  ; Saturate(value)
  %1742 = fmul fast float %1741, 0x3FF1C71C80000000
  %1743 = call float @dx.op.binary.f32(i32 36, float %1702, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1744 = fsub fast float 1.000000e+00, %1742
  %1745 = call float @dx.op.unary.f32(i32 7, float %1744)  ; Saturate(value)
  %1746 = fmul fast float %1734, %1745
  %1747 = fmul fast float %1735, %1745
  %1748 = fmul fast float %1736, %1745
  %1749 = call float @dx.op.unary.f32(i32 7, float %1746)  ; Saturate(value)
  %1750 = call float @dx.op.unary.f32(i32 7, float %1747)  ; Saturate(value)
  %1751 = call float @dx.op.unary.f32(i32 7, float %1748)  ; Saturate(value)
  %1752 = fmul fast float %1734, %1742
  %1753 = fmul fast float %1735, %1742
  %1754 = fmul fast float %1736, %1742
  %1755 = fadd fast float %1752, %1743
  %1756 = fadd fast float %1753, %1743
  %1757 = fadd fast float %1754, %1743
  %1758 = call float @dx.op.unary.f32(i32 7, float %1755)  ; Saturate(value)
  %1759 = call float @dx.op.unary.f32(i32 7, float %1756)  ; Saturate(value)
  %1760 = call float @dx.op.unary.f32(i32 7, float %1757)  ; Saturate(value)
  %1761 = call float @dx.op.unary.f32(i32 7, float %1700)  ; Saturate(value)
  %1762 = call float @dx.op.binary.f32(i32 36, float %1688, float 1.270000e+02)  ; FMin(a,b)
  %1763 = call float @dx.op.binary.f32(i32 36, float %1689, float 1.270000e+02)  ; FMin(a,b)
  %1764 = call float @dx.op.binary.f32(i32 36, float %1690, float 1.270000e+02)  ; FMin(a,b)
  %1765 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1766 = extractvalue %dx.types.CBufRet.i32 %1765, 3
  %1767 = and i32 %1766, 8
  %1768 = icmp ne i32 %1767, 0
  %1769 = call float @dx.op.binary.f32(i32 35, float %1749, float %1734)  ; FMax(a,b)
  %1770 = call float @dx.op.binary.f32(i32 35, float %1750, float %1734)  ; FMax(a,b)
  %1771 = call float @dx.op.binary.f32(i32 35, float %1751, float %1734)  ; FMax(a,b)
  %1772 = call float @dx.op.dot3.f32(i32 55, float %1749, float %1750, float %1751, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1773 = select i1 %261, float %1734, float %1749
  %1774 = select i1 %261, float %1772, float %1750
  %1775 = select i1 %261, float 1.000000e+00, float %1751
  %1776 = select i1 %1768, float %1769, float %1773
  %1777 = select i1 %1768, float %1770, float %1774
  %1778 = select i1 %1768, float %1771, float %1775
  %1779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1780 = extractvalue %dx.types.CBufRet.f32 %1779, 0
  %1781 = extractvalue %dx.types.CBufRet.f32 %1779, 1
  %1782 = extractvalue %dx.types.CBufRet.f32 %1779, 2
  %1783 = fadd fast float %1780, %138
  %1784 = fadd fast float %1781, %139
  %1785 = fadd fast float %1782, %140
  %1786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1786, 0
  %1788 = extractvalue %dx.types.CBufRet.f32 %1786, 1
  %1789 = fsub fast float %1783, %1787
  %1790 = fsub fast float %1784, %1788
  %1791 = fmul fast float %1789, %1789
  %1792 = fmul fast float %1790, %1790
  %1793 = fadd fast float %1791, %1792
  %1794 = call float @dx.op.unary.f32(i32 24, float %1793)  ; Sqrt(value)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1786, 2
  %1796 = fcmp fast olt float %1794, %1795
  br i1 %1796, label %1797, label %1864

; <label>:1797                                    ; preds = %1684
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 0
  %1800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1801 = extractvalue %dx.types.CBufRet.f32 %1800, 0
  %1802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1803 = extractvalue %dx.types.CBufRet.f32 %1802, 0
  %1804 = extractvalue %dx.types.CBufRet.f32 %1798, 1
  %1805 = extractvalue %dx.types.CBufRet.f32 %1800, 1
  %1806 = extractvalue %dx.types.CBufRet.f32 %1802, 1
  %1807 = extractvalue %dx.types.CBufRet.f32 %1798, 3
  %1808 = extractvalue %dx.types.CBufRet.f32 %1800, 3
  %1809 = extractvalue %dx.types.CBufRet.f32 %1802, 3
  %1810 = fadd fast float %1807, %1783
  %1811 = fadd fast float %1808, %1784
  %1812 = fadd fast float %1809, %1785
  %1813 = fmul fast float %1810, %1799
  %1814 = call float @dx.op.tertiary.f32(i32 46, float %1811, float %1801, float %1813)  ; FMad(a,b,c)
  %1815 = call float @dx.op.tertiary.f32(i32 46, float %1812, float %1803, float %1814)  ; FMad(a,b,c)
  %1816 = fmul fast float %1810, %1804
  %1817 = call float @dx.op.tertiary.f32(i32 46, float %1811, float %1805, float %1816)  ; FMad(a,b,c)
  %1818 = call float @dx.op.tertiary.f32(i32 46, float %1812, float %1806, float %1817)  ; FMad(a,b,c)
  %1819 = fsub fast float %1815, %1807
  %1820 = fsub fast float %1818, %1808
  %1821 = fsub fast float %1819, %1787
  %1822 = fadd fast float %1821, %1795
  %1823 = fsub fast float %1820, %1788
  %1824 = fadd fast float %1823, %1795
  %1825 = extractvalue %dx.types.CBufRet.f32 %1786, 3
  %1826 = fmul fast float %1822, %1825
  %1827 = fmul fast float %1824, %1825
  %1828 = call float @dx.op.unary.f32(i32 7, float %1826)  ; Saturate(value)
  %1829 = call float @dx.op.unary.f32(i32 7, float %1827)  ; Saturate(value)
  %1830 = fsub fast float 1.000000e+00, %1828
  %1831 = fsub fast float 1.000000e+00, %1829
  %1832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %58, float %1830, float %1831, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1833 = extractvalue %dx.types.ResRet.f32 %1832, 0
  %1834 = fcmp fast ugt float %1833, 0.000000e+00
  br i1 %1834, label %1835, label %2138

; <label>:1835                                    ; preds = %1797
  %1836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1837 = extractvalue %dx.types.CBufRet.f32 %1836, 2
  %1838 = fmul fast float %1837, %1833
  %1839 = extractvalue %dx.types.CBufRet.f32 %1836, 3
  %1840 = fadd fast float %1839, %1838
  %1841 = extractvalue %dx.types.CBufRet.f32 %1802, 2
  %1842 = fadd fast float %1840, %1809
  %1843 = fmul fast float %1815, %1803
  %1844 = call float @dx.op.tertiary.f32(i32 46, float %1818, float %1806, float %1843)  ; FMad(a,b,c)
  %1845 = call float @dx.op.tertiary.f32(i32 46, float %1842, float %1841, float %1844)  ; FMad(a,b,c)
  %1846 = fsub fast float %1845, %1809
  %1847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.f32 %1847, 2
  %1849 = fsub fast float %1846, %1848
  %1850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %58, float %1830, float %1831, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1851 = extractvalue %dx.types.ResRet.f32 %1850, 0
  %1852 = extractvalue %dx.types.ResRet.f32 %1850, 1
  %1853 = extractvalue %dx.types.ResRet.f32 %1850, 2
  %1854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %58, float %1830, float %1831, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1855 = extractvalue %dx.types.ResRet.f32 %1854, 0
  %1856 = extractvalue %dx.types.ResRet.f32 %1854, 1
  %1857 = extractvalue %dx.types.ResRet.f32 %1854, 2
  %1858 = fadd fast float %1855, %1851
  %1859 = fmul fast float %1858, 0x3F847AE140000000
  %1860 = fadd fast float %1856, %1852
  %1861 = fmul fast float %1860, 0x3F847AE140000000
  %1862 = fadd fast float %1857, %1853
  %1863 = fmul fast float %1862, 0x3F847AE140000000
  br label %2138

; <label>:1864                                    ; preds = %1684
  %1865 = and i32 %237, 1
  %1866 = icmp eq i32 %1865, 0
  br i1 %1866, label %2138, label %1867

; <label>:1867                                    ; preds = %1864
  %1868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1869 = extractvalue %dx.types.CBufRet.f32 %1868, 0
  %1870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1871 = extractvalue %dx.types.CBufRet.f32 %1870, 0
  %1872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1873 = extractvalue %dx.types.CBufRet.f32 %1872, 0
  %1874 = extractvalue %dx.types.CBufRet.f32 %1868, 1
  %1875 = extractvalue %dx.types.CBufRet.f32 %1870, 1
  %1876 = extractvalue %dx.types.CBufRet.f32 %1872, 1
  %1877 = extractvalue %dx.types.CBufRet.f32 %1868, 3
  %1878 = extractvalue %dx.types.CBufRet.f32 %1870, 3
  %1879 = extractvalue %dx.types.CBufRet.f32 %1872, 3
  %1880 = fadd fast float %1877, %1783
  %1881 = fadd fast float %1878, %1784
  %1882 = fadd fast float %1879, %1785
  %1883 = fmul fast float %1880, %1869
  %1884 = call float @dx.op.tertiary.f32(i32 46, float %1881, float %1871, float %1883)  ; FMad(a,b,c)
  %1885 = call float @dx.op.tertiary.f32(i32 46, float %1882, float %1873, float %1884)  ; FMad(a,b,c)
  %1886 = fmul fast float %1880, %1874
  %1887 = call float @dx.op.tertiary.f32(i32 46, float %1881, float %1875, float %1886)  ; FMad(a,b,c)
  %1888 = call float @dx.op.tertiary.f32(i32 46, float %1882, float %1876, float %1887)  ; FMad(a,b,c)
  %1889 = fsub fast float %1885, %1877
  %1890 = fsub fast float %1888, %1878
  %1891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1892 = extractvalue %dx.types.CBufRet.f32 %1891, 0
  %1893 = extractvalue %dx.types.CBufRet.f32 %1891, 1
  %1894 = extractvalue %dx.types.CBufRet.f32 %1891, 2
  %1895 = extractvalue %dx.types.CBufRet.f32 %1891, 3
  %1896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1897 = extractvalue %dx.types.CBufRet.f32 %1896, 3
  %1898 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1899 = extractvalue %dx.types.CBufRet.i32 %1898, 0
  %1900 = extractvalue %dx.types.CBufRet.i32 %1898, 1
  %1901 = udiv i32 %1900, %1899
  %1902 = fsub fast float %1889, %1892
  %1903 = fsub fast float %1890, %1893
  %1904 = call float @dx.op.binary.f32(i32 35, float %1902, float 0.000000e+00)  ; FMax(a,b)
  %1905 = call float @dx.op.binary.f32(i32 35, float %1903, float 0.000000e+00)  ; FMax(a,b)
  %1906 = call float @dx.op.binary.f32(i32 36, float %1904, float %1894)  ; FMin(a,b)
  %1907 = call float @dx.op.binary.f32(i32 36, float %1905, float %1895)  ; FMin(a,b)
  %1908 = add i32 %1899, -1
  %1909 = add i32 %1901, -1
  %1910 = fmul fast float %1906, %1897
  %1911 = fmul fast float %1907, %1897
  %1912 = fptoui float %1910 to i32
  %1913 = fptoui float %1911 to i32
  %1914 = call i32 @dx.op.binary.i32(i32 40, i32 %1912, i32 %1908)  ; UMin(a,b)
  %1915 = call i32 @dx.op.binary.i32(i32 40, i32 %1913, i32 %1909)  ; UMin(a,b)
  %1916 = mul i32 %1915, %1899
  %1917 = add i32 %1916, %1914
  %1918 = shl i32 %1917, 2
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = icmp eq i32 %1920, -1
  br i1 %1921, label %2138, label %1922

; <label>:1922                                    ; preds = %1867
  %1923 = mul i32 %1920, 148
  %1924 = add i32 %1923, 4
  %1925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.f32 %1925, 0
  %1927 = add i32 %1923, 8
  %1928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1929 = extractvalue %dx.types.ResRet.f32 %1928, 0
  %1930 = add i32 %1923, 36
  %1931 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.f32 %1931, 0
  %1933 = add i32 %1923, 60
  %1934 = add i32 %1923, 92
  %1935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.i32 %1935, 0
  %1937 = add i32 %1923, 116
  %1938 = fsub fast float %1889, %1926
  %1939 = fsub fast float %1890, %1929
  %1940 = fmul fast float %1897, %1938
  %1941 = fmul fast float %1897, %1939
  %1942 = call float @dx.op.unary.f32(i32 7, float %1940)  ; Saturate(value)
  %1943 = call float @dx.op.unary.f32(i32 7, float %1941)  ; Saturate(value)
  %1944 = fsub fast float 1.000000e+00, %1943
  %1945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1946 = extractvalue %dx.types.CBufRet.f32 %1945, 2
  %1947 = call float @dx.op.unary.f32(i32 83, float %1942)  ; DerivCoarseX(value)
  %1948 = call float @dx.op.unary.f32(i32 83, float %1944)  ; DerivCoarseX(value)
  %1949 = call float @dx.op.unary.f32(i32 84, float %1942)  ; DerivCoarseY(value)
  %1950 = call float @dx.op.unary.f32(i32 84, float %1944)  ; DerivCoarseY(value)
  %1951 = fmul fast float %1947, %1946
  %1952 = fmul fast float %1948, %1946
  %1953 = fmul fast float %1949, %1946
  %1954 = fmul fast float %1950, %1946
  %1955 = call float @dx.op.dot2.f32(i32 54, float %1953, float %1954, float %1953, float %1954)  ; Dot2(ax,ay,bx,by)
  %1956 = call float @dx.op.dot2.f32(i32 54, float %1951, float %1952, float %1951, float %1952)  ; Dot2(ax,ay,bx,by)
  %1957 = call float @dx.op.binary.f32(i32 35, float %1956, float %1955)  ; FMax(a,b)
  %1958 = call float @dx.op.unary.f32(i32 23, float %1957)  ; Log(value)
  %1959 = fmul fast float %1958, 5.000000e-01
  %1960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1961 = extractvalue %dx.types.CBufRet.f32 %1960, 1
  %1962 = fadd fast float %1961, %1959
  %1963 = call float @dx.op.binary.f32(i32 35, float %1962, float 0.000000e+00)  ; FMax(a,b)
  %1964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1965 = extractvalue %dx.types.CBufRet.f32 %1964, 3
  %1966 = fadd fast float %1965, %1963
  %1967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1968 = extractvalue %dx.types.CBufRet.f32 %1967, 3
  %1969 = fadd fast float %1966, %1968
  %1970 = add i32 %1936, 0
  %1971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1970, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1972 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1971, i32 0)  ; GetDimensions(handle,mipLevel)
  %1973 = extractvalue %dx.types.Dimensions %1972, 0
  %1974 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1973)  ; FirstbitLo(value)
  %1975 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1976 = extractvalue %dx.types.CBufRet.i32 %1975, 1
  %1977 = sub nsw i32 %1976, %1974
  %1978 = sitofp i32 %1977 to float
  %1979 = fsub fast float %1969, %1978
  %1980 = call float @dx.op.binary.f32(i32 35, float %1979, float 0.000000e+00)  ; FMax(a,b)
  %1981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1971, %dx.types.Handle %56, float %1942, float %1944, float %1932, float undef, i32 0, i32 0, i32 undef, float %1980)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1982 = extractvalue %dx.types.ResRet.f32 %1981, 0
  %1983 = fcmp ule float %1982, 0x3FE0101020000000
  %1984 = extractvalue %dx.types.CBufRet.i32 %1975, 0
  %1985 = and i32 %1984, 128
  %1986 = icmp ne i32 %1985, 0
  %1987 = and i1 %1983, %1986
  br i1 %1987, label %2138, label %1988

; <label>:1988                                    ; preds = %1922
  %1989 = add i32 %1923, 20
  %1990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.f32 %1990, 0
  %1992 = add i32 %1923, 24
  %1993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.f32 %1993, 0
  %1995 = add i32 %1923, 40
  %1996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1995, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.f32 %1996, 0
  %1998 = add i32 %1923, 96
  %1999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.i32 %1999, 0
  %2001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2002 = extractvalue %dx.types.CBufRet.f32 %2001, 2
  %2003 = fmul fast float %2002, %1942
  %2004 = fmul fast float %2002, %1944
  %2005 = extractvalue %dx.types.CBufRet.f32 %2001, 3
  %2006 = fadd fast float %2003, %2005
  %2007 = fadd fast float %2004, %2005
  %2008 = add i32 %2000, 0
  %2009 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2008, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2010 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2009, i32 0)  ; GetDimensions(handle,mipLevel)
  %2011 = extractvalue %dx.types.Dimensions %2010, 0
  %2012 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2011)  ; FirstbitLo(value)
  %2013 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2014 = extractvalue %dx.types.CBufRet.i32 %2013, 1
  %2015 = sub nsw i32 %2014, %2012
  %2016 = sitofp i32 %2015 to float
  %2017 = fsub fast float %1966, %2016
  %2018 = call float @dx.op.binary.f32(i32 35, float %2017, float 0.000000e+00)  ; FMax(a,b)
  %2019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2009, %dx.types.Handle %56, float %2006, float %2007, float %1997, float undef, i32 0, i32 0, i32 undef, float %2018)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2020 = extractvalue %dx.types.ResRet.f32 %2019, 0
  %2021 = fmul fast float %2020, %1991
  %2022 = fadd fast float %2021, %1994
  %2023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2024 = extractvalue %dx.types.CBufRet.f32 %2023, 0
  %2025 = extractvalue %dx.types.CBufRet.f32 %2023, 1
  %2026 = extractvalue %dx.types.CBufRet.f32 %2023, 2
  %2027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2028 = extractvalue %dx.types.CBufRet.f32 %2027, 3
  %2029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2030 = extractvalue %dx.types.CBufRet.f32 %2029, 3
  %2031 = extractvalue %dx.types.CBufRet.f32 %2023, 3
  %2032 = fadd fast float %2028, %1889
  %2033 = fadd fast float %2030, %1890
  %2034 = fadd fast float %2022, %2031
  %2035 = fmul fast float %2032, %2024
  %2036 = call float @dx.op.tertiary.f32(i32 46, float %2033, float %2025, float %2035)  ; FMad(a,b,c)
  %2037 = call float @dx.op.tertiary.f32(i32 46, float %2034, float %2026, float %2036)  ; FMad(a,b,c)
  %2038 = fsub fast float %2037, %2031
  %2039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2040 = extractvalue %dx.types.CBufRet.f32 %2039, 2
  %2041 = fsub fast float %2038, %2040
  %2042 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2043 = extractvalue %dx.types.CBufRet.i32 %2042, 0
  %2044 = call i32 @dx.op.binary.i32(i32 40, i32 %1920, i32 %2043)  ; UMin(a,b)
  %2045 = mul i32 %2044, 36
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = add i32 %2045, 4
  %2049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2050 = extractvalue %dx.types.CBufRet.f32 %2049, 0
  %2051 = fmul fast float %2050, %1942
  %2052 = fmul fast float %2050, %1944
  %2053 = extractvalue %dx.types.CBufRet.f32 %2049, 1
  %2054 = fadd fast float %2051, %2053
  %2055 = fadd fast float %2052, %2053
  %2056 = icmp eq i32 %2047, 0
  br i1 %2056, label %2125, label %2057

; <label>:2057                                    ; preds = %1988
  br label %2058

; <label>:2058                                    ; preds = %2115, %2057
  %2059 = phi float [ %2116, %2115 ], [ 0.000000e+00, %2057 ]
  %2060 = phi float [ %2117, %2115 ], [ 0.000000e+00, %2057 ]
  %2061 = phi float [ %2118, %2115 ], [ 0.000000e+00, %2057 ]
  %2062 = phi float [ %2119, %2115 ], [ 0.000000e+00, %2057 ]
  %2063 = phi float [ %2120, %2115 ], [ 0.000000e+00, %2057 ]
  %2064 = phi float [ %2121, %2115 ], [ 0.000000e+00, %2057 ]
  %2065 = phi i32 [ %2122, %2115 ], [ 0, %2057 ]
  %2066 = shl i32 %2065, 2
  %2067 = add i32 %1933, %2066
  %2068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2067, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.f32 %2068, 0
  %2070 = add i32 %1937, %2066
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2070, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = add i32 %2072, 0
  %2074 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2073, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2075 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2074, i32 0)  ; GetDimensions(handle,mipLevel)
  %2076 = extractvalue %dx.types.Dimensions %2075, 0
  %2077 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2076)  ; FirstbitLo(value)
  %2078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2079 = extractvalue %dx.types.CBufRet.i32 %2078, 1
  %2080 = sub nsw i32 %2079, %2077
  %2081 = sitofp i32 %2080 to float
  %2082 = fsub fast float %1966, %2081
  %2083 = call float @dx.op.binary.f32(i32 35, float %2082, float 0.000000e+00)  ; FMax(a,b)
  %2084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2074, %dx.types.Handle %56, float %2054, float %2055, float %2069, float undef, i32 0, i32 0, i32 undef, float %2083)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2085 = extractvalue %dx.types.ResRet.f32 %2084, 0
  %2086 = fcmp fast ogt float %2085, 0.000000e+00
  br i1 %2086, label %2087, label %2115

; <label>:2087                                    ; preds = %2058
  %2088 = add i32 %2048, %2066
  %2089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.i32 %2089, 0
  %2091 = and i32 %2090, 32767
  %2092 = mul nuw nsw i32 %2091, 928
  %2093 = add nuw nsw i32 %2092, 48
  %2094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2093, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.f32 %2094, 0
  %2096 = extractvalue %dx.types.ResRet.f32 %2094, 1
  %2097 = extractvalue %dx.types.ResRet.f32 %2094, 2
  %2098 = add nuw nsw i32 %2092, 60
  %2099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.f32 %2099, 0
  %2101 = extractvalue %dx.types.ResRet.f32 %2099, 1
  %2102 = extractvalue %dx.types.ResRet.f32 %2099, 2
  %2103 = fmul fast float %2095, %2085
  %2104 = fmul fast float %2096, %2085
  %2105 = fmul fast float %2097, %2085
  %2106 = fadd fast float %2103, %2059
  %2107 = fadd fast float %2104, %2060
  %2108 = fadd fast float %2105, %2061
  %2109 = fmul fast float %2100, %2085
  %2110 = fmul fast float %2101, %2085
  %2111 = fmul fast float %2102, %2085
  %2112 = fadd fast float %2109, %2062
  %2113 = fadd fast float %2110, %2063
  %2114 = fadd fast float %2111, %2064
  br label %2115

; <label>:2115                                    ; preds = %2087, %2058
  %2116 = phi float [ %2106, %2087 ], [ %2059, %2058 ]
  %2117 = phi float [ %2107, %2087 ], [ %2060, %2058 ]
  %2118 = phi float [ %2108, %2087 ], [ %2061, %2058 ]
  %2119 = phi float [ %2112, %2087 ], [ %2062, %2058 ]
  %2120 = phi float [ %2113, %2087 ], [ %2063, %2058 ]
  %2121 = phi float [ %2114, %2087 ], [ %2064, %2058 ]
  %2122 = add nuw i32 %2065, 1
  %2123 = icmp eq i32 %2122, %2047
  br i1 %2123, label %2124, label %2058

; <label>:2124                                    ; preds = %2115
  br label %2125

; <label>:2125                                    ; preds = %2124, %1988
  %2126 = phi float [ 0.000000e+00, %1988 ], [ %2116, %2124 ]
  %2127 = phi float [ 0.000000e+00, %1988 ], [ %2117, %2124 ]
  %2128 = phi float [ 0.000000e+00, %1988 ], [ %2118, %2124 ]
  %2129 = phi float [ 0.000000e+00, %1988 ], [ %2119, %2124 ]
  %2130 = phi float [ 0.000000e+00, %1988 ], [ %2120, %2124 ]
  %2131 = phi float [ 0.000000e+00, %1988 ], [ %2121, %2124 ]
  %2132 = fadd fast float %2129, %2126
  %2133 = fmul fast float %2132, 0x3F847AE140000000
  %2134 = fadd fast float %2130, %2127
  %2135 = fmul fast float %2134, 0x3F847AE140000000
  %2136 = fadd fast float %2131, %2128
  %2137 = fmul fast float %2136, 0x3F847AE140000000
  br label %2138

; <label>:2138                                    ; preds = %2125, %1922, %1867, %1864, %1835, %1797
  %2139 = phi float [ %1849, %1835 ], [ -1.310720e+05, %1797 ], [ %2041, %2125 ], [ -1.310720e+05, %1867 ], [ -1.310720e+05, %1922 ], [ -1.310720e+05, %1864 ]
  %2140 = phi float [ %1859, %1835 ], [ 0.000000e+00, %1797 ], [ %2133, %2125 ], [ 0.000000e+00, %1867 ], [ 0.000000e+00, %1922 ], [ 0.000000e+00, %1864 ]
  %2141 = phi float [ %1861, %1835 ], [ 0.000000e+00, %1797 ], [ %2135, %2125 ], [ 0.000000e+00, %1867 ], [ 0.000000e+00, %1922 ], [ 0.000000e+00, %1864 ]
  %2142 = phi float [ %1863, %1835 ], [ 0.000000e+00, %1797 ], [ %2137, %2125 ], [ 0.000000e+00, %1867 ], [ 0.000000e+00, %1922 ], [ 0.000000e+00, %1864 ]
  %2143 = phi i1 [ true, %1835 ], [ false, %1797 ], [ true, %2125 ], [ false, %1867 ], [ false, %1922 ], [ false, %1864 ]
  %2144 = and i32 %237, 3
  %2145 = icmp eq i32 %2144, 1
  %2146 = select i1 %2145, float 1.000000e+00, float 0.000000e+00
  %2147 = fsub fast float %2139, %140
  %2148 = call float @dx.op.unary.f32(i32 7, float %2147)  ; Saturate(value)
  %2149 = select i1 %2143, float %2148, float 1.000000e+00
  %2150 = fmul fast float %2149, %2146
  %2151 = icmp eq i32 %2144, 3
  %2152 = select i1 %2151, float 1.000000e+00, float %2150
  %2153 = call float @dx.op.binary.f32(i32 35, float %1685, float %2152)  ; FMax(a,b)
  %2154 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  %2155 = fcmp fast une float %2154, 0.000000e+00
  %2156 = fsub fast float -0.000000e+00, %187
  %2157 = fsub fast float -0.000000e+00, %188
  %2158 = fsub fast float -0.000000e+00, %189
  br i1 %2155, label %2159, label %2321

; <label>:2159                                    ; preds = %2138
  %2160 = call float @dx.op.dot3.f32(i32 55, float %2156, float %2157, float %2158, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %2161 = fmul fast float %2154, 2.500000e+00
  %2162 = call float @dx.op.unary.f32(i32 7, float %2161)  ; Saturate(value)
  %2163 = fmul fast float %2154, 0x4013FFFFE0000000
  %2164 = fadd fast float %2163, 0xBFFFFFFFE0000000
  %2165 = call float @dx.op.unary.f32(i32 7, float %2164)  ; Saturate(value)
  %2166 = fmul fast float %2154, 0x4004000020000000
  %2167 = fadd fast float %2166, 0xBFF8000040000000
  %2168 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2169 = call float @dx.op.unary.f32(i32 7, float %2162)  ; Saturate(value)
  %2170 = fmul fast float %1740, 1.000000e+01
  %2171 = call float @dx.op.unary.f32(i32 7, float %2170)  ; Saturate(value)
  %2172 = fmul fast float %2171, 2.000000e+00
  %2173 = fsub fast float 3.000000e+00, %2172
  %2174 = fmul fast float %2171, %2171
  %2175 = fmul fast float %2174, %2173
  %2176 = fsub fast float 1.000000e+00, %2175
  %2177 = fsub fast float 0x3FE3333340000000, %1761
  %2178 = fmul fast float %2177, 0x400AAAAAA0000000
  %2179 = call float @dx.op.unary.f32(i32 7, float %2178)  ; Saturate(value)
  %2180 = fmul fast float %2176, %2179
  %2181 = fmul fast float %1776, 0x3FEA2B8620000000
  %2182 = fmul fast float %1777, 0x3FEA2B8620000000
  %2183 = fmul fast float %1778, 0x3FEA2B8620000000
  %2184 = fadd fast float %2181, 0x3FC81DFBA0000000
  %2185 = fmul fast float %2184, %1776
  %2186 = fadd fast float %2185, 0x3F910E6020000000
  %2187 = fadd fast float %2182, 0x3FC81DFBA0000000
  %2188 = fmul fast float %2187, %1777
  %2189 = fadd fast float %2188, 0x3F910E6020000000
  %2190 = fadd fast float %2183, 0x3FC81DFBA0000000
  %2191 = fmul fast float %2190, %1778
  %2192 = fadd fast float %2191, 0x3F910E6020000000
  %2193 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  %2194 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2195 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  %2196 = fsub fast float %2193, %1776
  %2197 = fsub fast float %2194, %1777
  %2198 = fsub fast float %2195, %1778
  %2199 = fmul fast float %2196, %2169
  %2200 = fmul fast float %2199, %2180
  %2201 = fmul fast float %2197, %2169
  %2202 = fmul fast float %2201, %2180
  %2203 = fmul fast float %2198, %2169
  %2204 = fmul fast float %2203, %2180
  %2205 = fadd fast float %2200, %1776
  %2206 = fadd fast float %2202, %1777
  %2207 = fadd fast float %2204, %1778
  %2208 = fmul fast float %1699, %1699
  %2209 = fmul fast float %2208, %2208
  %2210 = fadd fast float %2165, 1.000000e+00
  %2211 = fsub fast float %2210, %2180
  %2212 = call float @dx.op.unary.f32(i32 7, float %2211)  ; Saturate(value)
  %2213 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2214 = call float @dx.op.unary.f32(i32 7, float %2213)  ; Saturate(value)
  %2215 = fsub fast float 1.000000e+00, %2209
  %2216 = call float @dx.op.binary.f32(i32 36, float %2212, float %2215)  ; FMin(a,b)
  %2217 = call float @dx.op.unary.f32(i32 7, float %2168)  ; Saturate(value)
  %2218 = call float @dx.op.binary.f32(i32 35, float %2216, float %2217)  ; FMax(a,b)
  %2219 = fadd fast float %2214, 0xBFE4CCCCC0000000
  %2220 = fmul fast float %2219, 0x4006DB6DA0000000
  %2221 = call float @dx.op.unary.f32(i32 7, float %2220)  ; Saturate(value)
  %2222 = fmul fast float %2221, 2.000000e+00
  %2223 = fsub fast float 3.000000e+00, %2222
  %2224 = bitcast float %1758 to i32
  %2225 = ashr i32 %2224, 1
  %2226 = add nsw i32 %2225, 532487669
  %2227 = bitcast i32 %2226 to float
  %2228 = fsub fast float 1.000000e+00, %2227
  %2229 = bitcast float %2228 to i32
  %2230 = sub nsw i32 2129859010, %2229
  %2231 = bitcast i32 %2230 to float
  %2232 = fmul fast float %2231, 2.000000e+00
  %2233 = bitcast float %1759 to i32
  %2234 = ashr i32 %2233, 1
  %2235 = add nsw i32 %2234, 532487669
  %2236 = bitcast i32 %2235 to float
  %2237 = fsub fast float 1.000000e+00, %2236
  %2238 = bitcast float %2237 to i32
  %2239 = sub nsw i32 2129859010, %2238
  %2240 = bitcast i32 %2239 to float
  %2241 = fmul fast float %2240, 2.000000e+00
  %2242 = bitcast float %1760 to i32
  %2243 = ashr i32 %2242, 1
  %2244 = add nsw i32 %2243, 532487669
  %2245 = bitcast i32 %2244 to float
  %2246 = fsub fast float 1.000000e+00, %2245
  %2247 = bitcast float %2246 to i32
  %2248 = sub nsw i32 2129859010, %2247
  %2249 = bitcast i32 %2248 to float
  %2250 = fmul fast float %2249, 2.000000e+00
  %2251 = fsub fast float 0x4002A9FBE0000000, %2232
  %2252 = fadd fast float %2232, 0x3FD54FDF00000000
  %2253 = bitcast float %2252 to i32
  %2254 = sub nsw i32 2129859010, %2253
  %2255 = bitcast i32 %2254 to float
  %2256 = fmul fast float %2255, %2251
  %2257 = fmul fast float %2256, %2256
  %2258 = fsub fast float 0x4002A9FBE0000000, %2241
  %2259 = fadd fast float %2241, 0x3FD54FDF00000000
  %2260 = bitcast float %2259 to i32
  %2261 = sub nsw i32 2129859010, %2260
  %2262 = bitcast i32 %2261 to float
  %2263 = fmul fast float %2262, %2258
  %2264 = fmul fast float %2263, %2263
  %2265 = fsub fast float 0x4002A9FBE0000000, %2250
  %2266 = fadd fast float %2250, 0x3FD54FDF00000000
  %2267 = bitcast float %2266 to i32
  %2268 = sub nsw i32 2129859010, %2267
  %2269 = bitcast i32 %2268 to float
  %2270 = fmul fast float %2269, %2265
  %2271 = fmul fast float %2270, %2270
  %2272 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2257)  ; FMax(a,b)
  %2273 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2264)  ; FMax(a,b)
  %2274 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2271)  ; FMax(a,b)
  %2275 = fsub fast float 1.000000e+00, %2160
  %2276 = fadd fast float %2275, %2176
  %2277 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  %2278 = fsub fast float 1.000000e+00, %2152
  %2279 = fmul fast float %2218, %2278
  %2280 = fmul fast float %2221, %2221
  %2281 = fmul fast float %2280, %2279
  %2282 = fmul fast float %2281, %2223
  %2283 = fmul fast float %2278, 0xBFE99999A0000000
  %2284 = fmul fast float %2283, %2169
  %2285 = fmul fast float %2284, %2180
  %2286 = fadd fast float %2285, 1.000000e+00
  %2287 = fadd fast float %1761, -1.000000e+00
  %2288 = fmul fast float %2286, %2287
  %2289 = fadd fast float %2288, 1.000000e+00
  %2290 = fsub fast float %2272, %1758
  %2291 = fsub fast float %2273, %1759
  %2292 = fsub fast float %2274, %1760
  %2293 = fmul fast float %2282, %2290
  %2294 = fmul fast float %2282, %2291
  %2295 = fmul fast float %2282, %2292
  %2296 = fadd fast float %2293, %1758
  %2297 = fadd fast float %2294, %1759
  %2298 = fadd fast float %2295, %1760
  %2299 = fsub fast float %70, %1715
  %2300 = fsub fast float %71, %1716
  %2301 = fsub fast float %72, %1717
  %2302 = fmul fast float %2282, %2299
  %2303 = fmul fast float %2282, %2300
  %2304 = fmul fast float %2282, %2301
  %2305 = fadd fast float %2302, %1715
  %2306 = fadd fast float %2303, %1716
  %2307 = fadd fast float %2304, %1717
  %2308 = fmul fast float %2282, %2277
  %2309 = call float @dx.op.unary.f32(i32 7, float %2289)  ; Saturate(value)
  %2310 = fsub fast float 1.000000e+00, %2309
  %2311 = fmul fast float %2308, %2310
  %2312 = fadd fast float %2311, %2309
  %2313 = fsub fast float 1.000000e+00, %1699
  %2314 = fmul fast float %2282, %2313
  %2315 = fadd fast float %2314, %1699
  %2316 = call float @dx.op.dot3.f32(i32 55, float %2305, float %2306, float %2307, float %2305, float %2306, float %2307)  ; Dot3(ax,ay,az,bx,by,bz)
  %2317 = call float @dx.op.unary.f32(i32 25, float %2316)  ; Rsqrt(value)
  %2318 = fmul fast float %2305, %2317
  %2319 = fmul fast float %2306, %2317
  %2320 = fmul fast float %2307, %2317
  br label %2321

; <label>:2321                                    ; preds = %2159, %2138
  %2322 = phi float [ %2296, %2159 ], [ %1758, %2138 ]
  %2323 = phi float [ %2297, %2159 ], [ %1759, %2138 ]
  %2324 = phi float [ %2298, %2159 ], [ %1760, %2138 ]
  %2325 = phi float [ %2205, %2159 ], [ %1776, %2138 ]
  %2326 = phi float [ %2206, %2159 ], [ %1777, %2138 ]
  %2327 = phi float [ %2207, %2159 ], [ %1778, %2138 ]
  %2328 = phi float [ %2318, %2159 ], [ %1715, %2138 ]
  %2329 = phi float [ %2319, %2159 ], [ %1716, %2138 ]
  %2330 = phi float [ %2320, %2159 ], [ %1717, %2138 ]
  %2331 = phi float [ %2312, %2159 ], [ %1761, %2138 ]
  %2332 = phi float [ %2315, %2159 ], [ %1699, %2138 ]
  %2333 = fsub fast float -0.000000e+00, %140
  %2334 = select i1 %261, float 0.000000e+00, float %2324
  %2335 = call float @dx.op.dot3.f32(i32 55, float %2328, float %2329, float %2330, float %2156, float %2157, float %2158)  ; Dot3(ax,ay,az,bx,by,bz)
  %2336 = call float @dx.op.unary.f32(i32 7, float %2335)  ; Saturate(value)
  %2337 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %2328, float %2329, float %2330)  ; Dot3(ax,ay,az,bx,by,bz)
  %2338 = fmul fast float %2337, 2.000000e+00
  %2339 = fmul fast float %2338, %2328
  %2340 = fmul fast float %2338, %2329
  %2341 = fmul fast float %2338, %2330
  %2342 = fsub fast float %187, %2339
  %2343 = fsub fast float %188, %2340
  %2344 = fsub fast float %189, %2341
  %2345 = call float @dx.op.binary.f32(i32 36, float %2332, float 1.000000e+00)  ; FMin(a,b)
  %2346 = fsub fast float 1.000000e+00, %2332
  %2347 = bitcast float %2346 to i32
  %2348 = sub nsw i32 2129859010, %2347
  %2349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2350 = extractvalue %dx.types.CBufRet.f32 %2349, 0
  %2351 = extractvalue %dx.types.CBufRet.f32 %2349, 1
  %2352 = fadd fast float %2350, %138
  %2353 = fadd fast float %2351, %139
  %2354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2355 = extractvalue %dx.types.CBufRet.i32 %2354, 0
  %2356 = icmp eq i32 %2355, 1
  br i1 %2356, label %2357, label %2392

; <label>:2357                                    ; preds = %2321
  %2358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2359 = extractvalue %dx.types.CBufRet.f32 %2358, 0
  %2360 = extractvalue %dx.types.CBufRet.f32 %2358, 1
  %2361 = fsub fast float %2352, %2359
  %2362 = fsub fast float %2353, %2360
  %2363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2364 = extractvalue %dx.types.CBufRet.f32 %2363, 0
  %2365 = extractvalue %dx.types.CBufRet.f32 %2363, 1
  %2366 = fmul fast float %2361, %2364
  %2367 = fmul fast float %2362, %2365
  %2368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %2366, float %2367, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2369 = extractvalue %dx.types.ResRet.f32 %2368, 0
  %2370 = fcmp fast ogt float %2369, 0.000000e+00
  %2371 = extractvalue %dx.types.CBufRet.i32 %2354, 3
  %2372 = icmp ne i32 %2371, 0
  %2373 = and i1 %2370, %2372
  br i1 %2373, label %2374, label %2392, !dx.controlflow.hints !99

; <label>:2374                                    ; preds = %2357
  %2375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2376 = extractvalue %dx.types.CBufRet.f32 %2375, 0
  %2377 = extractvalue %dx.types.CBufRet.f32 %2375, 1
  %2378 = fsub fast float %2352, %2376
  %2379 = fsub fast float %2353, %2377
  %2380 = fmul fast float %2378, %2378
  %2381 = fmul fast float %2379, %2379
  %2382 = fadd fast float %2380, %2381
  %2383 = uitofp i32 %2371 to float
  %2384 = fmul fast float %2383, %2383
  %2385 = fcmp fast ogt float %2382, %2384
  br i1 %2385, label %2392, label %2386

; <label>:2386                                    ; preds = %2374
  %2387 = call float @dx.op.unary.f32(i32 24, float %2382)  ; Sqrt(value)
  %2388 = fsub fast float %2383, %2387
  %2389 = fmul fast float %2388, 0x3F75555560000000
  %2390 = call float @dx.op.unary.f32(i32 7, float %2389)  ; Saturate(value)
  %2391 = call float @dx.op.binary.f32(i32 36, float %2390, float %2369)  ; FMin(a,b)
  br label %2392

; <label>:2392                                    ; preds = %2386, %2374, %2357, %2321
  %2393 = phi float [ 1.000000e+00, %2321 ], [ %2391, %2386 ], [ %2369, %2357 ], [ 0.000000e+00, %2374 ]
  %2394 = fcmp fast ogt float %2393, 0.000000e+00
  br i1 %2394, label %2395, label %2493, !dx.controlflow.hints !100

; <label>:2395                                    ; preds = %2392
  %2396 = fadd fast float %169, 5.000000e-01
  %2397 = call float @dx.op.unary.f32(i32 27, float %2396)  ; Round_ni(value)
  %2398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %58, float %167, float %168, float %2397, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2399 = extractvalue %dx.types.ResRet.f32 %2398, 0
  %2400 = extractvalue %dx.types.ResRet.f32 %2398, 1
  %2401 = extractvalue %dx.types.ResRet.f32 %2398, 2
  %2402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2403 = extractvalue %dx.types.CBufRet.f32 %2402, 3
  %2404 = fmul fast float %2403, %2399
  %2405 = fmul fast float %2403, %2400
  %2406 = fmul fast float %2403, %2401
  %2407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %58, float %167, float %168, float %2397, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2408 = extractvalue %dx.types.ResRet.f32 %2407, 0
  %2409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %58, float %167, float %168, float %2397, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2410 = extractvalue %dx.types.ResRet.f32 %2409, 0
  %2411 = extractvalue %dx.types.ResRet.f32 %2409, 1
  %2412 = fmul fast float %2410, 2.000000e+00
  %2413 = fmul fast float %2411, 2.000000e+00
  %2414 = fadd fast float %2412, -1.000000e+00
  %2415 = fadd fast float %2413, -1.000000e+00
  %2416 = fadd fast float %2414, %2415
  %2417 = fmul fast float %2416, 5.000000e-01
  %2418 = fsub fast float %2414, %2415
  %2419 = fmul fast float %2418, 5.000000e-01
  %2420 = call float @dx.op.unary.f32(i32 6, float %2417)  ; FAbs(value)
  %2421 = fsub fast float 1.000000e+00, %2420
  %2422 = call float @dx.op.unary.f32(i32 6, float %2419)  ; FAbs(value)
  %2423 = fsub fast float %2421, %2422
  %2424 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2423)  ; FMax(a,b)
  %2425 = call float @dx.op.dot3.f32(i32 55, float %2417, float %2419, float %2424, float %2417, float %2419, float %2424)  ; Dot3(ax,ay,az,bx,by,bz)
  %2426 = bitcast float %2425 to i32
  %2427 = ashr i32 %2426, 1
  %2428 = sub nsw i32 1597250115, %2427
  %2429 = bitcast i32 %2428 to float
  %2430 = fmul fast float %2429, %2417
  %2431 = fmul fast float %2429, %2419
  %2432 = fmul fast float %2429, %2424
  %2433 = fsub fast float 1.000000e+00, %2408
  %2434 = fdiv fast float %2433, %2432
  %2435 = fmul fast float %2432, %70
  %2436 = fmul fast float %2432, %71
  %2437 = fmul fast float %2432, %72
  %2438 = fmul fast float %2430, %66
  %2439 = fmul fast float %2430, %67
  %2440 = fmul fast float %2430, %68
  %2441 = fadd fast float %2435, %2438
  %2442 = fadd fast float %2436, %2439
  %2443 = fadd fast float %2437, %2440
  %2444 = fmul fast float %2431, %102
  %2445 = fmul fast float %2431, %103
  %2446 = fmul fast float %2431, %104
  %2447 = fadd fast float %2441, %2444
  %2448 = fadd fast float %2442, %2445
  %2449 = fadd fast float %2443, %2446
  %2450 = call float @dx.op.dot3.f32(i32 55, float %2447, float %2448, float %2449, float %2447, float %2448, float %2449)  ; Dot3(ax,ay,az,bx,by,bz)
  %2451 = call float @dx.op.unary.f32(i32 25, float %2450)  ; Rsqrt(value)
  %2452 = fmul fast float %2447, %2451
  %2453 = fmul fast float %2448, %2451
  %2454 = fmul fast float %2449, %2451
  %2455 = call float @dx.op.dot3.f32(i32 55, float %2328, float %2329, float %2330, float %2328, float %2329, float %2330)  ; Dot3(ax,ay,az,bx,by,bz)
  %2456 = call float @dx.op.unary.f32(i32 7, float %2455)  ; Saturate(value)
  %2457 = fmul fast float %2456, 5.000000e-01
  %2458 = fadd fast float %2457, 5.000000e-01
  %2459 = fmul fast float %2458, %2408
  %2460 = call float @dx.op.dot3.f32(i32 55, float %2328, float %2329, float %2330, float %2452, float %2453, float %2454)  ; Dot3(ax,ay,az,bx,by,bz)
  %2461 = call float @dx.op.unary.f32(i32 7, float %2460)  ; Saturate(value)
  %2462 = fmul fast float %2461, %2434
  %2463 = fadd fast float %2459, %2462
  %2464 = fsub fast float 5.000000e-01, %2457
  %2465 = fmul fast float %2464, %2325
  %2466 = fmul fast float %2464, %2326
  %2467 = fmul fast float %2464, %2327
  %2468 = fadd fast float %2463, %2465
  %2469 = fmul fast float %2468, %2404
  %2470 = fadd fast float %2463, %2466
  %2471 = fmul fast float %2470, %2405
  %2472 = fadd fast float %2463, %2467
  %2473 = fmul fast float %2472, %2406
  %2474 = call float @dx.op.dot3.f32(i32 55, float %2342, float %2343, float %2344, float %2328, float %2329, float %2330)  ; Dot3(ax,ay,az,bx,by,bz)
  %2475 = call float @dx.op.unary.f32(i32 7, float %2474)  ; Saturate(value)
  %2476 = fmul fast float %2475, 5.000000e-01
  %2477 = fadd fast float %2476, 5.000000e-01
  %2478 = fmul fast float %2477, %2408
  %2479 = call float @dx.op.dot3.f32(i32 55, float %2342, float %2343, float %2344, float %2452, float %2453, float %2454)  ; Dot3(ax,ay,az,bx,by,bz)
  %2480 = call float @dx.op.unary.f32(i32 7, float %2479)  ; Saturate(value)
  %2481 = fmul fast float %2480, %2434
  %2482 = fadd fast float %2478, %2481
  %2483 = fsub fast float 5.000000e-01, %2476
  %2484 = fmul fast float %2483, %2325
  %2485 = fmul fast float %2483, %2326
  %2486 = fmul fast float %2483, %2327
  %2487 = fadd fast float %2482, %2484
  %2488 = fmul fast float %2487, %2404
  %2489 = fadd fast float %2482, %2485
  %2490 = fmul fast float %2489, %2405
  %2491 = fadd fast float %2482, %2486
  %2492 = fmul fast float %2491, %2406
  br label %2493

; <label>:2493                                    ; preds = %2395, %2392
  %2494 = phi float [ %2488, %2395 ], [ 0.000000e+00, %2392 ]
  %2495 = phi float [ %2490, %2395 ], [ 0.000000e+00, %2392 ]
  %2496 = phi float [ %2492, %2395 ], [ 0.000000e+00, %2392 ]
  %2497 = phi float [ %2469, %2395 ], [ 0.000000e+00, %2392 ]
  %2498 = phi float [ %2471, %2395 ], [ 0.000000e+00, %2392 ]
  %2499 = phi float [ %2473, %2395 ], [ 0.000000e+00, %2392 ]
  %2500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.f32 %2500, 0
  %2502 = fcmp fast ogt float %2501, 0.000000e+00
  %2503 = and i1 %2394, %2502
  br i1 %2503, label %2504, label %2708, !dx.controlflow.hints !101

; <label>:2504                                    ; preds = %2493
  %2505 = extractvalue %dx.types.CBufRet.f32 %2349, 2
  %2506 = fadd fast float %2505, %140
  %2507 = fmul fast float %2328, 3.200000e+01
  %2508 = fmul fast float %2329, 3.200000e+01
  %2509 = fadd fast float %2352, %2507
  %2510 = fadd fast float %2353, %2508
  %2511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2512 = extractvalue %dx.types.CBufRet.f32 %2511, 0
  %2513 = extractvalue %dx.types.CBufRet.f32 %2511, 1
  %2514 = fsub fast float %2509, %2512
  %2515 = fsub fast float %2510, %2513
  %2516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2517 = extractvalue %dx.types.CBufRet.f32 %2516, 0
  %2518 = extractvalue %dx.types.CBufRet.f32 %2516, 1
  %2519 = fmul fast float %2514, %2517
  %2520 = fmul fast float %2515, %2518
  %2521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2522 = extractvalue %dx.types.CBufRet.f32 %2521, 0
  %2523 = extractvalue %dx.types.CBufRet.f32 %2521, 1
  %2524 = fsub fast float %2352, %2522
  %2525 = fsub fast float %2353, %2523
  %2526 = fmul fast float %2524, %2524
  %2527 = fmul fast float %2525, %2525
  %2528 = fadd fast float %2526, %2527
  %2529 = call float @dx.op.unary.f32(i32 24, float %2528)  ; Sqrt(value)
  %2530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2531 = extractvalue %dx.types.CBufRet.f32 %2530, 0
  %2532 = extractvalue %dx.types.CBufRet.f32 %2530, 1
  %2533 = fsub fast float %2529, %2531
  %2534 = fdiv fast float %2533, %2532
  %2535 = call float @dx.op.unary.f32(i32 7, float %2534)  ; Saturate(value)
  %2536 = fmul fast float %2535, 2.000000e+00
  %2537 = fsub fast float 3.000000e+00, %2536
  %2538 = fmul fast float %2535, %2535
  %2539 = fmul fast float %2538, %2537
  %2540 = fcmp fast oge float %2519, 0.000000e+00
  %2541 = fcmp fast ole float %2519, 1.000000e+00
  %2542 = and i1 %2541, %2540
  %2543 = fcmp fast oge float %2520, 0.000000e+00
  %2544 = and i1 %2543, %2542
  %2545 = fcmp fast ole float %2520, 1.000000e+00
  %2546 = and i1 %2545, %2544
  %2547 = fcmp fast ogt float %2539, 0.000000e+00
  %2548 = and i1 %2547, %2546
  br i1 %2548, label %2549, label %2672, !dx.controlflow.hints !102

; <label>:2549                                    ; preds = %2504
  %2550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2551 = extractvalue %dx.types.CBufRet.f32 %2550, 2
  %2552 = extractvalue %dx.types.CBufRet.f32 %2550, 3
  %2553 = fmul fast float %2551, %2519
  %2554 = fmul fast float %2552, %2520
  %2555 = call float @dx.op.unary.f32(i32 27, float %2553)  ; Round_ni(value)
  %2556 = call float @dx.op.unary.f32(i32 27, float %2554)  ; Round_ni(value)
  %2557 = fptosi float %2555 to i32
  %2558 = fptosi float %2556 to i32
  %2559 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %2557, i32 %2558, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2560 = extractvalue %dx.types.ResRet.i32 %2559, 0
  %2561 = lshr i32 %2560, 16
  %2562 = icmp eq i32 %2561, 65535
  br i1 %2562, label %2672, label %2563

; <label>:2563                                    ; preds = %2549
  %2564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2565 = extractvalue %dx.types.CBufRet.f32 %2564, 0
  %2566 = fmul fast float %2565, %2519
  %2567 = extractvalue %dx.types.CBufRet.f32 %2564, 1
  %2568 = fadd fast float %2566, %2567
  %2569 = extractvalue %dx.types.CBufRet.f32 %2564, 2
  %2570 = fmul fast float %2569, %2520
  %2571 = extractvalue %dx.types.CBufRet.f32 %2564, 3
  %2572 = fadd fast float %2570, %2571
  %2573 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2568, float %2572, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2574 = extractvalue %dx.types.ResRet.f32 %2573, 0
  %2575 = extractvalue %dx.types.ResRet.f32 %2573, 1
  %2576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2577 = extractvalue %dx.types.CBufRet.f32 %2576, 1
  %2578 = extractvalue %dx.types.CBufRet.f32 %2576, 0
  %2579 = fsub fast float %2577, %2578
  %2580 = fmul fast float %2579, %2574
  %2581 = fadd fast float %2580, %2578
  %2582 = extractvalue %dx.types.CBufRet.f32 %2576, 3
  %2583 = extractvalue %dx.types.CBufRet.f32 %2576, 2
  %2584 = fsub fast float %2582, %2583
  %2585 = fmul fast float %2584, %2575
  %2586 = fadd fast float %2585, %2583
  %2587 = fsub fast float %2506, %2581
  %2588 = fsub fast float %2586, %2581
  %2589 = fdiv fast float %2587, %2588
  %2590 = call float @dx.op.unary.f32(i32 7, float %2589)  ; Saturate(value)
  %2591 = extractvalue %dx.types.CBufRet.f32 %2500, 1
  %2592 = extractvalue %dx.types.CBufRet.f32 %2550, 0
  %2593 = extractvalue %dx.types.CBufRet.f32 %2550, 1
  %2594 = fmul fast float %2592, %2519
  %2595 = fmul fast float %2593, %2520
  %2596 = fmul fast float %2594, 1.250000e-01
  %2597 = fmul fast float %2595, 1.250000e-01
  %2598 = call float @dx.op.unary.f32(i32 27, float %2596)  ; Round_ni(value)
  %2599 = call float @dx.op.unary.f32(i32 27, float %2597)  ; Round_ni(value)
  %2600 = fmul fast float %2598, 8.000000e+00
  %2601 = fmul fast float %2599, 8.000000e+00
  %2602 = fsub fast float %2594, %2600
  %2603 = fsub fast float %2595, %2601
  %2604 = fadd fast float %2602, 5.000000e-01
  %2605 = fadd fast float %2603, 5.000000e-01
  %2606 = and i32 %2561, 255
  %2607 = lshr i32 %2560, 24
  %2608 = mul nuw nsw i32 %2606, 9
  %2609 = uitofp i32 %2608 to float
  %2610 = mul nuw nsw i32 %2607, 9
  %2611 = uitofp i32 %2610 to float
  %2612 = fadd fast float %2604, %2609
  %2613 = fadd fast float %2605, %2611
  %2614 = fdiv fast float %2612, %2501
  %2615 = fdiv fast float %2613, %2591
  %2616 = fmul fast float %2590, 4.375000e-01
  %2617 = fadd fast float %2616, 3.125000e-02
  %2618 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2614, float %2615, float %2617, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2619 = extractvalue %dx.types.ResRet.f32 %2618, 0
  %2620 = extractvalue %dx.types.ResRet.f32 %2618, 1
  %2621 = extractvalue %dx.types.ResRet.f32 %2618, 2
  %2622 = fadd fast float %2616, 5.312500e-01
  %2623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2614, float %2615, float %2622, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2624 = extractvalue %dx.types.ResRet.f32 %2623, 0
  %2625 = extractvalue %dx.types.ResRet.f32 %2623, 1
  %2626 = extractvalue %dx.types.ResRet.f32 %2623, 2
  %2627 = fmul fast float %2624, 2.000000e+00
  %2628 = fmul fast float %2625, 2.000000e+00
  %2629 = fmul fast float %2626, 2.000000e+00
  %2630 = fadd fast float %2627, -1.000000e+00
  %2631 = fadd fast float %2628, -1.000000e+00
  %2632 = fadd fast float %2629, -1.000000e+00
  %2633 = fmul fast float %2630, %2630
  %2634 = fmul fast float %2631, %2631
  %2635 = fadd fast float %2633, %2634
  %2636 = fmul fast float %2632, %2632
  %2637 = fadd fast float %2635, %2636
  %2638 = call float @dx.op.unary.f32(i32 24, float %2637)  ; Sqrt(value)
  %2639 = fcmp fast ogt float %2638, 0.000000e+00
  br i1 %2639, label %2640, label %2644

; <label>:2640                                    ; preds = %2563
  %2641 = fdiv fast float %2630, %2638
  %2642 = fdiv fast float %2631, %2638
  %2643 = fdiv fast float %2632, %2638
  br label %2644

; <label>:2644                                    ; preds = %2640, %2563
  %2645 = phi float [ %2641, %2640 ], [ 0.000000e+00, %2563 ]
  %2646 = phi float [ %2642, %2640 ], [ 0.000000e+00, %2563 ]
  %2647 = phi float [ %2643, %2640 ], [ 0.000000e+00, %2563 ]
  %2648 = call float @dx.op.dot3.f32(i32 55, float %2645, float %2646, float %2647, float %2328, float %2329, float %2330)  ; Dot3(ax,ay,az,bx,by,bz)
  %2649 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2648)  ; FMax(a,b)
  %2650 = fmul fast float %2649, 0x400C5BF8A0000000
  %2651 = fmul fast float %2619, %2539
  %2652 = fmul fast float %2651, %2650
  %2653 = fmul fast float %2620, %2539
  %2654 = fmul fast float %2653, %2650
  %2655 = fmul fast float %2621, %2539
  %2656 = fmul fast float %2655, %2650
  %2657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2658 = extractvalue %dx.types.CBufRet.f32 %2657, 3
  %2659 = fmul fast float %2652, %2658
  %2660 = fmul fast float %2654, %2658
  %2661 = fmul fast float %2656, %2658
  %2662 = fcmp fast ogt float %2506, %2586
  br i1 %2662, label %2663, label %2672

; <label>:2663                                    ; preds = %2644
  %2664 = fmul fast float %2588, 0x3FC24924A0000000
  %2665 = fsub fast float %2506, %2586
  %2666 = fdiv fast float %2665, %2664
  %2667 = call float @dx.op.unary.f32(i32 7, float %2666)  ; Saturate(value)
  %2668 = fsub fast float 1.000000e+00, %2667
  %2669 = fmul fast float %2668, %2659
  %2670 = fmul fast float %2668, %2660
  %2671 = fmul fast float %2668, %2661
  br label %2672

; <label>:2672                                    ; preds = %2663, %2644, %2549, %2504
  %2673 = phi float [ %2671, %2663 ], [ %2661, %2644 ], [ 0.000000e+00, %2549 ], [ 0.000000e+00, %2504 ]
  %2674 = phi float [ %2670, %2663 ], [ %2660, %2644 ], [ 0.000000e+00, %2549 ], [ 0.000000e+00, %2504 ]
  %2675 = phi float [ %2669, %2663 ], [ %2659, %2644 ], [ 0.000000e+00, %2549 ], [ 0.000000e+00, %2504 ]
  %2676 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2675)  ; FMax(a,b)
  %2677 = fmul fast float %2676, 0x3FD20DD760000000
  %2678 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2342, float %2343, float %2344)  ; Dot3(ax,ay,az,bx,by,bz)
  %2679 = fmul fast float %2678, 0x3FDF454380000000
  %2680 = fmul fast float %2678, %2678
  %2681 = fmul fast float %2680, 0x3FEE471020000000
  %2682 = fadd fast float %2681, 0xBFD42F6020000000
  %2683 = call float @dx.op.dot3.f32(i32 55, float %2676, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2679, float %2682)  ; Dot3(ax,ay,az,bx,by,bz)
  %2684 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2674)  ; FMax(a,b)
  %2685 = fmul fast float %2684, 0x3FD20DD760000000
  %2686 = call float @dx.op.dot3.f32(i32 55, float %2684, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2679, float %2682)  ; Dot3(ax,ay,az,bx,by,bz)
  %2687 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2673)  ; FMax(a,b)
  %2688 = fmul fast float %2687, 0x3FD20DD760000000
  %2689 = call float @dx.op.dot3.f32(i32 55, float %2687, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2679, float %2682)  ; Dot3(ax,ay,az,bx,by,bz)
  %2690 = call float @dx.op.binary.f32(i32 35, float %2677, float 0.000000e+00)  ; FMax(a,b)
  %2691 = call float @dx.op.binary.f32(i32 35, float %2685, float 0.000000e+00)  ; FMax(a,b)
  %2692 = call float @dx.op.binary.f32(i32 35, float %2688, float 0.000000e+00)  ; FMax(a,b)
  %2693 = call float @dx.op.binary.f32(i32 35, float %2683, float 0.000000e+00)  ; FMax(a,b)
  %2694 = call float @dx.op.binary.f32(i32 35, float %2686, float 0.000000e+00)  ; FMax(a,b)
  %2695 = call float @dx.op.binary.f32(i32 35, float %2689, float 0.000000e+00)  ; FMax(a,b)
  %2696 = fmul fast float %2690, %2393
  %2697 = fmul fast float %2691, %2393
  %2698 = fmul fast float %2692, %2393
  %2699 = fadd fast float %2696, %2497
  %2700 = fadd fast float %2697, %2498
  %2701 = fadd fast float %2698, %2499
  %2702 = fmul fast float %2693, %2393
  %2703 = fmul fast float %2694, %2393
  %2704 = fmul fast float %2695, %2393
  %2705 = fadd fast float %2702, %2494
  %2706 = fadd fast float %2703, %2495
  %2707 = fadd fast float %2704, %2496
  br label %2708

; <label>:2708                                    ; preds = %2672, %2493
  %2709 = phi float [ %2705, %2672 ], [ %2494, %2493 ]
  %2710 = phi float [ %2706, %2672 ], [ %2495, %2493 ]
  %2711 = phi float [ %2707, %2672 ], [ %2496, %2493 ]
  %2712 = phi float [ %2699, %2672 ], [ %2497, %2493 ]
  %2713 = phi float [ %2700, %2672 ], [ %2498, %2493 ]
  %2714 = phi float [ %2701, %2672 ], [ %2499, %2493 ]
  %2715 = fcmp fast olt float %2393, 1.000000e+00
  br i1 %2715, label %2716, label %3534, !dx.controlflow.hints !103

; <label>:2716                                    ; preds = %2708
  %2717 = extractvalue %dx.types.CBufRet.f32 %2349, 2
  %2718 = fadd fast float %2717, %140
  %2719 = fmul fast float %2328, 3.200000e+01
  %2720 = fmul fast float %2329, 3.200000e+01
  %2721 = fadd fast float %2352, %2719
  %2722 = fadd fast float %2353, %2720
  %2723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2724 = extractvalue %dx.types.CBufRet.f32 %2723, 0
  %2725 = extractvalue %dx.types.CBufRet.f32 %2723, 1
  %2726 = fsub fast float %2721, %2724
  %2727 = fsub fast float %2722, %2725
  %2728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2729 = extractvalue %dx.types.CBufRet.f32 %2728, 0
  %2730 = extractvalue %dx.types.CBufRet.f32 %2728, 1
  %2731 = fmul fast float %2726, %2729
  %2732 = fmul fast float %2727, %2730
  %2733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2734 = extractvalue %dx.types.CBufRet.f32 %2733, 0
  %2735 = fmul fast float %2731, %2734
  %2736 = extractvalue %dx.types.CBufRet.f32 %2733, 1
  %2737 = fadd fast float %2735, %2736
  %2738 = extractvalue %dx.types.CBufRet.f32 %2733, 2
  %2739 = fmul fast float %2738, %2732
  %2740 = extractvalue %dx.types.CBufRet.f32 %2733, 3
  %2741 = fadd fast float %2739, %2740
  %2742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2737, float %2741, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2743 = extractvalue %dx.types.ResRet.f32 %2742, 0
  %2744 = extractvalue %dx.types.ResRet.f32 %2742, 1
  %2745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2746 = extractvalue %dx.types.CBufRet.f32 %2745, 1
  %2747 = extractvalue %dx.types.CBufRet.f32 %2745, 0
  %2748 = fsub fast float %2746, %2747
  %2749 = fmul fast float %2748, %2743
  %2750 = fadd fast float %2749, %2747
  %2751 = extractvalue %dx.types.CBufRet.f32 %2745, 3
  %2752 = extractvalue %dx.types.CBufRet.f32 %2745, 2
  %2753 = fsub fast float %2751, %2752
  %2754 = fmul fast float %2753, %2744
  %2755 = fadd fast float %2754, %2752
  %2756 = fsub fast float %2718, %2750
  %2757 = fsub fast float %2755, %2750
  %2758 = fdiv fast float %2756, %2757
  %2759 = call float @dx.op.unary.f32(i32 7, float %2758)  ; Saturate(value)
  %2760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2761 = extractvalue %dx.types.CBufRet.f32 %2760, 0
  %2762 = fmul fast float %2761, %2759
  %2763 = extractvalue %dx.types.CBufRet.f32 %2760, 1
  %2764 = fadd fast float %2762, %2763
  %2765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %58, float %2737, float %2741, float %2764, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2766 = extractvalue %dx.types.ResRet.f32 %2765, 0
  %2767 = extractvalue %dx.types.ResRet.f32 %2765, 1
  %2768 = extractvalue %dx.types.ResRet.f32 %2765, 2
  %2769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2770 = extractvalue %dx.types.CBufRet.f32 %2769, 0
  %2771 = extractvalue %dx.types.CBufRet.f32 %2769, 1
  %2772 = extractvalue %dx.types.CBufRet.f32 %2769, 2
  %2773 = fmul fast float %2770, %2766
  %2774 = fmul fast float %2771, %2767
  %2775 = fmul fast float %2772, %2768
  %2776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2777 = extractvalue %dx.types.CBufRet.f32 %2776, 0
  %2778 = extractvalue %dx.types.CBufRet.f32 %2776, 1
  %2779 = extractvalue %dx.types.CBufRet.f32 %2776, 2
  %2780 = fadd fast float %2773, %2777
  %2781 = fadd fast float %2774, %2778
  %2782 = fadd fast float %2775, %2779
  %2783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2784 = extractvalue %dx.types.CBufRet.f32 %2783, 0
  %2785 = fmul fast float %2784, %2731
  %2786 = extractvalue %dx.types.CBufRet.f32 %2783, 1
  %2787 = fadd fast float %2785, %2786
  %2788 = extractvalue %dx.types.CBufRet.f32 %2783, 2
  %2789 = fmul fast float %2788, %2732
  %2790 = extractvalue %dx.types.CBufRet.f32 %2783, 3
  %2791 = fadd fast float %2789, %2790
  %2792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2793 = extractvalue %dx.types.CBufRet.f32 %2792, 0
  %2794 = extractvalue %dx.types.CBufRet.f32 %2792, 1
  %2795 = extractvalue %dx.types.CBufRet.f32 %2792, 2
  %2796 = extractvalue %dx.types.CBufRet.f32 %2792, 3
  %2797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2798 = extractvalue %dx.types.CBufRet.f32 %2797, 0
  %2799 = extractvalue %dx.types.CBufRet.f32 %2797, 1
  %2800 = extractvalue %dx.types.CBufRet.f32 %2797, 2
  %2801 = extractvalue %dx.types.CBufRet.f32 %2797, 3
  %2802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2787, float %2791, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2803 = extractvalue %dx.types.ResRet.f32 %2802, 0
  %2804 = extractvalue %dx.types.ResRet.f32 %2802, 1
  %2805 = extractvalue %dx.types.ResRet.f32 %2802, 2
  %2806 = extractvalue %dx.types.ResRet.f32 %2802, 3
  %2807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2787, float %2791, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2808 = extractvalue %dx.types.ResRet.f32 %2807, 0
  %2809 = extractvalue %dx.types.ResRet.f32 %2807, 1
  %2810 = extractvalue %dx.types.ResRet.f32 %2807, 2
  %2811 = extractvalue %dx.types.ResRet.f32 %2807, 3
  %2812 = fmul fast float %2803, %2780
  %2813 = fmul fast float %2808, %2780
  %2814 = fmul fast float %2810, %2780
  %2815 = fmul fast float %2806, %2780
  %2816 = fadd fast float %2812, %2793
  %2817 = fadd fast float %2813, %2794
  %2818 = fadd fast float %2814, %2795
  %2819 = fadd fast float %2815, %2796
  %2820 = fmul fast float %2804, %2780
  %2821 = fmul fast float %2809, %2780
  %2822 = fadd fast float %2820, %2798
  %2823 = fadd fast float %2821, %2799
  %2824 = fmul fast float %2805, %2780
  %2825 = fmul fast float %2811, %2780
  %2826 = fadd fast float %2824, %2800
  %2827 = fadd fast float %2825, %2801
  %2828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2787, float %2791, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2829 = extractvalue %dx.types.ResRet.f32 %2828, 0
  %2830 = extractvalue %dx.types.ResRet.f32 %2828, 1
  %2831 = extractvalue %dx.types.ResRet.f32 %2828, 2
  %2832 = extractvalue %dx.types.ResRet.f32 %2828, 3
  %2833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2787, float %2791, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2834 = extractvalue %dx.types.ResRet.f32 %2833, 0
  %2835 = extractvalue %dx.types.ResRet.f32 %2833, 1
  %2836 = extractvalue %dx.types.ResRet.f32 %2833, 2
  %2837 = extractvalue %dx.types.ResRet.f32 %2833, 3
  %2838 = fmul fast float %2829, %2781
  %2839 = fmul fast float %2834, %2781
  %2840 = fmul fast float %2836, %2781
  %2841 = fmul fast float %2832, %2781
  %2842 = fadd fast float %2816, %2838
  %2843 = fadd fast float %2817, %2839
  %2844 = fadd fast float %2818, %2840
  %2845 = fadd fast float %2819, %2841
  %2846 = fmul fast float %2830, %2781
  %2847 = fmul fast float %2835, %2781
  %2848 = fadd fast float %2822, %2846
  %2849 = fadd fast float %2823, %2847
  %2850 = fmul fast float %2831, %2781
  %2851 = fmul fast float %2837, %2781
  %2852 = fadd fast float %2826, %2850
  %2853 = fadd fast float %2827, %2851
  %2854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2787, float %2791, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2855 = extractvalue %dx.types.ResRet.f32 %2854, 0
  %2856 = extractvalue %dx.types.ResRet.f32 %2854, 1
  %2857 = extractvalue %dx.types.ResRet.f32 %2854, 2
  %2858 = extractvalue %dx.types.ResRet.f32 %2854, 3
  %2859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2787, float %2791, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2860 = extractvalue %dx.types.ResRet.f32 %2859, 0
  %2861 = extractvalue %dx.types.ResRet.f32 %2859, 1
  %2862 = extractvalue %dx.types.ResRet.f32 %2859, 2
  %2863 = extractvalue %dx.types.ResRet.f32 %2859, 3
  %2864 = fmul fast float %2855, %2782
  %2865 = fmul fast float %2860, %2782
  %2866 = fmul fast float %2862, %2782
  %2867 = fmul fast float %2858, %2782
  %2868 = fadd fast float %2842, %2864
  %2869 = fadd fast float %2843, %2865
  %2870 = fadd fast float %2844, %2866
  %2871 = fadd fast float %2845, %2867
  %2872 = fmul fast float %2856, %2782
  %2873 = fmul fast float %2861, %2782
  %2874 = fadd fast float %2848, %2872
  %2875 = fadd fast float %2849, %2873
  %2876 = fmul fast float %2857, %2782
  %2877 = fmul fast float %2863, %2782
  %2878 = fadd fast float %2852, %2876
  %2879 = fadd fast float %2853, %2877
  %2880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2881 = extractvalue %dx.types.CBufRet.f32 %2880, 0
  %2882 = fsub fast float %2352, %2881
  %2883 = fsub fast float %2724, %2352
  %2884 = call float @dx.op.binary.f32(i32 35, float %2883, float %2882)  ; FMax(a,b)
  %2885 = extractvalue %dx.types.CBufRet.f32 %2880, 1
  %2886 = fsub fast float %2353, %2885
  %2887 = fsub fast float %2725, %2353
  %2888 = call float @dx.op.binary.f32(i32 35, float %2887, float %2886)  ; FMax(a,b)
  %2889 = call float @dx.op.binary.f32(i32 35, float %2884, float %2888)  ; FMax(a,b)
  %2890 = extractvalue %dx.types.CBufRet.f32 %2728, 3
  %2891 = fmul fast float %2890, %2889
  %2892 = call float @dx.op.unary.f32(i32 7, float %2891)  ; Saturate(value)
  %2893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2894 = extractvalue %dx.types.CBufRet.f32 %2893, 0
  %2895 = extractvalue %dx.types.CBufRet.f32 %2893, 1
  %2896 = extractvalue %dx.types.CBufRet.f32 %2893, 2
  %2897 = extractvalue %dx.types.CBufRet.f32 %2893, 3
  %2898 = fsub fast float %2894, %2868
  %2899 = fsub fast float %2895, %2869
  %2900 = fsub fast float %2896, %2870
  %2901 = fsub fast float %2897, %2871
  %2902 = fmul fast float %2898, %2892
  %2903 = fmul fast float %2899, %2892
  %2904 = fmul fast float %2900, %2892
  %2905 = fmul fast float %2901, %2892
  %2906 = fadd fast float %2902, %2868
  %2907 = fadd fast float %2903, %2869
  %2908 = fadd fast float %2904, %2870
  %2909 = fadd fast float %2905, %2871
  %2910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2911 = extractvalue %dx.types.CBufRet.f32 %2910, 0
  %2912 = extractvalue %dx.types.CBufRet.f32 %2910, 1
  %2913 = fsub fast float %2911, %2874
  %2914 = fsub fast float %2912, %2875
  %2915 = fmul fast float %2913, %2892
  %2916 = fmul fast float %2914, %2892
  %2917 = fadd fast float %2915, %2874
  %2918 = fadd fast float %2916, %2875
  %2919 = extractvalue %dx.types.CBufRet.f32 %2910, 2
  %2920 = extractvalue %dx.types.CBufRet.f32 %2910, 3
  %2921 = fsub fast float %2919, %2878
  %2922 = fsub fast float %2920, %2879
  %2923 = fmul fast float %2921, %2892
  %2924 = fmul fast float %2922, %2892
  %2925 = fadd fast float %2923, %2878
  %2926 = fadd fast float %2924, %2879
  %2927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2928 = extractvalue %dx.types.CBufRet.f32 %2927, 0
  %2929 = fmul fast float %2928, %2906
  %2930 = fmul fast float %2928, %2907
  %2931 = fmul fast float %2928, %2908
  %2932 = fmul fast float %2928, %2909
  %2933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2934 = extractvalue %dx.types.CBufRet.f32 %2933, 0
  %2935 = fmul fast float %2934, %2917
  %2936 = fmul fast float %2934, %2918
  %2937 = fadd fast float %2935, %2929
  %2938 = fadd fast float %2936, %2931
  %2939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2940 = extractvalue %dx.types.CBufRet.f32 %2939, 0
  %2941 = fmul fast float %2940, %2925
  %2942 = fmul fast float %2940, %2926
  %2943 = fadd fast float %2937, %2941
  %2944 = fadd fast float %2938, %2942
  %2945 = extractvalue %dx.types.CBufRet.f32 %2927, 1
  %2946 = fmul fast float %2945, %2906
  %2947 = fmul fast float %2945, %2907
  %2948 = fmul fast float %2945, %2908
  %2949 = fmul fast float %2945, %2909
  %2950 = extractvalue %dx.types.CBufRet.f32 %2933, 1
  %2951 = fmul fast float %2950, %2917
  %2952 = fmul fast float %2950, %2918
  %2953 = fadd fast float %2951, %2946
  %2954 = fadd fast float %2952, %2948
  %2955 = extractvalue %dx.types.CBufRet.f32 %2939, 1
  %2956 = fmul fast float %2955, %2925
  %2957 = fmul fast float %2955, %2926
  %2958 = fadd fast float %2953, %2956
  %2959 = fadd fast float %2954, %2957
  %2960 = extractvalue %dx.types.CBufRet.f32 %2927, 2
  %2961 = fmul fast float %2960, %2906
  %2962 = fmul fast float %2960, %2907
  %2963 = fmul fast float %2960, %2908
  %2964 = fmul fast float %2960, %2909
  %2965 = extractvalue %dx.types.CBufRet.f32 %2933, 2
  %2966 = fmul fast float %2965, %2917
  %2967 = fmul fast float %2965, %2918
  %2968 = fadd fast float %2966, %2961
  %2969 = fadd fast float %2967, %2963
  %2970 = extractvalue %dx.types.CBufRet.f32 %2939, 2
  %2971 = fmul fast float %2970, %2925
  %2972 = fmul fast float %2970, %2926
  %2973 = fadd fast float %2968, %2971
  %2974 = fadd fast float %2969, %2972
  %2975 = fmul fast float %2962, %2962
  %2976 = fmul fast float %2974, %2974
  %2977 = fmul fast float %2964, %2964
  %2978 = fadd fast float %2977, %2975
  %2979 = fadd fast float %2978, %2976
  %2980 = call float @dx.op.unary.f32(i32 24, float %2979)  ; Sqrt(value)
  %2981 = fcmp fast ugt float %2980, 0.000000e+00
  br i1 %2981, label %2982, label %2997

; <label>:2982                                    ; preds = %2716
  %2983 = fsub fast float -0.000000e+00, %2964
  %2984 = fdiv fast float %2983, %2980
  %2985 = fsub fast float -0.000000e+00, %2962
  %2986 = fdiv fast float %2985, %2980
  %2987 = fdiv fast float %2974, %2980
  %2988 = fmul fast float %2973, 0x3FE279A760000000
  %2989 = fmul fast float %2986, %2962
  %2990 = fmul fast float %2987, %2974
  %2991 = fmul fast float %2984, %2964
  %2992 = fadd fast float %2989, %2991
  %2993 = fsub fast float %2992, %2990
  %2994 = call float @dx.op.unary.f32(i32 6, float %2993)  ; FAbs(value)
  %2995 = fadd fast float %2994, 0x3DDB7CDFE0000000
  %2996 = fdiv fast float %2988, %2995
  br label %2997

; <label>:2997                                    ; preds = %2982, %2716
  %2998 = phi float [ %2996, %2982 ], [ 1.000000e+00, %2716 ]
  %2999 = fmul fast float %2947, %2947
  %3000 = fmul fast float %2959, %2959
  %3001 = fmul fast float %2949, %2949
  %3002 = fadd fast float %3001, %2999
  %3003 = fadd fast float %3002, %3000
  %3004 = call float @dx.op.unary.f32(i32 24, float %3003)  ; Sqrt(value)
  %3005 = fcmp fast ugt float %3004, 0.000000e+00
  br i1 %3005, label %3006, label %3021

; <label>:3006                                    ; preds = %2997
  %3007 = fsub fast float -0.000000e+00, %2949
  %3008 = fdiv fast float %3007, %3004
  %3009 = fsub fast float -0.000000e+00, %2947
  %3010 = fdiv fast float %3009, %3004
  %3011 = fdiv fast float %2959, %3004
  %3012 = fmul fast float %2958, 0x3FE279A760000000
  %3013 = fmul fast float %3010, %2947
  %3014 = fmul fast float %3011, %2959
  %3015 = fmul fast float %3008, %2949
  %3016 = fadd fast float %3013, %3015
  %3017 = fsub fast float %3016, %3014
  %3018 = call float @dx.op.unary.f32(i32 6, float %3017)  ; FAbs(value)
  %3019 = fadd fast float %3018, 0x3DDB7CDFE0000000
  %3020 = fdiv fast float %3012, %3019
  br label %3021

; <label>:3021                                    ; preds = %3006, %2997
  %3022 = phi float [ %3020, %3006 ], [ 1.000000e+00, %2997 ]
  %3023 = call float @dx.op.binary.f32(i32 36, float %3022, float %2998)  ; FMin(a,b)
  %3024 = fmul fast float %2930, %2930
  %3025 = fmul fast float %2944, %2944
  %3026 = fmul fast float %2932, %2932
  %3027 = fadd fast float %3026, %3024
  %3028 = fadd fast float %3027, %3025
  %3029 = call float @dx.op.unary.f32(i32 24, float %3028)  ; Sqrt(value)
  %3030 = fcmp fast ugt float %3029, 0.000000e+00
  br i1 %3030, label %3031, label %3046

; <label>:3031                                    ; preds = %3021
  %3032 = fsub fast float -0.000000e+00, %2932
  %3033 = fdiv fast float %3032, %3029
  %3034 = fsub fast float -0.000000e+00, %2930
  %3035 = fdiv fast float %3034, %3029
  %3036 = fdiv fast float %2944, %3029
  %3037 = fmul fast float %2943, 0x3FE279A760000000
  %3038 = fmul fast float %3035, %2930
  %3039 = fmul fast float %3036, %2944
  %3040 = fmul fast float %3033, %2932
  %3041 = fadd fast float %3038, %3040
  %3042 = fsub fast float %3041, %3039
  %3043 = call float @dx.op.unary.f32(i32 6, float %3042)  ; FAbs(value)
  %3044 = fadd fast float %3043, 0x3DDB7CDFE0000000
  %3045 = fdiv fast float %3037, %3044
  br label %3046

; <label>:3046                                    ; preds = %3031, %3021
  %3047 = phi float [ %3045, %3031 ], [ 1.000000e+00, %3021 ]
  %3048 = call float @dx.op.binary.f32(i32 36, float %3047, float %3023)  ; FMin(a,b)
  %3049 = call float @dx.op.unary.f32(i32 7, float %3048)  ; Saturate(value)
  %3050 = fcmp fast olt float %3049, 1.000000e+00
  br i1 %3050, label %3051, label %3061

; <label>:3051                                    ; preds = %3046
  %3052 = fmul fast float %3049, %2930
  %3053 = fmul fast float %3049, %2944
  %3054 = fmul fast float %3049, %2932
  %3055 = fmul fast float %3049, %2947
  %3056 = fmul fast float %3049, %2959
  %3057 = fmul fast float %3049, %2949
  %3058 = fmul fast float %3049, %2962
  %3059 = fmul fast float %3049, %2974
  %3060 = fmul fast float %3049, %2964
  br label %3061

; <label>:3061                                    ; preds = %3051, %3046
  %3062 = phi float [ %3058, %3051 ], [ %2962, %3046 ]
  %3063 = phi float [ %3059, %3051 ], [ %2974, %3046 ]
  %3064 = phi float [ %3060, %3051 ], [ %2964, %3046 ]
  %3065 = phi float [ %3055, %3051 ], [ %2947, %3046 ]
  %3066 = phi float [ %3056, %3051 ], [ %2959, %3046 ]
  %3067 = phi float [ %3057, %3051 ], [ %2949, %3046 ]
  %3068 = phi float [ %3052, %3051 ], [ %2930, %3046 ]
  %3069 = phi float [ %3053, %3051 ], [ %2944, %3046 ]
  %3070 = phi float [ %3054, %3051 ], [ %2932, %3046 ]
  %3071 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2943)  ; FMax(a,b)
  %3072 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2958)  ; FMax(a,b)
  %3073 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2973)  ; FMax(a,b)
  %3074 = fcmp fast oge float %2731, 0.000000e+00
  %3075 = and i1 %3074, %2502
  %3076 = fcmp fast ole float %2731, 1.000000e+00
  %3077 = and i1 %3076, %3075
  %3078 = fcmp fast oge float %2732, 0.000000e+00
  %3079 = and i1 %3078, %3077
  %3080 = fcmp fast ole float %2732, 1.000000e+00
  %3081 = and i1 %3080, %3079
  br i1 %3081, label %3082, label %3227, !dx.controlflow.hints !104

; <label>:3082                                    ; preds = %3061
  %3083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3084 = extractvalue %dx.types.CBufRet.f32 %3083, 2
  %3085 = extractvalue %dx.types.CBufRet.f32 %3083, 3
  %3086 = fmul fast float %3084, %2731
  %3087 = fmul fast float %3085, %2732
  %3088 = call float @dx.op.unary.f32(i32 27, float %3086)  ; Round_ni(value)
  %3089 = call float @dx.op.unary.f32(i32 27, float %3087)  ; Round_ni(value)
  %3090 = fptosi float %3088 to i32
  %3091 = fptosi float %3089 to i32
  %3092 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %3090, i32 %3091, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3093 = extractvalue %dx.types.ResRet.i32 %3092, 0
  %3094 = and i32 %3093, 65535
  %3095 = lshr i32 %3093, 16
  %3096 = icmp eq i32 %3094, 65535
  br i1 %3096, label %3133, label %3097

; <label>:3097                                    ; preds = %3082
  %3098 = extractvalue %dx.types.CBufRet.f32 %2500, 1
  %3099 = extractvalue %dx.types.CBufRet.f32 %3083, 0
  %3100 = extractvalue %dx.types.CBufRet.f32 %3083, 1
  %3101 = fmul fast float %3099, %2731
  %3102 = fmul fast float %3100, %2732
  %3103 = fmul fast float %3101, 1.250000e-01
  %3104 = fmul fast float %3102, 1.250000e-01
  %3105 = call float @dx.op.unary.f32(i32 27, float %3103)  ; Round_ni(value)
  %3106 = call float @dx.op.unary.f32(i32 27, float %3104)  ; Round_ni(value)
  %3107 = fmul fast float %3105, 8.000000e+00
  %3108 = fmul fast float %3106, 8.000000e+00
  %3109 = and i32 %3093, 255
  %3110 = lshr i32 %3093, 8
  %3111 = and i32 %3110, 255
  %3112 = mul nuw nsw i32 %3109, 9
  %3113 = uitofp i32 %3112 to float
  %3114 = mul nuw nsw i32 %3111, 9
  %3115 = uitofp i32 %3114 to float
  %3116 = fadd fast float %3113, 5.000000e-01
  %3117 = fadd fast float %3116, %3101
  %3118 = fsub fast float %3117, %3107
  %3119 = fadd fast float %3115, 5.000000e-01
  %3120 = fadd fast float %3119, %3102
  %3121 = fsub fast float %3120, %3108
  %3122 = fdiv fast float %3118, %2501
  %3123 = fdiv fast float %3121, %3098
  %3124 = fmul fast float %2759, 4.375000e-01
  %3125 = fadd fast float %3124, 3.125000e-02
  %3126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3122, float %3123, float %3125, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3127 = extractvalue %dx.types.ResRet.f32 %3126, 0
  %3128 = extractvalue %dx.types.ResRet.f32 %3126, 1
  %3129 = extractvalue %dx.types.ResRet.f32 %3126, 2
  %3130 = fadd fast float %3127, %3071
  %3131 = fadd fast float %3128, %3072
  %3132 = fadd fast float %3129, %3073
  br label %3133

; <label>:3133                                    ; preds = %3097, %3082
  %3134 = phi float [ %3132, %3097 ], [ %3073, %3082 ]
  %3135 = phi float [ %3131, %3097 ], [ %3072, %3082 ]
  %3136 = phi float [ %3130, %3097 ], [ %3071, %3082 ]
  %3137 = icmp eq i32 %3095, 65535
  br i1 %3137, label %3227, label %3138

; <label>:3138                                    ; preds = %3133
  %3139 = extractvalue %dx.types.CBufRet.f32 %2500, 1
  %3140 = extractvalue %dx.types.CBufRet.f32 %3083, 0
  %3141 = extractvalue %dx.types.CBufRet.f32 %3083, 1
  %3142 = fmul fast float %3140, %2731
  %3143 = fmul fast float %3141, %2732
  %3144 = fmul fast float %3142, 1.250000e-01
  %3145 = fmul fast float %3143, 1.250000e-01
  %3146 = call float @dx.op.unary.f32(i32 27, float %3144)  ; Round_ni(value)
  %3147 = call float @dx.op.unary.f32(i32 27, float %3145)  ; Round_ni(value)
  %3148 = fmul fast float %3146, 8.000000e+00
  %3149 = fmul fast float %3147, 8.000000e+00
  %3150 = fsub fast float %3142, %3148
  %3151 = fsub fast float %3143, %3149
  %3152 = fadd fast float %3150, 5.000000e-01
  %3153 = fadd fast float %3151, 5.000000e-01
  %3154 = and i32 %3095, 255
  %3155 = lshr i32 %3093, 24
  %3156 = mul nuw nsw i32 %3154, 9
  %3157 = uitofp i32 %3156 to float
  %3158 = mul nuw nsw i32 %3155, 9
  %3159 = uitofp i32 %3158 to float
  %3160 = fadd fast float %3152, %3157
  %3161 = fadd fast float %3153, %3159
  %3162 = fdiv fast float %3160, %2501
  %3163 = fdiv fast float %3161, %3139
  %3164 = fmul fast float %2759, 4.375000e-01
  %3165 = fadd fast float %3164, 3.125000e-02
  %3166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3162, float %3163, float %3165, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3167 = extractvalue %dx.types.ResRet.f32 %3166, 0
  %3168 = extractvalue %dx.types.ResRet.f32 %3166, 1
  %3169 = extractvalue %dx.types.ResRet.f32 %3166, 2
  %3170 = fadd fast float %3164, 5.312500e-01
  %3171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3162, float %3163, float %3170, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3172 = extractvalue %dx.types.ResRet.f32 %3171, 0
  %3173 = extractvalue %dx.types.ResRet.f32 %3171, 1
  %3174 = extractvalue %dx.types.ResRet.f32 %3171, 2
  %3175 = fmul fast float %3172, 2.000000e+00
  %3176 = fmul fast float %3173, 2.000000e+00
  %3177 = fmul fast float %3174, 2.000000e+00
  %3178 = fadd fast float %3175, -1.000000e+00
  %3179 = fadd fast float %3176, -1.000000e+00
  %3180 = fadd fast float %3177, -1.000000e+00
  %3181 = fmul fast float %3178, %3178
  %3182 = fmul fast float %3179, %3179
  %3183 = fadd fast float %3181, %3182
  %3184 = fmul fast float %3180, %3180
  %3185 = fadd fast float %3183, %3184
  %3186 = call float @dx.op.unary.f32(i32 24, float %3185)  ; Sqrt(value)
  %3187 = fcmp fast ogt float %3186, 0.000000e+00
  br i1 %3187, label %3188, label %3192

; <label>:3188                                    ; preds = %3138
  %3189 = fdiv fast float %3178, %3186
  %3190 = fdiv fast float %3179, %3186
  %3191 = fdiv fast float %3180, %3186
  br label %3192

; <label>:3192                                    ; preds = %3188, %3138
  %3193 = phi float [ %3189, %3188 ], [ 0.000000e+00, %3138 ]
  %3194 = phi float [ %3190, %3188 ], [ 0.000000e+00, %3138 ]
  %3195 = phi float [ %3191, %3188 ], [ 0.000000e+00, %3138 ]
  %3196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3197 = extractvalue %dx.types.CBufRet.f32 %3196, 0
  %3198 = extractvalue %dx.types.CBufRet.f32 %3196, 1
  %3199 = fsub fast float %2352, %3197
  %3200 = fsub fast float %2353, %3198
  %3201 = fmul fast float %3199, %3199
  %3202 = fmul fast float %3200, %3200
  %3203 = fadd fast float %3201, %3202
  %3204 = call float @dx.op.unary.f32(i32 24, float %3203)  ; Sqrt(value)
  %3205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3206 = extractvalue %dx.types.CBufRet.f32 %3205, 0
  %3207 = extractvalue %dx.types.CBufRet.f32 %3205, 1
  %3208 = fsub fast float %3204, %3206
  %3209 = fdiv fast float %3208, %3207
  %3210 = call float @dx.op.unary.f32(i32 7, float %3209)  ; Saturate(value)
  %3211 = fmul fast float %3210, 2.000000e+00
  %3212 = fsub fast float 3.000000e+00, %3211
  %3213 = fmul fast float %3210, %3210
  %3214 = fmul fast float %3213, %3212
  %3215 = call float @dx.op.dot3.f32(i32 55, float %3193, float %3194, float %3195, float %2328, float %2329, float %2330)  ; Dot3(ax,ay,az,bx,by,bz)
  %3216 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3215)  ; FMax(a,b)
  %3217 = fmul fast float %3216, 0x400C5BF8A0000000
  %3218 = fmul fast float %3214, %3167
  %3219 = fmul fast float %3218, %3217
  %3220 = fadd fast float %3219, %3136
  %3221 = fmul fast float %3214, %3168
  %3222 = fmul fast float %3221, %3217
  %3223 = fadd fast float %3222, %3135
  %3224 = fmul fast float %3214, %3169
  %3225 = fmul fast float %3224, %3217
  %3226 = fadd fast float %3225, %3134
  br label %3227

; <label>:3227                                    ; preds = %3192, %3133, %3061
  %3228 = phi float [ %3226, %3192 ], [ %3134, %3133 ], [ %3073, %3061 ]
  %3229 = phi float [ %3223, %3192 ], [ %3135, %3133 ], [ %3072, %3061 ]
  %3230 = phi float [ %3220, %3192 ], [ %3136, %3133 ], [ %3071, %3061 ]
  %3231 = fcmp fast ogt float %2718, %2755
  %3232 = and i1 %3074, %3231
  %3233 = and i1 %3076, %3232
  %3234 = and i1 %3078, %3233
  %3235 = and i1 %3080, %3234
  br i1 %3235, label %3236, label %3293, !dx.controlflow.hints !105

; <label>:3236                                    ; preds = %3227
  %3237 = fmul fast float %2757, 0x3FC24924A0000000
  %3238 = fsub fast float %2718, %2755
  %3239 = fdiv fast float %3238, %3237
  %3240 = call float @dx.op.unary.f32(i32 7, float %3239)  ; Saturate(value)
  %3241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3242 = extractvalue %dx.types.CBufRet.f32 %3241, 0
  %3243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3244 = extractvalue %dx.types.CBufRet.f32 %3243, 0
  %3245 = extractvalue %dx.types.CBufRet.f32 %3243, 1
  %3246 = extractvalue %dx.types.CBufRet.f32 %3243, 2
  %3247 = fsub fast float %3242, %3230
  %3248 = fsub fast float %3244, %3068
  %3249 = fsub fast float %3245, %3069
  %3250 = fsub fast float %3246, %3070
  %3251 = fmul fast float %3247, %3240
  %3252 = fmul fast float %3248, %3240
  %3253 = fmul fast float %3249, %3240
  %3254 = fmul fast float %3250, %3240
  %3255 = fadd fast float %3251, %3230
  %3256 = fadd fast float %3252, %3068
  %3257 = fadd fast float %3253, %3069
  %3258 = fadd fast float %3254, %3070
  %3259 = extractvalue %dx.types.CBufRet.f32 %3241, 1
  %3260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3261 = extractvalue %dx.types.CBufRet.f32 %3260, 0
  %3262 = extractvalue %dx.types.CBufRet.f32 %3260, 1
  %3263 = extractvalue %dx.types.CBufRet.f32 %3260, 2
  %3264 = fsub fast float %3259, %3229
  %3265 = fsub fast float %3261, %3065
  %3266 = fsub fast float %3262, %3066
  %3267 = fsub fast float %3263, %3067
  %3268 = fmul fast float %3264, %3240
  %3269 = fmul fast float %3265, %3240
  %3270 = fmul fast float %3266, %3240
  %3271 = fmul fast float %3267, %3240
  %3272 = fadd fast float %3268, %3229
  %3273 = fadd fast float %3269, %3065
  %3274 = fadd fast float %3270, %3066
  %3275 = fadd fast float %3271, %3067
  %3276 = extractvalue %dx.types.CBufRet.f32 %3241, 2
  %3277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3278 = extractvalue %dx.types.CBufRet.f32 %3277, 0
  %3279 = extractvalue %dx.types.CBufRet.f32 %3277, 1
  %3280 = extractvalue %dx.types.CBufRet.f32 %3277, 2
  %3281 = fsub fast float %3276, %3228
  %3282 = fsub fast float %3278, %3062
  %3283 = fsub fast float %3279, %3063
  %3284 = fsub fast float %3280, %3064
  %3285 = fmul fast float %3281, %3240
  %3286 = fmul fast float %3282, %3240
  %3287 = fmul fast float %3283, %3240
  %3288 = fmul fast float %3284, %3240
  %3289 = fadd fast float %3285, %3228
  %3290 = fadd fast float %3286, %3062
  %3291 = fadd fast float %3287, %3063
  %3292 = fadd fast float %3288, %3064
  br label %3293

; <label>:3293                                    ; preds = %3236, %3227
  %3294 = phi float [ %3289, %3236 ], [ %3228, %3227 ]
  %3295 = phi float [ %3290, %3236 ], [ %3062, %3227 ]
  %3296 = phi float [ %3291, %3236 ], [ %3063, %3227 ]
  %3297 = phi float [ %3292, %3236 ], [ %3064, %3227 ]
  %3298 = phi float [ %3272, %3236 ], [ %3229, %3227 ]
  %3299 = phi float [ %3273, %3236 ], [ %3065, %3227 ]
  %3300 = phi float [ %3274, %3236 ], [ %3066, %3227 ]
  %3301 = phi float [ %3275, %3236 ], [ %3067, %3227 ]
  %3302 = phi float [ %3255, %3236 ], [ %3230, %3227 ]
  %3303 = phi float [ %3256, %3236 ], [ %3068, %3227 ]
  %3304 = phi float [ %3257, %3236 ], [ %3069, %3227 ]
  %3305 = phi float [ %3258, %3236 ], [ %3070, %3227 ]
  %3306 = extractvalue %dx.types.CBufRet.f32 %2880, 3
  %3307 = fmul fast float %3306, %3302
  %3308 = fmul fast float %3306, %3298
  %3309 = fmul fast float %3306, %3294
  %3310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3311 = extractvalue %dx.types.CBufRet.f32 %3310, 3
  %3312 = fmul fast float %3307, %3311
  %3313 = fmul fast float %3308, %3311
  %3314 = fmul fast float %3309, %3311
  %3315 = fmul fast float %3303, 1.500000e+00
  %3316 = fmul fast float %3315, %3306
  %3317 = fmul fast float %3316, %3311
  %3318 = fmul fast float %3304, 1.500000e+00
  %3319 = fmul fast float %3318, %3306
  %3320 = fmul fast float %3319, %3311
  %3321 = fmul fast float %3305, 1.500000e+00
  %3322 = fmul fast float %3321, %3306
  %3323 = fmul fast float %3322, %3311
  %3324 = fmul fast float %3299, 1.500000e+00
  %3325 = fmul fast float %3324, %3306
  %3326 = fmul fast float %3325, %3311
  %3327 = fmul fast float %3300, 1.500000e+00
  %3328 = fmul fast float %3327, %3306
  %3329 = fmul fast float %3328, %3311
  %3330 = fmul fast float %3301, 1.500000e+00
  %3331 = fmul fast float %3330, %3306
  %3332 = fmul fast float %3331, %3311
  %3333 = fmul fast float %3295, 1.500000e+00
  %3334 = fmul fast float %3333, %3306
  %3335 = fmul fast float %3334, %3311
  %3336 = fmul fast float %3296, 1.500000e+00
  %3337 = fmul fast float %3336, %3306
  %3338 = fmul fast float %3337, %3311
  %3339 = fmul fast float %3297, 1.500000e+00
  %3340 = fmul fast float %3339, %3306
  %3341 = fmul fast float %3340, %3311
  %3342 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3312)  ; FMax(a,b)
  %3343 = call float @dx.op.dot3.f32(i32 55, float %3317, float %3320, float %3323, float %3317, float %3320, float %3323)  ; Dot3(ax,ay,az,bx,by,bz)
  %3344 = fcmp fast oeq float %3343, 0.000000e+00
  %3345 = fcmp fast oeq float %3342, 0.000000e+00
  %3346 = or i1 %3345, %3344
  br i1 %3346, label %3376, label %3347

; <label>:3347                                    ; preds = %3293
  %3348 = fsub fast float -0.000000e+00, %3323
  %3349 = fsub fast float -0.000000e+00, %3317
  %3350 = call float @dx.op.unary.f32(i32 24, float %3343)  ; Sqrt(value)
  %3351 = fdiv fast float %3350, %3342
  %3352 = fcmp fast ogt float %3351, 0x3FFB6F8900000000
  %3353 = select i1 %3352, float 0x3FFB6F8900000000, float %3351
  %3354 = fmul fast float %3353, 0x3FE8A23460000000
  %3355 = call float @dx.op.unary.f32(i32 7, float %3354)  ; Saturate(value)
  %3356 = call float @dx.op.binary.f32(i32 35, float %3353, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3357 = fmul fast float %3355, %3342
  %3358 = fmul fast float %3356, 0x3FF279A740000000
  %3359 = fadd fast float %3358, -1.000000e+00
  %3360 = call float @dx.op.dot3.f32(i32 55, float %3348, float %3349, float %3320, float %3348, float %3349, float %3320)  ; Dot3(ax,ay,az,bx,by,bz)
  %3361 = call float @dx.op.unary.f32(i32 25, float %3360)  ; Rsqrt(value)
  %3362 = fmul fast float %3361, %3348
  %3363 = fmul fast float %3361, %3349
  %3364 = fmul fast float %3361, %3320
  %3365 = fmul fast float %3359, %3359
  %3366 = fsub fast float 1.000000e+00, %3365
  %3367 = fmul fast float %3356, 0x40005F8BE0000000
  %3368 = fsub fast float 0x400C5BF8A0000000, %3367
  %3369 = fdiv fast float %3357, %3368
  %3370 = fmul fast float %3369, 0x3FEE31C3C0000000
  %3371 = fmul fast float %3370, %3366
  %3372 = fmul fast float %3356, 0x3FDACB7480000000
  %3373 = fadd fast float %3372, 0xBFD7347680000000
  %3374 = fmul fast float %3373, %3369
  %3375 = fmul fast float %3374, %3366
  br label %3376

; <label>:3376                                    ; preds = %3347, %3293
  %3377 = phi float [ %3362, %3347 ], [ 0.000000e+00, %3293 ]
  %3378 = phi float [ %3363, %3347 ], [ 0.000000e+00, %3293 ]
  %3379 = phi float [ %3364, %3347 ], [ 0.000000e+00, %3293 ]
  %3380 = phi float [ %3371, %3347 ], [ 0.000000e+00, %3293 ]
  %3381 = phi float [ %3375, %3347 ], [ 0.000000e+00, %3293 ]
  %3382 = call float @dx.op.dot3.f32(i32 55, float %3377, float %3378, float %3379, float %2328, float %2329, float %2330)  ; Dot3(ax,ay,az,bx,by,bz)
  %3383 = fmul fast float %3382, %3382
  %3384 = fmul fast float %3383, 0x3FEE471020000000
  %3385 = fadd fast float %3384, 0xBFD42F6020000000
  %3386 = fmul fast float %3342, 0x3FD20DD760000000
  %3387 = fmul fast float %3385, %3381
  %3388 = fmul fast float %3380, 0x3FDF454380000000
  %3389 = fmul fast float %3388, %3382
  %3390 = fadd fast float %3389, %3386
  %3391 = fadd fast float %3390, %3387
  %3392 = call float @dx.op.dot3.f32(i32 55, float %3377, float %3378, float %3379, float %2342, float %2343, float %2344)  ; Dot3(ax,ay,az,bx,by,bz)
  %3393 = fmul fast float %3392, 0x3FDF454380000000
  %3394 = fmul fast float %3392, %3392
  %3395 = fmul fast float %3394, 0x3FEE471020000000
  %3396 = fadd fast float %3395, 0xBFD42F6020000000
  %3397 = call float @dx.op.dot3.f32(i32 55, float %3342, float %3380, float %3381, float 0x3FD20DD760000000, float %3393, float %3396)  ; Dot3(ax,ay,az,bx,by,bz)
  %3398 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3313)  ; FMax(a,b)
  %3399 = call float @dx.op.dot3.f32(i32 55, float %3326, float %3329, float %3332, float %3326, float %3329, float %3332)  ; Dot3(ax,ay,az,bx,by,bz)
  %3400 = fcmp fast oeq float %3399, 0.000000e+00
  %3401 = fcmp fast oeq float %3398, 0.000000e+00
  %3402 = or i1 %3401, %3400
  br i1 %3402, label %3432, label %3403

; <label>:3403                                    ; preds = %3376
  %3404 = fsub fast float -0.000000e+00, %3332
  %3405 = fsub fast float -0.000000e+00, %3326
  %3406 = call float @dx.op.unary.f32(i32 24, float %3399)  ; Sqrt(value)
  %3407 = fdiv fast float %3406, %3398
  %3408 = fcmp fast ogt float %3407, 0x3FFB6F8900000000
  %3409 = select i1 %3408, float 0x3FFB6F8900000000, float %3407
  %3410 = fmul fast float %3409, 0x3FE8A23460000000
  %3411 = call float @dx.op.unary.f32(i32 7, float %3410)  ; Saturate(value)
  %3412 = call float @dx.op.binary.f32(i32 35, float %3409, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3413 = fmul fast float %3411, %3398
  %3414 = fmul fast float %3412, 0x3FF279A740000000
  %3415 = fadd fast float %3414, -1.000000e+00
  %3416 = call float @dx.op.dot3.f32(i32 55, float %3404, float %3405, float %3329, float %3404, float %3405, float %3329)  ; Dot3(ax,ay,az,bx,by,bz)
  %3417 = call float @dx.op.unary.f32(i32 25, float %3416)  ; Rsqrt(value)
  %3418 = fmul fast float %3417, %3404
  %3419 = fmul fast float %3417, %3405
  %3420 = fmul fast float %3417, %3329
  %3421 = fmul fast float %3415, %3415
  %3422 = fsub fast float 1.000000e+00, %3421
  %3423 = fmul fast float %3412, 0x40005F8BE0000000
  %3424 = fsub fast float 0x400C5BF8A0000000, %3423
  %3425 = fdiv fast float %3413, %3424
  %3426 = fmul fast float %3425, 0x3FEE31C3C0000000
  %3427 = fmul fast float %3426, %3422
  %3428 = fmul fast float %3412, 0x3FDACB7480000000
  %3429 = fadd fast float %3428, 0xBFD7347680000000
  %3430 = fmul fast float %3429, %3425
  %3431 = fmul fast float %3430, %3422
  br label %3432

; <label>:3432                                    ; preds = %3403, %3376
  %3433 = phi float [ %3418, %3403 ], [ 0.000000e+00, %3376 ]
  %3434 = phi float [ %3419, %3403 ], [ 0.000000e+00, %3376 ]
  %3435 = phi float [ %3420, %3403 ], [ 0.000000e+00, %3376 ]
  %3436 = phi float [ %3427, %3403 ], [ 0.000000e+00, %3376 ]
  %3437 = phi float [ %3431, %3403 ], [ 0.000000e+00, %3376 ]
  %3438 = call float @dx.op.dot3.f32(i32 55, float %3433, float %3434, float %3435, float %2328, float %2329, float %2330)  ; Dot3(ax,ay,az,bx,by,bz)
  %3439 = fmul fast float %3438, %3438
  %3440 = fmul fast float %3439, 0x3FEE471020000000
  %3441 = fadd fast float %3440, 0xBFD42F6020000000
  %3442 = fmul fast float %3398, 0x3FD20DD760000000
  %3443 = fmul fast float %3441, %3437
  %3444 = fmul fast float %3436, 0x3FDF454380000000
  %3445 = fmul fast float %3444, %3438
  %3446 = fadd fast float %3445, %3442
  %3447 = fadd fast float %3446, %3443
  %3448 = call float @dx.op.dot3.f32(i32 55, float %3433, float %3434, float %3435, float %2342, float %2343, float %2344)  ; Dot3(ax,ay,az,bx,by,bz)
  %3449 = fmul fast float %3448, 0x3FDF454380000000
  %3450 = fmul fast float %3448, %3448
  %3451 = fmul fast float %3450, 0x3FEE471020000000
  %3452 = fadd fast float %3451, 0xBFD42F6020000000
  %3453 = call float @dx.op.dot3.f32(i32 55, float %3398, float %3436, float %3437, float 0x3FD20DD760000000, float %3449, float %3452)  ; Dot3(ax,ay,az,bx,by,bz)
  %3454 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3314)  ; FMax(a,b)
  %3455 = call float @dx.op.dot3.f32(i32 55, float %3335, float %3338, float %3341, float %3335, float %3338, float %3341)  ; Dot3(ax,ay,az,bx,by,bz)
  %3456 = fcmp fast oeq float %3455, 0.000000e+00
  %3457 = fcmp fast oeq float %3454, 0.000000e+00
  %3458 = or i1 %3457, %3456
  br i1 %3458, label %3488, label %3459

; <label>:3459                                    ; preds = %3432
  %3460 = fsub fast float -0.000000e+00, %3341
  %3461 = fsub fast float -0.000000e+00, %3335
  %3462 = call float @dx.op.unary.f32(i32 24, float %3455)  ; Sqrt(value)
  %3463 = fdiv fast float %3462, %3454
  %3464 = fcmp fast ogt float %3463, 0x3FFB6F8900000000
  %3465 = select i1 %3464, float 0x3FFB6F8900000000, float %3463
  %3466 = fmul fast float %3465, 0x3FE8A23460000000
  %3467 = call float @dx.op.unary.f32(i32 7, float %3466)  ; Saturate(value)
  %3468 = call float @dx.op.binary.f32(i32 35, float %3465, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3469 = fmul fast float %3467, %3454
  %3470 = fmul fast float %3468, 0x3FF279A740000000
  %3471 = fadd fast float %3470, -1.000000e+00
  %3472 = call float @dx.op.dot3.f32(i32 55, float %3460, float %3461, float %3338, float %3460, float %3461, float %3338)  ; Dot3(ax,ay,az,bx,by,bz)
  %3473 = call float @dx.op.unary.f32(i32 25, float %3472)  ; Rsqrt(value)
  %3474 = fmul fast float %3473, %3460
  %3475 = fmul fast float %3473, %3461
  %3476 = fmul fast float %3473, %3338
  %3477 = fmul fast float %3471, %3471
  %3478 = fsub fast float 1.000000e+00, %3477
  %3479 = fmul fast float %3468, 0x40005F8BE0000000
  %3480 = fsub fast float 0x400C5BF8A0000000, %3479
  %3481 = fdiv fast float %3469, %3480
  %3482 = fmul fast float %3481, 0x3FEE31C3C0000000
  %3483 = fmul fast float %3482, %3478
  %3484 = fmul fast float %3468, 0x3FDACB7480000000
  %3485 = fadd fast float %3484, 0xBFD7347680000000
  %3486 = fmul fast float %3485, %3481
  %3487 = fmul fast float %3486, %3478
  br label %3488

; <label>:3488                                    ; preds = %3459, %3432
  %3489 = phi float [ %3474, %3459 ], [ 0.000000e+00, %3432 ]
  %3490 = phi float [ %3475, %3459 ], [ 0.000000e+00, %3432 ]
  %3491 = phi float [ %3476, %3459 ], [ 0.000000e+00, %3432 ]
  %3492 = phi float [ %3483, %3459 ], [ 0.000000e+00, %3432 ]
  %3493 = phi float [ %3487, %3459 ], [ 0.000000e+00, %3432 ]
  %3494 = call float @dx.op.dot3.f32(i32 55, float %3489, float %3490, float %3491, float %2328, float %2329, float %2330)  ; Dot3(ax,ay,az,bx,by,bz)
  %3495 = fmul fast float %3494, %3494
  %3496 = fmul fast float %3495, 0x3FEE471020000000
  %3497 = fadd fast float %3496, 0xBFD42F6020000000
  %3498 = fmul fast float %3454, 0x3FD20DD760000000
  %3499 = fmul fast float %3497, %3493
  %3500 = fmul fast float %3492, 0x3FDF454380000000
  %3501 = fmul fast float %3500, %3494
  %3502 = fadd fast float %3501, %3498
  %3503 = fadd fast float %3502, %3499
  %3504 = call float @dx.op.dot3.f32(i32 55, float %3489, float %3490, float %3491, float %2342, float %2343, float %2344)  ; Dot3(ax,ay,az,bx,by,bz)
  %3505 = fmul fast float %3504, 0x3FDF454380000000
  %3506 = fmul fast float %3504, %3504
  %3507 = fmul fast float %3506, 0x3FEE471020000000
  %3508 = fadd fast float %3507, 0xBFD42F6020000000
  %3509 = call float @dx.op.dot3.f32(i32 55, float %3454, float %3492, float %3493, float 0x3FD20DD760000000, float %3505, float %3508)  ; Dot3(ax,ay,az,bx,by,bz)
  %3510 = call float @dx.op.binary.f32(i32 35, float %3391, float 0.000000e+00)  ; FMax(a,b)
  %3511 = call float @dx.op.binary.f32(i32 35, float %3447, float 0.000000e+00)  ; FMax(a,b)
  %3512 = call float @dx.op.binary.f32(i32 35, float %3503, float 0.000000e+00)  ; FMax(a,b)
  %3513 = call float @dx.op.binary.f32(i32 35, float %3397, float 0.000000e+00)  ; FMax(a,b)
  %3514 = call float @dx.op.binary.f32(i32 35, float %3453, float 0.000000e+00)  ; FMax(a,b)
  %3515 = call float @dx.op.binary.f32(i32 35, float %3509, float 0.000000e+00)  ; FMax(a,b)
  %3516 = fsub fast float %2712, %3510
  %3517 = fsub fast float %2713, %3511
  %3518 = fsub fast float %2714, %3512
  %3519 = fmul fast float %3516, %2393
  %3520 = fmul fast float %3517, %2393
  %3521 = fmul fast float %3518, %2393
  %3522 = fadd fast float %3519, %3510
  %3523 = fadd fast float %3520, %3511
  %3524 = fadd fast float %3521, %3512
  %3525 = fsub fast float %2709, %3513
  %3526 = fsub fast float %2710, %3514
  %3527 = fsub fast float %2711, %3515
  %3528 = fmul fast float %3525, %2393
  %3529 = fmul fast float %3526, %2393
  %3530 = fmul fast float %3527, %2393
  %3531 = fadd fast float %3528, %3513
  %3532 = fadd fast float %3529, %3514
  %3533 = fadd fast float %3530, %3515
  br label %3534

; <label>:3534                                    ; preds = %3488, %2708
  %3535 = phi float [ %3531, %3488 ], [ %2709, %2708 ]
  %3536 = phi float [ %3532, %3488 ], [ %2710, %2708 ]
  %3537 = phi float [ %3533, %3488 ], [ %2711, %2708 ]
  %3538 = phi float [ %3522, %3488 ], [ %2712, %2708 ]
  %3539 = phi float [ %3523, %3488 ], [ %2713, %2708 ]
  %3540 = phi float [ %3524, %3488 ], [ %2714, %2708 ]
  %3541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3542 = extractvalue %dx.types.CBufRet.f32 %3541, 0
  %3543 = call float @dx.op.binary.f32(i32 36, float %2325, float %3542)  ; FMin(a,b)
  %3544 = fsub fast float 1.000000e+00, %2345
  %3545 = fmul fast float %3543, %3544
  %3546 = fsub fast float 1.000000e+00, %3545
  %3547 = bitcast float %3546 to i32
  %3548 = sub nsw i32 2129859010, %3547
  %3549 = bitcast i32 %3548 to float
  %3550 = call float @dx.op.binary.f32(i32 36, float %2326, float %3542)  ; FMin(a,b)
  %3551 = fmul fast float %3550, %3544
  %3552 = fsub fast float 1.000000e+00, %3551
  %3553 = bitcast float %3552 to i32
  %3554 = sub nsw i32 2129859010, %3553
  %3555 = bitcast i32 %3554 to float
  %3556 = call float @dx.op.binary.f32(i32 36, float %2327, float %3542)  ; FMin(a,b)
  %3557 = fmul fast float %3556, %3544
  %3558 = fsub fast float 1.000000e+00, %3557
  %3559 = bitcast float %3558 to i32
  %3560 = sub nsw i32 2129859010, %3559
  %3561 = bitcast i32 %3560 to float
  %3562 = fmul fast float %3538, %2345
  %3563 = fmul fast float %3562, %3549
  %3564 = fmul fast float %3539, %2345
  %3565 = fmul fast float %3564, %3555
  %3566 = fmul fast float %3540, %2345
  %3567 = fmul fast float %3566, %3561
  %3568 = call float @dx.op.binary.f32(i32 36, float %2322, float %3542)  ; FMin(a,b)
  %3569 = fmul fast float %3568, %3544
  %3570 = fsub fast float 1.000000e+00, %3569
  %3571 = bitcast float %3570 to i32
  %3572 = sub nsw i32 2129859010, %3571
  %3573 = bitcast i32 %3572 to float
  %3574 = call float @dx.op.binary.f32(i32 36, float %2323, float %3542)  ; FMin(a,b)
  %3575 = fmul fast float %3574, %3544
  %3576 = fsub fast float 1.000000e+00, %3575
  %3577 = bitcast float %3576 to i32
  %3578 = sub nsw i32 2129859010, %3577
  %3579 = bitcast i32 %3578 to float
  %3580 = call float @dx.op.binary.f32(i32 36, float %2334, float %3542)  ; FMin(a,b)
  %3581 = fmul fast float %3580, %3544
  %3582 = fsub fast float 1.000000e+00, %3581
  %3583 = bitcast float %3582 to i32
  %3584 = sub nsw i32 2129859010, %3583
  %3585 = bitcast i32 %3584 to float
  %3586 = fmul fast float %3535, %2345
  %3587 = fmul fast float %3586, %3573
  %3588 = fmul fast float %3536, %2345
  %3589 = fmul fast float %3588, %3579
  %3590 = fmul fast float %3537, %2345
  %3591 = fmul fast float %3590, %3585
  %3592 = call float @dx.op.dot3.f32(i32 55, float %3563, float %3565, float %3567, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3593 = select i1 %261, float 0.000000e+00, float %3563
  %3594 = select i1 %261, float %3592, float %3565
  %3595 = select i1 %261, float 0.000000e+00, float %3567
  %3596 = call float @dx.op.dot3.f32(i32 55, float %3587, float %3589, float %3591, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3597 = select i1 %261, float 0.000000e+00, float %3587
  %3598 = select i1 %261, float %3596, float %3589
  %3599 = select i1 %261, float 0.000000e+00, float %3591
  %3600 = fmul fast float %1148, %1148
  %3601 = call float @dx.op.unary.f32(i32 7, float %3600)  ; Saturate(value)
  %3602 = fmul fast float %2336, 9.843750e-01
  %3603 = fmul fast float %2331, 9.843750e-01
  %3604 = fadd fast float %3602, 7.812500e-03
  %3605 = fadd fast float %3603, 7.812500e-03
  %3606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %3604, float %3605, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.ResRet.f32 %3606, 2
  %3610 = extractvalue %dx.types.ResRet.f32 %3606, 3
  %3611 = fsub fast float 1.000000e+00, %3601
  %3612 = fsub fast float %3609, %3607
  %3613 = fsub fast float %3610, %3608
  %3614 = fmul fast float %3612, %3611
  %3615 = fmul fast float %3613, %3611
  %3616 = fadd fast float %3614, %3607
  %3617 = fadd fast float %3615, %3608
  %3618 = fmul fast float %3616, %2322
  %3619 = fmul fast float %3616, %2323
  %3620 = fmul fast float %3616, %2334
  %3621 = fadd fast float %3618, %3617
  %3622 = fadd fast float %3619, %3617
  %3623 = fadd fast float %3620, %3617
  %3624 = fcmp fast ogt float %1692, 0.000000e+00
  br i1 %3624, label %3625, label %3651

; <label>:3625                                    ; preds = %3534
  %3626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1692, float %2336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3627 = extractvalue %dx.types.ResRet.f32 %3626, 0
  %3628 = extractvalue %dx.types.ResRet.f32 %3626, 1
  %3629 = extractvalue %dx.types.ResRet.f32 %3626, 2
  %3630 = fadd fast float %3627, -5.000000e-01
  %3631 = fadd fast float %3628, -5.000000e-01
  %3632 = fadd fast float %3629, -5.000000e-01
  %3633 = fsub fast float 1.000000e+00, %2322
  %3634 = fsub fast float 1.000000e+00, %2323
  %3635 = fsub fast float 1.000000e+00, %2334
  %3636 = fmul fast float %2322, 4.000000e+00
  %3637 = fmul fast float %3636, %3633
  %3638 = fmul fast float %3637, %3630
  %3639 = fmul fast float %2323, 4.000000e+00
  %3640 = fmul fast float %3639, %3634
  %3641 = fmul fast float %3640, %3631
  %3642 = fmul fast float %2334, 4.000000e+00
  %3643 = fmul fast float %3642, %3635
  %3644 = fmul fast float %3643, %3632
  %3645 = fadd fast float %3638, %3621
  %3646 = fadd fast float %3641, %3622
  %3647 = fadd fast float %3644, %3623
  %3648 = call float @dx.op.unary.f32(i32 7, float %3645)  ; Saturate(value)
  %3649 = call float @dx.op.unary.f32(i32 7, float %3646)  ; Saturate(value)
  %3650 = call float @dx.op.unary.f32(i32 7, float %3647)  ; Saturate(value)
  br label %3651

; <label>:3651                                    ; preds = %3625, %3534
  %3652 = phi float [ %3648, %3625 ], [ %3621, %3534 ]
  %3653 = phi float [ %3649, %3625 ], [ %3622, %3534 ]
  %3654 = phi float [ %3650, %3625 ], [ %3623, %3534 ]
  %3655 = call float @dx.op.binary.f32(i32 35, float %3653, float %3654)  ; FMax(a,b)
  %3656 = call float @dx.op.binary.f32(i32 35, float %3652, float %3655)  ; FMax(a,b)
  %3657 = fsub fast float 1.000000e+00, %3656
  %3658 = fmul fast float %3657, %3593
  %3659 = fmul fast float %3657, %3594
  %3660 = fmul fast float %3657, %3595
  %3661 = call float @dx.op.dot3.f32(i32 55, float %2325, float %2326, float %2327, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3662 = fcmp fast ogt float %3661, 0x3E7FF19E20000000
  %3663 = fdiv fast float 1.000000e+00, %3661
  %3664 = select i1 %3662, float %3663, float 0.000000e+00
  %3665 = fmul fast float %3664, %2325
  %3666 = fmul fast float %3664, %2326
  %3667 = fmul fast float %3664, %2327
  %3668 = fadd fast float %3665, -1.000000e+00
  %3669 = fadd fast float %3666, -1.000000e+00
  %3670 = fadd fast float %3667, -1.000000e+00
  %3671 = fmul fast float %3668, 5.000000e-01
  %3672 = fmul fast float %3669, 5.000000e-01
  %3673 = fmul fast float %3670, 5.000000e-01
  %3674 = fadd fast float %3671, 1.000000e+00
  %3675 = fadd fast float %3672, 1.000000e+00
  %3676 = fadd fast float %3673, 1.000000e+00
  %3677 = call float @dx.op.binary.f32(i32 35, float %2336, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3678 = fdiv fast float %1148, %3677
  %3679 = fcmp fast olt float %1762, 1.270000e+02
  %3680 = fcmp fast olt float %1763, 1.270000e+02
  %3681 = fcmp fast olt float %1764, 1.270000e+02
  %3682 = fmul fast float %1762, 0xBFF7154760000000
  %3683 = fmul fast float %3682, %3678
  %3684 = fmul fast float %1763, 0xBFF7154760000000
  %3685 = fmul fast float %3684, %3678
  %3686 = fmul fast float %1764, 0xBFF7154760000000
  %3687 = fmul fast float %3686, %3678
  %3688 = call float @dx.op.unary.f32(i32 21, float %3683)  ; Exp(value)
  %3689 = call float @dx.op.unary.f32(i32 21, float %3685)  ; Exp(value)
  %3690 = call float @dx.op.unary.f32(i32 21, float %3687)  ; Exp(value)
  %3691 = call float @dx.op.unary.f32(i32 7, float %3688)  ; Saturate(value)
  %3692 = call float @dx.op.unary.f32(i32 7, float %3689)  ; Saturate(value)
  %3693 = call float @dx.op.unary.f32(i32 7, float %3690)  ; Saturate(value)
  %3694 = select i1 %3679, float %3691, float 0.000000e+00
  %3695 = select i1 %3680, float %3692, float 0.000000e+00
  %3696 = select i1 %3681, float %3693, float 0.000000e+00
  %3697 = fmul fast float %3694, %3657
  %3698 = fmul fast float %3695, %3657
  %3699 = fmul fast float %3696, %3657
  %3700 = fadd fast float %3697, -1.000000e+00
  %3701 = fadd fast float %3698, -1.000000e+00
  %3702 = fadd fast float %3699, -1.000000e+00
  %3703 = fmul fast float %3652, %3597
  %3704 = fmul fast float %3653, %3598
  %3705 = fmul fast float %3654, %3599
  %3706 = fsub fast float 1.000000e+00, %2336
  %3707 = bitcast float %3706 to i32
  %3708 = sitofp i32 %3707 to float
  %3709 = fmul fast float %3708, 5.000000e+00
  %3710 = fadd fast float %3709, 0xC1EFBF8940000000
  %3711 = fptosi float %3710 to i32
  %3712 = bitcast i32 %3711 to float
  %3713 = fmul fast float %3712, %1691
  %3714 = fmul fast float %3593, %3713
  %3715 = fmul fast float %3714, %3657
  %3716 = fmul fast float %3715, %3674
  %3717 = fmul fast float %3594, %3713
  %3718 = fmul fast float %3717, %3657
  %3719 = fmul fast float %3718, %3675
  %3720 = fmul fast float %3595, %3713
  %3721 = fmul fast float %3720, %3657
  %3722 = fmul fast float %3721, %3676
  %3723 = fmul fast float %3658, %1739
  %3724 = fmul fast float %3659, %1739
  %3725 = fmul fast float %3660, %1739
  %3726 = fadd fast float %3703, %1693
  %3727 = fadd fast float %3726, %3716
  %3728 = fmul fast float %3727, %1739
  %3729 = fadd fast float %3704, %1694
  %3730 = fadd fast float %3729, %3719
  %3731 = fmul fast float %3730, %1739
  %3732 = fadd fast float %3705, %1695
  %3733 = fadd fast float %3732, %3722
  %3734 = fmul fast float %3733, %1739
  %3735 = bitcast i32 %2348 to float
  %3736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3737 = extractvalue %dx.types.CBufRet.f32 %3736, 3
  %3738 = fcmp fast oeq float %3737, 0.000000e+00
  br i1 %3738, label %4814, label %3739

; <label>:3739                                    ; preds = %3651
  %3740 = extractvalue %dx.types.CBufRet.f32 %3736, 0
  %3741 = extractvalue %dx.types.CBufRet.f32 %3736, 1
  %3742 = extractvalue %dx.types.CBufRet.f32 %3736, 2
  %3743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3744 = extractvalue %dx.types.CBufRet.f32 %3743, 0
  %3745 = extractvalue %dx.types.CBufRet.f32 %3743, 1
  %3746 = extractvalue %dx.types.CBufRet.f32 %3743, 2
  %3747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3748 = extractvalue %dx.types.CBufRet.f32 %3747, 0
  %3749 = extractvalue %dx.types.CBufRet.f32 %3747, 1
  %3750 = call float @dx.op.dot3.f32(i32 55, float %3744, float %3745, float %3746, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3751 = select i1 %261, float %3748, float %3744
  %3752 = select i1 %261, float %3750, float %3745
  %3753 = select i1 %261, float %3749, float %3746
  %3754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3755 = extractvalue %dx.types.CBufRet.f32 %3754, 2
  %3756 = fmul fast float %3755, %70
  %3757 = fmul fast float %3755, %71
  %3758 = fmul fast float %3755, %72
  %3759 = fadd fast float %3756, %138
  %3760 = fadd fast float %3757, %139
  %3761 = fadd fast float %3758, %140
  %3762 = fcmp fast olt float %3737, 0.000000e+00
  br i1 %3762, label %4384, label %3763

; <label>:3763                                    ; preds = %3739
  %3764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3765 = extractvalue %dx.types.CBufRet.f32 %3764, 0
  %3766 = extractvalue %dx.types.CBufRet.f32 %3764, 1
  %3767 = extractvalue %dx.types.CBufRet.f32 %3764, 2
  %3768 = extractvalue %dx.types.CBufRet.f32 %3764, 3
  %3769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3770 = extractvalue %dx.types.CBufRet.f32 %3769, 0
  %3771 = extractvalue %dx.types.CBufRet.f32 %3769, 1
  %3772 = extractvalue %dx.types.CBufRet.f32 %3769, 2
  %3773 = extractvalue %dx.types.CBufRet.f32 %3769, 3
  %3774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3775 = extractvalue %dx.types.CBufRet.f32 %3774, 0
  %3776 = extractvalue %dx.types.CBufRet.f32 %3774, 1
  %3777 = extractvalue %dx.types.CBufRet.f32 %3774, 2
  %3778 = extractvalue %dx.types.CBufRet.f32 %3774, 3
  %3779 = fmul fast float %3765, %3759
  %3780 = call float @dx.op.tertiary.f32(i32 46, float %3760, float %3766, float %3779)  ; FMad(a,b,c)
  %3781 = call float @dx.op.tertiary.f32(i32 46, float %3761, float %3767, float %3780)  ; FMad(a,b,c)
  %3782 = fadd fast float %3781, %3768
  %3783 = fmul fast float %3770, %3759
  %3784 = call float @dx.op.tertiary.f32(i32 46, float %3760, float %3771, float %3783)  ; FMad(a,b,c)
  %3785 = call float @dx.op.tertiary.f32(i32 46, float %3761, float %3772, float %3784)  ; FMad(a,b,c)
  %3786 = fadd fast float %3785, %3773
  %3787 = fmul fast float %3775, %3759
  %3788 = call float @dx.op.tertiary.f32(i32 46, float %3760, float %3776, float %3787)  ; FMad(a,b,c)
  %3789 = call float @dx.op.tertiary.f32(i32 46, float %3761, float %3777, float %3788)  ; FMad(a,b,c)
  %3790 = fadd fast float %3789, %3778
  %3791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3792 = extractvalue %dx.types.CBufRet.f32 %3791, 0
  %3793 = extractvalue %dx.types.CBufRet.f32 %3791, 1
  %3794 = extractvalue %dx.types.CBufRet.f32 %3791, 3
  %3795 = fmul fast float %3794, %3782
  %3796 = fmul fast float %3794, %3786
  %3797 = fadd fast float %3795, %3792
  %3798 = fadd fast float %3796, %3793
  %3799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3800 = extractvalue %dx.types.CBufRet.f32 %3799, 0
  %3801 = extractvalue %dx.types.CBufRet.f32 %3799, 1
  %3802 = extractvalue %dx.types.CBufRet.f32 %3799, 3
  %3803 = fmul fast float %3802, %3782
  %3804 = fmul fast float %3802, %3786
  %3805 = fadd fast float %3803, %3800
  %3806 = fadd fast float %3804, %3801
  %3807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3808 = extractvalue %dx.types.CBufRet.f32 %3807, 1
  %3809 = fsub fast float %3808, %3790
  %3810 = extractvalue %dx.types.CBufRet.f32 %3807, 2
  %3811 = fmul fast float %3809, %3810
  %3812 = fsub fast float 1.000000e+00, %3811
  %3813 = call float @dx.op.unary.f32(i32 7, float %3812)  ; Saturate(value)
  %3814 = extractvalue %dx.types.CBufRet.f32 %3799, 2
  %3815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3816 = extractvalue %dx.types.CBufRet.f32 %3815, 2
  %3817 = fadd fast float %3816, %3814
  %3818 = fcmp fast ogt float %3817, 0.000000e+00
  br i1 %3818, label %3819, label %3843

; <label>:3819                                    ; preds = %3763
  %3820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3821 = extractvalue %dx.types.CBufRet.f32 %3820, 0
  %3822 = extractvalue %dx.types.CBufRet.f32 %3820, 1
  %3823 = fsub fast float %3805, %3821
  %3824 = fsub fast float %3806, %3822
  %3825 = fcmp fast olt float %3823, 0.000000e+00
  %3826 = fcmp fast olt float %3824, 0.000000e+00
  %3827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3828 = extractvalue %dx.types.CBufRet.f32 %3827, 0
  %3829 = extractvalue %dx.types.CBufRet.f32 %3827, 1
  %3830 = extractvalue %dx.types.CBufRet.f32 %3827, 2
  %3831 = extractvalue %dx.types.CBufRet.f32 %3827, 3
  %3832 = select i1 %3825, float %3828, float %3830
  %3833 = select i1 %3826, float %3829, float %3831
  %3834 = fmul fast float %3832, %3823
  %3835 = fmul fast float %3833, %3824
  %3836 = call float @dx.op.unary.f32(i32 6, float %3834)  ; FAbs(value)
  %3837 = call float @dx.op.unary.f32(i32 6, float %3835)  ; FAbs(value)
  %3838 = extractvalue %dx.types.CBufRet.f32 %3754, 0
  %3839 = call float @dx.op.binary.f32(i32 35, float %3836, float %3837)  ; FMax(a,b)
  %3840 = fsub fast float %3838, %3839
  %3841 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3842 = fmul fast float %3841, %3813
  br label %3843

; <label>:3843                                    ; preds = %3819, %3763
  %3844 = phi float [ %3842, %3819 ], [ 0.000000e+00, %3763 ]
  %3845 = extractvalue %dx.types.CBufRet.f32 %3791, 2
  %3846 = extractvalue %dx.types.CBufRet.f32 %3815, 1
  %3847 = fadd fast float %3846, %3845
  %3848 = fcmp fast ogt float %3847, 0.000000e+00
  %3849 = extractvalue %dx.types.CBufRet.f32 %3754, 0
  br i1 %3848, label %3850, label %3873

; <label>:3850                                    ; preds = %3843
  %3851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3852 = extractvalue %dx.types.CBufRet.f32 %3851, 0
  %3853 = extractvalue %dx.types.CBufRet.f32 %3851, 1
  %3854 = fsub fast float %3797, %3852
  %3855 = fsub fast float %3798, %3853
  %3856 = fcmp fast olt float %3854, 0.000000e+00
  %3857 = fcmp fast olt float %3855, 0.000000e+00
  %3858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3859 = extractvalue %dx.types.CBufRet.f32 %3858, 0
  %3860 = extractvalue %dx.types.CBufRet.f32 %3858, 1
  %3861 = extractvalue %dx.types.CBufRet.f32 %3858, 2
  %3862 = extractvalue %dx.types.CBufRet.f32 %3858, 3
  %3863 = select i1 %3856, float %3859, float %3861
  %3864 = select i1 %3857, float %3860, float %3862
  %3865 = fmul fast float %3863, %3854
  %3866 = fmul fast float %3864, %3855
  %3867 = call float @dx.op.unary.f32(i32 6, float %3865)  ; FAbs(value)
  %3868 = call float @dx.op.unary.f32(i32 6, float %3866)  ; FAbs(value)
  %3869 = call float @dx.op.binary.f32(i32 35, float %3867, float %3868)  ; FMax(a,b)
  %3870 = fsub fast float %3849, %3869
  %3871 = call float @dx.op.unary.f32(i32 7, float %3870)  ; Saturate(value)
  %3872 = fmul fast float %3871, %3813
  br label %3873

; <label>:3873                                    ; preds = %3850, %3843
  %3874 = phi float [ %3872, %3850 ], [ 0.000000e+00, %3843 ]
  %3875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3876 = extractvalue %dx.types.CBufRet.f32 %3875, 1
  %3877 = call float @dx.op.unary.f32(i32 7, float %3876)  ; Saturate(value)
  %3878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3879 = extractvalue %dx.types.CBufRet.f32 %3878, 0
  %3880 = extractvalue %dx.types.CBufRet.f32 %3878, 1
  %3881 = fsub fast float %3782, %3879
  %3882 = fsub fast float %3786, %3880
  %3883 = fcmp fast olt float %3881, 0.000000e+00
  %3884 = fcmp fast olt float %3882, 0.000000e+00
  %3885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3886 = extractvalue %dx.types.CBufRet.f32 %3885, 0
  %3887 = extractvalue %dx.types.CBufRet.f32 %3885, 1
  %3888 = extractvalue %dx.types.CBufRet.f32 %3885, 2
  %3889 = extractvalue %dx.types.CBufRet.f32 %3885, 3
  %3890 = select i1 %3883, float %3886, float %3888
  %3891 = select i1 %3884, float %3887, float %3889
  %3892 = fmul fast float %3890, %3881
  %3893 = fmul fast float %3891, %3882
  %3894 = call float @dx.op.unary.f32(i32 6, float %3892)  ; FAbs(value)
  %3895 = call float @dx.op.unary.f32(i32 6, float %3893)  ; FAbs(value)
  %3896 = call float @dx.op.binary.f32(i32 35, float %3894, float %3895)  ; FMax(a,b)
  %3897 = fsub fast float %3849, %3896
  %3898 = call float @dx.op.unary.f32(i32 7, float %3897)  ; Saturate(value)
  %3899 = call float @dx.op.binary.f32(i32 36, float %3898, float %3877)  ; FMin(a,b)
  %3900 = fmul fast float %3899, %3813
  %3901 = fsub fast float %3874, %3900
  %3902 = fsub fast float %3844, %3874
  %3903 = fsub fast float %3902, %3900
  %3904 = call float @dx.op.binary.f32(i32 35, float %3874, float %3844)  ; FMax(a,b)
  %3905 = call float @dx.op.binary.f32(i32 35, float %3900, float %3904)  ; FMax(a,b)
  %3906 = fcmp fast olt float %3905, 1.000000e+00
  br i1 %3906, label %3907, label %4305, !dx.controlflow.hints !106

; <label>:3907                                    ; preds = %3873
  %3908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3909 = extractvalue %dx.types.CBufRet.f32 %3908, 0
  %3910 = fcmp fast une float %3909, 0.000000e+00
  br i1 %3910, label %3911, label %4305, !dx.controlflow.hints !107

; <label>:3911                                    ; preds = %3907
  %3912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3913 = extractvalue %dx.types.CBufRet.f32 %3912, 0
  %3914 = extractvalue %dx.types.CBufRet.f32 %3912, 1
  %3915 = extractvalue %dx.types.CBufRet.f32 %3912, 2
  %3916 = extractvalue %dx.types.CBufRet.f32 %3912, 3
  %3917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3918 = extractvalue %dx.types.CBufRet.f32 %3917, 0
  %3919 = extractvalue %dx.types.CBufRet.f32 %3917, 1
  %3920 = extractvalue %dx.types.CBufRet.f32 %3917, 2
  %3921 = extractvalue %dx.types.CBufRet.f32 %3917, 3
  %3922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3923 = extractvalue %dx.types.CBufRet.f32 %3922, 0
  %3924 = extractvalue %dx.types.CBufRet.f32 %3922, 1
  %3925 = extractvalue %dx.types.CBufRet.f32 %3922, 2
  %3926 = extractvalue %dx.types.CBufRet.f32 %3922, 3
  %3927 = fmul fast float %3913, %3759
  %3928 = call float @dx.op.tertiary.f32(i32 46, float %3760, float %3914, float %3927)  ; FMad(a,b,c)
  %3929 = call float @dx.op.tertiary.f32(i32 46, float %3761, float %3915, float %3928)  ; FMad(a,b,c)
  %3930 = fadd fast float %3929, %3916
  %3931 = fmul fast float %3918, %3759
  %3932 = call float @dx.op.tertiary.f32(i32 46, float %3760, float %3919, float %3931)  ; FMad(a,b,c)
  %3933 = call float @dx.op.tertiary.f32(i32 46, float %3761, float %3920, float %3932)  ; FMad(a,b,c)
  %3934 = fadd fast float %3933, %3921
  %3935 = fmul fast float %3923, %3759
  %3936 = call float @dx.op.tertiary.f32(i32 46, float %3760, float %3924, float %3935)  ; FMad(a,b,c)
  %3937 = call float @dx.op.tertiary.f32(i32 46, float %3761, float %3925, float %3936)  ; FMad(a,b,c)
  %3938 = fadd fast float %3937, %3926
  %3939 = fcmp fast oge float %3930, 1.000000e+00
  %3940 = fcmp fast oge float %3934, 1.000000e+00
  %3941 = or i1 %3939, %3940
  %3942 = fcmp fast olt float %3930, 0.000000e+00
  %3943 = fcmp fast olt float %3934, 0.000000e+00
  %3944 = or i1 %3942, %3943
  %3945 = or i1 %3941, %3944
  br i1 %3945, label %4305, label %3946, !dx.controlflow.hints !108

; <label>:3946                                    ; preds = %3911
  %3947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3948 = extractvalue %dx.types.CBufRet.f32 %3947, 0
  %3949 = extractvalue %dx.types.CBufRet.f32 %3947, 1
  %3950 = extractvalue %dx.types.CBufRet.f32 %3947, 2
  %3951 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3952 = extractvalue %dx.types.CBufRet.i32 %3951, 2
  %3953 = uitofp i32 %3952 to float
  %3954 = extractvalue %dx.types.CBufRet.i32 %3951, 3
  %3955 = uitofp i32 %3954 to float
  %3956 = extractvalue %dx.types.CBufRet.f32 %3947, 3
  %3957 = fmul fast float %3956, 2.000000e+00
  %3958 = fsub fast float %3930, %3948
  %3959 = fsub fast float %3934, %3949
  %3960 = fmul fast float %3957, %3958
  %3961 = fmul fast float %3957, %3959
  %3962 = fdiv fast float 1.000000e+00, %3742
  %3963 = fmul fast float %3961, %3962
  %3964 = call float @dx.op.unary.f32(i32 6, float %3963)  ; FAbs(value)
  %3965 = fmul fast float %3950, %3761
  %3966 = fmul fast float %3965, %3957
  %3967 = call float @dx.op.unary.f32(i32 6, float %3966)  ; FAbs(value)
  %3968 = call float @dx.op.unary.f32(i32 6, float %3960)  ; FAbs(value)
  %3969 = call float @dx.op.binary.f32(i32 35, float %3967, float %3964)  ; FMax(a,b)
  %3970 = call float @dx.op.binary.f32(i32 35, float %3968, float %3969)  ; FMax(a,b)
  %3971 = fmul fast float %3970, 2.000000e+00
  %3972 = call float @dx.op.unary.f32(i32 23, float %3971)  ; Log(value)
  %3973 = call float @dx.op.binary.f32(i32 35, float %3972, float %3953)  ; FMax(a,b)
  %3974 = call float @dx.op.unary.f32(i32 22, float %3973)  ; Frc(value)
  %3975 = fadd fast float %3974, 0xBFEA666660000000
  %3976 = fmul fast float %3975, 8.000000e+00
  %3977 = call float @dx.op.unary.f32(i32 7, float %3976)  ; Saturate(value)
  %3978 = call float @dx.op.unary.f32(i32 27, float %3973)  ; Round_ni(value)
  %3979 = fadd fast float %3978, %3977
  %3980 = call float @dx.op.binary.f32(i32 36, float %3979, float %3955)  ; FMin(a,b)
  %3981 = call float @dx.op.unary.f32(i32 27, float %3980)  ; Round_ni(value)
  %3982 = fsub fast float -0.000000e+00, %3981
  %3983 = call float @dx.op.unary.f32(i32 21, float %3982)  ; Exp(value)
  %3984 = fmul fast float %3983, %3957
  %3985 = fmul fast float %3984, %3930
  %3986 = fmul fast float %3984, %3934
  %3987 = fmul fast float %3985, 2.500000e-01
  %3988 = fmul fast float %3986, 2.500000e-01
  %3989 = fadd fast float %3987, 5.000000e-01
  %3990 = fadd fast float %3988, 5.000000e-01
  %3991 = fsub fast float %3955, %3953
  %3992 = fptoui float %3991 to i32
  %3993 = add i32 %3992, 320
  %3994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %3993)  ; CBufferLoadLegacy(handle,regIndex)
  %3995 = extractvalue %dx.types.CBufRet.f32 %3994, 0
  %3996 = extractvalue %dx.types.CBufRet.f32 %3994, 1
  %3997 = fcmp fast une float %3980, %3955
  %3998 = fsub fast float %3930, %3995
  %3999 = fsub fast float %3934, %3996
  %4000 = call float @dx.op.unary.f32(i32 6, float %3998)  ; FAbs(value)
  %4001 = call float @dx.op.unary.f32(i32 6, float %3999)  ; FAbs(value)
  %4002 = fmul fast float %4000, %3984
  %4003 = fmul fast float %4001, %3984
  %4004 = fcmp fast olt float %4002, 1.000000e+00
  %4005 = fcmp fast olt float %4003, 1.000000e+00
  %4006 = and i1 %4004, %4005
  %4007 = or i1 %3997, %4006
  br i1 %4007, label %4008, label %4305, !dx.controlflow.hints !109

; <label>:4008                                    ; preds = %3946
  %4009 = fmul fast float %3986, 5.000000e-01
  %4010 = fmul fast float %3985, 5.000000e-01
  %4011 = fadd fast float %4009, 5.000000e-01
  %4012 = fadd fast float %4010, 5.000000e-01
  %4013 = sitofp i32 %3952 to float
  %4014 = fsub fast float %3980, %4013
  %4015 = call float @dx.op.unary.f32(i32 27, float %4014)  ; Round_ni(value)
  %4016 = call float @dx.op.unary.f32(i32 22, float %3980)  ; Frc(value)
  %4017 = call float @dx.op.unary.f32(i32 22, float %4012)  ; Frc(value)
  %4018 = call float @dx.op.unary.f32(i32 22, float %4011)  ; Frc(value)
  %4019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %4017, float %4018, float %4015, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4020 = extractvalue %dx.types.ResRet.f32 %4019, 0
  %4021 = extractvalue %dx.types.ResRet.f32 %4019, 1
  %4022 = extractvalue %dx.types.ResRet.f32 %4019, 2
  %4023 = extractvalue %dx.types.ResRet.f32 %4019, 3
  %4024 = fcmp fast ogt float %4016, 0.000000e+00
  br i1 %4024, label %4025, label %4046, !dx.controlflow.hints !110

; <label>:4025                                    ; preds = %4008
  %4026 = fadd fast float %4015, 1.000000e+00
  %4027 = call float @dx.op.unary.f32(i32 22, float %3989)  ; Frc(value)
  %4028 = call float @dx.op.unary.f32(i32 22, float %3990)  ; Frc(value)
  %4029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %4027, float %4028, float %4026, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4030 = extractvalue %dx.types.ResRet.f32 %4029, 0
  %4031 = extractvalue %dx.types.ResRet.f32 %4029, 1
  %4032 = extractvalue %dx.types.ResRet.f32 %4029, 2
  %4033 = extractvalue %dx.types.ResRet.f32 %4029, 3
  %4034 = fsub fast float %4030, %4020
  %4035 = fsub fast float %4031, %4021
  %4036 = fsub fast float %4032, %4022
  %4037 = fsub fast float %4033, %4023
  %4038 = fmul fast float %4034, %4016
  %4039 = fmul fast float %4035, %4016
  %4040 = fmul fast float %4036, %4016
  %4041 = fmul fast float %4037, %4016
  %4042 = fadd fast float %4038, %4020
  %4043 = fadd fast float %4039, %4021
  %4044 = fadd fast float %4040, %4022
  %4045 = fadd fast float %4041, %4023
  br label %4046

; <label>:4046                                    ; preds = %4025, %4008
  %4047 = phi float [ %4042, %4025 ], [ %4020, %4008 ]
  %4048 = phi float [ %4043, %4025 ], [ %4021, %4008 ]
  %4049 = phi float [ %4044, %4025 ], [ %4022, %4008 ]
  %4050 = phi float [ %4045, %4025 ], [ %4023, %4008 ]
  %4051 = fadd fast float %4047, -5.000000e-01
  %4052 = fadd fast float %4049, -5.000000e-01
  %4053 = fmul fast float %4051, 0xBFD5555560000000
  %4054 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4052, float %4053)  ; FMad(a,b,c)
  %4055 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4048, float 0.000000e+00)  ; FMad(a,b,c)
  %4056 = fadd fast float %4055, %4050
  %4057 = fmul fast float %4051, -7.500000e-01
  %4058 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4052, float %4057)  ; FMad(a,b,c)
  %4059 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4048, float 0.000000e+00)  ; FMad(a,b,c)
  %4060 = fadd fast float %4059, %4050
  %4061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.f32 %4061, 0
  %4063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.f32 %4063, 0
  %4065 = extractvalue %dx.types.CBufRet.f32 %4063, 1
  %4066 = extractvalue %dx.types.CBufRet.f32 %4063, 2
  %4067 = extractvalue %dx.types.CBufRet.f32 %4063, 3
  %4068 = fsub fast float %4064, %4054
  %4069 = fsub fast float %4065, %4056
  %4070 = fsub fast float %4066, %4058
  %4071 = fsub fast float %4067, %4060
  %4072 = fmul fast float %4068, %4062
  %4073 = fmul fast float %4069, %4062
  %4074 = fmul fast float %4070, %4062
  %4075 = fmul fast float %4071, %4062
  %4076 = fadd fast float %4072, %4054
  %4077 = fadd fast float %4073, %4056
  %4078 = fadd fast float %4074, %4058
  %4079 = fadd fast float %4075, %4060
  %4080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4081 = extractvalue %dx.types.ResRet.i32 %4080, 0
  %4082 = and i32 %4081, 536870911
  %4083 = uitofp i32 %4082 to float
  %4084 = fmul fast float %4083, %3930
  %4085 = fmul fast float %4083, %3934
  %4086 = fptoui float %4084 to i32
  %4087 = fptoui float %4085 to i32
  %4088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4089 = extractvalue %dx.types.ResRet.i32 %4088, 0
  %4090 = and i32 %4089, 31
  %4091 = lshr i32 %4086, %4090
  %4092 = lshr i32 %4087, %4090
  %4093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4094 = extractvalue %dx.types.ResRet.i32 %4093, 0
  %4095 = and i32 %4094, 31
  %4096 = shl i32 1, %4095
  %4097 = call i32 @dx.op.binary.i32(i32 40, i32 %4096, i32 4)  ; UMin(a,b)
  %4098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4099 = extractvalue %dx.types.ResRet.i32 %4098, 0
  %4100 = extractvalue %dx.types.ResRet.i32 %4098, 1
  %4101 = icmp eq i32 %4097, 0
  br i1 %4101, label %4143, label %4102

; <label>:4102                                    ; preds = %4046
  br label %4103

; <label>:4103                                    ; preds = %4131, %4102
  %4104 = phi i32 [ %4134, %4131 ], [ 0, %4102 ]
  %4105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4106 = extractvalue %dx.types.ResRet.i32 %4105, 0
  %4107 = lshr i32 %4106, 16
  %4108 = and i32 %4107, 31
  %4109 = shl i32 %4092, %4108
  %4110 = add i32 %4109, %4091
  %4111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4112 = extractvalue %dx.types.ResRet.i32 %4111, 0
  %4113 = and i32 %4112, 31
  %4114 = shl i32 %4110, %4113
  %4115 = add i32 %4114, %4104
  %4116 = shl i32 %4115, 2
  %4117 = add i32 %4116, 32
  %4118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4117, i32 undef)  ; BufferLoad(srv,index,wot)
  %4119 = extractvalue %dx.types.ResRet.i32 %4118, 0
  %4120 = icmp slt i32 %4119, 0
  %4121 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4104
  %4122 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %4104
  %4123 = bitcast float* %4121 to i32*
  %4124 = bitcast float* %4122 to i32*
  br i1 %4120, label %4125, label %4131

; <label>:4125                                    ; preds = %4103
  %4126 = and i32 %4119, 1073741823
  %4127 = add nuw nsw i32 %4126, 20
  %4128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4127, i32 undef)  ; BufferLoad(srv,index,wot)
  %4129 = extractvalue %dx.types.ResRet.i32 %4128, 0
  %4130 = extractvalue %dx.types.ResRet.i32 %4128, 1
  br label %4131

; <label>:4131                                    ; preds = %4125, %4103
  %4132 = phi i32 [ %4129, %4125 ], [ %4099, %4103 ]
  %4133 = phi i32 [ %4130, %4125 ], [ %4100, %4103 ]
  store i32 %4132, i32* %4123, align 4
  store i32 %4133, i32* %4124, align 4
  %4134 = add nuw i32 %4104, 1
  %4135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.i32 %4135, 2
  %4137 = icmp eq i32 %4136, 0
  %4138 = icmp ugt i32 %4119, -1073741825
  %4139 = and i1 %4138, %4137
  %4140 = icmp ult i32 %4134, %4097
  %4141 = and i1 %4139, %4140
  br i1 %4141, label %4103, label %4142

; <label>:4142                                    ; preds = %4131
  br label %4143

; <label>:4143                                    ; preds = %4142, %4046
  %4144 = phi i32 [ 0, %4046 ], [ %4134, %4142 ]
  %4145 = extractvalue %dx.types.CBufRet.f32 %3908, 2
  %4146 = fptoui float %4145 to i32
  %4147 = icmp eq i32 %4146, 0
  br i1 %4147, label %4199, label %4148

; <label>:4148                                    ; preds = %4143
  br label %4149

; <label>:4149                                    ; preds = %4194, %4148
  %4150 = phi i32 [ %4195, %4194 ], [ %4144, %4148 ]
  %4151 = phi i32 [ %4196, %4194 ], [ 0, %4148 ]
  %4152 = lshr i32 %4151, 2
  %4153 = and i32 %4151, 3
  %4154 = add nuw nsw i32 %4152, 83
  %4155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 %4154)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.i32 %4155, 0
  %4157 = extractvalue %dx.types.CBufRet.i32 %4155, 1
  %4158 = extractvalue %dx.types.CBufRet.i32 %4155, 2
  %4159 = extractvalue %dx.types.CBufRet.i32 %4155, 3
  %4160 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 0
  store i32 %4156, i32* %4160, align 4
  %4161 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 1
  store i32 %4157, i32* %4161, align 4
  %4162 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 2
  store i32 %4158, i32* %4162, align 4
  %4163 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 3
  store i32 %4159, i32* %4163, align 4
  %4164 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 %4153
  %4165 = load i32, i32* %4164, align 4, !tbaa !111, !noalias !115
  %4166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4167 = extractvalue %dx.types.ResRet.i32 %4166, 0
  %4168 = lshr i32 %4167, 16
  %4169 = and i32 %4168, 31
  %4170 = shl i32 %4092, %4169
  %4171 = add i32 %4170, %4091
  %4172 = shl i32 %4171, 2
  %4173 = add i32 %4172, %4165
  %4174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4173, i32 undef)  ; BufferLoad(srv,index,wot)
  %4175 = extractvalue %dx.types.ResRet.i32 %4174, 0
  %4176 = icmp eq i32 %4175, 0
  br i1 %4176, label %4194, label %4177

; <label>:4177                                    ; preds = %4149
  %4178 = icmp slt i32 %4175, 0
  %4179 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4150
  %4180 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %4150
  %4181 = bitcast float* %4179 to i32*
  %4182 = bitcast float* %4180 to i32*
  br i1 %4178, label %4183, label %4190

; <label>:4183                                    ; preds = %4177
  %4184 = and i32 %4175, 1073741823
  %4185 = add i32 %4165, 20
  %4186 = add i32 %4185, %4184
  %4187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4186, i32 undef)  ; BufferLoad(srv,index,wot)
  %4188 = extractvalue %dx.types.ResRet.i32 %4187, 0
  %4189 = extractvalue %dx.types.ResRet.i32 %4187, 1
  br label %4190

; <label>:4190                                    ; preds = %4183, %4177
  %4191 = phi i32 [ %4188, %4183 ], [ %4099, %4177 ]
  %4192 = phi i32 [ %4189, %4183 ], [ %4100, %4177 ]
  store i32 %4191, i32* %4181, align 4
  store i32 %4192, i32* %4182, align 4
  %4193 = add i32 %4150, 1
  br label %4194

; <label>:4194                                    ; preds = %4190, %4149
  %4195 = phi i32 [ %4150, %4149 ], [ %4193, %4190 ]
  %4196 = add nuw i32 %4151, 1
  %4197 = icmp eq i32 %4196, %4146
  br i1 %4197, label %4198, label %4149

; <label>:4198                                    ; preds = %4194
  br label %4199

; <label>:4199                                    ; preds = %4198, %4143
  %4200 = phi i32 [ %4144, %4143 ], [ %4195, %4198 ]
  %4201 = icmp eq i32 %4200, 1
  %4202 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  %4203 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 0
  br i1 %4201, label %4204, label %4207

; <label>:4204                                    ; preds = %4199
  %4205 = load float, float* %4202, align 4
  %4206 = load float, float* %4203, align 4
  br label %4234

; <label>:4207                                    ; preds = %4199
  %4208 = load float, float* %4202, align 4
  %4209 = load float, float* %4203, align 4
  %4210 = fdiv fast float 1.000000e+00, %4209
  %4211 = fsub fast float %4208, %4210
  %4212 = icmp ugt i32 %4200, 1
  br i1 %4212, label %4213, label %4229

; <label>:4213                                    ; preds = %4207
  br label %4214

; <label>:4214                                    ; preds = %4214, %4213
  %4215 = phi float [ %4224, %4214 ], [ %4211, %4213 ]
  %4216 = phi float [ %4225, %4214 ], [ %4208, %4213 ]
  %4217 = phi i32 [ %4226, %4214 ], [ 1, %4213 ]
  %4218 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4217
  %4219 = load float, float* %4218, align 4
  %4220 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %4217
  %4221 = load float, float* %4220, align 4
  %4222 = fdiv fast float 1.000000e+00, %4221
  %4223 = fsub fast float %4219, %4222
  %4224 = call float @dx.op.binary.f32(i32 36, float %4215, float %4223)  ; FMin(a,b)
  %4225 = call float @dx.op.binary.f32(i32 35, float %4216, float %4219)  ; FMax(a,b)
  %4226 = add nuw i32 %4217, 1
  %4227 = icmp eq i32 %4226, %4200
  br i1 %4227, label %4228, label %4214

; <label>:4228                                    ; preds = %4214
  br label %4229

; <label>:4229                                    ; preds = %4228, %4207
  %4230 = phi float [ %4211, %4207 ], [ %4224, %4228 ]
  %4231 = phi float [ %4208, %4207 ], [ %4225, %4228 ]
  %4232 = fsub fast float %4231, %4230
  %4233 = fdiv fast float 1.000000e+00, %4232
  br label %4234

; <label>:4234                                    ; preds = %4229, %4204
  %4235 = phi float [ %4205, %4204 ], [ %4231, %4229 ]
  %4236 = phi float [ %4206, %4204 ], [ %4233, %4229 ]
  %4237 = fadd fast float %3938, %4235
  %4238 = fmul fast float %4237, %4236
  %4239 = call float @dx.op.unary.f32(i32 7, float %4238)  ; Saturate(value)
  %4240 = fmul fast float %4239, 2.000000e+00
  %4241 = fsub fast float 1.000000e+00, %4240
  %4242 = fmul fast float %4076, %4076
  %4243 = fsub fast float %4077, %4242
  %4244 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4243)  ; FMax(a,b)
  %4245 = fdiv fast float 1.000000e+00, %4244
  %4246 = fmul fast float %4077, %4076
  %4247 = fsub fast float %4078, %4246
  %4248 = fsub fast float %4241, %4076
  %4249 = fmul fast float %4241, %4241
  %4250 = fsub fast float %4249, %4077
  %4251 = fmul fast float %4245, %4247
  %4252 = fmul fast float %4251, %4248
  %4253 = fsub fast float %4250, %4252
  %4254 = fmul fast float %4077, %4077
  %4255 = fsub fast float %4079, %4254
  %4256 = fmul fast float %4247, %4247
  %4257 = fmul fast float %4256, %4245
  %4258 = fsub fast float %4255, %4257
  %4259 = fdiv fast float %4253, %4258
  %4260 = fmul fast float %4259, %4247
  %4261 = fsub fast float %4248, %4260
  %4262 = fmul fast float %4261, %4245
  %4263 = fmul fast float %4262, %4076
  %4264 = fsub fast float 1.000000e+00, %4263
  %4265 = fmul fast float %4259, %4077
  %4266 = fsub fast float %4264, %4265
  %4267 = fmul fast float %4262, %4262
  %4268 = fmul fast float %4259, 4.000000e+00
  %4269 = fmul fast float %4268, %4266
  %4270 = fsub fast float %4267, %4269
  %4271 = call float @dx.op.unary.f32(i32 24, float %4270)  ; Sqrt(value)
  %4272 = fcmp fast oge float %4262, 0.000000e+00
  %4273 = fsub fast float -0.000000e+00, %4271
  %4274 = select i1 %4272, float %4273, float %4271
  %4275 = fsub fast float %4274, %4262
  %4276 = fdiv fast float %4275, %4259
  %4277 = fdiv fast float %4266, %4275
  %4278 = fmul fast float %4276, 5.000000e-01
  %4279 = fmul fast float %4277, 2.000000e+00
  %4280 = select i1 %4272, float %4278, float %4279
  %4281 = select i1 %4272, float %4279, float %4278
  %4282 = call float @dx.op.binary.f32(i32 35, float %4280, float %4281)  ; FMax(a,b)
  %4283 = call float @dx.op.binary.f32(i32 36, float %4280, float %4281)  ; FMin(a,b)
  %4284 = fcmp fast ogt float %4241, %4282
  %4285 = fsub fast float %4241, %4283
  %4286 = fsub fast float %4241, %4282
  %4287 = fsub fast float %4282, %4283
  %4288 = select i1 %4284, float %4286, float %4287
  %4289 = fmul float %4285, %4288
  %4290 = select i1 %4284, float %4283, float %4241
  %4291 = fcmp fast ogt float %4241, %4283
  %4292 = fmul fast float %4290, %4282
  %4293 = fadd fast float %4290, %4282
  %4294 = fmul fast float %4293, %4076
  %4295 = fadd fast float %4292, %4077
  %4296 = fsub fast float %4295, %4294
  %4297 = fdiv fast float %4296, %4289
  %4298 = select i1 %4291, float %4297, float 0.000000e+00
  %4299 = fsub fast float 1.000000e+00, %4298
  %4300 = select i1 %4284, float %4299, float %4298
  %4301 = call float @dx.op.unary.f32(i32 7, float %4300)  ; Saturate(value)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4061, 3
  %4303 = fmul fast float %4302, %4301
  %4304 = fsub fast float 1.000000e+00, %4303
  br label %4305

; <label>:4305                                    ; preds = %4234, %3946, %3911, %3907, %3873
  %4306 = phi float [ 1.000000e+00, %3873 ], [ %4304, %4234 ], [ 1.000000e+00, %3911 ], [ 1.000000e+00, %3946 ], [ 1.000000e+00, %3907 ]
  %4307 = fcmp fast ogt float %3903, 0.000000e+00
  br i1 %4307, label %4308, label %4314, !dx.controlflow.hints !124

; <label>:4308                                    ; preds = %4305
  %4309 = fadd fast float %3816, %3790
  %4310 = call float @dx.op.binary.f32(i32 35, float %4309, float 0.000000e+00)  ; FMax(a,b)
  %4311 = fadd fast float %4310, 0x3F10000000000000
  %4312 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %3805, float %3806, float undef, float undef, i32 0, i32 0, i32 undef, float %4311)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4313 = extractvalue %dx.types.ResRet.f32 %4312, 0
  br label %4314

; <label>:4314                                    ; preds = %4308, %4305
  %4315 = phi float [ %4313, %4308 ], [ 1.000000e+00, %4305 ]
  %4316 = fcmp fast ogt float %3901, 0.000000e+00
  br i1 %4316, label %4317, label %4323, !dx.controlflow.hints !125

; <label>:4317                                    ; preds = %4314
  %4318 = fadd fast float %3846, %3790
  %4319 = call float @dx.op.binary.f32(i32 35, float %4318, float 0.000000e+00)  ; FMax(a,b)
  %4320 = fadd fast float %4319, 0x3F10000000000000
  %4321 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %3797, float %3798, float undef, float undef, i32 0, i32 0, i32 undef, float %4320)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4322 = extractvalue %dx.types.ResRet.f32 %4321, 0
  br label %4323

; <label>:4323                                    ; preds = %4317, %4314
  %4324 = phi float [ %4322, %4317 ], [ 1.000000e+00, %4314 ]
  %4325 = fcmp fast ogt float %3900, 0.000000e+00
  br i1 %4325, label %4326, label %4333, !dx.controlflow.hints !126

; <label>:4326                                    ; preds = %4323
  %4327 = extractvalue %dx.types.CBufRet.f32 %3815, 0
  %4328 = fadd fast float %4327, %3790
  %4329 = call float @dx.op.binary.f32(i32 35, float %4328, float 0.000000e+00)  ; FMax(a,b)
  %4330 = fadd fast float %4329, 0x3F10000000000000
  %4331 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %3782, float %3786, float undef, float undef, i32 0, i32 0, i32 undef, float %4330)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4332 = extractvalue %dx.types.ResRet.f32 %4331, 0
  br label %4333

; <label>:4333                                    ; preds = %4326, %4323
  %4334 = phi float [ %4332, %4326 ], [ 1.000000e+00, %4323 ]
  %4335 = fsub fast float %4315, %4306
  %4336 = fmul fast float %4335, %3844
  %4337 = fadd fast float %4336, %4306
  %4338 = fsub fast float %4324, %4337
  %4339 = fmul fast float %4338, %3874
  %4340 = fadd fast float %4339, %4337
  %4341 = fsub fast float %4334, %4340
  %4342 = fmul fast float %4341, %3900
  %4343 = fadd fast float %4342, %4340
  %4344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4345 = extractvalue %dx.types.CBufRet.f32 %4344, 2
  %4346 = fcmp fast ogt float %4345, 0.000000e+00
  br i1 %4346, label %4347, label %4384, !dx.controlflow.hints !127

; <label>:4347                                    ; preds = %4333
  %4348 = fcmp fast ugt float %4345, 0.000000e+00
  br i1 %4348, label %4349, label %4381

; <label>:4349                                    ; preds = %4347
  %4350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4351 = extractvalue %dx.types.CBufRet.f32 %4350, 0
  %4352 = extractvalue %dx.types.CBufRet.f32 %4350, 1
  %4353 = extractvalue %dx.types.CBufRet.f32 %4350, 2
  %4354 = extractvalue %dx.types.CBufRet.f32 %4350, 3
  %4355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.f32 %4355, 0
  %4357 = extractvalue %dx.types.CBufRet.f32 %4355, 1
  %4358 = extractvalue %dx.types.CBufRet.f32 %4355, 2
  %4359 = extractvalue %dx.types.CBufRet.f32 %4355, 3
  %4360 = extractvalue %dx.types.CBufRet.f32 %4344, 0
  %4361 = extractvalue %dx.types.CBufRet.f32 %4344, 1
  %4362 = extractvalue %dx.types.CBufRet.f32 %2349, 2
  %4363 = fadd fast float %2350, %3759
  %4364 = fadd fast float %2351, %3760
  %4365 = fadd fast float %4362, %3761
  %4366 = fmul fast float %4363, %4351
  %4367 = call float @dx.op.tertiary.f32(i32 46, float %4352, float %4364, float %4366)  ; FMad(a,b,c)
  %4368 = call float @dx.op.tertiary.f32(i32 46, float %4353, float %4365, float %4367)  ; FMad(a,b,c)
  %4369 = fadd fast float %4368, %4354
  %4370 = fmul fast float %4363, %4356
  %4371 = call float @dx.op.tertiary.f32(i32 46, float %4357, float %4364, float %4370)  ; FMad(a,b,c)
  %4372 = call float @dx.op.tertiary.f32(i32 46, float %4358, float %4365, float %4371)  ; FMad(a,b,c)
  %4373 = fadd fast float %4372, %4359
  %4374 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %55, float %4369, float %4373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4375 = extractvalue %dx.types.ResRet.f32 %4374, 0
  %4376 = fmul fast float %4375, %4361
  %4377 = fadd fast float %4376, %4360
  %4378 = call float @dx.op.unary.f32(i32 7, float %4377)  ; Saturate(value)
  %4379 = fmul fast float %4378, %4345
  %4380 = fsub fast float 1.000000e+00, %4379
  br label %4381

; <label>:4381                                    ; preds = %4349, %4347
  %4382 = phi float [ %4380, %4349 ], [ 1.000000e+00, %4347 ]
  %4383 = fmul fast float %4382, %4343
  br label %4384

; <label>:4384                                    ; preds = %4381, %4333, %3739
  %4385 = phi float [ 1.000000e+00, %3739 ], [ %4383, %4381 ], [ %4343, %4333 ]
  %4386 = call float @dx.op.binary.f32(i32 36, float %4385, float %4385)  ; FMin(a,b)
  %4387 = call float @dx.op.binary.f32(i32 36, float %4385, float %4386)  ; FMin(a,b)
  %4388 = fcmp fast ogt float %4387, 0.000000e+00
  br i1 %4388, label %4389, label %4546, !dx.controlflow.hints !128

; <label>:4389                                    ; preds = %4384
  %4390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4391 = extractvalue %dx.types.CBufRet.f32 %4390, 0
  %4392 = extractvalue %dx.types.CBufRet.f32 %4390, 1
  %4393 = extractvalue %dx.types.CBufRet.f32 %4390, 2
  %4394 = extractvalue %dx.types.CBufRet.f32 %4390, 3
  %4395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4396 = extractvalue %dx.types.CBufRet.f32 %4395, 0
  %4397 = extractvalue %dx.types.CBufRet.f32 %4395, 1
  %4398 = extractvalue %dx.types.CBufRet.f32 %4395, 2
  %4399 = extractvalue %dx.types.CBufRet.f32 %4395, 3
  %4400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4401 = extractvalue %dx.types.CBufRet.f32 %4400, 0
  %4402 = extractvalue %dx.types.CBufRet.f32 %4400, 1
  %4403 = extractvalue %dx.types.CBufRet.f32 %4400, 2
  %4404 = extractvalue %dx.types.CBufRet.f32 %4400, 3
  %4405 = fmul fast float %4391, %3759
  %4406 = call float @dx.op.tertiary.f32(i32 46, float %3760, float %4392, float %4405)  ; FMad(a,b,c)
  %4407 = call float @dx.op.tertiary.f32(i32 46, float %3761, float %4393, float %4406)  ; FMad(a,b,c)
  %4408 = fadd fast float %4407, %4394
  %4409 = fmul fast float %4396, %3759
  %4410 = call float @dx.op.tertiary.f32(i32 46, float %3760, float %4397, float %4409)  ; FMad(a,b,c)
  %4411 = call float @dx.op.tertiary.f32(i32 46, float %3761, float %4398, float %4410)  ; FMad(a,b,c)
  %4412 = fadd fast float %4411, %4399
  %4413 = fmul fast float %4401, %3759
  %4414 = call float @dx.op.tertiary.f32(i32 46, float %3760, float %4402, float %4413)  ; FMad(a,b,c)
  %4415 = call float @dx.op.tertiary.f32(i32 46, float %3761, float %4403, float %4414)  ; FMad(a,b,c)
  %4416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4417 = extractvalue %dx.types.CBufRet.f32 %4416, 0
  %4418 = extractvalue %dx.types.CBufRet.f32 %4416, 1
  %4419 = extractvalue %dx.types.CBufRet.f32 %4416, 3
  %4420 = fmul fast float %4419, %4408
  %4421 = fmul fast float %4419, %4412
  %4422 = fadd fast float %4420, %4417
  %4423 = fadd fast float %4421, %4418
  %4424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4425 = extractvalue %dx.types.CBufRet.f32 %4424, 0
  %4426 = extractvalue %dx.types.CBufRet.f32 %4424, 1
  %4427 = fsub fast float %4422, %4425
  %4428 = fsub fast float %4423, %4426
  %4429 = fcmp fast olt float %4427, 0.000000e+00
  %4430 = fcmp fast olt float %4428, 0.000000e+00
  %4431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4432 = extractvalue %dx.types.CBufRet.f32 %4431, 0
  %4433 = extractvalue %dx.types.CBufRet.f32 %4431, 1
  %4434 = extractvalue %dx.types.CBufRet.f32 %4431, 2
  %4435 = extractvalue %dx.types.CBufRet.f32 %4431, 3
  %4436 = select i1 %4429, float %4432, float %4434
  %4437 = select i1 %4430, float %4433, float %4435
  %4438 = fmul fast float %4436, %4427
  %4439 = fmul fast float %4437, %4428
  %4440 = call float @dx.op.unary.f32(i32 6, float %4438)  ; FAbs(value)
  %4441 = call float @dx.op.unary.f32(i32 6, float %4439)  ; FAbs(value)
  %4442 = extractvalue %dx.types.CBufRet.f32 %3754, 0
  %4443 = call float @dx.op.binary.f32(i32 35, float %4440, float %4441)  ; FMax(a,b)
  %4444 = fsub fast float %4442, %4443
  %4445 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4446 = fcmp fast ogt float %4445, 0.000000e+00
  br i1 %4446, label %4447, label %4488, !dx.controlflow.hints !129

; <label>:4447                                    ; preds = %4389
  %4448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %58, float %4422, float %4423, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4449 = extractvalue %dx.types.ResRet.f32 %4448, 1
  %4450 = fcmp fast ogt float %4449, 0.000000e+00
  br i1 %4450, label %4451, label %4483

; <label>:4451                                    ; preds = %4447
  %4452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %58, float %4422, float %4423, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4453 = extractvalue %dx.types.ResRet.f32 %4452, 0
  %4454 = extractvalue %dx.types.ResRet.f32 %4452, 1
  %4455 = extractvalue %dx.types.ResRet.f32 %4452, 2
  %4456 = extractvalue %dx.types.ResRet.f32 %4452, 3
  %4457 = fsub fast float 1.000000e+00, %4404
  %4458 = fsub fast float %4457, %4415
  %4459 = fmul fast float %4458, 0x400921FB60000000
  %4460 = fadd fast float %4459, 0x3FF921FB60000000
  %4461 = call float @dx.op.unary.f32(i32 13, float %4460)  ; Sin(value)
  %4462 = fadd fast float %4461, -1.000000e+00
  %4463 = fmul fast float %4462, 0x3FD45F3060000000
  %4464 = fmul fast float %4458, 0x401921FB60000000
  %4465 = fadd fast float %4464, 0x400921FB60000000
  %4466 = call float @dx.op.unary.f32(i32 13, float %4465)  ; Sin(value)
  %4467 = fadd fast float %4466, 0x3E7777A5C0000000
  %4468 = fmul fast float %4467, 0x3FC45F3060000000
  %4469 = fmul fast float %4458, 0x4022D97C80000000
  %4470 = fadd fast float %4469, 0x4012D97C80000000
  %4471 = call float @dx.op.unary.f32(i32 13, float %4470)  ; Sin(value)
  %4472 = fadd fast float %4471, 1.000000e+00
  %4473 = fmul fast float %4472, 0x3FBB2995E0000000
  %4474 = fmul fast float %4458, 0x402921FB60000000
  %4475 = fadd fast float %4474, 0x401921FB60000000
  %4476 = call float @dx.op.unary.f32(i32 13, float %4475)  ; Sin(value)
  %4477 = fadd fast float %4476, 0xBE8777A5C0000000
  %4478 = fmul fast float %4477, 0x3FB45F3060000000
  %4479 = call float @dx.op.dot4.f32(i32 56, float %4453, float %4454, float %4455, float %4456, float %4463, float %4468, float %4473, float %4478)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4480 = fmul fast float %4479, 0xBFF7154760000000
  %4481 = call float @dx.op.unary.f32(i32 21, float %4480)  ; Exp(value)
  %4482 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  br label %4483

; <label>:4483                                    ; preds = %4451, %4447
  %4484 = phi float [ %4482, %4451 ], [ 1.000000e+00, %4447 ]
  %4485 = fadd fast float %4484, -1.000000e+00
  %4486 = fmul fast float %4485, %4445
  %4487 = fadd fast float %4486, 1.000000e+00
  br label %4488

; <label>:4488                                    ; preds = %4483, %4389
  %4489 = phi float [ %4487, %4483 ], [ 1.000000e+00, %4389 ]
  %4490 = fmul fast float %4489, %4385
  %4491 = extractvalue %dx.types.CBufRet.f32 %2349, 2
  %4492 = fadd fast float %2350, %138
  %4493 = fadd fast float %2351, %139
  %4494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4495 = extractvalue %dx.types.CBufRet.f32 %4494, 1
  %4496 = fsub fast float -0.000000e+00, %4492
  %4497 = fsub fast float -0.000000e+00, %4493
  %4498 = fsub fast float %2333, %4491
  %4499 = fadd fast float %4498, %4495
  %4500 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4496, float %4497, float %4499)  ; Dot3(ax,ay,az,bx,by,bz)
  %4501 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3740, float %3741, float %3742)  ; Dot3(ax,ay,az,bx,by,bz)
  %4502 = fdiv fast float 1.000000e+00, %4501
  %4503 = fmul fast float %4502, %4500
  %4504 = fmul fast float %3740, %4503
  %4505 = fmul fast float %3741, %4503
  %4506 = fadd fast float %4504, %4492
  %4507 = fadd fast float %4505, %4493
  %4508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4509 = extractvalue %dx.types.CBufRet.f32 %4508, 0
  %4510 = extractvalue %dx.types.CBufRet.f32 %4508, 1
  %4511 = fsub fast float %4506, %4509
  %4512 = fsub fast float %4507, %4510
  %4513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4514 = extractvalue %dx.types.CBufRet.f32 %4513, 2
  %4515 = extractvalue %dx.types.CBufRet.f32 %4513, 3
  %4516 = fmul fast float %4511, %4514
  %4517 = fmul fast float %4512, %4515
  %4518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4519 = extractvalue %dx.types.CBufRet.i32 %4518, 3
  %4520 = icmp eq i32 %4519, 0
  br i1 %4520, label %4526, label %4521

; <label>:4521                                    ; preds = %4488
  %4522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %57, float %4516, float %4517, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4523 = extractvalue %dx.types.ResRet.f32 %4522, 0
  %4524 = extractvalue %dx.types.ResRet.f32 %4522, 1
  %4525 = extractvalue %dx.types.ResRet.f32 %4522, 2
  br label %4531

; <label>:4526                                    ; preds = %4488
  %4527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %58, float %4516, float %4517, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4528 = extractvalue %dx.types.ResRet.f32 %4527, 0
  %4529 = extractvalue %dx.types.ResRet.f32 %4527, 1
  %4530 = extractvalue %dx.types.ResRet.f32 %4527, 2
  br label %4531

; <label>:4531                                    ; preds = %4526, %4521
  %4532 = phi float [ %4523, %4521 ], [ %4528, %4526 ]
  %4533 = phi float [ %4524, %4521 ], [ %4529, %4526 ]
  %4534 = phi float [ %4525, %4521 ], [ %4530, %4526 ]
  %4535 = extractvalue %dx.types.CBufRet.f32 %4494, 2
  %4536 = fmul fast float %4535, %4532
  %4537 = extractvalue %dx.types.CBufRet.f32 %4494, 0
  %4538 = fsub fast float %4503, %4537
  %4539 = fsub fast float %4538, %4536
  %4540 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4539)  ; FMax(a,b)
  %4541 = fmul fast float %4540, %4533
  %4542 = call float @dx.op.binary.f32(i32 36, float %4534, float %4541)  ; FMin(a,b)
  %4543 = fmul fast float %4542, 0xBFF7154760000000
  %4544 = call float @dx.op.unary.f32(i32 21, float %4543)  ; Exp(value)
  %4545 = fmul fast float %4490, %4544
  br label %4546

; <label>:4546                                    ; preds = %4531, %4384
  %4547 = phi float [ %4545, %4531 ], [ %4385, %4384 ]
  %4548 = call float @dx.op.binary.f32(i32 36, float %4547, float %4547)  ; FMin(a,b)
  %4549 = call float @dx.op.binary.f32(i32 36, float %4547, float %4548)  ; FMin(a,b)
  %4550 = fcmp fast ogt float %4549, 0.000000e+00
  br i1 %4550, label %4551, label %4814, !dx.controlflow.hints !130

; <label>:4551                                    ; preds = %4546
  %4552 = fmul fast float %4547, %3751
  %4553 = fmul fast float %4547, %3752
  %4554 = fmul fast float %4547, %3753
  %4555 = fsub fast float %140, %2139
  %4556 = fcmp fast ogt float %4555, 0.000000e+00
  %4557 = fmul fast float %3740, 5.120000e+02
  %4558 = fmul fast float %3741, 5.120000e+02
  %4559 = fmul fast float %3742, 5.120000e+02
  %4560 = fadd fast float %4559, %140
  %4561 = fsub fast float %2139, %4560
  %4562 = fmul fast float %4561, 2.000000e+00
  %4563 = fadd fast float %4562, %4560
  %4564 = select i1 %4556, float %4563, float %4560
  %4565 = fsub fast float %4564, %140
  %4566 = call float @dx.op.dot3.f32(i32 55, float %4557, float %4558, float %4565, float %4557, float %4558, float %4565)  ; Dot3(ax,ay,az,bx,by,bz)
  %4567 = call float @dx.op.unary.f32(i32 25, float %4566)  ; Rsqrt(value)
  %4568 = fmul fast float %4567, %4557
  %4569 = fmul fast float %4567, %4558
  %4570 = fmul fast float %4567, %4565
  %4571 = fsub fast float %2139, %140
  %4572 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4571)  ; Dot3(ax,ay,az,bx,by,bz)
  %4573 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4568, float %4569, float %4570)  ; Dot3(ax,ay,az,bx,by,bz)
  %4574 = fdiv fast float 1.000000e+00, %4573
  %4575 = fmul fast float %4574, %4572
  %4576 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4555, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4577 = fcmp fast ogt float %4576, 0.000000e+00
  %4578 = fcmp fast olt float %4576, 0.000000e+00
  %4579 = zext i1 %4577 to i32
  %4580 = zext i1 %4578 to i32
  %4581 = sub nsw i32 %4579, %4580
  %4582 = sitofp i32 %4581 to float
  %4583 = fsub fast float %4564, %2139
  %4584 = call float @dx.op.dot3.f32(i32 55, float %4557, float %4558, float %4583, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4585 = fcmp fast ogt float %4584, 0.000000e+00
  %4586 = fcmp fast olt float %4584, 0.000000e+00
  %4587 = zext i1 %4585 to i32
  %4588 = zext i1 %4586 to i32
  %4589 = sub nsw i32 %4587, %4588
  %4590 = sitofp i32 %4589 to float
  %4591 = fcmp fast une float %4582, %4590
  br i1 %4591, label %4592, label %4602

; <label>:4592                                    ; preds = %4551
  %4593 = fmul fast float %4575, %4570
  %4594 = fmul fast float %4575, %4569
  %4595 = fmul fast float %4575, %4568
  %4596 = fmul fast float %4595, %4595
  %4597 = fmul fast float %4594, %4594
  %4598 = fadd fast float %4596, %4597
  %4599 = fmul fast float %4593, %4593
  %4600 = fadd fast float %4598, %4599
  %4601 = call float @dx.op.unary.f32(i32 24, float %4600)  ; Sqrt(value)
  br label %4612

; <label>:4602                                    ; preds = %4551
  %4603 = icmp slt i32 %4581, 0
  br i1 %4603, label %4604, label %4612

; <label>:4604                                    ; preds = %4602
  %4605 = fsub fast float %140, %4564
  %4606 = fmul fast float %4557, %4557
  %4607 = fmul fast float %4558, %4558
  %4608 = fadd fast float %4606, %4607
  %4609 = fmul fast float %4605, %4605
  %4610 = fadd fast float %4608, %4609
  %4611 = call float @dx.op.unary.f32(i32 24, float %4610)  ; Sqrt(value)
  br label %4612

; <label>:4612                                    ; preds = %4604, %4602, %4592
  %4613 = phi float [ %4601, %4592 ], [ %4611, %4604 ], [ 0.000000e+00, %4602 ]
  %4614 = fsub fast float -0.000000e+00, %4613
  %4615 = select i1 %4556, float -0.000000e+00, float %4614
  %4616 = fmul fast float %2140, 0x3FF7154760000000
  %4617 = fmul fast float %4616, %4615
  %4618 = fmul fast float %2141, 0x3FF7154760000000
  %4619 = fmul fast float %4618, %4615
  %4620 = fmul fast float %2142, 0x3FF7154760000000
  %4621 = fmul fast float %4620, %4615
  %4622 = call float @dx.op.unary.f32(i32 21, float %4617)  ; Exp(value)
  %4623 = call float @dx.op.unary.f32(i32 21, float %4619)  ; Exp(value)
  %4624 = call float @dx.op.unary.f32(i32 21, float %4621)  ; Exp(value)
  %4625 = call float @dx.op.unary.f32(i32 7, float %4622)  ; Saturate(value)
  %4626 = call float @dx.op.unary.f32(i32 7, float %4623)  ; Saturate(value)
  %4627 = call float @dx.op.unary.f32(i32 7, float %4624)  ; Saturate(value)
  %4628 = fmul fast float %4552, %4625
  %4629 = fmul fast float %4553, %4626
  %4630 = fmul fast float %4554, %4627
  %4631 = fsub fast float %3740, %187
  %4632 = fsub fast float %3741, %188
  %4633 = fsub fast float %3742, %189
  %4634 = call float @dx.op.dot3.f32(i32 55, float %4631, float %4632, float %4633, float %4631, float %4632, float %4633)  ; Dot3(ax,ay,az,bx,by,bz)
  %4635 = call float @dx.op.unary.f32(i32 25, float %4634)  ; Rsqrt(value)
  %4636 = fmul fast float %4635, %4631
  %4637 = fmul fast float %4635, %4632
  %4638 = fmul fast float %4635, %4633
  %4639 = call float @dx.op.dot3.f32(i32 55, float %3740, float %3741, float %3742, float %2328, float %2329, float %2330)  ; Dot3(ax,ay,az,bx,by,bz)
  %4640 = call float @dx.op.dot3.f32(i32 55, float %2156, float %2157, float %2158, float %4636, float %4637, float %4638)  ; Dot3(ax,ay,az,bx,by,bz)
  %4641 = call float @dx.op.unary.f32(i32 7, float %4639)  ; Saturate(value)
  %4642 = fmul fast float %4641, %4641
  %4643 = fmul fast float %4642, %3735
  %4644 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4645 = fmul fast float %4644, %4641
  %4646 = call float @dx.op.dot3.f32(i32 55, float %2328, float %2329, float %2330, float %4636, float %4637, float %4638)  ; Dot3(ax,ay,az,bx,by,bz)
  %4647 = fmul fast float %4646, %4646
  %4648 = call float @dx.op.unary.f32(i32 6, float %4639)  ; FAbs(value)
  %4649 = fsub fast float 1.000000e+00, %2331
  %4650 = call float @dx.op.binary.f32(i32 35, float %4649, float 0x3F847AE140000000)  ; FMax(a,b)
  %4651 = fmul fast float %4650, %4650
  %4652 = fmul fast float %4651, %4651
  %4653 = fsub fast float 1.000000e+00, %4652
  %4654 = fmul fast float %2336, %2336
  %4655 = fmul fast float %4654, %4653
  %4656 = fadd fast float %4655, %4652
  %4657 = bitcast float %4656 to i32
  %4658 = ashr i32 %4657, 1
  %4659 = add nsw i32 %4658, 532487669
  %4660 = bitcast i32 %4659 to float
  %4661 = fadd fast float %4660, %2336
  %4662 = fmul fast float %4652, %4647
  %4663 = fsub fast float 1.000000e+00, %4647
  %4664 = fadd fast float %4663, %4662
  %4665 = fmul fast float %4648, %4648
  %4666 = fmul fast float %4665, %4653
  %4667 = fadd fast float %4666, %4652
  %4668 = bitcast float %4667 to i32
  %4669 = ashr i32 %4668, 1
  %4670 = add nsw i32 %4669, 532487669
  %4671 = bitcast i32 %4670 to float
  %4672 = fadd fast float %4671, %4648
  %4673 = fmul fast float %4664, %4664
  %4674 = fmul fast float %4673, %4661
  %4675 = fmul fast float %4674, %4672
  %4676 = fdiv fast float 0x3FF0A00000000000, %4675
  %4677 = fmul fast float %4676, %4652
  %4678 = fmul fast float %3601, 0x3FF9999980000000
  %4679 = fsub fast float 5.000000e+00, %4678
  %4680 = call float @dx.op.unary.f32(i32 6, float %4640)  ; FAbs(value)
  %4681 = fsub fast float 1.000000e+00, %4680
  %4682 = fmul fast float %3601, 0x41D9660740000000
  %4683 = fadd fast float %4682, 0xC1EFBF8940000000
  %4684 = bitcast float %4681 to i32
  %4685 = sitofp i32 %4684 to float
  %4686 = fmul fast float %4685, %4679
  %4687 = fadd fast float %4683, %4686
  %4688 = fptosi float %4687 to i32
  %4689 = bitcast i32 %4688 to float
  %4690 = fsub fast float 1.000000e+00, %2322
  %4691 = fsub fast float 1.000000e+00, %2323
  %4692 = fsub fast float 1.000000e+00, %2334
  %4693 = fmul fast float %4689, %4690
  %4694 = fmul fast float %4689, %4691
  %4695 = fmul fast float %4689, %4692
  %4696 = fadd fast float %4693, %2322
  %4697 = fadd fast float %4694, %2323
  %4698 = fadd fast float %4695, %2334
  br i1 %3624, label %4699, label %4722

; <label>:4699                                    ; preds = %4612
  %4700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1692, float %4680, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4701 = extractvalue %dx.types.ResRet.f32 %4700, 0
  %4702 = extractvalue %dx.types.ResRet.f32 %4700, 1
  %4703 = extractvalue %dx.types.ResRet.f32 %4700, 2
  %4704 = fadd fast float %4701, -5.000000e-01
  %4705 = fadd fast float %4702, -5.000000e-01
  %4706 = fadd fast float %4703, -5.000000e-01
  %4707 = fmul fast float %2322, 4.000000e+00
  %4708 = fmul fast float %4707, %4690
  %4709 = fmul fast float %4708, %4704
  %4710 = fmul fast float %2323, 4.000000e+00
  %4711 = fmul fast float %4710, %4691
  %4712 = fmul fast float %4711, %4705
  %4713 = fmul fast float %2334, 4.000000e+00
  %4714 = fmul fast float %4713, %4692
  %4715 = fmul fast float %4714, %4706
  %4716 = fadd fast float %4709, %4696
  %4717 = fadd fast float %4712, %4697
  %4718 = fadd fast float %4715, %4698
  %4719 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4720 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4721 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  br label %4722

; <label>:4722                                    ; preds = %4699, %4612
  %4723 = phi float [ %4719, %4699 ], [ %4696, %4612 ]
  %4724 = phi float [ %4720, %4699 ], [ %4697, %4612 ]
  %4725 = phi float [ %4721, %4699 ], [ %4698, %4612 ]
  %4726 = fmul fast float %4639, 9.843750e-01
  %4727 = fadd fast float %4726, 7.812500e-03
  %4728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %4727, float %3605, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4729 = extractvalue %dx.types.ResRet.f32 %4728, 0
  %4730 = extractvalue %dx.types.ResRet.f32 %4728, 1
  %4731 = extractvalue %dx.types.ResRet.f32 %4728, 2
  %4732 = extractvalue %dx.types.ResRet.f32 %4728, 3
  %4733 = fsub fast float %4731, %4729
  %4734 = fsub fast float %4732, %4730
  %4735 = fmul fast float %4733, %3611
  %4736 = fmul fast float %4734, %3611
  %4737 = fadd fast float %4735, %4729
  %4738 = fadd fast float %4736, %4730
  %4739 = fmul fast float %4737, %2322
  %4740 = fmul fast float %4737, %2323
  %4741 = fmul fast float %4737, %2334
  %4742 = fadd fast float %4739, %4738
  %4743 = fadd fast float %4740, %4738
  %4744 = fadd fast float %4741, %4738
  br i1 %3624, label %4745, label %4768

; <label>:4745                                    ; preds = %4722
  %4746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1692, float %4639, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4747 = extractvalue %dx.types.ResRet.f32 %4746, 0
  %4748 = extractvalue %dx.types.ResRet.f32 %4746, 1
  %4749 = extractvalue %dx.types.ResRet.f32 %4746, 2
  %4750 = fadd fast float %4747, -5.000000e-01
  %4751 = fadd fast float %4748, -5.000000e-01
  %4752 = fadd fast float %4749, -5.000000e-01
  %4753 = fmul fast float %2322, 4.000000e+00
  %4754 = fmul fast float %4753, %4690
  %4755 = fmul fast float %4754, %4750
  %4756 = fmul fast float %2323, 4.000000e+00
  %4757 = fmul fast float %4756, %4691
  %4758 = fmul fast float %4757, %4751
  %4759 = fmul fast float %2334, 4.000000e+00
  %4760 = fmul fast float %4759, %4692
  %4761 = fmul fast float %4760, %4752
  %4762 = fadd fast float %4755, %4742
  %4763 = fadd fast float %4758, %4743
  %4764 = fadd fast float %4761, %4744
  %4765 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  %4766 = call float @dx.op.unary.f32(i32 7, float %4763)  ; Saturate(value)
  %4767 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  br label %4768

; <label>:4768                                    ; preds = %4745, %4722
  %4769 = phi float [ %4765, %4745 ], [ %4742, %4722 ]
  %4770 = phi float [ %4766, %4745 ], [ %4743, %4722 ]
  %4771 = phi float [ %4767, %4745 ], [ %4744, %4722 ]
  %4772 = call float @dx.op.binary.f32(i32 35, float %4770, float %4771)  ; FMax(a,b)
  %4773 = call float @dx.op.binary.f32(i32 35, float %4769, float %4772)  ; FMax(a,b)
  %4774 = fsub fast float 1.000000e+00, %4773
  %4775 = fmul fast float %4723, %4677
  %4776 = fmul fast float %4724, %4677
  %4777 = fmul fast float %4725, %4677
  %4778 = fsub fast float 1.000000e+00, %4640
  %4779 = bitcast float %4778 to i32
  %4780 = sitofp i32 %4779 to float
  %4781 = fmul fast float %4780, 5.000000e+00
  %4782 = fadd fast float %4781, 0xC1EFBF8940000000
  %4783 = fptosi float %4782 to i32
  %4784 = bitcast i32 %4783 to float
  %4785 = fmul fast float %4784, %1691
  %4786 = fmul fast float %4774, %4785
  %4787 = fmul fast float %4786, %3674
  %4788 = fmul fast float %4786, %3675
  %4789 = fmul fast float %4786, %3676
  %4790 = fadd fast float %4787, %4775
  %4791 = fadd fast float %4788, %4776
  %4792 = fadd fast float %4789, %4777
  %4793 = fmul fast float %4645, %4628
  %4794 = fmul fast float %4793, %4774
  %4795 = fmul fast float %4645, %4629
  %4796 = fmul fast float %4795, %4774
  %4797 = fmul fast float %4645, %4630
  %4798 = fmul fast float %4797, %4774
  %4799 = fmul fast float %4793, %4790
  %4800 = fmul fast float %4795, %4791
  %4801 = fmul fast float %4797, %4792
  %4802 = fadd fast float %4794, %3658
  %4803 = fmul fast float %4802, %1739
  %4804 = fadd fast float %4796, %3659
  %4805 = fmul fast float %4804, %1739
  %4806 = fadd fast float %4798, %3660
  %4807 = fmul fast float %4806, %1739
  %4808 = fadd fast float %4799, %3727
  %4809 = fmul fast float %4808, %1739
  %4810 = fadd fast float %4800, %3730
  %4811 = fmul fast float %4810, %1739
  %4812 = fadd fast float %4801, %3733
  %4813 = fmul fast float %4812, %1739
  br label %4814

; <label>:4814                                    ; preds = %4768, %4546, %3651
  %4815 = phi float [ %3728, %3651 ], [ %3728, %4546 ], [ %4809, %4768 ]
  %4816 = phi float [ %3731, %3651 ], [ %3731, %4546 ], [ %4811, %4768 ]
  %4817 = phi float [ %3734, %3651 ], [ %3734, %4546 ], [ %4813, %4768 ]
  %4818 = phi float [ %3723, %3651 ], [ %3723, %4546 ], [ %4803, %4768 ]
  %4819 = phi float [ %3724, %3651 ], [ %3724, %4546 ], [ %4805, %4768 ]
  %4820 = phi float [ %3725, %3651 ], [ %3725, %4546 ], [ %4807, %4768 ]
  %4821 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4822 = extractvalue %dx.types.CBufRet.i32 %4821, 0
  %4823 = icmp eq i32 %4822, 0
  br i1 %4823, label %5456, label %4824

; <label>:4824                                    ; preds = %4814
  %4825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4826 = extractvalue %dx.types.CBufRet.f32 %4825, 2
  %4827 = extractvalue %dx.types.CBufRet.f32 %4825, 3
  %4828 = fmul fast float %4826, %91
  %4829 = fmul fast float %4827, %92
  %4830 = fptoui float %4828 to i32
  %4831 = fptoui float %4829 to i32
  %4832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4833 = extractvalue %dx.types.CBufRet.f32 %4832, 0
  %4834 = extractvalue %dx.types.CBufRet.f32 %4832, 2
  %4835 = extractvalue %dx.types.CBufRet.f32 %4832, 3
  %4836 = fadd fast float %82, -4.000000e+00
  %4837 = call float @dx.op.binary.f32(i32 35, float %4836, float 0.000000e+00)  ; FMax(a,b)
  %4838 = fadd fast float %4837, %4833
  %4839 = fmul fast float %4838, %4834
  %4840 = call float @dx.op.unary.f32(i32 23, float %4839)  ; Log(value)
  %4841 = fmul fast float %4840, %4835
  %4842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4843 = extractvalue %dx.types.CBufRet.f32 %4842, 2
  %4844 = fmul fast float %4841, %4843
  %4845 = call float @dx.op.unary.f32(i32 7, float %4844)  ; Saturate(value)
  %4846 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4847 = extractvalue %dx.types.CBufRet.i32 %4846, 1
  %4848 = add i32 %4847, -1
  %4849 = uitofp i32 %4847 to float
  %4850 = fmul fast float %4849, %4845
  %4851 = fptoui float %4850 to i32
  %4852 = call i32 @dx.op.binary.i32(i32 40, i32 %4851, i32 %4848)  ; UMin(a,b)
  %4853 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4854 = extractvalue %dx.types.CBufRet.i32 %4853, 2
  %4855 = extractvalue %dx.types.CBufRet.i32 %4853, 3
  %4856 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4831, i32 %4854, i32 %4830)  ; UMad(a,b,c)
  %4857 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4852, i32 %4855, i32 %4856)  ; UMad(a,b,c)
  %4858 = add nsw i32 %4822, -1
  %4859 = call i32 @dx.op.binary.i32(i32 37, i32 %4858, i32 0)  ; IMax(a,b)
  %4860 = call float @dx.op.binary.f32(i32 35, float %82, float 0.000000e+00)  ; FMax(a,b)
  %4861 = fptoui float %4860 to i32
  %4862 = lshr i32 %4861, 5
  %4863 = call i32 @dx.op.binary.i32(i32 40, i32 %4862, i32 8191)  ; UMin(a,b)
  %4864 = shl i32 %4863, 2
  %4865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4864, i32 undef)  ; BufferLoad(srv,index,wot)
  %4866 = extractvalue %dx.types.ResRet.i32 %4865, 0
  %4867 = lshr i32 %4866, 16
  %4868 = and i32 %4866, 65535
  %4869 = lshr i32 %4866, 21
  %4870 = lshr i32 %4868, 5
  %4871 = call i32 @dx.op.binary.i32(i32 40, i32 %4870, i32 %4859)  ; UMin(a,b)
  %4872 = icmp ugt i32 %4869, %4871
  br i1 %4872, label %5456, label %4873

; <label>:4873                                    ; preds = %4824
  br label %4874

; <label>:4874                                    ; preds = %5446, %4873
  %4875 = phi i32 [ %5453, %5446 ], [ %4869, %4873 ]
  %4876 = phi float [ %5447, %5446 ], [ %4815, %4873 ]
  %4877 = phi float [ %5448, %5446 ], [ %4816, %4873 ]
  %4878 = phi float [ %5449, %5446 ], [ %4817, %4873 ]
  %4879 = phi float [ %5450, %5446 ], [ %4818, %4873 ]
  %4880 = phi float [ %5451, %5446 ], [ %4819, %4873 ]
  %4881 = phi float [ %5452, %5446 ], [ %4820, %4873 ]
  %4882 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4883 = extractvalue %dx.types.CBufRet.i32 %4882, 0
  %4884 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4857, i32 %4883, i32 %4875)  ; UMad(a,b,c)
  %4885 = shl i32 %4884, 2
  %4886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4885, i32 undef)  ; BufferLoad(srv,index,wot)
  %4887 = extractvalue %dx.types.ResRet.i32 %4886, 0
  %4888 = shl i32 %4875, 5
  %4889 = sub nsw i32 %4867, %4888
  %4890 = call i32 @dx.op.binary.i32(i32 37, i32 %4889, i32 0)  ; IMax(a,b)
  %4891 = call i32 @dx.op.binary.i32(i32 38, i32 %4890, i32 31)  ; IMin(a,b)
  %4892 = sub nsw i32 1, %4867
  %4893 = add nsw i32 %4892, %4868
  %4894 = call i32 @dx.op.binary.i32(i32 37, i32 %4893, i32 0)  ; IMax(a,b)
  %4895 = call i32 @dx.op.binary.i32(i32 38, i32 %4894, i32 32)  ; IMin(a,b)
  %4896 = and i32 %4895, 31
  %4897 = shl i32 -1, %4896
  %4898 = xor i32 %4897, -1
  %4899 = and i32 %4891, 31
  %4900 = shl i32 %4898, %4899
  %4901 = icmp eq i32 %4895, 32
  %4902 = select i1 %4901, i32 -1, i32 %4900
  %4903 = and i32 %4902, %4887
  %4904 = icmp eq i32 %4903, 0
  br i1 %4904, label %5446, label %4905

; <label>:4905                                    ; preds = %4874
  br label %4906

; <label>:4906                                    ; preds = %5040, %4905
  %4907 = phi i32 [ %4918, %5040 ], [ %4903, %4905 ]
  %4908 = phi float [ %5041, %5040 ], [ %4876, %4905 ]
  %4909 = phi float [ %5042, %5040 ], [ %4877, %4905 ]
  %4910 = phi float [ %5043, %5040 ], [ %4878, %4905 ]
  %4911 = phi float [ %5044, %5040 ], [ %4879, %4905 ]
  %4912 = phi float [ %5045, %5040 ], [ %4880, %4905 ]
  %4913 = phi float [ %5046, %5040 ], [ %4881, %4905 ]
  %4914 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4907)  ; FirstbitLo(value)
  %4915 = add i32 %4914, %4888
  %4916 = and i32 %4914, 31
  %4917 = shl i32 1, %4916
  %4918 = xor i32 %4917, %4907
  %4919 = mul i32 %4915, 112
  %4920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4919, i32 undef)  ; BufferLoad(srv,index,wot)
  %4921 = extractvalue %dx.types.ResRet.f32 %4920, 0
  %4922 = extractvalue %dx.types.ResRet.f32 %4920, 1
  %4923 = extractvalue %dx.types.ResRet.f32 %4920, 2
  %4924 = or i32 %4919, 12
  %4925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4924, i32 undef)  ; BufferLoad(srv,index,wot)
  %4926 = extractvalue %dx.types.ResRet.f32 %4925, 0
  %4927 = add i32 %4919, 16
  %4928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4927, i32 undef)  ; BufferLoad(srv,index,wot)
  %4929 = extractvalue %dx.types.ResRet.f32 %4928, 0
  %4930 = extractvalue %dx.types.ResRet.f32 %4928, 1
  %4931 = extractvalue %dx.types.ResRet.f32 %4928, 2
  %4932 = add i32 %4919, 28
  %4933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4932, i32 undef)  ; BufferLoad(srv,index,wot)
  %4934 = extractvalue %dx.types.ResRet.i32 %4933, 0
  %4935 = add i32 %4919, 44
  %4936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4935, i32 undef)  ; BufferLoad(srv,index,wot)
  %4937 = extractvalue %dx.types.ResRet.f32 %4936, 0
  %4938 = add i32 %4919, 48
  %4939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4938, i32 undef)  ; BufferLoad(srv,index,wot)
  %4940 = extractvalue %dx.types.ResRet.f32 %4939, 0
  %4941 = extractvalue %dx.types.ResRet.f32 %4939, 1
  %4942 = extractvalue %dx.types.ResRet.f32 %4939, 2
  %4943 = extractvalue %dx.types.ResRet.f32 %4939, 3
  %4944 = add i32 %4919, 64
  %4945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4944, i32 undef)  ; BufferLoad(srv,index,wot)
  %4946 = extractvalue %dx.types.ResRet.f32 %4945, 0
  %4947 = extractvalue %dx.types.ResRet.f32 %4945, 1
  %4948 = extractvalue %dx.types.ResRet.f32 %4945, 2
  %4949 = extractvalue %dx.types.ResRet.f32 %4945, 3
  %4950 = add i32 %4919, 80
  %4951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4950, i32 undef)  ; BufferLoad(srv,index,wot)
  %4952 = extractvalue %dx.types.ResRet.f32 %4951, 1
  %4953 = extractvalue %dx.types.ResRet.f32 %4951, 2
  %4954 = add i32 %4919, 92
  %4955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4954, i32 undef)  ; BufferLoad(srv,index,wot)
  %4956 = extractvalue %dx.types.ResRet.i32 %4955, 0
  %4957 = call float @dx.op.dot3.f32(i32 55, float %4921, float %4922, float %4923, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4958 = select i1 %261, float %4952, float %4921
  %4959 = select i1 %261, float %4957, float %4922
  %4960 = select i1 %261, float %4953, float %4923
  %4961 = and i32 %4956, 65535
  %4962 = uitofp i32 %4961 to float
  %4963 = lshr i32 %4956, 16
  %4964 = uitofp i32 %4963 to float
  %4965 = and i32 %4934, 65535
  %4966 = and i32 %4934, 50331648
  %4967 = icmp eq i32 %4966, 33554432
  %4968 = fsub fast float %4940, %138
  %4969 = fsub fast float %4941, %139
  %4970 = fsub fast float %4942, %140
  %4971 = call float @dx.op.dot3.f32(i32 55, float %4968, float %4969, float %4970, float %4968, float %4969, float %4970)  ; Dot3(ax,ay,az,bx,by,bz)
  %4972 = call float @dx.op.unary.f32(i32 24, float %4971)  ; Sqrt(value)
  %4973 = fdiv fast float 1.000000e+00, %4972
  %4974 = fmul fast float %4973, %4968
  %4975 = fmul fast float %4973, %4969
  %4976 = fmul fast float %4973, %4970
  %4977 = fadd fast float %4972, %4926
  %4978 = fdiv fast float 1.000000e+00, %4977
  %4979 = fmul float %4937, %4978
  %4980 = fmul float %4979, %4979
  %4981 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  br i1 %4967, label %4982, label %5003

; <label>:4982                                    ; preds = %4906
  %4983 = fmul fast float %4948, %4929
  %4984 = fmul fast float %4948, %4930
  %4985 = fmul fast float %4948, %4931
  %4986 = fadd fast float %4968, %4983
  %4987 = fadd fast float %4969, %4984
  %4988 = fadd fast float %4970, %4985
  %4989 = call float @dx.op.dot3.f32(i32 55, float %4986, float %4987, float %4988, float %4986, float %4987, float %4988)  ; Dot3(ax,ay,az,bx,by,bz)
  %4990 = call float @dx.op.unary.f32(i32 25, float %4989)  ; Rsqrt(value)
  %4991 = fmul fast float %4990, %4986
  %4992 = fmul fast float %4990, %4987
  %4993 = fmul fast float %4990, %4988
  %4994 = fsub fast float %138, %4940
  %4995 = fsub fast float %139, %4941
  %4996 = fsub fast float %140, %4942
  %4997 = fsub fast float -0.000000e+00, %4994
  %4998 = fsub fast float -0.000000e+00, %4995
  %4999 = fsub fast float -0.000000e+00, %4996
  %5000 = call float @dx.op.dot3.f32(i32 55, float %4997, float %4998, float %4999, float %4929, float %4930, float %4931)  ; Dot3(ax,ay,az,bx,by,bz)
  %5001 = fcmp fast ogt float %5000, 0.000000e+00
  %5002 = uitofp i1 %5001 to float
  br label %5003

; <label>:5003                                    ; preds = %4982, %4906
  %5004 = phi float [ %5002, %4982 ], [ 1.000000e+00, %4906 ]
  %5005 = phi float [ %4991, %4982 ], [ %4974, %4906 ]
  %5006 = phi float [ %4992, %4982 ], [ %4975, %4906 ]
  %5007 = phi float [ %4993, %4982 ], [ %4976, %4906 ]
  %5008 = call float @dx.op.dot3.f32(i32 55, float %4929, float %4930, float %4931, float %5005, float %5006, float %5007)  ; Dot3(ax,ay,az,bx,by,bz)
  %5009 = fmul fast float %5008, %5008
  %5010 = call float @dx.op.unary.f32(i32 7, float %5009)  ; Saturate(value)
  %5011 = fsub fast float 1.000000e+00, %5010
  %5012 = fmul fast float %5011, 5.000000e-01
  %5013 = fcmp fast ogt float %5008, 0.000000e+00
  %5014 = fsub fast float 1.000000e+00, %5012
  %5015 = select i1 %5013, float %5012, float %5014
  %5016 = fmul fast float %5015, %4964
  %5017 = fadd fast float %5016, %4962
  %5018 = fmul fast float %5017, 0x3EF0001000000000
  %5019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %58, float %5018, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5020 = extractvalue %dx.types.ResRet.f32 %5019, 0
  %5021 = fmul fast float %5008, %4946
  %5022 = fadd fast float %5021, %4947
  %5023 = call float @dx.op.unary.f32(i32 7, float %5022)  ; Saturate(value)
  %5024 = select i1 %4967, float 1.000000e+00, float %5023
  %5025 = select i1 %4967, float %5023, float 1.000000e+00
  %5026 = fmul fast float %4972, %4943
  %5027 = fsub fast float 1.000000e+00, %5026
  %5028 = fmul fast float %5027, %4949
  %5029 = call float @dx.op.unary.f32(i32 7, float %5028)  ; Saturate(value)
  %5030 = fmul fast float %5029, %5025
  %5031 = fmul fast float %5030, 2.000000e+00
  %5032 = fsub fast float 3.000000e+00, %5031
  %5033 = fmul fast float %5020, %5004
  %5034 = fmul fast float %5030, %5030
  %5035 = fmul fast float %5034, %5033
  %5036 = fmul fast float %5035, %5032
  %5037 = call float @dx.op.binary.f32(i32 36, float %5036, float %5036)  ; FMin(a,b)
  %5038 = call float @dx.op.binary.f32(i32 36, float %5036, float %5037)  ; FMin(a,b)
  %5039 = fcmp fast ogt float %5038, 0.000000e+00
  br i1 %5039, label %5048, label %5040, !dx.controlflow.hints !131

; <label>:5040                                    ; preds = %5402, %5148, %5003
  %5041 = phi float [ %4908, %5148 ], [ %4908, %5003 ], [ %5442, %5402 ]
  %5042 = phi float [ %4909, %5148 ], [ %4909, %5003 ], [ %5443, %5402 ]
  %5043 = phi float [ %4910, %5148 ], [ %4910, %5003 ], [ %5444, %5402 ]
  %5044 = phi float [ %4911, %5148 ], [ %4911, %5003 ], [ %5436, %5402 ]
  %5045 = phi float [ %4912, %5148 ], [ %4912, %5003 ], [ %5437, %5402 ]
  %5046 = phi float [ %4913, %5148 ], [ %4913, %5003 ], [ %5438, %5402 ]
  %5047 = icmp eq i32 %4907, %4917
  br i1 %5047, label %5445, label %4906

; <label>:5048                                    ; preds = %5003
  %5049 = icmp eq i32 %4965, 255
  br i1 %5049, label %5148, label %5050, !dx.controlflow.hints !132

; <label>:5050                                    ; preds = %5048
  %5051 = mul nuw nsw i32 %4965, 176
  %5052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5051, i32 undef)  ; BufferLoad(srv,index,wot)
  %5053 = extractvalue %dx.types.ResRet.f32 %5052, 0
  %5054 = extractvalue %dx.types.ResRet.f32 %5052, 1
  %5055 = extractvalue %dx.types.ResRet.f32 %5052, 2
  %5056 = extractvalue %dx.types.ResRet.f32 %5052, 3
  %5057 = add nuw nsw i32 %5051, 16
  %5058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5057, i32 undef)  ; BufferLoad(srv,index,wot)
  %5059 = extractvalue %dx.types.ResRet.f32 %5058, 0
  %5060 = extractvalue %dx.types.ResRet.f32 %5058, 1
  %5061 = add nuw nsw i32 %5051, 32
  %5062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5061, i32 undef)  ; BufferLoad(srv,index,wot)
  %5063 = extractvalue %dx.types.ResRet.f32 %5062, 0
  %5064 = extractvalue %dx.types.ResRet.f32 %5062, 1
  %5065 = extractvalue %dx.types.ResRet.f32 %5062, 2
  %5066 = add nuw nsw i32 %5051, 48
  %5067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5066, i32 undef)  ; BufferLoad(srv,index,wot)
  %5068 = extractvalue %dx.types.ResRet.f32 %5067, 0
  %5069 = extractvalue %dx.types.ResRet.f32 %5067, 1
  %5070 = extractvalue %dx.types.ResRet.f32 %5067, 2
  %5071 = extractvalue %dx.types.ResRet.f32 %5067, 3
  %5072 = add nuw nsw i32 %5051, 64
  %5073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5072, i32 undef)  ; BufferLoad(srv,index,wot)
  %5074 = extractvalue %dx.types.ResRet.f32 %5073, 0
  %5075 = extractvalue %dx.types.ResRet.f32 %5073, 1
  %5076 = extractvalue %dx.types.ResRet.f32 %5073, 2
  %5077 = extractvalue %dx.types.ResRet.f32 %5073, 3
  %5078 = add nuw nsw i32 %5051, 80
  %5079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5078, i32 undef)  ; BufferLoad(srv,index,wot)
  %5080 = extractvalue %dx.types.ResRet.f32 %5079, 0
  %5081 = extractvalue %dx.types.ResRet.f32 %5079, 1
  %5082 = extractvalue %dx.types.ResRet.f32 %5079, 2
  %5083 = extractvalue %dx.types.ResRet.f32 %5079, 3
  %5084 = add nuw nsw i32 %5051, 96
  %5085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5084, i32 undef)  ; BufferLoad(srv,index,wot)
  %5086 = extractvalue %dx.types.ResRet.f32 %5085, 0
  %5087 = extractvalue %dx.types.ResRet.f32 %5085, 1
  %5088 = extractvalue %dx.types.ResRet.f32 %5085, 2
  %5089 = extractvalue %dx.types.ResRet.f32 %5085, 3
  %5090 = bitcast float %5060 to i32
  %5091 = fmul fast float %5065, %70
  %5092 = fmul fast float %5065, %71
  %5093 = fmul fast float %5065, %72
  %5094 = fadd fast float %5091, %138
  %5095 = fadd fast float %5092, %139
  %5096 = fadd fast float %5093, %140
  %5097 = fmul fast float %5094, %5068
  %5098 = call float @dx.op.tertiary.f32(i32 46, float %5095, float %5074, float %5097)  ; FMad(a,b,c)
  %5099 = call float @dx.op.tertiary.f32(i32 46, float %5096, float %5080, float %5098)  ; FMad(a,b,c)
  %5100 = fadd fast float %5099, %5086
  %5101 = fmul fast float %5094, %5069
  %5102 = call float @dx.op.tertiary.f32(i32 46, float %5095, float %5075, float %5101)  ; FMad(a,b,c)
  %5103 = call float @dx.op.tertiary.f32(i32 46, float %5096, float %5081, float %5102)  ; FMad(a,b,c)
  %5104 = fadd fast float %5103, %5087
  %5105 = fmul fast float %5094, %5070
  %5106 = call float @dx.op.tertiary.f32(i32 46, float %5095, float %5076, float %5105)  ; FMad(a,b,c)
  %5107 = call float @dx.op.tertiary.f32(i32 46, float %5096, float %5082, float %5106)  ; FMad(a,b,c)
  %5108 = fadd fast float %5107, %5088
  %5109 = fmul fast float %5094, %5071
  %5110 = call float @dx.op.tertiary.f32(i32 46, float %5095, float %5077, float %5109)  ; FMad(a,b,c)
  %5111 = call float @dx.op.tertiary.f32(i32 46, float %5096, float %5083, float %5110)  ; FMad(a,b,c)
  %5112 = fadd fast float %5111, %5089
  %5113 = fdiv fast float %5100, %5112
  %5114 = fdiv fast float %5104, %5112
  %5115 = fdiv fast float %5108, %5112
  %5116 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5115)  ; FMax(a,b)
  %5117 = fmul fast float %272, 0x401921FB60000000
  %5118 = call float @dx.op.unary.f32(i32 13, float %5117)  ; Sin(value)
  %5119 = call float @dx.op.unary.f32(i32 12, float %5117)  ; Cos(value)
  %5120 = fsub fast float -0.000000e+00, %5118
  %5121 = fmul fast float %5055, 5.000000e-01
  %5122 = call float @dx.op.dot2.f32(i32 54, float %272, float %272, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %5123 = call float @dx.op.unary.f32(i32 22, float %5122)  ; Frc(value)
  %5124 = fmul fast float %5123, 0x404A7DD040000000
  %5125 = call float @dx.op.unary.f32(i32 22, float %5124)  ; Frc(value)
  %5126 = fmul fast float %5125, %5064
  %5127 = fadd fast float %5126, %5121
  %5128 = call float @dx.op.tertiary.f32(i32 46, float %5127, float %5120, float 0.000000e+00)  ; FMad(a,b,c)
  %5129 = call float @dx.op.tertiary.f32(i32 46, float %5127, float %5119, float 0.000000e+00)  ; FMad(a,b,c)
  %5130 = fadd fast float %5128, %5113
  %5131 = fadd fast float %5129, %5114
  %5132 = fmul fast float %5130, %5059
  %5133 = fmul fast float %5131, %5059
  %5134 = call float @dx.op.binary.f32(i32 35, float %5132, float %5055)  ; FMax(a,b)
  %5135 = call float @dx.op.binary.f32(i32 35, float %5133, float %5055)  ; FMax(a,b)
  %5136 = call float @dx.op.binary.f32(i32 36, float %5134, float %5056)  ; FMin(a,b)
  %5137 = call float @dx.op.binary.f32(i32 36, float %5135, float %5056)  ; FMin(a,b)
  %5138 = fadd fast float %5136, %5053
  %5139 = fadd fast float %5137, %5054
  %5140 = uitofp i32 %5090 to float
  %5141 = fadd fast float %5116, %5063
  %5142 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %60, float %5138, float %5139, float %5140, float undef, i32 0, i32 0, i32 undef, float %5141)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5143 = extractvalue %dx.types.ResRet.f32 %5142, 0
  %5144 = fadd fast float %5143, -1.000000e+00
  %5145 = fmul fast float %5144, %5024
  %5146 = fadd fast float %5145, 1.000000e+00
  %5147 = fmul fast float %5146, %5036
  br label %5148

; <label>:5148                                    ; preds = %5050, %5048
  %5149 = phi float [ %5147, %5050 ], [ %5036, %5048 ]
  %5150 = call float @dx.op.binary.f32(i32 36, float %5149, float %5149)  ; FMin(a,b)
  %5151 = call float @dx.op.binary.f32(i32 36, float %5149, float %5150)  ; FMin(a,b)
  %5152 = fcmp fast ogt float %5151, 0.000000e+00
  br i1 %5152, label %5153, label %5040, !dx.controlflow.hints !133

; <label>:5153                                    ; preds = %5148
  %5154 = fmul fast float %5149, %4958
  %5155 = fmul fast float %5149, %4959
  %5156 = fmul fast float %5149, %4960
  %5157 = fsub fast float %4942, %2139
  %5158 = fcmp fast ogt float %5157, 0.000000e+00
  %5159 = fsub fast float %140, %2139
  %5160 = fcmp fast ogt float %5159, 0.000000e+00
  %5161 = xor i1 %5160, %5158
  %5162 = fsub fast float %2139, %4942
  %5163 = fmul fast float %5162, 2.000000e+00
  %5164 = fadd fast float %5163, %4942
  %5165 = select i1 %5161, float %4942, float %5164
  %5166 = fsub fast float %5165, %140
  %5167 = call float @dx.op.dot3.f32(i32 55, float %4968, float %4969, float %5166, float %4968, float %4969, float %5166)  ; Dot3(ax,ay,az,bx,by,bz)
  %5168 = call float @dx.op.unary.f32(i32 25, float %5167)  ; Rsqrt(value)
  %5169 = fmul fast float %5168, %4968
  %5170 = fmul fast float %5168, %4969
  %5171 = fmul fast float %5168, %5166
  %5172 = fsub fast float %2139, %140
  %5173 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5174 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5169, float %5170, float %5171)  ; Dot3(ax,ay,az,bx,by,bz)
  %5175 = fdiv fast float 1.000000e+00, %5174
  %5176 = fmul fast float %5175, %5173
  %5177 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5159, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5178 = fcmp fast ogt float %5177, 0.000000e+00
  %5179 = fcmp fast olt float %5177, 0.000000e+00
  %5180 = zext i1 %5178 to i32
  %5181 = zext i1 %5179 to i32
  %5182 = sub nsw i32 %5180, %5181
  %5183 = sitofp i32 %5182 to float
  %5184 = fsub fast float %5165, %2139
  %5185 = call float @dx.op.dot3.f32(i32 55, float %4968, float %4969, float %5184, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5186 = fcmp fast ogt float %5185, 0.000000e+00
  %5187 = fcmp fast olt float %5185, 0.000000e+00
  %5188 = zext i1 %5186 to i32
  %5189 = zext i1 %5187 to i32
  %5190 = sub nsw i32 %5188, %5189
  %5191 = sitofp i32 %5190 to float
  %5192 = fcmp fast une float %5183, %5191
  br i1 %5192, label %5193, label %5203

; <label>:5193                                    ; preds = %5153
  %5194 = fmul fast float %5176, %5171
  %5195 = fmul fast float %5176, %5170
  %5196 = fmul fast float %5176, %5169
  %5197 = fmul fast float %5196, %5196
  %5198 = fmul fast float %5195, %5195
  %5199 = fadd fast float %5197, %5198
  %5200 = fmul fast float %5194, %5194
  %5201 = fadd fast float %5199, %5200
  %5202 = call float @dx.op.unary.f32(i32 24, float %5201)  ; Sqrt(value)
  br label %5215

; <label>:5203                                    ; preds = %5153
  %5204 = icmp slt i32 %5182, 0
  br i1 %5204, label %5205, label %5215

; <label>:5205                                    ; preds = %5203
  %5206 = fsub fast float %138, %4940
  %5207 = fsub fast float %139, %4941
  %5208 = fsub fast float %140, %5165
  %5209 = fmul fast float %5206, %5206
  %5210 = fmul fast float %5207, %5207
  %5211 = fadd fast float %5209, %5210
  %5212 = fmul fast float %5208, %5208
  %5213 = fadd fast float %5211, %5212
  %5214 = call float @dx.op.unary.f32(i32 24, float %5213)  ; Sqrt(value)
  br label %5215

; <label>:5215                                    ; preds = %5205, %5203, %5193
  %5216 = phi float [ %5202, %5193 ], [ %5214, %5205 ], [ 0.000000e+00, %5203 ]
  %5217 = and i1 %5160, %5158
  %5218 = fsub fast float -0.000000e+00, %5216
  %5219 = select i1 %5217, float -0.000000e+00, float %5218
  %5220 = fmul fast float %2140, 0x3FF7154760000000
  %5221 = fmul fast float %5220, %5219
  %5222 = fmul fast float %2141, 0x3FF7154760000000
  %5223 = fmul fast float %5222, %5219
  %5224 = fmul fast float %2142, 0x3FF7154760000000
  %5225 = fmul fast float %5224, %5219
  %5226 = call float @dx.op.unary.f32(i32 21, float %5221)  ; Exp(value)
  %5227 = call float @dx.op.unary.f32(i32 21, float %5223)  ; Exp(value)
  %5228 = call float @dx.op.unary.f32(i32 21, float %5225)  ; Exp(value)
  %5229 = call float @dx.op.unary.f32(i32 7, float %5226)  ; Saturate(value)
  %5230 = call float @dx.op.unary.f32(i32 7, float %5227)  ; Saturate(value)
  %5231 = call float @dx.op.unary.f32(i32 7, float %5228)  ; Saturate(value)
  %5232 = fmul fast float %5154, %5229
  %5233 = fmul fast float %5155, %5230
  %5234 = fmul fast float %5156, %5231
  %5235 = fsub fast float %4974, %187
  %5236 = fsub fast float %4975, %188
  %5237 = fsub fast float %4976, %189
  %5238 = call float @dx.op.dot3.f32(i32 55, float %5235, float %5236, float %5237, float %5235, float %5236, float %5237)  ; Dot3(ax,ay,az,bx,by,bz)
  %5239 = call float @dx.op.unary.f32(i32 25, float %5238)  ; Rsqrt(value)
  %5240 = fmul fast float %5239, %5235
  %5241 = fmul fast float %5239, %5236
  %5242 = fmul fast float %5239, %5237
  %5243 = call float @dx.op.dot3.f32(i32 55, float %4974, float %4975, float %4976, float %2328, float %2329, float %2330)  ; Dot3(ax,ay,az,bx,by,bz)
  %5244 = call float @dx.op.dot3.f32(i32 55, float %2156, float %2157, float %2158, float %5240, float %5241, float %5242)  ; Dot3(ax,ay,az,bx,by,bz)
  %5245 = call float @dx.op.unary.f32(i32 7, float %5243)  ; Saturate(value)
  %5246 = fmul fast float %5245, %4981
  %5247 = fmul fast float %5245, %5245
  %5248 = fmul fast float %5247, %3735
  %5249 = call float @dx.op.unary.f32(i32 7, float %5248)  ; Saturate(value)
  %5250 = fmul fast float %5246, %5249
  %5251 = bitcast float %4971 to i32
  %5252 = ashr i32 %5251, 1
  %5253 = sub nsw i32 1597463007, %5252
  %5254 = bitcast i32 %5253 to float
  %5255 = fmul fast float %5254, %4968
  %5256 = fmul fast float %5254, %4969
  %5257 = fmul fast float %5254, %4970
  %5258 = fsub fast float %5255, %187
  %5259 = fsub fast float %5256, %188
  %5260 = fsub fast float %5257, %189
  %5261 = call float @dx.op.dot3.f32(i32 55, float %5258, float %5259, float %5260, float %5258, float %5259, float %5260)  ; Dot3(ax,ay,az,bx,by,bz)
  %5262 = call float @dx.op.unary.f32(i32 25, float %5261)  ; Rsqrt(value)
  %5263 = fmul fast float %5258, %5262
  %5264 = fmul fast float %5259, %5262
  %5265 = fmul fast float %5260, %5262
  %5266 = call float @dx.op.dot3.f32(i32 55, float %2328, float %2329, float %2330, float %5263, float %5264, float %5265)  ; Dot3(ax,ay,az,bx,by,bz)
  %5267 = fmul fast float %5266, %5266
  %5268 = call float @dx.op.unary.f32(i32 6, float %5243)  ; FAbs(value)
  %5269 = fsub fast float 1.000000e+00, %2331
  %5270 = call float @dx.op.binary.f32(i32 35, float %5269, float 0x3F847AE140000000)  ; FMax(a,b)
  %5271 = fmul fast float %5270, %5270
  %5272 = fmul fast float %5271, %5271
  %5273 = fsub fast float 1.000000e+00, %5272
  %5274 = fmul fast float %2336, %2336
  %5275 = fmul fast float %5274, %5273
  %5276 = fadd fast float %5275, %5272
  %5277 = bitcast float %5276 to i32
  %5278 = ashr i32 %5277, 1
  %5279 = add nsw i32 %5278, 532487669
  %5280 = bitcast i32 %5279 to float
  %5281 = fadd fast float %5280, %2336
  %5282 = fmul fast float %5272, %5267
  %5283 = fsub fast float 1.000000e+00, %5267
  %5284 = fadd fast float %5283, %5282
  %5285 = fmul fast float %5268, %5268
  %5286 = fmul fast float %5285, %5273
  %5287 = fadd fast float %5286, %5272
  %5288 = bitcast float %5287 to i32
  %5289 = ashr i32 %5288, 1
  %5290 = add nsw i32 %5289, 532487669
  %5291 = bitcast i32 %5290 to float
  %5292 = fadd fast float %5291, %5268
  %5293 = fmul fast float %5284, %5284
  %5294 = fmul fast float %5293, %5281
  %5295 = fmul fast float %5294, %5292
  %5296 = fdiv fast float 1.000000e+00, %5295
  %5297 = bitcast float %5272 to i32
  %5298 = sitofp i32 %5297 to float
  %5299 = fmul fast float %5298, 0x3FE7F73180000000
  %5300 = fadd fast float %5299, 0x41AFE27C40000000
  %5301 = fptosi float %5300 to i32
  %5302 = bitcast i32 %5301 to float
  %5303 = fmul fast float %4937, 0x3FD80E9D60000000
  %5304 = fmul fast float %5303, %5254
  %5305 = fadd fast float %5302, %5304
  %5306 = bitcast float %5305 to i32
  %5307 = sub nsw i32 2129859010, %5306
  %5308 = bitcast i32 %5307 to float
  %5309 = fmul fast float %5272, %5296
  %5310 = fmul fast float %5309, %5302
  %5311 = fmul fast float %5310, %5308
  %5312 = fmul fast float %3601, 0x3FF9999980000000
  %5313 = fsub fast float 5.000000e+00, %5312
  %5314 = call float @dx.op.unary.f32(i32 6, float %5244)  ; FAbs(value)
  %5315 = fsub fast float 1.000000e+00, %5314
  %5316 = fmul fast float %3601, 0x41D9660740000000
  %5317 = fadd fast float %5316, 0xC1EFBF8940000000
  %5318 = bitcast float %5315 to i32
  %5319 = sitofp i32 %5318 to float
  %5320 = fmul fast float %5319, %5313
  %5321 = fadd fast float %5317, %5320
  %5322 = fptosi float %5321 to i32
  %5323 = bitcast i32 %5322 to float
  %5324 = fsub fast float 1.000000e+00, %2322
  %5325 = fsub fast float 1.000000e+00, %2323
  %5326 = fsub fast float 1.000000e+00, %2334
  %5327 = fmul fast float %5323, %5324
  %5328 = fmul fast float %5323, %5325
  %5329 = fmul fast float %5323, %5326
  %5330 = fadd fast float %5327, %2322
  %5331 = fadd fast float %5328, %2323
  %5332 = fadd fast float %5329, %2334
  br i1 %3624, label %5333, label %5356

; <label>:5333                                    ; preds = %5215
  %5334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1692, float %5314, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5335 = extractvalue %dx.types.ResRet.f32 %5334, 0
  %5336 = extractvalue %dx.types.ResRet.f32 %5334, 1
  %5337 = extractvalue %dx.types.ResRet.f32 %5334, 2
  %5338 = fadd fast float %5335, -5.000000e-01
  %5339 = fadd fast float %5336, -5.000000e-01
  %5340 = fadd fast float %5337, -5.000000e-01
  %5341 = fmul fast float %2322, 4.000000e+00
  %5342 = fmul fast float %5341, %5324
  %5343 = fmul fast float %5342, %5338
  %5344 = fmul fast float %2323, 4.000000e+00
  %5345 = fmul fast float %5344, %5325
  %5346 = fmul fast float %5345, %5339
  %5347 = fmul fast float %2334, 4.000000e+00
  %5348 = fmul fast float %5347, %5326
  %5349 = fmul fast float %5348, %5340
  %5350 = fadd fast float %5343, %5330
  %5351 = fadd fast float %5346, %5331
  %5352 = fadd fast float %5349, %5332
  %5353 = call float @dx.op.unary.f32(i32 7, float %5350)  ; Saturate(value)
  %5354 = call float @dx.op.unary.f32(i32 7, float %5351)  ; Saturate(value)
  %5355 = call float @dx.op.unary.f32(i32 7, float %5352)  ; Saturate(value)
  br label %5356

; <label>:5356                                    ; preds = %5333, %5215
  %5357 = phi float [ %5353, %5333 ], [ %5330, %5215 ]
  %5358 = phi float [ %5354, %5333 ], [ %5331, %5215 ]
  %5359 = phi float [ %5355, %5333 ], [ %5332, %5215 ]
  %5360 = fmul fast float %5243, 9.843750e-01
  %5361 = fadd fast float %5360, 7.812500e-03
  %5362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5361, float %3605, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5363 = extractvalue %dx.types.ResRet.f32 %5362, 0
  %5364 = extractvalue %dx.types.ResRet.f32 %5362, 1
  %5365 = extractvalue %dx.types.ResRet.f32 %5362, 2
  %5366 = extractvalue %dx.types.ResRet.f32 %5362, 3
  %5367 = fsub fast float %5365, %5363
  %5368 = fsub fast float %5366, %5364
  %5369 = fmul fast float %5367, %3611
  %5370 = fmul fast float %5368, %3611
  %5371 = fadd fast float %5369, %5363
  %5372 = fadd fast float %5370, %5364
  %5373 = fmul fast float %5371, %2322
  %5374 = fmul fast float %5371, %2323
  %5375 = fmul fast float %5371, %2334
  %5376 = fadd fast float %5373, %5372
  %5377 = fadd fast float %5374, %5372
  %5378 = fadd fast float %5375, %5372
  br i1 %3624, label %5379, label %5402

; <label>:5379                                    ; preds = %5356
  %5380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1692, float %5243, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5381 = extractvalue %dx.types.ResRet.f32 %5380, 0
  %5382 = extractvalue %dx.types.ResRet.f32 %5380, 1
  %5383 = extractvalue %dx.types.ResRet.f32 %5380, 2
  %5384 = fadd fast float %5381, -5.000000e-01
  %5385 = fadd fast float %5382, -5.000000e-01
  %5386 = fadd fast float %5383, -5.000000e-01
  %5387 = fmul fast float %2322, 4.000000e+00
  %5388 = fmul fast float %5387, %5324
  %5389 = fmul fast float %5388, %5384
  %5390 = fmul fast float %2323, 4.000000e+00
  %5391 = fmul fast float %5390, %5325
  %5392 = fmul fast float %5391, %5385
  %5393 = fmul fast float %2334, 4.000000e+00
  %5394 = fmul fast float %5393, %5326
  %5395 = fmul fast float %5394, %5386
  %5396 = fadd fast float %5389, %5376
  %5397 = fadd fast float %5392, %5377
  %5398 = fadd fast float %5395, %5378
  %5399 = call float @dx.op.unary.f32(i32 7, float %5396)  ; Saturate(value)
  %5400 = call float @dx.op.unary.f32(i32 7, float %5397)  ; Saturate(value)
  %5401 = call float @dx.op.unary.f32(i32 7, float %5398)  ; Saturate(value)
  br label %5402

; <label>:5402                                    ; preds = %5379, %5356
  %5403 = phi float [ %5399, %5379 ], [ %5376, %5356 ]
  %5404 = phi float [ %5400, %5379 ], [ %5377, %5356 ]
  %5405 = phi float [ %5401, %5379 ], [ %5378, %5356 ]
  %5406 = call float @dx.op.binary.f32(i32 35, float %5404, float %5405)  ; FMax(a,b)
  %5407 = call float @dx.op.binary.f32(i32 35, float %5403, float %5406)  ; FMax(a,b)
  %5408 = fsub fast float 1.000000e+00, %5407
  %5409 = fmul fast float %5357, %5311
  %5410 = fmul fast float %5358, %5311
  %5411 = fmul fast float %5359, %5311
  %5412 = fsub fast float 1.000000e+00, %5244
  %5413 = bitcast float %5412 to i32
  %5414 = sitofp i32 %5413 to float
  %5415 = fmul fast float %5414, 5.000000e+00
  %5416 = fadd fast float %5415, 0xC1EFBF8940000000
  %5417 = fptosi float %5416 to i32
  %5418 = bitcast i32 %5417 to float
  %5419 = fmul fast float %5418, %1691
  %5420 = fmul fast float %5408, %5419
  %5421 = fmul fast float %5420, %3674
  %5422 = fmul fast float %5420, %3675
  %5423 = fmul fast float %5420, %3676
  %5424 = fadd fast float %5421, %5409
  %5425 = fadd fast float %5422, %5410
  %5426 = fadd fast float %5423, %5411
  %5427 = fmul fast float %5232, %1739
  %5428 = fmul fast float %5427, %5250
  %5429 = fmul fast float %5428, %5408
  %5430 = fmul fast float %5233, %1739
  %5431 = fmul fast float %5430, %5250
  %5432 = fmul fast float %5431, %5408
  %5433 = fmul fast float %5234, %1739
  %5434 = fmul fast float %5433, %5250
  %5435 = fmul fast float %5434, %5408
  %5436 = fadd fast float %5429, %4911
  %5437 = fadd fast float %5432, %4912
  %5438 = fadd fast float %5435, %4913
  %5439 = fmul fast float %5428, %5424
  %5440 = fmul fast float %5431, %5425
  %5441 = fmul fast float %5434, %5426
  %5442 = fadd fast float %5439, %4908
  %5443 = fadd fast float %5440, %4909
  %5444 = fadd fast float %5441, %4910
  br label %5040

; <label>:5445                                    ; preds = %5040
  br label %5446

; <label>:5446                                    ; preds = %5445, %4874
  %5447 = phi float [ %4876, %4874 ], [ %5041, %5445 ]
  %5448 = phi float [ %4877, %4874 ], [ %5042, %5445 ]
  %5449 = phi float [ %4878, %4874 ], [ %5043, %5445 ]
  %5450 = phi float [ %4879, %4874 ], [ %5044, %5445 ]
  %5451 = phi float [ %4880, %4874 ], [ %5045, %5445 ]
  %5452 = phi float [ %4881, %4874 ], [ %5046, %5445 ]
  %5453 = add i32 %4875, 1
  %5454 = icmp ugt i32 %5453, %4871
  br i1 %5454, label %5455, label %4874

; <label>:5455                                    ; preds = %5446
  br label %5456

; <label>:5456                                    ; preds = %5455, %4824, %4814
  %5457 = phi float [ %4815, %4814 ], [ %4815, %4824 ], [ %5447, %5455 ]
  %5458 = phi float [ %4816, %4814 ], [ %4816, %4824 ], [ %5448, %5455 ]
  %5459 = phi float [ %4817, %4814 ], [ %4817, %4824 ], [ %5449, %5455 ]
  %5460 = phi float [ %4818, %4814 ], [ %4818, %4824 ], [ %5450, %5455 ]
  %5461 = phi float [ %4819, %4814 ], [ %4819, %4824 ], [ %5451, %5455 ]
  %5462 = phi float [ %4820, %4814 ], [ %4820, %4824 ], [ %5452, %5455 ]
  %5463 = fmul fast float %1739, %1739
  %5464 = fmul fast float %5463, %3700
  %5465 = fmul fast float %5463, %3701
  %5466 = fmul fast float %5463, %3702
  %5467 = fadd fast float %5464, 1.000000e+00
  %5468 = fadd fast float %5465, 1.000000e+00
  %5469 = fadd fast float %5466, 1.000000e+00
  %5470 = call float @dx.op.dot3.f32(i32 55, float %5467, float %5468, float %5469, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5471 = fsub fast float 1.000000e+00, %5470
  %5472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5473 = extractvalue %dx.types.CBufRet.f32 %5472, 0
  %5474 = fmul fast float %5473, %3706
  %5475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5476 = extractvalue %dx.types.CBufRet.f32 %5475, 3
  %5477 = fsub fast float 1.000000e+00, %1687
  %5478 = call float @dx.op.unary.f32(i32 7, float %5477)  ; Saturate(value)
  %5479 = fadd fast float %5462, %1686
  %5480 = fmul fast float %5479, %1687
  %5481 = fmul fast float %5478, %5476
  %5482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1718, i32 undef)  ; BufferLoad(srv,index,wot)
  %5483 = extractvalue %dx.types.ResRet.i32 %5482, 3
  %5484 = bitcast i32 %5483 to float
  %5485 = fsub fast float %5471, %5484
  %5486 = fmul fast float %5485, %201
  %5487 = fadd fast float %5486, %5484
  %5488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5489 = extractvalue %dx.types.CBufRet.f32 %5488, 3
  %5490 = fmul fast float %5460, %2325
  %5491 = fmul fast float %5461, %2326
  %5492 = fmul fast float %5462, %2327
  %5493 = fcmp fast ogt float %82, %221
  %5494 = and i1 %5493, %2145
  %5495 = or i1 %2151, %5494
  %5496 = icmp eq i32 %2144, 2
  %5497 = fcmp fast ole float %82, %221
  %5498 = and i1 %5497, %5496
  %5499 = or i1 %5498, %5495
  br i1 %5494, label %5500, label %5759

; <label>:5500                                    ; preds = %5456
  %5501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5502 = extractvalue %dx.types.CBufRet.f32 %5501, 2
  %5503 = extractvalue %dx.types.CBufRet.f32 %5501, 3
  %5504 = fmul fast float %5502, %91
  %5505 = fmul fast float %5503, %92
  %5506 = call float @dx.op.unary.f32(i32 7, float %5504)  ; Saturate(value)
  %5507 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5508 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5506, float %5507, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5509 = extractvalue %dx.types.ResRet.f32 %5508, 0
  %5510 = extractvalue %dx.types.ResRet.f32 %5508, 1
  %5511 = extractvalue %dx.types.ResRet.f32 %5508, 2
  %5512 = extractvalue %dx.types.ResRet.f32 %5508, 3
  %5513 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5506, float %5507, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5514 = extractvalue %dx.types.ResRet.f32 %5513, 0
  %5515 = extractvalue %dx.types.ResRet.f32 %5513, 1
  %5516 = extractvalue %dx.types.ResRet.f32 %5513, 2
  %5517 = extractvalue %dx.types.ResRet.f32 %5513, 3
  %5518 = call float @dx.op.binary.f32(i32 35, float %5510, float %5511)  ; FMax(a,b)
  %5519 = call float @dx.op.binary.f32(i32 35, float %5509, float %5518)  ; FMax(a,b)
  %5520 = call float @dx.op.binary.f32(i32 35, float %5519, float %5512)  ; FMax(a,b)
  %5521 = call float @dx.op.binary.f32(i32 36, float %5515, float %5516)  ; FMin(a,b)
  %5522 = call float @dx.op.binary.f32(i32 36, float %5514, float %5521)  ; FMin(a,b)
  %5523 = call float @dx.op.binary.f32(i32 36, float %5522, float %5517)  ; FMin(a,b)
  %5524 = fmul fast float %5520, 2.550000e+02
  %5525 = fadd fast float %5524, 0x3F70101020000000
  %5526 = fptoui float %5525 to i32
  %5527 = fmul fast float %5523, 2.550000e+02
  %5528 = fadd fast float %5527, 0x3F70101020000000
  %5529 = fptoui float %5528 to i32
  %5530 = icmp ult i32 %5526, %5529
  br i1 %5530, label %5531, label %5699

; <label>:5531                                    ; preds = %5500
  %5532 = fcmp fast ogt float %81, 9.843750e-01
  %5533 = fadd fast float %82, -4.000000e+00
  %5534 = select i1 %5532, float -4.000000e+00, float %5533
  %5535 = call float @dx.op.binary.f32(i32 35, float %5534, float 0.000000e+00)  ; FMax(a,b)
  %5536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5537 = extractvalue %dx.types.CBufRet.f32 %5536, 0
  %5538 = fadd fast float %5537, %5535
  %5539 = extractvalue %dx.types.CBufRet.f32 %5536, 2
  %5540 = fmul fast float %5538, %5539
  %5541 = call float @dx.op.unary.f32(i32 23, float %5540)  ; Log(value)
  %5542 = extractvalue %dx.types.CBufRet.f32 %5536, 3
  %5543 = fmul fast float %5542, %5541
  %5544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5545 = extractvalue %dx.types.CBufRet.f32 %5544, 2
  %5546 = fmul fast float %5543, %5545
  %5547 = call float @dx.op.unary.f32(i32 7, float %5546)  ; Saturate(value)
  %5548 = uitofp i32 %5526 to float
  %5549 = uitofp i32 %5529 to float
  %5550 = fadd fast float %5548, 5.000000e-01
  %5551 = fadd fast float %5549, 5.000000e-01
  %5552 = fmul fast float %5545, %5550
  %5553 = fmul fast float %5545, %5551
  %5554 = fadd fast float %5552, 0x3F0FFB4800000000
  %5555 = fadd fast float %5553, 0xBF0FFB4800000000
  %5556 = call float @dx.op.binary.f32(i32 35, float %5547, float %5554)  ; FMax(a,b)
  %5557 = call float @dx.op.binary.f32(i32 36, float %5556, float %5555)  ; FMin(a,b)
  %5558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5559 = extractvalue %dx.types.CBufRet.f32 %5558, 1
  %5560 = extractvalue %dx.types.CBufRet.f32 %5558, 2
  %5561 = extractvalue %dx.types.CBufRet.f32 %5558, 0
  %5562 = fmul fast float %5559, %5557
  %5563 = fadd fast float %5561, %5562
  %5564 = fadd fast float %5561, %5560
  %5565 = fsub fast float %5559, %5560
  %5566 = fadd fast float %5565, %5561
  %5567 = call float @dx.op.binary.f32(i32 35, float %5563, float %5564)  ; FMax(a,b)
  %5568 = call float @dx.op.binary.f32(i32 36, float %5567, float %5566)  ; FMin(a,b)
  %5569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %5506, float %5507, float %5568, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5570 = extractvalue %dx.types.ResRet.f32 %5569, 0
  %5571 = extractvalue %dx.types.ResRet.f32 %5569, 1
  %5572 = extractvalue %dx.types.ResRet.f32 %5569, 2
  %5573 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5574 = extractvalue %dx.types.CBufRet.i32 %5573, 0
  %5575 = extractvalue %dx.types.CBufRet.i32 %5573, 1
  %5576 = uitofp i32 %5574 to float
  %5577 = uitofp i32 %5575 to float
  %5578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5579 = extractvalue %dx.types.CBufRet.f32 %5578, 0
  %5580 = extractvalue %dx.types.CBufRet.f32 %5578, 1
  %5581 = fmul fast float %5576, %5506
  %5582 = fmul fast float %5577, %5507
  %5583 = fadd fast float %5581, -5.000000e-01
  %5584 = fadd fast float %5582, -5.000000e-01
  %5585 = call float @dx.op.unary.f32(i32 22, float %5583)  ; Frc(value)
  %5586 = call float @dx.op.unary.f32(i32 22, float %5584)  ; Frc(value)
  %5587 = fmul fast float %5585, %5585
  %5588 = fmul fast float %5587, %5585
  %5589 = fsub fast float 3.000000e+00, %5585
  %5590 = fmul fast float %5587, %5589
  %5591 = fmul fast float %5585, 3.000000e+00
  %5592 = fmul fast float %5588, 3.000000e+00
  %5593 = fmul fast float %5587, 6.000000e+00
  %5594 = fsub fast float %5592, %5593
  %5595 = fadd fast float %5594, 4.000000e+00
  %5596 = fmul fast float %5595, 0x3FC5555560000000
  %5597 = fmul fast float %5588, -3.000000e+00
  %5598 = fadd fast float %5587, %5585
  %5599 = fmul fast float %5598, 3.000000e+00
  %5600 = fadd fast float %5597, 1.000000e+00
  %5601 = fadd fast float %5600, %5599
  %5602 = fmul fast float %5588, 0x3FC5555560000000
  %5603 = fmul fast float %5586, %5586
  %5604 = fmul fast float %5603, %5586
  %5605 = fsub fast float 3.000000e+00, %5586
  %5606 = fmul fast float %5603, %5605
  %5607 = fmul fast float %5586, 3.000000e+00
  %5608 = fmul fast float %5604, 3.000000e+00
  %5609 = fmul fast float %5603, 6.000000e+00
  %5610 = fsub fast float %5608, %5609
  %5611 = fadd fast float %5610, 4.000000e+00
  %5612 = fmul fast float %5611, 0x3FC5555560000000
  %5613 = fmul fast float %5604, -3.000000e+00
  %5614 = fadd fast float %5603, %5586
  %5615 = fmul fast float %5614, 3.000000e+00
  %5616 = fadd fast float %5613, 1.000000e+00
  %5617 = fadd fast float %5616, %5615
  %5618 = fmul fast float %5604, 0x3FC5555560000000
  %5619 = fadd fast float %5585, 1.000000e+00
  %5620 = fsub fast float 1.000000e+00, %5591
  %5621 = fadd fast float %5620, %5590
  %5622 = fadd fast float %5621, %5595
  %5623 = fmul fast float %5622, 0x3FC5555560000000
  %5624 = fdiv fast float %5596, %5623
  %5625 = fsub fast float %5619, %5624
  %5626 = fsub fast float 1.000000e+00, %5585
  %5627 = fadd fast float %5601, %5588
  %5628 = fmul fast float %5627, 0x3FC5555560000000
  %5629 = fdiv fast float %5602, %5628
  %5630 = fadd fast float %5626, %5629
  %5631 = fadd fast float %5586, 1.000000e+00
  %5632 = fsub fast float 1.000000e+00, %5607
  %5633 = fadd fast float %5632, %5606
  %5634 = fadd fast float %5633, %5611
  %5635 = fmul fast float %5634, 0x3FC5555560000000
  %5636 = fdiv fast float %5612, %5635
  %5637 = fsub fast float %5631, %5636
  %5638 = fsub fast float 1.000000e+00, %5586
  %5639 = fadd fast float %5617, %5604
  %5640 = fmul fast float %5639, 0x3FC5555560000000
  %5641 = fdiv fast float %5618, %5640
  %5642 = fadd fast float %5641, %5638
  %5643 = fmul fast float %5625, %5579
  %5644 = fsub fast float %5506, %5643
  %5645 = fmul fast float %5630, %5579
  %5646 = fadd fast float %5645, %5506
  %5647 = fmul fast float %5642, %5580
  %5648 = fadd fast float %5647, %5507
  %5649 = fmul fast float %5637, %5580
  %5650 = fsub fast float %5507, %5649
  %5651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5644, float %5650, float %5568, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5652 = extractvalue %dx.types.ResRet.f32 %5651, 0
  %5653 = extractvalue %dx.types.ResRet.f32 %5651, 1
  %5654 = extractvalue %dx.types.ResRet.f32 %5651, 2
  %5655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5646, float %5650, float %5568, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5656 = extractvalue %dx.types.ResRet.f32 %5655, 0
  %5657 = extractvalue %dx.types.ResRet.f32 %5655, 1
  %5658 = extractvalue %dx.types.ResRet.f32 %5655, 2
  %5659 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5644, float %5648, float %5568, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5660 = extractvalue %dx.types.ResRet.f32 %5659, 0
  %5661 = extractvalue %dx.types.ResRet.f32 %5659, 1
  %5662 = extractvalue %dx.types.ResRet.f32 %5659, 2
  %5663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5646, float %5648, float %5568, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5664 = extractvalue %dx.types.ResRet.f32 %5663, 0
  %5665 = extractvalue %dx.types.ResRet.f32 %5663, 1
  %5666 = extractvalue %dx.types.ResRet.f32 %5663, 2
  %5667 = fsub fast float %5660, %5652
  %5668 = fsub fast float %5661, %5653
  %5669 = fsub fast float %5662, %5654
  %5670 = fmul fast float %5667, %5640
  %5671 = fmul fast float %5668, %5640
  %5672 = fmul fast float %5669, %5640
  %5673 = fadd fast float %5670, %5652
  %5674 = fadd fast float %5671, %5653
  %5675 = fadd fast float %5672, %5654
  %5676 = fsub fast float %5664, %5656
  %5677 = fsub fast float %5665, %5657
  %5678 = fsub fast float %5666, %5658
  %5679 = fmul fast float %5676, %5640
  %5680 = fmul fast float %5677, %5640
  %5681 = fmul fast float %5678, %5640
  %5682 = fsub fast float %5656, %5673
  %5683 = fadd fast float %5682, %5679
  %5684 = fsub fast float %5657, %5674
  %5685 = fadd fast float %5684, %5680
  %5686 = fsub fast float %5658, %5675
  %5687 = fadd fast float %5686, %5681
  %5688 = fmul fast float %5683, %5628
  %5689 = fmul fast float %5685, %5628
  %5690 = fmul fast float %5687, %5628
  %5691 = fadd fast float %5688, %5673
  %5692 = fadd fast float %5689, %5674
  %5693 = fadd fast float %5690, %5675
  %5694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5695 = extractvalue %dx.types.CBufRet.f32 %5694, 1
  %5696 = fmul fast float %5691, %5695
  %5697 = fmul fast float %5692, %5695
  %5698 = fmul fast float %5693, %5695
  br label %5699

; <label>:5699                                    ; preds = %5531, %5500
  %5700 = phi float [ %5570, %5531 ], [ 1.000000e+00, %5500 ]
  %5701 = phi float [ %5571, %5531 ], [ 1.000000e+00, %5500 ]
  %5702 = phi float [ %5572, %5531 ], [ 1.000000e+00, %5500 ]
  %5703 = phi float [ %5696, %5531 ], [ 0.000000e+00, %5500 ]
  %5704 = phi float [ %5697, %5531 ], [ 0.000000e+00, %5500 ]
  %5705 = phi float [ %5698, %5531 ], [ 0.000000e+00, %5500 ]
  %5706 = fmul fast float %5703, %5487
  %5707 = fmul fast float %5704, %5487
  %5708 = fmul fast float %5705, %5487
  %5709 = call float @dx.op.dot3.f32(i32 55, float %5700, float %5701, float %5702, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5710 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5707, float %5708, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5711 = select i1 %261, float %5709, float %5700
  %5712 = select i1 %261, float %5709, float %5701
  %5713 = select i1 %261, float 1.000000e+00, float %5702
  %5714 = select i1 %261, float %5710, float %5706
  %5715 = select i1 %261, float 0.000000e+00, float %5707
  %5716 = select i1 %261, float 0.000000e+00, float %5708
  %5717 = fmul fast float %5711, %5490
  %5718 = fmul fast float %5712, %5491
  %5719 = fmul fast float %5713, %5492
  %5720 = fadd fast float %5717, %5714
  %5721 = fadd fast float %5718, %5715
  %5722 = fadd fast float %5716, %5719
  %5723 = fmul fast float %5711, %5457
  %5724 = fmul fast float %5712, %5458
  %5725 = fmul fast float %5713, %5459
  %5726 = fmul fast float %91, 2.000000e+00
  %5727 = fmul fast float %5726, %5502
  %5728 = fmul fast float %92, 2.000000e+00
  %5729 = fmul fast float %5728, %5503
  %5730 = fsub fast float 1.000000e+00, %5727
  %5731 = fsub fast float 1.000000e+00, %5729
  %5732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5733 = extractvalue %dx.types.CBufRet.f32 %5732, 0
  %5734 = extractvalue %dx.types.CBufRet.f32 %5732, 1
  %5735 = extractvalue %dx.types.CBufRet.f32 %5732, 2
  %5736 = fmul fast float %5730, %5733
  %5737 = fmul fast float %5730, %5734
  %5738 = fmul fast float %5730, %5735
  %5739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5740 = extractvalue %dx.types.CBufRet.f32 %5739, 0
  %5741 = extractvalue %dx.types.CBufRet.f32 %5739, 1
  %5742 = extractvalue %dx.types.CBufRet.f32 %5739, 2
  %5743 = fmul fast float %5731, %5740
  %5744 = fmul fast float %5731, %5741
  %5745 = fmul fast float %5731, %5742
  %5746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5747 = extractvalue %dx.types.CBufRet.f32 %5746, 0
  %5748 = extractvalue %dx.types.CBufRet.f32 %5746, 1
  %5749 = extractvalue %dx.types.CBufRet.f32 %5746, 2
  %5750 = fadd fast float %5743, %5747
  %5751 = fadd fast float %5750, %5736
  %5752 = fadd fast float %5744, %5748
  %5753 = fadd fast float %5752, %5737
  %5754 = fadd fast float %5745, %5749
  %5755 = fadd fast float %5754, %5738
  %5756 = fmul fast float %5751, %221
  %5757 = fmul fast float %5753, %221
  %5758 = fmul fast float %5755, %221
  br label %5759

; <label>:5759                                    ; preds = %5699, %5456
  %5760 = phi float [ %5756, %5699 ], [ %138, %5456 ]
  %5761 = phi float [ %5757, %5699 ], [ %139, %5456 ]
  %5762 = phi float [ %5758, %5699 ], [ %140, %5456 ]
  %5763 = phi float [ %221, %5699 ], [ %82, %5456 ]
  %5764 = phi float [ %5720, %5699 ], [ %5490, %5456 ]
  %5765 = phi float [ %5721, %5699 ], [ %5491, %5456 ]
  %5766 = phi float [ %5722, %5699 ], [ %5492, %5456 ]
  %5767 = phi float [ %5723, %5699 ], [ %5457, %5456 ]
  %5768 = phi float [ %5724, %5699 ], [ %5458, %5456 ]
  %5769 = phi float [ %5725, %5699 ], [ %5459, %5456 ]
  %5770 = phi float [ %5700, %5699 ], [ 1.000000e+00, %5456 ]
  br i1 %5499, label %6925, label %5771

; <label>:5771                                    ; preds = %5759
  %5772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5773 = extractvalue %dx.types.CBufRet.f32 %5772, 0
  %5774 = extractvalue %dx.types.CBufRet.f32 %5772, 1
  %5775 = extractvalue %dx.types.CBufRet.f32 %5772, 2
  %5776 = extractvalue %dx.types.CBufRet.f32 %5772, 3
  %5777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5778 = extractvalue %dx.types.CBufRet.f32 %5777, 0
  %5779 = extractvalue %dx.types.CBufRet.f32 %5777, 1
  %5780 = extractvalue %dx.types.CBufRet.f32 %5777, 2
  %5781 = extractvalue %dx.types.CBufRet.f32 %5777, 3
  %5782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.f32 %5782, 0
  %5784 = extractvalue %dx.types.CBufRet.f32 %5782, 1
  %5785 = extractvalue %dx.types.CBufRet.f32 %5782, 2
  %5786 = extractvalue %dx.types.CBufRet.f32 %5782, 3
  %5787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5788 = extractvalue %dx.types.CBufRet.f32 %5787, 0
  %5789 = extractvalue %dx.types.CBufRet.f32 %5787, 1
  %5790 = extractvalue %dx.types.CBufRet.f32 %5787, 2
  %5791 = extractvalue %dx.types.CBufRet.f32 %5787, 3
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 3
  %5794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5795 = extractvalue %dx.types.CBufRet.f32 %5794, 3
  %5796 = extractvalue %dx.types.CBufRet.f32 %5794, 0
  %5797 = extractvalue %dx.types.CBufRet.f32 %5794, 1
  %5798 = extractvalue %dx.types.CBufRet.f32 %5794, 2
  %5799 = fcmp fast olt float %5798, -5.000000e-01
  %5800 = call float @dx.op.dot3.f32(i32 55, float %5760, float %5761, float %5762, float %5760, float %5761, float %5762)  ; Dot3(ax,ay,az,bx,by,bz)
  %5801 = call float @dx.op.unary.f32(i32 25, float %5800)  ; Rsqrt(value)
  %5802 = fmul fast float %5801, %5800
  %5803 = fmul fast float %5801, %5760
  %5804 = fmul fast float %5801, %5761
  %5805 = fmul fast float %5801, %5762
  %5806 = fadd fast float %5802, %5776
  %5807 = call float @dx.op.dot3.f32(i32 55, float %5803, float %5804, float %5805, float %5773, float %5774, float %5775)  ; Dot3(ax,ay,az,bx,by,bz)
  %5808 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5809 = extractvalue %dx.types.CBufRet.i32 %5808, 1
  %5810 = and i32 %5809, 1
  %5811 = icmp ne i32 %5810, 0
  %5812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5813 = extractvalue %dx.types.CBufRet.f32 %5812, 2
  %5814 = fcmp fast ogt float %5813, 0.000000e+00
  %5815 = and i1 %5811, %5814
  br i1 %5815, label %5816, label %6222, !dx.controlflow.hints !134

; <label>:5816                                    ; preds = %5771
  %5817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5818 = extractvalue %dx.types.CBufRet.f32 %5817, 3
  %5819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5820 = extractvalue %dx.types.CBufRet.f32 %5819, 2
  %5821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5822 = extractvalue %dx.types.CBufRet.f32 %5821, 2
  %5823 = fsub fast float %5820, %5822
  %5824 = and i32 %5809, 2
  %5825 = extractvalue %dx.types.CBufRet.i32 %5808, 0
  %5826 = call i32 @dx.op.binary.i32(i32 40, i32 %5825, i32 3)  ; UMin(a,b)
  %5827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5828 = extractvalue %dx.types.CBufRet.f32 %5827, 0
  %5829 = extractvalue %dx.types.CBufRet.f32 %5827, 1
  %5830 = extractvalue %dx.types.CBufRet.f32 %5821, 0
  %5831 = extractvalue %dx.types.CBufRet.f32 %5821, 1
  %5832 = fsub fast float %5828, %5830
  %5833 = fsub fast float %5829, %5831
  %5834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5835 = extractvalue %dx.types.CBufRet.f32 %5834, 0
  %5836 = fcmp fast ogt float %5835, 0.000000e+00
  %5837 = fsub fast float -0.000000e+00, %5832
  %5838 = fsub fast float -0.000000e+00, %5833
  %5839 = call float @dx.op.dot2.f32(i32 54, float %5803, float %5804, float %5803, float %5804)  ; Dot2(ax,ay,bx,by)
  %5840 = call float @dx.op.dot2.f32(i32 54, float %5803, float %5804, float %5837, float %5838)  ; Dot2(ax,ay,bx,by)
  %5841 = fmul fast float %5840, 2.000000e+00
  %5842 = call float @dx.op.dot2.f32(i32 54, float %5837, float %5838, float %5837, float %5838)  ; Dot2(ax,ay,bx,by)
  %5843 = fmul fast float %5835, %5835
  %5844 = fsub fast float %5842, %5843
  %5845 = fmul fast float %5841, %5841
  %5846 = fmul fast float %5839, 4.000000e+00
  %5847 = fmul fast float %5846, %5844
  %5848 = fsub fast float %5845, %5847
  %5849 = fcmp fast ogt float %5848, 0.000000e+00
  br i1 %5849, label %5850, label %5865

; <label>:5850                                    ; preds = %5816
  %5851 = fcmp fast ogt float %5841, 0.000000e+00
  %5852 = call float @dx.op.unary.f32(i32 24, float %5848)  ; Sqrt(value)
  %5853 = fsub fast float -0.000000e+00, %5852
  %5854 = select i1 %5851, float %5852, float %5853
  %5855 = fadd fast float %5854, %5841
  %5856 = fmul float %5855, -5.000000e-01
  %5857 = fdiv fast float %5856, %5839
  %5858 = call float @dx.op.binary.f32(i32 35, float %5857, float 0.000000e+00)  ; FMax(a,b)
  %5859 = call float @dx.op.binary.f32(i32 36, float %5802, float %5858)  ; FMin(a,b)
  %5860 = fdiv fast float %5844, %5856
  %5861 = call float @dx.op.binary.f32(i32 35, float %5860, float 0.000000e+00)  ; FMax(a,b)
  %5862 = call float @dx.op.binary.f32(i32 36, float %5802, float %5861)  ; FMin(a,b)
  %5863 = call float @dx.op.binary.f32(i32 36, float %5859, float %5862)  ; FMin(a,b)
  %5864 = call float @dx.op.binary.f32(i32 35, float %5859, float %5862)  ; FMax(a,b)
  br label %5865

; <label>:5865                                    ; preds = %5850, %5816
  %5866 = phi float [ %5864, %5850 ], [ -1.000000e+00, %5816 ]
  %5867 = phi float [ %5863, %5850 ], [ -1.000000e+00, %5816 ]
  %5868 = phi i1 [ true, %5850 ], [ false, %5816 ]
  %5869 = and i1 %5836, %5868
  br i1 %5869, label %5870, label %5872

; <label>:5870                                    ; preds = %5865
  %5871 = fcmp fast oeq float %5867, %5866
  br i1 %5871, label %6175, label %5873

; <label>:5872                                    ; preds = %5865
  br i1 %5836, label %6175, label %5873

; <label>:5873                                    ; preds = %5872, %5870
  %5874 = phi float [ %5802, %5872 ], [ %5866, %5870 ]
  %5875 = phi float [ 0.000000e+00, %5872 ], [ %5867, %5870 ]
  %5876 = icmp ne i32 %5824, 0
  %5877 = fmul fast float %5874, %5805
  %5878 = fadd fast float %5877, %5818
  %5879 = fmul fast float %5878, %5874
  %5880 = select i1 %5876, float 0.000000e+00, float %5879
  %5881 = fcmp fast oeq float %5805, 0.000000e+00
  %5882 = fdiv fast float %5823, %5805
  %5883 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5882)  ; FMax(a,b)
  %5884 = select i1 %5881, float %5874, float %5883
  %5885 = call float @dx.op.binary.f32(i32 36, float %5874, float %5884)  ; FMin(a,b)
  %5886 = fcmp fast ogt float %5805, 0.000000e+00
  %5887 = fcmp fast olt float %5823, 0.000000e+00
  br i1 %5886, label %5888, label %5945

; <label>:5888                                    ; preds = %5873
  %5889 = icmp eq i32 %5824, 0
  br i1 %5887, label %5890, label %5934

; <label>:5890                                    ; preds = %5888
  %5891 = select i1 %5889, float %5874, float 0.000000e+00
  %5892 = fsub fast float -0.000000e+00, %5891
  %5893 = call float @dx.op.unary.f32(i32 6, float %5892)  ; FAbs(value)
  %5894 = fmul fast float %5891, %5805
  %5895 = fadd fast float %5894, %5818
  %5896 = fmul fast float %5893, %5895
  %5897 = fsub fast float %5880, %5896
  %5898 = fsub fast float %5874, %5893
  %5899 = select i1 %5889, float %5898, float 0.000000e+00
  %5900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5901 = extractvalue %dx.types.CBufRet.f32 %5900, 0
  %5902 = extractvalue %dx.types.CBufRet.f32 %5900, 1
  %5903 = extractvalue %dx.types.CBufRet.f32 %5900, 2
  %5904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5905 = extractvalue %dx.types.CBufRet.f32 %5904, 0
  %5906 = extractvalue %dx.types.CBufRet.f32 %5904, 1
  %5907 = extractvalue %dx.types.CBufRet.f32 %5904, 2
  %5908 = extractvalue %dx.types.CBufRet.f32 %5904, 3
  %5909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5910 = extractvalue %dx.types.CBufRet.f32 %5909, 3
  %5911 = call float @dx.op.binary.f32(i32 36, float %5897, float %5910)  ; FMin(a,b)
  %5912 = fmul fast float %5908, %5899
  %5913 = call float @dx.op.unary.f32(i32 7, float %5912)  ; Saturate(value)
  %5914 = fsub fast float %5905, %5901
  %5915 = fsub fast float %5906, %5902
  %5916 = fsub fast float %5907, %5903
  %5917 = fmul fast float %5913, %5914
  %5918 = fmul fast float %5913, %5915
  %5919 = fmul fast float %5913, %5916
  %5920 = fadd fast float %5917, %5901
  %5921 = fadd fast float %5918, %5902
  %5922 = fadd fast float %5919, %5903
  %5923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5924 = extractvalue %dx.types.CBufRet.f32 %5923, 0
  %5925 = extractvalue %dx.types.CBufRet.f32 %5923, 1
  %5926 = fadd fast float %5925, %5924
  %5927 = call float @dx.op.unary.f32(i32 7, float %5926)  ; Saturate(value)
  %5928 = extractvalue %dx.types.CBufRet.f32 %5923, 2
  %5929 = extractvalue %dx.types.CBufRet.f32 %5923, 3
  %5930 = fadd fast float %5929, %5928
  %5931 = call float @dx.op.unary.f32(i32 7, float %5930)  ; Saturate(value)
  %5932 = fmul fast float %5927, %5911
  %5933 = fmul fast float %5932, %5931
  br label %6175

; <label>:5934                                    ; preds = %5888
  br i1 %5889, label %5935, label %5956

; <label>:5935                                    ; preds = %5934
  %5936 = call float @dx.op.binary.f32(i32 36, float %5885, float %5875)  ; FMin(a,b)
  %5937 = fsub fast float %5885, %5936
  %5938 = fsub fast float %5937, %5874
  %5939 = call float @dx.op.unary.f32(i32 6, float %5938)  ; FAbs(value)
  %5940 = fadd fast float %5937, %5874
  %5941 = fmul fast float %5940, %5805
  %5942 = fadd fast float %5941, %5818
  %5943 = fmul fast float %5942, %5939
  %5944 = fsub fast float %5880, %5943
  br label %5956

; <label>:5945                                    ; preds = %5873
  br i1 %5887, label %5946, label %5956

; <label>:5946                                    ; preds = %5945
  %5947 = call float @dx.op.binary.f32(i32 35, float %5875, float %5885)  ; FMax(a,b)
  %5948 = icmp eq i32 %5824, 0
  %5949 = select i1 %5948, float %5885, float 0.000000e+00
  %5950 = fsub fast float -0.000000e+00, %5949
  %5951 = call float @dx.op.unary.f32(i32 6, float %5950)  ; FAbs(value)
  %5952 = fmul fast float %5949, %5805
  %5953 = fadd fast float %5952, %5818
  %5954 = fmul fast float %5951, %5953
  %5955 = fsub fast float %5880, %5954
  br label %5956

; <label>:5956                                    ; preds = %5946, %5945, %5935, %5934
  %5957 = phi float [ %5875, %5934 ], [ %5875, %5935 ], [ %5947, %5946 ], [ %5875, %5945 ]
  %5958 = phi float [ 0.000000e+00, %5934 ], [ %5939, %5935 ], [ %5951, %5946 ], [ 0.000000e+00, %5945 ]
  %5959 = phi float [ %5880, %5934 ], [ %5944, %5935 ], [ %5955, %5946 ], [ %5880, %5945 ]
  %5960 = phi float [ %5885, %5934 ], [ %5885, %5935 ], [ %5874, %5946 ], [ %5874, %5945 ]
  %5961 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 0
  store float -1.000000e+00, float* %5961, align 4, !tbaa !135, !noalias !137
  %5962 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 1
  store float -1.000000e+00, float* %5962, align 4, !tbaa !135, !noalias !137
  %5963 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 2
  store float -1.000000e+00, float* %5963, align 4, !tbaa !135, !noalias !137
  %5964 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 0
  store float -1.000000e+00, float* %5964, align 4, !tbaa !135, !noalias !137
  %5965 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 1
  store float -1.000000e+00, float* %5965, align 4, !tbaa !135, !noalias !137
  %5966 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 2
  store float -1.000000e+00, float* %5966, align 4, !tbaa !135, !noalias !137
  %5967 = icmp sgt i32 %5826, 0
  br i1 %5967, label %5968, label %6029

; <label>:5968                                    ; preds = %5956
  br label %5969

; <label>:5969                                    ; preds = %6018, %5968
  %5970 = phi i32 [ %6019, %6018 ], [ 0, %5968 ]
  %5971 = phi i32 [ %6020, %6018 ], [ 0, %5968 ]
  %5972 = add nuw i32 %5971, 171
  %5973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %5972)  ; CBufferLoadLegacy(handle,regIndex)
  %5974 = extractvalue %dx.types.CBufRet.f32 %5973, 0
  %5975 = extractvalue %dx.types.CBufRet.f32 %5973, 1
  %5976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5977 = extractvalue %dx.types.CBufRet.f32 %5976, 0
  %5978 = extractvalue %dx.types.CBufRet.f32 %5976, 1
  %5979 = fsub fast float %5974, %5977
  %5980 = fsub fast float %5975, %5978
  %5981 = extractvalue %dx.types.CBufRet.f32 %5973, 2
  %5982 = fsub fast float -0.000000e+00, %5979
  %5983 = fsub fast float -0.000000e+00, %5980
  %5984 = call float @dx.op.dot2.f32(i32 54, float %5803, float %5804, float %5982, float %5983)  ; Dot2(ax,ay,bx,by)
  %5985 = fmul fast float %5984, 2.000000e+00
  %5986 = call float @dx.op.dot2.f32(i32 54, float %5982, float %5983, float %5982, float %5983)  ; Dot2(ax,ay,bx,by)
  %5987 = fmul fast float %5981, %5981
  %5988 = fsub fast float %5986, %5987
  %5989 = fmul fast float %5985, %5985
  %5990 = fmul fast float %5846, %5988
  %5991 = fsub fast float %5989, %5990
  %5992 = fcmp fast ogt float %5991, 0.000000e+00
  br i1 %5992, label %5993, label %6008

; <label>:5993                                    ; preds = %5969
  %5994 = fcmp fast ogt float %5985, 0.000000e+00
  %5995 = call float @dx.op.unary.f32(i32 24, float %5991)  ; Sqrt(value)
  %5996 = fsub fast float -0.000000e+00, %5995
  %5997 = select i1 %5994, float %5995, float %5996
  %5998 = fadd fast float %5997, %5985
  %5999 = fmul float %5998, -5.000000e-01
  %6000 = fdiv fast float %5999, %5839
  %6001 = call float @dx.op.binary.f32(i32 35, float %6000, float 0.000000e+00)  ; FMax(a,b)
  %6002 = call float @dx.op.binary.f32(i32 36, float %5874, float %6001)  ; FMin(a,b)
  %6003 = fdiv fast float %5988, %5999
  %6004 = call float @dx.op.binary.f32(i32 35, float %6003, float 0.000000e+00)  ; FMax(a,b)
  %6005 = call float @dx.op.binary.f32(i32 36, float %5874, float %6004)  ; FMin(a,b)
  %6006 = call float @dx.op.binary.f32(i32 36, float %6002, float %6005)  ; FMin(a,b)
  %6007 = call float @dx.op.binary.f32(i32 35, float %6002, float %6005)  ; FMax(a,b)
  br label %6008

; <label>:6008                                    ; preds = %5993, %5969
  %6009 = phi float [ %6007, %5993 ], [ -1.000000e+00, %5969 ]
  %6010 = phi float [ %6006, %5993 ], [ -1.000000e+00, %5969 ]
  %6011 = phi i1 [ true, %5993 ], [ false, %5969 ]
  br i1 %6011, label %6012, label %6018

; <label>:6012                                    ; preds = %6008
  %6013 = call float @dx.op.binary.f32(i32 35, float %5957, float %6010)  ; FMax(a,b)
  %6014 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %5971
  store float %6013, float* %6014, align 4, !tbaa !135, !noalias !137
  %6015 = call float @dx.op.binary.f32(i32 35, float %5957, float %6009)  ; FMax(a,b)
  %6016 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %5971
  store float %6015, float* %6016, align 4, !tbaa !135, !noalias !137
  %6017 = add nsw i32 %5970, 1
  br label %6018

; <label>:6018                                    ; preds = %6012, %6008
  %6019 = phi i32 [ %6017, %6012 ], [ %5970, %6008 ]
  %6020 = add nuw nsw i32 %5971, 1
  %6021 = icmp eq i32 %6020, %5826
  br i1 %6021, label %6022, label %5969

; <label>:6022                                    ; preds = %6018
  %6023 = load float, float* %5963, align 4, !tbaa !135, !alias.scope !153, !noalias !156
  %6024 = load float, float* %5962, align 4, !tbaa !135, !alias.scope !159, !noalias !160
  %6025 = load float, float* %5961, align 4, !tbaa !135, !alias.scope !161, !noalias !162
  %6026 = load float, float* %5966, align 4, !tbaa !135, !alias.scope !163, !noalias !166
  %6027 = load float, float* %5965, align 4, !tbaa !135, !alias.scope !169, !noalias !170
  %6028 = load float, float* %5964, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  br label %6029

; <label>:6029                                    ; preds = %6022, %5956
  %6030 = phi float [ -1.000000e+00, %5956 ], [ %6028, %6022 ]
  %6031 = phi float [ -1.000000e+00, %5956 ], [ %6027, %6022 ]
  %6032 = phi float [ -1.000000e+00, %5956 ], [ %6026, %6022 ]
  %6033 = phi float [ -1.000000e+00, %5956 ], [ %6025, %6022 ]
  %6034 = phi float [ -1.000000e+00, %5956 ], [ %6024, %6022 ]
  %6035 = phi float [ -1.000000e+00, %5956 ], [ %6023, %6022 ]
  %6036 = phi i32 [ 0, %5956 ], [ %6019, %6022 ]
  %6037 = call float @dx.op.binary.f32(i32 36, float %6034, float %6035)  ; FMin(a,b)
  %6038 = call float @dx.op.binary.f32(i32 36, float %6033, float %6037)  ; FMin(a,b)
  %6039 = call float @dx.op.binary.f32(i32 35, float %6033, float %6034)  ; FMax(a,b)
  %6040 = call float @dx.op.binary.f32(i32 36, float %6039, float %6035)  ; FMin(a,b)
  %6041 = call float @dx.op.binary.f32(i32 36, float %6033, float %6034)  ; FMin(a,b)
  %6042 = call float @dx.op.binary.f32(i32 35, float %6041, float %6040)  ; FMax(a,b)
  %6043 = call float @dx.op.binary.f32(i32 35, float %6034, float %6035)  ; FMax(a,b)
  %6044 = call float @dx.op.binary.f32(i32 35, float %6033, float %6043)  ; FMax(a,b)
  store float %6038, float* %5961, align 4, !tbaa !135, !alias.scope !161, !noalias !162
  store float %6042, float* %5962, align 4, !tbaa !135, !alias.scope !159, !noalias !160
  store float %6044, float* %5963, align 4, !tbaa !135, !alias.scope !153, !noalias !156
  %6045 = call float @dx.op.binary.f32(i32 36, float %6031, float %6032)  ; FMin(a,b)
  %6046 = call float @dx.op.binary.f32(i32 36, float %6030, float %6045)  ; FMin(a,b)
  %6047 = call float @dx.op.binary.f32(i32 35, float %6030, float %6031)  ; FMax(a,b)
  %6048 = call float @dx.op.binary.f32(i32 36, float %6047, float %6032)  ; FMin(a,b)
  %6049 = call float @dx.op.binary.f32(i32 36, float %6030, float %6031)  ; FMin(a,b)
  %6050 = call float @dx.op.binary.f32(i32 35, float %6049, float %6048)  ; FMax(a,b)
  %6051 = call float @dx.op.binary.f32(i32 35, float %6031, float %6032)  ; FMax(a,b)
  %6052 = call float @dx.op.binary.f32(i32 35, float %6030, float %6051)  ; FMax(a,b)
  store float %6046, float* %5964, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  store float %6050, float* %5965, align 4, !tbaa !135, !alias.scope !169, !noalias !170
  store float %6052, float* %5966, align 4, !tbaa !135, !alias.scope !163, !noalias !166
  %6053 = sub nsw i32 3, %6036
  %6054 = icmp sgt i32 %6053, 2
  br i1 %6054, label %6055, label %6093

; <label>:6055                                    ; preds = %6029
  %6056 = icmp eq i32 %5824, 0
  %6057 = fsub fast float %5874, %5958
  %6058 = select i1 %6056, float %6057, float %5958
  %6059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6060 = extractvalue %dx.types.CBufRet.f32 %6059, 0
  %6061 = extractvalue %dx.types.CBufRet.f32 %6059, 1
  %6062 = extractvalue %dx.types.CBufRet.f32 %6059, 2
  %6063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6064 = extractvalue %dx.types.CBufRet.f32 %6063, 0
  %6065 = extractvalue %dx.types.CBufRet.f32 %6063, 1
  %6066 = extractvalue %dx.types.CBufRet.f32 %6063, 2
  %6067 = extractvalue %dx.types.CBufRet.f32 %6063, 3
  %6068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6069 = extractvalue %dx.types.CBufRet.f32 %6068, 3
  %6070 = call float @dx.op.binary.f32(i32 36, float %5959, float %6069)  ; FMin(a,b)
  %6071 = fmul fast float %6067, %6058
  %6072 = call float @dx.op.unary.f32(i32 7, float %6071)  ; Saturate(value)
  %6073 = fsub fast float %6064, %6060
  %6074 = fsub fast float %6065, %6061
  %6075 = fsub fast float %6066, %6062
  %6076 = fmul fast float %6072, %6073
  %6077 = fmul fast float %6072, %6074
  %6078 = fmul fast float %6072, %6075
  %6079 = fadd fast float %6076, %6060
  %6080 = fadd fast float %6077, %6061
  %6081 = fadd fast float %6078, %6062
  %6082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6083 = extractvalue %dx.types.CBufRet.f32 %6082, 0
  %6084 = extractvalue %dx.types.CBufRet.f32 %6082, 1
  %6085 = fadd fast float %6084, %6083
  %6086 = call float @dx.op.unary.f32(i32 7, float %6085)  ; Saturate(value)
  %6087 = extractvalue %dx.types.CBufRet.f32 %6082, 2
  %6088 = extractvalue %dx.types.CBufRet.f32 %6082, 3
  %6089 = fadd fast float %6088, %6087
  %6090 = call float @dx.op.unary.f32(i32 7, float %6089)  ; Saturate(value)
  %6091 = fmul fast float %6086, %6070
  %6092 = fmul fast float %6091, %6090
  br label %6175

; <label>:6093                                    ; preds = %6029
  %6094 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %6053
  %6095 = load float, float* %6094, align 4, !tbaa !135, !noalias !137
  %6096 = fcmp fast olt float %6095, %5960
  %6097 = icmp sgt i32 %6036, 0
  %6098 = and i1 %6097, %6096
  br i1 %6098, label %6099, label %6136

; <label>:6099                                    ; preds = %6093
  br label %6100

; <label>:6100                                    ; preds = %6129, %6099
  %6101 = phi float [ %6130, %6129 ], [ %5958, %6099 ]
  %6102 = phi float [ %6131, %6129 ], [ %5959, %6099 ]
  %6103 = phi float [ %6111, %6129 ], [ %6095, %6099 ]
  %6104 = phi i32 [ %6108, %6129 ], [ %6053, %6099 ]
  %6105 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %6104
  %6106 = load float, float* %6105, align 4, !tbaa !135, !noalias !137
  %6107 = icmp slt i32 %6104, 2
  %6108 = add nsw i32 %6104, 1
  %6109 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %6108
  %6110 = load float, float* %6109, align 4, !tbaa !135, !noalias !137
  %6111 = select i1 %6107, float %6110, float %5874
  %6112 = call float @dx.op.binary.f32(i32 36, float %6111, float %6106)  ; FMin(a,b)
  %6113 = call float @dx.op.binary.f32(i32 36, float %5960, float %6112)  ; FMin(a,b)
  %6114 = icmp eq i32 %5824, 0
  %6115 = fadd fast float %6113, %6103
  %6116 = fmul fast float %6115, %5805
  %6117 = fadd fast float %6116, %5818
  br i1 %6114, label %6123, label %6118

; <label>:6118                                    ; preds = %6100
  %6119 = fsub fast float %6113, %6103
  %6120 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6119)  ; FMax(a,b)
  %6121 = fmul fast float %6120, %6117
  %6122 = fadd fast float %6121, %6102
  br label %6129

; <label>:6123                                    ; preds = %6100
  %6124 = fsub fast float %6103, %6113
  %6125 = call float @dx.op.unary.f32(i32 6, float %6124)  ; FAbs(value)
  %6126 = fadd fast float %6125, %6101
  %6127 = fmul fast float %6125, %6117
  %6128 = fsub fast float %6102, %6127
  br label %6129

; <label>:6129                                    ; preds = %6123, %6118
  %6130 = phi float [ %6120, %6118 ], [ %6126, %6123 ]
  %6131 = phi float [ %6122, %6118 ], [ %6128, %6123 ]
  %6132 = fcmp fast olt float %6111, %5960
  %6133 = icmp slt i32 %6108, 3
  %6134 = and i1 %6133, %6132
  br i1 %6134, label %6100, label %6135

; <label>:6135                                    ; preds = %6129
  br label %6136

; <label>:6136                                    ; preds = %6135, %6093
  %6137 = phi float [ %5958, %6093 ], [ %6130, %6135 ]
  %6138 = phi float [ %5959, %6093 ], [ %6131, %6135 ]
  %6139 = fsub fast float %5874, %6137
  %6140 = select i1 %5876, float %6137, float %6139
  %6141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6142 = extractvalue %dx.types.CBufRet.f32 %6141, 0
  %6143 = extractvalue %dx.types.CBufRet.f32 %6141, 1
  %6144 = extractvalue %dx.types.CBufRet.f32 %6141, 2
  %6145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6146 = extractvalue %dx.types.CBufRet.f32 %6145, 0
  %6147 = extractvalue %dx.types.CBufRet.f32 %6145, 1
  %6148 = extractvalue %dx.types.CBufRet.f32 %6145, 2
  %6149 = extractvalue %dx.types.CBufRet.f32 %6145, 3
  %6150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6151 = extractvalue %dx.types.CBufRet.f32 %6150, 3
  %6152 = call float @dx.op.binary.f32(i32 36, float %6138, float %6151)  ; FMin(a,b)
  %6153 = fmul fast float %6149, %6140
  %6154 = call float @dx.op.unary.f32(i32 7, float %6153)  ; Saturate(value)
  %6155 = fsub fast float %6146, %6142
  %6156 = fsub fast float %6147, %6143
  %6157 = fsub fast float %6148, %6144
  %6158 = fmul fast float %6154, %6155
  %6159 = fmul fast float %6154, %6156
  %6160 = fmul fast float %6154, %6157
  %6161 = fadd fast float %6158, %6142
  %6162 = fadd fast float %6159, %6143
  %6163 = fadd fast float %6160, %6144
  %6164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6165 = extractvalue %dx.types.CBufRet.f32 %6164, 0
  %6166 = extractvalue %dx.types.CBufRet.f32 %6164, 1
  %6167 = fadd fast float %6166, %6165
  %6168 = call float @dx.op.unary.f32(i32 7, float %6167)  ; Saturate(value)
  %6169 = extractvalue %dx.types.CBufRet.f32 %6164, 2
  %6170 = extractvalue %dx.types.CBufRet.f32 %6164, 3
  %6171 = fadd fast float %6170, %6169
  %6172 = call float @dx.op.unary.f32(i32 7, float %6171)  ; Saturate(value)
  %6173 = fmul fast float %6168, %6152
  %6174 = fmul fast float %6173, %6172
  br label %6175

; <label>:6175                                    ; preds = %6136, %6055, %5890, %5872, %5870
  %6176 = phi float [ %5899, %5890 ], [ %6058, %6055 ], [ %6140, %6136 ], [ 0.000000e+00, %5870 ], [ 0.000000e+00, %5872 ]
  %6177 = phi float [ %5933, %5890 ], [ %6092, %6055 ], [ %6174, %6136 ], [ 0.000000e+00, %5870 ], [ 0.000000e+00, %5872 ]
  %6178 = phi float [ %5920, %5890 ], [ %6079, %6055 ], [ %6161, %6136 ], [ 0.000000e+00, %5870 ], [ 0.000000e+00, %5872 ]
  %6179 = phi float [ %5921, %5890 ], [ %6080, %6055 ], [ %6162, %6136 ], [ 0.000000e+00, %5870 ], [ 0.000000e+00, %5872 ]
  %6180 = phi float [ %5922, %5890 ], [ %6081, %6055 ], [ %6163, %6136 ], [ 0.000000e+00, %5870 ], [ 0.000000e+00, %5872 ]
  %6181 = fmul fast float %5813, %6177
  %6182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6183 = extractvalue %dx.types.CBufRet.f32 %6182, 2
  %6184 = fsub fast float %5820, %6183
  %6185 = fcmp fast olt float %6181, -2.000000e+01
  %6186 = call float @dx.op.unary.f32(i32 21, float %6181)  ; Exp(value)
  %6187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6188 = extractvalue %dx.types.CBufRet.f32 %6187, 2
  %6189 = extractvalue %dx.types.CBufRet.f32 %6187, 3
  %6190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6191 = extractvalue %dx.types.CBufRet.f32 %6190, 2
  %6192 = fmul fast float %6189, %6184
  %6193 = call float @dx.op.unary.f32(i32 7, float %6192)  ; Saturate(value)
  %6194 = fsub fast float 1.000000e+00, %6193
  %6195 = fmul fast float %5805, 5.000000e-01
  %6196 = fadd fast float %6195, 5.000000e-01
  %6197 = call float @dx.op.unary.f32(i32 7, float %6196)  ; Saturate(value)
  %6198 = fsub fast float 1.000000e+00, %6197
  %6199 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6194)  ; FMax(a,b)
  %6200 = fdiv fast float %6198, %6199
  %6201 = fsub fast float %6184, %5762
  %6202 = call float @dx.op.unary.f32(i32 6, float %6201)  ; FAbs(value)
  %6203 = fmul fast float %6202, %6188
  %6204 = call float @dx.op.unary.f32(i32 7, float %6200)  ; Saturate(value)
  %6205 = fsub fast float 1.000000e+00, %6203
  %6206 = fmul fast float %6205, %6204
  %6207 = fadd fast float %6206, %6203
  %6208 = fmul fast float %6191, %6184
  %6209 = call float @dx.op.unary.f32(i32 7, float %6208)  ; Saturate(value)
  %6210 = fsub fast float 1.000000e+00, %6207
  %6211 = fmul fast float %6210, %6209
  %6212 = fadd fast float %6211, %6207
  %6213 = call float @dx.op.unary.f32(i32 7, float %6212)  ; Saturate(value)
  %6214 = fadd fast float %6186, -1.000000e+00
  %6215 = select i1 %6185, float -1.000000e+00, float %6214
  %6216 = fmul fast float %6213, %6215
  %6217 = fadd fast float %6216, 1.000000e+00
  %6218 = fsub fast float -0.000000e+00, %6216
  %6219 = fmul fast float %6178, %6218
  %6220 = fmul fast float %6179, %6218
  %6221 = fmul fast float %6180, %6218
  br label %6222

; <label>:6222                                    ; preds = %6175, %5771
  %6223 = phi float [ %6176, %6175 ], [ 0.000000e+00, %5771 ]
  %6224 = phi float [ %6217, %6175 ], [ 1.000000e+00, %5771 ]
  %6225 = phi float [ %6219, %6175 ], [ 0.000000e+00, %5771 ]
  %6226 = phi float [ %6220, %6175 ], [ 0.000000e+00, %5771 ]
  %6227 = phi float [ %6221, %6175 ], [ 0.000000e+00, %5771 ]
  %6228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6229 = extractvalue %dx.types.CBufRet.f32 %6228, 1
  %6230 = fsub fast float 1.000000e+00, %6224
  %6231 = fmul fast float %6230, %5806
  %6232 = fmul fast float %6231, %6229
  %6233 = fsub fast float %5806, %6232
  br i1 %5799, label %6234, label %6263, !dx.controlflow.hints !173

; <label>:6234                                    ; preds = %6222
  %6235 = fmul fast float %5807, %5796
  %6236 = fadd fast float %6235, %5797
  %6237 = call float @dx.op.unary.f32(i32 7, float %6236)  ; Saturate(value)
  %6238 = fmul fast float %5778, %6233
  %6239 = fsub fast float -0.000000e+00, %6238
  %6240 = fmul fast float %5779, %6233
  %6241 = fsub fast float -0.000000e+00, %6240
  %6242 = call float @dx.op.unary.f32(i32 21, float %6239)  ; Exp(value)
  %6243 = call float @dx.op.unary.f32(i32 21, float %6241)  ; Exp(value)
  %6244 = call float @dx.op.binary.f32(i32 35, float %5786, float %6242)  ; FMax(a,b)
  %6245 = call float @dx.op.binary.f32(i32 35, float %5786, float %6243)  ; FMax(a,b)
  %6246 = fsub fast float %6245, %6244
  %6247 = fmul fast float %6246, %6237
  %6248 = fadd fast float %6247, %6244
  %6249 = call float @dx.op.unary.f32(i32 7, float %6248)  ; Saturate(value)
  %6250 = fsub fast float %5783, %5788
  %6251 = fsub fast float %5784, %5789
  %6252 = fsub fast float %5785, %5790
  %6253 = fmul fast float %6237, %6250
  %6254 = fmul fast float %6237, %6251
  %6255 = fmul fast float %6237, %6252
  %6256 = fadd fast float %6253, %5788
  %6257 = fadd fast float %6254, %5789
  %6258 = fadd fast float %6255, %5790
  %6259 = fsub fast float 1.000000e+00, %6249
  %6260 = fmul fast float %6259, %6256
  %6261 = fmul fast float %6259, %6257
  %6262 = fmul fast float %6259, %6258
  br label %6322

; <label>:6263                                    ; preds = %6222
  %6264 = fmul fast float %6233, %5795
  %6265 = call float @dx.op.unary.f32(i32 7, float %6264)  ; Saturate(value)
  %6266 = fsub fast float 2.000000e+00, %6265
  %6267 = fmul fast float %6265, 9.921875e-01
  %6268 = fmul fast float %6267, %6266
  %6269 = fadd fast float %6268, 3.906250e-03
  %6270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %58, float %6269, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6271 = extractvalue %dx.types.ResRet.f32 %6270, 0
  %6272 = fsub fast float %6265, %6271
  %6273 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6272)  ; FMax(a,b)
  %6274 = fmul fast float %5781, %5762
  %6275 = call float @dx.op.unary.f32(i32 6, float %6274)  ; FAbs(value)
  %6276 = fcmp fast ogt float %6275, 0x3EB0C6F7A0000000
  br i1 %6276, label %6277, label %6283, !dx.controlflow.hints !174

; <label>:6277                                    ; preds = %6263
  %6278 = fmul fast float %6274, 0xBFF7154760000000
  %6279 = call float @dx.op.unary.f32(i32 21, float %6278)  ; Exp(value)
  %6280 = fsub fast float 1.000000e+00, %6279
  %6281 = fdiv fast float %6280, %6274
  %6282 = fmul fast float %6281, %5791
  br label %6283

; <label>:6283                                    ; preds = %6277, %6263
  %6284 = phi float [ %6282, %6277 ], [ %5791, %6263 ]
  %6285 = fadd fast float %6284, %5793
  %6286 = fmul fast float %6285, %6273
  %6287 = fmul fast float %5778, %6286
  %6288 = fsub fast float -0.000000e+00, %6287
  %6289 = fmul fast float %5779, %6286
  %6290 = fsub fast float -0.000000e+00, %6289
  %6291 = fmul fast float %5780, %6286
  %6292 = fsub fast float -0.000000e+00, %6291
  %6293 = call float @dx.op.unary.f32(i32 21, float %6288)  ; Exp(value)
  %6294 = call float @dx.op.unary.f32(i32 21, float %6290)  ; Exp(value)
  %6295 = call float @dx.op.unary.f32(i32 21, float %6292)  ; Exp(value)
  %6296 = fmul fast float %5807, %5807
  %6297 = fadd fast float %6296, 1.000000e+00
  %6298 = fmul fast float %6297, 0x3FAE8EC8A0000000
  %6299 = fmul fast float %6298, %5788
  %6300 = fmul fast float %6298, %5789
  %6301 = fmul fast float %6298, %5790
  %6302 = fmul fast float %5807, %5786
  %6303 = fsub fast float 1.000000e+00, %6302
  %6304 = fmul fast float %5786, %5786
  %6305 = fsub fast float 1.000000e+00, %6304
  %6306 = fmul fast float %6305, 0x3FB45F3060000000
  %6307 = fmul fast float %6303, %6303
  %6308 = fdiv fast float 1.000000e+00, %6307
  %6309 = fmul fast float %6306, %6308
  %6310 = fmul fast float %6309, %5783
  %6311 = fmul fast float %6309, %5784
  %6312 = fmul fast float %6309, %5785
  %6313 = fadd fast float %6310, %6299
  %6314 = fadd fast float %6311, %6300
  %6315 = fadd fast float %6312, %6301
  %6316 = fsub fast float 1.000000e+00, %6293
  %6317 = fsub fast float 1.000000e+00, %6294
  %6318 = fsub fast float 1.000000e+00, %6295
  %6319 = fmul fast float %6313, %6316
  %6320 = fmul fast float %6314, %6317
  %6321 = fmul fast float %6315, %6318
  br label %6322

; <label>:6322                                    ; preds = %6283, %6234
  %6323 = phi float [ %6260, %6234 ], [ %6319, %6283 ]
  %6324 = phi float [ %6261, %6234 ], [ %6320, %6283 ]
  %6325 = phi float [ %6262, %6234 ], [ %6321, %6283 ]
  %6326 = phi float [ %6249, %6234 ], [ %6293, %6283 ]
  %6327 = phi float [ %6249, %6234 ], [ %6294, %6283 ]
  %6328 = phi float [ %6249, %6234 ], [ %6295, %6283 ]
  br i1 %5815, label %6329, label %6527, !dx.controlflow.hints !175

; <label>:6329                                    ; preds = %6322
  %6330 = extractvalue %dx.types.CBufRet.f32 %6228, 0
  %6331 = fmul fast float %6330, %6230
  %6332 = fsub fast float %6225, %6323
  %6333 = fsub fast float %6226, %6324
  %6334 = fsub fast float %6227, %6325
  %6335 = fmul fast float %6331, %6332
  %6336 = fmul fast float %6331, %6333
  %6337 = fmul fast float %6331, %6334
  %6338 = fadd fast float %6335, %6323
  %6339 = fadd fast float %6336, %6324
  %6340 = fadd fast float %6337, %6325
  %6341 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6326)  ; FMax(a,b)
  %6342 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6327)  ; FMax(a,b)
  %6343 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6328)  ; FMax(a,b)
  %6344 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6224)  ; FMax(a,b)
  %6345 = call float @dx.op.binary.f32(i32 35, float %6223, float %6233)  ; FMax(a,b)
  %6346 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6345)  ; FMax(a,b)
  %6347 = fdiv fast float %6223, %6346
  %6348 = call float @dx.op.unary.f32(i32 7, float %6347)  ; Saturate(value)
  %6349 = fdiv fast float %6233, %6346
  %6350 = call float @dx.op.unary.f32(i32 7, float %6349)  ; Saturate(value)
  %6351 = fcmp fast une float %6344, 1.000000e+00
  br i1 %6351, label %6352, label %6365, !dx.controlflow.hints !176

; <label>:6352                                    ; preds = %6329
  %6353 = call float @dx.op.unary.f32(i32 23, float %6344)  ; Log(value)
  %6354 = fmul fast float %6353, 0x3FE62E4300000000
  %6355 = fmul fast float %6225, %6354
  %6356 = fsub fast float -0.000000e+00, %6355
  %6357 = fmul fast float %6226, %6354
  %6358 = fsub fast float -0.000000e+00, %6357
  %6359 = fmul fast float %6227, %6354
  %6360 = fsub fast float -0.000000e+00, %6359
  %6361 = fsub fast float 1.000000e+00, %6344
  %6362 = fdiv fast float %6356, %6361
  %6363 = fdiv fast float %6358, %6361
  %6364 = fdiv fast float %6360, %6361
  br label %6365

; <label>:6365                                    ; preds = %6352, %6329
  %6366 = phi float [ %6362, %6352 ], [ %6225, %6329 ]
  %6367 = phi float [ %6363, %6352 ], [ %6226, %6329 ]
  %6368 = phi float [ %6364, %6352 ], [ %6227, %6329 ]
  %6369 = phi float [ %6354, %6352 ], [ 0.000000e+00, %6329 ]
  %6370 = fcmp fast une float %6341, 1.000000e+00
  br i1 %6370, label %6371, label %6378, !dx.controlflow.hints !177

; <label>:6371                                    ; preds = %6365
  %6372 = call float @dx.op.unary.f32(i32 23, float %6341)  ; Log(value)
  %6373 = fmul fast float %6372, 0x3FE62E4300000000
  %6374 = fmul fast float %6338, %6373
  %6375 = fsub fast float -0.000000e+00, %6374
  %6376 = fsub fast float 1.000000e+00, %6341
  %6377 = fdiv fast float %6375, %6376
  br label %6378

; <label>:6378                                    ; preds = %6371, %6365
  %6379 = phi float [ %6377, %6371 ], [ %6338, %6365 ]
  %6380 = phi float [ %6373, %6371 ], [ 0.000000e+00, %6365 ]
  %6381 = fcmp fast une float %6342, 1.000000e+00
  br i1 %6381, label %6382, label %6389, !dx.controlflow.hints !177

; <label>:6382                                    ; preds = %6378
  %6383 = call float @dx.op.unary.f32(i32 23, float %6342)  ; Log(value)
  %6384 = fmul fast float %6383, 0x3FE62E4300000000
  %6385 = fmul fast float %6339, %6384
  %6386 = fsub fast float -0.000000e+00, %6385
  %6387 = fsub fast float 1.000000e+00, %6342
  %6388 = fdiv fast float %6386, %6387
  br label %6389

; <label>:6389                                    ; preds = %6382, %6378
  %6390 = phi float [ %6388, %6382 ], [ %6339, %6378 ]
  %6391 = phi float [ %6384, %6382 ], [ 0.000000e+00, %6378 ]
  %6392 = fcmp fast une float %6343, 1.000000e+00
  br i1 %6392, label %6393, label %6400, !dx.controlflow.hints !177

; <label>:6393                                    ; preds = %6389
  %6394 = call float @dx.op.unary.f32(i32 23, float %6343)  ; Log(value)
  %6395 = fmul fast float %6394, 0x3FE62E4300000000
  %6396 = fmul fast float %6340, %6395
  %6397 = fsub fast float -0.000000e+00, %6396
  %6398 = fsub fast float 1.000000e+00, %6343
  %6399 = fdiv fast float %6397, %6398
  br label %6400

; <label>:6400                                    ; preds = %6393, %6389
  %6401 = phi float [ %6399, %6393 ], [ %6340, %6389 ]
  %6402 = phi float [ %6395, %6393 ], [ 0.000000e+00, %6389 ]
  %6403 = fmul fast float %6366, %6350
  %6404 = fmul fast float %6367, %6350
  %6405 = fmul fast float %6368, %6350
  %6406 = fmul fast float %6369, %6350
  %6407 = fmul fast float %6379, %6348
  %6408 = fmul fast float %6390, %6348
  %6409 = fmul fast float %6401, %6348
  %6410 = fmul fast float %6380, %6348
  %6411 = fmul fast float %6391, %6348
  %6412 = fmul fast float %6402, %6348
  %6413 = fadd fast float %6407, %6403
  %6414 = fadd fast float %6408, %6404
  %6415 = fadd fast float %6409, %6405
  %6416 = fadd fast float %6410, %6406
  %6417 = fadd fast float %6411, %6406
  %6418 = fadd fast float %6412, %6406
  %6419 = fcmp fast une float %6416, 0.000000e+00
  br i1 %6419, label %6420, label %6427, !dx.controlflow.hints !178

; <label>:6420                                    ; preds = %6400
  %6421 = fmul fast float %6416, 0x3FF7154760000000
  %6422 = call float @dx.op.unary.f32(i32 21, float %6421)  ; Exp(value)
  %6423 = fsub fast float 1.000000e+00, %6422
  %6424 = fmul fast float %6413, %6423
  %6425 = fsub fast float -0.000000e+00, %6424
  %6426 = fdiv fast float %6425, %6416
  br label %6427

; <label>:6427                                    ; preds = %6420, %6400
  %6428 = phi float [ %6422, %6420 ], [ 1.000000e+00, %6400 ]
  %6429 = phi float [ %6426, %6420 ], [ %6413, %6400 ]
  %6430 = fcmp fast une float %6417, 0.000000e+00
  br i1 %6430, label %6431, label %6438, !dx.controlflow.hints !178

; <label>:6431                                    ; preds = %6427
  %6432 = fmul fast float %6417, 0x3FF7154760000000
  %6433 = call float @dx.op.unary.f32(i32 21, float %6432)  ; Exp(value)
  %6434 = fsub fast float 1.000000e+00, %6433
  %6435 = fmul fast float %6414, %6434
  %6436 = fsub fast float -0.000000e+00, %6435
  %6437 = fdiv fast float %6436, %6417
  br label %6438

; <label>:6438                                    ; preds = %6431, %6427
  %6439 = phi float [ %6433, %6431 ], [ 1.000000e+00, %6427 ]
  %6440 = phi float [ %6437, %6431 ], [ %6414, %6427 ]
  %6441 = fcmp fast une float %6418, 0.000000e+00
  br i1 %6441, label %6442, label %6449, !dx.controlflow.hints !178

; <label>:6442                                    ; preds = %6438
  %6443 = fmul fast float %6418, 0x3FF7154760000000
  %6444 = call float @dx.op.unary.f32(i32 21, float %6443)  ; Exp(value)
  %6445 = fsub fast float 1.000000e+00, %6444
  %6446 = fmul fast float %6415, %6445
  %6447 = fsub fast float -0.000000e+00, %6446
  %6448 = fdiv fast float %6447, %6418
  br label %6449

; <label>:6449                                    ; preds = %6442, %6438
  %6450 = phi float [ %6444, %6442 ], [ 1.000000e+00, %6438 ]
  %6451 = phi float [ %6448, %6442 ], [ %6415, %6438 ]
  %6452 = fcmp fast ogt float %6348, %6350
  br i1 %6452, label %6453, label %6473

; <label>:6453                                    ; preds = %6449
  %6454 = fsub fast float 1.000000e+00, %6350
  %6455 = fmul fast float %6366, %6454
  %6456 = fmul fast float %6367, %6454
  %6457 = fmul fast float %6368, %6454
  %6458 = fmul fast float %6369, %6454
  %6459 = fcmp fast une float %6458, 0.000000e+00
  br i1 %6459, label %6460, label %6511, !dx.controlflow.hints !179

; <label>:6460                                    ; preds = %6453
  %6461 = fmul fast float %6458, 0x3FF7154760000000
  %6462 = call float @dx.op.unary.f32(i32 21, float %6461)  ; Exp(value)
  %6463 = fsub fast float 1.000000e+00, %6462
  %6464 = fmul fast float %6455, %6463
  %6465 = fsub fast float -0.000000e+00, %6464
  %6466 = fmul fast float %6456, %6463
  %6467 = fsub fast float -0.000000e+00, %6466
  %6468 = fmul fast float %6457, %6463
  %6469 = fsub fast float -0.000000e+00, %6468
  %6470 = fdiv fast float %6465, %6458
  %6471 = fdiv fast float %6467, %6458
  %6472 = fdiv fast float %6469, %6458
  br label %6511

; <label>:6473                                    ; preds = %6449
  %6474 = fsub fast float 1.000000e+00, %6348
  %6475 = fmul fast float %6379, %6474
  %6476 = fmul fast float %6390, %6474
  %6477 = fmul fast float %6401, %6474
  %6478 = fmul fast float %6380, %6474
  %6479 = fmul fast float %6391, %6474
  %6480 = fmul fast float %6402, %6474
  %6481 = fcmp fast une float %6478, 0.000000e+00
  br i1 %6481, label %6482, label %6489, !dx.controlflow.hints !178

; <label>:6482                                    ; preds = %6473
  %6483 = fmul fast float %6478, 0x3FF7154760000000
  %6484 = call float @dx.op.unary.f32(i32 21, float %6483)  ; Exp(value)
  %6485 = fsub fast float 1.000000e+00, %6484
  %6486 = fmul fast float %6475, %6485
  %6487 = fsub fast float -0.000000e+00, %6486
  %6488 = fdiv fast float %6487, %6478
  br label %6489

; <label>:6489                                    ; preds = %6482, %6473
  %6490 = phi float [ %6488, %6482 ], [ %6475, %6473 ]
  %6491 = phi float [ %6484, %6482 ], [ 1.000000e+00, %6473 ]
  %6492 = fcmp fast une float %6479, 0.000000e+00
  br i1 %6492, label %6493, label %6500, !dx.controlflow.hints !178

; <label>:6493                                    ; preds = %6489
  %6494 = fmul fast float %6479, 0x3FF7154760000000
  %6495 = call float @dx.op.unary.f32(i32 21, float %6494)  ; Exp(value)
  %6496 = fsub fast float 1.000000e+00, %6495
  %6497 = fmul fast float %6476, %6496
  %6498 = fsub fast float -0.000000e+00, %6497
  %6499 = fdiv fast float %6498, %6479
  br label %6500

; <label>:6500                                    ; preds = %6493, %6489
  %6501 = phi float [ %6499, %6493 ], [ %6476, %6489 ]
  %6502 = phi float [ %6495, %6493 ], [ 1.000000e+00, %6489 ]
  %6503 = fcmp fast une float %6480, 0.000000e+00
  br i1 %6503, label %6504, label %6511, !dx.controlflow.hints !178

; <label>:6504                                    ; preds = %6500
  %6505 = fmul fast float %6480, 0x3FF7154760000000
  %6506 = call float @dx.op.unary.f32(i32 21, float %6505)  ; Exp(value)
  %6507 = fsub fast float 1.000000e+00, %6506
  %6508 = fmul fast float %6477, %6507
  %6509 = fsub fast float -0.000000e+00, %6508
  %6510 = fdiv fast float %6509, %6480
  br label %6511

; <label>:6511                                    ; preds = %6504, %6500, %6460, %6453
  %6512 = phi float [ %6510, %6504 ], [ %6472, %6460 ], [ %6457, %6453 ], [ %6477, %6500 ]
  %6513 = phi float [ %6501, %6504 ], [ %6471, %6460 ], [ %6456, %6453 ], [ %6501, %6500 ]
  %6514 = phi float [ %6490, %6504 ], [ %6470, %6460 ], [ %6455, %6453 ], [ %6490, %6500 ]
  %6515 = phi float [ %6506, %6504 ], [ %6462, %6460 ], [ 1.000000e+00, %6453 ], [ 1.000000e+00, %6500 ]
  %6516 = phi float [ %6502, %6504 ], [ %6462, %6460 ], [ 1.000000e+00, %6453 ], [ %6502, %6500 ]
  %6517 = phi float [ %6491, %6504 ], [ %6462, %6460 ], [ 1.000000e+00, %6453 ], [ %6491, %6500 ]
  %6518 = fmul fast float %6517, %6429
  %6519 = fmul fast float %6516, %6440
  %6520 = fmul fast float %6515, %6451
  %6521 = fadd fast float %6518, %6514
  %6522 = fadd fast float %6519, %6513
  %6523 = fadd fast float %6520, %6512
  %6524 = fmul fast float %6517, %6428
  %6525 = fmul fast float %6516, %6439
  %6526 = fmul fast float %6515, %6450
  br label %6527

; <label>:6527                                    ; preds = %6511, %6322
  %6528 = phi float [ %6526, %6511 ], [ %6328, %6322 ]
  %6529 = phi float [ %6525, %6511 ], [ %6327, %6322 ]
  %6530 = phi float [ %6524, %6511 ], [ %6326, %6322 ]
  %6531 = phi float [ %6523, %6511 ], [ %6325, %6322 ]
  %6532 = phi float [ %6522, %6511 ], [ %6324, %6322 ]
  %6533 = phi float [ %6521, %6511 ], [ %6323, %6322 ]
  %6534 = fmul fast float %6533, %5487
  %6535 = fmul fast float %6532, %5487
  %6536 = fmul fast float %6531, %5487
  %6537 = fmul fast float %6530, %5770
  %6538 = call float @dx.op.dot3.f32(i32 55, float %6530, float %6529, float %6528, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6539 = call float @dx.op.dot3.f32(i32 55, float %6534, float %6535, float %6536, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6540 = select i1 %261, float %6538, float %6530
  %6541 = select i1 %261, float %6538, float %6529
  %6542 = select i1 %261, float 1.000000e+00, float %6528
  %6543 = select i1 %261, float %6539, float %6534
  %6544 = select i1 %261, float 0.000000e+00, float %6535
  %6545 = select i1 %261, float 0.000000e+00, float %6536
  %6546 = fmul fast float %6540, %5764
  %6547 = fmul fast float %6541, %5765
  %6548 = fmul fast float %6542, %5766
  %6549 = fadd fast float %6546, %6543
  %6550 = fadd fast float %6547, %6544
  %6551 = fadd fast float %6545, %6548
  %6552 = fmul fast float %6540, %5767
  %6553 = fmul fast float %6541, %5768
  %6554 = fmul fast float %6542, %5769
  %6555 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6556 = extractvalue %dx.types.CBufRet.i32 %6555, 0
  %6557 = icmp eq i32 %6556, 0
  br i1 %6557, label %6925, label %6558, !dx.controlflow.hints !180

; <label>:6558                                    ; preds = %6527
  %6559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6560 = extractvalue %dx.types.CBufRet.f32 %6559, 2
  %6561 = extractvalue %dx.types.CBufRet.f32 %6559, 3
  %6562 = fmul fast float %6560, %91
  %6563 = fmul fast float %6561, %92
  %6564 = fmul fast float %6562, 2.000000e+00
  %6565 = fmul fast float %6563, 2.000000e+00
  %6566 = fsub fast float 1.000000e+00, %6564
  %6567 = fsub fast float 1.000000e+00, %6565
  %6568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6569 = extractvalue %dx.types.CBufRet.f32 %6568, 0
  %6570 = extractvalue %dx.types.CBufRet.f32 %6568, 1
  %6571 = extractvalue %dx.types.CBufRet.f32 %6568, 2
  %6572 = fmul fast float %6566, %6569
  %6573 = fmul fast float %6566, %6570
  %6574 = fmul fast float %6566, %6571
  %6575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6576 = extractvalue %dx.types.CBufRet.f32 %6575, 0
  %6577 = extractvalue %dx.types.CBufRet.f32 %6575, 1
  %6578 = extractvalue %dx.types.CBufRet.f32 %6575, 2
  %6579 = fmul fast float %6567, %6576
  %6580 = fmul fast float %6567, %6577
  %6581 = fmul fast float %6567, %6578
  %6582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6583 = extractvalue %dx.types.CBufRet.f32 %6582, 0
  %6584 = extractvalue %dx.types.CBufRet.f32 %6582, 1
  %6585 = extractvalue %dx.types.CBufRet.f32 %6582, 2
  %6586 = fadd fast float %6579, %6583
  %6587 = fadd fast float %6586, %6572
  %6588 = fadd fast float %6580, %6584
  %6589 = fadd fast float %6588, %6573
  %6590 = fadd fast float %6581, %6585
  %6591 = fadd fast float %6590, %6574
  %6592 = fmul fast float %6587, %5763
  %6593 = fmul fast float %6589, %5763
  %6594 = fmul fast float %6591, %5763
  %6595 = fmul fast float %6592, %6592
  %6596 = fmul fast float %6593, %6593
  %6597 = fadd fast float %6595, %6596
  %6598 = fmul fast float %6594, %6594
  %6599 = fadd fast float %6597, %6598
  %6600 = call float @dx.op.unary.f32(i32 24, float %6599)  ; Sqrt(value)
  %6601 = extractvalue %dx.types.CBufRet.f32 %5488, 0
  %6602 = fsub fast float %6600, %6601
  %6603 = extractvalue %dx.types.CBufRet.f32 %5488, 2
  %6604 = fmul fast float %6602, %6603
  %6605 = call float @dx.op.unary.f32(i32 7, float %6604)  ; Saturate(value)
  %6606 = fadd fast float %6605, -5.000000e-01
  %6607 = fmul fast float %6606, 2.000000e+00
  %6608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6609 = extractvalue %dx.types.CBufRet.f32 %6608, 2
  %6610 = call float @dx.op.binary.f32(i32 36, float %6609, float %6607)  ; FMin(a,b)
  %6611 = fsub fast float -0.000000e+00, %6609
  %6612 = fcmp fast ogt float %6610, %6611
  br i1 %6612, label %6613, label %6925, !dx.controlflow.hints !181

; <label>:6613                                    ; preds = %6558
  %6614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6615 = extractvalue %dx.types.CBufRet.f32 %6614, 3
  %6616 = fcmp fast ogt float %6615, 0.000000e+00
  br i1 %6616, label %6617, label %6692, !dx.controlflow.hints !182

; <label>:6617                                    ; preds = %6613
  %6618 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %6619 = extractvalue %dx.types.Dimensions %6618, 0
  %6620 = sitofp i32 %6619 to float
  %6621 = extractvalue %dx.types.Dimensions %6618, 1
  %6622 = sitofp i32 %6621 to float
  %6623 = fmul fast float %6562, %6620
  %6624 = fmul fast float %6563, %6622
  %6625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6626 = extractvalue %dx.types.CBufRet.f32 %6625, 1
  %6627 = fsub fast float -0.000000e+00, %6626
  %6628 = fptoui float %6627 to i32
  %6629 = fptoui float %6623 to i32
  %6630 = fptoui float %6624 to i32
  %6631 = and i32 %6628, 31
  %6632 = lshr i32 %6629, %6631
  %6633 = lshr i32 %6630, %6631
  %6634 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %6628, i32 %6632, i32 %6633, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6635 = extractvalue %dx.types.ResRet.f32 %6634, 0
  %6636 = fcmp fast olt float %6635, -1.000000e+00
  %6637 = fcmp fast ogt float %6635, -1.000000e+00
  %6638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6639 = extractvalue %dx.types.CBufRet.f32 %6638, 1
  %6640 = select i1 %6637, float %6639, float 1.000000e+00
  %6641 = fadd fast float %6635, 1.000000e+00
  %6642 = fmul fast float %6640, %6641
  %6643 = call float @dx.op.unary.f32(i32 6, float %6642)  ; FAbs(value)
  %6644 = extractvalue %dx.types.CBufRet.f32 %6638, 3
  %6645 = fcmp fast oge float %6643, %6644
  %6646 = select i1 %6645, float 0x4197782600000000, float %6643
  %6647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6648 = extractvalue %dx.types.CBufRet.f32 %6647, 0
  %6649 = extractvalue %dx.types.CBufRet.f32 %6647, 1
  %6650 = extractvalue %dx.types.CBufRet.f32 %6647, 2
  %6651 = select i1 %6636, float %6648, float %6569
  %6652 = select i1 %6636, float %6649, float %6570
  %6653 = select i1 %6636, float %6650, float %6571
  %6654 = fmul fast float %6651, %6566
  %6655 = fmul fast float %6652, %6566
  %6656 = fmul fast float %6653, %6566
  %6657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6658 = extractvalue %dx.types.CBufRet.f32 %6657, 0
  %6659 = extractvalue %dx.types.CBufRet.f32 %6657, 1
  %6660 = extractvalue %dx.types.CBufRet.f32 %6657, 2
  %6661 = select i1 %6636, float %6658, float %6576
  %6662 = select i1 %6636, float %6659, float %6577
  %6663 = select i1 %6636, float %6660, float %6578
  %6664 = fmul fast float %6661, %6567
  %6665 = fmul fast float %6662, %6567
  %6666 = fmul fast float %6663, %6567
  %6667 = fadd fast float %6664, %6654
  %6668 = fadd fast float %6665, %6655
  %6669 = fadd fast float %6666, %6656
  %6670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6671 = extractvalue %dx.types.CBufRet.f32 %6670, 0
  %6672 = extractvalue %dx.types.CBufRet.f32 %6670, 1
  %6673 = extractvalue %dx.types.CBufRet.f32 %6670, 2
  %6674 = select i1 %6636, float %6671, float %6583
  %6675 = select i1 %6636, float %6672, float %6584
  %6676 = select i1 %6636, float %6673, float %6585
  %6677 = fadd fast float %6667, %6674
  %6678 = fadd fast float %6668, %6675
  %6679 = fadd fast float %6669, %6676
  %6680 = fmul fast float %6677, %6646
  %6681 = fmul fast float %6678, %6646
  %6682 = fmul fast float %6679, %6646
  %6683 = fmul fast float %6680, %6680
  %6684 = fmul fast float %6681, %6681
  %6685 = fadd fast float %6683, %6684
  %6686 = fmul fast float %6682, %6682
  %6687 = fadd fast float %6685, %6686
  %6688 = call float @dx.op.unary.f32(i32 24, float %6687)  ; Sqrt(value)
  %6689 = fsub fast float %6688, %6601
  %6690 = fmul fast float %6689, %6603
  %6691 = call float @dx.op.unary.f32(i32 7, float %6690)  ; Saturate(value)
  br label %6692

; <label>:6692                                    ; preds = %6617, %6613
  %6693 = phi float [ %6691, %6617 ], [ 1.000000e+00, %6613 ]
  %6694 = fmul fast float %6610, 5.000000e-01
  %6695 = fadd fast float %6694, 5.000000e-01
  %6696 = call float @dx.op.unary.f32(i32 22, float %6695)  ; Frc(value)
  %6697 = call float @dx.op.unary.f32(i32 27, float %6696)  ; Round_ni(value)
  %6698 = call float @dx.op.unary.f32(i32 22, float %6696)  ; Frc(value)
  %6699 = fmul fast float %6698, 2.000000e+00
  %6700 = fadd fast float %6699, -1.000000e+00
  %6701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %58, float %6562, float %6563, float %6697, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6702 = extractvalue %dx.types.ResRet.f32 %6701, 0
  %6703 = extractvalue %dx.types.ResRet.f32 %6701, 1
  %6704 = extractvalue %dx.types.ResRet.f32 %6701, 2
  %6705 = extractvalue %dx.types.ResRet.f32 %6701, 3
  %6706 = fadd fast float %6702, -5.000000e-01
  %6707 = fadd fast float %6704, -5.000000e-01
  %6708 = fmul fast float %6706, 0xBFD5555560000000
  %6709 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6707, float %6708)  ; FMad(a,b,c)
  %6710 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6703, float 0.000000e+00)  ; FMad(a,b,c)
  %6711 = fadd fast float %6710, %6705
  %6712 = fmul fast float %6706, -7.500000e-01
  %6713 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6707, float %6712)  ; FMad(a,b,c)
  %6714 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6703, float 0.000000e+00)  ; FMad(a,b,c)
  %6715 = fadd fast float %6714, %6705
  %6716 = call float @dx.op.binary.f32(i32 35, float %6709, float -1.000000e+00)  ; FMax(a,b)
  %6717 = call float @dx.op.binary.f32(i32 35, float %6711, float -1.000000e+00)  ; FMax(a,b)
  %6718 = call float @dx.op.binary.f32(i32 35, float %6713, float -1.000000e+00)  ; FMax(a,b)
  %6719 = call float @dx.op.binary.f32(i32 35, float %6715, float -1.000000e+00)  ; FMax(a,b)
  %6720 = call float @dx.op.binary.f32(i32 36, float %6716, float 1.000000e+00)  ; FMin(a,b)
  %6721 = call float @dx.op.binary.f32(i32 36, float %6717, float 1.000000e+00)  ; FMin(a,b)
  %6722 = call float @dx.op.binary.f32(i32 36, float %6718, float 1.000000e+00)  ; FMin(a,b)
  %6723 = call float @dx.op.binary.f32(i32 36, float %6719, float 1.000000e+00)  ; FMin(a,b)
  %6724 = fcmp fast olt float %6720, 0x3FEFFF8020000000
  br i1 %6724, label %6725, label %6840, !dx.controlflow.hints !183

; <label>:6725                                    ; preds = %6692
  %6726 = extractvalue %dx.types.CBufRet.f32 %6608, 3
  %6727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6728 = extractvalue %dx.types.CBufRet.f32 %6727, 0
  %6729 = extractvalue %dx.types.CBufRet.f32 %6727, 1
  %6730 = extractvalue %dx.types.CBufRet.f32 %6727, 2
  %6731 = extractvalue %dx.types.CBufRet.f32 %6727, 3
  %6732 = fsub fast float %6728, %6720
  %6733 = fsub fast float %6729, %6721
  %6734 = fsub fast float %6730, %6722
  %6735 = fsub fast float %6731, %6723
  %6736 = fmul fast float %6732, %6726
  %6737 = fmul fast float %6733, %6726
  %6738 = fmul fast float %6734, %6726
  %6739 = fmul fast float %6735, %6726
  %6740 = fadd fast float %6736, %6720
  %6741 = fadd fast float %6737, %6721
  %6742 = fsub fast float -0.000000e+00, %6741
  %6743 = fadd fast float %6738, %6722
  %6744 = fadd fast float %6739, %6723
  %6745 = fmul fast float %6740, %6740
  %6746 = fsub fast float %6741, %6745
  %6747 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6746)  ; FMax(a,b)
  %6748 = fdiv fast float 1.000000e+00, %6747
  %6749 = fmul fast float %6741, %6740
  %6750 = fsub fast float %6743, %6749
  %6751 = fsub fast float %6700, %6740
  %6752 = fmul fast float %6700, %6700
  %6753 = fsub fast float %6752, %6741
  %6754 = fmul fast float %6751, %6748
  %6755 = fmul fast float %6754, %6750
  %6756 = fsub fast float %6753, %6755
  %6757 = fmul fast float %6741, %6741
  %6758 = fsub fast float %6744, %6757
  %6759 = fmul fast float %6750, %6750
  %6760 = fmul fast float %6759, %6748
  %6761 = fsub fast float %6758, %6760
  %6762 = fdiv fast float %6756, %6761
  %6763 = fmul fast float %6750, %6762
  %6764 = fsub fast float %6751, %6763
  %6765 = fmul fast float %6764, %6748
  %6766 = fmul fast float %6765, %6740
  %6767 = fsub fast float 1.000000e+00, %6766
  %6768 = fmul fast float %6741, %6762
  %6769 = fsub fast float %6767, %6768
  %6770 = fmul fast float %6765, %6765
  %6771 = fmul fast float %6762, 4.000000e+00
  %6772 = fmul fast float %6771, %6769
  %6773 = fsub fast float %6770, %6772
  %6774 = call float @dx.op.unary.f32(i32 24, float %6773)  ; Sqrt(value)
  %6775 = fcmp fast oge float %6765, 0.000000e+00
  %6776 = fsub fast float -0.000000e+00, %6774
  %6777 = select i1 %6775, float %6776, float %6774
  %6778 = fsub fast float %6777, %6765
  %6779 = fdiv fast float %6778, %6762
  %6780 = fdiv fast float %6769, %6778
  %6781 = fmul fast float %6779, 5.000000e-01
  %6782 = fmul fast float %6780, 2.000000e+00
  %6783 = select i1 %6775, float %6781, float %6782
  %6784 = select i1 %6775, float %6782, float %6781
  %6785 = call float @dx.op.binary.f32(i32 35, float %6783, float %6784)  ; FMax(a,b)
  %6786 = call float @dx.op.binary.f32(i32 36, float %6783, float %6784)  ; FMin(a,b)
  %6787 = fcmp fast ogt float %6700, %6786
  br i1 %6787, label %6788, label %6798

; <label>:6788                                    ; preds = %6725
  %6789 = fsub fast float %6700, %6786
  %6790 = fsub fast float %6785, %6786
  %6791 = fmul fast float %6789, %6790
  %6792 = fmul fast float %6785, %6700
  %6793 = fadd fast float %6785, %6700
  %6794 = fmul fast float %6793, %6740
  %6795 = fadd fast float %6792, %6741
  %6796 = fsub fast float %6795, %6794
  %6797 = fdiv fast float %6796, %6791
  br label %6798

; <label>:6798                                    ; preds = %6788, %6725
  %6799 = phi float [ %6797, %6788 ], [ 0.000000e+00, %6725 ]
  %6800 = fcmp fast ogt float %6700, %6785
  %6801 = fsub fast float %6700, %6785
  br i1 %6800, label %6802, label %6812

; <label>:6802                                    ; preds = %6798
  %6803 = fsub fast float %6785, %6786
  %6804 = fmul fast float %6803, %6801
  %6805 = fmul fast float %6786, %6700
  %6806 = fadd fast float %6786, %6700
  %6807 = fmul fast float %6806, %6740
  %6808 = fsub fast float %6742, %6805
  %6809 = fadd fast float %6808, %6807
  %6810 = fdiv fast float %6809, %6804
  %6811 = fadd fast float %6810, %6799
  br label %6812

; <label>:6812                                    ; preds = %6802, %6798
  %6813 = phi float [ %6811, %6802 ], [ %6799, %6798 ]
  %6814 = fsub fast float %6700, %6786
  %6815 = fmul fast float %6814, %6801
  %6816 = fmul fast float %6786, %6785
  %6817 = fadd fast float %6786, %6785
  %6818 = fmul fast float %6817, %6740
  %6819 = fadd fast float %6816, %6741
  %6820 = fsub fast float %6819, %6818
  %6821 = fdiv fast float %6820, %6815
  %6822 = call float @dx.op.unary.f32(i32 7, float %6813)  ; Saturate(value)
  %6823 = fcmp fast oeq float %5489, 0.000000e+00
  %6824 = extractvalue %dx.types.CBufRet.f32 %6608, 0
  %6825 = fcmp fast oeq float %6824, 0.000000e+00
  %6826 = or i1 %6823, %6825
  %6827 = fmul fast float %6824, 2.000000e+00
  %6828 = fadd fast float %6609, %6610
  %6829 = fdiv fast float %6828, %6827
  %6830 = call float @dx.op.unary.f32(i32 7, float %6829)  ; Saturate(value)
  %6831 = fmul fast float %6830, 2.000000e+00
  %6832 = fsub fast float 3.000000e+00, %6831
  %6833 = fmul fast float %6830, %6830
  %6834 = fmul fast float %6833, %6832
  %6835 = select i1 %6826, float 1.000000e+00, float %6834
  %6836 = fmul fast float %6821, %5489
  %6837 = fadd fast float %6822, %6836
  %6838 = call float @dx.op.unary.f32(i32 7, float %6837)  ; Saturate(value)
  %6839 = fmul fast float %6835, %6838
  br label %6840

; <label>:6840                                    ; preds = %6812, %6692
  %6841 = phi float [ %6839, %6812 ], [ 0.000000e+00, %6692 ]
  %6842 = fsub fast float 1.000000e+00, %6841
  %6843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %58, float %6562, float %6563, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6844 = extractvalue %dx.types.ResRet.f32 %6843, 0
  %6845 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6846 = extractvalue %dx.types.CBufRet.i32 %6845, 2
  %6847 = icmp eq i32 %6846, 0
  br i1 %6847, label %6853, label %6848

; <label>:6848                                    ; preds = %6840
  %6849 = call float @dx.op.unary.f32(i32 7, float %6841)  ; Saturate(value)
  %6850 = fadd fast float %6844, -1.000000e+00
  %6851 = fmul fast float %6849, %6850
  %6852 = fadd fast float %6851, 1.000000e+00
  br label %6853

; <label>:6853                                    ; preds = %6848, %6840
  %6854 = phi float [ %6852, %6848 ], [ %6842, %6840 ]
  br i1 %6616, label %6855, label %6873

; <label>:6855                                    ; preds = %6853
  %6856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6857 = extractvalue %dx.types.CBufRet.f32 %6856, 1
  %6858 = fsub fast float %6693, %6857
  %6859 = call float @dx.op.unary.f32(i32 7, float %6858)  ; Saturate(value)
  %6860 = fsub fast float %6693, %6615
  %6861 = call float @dx.op.unary.f32(i32 7, float %6860)  ; Saturate(value)
  %6862 = fsub fast float %6859, %6861
  %6863 = fsub fast float %6695, %6861
  %6864 = fdiv fast float %6863, %6862
  %6865 = call float @dx.op.unary.f32(i32 7, float %6864)  ; Saturate(value)
  %6866 = fmul fast float %6865, 2.000000e+00
  %6867 = fsub fast float 3.000000e+00, %6866
  %6868 = fsub fast float %6844, %6854
  %6869 = fmul fast float %6865, %6865
  %6870 = fmul fast float %6869, %6868
  %6871 = fmul fast float %6870, %6867
  %6872 = fadd fast float %6871, %6854
  br label %6873

; <label>:6873                                    ; preds = %6855, %6853
  %6874 = phi float [ %6872, %6855 ], [ %6854, %6853 ]
  %6875 = call float @dx.op.binary.f32(i32 35, float %6844, float %6874)  ; FMax(a,b)
  %6876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6877 = extractvalue %dx.types.CBufRet.i32 %6876, 2
  %6878 = and i32 %6877, 1
  %6879 = icmp eq i32 %6878, 0
  %6880 = fcmp fast une float %6875, 1.000000e+00
  %6881 = and i1 %6880, %6879
  br i1 %6881, label %6882, label %6901

; <label>:6882                                    ; preds = %6873
  %6883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %58, float %6562, float %6563, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6884 = extractvalue %dx.types.ResRet.f32 %6883, 0
  %6885 = extractvalue %dx.types.ResRet.f32 %6883, 1
  %6886 = extractvalue %dx.types.ResRet.f32 %6883, 2
  %6887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6888 = extractvalue %dx.types.CBufRet.f32 %6887, 1
  %6889 = fmul fast float %6888, %6884
  %6890 = fmul fast float %6888, %6885
  %6891 = fmul fast float %6888, %6886
  %6892 = fcmp fast ogt float %6844, 0x3FEFFF2E40000000
  %6893 = fsub fast float 1.000000e+00, %6875
  %6894 = fsub fast float 1.000000e+00, %6844
  %6895 = fdiv fast float %6893, %6894
  %6896 = call float @dx.op.unary.f32(i32 7, float %6895)  ; Saturate(value)
  %6897 = select i1 %6892, float 0.000000e+00, float %6896
  %6898 = fmul fast float %6889, %6897
  %6899 = fmul fast float %6890, %6897
  %6900 = fmul fast float %6891, %6897
  br label %6901

; <label>:6901                                    ; preds = %6882, %6873
  %6902 = phi float [ 0.000000e+00, %6873 ], [ %6898, %6882 ]
  %6903 = phi float [ 0.000000e+00, %6873 ], [ %6899, %6882 ]
  %6904 = phi float [ 0.000000e+00, %6873 ], [ %6900, %6882 ]
  %6905 = fmul fast float %6902, %5487
  %6906 = fmul fast float %6903, %5487
  %6907 = fmul fast float %6904, %5487
  %6908 = fmul fast float %6875, %6537
  %6909 = call float @dx.op.dot3.f32(i32 55, float %6875, float %6875, float %6875, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6910 = call float @dx.op.dot3.f32(i32 55, float %6905, float %6906, float %6907, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6911 = select i1 %261, float %6909, float %6875
  %6912 = select i1 %261, float 1.000000e+00, float %6875
  %6913 = select i1 %261, float %6910, float %6905
  %6914 = select i1 %261, float 0.000000e+00, float %6906
  %6915 = select i1 %261, float 0.000000e+00, float %6907
  %6916 = fmul fast float %6911, %6549
  %6917 = fmul fast float %6911, %6550
  %6918 = fmul fast float %6912, %6551
  %6919 = fadd fast float %6916, %6913
  %6920 = fadd fast float %6917, %6914
  %6921 = fadd fast float %6915, %6918
  %6922 = fmul fast float %6911, %6552
  %6923 = fmul fast float %6911, %6553
  %6924 = fmul fast float %6912, %6554
  br label %6925

; <label>:6925                                    ; preds = %6901, %6558, %6527, %5759
  %6926 = phi float [ %5764, %5759 ], [ %6549, %6527 ], [ %6919, %6901 ], [ %6549, %6558 ]
  %6927 = phi float [ %5765, %5759 ], [ %6550, %6527 ], [ %6920, %6901 ], [ %6550, %6558 ]
  %6928 = phi float [ %5766, %5759 ], [ %6551, %6527 ], [ %6921, %6901 ], [ %6551, %6558 ]
  %6929 = phi float [ %5767, %5759 ], [ %6552, %6527 ], [ %6922, %6901 ], [ %6552, %6558 ]
  %6930 = phi float [ %5768, %5759 ], [ %6553, %6527 ], [ %6923, %6901 ], [ %6553, %6558 ]
  %6931 = phi float [ %5769, %5759 ], [ %6554, %6527 ], [ %6924, %6901 ], [ %6554, %6558 ]
  %6932 = phi float [ %5770, %5759 ], [ %6537, %6527 ], [ %6908, %6901 ], [ %6537, %6558 ]
  %6933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6934 = extractvalue %dx.types.CBufRet.f32 %6933, 2
  %6935 = extractvalue %dx.types.CBufRet.f32 %6933, 3
  %6936 = fmul fast float %6934, %91
  %6937 = fmul fast float %6935, %92
  %6938 = call float @dx.op.unary.f32(i32 7, float %6936)  ; Saturate(value)
  %6939 = call float @dx.op.unary.f32(i32 7, float %6937)  ; Saturate(value)
  %6940 = select i1 %5499, i32 2, i32 0
  %6941 = or i32 %6940, 1
  %6942 = uitofp i32 %6941 to float
  %6943 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6938, float %6939, float %6942, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6944 = extractvalue %dx.types.ResRet.f32 %6943, 0
  %6945 = extractvalue %dx.types.ResRet.f32 %6943, 1
  %6946 = extractvalue %dx.types.ResRet.f32 %6943, 2
  %6947 = extractvalue %dx.types.ResRet.f32 %6943, 3
  %6948 = add nuw nsw i32 %6940, 2
  %6949 = uitofp i32 %6948 to float
  %6950 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6938, float %6939, float %6949, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6951 = extractvalue %dx.types.ResRet.f32 %6950, 0
  %6952 = extractvalue %dx.types.ResRet.f32 %6950, 1
  %6953 = extractvalue %dx.types.ResRet.f32 %6950, 2
  %6954 = extractvalue %dx.types.ResRet.f32 %6950, 3
  %6955 = call float @dx.op.binary.f32(i32 35, float %6945, float %6946)  ; FMax(a,b)
  %6956 = call float @dx.op.binary.f32(i32 35, float %6944, float %6955)  ; FMax(a,b)
  %6957 = call float @dx.op.binary.f32(i32 35, float %6956, float %6947)  ; FMax(a,b)
  %6958 = call float @dx.op.binary.f32(i32 36, float %6952, float %6953)  ; FMin(a,b)
  %6959 = call float @dx.op.binary.f32(i32 36, float %6951, float %6958)  ; FMin(a,b)
  %6960 = call float @dx.op.binary.f32(i32 36, float %6959, float %6954)  ; FMin(a,b)
  %6961 = fmul fast float %6957, 2.550000e+02
  %6962 = fadd fast float %6961, 0x3F70101020000000
  %6963 = fptoui float %6962 to i32
  %6964 = fmul fast float %6960, 2.550000e+02
  %6965 = fadd fast float %6964, 0x3F70101020000000
  %6966 = fptoui float %6965 to i32
  %6967 = icmp ult i32 %6963, %6966
  br i1 %6967, label %6968, label %7137

; <label>:6968                                    ; preds = %6925
  %6969 = fcmp fast ogt float %81, 9.843750e-01
  %6970 = fadd fast float %5763, -4.000000e+00
  %6971 = select i1 %6969, float -4.000000e+00, float %6970
  %6972 = call float @dx.op.binary.f32(i32 35, float %6971, float 0.000000e+00)  ; FMax(a,b)
  %6973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6974 = extractvalue %dx.types.CBufRet.f32 %6973, 0
  %6975 = fadd fast float %6974, %6972
  %6976 = extractvalue %dx.types.CBufRet.f32 %6973, 2
  %6977 = fmul fast float %6975, %6976
  %6978 = call float @dx.op.unary.f32(i32 23, float %6977)  ; Log(value)
  %6979 = extractvalue %dx.types.CBufRet.f32 %6973, 3
  %6980 = fmul fast float %6979, %6978
  %6981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6982 = extractvalue %dx.types.CBufRet.f32 %6981, 2
  %6983 = fmul fast float %6980, %6982
  %6984 = call float @dx.op.unary.f32(i32 7, float %6983)  ; Saturate(value)
  %6985 = uitofp i32 %6963 to float
  %6986 = uitofp i32 %6966 to float
  %6987 = fadd fast float %6985, 5.000000e-01
  %6988 = fadd fast float %6986, 5.000000e-01
  %6989 = fmul fast float %6982, %6987
  %6990 = fmul fast float %6982, %6988
  %6991 = fadd fast float %6989, 0x3F0FFB4800000000
  %6992 = fadd fast float %6990, 0xBF0FFB4800000000
  %6993 = call float @dx.op.binary.f32(i32 35, float %6984, float %6991)  ; FMax(a,b)
  %6994 = call float @dx.op.binary.f32(i32 36, float %6993, float %6992)  ; FMin(a,b)
  %6995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6996 = extractvalue %dx.types.CBufRet.f32 %6995, 1
  %6997 = extractvalue %dx.types.CBufRet.f32 %6995, 2
  %6998 = extractvalue %dx.types.CBufRet.f32 %6995, 0
  %6999 = select i1 %5499, float %6998, float 0.000000e+00
  %7000 = fmul fast float %6996, %6994
  %7001 = fadd fast float %6999, %7000
  %7002 = fadd fast float %6999, %6997
  %7003 = fsub fast float %6996, %6997
  %7004 = fadd fast float %7003, %6999
  %7005 = call float @dx.op.binary.f32(i32 35, float %7001, float %7002)  ; FMax(a,b)
  %7006 = call float @dx.op.binary.f32(i32 36, float %7005, float %7004)  ; FMin(a,b)
  %7007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %6938, float %6939, float %7006, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7008 = extractvalue %dx.types.ResRet.f32 %7007, 0
  %7009 = extractvalue %dx.types.ResRet.f32 %7007, 1
  %7010 = extractvalue %dx.types.ResRet.f32 %7007, 2
  %7011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7012 = extractvalue %dx.types.CBufRet.i32 %7011, 0
  %7013 = extractvalue %dx.types.CBufRet.i32 %7011, 1
  %7014 = uitofp i32 %7012 to float
  %7015 = uitofp i32 %7013 to float
  %7016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7017 = extractvalue %dx.types.CBufRet.f32 %7016, 0
  %7018 = extractvalue %dx.types.CBufRet.f32 %7016, 1
  %7019 = fmul fast float %7014, %6938
  %7020 = fmul fast float %7015, %6939
  %7021 = fadd fast float %7019, -5.000000e-01
  %7022 = fadd fast float %7020, -5.000000e-01
  %7023 = call float @dx.op.unary.f32(i32 22, float %7021)  ; Frc(value)
  %7024 = call float @dx.op.unary.f32(i32 22, float %7022)  ; Frc(value)
  %7025 = fmul fast float %7023, %7023
  %7026 = fmul fast float %7025, %7023
  %7027 = fsub fast float 3.000000e+00, %7023
  %7028 = fmul fast float %7025, %7027
  %7029 = fmul fast float %7023, 3.000000e+00
  %7030 = fmul fast float %7026, 3.000000e+00
  %7031 = fmul fast float %7025, 6.000000e+00
  %7032 = fsub fast float %7030, %7031
  %7033 = fadd fast float %7032, 4.000000e+00
  %7034 = fmul fast float %7033, 0x3FC5555560000000
  %7035 = fmul fast float %7026, -3.000000e+00
  %7036 = fadd fast float %7025, %7023
  %7037 = fmul fast float %7036, 3.000000e+00
  %7038 = fadd fast float %7035, 1.000000e+00
  %7039 = fadd fast float %7038, %7037
  %7040 = fmul fast float %7026, 0x3FC5555560000000
  %7041 = fmul fast float %7024, %7024
  %7042 = fmul fast float %7041, %7024
  %7043 = fsub fast float 3.000000e+00, %7024
  %7044 = fmul fast float %7041, %7043
  %7045 = fmul fast float %7024, 3.000000e+00
  %7046 = fmul fast float %7042, 3.000000e+00
  %7047 = fmul fast float %7041, 6.000000e+00
  %7048 = fsub fast float %7046, %7047
  %7049 = fadd fast float %7048, 4.000000e+00
  %7050 = fmul fast float %7049, 0x3FC5555560000000
  %7051 = fmul fast float %7042, -3.000000e+00
  %7052 = fadd fast float %7041, %7024
  %7053 = fmul fast float %7052, 3.000000e+00
  %7054 = fadd fast float %7051, 1.000000e+00
  %7055 = fadd fast float %7054, %7053
  %7056 = fmul fast float %7042, 0x3FC5555560000000
  %7057 = fadd fast float %7023, 1.000000e+00
  %7058 = fsub fast float 1.000000e+00, %7029
  %7059 = fadd fast float %7058, %7028
  %7060 = fadd fast float %7059, %7033
  %7061 = fmul fast float %7060, 0x3FC5555560000000
  %7062 = fdiv fast float %7034, %7061
  %7063 = fsub fast float %7057, %7062
  %7064 = fsub fast float 1.000000e+00, %7023
  %7065 = fadd fast float %7039, %7026
  %7066 = fmul fast float %7065, 0x3FC5555560000000
  %7067 = fdiv fast float %7040, %7066
  %7068 = fadd fast float %7064, %7067
  %7069 = fadd fast float %7024, 1.000000e+00
  %7070 = fsub fast float 1.000000e+00, %7045
  %7071 = fadd fast float %7070, %7044
  %7072 = fadd fast float %7071, %7049
  %7073 = fmul fast float %7072, 0x3FC5555560000000
  %7074 = fdiv fast float %7050, %7073
  %7075 = fsub fast float %7069, %7074
  %7076 = fsub fast float 1.000000e+00, %7024
  %7077 = fadd fast float %7055, %7042
  %7078 = fmul fast float %7077, 0x3FC5555560000000
  %7079 = fdiv fast float %7056, %7078
  %7080 = fadd fast float %7079, %7076
  %7081 = fmul fast float %7063, %7017
  %7082 = fsub fast float %6938, %7081
  %7083 = fmul fast float %7068, %7017
  %7084 = fadd fast float %7083, %6938
  %7085 = fmul fast float %7080, %7018
  %7086 = fadd fast float %7085, %6939
  %7087 = fmul fast float %7075, %7018
  %7088 = fsub fast float %6939, %7087
  %7089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7082, float %7088, float %7006, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7090 = extractvalue %dx.types.ResRet.f32 %7089, 0
  %7091 = extractvalue %dx.types.ResRet.f32 %7089, 1
  %7092 = extractvalue %dx.types.ResRet.f32 %7089, 2
  %7093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7084, float %7088, float %7006, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7094 = extractvalue %dx.types.ResRet.f32 %7093, 0
  %7095 = extractvalue %dx.types.ResRet.f32 %7093, 1
  %7096 = extractvalue %dx.types.ResRet.f32 %7093, 2
  %7097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7082, float %7086, float %7006, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7098 = extractvalue %dx.types.ResRet.f32 %7097, 0
  %7099 = extractvalue %dx.types.ResRet.f32 %7097, 1
  %7100 = extractvalue %dx.types.ResRet.f32 %7097, 2
  %7101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7084, float %7086, float %7006, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7102 = extractvalue %dx.types.ResRet.f32 %7101, 0
  %7103 = extractvalue %dx.types.ResRet.f32 %7101, 1
  %7104 = extractvalue %dx.types.ResRet.f32 %7101, 2
  %7105 = fsub fast float %7098, %7090
  %7106 = fsub fast float %7099, %7091
  %7107 = fsub fast float %7100, %7092
  %7108 = fmul fast float %7105, %7078
  %7109 = fmul fast float %7106, %7078
  %7110 = fmul fast float %7107, %7078
  %7111 = fadd fast float %7108, %7090
  %7112 = fadd fast float %7109, %7091
  %7113 = fadd fast float %7110, %7092
  %7114 = fsub fast float %7102, %7094
  %7115 = fsub fast float %7103, %7095
  %7116 = fsub fast float %7104, %7096
  %7117 = fmul fast float %7114, %7078
  %7118 = fmul fast float %7115, %7078
  %7119 = fmul fast float %7116, %7078
  %7120 = fsub fast float %7094, %7111
  %7121 = fadd fast float %7120, %7117
  %7122 = fsub fast float %7095, %7112
  %7123 = fadd fast float %7122, %7118
  %7124 = fsub fast float %7096, %7113
  %7125 = fadd fast float %7124, %7119
  %7126 = fmul fast float %7121, %7066
  %7127 = fmul fast float %7123, %7066
  %7128 = fmul fast float %7125, %7066
  %7129 = fadd fast float %7126, %7111
  %7130 = fadd fast float %7127, %7112
  %7131 = fadd fast float %7128, %7113
  %7132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7133 = extractvalue %dx.types.CBufRet.f32 %7132, 1
  %7134 = fmul fast float %7129, %7133
  %7135 = fmul fast float %7130, %7133
  %7136 = fmul fast float %7131, %7133
  br label %7137

; <label>:7137                                    ; preds = %6968, %6925
  %7138 = phi float [ %7008, %6968 ], [ 1.000000e+00, %6925 ]
  %7139 = phi float [ %7009, %6968 ], [ 1.000000e+00, %6925 ]
  %7140 = phi float [ %7010, %6968 ], [ 1.000000e+00, %6925 ]
  %7141 = phi float [ %7134, %6968 ], [ 0.000000e+00, %6925 ]
  %7142 = phi float [ %7135, %6968 ], [ 0.000000e+00, %6925 ]
  %7143 = phi float [ %7136, %6968 ], [ 0.000000e+00, %6925 ]
  %7144 = fmul fast float %7141, %5487
  %7145 = fmul fast float %7142, %5487
  %7146 = fmul fast float %7143, %5487
  %7147 = fmul fast float %7138, %6932
  %7148 = call float @dx.op.dot3.f32(i32 55, float %7138, float %7139, float %7140, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7149 = call float @dx.op.dot3.f32(i32 55, float %7144, float %7145, float %7146, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7150 = select i1 %261, float %7148, float %7138
  %7151 = select i1 %261, float %7148, float %7139
  %7152 = select i1 %261, float 1.000000e+00, float %7140
  %7153 = select i1 %261, float %7149, float %7144
  %7154 = select i1 %261, float 0.000000e+00, float %7145
  %7155 = select i1 %261, float 0.000000e+00, float %7146
  %7156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7157 = extractvalue %dx.types.CBufRet.i32 %7156, 3
  %7158 = and i32 %7157, 3
  %7159 = icmp ne i32 %7158, 0
  %7160 = and i32 %7157, 4
  %7161 = icmp ne i32 %7160, 0
  %7162 = and i1 %7159, %7161
  %7163 = and i1 %261, %7162
  br i1 %7163, label %7164, label %7170

; <label>:7164                                    ; preds = %7137
  %7165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7166 = extractvalue %dx.types.CBufRet.f32 %7165, 1
  %7167 = fadd fast float %7147, -1.000000e+00
  %7168 = fmul fast float %7166, %7167
  %7169 = fadd fast float %7168, 1.000000e+00
  br label %7170

; <label>:7170                                    ; preds = %7164, %7137
  %7171 = phi float [ %7169, %7164 ], [ %7147, %7137 ]
  %7172 = fadd fast float %6929, %6926
  %7173 = fmul fast float %7150, %7172
  %7174 = fadd fast float %7173, %7153
  %7175 = fadd fast float %6930, %6927
  %7176 = fmul fast float %7151, %7175
  %7177 = fadd fast float %7176, %7154
  %7178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7179 = extractvalue %dx.types.CBufRet.f32 %7178, 0
  br i1 %261, label %7180, label %7204

; <label>:7180                                    ; preds = %7170
  %7181 = fadd fast float %7174, %7177
  %7182 = fmul fast float %7179, %7181
  %7183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7184 = extractvalue %dx.types.CBufRet.f32 %7183, 3
  %7185 = extractvalue %dx.types.CBufRet.f32 %5475, 1
  %7186 = fsub fast float %5480, %5474
  %7187 = fadd fast float %7186, %5481
  %7188 = fsub fast float %7187, %7185
  %7189 = extractvalue %dx.types.CBufRet.f32 %5475, 2
  %7190 = fmul fast float %7188, %7189
  %7191 = call float @dx.op.unary.f32(i32 7, float %7190)  ; Saturate(value)
  %7192 = fsub fast float %7191, %7184
  %7193 = fmul fast float %7192, %7171
  %7194 = fadd fast float %7193, %7184
  %7195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7196 = extractvalue %dx.types.CBufRet.f32 %7195, 0
  %7197 = fsub fast float %7194, %7196
  %7198 = fmul fast float %7197, 1.000000e+01
  %7199 = call float @dx.op.unary.f32(i32 7, float %7198)  ; Saturate(value)
  %7200 = fsub fast float 1.000000e+00, %5487
  %7201 = fmul fast float %7199, %7200
  %7202 = fadd fast float %7201, %5487
  %7203 = fmul fast float %7202, %7194
  br label %7228

; <label>:7204                                    ; preds = %7170
  %7205 = fadd fast float %6931, %6928
  %7206 = fmul fast float %7152, %7205
  %7207 = fadd fast float %7206, %7155
  %7208 = fmul fast float %7179, %7174
  %7209 = fmul fast float %7179, %7177
  %7210 = fmul fast float %7179, %7207
  %7211 = call float @dx.op.binary.f32(i32 35, float %7209, float %7210)  ; FMax(a,b)
  %7212 = call float @dx.op.binary.f32(i32 35, float %7208, float %7211)  ; FMax(a,b)
  %7213 = call float @dx.op.binary.f32(i32 35, float %7212, float %5487)  ; FMax(a,b)
  %7214 = fcmp fast ugt float %7213, 0x3F10000000000000
  br i1 %7214, label %7216, label %7215

; <label>:7215                                    ; preds = %7204
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7216

; <label>:7216                                    ; preds = %7215, %7204
  %7217 = add i32 %65, 132
  %7218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %7217, i32 undef)  ; BufferLoad(srv,index,wot)
  %7219 = extractvalue %dx.types.ResRet.i32 %7218, 0
  %7220 = and i32 %7219, 32
  %7221 = icmp eq i32 %7220, 0
  br i1 %7221, label %7228, label %7222

; <label>:7222                                    ; preds = %7216
  %7223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7224 = extractvalue %dx.types.CBufRet.f32 %7223, 0
  %7225 = fmul fast float %7224, 0x3FE99999A0000000
  %7226 = fadd fast float %7224, %7208
  %7227 = fadd fast float %7225, %7210
  br label %7228

; <label>:7228                                    ; preds = %7222, %7216, %7180
  %7229 = phi float [ %7182, %7180 ], [ %7226, %7222 ], [ %7208, %7216 ]
  %7230 = phi float [ %7203, %7180 ], [ %7209, %7222 ], [ %7209, %7216 ]
  %7231 = phi float [ %7202, %7180 ], [ %7227, %7222 ], [ %7210, %7216 ]
  %7232 = phi float [ %7202, %7180 ], [ %5487, %7222 ], [ %5487, %7216 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7233 = call float @dx.op.binary.f32(i32 36, float %7229, float 3.225500e+04)  ; FMin(a,b)
  %7234 = call float @dx.op.binary.f32(i32 36, float %7230, float 3.225500e+04)  ; FMin(a,b)
  %7235 = call float @dx.op.binary.f32(i32 36, float %7231, float 3.225500e+04)  ; FMin(a,b)
  %7236 = call float @dx.op.binary.f32(i32 36, float %7232, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7233)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7234)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7235)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7236)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

