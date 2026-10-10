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
; shader hash: d5e8d3defd4759411b6dc6eebe51f4ab
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
  %288 = add i32 %65, 184
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
  br i1 %304, label %1098, label %305

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
  %516 = add i32 %65, 168
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
  %568 = add i32 %65, 164
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
  %592 = add i32 %65, 152
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
  %615 = add i32 %65, 172
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
  br i1 %808, label %949, label %809

; <label>:809                                     ; preds = %787
  %810 = add i32 %65, 44
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = add i32 %65, 156
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %813, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = add i32 %815, 0
  %817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %816, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %818 = add i32 %65, 120
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = extractvalue %dx.types.ResRet.i32 %819, 1
  %822 = extractvalue %dx.types.ResRet.i32 %819, 2
  %823 = extractvalue %dx.types.ResRet.i32 %819, 3
  %824 = bitcast i32 %821 to float
  %825 = bitcast i32 %822 to float
  %826 = bitcast i32 %823 to float
  %827 = add i32 %65, 136
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = extractvalue %dx.types.ResRet.i32 %828, 1
  %831 = extractvalue %dx.types.ResRet.i32 %828, 2
  %832 = extractvalue %dx.types.ResRet.i32 %828, 3
  %833 = bitcast i32 %830 to float
  %834 = bitcast i32 %831 to float
  %835 = bitcast i32 %832 to float
  %836 = fmul fast float %824, %396
  %837 = fmul fast float %824, %397
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 3
  %840 = fmul fast float %839, %825
  %841 = fmul fast float %839, %826
  %842 = fadd fast float %840, %836
  %843 = fadd fast float %841, %837
  %844 = fmul fast float %833, %396
  %845 = fmul fast float %833, %397
  %846 = fmul fast float %839, %834
  %847 = fmul fast float %839, %835
  %848 = fadd fast float %846, %844
  %849 = fadd fast float %847, %845
  %850 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %817, i32 0)  ; GetDimensions(handle,mipLevel)
  %851 = extractvalue %dx.types.Dimensions %850, 3
  %852 = sitofp i32 %851 to float
  %853 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %817, %dx.types.Handle %86, float %842, float %843, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %854 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %817, %dx.types.Handle %86, float %848, float %849, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %855 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %817, %dx.types.Handle %86, float %842, float %843, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %856 = extractvalue %dx.types.ResRet.f32 %855, 0
  %857 = extractvalue %dx.types.ResRet.f32 %855, 1
  %858 = extractvalue %dx.types.ResRet.f32 %855, 2
  %859 = extractvalue %dx.types.ResRet.f32 %855, 3
  %860 = and i32 %812, 255
  %861 = uitofp i32 %860 to float
  %862 = lshr i32 %812, 8
  %863 = and i32 %862, 255
  %864 = uitofp i32 %863 to float
  %865 = lshr i32 %812, 16
  %866 = and i32 %865, 255
  %867 = uitofp i32 %866 to float
  %868 = fmul fast float %867, 0x3F70101000000000
  %869 = fmul fast float %856, %861
  %870 = fadd fast float %869, %864
  %871 = fadd fast float %857, -5.000000e-01
  %872 = fadd fast float %859, -5.000000e-01
  %873 = fmul fast float %871, %868
  %874 = fmul fast float %872, %868
  %875 = fadd fast float %873, 5.000000e-01
  %876 = fadd fast float %874, 5.000000e-01
  %877 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %817, %dx.types.Handle %86, float %848, float %849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %878 = extractvalue %dx.types.ResRet.f32 %877, 0
  %879 = extractvalue %dx.types.ResRet.f32 %877, 1
  %880 = extractvalue %dx.types.ResRet.f32 %877, 2
  %881 = extractvalue %dx.types.ResRet.f32 %877, 3
  %882 = fmul fast float %878, %861
  %883 = fadd fast float %882, %864
  %884 = fadd fast float %879, -5.000000e-01
  %885 = fadd fast float %881, -5.000000e-01
  %886 = fmul fast float %884, %868
  %887 = fmul fast float %885, %868
  %888 = fadd fast float %886, 5.000000e-01
  %889 = fadd fast float %887, 5.000000e-01
  %890 = fmul fast float %875, 2.000000e+00
  %891 = fadd fast float %890, -1.000000e+00
  %892 = fmul fast float %876, 2.000000e+00
  %893 = fadd fast float %892, -1.000000e+00
  %894 = fadd fast float %891, %893
  %895 = fmul fast float %894, 5.000000e-01
  %896 = fsub fast float %891, %893
  %897 = fmul fast float %896, 5.000000e-01
  %898 = call float @dx.op.unary.f32(i32 6, float %895)  ; FAbs(value)
  %899 = fsub fast float 1.000000e+00, %898
  %900 = call float @dx.op.unary.f32(i32 6, float %897)  ; FAbs(value)
  %901 = fsub fast float %899, %900
  %902 = call float @dx.op.dot3.f32(i32 55, float %895, float %897, float %901, float %895, float %897, float %901)  ; Dot3(ax,ay,az,bx,by,bz)
  %903 = call float @dx.op.unary.f32(i32 25, float %902)  ; Rsqrt(value)
  %904 = fmul fast float %888, 2.000000e+00
  %905 = fadd fast float %904, -1.000000e+00
  %906 = fmul fast float %889, 2.000000e+00
  %907 = fadd fast float %906, -1.000000e+00
  %908 = fadd fast float %905, %907
  %909 = fmul fast float %908, 5.000000e-01
  %910 = fsub fast float %905, %907
  %911 = fmul fast float %910, 5.000000e-01
  %912 = call float @dx.op.unary.f32(i32 6, float %909)  ; FAbs(value)
  %913 = fsub fast float 1.000000e+00, %912
  %914 = call float @dx.op.unary.f32(i32 6, float %911)  ; FAbs(value)
  %915 = fsub fast float %913, %914
  %916 = call float @dx.op.dot3.f32(i32 55, float %909, float %911, float %915, float %909, float %911, float %915)  ; Dot3(ax,ay,az,bx,by,bz)
  %917 = call float @dx.op.unary.f32(i32 25, float %916)  ; Rsqrt(value)
  %918 = fadd fast float %852, -1.000000e+00
  %919 = fsub fast float %918, %853
  %920 = fmul fast float %919, 5.000000e-01
  %921 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  %922 = fsub fast float %918, %854
  %923 = fmul fast float %922, 5.000000e-01
  %924 = call float @dx.op.unary.f32(i32 7, float %923)  ; Saturate(value)
  %925 = bitcast i32 %820 to float
  %926 = bitcast i32 %829 to float
  %927 = fmul fast float %895, %925
  %928 = fmul fast float %927, %903
  %929 = fmul fast float %928, %921
  %930 = fmul fast float %897, %925
  %931 = fmul fast float %930, %903
  %932 = fmul fast float %931, %921
  %933 = fmul fast float %917, %926
  %934 = fmul fast float %933, %909
  %935 = fmul fast float %934, %924
  %936 = fmul fast float %933, %911
  %937 = fmul fast float %936, %924
  %938 = fadd fast float %935, %929
  %939 = fadd fast float %937, %932
  %940 = fmul fast float %858, %925
  %941 = fmul fast float %880, %926
  %942 = fadd fast float %941, %940
  %943 = fmul fast float %870, %925
  %944 = fmul fast float %883, %926
  %945 = fadd fast float %944, %943
  %946 = fmul fast float %945, 0x3F70101000000000
  %947 = call float @dx.op.dot2.f32(i32 54, float %938, float %939, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %948 = call float @dx.op.dot2.f32(i32 54, float %938, float %939, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %949

; <label>:949                                     ; preds = %809, %787
  %950 = phi float [ %946, %809 ], [ 0x3FD6666660000000, %787 ]
  %951 = phi float [ %947, %809 ], [ 0.000000e+00, %787 ]
  %952 = phi float [ %948, %809 ], [ 0.000000e+00, %787 ]
  %953 = phi float [ %942, %809 ], [ 1.000000e+00, %787 ]
  %954 = add i32 %65, 64
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = lshr i32 %956, 22
  %958 = shl nuw nsw i32 %957, 5
  %959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %958)  ; LegacyF16ToF32(value)
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = and i32 %961, 64
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %997, label %964

; <label>:964                                     ; preds = %949
  %965 = add i32 %65, 160
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = add i32 %967, 0
  %969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %968, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = and i32 %971, 131072
  %973 = icmp eq i32 %972, 0
  %974 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %969, %dx.types.Handle %86, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %975 = extractvalue %dx.types.ResRet.f32 %974, 0
  %976 = extractvalue %dx.types.ResRet.f32 %974, 1
  %977 = extractvalue %dx.types.ResRet.f32 %974, 2
  %978 = fmul fast float %975, %245
  %979 = fmul fast float %976, %248
  %980 = fmul fast float %977, %251
  br i1 %973, label %987, label %981

; <label>:981                                     ; preds = %964
  %982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.f32 %982, 0
  %984 = fmul fast float %983, %978
  %985 = fmul fast float %983, %979
  %986 = fmul fast float %983, %980
  br label %987

; <label>:987                                     ; preds = %981, %964
  %988 = phi float [ %984, %981 ], [ %978, %964 ]
  %989 = phi float [ %985, %981 ], [ %979, %964 ]
  %990 = phi float [ %986, %981 ], [ %980, %964 ]
  %991 = fmul fast float %988, %959
  %992 = select i1 %228, float %991, float %988
  %993 = call float @dx.op.dot3.f32(i32 55, float %992, float %989, float %990, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %994 = select i1 %228, float 0.000000e+00, float %988
  %995 = select i1 %228, float %993, float %989
  %996 = select i1 %228, float 0.000000e+00, float %990
  br label %997

; <label>:997                                     ; preds = %987, %949
  %998 = phi float [ %994, %987 ], [ 0.000000e+00, %949 ]
  %999 = phi float [ %995, %987 ], [ 0.000000e+00, %949 ]
  %1000 = phi float [ %996, %987 ], [ 0.000000e+00, %949 ]
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = and i32 %1002, 1024
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1035, label %1005

; <label>:1005                                    ; preds = %997
  %1006 = add i32 %65, 56
  %1007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.i32 %1007, 0
  %1009 = and i32 %1008, 255
  %1010 = uitofp i32 %1009 to float
  %1011 = fmul fast float %1010, 0x3F70101020000000
  %1012 = lshr i32 %1008, 8
  %1013 = and i32 %1012, 255
  %1014 = uitofp i32 %1013 to float
  %1015 = fmul fast float %1014, 0x3F70101020000000
  %1016 = lshr i32 %1008, 16
  %1017 = and i32 %1016, 255
  %1018 = uitofp i32 %1017 to float
  %1019 = fmul fast float %1018, 0x3F70101020000000
  %1020 = fmul fast float %1011, %1011
  %1021 = fmul fast float %1015, %1015
  %1022 = fmul fast float %1019, %1019
  %1023 = add i32 %65, 176
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = add i32 %1025, 0
  %1027 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1026, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1028 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1027, %dx.types.Handle %87, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1029 = extractvalue %dx.types.ResRet.f32 %1028, 0
  %1030 = extractvalue %dx.types.ResRet.f32 %1028, 1
  %1031 = extractvalue %dx.types.ResRet.f32 %1028, 2
  %1032 = fmul fast float %1020, %1029
  %1033 = fmul fast float %1021, %1030
  %1034 = fmul fast float %1022, %1031
  br label %1035

; <label>:1035                                    ; preds = %1005, %997
  %1036 = phi float [ %1032, %1005 ], [ 0.000000e+00, %997 ]
  %1037 = phi float [ %1033, %1005 ], [ 0.000000e+00, %997 ]
  %1038 = phi float [ %1034, %1005 ], [ 0.000000e+00, %997 ]
  %1039 = fcmp fast ogt float %1036, 0.000000e+00
  %1040 = fcmp fast ogt float %1037, 0.000000e+00
  %1041 = fcmp fast ogt float %1038, 0.000000e+00
  %1042 = call float @dx.op.unary.f32(i32 23, float %1036)  ; Log(value)
  %1043 = call float @dx.op.unary.f32(i32 23, float %1037)  ; Log(value)
  %1044 = call float @dx.op.unary.f32(i32 23, float %1038)  ; Log(value)
  %1045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.i32 %1045, 0
  %1047 = lshr i32 %1046, 7
  %1048 = and i32 %1047, 32752
  %1049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1048)  ; LegacyF16ToF32(value)
  %1050 = fmul fast float %1042, 0xBFE62E4300000000
  %1051 = fmul fast float %1050, %1049
  %1052 = fmul fast float %1043, 0xBFE62E4300000000
  %1053 = fmul fast float %1052, %1049
  %1054 = fmul fast float %1044, 0xBFE62E4300000000
  %1055 = fmul fast float %1054, %1049
  %1056 = select i1 %1039, float %1051, float 1.270000e+02
  %1057 = select i1 %1040, float %1053, float 1.270000e+02
  %1058 = select i1 %1041, float %1055, float 1.270000e+02
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = and i32 %1060, 10240
  %1062 = icmp eq i32 %1061, 0
  br i1 %1062, label %1083, label %1063

; <label>:1063                                    ; preds = %1035
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = and i32 %1065, 2048
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1083, label %1068

; <label>:1068                                    ; preds = %1063
  %1069 = add i32 %65, 180
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = add i32 %1071, 0
  %1073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1072, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1074 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1073, %dx.types.Handle %87, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 3
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = shl i32 %1077, 4
  %1079 = and i32 %1078, 32752
  %1080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1079)  ; LegacyF16ToF32(value)
  %1081 = fmul fast float %1080, %1075
  %1082 = call float @dx.op.binary.f32(i32 35, float %1081, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1083

; <label>:1083                                    ; preds = %1068, %1063, %1035
  %1084 = phi float [ %1082, %1068 ], [ 0x3F70101020000000, %1063 ], [ 0x3F70101020000000, %1035 ]
  %1085 = add i32 %65, 48
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = and i32 %1087, 255
  %1089 = uitofp i32 %1088 to float
  %1090 = lshr i32 %1087, 8
  %1091 = and i32 %1090, 255
  %1092 = uitofp i32 %1091 to float
  %1093 = call float @dx.op.dot3.f32(i32 55, float %802, float %803, float %804, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1094 = fmul fast float %1092, %1093
  %1095 = fadd fast float %1094, %1089
  %1096 = fmul fast float %1095, 0x3F70101020000000
  %1097 = call float @dx.op.unary.f32(i32 7, float %1096)  ; Saturate(value)
  br label %1098

; <label>:1098                                    ; preds = %1083, %295
  %1099 = phi float [ 0.000000e+00, %295 ], [ %951, %1083 ]
  %1100 = phi float [ 0.000000e+00, %295 ], [ %952, %1083 ]
  %1101 = phi float [ 0.000000e+00, %295 ], [ %802, %1083 ]
  %1102 = phi float [ 0.000000e+00, %295 ], [ %803, %1083 ]
  %1103 = phi float [ 0.000000e+00, %295 ], [ %804, %1083 ]
  %1104 = phi float [ 0.000000e+00, %295 ], [ %1056, %1083 ]
  %1105 = phi float [ 0.000000e+00, %295 ], [ %1057, %1083 ]
  %1106 = phi float [ 0.000000e+00, %295 ], [ %1058, %1083 ]
  %1107 = phi float [ 0.000000e+00, %295 ], [ %998, %1083 ]
  %1108 = phi float [ 0.000000e+00, %295 ], [ %999, %1083 ]
  %1109 = phi float [ 0.000000e+00, %295 ], [ %1000, %1083 ]
  %1110 = phi float [ 0.000000e+00, %295 ], [ %788, %1083 ]
  %1111 = phi float [ 0.000000e+00, %295 ], [ %584, %1083 ]
  %1112 = phi float [ 0.000000e+00, %295 ], [ %950, %1083 ]
  %1113 = phi float [ 0.000000e+00, %295 ], [ %953, %1083 ]
  %1114 = phi float [ 0.000000e+00, %295 ], [ %1084, %1083 ]
  %1115 = phi float [ 0.000000e+00, %295 ], [ %1097, %1083 ]
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 0
  %1118 = call float @dx.op.dot2.f32(i32 54, float %1099, float %1100, float %1099, float %1100)  ; Dot2(ax,ay,bx,by)
  %1119 = fmul fast float %1118, 0x3FE3333340000000
  %1120 = fsub fast float 1.000000e+00, %1119
  %1121 = call float @dx.op.dot3.f32(i32 55, float %1099, float %1100, float %1120, float %1099, float %1100, float %1120)  ; Dot3(ax,ay,az,bx,by,bz)
  %1122 = call float @dx.op.unary.f32(i32 25, float %1121)  ; Rsqrt(value)
  %1123 = fmul fast float %1122, %1099
  %1124 = fmul fast float %1122, %1100
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
  %1162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %1196, label %1650, label %1197

; <label>:1197                                    ; preds = %1098
  %1198 = and i32 %1193, 1023
  br label %1199

; <label>:1199                                    ; preds = %1328, %1197
  %1200 = phi float [ %1329, %1328 ], [ 0.000000e+00, %1197 ]
  %1201 = phi float [ %1330, %1328 ], [ %1117, %1197 ]
  %1202 = phi float [ %1331, %1328 ], [ %1115, %1197 ]
  %1203 = phi float [ %1332, %1328 ], [ %1104, %1197 ]
  %1204 = phi float [ %1333, %1328 ], [ %1105, %1197 ]
  %1205 = phi float [ %1334, %1328 ], [ %1106, %1197 ]
  %1206 = phi float [ %1335, %1328 ], [ 0.000000e+00, %1197 ]
  %1207 = phi float [ %1336, %1328 ], [ 0.000000e+00, %1197 ]
  %1208 = phi float [ %1337, %1328 ], [ %1107, %1197 ]
  %1209 = phi float [ %1338, %1328 ], [ %1108, %1197 ]
  %1210 = phi float [ %1339, %1328 ], [ %1109, %1197 ]
  %1211 = phi float [ %1340, %1328 ], [ %1143, %1197 ]
  %1212 = phi float [ %1341, %1328 ], [ %1144, %1197 ]
  %1213 = phi float [ %1342, %1328 ], [ %1145, %1197 ]
  %1214 = phi float [ %1343, %1328 ], [ %1113, %1197 ]
  %1215 = phi float [ %1344, %1328 ], [ %1112, %1197 ]
  %1216 = phi float [ %1345, %1328 ], [ 0.000000e+00, %1197 ]
  %1217 = phi float [ %1346, %1328 ], [ %1110, %1197 ]
  %1218 = phi float [ %1347, %1328 ], [ %1101, %1197 ]
  %1219 = phi float [ %1348, %1328 ], [ %1102, %1197 ]
  %1220 = phi float [ %1349, %1328 ], [ %1103, %1197 ]
  %1221 = phi i32 [ %1278, %1328 ], [ 0, %1197 ]
  %1222 = add nuw nsw i32 %1221, %1195
  %1223 = shl i32 %1222, 2
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = shl i32 %1225, 8
  %1227 = or i32 %1226, 48
  %1228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.f32 %1228, 0
  %1230 = extractvalue %dx.types.ResRet.f32 %1228, 1
  %1231 = extractvalue %dx.types.ResRet.f32 %1228, 2
  %1232 = extractvalue %dx.types.ResRet.f32 %1228, 3
  %1233 = or i32 %1226, 64
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = extractvalue %dx.types.ResRet.i32 %1234, 1
  %1237 = or i32 %1226, 80
  %1238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.f32 %1238, 2
  %1240 = extractvalue %dx.types.ResRet.f32 %1238, 3
  %1241 = or i32 %1226, 96
  %1242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  %1244 = extractvalue %dx.types.ResRet.f32 %1242, 1
  %1245 = extractvalue %dx.types.ResRet.f32 %1242, 2
  %1246 = extractvalue %dx.types.ResRet.f32 %1242, 3
  %1247 = or i32 %1226, 112
  %1248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 2
  %1250 = or i32 %1226, 128
  %1251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.ResRet.f32 %1251, 1
  %1254 = extractvalue %dx.types.ResRet.f32 %1251, 2
  %1255 = extractvalue %dx.types.ResRet.f32 %1251, 3
  %1256 = or i32 %1226, 144
  %1257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.f32 %1257, 0
  %1259 = extractvalue %dx.types.ResRet.f32 %1257, 1
  %1260 = extractvalue %dx.types.ResRet.f32 %1257, 2
  %1261 = extractvalue %dx.types.ResRet.f32 %1257, 3
  %1262 = or i32 %1226, 160
  %1263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.ResRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.ResRet.f32 %1263, 2
  %1267 = extractvalue %dx.types.ResRet.f32 %1263, 3
  %1268 = or i32 %1226, 192
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = or i32 %1226, 208
  %1272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.f32 %1272, 0
  %1274 = or i32 %1226, 248
  %1275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.f32 %1275, 0
  %1277 = extractvalue %dx.types.ResRet.f32 %1275, 1
  %1278 = add nuw nsw i32 %1221, 1
  %1279 = bitcast float %1232 to i32
  %1280 = and i32 %1279, 2560
  %1281 = icmp eq i32 %1280, 0
  %1282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.f32 %1282, 0
  %1284 = extractvalue %dx.types.ResRet.f32 %1282, 1
  %1285 = extractvalue %dx.types.ResRet.f32 %1282, 2
  %1286 = extractvalue %dx.types.ResRet.f32 %1282, 3
  %1287 = call float @dx.op.dot4.f32(i32 56, float %1283, float %1284, float %1285, float %1286, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1288 = or i32 %1226, 16
  %1289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.f32 %1289, 0
  %1291 = extractvalue %dx.types.ResRet.f32 %1289, 1
  %1292 = extractvalue %dx.types.ResRet.f32 %1289, 2
  %1293 = extractvalue %dx.types.ResRet.f32 %1289, 3
  %1294 = call float @dx.op.dot4.f32(i32 56, float %1290, float %1291, float %1292, float %1293, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1295 = or i32 %1226, 32
  %1296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.f32 %1296, 0
  %1298 = extractvalue %dx.types.ResRet.f32 %1296, 1
  %1299 = extractvalue %dx.types.ResRet.f32 %1296, 2
  %1300 = extractvalue %dx.types.ResRet.f32 %1296, 3
  %1301 = call float @dx.op.dot4.f32(i32 56, float %1297, float %1298, float %1299, float %1300, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1302 = call float @dx.op.unary.f32(i32 27, float %1287)  ; Round_ni(value)
  %1303 = call float @dx.op.unary.f32(i32 6, float %1302)  ; FAbs(value)
  %1304 = call float @dx.op.unary.f32(i32 27, float %1294)  ; Round_ni(value)
  %1305 = call float @dx.op.unary.f32(i32 6, float %1304)  ; FAbs(value)
  %1306 = call float @dx.op.unary.f32(i32 6, float %1301)  ; FAbs(value)
  %1307 = call float @dx.op.unary.f32(i32 27, float %1306)  ; Round_ni(value)
  %1308 = fadd fast float %1305, %1303
  %1309 = fadd fast float %1308, %1307
  %1310 = fcmp fast oeq float %1309, 0.000000e+00
  %1311 = call float @dx.op.dot4.f32(i32 56, float %1283, float %1284, float %1285, float %1286, float %1152, float %1153, float %1154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1312 = call float @dx.op.dot4.f32(i32 56, float %1290, float %1291, float %1292, float %1293, float %1152, float %1153, float %1154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1313 = call float @dx.op.dot4.f32(i32 56, float %1283, float %1284, float %1285, float %1286, float %1155, float %1156, float %1157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1314 = call float @dx.op.dot4.f32(i32 56, float %1290, float %1291, float %1292, float %1293, float %1155, float %1156, float %1157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1315 = fsub fast float %1311, %1287
  %1316 = fsub fast float %1313, %1287
  %1317 = fsub fast float %1312, %1294
  %1318 = fsub fast float %1314, %1294
  %1319 = call float @dx.op.dot3.f32(i32 55, float %1229, float %1230, float %1231, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1321 = extractvalue %dx.types.CBufRet.f32 %1320, 2
  %1322 = fadd fast float %1321, %1319
  %1323 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  %1324 = extractvalue %dx.types.CBufRet.f32 %1320, 0
  %1325 = fcmp fast ogt float %1323, %1324
  %1326 = and i1 %1310, %1325
  %1327 = and i1 %1281, %1326
  br i1 %1327, label %1351, label %1328

; <label>:1328                                    ; preds = %1636, %1432, %1351, %1199
  %1329 = phi float [ %1200, %1351 ], [ %1435, %1432 ], [ %1435, %1636 ], [ %1200, %1199 ]
  %1330 = phi float [ %1201, %1351 ], [ %1201, %1432 ], [ %1612, %1636 ], [ %1201, %1199 ]
  %1331 = phi float [ %1202, %1351 ], [ %1202, %1432 ], [ %1610, %1636 ], [ %1202, %1199 ]
  %1332 = phi float [ %1203, %1351 ], [ %1203, %1432 ], [ %1588, %1636 ], [ %1203, %1199 ]
  %1333 = phi float [ %1204, %1351 ], [ %1204, %1432 ], [ %1589, %1636 ], [ %1204, %1199 ]
  %1334 = phi float [ %1205, %1351 ], [ %1205, %1432 ], [ %1590, %1636 ], [ %1205, %1199 ]
  %1335 = phi float [ %1206, %1351 ], [ %1206, %1432 ], [ %1559, %1636 ], [ %1206, %1199 ]
  %1336 = phi float [ %1207, %1351 ], [ %1207, %1432 ], [ %1557, %1636 ], [ %1207, %1199 ]
  %1337 = phi float [ %1208, %1351 ], [ %1208, %1432 ], [ %1646, %1636 ], [ %1208, %1199 ]
  %1338 = phi float [ %1209, %1351 ], [ %1209, %1432 ], [ %1647, %1636 ], [ %1209, %1199 ]
  %1339 = phi float [ %1210, %1351 ], [ %1210, %1432 ], [ %1648, %1636 ], [ %1210, %1199 ]
  %1340 = phi float [ %1211, %1351 ], [ %1211, %1432 ], [ %1538, %1636 ], [ %1211, %1199 ]
  %1341 = phi float [ %1212, %1351 ], [ %1212, %1432 ], [ %1539, %1636 ], [ %1212, %1199 ]
  %1342 = phi float [ %1213, %1351 ], [ %1213, %1432 ], [ %1540, %1636 ], [ %1213, %1199 ]
  %1343 = phi float [ %1214, %1351 ], [ %1214, %1432 ], [ %1568, %1636 ], [ %1214, %1199 ]
  %1344 = phi float [ %1215, %1351 ], [ %1215, %1432 ], [ %1565, %1636 ], [ %1215, %1199 ]
  %1345 = phi float [ %1216, %1351 ], [ %1216, %1432 ], [ %1562, %1636 ], [ %1216, %1199 ]
  %1346 = phi float [ %1217, %1351 ], [ %1217, %1432 ], [ %1555, %1636 ], [ %1217, %1199 ]
  %1347 = phi float [ %1218, %1351 ], [ %1218, %1432 ], [ %1550, %1636 ], [ %1218, %1199 ]
  %1348 = phi float [ %1219, %1351 ], [ %1219, %1432 ], [ %1551, %1636 ], [ %1219, %1199 ]
  %1349 = phi float [ %1220, %1351 ], [ %1220, %1432 ], [ %1552, %1636 ], [ %1220, %1199 ]
  %1350 = icmp eq i32 %1278, %1198
  br i1 %1350, label %1649, label %1199

; <label>:1351                                    ; preds = %1199
  %1352 = extractvalue %dx.types.ResRet.f32 %1248, 3
  %1353 = extractvalue %dx.types.ResRet.f32 %1248, 1
  %1354 = extractvalue %dx.types.ResRet.f32 %1248, 0
  %1355 = extractvalue %dx.types.ResRet.f32 %1238, 1
  %1356 = extractvalue %dx.types.ResRet.f32 %1238, 0
  %1357 = extractvalue %dx.types.ResRet.i32 %1234, 3
  %1358 = extractvalue %dx.types.ResRet.i32 %1234, 2
  %1359 = add i32 %1357, 0
  %1360 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1359, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1361 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1362 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1360, %dx.types.Handle %1361, float %1287, float %1294, float undef, float undef, i32 0, i32 0, i32 undef, float %1315, float %1317, float undef, float %1316, float %1318, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1363 = extractvalue %dx.types.ResRet.f32 %1362, 0
  %1364 = fmul fast float %1363, %1356
  %1365 = fadd fast float %1364, %1355
  %1366 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1367 = fmul fast float %1287, %1243
  %1368 = call float @dx.op.tertiary.f32(i32 46, float %1244, float %1294, float %1367)  ; FMad(a,b,c)
  %1369 = fadd fast float %1368, %1354
  %1370 = fmul fast float %1287, %1245
  %1371 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1294, float %1370)  ; FMad(a,b,c)
  %1372 = fadd fast float %1371, %1353
  %1373 = fmul fast float %1315, %1243
  %1374 = call float @dx.op.tertiary.f32(i32 46, float %1244, float %1317, float %1373)  ; FMad(a,b,c)
  %1375 = fmul fast float %1315, %1245
  %1376 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1317, float %1375)  ; FMad(a,b,c)
  %1377 = fmul fast float %1316, %1243
  %1378 = call float @dx.op.tertiary.f32(i32 46, float %1244, float %1318, float %1377)  ; FMad(a,b,c)
  %1379 = fmul fast float %1316, %1245
  %1380 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1318, float %1379)  ; FMad(a,b,c)
  %1381 = add i32 %1358, 0
  %1382 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1381, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1383 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1382, %dx.types.Handle %1361, float %1369, float %1372, float undef, float undef, i32 0, i32 0, i32 undef, float %1374, float %1376, float undef, float %1378, float %1380, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1384 = extractvalue %dx.types.ResRet.f32 %1383, 0
  %1385 = and i32 %1279, 1024
  %1386 = icmp ne i32 %1385, 0
  %1387 = fcmp fast ogt float %1384, 0x3FE0101020000000
  %1388 = uitofp i1 %1387 to float
  %1389 = select i1 %1386, float %1388, float %1384
  %1390 = and i32 %1279, 8192
  %1391 = icmp ne i32 %1390, 0
  %1392 = select i1 %1391, float %1352, float 1.000000e+00
  %1393 = fmul fast float %1287, 2.000000e+00
  %1394 = fadd fast float %1393, -1.000000e+00
  %1395 = call float @dx.op.unary.f32(i32 6, float %1394)  ; FAbs(value)
  %1396 = fmul fast float %1395, %1276
  %1397 = fsub fast float %1396, %1276
  %1398 = call float @dx.op.unary.f32(i32 7, float %1397)  ; Saturate(value)
  %1399 = fmul fast float %1294, 2.000000e+00
  %1400 = fadd fast float %1399, -1.000000e+00
  %1401 = call float @dx.op.unary.f32(i32 6, float %1400)  ; FAbs(value)
  %1402 = fmul fast float %1401, %1277
  %1403 = fsub fast float %1402, %1277
  %1404 = call float @dx.op.unary.f32(i32 7, float %1403)  ; Saturate(value)
  %1405 = fmul fast float %1306, %1239
  %1406 = fsub fast float %1405, %1239
  %1407 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  %1408 = fmul fast float %1366, %1392
  %1409 = fmul fast float %1408, %1363
  %1410 = fmul fast float %1409, %1398
  %1411 = fmul fast float %1410, %1389
  %1412 = fmul fast float %1411, %1404
  %1413 = fmul fast float %1412, %1407
  %1414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1415 = extractvalue %dx.types.CBufRet.f32 %1414, 1
  %1416 = extractvalue %dx.types.CBufRet.f32 %1414, 0
  %1417 = fsub fast float %1323, %1416
  %1418 = fmul fast float %1417, %1415
  %1419 = call float @dx.op.unary.f32(i32 7, float %1418)  ; Saturate(value)
  %1420 = fmul fast float %1413, %1240
  %1421 = fadd fast float %1413, %1240
  %1422 = fmul fast float %1421, %1249
  %1423 = fsub fast float %1422, %1249
  %1424 = call float @dx.op.unary.f32(i32 7, float %1423)  ; Saturate(value)
  %1425 = and i32 %1279, 128
  %1426 = icmp ne i32 %1425, 0
  %1427 = select i1 %1426, float %1424, float %1420
  %1428 = fmul fast float %1427, %1419
  %1429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1430 = extractvalue %dx.types.CBufRet.f32 %1429, 0
  %1431 = fcmp fast ugt float %1428, %1430
  br i1 %1431, label %1432, label %1328

; <label>:1432                                    ; preds = %1351
  %1433 = select i1 %1391, float %1428, float 0.000000e+00
  %1434 = fadd fast float %1433, %1200
  %1435 = call float @dx.op.unary.f32(i32 7, float %1434)  ; Saturate(value)
  br i1 %1391, label %1328, label %1436

; <label>:1436                                    ; preds = %1432
  %1437 = and i32 %1279, 4
  %1438 = and i32 %1279, 8
  %1439 = add i32 %1235, 0
  %1440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1439, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1441 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1442 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1440, %dx.types.Handle %1441, float %1369, float %1372, float undef, float undef, i32 0, i32 0, i32 undef, float %1374, float %1376, float undef, float %1378, float %1380, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1443 = extractvalue %dx.types.ResRet.f32 %1442, 0
  %1444 = extractvalue %dx.types.ResRet.f32 %1442, 1
  %1445 = extractvalue %dx.types.ResRet.f32 %1442, 2
  %1446 = extractvalue %dx.types.ResRet.f32 %1442, 3
  %1447 = bitcast float %1261 to i32
  %1448 = and i32 %1447, 255
  %1449 = uitofp i32 %1448 to float
  %1450 = lshr i32 %1447, 8
  %1451 = and i32 %1450, 255
  %1452 = uitofp i32 %1451 to float
  %1453 = fmul fast float %1446, %1449
  %1454 = fadd fast float %1453, %1452
  %1455 = fmul fast float %1454, 0x3F70101000000000
  %1456 = add i32 %1236, 0
  %1457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1456, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1458 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1457, %dx.types.Handle %1441, float %1369, float %1372, float undef, float undef, i32 0, i32 0, i32 undef, float %1374, float %1376, float undef, float %1378, float %1380, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1459 = extractvalue %dx.types.ResRet.f32 %1458, 0
  %1460 = extractvalue %dx.types.ResRet.f32 %1458, 1
  %1461 = extractvalue %dx.types.ResRet.f32 %1458, 2
  %1462 = extractvalue %dx.types.ResRet.f32 %1458, 3
  %1463 = bitcast float %1255 to i32
  %1464 = and i32 %1463, 255
  %1465 = uitofp i32 %1464 to float
  %1466 = lshr i32 %1463, 8
  %1467 = and i32 %1466, 255
  %1468 = uitofp i32 %1467 to float
  %1469 = lshr i32 %1463, 16
  %1470 = and i32 %1469, 255
  %1471 = uitofp i32 %1470 to float
  %1472 = fmul fast float %1471, 0x3F70101000000000
  %1473 = fmul fast float %1459, %1465
  %1474 = fadd fast float %1473, %1468
  %1475 = fmul fast float %1474, 0x3F70101000000000
  %1476 = fadd fast float %1460, -5.000000e-01
  %1477 = fadd fast float %1462, -5.000000e-01
  %1478 = fmul fast float %1476, %1472
  %1479 = fmul fast float %1477, %1472
  %1480 = fadd fast float %1478, 5.000000e-01
  %1481 = fadd fast float %1479, 5.000000e-01
  %1482 = fmul fast float %1443, %1264
  %1483 = fmul fast float %1444, %1265
  %1484 = fmul fast float %1445, %1266
  %1485 = fmul fast float %1480, 2.000000e+00
  %1486 = fadd fast float %1485, -1.000000e+00
  %1487 = fmul fast float %1481, 2.000000e+00
  %1488 = fadd fast float %1487, -1.000000e+00
  %1489 = fadd fast float %1486, %1488
  %1490 = fmul fast float %1489, 5.000000e-01
  %1491 = fsub fast float %1486, %1488
  %1492 = fmul fast float %1491, 5.000000e-01
  %1493 = call float @dx.op.unary.f32(i32 6, float %1490)  ; FAbs(value)
  %1494 = fsub fast float 1.000000e+00, %1493
  %1495 = call float @dx.op.unary.f32(i32 6, float %1492)  ; FAbs(value)
  %1496 = fsub fast float %1494, %1495
  %1497 = call float @dx.op.dot3.f32(i32 55, float %1490, float %1492, float %1496, float %1490, float %1492, float %1496)  ; Dot3(ax,ay,az,bx,by,bz)
  %1498 = call float @dx.op.unary.f32(i32 25, float %1497)  ; Rsqrt(value)
  %1499 = fmul fast float %1490, %1498
  %1500 = fmul fast float %1492, %1498
  %1501 = fmul fast float %1498, %1496
  %1502 = fmul fast float %1501, %1229
  %1503 = fmul fast float %1501, %1230
  %1504 = fmul fast float %1501, %1231
  %1505 = fmul fast float %1499, %1252
  %1506 = fmul fast float %1499, %1253
  %1507 = fmul fast float %1499, %1254
  %1508 = fadd fast float %1505, %1502
  %1509 = fadd fast float %1506, %1503
  %1510 = fadd fast float %1507, %1504
  %1511 = fmul fast float %1500, %1258
  %1512 = fmul fast float %1500, %1259
  %1513 = fmul fast float %1500, %1260
  %1514 = fadd fast float %1508, %1511
  %1515 = fadd fast float %1509, %1512
  %1516 = fadd fast float %1510, %1513
  %1517 = call float @dx.op.dot3.f32(i32 55, float %1514, float %1515, float %1516, float %1514, float %1515, float %1516)  ; Dot3(ax,ay,az,bx,by,bz)
  %1518 = call float @dx.op.unary.f32(i32 25, float %1517)  ; Rsqrt(value)
  %1519 = fmul fast float %1514, %1518
  %1520 = fmul fast float %1515, %1518
  %1521 = fmul fast float %1516, %1518
  %1522 = icmp ne i32 %1438, 0
  %1523 = select i1 %1522, float 1.000000e+00, float 0.000000e+00
  %1524 = fmul fast float %1428, %1523
  %1525 = and i32 %1279, 1
  %1526 = icmp eq i32 %1525, 0
  br i1 %1526, label %1527, label %1531

; <label>:1527                                    ; preds = %1436
  %1528 = fsub fast float %1519, %1211
  %1529 = fsub fast float %1520, %1212
  %1530 = fsub fast float %1521, %1213
  br label %1531

; <label>:1531                                    ; preds = %1527, %1436
  %1532 = phi float [ %1528, %1527 ], [ %1519, %1436 ]
  %1533 = phi float [ %1529, %1527 ], [ %1520, %1436 ]
  %1534 = phi float [ %1530, %1527 ], [ %1521, %1436 ]
  %1535 = fmul float %1534, %1524
  %1536 = fmul float %1533, %1524
  %1537 = fmul float %1532, %1524
  %1538 = fadd fast float %1537, %1211
  %1539 = fadd fast float %1536, %1212
  %1540 = fadd fast float %1535, %1213
  %1541 = icmp ne i32 %1437, 0
  %1542 = select i1 %1541, float 1.000000e+00, float 0.000000e+00
  %1543 = fmul fast float %1428, %1542
  %1544 = fsub fast float %1482, %1218
  %1545 = fsub fast float %1483, %1219
  %1546 = fsub fast float %1484, %1220
  %1547 = fmul fast float %1544, %1543
  %1548 = fmul fast float %1545, %1543
  %1549 = fmul fast float %1546, %1543
  %1550 = fadd fast float %1547, %1218
  %1551 = fadd fast float %1548, %1219
  %1552 = fadd fast float %1549, %1220
  %1553 = fsub fast float %1455, %1217
  %1554 = fmul fast float %1553, %1543
  %1555 = fadd fast float %1554, %1217
  %1556 = fmul fast float %1543, %1207
  %1557 = fsub fast float %1207, %1556
  %1558 = fmul fast float %1543, %1206
  %1559 = fsub fast float %1206, %1558
  %1560 = bitcast float %1273 to i32
  %1561 = fadd fast float %1428, %1216
  %1562 = call float @dx.op.unary.f32(i32 7, float %1561)  ; Saturate(value)
  %1563 = fsub fast float %1475, %1215
  %1564 = fmul fast float %1563, %1524
  %1565 = fadd fast float %1564, %1215
  %1566 = fsub fast float %1461, %1214
  %1567 = fmul fast float %1566, %1524
  %1568 = fadd fast float %1567, %1214
  br i1 %1526, label %1577, label %1569

; <label>:1569                                    ; preds = %1531
  %1570 = and i32 %1279, 32768
  %1571 = icmp eq i32 %1570, 0
  br i1 %1571, label %1587, label %1572

; <label>:1572                                    ; preds = %1569
  %1573 = fmul fast float %1524, 1.270000e+02
  %1574 = fadd fast float %1573, %1203
  %1575 = fadd fast float %1573, %1204
  %1576 = fadd fast float %1573, %1205
  br label %1587

; <label>:1577                                    ; preds = %1531
  %1578 = fsub fast float 1.270000e+02, %1203
  %1579 = fsub fast float 1.270000e+02, %1204
  %1580 = fsub fast float 1.270000e+02, %1205
  %1581 = fmul fast float %1524, %1578
  %1582 = fmul fast float %1524, %1579
  %1583 = fmul fast float %1524, %1580
  %1584 = fadd fast float %1581, %1203
  %1585 = fadd fast float %1582, %1204
  %1586 = fadd fast float %1583, %1205
  br label %1587

; <label>:1587                                    ; preds = %1577, %1572, %1569
  %1588 = phi float [ %1574, %1572 ], [ %1203, %1569 ], [ %1584, %1577 ]
  %1589 = phi float [ %1575, %1572 ], [ %1204, %1569 ], [ %1585, %1577 ]
  %1590 = phi float [ %1576, %1572 ], [ %1205, %1569 ], [ %1586, %1577 ]
  %1591 = call float @dx.op.dot3.f32(i32 55, float %1482, float %1483, float %1484, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1593 = extractvalue %dx.types.CBufRet.f32 %1592, 0
  %1594 = extractvalue %dx.types.CBufRet.f32 %1592, 1
  %1595 = fmul fast float %1594, %1591
  %1596 = fadd fast float %1595, %1593
  %1597 = call float @dx.op.unary.f32(i32 7, float %1596)  ; Saturate(value)
  %1598 = bitcast float %1267 to i32
  %1599 = and i32 %1598, 65535
  %1600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1599)  ; LegacyF16ToF32(value)
  %1601 = lshr i32 %1598, 16
  %1602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1601)  ; LegacyF16ToF32(value)
  %1603 = fcmp fast oge float %1600, 0.000000e+00
  %1604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1605 = extractvalue %dx.types.CBufRet.f32 %1604, 0
  %1606 = select i1 %1603, float %1600, float %1605
  %1607 = fadd fast float %1606, %1602
  %1608 = fsub fast float %1597, %1202
  %1609 = fmul fast float %1608, %1428
  %1610 = fadd fast float %1609, %1202
  %1611 = fmul fast float %1607, %1428
  %1612 = call float @dx.op.binary.f32(i32 35, float %1201, float %1611)  ; FMax(a,b)
  %1613 = and i32 %1279, 16
  %1614 = icmp eq i32 %1613, 0
  br i1 %1614, label %1636, label %1615

; <label>:1615                                    ; preds = %1587
  %1616 = add i32 %1270, 0
  %1617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1616, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1618 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1617, %dx.types.Handle %1441, float %1369, float %1372, float undef, float undef, i32 0, i32 0, i32 undef, float %1374, float %1376, float undef, float %1378, float %1380, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1619 = extractvalue %dx.types.ResRet.f32 %1618, 0
  %1620 = extractvalue %dx.types.ResRet.f32 %1618, 1
  %1621 = extractvalue %dx.types.ResRet.f32 %1618, 2
  %1622 = and i32 %1560, 65535
  %1623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1622)  ; LegacyF16ToF32(value)
  %1624 = fmul fast float %1619, %1264
  %1625 = fmul fast float %1620, %1265
  %1626 = fmul fast float %1621, %1266
  %1627 = and i32 %1279, 16384
  %1628 = icmp ne i32 %1627, 0
  %1629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1630 = extractvalue %dx.types.CBufRet.f32 %1629, 0
  %1631 = select i1 %1628, float %1630, float 1.000000e+00
  %1632 = fmul fast float %1631, %1623
  %1633 = fmul fast float %1624, %1632
  %1634 = fmul fast float %1625, %1632
  %1635 = fmul fast float %1626, %1632
  br label %1636

; <label>:1636                                    ; preds = %1615, %1587
  %1637 = phi float [ %1633, %1615 ], [ 0.000000e+00, %1587 ]
  %1638 = phi float [ %1634, %1615 ], [ 0.000000e+00, %1587 ]
  %1639 = phi float [ %1635, %1615 ], [ 0.000000e+00, %1587 ]
  %1640 = fsub fast float %1637, %1208
  %1641 = fsub fast float %1638, %1209
  %1642 = fsub fast float %1639, %1210
  %1643 = fmul fast float %1640, %1428
  %1644 = fmul fast float %1641, %1428
  %1645 = fmul fast float %1642, %1428
  %1646 = fadd fast float %1643, %1208
  %1647 = fadd fast float %1644, %1209
  %1648 = fadd fast float %1645, %1210
  br label %1328

; <label>:1649                                    ; preds = %1328
  br label %1650

; <label>:1650                                    ; preds = %1649, %1098
  %1651 = phi float [ 0.000000e+00, %1098 ], [ %1329, %1649 ]
  %1652 = phi float [ %1117, %1098 ], [ %1330, %1649 ]
  %1653 = phi float [ %1115, %1098 ], [ %1331, %1649 ]
  %1654 = phi float [ %1104, %1098 ], [ %1332, %1649 ]
  %1655 = phi float [ %1105, %1098 ], [ %1333, %1649 ]
  %1656 = phi float [ %1106, %1098 ], [ %1334, %1649 ]
  %1657 = phi float [ 0.000000e+00, %1098 ], [ %1335, %1649 ]
  %1658 = phi float [ 0.000000e+00, %1098 ], [ %1336, %1649 ]
  %1659 = phi float [ %1107, %1098 ], [ %1337, %1649 ]
  %1660 = phi float [ %1108, %1098 ], [ %1338, %1649 ]
  %1661 = phi float [ %1109, %1098 ], [ %1339, %1649 ]
  %1662 = phi float [ %1143, %1098 ], [ %1340, %1649 ]
  %1663 = phi float [ %1144, %1098 ], [ %1341, %1649 ]
  %1664 = phi float [ %1145, %1098 ], [ %1342, %1649 ]
  %1665 = phi float [ %1113, %1098 ], [ %1343, %1649 ]
  %1666 = phi float [ %1112, %1098 ], [ %1344, %1649 ]
  %1667 = phi float [ 0.000000e+00, %1098 ], [ %1345, %1649 ]
  %1668 = phi float [ %1110, %1098 ], [ %1346, %1649 ]
  %1669 = phi float [ %1101, %1098 ], [ %1347, %1649 ]
  %1670 = phi float [ %1102, %1098 ], [ %1348, %1649 ]
  %1671 = phi float [ %1103, %1098 ], [ %1349, %1649 ]
  %1672 = call float @dx.op.dot3.f32(i32 55, float %1662, float %1663, float %1664, float %1662, float %1663, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %1673 = call float @dx.op.unary.f32(i32 25, float %1672)  ; Rsqrt(value)
  %1674 = fmul fast float %1673, %1662
  %1675 = fmul fast float %1673, %1663
  %1676 = fmul fast float %1673, %1664
  %1677 = fadd fast float %1667, %1111
  %1678 = call float @dx.op.unary.f32(i32 7, float %1677)  ; Saturate(value)
  %1679 = call float @dx.op.dot3.f32(i32 55, float %1674, float %1675, float %1676, float %1674, float %1675, float %1676)  ; Dot3(ax,ay,az,bx,by,bz)
  %1680 = call float @dx.op.unary.f32(i32 25, float %1679)  ; Rsqrt(value)
  %1681 = fmul fast float %1680, %1674
  %1682 = fmul fast float %1680, %1675
  %1683 = fmul fast float %1680, %1676
  %1684 = fadd fast float %1668, 0xBFB99999A0000000
  %1685 = call float @dx.op.unary.f32(i32 7, float %1684)  ; Saturate(value)
  %1686 = fmul fast float %1685, 0x3FF1C71C80000000
  %1687 = call float @dx.op.binary.f32(i32 36, float %1668, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1688 = fsub fast float 1.000000e+00, %1686
  %1689 = call float @dx.op.unary.f32(i32 7, float %1688)  ; Saturate(value)
  %1690 = fmul fast float %1689, %1669
  %1691 = fmul fast float %1689, %1670
  %1692 = fmul fast float %1689, %1671
  %1693 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1694 = call float @dx.op.unary.f32(i32 7, float %1691)  ; Saturate(value)
  %1695 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  %1696 = fmul fast float %1686, %1669
  %1697 = fmul fast float %1686, %1670
  %1698 = fmul fast float %1686, %1671
  %1699 = fadd fast float %1696, %1687
  %1700 = fadd fast float %1697, %1687
  %1701 = fadd fast float %1698, %1687
  %1702 = call float @dx.op.unary.f32(i32 7, float %1699)  ; Saturate(value)
  %1703 = call float @dx.op.unary.f32(i32 7, float %1700)  ; Saturate(value)
  %1704 = call float @dx.op.unary.f32(i32 7, float %1701)  ; Saturate(value)
  %1705 = call float @dx.op.unary.f32(i32 7, float %1666)  ; Saturate(value)
  %1706 = call float @dx.op.binary.f32(i32 36, float %1654, float 1.270000e+02)  ; FMin(a,b)
  %1707 = call float @dx.op.binary.f32(i32 36, float %1655, float 1.270000e+02)  ; FMin(a,b)
  %1708 = call float @dx.op.binary.f32(i32 36, float %1656, float 1.270000e+02)  ; FMin(a,b)
  %1709 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.i32 %1709, 3
  %1711 = and i32 %1710, 8
  %1712 = icmp ne i32 %1711, 0
  %1713 = call float @dx.op.binary.f32(i32 35, float %1693, float %1669)  ; FMax(a,b)
  %1714 = call float @dx.op.binary.f32(i32 35, float %1694, float %1669)  ; FMax(a,b)
  %1715 = call float @dx.op.binary.f32(i32 35, float %1695, float %1669)  ; FMax(a,b)
  %1716 = call float @dx.op.dot3.f32(i32 55, float %1693, float %1694, float %1695, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1717 = select i1 %228, float %1669, float %1693
  %1718 = select i1 %228, float %1716, float %1694
  %1719 = select i1 %228, float 1.000000e+00, float %1695
  %1720 = select i1 %1712, float %1713, float %1717
  %1721 = select i1 %1712, float %1714, float %1718
  %1722 = select i1 %1712, float %1715, float %1719
  %1723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1724 = extractvalue %dx.types.CBufRet.f32 %1723, 0
  %1725 = extractvalue %dx.types.CBufRet.f32 %1723, 1
  %1726 = extractvalue %dx.types.CBufRet.f32 %1723, 2
  %1727 = fadd fast float %1724, %137
  %1728 = fadd fast float %1725, %138
  %1729 = fadd fast float %1726, %139
  %1730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1731 = extractvalue %dx.types.CBufRet.f32 %1730, 0
  %1732 = extractvalue %dx.types.CBufRet.f32 %1730, 1
  %1733 = fsub fast float %1727, %1731
  %1734 = fsub fast float %1728, %1732
  %1735 = fmul fast float %1733, %1733
  %1736 = fmul fast float %1734, %1734
  %1737 = fadd fast float %1735, %1736
  %1738 = call float @dx.op.unary.f32(i32 24, float %1737)  ; Sqrt(value)
  %1739 = extractvalue %dx.types.CBufRet.f32 %1730, 2
  %1740 = fcmp fast olt float %1738, %1739
  br i1 %1740, label %1741, label %1808

; <label>:1741                                    ; preds = %1650
  %1742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1743 = extractvalue %dx.types.CBufRet.f32 %1742, 0
  %1744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1745 = extractvalue %dx.types.CBufRet.f32 %1744, 0
  %1746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1747 = extractvalue %dx.types.CBufRet.f32 %1746, 0
  %1748 = extractvalue %dx.types.CBufRet.f32 %1742, 1
  %1749 = extractvalue %dx.types.CBufRet.f32 %1744, 1
  %1750 = extractvalue %dx.types.CBufRet.f32 %1746, 1
  %1751 = extractvalue %dx.types.CBufRet.f32 %1742, 3
  %1752 = extractvalue %dx.types.CBufRet.f32 %1744, 3
  %1753 = extractvalue %dx.types.CBufRet.f32 %1746, 3
  %1754 = fadd fast float %1751, %1727
  %1755 = fadd fast float %1752, %1728
  %1756 = fadd fast float %1753, %1729
  %1757 = fmul fast float %1754, %1743
  %1758 = call float @dx.op.tertiary.f32(i32 46, float %1755, float %1745, float %1757)  ; FMad(a,b,c)
  %1759 = call float @dx.op.tertiary.f32(i32 46, float %1756, float %1747, float %1758)  ; FMad(a,b,c)
  %1760 = fmul fast float %1754, %1748
  %1761 = call float @dx.op.tertiary.f32(i32 46, float %1755, float %1749, float %1760)  ; FMad(a,b,c)
  %1762 = call float @dx.op.tertiary.f32(i32 46, float %1756, float %1750, float %1761)  ; FMad(a,b,c)
  %1763 = fsub fast float %1759, %1751
  %1764 = fsub fast float %1762, %1752
  %1765 = fsub fast float %1763, %1731
  %1766 = fadd fast float %1765, %1739
  %1767 = fsub fast float %1764, %1732
  %1768 = fadd fast float %1767, %1739
  %1769 = extractvalue %dx.types.CBufRet.f32 %1730, 3
  %1770 = fmul fast float %1766, %1769
  %1771 = fmul fast float %1768, %1769
  %1772 = call float @dx.op.unary.f32(i32 7, float %1770)  ; Saturate(value)
  %1773 = call float @dx.op.unary.f32(i32 7, float %1771)  ; Saturate(value)
  %1774 = fsub fast float 1.000000e+00, %1772
  %1775 = fsub fast float 1.000000e+00, %1773
  %1776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %58, float %1774, float %1775, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1777 = extractvalue %dx.types.ResRet.f32 %1776, 0
  %1778 = fcmp fast ugt float %1777, 0.000000e+00
  br i1 %1778, label %1779, label %2082

; <label>:1779                                    ; preds = %1741
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 2
  %1782 = fmul fast float %1781, %1777
  %1783 = extractvalue %dx.types.CBufRet.f32 %1780, 3
  %1784 = fadd fast float %1783, %1782
  %1785 = extractvalue %dx.types.CBufRet.f32 %1746, 2
  %1786 = fadd fast float %1784, %1753
  %1787 = fmul fast float %1759, %1747
  %1788 = call float @dx.op.tertiary.f32(i32 46, float %1762, float %1750, float %1787)  ; FMad(a,b,c)
  %1789 = call float @dx.op.tertiary.f32(i32 46, float %1786, float %1785, float %1788)  ; FMad(a,b,c)
  %1790 = fsub fast float %1789, %1753
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 2
  %1793 = fsub fast float %1790, %1792
  %1794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %58, float %1774, float %1775, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1795 = extractvalue %dx.types.ResRet.f32 %1794, 0
  %1796 = extractvalue %dx.types.ResRet.f32 %1794, 1
  %1797 = extractvalue %dx.types.ResRet.f32 %1794, 2
  %1798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %58, float %1774, float %1775, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1799 = extractvalue %dx.types.ResRet.f32 %1798, 0
  %1800 = extractvalue %dx.types.ResRet.f32 %1798, 1
  %1801 = extractvalue %dx.types.ResRet.f32 %1798, 2
  %1802 = fadd fast float %1799, %1795
  %1803 = fmul fast float %1802, 0x3F847AE140000000
  %1804 = fadd fast float %1800, %1796
  %1805 = fmul fast float %1804, 0x3F847AE140000000
  %1806 = fadd fast float %1801, %1797
  %1807 = fmul fast float %1806, 0x3F847AE140000000
  br label %2082

; <label>:1808                                    ; preds = %1650
  %1809 = and i32 %204, 1
  %1810 = icmp eq i32 %1809, 0
  br i1 %1810, label %2082, label %1811

; <label>:1811                                    ; preds = %1808
  %1812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1813 = extractvalue %dx.types.CBufRet.f32 %1812, 0
  %1814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1815 = extractvalue %dx.types.CBufRet.f32 %1814, 0
  %1816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1817 = extractvalue %dx.types.CBufRet.f32 %1816, 0
  %1818 = extractvalue %dx.types.CBufRet.f32 %1812, 1
  %1819 = extractvalue %dx.types.CBufRet.f32 %1814, 1
  %1820 = extractvalue %dx.types.CBufRet.f32 %1816, 1
  %1821 = extractvalue %dx.types.CBufRet.f32 %1812, 3
  %1822 = extractvalue %dx.types.CBufRet.f32 %1814, 3
  %1823 = extractvalue %dx.types.CBufRet.f32 %1816, 3
  %1824 = fadd fast float %1821, %1727
  %1825 = fadd fast float %1822, %1728
  %1826 = fadd fast float %1823, %1729
  %1827 = fmul fast float %1824, %1813
  %1828 = call float @dx.op.tertiary.f32(i32 46, float %1825, float %1815, float %1827)  ; FMad(a,b,c)
  %1829 = call float @dx.op.tertiary.f32(i32 46, float %1826, float %1817, float %1828)  ; FMad(a,b,c)
  %1830 = fmul fast float %1824, %1818
  %1831 = call float @dx.op.tertiary.f32(i32 46, float %1825, float %1819, float %1830)  ; FMad(a,b,c)
  %1832 = call float @dx.op.tertiary.f32(i32 46, float %1826, float %1820, float %1831)  ; FMad(a,b,c)
  %1833 = fsub fast float %1829, %1821
  %1834 = fsub fast float %1832, %1822
  %1835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1836 = extractvalue %dx.types.CBufRet.f32 %1835, 0
  %1837 = extractvalue %dx.types.CBufRet.f32 %1835, 1
  %1838 = extractvalue %dx.types.CBufRet.f32 %1835, 2
  %1839 = extractvalue %dx.types.CBufRet.f32 %1835, 3
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 3
  %1842 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1843 = extractvalue %dx.types.CBufRet.i32 %1842, 0
  %1844 = extractvalue %dx.types.CBufRet.i32 %1842, 1
  %1845 = udiv i32 %1844, %1843
  %1846 = fsub fast float %1833, %1836
  %1847 = fsub fast float %1834, %1837
  %1848 = call float @dx.op.binary.f32(i32 35, float %1846, float 0.000000e+00)  ; FMax(a,b)
  %1849 = call float @dx.op.binary.f32(i32 35, float %1847, float 0.000000e+00)  ; FMax(a,b)
  %1850 = call float @dx.op.binary.f32(i32 36, float %1848, float %1838)  ; FMin(a,b)
  %1851 = call float @dx.op.binary.f32(i32 36, float %1849, float %1839)  ; FMin(a,b)
  %1852 = add i32 %1843, -1
  %1853 = add i32 %1845, -1
  %1854 = fmul fast float %1850, %1841
  %1855 = fmul fast float %1851, %1841
  %1856 = fptoui float %1854 to i32
  %1857 = fptoui float %1855 to i32
  %1858 = call i32 @dx.op.binary.i32(i32 40, i32 %1856, i32 %1852)  ; UMin(a,b)
  %1859 = call i32 @dx.op.binary.i32(i32 40, i32 %1857, i32 %1853)  ; UMin(a,b)
  %1860 = mul i32 %1859, %1843
  %1861 = add i32 %1860, %1858
  %1862 = shl i32 %1861, 2
  %1863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1862, i32 undef)  ; BufferLoad(srv,index,wot)
  %1864 = extractvalue %dx.types.ResRet.i32 %1863, 0
  %1865 = icmp eq i32 %1864, -1
  br i1 %1865, label %2082, label %1866

; <label>:1866                                    ; preds = %1811
  %1867 = mul i32 %1864, 148
  %1868 = add i32 %1867, 4
  %1869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.f32 %1869, 0
  %1871 = add i32 %1867, 8
  %1872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.f32 %1872, 0
  %1874 = add i32 %1867, 36
  %1875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1876 = extractvalue %dx.types.ResRet.f32 %1875, 0
  %1877 = add i32 %1867, 60
  %1878 = add i32 %1867, 92
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = add i32 %1867, 116
  %1882 = fsub fast float %1833, %1870
  %1883 = fsub fast float %1834, %1873
  %1884 = fmul fast float %1841, %1882
  %1885 = fmul fast float %1841, %1883
  %1886 = call float @dx.op.unary.f32(i32 7, float %1884)  ; Saturate(value)
  %1887 = call float @dx.op.unary.f32(i32 7, float %1885)  ; Saturate(value)
  %1888 = fsub fast float 1.000000e+00, %1887
  %1889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1890 = extractvalue %dx.types.CBufRet.f32 %1889, 2
  %1891 = call float @dx.op.unary.f32(i32 83, float %1886)  ; DerivCoarseX(value)
  %1892 = call float @dx.op.unary.f32(i32 83, float %1888)  ; DerivCoarseX(value)
  %1893 = call float @dx.op.unary.f32(i32 84, float %1886)  ; DerivCoarseY(value)
  %1894 = call float @dx.op.unary.f32(i32 84, float %1888)  ; DerivCoarseY(value)
  %1895 = fmul fast float %1891, %1890
  %1896 = fmul fast float %1892, %1890
  %1897 = fmul fast float %1893, %1890
  %1898 = fmul fast float %1894, %1890
  %1899 = call float @dx.op.dot2.f32(i32 54, float %1897, float %1898, float %1897, float %1898)  ; Dot2(ax,ay,bx,by)
  %1900 = call float @dx.op.dot2.f32(i32 54, float %1895, float %1896, float %1895, float %1896)  ; Dot2(ax,ay,bx,by)
  %1901 = call float @dx.op.binary.f32(i32 35, float %1900, float %1899)  ; FMax(a,b)
  %1902 = call float @dx.op.unary.f32(i32 23, float %1901)  ; Log(value)
  %1903 = fmul fast float %1902, 5.000000e-01
  %1904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1905 = extractvalue %dx.types.CBufRet.f32 %1904, 1
  %1906 = fadd fast float %1905, %1903
  %1907 = call float @dx.op.binary.f32(i32 35, float %1906, float 0.000000e+00)  ; FMax(a,b)
  %1908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1909 = extractvalue %dx.types.CBufRet.f32 %1908, 3
  %1910 = fadd fast float %1909, %1907
  %1911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.f32 %1911, 3
  %1913 = fadd fast float %1910, %1912
  %1914 = add i32 %1880, 0
  %1915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1914, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1916 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1915, i32 0)  ; GetDimensions(handle,mipLevel)
  %1917 = extractvalue %dx.types.Dimensions %1916, 0
  %1918 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1917)  ; FirstbitLo(value)
  %1919 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1920 = extractvalue %dx.types.CBufRet.i32 %1919, 1
  %1921 = sub nsw i32 %1920, %1918
  %1922 = sitofp i32 %1921 to float
  %1923 = fsub fast float %1913, %1922
  %1924 = call float @dx.op.binary.f32(i32 35, float %1923, float 0.000000e+00)  ; FMax(a,b)
  %1925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1915, %dx.types.Handle %56, float %1886, float %1888, float %1876, float undef, i32 0, i32 0, i32 undef, float %1924)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1926 = extractvalue %dx.types.ResRet.f32 %1925, 0
  %1927 = fcmp ule float %1926, 0x3FE0101020000000
  %1928 = extractvalue %dx.types.CBufRet.i32 %1919, 0
  %1929 = and i32 %1928, 128
  %1930 = icmp ne i32 %1929, 0
  %1931 = and i1 %1927, %1930
  br i1 %1931, label %2082, label %1932

; <label>:1932                                    ; preds = %1866
  %1933 = add i32 %1867, 20
  %1934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.f32 %1934, 0
  %1936 = add i32 %1867, 24
  %1937 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.f32 %1937, 0
  %1939 = add i32 %1867, 40
  %1940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1941 = extractvalue %dx.types.ResRet.f32 %1940, 0
  %1942 = add i32 %1867, 96
  %1943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.i32 %1943, 0
  %1945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1946 = extractvalue %dx.types.CBufRet.f32 %1945, 2
  %1947 = fmul fast float %1946, %1886
  %1948 = fmul fast float %1946, %1888
  %1949 = extractvalue %dx.types.CBufRet.f32 %1945, 3
  %1950 = fadd fast float %1947, %1949
  %1951 = fadd fast float %1948, %1949
  %1952 = add i32 %1944, 0
  %1953 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1952, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1954 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1953, i32 0)  ; GetDimensions(handle,mipLevel)
  %1955 = extractvalue %dx.types.Dimensions %1954, 0
  %1956 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1955)  ; FirstbitLo(value)
  %1957 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1958 = extractvalue %dx.types.CBufRet.i32 %1957, 1
  %1959 = sub nsw i32 %1958, %1956
  %1960 = sitofp i32 %1959 to float
  %1961 = fsub fast float %1910, %1960
  %1962 = call float @dx.op.binary.f32(i32 35, float %1961, float 0.000000e+00)  ; FMax(a,b)
  %1963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1953, %dx.types.Handle %56, float %1950, float %1951, float %1941, float undef, i32 0, i32 0, i32 undef, float %1962)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1964 = extractvalue %dx.types.ResRet.f32 %1963, 0
  %1965 = fmul fast float %1964, %1935
  %1966 = fadd fast float %1965, %1938
  %1967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1968 = extractvalue %dx.types.CBufRet.f32 %1967, 0
  %1969 = extractvalue %dx.types.CBufRet.f32 %1967, 1
  %1970 = extractvalue %dx.types.CBufRet.f32 %1967, 2
  %1971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1972 = extractvalue %dx.types.CBufRet.f32 %1971, 3
  %1973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1974 = extractvalue %dx.types.CBufRet.f32 %1973, 3
  %1975 = extractvalue %dx.types.CBufRet.f32 %1967, 3
  %1976 = fadd fast float %1972, %1833
  %1977 = fadd fast float %1974, %1834
  %1978 = fadd fast float %1966, %1975
  %1979 = fmul fast float %1976, %1968
  %1980 = call float @dx.op.tertiary.f32(i32 46, float %1977, float %1969, float %1979)  ; FMad(a,b,c)
  %1981 = call float @dx.op.tertiary.f32(i32 46, float %1978, float %1970, float %1980)  ; FMad(a,b,c)
  %1982 = fsub fast float %1981, %1975
  %1983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1984 = extractvalue %dx.types.CBufRet.f32 %1983, 2
  %1985 = fsub fast float %1982, %1984
  %1986 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1987 = extractvalue %dx.types.CBufRet.i32 %1986, 0
  %1988 = call i32 @dx.op.binary.i32(i32 40, i32 %1864, i32 %1987)  ; UMin(a,b)
  %1989 = mul i32 %1988, 36
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = add i32 %1989, 4
  %1993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1994 = extractvalue %dx.types.CBufRet.f32 %1993, 0
  %1995 = fmul fast float %1994, %1886
  %1996 = fmul fast float %1994, %1888
  %1997 = extractvalue %dx.types.CBufRet.f32 %1993, 1
  %1998 = fadd fast float %1995, %1997
  %1999 = fadd fast float %1996, %1997
  %2000 = icmp eq i32 %1991, 0
  br i1 %2000, label %2069, label %2001

; <label>:2001                                    ; preds = %1932
  br label %2002

; <label>:2002                                    ; preds = %2059, %2001
  %2003 = phi float [ %2060, %2059 ], [ 0.000000e+00, %2001 ]
  %2004 = phi float [ %2061, %2059 ], [ 0.000000e+00, %2001 ]
  %2005 = phi float [ %2062, %2059 ], [ 0.000000e+00, %2001 ]
  %2006 = phi float [ %2063, %2059 ], [ 0.000000e+00, %2001 ]
  %2007 = phi float [ %2064, %2059 ], [ 0.000000e+00, %2001 ]
  %2008 = phi float [ %2065, %2059 ], [ 0.000000e+00, %2001 ]
  %2009 = phi i32 [ %2066, %2059 ], [ 0, %2001 ]
  %2010 = shl i32 %2009, 2
  %2011 = add i32 %1877, %2010
  %2012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.f32 %2012, 0
  %2014 = add i32 %1881, %2010
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2014, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = add i32 %2016, 0
  %2018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2017, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2019 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2018, i32 0)  ; GetDimensions(handle,mipLevel)
  %2020 = extractvalue %dx.types.Dimensions %2019, 0
  %2021 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2020)  ; FirstbitLo(value)
  %2022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2023 = extractvalue %dx.types.CBufRet.i32 %2022, 1
  %2024 = sub nsw i32 %2023, %2021
  %2025 = sitofp i32 %2024 to float
  %2026 = fsub fast float %1910, %2025
  %2027 = call float @dx.op.binary.f32(i32 35, float %2026, float 0.000000e+00)  ; FMax(a,b)
  %2028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2018, %dx.types.Handle %56, float %1998, float %1999, float %2013, float undef, i32 0, i32 0, i32 undef, float %2027)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2029 = extractvalue %dx.types.ResRet.f32 %2028, 0
  %2030 = fcmp fast ogt float %2029, 0.000000e+00
  br i1 %2030, label %2031, label %2059

; <label>:2031                                    ; preds = %2002
  %2032 = add i32 %1992, %2010
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = and i32 %2034, 32767
  %2036 = mul nuw nsw i32 %2035, 928
  %2037 = add nuw nsw i32 %2036, 48
  %2038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.f32 %2038, 0
  %2040 = extractvalue %dx.types.ResRet.f32 %2038, 1
  %2041 = extractvalue %dx.types.ResRet.f32 %2038, 2
  %2042 = add nuw nsw i32 %2036, 60
  %2043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.f32 %2043, 0
  %2045 = extractvalue %dx.types.ResRet.f32 %2043, 1
  %2046 = extractvalue %dx.types.ResRet.f32 %2043, 2
  %2047 = fmul fast float %2039, %2029
  %2048 = fmul fast float %2040, %2029
  %2049 = fmul fast float %2041, %2029
  %2050 = fadd fast float %2047, %2003
  %2051 = fadd fast float %2048, %2004
  %2052 = fadd fast float %2049, %2005
  %2053 = fmul fast float %2044, %2029
  %2054 = fmul fast float %2045, %2029
  %2055 = fmul fast float %2046, %2029
  %2056 = fadd fast float %2053, %2006
  %2057 = fadd fast float %2054, %2007
  %2058 = fadd fast float %2055, %2008
  br label %2059

; <label>:2059                                    ; preds = %2031, %2002
  %2060 = phi float [ %2050, %2031 ], [ %2003, %2002 ]
  %2061 = phi float [ %2051, %2031 ], [ %2004, %2002 ]
  %2062 = phi float [ %2052, %2031 ], [ %2005, %2002 ]
  %2063 = phi float [ %2056, %2031 ], [ %2006, %2002 ]
  %2064 = phi float [ %2057, %2031 ], [ %2007, %2002 ]
  %2065 = phi float [ %2058, %2031 ], [ %2008, %2002 ]
  %2066 = add nuw i32 %2009, 1
  %2067 = icmp eq i32 %2066, %1991
  br i1 %2067, label %2068, label %2002

; <label>:2068                                    ; preds = %2059
  br label %2069

; <label>:2069                                    ; preds = %2068, %1932
  %2070 = phi float [ 0.000000e+00, %1932 ], [ %2060, %2068 ]
  %2071 = phi float [ 0.000000e+00, %1932 ], [ %2061, %2068 ]
  %2072 = phi float [ 0.000000e+00, %1932 ], [ %2062, %2068 ]
  %2073 = phi float [ 0.000000e+00, %1932 ], [ %2063, %2068 ]
  %2074 = phi float [ 0.000000e+00, %1932 ], [ %2064, %2068 ]
  %2075 = phi float [ 0.000000e+00, %1932 ], [ %2065, %2068 ]
  %2076 = fadd fast float %2073, %2070
  %2077 = fmul fast float %2076, 0x3F847AE140000000
  %2078 = fadd fast float %2074, %2071
  %2079 = fmul fast float %2078, 0x3F847AE140000000
  %2080 = fadd fast float %2075, %2072
  %2081 = fmul fast float %2080, 0x3F847AE140000000
  br label %2082

; <label>:2082                                    ; preds = %2069, %1866, %1811, %1808, %1779, %1741
  %2083 = phi float [ %1793, %1779 ], [ -1.310720e+05, %1741 ], [ %1985, %2069 ], [ -1.310720e+05, %1811 ], [ -1.310720e+05, %1866 ], [ -1.310720e+05, %1808 ]
  %2084 = phi float [ %1803, %1779 ], [ 0.000000e+00, %1741 ], [ %2077, %2069 ], [ 0.000000e+00, %1811 ], [ 0.000000e+00, %1866 ], [ 0.000000e+00, %1808 ]
  %2085 = phi float [ %1805, %1779 ], [ 0.000000e+00, %1741 ], [ %2079, %2069 ], [ 0.000000e+00, %1811 ], [ 0.000000e+00, %1866 ], [ 0.000000e+00, %1808 ]
  %2086 = phi float [ %1807, %1779 ], [ 0.000000e+00, %1741 ], [ %2081, %2069 ], [ 0.000000e+00, %1811 ], [ 0.000000e+00, %1866 ], [ 0.000000e+00, %1808 ]
  %2087 = phi i1 [ true, %1779 ], [ false, %1741 ], [ true, %2069 ], [ false, %1811 ], [ false, %1866 ], [ false, %1808 ]
  %2088 = and i32 %204, 3
  %2089 = icmp eq i32 %2088, 1
  %2090 = select i1 %2089, float 1.000000e+00, float 0.000000e+00
  %2091 = fsub fast float %2083, %139
  %2092 = call float @dx.op.unary.f32(i32 7, float %2091)  ; Saturate(value)
  %2093 = select i1 %2087, float %2092, float 1.000000e+00
  %2094 = fmul fast float %2093, %2090
  %2095 = icmp eq i32 %2088, 3
  %2096 = select i1 %2095, float 1.000000e+00, float %2094
  %2097 = call float @dx.op.binary.f32(i32 35, float %1651, float %2096)  ; FMax(a,b)
  %2098 = call float @dx.op.unary.f32(i32 7, float %2097)  ; Saturate(value)
  %2099 = fcmp fast une float %2098, 0.000000e+00
  %2100 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %2101 = call float @dx.op.unary.f32(i32 25, float %2100)  ; Rsqrt(value)
  br i1 %2099, label %2109, label %2102

; <label>:2102                                    ; preds = %2082
  %2103 = fmul fast float %2101, %137
  %2104 = fmul fast float %2101, %138
  %2105 = fmul fast float %2101, %139
  %2106 = fsub fast float -0.000000e+00, %2103
  %2107 = fsub fast float -0.000000e+00, %2104
  %2108 = fsub fast float -0.000000e+00, %2105
  br label %2277

; <label>:2109                                    ; preds = %2082
  %2110 = fmul fast float %137, %2101
  %2111 = fsub fast float -0.000000e+00, %2110
  %2112 = fmul fast float %138, %2101
  %2113 = fsub fast float -0.000000e+00, %2112
  %2114 = fmul fast float %139, %2101
  %2115 = fsub fast float -0.000000e+00, %2114
  %2116 = call float @dx.op.dot3.f32(i32 55, float %2111, float %2113, float %2115, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %2117 = fmul fast float %2098, 2.500000e+00
  %2118 = call float @dx.op.unary.f32(i32 7, float %2117)  ; Saturate(value)
  %2119 = fmul fast float %2098, 0x4013FFFFE0000000
  %2120 = fadd fast float %2119, 0xBFFFFFFFE0000000
  %2121 = call float @dx.op.unary.f32(i32 7, float %2120)  ; Saturate(value)
  %2122 = fmul fast float %2098, 0x4004000020000000
  %2123 = fadd fast float %2122, 0xBFF8000040000000
  %2124 = call float @dx.op.unary.f32(i32 7, float %2123)  ; Saturate(value)
  %2125 = call float @dx.op.unary.f32(i32 7, float %2118)  ; Saturate(value)
  %2126 = fmul fast float %1684, 1.000000e+01
  %2127 = call float @dx.op.unary.f32(i32 7, float %2126)  ; Saturate(value)
  %2128 = fmul fast float %2127, 2.000000e+00
  %2129 = fsub fast float 3.000000e+00, %2128
  %2130 = fmul fast float %2127, %2127
  %2131 = fmul fast float %2130, %2129
  %2132 = fsub fast float 1.000000e+00, %2131
  %2133 = fsub fast float 0x3FE3333340000000, %1705
  %2134 = fmul fast float %2133, 0x400AAAAAA0000000
  %2135 = call float @dx.op.unary.f32(i32 7, float %2134)  ; Saturate(value)
  %2136 = fmul fast float %2132, %2135
  %2137 = fmul fast float %1720, 0x3FEA2B8620000000
  %2138 = fmul fast float %1721, 0x3FEA2B8620000000
  %2139 = fmul fast float %1722, 0x3FEA2B8620000000
  %2140 = fadd fast float %2137, 0x3FC81DFBA0000000
  %2141 = fmul fast float %2140, %1720
  %2142 = fadd fast float %2141, 0x3F910E6020000000
  %2143 = fadd fast float %2138, 0x3FC81DFBA0000000
  %2144 = fmul fast float %2143, %1721
  %2145 = fadd fast float %2144, 0x3F910E6020000000
  %2146 = fadd fast float %2139, 0x3FC81DFBA0000000
  %2147 = fmul fast float %2146, %1722
  %2148 = fadd fast float %2147, 0x3F910E6020000000
  %2149 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2150 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2151 = call float @dx.op.unary.f32(i32 7, float %2148)  ; Saturate(value)
  %2152 = fsub fast float %2149, %1720
  %2153 = fsub fast float %2150, %1721
  %2154 = fsub fast float %2151, %1722
  %2155 = fmul fast float %2152, %2125
  %2156 = fmul fast float %2155, %2136
  %2157 = fmul fast float %2153, %2125
  %2158 = fmul fast float %2157, %2136
  %2159 = fmul fast float %2154, %2125
  %2160 = fmul fast float %2159, %2136
  %2161 = fadd fast float %2156, %1720
  %2162 = fadd fast float %2158, %1721
  %2163 = fadd fast float %2160, %1722
  %2164 = fmul fast float %1665, %1665
  %2165 = fmul fast float %2164, %2164
  %2166 = fadd fast float %2121, 1.000000e+00
  %2167 = fsub fast float %2166, %2136
  %2168 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2169 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2170 = call float @dx.op.unary.f32(i32 7, float %2169)  ; Saturate(value)
  %2171 = fsub fast float 1.000000e+00, %2165
  %2172 = call float @dx.op.binary.f32(i32 36, float %2168, float %2171)  ; FMin(a,b)
  %2173 = call float @dx.op.unary.f32(i32 7, float %2124)  ; Saturate(value)
  %2174 = call float @dx.op.binary.f32(i32 35, float %2172, float %2173)  ; FMax(a,b)
  %2175 = fadd fast float %2170, 0xBFE4CCCCC0000000
  %2176 = fmul fast float %2175, 0x4006DB6DA0000000
  %2177 = call float @dx.op.unary.f32(i32 7, float %2176)  ; Saturate(value)
  %2178 = fmul fast float %2177, 2.000000e+00
  %2179 = fsub fast float 3.000000e+00, %2178
  %2180 = bitcast float %1702 to i32
  %2181 = ashr i32 %2180, 1
  %2182 = add nsw i32 %2181, 532487669
  %2183 = bitcast i32 %2182 to float
  %2184 = fsub fast float 1.000000e+00, %2183
  %2185 = bitcast float %2184 to i32
  %2186 = sub nsw i32 2129859010, %2185
  %2187 = bitcast i32 %2186 to float
  %2188 = fmul fast float %2187, 2.000000e+00
  %2189 = bitcast float %1703 to i32
  %2190 = ashr i32 %2189, 1
  %2191 = add nsw i32 %2190, 532487669
  %2192 = bitcast i32 %2191 to float
  %2193 = fsub fast float 1.000000e+00, %2192
  %2194 = bitcast float %2193 to i32
  %2195 = sub nsw i32 2129859010, %2194
  %2196 = bitcast i32 %2195 to float
  %2197 = fmul fast float %2196, 2.000000e+00
  %2198 = bitcast float %1704 to i32
  %2199 = ashr i32 %2198, 1
  %2200 = add nsw i32 %2199, 532487669
  %2201 = bitcast i32 %2200 to float
  %2202 = fsub fast float 1.000000e+00, %2201
  %2203 = bitcast float %2202 to i32
  %2204 = sub nsw i32 2129859010, %2203
  %2205 = bitcast i32 %2204 to float
  %2206 = fmul fast float %2205, 2.000000e+00
  %2207 = fsub fast float 0x4002A9FBE0000000, %2188
  %2208 = fadd fast float %2188, 0x3FD54FDF00000000
  %2209 = bitcast float %2208 to i32
  %2210 = sub nsw i32 2129859010, %2209
  %2211 = bitcast i32 %2210 to float
  %2212 = fmul fast float %2211, %2207
  %2213 = fmul fast float %2212, %2212
  %2214 = fsub fast float 0x4002A9FBE0000000, %2197
  %2215 = fadd fast float %2197, 0x3FD54FDF00000000
  %2216 = bitcast float %2215 to i32
  %2217 = sub nsw i32 2129859010, %2216
  %2218 = bitcast i32 %2217 to float
  %2219 = fmul fast float %2218, %2214
  %2220 = fmul fast float %2219, %2219
  %2221 = fsub fast float 0x4002A9FBE0000000, %2206
  %2222 = fadd fast float %2206, 0x3FD54FDF00000000
  %2223 = bitcast float %2222 to i32
  %2224 = sub nsw i32 2129859010, %2223
  %2225 = bitcast i32 %2224 to float
  %2226 = fmul fast float %2225, %2221
  %2227 = fmul fast float %2226, %2226
  %2228 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2213)  ; FMax(a,b)
  %2229 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2220)  ; FMax(a,b)
  %2230 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2227)  ; FMax(a,b)
  %2231 = fsub fast float 1.000000e+00, %2116
  %2232 = fadd fast float %2231, %2132
  %2233 = call float @dx.op.unary.f32(i32 7, float %2232)  ; Saturate(value)
  %2234 = fsub fast float 1.000000e+00, %2096
  %2235 = fmul fast float %2174, %2234
  %2236 = fmul fast float %2177, %2177
  %2237 = fmul fast float %2236, %2235
  %2238 = fmul fast float %2237, %2179
  %2239 = fmul fast float %2234, 0xBFE99999A0000000
  %2240 = fmul fast float %2239, %2125
  %2241 = fmul fast float %2240, %2136
  %2242 = fadd fast float %2241, 1.000000e+00
  %2243 = fadd fast float %1705, -1.000000e+00
  %2244 = fmul fast float %2242, %2243
  %2245 = fadd fast float %2244, 1.000000e+00
  %2246 = fsub fast float %2228, %1702
  %2247 = fsub fast float %2229, %1703
  %2248 = fsub fast float %2230, %1704
  %2249 = fmul fast float %2238, %2246
  %2250 = fmul fast float %2238, %2247
  %2251 = fmul fast float %2238, %2248
  %2252 = fadd fast float %2249, %1702
  %2253 = fadd fast float %2250, %1703
  %2254 = fadd fast float %2251, %1704
  %2255 = fsub fast float %70, %1681
  %2256 = fsub fast float %71, %1682
  %2257 = fsub fast float %72, %1683
  %2258 = fmul fast float %2238, %2255
  %2259 = fmul fast float %2238, %2256
  %2260 = fmul fast float %2238, %2257
  %2261 = fadd fast float %2258, %1681
  %2262 = fadd fast float %2259, %1682
  %2263 = fadd fast float %2260, %1683
  %2264 = fmul fast float %2238, %2233
  %2265 = call float @dx.op.unary.f32(i32 7, float %2245)  ; Saturate(value)
  %2266 = fsub fast float 1.000000e+00, %2265
  %2267 = fmul fast float %2264, %2266
  %2268 = fadd fast float %2267, %2265
  %2269 = fsub fast float 1.000000e+00, %1665
  %2270 = fmul fast float %2238, %2269
  %2271 = fadd fast float %2270, %1665
  %2272 = call float @dx.op.dot3.f32(i32 55, float %2261, float %2262, float %2263, float %2261, float %2262, float %2263)  ; Dot3(ax,ay,az,bx,by,bz)
  %2273 = call float @dx.op.unary.f32(i32 25, float %2272)  ; Rsqrt(value)
  %2274 = fmul fast float %2261, %2273
  %2275 = fmul fast float %2262, %2273
  %2276 = fmul fast float %2263, %2273
  br label %2277

; <label>:2277                                    ; preds = %2109, %2102
  %2278 = phi float [ %2108, %2102 ], [ %2115, %2109 ]
  %2279 = phi float [ %2107, %2102 ], [ %2113, %2109 ]
  %2280 = phi float [ %2106, %2102 ], [ %2111, %2109 ]
  %2281 = phi float [ %2105, %2102 ], [ %2114, %2109 ]
  %2282 = phi float [ %2104, %2102 ], [ %2112, %2109 ]
  %2283 = phi float [ %2103, %2102 ], [ %2110, %2109 ]
  %2284 = phi float [ %1720, %2102 ], [ %2161, %2109 ]
  %2285 = phi float [ %1721, %2102 ], [ %2162, %2109 ]
  %2286 = phi float [ %1722, %2102 ], [ %2163, %2109 ]
  %2287 = phi float [ %1681, %2102 ], [ %2274, %2109 ]
  %2288 = phi float [ %1682, %2102 ], [ %2275, %2109 ]
  %2289 = phi float [ %1683, %2102 ], [ %2276, %2109 ]
  %2290 = phi float [ %1702, %2102 ], [ %2252, %2109 ]
  %2291 = phi float [ %1703, %2102 ], [ %2253, %2109 ]
  %2292 = phi float [ %1704, %2102 ], [ %2254, %2109 ]
  %2293 = phi float [ %1705, %2102 ], [ %2268, %2109 ]
  %2294 = phi float [ %1665, %2102 ], [ %2271, %2109 ]
  %2295 = fsub fast float -0.000000e+00, %139
  %2296 = select i1 %228, float 0.000000e+00, float %2292
  %2297 = call float @dx.op.dot3.f32(i32 55, float %2287, float %2288, float %2289, float %2280, float %2279, float %2278)  ; Dot3(ax,ay,az,bx,by,bz)
  %2298 = call float @dx.op.unary.f32(i32 7, float %2297)  ; Saturate(value)
  %2299 = call float @dx.op.dot3.f32(i32 55, float %2283, float %2282, float %2281, float %2287, float %2288, float %2289)  ; Dot3(ax,ay,az,bx,by,bz)
  %2300 = fmul fast float %2299, 2.000000e+00
  %2301 = fmul fast float %2300, %2287
  %2302 = fmul fast float %2300, %2288
  %2303 = fmul fast float %2300, %2289
  %2304 = fsub fast float %2283, %2301
  %2305 = fsub fast float %2282, %2302
  %2306 = fsub fast float %2281, %2303
  %2307 = call float @dx.op.binary.f32(i32 36, float %2294, float 1.000000e+00)  ; FMin(a,b)
  %2308 = fsub fast float 1.000000e+00, %2294
  %2309 = bitcast float %2308 to i32
  %2310 = sub nsw i32 2129859010, %2309
  %2311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2312 = extractvalue %dx.types.CBufRet.f32 %2311, 0
  %2313 = extractvalue %dx.types.CBufRet.f32 %2311, 1
  %2314 = fadd fast float %2312, %137
  %2315 = fadd fast float %2313, %138
  %2316 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2317 = extractvalue %dx.types.CBufRet.i32 %2316, 0
  %2318 = icmp eq i32 %2317, 1
  br i1 %2318, label %2319, label %2354

; <label>:2319                                    ; preds = %2277
  %2320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2321 = extractvalue %dx.types.CBufRet.f32 %2320, 0
  %2322 = extractvalue %dx.types.CBufRet.f32 %2320, 1
  %2323 = fsub fast float %2314, %2321
  %2324 = fsub fast float %2315, %2322
  %2325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2326 = extractvalue %dx.types.CBufRet.f32 %2325, 0
  %2327 = extractvalue %dx.types.CBufRet.f32 %2325, 1
  %2328 = fmul fast float %2323, %2326
  %2329 = fmul fast float %2324, %2327
  %2330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %2328, float %2329, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2331 = extractvalue %dx.types.ResRet.f32 %2330, 0
  %2332 = fcmp fast ogt float %2331, 0.000000e+00
  %2333 = extractvalue %dx.types.CBufRet.i32 %2316, 3
  %2334 = icmp ne i32 %2333, 0
  %2335 = and i1 %2332, %2334
  br i1 %2335, label %2336, label %2354, !dx.controlflow.hints !98

; <label>:2336                                    ; preds = %2319
  %2337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2338 = extractvalue %dx.types.CBufRet.f32 %2337, 0
  %2339 = extractvalue %dx.types.CBufRet.f32 %2337, 1
  %2340 = fsub fast float %2314, %2338
  %2341 = fsub fast float %2315, %2339
  %2342 = fmul fast float %2340, %2340
  %2343 = fmul fast float %2341, %2341
  %2344 = fadd fast float %2342, %2343
  %2345 = uitofp i32 %2333 to float
  %2346 = fmul fast float %2345, %2345
  %2347 = fcmp fast ogt float %2344, %2346
  br i1 %2347, label %2354, label %2348

; <label>:2348                                    ; preds = %2336
  %2349 = call float @dx.op.unary.f32(i32 24, float %2344)  ; Sqrt(value)
  %2350 = fsub fast float %2345, %2349
  %2351 = fmul fast float %2350, 0x3F75555560000000
  %2352 = call float @dx.op.unary.f32(i32 7, float %2351)  ; Saturate(value)
  %2353 = call float @dx.op.binary.f32(i32 36, float %2352, float %2331)  ; FMin(a,b)
  br label %2354

; <label>:2354                                    ; preds = %2348, %2336, %2319, %2277
  %2355 = phi float [ 1.000000e+00, %2277 ], [ %2353, %2348 ], [ %2331, %2319 ], [ 0.000000e+00, %2336 ]
  %2356 = fcmp fast ogt float %2355, 0.000000e+00
  br i1 %2356, label %2357, label %2455, !dx.controlflow.hints !99

; <label>:2357                                    ; preds = %2354
  %2358 = fadd fast float %168, 5.000000e-01
  %2359 = call float @dx.op.unary.f32(i32 27, float %2358)  ; Round_ni(value)
  %2360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %58, float %166, float %167, float %2359, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2361 = extractvalue %dx.types.ResRet.f32 %2360, 0
  %2362 = extractvalue %dx.types.ResRet.f32 %2360, 1
  %2363 = extractvalue %dx.types.ResRet.f32 %2360, 2
  %2364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2365 = extractvalue %dx.types.CBufRet.f32 %2364, 3
  %2366 = fmul fast float %2365, %2361
  %2367 = fmul fast float %2365, %2362
  %2368 = fmul fast float %2365, %2363
  %2369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %58, float %166, float %167, float %2359, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2370 = extractvalue %dx.types.ResRet.f32 %2369, 0
  %2371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %58, float %166, float %167, float %2359, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2372 = extractvalue %dx.types.ResRet.f32 %2371, 0
  %2373 = extractvalue %dx.types.ResRet.f32 %2371, 1
  %2374 = fmul fast float %2372, 2.000000e+00
  %2375 = fmul fast float %2373, 2.000000e+00
  %2376 = fadd fast float %2374, -1.000000e+00
  %2377 = fadd fast float %2375, -1.000000e+00
  %2378 = fadd fast float %2376, %2377
  %2379 = fmul fast float %2378, 5.000000e-01
  %2380 = fsub fast float %2376, %2377
  %2381 = fmul fast float %2380, 5.000000e-01
  %2382 = call float @dx.op.unary.f32(i32 6, float %2379)  ; FAbs(value)
  %2383 = fsub fast float 1.000000e+00, %2382
  %2384 = call float @dx.op.unary.f32(i32 6, float %2381)  ; FAbs(value)
  %2385 = fsub fast float %2383, %2384
  %2386 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2385)  ; FMax(a,b)
  %2387 = call float @dx.op.dot3.f32(i32 55, float %2379, float %2381, float %2386, float %2379, float %2381, float %2386)  ; Dot3(ax,ay,az,bx,by,bz)
  %2388 = bitcast float %2387 to i32
  %2389 = ashr i32 %2388, 1
  %2390 = sub nsw i32 1597250115, %2389
  %2391 = bitcast i32 %2390 to float
  %2392 = fmul fast float %2391, %2379
  %2393 = fmul fast float %2391, %2381
  %2394 = fmul fast float %2391, %2386
  %2395 = fsub fast float 1.000000e+00, %2370
  %2396 = fdiv fast float %2395, %2394
  %2397 = fmul fast float %2394, %70
  %2398 = fmul fast float %2394, %71
  %2399 = fmul fast float %2394, %72
  %2400 = fmul fast float %2392, %66
  %2401 = fmul fast float %2392, %67
  %2402 = fmul fast float %2392, %68
  %2403 = fadd fast float %2397, %2400
  %2404 = fadd fast float %2398, %2401
  %2405 = fadd fast float %2399, %2402
  %2406 = fmul fast float %2393, %101
  %2407 = fmul fast float %2393, %102
  %2408 = fmul fast float %2393, %103
  %2409 = fadd fast float %2403, %2406
  %2410 = fadd fast float %2404, %2407
  %2411 = fadd fast float %2405, %2408
  %2412 = call float @dx.op.dot3.f32(i32 55, float %2409, float %2410, float %2411, float %2409, float %2410, float %2411)  ; Dot3(ax,ay,az,bx,by,bz)
  %2413 = call float @dx.op.unary.f32(i32 25, float %2412)  ; Rsqrt(value)
  %2414 = fmul fast float %2409, %2413
  %2415 = fmul fast float %2410, %2413
  %2416 = fmul fast float %2411, %2413
  %2417 = call float @dx.op.dot3.f32(i32 55, float %2287, float %2288, float %2289, float %2287, float %2288, float %2289)  ; Dot3(ax,ay,az,bx,by,bz)
  %2418 = call float @dx.op.unary.f32(i32 7, float %2417)  ; Saturate(value)
  %2419 = fmul fast float %2418, 5.000000e-01
  %2420 = fadd fast float %2419, 5.000000e-01
  %2421 = fmul fast float %2420, %2370
  %2422 = call float @dx.op.dot3.f32(i32 55, float %2287, float %2288, float %2289, float %2414, float %2415, float %2416)  ; Dot3(ax,ay,az,bx,by,bz)
  %2423 = call float @dx.op.unary.f32(i32 7, float %2422)  ; Saturate(value)
  %2424 = fmul fast float %2423, %2396
  %2425 = fadd fast float %2421, %2424
  %2426 = fsub fast float 5.000000e-01, %2419
  %2427 = fmul fast float %2426, %2284
  %2428 = fmul fast float %2426, %2285
  %2429 = fmul fast float %2426, %2286
  %2430 = fadd fast float %2425, %2427
  %2431 = fmul fast float %2430, %2366
  %2432 = fadd fast float %2425, %2428
  %2433 = fmul fast float %2432, %2367
  %2434 = fadd fast float %2425, %2429
  %2435 = fmul fast float %2434, %2368
  %2436 = call float @dx.op.dot3.f32(i32 55, float %2304, float %2305, float %2306, float %2287, float %2288, float %2289)  ; Dot3(ax,ay,az,bx,by,bz)
  %2437 = call float @dx.op.unary.f32(i32 7, float %2436)  ; Saturate(value)
  %2438 = fmul fast float %2437, 5.000000e-01
  %2439 = fadd fast float %2438, 5.000000e-01
  %2440 = fmul fast float %2439, %2370
  %2441 = call float @dx.op.dot3.f32(i32 55, float %2304, float %2305, float %2306, float %2414, float %2415, float %2416)  ; Dot3(ax,ay,az,bx,by,bz)
  %2442 = call float @dx.op.unary.f32(i32 7, float %2441)  ; Saturate(value)
  %2443 = fmul fast float %2442, %2396
  %2444 = fadd fast float %2440, %2443
  %2445 = fsub fast float 5.000000e-01, %2438
  %2446 = fmul fast float %2445, %2284
  %2447 = fmul fast float %2445, %2285
  %2448 = fmul fast float %2445, %2286
  %2449 = fadd fast float %2444, %2446
  %2450 = fmul fast float %2449, %2366
  %2451 = fadd fast float %2444, %2447
  %2452 = fmul fast float %2451, %2367
  %2453 = fadd fast float %2444, %2448
  %2454 = fmul fast float %2453, %2368
  br label %2455

; <label>:2455                                    ; preds = %2357, %2354
  %2456 = phi float [ %2450, %2357 ], [ 0.000000e+00, %2354 ]
  %2457 = phi float [ %2452, %2357 ], [ 0.000000e+00, %2354 ]
  %2458 = phi float [ %2454, %2357 ], [ 0.000000e+00, %2354 ]
  %2459 = phi float [ %2431, %2357 ], [ 0.000000e+00, %2354 ]
  %2460 = phi float [ %2433, %2357 ], [ 0.000000e+00, %2354 ]
  %2461 = phi float [ %2435, %2357 ], [ 0.000000e+00, %2354 ]
  %2462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2463 = extractvalue %dx.types.CBufRet.f32 %2462, 0
  %2464 = fcmp fast ogt float %2463, 0.000000e+00
  %2465 = and i1 %2356, %2464
  br i1 %2465, label %2466, label %2670, !dx.controlflow.hints !100

; <label>:2466                                    ; preds = %2455
  %2467 = extractvalue %dx.types.CBufRet.f32 %2311, 2
  %2468 = fadd fast float %2467, %139
  %2469 = fmul fast float %2287, 3.200000e+01
  %2470 = fmul fast float %2288, 3.200000e+01
  %2471 = fadd fast float %2314, %2469
  %2472 = fadd fast float %2315, %2470
  %2473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2474 = extractvalue %dx.types.CBufRet.f32 %2473, 0
  %2475 = extractvalue %dx.types.CBufRet.f32 %2473, 1
  %2476 = fsub fast float %2471, %2474
  %2477 = fsub fast float %2472, %2475
  %2478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2479 = extractvalue %dx.types.CBufRet.f32 %2478, 0
  %2480 = extractvalue %dx.types.CBufRet.f32 %2478, 1
  %2481 = fmul fast float %2476, %2479
  %2482 = fmul fast float %2477, %2480
  %2483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2484 = extractvalue %dx.types.CBufRet.f32 %2483, 0
  %2485 = extractvalue %dx.types.CBufRet.f32 %2483, 1
  %2486 = fsub fast float %2314, %2484
  %2487 = fsub fast float %2315, %2485
  %2488 = fmul fast float %2486, %2486
  %2489 = fmul fast float %2487, %2487
  %2490 = fadd fast float %2488, %2489
  %2491 = call float @dx.op.unary.f32(i32 24, float %2490)  ; Sqrt(value)
  %2492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2493 = extractvalue %dx.types.CBufRet.f32 %2492, 0
  %2494 = extractvalue %dx.types.CBufRet.f32 %2492, 1
  %2495 = fsub fast float %2491, %2493
  %2496 = fdiv fast float %2495, %2494
  %2497 = call float @dx.op.unary.f32(i32 7, float %2496)  ; Saturate(value)
  %2498 = fmul fast float %2497, 2.000000e+00
  %2499 = fsub fast float 3.000000e+00, %2498
  %2500 = fmul fast float %2497, %2497
  %2501 = fmul fast float %2500, %2499
  %2502 = fcmp fast oge float %2481, 0.000000e+00
  %2503 = fcmp fast ole float %2481, 1.000000e+00
  %2504 = and i1 %2503, %2502
  %2505 = fcmp fast oge float %2482, 0.000000e+00
  %2506 = and i1 %2505, %2504
  %2507 = fcmp fast ole float %2482, 1.000000e+00
  %2508 = and i1 %2507, %2506
  %2509 = fcmp fast ogt float %2501, 0.000000e+00
  %2510 = and i1 %2509, %2508
  br i1 %2510, label %2511, label %2634, !dx.controlflow.hints !101

; <label>:2511                                    ; preds = %2466
  %2512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2513 = extractvalue %dx.types.CBufRet.f32 %2512, 2
  %2514 = extractvalue %dx.types.CBufRet.f32 %2512, 3
  %2515 = fmul fast float %2513, %2481
  %2516 = fmul fast float %2514, %2482
  %2517 = call float @dx.op.unary.f32(i32 27, float %2515)  ; Round_ni(value)
  %2518 = call float @dx.op.unary.f32(i32 27, float %2516)  ; Round_ni(value)
  %2519 = fptosi float %2517 to i32
  %2520 = fptosi float %2518 to i32
  %2521 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %2519, i32 %2520, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = lshr i32 %2522, 16
  %2524 = icmp eq i32 %2523, 65535
  br i1 %2524, label %2634, label %2525

; <label>:2525                                    ; preds = %2511
  %2526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2527 = extractvalue %dx.types.CBufRet.f32 %2526, 0
  %2528 = fmul fast float %2527, %2481
  %2529 = extractvalue %dx.types.CBufRet.f32 %2526, 1
  %2530 = fadd fast float %2528, %2529
  %2531 = extractvalue %dx.types.CBufRet.f32 %2526, 2
  %2532 = fmul fast float %2531, %2482
  %2533 = extractvalue %dx.types.CBufRet.f32 %2526, 3
  %2534 = fadd fast float %2532, %2533
  %2535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2530, float %2534, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2536 = extractvalue %dx.types.ResRet.f32 %2535, 0
  %2537 = extractvalue %dx.types.ResRet.f32 %2535, 1
  %2538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2539 = extractvalue %dx.types.CBufRet.f32 %2538, 1
  %2540 = extractvalue %dx.types.CBufRet.f32 %2538, 0
  %2541 = fsub fast float %2539, %2540
  %2542 = fmul fast float %2541, %2536
  %2543 = fadd fast float %2542, %2540
  %2544 = extractvalue %dx.types.CBufRet.f32 %2538, 3
  %2545 = extractvalue %dx.types.CBufRet.f32 %2538, 2
  %2546 = fsub fast float %2544, %2545
  %2547 = fmul fast float %2546, %2537
  %2548 = fadd fast float %2547, %2545
  %2549 = fsub fast float %2468, %2543
  %2550 = fsub fast float %2548, %2543
  %2551 = fdiv fast float %2549, %2550
  %2552 = call float @dx.op.unary.f32(i32 7, float %2551)  ; Saturate(value)
  %2553 = extractvalue %dx.types.CBufRet.f32 %2462, 1
  %2554 = extractvalue %dx.types.CBufRet.f32 %2512, 0
  %2555 = extractvalue %dx.types.CBufRet.f32 %2512, 1
  %2556 = fmul fast float %2554, %2481
  %2557 = fmul fast float %2555, %2482
  %2558 = fmul fast float %2556, 1.250000e-01
  %2559 = fmul fast float %2557, 1.250000e-01
  %2560 = call float @dx.op.unary.f32(i32 27, float %2558)  ; Round_ni(value)
  %2561 = call float @dx.op.unary.f32(i32 27, float %2559)  ; Round_ni(value)
  %2562 = fmul fast float %2560, 8.000000e+00
  %2563 = fmul fast float %2561, 8.000000e+00
  %2564 = fsub fast float %2556, %2562
  %2565 = fsub fast float %2557, %2563
  %2566 = fadd fast float %2564, 5.000000e-01
  %2567 = fadd fast float %2565, 5.000000e-01
  %2568 = and i32 %2523, 255
  %2569 = lshr i32 %2522, 24
  %2570 = mul nuw nsw i32 %2568, 9
  %2571 = uitofp i32 %2570 to float
  %2572 = mul nuw nsw i32 %2569, 9
  %2573 = uitofp i32 %2572 to float
  %2574 = fadd fast float %2566, %2571
  %2575 = fadd fast float %2567, %2573
  %2576 = fdiv fast float %2574, %2463
  %2577 = fdiv fast float %2575, %2553
  %2578 = fmul fast float %2552, 4.375000e-01
  %2579 = fadd fast float %2578, 3.125000e-02
  %2580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2576, float %2577, float %2579, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2581 = extractvalue %dx.types.ResRet.f32 %2580, 0
  %2582 = extractvalue %dx.types.ResRet.f32 %2580, 1
  %2583 = extractvalue %dx.types.ResRet.f32 %2580, 2
  %2584 = fadd fast float %2578, 5.312500e-01
  %2585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2576, float %2577, float %2584, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2586 = extractvalue %dx.types.ResRet.f32 %2585, 0
  %2587 = extractvalue %dx.types.ResRet.f32 %2585, 1
  %2588 = extractvalue %dx.types.ResRet.f32 %2585, 2
  %2589 = fmul fast float %2586, 2.000000e+00
  %2590 = fmul fast float %2587, 2.000000e+00
  %2591 = fmul fast float %2588, 2.000000e+00
  %2592 = fadd fast float %2589, -1.000000e+00
  %2593 = fadd fast float %2590, -1.000000e+00
  %2594 = fadd fast float %2591, -1.000000e+00
  %2595 = fmul fast float %2592, %2592
  %2596 = fmul fast float %2593, %2593
  %2597 = fadd fast float %2595, %2596
  %2598 = fmul fast float %2594, %2594
  %2599 = fadd fast float %2597, %2598
  %2600 = call float @dx.op.unary.f32(i32 24, float %2599)  ; Sqrt(value)
  %2601 = fcmp fast ogt float %2600, 0.000000e+00
  br i1 %2601, label %2602, label %2606

; <label>:2602                                    ; preds = %2525
  %2603 = fdiv fast float %2592, %2600
  %2604 = fdiv fast float %2593, %2600
  %2605 = fdiv fast float %2594, %2600
  br label %2606

; <label>:2606                                    ; preds = %2602, %2525
  %2607 = phi float [ %2603, %2602 ], [ 0.000000e+00, %2525 ]
  %2608 = phi float [ %2604, %2602 ], [ 0.000000e+00, %2525 ]
  %2609 = phi float [ %2605, %2602 ], [ 0.000000e+00, %2525 ]
  %2610 = call float @dx.op.dot3.f32(i32 55, float %2607, float %2608, float %2609, float %2287, float %2288, float %2289)  ; Dot3(ax,ay,az,bx,by,bz)
  %2611 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2610)  ; FMax(a,b)
  %2612 = fmul fast float %2611, 0x400C5BF8A0000000
  %2613 = fmul fast float %2581, %2501
  %2614 = fmul fast float %2613, %2612
  %2615 = fmul fast float %2582, %2501
  %2616 = fmul fast float %2615, %2612
  %2617 = fmul fast float %2583, %2501
  %2618 = fmul fast float %2617, %2612
  %2619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2620 = extractvalue %dx.types.CBufRet.f32 %2619, 3
  %2621 = fmul fast float %2614, %2620
  %2622 = fmul fast float %2616, %2620
  %2623 = fmul fast float %2618, %2620
  %2624 = fcmp fast ogt float %2468, %2548
  br i1 %2624, label %2625, label %2634

; <label>:2625                                    ; preds = %2606
  %2626 = fmul fast float %2550, 0x3FC24924A0000000
  %2627 = fsub fast float %2468, %2548
  %2628 = fdiv fast float %2627, %2626
  %2629 = call float @dx.op.unary.f32(i32 7, float %2628)  ; Saturate(value)
  %2630 = fsub fast float 1.000000e+00, %2629
  %2631 = fmul fast float %2630, %2621
  %2632 = fmul fast float %2630, %2622
  %2633 = fmul fast float %2630, %2623
  br label %2634

; <label>:2634                                    ; preds = %2625, %2606, %2511, %2466
  %2635 = phi float [ %2633, %2625 ], [ %2623, %2606 ], [ 0.000000e+00, %2511 ], [ 0.000000e+00, %2466 ]
  %2636 = phi float [ %2632, %2625 ], [ %2622, %2606 ], [ 0.000000e+00, %2511 ], [ 0.000000e+00, %2466 ]
  %2637 = phi float [ %2631, %2625 ], [ %2621, %2606 ], [ 0.000000e+00, %2511 ], [ 0.000000e+00, %2466 ]
  %2638 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2637)  ; FMax(a,b)
  %2639 = fmul fast float %2638, 0x3FD20DD760000000
  %2640 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2304, float %2305, float %2306)  ; Dot3(ax,ay,az,bx,by,bz)
  %2641 = fmul fast float %2640, 0x3FDF454380000000
  %2642 = fmul fast float %2640, %2640
  %2643 = fmul fast float %2642, 0x3FEE471020000000
  %2644 = fadd fast float %2643, 0xBFD42F6020000000
  %2645 = call float @dx.op.dot3.f32(i32 55, float %2638, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2641, float %2644)  ; Dot3(ax,ay,az,bx,by,bz)
  %2646 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2636)  ; FMax(a,b)
  %2647 = fmul fast float %2646, 0x3FD20DD760000000
  %2648 = call float @dx.op.dot3.f32(i32 55, float %2646, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2641, float %2644)  ; Dot3(ax,ay,az,bx,by,bz)
  %2649 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2635)  ; FMax(a,b)
  %2650 = fmul fast float %2649, 0x3FD20DD760000000
  %2651 = call float @dx.op.dot3.f32(i32 55, float %2649, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2641, float %2644)  ; Dot3(ax,ay,az,bx,by,bz)
  %2652 = call float @dx.op.binary.f32(i32 35, float %2639, float 0.000000e+00)  ; FMax(a,b)
  %2653 = call float @dx.op.binary.f32(i32 35, float %2647, float 0.000000e+00)  ; FMax(a,b)
  %2654 = call float @dx.op.binary.f32(i32 35, float %2650, float 0.000000e+00)  ; FMax(a,b)
  %2655 = call float @dx.op.binary.f32(i32 35, float %2645, float 0.000000e+00)  ; FMax(a,b)
  %2656 = call float @dx.op.binary.f32(i32 35, float %2648, float 0.000000e+00)  ; FMax(a,b)
  %2657 = call float @dx.op.binary.f32(i32 35, float %2651, float 0.000000e+00)  ; FMax(a,b)
  %2658 = fmul fast float %2652, %2355
  %2659 = fmul fast float %2653, %2355
  %2660 = fmul fast float %2654, %2355
  %2661 = fadd fast float %2658, %2459
  %2662 = fadd fast float %2659, %2460
  %2663 = fadd fast float %2660, %2461
  %2664 = fmul fast float %2655, %2355
  %2665 = fmul fast float %2656, %2355
  %2666 = fmul fast float %2657, %2355
  %2667 = fadd fast float %2664, %2456
  %2668 = fadd fast float %2665, %2457
  %2669 = fadd fast float %2666, %2458
  br label %2670

; <label>:2670                                    ; preds = %2634, %2455
  %2671 = phi float [ %2667, %2634 ], [ %2456, %2455 ]
  %2672 = phi float [ %2668, %2634 ], [ %2457, %2455 ]
  %2673 = phi float [ %2669, %2634 ], [ %2458, %2455 ]
  %2674 = phi float [ %2661, %2634 ], [ %2459, %2455 ]
  %2675 = phi float [ %2662, %2634 ], [ %2460, %2455 ]
  %2676 = phi float [ %2663, %2634 ], [ %2461, %2455 ]
  %2677 = fcmp fast olt float %2355, 1.000000e+00
  br i1 %2677, label %2678, label %3496, !dx.controlflow.hints !102

; <label>:2678                                    ; preds = %2670
  %2679 = extractvalue %dx.types.CBufRet.f32 %2311, 2
  %2680 = fadd fast float %2679, %139
  %2681 = fmul fast float %2287, 3.200000e+01
  %2682 = fmul fast float %2288, 3.200000e+01
  %2683 = fadd fast float %2314, %2681
  %2684 = fadd fast float %2315, %2682
  %2685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2686 = extractvalue %dx.types.CBufRet.f32 %2685, 0
  %2687 = extractvalue %dx.types.CBufRet.f32 %2685, 1
  %2688 = fsub fast float %2683, %2686
  %2689 = fsub fast float %2684, %2687
  %2690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2691 = extractvalue %dx.types.CBufRet.f32 %2690, 0
  %2692 = extractvalue %dx.types.CBufRet.f32 %2690, 1
  %2693 = fmul fast float %2688, %2691
  %2694 = fmul fast float %2689, %2692
  %2695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2696 = extractvalue %dx.types.CBufRet.f32 %2695, 0
  %2697 = fmul fast float %2693, %2696
  %2698 = extractvalue %dx.types.CBufRet.f32 %2695, 1
  %2699 = fadd fast float %2697, %2698
  %2700 = extractvalue %dx.types.CBufRet.f32 %2695, 2
  %2701 = fmul fast float %2700, %2694
  %2702 = extractvalue %dx.types.CBufRet.f32 %2695, 3
  %2703 = fadd fast float %2701, %2702
  %2704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2699, float %2703, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2705 = extractvalue %dx.types.ResRet.f32 %2704, 0
  %2706 = extractvalue %dx.types.ResRet.f32 %2704, 1
  %2707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2708 = extractvalue %dx.types.CBufRet.f32 %2707, 1
  %2709 = extractvalue %dx.types.CBufRet.f32 %2707, 0
  %2710 = fsub fast float %2708, %2709
  %2711 = fmul fast float %2710, %2705
  %2712 = fadd fast float %2711, %2709
  %2713 = extractvalue %dx.types.CBufRet.f32 %2707, 3
  %2714 = extractvalue %dx.types.CBufRet.f32 %2707, 2
  %2715 = fsub fast float %2713, %2714
  %2716 = fmul fast float %2715, %2706
  %2717 = fadd fast float %2716, %2714
  %2718 = fsub fast float %2680, %2712
  %2719 = fsub fast float %2717, %2712
  %2720 = fdiv fast float %2718, %2719
  %2721 = call float @dx.op.unary.f32(i32 7, float %2720)  ; Saturate(value)
  %2722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2723 = extractvalue %dx.types.CBufRet.f32 %2722, 0
  %2724 = fmul fast float %2723, %2721
  %2725 = extractvalue %dx.types.CBufRet.f32 %2722, 1
  %2726 = fadd fast float %2724, %2725
  %2727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %58, float %2699, float %2703, float %2726, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2728 = extractvalue %dx.types.ResRet.f32 %2727, 0
  %2729 = extractvalue %dx.types.ResRet.f32 %2727, 1
  %2730 = extractvalue %dx.types.ResRet.f32 %2727, 2
  %2731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2732 = extractvalue %dx.types.CBufRet.f32 %2731, 0
  %2733 = extractvalue %dx.types.CBufRet.f32 %2731, 1
  %2734 = extractvalue %dx.types.CBufRet.f32 %2731, 2
  %2735 = fmul fast float %2732, %2728
  %2736 = fmul fast float %2733, %2729
  %2737 = fmul fast float %2734, %2730
  %2738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2739 = extractvalue %dx.types.CBufRet.f32 %2738, 0
  %2740 = extractvalue %dx.types.CBufRet.f32 %2738, 1
  %2741 = extractvalue %dx.types.CBufRet.f32 %2738, 2
  %2742 = fadd fast float %2735, %2739
  %2743 = fadd fast float %2736, %2740
  %2744 = fadd fast float %2737, %2741
  %2745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2746 = extractvalue %dx.types.CBufRet.f32 %2745, 0
  %2747 = fmul fast float %2746, %2693
  %2748 = extractvalue %dx.types.CBufRet.f32 %2745, 1
  %2749 = fadd fast float %2747, %2748
  %2750 = extractvalue %dx.types.CBufRet.f32 %2745, 2
  %2751 = fmul fast float %2750, %2694
  %2752 = extractvalue %dx.types.CBufRet.f32 %2745, 3
  %2753 = fadd fast float %2751, %2752
  %2754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2755 = extractvalue %dx.types.CBufRet.f32 %2754, 0
  %2756 = extractvalue %dx.types.CBufRet.f32 %2754, 1
  %2757 = extractvalue %dx.types.CBufRet.f32 %2754, 2
  %2758 = extractvalue %dx.types.CBufRet.f32 %2754, 3
  %2759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2760 = extractvalue %dx.types.CBufRet.f32 %2759, 0
  %2761 = extractvalue %dx.types.CBufRet.f32 %2759, 1
  %2762 = extractvalue %dx.types.CBufRet.f32 %2759, 2
  %2763 = extractvalue %dx.types.CBufRet.f32 %2759, 3
  %2764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2749, float %2753, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2765 = extractvalue %dx.types.ResRet.f32 %2764, 0
  %2766 = extractvalue %dx.types.ResRet.f32 %2764, 1
  %2767 = extractvalue %dx.types.ResRet.f32 %2764, 2
  %2768 = extractvalue %dx.types.ResRet.f32 %2764, 3
  %2769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2749, float %2753, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2770 = extractvalue %dx.types.ResRet.f32 %2769, 0
  %2771 = extractvalue %dx.types.ResRet.f32 %2769, 1
  %2772 = extractvalue %dx.types.ResRet.f32 %2769, 2
  %2773 = extractvalue %dx.types.ResRet.f32 %2769, 3
  %2774 = fmul fast float %2765, %2742
  %2775 = fmul fast float %2770, %2742
  %2776 = fmul fast float %2772, %2742
  %2777 = fmul fast float %2768, %2742
  %2778 = fadd fast float %2774, %2755
  %2779 = fadd fast float %2775, %2756
  %2780 = fadd fast float %2776, %2757
  %2781 = fadd fast float %2777, %2758
  %2782 = fmul fast float %2766, %2742
  %2783 = fmul fast float %2771, %2742
  %2784 = fadd fast float %2782, %2760
  %2785 = fadd fast float %2783, %2761
  %2786 = fmul fast float %2767, %2742
  %2787 = fmul fast float %2773, %2742
  %2788 = fadd fast float %2786, %2762
  %2789 = fadd fast float %2787, %2763
  %2790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2749, float %2753, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2791 = extractvalue %dx.types.ResRet.f32 %2790, 0
  %2792 = extractvalue %dx.types.ResRet.f32 %2790, 1
  %2793 = extractvalue %dx.types.ResRet.f32 %2790, 2
  %2794 = extractvalue %dx.types.ResRet.f32 %2790, 3
  %2795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2749, float %2753, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2796 = extractvalue %dx.types.ResRet.f32 %2795, 0
  %2797 = extractvalue %dx.types.ResRet.f32 %2795, 1
  %2798 = extractvalue %dx.types.ResRet.f32 %2795, 2
  %2799 = extractvalue %dx.types.ResRet.f32 %2795, 3
  %2800 = fmul fast float %2791, %2743
  %2801 = fmul fast float %2796, %2743
  %2802 = fmul fast float %2798, %2743
  %2803 = fmul fast float %2794, %2743
  %2804 = fadd fast float %2778, %2800
  %2805 = fadd fast float %2779, %2801
  %2806 = fadd fast float %2780, %2802
  %2807 = fadd fast float %2781, %2803
  %2808 = fmul fast float %2792, %2743
  %2809 = fmul fast float %2797, %2743
  %2810 = fadd fast float %2784, %2808
  %2811 = fadd fast float %2785, %2809
  %2812 = fmul fast float %2793, %2743
  %2813 = fmul fast float %2799, %2743
  %2814 = fadd fast float %2788, %2812
  %2815 = fadd fast float %2789, %2813
  %2816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2749, float %2753, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2817 = extractvalue %dx.types.ResRet.f32 %2816, 0
  %2818 = extractvalue %dx.types.ResRet.f32 %2816, 1
  %2819 = extractvalue %dx.types.ResRet.f32 %2816, 2
  %2820 = extractvalue %dx.types.ResRet.f32 %2816, 3
  %2821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2749, float %2753, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2822 = extractvalue %dx.types.ResRet.f32 %2821, 0
  %2823 = extractvalue %dx.types.ResRet.f32 %2821, 1
  %2824 = extractvalue %dx.types.ResRet.f32 %2821, 2
  %2825 = extractvalue %dx.types.ResRet.f32 %2821, 3
  %2826 = fmul fast float %2817, %2744
  %2827 = fmul fast float %2822, %2744
  %2828 = fmul fast float %2824, %2744
  %2829 = fmul fast float %2820, %2744
  %2830 = fadd fast float %2804, %2826
  %2831 = fadd fast float %2805, %2827
  %2832 = fadd fast float %2806, %2828
  %2833 = fadd fast float %2807, %2829
  %2834 = fmul fast float %2818, %2744
  %2835 = fmul fast float %2823, %2744
  %2836 = fadd fast float %2810, %2834
  %2837 = fadd fast float %2811, %2835
  %2838 = fmul fast float %2819, %2744
  %2839 = fmul fast float %2825, %2744
  %2840 = fadd fast float %2814, %2838
  %2841 = fadd fast float %2815, %2839
  %2842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2843 = extractvalue %dx.types.CBufRet.f32 %2842, 0
  %2844 = fsub fast float %2314, %2843
  %2845 = fsub fast float %2686, %2314
  %2846 = call float @dx.op.binary.f32(i32 35, float %2845, float %2844)  ; FMax(a,b)
  %2847 = extractvalue %dx.types.CBufRet.f32 %2842, 1
  %2848 = fsub fast float %2315, %2847
  %2849 = fsub fast float %2687, %2315
  %2850 = call float @dx.op.binary.f32(i32 35, float %2849, float %2848)  ; FMax(a,b)
  %2851 = call float @dx.op.binary.f32(i32 35, float %2846, float %2850)  ; FMax(a,b)
  %2852 = extractvalue %dx.types.CBufRet.f32 %2690, 3
  %2853 = fmul fast float %2852, %2851
  %2854 = call float @dx.op.unary.f32(i32 7, float %2853)  ; Saturate(value)
  %2855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2856 = extractvalue %dx.types.CBufRet.f32 %2855, 0
  %2857 = extractvalue %dx.types.CBufRet.f32 %2855, 1
  %2858 = extractvalue %dx.types.CBufRet.f32 %2855, 2
  %2859 = extractvalue %dx.types.CBufRet.f32 %2855, 3
  %2860 = fsub fast float %2856, %2830
  %2861 = fsub fast float %2857, %2831
  %2862 = fsub fast float %2858, %2832
  %2863 = fsub fast float %2859, %2833
  %2864 = fmul fast float %2860, %2854
  %2865 = fmul fast float %2861, %2854
  %2866 = fmul fast float %2862, %2854
  %2867 = fmul fast float %2863, %2854
  %2868 = fadd fast float %2864, %2830
  %2869 = fadd fast float %2865, %2831
  %2870 = fadd fast float %2866, %2832
  %2871 = fadd fast float %2867, %2833
  %2872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2873 = extractvalue %dx.types.CBufRet.f32 %2872, 0
  %2874 = extractvalue %dx.types.CBufRet.f32 %2872, 1
  %2875 = fsub fast float %2873, %2836
  %2876 = fsub fast float %2874, %2837
  %2877 = fmul fast float %2875, %2854
  %2878 = fmul fast float %2876, %2854
  %2879 = fadd fast float %2877, %2836
  %2880 = fadd fast float %2878, %2837
  %2881 = extractvalue %dx.types.CBufRet.f32 %2872, 2
  %2882 = extractvalue %dx.types.CBufRet.f32 %2872, 3
  %2883 = fsub fast float %2881, %2840
  %2884 = fsub fast float %2882, %2841
  %2885 = fmul fast float %2883, %2854
  %2886 = fmul fast float %2884, %2854
  %2887 = fadd fast float %2885, %2840
  %2888 = fadd fast float %2886, %2841
  %2889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2890 = extractvalue %dx.types.CBufRet.f32 %2889, 0
  %2891 = fmul fast float %2890, %2868
  %2892 = fmul fast float %2890, %2869
  %2893 = fmul fast float %2890, %2870
  %2894 = fmul fast float %2890, %2871
  %2895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2896 = extractvalue %dx.types.CBufRet.f32 %2895, 0
  %2897 = fmul fast float %2896, %2879
  %2898 = fmul fast float %2896, %2880
  %2899 = fadd fast float %2897, %2891
  %2900 = fadd fast float %2898, %2893
  %2901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2902 = extractvalue %dx.types.CBufRet.f32 %2901, 0
  %2903 = fmul fast float %2902, %2887
  %2904 = fmul fast float %2902, %2888
  %2905 = fadd fast float %2899, %2903
  %2906 = fadd fast float %2900, %2904
  %2907 = extractvalue %dx.types.CBufRet.f32 %2889, 1
  %2908 = fmul fast float %2907, %2868
  %2909 = fmul fast float %2907, %2869
  %2910 = fmul fast float %2907, %2870
  %2911 = fmul fast float %2907, %2871
  %2912 = extractvalue %dx.types.CBufRet.f32 %2895, 1
  %2913 = fmul fast float %2912, %2879
  %2914 = fmul fast float %2912, %2880
  %2915 = fadd fast float %2913, %2908
  %2916 = fadd fast float %2914, %2910
  %2917 = extractvalue %dx.types.CBufRet.f32 %2901, 1
  %2918 = fmul fast float %2917, %2887
  %2919 = fmul fast float %2917, %2888
  %2920 = fadd fast float %2915, %2918
  %2921 = fadd fast float %2916, %2919
  %2922 = extractvalue %dx.types.CBufRet.f32 %2889, 2
  %2923 = fmul fast float %2922, %2868
  %2924 = fmul fast float %2922, %2869
  %2925 = fmul fast float %2922, %2870
  %2926 = fmul fast float %2922, %2871
  %2927 = extractvalue %dx.types.CBufRet.f32 %2895, 2
  %2928 = fmul fast float %2927, %2879
  %2929 = fmul fast float %2927, %2880
  %2930 = fadd fast float %2928, %2923
  %2931 = fadd fast float %2929, %2925
  %2932 = extractvalue %dx.types.CBufRet.f32 %2901, 2
  %2933 = fmul fast float %2932, %2887
  %2934 = fmul fast float %2932, %2888
  %2935 = fadd fast float %2930, %2933
  %2936 = fadd fast float %2931, %2934
  %2937 = fmul fast float %2924, %2924
  %2938 = fmul fast float %2936, %2936
  %2939 = fmul fast float %2926, %2926
  %2940 = fadd fast float %2939, %2937
  %2941 = fadd fast float %2940, %2938
  %2942 = call float @dx.op.unary.f32(i32 24, float %2941)  ; Sqrt(value)
  %2943 = fcmp fast ugt float %2942, 0.000000e+00
  br i1 %2943, label %2944, label %2959

; <label>:2944                                    ; preds = %2678
  %2945 = fsub fast float -0.000000e+00, %2926
  %2946 = fdiv fast float %2945, %2942
  %2947 = fsub fast float -0.000000e+00, %2924
  %2948 = fdiv fast float %2947, %2942
  %2949 = fdiv fast float %2936, %2942
  %2950 = fmul fast float %2935, 0x3FE279A760000000
  %2951 = fmul fast float %2948, %2924
  %2952 = fmul fast float %2949, %2936
  %2953 = fmul fast float %2946, %2926
  %2954 = fadd fast float %2951, %2953
  %2955 = fsub fast float %2954, %2952
  %2956 = call float @dx.op.unary.f32(i32 6, float %2955)  ; FAbs(value)
  %2957 = fadd fast float %2956, 0x3DDB7CDFE0000000
  %2958 = fdiv fast float %2950, %2957
  br label %2959

; <label>:2959                                    ; preds = %2944, %2678
  %2960 = phi float [ %2958, %2944 ], [ 1.000000e+00, %2678 ]
  %2961 = fmul fast float %2909, %2909
  %2962 = fmul fast float %2921, %2921
  %2963 = fmul fast float %2911, %2911
  %2964 = fadd fast float %2963, %2961
  %2965 = fadd fast float %2964, %2962
  %2966 = call float @dx.op.unary.f32(i32 24, float %2965)  ; Sqrt(value)
  %2967 = fcmp fast ugt float %2966, 0.000000e+00
  br i1 %2967, label %2968, label %2983

; <label>:2968                                    ; preds = %2959
  %2969 = fsub fast float -0.000000e+00, %2911
  %2970 = fdiv fast float %2969, %2966
  %2971 = fsub fast float -0.000000e+00, %2909
  %2972 = fdiv fast float %2971, %2966
  %2973 = fdiv fast float %2921, %2966
  %2974 = fmul fast float %2920, 0x3FE279A760000000
  %2975 = fmul fast float %2972, %2909
  %2976 = fmul fast float %2973, %2921
  %2977 = fmul fast float %2970, %2911
  %2978 = fadd fast float %2975, %2977
  %2979 = fsub fast float %2978, %2976
  %2980 = call float @dx.op.unary.f32(i32 6, float %2979)  ; FAbs(value)
  %2981 = fadd fast float %2980, 0x3DDB7CDFE0000000
  %2982 = fdiv fast float %2974, %2981
  br label %2983

; <label>:2983                                    ; preds = %2968, %2959
  %2984 = phi float [ %2982, %2968 ], [ 1.000000e+00, %2959 ]
  %2985 = call float @dx.op.binary.f32(i32 36, float %2984, float %2960)  ; FMin(a,b)
  %2986 = fmul fast float %2892, %2892
  %2987 = fmul fast float %2906, %2906
  %2988 = fmul fast float %2894, %2894
  %2989 = fadd fast float %2988, %2986
  %2990 = fadd fast float %2989, %2987
  %2991 = call float @dx.op.unary.f32(i32 24, float %2990)  ; Sqrt(value)
  %2992 = fcmp fast ugt float %2991, 0.000000e+00
  br i1 %2992, label %2993, label %3008

; <label>:2993                                    ; preds = %2983
  %2994 = fsub fast float -0.000000e+00, %2894
  %2995 = fdiv fast float %2994, %2991
  %2996 = fsub fast float -0.000000e+00, %2892
  %2997 = fdiv fast float %2996, %2991
  %2998 = fdiv fast float %2906, %2991
  %2999 = fmul fast float %2905, 0x3FE279A760000000
  %3000 = fmul fast float %2997, %2892
  %3001 = fmul fast float %2998, %2906
  %3002 = fmul fast float %2995, %2894
  %3003 = fadd fast float %3000, %3002
  %3004 = fsub fast float %3003, %3001
  %3005 = call float @dx.op.unary.f32(i32 6, float %3004)  ; FAbs(value)
  %3006 = fadd fast float %3005, 0x3DDB7CDFE0000000
  %3007 = fdiv fast float %2999, %3006
  br label %3008

; <label>:3008                                    ; preds = %2993, %2983
  %3009 = phi float [ %3007, %2993 ], [ 1.000000e+00, %2983 ]
  %3010 = call float @dx.op.binary.f32(i32 36, float %3009, float %2985)  ; FMin(a,b)
  %3011 = call float @dx.op.unary.f32(i32 7, float %3010)  ; Saturate(value)
  %3012 = fcmp fast olt float %3011, 1.000000e+00
  br i1 %3012, label %3013, label %3023

; <label>:3013                                    ; preds = %3008
  %3014 = fmul fast float %3011, %2892
  %3015 = fmul fast float %3011, %2906
  %3016 = fmul fast float %3011, %2894
  %3017 = fmul fast float %3011, %2909
  %3018 = fmul fast float %3011, %2921
  %3019 = fmul fast float %3011, %2911
  %3020 = fmul fast float %3011, %2924
  %3021 = fmul fast float %3011, %2936
  %3022 = fmul fast float %3011, %2926
  br label %3023

; <label>:3023                                    ; preds = %3013, %3008
  %3024 = phi float [ %3020, %3013 ], [ %2924, %3008 ]
  %3025 = phi float [ %3021, %3013 ], [ %2936, %3008 ]
  %3026 = phi float [ %3022, %3013 ], [ %2926, %3008 ]
  %3027 = phi float [ %3017, %3013 ], [ %2909, %3008 ]
  %3028 = phi float [ %3018, %3013 ], [ %2921, %3008 ]
  %3029 = phi float [ %3019, %3013 ], [ %2911, %3008 ]
  %3030 = phi float [ %3014, %3013 ], [ %2892, %3008 ]
  %3031 = phi float [ %3015, %3013 ], [ %2906, %3008 ]
  %3032 = phi float [ %3016, %3013 ], [ %2894, %3008 ]
  %3033 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2905)  ; FMax(a,b)
  %3034 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2920)  ; FMax(a,b)
  %3035 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2935)  ; FMax(a,b)
  %3036 = fcmp fast oge float %2693, 0.000000e+00
  %3037 = and i1 %3036, %2464
  %3038 = fcmp fast ole float %2693, 1.000000e+00
  %3039 = and i1 %3038, %3037
  %3040 = fcmp fast oge float %2694, 0.000000e+00
  %3041 = and i1 %3040, %3039
  %3042 = fcmp fast ole float %2694, 1.000000e+00
  %3043 = and i1 %3042, %3041
  br i1 %3043, label %3044, label %3189, !dx.controlflow.hints !103

; <label>:3044                                    ; preds = %3023
  %3045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3046 = extractvalue %dx.types.CBufRet.f32 %3045, 2
  %3047 = extractvalue %dx.types.CBufRet.f32 %3045, 3
  %3048 = fmul fast float %3046, %2693
  %3049 = fmul fast float %3047, %2694
  %3050 = call float @dx.op.unary.f32(i32 27, float %3048)  ; Round_ni(value)
  %3051 = call float @dx.op.unary.f32(i32 27, float %3049)  ; Round_ni(value)
  %3052 = fptosi float %3050 to i32
  %3053 = fptosi float %3051 to i32
  %3054 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %3052, i32 %3053, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = and i32 %3055, 65535
  %3057 = lshr i32 %3055, 16
  %3058 = icmp eq i32 %3056, 65535
  br i1 %3058, label %3095, label %3059

; <label>:3059                                    ; preds = %3044
  %3060 = extractvalue %dx.types.CBufRet.f32 %2462, 1
  %3061 = extractvalue %dx.types.CBufRet.f32 %3045, 0
  %3062 = extractvalue %dx.types.CBufRet.f32 %3045, 1
  %3063 = fmul fast float %3061, %2693
  %3064 = fmul fast float %3062, %2694
  %3065 = fmul fast float %3063, 1.250000e-01
  %3066 = fmul fast float %3064, 1.250000e-01
  %3067 = call float @dx.op.unary.f32(i32 27, float %3065)  ; Round_ni(value)
  %3068 = call float @dx.op.unary.f32(i32 27, float %3066)  ; Round_ni(value)
  %3069 = fmul fast float %3067, 8.000000e+00
  %3070 = fmul fast float %3068, 8.000000e+00
  %3071 = and i32 %3055, 255
  %3072 = lshr i32 %3055, 8
  %3073 = and i32 %3072, 255
  %3074 = mul nuw nsw i32 %3071, 9
  %3075 = uitofp i32 %3074 to float
  %3076 = mul nuw nsw i32 %3073, 9
  %3077 = uitofp i32 %3076 to float
  %3078 = fadd fast float %3075, 5.000000e-01
  %3079 = fadd fast float %3078, %3063
  %3080 = fsub fast float %3079, %3069
  %3081 = fadd fast float %3077, 5.000000e-01
  %3082 = fadd fast float %3081, %3064
  %3083 = fsub fast float %3082, %3070
  %3084 = fdiv fast float %3080, %2463
  %3085 = fdiv fast float %3083, %3060
  %3086 = fmul fast float %2721, 4.375000e-01
  %3087 = fadd fast float %3086, 3.125000e-02
  %3088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3084, float %3085, float %3087, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3089 = extractvalue %dx.types.ResRet.f32 %3088, 0
  %3090 = extractvalue %dx.types.ResRet.f32 %3088, 1
  %3091 = extractvalue %dx.types.ResRet.f32 %3088, 2
  %3092 = fadd fast float %3089, %3033
  %3093 = fadd fast float %3090, %3034
  %3094 = fadd fast float %3091, %3035
  br label %3095

; <label>:3095                                    ; preds = %3059, %3044
  %3096 = phi float [ %3094, %3059 ], [ %3035, %3044 ]
  %3097 = phi float [ %3093, %3059 ], [ %3034, %3044 ]
  %3098 = phi float [ %3092, %3059 ], [ %3033, %3044 ]
  %3099 = icmp eq i32 %3057, 65535
  br i1 %3099, label %3189, label %3100

; <label>:3100                                    ; preds = %3095
  %3101 = extractvalue %dx.types.CBufRet.f32 %2462, 1
  %3102 = extractvalue %dx.types.CBufRet.f32 %3045, 0
  %3103 = extractvalue %dx.types.CBufRet.f32 %3045, 1
  %3104 = fmul fast float %3102, %2693
  %3105 = fmul fast float %3103, %2694
  %3106 = fmul fast float %3104, 1.250000e-01
  %3107 = fmul fast float %3105, 1.250000e-01
  %3108 = call float @dx.op.unary.f32(i32 27, float %3106)  ; Round_ni(value)
  %3109 = call float @dx.op.unary.f32(i32 27, float %3107)  ; Round_ni(value)
  %3110 = fmul fast float %3108, 8.000000e+00
  %3111 = fmul fast float %3109, 8.000000e+00
  %3112 = fsub fast float %3104, %3110
  %3113 = fsub fast float %3105, %3111
  %3114 = fadd fast float %3112, 5.000000e-01
  %3115 = fadd fast float %3113, 5.000000e-01
  %3116 = and i32 %3057, 255
  %3117 = lshr i32 %3055, 24
  %3118 = mul nuw nsw i32 %3116, 9
  %3119 = uitofp i32 %3118 to float
  %3120 = mul nuw nsw i32 %3117, 9
  %3121 = uitofp i32 %3120 to float
  %3122 = fadd fast float %3114, %3119
  %3123 = fadd fast float %3115, %3121
  %3124 = fdiv fast float %3122, %2463
  %3125 = fdiv fast float %3123, %3101
  %3126 = fmul fast float %2721, 4.375000e-01
  %3127 = fadd fast float %3126, 3.125000e-02
  %3128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3124, float %3125, float %3127, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3129 = extractvalue %dx.types.ResRet.f32 %3128, 0
  %3130 = extractvalue %dx.types.ResRet.f32 %3128, 1
  %3131 = extractvalue %dx.types.ResRet.f32 %3128, 2
  %3132 = fadd fast float %3126, 5.312500e-01
  %3133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3124, float %3125, float %3132, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3134 = extractvalue %dx.types.ResRet.f32 %3133, 0
  %3135 = extractvalue %dx.types.ResRet.f32 %3133, 1
  %3136 = extractvalue %dx.types.ResRet.f32 %3133, 2
  %3137 = fmul fast float %3134, 2.000000e+00
  %3138 = fmul fast float %3135, 2.000000e+00
  %3139 = fmul fast float %3136, 2.000000e+00
  %3140 = fadd fast float %3137, -1.000000e+00
  %3141 = fadd fast float %3138, -1.000000e+00
  %3142 = fadd fast float %3139, -1.000000e+00
  %3143 = fmul fast float %3140, %3140
  %3144 = fmul fast float %3141, %3141
  %3145 = fadd fast float %3143, %3144
  %3146 = fmul fast float %3142, %3142
  %3147 = fadd fast float %3145, %3146
  %3148 = call float @dx.op.unary.f32(i32 24, float %3147)  ; Sqrt(value)
  %3149 = fcmp fast ogt float %3148, 0.000000e+00
  br i1 %3149, label %3150, label %3154

; <label>:3150                                    ; preds = %3100
  %3151 = fdiv fast float %3140, %3148
  %3152 = fdiv fast float %3141, %3148
  %3153 = fdiv fast float %3142, %3148
  br label %3154

; <label>:3154                                    ; preds = %3150, %3100
  %3155 = phi float [ %3151, %3150 ], [ 0.000000e+00, %3100 ]
  %3156 = phi float [ %3152, %3150 ], [ 0.000000e+00, %3100 ]
  %3157 = phi float [ %3153, %3150 ], [ 0.000000e+00, %3100 ]
  %3158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3159 = extractvalue %dx.types.CBufRet.f32 %3158, 0
  %3160 = extractvalue %dx.types.CBufRet.f32 %3158, 1
  %3161 = fsub fast float %2314, %3159
  %3162 = fsub fast float %2315, %3160
  %3163 = fmul fast float %3161, %3161
  %3164 = fmul fast float %3162, %3162
  %3165 = fadd fast float %3163, %3164
  %3166 = call float @dx.op.unary.f32(i32 24, float %3165)  ; Sqrt(value)
  %3167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3168 = extractvalue %dx.types.CBufRet.f32 %3167, 0
  %3169 = extractvalue %dx.types.CBufRet.f32 %3167, 1
  %3170 = fsub fast float %3166, %3168
  %3171 = fdiv fast float %3170, %3169
  %3172 = call float @dx.op.unary.f32(i32 7, float %3171)  ; Saturate(value)
  %3173 = fmul fast float %3172, 2.000000e+00
  %3174 = fsub fast float 3.000000e+00, %3173
  %3175 = fmul fast float %3172, %3172
  %3176 = fmul fast float %3175, %3174
  %3177 = call float @dx.op.dot3.f32(i32 55, float %3155, float %3156, float %3157, float %2287, float %2288, float %2289)  ; Dot3(ax,ay,az,bx,by,bz)
  %3178 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3177)  ; FMax(a,b)
  %3179 = fmul fast float %3178, 0x400C5BF8A0000000
  %3180 = fmul fast float %3176, %3129
  %3181 = fmul fast float %3180, %3179
  %3182 = fadd fast float %3181, %3098
  %3183 = fmul fast float %3176, %3130
  %3184 = fmul fast float %3183, %3179
  %3185 = fadd fast float %3184, %3097
  %3186 = fmul fast float %3176, %3131
  %3187 = fmul fast float %3186, %3179
  %3188 = fadd fast float %3187, %3096
  br label %3189

; <label>:3189                                    ; preds = %3154, %3095, %3023
  %3190 = phi float [ %3188, %3154 ], [ %3096, %3095 ], [ %3035, %3023 ]
  %3191 = phi float [ %3185, %3154 ], [ %3097, %3095 ], [ %3034, %3023 ]
  %3192 = phi float [ %3182, %3154 ], [ %3098, %3095 ], [ %3033, %3023 ]
  %3193 = fcmp fast ogt float %2680, %2717
  %3194 = and i1 %3036, %3193
  %3195 = and i1 %3038, %3194
  %3196 = and i1 %3040, %3195
  %3197 = and i1 %3042, %3196
  br i1 %3197, label %3198, label %3255, !dx.controlflow.hints !104

; <label>:3198                                    ; preds = %3189
  %3199 = fmul fast float %2719, 0x3FC24924A0000000
  %3200 = fsub fast float %2680, %2717
  %3201 = fdiv fast float %3200, %3199
  %3202 = call float @dx.op.unary.f32(i32 7, float %3201)  ; Saturate(value)
  %3203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3204 = extractvalue %dx.types.CBufRet.f32 %3203, 0
  %3205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3206 = extractvalue %dx.types.CBufRet.f32 %3205, 0
  %3207 = extractvalue %dx.types.CBufRet.f32 %3205, 1
  %3208 = extractvalue %dx.types.CBufRet.f32 %3205, 2
  %3209 = fsub fast float %3204, %3192
  %3210 = fsub fast float %3206, %3030
  %3211 = fsub fast float %3207, %3031
  %3212 = fsub fast float %3208, %3032
  %3213 = fmul fast float %3209, %3202
  %3214 = fmul fast float %3210, %3202
  %3215 = fmul fast float %3211, %3202
  %3216 = fmul fast float %3212, %3202
  %3217 = fadd fast float %3213, %3192
  %3218 = fadd fast float %3214, %3030
  %3219 = fadd fast float %3215, %3031
  %3220 = fadd fast float %3216, %3032
  %3221 = extractvalue %dx.types.CBufRet.f32 %3203, 1
  %3222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3223 = extractvalue %dx.types.CBufRet.f32 %3222, 0
  %3224 = extractvalue %dx.types.CBufRet.f32 %3222, 1
  %3225 = extractvalue %dx.types.CBufRet.f32 %3222, 2
  %3226 = fsub fast float %3221, %3191
  %3227 = fsub fast float %3223, %3027
  %3228 = fsub fast float %3224, %3028
  %3229 = fsub fast float %3225, %3029
  %3230 = fmul fast float %3226, %3202
  %3231 = fmul fast float %3227, %3202
  %3232 = fmul fast float %3228, %3202
  %3233 = fmul fast float %3229, %3202
  %3234 = fadd fast float %3230, %3191
  %3235 = fadd fast float %3231, %3027
  %3236 = fadd fast float %3232, %3028
  %3237 = fadd fast float %3233, %3029
  %3238 = extractvalue %dx.types.CBufRet.f32 %3203, 2
  %3239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3240 = extractvalue %dx.types.CBufRet.f32 %3239, 0
  %3241 = extractvalue %dx.types.CBufRet.f32 %3239, 1
  %3242 = extractvalue %dx.types.CBufRet.f32 %3239, 2
  %3243 = fsub fast float %3238, %3190
  %3244 = fsub fast float %3240, %3024
  %3245 = fsub fast float %3241, %3025
  %3246 = fsub fast float %3242, %3026
  %3247 = fmul fast float %3243, %3202
  %3248 = fmul fast float %3244, %3202
  %3249 = fmul fast float %3245, %3202
  %3250 = fmul fast float %3246, %3202
  %3251 = fadd fast float %3247, %3190
  %3252 = fadd fast float %3248, %3024
  %3253 = fadd fast float %3249, %3025
  %3254 = fadd fast float %3250, %3026
  br label %3255

; <label>:3255                                    ; preds = %3198, %3189
  %3256 = phi float [ %3251, %3198 ], [ %3190, %3189 ]
  %3257 = phi float [ %3252, %3198 ], [ %3024, %3189 ]
  %3258 = phi float [ %3253, %3198 ], [ %3025, %3189 ]
  %3259 = phi float [ %3254, %3198 ], [ %3026, %3189 ]
  %3260 = phi float [ %3234, %3198 ], [ %3191, %3189 ]
  %3261 = phi float [ %3235, %3198 ], [ %3027, %3189 ]
  %3262 = phi float [ %3236, %3198 ], [ %3028, %3189 ]
  %3263 = phi float [ %3237, %3198 ], [ %3029, %3189 ]
  %3264 = phi float [ %3217, %3198 ], [ %3192, %3189 ]
  %3265 = phi float [ %3218, %3198 ], [ %3030, %3189 ]
  %3266 = phi float [ %3219, %3198 ], [ %3031, %3189 ]
  %3267 = phi float [ %3220, %3198 ], [ %3032, %3189 ]
  %3268 = extractvalue %dx.types.CBufRet.f32 %2842, 3
  %3269 = fmul fast float %3268, %3264
  %3270 = fmul fast float %3268, %3260
  %3271 = fmul fast float %3268, %3256
  %3272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3273 = extractvalue %dx.types.CBufRet.f32 %3272, 3
  %3274 = fmul fast float %3269, %3273
  %3275 = fmul fast float %3270, %3273
  %3276 = fmul fast float %3271, %3273
  %3277 = fmul fast float %3265, 1.500000e+00
  %3278 = fmul fast float %3277, %3268
  %3279 = fmul fast float %3278, %3273
  %3280 = fmul fast float %3266, 1.500000e+00
  %3281 = fmul fast float %3280, %3268
  %3282 = fmul fast float %3281, %3273
  %3283 = fmul fast float %3267, 1.500000e+00
  %3284 = fmul fast float %3283, %3268
  %3285 = fmul fast float %3284, %3273
  %3286 = fmul fast float %3261, 1.500000e+00
  %3287 = fmul fast float %3286, %3268
  %3288 = fmul fast float %3287, %3273
  %3289 = fmul fast float %3262, 1.500000e+00
  %3290 = fmul fast float %3289, %3268
  %3291 = fmul fast float %3290, %3273
  %3292 = fmul fast float %3263, 1.500000e+00
  %3293 = fmul fast float %3292, %3268
  %3294 = fmul fast float %3293, %3273
  %3295 = fmul fast float %3257, 1.500000e+00
  %3296 = fmul fast float %3295, %3268
  %3297 = fmul fast float %3296, %3273
  %3298 = fmul fast float %3258, 1.500000e+00
  %3299 = fmul fast float %3298, %3268
  %3300 = fmul fast float %3299, %3273
  %3301 = fmul fast float %3259, 1.500000e+00
  %3302 = fmul fast float %3301, %3268
  %3303 = fmul fast float %3302, %3273
  %3304 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3274)  ; FMax(a,b)
  %3305 = call float @dx.op.dot3.f32(i32 55, float %3279, float %3282, float %3285, float %3279, float %3282, float %3285)  ; Dot3(ax,ay,az,bx,by,bz)
  %3306 = fcmp fast oeq float %3305, 0.000000e+00
  %3307 = fcmp fast oeq float %3304, 0.000000e+00
  %3308 = or i1 %3307, %3306
  br i1 %3308, label %3338, label %3309

; <label>:3309                                    ; preds = %3255
  %3310 = fsub fast float -0.000000e+00, %3285
  %3311 = fsub fast float -0.000000e+00, %3279
  %3312 = call float @dx.op.unary.f32(i32 24, float %3305)  ; Sqrt(value)
  %3313 = fdiv fast float %3312, %3304
  %3314 = fcmp fast ogt float %3313, 0x3FFB6F8900000000
  %3315 = select i1 %3314, float 0x3FFB6F8900000000, float %3313
  %3316 = fmul fast float %3315, 0x3FE8A23460000000
  %3317 = call float @dx.op.unary.f32(i32 7, float %3316)  ; Saturate(value)
  %3318 = call float @dx.op.binary.f32(i32 35, float %3315, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3319 = fmul fast float %3317, %3304
  %3320 = fmul fast float %3318, 0x3FF279A740000000
  %3321 = fadd fast float %3320, -1.000000e+00
  %3322 = call float @dx.op.dot3.f32(i32 55, float %3310, float %3311, float %3282, float %3310, float %3311, float %3282)  ; Dot3(ax,ay,az,bx,by,bz)
  %3323 = call float @dx.op.unary.f32(i32 25, float %3322)  ; Rsqrt(value)
  %3324 = fmul fast float %3323, %3310
  %3325 = fmul fast float %3323, %3311
  %3326 = fmul fast float %3323, %3282
  %3327 = fmul fast float %3321, %3321
  %3328 = fsub fast float 1.000000e+00, %3327
  %3329 = fmul fast float %3318, 0x40005F8BE0000000
  %3330 = fsub fast float 0x400C5BF8A0000000, %3329
  %3331 = fdiv fast float %3319, %3330
  %3332 = fmul fast float %3331, 0x3FEE31C3C0000000
  %3333 = fmul fast float %3332, %3328
  %3334 = fmul fast float %3318, 0x3FDACB7480000000
  %3335 = fadd fast float %3334, 0xBFD7347680000000
  %3336 = fmul fast float %3335, %3331
  %3337 = fmul fast float %3336, %3328
  br label %3338

; <label>:3338                                    ; preds = %3309, %3255
  %3339 = phi float [ %3324, %3309 ], [ 0.000000e+00, %3255 ]
  %3340 = phi float [ %3325, %3309 ], [ 0.000000e+00, %3255 ]
  %3341 = phi float [ %3326, %3309 ], [ 0.000000e+00, %3255 ]
  %3342 = phi float [ %3333, %3309 ], [ 0.000000e+00, %3255 ]
  %3343 = phi float [ %3337, %3309 ], [ 0.000000e+00, %3255 ]
  %3344 = call float @dx.op.dot3.f32(i32 55, float %3339, float %3340, float %3341, float %2287, float %2288, float %2289)  ; Dot3(ax,ay,az,bx,by,bz)
  %3345 = fmul fast float %3344, %3344
  %3346 = fmul fast float %3345, 0x3FEE471020000000
  %3347 = fadd fast float %3346, 0xBFD42F6020000000
  %3348 = fmul fast float %3304, 0x3FD20DD760000000
  %3349 = fmul fast float %3347, %3343
  %3350 = fmul fast float %3342, 0x3FDF454380000000
  %3351 = fmul fast float %3350, %3344
  %3352 = fadd fast float %3351, %3348
  %3353 = fadd fast float %3352, %3349
  %3354 = call float @dx.op.dot3.f32(i32 55, float %3339, float %3340, float %3341, float %2304, float %2305, float %2306)  ; Dot3(ax,ay,az,bx,by,bz)
  %3355 = fmul fast float %3354, 0x3FDF454380000000
  %3356 = fmul fast float %3354, %3354
  %3357 = fmul fast float %3356, 0x3FEE471020000000
  %3358 = fadd fast float %3357, 0xBFD42F6020000000
  %3359 = call float @dx.op.dot3.f32(i32 55, float %3304, float %3342, float %3343, float 0x3FD20DD760000000, float %3355, float %3358)  ; Dot3(ax,ay,az,bx,by,bz)
  %3360 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3275)  ; FMax(a,b)
  %3361 = call float @dx.op.dot3.f32(i32 55, float %3288, float %3291, float %3294, float %3288, float %3291, float %3294)  ; Dot3(ax,ay,az,bx,by,bz)
  %3362 = fcmp fast oeq float %3361, 0.000000e+00
  %3363 = fcmp fast oeq float %3360, 0.000000e+00
  %3364 = or i1 %3363, %3362
  br i1 %3364, label %3394, label %3365

; <label>:3365                                    ; preds = %3338
  %3366 = fsub fast float -0.000000e+00, %3294
  %3367 = fsub fast float -0.000000e+00, %3288
  %3368 = call float @dx.op.unary.f32(i32 24, float %3361)  ; Sqrt(value)
  %3369 = fdiv fast float %3368, %3360
  %3370 = fcmp fast ogt float %3369, 0x3FFB6F8900000000
  %3371 = select i1 %3370, float 0x3FFB6F8900000000, float %3369
  %3372 = fmul fast float %3371, 0x3FE8A23460000000
  %3373 = call float @dx.op.unary.f32(i32 7, float %3372)  ; Saturate(value)
  %3374 = call float @dx.op.binary.f32(i32 35, float %3371, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3375 = fmul fast float %3373, %3360
  %3376 = fmul fast float %3374, 0x3FF279A740000000
  %3377 = fadd fast float %3376, -1.000000e+00
  %3378 = call float @dx.op.dot3.f32(i32 55, float %3366, float %3367, float %3291, float %3366, float %3367, float %3291)  ; Dot3(ax,ay,az,bx,by,bz)
  %3379 = call float @dx.op.unary.f32(i32 25, float %3378)  ; Rsqrt(value)
  %3380 = fmul fast float %3379, %3366
  %3381 = fmul fast float %3379, %3367
  %3382 = fmul fast float %3379, %3291
  %3383 = fmul fast float %3377, %3377
  %3384 = fsub fast float 1.000000e+00, %3383
  %3385 = fmul fast float %3374, 0x40005F8BE0000000
  %3386 = fsub fast float 0x400C5BF8A0000000, %3385
  %3387 = fdiv fast float %3375, %3386
  %3388 = fmul fast float %3387, 0x3FEE31C3C0000000
  %3389 = fmul fast float %3388, %3384
  %3390 = fmul fast float %3374, 0x3FDACB7480000000
  %3391 = fadd fast float %3390, 0xBFD7347680000000
  %3392 = fmul fast float %3391, %3387
  %3393 = fmul fast float %3392, %3384
  br label %3394

; <label>:3394                                    ; preds = %3365, %3338
  %3395 = phi float [ %3380, %3365 ], [ 0.000000e+00, %3338 ]
  %3396 = phi float [ %3381, %3365 ], [ 0.000000e+00, %3338 ]
  %3397 = phi float [ %3382, %3365 ], [ 0.000000e+00, %3338 ]
  %3398 = phi float [ %3389, %3365 ], [ 0.000000e+00, %3338 ]
  %3399 = phi float [ %3393, %3365 ], [ 0.000000e+00, %3338 ]
  %3400 = call float @dx.op.dot3.f32(i32 55, float %3395, float %3396, float %3397, float %2287, float %2288, float %2289)  ; Dot3(ax,ay,az,bx,by,bz)
  %3401 = fmul fast float %3400, %3400
  %3402 = fmul fast float %3401, 0x3FEE471020000000
  %3403 = fadd fast float %3402, 0xBFD42F6020000000
  %3404 = fmul fast float %3360, 0x3FD20DD760000000
  %3405 = fmul fast float %3403, %3399
  %3406 = fmul fast float %3398, 0x3FDF454380000000
  %3407 = fmul fast float %3406, %3400
  %3408 = fadd fast float %3407, %3404
  %3409 = fadd fast float %3408, %3405
  %3410 = call float @dx.op.dot3.f32(i32 55, float %3395, float %3396, float %3397, float %2304, float %2305, float %2306)  ; Dot3(ax,ay,az,bx,by,bz)
  %3411 = fmul fast float %3410, 0x3FDF454380000000
  %3412 = fmul fast float %3410, %3410
  %3413 = fmul fast float %3412, 0x3FEE471020000000
  %3414 = fadd fast float %3413, 0xBFD42F6020000000
  %3415 = call float @dx.op.dot3.f32(i32 55, float %3360, float %3398, float %3399, float 0x3FD20DD760000000, float %3411, float %3414)  ; Dot3(ax,ay,az,bx,by,bz)
  %3416 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3276)  ; FMax(a,b)
  %3417 = call float @dx.op.dot3.f32(i32 55, float %3297, float %3300, float %3303, float %3297, float %3300, float %3303)  ; Dot3(ax,ay,az,bx,by,bz)
  %3418 = fcmp fast oeq float %3417, 0.000000e+00
  %3419 = fcmp fast oeq float %3416, 0.000000e+00
  %3420 = or i1 %3419, %3418
  br i1 %3420, label %3450, label %3421

; <label>:3421                                    ; preds = %3394
  %3422 = fsub fast float -0.000000e+00, %3303
  %3423 = fsub fast float -0.000000e+00, %3297
  %3424 = call float @dx.op.unary.f32(i32 24, float %3417)  ; Sqrt(value)
  %3425 = fdiv fast float %3424, %3416
  %3426 = fcmp fast ogt float %3425, 0x3FFB6F8900000000
  %3427 = select i1 %3426, float 0x3FFB6F8900000000, float %3425
  %3428 = fmul fast float %3427, 0x3FE8A23460000000
  %3429 = call float @dx.op.unary.f32(i32 7, float %3428)  ; Saturate(value)
  %3430 = call float @dx.op.binary.f32(i32 35, float %3427, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3431 = fmul fast float %3429, %3416
  %3432 = fmul fast float %3430, 0x3FF279A740000000
  %3433 = fadd fast float %3432, -1.000000e+00
  %3434 = call float @dx.op.dot3.f32(i32 55, float %3422, float %3423, float %3300, float %3422, float %3423, float %3300)  ; Dot3(ax,ay,az,bx,by,bz)
  %3435 = call float @dx.op.unary.f32(i32 25, float %3434)  ; Rsqrt(value)
  %3436 = fmul fast float %3435, %3422
  %3437 = fmul fast float %3435, %3423
  %3438 = fmul fast float %3435, %3300
  %3439 = fmul fast float %3433, %3433
  %3440 = fsub fast float 1.000000e+00, %3439
  %3441 = fmul fast float %3430, 0x40005F8BE0000000
  %3442 = fsub fast float 0x400C5BF8A0000000, %3441
  %3443 = fdiv fast float %3431, %3442
  %3444 = fmul fast float %3443, 0x3FEE31C3C0000000
  %3445 = fmul fast float %3444, %3440
  %3446 = fmul fast float %3430, 0x3FDACB7480000000
  %3447 = fadd fast float %3446, 0xBFD7347680000000
  %3448 = fmul fast float %3447, %3443
  %3449 = fmul fast float %3448, %3440
  br label %3450

; <label>:3450                                    ; preds = %3421, %3394
  %3451 = phi float [ %3436, %3421 ], [ 0.000000e+00, %3394 ]
  %3452 = phi float [ %3437, %3421 ], [ 0.000000e+00, %3394 ]
  %3453 = phi float [ %3438, %3421 ], [ 0.000000e+00, %3394 ]
  %3454 = phi float [ %3445, %3421 ], [ 0.000000e+00, %3394 ]
  %3455 = phi float [ %3449, %3421 ], [ 0.000000e+00, %3394 ]
  %3456 = call float @dx.op.dot3.f32(i32 55, float %3451, float %3452, float %3453, float %2287, float %2288, float %2289)  ; Dot3(ax,ay,az,bx,by,bz)
  %3457 = fmul fast float %3456, %3456
  %3458 = fmul fast float %3457, 0x3FEE471020000000
  %3459 = fadd fast float %3458, 0xBFD42F6020000000
  %3460 = fmul fast float %3416, 0x3FD20DD760000000
  %3461 = fmul fast float %3459, %3455
  %3462 = fmul fast float %3454, 0x3FDF454380000000
  %3463 = fmul fast float %3462, %3456
  %3464 = fadd fast float %3463, %3460
  %3465 = fadd fast float %3464, %3461
  %3466 = call float @dx.op.dot3.f32(i32 55, float %3451, float %3452, float %3453, float %2304, float %2305, float %2306)  ; Dot3(ax,ay,az,bx,by,bz)
  %3467 = fmul fast float %3466, 0x3FDF454380000000
  %3468 = fmul fast float %3466, %3466
  %3469 = fmul fast float %3468, 0x3FEE471020000000
  %3470 = fadd fast float %3469, 0xBFD42F6020000000
  %3471 = call float @dx.op.dot3.f32(i32 55, float %3416, float %3454, float %3455, float 0x3FD20DD760000000, float %3467, float %3470)  ; Dot3(ax,ay,az,bx,by,bz)
  %3472 = call float @dx.op.binary.f32(i32 35, float %3353, float 0.000000e+00)  ; FMax(a,b)
  %3473 = call float @dx.op.binary.f32(i32 35, float %3409, float 0.000000e+00)  ; FMax(a,b)
  %3474 = call float @dx.op.binary.f32(i32 35, float %3465, float 0.000000e+00)  ; FMax(a,b)
  %3475 = call float @dx.op.binary.f32(i32 35, float %3359, float 0.000000e+00)  ; FMax(a,b)
  %3476 = call float @dx.op.binary.f32(i32 35, float %3415, float 0.000000e+00)  ; FMax(a,b)
  %3477 = call float @dx.op.binary.f32(i32 35, float %3471, float 0.000000e+00)  ; FMax(a,b)
  %3478 = fsub fast float %2674, %3472
  %3479 = fsub fast float %2675, %3473
  %3480 = fsub fast float %2676, %3474
  %3481 = fmul fast float %3478, %2355
  %3482 = fmul fast float %3479, %2355
  %3483 = fmul fast float %3480, %2355
  %3484 = fadd fast float %3481, %3472
  %3485 = fadd fast float %3482, %3473
  %3486 = fadd fast float %3483, %3474
  %3487 = fsub fast float %2671, %3475
  %3488 = fsub fast float %2672, %3476
  %3489 = fsub fast float %2673, %3477
  %3490 = fmul fast float %3487, %2355
  %3491 = fmul fast float %3488, %2355
  %3492 = fmul fast float %3489, %2355
  %3493 = fadd fast float %3490, %3475
  %3494 = fadd fast float %3491, %3476
  %3495 = fadd fast float %3492, %3477
  br label %3496

; <label>:3496                                    ; preds = %3450, %2670
  %3497 = phi float [ %3493, %3450 ], [ %2671, %2670 ]
  %3498 = phi float [ %3494, %3450 ], [ %2672, %2670 ]
  %3499 = phi float [ %3495, %3450 ], [ %2673, %2670 ]
  %3500 = phi float [ %3484, %3450 ], [ %2674, %2670 ]
  %3501 = phi float [ %3485, %3450 ], [ %2675, %2670 ]
  %3502 = phi float [ %3486, %3450 ], [ %2676, %2670 ]
  %3503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3504 = extractvalue %dx.types.CBufRet.f32 %3503, 0
  %3505 = call float @dx.op.binary.f32(i32 36, float %2284, float %3504)  ; FMin(a,b)
  %3506 = fsub fast float 1.000000e+00, %2307
  %3507 = fmul fast float %3505, %3506
  %3508 = fsub fast float 1.000000e+00, %3507
  %3509 = bitcast float %3508 to i32
  %3510 = sub nsw i32 2129859010, %3509
  %3511 = bitcast i32 %3510 to float
  %3512 = call float @dx.op.binary.f32(i32 36, float %2285, float %3504)  ; FMin(a,b)
  %3513 = fmul fast float %3512, %3506
  %3514 = fsub fast float 1.000000e+00, %3513
  %3515 = bitcast float %3514 to i32
  %3516 = sub nsw i32 2129859010, %3515
  %3517 = bitcast i32 %3516 to float
  %3518 = call float @dx.op.binary.f32(i32 36, float %2286, float %3504)  ; FMin(a,b)
  %3519 = fmul fast float %3518, %3506
  %3520 = fsub fast float 1.000000e+00, %3519
  %3521 = bitcast float %3520 to i32
  %3522 = sub nsw i32 2129859010, %3521
  %3523 = bitcast i32 %3522 to float
  %3524 = fmul fast float %3500, %2307
  %3525 = fmul fast float %3524, %3511
  %3526 = fmul fast float %3501, %2307
  %3527 = fmul fast float %3526, %3517
  %3528 = fmul fast float %3502, %2307
  %3529 = fmul fast float %3528, %3523
  %3530 = call float @dx.op.binary.f32(i32 36, float %2290, float %3504)  ; FMin(a,b)
  %3531 = fmul fast float %3530, %3506
  %3532 = fsub fast float 1.000000e+00, %3531
  %3533 = bitcast float %3532 to i32
  %3534 = sub nsw i32 2129859010, %3533
  %3535 = bitcast i32 %3534 to float
  %3536 = call float @dx.op.binary.f32(i32 36, float %2291, float %3504)  ; FMin(a,b)
  %3537 = fmul fast float %3536, %3506
  %3538 = fsub fast float 1.000000e+00, %3537
  %3539 = bitcast float %3538 to i32
  %3540 = sub nsw i32 2129859010, %3539
  %3541 = bitcast i32 %3540 to float
  %3542 = call float @dx.op.binary.f32(i32 36, float %2296, float %3504)  ; FMin(a,b)
  %3543 = fmul fast float %3542, %3506
  %3544 = fsub fast float 1.000000e+00, %3543
  %3545 = bitcast float %3544 to i32
  %3546 = sub nsw i32 2129859010, %3545
  %3547 = bitcast i32 %3546 to float
  %3548 = fmul fast float %3497, %2307
  %3549 = fmul fast float %3548, %3535
  %3550 = fmul fast float %3498, %2307
  %3551 = fmul fast float %3550, %3541
  %3552 = fmul fast float %3499, %2307
  %3553 = fmul fast float %3552, %3547
  %3554 = call float @dx.op.dot3.f32(i32 55, float %3525, float %3527, float %3529, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3555 = select i1 %228, float 0.000000e+00, float %3525
  %3556 = select i1 %228, float %3554, float %3527
  %3557 = select i1 %228, float 0.000000e+00, float %3529
  %3558 = call float @dx.op.dot3.f32(i32 55, float %3549, float %3551, float %3553, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3559 = select i1 %228, float 0.000000e+00, float %3549
  %3560 = select i1 %228, float %3558, float %3551
  %3561 = select i1 %228, float 0.000000e+00, float %3553
  %3562 = fmul fast float %1114, %1114
  %3563 = call float @dx.op.unary.f32(i32 7, float %3562)  ; Saturate(value)
  %3564 = fmul fast float %2298, 9.843750e-01
  %3565 = fmul fast float %2293, 9.843750e-01
  %3566 = fadd fast float %3564, 7.812500e-03
  %3567 = fadd fast float %3565, 7.812500e-03
  %3568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %3566, float %3567, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3569 = extractvalue %dx.types.ResRet.f32 %3568, 0
  %3570 = extractvalue %dx.types.ResRet.f32 %3568, 1
  %3571 = extractvalue %dx.types.ResRet.f32 %3568, 2
  %3572 = extractvalue %dx.types.ResRet.f32 %3568, 3
  %3573 = fsub fast float 1.000000e+00, %3563
  %3574 = fsub fast float %3571, %3569
  %3575 = fsub fast float %3572, %3570
  %3576 = fmul fast float %3574, %3573
  %3577 = fmul fast float %3575, %3573
  %3578 = fadd fast float %3576, %3569
  %3579 = fadd fast float %3577, %3570
  %3580 = fmul fast float %3578, %2290
  %3581 = fmul fast float %3578, %2291
  %3582 = fmul fast float %3578, %2296
  %3583 = fadd fast float %3580, %3579
  %3584 = fadd fast float %3581, %3579
  %3585 = fadd fast float %3582, %3579
  %3586 = fcmp fast ogt float %1658, 0.000000e+00
  br i1 %3586, label %3587, label %3613

; <label>:3587                                    ; preds = %3496
  %3588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1658, float %2298, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3589 = extractvalue %dx.types.ResRet.f32 %3588, 0
  %3590 = extractvalue %dx.types.ResRet.f32 %3588, 1
  %3591 = extractvalue %dx.types.ResRet.f32 %3588, 2
  %3592 = fadd fast float %3589, -5.000000e-01
  %3593 = fadd fast float %3590, -5.000000e-01
  %3594 = fadd fast float %3591, -5.000000e-01
  %3595 = fsub fast float 1.000000e+00, %2290
  %3596 = fsub fast float 1.000000e+00, %2291
  %3597 = fsub fast float 1.000000e+00, %2296
  %3598 = fmul fast float %2290, 4.000000e+00
  %3599 = fmul fast float %3598, %3595
  %3600 = fmul fast float %3599, %3592
  %3601 = fmul fast float %2291, 4.000000e+00
  %3602 = fmul fast float %3601, %3596
  %3603 = fmul fast float %3602, %3593
  %3604 = fmul fast float %2296, 4.000000e+00
  %3605 = fmul fast float %3604, %3597
  %3606 = fmul fast float %3605, %3594
  %3607 = fadd fast float %3600, %3583
  %3608 = fadd fast float %3603, %3584
  %3609 = fadd fast float %3606, %3585
  %3610 = call float @dx.op.unary.f32(i32 7, float %3607)  ; Saturate(value)
  %3611 = call float @dx.op.unary.f32(i32 7, float %3608)  ; Saturate(value)
  %3612 = call float @dx.op.unary.f32(i32 7, float %3609)  ; Saturate(value)
  br label %3613

; <label>:3613                                    ; preds = %3587, %3496
  %3614 = phi float [ %3610, %3587 ], [ %3583, %3496 ]
  %3615 = phi float [ %3611, %3587 ], [ %3584, %3496 ]
  %3616 = phi float [ %3612, %3587 ], [ %3585, %3496 ]
  %3617 = call float @dx.op.binary.f32(i32 35, float %3615, float %3616)  ; FMax(a,b)
  %3618 = call float @dx.op.binary.f32(i32 35, float %3614, float %3617)  ; FMax(a,b)
  %3619 = fsub fast float 1.000000e+00, %3618
  %3620 = fmul fast float %3619, %3555
  %3621 = fmul fast float %3619, %3556
  %3622 = fmul fast float %3619, %3557
  %3623 = call float @dx.op.dot3.f32(i32 55, float %2284, float %2285, float %2286, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3624 = fcmp fast ogt float %3623, 0x3E7FF19E20000000
  %3625 = fdiv fast float 1.000000e+00, %3623
  %3626 = select i1 %3624, float %3625, float 0.000000e+00
  %3627 = fmul fast float %3626, %2284
  %3628 = fmul fast float %3626, %2285
  %3629 = fmul fast float %3626, %2286
  %3630 = fadd fast float %3627, -1.000000e+00
  %3631 = fadd fast float %3628, -1.000000e+00
  %3632 = fadd fast float %3629, -1.000000e+00
  %3633 = fmul fast float %3630, 5.000000e-01
  %3634 = fmul fast float %3631, 5.000000e-01
  %3635 = fmul fast float %3632, 5.000000e-01
  %3636 = fadd fast float %3633, 1.000000e+00
  %3637 = fadd fast float %3634, 1.000000e+00
  %3638 = fadd fast float %3635, 1.000000e+00
  %3639 = call float @dx.op.binary.f32(i32 35, float %2298, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3640 = fdiv fast float %1114, %3639
  %3641 = fcmp fast olt float %1706, 1.270000e+02
  %3642 = fcmp fast olt float %1707, 1.270000e+02
  %3643 = fcmp fast olt float %1708, 1.270000e+02
  %3644 = fmul fast float %1706, 0xBFF7154760000000
  %3645 = fmul fast float %3644, %3640
  %3646 = fmul fast float %1707, 0xBFF7154760000000
  %3647 = fmul fast float %3646, %3640
  %3648 = fmul fast float %1708, 0xBFF7154760000000
  %3649 = fmul fast float %3648, %3640
  %3650 = call float @dx.op.unary.f32(i32 21, float %3645)  ; Exp(value)
  %3651 = call float @dx.op.unary.f32(i32 21, float %3647)  ; Exp(value)
  %3652 = call float @dx.op.unary.f32(i32 21, float %3649)  ; Exp(value)
  %3653 = call float @dx.op.unary.f32(i32 7, float %3650)  ; Saturate(value)
  %3654 = call float @dx.op.unary.f32(i32 7, float %3651)  ; Saturate(value)
  %3655 = call float @dx.op.unary.f32(i32 7, float %3652)  ; Saturate(value)
  %3656 = select i1 %3641, float %3653, float 0.000000e+00
  %3657 = select i1 %3642, float %3654, float 0.000000e+00
  %3658 = select i1 %3643, float %3655, float 0.000000e+00
  %3659 = fmul fast float %3656, %3619
  %3660 = fmul fast float %3657, %3619
  %3661 = fmul fast float %3658, %3619
  %3662 = fadd fast float %3659, -1.000000e+00
  %3663 = fadd fast float %3660, -1.000000e+00
  %3664 = fadd fast float %3661, -1.000000e+00
  %3665 = fmul fast float %3614, %3559
  %3666 = fmul fast float %3615, %3560
  %3667 = fmul fast float %3616, %3561
  %3668 = fsub fast float 1.000000e+00, %2298
  %3669 = bitcast float %3668 to i32
  %3670 = sitofp i32 %3669 to float
  %3671 = fmul fast float %3670, 5.000000e+00
  %3672 = fadd fast float %3671, 0xC1EFBF8940000000
  %3673 = fptosi float %3672 to i32
  %3674 = bitcast i32 %3673 to float
  %3675 = fmul fast float %3674, %1657
  %3676 = fmul fast float %3555, %3675
  %3677 = fmul fast float %3676, %3619
  %3678 = fmul fast float %3677, %3636
  %3679 = fmul fast float %3556, %3675
  %3680 = fmul fast float %3679, %3619
  %3681 = fmul fast float %3680, %3637
  %3682 = fmul fast float %3557, %3675
  %3683 = fmul fast float %3682, %3619
  %3684 = fmul fast float %3683, %3638
  %3685 = fmul fast float %3620, %1678
  %3686 = fmul fast float %3621, %1678
  %3687 = fmul fast float %3622, %1678
  %3688 = fadd fast float %3665, %1659
  %3689 = fadd fast float %3688, %3678
  %3690 = fmul fast float %3689, %1678
  %3691 = fadd fast float %3666, %1660
  %3692 = fadd fast float %3691, %3681
  %3693 = fmul fast float %3692, %1678
  %3694 = fadd fast float %3667, %1661
  %3695 = fadd fast float %3694, %3684
  %3696 = fmul fast float %3695, %1678
  %3697 = bitcast i32 %2310 to float
  %3698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3699 = extractvalue %dx.types.CBufRet.f32 %3698, 3
  %3700 = fcmp fast oeq float %3699, 0.000000e+00
  br i1 %3700, label %4776, label %3701

; <label>:3701                                    ; preds = %3613
  %3702 = extractvalue %dx.types.CBufRet.f32 %3698, 0
  %3703 = extractvalue %dx.types.CBufRet.f32 %3698, 1
  %3704 = extractvalue %dx.types.CBufRet.f32 %3698, 2
  %3705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3706 = extractvalue %dx.types.CBufRet.f32 %3705, 0
  %3707 = extractvalue %dx.types.CBufRet.f32 %3705, 1
  %3708 = extractvalue %dx.types.CBufRet.f32 %3705, 2
  %3709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3710 = extractvalue %dx.types.CBufRet.f32 %3709, 0
  %3711 = extractvalue %dx.types.CBufRet.f32 %3709, 1
  %3712 = call float @dx.op.dot3.f32(i32 55, float %3706, float %3707, float %3708, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3713 = select i1 %228, float %3710, float %3706
  %3714 = select i1 %228, float %3712, float %3707
  %3715 = select i1 %228, float %3711, float %3708
  %3716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3717 = extractvalue %dx.types.CBufRet.f32 %3716, 2
  %3718 = fmul fast float %3717, %70
  %3719 = fmul fast float %3717, %71
  %3720 = fmul fast float %3717, %72
  %3721 = fadd fast float %3718, %137
  %3722 = fadd fast float %3719, %138
  %3723 = fadd fast float %3720, %139
  %3724 = fcmp fast olt float %3699, 0.000000e+00
  br i1 %3724, label %4346, label %3725

; <label>:3725                                    ; preds = %3701
  %3726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3727 = extractvalue %dx.types.CBufRet.f32 %3726, 0
  %3728 = extractvalue %dx.types.CBufRet.f32 %3726, 1
  %3729 = extractvalue %dx.types.CBufRet.f32 %3726, 2
  %3730 = extractvalue %dx.types.CBufRet.f32 %3726, 3
  %3731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3732 = extractvalue %dx.types.CBufRet.f32 %3731, 0
  %3733 = extractvalue %dx.types.CBufRet.f32 %3731, 1
  %3734 = extractvalue %dx.types.CBufRet.f32 %3731, 2
  %3735 = extractvalue %dx.types.CBufRet.f32 %3731, 3
  %3736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3737 = extractvalue %dx.types.CBufRet.f32 %3736, 0
  %3738 = extractvalue %dx.types.CBufRet.f32 %3736, 1
  %3739 = extractvalue %dx.types.CBufRet.f32 %3736, 2
  %3740 = extractvalue %dx.types.CBufRet.f32 %3736, 3
  %3741 = fmul fast float %3727, %3721
  %3742 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %3728, float %3741)  ; FMad(a,b,c)
  %3743 = call float @dx.op.tertiary.f32(i32 46, float %3723, float %3729, float %3742)  ; FMad(a,b,c)
  %3744 = fadd fast float %3743, %3730
  %3745 = fmul fast float %3732, %3721
  %3746 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %3733, float %3745)  ; FMad(a,b,c)
  %3747 = call float @dx.op.tertiary.f32(i32 46, float %3723, float %3734, float %3746)  ; FMad(a,b,c)
  %3748 = fadd fast float %3747, %3735
  %3749 = fmul fast float %3737, %3721
  %3750 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %3738, float %3749)  ; FMad(a,b,c)
  %3751 = call float @dx.op.tertiary.f32(i32 46, float %3723, float %3739, float %3750)  ; FMad(a,b,c)
  %3752 = fadd fast float %3751, %3740
  %3753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3754 = extractvalue %dx.types.CBufRet.f32 %3753, 0
  %3755 = extractvalue %dx.types.CBufRet.f32 %3753, 1
  %3756 = extractvalue %dx.types.CBufRet.f32 %3753, 3
  %3757 = fmul fast float %3756, %3744
  %3758 = fmul fast float %3756, %3748
  %3759 = fadd fast float %3757, %3754
  %3760 = fadd fast float %3758, %3755
  %3761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3762 = extractvalue %dx.types.CBufRet.f32 %3761, 0
  %3763 = extractvalue %dx.types.CBufRet.f32 %3761, 1
  %3764 = extractvalue %dx.types.CBufRet.f32 %3761, 3
  %3765 = fmul fast float %3764, %3744
  %3766 = fmul fast float %3764, %3748
  %3767 = fadd fast float %3765, %3762
  %3768 = fadd fast float %3766, %3763
  %3769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3770 = extractvalue %dx.types.CBufRet.f32 %3769, 1
  %3771 = fsub fast float %3770, %3752
  %3772 = extractvalue %dx.types.CBufRet.f32 %3769, 2
  %3773 = fmul fast float %3771, %3772
  %3774 = fsub fast float 1.000000e+00, %3773
  %3775 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  %3776 = extractvalue %dx.types.CBufRet.f32 %3761, 2
  %3777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3778 = extractvalue %dx.types.CBufRet.f32 %3777, 2
  %3779 = fadd fast float %3778, %3776
  %3780 = fcmp fast ogt float %3779, 0.000000e+00
  br i1 %3780, label %3781, label %3805

; <label>:3781                                    ; preds = %3725
  %3782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3783 = extractvalue %dx.types.CBufRet.f32 %3782, 0
  %3784 = extractvalue %dx.types.CBufRet.f32 %3782, 1
  %3785 = fsub fast float %3767, %3783
  %3786 = fsub fast float %3768, %3784
  %3787 = fcmp fast olt float %3785, 0.000000e+00
  %3788 = fcmp fast olt float %3786, 0.000000e+00
  %3789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3790 = extractvalue %dx.types.CBufRet.f32 %3789, 0
  %3791 = extractvalue %dx.types.CBufRet.f32 %3789, 1
  %3792 = extractvalue %dx.types.CBufRet.f32 %3789, 2
  %3793 = extractvalue %dx.types.CBufRet.f32 %3789, 3
  %3794 = select i1 %3787, float %3790, float %3792
  %3795 = select i1 %3788, float %3791, float %3793
  %3796 = fmul fast float %3794, %3785
  %3797 = fmul fast float %3795, %3786
  %3798 = call float @dx.op.unary.f32(i32 6, float %3796)  ; FAbs(value)
  %3799 = call float @dx.op.unary.f32(i32 6, float %3797)  ; FAbs(value)
  %3800 = extractvalue %dx.types.CBufRet.f32 %3716, 0
  %3801 = call float @dx.op.binary.f32(i32 35, float %3798, float %3799)  ; FMax(a,b)
  %3802 = fsub fast float %3800, %3801
  %3803 = call float @dx.op.unary.f32(i32 7, float %3802)  ; Saturate(value)
  %3804 = fmul fast float %3803, %3775
  br label %3805

; <label>:3805                                    ; preds = %3781, %3725
  %3806 = phi float [ %3804, %3781 ], [ 0.000000e+00, %3725 ]
  %3807 = extractvalue %dx.types.CBufRet.f32 %3753, 2
  %3808 = extractvalue %dx.types.CBufRet.f32 %3777, 1
  %3809 = fadd fast float %3808, %3807
  %3810 = fcmp fast ogt float %3809, 0.000000e+00
  %3811 = extractvalue %dx.types.CBufRet.f32 %3716, 0
  br i1 %3810, label %3812, label %3835

; <label>:3812                                    ; preds = %3805
  %3813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3814 = extractvalue %dx.types.CBufRet.f32 %3813, 0
  %3815 = extractvalue %dx.types.CBufRet.f32 %3813, 1
  %3816 = fsub fast float %3759, %3814
  %3817 = fsub fast float %3760, %3815
  %3818 = fcmp fast olt float %3816, 0.000000e+00
  %3819 = fcmp fast olt float %3817, 0.000000e+00
  %3820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3821 = extractvalue %dx.types.CBufRet.f32 %3820, 0
  %3822 = extractvalue %dx.types.CBufRet.f32 %3820, 1
  %3823 = extractvalue %dx.types.CBufRet.f32 %3820, 2
  %3824 = extractvalue %dx.types.CBufRet.f32 %3820, 3
  %3825 = select i1 %3818, float %3821, float %3823
  %3826 = select i1 %3819, float %3822, float %3824
  %3827 = fmul fast float %3825, %3816
  %3828 = fmul fast float %3826, %3817
  %3829 = call float @dx.op.unary.f32(i32 6, float %3827)  ; FAbs(value)
  %3830 = call float @dx.op.unary.f32(i32 6, float %3828)  ; FAbs(value)
  %3831 = call float @dx.op.binary.f32(i32 35, float %3829, float %3830)  ; FMax(a,b)
  %3832 = fsub fast float %3811, %3831
  %3833 = call float @dx.op.unary.f32(i32 7, float %3832)  ; Saturate(value)
  %3834 = fmul fast float %3833, %3775
  br label %3835

; <label>:3835                                    ; preds = %3812, %3805
  %3836 = phi float [ %3834, %3812 ], [ 0.000000e+00, %3805 ]
  %3837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3838 = extractvalue %dx.types.CBufRet.f32 %3837, 1
  %3839 = call float @dx.op.unary.f32(i32 7, float %3838)  ; Saturate(value)
  %3840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3841 = extractvalue %dx.types.CBufRet.f32 %3840, 0
  %3842 = extractvalue %dx.types.CBufRet.f32 %3840, 1
  %3843 = fsub fast float %3744, %3841
  %3844 = fsub fast float %3748, %3842
  %3845 = fcmp fast olt float %3843, 0.000000e+00
  %3846 = fcmp fast olt float %3844, 0.000000e+00
  %3847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3848 = extractvalue %dx.types.CBufRet.f32 %3847, 0
  %3849 = extractvalue %dx.types.CBufRet.f32 %3847, 1
  %3850 = extractvalue %dx.types.CBufRet.f32 %3847, 2
  %3851 = extractvalue %dx.types.CBufRet.f32 %3847, 3
  %3852 = select i1 %3845, float %3848, float %3850
  %3853 = select i1 %3846, float %3849, float %3851
  %3854 = fmul fast float %3852, %3843
  %3855 = fmul fast float %3853, %3844
  %3856 = call float @dx.op.unary.f32(i32 6, float %3854)  ; FAbs(value)
  %3857 = call float @dx.op.unary.f32(i32 6, float %3855)  ; FAbs(value)
  %3858 = call float @dx.op.binary.f32(i32 35, float %3856, float %3857)  ; FMax(a,b)
  %3859 = fsub fast float %3811, %3858
  %3860 = call float @dx.op.unary.f32(i32 7, float %3859)  ; Saturate(value)
  %3861 = call float @dx.op.binary.f32(i32 36, float %3860, float %3839)  ; FMin(a,b)
  %3862 = fmul fast float %3861, %3775
  %3863 = fsub fast float %3836, %3862
  %3864 = fsub fast float %3806, %3836
  %3865 = fsub fast float %3864, %3862
  %3866 = call float @dx.op.binary.f32(i32 35, float %3836, float %3806)  ; FMax(a,b)
  %3867 = call float @dx.op.binary.f32(i32 35, float %3862, float %3866)  ; FMax(a,b)
  %3868 = fcmp fast olt float %3867, 1.000000e+00
  br i1 %3868, label %3869, label %4267, !dx.controlflow.hints !105

; <label>:3869                                    ; preds = %3835
  %3870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3871 = extractvalue %dx.types.CBufRet.f32 %3870, 0
  %3872 = fcmp fast une float %3871, 0.000000e+00
  br i1 %3872, label %3873, label %4267, !dx.controlflow.hints !106

; <label>:3873                                    ; preds = %3869
  %3874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3875 = extractvalue %dx.types.CBufRet.f32 %3874, 0
  %3876 = extractvalue %dx.types.CBufRet.f32 %3874, 1
  %3877 = extractvalue %dx.types.CBufRet.f32 %3874, 2
  %3878 = extractvalue %dx.types.CBufRet.f32 %3874, 3
  %3879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3880 = extractvalue %dx.types.CBufRet.f32 %3879, 0
  %3881 = extractvalue %dx.types.CBufRet.f32 %3879, 1
  %3882 = extractvalue %dx.types.CBufRet.f32 %3879, 2
  %3883 = extractvalue %dx.types.CBufRet.f32 %3879, 3
  %3884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3885 = extractvalue %dx.types.CBufRet.f32 %3884, 0
  %3886 = extractvalue %dx.types.CBufRet.f32 %3884, 1
  %3887 = extractvalue %dx.types.CBufRet.f32 %3884, 2
  %3888 = extractvalue %dx.types.CBufRet.f32 %3884, 3
  %3889 = fmul fast float %3875, %3721
  %3890 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %3876, float %3889)  ; FMad(a,b,c)
  %3891 = call float @dx.op.tertiary.f32(i32 46, float %3723, float %3877, float %3890)  ; FMad(a,b,c)
  %3892 = fadd fast float %3891, %3878
  %3893 = fmul fast float %3880, %3721
  %3894 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %3881, float %3893)  ; FMad(a,b,c)
  %3895 = call float @dx.op.tertiary.f32(i32 46, float %3723, float %3882, float %3894)  ; FMad(a,b,c)
  %3896 = fadd fast float %3895, %3883
  %3897 = fmul fast float %3885, %3721
  %3898 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %3886, float %3897)  ; FMad(a,b,c)
  %3899 = call float @dx.op.tertiary.f32(i32 46, float %3723, float %3887, float %3898)  ; FMad(a,b,c)
  %3900 = fadd fast float %3899, %3888
  %3901 = fcmp fast oge float %3892, 1.000000e+00
  %3902 = fcmp fast oge float %3896, 1.000000e+00
  %3903 = or i1 %3901, %3902
  %3904 = fcmp fast olt float %3892, 0.000000e+00
  %3905 = fcmp fast olt float %3896, 0.000000e+00
  %3906 = or i1 %3904, %3905
  %3907 = or i1 %3903, %3906
  br i1 %3907, label %4267, label %3908, !dx.controlflow.hints !107

; <label>:3908                                    ; preds = %3873
  %3909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3910 = extractvalue %dx.types.CBufRet.f32 %3909, 0
  %3911 = extractvalue %dx.types.CBufRet.f32 %3909, 1
  %3912 = extractvalue %dx.types.CBufRet.f32 %3909, 2
  %3913 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3914 = extractvalue %dx.types.CBufRet.i32 %3913, 2
  %3915 = uitofp i32 %3914 to float
  %3916 = extractvalue %dx.types.CBufRet.i32 %3913, 3
  %3917 = uitofp i32 %3916 to float
  %3918 = extractvalue %dx.types.CBufRet.f32 %3909, 3
  %3919 = fmul fast float %3918, 2.000000e+00
  %3920 = fsub fast float %3892, %3910
  %3921 = fsub fast float %3896, %3911
  %3922 = fmul fast float %3919, %3920
  %3923 = fmul fast float %3919, %3921
  %3924 = fdiv fast float 1.000000e+00, %3704
  %3925 = fmul fast float %3923, %3924
  %3926 = call float @dx.op.unary.f32(i32 6, float %3925)  ; FAbs(value)
  %3927 = fmul fast float %3912, %3723
  %3928 = fmul fast float %3927, %3919
  %3929 = call float @dx.op.unary.f32(i32 6, float %3928)  ; FAbs(value)
  %3930 = call float @dx.op.unary.f32(i32 6, float %3922)  ; FAbs(value)
  %3931 = call float @dx.op.binary.f32(i32 35, float %3929, float %3926)  ; FMax(a,b)
  %3932 = call float @dx.op.binary.f32(i32 35, float %3930, float %3931)  ; FMax(a,b)
  %3933 = fmul fast float %3932, 2.000000e+00
  %3934 = call float @dx.op.unary.f32(i32 23, float %3933)  ; Log(value)
  %3935 = call float @dx.op.binary.f32(i32 35, float %3934, float %3915)  ; FMax(a,b)
  %3936 = call float @dx.op.unary.f32(i32 22, float %3935)  ; Frc(value)
  %3937 = fadd fast float %3936, 0xBFEA666660000000
  %3938 = fmul fast float %3937, 8.000000e+00
  %3939 = call float @dx.op.unary.f32(i32 7, float %3938)  ; Saturate(value)
  %3940 = call float @dx.op.unary.f32(i32 27, float %3935)  ; Round_ni(value)
  %3941 = fadd fast float %3940, %3939
  %3942 = call float @dx.op.binary.f32(i32 36, float %3941, float %3917)  ; FMin(a,b)
  %3943 = call float @dx.op.unary.f32(i32 27, float %3942)  ; Round_ni(value)
  %3944 = fsub fast float -0.000000e+00, %3943
  %3945 = call float @dx.op.unary.f32(i32 21, float %3944)  ; Exp(value)
  %3946 = fmul fast float %3945, %3919
  %3947 = fmul fast float %3946, %3892
  %3948 = fmul fast float %3946, %3896
  %3949 = fmul fast float %3947, 2.500000e-01
  %3950 = fmul fast float %3948, 2.500000e-01
  %3951 = fadd fast float %3949, 5.000000e-01
  %3952 = fadd fast float %3950, 5.000000e-01
  %3953 = fsub fast float %3917, %3915
  %3954 = fptoui float %3953 to i32
  %3955 = add i32 %3954, 320
  %3956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %3955)  ; CBufferLoadLegacy(handle,regIndex)
  %3957 = extractvalue %dx.types.CBufRet.f32 %3956, 0
  %3958 = extractvalue %dx.types.CBufRet.f32 %3956, 1
  %3959 = fcmp fast une float %3942, %3917
  %3960 = fsub fast float %3892, %3957
  %3961 = fsub fast float %3896, %3958
  %3962 = call float @dx.op.unary.f32(i32 6, float %3960)  ; FAbs(value)
  %3963 = call float @dx.op.unary.f32(i32 6, float %3961)  ; FAbs(value)
  %3964 = fmul fast float %3962, %3946
  %3965 = fmul fast float %3963, %3946
  %3966 = fcmp fast olt float %3964, 1.000000e+00
  %3967 = fcmp fast olt float %3965, 1.000000e+00
  %3968 = and i1 %3966, %3967
  %3969 = or i1 %3959, %3968
  br i1 %3969, label %3970, label %4267, !dx.controlflow.hints !108

; <label>:3970                                    ; preds = %3908
  %3971 = fmul fast float %3948, 5.000000e-01
  %3972 = fmul fast float %3947, 5.000000e-01
  %3973 = fadd fast float %3971, 5.000000e-01
  %3974 = fadd fast float %3972, 5.000000e-01
  %3975 = sitofp i32 %3914 to float
  %3976 = fsub fast float %3942, %3975
  %3977 = call float @dx.op.unary.f32(i32 27, float %3976)  ; Round_ni(value)
  %3978 = call float @dx.op.unary.f32(i32 22, float %3942)  ; Frc(value)
  %3979 = call float @dx.op.unary.f32(i32 22, float %3974)  ; Frc(value)
  %3980 = call float @dx.op.unary.f32(i32 22, float %3973)  ; Frc(value)
  %3981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %3979, float %3980, float %3977, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3982 = extractvalue %dx.types.ResRet.f32 %3981, 0
  %3983 = extractvalue %dx.types.ResRet.f32 %3981, 1
  %3984 = extractvalue %dx.types.ResRet.f32 %3981, 2
  %3985 = extractvalue %dx.types.ResRet.f32 %3981, 3
  %3986 = fcmp fast ogt float %3978, 0.000000e+00
  br i1 %3986, label %3987, label %4008, !dx.controlflow.hints !109

; <label>:3987                                    ; preds = %3970
  %3988 = fadd fast float %3977, 1.000000e+00
  %3989 = call float @dx.op.unary.f32(i32 22, float %3951)  ; Frc(value)
  %3990 = call float @dx.op.unary.f32(i32 22, float %3952)  ; Frc(value)
  %3991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %3989, float %3990, float %3988, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3992 = extractvalue %dx.types.ResRet.f32 %3991, 0
  %3993 = extractvalue %dx.types.ResRet.f32 %3991, 1
  %3994 = extractvalue %dx.types.ResRet.f32 %3991, 2
  %3995 = extractvalue %dx.types.ResRet.f32 %3991, 3
  %3996 = fsub fast float %3992, %3982
  %3997 = fsub fast float %3993, %3983
  %3998 = fsub fast float %3994, %3984
  %3999 = fsub fast float %3995, %3985
  %4000 = fmul fast float %3996, %3978
  %4001 = fmul fast float %3997, %3978
  %4002 = fmul fast float %3998, %3978
  %4003 = fmul fast float %3999, %3978
  %4004 = fadd fast float %4000, %3982
  %4005 = fadd fast float %4001, %3983
  %4006 = fadd fast float %4002, %3984
  %4007 = fadd fast float %4003, %3985
  br label %4008

; <label>:4008                                    ; preds = %3987, %3970
  %4009 = phi float [ %4004, %3987 ], [ %3982, %3970 ]
  %4010 = phi float [ %4005, %3987 ], [ %3983, %3970 ]
  %4011 = phi float [ %4006, %3987 ], [ %3984, %3970 ]
  %4012 = phi float [ %4007, %3987 ], [ %3985, %3970 ]
  %4013 = fadd fast float %4009, -5.000000e-01
  %4014 = fadd fast float %4011, -5.000000e-01
  %4015 = fmul fast float %4013, 0xBFD5555560000000
  %4016 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4014, float %4015)  ; FMad(a,b,c)
  %4017 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4010, float 0.000000e+00)  ; FMad(a,b,c)
  %4018 = fadd fast float %4017, %4012
  %4019 = fmul fast float %4013, -7.500000e-01
  %4020 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4014, float %4019)  ; FMad(a,b,c)
  %4021 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4010, float 0.000000e+00)  ; FMad(a,b,c)
  %4022 = fadd fast float %4021, %4012
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  %4025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.f32 %4025, 0
  %4027 = extractvalue %dx.types.CBufRet.f32 %4025, 1
  %4028 = extractvalue %dx.types.CBufRet.f32 %4025, 2
  %4029 = extractvalue %dx.types.CBufRet.f32 %4025, 3
  %4030 = fsub fast float %4026, %4016
  %4031 = fsub fast float %4027, %4018
  %4032 = fsub fast float %4028, %4020
  %4033 = fsub fast float %4029, %4022
  %4034 = fmul fast float %4030, %4024
  %4035 = fmul fast float %4031, %4024
  %4036 = fmul fast float %4032, %4024
  %4037 = fmul fast float %4033, %4024
  %4038 = fadd fast float %4034, %4016
  %4039 = fadd fast float %4035, %4018
  %4040 = fadd fast float %4036, %4020
  %4041 = fadd fast float %4037, %4022
  %4042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4043 = extractvalue %dx.types.ResRet.i32 %4042, 0
  %4044 = and i32 %4043, 536870911
  %4045 = uitofp i32 %4044 to float
  %4046 = fmul fast float %4045, %3892
  %4047 = fmul fast float %4045, %3896
  %4048 = fptoui float %4046 to i32
  %4049 = fptoui float %4047 to i32
  %4050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.i32 %4050, 0
  %4052 = and i32 %4051, 31
  %4053 = lshr i32 %4048, %4052
  %4054 = lshr i32 %4049, %4052
  %4055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4056 = extractvalue %dx.types.ResRet.i32 %4055, 0
  %4057 = and i32 %4056, 31
  %4058 = shl i32 1, %4057
  %4059 = call i32 @dx.op.binary.i32(i32 40, i32 %4058, i32 4)  ; UMin(a,b)
  %4060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4061 = extractvalue %dx.types.ResRet.i32 %4060, 0
  %4062 = extractvalue %dx.types.ResRet.i32 %4060, 1
  %4063 = icmp eq i32 %4059, 0
  br i1 %4063, label %4105, label %4064

; <label>:4064                                    ; preds = %4008
  br label %4065

; <label>:4065                                    ; preds = %4093, %4064
  %4066 = phi i32 [ %4096, %4093 ], [ 0, %4064 ]
  %4067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4068 = extractvalue %dx.types.ResRet.i32 %4067, 0
  %4069 = lshr i32 %4068, 16
  %4070 = and i32 %4069, 31
  %4071 = shl i32 %4054, %4070
  %4072 = add i32 %4071, %4053
  %4073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4074 = extractvalue %dx.types.ResRet.i32 %4073, 0
  %4075 = and i32 %4074, 31
  %4076 = shl i32 %4072, %4075
  %4077 = add i32 %4076, %4066
  %4078 = shl i32 %4077, 2
  %4079 = add i32 %4078, 32
  %4080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4079, i32 undef)  ; BufferLoad(srv,index,wot)
  %4081 = extractvalue %dx.types.ResRet.i32 %4080, 0
  %4082 = icmp slt i32 %4081, 0
  %4083 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %4066
  %4084 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4066
  %4085 = bitcast float* %4083 to i32*
  %4086 = bitcast float* %4084 to i32*
  br i1 %4082, label %4087, label %4093

; <label>:4087                                    ; preds = %4065
  %4088 = and i32 %4081, 1073741823
  %4089 = add nuw nsw i32 %4088, 20
  %4090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4089, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.i32 %4090, 0
  %4092 = extractvalue %dx.types.ResRet.i32 %4090, 1
  br label %4093

; <label>:4093                                    ; preds = %4087, %4065
  %4094 = phi i32 [ %4091, %4087 ], [ %4061, %4065 ]
  %4095 = phi i32 [ %4092, %4087 ], [ %4062, %4065 ]
  store i32 %4094, i32* %4085, align 4
  store i32 %4095, i32* %4086, align 4
  %4096 = add nuw i32 %4066, 1
  %4097 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.i32 %4097, 2
  %4099 = icmp eq i32 %4098, 0
  %4100 = icmp ugt i32 %4081, -1073741825
  %4101 = and i1 %4100, %4099
  %4102 = icmp ult i32 %4096, %4059
  %4103 = and i1 %4101, %4102
  br i1 %4103, label %4065, label %4104

; <label>:4104                                    ; preds = %4093
  br label %4105

; <label>:4105                                    ; preds = %4104, %4008
  %4106 = phi i32 [ 0, %4008 ], [ %4096, %4104 ]
  %4107 = extractvalue %dx.types.CBufRet.f32 %3870, 2
  %4108 = fptoui float %4107 to i32
  %4109 = icmp eq i32 %4108, 0
  br i1 %4109, label %4161, label %4110

; <label>:4110                                    ; preds = %4105
  br label %4111

; <label>:4111                                    ; preds = %4156, %4110
  %4112 = phi i32 [ %4157, %4156 ], [ %4106, %4110 ]
  %4113 = phi i32 [ %4158, %4156 ], [ 0, %4110 ]
  %4114 = lshr i32 %4113, 2
  %4115 = and i32 %4113, 3
  %4116 = add nuw nsw i32 %4114, 83
  %4117 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 %4116)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.i32 %4117, 0
  %4119 = extractvalue %dx.types.CBufRet.i32 %4117, 1
  %4120 = extractvalue %dx.types.CBufRet.i32 %4117, 2
  %4121 = extractvalue %dx.types.CBufRet.i32 %4117, 3
  %4122 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 0
  store i32 %4118, i32* %4122, align 4
  %4123 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 1
  store i32 %4119, i32* %4123, align 4
  %4124 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 2
  store i32 %4120, i32* %4124, align 4
  %4125 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 3
  store i32 %4121, i32* %4125, align 4
  %4126 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 %4115
  %4127 = load i32, i32* %4126, align 4, !tbaa !110, !noalias !114
  %4128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4129 = extractvalue %dx.types.ResRet.i32 %4128, 0
  %4130 = lshr i32 %4129, 16
  %4131 = and i32 %4130, 31
  %4132 = shl i32 %4054, %4131
  %4133 = add i32 %4132, %4053
  %4134 = shl i32 %4133, 2
  %4135 = add i32 %4134, %4127
  %4136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4135, i32 undef)  ; BufferLoad(srv,index,wot)
  %4137 = extractvalue %dx.types.ResRet.i32 %4136, 0
  %4138 = icmp eq i32 %4137, 0
  br i1 %4138, label %4156, label %4139

; <label>:4139                                    ; preds = %4111
  %4140 = icmp slt i32 %4137, 0
  %4141 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %4112
  %4142 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4112
  %4143 = bitcast float* %4141 to i32*
  %4144 = bitcast float* %4142 to i32*
  br i1 %4140, label %4145, label %4152

; <label>:4145                                    ; preds = %4139
  %4146 = and i32 %4137, 1073741823
  %4147 = add i32 %4127, 20
  %4148 = add i32 %4147, %4146
  %4149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4148, i32 undef)  ; BufferLoad(srv,index,wot)
  %4150 = extractvalue %dx.types.ResRet.i32 %4149, 0
  %4151 = extractvalue %dx.types.ResRet.i32 %4149, 1
  br label %4152

; <label>:4152                                    ; preds = %4145, %4139
  %4153 = phi i32 [ %4150, %4145 ], [ %4061, %4139 ]
  %4154 = phi i32 [ %4151, %4145 ], [ %4062, %4139 ]
  store i32 %4153, i32* %4143, align 4
  store i32 %4154, i32* %4144, align 4
  %4155 = add i32 %4112, 1
  br label %4156

; <label>:4156                                    ; preds = %4152, %4111
  %4157 = phi i32 [ %4112, %4111 ], [ %4155, %4152 ]
  %4158 = add nuw i32 %4113, 1
  %4159 = icmp eq i32 %4158, %4108
  br i1 %4159, label %4160, label %4111

; <label>:4160                                    ; preds = %4156
  br label %4161

; <label>:4161                                    ; preds = %4160, %4105
  %4162 = phi i32 [ %4106, %4105 ], [ %4157, %4160 ]
  %4163 = icmp eq i32 %4162, 1
  %4164 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 0
  %4165 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  br i1 %4163, label %4166, label %4169

; <label>:4166                                    ; preds = %4161
  %4167 = load float, float* %4164, align 4
  %4168 = load float, float* %4165, align 4
  br label %4196

; <label>:4169                                    ; preds = %4161
  %4170 = load float, float* %4164, align 4
  %4171 = load float, float* %4165, align 4
  %4172 = fdiv fast float 1.000000e+00, %4171
  %4173 = fsub fast float %4170, %4172
  %4174 = icmp ugt i32 %4162, 1
  br i1 %4174, label %4175, label %4191

; <label>:4175                                    ; preds = %4169
  br label %4176

; <label>:4176                                    ; preds = %4176, %4175
  %4177 = phi float [ %4186, %4176 ], [ %4173, %4175 ]
  %4178 = phi float [ %4187, %4176 ], [ %4170, %4175 ]
  %4179 = phi i32 [ %4188, %4176 ], [ 1, %4175 ]
  %4180 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %4179
  %4181 = load float, float* %4180, align 4
  %4182 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4179
  %4183 = load float, float* %4182, align 4
  %4184 = fdiv fast float 1.000000e+00, %4183
  %4185 = fsub fast float %4181, %4184
  %4186 = call float @dx.op.binary.f32(i32 36, float %4177, float %4185)  ; FMin(a,b)
  %4187 = call float @dx.op.binary.f32(i32 35, float %4178, float %4181)  ; FMax(a,b)
  %4188 = add nuw i32 %4179, 1
  %4189 = icmp eq i32 %4188, %4162
  br i1 %4189, label %4190, label %4176

; <label>:4190                                    ; preds = %4176
  br label %4191

; <label>:4191                                    ; preds = %4190, %4169
  %4192 = phi float [ %4173, %4169 ], [ %4186, %4190 ]
  %4193 = phi float [ %4170, %4169 ], [ %4187, %4190 ]
  %4194 = fsub fast float %4193, %4192
  %4195 = fdiv fast float 1.000000e+00, %4194
  br label %4196

; <label>:4196                                    ; preds = %4191, %4166
  %4197 = phi float [ %4167, %4166 ], [ %4193, %4191 ]
  %4198 = phi float [ %4168, %4166 ], [ %4195, %4191 ]
  %4199 = fadd fast float %3900, %4197
  %4200 = fmul fast float %4199, %4198
  %4201 = call float @dx.op.unary.f32(i32 7, float %4200)  ; Saturate(value)
  %4202 = fmul fast float %4201, 2.000000e+00
  %4203 = fsub fast float 1.000000e+00, %4202
  %4204 = fmul fast float %4038, %4038
  %4205 = fsub fast float %4039, %4204
  %4206 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4205)  ; FMax(a,b)
  %4207 = fdiv fast float 1.000000e+00, %4206
  %4208 = fmul fast float %4039, %4038
  %4209 = fsub fast float %4040, %4208
  %4210 = fsub fast float %4203, %4038
  %4211 = fmul fast float %4203, %4203
  %4212 = fsub fast float %4211, %4039
  %4213 = fmul fast float %4207, %4209
  %4214 = fmul fast float %4213, %4210
  %4215 = fsub fast float %4212, %4214
  %4216 = fmul fast float %4039, %4039
  %4217 = fsub fast float %4041, %4216
  %4218 = fmul fast float %4209, %4209
  %4219 = fmul fast float %4218, %4207
  %4220 = fsub fast float %4217, %4219
  %4221 = fdiv fast float %4215, %4220
  %4222 = fmul fast float %4221, %4209
  %4223 = fsub fast float %4210, %4222
  %4224 = fmul fast float %4223, %4207
  %4225 = fmul fast float %4224, %4038
  %4226 = fsub fast float 1.000000e+00, %4225
  %4227 = fmul fast float %4221, %4039
  %4228 = fsub fast float %4226, %4227
  %4229 = fmul fast float %4224, %4224
  %4230 = fmul fast float %4221, 4.000000e+00
  %4231 = fmul fast float %4230, %4228
  %4232 = fsub fast float %4229, %4231
  %4233 = call float @dx.op.unary.f32(i32 24, float %4232)  ; Sqrt(value)
  %4234 = fcmp fast oge float %4224, 0.000000e+00
  %4235 = fsub fast float -0.000000e+00, %4233
  %4236 = select i1 %4234, float %4235, float %4233
  %4237 = fsub fast float %4236, %4224
  %4238 = fdiv fast float %4237, %4221
  %4239 = fdiv fast float %4228, %4237
  %4240 = fmul fast float %4238, 5.000000e-01
  %4241 = fmul fast float %4239, 2.000000e+00
  %4242 = select i1 %4234, float %4240, float %4241
  %4243 = select i1 %4234, float %4241, float %4240
  %4244 = call float @dx.op.binary.f32(i32 35, float %4242, float %4243)  ; FMax(a,b)
  %4245 = call float @dx.op.binary.f32(i32 36, float %4242, float %4243)  ; FMin(a,b)
  %4246 = fcmp fast ogt float %4203, %4244
  %4247 = fsub fast float %4203, %4245
  %4248 = fsub fast float %4203, %4244
  %4249 = fsub fast float %4244, %4245
  %4250 = select i1 %4246, float %4248, float %4249
  %4251 = fmul float %4247, %4250
  %4252 = select i1 %4246, float %4245, float %4203
  %4253 = fcmp fast ogt float %4203, %4245
  %4254 = fmul fast float %4252, %4244
  %4255 = fadd fast float %4252, %4244
  %4256 = fmul fast float %4255, %4038
  %4257 = fadd fast float %4254, %4039
  %4258 = fsub fast float %4257, %4256
  %4259 = fdiv fast float %4258, %4251
  %4260 = select i1 %4253, float %4259, float 0.000000e+00
  %4261 = fsub fast float 1.000000e+00, %4260
  %4262 = select i1 %4246, float %4261, float %4260
  %4263 = call float @dx.op.unary.f32(i32 7, float %4262)  ; Saturate(value)
  %4264 = extractvalue %dx.types.CBufRet.f32 %4023, 3
  %4265 = fmul fast float %4264, %4263
  %4266 = fsub fast float 1.000000e+00, %4265
  br label %4267

; <label>:4267                                    ; preds = %4196, %3908, %3873, %3869, %3835
  %4268 = phi float [ 1.000000e+00, %3835 ], [ %4266, %4196 ], [ 1.000000e+00, %3873 ], [ 1.000000e+00, %3908 ], [ 1.000000e+00, %3869 ]
  %4269 = fcmp fast ogt float %3865, 0.000000e+00
  br i1 %4269, label %4270, label %4276, !dx.controlflow.hints !123

; <label>:4270                                    ; preds = %4267
  %4271 = fadd fast float %3778, %3752
  %4272 = call float @dx.op.binary.f32(i32 35, float %4271, float 0.000000e+00)  ; FMax(a,b)
  %4273 = fadd fast float %4272, 0x3F10000000000000
  %4274 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %3767, float %3768, float undef, float undef, i32 0, i32 0, i32 undef, float %4273)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  br label %4276

; <label>:4276                                    ; preds = %4270, %4267
  %4277 = phi float [ %4275, %4270 ], [ 1.000000e+00, %4267 ]
  %4278 = fcmp fast ogt float %3863, 0.000000e+00
  br i1 %4278, label %4279, label %4285, !dx.controlflow.hints !124

; <label>:4279                                    ; preds = %4276
  %4280 = fadd fast float %3808, %3752
  %4281 = call float @dx.op.binary.f32(i32 35, float %4280, float 0.000000e+00)  ; FMax(a,b)
  %4282 = fadd fast float %4281, 0x3F10000000000000
  %4283 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %3759, float %3760, float undef, float undef, i32 0, i32 0, i32 undef, float %4282)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4284 = extractvalue %dx.types.ResRet.f32 %4283, 0
  br label %4285

; <label>:4285                                    ; preds = %4279, %4276
  %4286 = phi float [ %4284, %4279 ], [ 1.000000e+00, %4276 ]
  %4287 = fcmp fast ogt float %3862, 0.000000e+00
  br i1 %4287, label %4288, label %4295, !dx.controlflow.hints !125

; <label>:4288                                    ; preds = %4285
  %4289 = extractvalue %dx.types.CBufRet.f32 %3777, 0
  %4290 = fadd fast float %4289, %3752
  %4291 = call float @dx.op.binary.f32(i32 35, float %4290, float 0.000000e+00)  ; FMax(a,b)
  %4292 = fadd fast float %4291, 0x3F10000000000000
  %4293 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %3744, float %3748, float undef, float undef, i32 0, i32 0, i32 undef, float %4292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4294 = extractvalue %dx.types.ResRet.f32 %4293, 0
  br label %4295

; <label>:4295                                    ; preds = %4288, %4285
  %4296 = phi float [ %4294, %4288 ], [ 1.000000e+00, %4285 ]
  %4297 = fsub fast float %4277, %4268
  %4298 = fmul fast float %4297, %3806
  %4299 = fadd fast float %4298, %4268
  %4300 = fsub fast float %4286, %4299
  %4301 = fmul fast float %4300, %3836
  %4302 = fadd fast float %4301, %4299
  %4303 = fsub fast float %4296, %4302
  %4304 = fmul fast float %4303, %3862
  %4305 = fadd fast float %4304, %4302
  %4306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4307 = extractvalue %dx.types.CBufRet.f32 %4306, 2
  %4308 = fcmp fast ogt float %4307, 0.000000e+00
  br i1 %4308, label %4309, label %4346, !dx.controlflow.hints !126

; <label>:4309                                    ; preds = %4295
  %4310 = fcmp fast ugt float %4307, 0.000000e+00
  br i1 %4310, label %4311, label %4343

; <label>:4311                                    ; preds = %4309
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 0
  %4314 = extractvalue %dx.types.CBufRet.f32 %4312, 1
  %4315 = extractvalue %dx.types.CBufRet.f32 %4312, 2
  %4316 = extractvalue %dx.types.CBufRet.f32 %4312, 3
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 0
  %4319 = extractvalue %dx.types.CBufRet.f32 %4317, 1
  %4320 = extractvalue %dx.types.CBufRet.f32 %4317, 2
  %4321 = extractvalue %dx.types.CBufRet.f32 %4317, 3
  %4322 = extractvalue %dx.types.CBufRet.f32 %4306, 0
  %4323 = extractvalue %dx.types.CBufRet.f32 %4306, 1
  %4324 = extractvalue %dx.types.CBufRet.f32 %2311, 2
  %4325 = fadd fast float %2312, %3721
  %4326 = fadd fast float %2313, %3722
  %4327 = fadd fast float %4324, %3723
  %4328 = fmul fast float %4325, %4313
  %4329 = call float @dx.op.tertiary.f32(i32 46, float %4314, float %4326, float %4328)  ; FMad(a,b,c)
  %4330 = call float @dx.op.tertiary.f32(i32 46, float %4315, float %4327, float %4329)  ; FMad(a,b,c)
  %4331 = fadd fast float %4330, %4316
  %4332 = fmul fast float %4325, %4318
  %4333 = call float @dx.op.tertiary.f32(i32 46, float %4319, float %4326, float %4332)  ; FMad(a,b,c)
  %4334 = call float @dx.op.tertiary.f32(i32 46, float %4320, float %4327, float %4333)  ; FMad(a,b,c)
  %4335 = fadd fast float %4334, %4321
  %4336 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %55, float %4331, float %4335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4337 = extractvalue %dx.types.ResRet.f32 %4336, 0
  %4338 = fmul fast float %4337, %4323
  %4339 = fadd fast float %4338, %4322
  %4340 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  %4341 = fmul fast float %4340, %4307
  %4342 = fsub fast float 1.000000e+00, %4341
  br label %4343

; <label>:4343                                    ; preds = %4311, %4309
  %4344 = phi float [ %4342, %4311 ], [ 1.000000e+00, %4309 ]
  %4345 = fmul fast float %4344, %4305
  br label %4346

; <label>:4346                                    ; preds = %4343, %4295, %3701
  %4347 = phi float [ 1.000000e+00, %3701 ], [ %4345, %4343 ], [ %4305, %4295 ]
  %4348 = call float @dx.op.binary.f32(i32 36, float %4347, float %4347)  ; FMin(a,b)
  %4349 = call float @dx.op.binary.f32(i32 36, float %4347, float %4348)  ; FMin(a,b)
  %4350 = fcmp fast ogt float %4349, 0.000000e+00
  br i1 %4350, label %4351, label %4508, !dx.controlflow.hints !127

; <label>:4351                                    ; preds = %4346
  %4352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4353 = extractvalue %dx.types.CBufRet.f32 %4352, 0
  %4354 = extractvalue %dx.types.CBufRet.f32 %4352, 1
  %4355 = extractvalue %dx.types.CBufRet.f32 %4352, 2
  %4356 = extractvalue %dx.types.CBufRet.f32 %4352, 3
  %4357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4358 = extractvalue %dx.types.CBufRet.f32 %4357, 0
  %4359 = extractvalue %dx.types.CBufRet.f32 %4357, 1
  %4360 = extractvalue %dx.types.CBufRet.f32 %4357, 2
  %4361 = extractvalue %dx.types.CBufRet.f32 %4357, 3
  %4362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4363 = extractvalue %dx.types.CBufRet.f32 %4362, 0
  %4364 = extractvalue %dx.types.CBufRet.f32 %4362, 1
  %4365 = extractvalue %dx.types.CBufRet.f32 %4362, 2
  %4366 = extractvalue %dx.types.CBufRet.f32 %4362, 3
  %4367 = fmul fast float %4353, %3721
  %4368 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %4354, float %4367)  ; FMad(a,b,c)
  %4369 = call float @dx.op.tertiary.f32(i32 46, float %3723, float %4355, float %4368)  ; FMad(a,b,c)
  %4370 = fadd fast float %4369, %4356
  %4371 = fmul fast float %4358, %3721
  %4372 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %4359, float %4371)  ; FMad(a,b,c)
  %4373 = call float @dx.op.tertiary.f32(i32 46, float %3723, float %4360, float %4372)  ; FMad(a,b,c)
  %4374 = fadd fast float %4373, %4361
  %4375 = fmul fast float %4363, %3721
  %4376 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %4364, float %4375)  ; FMad(a,b,c)
  %4377 = call float @dx.op.tertiary.f32(i32 46, float %3723, float %4365, float %4376)  ; FMad(a,b,c)
  %4378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4379 = extractvalue %dx.types.CBufRet.f32 %4378, 0
  %4380 = extractvalue %dx.types.CBufRet.f32 %4378, 1
  %4381 = extractvalue %dx.types.CBufRet.f32 %4378, 3
  %4382 = fmul fast float %4381, %4370
  %4383 = fmul fast float %4381, %4374
  %4384 = fadd fast float %4382, %4379
  %4385 = fadd fast float %4383, %4380
  %4386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4387 = extractvalue %dx.types.CBufRet.f32 %4386, 0
  %4388 = extractvalue %dx.types.CBufRet.f32 %4386, 1
  %4389 = fsub fast float %4384, %4387
  %4390 = fsub fast float %4385, %4388
  %4391 = fcmp fast olt float %4389, 0.000000e+00
  %4392 = fcmp fast olt float %4390, 0.000000e+00
  %4393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4394 = extractvalue %dx.types.CBufRet.f32 %4393, 0
  %4395 = extractvalue %dx.types.CBufRet.f32 %4393, 1
  %4396 = extractvalue %dx.types.CBufRet.f32 %4393, 2
  %4397 = extractvalue %dx.types.CBufRet.f32 %4393, 3
  %4398 = select i1 %4391, float %4394, float %4396
  %4399 = select i1 %4392, float %4395, float %4397
  %4400 = fmul fast float %4398, %4389
  %4401 = fmul fast float %4399, %4390
  %4402 = call float @dx.op.unary.f32(i32 6, float %4400)  ; FAbs(value)
  %4403 = call float @dx.op.unary.f32(i32 6, float %4401)  ; FAbs(value)
  %4404 = extractvalue %dx.types.CBufRet.f32 %3716, 0
  %4405 = call float @dx.op.binary.f32(i32 35, float %4402, float %4403)  ; FMax(a,b)
  %4406 = fsub fast float %4404, %4405
  %4407 = call float @dx.op.unary.f32(i32 7, float %4406)  ; Saturate(value)
  %4408 = fcmp fast ogt float %4407, 0.000000e+00
  br i1 %4408, label %4409, label %4450, !dx.controlflow.hints !128

; <label>:4409                                    ; preds = %4351
  %4410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %58, float %4384, float %4385, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4411 = extractvalue %dx.types.ResRet.f32 %4410, 1
  %4412 = fcmp fast ogt float %4411, 0.000000e+00
  br i1 %4412, label %4413, label %4445

; <label>:4413                                    ; preds = %4409
  %4414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %58, float %4384, float %4385, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4415 = extractvalue %dx.types.ResRet.f32 %4414, 0
  %4416 = extractvalue %dx.types.ResRet.f32 %4414, 1
  %4417 = extractvalue %dx.types.ResRet.f32 %4414, 2
  %4418 = extractvalue %dx.types.ResRet.f32 %4414, 3
  %4419 = fsub fast float 1.000000e+00, %4366
  %4420 = fsub fast float %4419, %4377
  %4421 = fmul fast float %4420, 0x400921FB60000000
  %4422 = fadd fast float %4421, 0x3FF921FB60000000
  %4423 = call float @dx.op.unary.f32(i32 13, float %4422)  ; Sin(value)
  %4424 = fadd fast float %4423, -1.000000e+00
  %4425 = fmul fast float %4424, 0x3FD45F3060000000
  %4426 = fmul fast float %4420, 0x401921FB60000000
  %4427 = fadd fast float %4426, 0x400921FB60000000
  %4428 = call float @dx.op.unary.f32(i32 13, float %4427)  ; Sin(value)
  %4429 = fadd fast float %4428, 0x3E7777A5C0000000
  %4430 = fmul fast float %4429, 0x3FC45F3060000000
  %4431 = fmul fast float %4420, 0x4022D97C80000000
  %4432 = fadd fast float %4431, 0x4012D97C80000000
  %4433 = call float @dx.op.unary.f32(i32 13, float %4432)  ; Sin(value)
  %4434 = fadd fast float %4433, 1.000000e+00
  %4435 = fmul fast float %4434, 0x3FBB2995E0000000
  %4436 = fmul fast float %4420, 0x402921FB60000000
  %4437 = fadd fast float %4436, 0x401921FB60000000
  %4438 = call float @dx.op.unary.f32(i32 13, float %4437)  ; Sin(value)
  %4439 = fadd fast float %4438, 0xBE8777A5C0000000
  %4440 = fmul fast float %4439, 0x3FB45F3060000000
  %4441 = call float @dx.op.dot4.f32(i32 56, float %4415, float %4416, float %4417, float %4418, float %4425, float %4430, float %4435, float %4440)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4442 = fmul fast float %4441, 0xBFF7154760000000
  %4443 = call float @dx.op.unary.f32(i32 21, float %4442)  ; Exp(value)
  %4444 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  br label %4445

; <label>:4445                                    ; preds = %4413, %4409
  %4446 = phi float [ %4444, %4413 ], [ 1.000000e+00, %4409 ]
  %4447 = fadd fast float %4446, -1.000000e+00
  %4448 = fmul fast float %4447, %4407
  %4449 = fadd fast float %4448, 1.000000e+00
  br label %4450

; <label>:4450                                    ; preds = %4445, %4351
  %4451 = phi float [ %4449, %4445 ], [ 1.000000e+00, %4351 ]
  %4452 = fmul fast float %4451, %4347
  %4453 = extractvalue %dx.types.CBufRet.f32 %2311, 2
  %4454 = fadd fast float %2312, %137
  %4455 = fadd fast float %2313, %138
  %4456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4457 = extractvalue %dx.types.CBufRet.f32 %4456, 1
  %4458 = fsub fast float -0.000000e+00, %4454
  %4459 = fsub fast float -0.000000e+00, %4455
  %4460 = fsub fast float %2295, %4453
  %4461 = fadd fast float %4460, %4457
  %4462 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4458, float %4459, float %4461)  ; Dot3(ax,ay,az,bx,by,bz)
  %4463 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3702, float %3703, float %3704)  ; Dot3(ax,ay,az,bx,by,bz)
  %4464 = fdiv fast float 1.000000e+00, %4463
  %4465 = fmul fast float %4464, %4462
  %4466 = fmul fast float %3702, %4465
  %4467 = fmul fast float %3703, %4465
  %4468 = fadd fast float %4466, %4454
  %4469 = fadd fast float %4467, %4455
  %4470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4471 = extractvalue %dx.types.CBufRet.f32 %4470, 0
  %4472 = extractvalue %dx.types.CBufRet.f32 %4470, 1
  %4473 = fsub fast float %4468, %4471
  %4474 = fsub fast float %4469, %4472
  %4475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4476 = extractvalue %dx.types.CBufRet.f32 %4475, 2
  %4477 = extractvalue %dx.types.CBufRet.f32 %4475, 3
  %4478 = fmul fast float %4473, %4476
  %4479 = fmul fast float %4474, %4477
  %4480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4481 = extractvalue %dx.types.CBufRet.i32 %4480, 3
  %4482 = icmp eq i32 %4481, 0
  br i1 %4482, label %4488, label %4483

; <label>:4483                                    ; preds = %4450
  %4484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %57, float %4478, float %4479, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4485 = extractvalue %dx.types.ResRet.f32 %4484, 0
  %4486 = extractvalue %dx.types.ResRet.f32 %4484, 1
  %4487 = extractvalue %dx.types.ResRet.f32 %4484, 2
  br label %4493

; <label>:4488                                    ; preds = %4450
  %4489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %58, float %4478, float %4479, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4490 = extractvalue %dx.types.ResRet.f32 %4489, 0
  %4491 = extractvalue %dx.types.ResRet.f32 %4489, 1
  %4492 = extractvalue %dx.types.ResRet.f32 %4489, 2
  br label %4493

; <label>:4493                                    ; preds = %4488, %4483
  %4494 = phi float [ %4485, %4483 ], [ %4490, %4488 ]
  %4495 = phi float [ %4486, %4483 ], [ %4491, %4488 ]
  %4496 = phi float [ %4487, %4483 ], [ %4492, %4488 ]
  %4497 = extractvalue %dx.types.CBufRet.f32 %4456, 2
  %4498 = fmul fast float %4497, %4494
  %4499 = extractvalue %dx.types.CBufRet.f32 %4456, 0
  %4500 = fsub fast float %4465, %4499
  %4501 = fsub fast float %4500, %4498
  %4502 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4501)  ; FMax(a,b)
  %4503 = fmul fast float %4502, %4495
  %4504 = call float @dx.op.binary.f32(i32 36, float %4496, float %4503)  ; FMin(a,b)
  %4505 = fmul fast float %4504, 0xBFF7154760000000
  %4506 = call float @dx.op.unary.f32(i32 21, float %4505)  ; Exp(value)
  %4507 = fmul fast float %4452, %4506
  br label %4508

; <label>:4508                                    ; preds = %4493, %4346
  %4509 = phi float [ %4507, %4493 ], [ %4347, %4346 ]
  %4510 = call float @dx.op.binary.f32(i32 36, float %4509, float %4509)  ; FMin(a,b)
  %4511 = call float @dx.op.binary.f32(i32 36, float %4509, float %4510)  ; FMin(a,b)
  %4512 = fcmp fast ogt float %4511, 0.000000e+00
  br i1 %4512, label %4513, label %4776, !dx.controlflow.hints !129

; <label>:4513                                    ; preds = %4508
  %4514 = fmul fast float %4509, %3713
  %4515 = fmul fast float %4509, %3714
  %4516 = fmul fast float %4509, %3715
  %4517 = fsub fast float %139, %2083
  %4518 = fcmp fast ogt float %4517, 0.000000e+00
  %4519 = fmul fast float %3702, 5.120000e+02
  %4520 = fmul fast float %3703, 5.120000e+02
  %4521 = fmul fast float %3704, 5.120000e+02
  %4522 = fadd fast float %4521, %139
  %4523 = fsub fast float %2083, %4522
  %4524 = fmul fast float %4523, 2.000000e+00
  %4525 = fadd fast float %4524, %4522
  %4526 = select i1 %4518, float %4525, float %4522
  %4527 = fsub fast float %4526, %139
  %4528 = call float @dx.op.dot3.f32(i32 55, float %4519, float %4520, float %4527, float %4519, float %4520, float %4527)  ; Dot3(ax,ay,az,bx,by,bz)
  %4529 = call float @dx.op.unary.f32(i32 25, float %4528)  ; Rsqrt(value)
  %4530 = fmul fast float %4529, %4519
  %4531 = fmul fast float %4529, %4520
  %4532 = fmul fast float %4529, %4527
  %4533 = fsub fast float %2083, %139
  %4534 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4533)  ; Dot3(ax,ay,az,bx,by,bz)
  %4535 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4530, float %4531, float %4532)  ; Dot3(ax,ay,az,bx,by,bz)
  %4536 = fdiv fast float 1.000000e+00, %4535
  %4537 = fmul fast float %4536, %4534
  %4538 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4517, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4539 = fcmp fast ogt float %4538, 0.000000e+00
  %4540 = fcmp fast olt float %4538, 0.000000e+00
  %4541 = zext i1 %4539 to i32
  %4542 = zext i1 %4540 to i32
  %4543 = sub nsw i32 %4541, %4542
  %4544 = sitofp i32 %4543 to float
  %4545 = fsub fast float %4526, %2083
  %4546 = call float @dx.op.dot3.f32(i32 55, float %4519, float %4520, float %4545, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4547 = fcmp fast ogt float %4546, 0.000000e+00
  %4548 = fcmp fast olt float %4546, 0.000000e+00
  %4549 = zext i1 %4547 to i32
  %4550 = zext i1 %4548 to i32
  %4551 = sub nsw i32 %4549, %4550
  %4552 = sitofp i32 %4551 to float
  %4553 = fcmp fast une float %4544, %4552
  br i1 %4553, label %4554, label %4564

; <label>:4554                                    ; preds = %4513
  %4555 = fmul fast float %4537, %4532
  %4556 = fmul fast float %4537, %4531
  %4557 = fmul fast float %4537, %4530
  %4558 = fmul fast float %4557, %4557
  %4559 = fmul fast float %4556, %4556
  %4560 = fadd fast float %4558, %4559
  %4561 = fmul fast float %4555, %4555
  %4562 = fadd fast float %4560, %4561
  %4563 = call float @dx.op.unary.f32(i32 24, float %4562)  ; Sqrt(value)
  br label %4574

; <label>:4564                                    ; preds = %4513
  %4565 = icmp slt i32 %4543, 0
  br i1 %4565, label %4566, label %4574

; <label>:4566                                    ; preds = %4564
  %4567 = fsub fast float %139, %4526
  %4568 = fmul fast float %4519, %4519
  %4569 = fmul fast float %4520, %4520
  %4570 = fadd fast float %4568, %4569
  %4571 = fmul fast float %4567, %4567
  %4572 = fadd fast float %4570, %4571
  %4573 = call float @dx.op.unary.f32(i32 24, float %4572)  ; Sqrt(value)
  br label %4574

; <label>:4574                                    ; preds = %4566, %4564, %4554
  %4575 = phi float [ %4563, %4554 ], [ %4573, %4566 ], [ 0.000000e+00, %4564 ]
  %4576 = fsub fast float -0.000000e+00, %4575
  %4577 = select i1 %4518, float -0.000000e+00, float %4576
  %4578 = fmul fast float %2084, 0x3FF7154760000000
  %4579 = fmul fast float %4578, %4577
  %4580 = fmul fast float %2085, 0x3FF7154760000000
  %4581 = fmul fast float %4580, %4577
  %4582 = fmul fast float %2086, 0x3FF7154760000000
  %4583 = fmul fast float %4582, %4577
  %4584 = call float @dx.op.unary.f32(i32 21, float %4579)  ; Exp(value)
  %4585 = call float @dx.op.unary.f32(i32 21, float %4581)  ; Exp(value)
  %4586 = call float @dx.op.unary.f32(i32 21, float %4583)  ; Exp(value)
  %4587 = call float @dx.op.unary.f32(i32 7, float %4584)  ; Saturate(value)
  %4588 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4589 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4590 = fmul fast float %4514, %4587
  %4591 = fmul fast float %4515, %4588
  %4592 = fmul fast float %4516, %4589
  %4593 = fsub fast float %3702, %2283
  %4594 = fsub fast float %3703, %2282
  %4595 = fsub fast float %3704, %2281
  %4596 = call float @dx.op.dot3.f32(i32 55, float %4593, float %4594, float %4595, float %4593, float %4594, float %4595)  ; Dot3(ax,ay,az,bx,by,bz)
  %4597 = call float @dx.op.unary.f32(i32 25, float %4596)  ; Rsqrt(value)
  %4598 = fmul fast float %4597, %4593
  %4599 = fmul fast float %4597, %4594
  %4600 = fmul fast float %4597, %4595
  %4601 = call float @dx.op.dot3.f32(i32 55, float %3702, float %3703, float %3704, float %2287, float %2288, float %2289)  ; Dot3(ax,ay,az,bx,by,bz)
  %4602 = call float @dx.op.dot3.f32(i32 55, float %2280, float %2279, float %2278, float %4598, float %4599, float %4600)  ; Dot3(ax,ay,az,bx,by,bz)
  %4603 = call float @dx.op.unary.f32(i32 7, float %4601)  ; Saturate(value)
  %4604 = fmul fast float %4603, %4603
  %4605 = fmul fast float %4604, %3697
  %4606 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4607 = fmul fast float %4606, %4603
  %4608 = call float @dx.op.dot3.f32(i32 55, float %2287, float %2288, float %2289, float %4598, float %4599, float %4600)  ; Dot3(ax,ay,az,bx,by,bz)
  %4609 = fmul fast float %4608, %4608
  %4610 = call float @dx.op.unary.f32(i32 6, float %4601)  ; FAbs(value)
  %4611 = fsub fast float 1.000000e+00, %2293
  %4612 = call float @dx.op.binary.f32(i32 35, float %4611, float 0x3F847AE140000000)  ; FMax(a,b)
  %4613 = fmul fast float %4612, %4612
  %4614 = fmul fast float %4613, %4613
  %4615 = fsub fast float 1.000000e+00, %4614
  %4616 = fmul fast float %2298, %2298
  %4617 = fmul fast float %4616, %4615
  %4618 = fadd fast float %4617, %4614
  %4619 = bitcast float %4618 to i32
  %4620 = ashr i32 %4619, 1
  %4621 = add nsw i32 %4620, 532487669
  %4622 = bitcast i32 %4621 to float
  %4623 = fadd fast float %4622, %2298
  %4624 = fmul fast float %4614, %4609
  %4625 = fsub fast float 1.000000e+00, %4609
  %4626 = fadd fast float %4625, %4624
  %4627 = fmul fast float %4610, %4610
  %4628 = fmul fast float %4627, %4615
  %4629 = fadd fast float %4628, %4614
  %4630 = bitcast float %4629 to i32
  %4631 = ashr i32 %4630, 1
  %4632 = add nsw i32 %4631, 532487669
  %4633 = bitcast i32 %4632 to float
  %4634 = fadd fast float %4633, %4610
  %4635 = fmul fast float %4626, %4626
  %4636 = fmul fast float %4635, %4623
  %4637 = fmul fast float %4636, %4634
  %4638 = fdiv fast float 0x3FF0A00000000000, %4637
  %4639 = fmul fast float %4638, %4614
  %4640 = fmul fast float %3563, 0x3FF9999980000000
  %4641 = fsub fast float 5.000000e+00, %4640
  %4642 = call float @dx.op.unary.f32(i32 6, float %4602)  ; FAbs(value)
  %4643 = fsub fast float 1.000000e+00, %4642
  %4644 = fmul fast float %3563, 0x41D9660740000000
  %4645 = fadd fast float %4644, 0xC1EFBF8940000000
  %4646 = bitcast float %4643 to i32
  %4647 = sitofp i32 %4646 to float
  %4648 = fmul fast float %4647, %4641
  %4649 = fadd fast float %4645, %4648
  %4650 = fptosi float %4649 to i32
  %4651 = bitcast i32 %4650 to float
  %4652 = fsub fast float 1.000000e+00, %2290
  %4653 = fsub fast float 1.000000e+00, %2291
  %4654 = fsub fast float 1.000000e+00, %2296
  %4655 = fmul fast float %4651, %4652
  %4656 = fmul fast float %4651, %4653
  %4657 = fmul fast float %4651, %4654
  %4658 = fadd fast float %4655, %2290
  %4659 = fadd fast float %4656, %2291
  %4660 = fadd fast float %4657, %2296
  br i1 %3586, label %4661, label %4684

; <label>:4661                                    ; preds = %4574
  %4662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1658, float %4642, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4663 = extractvalue %dx.types.ResRet.f32 %4662, 0
  %4664 = extractvalue %dx.types.ResRet.f32 %4662, 1
  %4665 = extractvalue %dx.types.ResRet.f32 %4662, 2
  %4666 = fadd fast float %4663, -5.000000e-01
  %4667 = fadd fast float %4664, -5.000000e-01
  %4668 = fadd fast float %4665, -5.000000e-01
  %4669 = fmul fast float %2290, 4.000000e+00
  %4670 = fmul fast float %4669, %4652
  %4671 = fmul fast float %4670, %4666
  %4672 = fmul fast float %2291, 4.000000e+00
  %4673 = fmul fast float %4672, %4653
  %4674 = fmul fast float %4673, %4667
  %4675 = fmul fast float %2296, 4.000000e+00
  %4676 = fmul fast float %4675, %4654
  %4677 = fmul fast float %4676, %4668
  %4678 = fadd fast float %4671, %4658
  %4679 = fadd fast float %4674, %4659
  %4680 = fadd fast float %4677, %4660
  %4681 = call float @dx.op.unary.f32(i32 7, float %4678)  ; Saturate(value)
  %4682 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4683 = call float @dx.op.unary.f32(i32 7, float %4680)  ; Saturate(value)
  br label %4684

; <label>:4684                                    ; preds = %4661, %4574
  %4685 = phi float [ %4681, %4661 ], [ %4658, %4574 ]
  %4686 = phi float [ %4682, %4661 ], [ %4659, %4574 ]
  %4687 = phi float [ %4683, %4661 ], [ %4660, %4574 ]
  %4688 = fmul fast float %4601, 9.843750e-01
  %4689 = fadd fast float %4688, 7.812500e-03
  %4690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %4689, float %3567, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4691 = extractvalue %dx.types.ResRet.f32 %4690, 0
  %4692 = extractvalue %dx.types.ResRet.f32 %4690, 1
  %4693 = extractvalue %dx.types.ResRet.f32 %4690, 2
  %4694 = extractvalue %dx.types.ResRet.f32 %4690, 3
  %4695 = fsub fast float %4693, %4691
  %4696 = fsub fast float %4694, %4692
  %4697 = fmul fast float %4695, %3573
  %4698 = fmul fast float %4696, %3573
  %4699 = fadd fast float %4697, %4691
  %4700 = fadd fast float %4698, %4692
  %4701 = fmul fast float %4699, %2290
  %4702 = fmul fast float %4699, %2291
  %4703 = fmul fast float %4699, %2296
  %4704 = fadd fast float %4701, %4700
  %4705 = fadd fast float %4702, %4700
  %4706 = fadd fast float %4703, %4700
  br i1 %3586, label %4707, label %4730

; <label>:4707                                    ; preds = %4684
  %4708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1658, float %4601, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4709 = extractvalue %dx.types.ResRet.f32 %4708, 0
  %4710 = extractvalue %dx.types.ResRet.f32 %4708, 1
  %4711 = extractvalue %dx.types.ResRet.f32 %4708, 2
  %4712 = fadd fast float %4709, -5.000000e-01
  %4713 = fadd fast float %4710, -5.000000e-01
  %4714 = fadd fast float %4711, -5.000000e-01
  %4715 = fmul fast float %2290, 4.000000e+00
  %4716 = fmul fast float %4715, %4652
  %4717 = fmul fast float %4716, %4712
  %4718 = fmul fast float %2291, 4.000000e+00
  %4719 = fmul fast float %4718, %4653
  %4720 = fmul fast float %4719, %4713
  %4721 = fmul fast float %2296, 4.000000e+00
  %4722 = fmul fast float %4721, %4654
  %4723 = fmul fast float %4722, %4714
  %4724 = fadd fast float %4717, %4704
  %4725 = fadd fast float %4720, %4705
  %4726 = fadd fast float %4723, %4706
  %4727 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4728 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4729 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  br label %4730

; <label>:4730                                    ; preds = %4707, %4684
  %4731 = phi float [ %4727, %4707 ], [ %4704, %4684 ]
  %4732 = phi float [ %4728, %4707 ], [ %4705, %4684 ]
  %4733 = phi float [ %4729, %4707 ], [ %4706, %4684 ]
  %4734 = call float @dx.op.binary.f32(i32 35, float %4732, float %4733)  ; FMax(a,b)
  %4735 = call float @dx.op.binary.f32(i32 35, float %4731, float %4734)  ; FMax(a,b)
  %4736 = fsub fast float 1.000000e+00, %4735
  %4737 = fmul fast float %4685, %4639
  %4738 = fmul fast float %4686, %4639
  %4739 = fmul fast float %4687, %4639
  %4740 = fsub fast float 1.000000e+00, %4602
  %4741 = bitcast float %4740 to i32
  %4742 = sitofp i32 %4741 to float
  %4743 = fmul fast float %4742, 5.000000e+00
  %4744 = fadd fast float %4743, 0xC1EFBF8940000000
  %4745 = fptosi float %4744 to i32
  %4746 = bitcast i32 %4745 to float
  %4747 = fmul fast float %4746, %1657
  %4748 = fmul fast float %4736, %4747
  %4749 = fmul fast float %4748, %3636
  %4750 = fmul fast float %4748, %3637
  %4751 = fmul fast float %4748, %3638
  %4752 = fadd fast float %4749, %4737
  %4753 = fadd fast float %4750, %4738
  %4754 = fadd fast float %4751, %4739
  %4755 = fmul fast float %4607, %4590
  %4756 = fmul fast float %4755, %4736
  %4757 = fmul fast float %4607, %4591
  %4758 = fmul fast float %4757, %4736
  %4759 = fmul fast float %4607, %4592
  %4760 = fmul fast float %4759, %4736
  %4761 = fmul fast float %4755, %4752
  %4762 = fmul fast float %4757, %4753
  %4763 = fmul fast float %4759, %4754
  %4764 = fadd fast float %4756, %3620
  %4765 = fmul fast float %4764, %1678
  %4766 = fadd fast float %4758, %3621
  %4767 = fmul fast float %4766, %1678
  %4768 = fadd fast float %4760, %3622
  %4769 = fmul fast float %4768, %1678
  %4770 = fadd fast float %4761, %3689
  %4771 = fmul fast float %4770, %1678
  %4772 = fadd fast float %4762, %3692
  %4773 = fmul fast float %4772, %1678
  %4774 = fadd fast float %4763, %3695
  %4775 = fmul fast float %4774, %1678
  br label %4776

; <label>:4776                                    ; preds = %4730, %4508, %3613
  %4777 = phi float [ %3690, %3613 ], [ %3690, %4508 ], [ %4771, %4730 ]
  %4778 = phi float [ %3693, %3613 ], [ %3693, %4508 ], [ %4773, %4730 ]
  %4779 = phi float [ %3696, %3613 ], [ %3696, %4508 ], [ %4775, %4730 ]
  %4780 = phi float [ %3685, %3613 ], [ %3685, %4508 ], [ %4765, %4730 ]
  %4781 = phi float [ %3686, %3613 ], [ %3686, %4508 ], [ %4767, %4730 ]
  %4782 = phi float [ %3687, %3613 ], [ %3687, %4508 ], [ %4769, %4730 ]
  %4783 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4784 = extractvalue %dx.types.CBufRet.i32 %4783, 0
  %4785 = icmp eq i32 %4784, 0
  br i1 %4785, label %5418, label %4786

; <label>:4786                                    ; preds = %4776
  %4787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4788 = extractvalue %dx.types.CBufRet.f32 %4787, 2
  %4789 = extractvalue %dx.types.CBufRet.f32 %4787, 3
  %4790 = fmul fast float %4788, %90
  %4791 = fmul fast float %4789, %91
  %4792 = fptoui float %4790 to i32
  %4793 = fptoui float %4791 to i32
  %4794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4795 = extractvalue %dx.types.CBufRet.f32 %4794, 0
  %4796 = extractvalue %dx.types.CBufRet.f32 %4794, 2
  %4797 = extractvalue %dx.types.CBufRet.f32 %4794, 3
  %4798 = fadd fast float %81, -4.000000e+00
  %4799 = call float @dx.op.binary.f32(i32 35, float %4798, float 0.000000e+00)  ; FMax(a,b)
  %4800 = fadd fast float %4799, %4795
  %4801 = fmul fast float %4800, %4796
  %4802 = call float @dx.op.unary.f32(i32 23, float %4801)  ; Log(value)
  %4803 = fmul fast float %4802, %4797
  %4804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4805 = extractvalue %dx.types.CBufRet.f32 %4804, 2
  %4806 = fmul fast float %4803, %4805
  %4807 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4808 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4809 = extractvalue %dx.types.CBufRet.i32 %4808, 1
  %4810 = add i32 %4809, -1
  %4811 = uitofp i32 %4809 to float
  %4812 = fmul fast float %4811, %4807
  %4813 = fptoui float %4812 to i32
  %4814 = call i32 @dx.op.binary.i32(i32 40, i32 %4813, i32 %4810)  ; UMin(a,b)
  %4815 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4816 = extractvalue %dx.types.CBufRet.i32 %4815, 2
  %4817 = extractvalue %dx.types.CBufRet.i32 %4815, 3
  %4818 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4793, i32 %4816, i32 %4792)  ; UMad(a,b,c)
  %4819 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4814, i32 %4817, i32 %4818)  ; UMad(a,b,c)
  %4820 = add nsw i32 %4784, -1
  %4821 = call i32 @dx.op.binary.i32(i32 37, i32 %4820, i32 0)  ; IMax(a,b)
  %4822 = call float @dx.op.binary.f32(i32 35, float %81, float 0.000000e+00)  ; FMax(a,b)
  %4823 = fptoui float %4822 to i32
  %4824 = lshr i32 %4823, 5
  %4825 = call i32 @dx.op.binary.i32(i32 40, i32 %4824, i32 8191)  ; UMin(a,b)
  %4826 = shl i32 %4825, 2
  %4827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4826, i32 undef)  ; BufferLoad(srv,index,wot)
  %4828 = extractvalue %dx.types.ResRet.i32 %4827, 0
  %4829 = lshr i32 %4828, 16
  %4830 = and i32 %4828, 65535
  %4831 = lshr i32 %4828, 21
  %4832 = lshr i32 %4830, 5
  %4833 = call i32 @dx.op.binary.i32(i32 40, i32 %4832, i32 %4821)  ; UMin(a,b)
  %4834 = icmp ugt i32 %4831, %4833
  br i1 %4834, label %5418, label %4835

; <label>:4835                                    ; preds = %4786
  br label %4836

; <label>:4836                                    ; preds = %5408, %4835
  %4837 = phi i32 [ %5415, %5408 ], [ %4831, %4835 ]
  %4838 = phi float [ %5409, %5408 ], [ %4777, %4835 ]
  %4839 = phi float [ %5410, %5408 ], [ %4778, %4835 ]
  %4840 = phi float [ %5411, %5408 ], [ %4779, %4835 ]
  %4841 = phi float [ %5412, %5408 ], [ %4780, %4835 ]
  %4842 = phi float [ %5413, %5408 ], [ %4781, %4835 ]
  %4843 = phi float [ %5414, %5408 ], [ %4782, %4835 ]
  %4844 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4845 = extractvalue %dx.types.CBufRet.i32 %4844, 0
  %4846 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4819, i32 %4845, i32 %4837)  ; UMad(a,b,c)
  %4847 = shl i32 %4846, 2
  %4848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4847, i32 undef)  ; BufferLoad(srv,index,wot)
  %4849 = extractvalue %dx.types.ResRet.i32 %4848, 0
  %4850 = shl i32 %4837, 5
  %4851 = sub nsw i32 %4829, %4850
  %4852 = call i32 @dx.op.binary.i32(i32 37, i32 %4851, i32 0)  ; IMax(a,b)
  %4853 = call i32 @dx.op.binary.i32(i32 38, i32 %4852, i32 31)  ; IMin(a,b)
  %4854 = sub nsw i32 1, %4829
  %4855 = add nsw i32 %4854, %4830
  %4856 = call i32 @dx.op.binary.i32(i32 37, i32 %4855, i32 0)  ; IMax(a,b)
  %4857 = call i32 @dx.op.binary.i32(i32 38, i32 %4856, i32 32)  ; IMin(a,b)
  %4858 = and i32 %4857, 31
  %4859 = shl i32 -1, %4858
  %4860 = xor i32 %4859, -1
  %4861 = and i32 %4853, 31
  %4862 = shl i32 %4860, %4861
  %4863 = icmp eq i32 %4857, 32
  %4864 = select i1 %4863, i32 -1, i32 %4862
  %4865 = and i32 %4864, %4849
  %4866 = icmp eq i32 %4865, 0
  br i1 %4866, label %5408, label %4867

; <label>:4867                                    ; preds = %4836
  br label %4868

; <label>:4868                                    ; preds = %5002, %4867
  %4869 = phi i32 [ %4880, %5002 ], [ %4865, %4867 ]
  %4870 = phi float [ %5003, %5002 ], [ %4838, %4867 ]
  %4871 = phi float [ %5004, %5002 ], [ %4839, %4867 ]
  %4872 = phi float [ %5005, %5002 ], [ %4840, %4867 ]
  %4873 = phi float [ %5006, %5002 ], [ %4841, %4867 ]
  %4874 = phi float [ %5007, %5002 ], [ %4842, %4867 ]
  %4875 = phi float [ %5008, %5002 ], [ %4843, %4867 ]
  %4876 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4869)  ; FirstbitLo(value)
  %4877 = add i32 %4876, %4850
  %4878 = and i32 %4876, 31
  %4879 = shl i32 1, %4878
  %4880 = xor i32 %4879, %4869
  %4881 = mul i32 %4877, 112
  %4882 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4881, i32 undef)  ; BufferLoad(srv,index,wot)
  %4883 = extractvalue %dx.types.ResRet.f32 %4882, 0
  %4884 = extractvalue %dx.types.ResRet.f32 %4882, 1
  %4885 = extractvalue %dx.types.ResRet.f32 %4882, 2
  %4886 = or i32 %4881, 12
  %4887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4886, i32 undef)  ; BufferLoad(srv,index,wot)
  %4888 = extractvalue %dx.types.ResRet.f32 %4887, 0
  %4889 = add i32 %4881, 16
  %4890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4889, i32 undef)  ; BufferLoad(srv,index,wot)
  %4891 = extractvalue %dx.types.ResRet.f32 %4890, 0
  %4892 = extractvalue %dx.types.ResRet.f32 %4890, 1
  %4893 = extractvalue %dx.types.ResRet.f32 %4890, 2
  %4894 = add i32 %4881, 28
  %4895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4894, i32 undef)  ; BufferLoad(srv,index,wot)
  %4896 = extractvalue %dx.types.ResRet.i32 %4895, 0
  %4897 = add i32 %4881, 44
  %4898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4897, i32 undef)  ; BufferLoad(srv,index,wot)
  %4899 = extractvalue %dx.types.ResRet.f32 %4898, 0
  %4900 = add i32 %4881, 48
  %4901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4900, i32 undef)  ; BufferLoad(srv,index,wot)
  %4902 = extractvalue %dx.types.ResRet.f32 %4901, 0
  %4903 = extractvalue %dx.types.ResRet.f32 %4901, 1
  %4904 = extractvalue %dx.types.ResRet.f32 %4901, 2
  %4905 = extractvalue %dx.types.ResRet.f32 %4901, 3
  %4906 = add i32 %4881, 64
  %4907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4906, i32 undef)  ; BufferLoad(srv,index,wot)
  %4908 = extractvalue %dx.types.ResRet.f32 %4907, 0
  %4909 = extractvalue %dx.types.ResRet.f32 %4907, 1
  %4910 = extractvalue %dx.types.ResRet.f32 %4907, 2
  %4911 = extractvalue %dx.types.ResRet.f32 %4907, 3
  %4912 = add i32 %4881, 80
  %4913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4912, i32 undef)  ; BufferLoad(srv,index,wot)
  %4914 = extractvalue %dx.types.ResRet.f32 %4913, 1
  %4915 = extractvalue %dx.types.ResRet.f32 %4913, 2
  %4916 = add i32 %4881, 92
  %4917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4916, i32 undef)  ; BufferLoad(srv,index,wot)
  %4918 = extractvalue %dx.types.ResRet.i32 %4917, 0
  %4919 = call float @dx.op.dot3.f32(i32 55, float %4883, float %4884, float %4885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4920 = select i1 %228, float %4914, float %4883
  %4921 = select i1 %228, float %4919, float %4884
  %4922 = select i1 %228, float %4915, float %4885
  %4923 = and i32 %4918, 65535
  %4924 = uitofp i32 %4923 to float
  %4925 = lshr i32 %4918, 16
  %4926 = uitofp i32 %4925 to float
  %4927 = and i32 %4896, 65535
  %4928 = and i32 %4896, 50331648
  %4929 = icmp eq i32 %4928, 33554432
  %4930 = fsub fast float %4902, %137
  %4931 = fsub fast float %4903, %138
  %4932 = fsub fast float %4904, %139
  %4933 = call float @dx.op.dot3.f32(i32 55, float %4930, float %4931, float %4932, float %4930, float %4931, float %4932)  ; Dot3(ax,ay,az,bx,by,bz)
  %4934 = call float @dx.op.unary.f32(i32 24, float %4933)  ; Sqrt(value)
  %4935 = fdiv fast float 1.000000e+00, %4934
  %4936 = fmul fast float %4935, %4930
  %4937 = fmul fast float %4935, %4931
  %4938 = fmul fast float %4935, %4932
  %4939 = fadd fast float %4934, %4888
  %4940 = fdiv fast float 1.000000e+00, %4939
  %4941 = fmul float %4899, %4940
  %4942 = fmul float %4941, %4941
  %4943 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  br i1 %4929, label %4944, label %4965

; <label>:4944                                    ; preds = %4868
  %4945 = fmul fast float %4910, %4891
  %4946 = fmul fast float %4910, %4892
  %4947 = fmul fast float %4910, %4893
  %4948 = fadd fast float %4930, %4945
  %4949 = fadd fast float %4931, %4946
  %4950 = fadd fast float %4932, %4947
  %4951 = call float @dx.op.dot3.f32(i32 55, float %4948, float %4949, float %4950, float %4948, float %4949, float %4950)  ; Dot3(ax,ay,az,bx,by,bz)
  %4952 = call float @dx.op.unary.f32(i32 25, float %4951)  ; Rsqrt(value)
  %4953 = fmul fast float %4952, %4948
  %4954 = fmul fast float %4952, %4949
  %4955 = fmul fast float %4952, %4950
  %4956 = fsub fast float %137, %4902
  %4957 = fsub fast float %138, %4903
  %4958 = fsub fast float %139, %4904
  %4959 = fsub fast float -0.000000e+00, %4956
  %4960 = fsub fast float -0.000000e+00, %4957
  %4961 = fsub fast float -0.000000e+00, %4958
  %4962 = call float @dx.op.dot3.f32(i32 55, float %4959, float %4960, float %4961, float %4891, float %4892, float %4893)  ; Dot3(ax,ay,az,bx,by,bz)
  %4963 = fcmp fast ogt float %4962, 0.000000e+00
  %4964 = uitofp i1 %4963 to float
  br label %4965

; <label>:4965                                    ; preds = %4944, %4868
  %4966 = phi float [ %4964, %4944 ], [ 1.000000e+00, %4868 ]
  %4967 = phi float [ %4953, %4944 ], [ %4936, %4868 ]
  %4968 = phi float [ %4954, %4944 ], [ %4937, %4868 ]
  %4969 = phi float [ %4955, %4944 ], [ %4938, %4868 ]
  %4970 = call float @dx.op.dot3.f32(i32 55, float %4891, float %4892, float %4893, float %4967, float %4968, float %4969)  ; Dot3(ax,ay,az,bx,by,bz)
  %4971 = fmul fast float %4970, %4970
  %4972 = call float @dx.op.unary.f32(i32 7, float %4971)  ; Saturate(value)
  %4973 = fsub fast float 1.000000e+00, %4972
  %4974 = fmul fast float %4973, 5.000000e-01
  %4975 = fcmp fast ogt float %4970, 0.000000e+00
  %4976 = fsub fast float 1.000000e+00, %4974
  %4977 = select i1 %4975, float %4974, float %4976
  %4978 = fmul fast float %4977, %4926
  %4979 = fadd fast float %4978, %4924
  %4980 = fmul fast float %4979, 0x3EF0001000000000
  %4981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %58, float %4980, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4982 = extractvalue %dx.types.ResRet.f32 %4981, 0
  %4983 = fmul fast float %4970, %4908
  %4984 = fadd fast float %4983, %4909
  %4985 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4986 = select i1 %4929, float 1.000000e+00, float %4985
  %4987 = select i1 %4929, float %4985, float 1.000000e+00
  %4988 = fmul fast float %4934, %4905
  %4989 = fsub fast float 1.000000e+00, %4988
  %4990 = fmul fast float %4989, %4911
  %4991 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4992 = fmul fast float %4991, %4987
  %4993 = fmul fast float %4992, 2.000000e+00
  %4994 = fsub fast float 3.000000e+00, %4993
  %4995 = fmul fast float %4982, %4966
  %4996 = fmul fast float %4992, %4992
  %4997 = fmul fast float %4996, %4995
  %4998 = fmul fast float %4997, %4994
  %4999 = call float @dx.op.binary.f32(i32 36, float %4998, float %4998)  ; FMin(a,b)
  %5000 = call float @dx.op.binary.f32(i32 36, float %4998, float %4999)  ; FMin(a,b)
  %5001 = fcmp fast ogt float %5000, 0.000000e+00
  br i1 %5001, label %5010, label %5002, !dx.controlflow.hints !130

; <label>:5002                                    ; preds = %5364, %5110, %4965
  %5003 = phi float [ %4870, %5110 ], [ %4870, %4965 ], [ %5404, %5364 ]
  %5004 = phi float [ %4871, %5110 ], [ %4871, %4965 ], [ %5405, %5364 ]
  %5005 = phi float [ %4872, %5110 ], [ %4872, %4965 ], [ %5406, %5364 ]
  %5006 = phi float [ %4873, %5110 ], [ %4873, %4965 ], [ %5398, %5364 ]
  %5007 = phi float [ %4874, %5110 ], [ %4874, %4965 ], [ %5399, %5364 ]
  %5008 = phi float [ %4875, %5110 ], [ %4875, %4965 ], [ %5400, %5364 ]
  %5009 = icmp eq i32 %4869, %4879
  br i1 %5009, label %5407, label %4868

; <label>:5010                                    ; preds = %4965
  %5011 = icmp eq i32 %4927, 255
  br i1 %5011, label %5110, label %5012, !dx.controlflow.hints !131

; <label>:5012                                    ; preds = %5010
  %5013 = mul nuw nsw i32 %4927, 176
  %5014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5013, i32 undef)  ; BufferLoad(srv,index,wot)
  %5015 = extractvalue %dx.types.ResRet.f32 %5014, 0
  %5016 = extractvalue %dx.types.ResRet.f32 %5014, 1
  %5017 = extractvalue %dx.types.ResRet.f32 %5014, 2
  %5018 = extractvalue %dx.types.ResRet.f32 %5014, 3
  %5019 = add nuw nsw i32 %5013, 16
  %5020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5019, i32 undef)  ; BufferLoad(srv,index,wot)
  %5021 = extractvalue %dx.types.ResRet.f32 %5020, 0
  %5022 = extractvalue %dx.types.ResRet.f32 %5020, 1
  %5023 = add nuw nsw i32 %5013, 32
  %5024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5023, i32 undef)  ; BufferLoad(srv,index,wot)
  %5025 = extractvalue %dx.types.ResRet.f32 %5024, 0
  %5026 = extractvalue %dx.types.ResRet.f32 %5024, 1
  %5027 = extractvalue %dx.types.ResRet.f32 %5024, 2
  %5028 = add nuw nsw i32 %5013, 48
  %5029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5028, i32 undef)  ; BufferLoad(srv,index,wot)
  %5030 = extractvalue %dx.types.ResRet.f32 %5029, 0
  %5031 = extractvalue %dx.types.ResRet.f32 %5029, 1
  %5032 = extractvalue %dx.types.ResRet.f32 %5029, 2
  %5033 = extractvalue %dx.types.ResRet.f32 %5029, 3
  %5034 = add nuw nsw i32 %5013, 64
  %5035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5034, i32 undef)  ; BufferLoad(srv,index,wot)
  %5036 = extractvalue %dx.types.ResRet.f32 %5035, 0
  %5037 = extractvalue %dx.types.ResRet.f32 %5035, 1
  %5038 = extractvalue %dx.types.ResRet.f32 %5035, 2
  %5039 = extractvalue %dx.types.ResRet.f32 %5035, 3
  %5040 = add nuw nsw i32 %5013, 80
  %5041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5040, i32 undef)  ; BufferLoad(srv,index,wot)
  %5042 = extractvalue %dx.types.ResRet.f32 %5041, 0
  %5043 = extractvalue %dx.types.ResRet.f32 %5041, 1
  %5044 = extractvalue %dx.types.ResRet.f32 %5041, 2
  %5045 = extractvalue %dx.types.ResRet.f32 %5041, 3
  %5046 = add nuw nsw i32 %5013, 96
  %5047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5046, i32 undef)  ; BufferLoad(srv,index,wot)
  %5048 = extractvalue %dx.types.ResRet.f32 %5047, 0
  %5049 = extractvalue %dx.types.ResRet.f32 %5047, 1
  %5050 = extractvalue %dx.types.ResRet.f32 %5047, 2
  %5051 = extractvalue %dx.types.ResRet.f32 %5047, 3
  %5052 = bitcast float %5022 to i32
  %5053 = fmul fast float %5027, %70
  %5054 = fmul fast float %5027, %71
  %5055 = fmul fast float %5027, %72
  %5056 = fadd fast float %5053, %137
  %5057 = fadd fast float %5054, %138
  %5058 = fadd fast float %5055, %139
  %5059 = fmul fast float %5056, %5030
  %5060 = call float @dx.op.tertiary.f32(i32 46, float %5057, float %5036, float %5059)  ; FMad(a,b,c)
  %5061 = call float @dx.op.tertiary.f32(i32 46, float %5058, float %5042, float %5060)  ; FMad(a,b,c)
  %5062 = fadd fast float %5061, %5048
  %5063 = fmul fast float %5056, %5031
  %5064 = call float @dx.op.tertiary.f32(i32 46, float %5057, float %5037, float %5063)  ; FMad(a,b,c)
  %5065 = call float @dx.op.tertiary.f32(i32 46, float %5058, float %5043, float %5064)  ; FMad(a,b,c)
  %5066 = fadd fast float %5065, %5049
  %5067 = fmul fast float %5056, %5032
  %5068 = call float @dx.op.tertiary.f32(i32 46, float %5057, float %5038, float %5067)  ; FMad(a,b,c)
  %5069 = call float @dx.op.tertiary.f32(i32 46, float %5058, float %5044, float %5068)  ; FMad(a,b,c)
  %5070 = fadd fast float %5069, %5050
  %5071 = fmul fast float %5056, %5033
  %5072 = call float @dx.op.tertiary.f32(i32 46, float %5057, float %5039, float %5071)  ; FMad(a,b,c)
  %5073 = call float @dx.op.tertiary.f32(i32 46, float %5058, float %5045, float %5072)  ; FMad(a,b,c)
  %5074 = fadd fast float %5073, %5051
  %5075 = fdiv fast float %5062, %5074
  %5076 = fdiv fast float %5066, %5074
  %5077 = fdiv fast float %5070, %5074
  %5078 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5077)  ; FMax(a,b)
  %5079 = fmul fast float %239, 0x401921FB60000000
  %5080 = call float @dx.op.unary.f32(i32 13, float %5079)  ; Sin(value)
  %5081 = call float @dx.op.unary.f32(i32 12, float %5079)  ; Cos(value)
  %5082 = fsub fast float -0.000000e+00, %5080
  %5083 = fmul fast float %5017, 5.000000e-01
  %5084 = call float @dx.op.dot2.f32(i32 54, float %239, float %239, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %5085 = call float @dx.op.unary.f32(i32 22, float %5084)  ; Frc(value)
  %5086 = fmul fast float %5085, 0x404A7DD040000000
  %5087 = call float @dx.op.unary.f32(i32 22, float %5086)  ; Frc(value)
  %5088 = fmul fast float %5087, %5026
  %5089 = fadd fast float %5088, %5083
  %5090 = call float @dx.op.tertiary.f32(i32 46, float %5089, float %5082, float 0.000000e+00)  ; FMad(a,b,c)
  %5091 = call float @dx.op.tertiary.f32(i32 46, float %5089, float %5081, float 0.000000e+00)  ; FMad(a,b,c)
  %5092 = fadd fast float %5090, %5075
  %5093 = fadd fast float %5091, %5076
  %5094 = fmul fast float %5092, %5021
  %5095 = fmul fast float %5093, %5021
  %5096 = call float @dx.op.binary.f32(i32 35, float %5094, float %5017)  ; FMax(a,b)
  %5097 = call float @dx.op.binary.f32(i32 35, float %5095, float %5017)  ; FMax(a,b)
  %5098 = call float @dx.op.binary.f32(i32 36, float %5096, float %5018)  ; FMin(a,b)
  %5099 = call float @dx.op.binary.f32(i32 36, float %5097, float %5018)  ; FMin(a,b)
  %5100 = fadd fast float %5098, %5015
  %5101 = fadd fast float %5099, %5016
  %5102 = uitofp i32 %5052 to float
  %5103 = fadd fast float %5078, %5025
  %5104 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %60, float %5100, float %5101, float %5102, float undef, i32 0, i32 0, i32 undef, float %5103)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5105 = extractvalue %dx.types.ResRet.f32 %5104, 0
  %5106 = fadd fast float %5105, -1.000000e+00
  %5107 = fmul fast float %5106, %4986
  %5108 = fadd fast float %5107, 1.000000e+00
  %5109 = fmul fast float %5108, %4998
  br label %5110

; <label>:5110                                    ; preds = %5012, %5010
  %5111 = phi float [ %5109, %5012 ], [ %4998, %5010 ]
  %5112 = call float @dx.op.binary.f32(i32 36, float %5111, float %5111)  ; FMin(a,b)
  %5113 = call float @dx.op.binary.f32(i32 36, float %5111, float %5112)  ; FMin(a,b)
  %5114 = fcmp fast ogt float %5113, 0.000000e+00
  br i1 %5114, label %5115, label %5002, !dx.controlflow.hints !132

; <label>:5115                                    ; preds = %5110
  %5116 = fmul fast float %5111, %4920
  %5117 = fmul fast float %5111, %4921
  %5118 = fmul fast float %5111, %4922
  %5119 = fsub fast float %4904, %2083
  %5120 = fcmp fast ogt float %5119, 0.000000e+00
  %5121 = fsub fast float %139, %2083
  %5122 = fcmp fast ogt float %5121, 0.000000e+00
  %5123 = xor i1 %5122, %5120
  %5124 = fsub fast float %2083, %4904
  %5125 = fmul fast float %5124, 2.000000e+00
  %5126 = fadd fast float %5125, %4904
  %5127 = select i1 %5123, float %4904, float %5126
  %5128 = fsub fast float %5127, %139
  %5129 = call float @dx.op.dot3.f32(i32 55, float %4930, float %4931, float %5128, float %4930, float %4931, float %5128)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = call float @dx.op.unary.f32(i32 25, float %5129)  ; Rsqrt(value)
  %5131 = fmul fast float %5130, %4930
  %5132 = fmul fast float %5130, %4931
  %5133 = fmul fast float %5130, %5128
  %5134 = fsub fast float %2083, %139
  %5135 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5134)  ; Dot3(ax,ay,az,bx,by,bz)
  %5136 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5131, float %5132, float %5133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5137 = fdiv fast float 1.000000e+00, %5136
  %5138 = fmul fast float %5137, %5135
  %5139 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5121, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5140 = fcmp fast ogt float %5139, 0.000000e+00
  %5141 = fcmp fast olt float %5139, 0.000000e+00
  %5142 = zext i1 %5140 to i32
  %5143 = zext i1 %5141 to i32
  %5144 = sub nsw i32 %5142, %5143
  %5145 = sitofp i32 %5144 to float
  %5146 = fsub fast float %5127, %2083
  %5147 = call float @dx.op.dot3.f32(i32 55, float %4930, float %4931, float %5146, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5148 = fcmp fast ogt float %5147, 0.000000e+00
  %5149 = fcmp fast olt float %5147, 0.000000e+00
  %5150 = zext i1 %5148 to i32
  %5151 = zext i1 %5149 to i32
  %5152 = sub nsw i32 %5150, %5151
  %5153 = sitofp i32 %5152 to float
  %5154 = fcmp fast une float %5145, %5153
  br i1 %5154, label %5155, label %5165

; <label>:5155                                    ; preds = %5115
  %5156 = fmul fast float %5138, %5133
  %5157 = fmul fast float %5138, %5132
  %5158 = fmul fast float %5138, %5131
  %5159 = fmul fast float %5158, %5158
  %5160 = fmul fast float %5157, %5157
  %5161 = fadd fast float %5159, %5160
  %5162 = fmul fast float %5156, %5156
  %5163 = fadd fast float %5161, %5162
  %5164 = call float @dx.op.unary.f32(i32 24, float %5163)  ; Sqrt(value)
  br label %5177

; <label>:5165                                    ; preds = %5115
  %5166 = icmp slt i32 %5144, 0
  br i1 %5166, label %5167, label %5177

; <label>:5167                                    ; preds = %5165
  %5168 = fsub fast float %137, %4902
  %5169 = fsub fast float %138, %4903
  %5170 = fsub fast float %139, %5127
  %5171 = fmul fast float %5168, %5168
  %5172 = fmul fast float %5169, %5169
  %5173 = fadd fast float %5171, %5172
  %5174 = fmul fast float %5170, %5170
  %5175 = fadd fast float %5173, %5174
  %5176 = call float @dx.op.unary.f32(i32 24, float %5175)  ; Sqrt(value)
  br label %5177

; <label>:5177                                    ; preds = %5167, %5165, %5155
  %5178 = phi float [ %5164, %5155 ], [ %5176, %5167 ], [ 0.000000e+00, %5165 ]
  %5179 = and i1 %5122, %5120
  %5180 = fsub fast float -0.000000e+00, %5178
  %5181 = select i1 %5179, float -0.000000e+00, float %5180
  %5182 = fmul fast float %2084, 0x3FF7154760000000
  %5183 = fmul fast float %5182, %5181
  %5184 = fmul fast float %2085, 0x3FF7154760000000
  %5185 = fmul fast float %5184, %5181
  %5186 = fmul fast float %2086, 0x3FF7154760000000
  %5187 = fmul fast float %5186, %5181
  %5188 = call float @dx.op.unary.f32(i32 21, float %5183)  ; Exp(value)
  %5189 = call float @dx.op.unary.f32(i32 21, float %5185)  ; Exp(value)
  %5190 = call float @dx.op.unary.f32(i32 21, float %5187)  ; Exp(value)
  %5191 = call float @dx.op.unary.f32(i32 7, float %5188)  ; Saturate(value)
  %5192 = call float @dx.op.unary.f32(i32 7, float %5189)  ; Saturate(value)
  %5193 = call float @dx.op.unary.f32(i32 7, float %5190)  ; Saturate(value)
  %5194 = fmul fast float %5116, %5191
  %5195 = fmul fast float %5117, %5192
  %5196 = fmul fast float %5118, %5193
  %5197 = fsub fast float %4936, %2283
  %5198 = fsub fast float %4937, %2282
  %5199 = fsub fast float %4938, %2281
  %5200 = call float @dx.op.dot3.f32(i32 55, float %5197, float %5198, float %5199, float %5197, float %5198, float %5199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5201 = call float @dx.op.unary.f32(i32 25, float %5200)  ; Rsqrt(value)
  %5202 = fmul fast float %5201, %5197
  %5203 = fmul fast float %5201, %5198
  %5204 = fmul fast float %5201, %5199
  %5205 = call float @dx.op.dot3.f32(i32 55, float %4936, float %4937, float %4938, float %2287, float %2288, float %2289)  ; Dot3(ax,ay,az,bx,by,bz)
  %5206 = call float @dx.op.dot3.f32(i32 55, float %2280, float %2279, float %2278, float %5202, float %5203, float %5204)  ; Dot3(ax,ay,az,bx,by,bz)
  %5207 = call float @dx.op.unary.f32(i32 7, float %5205)  ; Saturate(value)
  %5208 = fmul fast float %5207, %4943
  %5209 = fmul fast float %5207, %5207
  %5210 = fmul fast float %5209, %3697
  %5211 = call float @dx.op.unary.f32(i32 7, float %5210)  ; Saturate(value)
  %5212 = fmul fast float %5208, %5211
  %5213 = bitcast float %4933 to i32
  %5214 = ashr i32 %5213, 1
  %5215 = sub nsw i32 1597463007, %5214
  %5216 = bitcast i32 %5215 to float
  %5217 = fmul fast float %5216, %4930
  %5218 = fmul fast float %5216, %4931
  %5219 = fmul fast float %5216, %4932
  %5220 = fsub fast float %5217, %2283
  %5221 = fsub fast float %5218, %2282
  %5222 = fsub fast float %5219, %2281
  %5223 = call float @dx.op.dot3.f32(i32 55, float %5220, float %5221, float %5222, float %5220, float %5221, float %5222)  ; Dot3(ax,ay,az,bx,by,bz)
  %5224 = call float @dx.op.unary.f32(i32 25, float %5223)  ; Rsqrt(value)
  %5225 = fmul fast float %5220, %5224
  %5226 = fmul fast float %5221, %5224
  %5227 = fmul fast float %5222, %5224
  %5228 = call float @dx.op.dot3.f32(i32 55, float %2287, float %2288, float %2289, float %5225, float %5226, float %5227)  ; Dot3(ax,ay,az,bx,by,bz)
  %5229 = fmul fast float %5228, %5228
  %5230 = call float @dx.op.unary.f32(i32 6, float %5205)  ; FAbs(value)
  %5231 = fsub fast float 1.000000e+00, %2293
  %5232 = call float @dx.op.binary.f32(i32 35, float %5231, float 0x3F847AE140000000)  ; FMax(a,b)
  %5233 = fmul fast float %5232, %5232
  %5234 = fmul fast float %5233, %5233
  %5235 = fsub fast float 1.000000e+00, %5234
  %5236 = fmul fast float %2298, %2298
  %5237 = fmul fast float %5236, %5235
  %5238 = fadd fast float %5237, %5234
  %5239 = bitcast float %5238 to i32
  %5240 = ashr i32 %5239, 1
  %5241 = add nsw i32 %5240, 532487669
  %5242 = bitcast i32 %5241 to float
  %5243 = fadd fast float %5242, %2298
  %5244 = fmul fast float %5234, %5229
  %5245 = fsub fast float 1.000000e+00, %5229
  %5246 = fadd fast float %5245, %5244
  %5247 = fmul fast float %5230, %5230
  %5248 = fmul fast float %5247, %5235
  %5249 = fadd fast float %5248, %5234
  %5250 = bitcast float %5249 to i32
  %5251 = ashr i32 %5250, 1
  %5252 = add nsw i32 %5251, 532487669
  %5253 = bitcast i32 %5252 to float
  %5254 = fadd fast float %5253, %5230
  %5255 = fmul fast float %5246, %5246
  %5256 = fmul fast float %5255, %5243
  %5257 = fmul fast float %5256, %5254
  %5258 = fdiv fast float 1.000000e+00, %5257
  %5259 = bitcast float %5234 to i32
  %5260 = sitofp i32 %5259 to float
  %5261 = fmul fast float %5260, 0x3FE7F73180000000
  %5262 = fadd fast float %5261, 0x41AFE27C40000000
  %5263 = fptosi float %5262 to i32
  %5264 = bitcast i32 %5263 to float
  %5265 = fmul fast float %4899, 0x3FD80E9D60000000
  %5266 = fmul fast float %5265, %5216
  %5267 = fadd fast float %5264, %5266
  %5268 = bitcast float %5267 to i32
  %5269 = sub nsw i32 2129859010, %5268
  %5270 = bitcast i32 %5269 to float
  %5271 = fmul fast float %5234, %5258
  %5272 = fmul fast float %5271, %5264
  %5273 = fmul fast float %5272, %5270
  %5274 = fmul fast float %3563, 0x3FF9999980000000
  %5275 = fsub fast float 5.000000e+00, %5274
  %5276 = call float @dx.op.unary.f32(i32 6, float %5206)  ; FAbs(value)
  %5277 = fsub fast float 1.000000e+00, %5276
  %5278 = fmul fast float %3563, 0x41D9660740000000
  %5279 = fadd fast float %5278, 0xC1EFBF8940000000
  %5280 = bitcast float %5277 to i32
  %5281 = sitofp i32 %5280 to float
  %5282 = fmul fast float %5281, %5275
  %5283 = fadd fast float %5279, %5282
  %5284 = fptosi float %5283 to i32
  %5285 = bitcast i32 %5284 to float
  %5286 = fsub fast float 1.000000e+00, %2290
  %5287 = fsub fast float 1.000000e+00, %2291
  %5288 = fsub fast float 1.000000e+00, %2296
  %5289 = fmul fast float %5285, %5286
  %5290 = fmul fast float %5285, %5287
  %5291 = fmul fast float %5285, %5288
  %5292 = fadd fast float %5289, %2290
  %5293 = fadd fast float %5290, %2291
  %5294 = fadd fast float %5291, %2296
  br i1 %3586, label %5295, label %5318

; <label>:5295                                    ; preds = %5177
  %5296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1658, float %5276, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5297 = extractvalue %dx.types.ResRet.f32 %5296, 0
  %5298 = extractvalue %dx.types.ResRet.f32 %5296, 1
  %5299 = extractvalue %dx.types.ResRet.f32 %5296, 2
  %5300 = fadd fast float %5297, -5.000000e-01
  %5301 = fadd fast float %5298, -5.000000e-01
  %5302 = fadd fast float %5299, -5.000000e-01
  %5303 = fmul fast float %2290, 4.000000e+00
  %5304 = fmul fast float %5303, %5286
  %5305 = fmul fast float %5304, %5300
  %5306 = fmul fast float %2291, 4.000000e+00
  %5307 = fmul fast float %5306, %5287
  %5308 = fmul fast float %5307, %5301
  %5309 = fmul fast float %2296, 4.000000e+00
  %5310 = fmul fast float %5309, %5288
  %5311 = fmul fast float %5310, %5302
  %5312 = fadd fast float %5305, %5292
  %5313 = fadd fast float %5308, %5293
  %5314 = fadd fast float %5311, %5294
  %5315 = call float @dx.op.unary.f32(i32 7, float %5312)  ; Saturate(value)
  %5316 = call float @dx.op.unary.f32(i32 7, float %5313)  ; Saturate(value)
  %5317 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  br label %5318

; <label>:5318                                    ; preds = %5295, %5177
  %5319 = phi float [ %5315, %5295 ], [ %5292, %5177 ]
  %5320 = phi float [ %5316, %5295 ], [ %5293, %5177 ]
  %5321 = phi float [ %5317, %5295 ], [ %5294, %5177 ]
  %5322 = fmul fast float %5205, 9.843750e-01
  %5323 = fadd fast float %5322, 7.812500e-03
  %5324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5323, float %3567, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5325 = extractvalue %dx.types.ResRet.f32 %5324, 0
  %5326 = extractvalue %dx.types.ResRet.f32 %5324, 1
  %5327 = extractvalue %dx.types.ResRet.f32 %5324, 2
  %5328 = extractvalue %dx.types.ResRet.f32 %5324, 3
  %5329 = fsub fast float %5327, %5325
  %5330 = fsub fast float %5328, %5326
  %5331 = fmul fast float %5329, %3573
  %5332 = fmul fast float %5330, %3573
  %5333 = fadd fast float %5331, %5325
  %5334 = fadd fast float %5332, %5326
  %5335 = fmul fast float %5333, %2290
  %5336 = fmul fast float %5333, %2291
  %5337 = fmul fast float %5333, %2296
  %5338 = fadd fast float %5335, %5334
  %5339 = fadd fast float %5336, %5334
  %5340 = fadd fast float %5337, %5334
  br i1 %3586, label %5341, label %5364

; <label>:5341                                    ; preds = %5318
  %5342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1658, float %5205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5343 = extractvalue %dx.types.ResRet.f32 %5342, 0
  %5344 = extractvalue %dx.types.ResRet.f32 %5342, 1
  %5345 = extractvalue %dx.types.ResRet.f32 %5342, 2
  %5346 = fadd fast float %5343, -5.000000e-01
  %5347 = fadd fast float %5344, -5.000000e-01
  %5348 = fadd fast float %5345, -5.000000e-01
  %5349 = fmul fast float %2290, 4.000000e+00
  %5350 = fmul fast float %5349, %5286
  %5351 = fmul fast float %5350, %5346
  %5352 = fmul fast float %2291, 4.000000e+00
  %5353 = fmul fast float %5352, %5287
  %5354 = fmul fast float %5353, %5347
  %5355 = fmul fast float %2296, 4.000000e+00
  %5356 = fmul fast float %5355, %5288
  %5357 = fmul fast float %5356, %5348
  %5358 = fadd fast float %5351, %5338
  %5359 = fadd fast float %5354, %5339
  %5360 = fadd fast float %5357, %5340
  %5361 = call float @dx.op.unary.f32(i32 7, float %5358)  ; Saturate(value)
  %5362 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5363 = call float @dx.op.unary.f32(i32 7, float %5360)  ; Saturate(value)
  br label %5364

; <label>:5364                                    ; preds = %5341, %5318
  %5365 = phi float [ %5361, %5341 ], [ %5338, %5318 ]
  %5366 = phi float [ %5362, %5341 ], [ %5339, %5318 ]
  %5367 = phi float [ %5363, %5341 ], [ %5340, %5318 ]
  %5368 = call float @dx.op.binary.f32(i32 35, float %5366, float %5367)  ; FMax(a,b)
  %5369 = call float @dx.op.binary.f32(i32 35, float %5365, float %5368)  ; FMax(a,b)
  %5370 = fsub fast float 1.000000e+00, %5369
  %5371 = fmul fast float %5319, %5273
  %5372 = fmul fast float %5320, %5273
  %5373 = fmul fast float %5321, %5273
  %5374 = fsub fast float 1.000000e+00, %5206
  %5375 = bitcast float %5374 to i32
  %5376 = sitofp i32 %5375 to float
  %5377 = fmul fast float %5376, 5.000000e+00
  %5378 = fadd fast float %5377, 0xC1EFBF8940000000
  %5379 = fptosi float %5378 to i32
  %5380 = bitcast i32 %5379 to float
  %5381 = fmul fast float %5380, %1657
  %5382 = fmul fast float %5370, %5381
  %5383 = fmul fast float %5382, %3636
  %5384 = fmul fast float %5382, %3637
  %5385 = fmul fast float %5382, %3638
  %5386 = fadd fast float %5383, %5371
  %5387 = fadd fast float %5384, %5372
  %5388 = fadd fast float %5385, %5373
  %5389 = fmul fast float %5194, %1678
  %5390 = fmul fast float %5389, %5212
  %5391 = fmul fast float %5390, %5370
  %5392 = fmul fast float %5195, %1678
  %5393 = fmul fast float %5392, %5212
  %5394 = fmul fast float %5393, %5370
  %5395 = fmul fast float %5196, %1678
  %5396 = fmul fast float %5395, %5212
  %5397 = fmul fast float %5396, %5370
  %5398 = fadd fast float %5391, %4873
  %5399 = fadd fast float %5394, %4874
  %5400 = fadd fast float %5397, %4875
  %5401 = fmul fast float %5390, %5386
  %5402 = fmul fast float %5393, %5387
  %5403 = fmul fast float %5396, %5388
  %5404 = fadd fast float %5401, %4870
  %5405 = fadd fast float %5402, %4871
  %5406 = fadd fast float %5403, %4872
  br label %5002

; <label>:5407                                    ; preds = %5002
  br label %5408

; <label>:5408                                    ; preds = %5407, %4836
  %5409 = phi float [ %4838, %4836 ], [ %5003, %5407 ]
  %5410 = phi float [ %4839, %4836 ], [ %5004, %5407 ]
  %5411 = phi float [ %4840, %4836 ], [ %5005, %5407 ]
  %5412 = phi float [ %4841, %4836 ], [ %5006, %5407 ]
  %5413 = phi float [ %4842, %4836 ], [ %5007, %5407 ]
  %5414 = phi float [ %4843, %4836 ], [ %5008, %5407 ]
  %5415 = add i32 %4837, 1
  %5416 = icmp ugt i32 %5415, %4833
  br i1 %5416, label %5417, label %4836

; <label>:5417                                    ; preds = %5408
  br label %5418

; <label>:5418                                    ; preds = %5417, %4786, %4776
  %5419 = phi float [ %4777, %4776 ], [ %4777, %4786 ], [ %5409, %5417 ]
  %5420 = phi float [ %4778, %4776 ], [ %4778, %4786 ], [ %5410, %5417 ]
  %5421 = phi float [ %4779, %4776 ], [ %4779, %4786 ], [ %5411, %5417 ]
  %5422 = phi float [ %4780, %4776 ], [ %4780, %4786 ], [ %5412, %5417 ]
  %5423 = phi float [ %4781, %4776 ], [ %4781, %4786 ], [ %5413, %5417 ]
  %5424 = phi float [ %4782, %4776 ], [ %4782, %4786 ], [ %5414, %5417 ]
  %5425 = fmul fast float %1678, %1678
  %5426 = fmul fast float %5425, %3662
  %5427 = fmul fast float %5425, %3663
  %5428 = fmul fast float %5425, %3664
  %5429 = fadd fast float %5426, 1.000000e+00
  %5430 = fadd fast float %5427, 1.000000e+00
  %5431 = fadd fast float %5428, 1.000000e+00
  %5432 = call float @dx.op.dot3.f32(i32 55, float %5429, float %5430, float %5431, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5433 = fsub fast float 1.000000e+00, %5432
  %5434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5435 = extractvalue %dx.types.CBufRet.f32 %5434, 0
  %5436 = fmul fast float %5435, %3668
  %5437 = fmul fast float %2289, 2.000000e+00
  %5438 = fmul fast float %5437, %2299
  %5439 = fsub fast float %2281, %5438
  %5440 = call float @dx.op.unary.f32(i32 7, float %5439)  ; Saturate(value)
  %5441 = fsub fast float 1.000000e+00, %5440
  %5442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5443 = extractvalue %dx.types.CBufRet.f32 %5442, 3
  %5444 = fmul fast float %5443, %5441
  %5445 = fsub fast float 1.000000e+00, %1653
  %5446 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  %5447 = fadd fast float %5424, %1652
  %5448 = fmul fast float %5447, %1653
  %5449 = fmul fast float %5444, %5446
  %5450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5451 = extractvalue %dx.types.CBufRet.f32 %5450, 3
  %5452 = fmul fast float %5422, %2284
  %5453 = fmul fast float %5423, %2285
  %5454 = fmul fast float %5424, %2286
  %5455 = fcmp fast ogt float %81, %188
  %5456 = and i1 %5455, %2089
  %5457 = or i1 %2095, %5456
  %5458 = icmp eq i32 %2088, 2
  %5459 = fcmp fast ole float %81, %188
  %5460 = and i1 %5459, %5458
  %5461 = or i1 %5460, %5457
  br i1 %5456, label %5462, label %5721

; <label>:5462                                    ; preds = %5418
  %5463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5464 = extractvalue %dx.types.CBufRet.f32 %5463, 2
  %5465 = extractvalue %dx.types.CBufRet.f32 %5463, 3
  %5466 = fmul fast float %5464, %90
  %5467 = fmul fast float %5465, %91
  %5468 = call float @dx.op.unary.f32(i32 7, float %5466)  ; Saturate(value)
  %5469 = call float @dx.op.unary.f32(i32 7, float %5467)  ; Saturate(value)
  %5470 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5468, float %5469, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5471 = extractvalue %dx.types.ResRet.f32 %5470, 0
  %5472 = extractvalue %dx.types.ResRet.f32 %5470, 1
  %5473 = extractvalue %dx.types.ResRet.f32 %5470, 2
  %5474 = extractvalue %dx.types.ResRet.f32 %5470, 3
  %5475 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5468, float %5469, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5476 = extractvalue %dx.types.ResRet.f32 %5475, 0
  %5477 = extractvalue %dx.types.ResRet.f32 %5475, 1
  %5478 = extractvalue %dx.types.ResRet.f32 %5475, 2
  %5479 = extractvalue %dx.types.ResRet.f32 %5475, 3
  %5480 = call float @dx.op.binary.f32(i32 35, float %5472, float %5473)  ; FMax(a,b)
  %5481 = call float @dx.op.binary.f32(i32 35, float %5471, float %5480)  ; FMax(a,b)
  %5482 = call float @dx.op.binary.f32(i32 35, float %5481, float %5474)  ; FMax(a,b)
  %5483 = call float @dx.op.binary.f32(i32 36, float %5477, float %5478)  ; FMin(a,b)
  %5484 = call float @dx.op.binary.f32(i32 36, float %5476, float %5483)  ; FMin(a,b)
  %5485 = call float @dx.op.binary.f32(i32 36, float %5484, float %5479)  ; FMin(a,b)
  %5486 = fmul fast float %5482, 2.550000e+02
  %5487 = fadd fast float %5486, 0x3F70101020000000
  %5488 = fptoui float %5487 to i32
  %5489 = fmul fast float %5485, 2.550000e+02
  %5490 = fadd fast float %5489, 0x3F70101020000000
  %5491 = fptoui float %5490 to i32
  %5492 = icmp ult i32 %5488, %5491
  br i1 %5492, label %5493, label %5661

; <label>:5493                                    ; preds = %5462
  %5494 = fcmp fast ogt float %80, 9.843750e-01
  %5495 = fadd fast float %81, -4.000000e+00
  %5496 = select i1 %5494, float -4.000000e+00, float %5495
  %5497 = call float @dx.op.binary.f32(i32 35, float %5496, float 0.000000e+00)  ; FMax(a,b)
  %5498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5499 = extractvalue %dx.types.CBufRet.f32 %5498, 0
  %5500 = fadd fast float %5499, %5497
  %5501 = extractvalue %dx.types.CBufRet.f32 %5498, 2
  %5502 = fmul fast float %5500, %5501
  %5503 = call float @dx.op.unary.f32(i32 23, float %5502)  ; Log(value)
  %5504 = extractvalue %dx.types.CBufRet.f32 %5498, 3
  %5505 = fmul fast float %5504, %5503
  %5506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5507 = extractvalue %dx.types.CBufRet.f32 %5506, 2
  %5508 = fmul fast float %5505, %5507
  %5509 = call float @dx.op.unary.f32(i32 7, float %5508)  ; Saturate(value)
  %5510 = uitofp i32 %5488 to float
  %5511 = uitofp i32 %5491 to float
  %5512 = fadd fast float %5510, 5.000000e-01
  %5513 = fadd fast float %5511, 5.000000e-01
  %5514 = fmul fast float %5507, %5512
  %5515 = fmul fast float %5507, %5513
  %5516 = fadd fast float %5514, 0x3F0FFB4800000000
  %5517 = fadd fast float %5515, 0xBF0FFB4800000000
  %5518 = call float @dx.op.binary.f32(i32 35, float %5509, float %5516)  ; FMax(a,b)
  %5519 = call float @dx.op.binary.f32(i32 36, float %5518, float %5517)  ; FMin(a,b)
  %5520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5521 = extractvalue %dx.types.CBufRet.f32 %5520, 1
  %5522 = extractvalue %dx.types.CBufRet.f32 %5520, 2
  %5523 = extractvalue %dx.types.CBufRet.f32 %5520, 0
  %5524 = fmul fast float %5521, %5519
  %5525 = fadd fast float %5523, %5524
  %5526 = fadd fast float %5523, %5522
  %5527 = fsub fast float %5521, %5522
  %5528 = fadd fast float %5527, %5523
  %5529 = call float @dx.op.binary.f32(i32 35, float %5525, float %5526)  ; FMax(a,b)
  %5530 = call float @dx.op.binary.f32(i32 36, float %5529, float %5528)  ; FMin(a,b)
  %5531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %5468, float %5469, float %5530, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5532 = extractvalue %dx.types.ResRet.f32 %5531, 0
  %5533 = extractvalue %dx.types.ResRet.f32 %5531, 1
  %5534 = extractvalue %dx.types.ResRet.f32 %5531, 2
  %5535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5536 = extractvalue %dx.types.CBufRet.i32 %5535, 0
  %5537 = extractvalue %dx.types.CBufRet.i32 %5535, 1
  %5538 = uitofp i32 %5536 to float
  %5539 = uitofp i32 %5537 to float
  %5540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5541 = extractvalue %dx.types.CBufRet.f32 %5540, 0
  %5542 = extractvalue %dx.types.CBufRet.f32 %5540, 1
  %5543 = fmul fast float %5538, %5468
  %5544 = fmul fast float %5539, %5469
  %5545 = fadd fast float %5543, -5.000000e-01
  %5546 = fadd fast float %5544, -5.000000e-01
  %5547 = call float @dx.op.unary.f32(i32 22, float %5545)  ; Frc(value)
  %5548 = call float @dx.op.unary.f32(i32 22, float %5546)  ; Frc(value)
  %5549 = fmul fast float %5547, %5547
  %5550 = fmul fast float %5549, %5547
  %5551 = fsub fast float 3.000000e+00, %5547
  %5552 = fmul fast float %5549, %5551
  %5553 = fmul fast float %5547, 3.000000e+00
  %5554 = fmul fast float %5550, 3.000000e+00
  %5555 = fmul fast float %5549, 6.000000e+00
  %5556 = fsub fast float %5554, %5555
  %5557 = fadd fast float %5556, 4.000000e+00
  %5558 = fmul fast float %5557, 0x3FC5555560000000
  %5559 = fmul fast float %5550, -3.000000e+00
  %5560 = fadd fast float %5549, %5547
  %5561 = fmul fast float %5560, 3.000000e+00
  %5562 = fadd fast float %5559, 1.000000e+00
  %5563 = fadd fast float %5562, %5561
  %5564 = fmul fast float %5550, 0x3FC5555560000000
  %5565 = fmul fast float %5548, %5548
  %5566 = fmul fast float %5565, %5548
  %5567 = fsub fast float 3.000000e+00, %5548
  %5568 = fmul fast float %5565, %5567
  %5569 = fmul fast float %5548, 3.000000e+00
  %5570 = fmul fast float %5566, 3.000000e+00
  %5571 = fmul fast float %5565, 6.000000e+00
  %5572 = fsub fast float %5570, %5571
  %5573 = fadd fast float %5572, 4.000000e+00
  %5574 = fmul fast float %5573, 0x3FC5555560000000
  %5575 = fmul fast float %5566, -3.000000e+00
  %5576 = fadd fast float %5565, %5548
  %5577 = fmul fast float %5576, 3.000000e+00
  %5578 = fadd fast float %5575, 1.000000e+00
  %5579 = fadd fast float %5578, %5577
  %5580 = fmul fast float %5566, 0x3FC5555560000000
  %5581 = fadd fast float %5547, 1.000000e+00
  %5582 = fsub fast float 1.000000e+00, %5553
  %5583 = fadd fast float %5582, %5552
  %5584 = fadd fast float %5583, %5557
  %5585 = fmul fast float %5584, 0x3FC5555560000000
  %5586 = fdiv fast float %5558, %5585
  %5587 = fsub fast float %5581, %5586
  %5588 = fsub fast float 1.000000e+00, %5547
  %5589 = fadd fast float %5563, %5550
  %5590 = fmul fast float %5589, 0x3FC5555560000000
  %5591 = fdiv fast float %5564, %5590
  %5592 = fadd fast float %5588, %5591
  %5593 = fadd fast float %5548, 1.000000e+00
  %5594 = fsub fast float 1.000000e+00, %5569
  %5595 = fadd fast float %5594, %5568
  %5596 = fadd fast float %5595, %5573
  %5597 = fmul fast float %5596, 0x3FC5555560000000
  %5598 = fdiv fast float %5574, %5597
  %5599 = fsub fast float %5593, %5598
  %5600 = fsub fast float 1.000000e+00, %5548
  %5601 = fadd fast float %5579, %5566
  %5602 = fmul fast float %5601, 0x3FC5555560000000
  %5603 = fdiv fast float %5580, %5602
  %5604 = fadd fast float %5603, %5600
  %5605 = fmul fast float %5587, %5541
  %5606 = fsub fast float %5468, %5605
  %5607 = fmul fast float %5592, %5541
  %5608 = fadd fast float %5607, %5468
  %5609 = fmul fast float %5604, %5542
  %5610 = fadd fast float %5609, %5469
  %5611 = fmul fast float %5599, %5542
  %5612 = fsub fast float %5469, %5611
  %5613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5606, float %5612, float %5530, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5614 = extractvalue %dx.types.ResRet.f32 %5613, 0
  %5615 = extractvalue %dx.types.ResRet.f32 %5613, 1
  %5616 = extractvalue %dx.types.ResRet.f32 %5613, 2
  %5617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5608, float %5612, float %5530, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5618 = extractvalue %dx.types.ResRet.f32 %5617, 0
  %5619 = extractvalue %dx.types.ResRet.f32 %5617, 1
  %5620 = extractvalue %dx.types.ResRet.f32 %5617, 2
  %5621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5606, float %5610, float %5530, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5622 = extractvalue %dx.types.ResRet.f32 %5621, 0
  %5623 = extractvalue %dx.types.ResRet.f32 %5621, 1
  %5624 = extractvalue %dx.types.ResRet.f32 %5621, 2
  %5625 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5608, float %5610, float %5530, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5626 = extractvalue %dx.types.ResRet.f32 %5625, 0
  %5627 = extractvalue %dx.types.ResRet.f32 %5625, 1
  %5628 = extractvalue %dx.types.ResRet.f32 %5625, 2
  %5629 = fsub fast float %5622, %5614
  %5630 = fsub fast float %5623, %5615
  %5631 = fsub fast float %5624, %5616
  %5632 = fmul fast float %5629, %5602
  %5633 = fmul fast float %5630, %5602
  %5634 = fmul fast float %5631, %5602
  %5635 = fadd fast float %5632, %5614
  %5636 = fadd fast float %5633, %5615
  %5637 = fadd fast float %5634, %5616
  %5638 = fsub fast float %5626, %5618
  %5639 = fsub fast float %5627, %5619
  %5640 = fsub fast float %5628, %5620
  %5641 = fmul fast float %5638, %5602
  %5642 = fmul fast float %5639, %5602
  %5643 = fmul fast float %5640, %5602
  %5644 = fsub fast float %5618, %5635
  %5645 = fadd fast float %5644, %5641
  %5646 = fsub fast float %5619, %5636
  %5647 = fadd fast float %5646, %5642
  %5648 = fsub fast float %5620, %5637
  %5649 = fadd fast float %5648, %5643
  %5650 = fmul fast float %5645, %5590
  %5651 = fmul fast float %5647, %5590
  %5652 = fmul fast float %5649, %5590
  %5653 = fadd fast float %5650, %5635
  %5654 = fadd fast float %5651, %5636
  %5655 = fadd fast float %5652, %5637
  %5656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5657 = extractvalue %dx.types.CBufRet.f32 %5656, 1
  %5658 = fmul fast float %5653, %5657
  %5659 = fmul fast float %5654, %5657
  %5660 = fmul fast float %5655, %5657
  br label %5661

; <label>:5661                                    ; preds = %5493, %5462
  %5662 = phi float [ %5532, %5493 ], [ 1.000000e+00, %5462 ]
  %5663 = phi float [ %5533, %5493 ], [ 1.000000e+00, %5462 ]
  %5664 = phi float [ %5534, %5493 ], [ 1.000000e+00, %5462 ]
  %5665 = phi float [ %5658, %5493 ], [ 0.000000e+00, %5462 ]
  %5666 = phi float [ %5659, %5493 ], [ 0.000000e+00, %5462 ]
  %5667 = phi float [ %5660, %5493 ], [ 0.000000e+00, %5462 ]
  %5668 = fmul fast float %5665, %5433
  %5669 = fmul fast float %5666, %5433
  %5670 = fmul fast float %5667, %5433
  %5671 = call float @dx.op.dot3.f32(i32 55, float %5662, float %5663, float %5664, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5672 = call float @dx.op.dot3.f32(i32 55, float %5668, float %5669, float %5670, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5673 = select i1 %228, float %5671, float %5662
  %5674 = select i1 %228, float %5671, float %5663
  %5675 = select i1 %228, float 1.000000e+00, float %5664
  %5676 = select i1 %228, float %5672, float %5668
  %5677 = select i1 %228, float 0.000000e+00, float %5669
  %5678 = select i1 %228, float 0.000000e+00, float %5670
  %5679 = fmul fast float %5673, %5452
  %5680 = fmul fast float %5674, %5453
  %5681 = fmul fast float %5675, %5454
  %5682 = fadd fast float %5679, %5676
  %5683 = fadd fast float %5680, %5677
  %5684 = fadd fast float %5678, %5681
  %5685 = fmul fast float %5673, %5419
  %5686 = fmul fast float %5674, %5420
  %5687 = fmul fast float %5675, %5421
  %5688 = fmul fast float %90, 2.000000e+00
  %5689 = fmul fast float %5688, %5464
  %5690 = fmul fast float %91, 2.000000e+00
  %5691 = fmul fast float %5690, %5465
  %5692 = fsub fast float 1.000000e+00, %5689
  %5693 = fsub fast float 1.000000e+00, %5691
  %5694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5695 = extractvalue %dx.types.CBufRet.f32 %5694, 0
  %5696 = extractvalue %dx.types.CBufRet.f32 %5694, 1
  %5697 = extractvalue %dx.types.CBufRet.f32 %5694, 2
  %5698 = fmul fast float %5692, %5695
  %5699 = fmul fast float %5692, %5696
  %5700 = fmul fast float %5692, %5697
  %5701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5702 = extractvalue %dx.types.CBufRet.f32 %5701, 0
  %5703 = extractvalue %dx.types.CBufRet.f32 %5701, 1
  %5704 = extractvalue %dx.types.CBufRet.f32 %5701, 2
  %5705 = fmul fast float %5693, %5702
  %5706 = fmul fast float %5693, %5703
  %5707 = fmul fast float %5693, %5704
  %5708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5709 = extractvalue %dx.types.CBufRet.f32 %5708, 0
  %5710 = extractvalue %dx.types.CBufRet.f32 %5708, 1
  %5711 = extractvalue %dx.types.CBufRet.f32 %5708, 2
  %5712 = fadd fast float %5705, %5709
  %5713 = fadd fast float %5712, %5698
  %5714 = fadd fast float %5706, %5710
  %5715 = fadd fast float %5714, %5699
  %5716 = fadd fast float %5707, %5711
  %5717 = fadd fast float %5716, %5700
  %5718 = fmul fast float %5713, %188
  %5719 = fmul fast float %5715, %188
  %5720 = fmul fast float %5717, %188
  br label %5721

; <label>:5721                                    ; preds = %5661, %5418
  %5722 = phi float [ %5718, %5661 ], [ %137, %5418 ]
  %5723 = phi float [ %5719, %5661 ], [ %138, %5418 ]
  %5724 = phi float [ %5720, %5661 ], [ %139, %5418 ]
  %5725 = phi float [ %188, %5661 ], [ %81, %5418 ]
  %5726 = phi float [ %5682, %5661 ], [ %5452, %5418 ]
  %5727 = phi float [ %5683, %5661 ], [ %5453, %5418 ]
  %5728 = phi float [ %5684, %5661 ], [ %5454, %5418 ]
  %5729 = phi float [ %5685, %5661 ], [ %5419, %5418 ]
  %5730 = phi float [ %5686, %5661 ], [ %5420, %5418 ]
  %5731 = phi float [ %5687, %5661 ], [ %5421, %5418 ]
  %5732 = phi float [ %5662, %5661 ], [ 1.000000e+00, %5418 ]
  br i1 %5461, label %6887, label %5733

; <label>:5733                                    ; preds = %5721
  %5734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5735 = extractvalue %dx.types.CBufRet.f32 %5734, 0
  %5736 = extractvalue %dx.types.CBufRet.f32 %5734, 1
  %5737 = extractvalue %dx.types.CBufRet.f32 %5734, 2
  %5738 = extractvalue %dx.types.CBufRet.f32 %5734, 3
  %5739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5740 = extractvalue %dx.types.CBufRet.f32 %5739, 0
  %5741 = extractvalue %dx.types.CBufRet.f32 %5739, 1
  %5742 = extractvalue %dx.types.CBufRet.f32 %5739, 2
  %5743 = extractvalue %dx.types.CBufRet.f32 %5739, 3
  %5744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5745 = extractvalue %dx.types.CBufRet.f32 %5744, 0
  %5746 = extractvalue %dx.types.CBufRet.f32 %5744, 1
  %5747 = extractvalue %dx.types.CBufRet.f32 %5744, 2
  %5748 = extractvalue %dx.types.CBufRet.f32 %5744, 3
  %5749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5750 = extractvalue %dx.types.CBufRet.f32 %5749, 0
  %5751 = extractvalue %dx.types.CBufRet.f32 %5749, 1
  %5752 = extractvalue %dx.types.CBufRet.f32 %5749, 2
  %5753 = extractvalue %dx.types.CBufRet.f32 %5749, 3
  %5754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5755 = extractvalue %dx.types.CBufRet.f32 %5754, 3
  %5756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5757 = extractvalue %dx.types.CBufRet.f32 %5756, 3
  %5758 = extractvalue %dx.types.CBufRet.f32 %5756, 0
  %5759 = extractvalue %dx.types.CBufRet.f32 %5756, 1
  %5760 = extractvalue %dx.types.CBufRet.f32 %5756, 2
  %5761 = fcmp fast olt float %5760, -5.000000e-01
  %5762 = call float @dx.op.dot3.f32(i32 55, float %5722, float %5723, float %5724, float %5722, float %5723, float %5724)  ; Dot3(ax,ay,az,bx,by,bz)
  %5763 = call float @dx.op.unary.f32(i32 25, float %5762)  ; Rsqrt(value)
  %5764 = fmul fast float %5763, %5762
  %5765 = fmul fast float %5763, %5722
  %5766 = fmul fast float %5763, %5723
  %5767 = fmul fast float %5763, %5724
  %5768 = fadd fast float %5764, %5738
  %5769 = call float @dx.op.dot3.f32(i32 55, float %5765, float %5766, float %5767, float %5735, float %5736, float %5737)  ; Dot3(ax,ay,az,bx,by,bz)
  %5770 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5771 = extractvalue %dx.types.CBufRet.i32 %5770, 1
  %5772 = and i32 %5771, 1
  %5773 = icmp ne i32 %5772, 0
  %5774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5775 = extractvalue %dx.types.CBufRet.f32 %5774, 2
  %5776 = fcmp fast ogt float %5775, 0.000000e+00
  %5777 = and i1 %5773, %5776
  br i1 %5777, label %5778, label %6184, !dx.controlflow.hints !133

; <label>:5778                                    ; preds = %5733
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 3
  %5781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5782 = extractvalue %dx.types.CBufRet.f32 %5781, 2
  %5783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5784 = extractvalue %dx.types.CBufRet.f32 %5783, 2
  %5785 = fsub fast float %5782, %5784
  %5786 = and i32 %5771, 2
  %5787 = extractvalue %dx.types.CBufRet.i32 %5770, 0
  %5788 = call i32 @dx.op.binary.i32(i32 40, i32 %5787, i32 3)  ; UMin(a,b)
  %5789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5790 = extractvalue %dx.types.CBufRet.f32 %5789, 0
  %5791 = extractvalue %dx.types.CBufRet.f32 %5789, 1
  %5792 = extractvalue %dx.types.CBufRet.f32 %5783, 0
  %5793 = extractvalue %dx.types.CBufRet.f32 %5783, 1
  %5794 = fsub fast float %5790, %5792
  %5795 = fsub fast float %5791, %5793
  %5796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5797 = extractvalue %dx.types.CBufRet.f32 %5796, 0
  %5798 = fcmp fast ogt float %5797, 0.000000e+00
  %5799 = fsub fast float -0.000000e+00, %5794
  %5800 = fsub fast float -0.000000e+00, %5795
  %5801 = call float @dx.op.dot2.f32(i32 54, float %5765, float %5766, float %5765, float %5766)  ; Dot2(ax,ay,bx,by)
  %5802 = call float @dx.op.dot2.f32(i32 54, float %5765, float %5766, float %5799, float %5800)  ; Dot2(ax,ay,bx,by)
  %5803 = fmul fast float %5802, 2.000000e+00
  %5804 = call float @dx.op.dot2.f32(i32 54, float %5799, float %5800, float %5799, float %5800)  ; Dot2(ax,ay,bx,by)
  %5805 = fmul fast float %5797, %5797
  %5806 = fsub fast float %5804, %5805
  %5807 = fmul fast float %5803, %5803
  %5808 = fmul fast float %5801, 4.000000e+00
  %5809 = fmul fast float %5808, %5806
  %5810 = fsub fast float %5807, %5809
  %5811 = fcmp fast ogt float %5810, 0.000000e+00
  br i1 %5811, label %5812, label %5827

; <label>:5812                                    ; preds = %5778
  %5813 = fcmp fast ogt float %5803, 0.000000e+00
  %5814 = call float @dx.op.unary.f32(i32 24, float %5810)  ; Sqrt(value)
  %5815 = fsub fast float -0.000000e+00, %5814
  %5816 = select i1 %5813, float %5814, float %5815
  %5817 = fadd fast float %5816, %5803
  %5818 = fmul float %5817, -5.000000e-01
  %5819 = fdiv fast float %5818, %5801
  %5820 = call float @dx.op.binary.f32(i32 35, float %5819, float 0.000000e+00)  ; FMax(a,b)
  %5821 = call float @dx.op.binary.f32(i32 36, float %5764, float %5820)  ; FMin(a,b)
  %5822 = fdiv fast float %5806, %5818
  %5823 = call float @dx.op.binary.f32(i32 35, float %5822, float 0.000000e+00)  ; FMax(a,b)
  %5824 = call float @dx.op.binary.f32(i32 36, float %5764, float %5823)  ; FMin(a,b)
  %5825 = call float @dx.op.binary.f32(i32 36, float %5821, float %5824)  ; FMin(a,b)
  %5826 = call float @dx.op.binary.f32(i32 35, float %5821, float %5824)  ; FMax(a,b)
  br label %5827

; <label>:5827                                    ; preds = %5812, %5778
  %5828 = phi float [ %5826, %5812 ], [ -1.000000e+00, %5778 ]
  %5829 = phi float [ %5825, %5812 ], [ -1.000000e+00, %5778 ]
  %5830 = phi i1 [ true, %5812 ], [ false, %5778 ]
  %5831 = and i1 %5798, %5830
  br i1 %5831, label %5832, label %5834

; <label>:5832                                    ; preds = %5827
  %5833 = fcmp fast oeq float %5829, %5828
  br i1 %5833, label %6137, label %5835

; <label>:5834                                    ; preds = %5827
  br i1 %5798, label %6137, label %5835

; <label>:5835                                    ; preds = %5834, %5832
  %5836 = phi float [ %5764, %5834 ], [ %5828, %5832 ]
  %5837 = phi float [ 0.000000e+00, %5834 ], [ %5829, %5832 ]
  %5838 = icmp ne i32 %5786, 0
  %5839 = fmul fast float %5836, %5767
  %5840 = fadd fast float %5839, %5780
  %5841 = fmul fast float %5840, %5836
  %5842 = select i1 %5838, float 0.000000e+00, float %5841
  %5843 = fcmp fast oeq float %5767, 0.000000e+00
  %5844 = fdiv fast float %5785, %5767
  %5845 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5844)  ; FMax(a,b)
  %5846 = select i1 %5843, float %5836, float %5845
  %5847 = call float @dx.op.binary.f32(i32 36, float %5836, float %5846)  ; FMin(a,b)
  %5848 = fcmp fast ogt float %5767, 0.000000e+00
  %5849 = fcmp fast olt float %5785, 0.000000e+00
  br i1 %5848, label %5850, label %5907

; <label>:5850                                    ; preds = %5835
  %5851 = icmp eq i32 %5786, 0
  br i1 %5849, label %5852, label %5896

; <label>:5852                                    ; preds = %5850
  %5853 = select i1 %5851, float %5836, float 0.000000e+00
  %5854 = fsub fast float -0.000000e+00, %5853
  %5855 = call float @dx.op.unary.f32(i32 6, float %5854)  ; FAbs(value)
  %5856 = fmul fast float %5853, %5767
  %5857 = fadd fast float %5856, %5780
  %5858 = fmul fast float %5855, %5857
  %5859 = fsub fast float %5842, %5858
  %5860 = fsub fast float %5836, %5855
  %5861 = select i1 %5851, float %5860, float 0.000000e+00
  %5862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5863 = extractvalue %dx.types.CBufRet.f32 %5862, 0
  %5864 = extractvalue %dx.types.CBufRet.f32 %5862, 1
  %5865 = extractvalue %dx.types.CBufRet.f32 %5862, 2
  %5866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5866, 0
  %5868 = extractvalue %dx.types.CBufRet.f32 %5866, 1
  %5869 = extractvalue %dx.types.CBufRet.f32 %5866, 2
  %5870 = extractvalue %dx.types.CBufRet.f32 %5866, 3
  %5871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.f32 %5871, 3
  %5873 = call float @dx.op.binary.f32(i32 36, float %5859, float %5872)  ; FMin(a,b)
  %5874 = fmul fast float %5870, %5861
  %5875 = call float @dx.op.unary.f32(i32 7, float %5874)  ; Saturate(value)
  %5876 = fsub fast float %5867, %5863
  %5877 = fsub fast float %5868, %5864
  %5878 = fsub fast float %5869, %5865
  %5879 = fmul fast float %5875, %5876
  %5880 = fmul fast float %5875, %5877
  %5881 = fmul fast float %5875, %5878
  %5882 = fadd fast float %5879, %5863
  %5883 = fadd fast float %5880, %5864
  %5884 = fadd fast float %5881, %5865
  %5885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5886 = extractvalue %dx.types.CBufRet.f32 %5885, 0
  %5887 = extractvalue %dx.types.CBufRet.f32 %5885, 1
  %5888 = fadd fast float %5887, %5886
  %5889 = call float @dx.op.unary.f32(i32 7, float %5888)  ; Saturate(value)
  %5890 = extractvalue %dx.types.CBufRet.f32 %5885, 2
  %5891 = extractvalue %dx.types.CBufRet.f32 %5885, 3
  %5892 = fadd fast float %5891, %5890
  %5893 = call float @dx.op.unary.f32(i32 7, float %5892)  ; Saturate(value)
  %5894 = fmul fast float %5889, %5873
  %5895 = fmul fast float %5894, %5893
  br label %6137

; <label>:5896                                    ; preds = %5850
  br i1 %5851, label %5897, label %5918

; <label>:5897                                    ; preds = %5896
  %5898 = call float @dx.op.binary.f32(i32 36, float %5847, float %5837)  ; FMin(a,b)
  %5899 = fsub fast float %5847, %5898
  %5900 = fsub fast float %5899, %5836
  %5901 = call float @dx.op.unary.f32(i32 6, float %5900)  ; FAbs(value)
  %5902 = fadd fast float %5899, %5836
  %5903 = fmul fast float %5902, %5767
  %5904 = fadd fast float %5903, %5780
  %5905 = fmul fast float %5904, %5901
  %5906 = fsub fast float %5842, %5905
  br label %5918

; <label>:5907                                    ; preds = %5835
  br i1 %5849, label %5908, label %5918

; <label>:5908                                    ; preds = %5907
  %5909 = call float @dx.op.binary.f32(i32 35, float %5837, float %5847)  ; FMax(a,b)
  %5910 = icmp eq i32 %5786, 0
  %5911 = select i1 %5910, float %5847, float 0.000000e+00
  %5912 = fsub fast float -0.000000e+00, %5911
  %5913 = call float @dx.op.unary.f32(i32 6, float %5912)  ; FAbs(value)
  %5914 = fmul fast float %5911, %5767
  %5915 = fadd fast float %5914, %5780
  %5916 = fmul fast float %5913, %5915
  %5917 = fsub fast float %5842, %5916
  br label %5918

; <label>:5918                                    ; preds = %5908, %5907, %5897, %5896
  %5919 = phi float [ %5837, %5896 ], [ %5837, %5897 ], [ %5909, %5908 ], [ %5837, %5907 ]
  %5920 = phi float [ 0.000000e+00, %5896 ], [ %5901, %5897 ], [ %5913, %5908 ], [ 0.000000e+00, %5907 ]
  %5921 = phi float [ %5842, %5896 ], [ %5906, %5897 ], [ %5917, %5908 ], [ %5842, %5907 ]
  %5922 = phi float [ %5847, %5896 ], [ %5847, %5897 ], [ %5836, %5908 ], [ %5836, %5907 ]
  %5923 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 0
  store float -1.000000e+00, float* %5923, align 4, !tbaa !134, !noalias !136
  %5924 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 1
  store float -1.000000e+00, float* %5924, align 4, !tbaa !134, !noalias !136
  %5925 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 2
  store float -1.000000e+00, float* %5925, align 4, !tbaa !134, !noalias !136
  %5926 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 0
  store float -1.000000e+00, float* %5926, align 4, !tbaa !134, !noalias !136
  %5927 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 1
  store float -1.000000e+00, float* %5927, align 4, !tbaa !134, !noalias !136
  %5928 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 2
  store float -1.000000e+00, float* %5928, align 4, !tbaa !134, !noalias !136
  %5929 = icmp sgt i32 %5788, 0
  br i1 %5929, label %5930, label %5991

; <label>:5930                                    ; preds = %5918
  br label %5931

; <label>:5931                                    ; preds = %5980, %5930
  %5932 = phi i32 [ %5981, %5980 ], [ 0, %5930 ]
  %5933 = phi i32 [ %5982, %5980 ], [ 0, %5930 ]
  %5934 = add nuw i32 %5933, 171
  %5935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %5934)  ; CBufferLoadLegacy(handle,regIndex)
  %5936 = extractvalue %dx.types.CBufRet.f32 %5935, 0
  %5937 = extractvalue %dx.types.CBufRet.f32 %5935, 1
  %5938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5939 = extractvalue %dx.types.CBufRet.f32 %5938, 0
  %5940 = extractvalue %dx.types.CBufRet.f32 %5938, 1
  %5941 = fsub fast float %5936, %5939
  %5942 = fsub fast float %5937, %5940
  %5943 = extractvalue %dx.types.CBufRet.f32 %5935, 2
  %5944 = fsub fast float -0.000000e+00, %5941
  %5945 = fsub fast float -0.000000e+00, %5942
  %5946 = call float @dx.op.dot2.f32(i32 54, float %5765, float %5766, float %5944, float %5945)  ; Dot2(ax,ay,bx,by)
  %5947 = fmul fast float %5946, 2.000000e+00
  %5948 = call float @dx.op.dot2.f32(i32 54, float %5944, float %5945, float %5944, float %5945)  ; Dot2(ax,ay,bx,by)
  %5949 = fmul fast float %5943, %5943
  %5950 = fsub fast float %5948, %5949
  %5951 = fmul fast float %5947, %5947
  %5952 = fmul fast float %5808, %5950
  %5953 = fsub fast float %5951, %5952
  %5954 = fcmp fast ogt float %5953, 0.000000e+00
  br i1 %5954, label %5955, label %5970

; <label>:5955                                    ; preds = %5931
  %5956 = fcmp fast ogt float %5947, 0.000000e+00
  %5957 = call float @dx.op.unary.f32(i32 24, float %5953)  ; Sqrt(value)
  %5958 = fsub fast float -0.000000e+00, %5957
  %5959 = select i1 %5956, float %5957, float %5958
  %5960 = fadd fast float %5959, %5947
  %5961 = fmul float %5960, -5.000000e-01
  %5962 = fdiv fast float %5961, %5801
  %5963 = call float @dx.op.binary.f32(i32 35, float %5962, float 0.000000e+00)  ; FMax(a,b)
  %5964 = call float @dx.op.binary.f32(i32 36, float %5836, float %5963)  ; FMin(a,b)
  %5965 = fdiv fast float %5950, %5961
  %5966 = call float @dx.op.binary.f32(i32 35, float %5965, float 0.000000e+00)  ; FMax(a,b)
  %5967 = call float @dx.op.binary.f32(i32 36, float %5836, float %5966)  ; FMin(a,b)
  %5968 = call float @dx.op.binary.f32(i32 36, float %5964, float %5967)  ; FMin(a,b)
  %5969 = call float @dx.op.binary.f32(i32 35, float %5964, float %5967)  ; FMax(a,b)
  br label %5970

; <label>:5970                                    ; preds = %5955, %5931
  %5971 = phi float [ %5969, %5955 ], [ -1.000000e+00, %5931 ]
  %5972 = phi float [ %5968, %5955 ], [ -1.000000e+00, %5931 ]
  %5973 = phi i1 [ true, %5955 ], [ false, %5931 ]
  br i1 %5973, label %5974, label %5980

; <label>:5974                                    ; preds = %5970
  %5975 = call float @dx.op.binary.f32(i32 35, float %5919, float %5972)  ; FMax(a,b)
  %5976 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %5933
  store float %5975, float* %5976, align 4, !tbaa !134, !noalias !136
  %5977 = call float @dx.op.binary.f32(i32 35, float %5919, float %5971)  ; FMax(a,b)
  %5978 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %5933
  store float %5977, float* %5978, align 4, !tbaa !134, !noalias !136
  %5979 = add nsw i32 %5932, 1
  br label %5980

; <label>:5980                                    ; preds = %5974, %5970
  %5981 = phi i32 [ %5979, %5974 ], [ %5932, %5970 ]
  %5982 = add nuw nsw i32 %5933, 1
  %5983 = icmp eq i32 %5982, %5788
  br i1 %5983, label %5984, label %5931

; <label>:5984                                    ; preds = %5980
  %5985 = load float, float* %5925, align 4, !tbaa !134, !alias.scope !152, !noalias !155
  %5986 = load float, float* %5924, align 4, !tbaa !134, !alias.scope !158, !noalias !159
  %5987 = load float, float* %5923, align 4, !tbaa !134, !alias.scope !160, !noalias !161
  %5988 = load float, float* %5928, align 4, !tbaa !134, !alias.scope !162, !noalias !165
  %5989 = load float, float* %5927, align 4, !tbaa !134, !alias.scope !168, !noalias !169
  %5990 = load float, float* %5926, align 4, !tbaa !134, !alias.scope !170, !noalias !171
  br label %5991

; <label>:5991                                    ; preds = %5984, %5918
  %5992 = phi float [ -1.000000e+00, %5918 ], [ %5990, %5984 ]
  %5993 = phi float [ -1.000000e+00, %5918 ], [ %5989, %5984 ]
  %5994 = phi float [ -1.000000e+00, %5918 ], [ %5988, %5984 ]
  %5995 = phi float [ -1.000000e+00, %5918 ], [ %5987, %5984 ]
  %5996 = phi float [ -1.000000e+00, %5918 ], [ %5986, %5984 ]
  %5997 = phi float [ -1.000000e+00, %5918 ], [ %5985, %5984 ]
  %5998 = phi i32 [ 0, %5918 ], [ %5981, %5984 ]
  %5999 = call float @dx.op.binary.f32(i32 36, float %5996, float %5997)  ; FMin(a,b)
  %6000 = call float @dx.op.binary.f32(i32 36, float %5995, float %5999)  ; FMin(a,b)
  %6001 = call float @dx.op.binary.f32(i32 35, float %5995, float %5996)  ; FMax(a,b)
  %6002 = call float @dx.op.binary.f32(i32 36, float %6001, float %5997)  ; FMin(a,b)
  %6003 = call float @dx.op.binary.f32(i32 36, float %5995, float %5996)  ; FMin(a,b)
  %6004 = call float @dx.op.binary.f32(i32 35, float %6003, float %6002)  ; FMax(a,b)
  %6005 = call float @dx.op.binary.f32(i32 35, float %5996, float %5997)  ; FMax(a,b)
  %6006 = call float @dx.op.binary.f32(i32 35, float %5995, float %6005)  ; FMax(a,b)
  store float %6000, float* %5923, align 4, !tbaa !134, !alias.scope !160, !noalias !161
  store float %6004, float* %5924, align 4, !tbaa !134, !alias.scope !158, !noalias !159
  store float %6006, float* %5925, align 4, !tbaa !134, !alias.scope !152, !noalias !155
  %6007 = call float @dx.op.binary.f32(i32 36, float %5993, float %5994)  ; FMin(a,b)
  %6008 = call float @dx.op.binary.f32(i32 36, float %5992, float %6007)  ; FMin(a,b)
  %6009 = call float @dx.op.binary.f32(i32 35, float %5992, float %5993)  ; FMax(a,b)
  %6010 = call float @dx.op.binary.f32(i32 36, float %6009, float %5994)  ; FMin(a,b)
  %6011 = call float @dx.op.binary.f32(i32 36, float %5992, float %5993)  ; FMin(a,b)
  %6012 = call float @dx.op.binary.f32(i32 35, float %6011, float %6010)  ; FMax(a,b)
  %6013 = call float @dx.op.binary.f32(i32 35, float %5993, float %5994)  ; FMax(a,b)
  %6014 = call float @dx.op.binary.f32(i32 35, float %5992, float %6013)  ; FMax(a,b)
  store float %6008, float* %5926, align 4, !tbaa !134, !alias.scope !170, !noalias !171
  store float %6012, float* %5927, align 4, !tbaa !134, !alias.scope !168, !noalias !169
  store float %6014, float* %5928, align 4, !tbaa !134, !alias.scope !162, !noalias !165
  %6015 = sub nsw i32 3, %5998
  %6016 = icmp sgt i32 %6015, 2
  br i1 %6016, label %6017, label %6055

; <label>:6017                                    ; preds = %5991
  %6018 = icmp eq i32 %5786, 0
  %6019 = fsub fast float %5836, %5920
  %6020 = select i1 %6018, float %6019, float %5920
  %6021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6022 = extractvalue %dx.types.CBufRet.f32 %6021, 0
  %6023 = extractvalue %dx.types.CBufRet.f32 %6021, 1
  %6024 = extractvalue %dx.types.CBufRet.f32 %6021, 2
  %6025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6026 = extractvalue %dx.types.CBufRet.f32 %6025, 0
  %6027 = extractvalue %dx.types.CBufRet.f32 %6025, 1
  %6028 = extractvalue %dx.types.CBufRet.f32 %6025, 2
  %6029 = extractvalue %dx.types.CBufRet.f32 %6025, 3
  %6030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6031 = extractvalue %dx.types.CBufRet.f32 %6030, 3
  %6032 = call float @dx.op.binary.f32(i32 36, float %5921, float %6031)  ; FMin(a,b)
  %6033 = fmul fast float %6029, %6020
  %6034 = call float @dx.op.unary.f32(i32 7, float %6033)  ; Saturate(value)
  %6035 = fsub fast float %6026, %6022
  %6036 = fsub fast float %6027, %6023
  %6037 = fsub fast float %6028, %6024
  %6038 = fmul fast float %6034, %6035
  %6039 = fmul fast float %6034, %6036
  %6040 = fmul fast float %6034, %6037
  %6041 = fadd fast float %6038, %6022
  %6042 = fadd fast float %6039, %6023
  %6043 = fadd fast float %6040, %6024
  %6044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6045 = extractvalue %dx.types.CBufRet.f32 %6044, 0
  %6046 = extractvalue %dx.types.CBufRet.f32 %6044, 1
  %6047 = fadd fast float %6046, %6045
  %6048 = call float @dx.op.unary.f32(i32 7, float %6047)  ; Saturate(value)
  %6049 = extractvalue %dx.types.CBufRet.f32 %6044, 2
  %6050 = extractvalue %dx.types.CBufRet.f32 %6044, 3
  %6051 = fadd fast float %6050, %6049
  %6052 = call float @dx.op.unary.f32(i32 7, float %6051)  ; Saturate(value)
  %6053 = fmul fast float %6048, %6032
  %6054 = fmul fast float %6053, %6052
  br label %6137

; <label>:6055                                    ; preds = %5991
  %6056 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %6015
  %6057 = load float, float* %6056, align 4, !tbaa !134, !noalias !136
  %6058 = fcmp fast olt float %6057, %5922
  %6059 = icmp sgt i32 %5998, 0
  %6060 = and i1 %6059, %6058
  br i1 %6060, label %6061, label %6098

; <label>:6061                                    ; preds = %6055
  br label %6062

; <label>:6062                                    ; preds = %6091, %6061
  %6063 = phi float [ %6092, %6091 ], [ %5920, %6061 ]
  %6064 = phi float [ %6093, %6091 ], [ %5921, %6061 ]
  %6065 = phi float [ %6073, %6091 ], [ %6057, %6061 ]
  %6066 = phi i32 [ %6070, %6091 ], [ %6015, %6061 ]
  %6067 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %6066
  %6068 = load float, float* %6067, align 4, !tbaa !134, !noalias !136
  %6069 = icmp slt i32 %6066, 2
  %6070 = add nsw i32 %6066, 1
  %6071 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %6070
  %6072 = load float, float* %6071, align 4, !tbaa !134, !noalias !136
  %6073 = select i1 %6069, float %6072, float %5836
  %6074 = call float @dx.op.binary.f32(i32 36, float %6073, float %6068)  ; FMin(a,b)
  %6075 = call float @dx.op.binary.f32(i32 36, float %5922, float %6074)  ; FMin(a,b)
  %6076 = icmp eq i32 %5786, 0
  %6077 = fadd fast float %6075, %6065
  %6078 = fmul fast float %6077, %5767
  %6079 = fadd fast float %6078, %5780
  br i1 %6076, label %6085, label %6080

; <label>:6080                                    ; preds = %6062
  %6081 = fsub fast float %6075, %6065
  %6082 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6081)  ; FMax(a,b)
  %6083 = fmul fast float %6082, %6079
  %6084 = fadd fast float %6083, %6064
  br label %6091

; <label>:6085                                    ; preds = %6062
  %6086 = fsub fast float %6065, %6075
  %6087 = call float @dx.op.unary.f32(i32 6, float %6086)  ; FAbs(value)
  %6088 = fadd fast float %6087, %6063
  %6089 = fmul fast float %6087, %6079
  %6090 = fsub fast float %6064, %6089
  br label %6091

; <label>:6091                                    ; preds = %6085, %6080
  %6092 = phi float [ %6082, %6080 ], [ %6088, %6085 ]
  %6093 = phi float [ %6084, %6080 ], [ %6090, %6085 ]
  %6094 = fcmp fast olt float %6073, %5922
  %6095 = icmp slt i32 %6070, 3
  %6096 = and i1 %6095, %6094
  br i1 %6096, label %6062, label %6097

; <label>:6097                                    ; preds = %6091
  br label %6098

; <label>:6098                                    ; preds = %6097, %6055
  %6099 = phi float [ %5920, %6055 ], [ %6092, %6097 ]
  %6100 = phi float [ %5921, %6055 ], [ %6093, %6097 ]
  %6101 = fsub fast float %5836, %6099
  %6102 = select i1 %5838, float %6099, float %6101
  %6103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6104 = extractvalue %dx.types.CBufRet.f32 %6103, 0
  %6105 = extractvalue %dx.types.CBufRet.f32 %6103, 1
  %6106 = extractvalue %dx.types.CBufRet.f32 %6103, 2
  %6107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6108 = extractvalue %dx.types.CBufRet.f32 %6107, 0
  %6109 = extractvalue %dx.types.CBufRet.f32 %6107, 1
  %6110 = extractvalue %dx.types.CBufRet.f32 %6107, 2
  %6111 = extractvalue %dx.types.CBufRet.f32 %6107, 3
  %6112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6113 = extractvalue %dx.types.CBufRet.f32 %6112, 3
  %6114 = call float @dx.op.binary.f32(i32 36, float %6100, float %6113)  ; FMin(a,b)
  %6115 = fmul fast float %6111, %6102
  %6116 = call float @dx.op.unary.f32(i32 7, float %6115)  ; Saturate(value)
  %6117 = fsub fast float %6108, %6104
  %6118 = fsub fast float %6109, %6105
  %6119 = fsub fast float %6110, %6106
  %6120 = fmul fast float %6116, %6117
  %6121 = fmul fast float %6116, %6118
  %6122 = fmul fast float %6116, %6119
  %6123 = fadd fast float %6120, %6104
  %6124 = fadd fast float %6121, %6105
  %6125 = fadd fast float %6122, %6106
  %6126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6127 = extractvalue %dx.types.CBufRet.f32 %6126, 0
  %6128 = extractvalue %dx.types.CBufRet.f32 %6126, 1
  %6129 = fadd fast float %6128, %6127
  %6130 = call float @dx.op.unary.f32(i32 7, float %6129)  ; Saturate(value)
  %6131 = extractvalue %dx.types.CBufRet.f32 %6126, 2
  %6132 = extractvalue %dx.types.CBufRet.f32 %6126, 3
  %6133 = fadd fast float %6132, %6131
  %6134 = call float @dx.op.unary.f32(i32 7, float %6133)  ; Saturate(value)
  %6135 = fmul fast float %6130, %6114
  %6136 = fmul fast float %6135, %6134
  br label %6137

; <label>:6137                                    ; preds = %6098, %6017, %5852, %5834, %5832
  %6138 = phi float [ %5861, %5852 ], [ %6020, %6017 ], [ %6102, %6098 ], [ 0.000000e+00, %5832 ], [ 0.000000e+00, %5834 ]
  %6139 = phi float [ %5895, %5852 ], [ %6054, %6017 ], [ %6136, %6098 ], [ 0.000000e+00, %5832 ], [ 0.000000e+00, %5834 ]
  %6140 = phi float [ %5882, %5852 ], [ %6041, %6017 ], [ %6123, %6098 ], [ 0.000000e+00, %5832 ], [ 0.000000e+00, %5834 ]
  %6141 = phi float [ %5883, %5852 ], [ %6042, %6017 ], [ %6124, %6098 ], [ 0.000000e+00, %5832 ], [ 0.000000e+00, %5834 ]
  %6142 = phi float [ %5884, %5852 ], [ %6043, %6017 ], [ %6125, %6098 ], [ 0.000000e+00, %5832 ], [ 0.000000e+00, %5834 ]
  %6143 = fmul fast float %5775, %6139
  %6144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6145 = extractvalue %dx.types.CBufRet.f32 %6144, 2
  %6146 = fsub fast float %5782, %6145
  %6147 = fcmp fast olt float %6143, -2.000000e+01
  %6148 = call float @dx.op.unary.f32(i32 21, float %6143)  ; Exp(value)
  %6149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6150 = extractvalue %dx.types.CBufRet.f32 %6149, 2
  %6151 = extractvalue %dx.types.CBufRet.f32 %6149, 3
  %6152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6153 = extractvalue %dx.types.CBufRet.f32 %6152, 2
  %6154 = fmul fast float %6151, %6146
  %6155 = call float @dx.op.unary.f32(i32 7, float %6154)  ; Saturate(value)
  %6156 = fsub fast float 1.000000e+00, %6155
  %6157 = fmul fast float %5767, 5.000000e-01
  %6158 = fadd fast float %6157, 5.000000e-01
  %6159 = call float @dx.op.unary.f32(i32 7, float %6158)  ; Saturate(value)
  %6160 = fsub fast float 1.000000e+00, %6159
  %6161 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6156)  ; FMax(a,b)
  %6162 = fdiv fast float %6160, %6161
  %6163 = fsub fast float %6146, %5724
  %6164 = call float @dx.op.unary.f32(i32 6, float %6163)  ; FAbs(value)
  %6165 = fmul fast float %6164, %6150
  %6166 = call float @dx.op.unary.f32(i32 7, float %6162)  ; Saturate(value)
  %6167 = fsub fast float 1.000000e+00, %6165
  %6168 = fmul fast float %6167, %6166
  %6169 = fadd fast float %6168, %6165
  %6170 = fmul fast float %6153, %6146
  %6171 = call float @dx.op.unary.f32(i32 7, float %6170)  ; Saturate(value)
  %6172 = fsub fast float 1.000000e+00, %6169
  %6173 = fmul fast float %6172, %6171
  %6174 = fadd fast float %6173, %6169
  %6175 = call float @dx.op.unary.f32(i32 7, float %6174)  ; Saturate(value)
  %6176 = fadd fast float %6148, -1.000000e+00
  %6177 = select i1 %6147, float -1.000000e+00, float %6176
  %6178 = fmul fast float %6175, %6177
  %6179 = fadd fast float %6178, 1.000000e+00
  %6180 = fsub fast float -0.000000e+00, %6178
  %6181 = fmul fast float %6140, %6180
  %6182 = fmul fast float %6141, %6180
  %6183 = fmul fast float %6142, %6180
  br label %6184

; <label>:6184                                    ; preds = %6137, %5733
  %6185 = phi float [ %6138, %6137 ], [ 0.000000e+00, %5733 ]
  %6186 = phi float [ %6179, %6137 ], [ 1.000000e+00, %5733 ]
  %6187 = phi float [ %6181, %6137 ], [ 0.000000e+00, %5733 ]
  %6188 = phi float [ %6182, %6137 ], [ 0.000000e+00, %5733 ]
  %6189 = phi float [ %6183, %6137 ], [ 0.000000e+00, %5733 ]
  %6190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6191 = extractvalue %dx.types.CBufRet.f32 %6190, 1
  %6192 = fsub fast float 1.000000e+00, %6186
  %6193 = fmul fast float %6192, %5768
  %6194 = fmul fast float %6193, %6191
  %6195 = fsub fast float %5768, %6194
  br i1 %5761, label %6196, label %6225, !dx.controlflow.hints !172

; <label>:6196                                    ; preds = %6184
  %6197 = fmul fast float %5769, %5758
  %6198 = fadd fast float %6197, %5759
  %6199 = call float @dx.op.unary.f32(i32 7, float %6198)  ; Saturate(value)
  %6200 = fmul fast float %5740, %6195
  %6201 = fsub fast float -0.000000e+00, %6200
  %6202 = fmul fast float %5741, %6195
  %6203 = fsub fast float -0.000000e+00, %6202
  %6204 = call float @dx.op.unary.f32(i32 21, float %6201)  ; Exp(value)
  %6205 = call float @dx.op.unary.f32(i32 21, float %6203)  ; Exp(value)
  %6206 = call float @dx.op.binary.f32(i32 35, float %5748, float %6204)  ; FMax(a,b)
  %6207 = call float @dx.op.binary.f32(i32 35, float %5748, float %6205)  ; FMax(a,b)
  %6208 = fsub fast float %6207, %6206
  %6209 = fmul fast float %6208, %6199
  %6210 = fadd fast float %6209, %6206
  %6211 = call float @dx.op.unary.f32(i32 7, float %6210)  ; Saturate(value)
  %6212 = fsub fast float %5745, %5750
  %6213 = fsub fast float %5746, %5751
  %6214 = fsub fast float %5747, %5752
  %6215 = fmul fast float %6199, %6212
  %6216 = fmul fast float %6199, %6213
  %6217 = fmul fast float %6199, %6214
  %6218 = fadd fast float %6215, %5750
  %6219 = fadd fast float %6216, %5751
  %6220 = fadd fast float %6217, %5752
  %6221 = fsub fast float 1.000000e+00, %6211
  %6222 = fmul fast float %6221, %6218
  %6223 = fmul fast float %6221, %6219
  %6224 = fmul fast float %6221, %6220
  br label %6284

; <label>:6225                                    ; preds = %6184
  %6226 = fmul fast float %6195, %5757
  %6227 = call float @dx.op.unary.f32(i32 7, float %6226)  ; Saturate(value)
  %6228 = fsub fast float 2.000000e+00, %6227
  %6229 = fmul fast float %6227, 9.921875e-01
  %6230 = fmul fast float %6229, %6228
  %6231 = fadd fast float %6230, 3.906250e-03
  %6232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %58, float %6231, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6233 = extractvalue %dx.types.ResRet.f32 %6232, 0
  %6234 = fsub fast float %6227, %6233
  %6235 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6234)  ; FMax(a,b)
  %6236 = fmul fast float %5743, %5724
  %6237 = call float @dx.op.unary.f32(i32 6, float %6236)  ; FAbs(value)
  %6238 = fcmp fast ogt float %6237, 0x3EB0C6F7A0000000
  br i1 %6238, label %6239, label %6245, !dx.controlflow.hints !173

; <label>:6239                                    ; preds = %6225
  %6240 = fmul fast float %6236, 0xBFF7154760000000
  %6241 = call float @dx.op.unary.f32(i32 21, float %6240)  ; Exp(value)
  %6242 = fsub fast float 1.000000e+00, %6241
  %6243 = fdiv fast float %6242, %6236
  %6244 = fmul fast float %6243, %5753
  br label %6245

; <label>:6245                                    ; preds = %6239, %6225
  %6246 = phi float [ %6244, %6239 ], [ %5753, %6225 ]
  %6247 = fadd fast float %6246, %5755
  %6248 = fmul fast float %6247, %6235
  %6249 = fmul fast float %5740, %6248
  %6250 = fsub fast float -0.000000e+00, %6249
  %6251 = fmul fast float %5741, %6248
  %6252 = fsub fast float -0.000000e+00, %6251
  %6253 = fmul fast float %5742, %6248
  %6254 = fsub fast float -0.000000e+00, %6253
  %6255 = call float @dx.op.unary.f32(i32 21, float %6250)  ; Exp(value)
  %6256 = call float @dx.op.unary.f32(i32 21, float %6252)  ; Exp(value)
  %6257 = call float @dx.op.unary.f32(i32 21, float %6254)  ; Exp(value)
  %6258 = fmul fast float %5769, %5769
  %6259 = fadd fast float %6258, 1.000000e+00
  %6260 = fmul fast float %6259, 0x3FAE8EC8A0000000
  %6261 = fmul fast float %6260, %5750
  %6262 = fmul fast float %6260, %5751
  %6263 = fmul fast float %6260, %5752
  %6264 = fmul fast float %5769, %5748
  %6265 = fsub fast float 1.000000e+00, %6264
  %6266 = fmul fast float %5748, %5748
  %6267 = fsub fast float 1.000000e+00, %6266
  %6268 = fmul fast float %6267, 0x3FB45F3060000000
  %6269 = fmul fast float %6265, %6265
  %6270 = fdiv fast float 1.000000e+00, %6269
  %6271 = fmul fast float %6268, %6270
  %6272 = fmul fast float %6271, %5745
  %6273 = fmul fast float %6271, %5746
  %6274 = fmul fast float %6271, %5747
  %6275 = fadd fast float %6272, %6261
  %6276 = fadd fast float %6273, %6262
  %6277 = fadd fast float %6274, %6263
  %6278 = fsub fast float 1.000000e+00, %6255
  %6279 = fsub fast float 1.000000e+00, %6256
  %6280 = fsub fast float 1.000000e+00, %6257
  %6281 = fmul fast float %6275, %6278
  %6282 = fmul fast float %6276, %6279
  %6283 = fmul fast float %6277, %6280
  br label %6284

; <label>:6284                                    ; preds = %6245, %6196
  %6285 = phi float [ %6222, %6196 ], [ %6281, %6245 ]
  %6286 = phi float [ %6223, %6196 ], [ %6282, %6245 ]
  %6287 = phi float [ %6224, %6196 ], [ %6283, %6245 ]
  %6288 = phi float [ %6211, %6196 ], [ %6255, %6245 ]
  %6289 = phi float [ %6211, %6196 ], [ %6256, %6245 ]
  %6290 = phi float [ %6211, %6196 ], [ %6257, %6245 ]
  br i1 %5777, label %6291, label %6489, !dx.controlflow.hints !174

; <label>:6291                                    ; preds = %6284
  %6292 = extractvalue %dx.types.CBufRet.f32 %6190, 0
  %6293 = fmul fast float %6292, %6192
  %6294 = fsub fast float %6187, %6285
  %6295 = fsub fast float %6188, %6286
  %6296 = fsub fast float %6189, %6287
  %6297 = fmul fast float %6293, %6294
  %6298 = fmul fast float %6293, %6295
  %6299 = fmul fast float %6293, %6296
  %6300 = fadd fast float %6297, %6285
  %6301 = fadd fast float %6298, %6286
  %6302 = fadd fast float %6299, %6287
  %6303 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6288)  ; FMax(a,b)
  %6304 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6289)  ; FMax(a,b)
  %6305 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6290)  ; FMax(a,b)
  %6306 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6186)  ; FMax(a,b)
  %6307 = call float @dx.op.binary.f32(i32 35, float %6185, float %6195)  ; FMax(a,b)
  %6308 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6307)  ; FMax(a,b)
  %6309 = fdiv fast float %6185, %6308
  %6310 = call float @dx.op.unary.f32(i32 7, float %6309)  ; Saturate(value)
  %6311 = fdiv fast float %6195, %6308
  %6312 = call float @dx.op.unary.f32(i32 7, float %6311)  ; Saturate(value)
  %6313 = fcmp fast une float %6306, 1.000000e+00
  br i1 %6313, label %6314, label %6327, !dx.controlflow.hints !175

; <label>:6314                                    ; preds = %6291
  %6315 = call float @dx.op.unary.f32(i32 23, float %6306)  ; Log(value)
  %6316 = fmul fast float %6315, 0x3FE62E4300000000
  %6317 = fmul fast float %6187, %6316
  %6318 = fsub fast float -0.000000e+00, %6317
  %6319 = fmul fast float %6188, %6316
  %6320 = fsub fast float -0.000000e+00, %6319
  %6321 = fmul fast float %6189, %6316
  %6322 = fsub fast float -0.000000e+00, %6321
  %6323 = fsub fast float 1.000000e+00, %6306
  %6324 = fdiv fast float %6318, %6323
  %6325 = fdiv fast float %6320, %6323
  %6326 = fdiv fast float %6322, %6323
  br label %6327

; <label>:6327                                    ; preds = %6314, %6291
  %6328 = phi float [ %6324, %6314 ], [ %6187, %6291 ]
  %6329 = phi float [ %6325, %6314 ], [ %6188, %6291 ]
  %6330 = phi float [ %6326, %6314 ], [ %6189, %6291 ]
  %6331 = phi float [ %6316, %6314 ], [ 0.000000e+00, %6291 ]
  %6332 = fcmp fast une float %6303, 1.000000e+00
  br i1 %6332, label %6333, label %6340, !dx.controlflow.hints !176

; <label>:6333                                    ; preds = %6327
  %6334 = call float @dx.op.unary.f32(i32 23, float %6303)  ; Log(value)
  %6335 = fmul fast float %6334, 0x3FE62E4300000000
  %6336 = fmul fast float %6300, %6335
  %6337 = fsub fast float -0.000000e+00, %6336
  %6338 = fsub fast float 1.000000e+00, %6303
  %6339 = fdiv fast float %6337, %6338
  br label %6340

; <label>:6340                                    ; preds = %6333, %6327
  %6341 = phi float [ %6339, %6333 ], [ %6300, %6327 ]
  %6342 = phi float [ %6335, %6333 ], [ 0.000000e+00, %6327 ]
  %6343 = fcmp fast une float %6304, 1.000000e+00
  br i1 %6343, label %6344, label %6351, !dx.controlflow.hints !176

; <label>:6344                                    ; preds = %6340
  %6345 = call float @dx.op.unary.f32(i32 23, float %6304)  ; Log(value)
  %6346 = fmul fast float %6345, 0x3FE62E4300000000
  %6347 = fmul fast float %6301, %6346
  %6348 = fsub fast float -0.000000e+00, %6347
  %6349 = fsub fast float 1.000000e+00, %6304
  %6350 = fdiv fast float %6348, %6349
  br label %6351

; <label>:6351                                    ; preds = %6344, %6340
  %6352 = phi float [ %6350, %6344 ], [ %6301, %6340 ]
  %6353 = phi float [ %6346, %6344 ], [ 0.000000e+00, %6340 ]
  %6354 = fcmp fast une float %6305, 1.000000e+00
  br i1 %6354, label %6355, label %6362, !dx.controlflow.hints !176

; <label>:6355                                    ; preds = %6351
  %6356 = call float @dx.op.unary.f32(i32 23, float %6305)  ; Log(value)
  %6357 = fmul fast float %6356, 0x3FE62E4300000000
  %6358 = fmul fast float %6302, %6357
  %6359 = fsub fast float -0.000000e+00, %6358
  %6360 = fsub fast float 1.000000e+00, %6305
  %6361 = fdiv fast float %6359, %6360
  br label %6362

; <label>:6362                                    ; preds = %6355, %6351
  %6363 = phi float [ %6361, %6355 ], [ %6302, %6351 ]
  %6364 = phi float [ %6357, %6355 ], [ 0.000000e+00, %6351 ]
  %6365 = fmul fast float %6328, %6312
  %6366 = fmul fast float %6329, %6312
  %6367 = fmul fast float %6330, %6312
  %6368 = fmul fast float %6331, %6312
  %6369 = fmul fast float %6341, %6310
  %6370 = fmul fast float %6352, %6310
  %6371 = fmul fast float %6363, %6310
  %6372 = fmul fast float %6342, %6310
  %6373 = fmul fast float %6353, %6310
  %6374 = fmul fast float %6364, %6310
  %6375 = fadd fast float %6369, %6365
  %6376 = fadd fast float %6370, %6366
  %6377 = fadd fast float %6371, %6367
  %6378 = fadd fast float %6372, %6368
  %6379 = fadd fast float %6373, %6368
  %6380 = fadd fast float %6374, %6368
  %6381 = fcmp fast une float %6378, 0.000000e+00
  br i1 %6381, label %6382, label %6389, !dx.controlflow.hints !177

; <label>:6382                                    ; preds = %6362
  %6383 = fmul fast float %6378, 0x3FF7154760000000
  %6384 = call float @dx.op.unary.f32(i32 21, float %6383)  ; Exp(value)
  %6385 = fsub fast float 1.000000e+00, %6384
  %6386 = fmul fast float %6375, %6385
  %6387 = fsub fast float -0.000000e+00, %6386
  %6388 = fdiv fast float %6387, %6378
  br label %6389

; <label>:6389                                    ; preds = %6382, %6362
  %6390 = phi float [ %6384, %6382 ], [ 1.000000e+00, %6362 ]
  %6391 = phi float [ %6388, %6382 ], [ %6375, %6362 ]
  %6392 = fcmp fast une float %6379, 0.000000e+00
  br i1 %6392, label %6393, label %6400, !dx.controlflow.hints !177

; <label>:6393                                    ; preds = %6389
  %6394 = fmul fast float %6379, 0x3FF7154760000000
  %6395 = call float @dx.op.unary.f32(i32 21, float %6394)  ; Exp(value)
  %6396 = fsub fast float 1.000000e+00, %6395
  %6397 = fmul fast float %6376, %6396
  %6398 = fsub fast float -0.000000e+00, %6397
  %6399 = fdiv fast float %6398, %6379
  br label %6400

; <label>:6400                                    ; preds = %6393, %6389
  %6401 = phi float [ %6395, %6393 ], [ 1.000000e+00, %6389 ]
  %6402 = phi float [ %6399, %6393 ], [ %6376, %6389 ]
  %6403 = fcmp fast une float %6380, 0.000000e+00
  br i1 %6403, label %6404, label %6411, !dx.controlflow.hints !177

; <label>:6404                                    ; preds = %6400
  %6405 = fmul fast float %6380, 0x3FF7154760000000
  %6406 = call float @dx.op.unary.f32(i32 21, float %6405)  ; Exp(value)
  %6407 = fsub fast float 1.000000e+00, %6406
  %6408 = fmul fast float %6377, %6407
  %6409 = fsub fast float -0.000000e+00, %6408
  %6410 = fdiv fast float %6409, %6380
  br label %6411

; <label>:6411                                    ; preds = %6404, %6400
  %6412 = phi float [ %6406, %6404 ], [ 1.000000e+00, %6400 ]
  %6413 = phi float [ %6410, %6404 ], [ %6377, %6400 ]
  %6414 = fcmp fast ogt float %6310, %6312
  br i1 %6414, label %6415, label %6435

; <label>:6415                                    ; preds = %6411
  %6416 = fsub fast float 1.000000e+00, %6312
  %6417 = fmul fast float %6328, %6416
  %6418 = fmul fast float %6329, %6416
  %6419 = fmul fast float %6330, %6416
  %6420 = fmul fast float %6331, %6416
  %6421 = fcmp fast une float %6420, 0.000000e+00
  br i1 %6421, label %6422, label %6473, !dx.controlflow.hints !178

; <label>:6422                                    ; preds = %6415
  %6423 = fmul fast float %6420, 0x3FF7154760000000
  %6424 = call float @dx.op.unary.f32(i32 21, float %6423)  ; Exp(value)
  %6425 = fsub fast float 1.000000e+00, %6424
  %6426 = fmul fast float %6417, %6425
  %6427 = fsub fast float -0.000000e+00, %6426
  %6428 = fmul fast float %6418, %6425
  %6429 = fsub fast float -0.000000e+00, %6428
  %6430 = fmul fast float %6419, %6425
  %6431 = fsub fast float -0.000000e+00, %6430
  %6432 = fdiv fast float %6427, %6420
  %6433 = fdiv fast float %6429, %6420
  %6434 = fdiv fast float %6431, %6420
  br label %6473

; <label>:6435                                    ; preds = %6411
  %6436 = fsub fast float 1.000000e+00, %6310
  %6437 = fmul fast float %6341, %6436
  %6438 = fmul fast float %6352, %6436
  %6439 = fmul fast float %6363, %6436
  %6440 = fmul fast float %6342, %6436
  %6441 = fmul fast float %6353, %6436
  %6442 = fmul fast float %6364, %6436
  %6443 = fcmp fast une float %6440, 0.000000e+00
  br i1 %6443, label %6444, label %6451, !dx.controlflow.hints !177

; <label>:6444                                    ; preds = %6435
  %6445 = fmul fast float %6440, 0x3FF7154760000000
  %6446 = call float @dx.op.unary.f32(i32 21, float %6445)  ; Exp(value)
  %6447 = fsub fast float 1.000000e+00, %6446
  %6448 = fmul fast float %6437, %6447
  %6449 = fsub fast float -0.000000e+00, %6448
  %6450 = fdiv fast float %6449, %6440
  br label %6451

; <label>:6451                                    ; preds = %6444, %6435
  %6452 = phi float [ %6450, %6444 ], [ %6437, %6435 ]
  %6453 = phi float [ %6446, %6444 ], [ 1.000000e+00, %6435 ]
  %6454 = fcmp fast une float %6441, 0.000000e+00
  br i1 %6454, label %6455, label %6462, !dx.controlflow.hints !177

; <label>:6455                                    ; preds = %6451
  %6456 = fmul fast float %6441, 0x3FF7154760000000
  %6457 = call float @dx.op.unary.f32(i32 21, float %6456)  ; Exp(value)
  %6458 = fsub fast float 1.000000e+00, %6457
  %6459 = fmul fast float %6438, %6458
  %6460 = fsub fast float -0.000000e+00, %6459
  %6461 = fdiv fast float %6460, %6441
  br label %6462

; <label>:6462                                    ; preds = %6455, %6451
  %6463 = phi float [ %6461, %6455 ], [ %6438, %6451 ]
  %6464 = phi float [ %6457, %6455 ], [ 1.000000e+00, %6451 ]
  %6465 = fcmp fast une float %6442, 0.000000e+00
  br i1 %6465, label %6466, label %6473, !dx.controlflow.hints !177

; <label>:6466                                    ; preds = %6462
  %6467 = fmul fast float %6442, 0x3FF7154760000000
  %6468 = call float @dx.op.unary.f32(i32 21, float %6467)  ; Exp(value)
  %6469 = fsub fast float 1.000000e+00, %6468
  %6470 = fmul fast float %6439, %6469
  %6471 = fsub fast float -0.000000e+00, %6470
  %6472 = fdiv fast float %6471, %6442
  br label %6473

; <label>:6473                                    ; preds = %6466, %6462, %6422, %6415
  %6474 = phi float [ %6472, %6466 ], [ %6434, %6422 ], [ %6419, %6415 ], [ %6439, %6462 ]
  %6475 = phi float [ %6463, %6466 ], [ %6433, %6422 ], [ %6418, %6415 ], [ %6463, %6462 ]
  %6476 = phi float [ %6452, %6466 ], [ %6432, %6422 ], [ %6417, %6415 ], [ %6452, %6462 ]
  %6477 = phi float [ %6468, %6466 ], [ %6424, %6422 ], [ 1.000000e+00, %6415 ], [ 1.000000e+00, %6462 ]
  %6478 = phi float [ %6464, %6466 ], [ %6424, %6422 ], [ 1.000000e+00, %6415 ], [ %6464, %6462 ]
  %6479 = phi float [ %6453, %6466 ], [ %6424, %6422 ], [ 1.000000e+00, %6415 ], [ %6453, %6462 ]
  %6480 = fmul fast float %6479, %6391
  %6481 = fmul fast float %6478, %6402
  %6482 = fmul fast float %6477, %6413
  %6483 = fadd fast float %6480, %6476
  %6484 = fadd fast float %6481, %6475
  %6485 = fadd fast float %6482, %6474
  %6486 = fmul fast float %6479, %6390
  %6487 = fmul fast float %6478, %6401
  %6488 = fmul fast float %6477, %6412
  br label %6489

; <label>:6489                                    ; preds = %6473, %6284
  %6490 = phi float [ %6488, %6473 ], [ %6290, %6284 ]
  %6491 = phi float [ %6487, %6473 ], [ %6289, %6284 ]
  %6492 = phi float [ %6486, %6473 ], [ %6288, %6284 ]
  %6493 = phi float [ %6485, %6473 ], [ %6287, %6284 ]
  %6494 = phi float [ %6484, %6473 ], [ %6286, %6284 ]
  %6495 = phi float [ %6483, %6473 ], [ %6285, %6284 ]
  %6496 = fmul fast float %6495, %5433
  %6497 = fmul fast float %6494, %5433
  %6498 = fmul fast float %6493, %5433
  %6499 = fmul fast float %6492, %5732
  %6500 = call float @dx.op.dot3.f32(i32 55, float %6492, float %6491, float %6490, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6501 = call float @dx.op.dot3.f32(i32 55, float %6496, float %6497, float %6498, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6502 = select i1 %228, float %6500, float %6492
  %6503 = select i1 %228, float %6500, float %6491
  %6504 = select i1 %228, float 1.000000e+00, float %6490
  %6505 = select i1 %228, float %6501, float %6496
  %6506 = select i1 %228, float 0.000000e+00, float %6497
  %6507 = select i1 %228, float 0.000000e+00, float %6498
  %6508 = fmul fast float %6502, %5726
  %6509 = fmul fast float %6503, %5727
  %6510 = fmul fast float %6504, %5728
  %6511 = fadd fast float %6508, %6505
  %6512 = fadd fast float %6509, %6506
  %6513 = fadd fast float %6507, %6510
  %6514 = fmul fast float %6502, %5729
  %6515 = fmul fast float %6503, %5730
  %6516 = fmul fast float %6504, %5731
  %6517 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6518 = extractvalue %dx.types.CBufRet.i32 %6517, 0
  %6519 = icmp eq i32 %6518, 0
  br i1 %6519, label %6887, label %6520, !dx.controlflow.hints !179

; <label>:6520                                    ; preds = %6489
  %6521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6522 = extractvalue %dx.types.CBufRet.f32 %6521, 2
  %6523 = extractvalue %dx.types.CBufRet.f32 %6521, 3
  %6524 = fmul fast float %6522, %90
  %6525 = fmul fast float %6523, %91
  %6526 = fmul fast float %6524, 2.000000e+00
  %6527 = fmul fast float %6525, 2.000000e+00
  %6528 = fsub fast float 1.000000e+00, %6526
  %6529 = fsub fast float 1.000000e+00, %6527
  %6530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6531 = extractvalue %dx.types.CBufRet.f32 %6530, 0
  %6532 = extractvalue %dx.types.CBufRet.f32 %6530, 1
  %6533 = extractvalue %dx.types.CBufRet.f32 %6530, 2
  %6534 = fmul fast float %6528, %6531
  %6535 = fmul fast float %6528, %6532
  %6536 = fmul fast float %6528, %6533
  %6537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6538 = extractvalue %dx.types.CBufRet.f32 %6537, 0
  %6539 = extractvalue %dx.types.CBufRet.f32 %6537, 1
  %6540 = extractvalue %dx.types.CBufRet.f32 %6537, 2
  %6541 = fmul fast float %6529, %6538
  %6542 = fmul fast float %6529, %6539
  %6543 = fmul fast float %6529, %6540
  %6544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6545 = extractvalue %dx.types.CBufRet.f32 %6544, 0
  %6546 = extractvalue %dx.types.CBufRet.f32 %6544, 1
  %6547 = extractvalue %dx.types.CBufRet.f32 %6544, 2
  %6548 = fadd fast float %6541, %6545
  %6549 = fadd fast float %6548, %6534
  %6550 = fadd fast float %6542, %6546
  %6551 = fadd fast float %6550, %6535
  %6552 = fadd fast float %6543, %6547
  %6553 = fadd fast float %6552, %6536
  %6554 = fmul fast float %6549, %5725
  %6555 = fmul fast float %6551, %5725
  %6556 = fmul fast float %6553, %5725
  %6557 = fmul fast float %6554, %6554
  %6558 = fmul fast float %6555, %6555
  %6559 = fadd fast float %6557, %6558
  %6560 = fmul fast float %6556, %6556
  %6561 = fadd fast float %6559, %6560
  %6562 = call float @dx.op.unary.f32(i32 24, float %6561)  ; Sqrt(value)
  %6563 = extractvalue %dx.types.CBufRet.f32 %5450, 0
  %6564 = fsub fast float %6562, %6563
  %6565 = extractvalue %dx.types.CBufRet.f32 %5450, 2
  %6566 = fmul fast float %6564, %6565
  %6567 = call float @dx.op.unary.f32(i32 7, float %6566)  ; Saturate(value)
  %6568 = fadd fast float %6567, -5.000000e-01
  %6569 = fmul fast float %6568, 2.000000e+00
  %6570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6571 = extractvalue %dx.types.CBufRet.f32 %6570, 2
  %6572 = call float @dx.op.binary.f32(i32 36, float %6571, float %6569)  ; FMin(a,b)
  %6573 = fsub fast float -0.000000e+00, %6571
  %6574 = fcmp fast ogt float %6572, %6573
  br i1 %6574, label %6575, label %6887, !dx.controlflow.hints !180

; <label>:6575                                    ; preds = %6520
  %6576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6577 = extractvalue %dx.types.CBufRet.f32 %6576, 3
  %6578 = fcmp fast ogt float %6577, 0.000000e+00
  br i1 %6578, label %6579, label %6654, !dx.controlflow.hints !181

; <label>:6579                                    ; preds = %6575
  %6580 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %6581 = extractvalue %dx.types.Dimensions %6580, 0
  %6582 = sitofp i32 %6581 to float
  %6583 = extractvalue %dx.types.Dimensions %6580, 1
  %6584 = sitofp i32 %6583 to float
  %6585 = fmul fast float %6524, %6582
  %6586 = fmul fast float %6525, %6584
  %6587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6588 = extractvalue %dx.types.CBufRet.f32 %6587, 1
  %6589 = fsub fast float -0.000000e+00, %6588
  %6590 = fptoui float %6589 to i32
  %6591 = fptoui float %6585 to i32
  %6592 = fptoui float %6586 to i32
  %6593 = and i32 %6590, 31
  %6594 = lshr i32 %6591, %6593
  %6595 = lshr i32 %6592, %6593
  %6596 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %6590, i32 %6594, i32 %6595, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6597 = extractvalue %dx.types.ResRet.f32 %6596, 0
  %6598 = fcmp fast olt float %6597, -1.000000e+00
  %6599 = fcmp fast ogt float %6597, -1.000000e+00
  %6600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6601 = extractvalue %dx.types.CBufRet.f32 %6600, 1
  %6602 = select i1 %6599, float %6601, float 1.000000e+00
  %6603 = fadd fast float %6597, 1.000000e+00
  %6604 = fmul fast float %6602, %6603
  %6605 = call float @dx.op.unary.f32(i32 6, float %6604)  ; FAbs(value)
  %6606 = extractvalue %dx.types.CBufRet.f32 %6600, 3
  %6607 = fcmp fast oge float %6605, %6606
  %6608 = select i1 %6607, float 0x4197782600000000, float %6605
  %6609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6610 = extractvalue %dx.types.CBufRet.f32 %6609, 0
  %6611 = extractvalue %dx.types.CBufRet.f32 %6609, 1
  %6612 = extractvalue %dx.types.CBufRet.f32 %6609, 2
  %6613 = select i1 %6598, float %6610, float %6531
  %6614 = select i1 %6598, float %6611, float %6532
  %6615 = select i1 %6598, float %6612, float %6533
  %6616 = fmul fast float %6613, %6528
  %6617 = fmul fast float %6614, %6528
  %6618 = fmul fast float %6615, %6528
  %6619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6620 = extractvalue %dx.types.CBufRet.f32 %6619, 0
  %6621 = extractvalue %dx.types.CBufRet.f32 %6619, 1
  %6622 = extractvalue %dx.types.CBufRet.f32 %6619, 2
  %6623 = select i1 %6598, float %6620, float %6538
  %6624 = select i1 %6598, float %6621, float %6539
  %6625 = select i1 %6598, float %6622, float %6540
  %6626 = fmul fast float %6623, %6529
  %6627 = fmul fast float %6624, %6529
  %6628 = fmul fast float %6625, %6529
  %6629 = fadd fast float %6626, %6616
  %6630 = fadd fast float %6627, %6617
  %6631 = fadd fast float %6628, %6618
  %6632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6633 = extractvalue %dx.types.CBufRet.f32 %6632, 0
  %6634 = extractvalue %dx.types.CBufRet.f32 %6632, 1
  %6635 = extractvalue %dx.types.CBufRet.f32 %6632, 2
  %6636 = select i1 %6598, float %6633, float %6545
  %6637 = select i1 %6598, float %6634, float %6546
  %6638 = select i1 %6598, float %6635, float %6547
  %6639 = fadd fast float %6629, %6636
  %6640 = fadd fast float %6630, %6637
  %6641 = fadd fast float %6631, %6638
  %6642 = fmul fast float %6639, %6608
  %6643 = fmul fast float %6640, %6608
  %6644 = fmul fast float %6641, %6608
  %6645 = fmul fast float %6642, %6642
  %6646 = fmul fast float %6643, %6643
  %6647 = fadd fast float %6645, %6646
  %6648 = fmul fast float %6644, %6644
  %6649 = fadd fast float %6647, %6648
  %6650 = call float @dx.op.unary.f32(i32 24, float %6649)  ; Sqrt(value)
  %6651 = fsub fast float %6650, %6563
  %6652 = fmul fast float %6651, %6565
  %6653 = call float @dx.op.unary.f32(i32 7, float %6652)  ; Saturate(value)
  br label %6654

; <label>:6654                                    ; preds = %6579, %6575
  %6655 = phi float [ %6653, %6579 ], [ 1.000000e+00, %6575 ]
  %6656 = fmul fast float %6572, 5.000000e-01
  %6657 = fadd fast float %6656, 5.000000e-01
  %6658 = call float @dx.op.unary.f32(i32 22, float %6657)  ; Frc(value)
  %6659 = call float @dx.op.unary.f32(i32 27, float %6658)  ; Round_ni(value)
  %6660 = call float @dx.op.unary.f32(i32 22, float %6658)  ; Frc(value)
  %6661 = fmul fast float %6660, 2.000000e+00
  %6662 = fadd fast float %6661, -1.000000e+00
  %6663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %58, float %6524, float %6525, float %6659, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6664 = extractvalue %dx.types.ResRet.f32 %6663, 0
  %6665 = extractvalue %dx.types.ResRet.f32 %6663, 1
  %6666 = extractvalue %dx.types.ResRet.f32 %6663, 2
  %6667 = extractvalue %dx.types.ResRet.f32 %6663, 3
  %6668 = fadd fast float %6664, -5.000000e-01
  %6669 = fadd fast float %6666, -5.000000e-01
  %6670 = fmul fast float %6668, 0xBFD5555560000000
  %6671 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6669, float %6670)  ; FMad(a,b,c)
  %6672 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6665, float 0.000000e+00)  ; FMad(a,b,c)
  %6673 = fadd fast float %6672, %6667
  %6674 = fmul fast float %6668, -7.500000e-01
  %6675 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6669, float %6674)  ; FMad(a,b,c)
  %6676 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6665, float 0.000000e+00)  ; FMad(a,b,c)
  %6677 = fadd fast float %6676, %6667
  %6678 = call float @dx.op.binary.f32(i32 35, float %6671, float -1.000000e+00)  ; FMax(a,b)
  %6679 = call float @dx.op.binary.f32(i32 35, float %6673, float -1.000000e+00)  ; FMax(a,b)
  %6680 = call float @dx.op.binary.f32(i32 35, float %6675, float -1.000000e+00)  ; FMax(a,b)
  %6681 = call float @dx.op.binary.f32(i32 35, float %6677, float -1.000000e+00)  ; FMax(a,b)
  %6682 = call float @dx.op.binary.f32(i32 36, float %6678, float 1.000000e+00)  ; FMin(a,b)
  %6683 = call float @dx.op.binary.f32(i32 36, float %6679, float 1.000000e+00)  ; FMin(a,b)
  %6684 = call float @dx.op.binary.f32(i32 36, float %6680, float 1.000000e+00)  ; FMin(a,b)
  %6685 = call float @dx.op.binary.f32(i32 36, float %6681, float 1.000000e+00)  ; FMin(a,b)
  %6686 = fcmp fast olt float %6682, 0x3FEFFF8020000000
  br i1 %6686, label %6687, label %6802, !dx.controlflow.hints !182

; <label>:6687                                    ; preds = %6654
  %6688 = extractvalue %dx.types.CBufRet.f32 %6570, 3
  %6689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6690 = extractvalue %dx.types.CBufRet.f32 %6689, 0
  %6691 = extractvalue %dx.types.CBufRet.f32 %6689, 1
  %6692 = extractvalue %dx.types.CBufRet.f32 %6689, 2
  %6693 = extractvalue %dx.types.CBufRet.f32 %6689, 3
  %6694 = fsub fast float %6690, %6682
  %6695 = fsub fast float %6691, %6683
  %6696 = fsub fast float %6692, %6684
  %6697 = fsub fast float %6693, %6685
  %6698 = fmul fast float %6694, %6688
  %6699 = fmul fast float %6695, %6688
  %6700 = fmul fast float %6696, %6688
  %6701 = fmul fast float %6697, %6688
  %6702 = fadd fast float %6698, %6682
  %6703 = fadd fast float %6699, %6683
  %6704 = fsub fast float -0.000000e+00, %6703
  %6705 = fadd fast float %6700, %6684
  %6706 = fadd fast float %6701, %6685
  %6707 = fmul fast float %6702, %6702
  %6708 = fsub fast float %6703, %6707
  %6709 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6708)  ; FMax(a,b)
  %6710 = fdiv fast float 1.000000e+00, %6709
  %6711 = fmul fast float %6703, %6702
  %6712 = fsub fast float %6705, %6711
  %6713 = fsub fast float %6662, %6702
  %6714 = fmul fast float %6662, %6662
  %6715 = fsub fast float %6714, %6703
  %6716 = fmul fast float %6713, %6710
  %6717 = fmul fast float %6716, %6712
  %6718 = fsub fast float %6715, %6717
  %6719 = fmul fast float %6703, %6703
  %6720 = fsub fast float %6706, %6719
  %6721 = fmul fast float %6712, %6712
  %6722 = fmul fast float %6721, %6710
  %6723 = fsub fast float %6720, %6722
  %6724 = fdiv fast float %6718, %6723
  %6725 = fmul fast float %6712, %6724
  %6726 = fsub fast float %6713, %6725
  %6727 = fmul fast float %6726, %6710
  %6728 = fmul fast float %6727, %6702
  %6729 = fsub fast float 1.000000e+00, %6728
  %6730 = fmul fast float %6703, %6724
  %6731 = fsub fast float %6729, %6730
  %6732 = fmul fast float %6727, %6727
  %6733 = fmul fast float %6724, 4.000000e+00
  %6734 = fmul fast float %6733, %6731
  %6735 = fsub fast float %6732, %6734
  %6736 = call float @dx.op.unary.f32(i32 24, float %6735)  ; Sqrt(value)
  %6737 = fcmp fast oge float %6727, 0.000000e+00
  %6738 = fsub fast float -0.000000e+00, %6736
  %6739 = select i1 %6737, float %6738, float %6736
  %6740 = fsub fast float %6739, %6727
  %6741 = fdiv fast float %6740, %6724
  %6742 = fdiv fast float %6731, %6740
  %6743 = fmul fast float %6741, 5.000000e-01
  %6744 = fmul fast float %6742, 2.000000e+00
  %6745 = select i1 %6737, float %6743, float %6744
  %6746 = select i1 %6737, float %6744, float %6743
  %6747 = call float @dx.op.binary.f32(i32 35, float %6745, float %6746)  ; FMax(a,b)
  %6748 = call float @dx.op.binary.f32(i32 36, float %6745, float %6746)  ; FMin(a,b)
  %6749 = fcmp fast ogt float %6662, %6748
  br i1 %6749, label %6750, label %6760

; <label>:6750                                    ; preds = %6687
  %6751 = fsub fast float %6662, %6748
  %6752 = fsub fast float %6747, %6748
  %6753 = fmul fast float %6751, %6752
  %6754 = fmul fast float %6747, %6662
  %6755 = fadd fast float %6747, %6662
  %6756 = fmul fast float %6755, %6702
  %6757 = fadd fast float %6754, %6703
  %6758 = fsub fast float %6757, %6756
  %6759 = fdiv fast float %6758, %6753
  br label %6760

; <label>:6760                                    ; preds = %6750, %6687
  %6761 = phi float [ %6759, %6750 ], [ 0.000000e+00, %6687 ]
  %6762 = fcmp fast ogt float %6662, %6747
  %6763 = fsub fast float %6662, %6747
  br i1 %6762, label %6764, label %6774

; <label>:6764                                    ; preds = %6760
  %6765 = fsub fast float %6747, %6748
  %6766 = fmul fast float %6765, %6763
  %6767 = fmul fast float %6748, %6662
  %6768 = fadd fast float %6748, %6662
  %6769 = fmul fast float %6768, %6702
  %6770 = fsub fast float %6704, %6767
  %6771 = fadd fast float %6770, %6769
  %6772 = fdiv fast float %6771, %6766
  %6773 = fadd fast float %6772, %6761
  br label %6774

; <label>:6774                                    ; preds = %6764, %6760
  %6775 = phi float [ %6773, %6764 ], [ %6761, %6760 ]
  %6776 = fsub fast float %6662, %6748
  %6777 = fmul fast float %6776, %6763
  %6778 = fmul fast float %6748, %6747
  %6779 = fadd fast float %6748, %6747
  %6780 = fmul fast float %6779, %6702
  %6781 = fadd fast float %6778, %6703
  %6782 = fsub fast float %6781, %6780
  %6783 = fdiv fast float %6782, %6777
  %6784 = call float @dx.op.unary.f32(i32 7, float %6775)  ; Saturate(value)
  %6785 = fcmp fast oeq float %5451, 0.000000e+00
  %6786 = extractvalue %dx.types.CBufRet.f32 %6570, 0
  %6787 = fcmp fast oeq float %6786, 0.000000e+00
  %6788 = or i1 %6785, %6787
  %6789 = fmul fast float %6786, 2.000000e+00
  %6790 = fadd fast float %6571, %6572
  %6791 = fdiv fast float %6790, %6789
  %6792 = call float @dx.op.unary.f32(i32 7, float %6791)  ; Saturate(value)
  %6793 = fmul fast float %6792, 2.000000e+00
  %6794 = fsub fast float 3.000000e+00, %6793
  %6795 = fmul fast float %6792, %6792
  %6796 = fmul fast float %6795, %6794
  %6797 = select i1 %6788, float 1.000000e+00, float %6796
  %6798 = fmul fast float %6783, %5451
  %6799 = fadd fast float %6784, %6798
  %6800 = call float @dx.op.unary.f32(i32 7, float %6799)  ; Saturate(value)
  %6801 = fmul fast float %6797, %6800
  br label %6802

; <label>:6802                                    ; preds = %6774, %6654
  %6803 = phi float [ %6801, %6774 ], [ 0.000000e+00, %6654 ]
  %6804 = fsub fast float 1.000000e+00, %6803
  %6805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %58, float %6524, float %6525, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6806 = extractvalue %dx.types.ResRet.f32 %6805, 0
  %6807 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6808 = extractvalue %dx.types.CBufRet.i32 %6807, 2
  %6809 = icmp eq i32 %6808, 0
  br i1 %6809, label %6815, label %6810

; <label>:6810                                    ; preds = %6802
  %6811 = call float @dx.op.unary.f32(i32 7, float %6803)  ; Saturate(value)
  %6812 = fadd fast float %6806, -1.000000e+00
  %6813 = fmul fast float %6811, %6812
  %6814 = fadd fast float %6813, 1.000000e+00
  br label %6815

; <label>:6815                                    ; preds = %6810, %6802
  %6816 = phi float [ %6814, %6810 ], [ %6804, %6802 ]
  br i1 %6578, label %6817, label %6835

; <label>:6817                                    ; preds = %6815
  %6818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6819 = extractvalue %dx.types.CBufRet.f32 %6818, 1
  %6820 = fsub fast float %6655, %6819
  %6821 = call float @dx.op.unary.f32(i32 7, float %6820)  ; Saturate(value)
  %6822 = fsub fast float %6655, %6577
  %6823 = call float @dx.op.unary.f32(i32 7, float %6822)  ; Saturate(value)
  %6824 = fsub fast float %6821, %6823
  %6825 = fsub fast float %6657, %6823
  %6826 = fdiv fast float %6825, %6824
  %6827 = call float @dx.op.unary.f32(i32 7, float %6826)  ; Saturate(value)
  %6828 = fmul fast float %6827, 2.000000e+00
  %6829 = fsub fast float 3.000000e+00, %6828
  %6830 = fsub fast float %6806, %6816
  %6831 = fmul fast float %6827, %6827
  %6832 = fmul fast float %6831, %6830
  %6833 = fmul fast float %6832, %6829
  %6834 = fadd fast float %6833, %6816
  br label %6835

; <label>:6835                                    ; preds = %6817, %6815
  %6836 = phi float [ %6834, %6817 ], [ %6816, %6815 ]
  %6837 = call float @dx.op.binary.f32(i32 35, float %6806, float %6836)  ; FMax(a,b)
  %6838 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6839 = extractvalue %dx.types.CBufRet.i32 %6838, 2
  %6840 = and i32 %6839, 1
  %6841 = icmp eq i32 %6840, 0
  %6842 = fcmp fast une float %6837, 1.000000e+00
  %6843 = and i1 %6842, %6841
  br i1 %6843, label %6844, label %6863

; <label>:6844                                    ; preds = %6835
  %6845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %58, float %6524, float %6525, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6846 = extractvalue %dx.types.ResRet.f32 %6845, 0
  %6847 = extractvalue %dx.types.ResRet.f32 %6845, 1
  %6848 = extractvalue %dx.types.ResRet.f32 %6845, 2
  %6849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6850 = extractvalue %dx.types.CBufRet.f32 %6849, 1
  %6851 = fmul fast float %6850, %6846
  %6852 = fmul fast float %6850, %6847
  %6853 = fmul fast float %6850, %6848
  %6854 = fcmp fast ogt float %6806, 0x3FEFFF2E40000000
  %6855 = fsub fast float 1.000000e+00, %6837
  %6856 = fsub fast float 1.000000e+00, %6806
  %6857 = fdiv fast float %6855, %6856
  %6858 = call float @dx.op.unary.f32(i32 7, float %6857)  ; Saturate(value)
  %6859 = select i1 %6854, float 0.000000e+00, float %6858
  %6860 = fmul fast float %6851, %6859
  %6861 = fmul fast float %6852, %6859
  %6862 = fmul fast float %6853, %6859
  br label %6863

; <label>:6863                                    ; preds = %6844, %6835
  %6864 = phi float [ 0.000000e+00, %6835 ], [ %6860, %6844 ]
  %6865 = phi float [ 0.000000e+00, %6835 ], [ %6861, %6844 ]
  %6866 = phi float [ 0.000000e+00, %6835 ], [ %6862, %6844 ]
  %6867 = fmul fast float %6864, %5433
  %6868 = fmul fast float %6865, %5433
  %6869 = fmul fast float %6866, %5433
  %6870 = fmul fast float %6837, %6499
  %6871 = call float @dx.op.dot3.f32(i32 55, float %6837, float %6837, float %6837, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6872 = call float @dx.op.dot3.f32(i32 55, float %6867, float %6868, float %6869, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6873 = select i1 %228, float %6871, float %6837
  %6874 = select i1 %228, float 1.000000e+00, float %6837
  %6875 = select i1 %228, float %6872, float %6867
  %6876 = select i1 %228, float 0.000000e+00, float %6868
  %6877 = select i1 %228, float 0.000000e+00, float %6869
  %6878 = fmul fast float %6873, %6511
  %6879 = fmul fast float %6873, %6512
  %6880 = fmul fast float %6874, %6513
  %6881 = fadd fast float %6878, %6875
  %6882 = fadd fast float %6879, %6876
  %6883 = fadd fast float %6877, %6880
  %6884 = fmul fast float %6873, %6514
  %6885 = fmul fast float %6873, %6515
  %6886 = fmul fast float %6874, %6516
  br label %6887

; <label>:6887                                    ; preds = %6863, %6520, %6489, %5721
  %6888 = phi float [ %5726, %5721 ], [ %6511, %6489 ], [ %6881, %6863 ], [ %6511, %6520 ]
  %6889 = phi float [ %5727, %5721 ], [ %6512, %6489 ], [ %6882, %6863 ], [ %6512, %6520 ]
  %6890 = phi float [ %5728, %5721 ], [ %6513, %6489 ], [ %6883, %6863 ], [ %6513, %6520 ]
  %6891 = phi float [ %5729, %5721 ], [ %6514, %6489 ], [ %6884, %6863 ], [ %6514, %6520 ]
  %6892 = phi float [ %5730, %5721 ], [ %6515, %6489 ], [ %6885, %6863 ], [ %6515, %6520 ]
  %6893 = phi float [ %5731, %5721 ], [ %6516, %6489 ], [ %6886, %6863 ], [ %6516, %6520 ]
  %6894 = phi float [ %5732, %5721 ], [ %6499, %6489 ], [ %6870, %6863 ], [ %6499, %6520 ]
  %6895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6896 = extractvalue %dx.types.CBufRet.f32 %6895, 2
  %6897 = extractvalue %dx.types.CBufRet.f32 %6895, 3
  %6898 = fmul fast float %6896, %90
  %6899 = fmul fast float %6897, %91
  %6900 = call float @dx.op.unary.f32(i32 7, float %6898)  ; Saturate(value)
  %6901 = call float @dx.op.unary.f32(i32 7, float %6899)  ; Saturate(value)
  %6902 = select i1 %5461, i32 2, i32 0
  %6903 = or i32 %6902, 1
  %6904 = uitofp i32 %6903 to float
  %6905 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6900, float %6901, float %6904, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6906 = extractvalue %dx.types.ResRet.f32 %6905, 0
  %6907 = extractvalue %dx.types.ResRet.f32 %6905, 1
  %6908 = extractvalue %dx.types.ResRet.f32 %6905, 2
  %6909 = extractvalue %dx.types.ResRet.f32 %6905, 3
  %6910 = add nuw nsw i32 %6902, 2
  %6911 = uitofp i32 %6910 to float
  %6912 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6900, float %6901, float %6911, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6913 = extractvalue %dx.types.ResRet.f32 %6912, 0
  %6914 = extractvalue %dx.types.ResRet.f32 %6912, 1
  %6915 = extractvalue %dx.types.ResRet.f32 %6912, 2
  %6916 = extractvalue %dx.types.ResRet.f32 %6912, 3
  %6917 = call float @dx.op.binary.f32(i32 35, float %6907, float %6908)  ; FMax(a,b)
  %6918 = call float @dx.op.binary.f32(i32 35, float %6906, float %6917)  ; FMax(a,b)
  %6919 = call float @dx.op.binary.f32(i32 35, float %6918, float %6909)  ; FMax(a,b)
  %6920 = call float @dx.op.binary.f32(i32 36, float %6914, float %6915)  ; FMin(a,b)
  %6921 = call float @dx.op.binary.f32(i32 36, float %6913, float %6920)  ; FMin(a,b)
  %6922 = call float @dx.op.binary.f32(i32 36, float %6921, float %6916)  ; FMin(a,b)
  %6923 = fmul fast float %6919, 2.550000e+02
  %6924 = fadd fast float %6923, 0x3F70101020000000
  %6925 = fptoui float %6924 to i32
  %6926 = fmul fast float %6922, 2.550000e+02
  %6927 = fadd fast float %6926, 0x3F70101020000000
  %6928 = fptoui float %6927 to i32
  %6929 = icmp ult i32 %6925, %6928
  br i1 %6929, label %6930, label %7099

; <label>:6930                                    ; preds = %6887
  %6931 = fcmp fast ogt float %80, 9.843750e-01
  %6932 = fadd fast float %5725, -4.000000e+00
  %6933 = select i1 %6931, float -4.000000e+00, float %6932
  %6934 = call float @dx.op.binary.f32(i32 35, float %6933, float 0.000000e+00)  ; FMax(a,b)
  %6935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6936 = extractvalue %dx.types.CBufRet.f32 %6935, 0
  %6937 = fadd fast float %6936, %6934
  %6938 = extractvalue %dx.types.CBufRet.f32 %6935, 2
  %6939 = fmul fast float %6937, %6938
  %6940 = call float @dx.op.unary.f32(i32 23, float %6939)  ; Log(value)
  %6941 = extractvalue %dx.types.CBufRet.f32 %6935, 3
  %6942 = fmul fast float %6941, %6940
  %6943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6944 = extractvalue %dx.types.CBufRet.f32 %6943, 2
  %6945 = fmul fast float %6942, %6944
  %6946 = call float @dx.op.unary.f32(i32 7, float %6945)  ; Saturate(value)
  %6947 = uitofp i32 %6925 to float
  %6948 = uitofp i32 %6928 to float
  %6949 = fadd fast float %6947, 5.000000e-01
  %6950 = fadd fast float %6948, 5.000000e-01
  %6951 = fmul fast float %6944, %6949
  %6952 = fmul fast float %6944, %6950
  %6953 = fadd fast float %6951, 0x3F0FFB4800000000
  %6954 = fadd fast float %6952, 0xBF0FFB4800000000
  %6955 = call float @dx.op.binary.f32(i32 35, float %6946, float %6953)  ; FMax(a,b)
  %6956 = call float @dx.op.binary.f32(i32 36, float %6955, float %6954)  ; FMin(a,b)
  %6957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6958 = extractvalue %dx.types.CBufRet.f32 %6957, 1
  %6959 = extractvalue %dx.types.CBufRet.f32 %6957, 2
  %6960 = extractvalue %dx.types.CBufRet.f32 %6957, 0
  %6961 = select i1 %5461, float %6960, float 0.000000e+00
  %6962 = fmul fast float %6958, %6956
  %6963 = fadd fast float %6961, %6962
  %6964 = fadd fast float %6961, %6959
  %6965 = fsub fast float %6958, %6959
  %6966 = fadd fast float %6965, %6961
  %6967 = call float @dx.op.binary.f32(i32 35, float %6963, float %6964)  ; FMax(a,b)
  %6968 = call float @dx.op.binary.f32(i32 36, float %6967, float %6966)  ; FMin(a,b)
  %6969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %6900, float %6901, float %6968, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6970 = extractvalue %dx.types.ResRet.f32 %6969, 0
  %6971 = extractvalue %dx.types.ResRet.f32 %6969, 1
  %6972 = extractvalue %dx.types.ResRet.f32 %6969, 2
  %6973 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6974 = extractvalue %dx.types.CBufRet.i32 %6973, 0
  %6975 = extractvalue %dx.types.CBufRet.i32 %6973, 1
  %6976 = uitofp i32 %6974 to float
  %6977 = uitofp i32 %6975 to float
  %6978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6979 = extractvalue %dx.types.CBufRet.f32 %6978, 0
  %6980 = extractvalue %dx.types.CBufRet.f32 %6978, 1
  %6981 = fmul fast float %6976, %6900
  %6982 = fmul fast float %6977, %6901
  %6983 = fadd fast float %6981, -5.000000e-01
  %6984 = fadd fast float %6982, -5.000000e-01
  %6985 = call float @dx.op.unary.f32(i32 22, float %6983)  ; Frc(value)
  %6986 = call float @dx.op.unary.f32(i32 22, float %6984)  ; Frc(value)
  %6987 = fmul fast float %6985, %6985
  %6988 = fmul fast float %6987, %6985
  %6989 = fsub fast float 3.000000e+00, %6985
  %6990 = fmul fast float %6987, %6989
  %6991 = fmul fast float %6985, 3.000000e+00
  %6992 = fmul fast float %6988, 3.000000e+00
  %6993 = fmul fast float %6987, 6.000000e+00
  %6994 = fsub fast float %6992, %6993
  %6995 = fadd fast float %6994, 4.000000e+00
  %6996 = fmul fast float %6995, 0x3FC5555560000000
  %6997 = fmul fast float %6988, -3.000000e+00
  %6998 = fadd fast float %6987, %6985
  %6999 = fmul fast float %6998, 3.000000e+00
  %7000 = fadd fast float %6997, 1.000000e+00
  %7001 = fadd fast float %7000, %6999
  %7002 = fmul fast float %6988, 0x3FC5555560000000
  %7003 = fmul fast float %6986, %6986
  %7004 = fmul fast float %7003, %6986
  %7005 = fsub fast float 3.000000e+00, %6986
  %7006 = fmul fast float %7003, %7005
  %7007 = fmul fast float %6986, 3.000000e+00
  %7008 = fmul fast float %7004, 3.000000e+00
  %7009 = fmul fast float %7003, 6.000000e+00
  %7010 = fsub fast float %7008, %7009
  %7011 = fadd fast float %7010, 4.000000e+00
  %7012 = fmul fast float %7011, 0x3FC5555560000000
  %7013 = fmul fast float %7004, -3.000000e+00
  %7014 = fadd fast float %7003, %6986
  %7015 = fmul fast float %7014, 3.000000e+00
  %7016 = fadd fast float %7013, 1.000000e+00
  %7017 = fadd fast float %7016, %7015
  %7018 = fmul fast float %7004, 0x3FC5555560000000
  %7019 = fadd fast float %6985, 1.000000e+00
  %7020 = fsub fast float 1.000000e+00, %6991
  %7021 = fadd fast float %7020, %6990
  %7022 = fadd fast float %7021, %6995
  %7023 = fmul fast float %7022, 0x3FC5555560000000
  %7024 = fdiv fast float %6996, %7023
  %7025 = fsub fast float %7019, %7024
  %7026 = fsub fast float 1.000000e+00, %6985
  %7027 = fadd fast float %7001, %6988
  %7028 = fmul fast float %7027, 0x3FC5555560000000
  %7029 = fdiv fast float %7002, %7028
  %7030 = fadd fast float %7026, %7029
  %7031 = fadd fast float %6986, 1.000000e+00
  %7032 = fsub fast float 1.000000e+00, %7007
  %7033 = fadd fast float %7032, %7006
  %7034 = fadd fast float %7033, %7011
  %7035 = fmul fast float %7034, 0x3FC5555560000000
  %7036 = fdiv fast float %7012, %7035
  %7037 = fsub fast float %7031, %7036
  %7038 = fsub fast float 1.000000e+00, %6986
  %7039 = fadd fast float %7017, %7004
  %7040 = fmul fast float %7039, 0x3FC5555560000000
  %7041 = fdiv fast float %7018, %7040
  %7042 = fadd fast float %7041, %7038
  %7043 = fmul fast float %7025, %6979
  %7044 = fsub fast float %6900, %7043
  %7045 = fmul fast float %7030, %6979
  %7046 = fadd fast float %7045, %6900
  %7047 = fmul fast float %7042, %6980
  %7048 = fadd fast float %7047, %6901
  %7049 = fmul fast float %7037, %6980
  %7050 = fsub fast float %6901, %7049
  %7051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7044, float %7050, float %6968, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7052 = extractvalue %dx.types.ResRet.f32 %7051, 0
  %7053 = extractvalue %dx.types.ResRet.f32 %7051, 1
  %7054 = extractvalue %dx.types.ResRet.f32 %7051, 2
  %7055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7046, float %7050, float %6968, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7056 = extractvalue %dx.types.ResRet.f32 %7055, 0
  %7057 = extractvalue %dx.types.ResRet.f32 %7055, 1
  %7058 = extractvalue %dx.types.ResRet.f32 %7055, 2
  %7059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7044, float %7048, float %6968, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7060 = extractvalue %dx.types.ResRet.f32 %7059, 0
  %7061 = extractvalue %dx.types.ResRet.f32 %7059, 1
  %7062 = extractvalue %dx.types.ResRet.f32 %7059, 2
  %7063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7046, float %7048, float %6968, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7064 = extractvalue %dx.types.ResRet.f32 %7063, 0
  %7065 = extractvalue %dx.types.ResRet.f32 %7063, 1
  %7066 = extractvalue %dx.types.ResRet.f32 %7063, 2
  %7067 = fsub fast float %7060, %7052
  %7068 = fsub fast float %7061, %7053
  %7069 = fsub fast float %7062, %7054
  %7070 = fmul fast float %7067, %7040
  %7071 = fmul fast float %7068, %7040
  %7072 = fmul fast float %7069, %7040
  %7073 = fadd fast float %7070, %7052
  %7074 = fadd fast float %7071, %7053
  %7075 = fadd fast float %7072, %7054
  %7076 = fsub fast float %7064, %7056
  %7077 = fsub fast float %7065, %7057
  %7078 = fsub fast float %7066, %7058
  %7079 = fmul fast float %7076, %7040
  %7080 = fmul fast float %7077, %7040
  %7081 = fmul fast float %7078, %7040
  %7082 = fsub fast float %7056, %7073
  %7083 = fadd fast float %7082, %7079
  %7084 = fsub fast float %7057, %7074
  %7085 = fadd fast float %7084, %7080
  %7086 = fsub fast float %7058, %7075
  %7087 = fadd fast float %7086, %7081
  %7088 = fmul fast float %7083, %7028
  %7089 = fmul fast float %7085, %7028
  %7090 = fmul fast float %7087, %7028
  %7091 = fadd fast float %7088, %7073
  %7092 = fadd fast float %7089, %7074
  %7093 = fadd fast float %7090, %7075
  %7094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7095 = extractvalue %dx.types.CBufRet.f32 %7094, 1
  %7096 = fmul fast float %7091, %7095
  %7097 = fmul fast float %7092, %7095
  %7098 = fmul fast float %7093, %7095
  br label %7099

; <label>:7099                                    ; preds = %6930, %6887
  %7100 = phi float [ %6970, %6930 ], [ 1.000000e+00, %6887 ]
  %7101 = phi float [ %6971, %6930 ], [ 1.000000e+00, %6887 ]
  %7102 = phi float [ %6972, %6930 ], [ 1.000000e+00, %6887 ]
  %7103 = phi float [ %7096, %6930 ], [ 0.000000e+00, %6887 ]
  %7104 = phi float [ %7097, %6930 ], [ 0.000000e+00, %6887 ]
  %7105 = phi float [ %7098, %6930 ], [ 0.000000e+00, %6887 ]
  %7106 = fmul fast float %7103, %5433
  %7107 = fmul fast float %7104, %5433
  %7108 = fmul fast float %7105, %5433
  %7109 = fmul fast float %7100, %6894
  %7110 = call float @dx.op.dot3.f32(i32 55, float %7100, float %7101, float %7102, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7111 = call float @dx.op.dot3.f32(i32 55, float %7106, float %7107, float %7108, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7112 = select i1 %228, float %7110, float %7100
  %7113 = select i1 %228, float %7110, float %7101
  %7114 = select i1 %228, float 1.000000e+00, float %7102
  %7115 = select i1 %228, float %7111, float %7106
  %7116 = select i1 %228, float 0.000000e+00, float %7107
  %7117 = select i1 %228, float 0.000000e+00, float %7108
  %7118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7119 = extractvalue %dx.types.CBufRet.i32 %7118, 3
  %7120 = and i32 %7119, 3
  %7121 = icmp ne i32 %7120, 0
  %7122 = and i32 %7119, 4
  %7123 = icmp ne i32 %7122, 0
  %7124 = and i1 %7121, %7123
  %7125 = and i1 %228, %7124
  br i1 %7125, label %7126, label %7132

; <label>:7126                                    ; preds = %7099
  %7127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7128 = extractvalue %dx.types.CBufRet.f32 %7127, 1
  %7129 = fadd fast float %7109, -1.000000e+00
  %7130 = fmul fast float %7128, %7129
  %7131 = fadd fast float %7130, 1.000000e+00
  br label %7132

; <label>:7132                                    ; preds = %7126, %7099
  %7133 = phi float [ %7131, %7126 ], [ %7109, %7099 ]
  %7134 = fadd fast float %6891, %6888
  %7135 = fmul fast float %7112, %7134
  %7136 = fadd fast float %7135, %7115
  %7137 = fadd fast float %6892, %6889
  %7138 = fmul fast float %7113, %7137
  %7139 = fadd fast float %7138, %7116
  %7140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7141 = extractvalue %dx.types.CBufRet.f32 %7140, 0
  br i1 %228, label %7142, label %7165

; <label>:7142                                    ; preds = %7132
  %7143 = fadd fast float %7136, %7139
  %7144 = fmul fast float %7141, %7143
  %7145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7146 = extractvalue %dx.types.CBufRet.f32 %7145, 3
  %7147 = extractvalue %dx.types.CBufRet.f32 %5442, 1
  %7148 = fsub fast float %5448, %5436
  %7149 = fadd fast float %7148, %5449
  %7150 = fsub fast float %7149, %7147
  %7151 = extractvalue %dx.types.CBufRet.f32 %5442, 2
  %7152 = fmul fast float %7150, %7151
  %7153 = call float @dx.op.unary.f32(i32 7, float %7152)  ; Saturate(value)
  %7154 = fsub fast float %7153, %7146
  %7155 = fmul fast float %7154, %7133
  %7156 = fadd fast float %7155, %7146
  %7157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7158 = extractvalue %dx.types.CBufRet.f32 %7157, 0
  %7159 = fsub fast float %7156, %7158
  %7160 = fmul fast float %7159, 1.000000e+01
  %7161 = call float @dx.op.unary.f32(i32 7, float %7160)  ; Saturate(value)
  %7162 = fmul fast float %7161, %5432
  %7163 = fadd fast float %7162, %5433
  %7164 = fmul fast float %7163, %7156
  br label %7189

; <label>:7165                                    ; preds = %7132
  %7166 = fadd fast float %6893, %6890
  %7167 = fmul fast float %7114, %7166
  %7168 = fadd fast float %7167, %7117
  %7169 = fmul fast float %7141, %7136
  %7170 = fmul fast float %7141, %7139
  %7171 = fmul fast float %7141, %7168
  %7172 = call float @dx.op.binary.f32(i32 35, float %7170, float %7171)  ; FMax(a,b)
  %7173 = call float @dx.op.binary.f32(i32 35, float %7169, float %7172)  ; FMax(a,b)
  %7174 = call float @dx.op.binary.f32(i32 35, float %7173, float %5433)  ; FMax(a,b)
  %7175 = fcmp fast ugt float %7174, 0x3F10000000000000
  br i1 %7175, label %7177, label %7176

; <label>:7176                                    ; preds = %7165
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7177

; <label>:7177                                    ; preds = %7176, %7165
  %7178 = add i32 %65, 116
  %7179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %7178, i32 undef)  ; BufferLoad(srv,index,wot)
  %7180 = extractvalue %dx.types.ResRet.i32 %7179, 0
  %7181 = and i32 %7180, 32
  %7182 = icmp eq i32 %7181, 0
  br i1 %7182, label %7189, label %7183

; <label>:7183                                    ; preds = %7177
  %7184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7185 = extractvalue %dx.types.CBufRet.f32 %7184, 0
  %7186 = fmul fast float %7185, 0x3FE99999A0000000
  %7187 = fadd fast float %7185, %7169
  %7188 = fadd fast float %7186, %7171
  br label %7189

; <label>:7189                                    ; preds = %7183, %7177, %7142
  %7190 = phi float [ %7144, %7142 ], [ %7187, %7183 ], [ %7169, %7177 ]
  %7191 = phi float [ %7164, %7142 ], [ %7170, %7183 ], [ %7170, %7177 ]
  %7192 = phi float [ %7163, %7142 ], [ %7188, %7183 ], [ %7171, %7177 ]
  %7193 = phi float [ %7163, %7142 ], [ %5433, %7183 ], [ %5433, %7177 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7194 = call float @dx.op.binary.f32(i32 36, float %7190, float 3.225500e+04)  ; FMin(a,b)
  %7195 = call float @dx.op.binary.f32(i32 36, float %7191, float 3.225500e+04)  ; FMin(a,b)
  %7196 = call float @dx.op.binary.f32(i32 36, float %7192, float 3.225500e+04)  ; FMin(a,b)
  %7197 = call float @dx.op.binary.f32(i32 36, float %7193, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7194)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7195)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7196)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7197)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

