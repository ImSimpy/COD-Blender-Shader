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
; SV_IsFrontFace           0     z         6    FFACE    uint     z 
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
; shader hash: 18898872d92495d4a5541849f13da3e6
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
; SV_IsFrontFace           0        nointerpolation       
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
; Number of inputs: 27, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26 }
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
  %64 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = icmp ne i32 %64, 0
  %66 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = alloca [12 x float], align 4
  %86 = alloca [12 x float], align 4
  %87 = alloca [3 x float], align 4
  %88 = alloca [3 x float], align 4
  %89 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %90 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %93 = fmul fast float %92, %81
  %94 = fmul fast float %92, %82
  %95 = select i1 %65, float 1.000000e+00, float -1.000000e+00
  %96 = fmul fast float %72, %95
  %97 = fmul fast float %73, %95
  %98 = fmul fast float %74, %95
  %99 = fmul fast float %68, %95
  %100 = fmul fast float %69, %95
  %101 = fmul fast float %70, %95
  %102 = fmul fast float %73, %70
  %103 = fmul fast float %74, %69
  %104 = fsub fast float %102, %103
  %105 = fmul fast float %74, %68
  %106 = fmul fast float %72, %70
  %107 = fsub fast float %105, %106
  %108 = fmul fast float %72, %69
  %109 = fmul fast float %73, %68
  %110 = fsub fast float %108, %109
  %111 = fmul fast float %71, %95
  %112 = fmul fast float %111, %104
  %113 = fmul fast float %111, %107
  %114 = fmul fast float %111, %110
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 3
  %118 = fmul fast float %116, 2.000000e+00
  %119 = fmul fast float %118, %93
  %120 = fmul fast float %117, 2.000000e+00
  %121 = fmul fast float %120, %94
  %122 = fsub fast float 1.000000e+00, %119
  %123 = fsub fast float 1.000000e+00, %121
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = fmul fast float %122, %125
  %129 = fmul fast float %122, %126
  %130 = fmul fast float %122, %127
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = fmul fast float %123, %132
  %136 = fmul fast float %123, %133
  %137 = fmul fast float %123, %134
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = fadd fast float %135, %139
  %143 = fadd fast float %142, %128
  %144 = fadd fast float %136, %140
  %145 = fadd fast float %144, %129
  %146 = fadd fast float %137, %141
  %147 = fadd fast float %146, %130
  %148 = fmul fast float %143, %84
  %149 = fmul fast float %145, %84
  %150 = fmul fast float %147, %84
  %151 = fadd fast float %77, 5.000000e-01
  %152 = fptoui float %151 to i32
  %153 = shl i32 %152, 3
  %154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %153, i32 undef)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.i32 %154, 0
  %156 = or i32 %153, 4
  %157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %156, i32 undef)  ; BufferLoad(srv,index,wot)
  %158 = extractvalue %dx.types.ResRet.i32 %157, 0
  %159 = and i32 %155, 8191
  %160 = lshr i32 %155, 13
  %161 = and i32 %160, 8191
  %162 = lshr i32 %155, 26
  %163 = and i32 %158, 65535
  %164 = lshr i32 %158, 16
  %165 = uitofp i32 %163 to float
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %168 = uitofp i32 %164 to float
  %169 = uitofp i32 %159 to float
  %170 = fmul fast float %167, %169
  %171 = uitofp i32 %161 to float
  %172 = fmul fast float %167, %171
  %173 = fmul fast float %167, %75
  %174 = fmul fast float %173, %165
  %175 = fmul fast float %167, %76
  %176 = fmul fast float %175, %168
  %177 = fadd fast float %174, %170
  %178 = fadd fast float %172, %176
  %179 = uitofp i32 %162 to float
  %180 = fmul fast float %93, 5.000000e-01
  %181 = fmul fast float %94, 5.000000e-01
  %182 = fptosi float %180 to i32
  %183 = fptosi float %181 to i32
  %184 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %182, i32 %183, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = lshr i32 %185, 18
  %187 = uitofp i32 %186 to float
  %188 = fmul fast float %187, 0x3F4C00EBA0000000
  %189 = call float @dx.op.unary.f32(i32 21, float %188)  ; Exp(value)
  %190 = fadd fast float %189, -1.000000e+00
  %191 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %192 = extractvalue %dx.types.Dimensions %191, 0
  %193 = sitofp i32 %192 to float
  %194 = extractvalue %dx.types.Dimensions %191, 1
  %195 = sitofp i32 %194 to float
  %196 = fcmp fast oge float %180, %193
  %197 = fcmp fast oge float %181, %195
  %198 = or i1 %196, %197
  %199 = select i1 %198, float 0x4197782600000000, float %190
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 2
  %202 = extractvalue %dx.types.CBufRet.f32 %200, 3
  %203 = fmul fast float %201, %93
  %204 = fmul fast float %202, %94
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = and i32 %206, 114688
  %208 = icmp ne i32 %207, 0
  %209 = select i1 %208, float %203, float 0.000000e+00
  %210 = select i1 %208, float %204, float 0.000000e+00
  %211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %59, float %209, float %210, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = fmul fast float %212, 2.550000e+02
  %214 = fptoui float %213 to i32
  %215 = select i1 %208, i32 %214, i32 0
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.i32 %217, 3
  %219 = and i32 %218, 3
  %220 = icmp ne i32 %219, 0
  %221 = and i32 %218, 4
  %222 = icmp ne i32 %221, 0
  %223 = and i1 %220, %222
  br i1 %223, label %224, label %235

; <label>:224                                     ; preds = %0
  %225 = extractvalue %dx.types.CBufRet.f32 %216, 3
  %226 = fmul fast float %225, %94
  %227 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %228 = fmul fast float %227, %93
  %229 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %58, float %228, float %226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %230 = extractvalue %dx.types.ResRet.f32 %229, 0
  %231 = fsub fast float 1.000000e+00, %230
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 0
  %234 = fcmp fast olt float %231, %233
  br label %238

; <label>:235                                     ; preds = %0
  %236 = icmp eq i32 %221, 0
  %237 = and i1 %220, %236
  br label %238

; <label>:238                                     ; preds = %235, %224
  %239 = phi i1 [ %234, %224 ], [ %237, %235 ]
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 2
  %242 = fmul fast float %241, 0x3FE3C6EF40000000
  %243 = frem fast float %93, 2.560000e+02
  %244 = frem fast float %94, 2.560000e+02
  %245 = fptoui float %243 to i32
  %246 = fptoui float %244 to i32
  %247 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %245, i32 %246, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = fadd fast float %248, %242
  %250 = call float @dx.op.unary.f32(i32 22, float %249)  ; Frc(value)
  %251 = add i32 %67, 60
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = shl i32 %253, 4
  %255 = and i32 %254, 32752
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = lshr i32 %253, 7
  %258 = and i32 %257, 32752
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %253, 22
  %261 = shl nuw nsw i32 %260, 5
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = add i32 %67, 72
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = and i32 %265, 255
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F70101020000000
  %269 = lshr i32 %265, 8
  %270 = and i32 %269, 255
  %271 = uitofp i32 %270 to float
  %272 = fmul fast float %271, 0x3F70101020000000
  %273 = lshr i32 %265, 16
  %274 = and i32 %273, 255
  %275 = uitofp i32 %274 to float
  %276 = fmul fast float %275, 0x3F70101020000000
  %277 = add i32 %67, 36
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = and i32 %279, 65535
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %279, 16
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = add i32 %67, 96
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 65535
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %286, 16
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = fmul fast float %288, 0x3F50624DE0000000
  %292 = fmul fast float %290, 0x3F50624DE0000000
  %293 = add i32 %67, 124
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 2
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %307, label %298

; <label>:298                                     ; preds = %238
  %299 = add i32 %67, 164
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = add i32 %301, 0
  %303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %302, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %304 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %303, %dx.types.Handle %90, float %78, float %79, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 3
  %306 = fmul fast float %305, %80
  br label %307

; <label>:307                                     ; preds = %298, %238
  %308 = phi float [ %80, %238 ], [ %306, %298 ]
  %309 = add i32 %67, 24
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = add i32 %67, 28
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = or i32 %314, %311
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %958, label %317

; <label>:317                                     ; preds = %307
  %318 = add i32 %67, 92
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = lshr i32 %320, 16
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = fmul fast float %322, 0x3F50624DE0000000
  %324 = add i32 %67, 40
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = lshr i32 %326, 16
  %328 = and i32 %327, 255
  %329 = lshr i32 %326, 24
  %330 = add i32 %67, 100
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 65535
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %332, 16
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = add i32 %67, 32
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = lshr i32 %339, 22
  %341 = shl nuw nsw i32 %340, 5
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = shl i32 %339, 4
  %344 = and i32 %343, 32752
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %339, 7
  %347 = and i32 %346, 32752
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 3
  %351 = fmul fast float %350, 1.000000e+03
  %352 = fmul fast float %291, %351
  %353 = call float @dx.op.unary.f32(i32 22, float %352)  ; Frc(value)
  %354 = fadd fast float %353, %281
  %355 = fmul fast float %292, %351
  %356 = call float @dx.op.unary.f32(i32 22, float %355)  ; Frc(value)
  %357 = fadd fast float %356, %283
  %358 = fmul fast float %323, %351
  %359 = call float @dx.op.unary.f32(i32 22, float %358)  ; Frc(value)
  %360 = fmul fast float %359, 0x401921FB60000000
  %361 = fadd fast float %360, %342
  %362 = call float @dx.op.unary.f32(i32 13, float %361)  ; Sin(value)
  %363 = call float @dx.op.unary.f32(i32 12, float %361)  ; Cos(value)
  %364 = fsub fast float -0.000000e+00, %362
  %365 = fadd fast float %78, -5.000000e-01
  %366 = fadd fast float %79, -5.000000e-01
  %367 = fmul fast float %334, %365
  %368 = fmul fast float %336, %366
  %369 = fadd fast float %367, 5.000000e-01
  %370 = fadd fast float %368, 5.000000e-01
  %371 = fmul fast float %345, %369
  %372 = fmul fast float %348, %370
  %373 = fmul fast float %363, %371
  %374 = call float @dx.op.tertiary.f32(i32 46, float %364, float %372, float %373)  ; FMad(a,b,c)
  %375 = fmul fast float %362, %371
  %376 = call float @dx.op.tertiary.f32(i32 46, float %363, float %372, float %375)  ; FMad(a,b,c)
  %377 = fadd fast float %354, %374
  %378 = fadd fast float %357, %376
  %379 = icmp ugt i32 %328, 1
  %380 = icmp ugt i32 %326, 33554431
  %381 = or i1 %380, %379
  br i1 %381, label %382, label %407

; <label>:382                                     ; preds = %317
  %383 = add i32 %67, 84
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = lshr i32 %385, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = fmul fast float %350, %387
  %389 = call float @dx.op.unary.f32(i32 22, float %388)  ; Frc(value)
  %390 = mul nuw nsw i32 %328, %329
  %391 = uitofp i32 %390 to float
  %392 = fmul fast float %389, %391
  %393 = call float @dx.op.unary.f32(i32 27, float %392)  ; Round_ni(value)
  %394 = fptoui float %393 to i32
  %395 = urem i32 %394, %328
  %396 = udiv i32 %394, %329
  %397 = call float @dx.op.unary.f32(i32 22, float %377)  ; Frc(value)
  %398 = call float @dx.op.unary.f32(i32 22, float %378)  ; Frc(value)
  %399 = uitofp i32 %395 to float
  %400 = uitofp i32 %396 to float
  %401 = fadd fast float %397, %399
  %402 = fadd fast float %398, %400
  %403 = uitofp i32 %328 to float
  %404 = uitofp i32 %329 to float
  %405 = fdiv fast float %401, %403
  %406 = fdiv fast float %402, %404
  br label %407

; <label>:407                                     ; preds = %382, %317
  %408 = phi float [ %405, %382 ], [ %377, %317 ]
  %409 = phi float [ %406, %382 ], [ %378, %317 ]
  %410 = and i32 %311, 16777216
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %521, label %412

; <label>:412                                     ; preds = %407
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 0
  %415 = extractvalue %dx.types.CBufRet.f32 %413, 1
  %416 = extractvalue %dx.types.CBufRet.f32 %413, 2
  %417 = fadd fast float %414, %148
  %418 = fadd fast float %415, %149
  %419 = fadd fast float %416, %150
  %420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %421 = extractvalue %dx.types.CBufRet.f32 %420, 0
  %422 = call float @dx.op.unary.f32(i32 7, float %421)  ; Saturate(value)
  %423 = icmp eq i32 %66, 65535
  br i1 %423, label %518, label %424

; <label>:424                                     ; preds = %412
  %425 = lshr i32 %66, 1
  %426 = shl i32 %425, 2
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %66, 1
  %430 = icmp ne i32 %429, 0
  %431 = lshr i32 %428, 16
  %432 = and i32 %428, 65535
  %433 = select i1 %430, i32 %431, i32 %432
  %434 = icmp eq i32 %433, 65535
  br i1 %434, label %514, label %435

; <label>:435                                     ; preds = %424
  %436 = mul nuw nsw i32 %433, 40
  %437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.f32 %437, 0
  %439 = extractvalue %dx.types.ResRet.f32 %437, 1
  %440 = extractvalue %dx.types.ResRet.f32 %437, 2
  %441 = add nuw nsw i32 %436, 12
  %442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = extractvalue %dx.types.ResRet.f32 %442, 1
  %445 = extractvalue %dx.types.ResRet.f32 %442, 2
  %446 = add nuw nsw i32 %436, 24
  %447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.f32 %447, 0
  %449 = extractvalue %dx.types.ResRet.f32 %447, 1
  %450 = extractvalue %dx.types.ResRet.f32 %447, 2
  %451 = add nuw nsw i32 %436, 36
  %452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  %454 = fsub fast float %417, %438
  %455 = fsub fast float %418, %439
  %456 = fsub fast float %419, %440
  %457 = fmul fast float %453, %454
  %458 = fmul fast float %453, %455
  %459 = fmul fast float %453, %456
  %460 = call float @dx.op.unary.f32(i32 27, float %457)  ; Round_ni(value)
  %461 = call float @dx.op.unary.f32(i32 27, float %458)  ; Round_ni(value)
  %462 = call float @dx.op.unary.f32(i32 27, float %459)  ; Round_ni(value)
  %463 = fadd fast float %460, 5.000000e-01
  %464 = fadd fast float %461, 5.000000e-01
  %465 = fadd fast float %462, 5.000000e-01
  %466 = fmul fast float %463, %443
  %467 = fmul fast float %464, %444
  %468 = fmul fast float %465, %445
  %469 = shl i32 %66, 2
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = add i32 %471, 0
  %473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %472, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %474 = call float @dx.op.unary.f32(i32 22, float %466)  ; Frc(value)
  %475 = call float @dx.op.unary.f32(i32 22, float %467)  ; Frc(value)
  %476 = call float @dx.op.unary.f32(i32 22, float %468)  ; Frc(value)
  %477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %473, %dx.types.Handle %59, float %474, float %475, float %476, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = extractvalue %dx.types.ResRet.f32 %477, 1
  %480 = extractvalue %dx.types.ResRet.f32 %477, 2
  %481 = fmul fast float %478, 1.023000e+03
  %482 = fmul fast float %479, 1.023000e+03
  %483 = fmul fast float %480, 1.023000e+03
  %484 = fadd fast float %481, 5.000000e-01
  %485 = fadd fast float %482, 5.000000e-01
  %486 = fadd fast float %483, 5.000000e-01
  %487 = call float @dx.op.unary.f32(i32 27, float %484)  ; Round_ni(value)
  %488 = call float @dx.op.unary.f32(i32 27, float %485)  ; Round_ni(value)
  %489 = call float @dx.op.unary.f32(i32 27, float %486)  ; Round_ni(value)
  %490 = fsub fast float %457, %460
  %491 = fsub fast float %458, %461
  %492 = fsub fast float %459, %462
  %493 = fmul fast float %490, 7.500000e-01
  %494 = fmul fast float %491, 7.500000e-01
  %495 = fmul fast float %492, 7.500000e-01
  %496 = fadd fast float %460, 1.250000e-01
  %497 = fadd fast float %496, %493
  %498 = fadd fast float %497, %487
  %499 = fadd fast float %461, 1.250000e-01
  %500 = fadd fast float %499, %494
  %501 = fadd fast float %500, %488
  %502 = fadd fast float %462, 1.250000e-01
  %503 = fadd fast float %502, %495
  %504 = fadd fast float %503, %489
  %505 = fmul fast float %498, %448
  %506 = fmul fast float %501, %449
  %507 = fmul fast float %504, %450
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = add i32 %509, 0
  %511 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %510, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %511, %dx.types.Handle %57, float %505, float %506, float %507, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %513 = extractvalue %dx.types.ResRet.f32 %512, 0
  br label %514

; <label>:514                                     ; preds = %435, %424
  %515 = phi float [ %513, %435 ], [ -1.000000e+00, %424 ]
  %516 = fadd fast float %515, %422
  %517 = call float @dx.op.unary.f32(i32 7, float %516)  ; Saturate(value)
  br label %518

; <label>:518                                     ; preds = %514, %412
  %519 = phi float [ %517, %514 ], [ %422, %412 ]
  %520 = fmul fast float %519, %308
  br label %521

; <label>:521                                     ; preds = %518, %407
  %522 = phi float [ %520, %518 ], [ %308, %407 ]
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = and i32 %524, 256
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %573, label %527

; <label>:527                                     ; preds = %521
  %528 = add i32 %67, 152
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = add i32 %530, 0
  %532 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %531, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %533 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %532, %dx.types.Handle %90, float %408, float %409, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  %535 = add i32 %67, 52
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = shl i32 %537, 4
  %539 = and i32 %538, 32752
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = lshr i32 %537, 7
  %542 = and i32 %541, 32752
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = fsub fast float 1.000000e+00, %522
  %545 = call float @dx.op.binary.f32(i32 35, float %544, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %546 = bitcast float %522 to i32
  %547 = sitofp i32 %546 to float
  %548 = fadd fast float %547, 0xC1CFBF8940000000
  %549 = fmul fast float %543, %548
  %550 = fadd fast float %549, 0x41CFBF8940000000
  %551 = fptosi float %550 to i32
  %552 = bitcast i32 %551 to float
  %553 = bitcast float %545 to i32
  %554 = sitofp i32 %553 to float
  %555 = fadd fast float %554, 0xC1CFBF8940000000
  %556 = fmul fast float %555, %543
  %557 = fadd fast float %556, 0x41CFBF8940000000
  %558 = fptosi float %557 to i32
  %559 = bitcast i32 %558 to float
  %560 = fmul fast float %552, %540
  %561 = fmul fast float %559, %540
  %562 = fsub fast float %545, %560
  %563 = fadd fast float %561, %545
  %564 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  %565 = call float @dx.op.unary.f32(i32 7, float %563)  ; Saturate(value)
  %566 = fsub fast float %534, %564
  %567 = fsub fast float %565, %564
  %568 = bitcast float %567 to i32
  %569 = sub nsw i32 2129859010, %568
  %570 = bitcast i32 %569 to float
  %571 = fmul fast float %570, %566
  %572 = call float @dx.op.unary.f32(i32 7, float %571)  ; Saturate(value)
  br label %573

; <label>:573                                     ; preds = %527, %521
  %574 = phi float [ %572, %527 ], [ %522, %521 ]
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = and i32 %576, 128
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %595, label %579

; <label>:579                                     ; preds = %573
  %580 = add i32 %67, 148
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = add i32 %582, 0
  %584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %583, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %585 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %584, %dx.types.Handle %90, float %408, float %409, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %586 = extractvalue %dx.types.ResRet.f32 %585, 0
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 524288
  %590 = icmp ne i32 %589, 0
  %591 = fcmp fast ogt float %586, 0x3FE0101020000000
  %592 = select i1 %591, float 1.000000e+00, float 0.000000e+00
  %593 = select i1 %590, float %592, float %586
  %594 = fmul fast float %593, %574
  br label %595

; <label>:595                                     ; preds = %579, %573
  %596 = phi float [ %594, %579 ], [ %574, %573 ]
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = and i32 %598, 16
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %799, label %601

; <label>:601                                     ; preds = %595
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = add i32 %67, 136
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = add i32 %606, 0
  %608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %607, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %609 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %608, %dx.types.Handle %89, float %408, float %409, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = extractvalue %dx.types.ResRet.f32 %609, 2
  %613 = extractvalue %dx.types.ResRet.f32 %609, 3
  %614 = and i32 %603, 255
  %615 = uitofp i32 %614 to float
  %616 = lshr i32 %603, 8
  %617 = and i32 %616, 255
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %613, %615
  %620 = fadd fast float %619, %618
  %621 = fmul fast float %620, 0x3F70101000000000
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = and i32 %623, 512
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %634, label %626

; <label>:626                                     ; preds = %601
  %627 = add i32 %67, 156
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = add i32 %629, 0
  %631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %630, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %632 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %631, %dx.types.Handle %90, float %408, float %409, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %633 = extractvalue %dx.types.ResRet.f32 %632, 0
  br label %634

; <label>:634                                     ; preds = %626, %601
  %635 = phi float [ %633, %626 ], [ 1.000000e+00, %601 ]
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = and i32 %637, 33554432
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %746, label %640

; <label>:640                                     ; preds = %634
  %641 = add i32 %67, 80
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = and i32 %643, 65535
  %645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %644)  ; LegacyF16ToF32(value)
  %646 = lshr i32 %643, 16
  %647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %646)  ; LegacyF16ToF32(value)
  %648 = add i32 %67, 84
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %648, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = and i32 %650, 65535
  %652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %651)  ; LegacyF16ToF32(value)
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = lshr i32 %654, 24
  %656 = uitofp i32 %655 to float
  %657 = fmul fast float %656, 0x3F70101020000000
  %658 = and i32 %654, 255
  %659 = uitofp i32 %658 to float
  %660 = fmul fast float %659, 0x3F70101020000000
  %661 = lshr i32 %654, 8
  %662 = and i32 %661, 255
  %663 = uitofp i32 %662 to float
  %664 = fmul fast float %663, 0x3F70101020000000
  %665 = lshr i32 %654, 16
  %666 = and i32 %665, 255
  %667 = uitofp i32 %666 to float
  %668 = fmul fast float %667, 0x3F70101020000000
  %669 = add i32 %67, 76
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %669, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = lshr i32 %671, 24
  %673 = uitofp i32 %672 to float
  %674 = fmul fast float %673, 0x3F70101020000000
  %675 = and i32 %671, 255
  %676 = uitofp i32 %675 to float
  %677 = fmul fast float %676, 0x3F70101020000000
  %678 = lshr i32 %671, 8
  %679 = and i32 %678, 255
  %680 = uitofp i32 %679 to float
  %681 = fmul fast float %680, 0x3F70101020000000
  %682 = lshr i32 %671, 16
  %683 = and i32 %682, 255
  %684 = uitofp i32 %683 to float
  %685 = fmul fast float %684, 0x3F70101020000000
  %686 = bitcast float %610 to i32
  %687 = ashr i32 %686, 1
  %688 = sub nsw i32 1597463174, %687
  %689 = bitcast i32 %688 to float
  %690 = fmul fast float %610, 5.000000e-01
  %691 = fmul fast float %689, %689
  %692 = fmul fast float %691, %690
  %693 = fsub fast float 1.500000e+00, %692
  %694 = fmul fast float %689, %610
  %695 = fmul fast float %694, %693
  %696 = bitcast float %611 to i32
  %697 = ashr i32 %696, 1
  %698 = sub nsw i32 1597463174, %697
  %699 = bitcast i32 %698 to float
  %700 = fmul fast float %611, 5.000000e-01
  %701 = fmul fast float %699, %699
  %702 = fmul fast float %701, %700
  %703 = fsub fast float 1.500000e+00, %702
  %704 = fmul fast float %699, %611
  %705 = fmul fast float %704, %703
  %706 = bitcast float %612 to i32
  %707 = ashr i32 %706, 1
  %708 = sub nsw i32 1597463174, %707
  %709 = bitcast i32 %708 to float
  %710 = fmul fast float %612, 5.000000e-01
  %711 = fmul fast float %709, %709
  %712 = fmul fast float %711, %710
  %713 = fsub fast float 1.500000e+00, %712
  %714 = fmul fast float %709, %612
  %715 = fmul fast float %714, %713
  %716 = fsub fast float %695, %677
  %717 = fsub fast float %705, %681
  %718 = fsub fast float %715, %685
  %719 = fmul fast float %716, %645
  %720 = fmul fast float %717, %647
  %721 = fmul fast float %718, %652
  %722 = fadd fast float %719, %660
  %723 = fadd fast float %720, %664
  %724 = fadd fast float %721, %668
  %725 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  %726 = call float @dx.op.unary.f32(i32 7, float %723)  ; Saturate(value)
  %727 = call float @dx.op.unary.f32(i32 7, float %724)  ; Saturate(value)
  %728 = fmul fast float %725, %725
  %729 = fmul fast float %726, %726
  %730 = fmul fast float %727, %727
  %731 = fsub fast float %728, %610
  %732 = fsub fast float %729, %611
  %733 = fsub fast float %730, %612
  %734 = fmul fast float %731, %635
  %735 = fmul fast float %732, %635
  %736 = fmul fast float %733, %635
  %737 = fadd fast float %734, %610
  %738 = fadd fast float %735, %611
  %739 = fadd fast float %736, %612
  %740 = fadd fast float %657, %621
  %741 = fsub fast float %740, %674
  %742 = call float @dx.op.unary.f32(i32 7, float %741)  ; Saturate(value)
  %743 = fsub fast float %742, %621
  %744 = fmul fast float %743, %635
  %745 = fadd fast float %744, %621
  br label %799

; <label>:746                                     ; preds = %634
  %747 = and i32 %637, 134217728
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %783, label %749

; <label>:749                                     ; preds = %746
  %750 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %751 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %752 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %753 = fadd fast float %750, -5.000000e-01
  %754 = fadd fast float %751, -5.000000e-01
  %755 = fadd fast float %752, -5.000000e-01
  %756 = fmul fast float %753, %635
  %757 = fmul fast float %754, %635
  %758 = fmul fast float %755, %635
  %759 = fadd fast float %756, 5.000000e-01
  %760 = fadd fast float %757, 5.000000e-01
  %761 = fadd fast float %758, 5.000000e-01
  %762 = call float @dx.op.unary.f32(i32 24, float %610)  ; Sqrt(value)
  %763 = call float @dx.op.unary.f32(i32 24, float %611)  ; Sqrt(value)
  %764 = call float @dx.op.unary.f32(i32 24, float %612)  ; Sqrt(value)
  %765 = fmul fast float %759, 2.000000e+00
  %766 = fsub fast float 1.000000e+00, %765
  %767 = fmul fast float %766, %762
  %768 = fadd fast float %767, %765
  %769 = fmul fast float %768, %762
  %770 = fmul fast float %760, 2.000000e+00
  %771 = fsub fast float 1.000000e+00, %770
  %772 = fmul fast float %771, %763
  %773 = fadd fast float %772, %770
  %774 = fmul fast float %773, %763
  %775 = fmul fast float %761, 2.000000e+00
  %776 = fsub fast float 1.000000e+00, %775
  %777 = fmul fast float %776, %764
  %778 = fadd fast float %777, %775
  %779 = fmul fast float %778, %764
  %780 = fmul fast float %769, %769
  %781 = fmul fast float %774, %774
  %782 = fmul fast float %779, %779
  br label %799

; <label>:783                                     ; preds = %746
  %784 = fmul fast float %268, %268
  %785 = fmul fast float %272, %272
  %786 = fmul fast float %276, %276
  %787 = fadd fast float %784, -1.000000e+00
  %788 = fadd fast float %785, -1.000000e+00
  %789 = fadd fast float %786, -1.000000e+00
  %790 = fmul fast float %635, %787
  %791 = fmul fast float %635, %788
  %792 = fmul fast float %635, %789
  %793 = fadd fast float %790, 1.000000e+00
  %794 = fadd fast float %791, 1.000000e+00
  %795 = fadd fast float %792, 1.000000e+00
  %796 = fmul fast float %793, %610
  %797 = fmul fast float %794, %611
  %798 = fmul fast float %795, %612
  br label %799

; <label>:799                                     ; preds = %783, %749, %640, %595
  %800 = phi float [ %745, %640 ], [ %621, %749 ], [ %621, %783 ], [ 0x3FA23C0BE0000000, %595 ]
  %801 = phi float [ %737, %640 ], [ %780, %749 ], [ %796, %783 ], [ 1.000000e+00, %595 ]
  %802 = phi float [ %738, %640 ], [ %781, %749 ], [ %797, %783 ], [ 1.000000e+00, %595 ]
  %803 = phi float [ %739, %640 ], [ %782, %749 ], [ %798, %783 ], [ 1.000000e+00, %595 ]
  %804 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.i32 %804, 1
  %806 = and i32 %805, 1
  %807 = icmp ne i32 %806, 0
  %808 = add i32 %67, 132
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 32
  %812 = icmp ne i32 %811, 0
  %813 = and i1 %807, %812
  %814 = select i1 %813, float 1.000000e+00, float %801
  %815 = select i1 %813, float 0x3FD3333340000000, float %802
  %816 = select i1 %813, float 0x3FD3333340000000, float %803
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = and i32 %818, 32
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %893, label %821

; <label>:821                                     ; preds = %799
  %822 = add i32 %67, 44
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = add i32 %67, 140
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %825, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = add i32 %827, 0
  %829 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %828, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %830 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %829, %dx.types.Handle %89, float %408, float %409, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 0
  %832 = extractvalue %dx.types.ResRet.f32 %830, 1
  %833 = extractvalue %dx.types.ResRet.f32 %830, 2
  %834 = extractvalue %dx.types.ResRet.f32 %830, 3
  %835 = and i32 %824, 255
  %836 = uitofp i32 %835 to float
  %837 = lshr i32 %824, 8
  %838 = and i32 %837, 255
  %839 = uitofp i32 %838 to float
  %840 = lshr i32 %824, 16
  %841 = and i32 %840, 255
  %842 = uitofp i32 %841 to float
  %843 = fmul fast float %842, 0x3F70101000000000
  %844 = fmul fast float %831, %836
  %845 = fadd fast float %844, %839
  %846 = fmul fast float %845, 0x3F70101000000000
  %847 = fadd fast float %832, -5.000000e-01
  %848 = fadd fast float %834, -5.000000e-01
  %849 = fmul fast float %847, %843
  %850 = fmul fast float %848, %843
  %851 = fadd fast float %849, 5.000000e-01
  %852 = fadd fast float %850, 5.000000e-01
  %853 = fmul fast float %851, 2.000000e+00
  %854 = fadd fast float %853, -1.000000e+00
  %855 = fmul fast float %852, 2.000000e+00
  %856 = fadd fast float %855, -1.000000e+00
  %857 = fadd fast float %854, %856
  %858 = fmul fast float %857, 5.000000e-01
  %859 = fsub fast float %854, %856
  %860 = fmul fast float %859, 5.000000e-01
  %861 = call float @dx.op.unary.f32(i32 6, float %858)  ; FAbs(value)
  %862 = fsub fast float 1.000000e+00, %861
  %863 = call float @dx.op.unary.f32(i32 6, float %860)  ; FAbs(value)
  %864 = fsub fast float %862, %863
  %865 = call float @dx.op.dot3.f32(i32 55, float %858, float %860, float %864, float %858, float %860, float %864)  ; Dot3(ax,ay,az,bx,by,bz)
  %866 = call float @dx.op.unary.f32(i32 25, float %865)  ; Rsqrt(value)
  %867 = fmul fast float %858, %866
  %868 = fmul fast float %860, %866
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = and i32 %870, 67108864
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %889, label %873

; <label>:873                                     ; preds = %821
  %874 = add i32 %67, 88
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = and i32 %876, 65535
  %878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %877)  ; LegacyF16ToF32(value)
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = and i32 %880, 65535
  %882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %881)  ; LegacyF16ToF32(value)
  %883 = lshr i32 %876, 16
  %884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %883)  ; LegacyF16ToF32(value)
  %885 = fsub fast float %846, %884
  %886 = fmul fast float %885, %878
  %887 = fadd fast float %886, %882
  %888 = call float @dx.op.unary.f32(i32 7, float %887)  ; Saturate(value)
  br label %889

; <label>:889                                     ; preds = %873, %821
  %890 = phi float [ %888, %873 ], [ %846, %821 ]
  %891 = call float @dx.op.dot2.f32(i32 54, float %867, float %868, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %892 = call float @dx.op.dot2.f32(i32 54, float %867, float %868, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %893

; <label>:893                                     ; preds = %889, %799
  %894 = phi float [ %890, %889 ], [ 0x3FD6666660000000, %799 ]
  %895 = phi float [ %891, %889 ], [ 0.000000e+00, %799 ]
  %896 = phi float [ %892, %889 ], [ 0.000000e+00, %799 ]
  %897 = phi float [ %833, %889 ], [ 1.000000e+00, %799 ]
  %898 = add i32 %67, 64
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = lshr i32 %900, 22
  %902 = shl nuw nsw i32 %901, 5
  %903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %902)  ; LegacyF16ToF32(value)
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = and i32 %905, 64
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %941, label %908

; <label>:908                                     ; preds = %893
  %909 = add i32 %67, 144
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = add i32 %911, 0
  %913 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %912, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = and i32 %915, 131072
  %917 = icmp eq i32 %916, 0
  %918 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %913, %dx.types.Handle %89, float %408, float %409, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %919 = extractvalue %dx.types.ResRet.f32 %918, 0
  %920 = extractvalue %dx.types.ResRet.f32 %918, 1
  %921 = extractvalue %dx.types.ResRet.f32 %918, 2
  %922 = fmul fast float %919, %256
  %923 = fmul fast float %920, %259
  %924 = fmul fast float %921, %262
  br i1 %917, label %931, label %925

; <label>:925                                     ; preds = %908
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 0
  %928 = fmul fast float %927, %922
  %929 = fmul fast float %927, %923
  %930 = fmul fast float %927, %924
  br label %931

; <label>:931                                     ; preds = %925, %908
  %932 = phi float [ %928, %925 ], [ %922, %908 ]
  %933 = phi float [ %929, %925 ], [ %923, %908 ]
  %934 = phi float [ %930, %925 ], [ %924, %908 ]
  %935 = fmul fast float %932, %903
  %936 = select i1 %239, float %935, float %932
  %937 = call float @dx.op.dot3.f32(i32 55, float %936, float %933, float %934, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %938 = select i1 %239, float 0.000000e+00, float %932
  %939 = select i1 %239, float %937, float %933
  %940 = select i1 %239, float 0.000000e+00, float %934
  br label %941

; <label>:941                                     ; preds = %931, %893
  %942 = phi float [ %938, %931 ], [ 0.000000e+00, %893 ]
  %943 = phi float [ %939, %931 ], [ 0.000000e+00, %893 ]
  %944 = phi float [ %940, %931 ], [ 0.000000e+00, %893 ]
  %945 = add i32 %67, 48
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = and i32 %947, 255
  %949 = uitofp i32 %948 to float
  %950 = lshr i32 %947, 8
  %951 = and i32 %950, 255
  %952 = uitofp i32 %951 to float
  %953 = call float @dx.op.dot3.f32(i32 55, float %814, float %815, float %816, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %954 = fmul fast float %952, %953
  %955 = fadd fast float %954, %949
  %956 = fmul fast float %955, 0x3F70101020000000
  %957 = call float @dx.op.unary.f32(i32 7, float %956)  ; Saturate(value)
  br label %958

; <label>:958                                     ; preds = %941, %307
  %959 = phi float [ 0.000000e+00, %307 ], [ %895, %941 ]
  %960 = phi float [ 0.000000e+00, %307 ], [ %896, %941 ]
  %961 = phi float [ 0.000000e+00, %307 ], [ %814, %941 ]
  %962 = phi float [ 0.000000e+00, %307 ], [ %815, %941 ]
  %963 = phi float [ 0.000000e+00, %307 ], [ %816, %941 ]
  %964 = phi float [ 0.000000e+00, %307 ], [ %942, %941 ]
  %965 = phi float [ 0.000000e+00, %307 ], [ %943, %941 ]
  %966 = phi float [ 0.000000e+00, %307 ], [ %944, %941 ]
  %967 = phi float [ 0.000000e+00, %307 ], [ %800, %941 ]
  %968 = phi float [ 0.000000e+00, %307 ], [ %596, %941 ]
  %969 = phi float [ 0.000000e+00, %307 ], [ %894, %941 ]
  %970 = phi float [ 0.000000e+00, %307 ], [ %897, %941 ]
  %971 = phi float [ 0.000000e+00, %307 ], [ %957, %941 ]
  %972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.f32 %972, 0
  %974 = call float @dx.op.dot2.f32(i32 54, float %959, float %960, float %959, float %960)  ; Dot2(ax,ay,bx,by)
  %975 = fmul fast float %974, 0x3FE3333340000000
  %976 = fsub fast float 1.000000e+00, %975
  %977 = call float @dx.op.dot3.f32(i32 55, float %959, float %960, float %976, float %959, float %960, float %976)  ; Dot3(ax,ay,az,bx,by,bz)
  %978 = call float @dx.op.unary.f32(i32 25, float %977)  ; Rsqrt(value)
  %979 = fmul fast float %978, %959
  %980 = fmul fast float %978, %960
  %981 = fmul fast float %976, %978
  %982 = fmul fast float %981, %96
  %983 = fmul fast float %981, %97
  %984 = fmul fast float %981, %98
  %985 = fmul fast float %979, %99
  %986 = fmul fast float %979, %100
  %987 = fmul fast float %979, %101
  %988 = fadd fast float %982, %985
  %989 = fadd fast float %983, %986
  %990 = fadd fast float %984, %987
  %991 = fmul fast float %980, %112
  %992 = fmul fast float %980, %113
  %993 = fmul fast float %980, %114
  %994 = fadd fast float %988, %991
  %995 = fadd fast float %989, %992
  %996 = fadd fast float %990, %993
  %997 = call float @dx.op.dot3.f32(i32 55, float %994, float %995, float %996, float %994, float %995, float %996)  ; Dot3(ax,ay,az,bx,by,bz)
  %998 = call float @dx.op.unary.f32(i32 25, float %997)  ; Rsqrt(value)
  %999 = fmul fast float %994, %998
  %1000 = fmul fast float %995, %998
  %1001 = fmul fast float %996, %998
  %1002 = call float @dx.op.unary.f32(i32 83, float %148)  ; DerivCoarseX(value)
  %1003 = call float @dx.op.unary.f32(i32 83, float %149)  ; DerivCoarseX(value)
  %1004 = call float @dx.op.unary.f32(i32 83, float %150)  ; DerivCoarseX(value)
  %1005 = call float @dx.op.unary.f32(i32 84, float %148)  ; DerivCoarseY(value)
  %1006 = call float @dx.op.unary.f32(i32 84, float %149)  ; DerivCoarseY(value)
  %1007 = call float @dx.op.unary.f32(i32 84, float %150)  ; DerivCoarseY(value)
  %1008 = fadd fast float %1002, %148
  %1009 = fadd fast float %1003, %149
  %1010 = fadd fast float %1004, %150
  %1011 = fadd fast float %1005, %148
  %1012 = fadd fast float %1006, %149
  %1013 = fadd fast float %1007, %150
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.CBufRet.f32 %1014, 1
  %1017 = extractvalue %dx.types.CBufRet.f32 %1014, 2
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1020 = extractvalue %dx.types.CBufRet.f32 %1018, 3
  %1021 = fmul fast float %1015, %93
  %1022 = fmul fast float %1021, %1019
  %1023 = fmul fast float %1016, %94
  %1024 = fmul fast float %1023, %1020
  %1025 = fptoui float %1022 to i32
  %1026 = fptoui float %1024 to i32
  %1027 = fadd fast float %1015, -1.000000e+00
  %1028 = fadd fast float %1016, -1.000000e+00
  %1029 = fptoui float %1027 to i32
  %1030 = fptoui float %1028 to i32
  %1031 = call i32 @dx.op.binary.i32(i32 40, i32 %1025, i32 %1029)  ; UMin(a,b)
  %1032 = call i32 @dx.op.binary.i32(i32 40, i32 %1026, i32 %1030)  ; UMin(a,b)
  %1033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1033, 2
  %1035 = extractvalue %dx.types.CBufRet.f32 %1033, 3
  %1036 = fmul fast float %1034, %84
  %1037 = fsub fast float %1036, %1035
  %1038 = fadd fast float %1017, -1.000000e+00
  %1039 = call float @dx.op.binary.f32(i32 36, float %1037, float %1038)  ; FMin(a,b)
  %1040 = fptoui float %1039 to i32
  %1041 = fptoui float %1015 to i32
  %1042 = fptoui float %1016 to i32
  %1043 = mul i32 %1040, %1042
  %1044 = add i32 %1043, %1032
  %1045 = mul i32 %1044, %1041
  %1046 = add i32 %1045, %1031
  %1047 = shl i32 %1046, 2
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = and i32 %1049, 1023
  %1051 = lshr i32 %1049, 10
  %1052 = icmp eq i32 %1050, 0
  br i1 %1052, label %1481, label %1053

; <label>:1053                                    ; preds = %958
  %1054 = and i32 %1049, 1023
  br label %1055

; <label>:1055                                    ; preds = %1182, %1053
  %1056 = phi float [ %1183, %1182 ], [ 0.000000e+00, %1053 ]
  %1057 = phi float [ %1184, %1182 ], [ %968, %1053 ]
  %1058 = phi float [ %1185, %1182 ], [ %973, %1053 ]
  %1059 = phi float [ %1186, %1182 ], [ %971, %1053 ]
  %1060 = phi float [ %1187, %1182 ], [ 0.000000e+00, %1053 ]
  %1061 = phi float [ %1188, %1182 ], [ 0.000000e+00, %1053 ]
  %1062 = phi float [ %1189, %1182 ], [ %964, %1053 ]
  %1063 = phi float [ %1190, %1182 ], [ %965, %1053 ]
  %1064 = phi float [ %1191, %1182 ], [ %966, %1053 ]
  %1065 = phi float [ %1192, %1182 ], [ %999, %1053 ]
  %1066 = phi float [ %1193, %1182 ], [ %1000, %1053 ]
  %1067 = phi float [ %1194, %1182 ], [ %1001, %1053 ]
  %1068 = phi float [ %1195, %1182 ], [ %970, %1053 ]
  %1069 = phi float [ %1196, %1182 ], [ %969, %1053 ]
  %1070 = phi float [ %1197, %1182 ], [ 0.000000e+00, %1053 ]
  %1071 = phi float [ %1198, %1182 ], [ %967, %1053 ]
  %1072 = phi float [ %1199, %1182 ], [ %961, %1053 ]
  %1073 = phi float [ %1200, %1182 ], [ %962, %1053 ]
  %1074 = phi float [ %1201, %1182 ], [ %963, %1053 ]
  %1075 = phi i32 [ %1132, %1182 ], [ 0, %1053 ]
  %1076 = add nuw nsw i32 %1075, %1051
  %1077 = shl i32 %1076, 2
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = shl i32 %1079, 8
  %1081 = or i32 %1080, 48
  %1082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.f32 %1082, 0
  %1084 = extractvalue %dx.types.ResRet.f32 %1082, 1
  %1085 = extractvalue %dx.types.ResRet.f32 %1082, 2
  %1086 = extractvalue %dx.types.ResRet.f32 %1082, 3
  %1087 = or i32 %1080, 64
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = extractvalue %dx.types.ResRet.i32 %1088, 1
  %1091 = or i32 %1080, 80
  %1092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1091, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 2
  %1094 = extractvalue %dx.types.ResRet.f32 %1092, 3
  %1095 = or i32 %1080, 96
  %1096 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1095, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.f32 %1096, 0
  %1098 = extractvalue %dx.types.ResRet.f32 %1096, 1
  %1099 = extractvalue %dx.types.ResRet.f32 %1096, 2
  %1100 = extractvalue %dx.types.ResRet.f32 %1096, 3
  %1101 = or i32 %1080, 112
  %1102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.f32 %1102, 2
  %1104 = or i32 %1080, 128
  %1105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.ResRet.f32 %1105, 1
  %1108 = extractvalue %dx.types.ResRet.f32 %1105, 2
  %1109 = extractvalue %dx.types.ResRet.f32 %1105, 3
  %1110 = or i32 %1080, 144
  %1111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.f32 %1111, 0
  %1113 = extractvalue %dx.types.ResRet.f32 %1111, 1
  %1114 = extractvalue %dx.types.ResRet.f32 %1111, 2
  %1115 = extractvalue %dx.types.ResRet.f32 %1111, 3
  %1116 = or i32 %1080, 160
  %1117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.ResRet.f32 %1117, 1
  %1120 = extractvalue %dx.types.ResRet.f32 %1117, 2
  %1121 = extractvalue %dx.types.ResRet.f32 %1117, 3
  %1122 = or i32 %1080, 192
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1122, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = or i32 %1080, 208
  %1126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1125, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = or i32 %1080, 248
  %1129 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1128, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.f32 %1129, 0
  %1131 = extractvalue %dx.types.ResRet.f32 %1129, 1
  %1132 = add nuw nsw i32 %1075, 1
  %1133 = bitcast float %1086 to i32
  %1134 = and i32 %1133, 2560
  %1135 = icmp eq i32 %1134, 0
  %1136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.ResRet.f32 %1136, 1
  %1139 = extractvalue %dx.types.ResRet.f32 %1136, 2
  %1140 = extractvalue %dx.types.ResRet.f32 %1136, 3
  %1141 = call float @dx.op.dot4.f32(i32 56, float %1137, float %1138, float %1139, float %1140, float %148, float %149, float %150, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1142 = or i32 %1080, 16
  %1143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.f32 %1143, 0
  %1145 = extractvalue %dx.types.ResRet.f32 %1143, 1
  %1146 = extractvalue %dx.types.ResRet.f32 %1143, 2
  %1147 = extractvalue %dx.types.ResRet.f32 %1143, 3
  %1148 = call float @dx.op.dot4.f32(i32 56, float %1144, float %1145, float %1146, float %1147, float %148, float %149, float %150, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1149 = or i32 %1080, 32
  %1150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.f32 %1150, 0
  %1152 = extractvalue %dx.types.ResRet.f32 %1150, 1
  %1153 = extractvalue %dx.types.ResRet.f32 %1150, 2
  %1154 = extractvalue %dx.types.ResRet.f32 %1150, 3
  %1155 = call float @dx.op.dot4.f32(i32 56, float %1151, float %1152, float %1153, float %1154, float %148, float %149, float %150, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1156 = call float @dx.op.unary.f32(i32 27, float %1141)  ; Round_ni(value)
  %1157 = call float @dx.op.unary.f32(i32 6, float %1156)  ; FAbs(value)
  %1158 = call float @dx.op.unary.f32(i32 27, float %1148)  ; Round_ni(value)
  %1159 = call float @dx.op.unary.f32(i32 6, float %1158)  ; FAbs(value)
  %1160 = call float @dx.op.unary.f32(i32 6, float %1155)  ; FAbs(value)
  %1161 = call float @dx.op.unary.f32(i32 27, float %1160)  ; Round_ni(value)
  %1162 = fadd fast float %1159, %1157
  %1163 = fadd fast float %1162, %1161
  %1164 = fcmp fast oeq float %1163, 0.000000e+00
  %1165 = call float @dx.op.dot4.f32(i32 56, float %1137, float %1138, float %1139, float %1140, float %1008, float %1009, float %1010, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1166 = call float @dx.op.dot4.f32(i32 56, float %1144, float %1145, float %1146, float %1147, float %1008, float %1009, float %1010, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1167 = call float @dx.op.dot4.f32(i32 56, float %1137, float %1138, float %1139, float %1140, float %1011, float %1012, float %1013, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1168 = call float @dx.op.dot4.f32(i32 56, float %1144, float %1145, float %1146, float %1147, float %1011, float %1012, float %1013, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1169 = fsub fast float %1165, %1141
  %1170 = fsub fast float %1167, %1141
  %1171 = fsub fast float %1166, %1148
  %1172 = fsub fast float %1168, %1148
  %1173 = call float @dx.op.dot3.f32(i32 55, float %1083, float %1084, float %1085, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %1174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.f32 %1174, 2
  %1176 = fadd fast float %1175, %1173
  %1177 = call float @dx.op.unary.f32(i32 7, float %1176)  ; Saturate(value)
  %1178 = extractvalue %dx.types.CBufRet.f32 %1174, 0
  %1179 = fcmp fast ogt float %1177, %1178
  %1180 = and i1 %1164, %1179
  %1181 = and i1 %1135, %1180
  br i1 %1181, label %1203, label %1182

; <label>:1182                                    ; preds = %1467, %1284, %1203, %1055
  %1183 = phi float [ %1056, %1203 ], [ %1287, %1284 ], [ %1287, %1467 ], [ %1056, %1055 ]
  %1184 = phi float [ %1057, %1203 ], [ %1057, %1284 ], [ %1442, %1467 ], [ %1057, %1055 ]
  %1185 = phi float [ %1058, %1203 ], [ %1058, %1284 ], [ %1441, %1467 ], [ %1058, %1055 ]
  %1186 = phi float [ %1059, %1203 ], [ %1059, %1284 ], [ %1439, %1467 ], [ %1059, %1055 ]
  %1187 = phi float [ %1060, %1203 ], [ %1060, %1284 ], [ %1411, %1467 ], [ %1060, %1055 ]
  %1188 = phi float [ %1061, %1203 ], [ %1061, %1284 ], [ %1409, %1467 ], [ %1061, %1055 ]
  %1189 = phi float [ %1062, %1203 ], [ %1062, %1284 ], [ %1477, %1467 ], [ %1062, %1055 ]
  %1190 = phi float [ %1063, %1203 ], [ %1063, %1284 ], [ %1478, %1467 ], [ %1063, %1055 ]
  %1191 = phi float [ %1064, %1203 ], [ %1064, %1284 ], [ %1479, %1467 ], [ %1064, %1055 ]
  %1192 = phi float [ %1065, %1203 ], [ %1065, %1284 ], [ %1390, %1467 ], [ %1065, %1055 ]
  %1193 = phi float [ %1066, %1203 ], [ %1066, %1284 ], [ %1391, %1467 ], [ %1066, %1055 ]
  %1194 = phi float [ %1067, %1203 ], [ %1067, %1284 ], [ %1392, %1467 ], [ %1067, %1055 ]
  %1195 = phi float [ %1068, %1203 ], [ %1068, %1284 ], [ %1419, %1467 ], [ %1068, %1055 ]
  %1196 = phi float [ %1069, %1203 ], [ %1069, %1284 ], [ %1416, %1467 ], [ %1069, %1055 ]
  %1197 = phi float [ %1070, %1203 ], [ %1070, %1284 ], [ %1413, %1467 ], [ %1070, %1055 ]
  %1198 = phi float [ %1071, %1203 ], [ %1071, %1284 ], [ %1407, %1467 ], [ %1071, %1055 ]
  %1199 = phi float [ %1072, %1203 ], [ %1072, %1284 ], [ %1402, %1467 ], [ %1072, %1055 ]
  %1200 = phi float [ %1073, %1203 ], [ %1073, %1284 ], [ %1403, %1467 ], [ %1073, %1055 ]
  %1201 = phi float [ %1074, %1203 ], [ %1074, %1284 ], [ %1404, %1467 ], [ %1074, %1055 ]
  %1202 = icmp eq i32 %1132, %1054
  br i1 %1202, label %1480, label %1055

; <label>:1203                                    ; preds = %1055
  %1204 = extractvalue %dx.types.ResRet.f32 %1102, 3
  %1205 = extractvalue %dx.types.ResRet.f32 %1102, 1
  %1206 = extractvalue %dx.types.ResRet.f32 %1102, 0
  %1207 = extractvalue %dx.types.ResRet.f32 %1092, 1
  %1208 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1209 = extractvalue %dx.types.ResRet.i32 %1088, 3
  %1210 = extractvalue %dx.types.ResRet.i32 %1088, 2
  %1211 = add i32 %1209, 0
  %1212 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1211, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1213 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1214 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1212, %dx.types.Handle %1213, float %1141, float %1148, float undef, float undef, i32 0, i32 0, i32 undef, float %1169, float %1171, float undef, float %1170, float %1172, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 0
  %1216 = fmul fast float %1215, %1208
  %1217 = fadd fast float %1216, %1207
  %1218 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1219 = fmul fast float %1141, %1097
  %1220 = call float @dx.op.tertiary.f32(i32 46, float %1098, float %1148, float %1219)  ; FMad(a,b,c)
  %1221 = fadd fast float %1220, %1206
  %1222 = fmul fast float %1141, %1099
  %1223 = call float @dx.op.tertiary.f32(i32 46, float %1100, float %1148, float %1222)  ; FMad(a,b,c)
  %1224 = fadd fast float %1223, %1205
  %1225 = fmul fast float %1169, %1097
  %1226 = call float @dx.op.tertiary.f32(i32 46, float %1098, float %1171, float %1225)  ; FMad(a,b,c)
  %1227 = fmul fast float %1169, %1099
  %1228 = call float @dx.op.tertiary.f32(i32 46, float %1100, float %1171, float %1227)  ; FMad(a,b,c)
  %1229 = fmul fast float %1170, %1097
  %1230 = call float @dx.op.tertiary.f32(i32 46, float %1098, float %1172, float %1229)  ; FMad(a,b,c)
  %1231 = fmul fast float %1170, %1099
  %1232 = call float @dx.op.tertiary.f32(i32 46, float %1100, float %1172, float %1231)  ; FMad(a,b,c)
  %1233 = add i32 %1210, 0
  %1234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1233, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1235 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1234, %dx.types.Handle %1213, float %1221, float %1224, float undef, float undef, i32 0, i32 0, i32 undef, float %1226, float %1228, float undef, float %1230, float %1232, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = and i32 %1133, 1024
  %1238 = icmp ne i32 %1237, 0
  %1239 = fcmp fast ogt float %1236, 0x3FE0101020000000
  %1240 = uitofp i1 %1239 to float
  %1241 = select i1 %1238, float %1240, float %1236
  %1242 = and i32 %1133, 8192
  %1243 = icmp ne i32 %1242, 0
  %1244 = select i1 %1243, float %1204, float 1.000000e+00
  %1245 = fmul fast float %1141, 2.000000e+00
  %1246 = fadd fast float %1245, -1.000000e+00
  %1247 = call float @dx.op.unary.f32(i32 6, float %1246)  ; FAbs(value)
  %1248 = fmul fast float %1247, %1130
  %1249 = fsub fast float %1248, %1130
  %1250 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  %1251 = fmul fast float %1148, 2.000000e+00
  %1252 = fadd fast float %1251, -1.000000e+00
  %1253 = call float @dx.op.unary.f32(i32 6, float %1252)  ; FAbs(value)
  %1254 = fmul fast float %1253, %1131
  %1255 = fsub fast float %1254, %1131
  %1256 = call float @dx.op.unary.f32(i32 7, float %1255)  ; Saturate(value)
  %1257 = fmul fast float %1160, %1093
  %1258 = fsub fast float %1257, %1093
  %1259 = call float @dx.op.unary.f32(i32 7, float %1258)  ; Saturate(value)
  %1260 = fmul fast float %1218, %1244
  %1261 = fmul fast float %1260, %1215
  %1262 = fmul fast float %1261, %1250
  %1263 = fmul fast float %1262, %1241
  %1264 = fmul fast float %1263, %1256
  %1265 = fmul fast float %1264, %1259
  %1266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1266, 1
  %1268 = extractvalue %dx.types.CBufRet.f32 %1266, 0
  %1269 = fsub fast float %1177, %1268
  %1270 = fmul fast float %1269, %1267
  %1271 = call float @dx.op.unary.f32(i32 7, float %1270)  ; Saturate(value)
  %1272 = fmul fast float %1265, %1094
  %1273 = fadd fast float %1265, %1094
  %1274 = fmul fast float %1273, %1103
  %1275 = fsub fast float %1274, %1103
  %1276 = call float @dx.op.unary.f32(i32 7, float %1275)  ; Saturate(value)
  %1277 = and i32 %1133, 128
  %1278 = icmp ne i32 %1277, 0
  %1279 = select i1 %1278, float %1276, float %1272
  %1280 = fmul fast float %1279, %1271
  %1281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1281, 0
  %1283 = fcmp fast ugt float %1280, %1282
  br i1 %1283, label %1284, label %1182

; <label>:1284                                    ; preds = %1203
  %1285 = select i1 %1243, float %1280, float 0.000000e+00
  %1286 = fadd fast float %1285, %1056
  %1287 = call float @dx.op.unary.f32(i32 7, float %1286)  ; Saturate(value)
  br i1 %1243, label %1182, label %1288

; <label>:1288                                    ; preds = %1284
  %1289 = and i32 %1133, 4
  %1290 = and i32 %1133, 8
  %1291 = add i32 %1089, 0
  %1292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1291, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1294 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1292, %dx.types.Handle %1293, float %1221, float %1224, float undef, float undef, i32 0, i32 0, i32 undef, float %1226, float %1228, float undef, float %1230, float %1232, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1295 = extractvalue %dx.types.ResRet.f32 %1294, 0
  %1296 = extractvalue %dx.types.ResRet.f32 %1294, 1
  %1297 = extractvalue %dx.types.ResRet.f32 %1294, 2
  %1298 = extractvalue %dx.types.ResRet.f32 %1294, 3
  %1299 = bitcast float %1115 to i32
  %1300 = and i32 %1299, 255
  %1301 = uitofp i32 %1300 to float
  %1302 = lshr i32 %1299, 8
  %1303 = and i32 %1302, 255
  %1304 = uitofp i32 %1303 to float
  %1305 = fmul fast float %1298, %1301
  %1306 = fadd fast float %1305, %1304
  %1307 = fmul fast float %1306, 0x3F70101000000000
  %1308 = add i32 %1090, 0
  %1309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1308, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1310 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1309, %dx.types.Handle %1293, float %1221, float %1224, float undef, float undef, i32 0, i32 0, i32 undef, float %1226, float %1228, float undef, float %1230, float %1232, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1311 = extractvalue %dx.types.ResRet.f32 %1310, 0
  %1312 = extractvalue %dx.types.ResRet.f32 %1310, 1
  %1313 = extractvalue %dx.types.ResRet.f32 %1310, 2
  %1314 = extractvalue %dx.types.ResRet.f32 %1310, 3
  %1315 = bitcast float %1109 to i32
  %1316 = and i32 %1315, 255
  %1317 = uitofp i32 %1316 to float
  %1318 = lshr i32 %1315, 8
  %1319 = and i32 %1318, 255
  %1320 = uitofp i32 %1319 to float
  %1321 = lshr i32 %1315, 16
  %1322 = and i32 %1321, 255
  %1323 = uitofp i32 %1322 to float
  %1324 = fmul fast float %1323, 0x3F70101000000000
  %1325 = fmul fast float %1311, %1317
  %1326 = fadd fast float %1325, %1320
  %1327 = fmul fast float %1326, 0x3F70101000000000
  %1328 = fadd fast float %1312, -5.000000e-01
  %1329 = fadd fast float %1314, -5.000000e-01
  %1330 = fmul fast float %1328, %1324
  %1331 = fmul fast float %1329, %1324
  %1332 = fadd fast float %1330, 5.000000e-01
  %1333 = fadd fast float %1331, 5.000000e-01
  %1334 = fmul fast float %1295, %1118
  %1335 = fmul fast float %1296, %1119
  %1336 = fmul fast float %1297, %1120
  %1337 = fmul fast float %1332, 2.000000e+00
  %1338 = fadd fast float %1337, -1.000000e+00
  %1339 = fmul fast float %1333, 2.000000e+00
  %1340 = fadd fast float %1339, -1.000000e+00
  %1341 = fadd fast float %1338, %1340
  %1342 = fmul fast float %1341, 5.000000e-01
  %1343 = fsub fast float %1338, %1340
  %1344 = fmul fast float %1343, 5.000000e-01
  %1345 = call float @dx.op.unary.f32(i32 6, float %1342)  ; FAbs(value)
  %1346 = fsub fast float 1.000000e+00, %1345
  %1347 = call float @dx.op.unary.f32(i32 6, float %1344)  ; FAbs(value)
  %1348 = fsub fast float %1346, %1347
  %1349 = call float @dx.op.dot3.f32(i32 55, float %1342, float %1344, float %1348, float %1342, float %1344, float %1348)  ; Dot3(ax,ay,az,bx,by,bz)
  %1350 = call float @dx.op.unary.f32(i32 25, float %1349)  ; Rsqrt(value)
  %1351 = fmul fast float %1342, %1350
  %1352 = fmul fast float %1344, %1350
  %1353 = fmul fast float %1350, %1348
  %1354 = fmul fast float %1353, %1083
  %1355 = fmul fast float %1353, %1084
  %1356 = fmul fast float %1353, %1085
  %1357 = fmul fast float %1351, %1106
  %1358 = fmul fast float %1351, %1107
  %1359 = fmul fast float %1351, %1108
  %1360 = fadd fast float %1357, %1354
  %1361 = fadd fast float %1358, %1355
  %1362 = fadd fast float %1359, %1356
  %1363 = fmul fast float %1352, %1112
  %1364 = fmul fast float %1352, %1113
  %1365 = fmul fast float %1352, %1114
  %1366 = fadd fast float %1360, %1363
  %1367 = fadd fast float %1361, %1364
  %1368 = fadd fast float %1362, %1365
  %1369 = call float @dx.op.dot3.f32(i32 55, float %1366, float %1367, float %1368, float %1366, float %1367, float %1368)  ; Dot3(ax,ay,az,bx,by,bz)
  %1370 = call float @dx.op.unary.f32(i32 25, float %1369)  ; Rsqrt(value)
  %1371 = fmul fast float %1366, %1370
  %1372 = fmul fast float %1367, %1370
  %1373 = fmul fast float %1368, %1370
  %1374 = icmp ne i32 %1290, 0
  %1375 = select i1 %1374, float 1.000000e+00, float 0.000000e+00
  %1376 = fmul fast float %1280, %1375
  %1377 = and i32 %1133, 1
  %1378 = icmp eq i32 %1377, 0
  br i1 %1378, label %1379, label %1383

; <label>:1379                                    ; preds = %1288
  %1380 = fsub fast float %1371, %1065
  %1381 = fsub fast float %1372, %1066
  %1382 = fsub fast float %1373, %1067
  br label %1383

; <label>:1383                                    ; preds = %1379, %1288
  %1384 = phi float [ %1380, %1379 ], [ %1371, %1288 ]
  %1385 = phi float [ %1381, %1379 ], [ %1372, %1288 ]
  %1386 = phi float [ %1382, %1379 ], [ %1373, %1288 ]
  %1387 = fmul float %1386, %1376
  %1388 = fmul float %1385, %1376
  %1389 = fmul float %1384, %1376
  %1390 = fadd fast float %1389, %1065
  %1391 = fadd fast float %1388, %1066
  %1392 = fadd fast float %1387, %1067
  %1393 = icmp ne i32 %1289, 0
  %1394 = select i1 %1393, float 1.000000e+00, float 0.000000e+00
  %1395 = fmul fast float %1280, %1394
  %1396 = fsub fast float %1334, %1072
  %1397 = fsub fast float %1335, %1073
  %1398 = fsub fast float %1336, %1074
  %1399 = fmul fast float %1396, %1395
  %1400 = fmul fast float %1397, %1395
  %1401 = fmul fast float %1398, %1395
  %1402 = fadd fast float %1399, %1072
  %1403 = fadd fast float %1400, %1073
  %1404 = fadd fast float %1401, %1074
  %1405 = fsub fast float %1307, %1071
  %1406 = fmul fast float %1405, %1395
  %1407 = fadd fast float %1406, %1071
  %1408 = fmul fast float %1395, %1061
  %1409 = fsub fast float %1061, %1408
  %1410 = fmul fast float %1395, %1060
  %1411 = fsub fast float %1060, %1410
  %1412 = fadd fast float %1280, %1070
  %1413 = call float @dx.op.unary.f32(i32 7, float %1412)  ; Saturate(value)
  %1414 = fsub fast float %1327, %1069
  %1415 = fmul fast float %1414, %1376
  %1416 = fadd fast float %1415, %1069
  %1417 = fsub fast float %1313, %1068
  %1418 = fmul fast float %1417, %1376
  %1419 = fadd fast float %1418, %1068
  %1420 = call float @dx.op.dot3.f32(i32 55, float %1334, float %1335, float %1336, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 0
  %1423 = extractvalue %dx.types.CBufRet.f32 %1421, 1
  %1424 = fmul fast float %1423, %1420
  %1425 = fadd fast float %1424, %1422
  %1426 = call float @dx.op.unary.f32(i32 7, float %1425)  ; Saturate(value)
  %1427 = bitcast float %1121 to i32
  %1428 = and i32 %1427, 65535
  %1429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1428)  ; LegacyF16ToF32(value)
  %1430 = lshr i32 %1427, 16
  %1431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1430)  ; LegacyF16ToF32(value)
  %1432 = fcmp fast oge float %1429, 0.000000e+00
  %1433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1434 = extractvalue %dx.types.CBufRet.f32 %1433, 0
  %1435 = select i1 %1432, float %1429, float %1434
  %1436 = fadd fast float %1435, %1431
  %1437 = fsub fast float %1426, %1059
  %1438 = fmul fast float %1437, %1280
  %1439 = fadd fast float %1438, %1059
  %1440 = fmul fast float %1436, %1280
  %1441 = call float @dx.op.binary.f32(i32 35, float %1058, float %1440)  ; FMax(a,b)
  %1442 = call float @dx.op.binary.f32(i32 35, float %1057, float %1280)  ; FMax(a,b)
  %1443 = and i32 %1133, 16
  %1444 = icmp eq i32 %1443, 0
  br i1 %1444, label %1467, label %1445

; <label>:1445                                    ; preds = %1383
  %1446 = bitcast float %1127 to i32
  %1447 = add i32 %1124, 0
  %1448 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1447, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1449 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1448, %dx.types.Handle %1293, float %1221, float %1224, float undef, float undef, i32 0, i32 0, i32 undef, float %1226, float %1228, float undef, float %1230, float %1232, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1450 = extractvalue %dx.types.ResRet.f32 %1449, 0
  %1451 = extractvalue %dx.types.ResRet.f32 %1449, 1
  %1452 = extractvalue %dx.types.ResRet.f32 %1449, 2
  %1453 = and i32 %1446, 65535
  %1454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1453)  ; LegacyF16ToF32(value)
  %1455 = fmul fast float %1450, %1118
  %1456 = fmul fast float %1451, %1119
  %1457 = fmul fast float %1452, %1120
  %1458 = and i32 %1133, 16384
  %1459 = icmp ne i32 %1458, 0
  %1460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1461 = extractvalue %dx.types.CBufRet.f32 %1460, 0
  %1462 = select i1 %1459, float %1461, float 1.000000e+00
  %1463 = fmul fast float %1462, %1454
  %1464 = fmul fast float %1455, %1463
  %1465 = fmul fast float %1456, %1463
  %1466 = fmul fast float %1457, %1463
  br label %1467

; <label>:1467                                    ; preds = %1445, %1383
  %1468 = phi float [ %1464, %1445 ], [ 0.000000e+00, %1383 ]
  %1469 = phi float [ %1465, %1445 ], [ 0.000000e+00, %1383 ]
  %1470 = phi float [ %1466, %1445 ], [ 0.000000e+00, %1383 ]
  %1471 = fsub fast float %1468, %1062
  %1472 = fsub fast float %1469, %1063
  %1473 = fsub fast float %1470, %1064
  %1474 = fmul fast float %1471, %1280
  %1475 = fmul fast float %1472, %1280
  %1476 = fmul fast float %1473, %1280
  %1477 = fadd fast float %1474, %1062
  %1478 = fadd fast float %1475, %1063
  %1479 = fadd fast float %1476, %1064
  br label %1182

; <label>:1480                                    ; preds = %1182
  br label %1481

; <label>:1481                                    ; preds = %1480, %958
  %1482 = phi float [ 0.000000e+00, %958 ], [ %1183, %1480 ]
  %1483 = phi float [ %968, %958 ], [ %1184, %1480 ]
  %1484 = phi float [ %973, %958 ], [ %1185, %1480 ]
  %1485 = phi float [ %971, %958 ], [ %1186, %1480 ]
  %1486 = phi float [ 0.000000e+00, %958 ], [ %1187, %1480 ]
  %1487 = phi float [ 0.000000e+00, %958 ], [ %1188, %1480 ]
  %1488 = phi float [ %964, %958 ], [ %1189, %1480 ]
  %1489 = phi float [ %965, %958 ], [ %1190, %1480 ]
  %1490 = phi float [ %966, %958 ], [ %1191, %1480 ]
  %1491 = phi float [ %999, %958 ], [ %1192, %1480 ]
  %1492 = phi float [ %1000, %958 ], [ %1193, %1480 ]
  %1493 = phi float [ %1001, %958 ], [ %1194, %1480 ]
  %1494 = phi float [ %970, %958 ], [ %1195, %1480 ]
  %1495 = phi float [ %969, %958 ], [ %1196, %1480 ]
  %1496 = phi float [ 0.000000e+00, %958 ], [ %1197, %1480 ]
  %1497 = phi float [ %967, %958 ], [ %1198, %1480 ]
  %1498 = phi float [ %961, %958 ], [ %1199, %1480 ]
  %1499 = phi float [ %962, %958 ], [ %1200, %1480 ]
  %1500 = phi float [ %963, %958 ], [ %1201, %1480 ]
  %1501 = call float @dx.op.dot3.f32(i32 55, float %1491, float %1492, float %1493, float %1491, float %1492, float %1493)  ; Dot3(ax,ay,az,bx,by,bz)
  %1502 = call float @dx.op.unary.f32(i32 25, float %1501)  ; Rsqrt(value)
  %1503 = fmul fast float %1502, %1491
  %1504 = fmul fast float %1502, %1492
  %1505 = fmul fast float %1502, %1493
  %1506 = fadd fast float %1496, %968
  %1507 = call float @dx.op.unary.f32(i32 7, float %1506)  ; Saturate(value)
  %1508 = call float @dx.op.dot3.f32(i32 55, float %1503, float %1504, float %1505, float %1503, float %1504, float %1505)  ; Dot3(ax,ay,az,bx,by,bz)
  %1509 = call float @dx.op.unary.f32(i32 25, float %1508)  ; Rsqrt(value)
  %1510 = fmul fast float %1509, %1503
  %1511 = fmul fast float %1509, %1504
  %1512 = fmul fast float %1509, %1505
  %1513 = fadd fast float %1497, 0xBFB99999A0000000
  %1514 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  %1515 = fmul fast float %1514, 0x3FF1C71C80000000
  %1516 = call float @dx.op.binary.f32(i32 36, float %1497, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1517 = fsub fast float 1.000000e+00, %1515
  %1518 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1519 = fmul fast float %1518, %1498
  %1520 = fmul fast float %1518, %1499
  %1521 = fmul fast float %1518, %1500
  %1522 = call float @dx.op.unary.f32(i32 7, float %1519)  ; Saturate(value)
  %1523 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1524 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  %1525 = fmul fast float %1515, %1498
  %1526 = fmul fast float %1515, %1499
  %1527 = fmul fast float %1515, %1500
  %1528 = fadd fast float %1525, %1516
  %1529 = fadd fast float %1526, %1516
  %1530 = fadd fast float %1527, %1516
  %1531 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  %1532 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  %1533 = call float @dx.op.unary.f32(i32 7, float %1530)  ; Saturate(value)
  %1534 = call float @dx.op.unary.f32(i32 7, float %1495)  ; Saturate(value)
  %1535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1536 = extractvalue %dx.types.CBufRet.i32 %1535, 3
  %1537 = and i32 %1536, 8
  %1538 = icmp ne i32 %1537, 0
  %1539 = call float @dx.op.binary.f32(i32 35, float %1522, float %1498)  ; FMax(a,b)
  %1540 = call float @dx.op.binary.f32(i32 35, float %1523, float %1498)  ; FMax(a,b)
  %1541 = call float @dx.op.binary.f32(i32 35, float %1524, float %1498)  ; FMax(a,b)
  %1542 = call float @dx.op.dot3.f32(i32 55, float %1522, float %1523, float %1524, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1543 = select i1 %239, float %1498, float %1522
  %1544 = select i1 %239, float %1542, float %1523
  %1545 = select i1 %239, float 1.000000e+00, float %1524
  %1546 = select i1 %1538, float %1539, float %1543
  %1547 = select i1 %1538, float %1540, float %1544
  %1548 = select i1 %1538, float %1541, float %1545
  %1549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1550 = extractvalue %dx.types.CBufRet.f32 %1549, 0
  %1551 = extractvalue %dx.types.CBufRet.f32 %1549, 1
  %1552 = extractvalue %dx.types.CBufRet.f32 %1549, 2
  %1553 = fadd fast float %1550, %148
  %1554 = fadd fast float %1551, %149
  %1555 = fadd fast float %1552, %150
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1556, 0
  %1558 = extractvalue %dx.types.CBufRet.f32 %1556, 1
  %1559 = fsub fast float %1553, %1557
  %1560 = fsub fast float %1554, %1558
  %1561 = fmul fast float %1559, %1559
  %1562 = fmul fast float %1560, %1560
  %1563 = fadd fast float %1561, %1562
  %1564 = call float @dx.op.unary.f32(i32 24, float %1563)  ; Sqrt(value)
  %1565 = extractvalue %dx.types.CBufRet.f32 %1556, 2
  %1566 = fcmp fast olt float %1564, %1565
  br i1 %1566, label %1567, label %1634

; <label>:1567                                    ; preds = %1481
  %1568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1569 = extractvalue %dx.types.CBufRet.f32 %1568, 0
  %1570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1571 = extractvalue %dx.types.CBufRet.f32 %1570, 0
  %1572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1573 = extractvalue %dx.types.CBufRet.f32 %1572, 0
  %1574 = extractvalue %dx.types.CBufRet.f32 %1568, 1
  %1575 = extractvalue %dx.types.CBufRet.f32 %1570, 1
  %1576 = extractvalue %dx.types.CBufRet.f32 %1572, 1
  %1577 = extractvalue %dx.types.CBufRet.f32 %1568, 3
  %1578 = extractvalue %dx.types.CBufRet.f32 %1570, 3
  %1579 = extractvalue %dx.types.CBufRet.f32 %1572, 3
  %1580 = fadd fast float %1577, %1553
  %1581 = fadd fast float %1578, %1554
  %1582 = fadd fast float %1579, %1555
  %1583 = fmul fast float %1580, %1569
  %1584 = call float @dx.op.tertiary.f32(i32 46, float %1581, float %1571, float %1583)  ; FMad(a,b,c)
  %1585 = call float @dx.op.tertiary.f32(i32 46, float %1582, float %1573, float %1584)  ; FMad(a,b,c)
  %1586 = fmul fast float %1580, %1574
  %1587 = call float @dx.op.tertiary.f32(i32 46, float %1581, float %1575, float %1586)  ; FMad(a,b,c)
  %1588 = call float @dx.op.tertiary.f32(i32 46, float %1582, float %1576, float %1587)  ; FMad(a,b,c)
  %1589 = fsub fast float %1585, %1577
  %1590 = fsub fast float %1588, %1578
  %1591 = fsub fast float %1589, %1557
  %1592 = fadd fast float %1591, %1565
  %1593 = fsub fast float %1590, %1558
  %1594 = fadd fast float %1593, %1565
  %1595 = extractvalue %dx.types.CBufRet.f32 %1556, 3
  %1596 = fmul fast float %1592, %1595
  %1597 = fmul fast float %1594, %1595
  %1598 = call float @dx.op.unary.f32(i32 7, float %1596)  ; Saturate(value)
  %1599 = call float @dx.op.unary.f32(i32 7, float %1597)  ; Saturate(value)
  %1600 = fsub fast float 1.000000e+00, %1598
  %1601 = fsub fast float 1.000000e+00, %1599
  %1602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %58, float %1600, float %1601, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1603 = extractvalue %dx.types.ResRet.f32 %1602, 0
  %1604 = fcmp fast ugt float %1603, 0.000000e+00
  br i1 %1604, label %1605, label %1908

; <label>:1605                                    ; preds = %1567
  %1606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1607 = extractvalue %dx.types.CBufRet.f32 %1606, 2
  %1608 = fmul fast float %1607, %1603
  %1609 = extractvalue %dx.types.CBufRet.f32 %1606, 3
  %1610 = fadd fast float %1609, %1608
  %1611 = extractvalue %dx.types.CBufRet.f32 %1572, 2
  %1612 = fadd fast float %1610, %1579
  %1613 = fmul fast float %1585, %1573
  %1614 = call float @dx.op.tertiary.f32(i32 46, float %1588, float %1576, float %1613)  ; FMad(a,b,c)
  %1615 = call float @dx.op.tertiary.f32(i32 46, float %1612, float %1611, float %1614)  ; FMad(a,b,c)
  %1616 = fsub fast float %1615, %1579
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 2
  %1619 = fsub fast float %1616, %1618
  %1620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %58, float %1600, float %1601, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1621 = extractvalue %dx.types.ResRet.f32 %1620, 0
  %1622 = extractvalue %dx.types.ResRet.f32 %1620, 1
  %1623 = extractvalue %dx.types.ResRet.f32 %1620, 2
  %1624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %58, float %1600, float %1601, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1625 = extractvalue %dx.types.ResRet.f32 %1624, 0
  %1626 = extractvalue %dx.types.ResRet.f32 %1624, 1
  %1627 = extractvalue %dx.types.ResRet.f32 %1624, 2
  %1628 = fadd fast float %1625, %1621
  %1629 = fmul fast float %1628, 0x3F847AE140000000
  %1630 = fadd fast float %1626, %1622
  %1631 = fmul fast float %1630, 0x3F847AE140000000
  %1632 = fadd fast float %1627, %1623
  %1633 = fmul fast float %1632, 0x3F847AE140000000
  br label %1908

; <label>:1634                                    ; preds = %1481
  %1635 = and i32 %215, 1
  %1636 = icmp eq i32 %1635, 0
  br i1 %1636, label %1908, label %1637

; <label>:1637                                    ; preds = %1634
  %1638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1639 = extractvalue %dx.types.CBufRet.f32 %1638, 0
  %1640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1641 = extractvalue %dx.types.CBufRet.f32 %1640, 0
  %1642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1643 = extractvalue %dx.types.CBufRet.f32 %1642, 0
  %1644 = extractvalue %dx.types.CBufRet.f32 %1638, 1
  %1645 = extractvalue %dx.types.CBufRet.f32 %1640, 1
  %1646 = extractvalue %dx.types.CBufRet.f32 %1642, 1
  %1647 = extractvalue %dx.types.CBufRet.f32 %1638, 3
  %1648 = extractvalue %dx.types.CBufRet.f32 %1640, 3
  %1649 = extractvalue %dx.types.CBufRet.f32 %1642, 3
  %1650 = fadd fast float %1647, %1553
  %1651 = fadd fast float %1648, %1554
  %1652 = fadd fast float %1649, %1555
  %1653 = fmul fast float %1650, %1639
  %1654 = call float @dx.op.tertiary.f32(i32 46, float %1651, float %1641, float %1653)  ; FMad(a,b,c)
  %1655 = call float @dx.op.tertiary.f32(i32 46, float %1652, float %1643, float %1654)  ; FMad(a,b,c)
  %1656 = fmul fast float %1650, %1644
  %1657 = call float @dx.op.tertiary.f32(i32 46, float %1651, float %1645, float %1656)  ; FMad(a,b,c)
  %1658 = call float @dx.op.tertiary.f32(i32 46, float %1652, float %1646, float %1657)  ; FMad(a,b,c)
  %1659 = fsub fast float %1655, %1647
  %1660 = fsub fast float %1658, %1648
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 0
  %1663 = extractvalue %dx.types.CBufRet.f32 %1661, 1
  %1664 = extractvalue %dx.types.CBufRet.f32 %1661, 2
  %1665 = extractvalue %dx.types.CBufRet.f32 %1661, 3
  %1666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1667 = extractvalue %dx.types.CBufRet.f32 %1666, 3
  %1668 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1669 = extractvalue %dx.types.CBufRet.i32 %1668, 0
  %1670 = extractvalue %dx.types.CBufRet.i32 %1668, 1
  %1671 = udiv i32 %1670, %1669
  %1672 = fsub fast float %1659, %1662
  %1673 = fsub fast float %1660, %1663
  %1674 = call float @dx.op.binary.f32(i32 35, float %1672, float 0.000000e+00)  ; FMax(a,b)
  %1675 = call float @dx.op.binary.f32(i32 35, float %1673, float 0.000000e+00)  ; FMax(a,b)
  %1676 = call float @dx.op.binary.f32(i32 36, float %1674, float %1664)  ; FMin(a,b)
  %1677 = call float @dx.op.binary.f32(i32 36, float %1675, float %1665)  ; FMin(a,b)
  %1678 = add i32 %1669, -1
  %1679 = add i32 %1671, -1
  %1680 = fmul fast float %1676, %1667
  %1681 = fmul fast float %1677, %1667
  %1682 = fptoui float %1680 to i32
  %1683 = fptoui float %1681 to i32
  %1684 = call i32 @dx.op.binary.i32(i32 40, i32 %1682, i32 %1678)  ; UMin(a,b)
  %1685 = call i32 @dx.op.binary.i32(i32 40, i32 %1683, i32 %1679)  ; UMin(a,b)
  %1686 = mul i32 %1685, %1669
  %1687 = add i32 %1686, %1684
  %1688 = shl i32 %1687, 2
  %1689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1688, i32 undef)  ; BufferLoad(srv,index,wot)
  %1690 = extractvalue %dx.types.ResRet.i32 %1689, 0
  %1691 = icmp eq i32 %1690, -1
  br i1 %1691, label %1908, label %1692

; <label>:1692                                    ; preds = %1637
  %1693 = mul i32 %1690, 148
  %1694 = add i32 %1693, 4
  %1695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1694, i32 undef)  ; BufferLoad(srv,index,wot)
  %1696 = extractvalue %dx.types.ResRet.f32 %1695, 0
  %1697 = add i32 %1693, 8
  %1698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1697, i32 undef)  ; BufferLoad(srv,index,wot)
  %1699 = extractvalue %dx.types.ResRet.f32 %1698, 0
  %1700 = add i32 %1693, 36
  %1701 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1702 = extractvalue %dx.types.ResRet.f32 %1701, 0
  %1703 = add i32 %1693, 60
  %1704 = add i32 %1693, 92
  %1705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1704, i32 undef)  ; BufferLoad(srv,index,wot)
  %1706 = extractvalue %dx.types.ResRet.i32 %1705, 0
  %1707 = add i32 %1693, 116
  %1708 = fsub fast float %1659, %1696
  %1709 = fsub fast float %1660, %1699
  %1710 = fmul fast float %1667, %1708
  %1711 = fmul fast float %1667, %1709
  %1712 = call float @dx.op.unary.f32(i32 7, float %1710)  ; Saturate(value)
  %1713 = call float @dx.op.unary.f32(i32 7, float %1711)  ; Saturate(value)
  %1714 = fsub fast float 1.000000e+00, %1713
  %1715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1716 = extractvalue %dx.types.CBufRet.f32 %1715, 2
  %1717 = call float @dx.op.unary.f32(i32 83, float %1712)  ; DerivCoarseX(value)
  %1718 = call float @dx.op.unary.f32(i32 83, float %1714)  ; DerivCoarseX(value)
  %1719 = call float @dx.op.unary.f32(i32 84, float %1712)  ; DerivCoarseY(value)
  %1720 = call float @dx.op.unary.f32(i32 84, float %1714)  ; DerivCoarseY(value)
  %1721 = fmul fast float %1717, %1716
  %1722 = fmul fast float %1718, %1716
  %1723 = fmul fast float %1719, %1716
  %1724 = fmul fast float %1720, %1716
  %1725 = call float @dx.op.dot2.f32(i32 54, float %1723, float %1724, float %1723, float %1724)  ; Dot2(ax,ay,bx,by)
  %1726 = call float @dx.op.dot2.f32(i32 54, float %1721, float %1722, float %1721, float %1722)  ; Dot2(ax,ay,bx,by)
  %1727 = call float @dx.op.binary.f32(i32 35, float %1726, float %1725)  ; FMax(a,b)
  %1728 = call float @dx.op.unary.f32(i32 23, float %1727)  ; Log(value)
  %1729 = fmul fast float %1728, 5.000000e-01
  %1730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1731 = extractvalue %dx.types.CBufRet.f32 %1730, 1
  %1732 = fadd fast float %1731, %1729
  %1733 = call float @dx.op.binary.f32(i32 35, float %1732, float 0.000000e+00)  ; FMax(a,b)
  %1734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1735 = extractvalue %dx.types.CBufRet.f32 %1734, 3
  %1736 = fadd fast float %1735, %1733
  %1737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1738 = extractvalue %dx.types.CBufRet.f32 %1737, 3
  %1739 = fadd fast float %1736, %1738
  %1740 = add i32 %1706, 0
  %1741 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1740, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1742 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1741, i32 0)  ; GetDimensions(handle,mipLevel)
  %1743 = extractvalue %dx.types.Dimensions %1742, 0
  %1744 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1743)  ; FirstbitLo(value)
  %1745 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1746 = extractvalue %dx.types.CBufRet.i32 %1745, 1
  %1747 = sub nsw i32 %1746, %1744
  %1748 = sitofp i32 %1747 to float
  %1749 = fsub fast float %1739, %1748
  %1750 = call float @dx.op.binary.f32(i32 35, float %1749, float 0.000000e+00)  ; FMax(a,b)
  %1751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1741, %dx.types.Handle %56, float %1712, float %1714, float %1702, float undef, i32 0, i32 0, i32 undef, float %1750)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1752 = extractvalue %dx.types.ResRet.f32 %1751, 0
  %1753 = fcmp ule float %1752, 0x3FE0101020000000
  %1754 = extractvalue %dx.types.CBufRet.i32 %1745, 0
  %1755 = and i32 %1754, 128
  %1756 = icmp ne i32 %1755, 0
  %1757 = and i1 %1753, %1756
  br i1 %1757, label %1908, label %1758

; <label>:1758                                    ; preds = %1692
  %1759 = add i32 %1693, 20
  %1760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.f32 %1760, 0
  %1762 = add i32 %1693, 24
  %1763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.f32 %1763, 0
  %1765 = add i32 %1693, 40
  %1766 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.f32 %1766, 0
  %1768 = add i32 %1693, 96
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1768, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.f32 %1771, 2
  %1773 = fmul fast float %1772, %1712
  %1774 = fmul fast float %1772, %1714
  %1775 = extractvalue %dx.types.CBufRet.f32 %1771, 3
  %1776 = fadd fast float %1773, %1775
  %1777 = fadd fast float %1774, %1775
  %1778 = add i32 %1770, 0
  %1779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1778, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1780 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1779, i32 0)  ; GetDimensions(handle,mipLevel)
  %1781 = extractvalue %dx.types.Dimensions %1780, 0
  %1782 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1781)  ; FirstbitLo(value)
  %1783 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1784 = extractvalue %dx.types.CBufRet.i32 %1783, 1
  %1785 = sub nsw i32 %1784, %1782
  %1786 = sitofp i32 %1785 to float
  %1787 = fsub fast float %1736, %1786
  %1788 = call float @dx.op.binary.f32(i32 35, float %1787, float 0.000000e+00)  ; FMax(a,b)
  %1789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1779, %dx.types.Handle %56, float %1776, float %1777, float %1767, float undef, i32 0, i32 0, i32 undef, float %1788)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1790 = extractvalue %dx.types.ResRet.f32 %1789, 0
  %1791 = fmul fast float %1790, %1761
  %1792 = fadd fast float %1791, %1764
  %1793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1794 = extractvalue %dx.types.CBufRet.f32 %1793, 0
  %1795 = extractvalue %dx.types.CBufRet.f32 %1793, 1
  %1796 = extractvalue %dx.types.CBufRet.f32 %1793, 2
  %1797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.f32 %1797, 3
  %1799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1800 = extractvalue %dx.types.CBufRet.f32 %1799, 3
  %1801 = extractvalue %dx.types.CBufRet.f32 %1793, 3
  %1802 = fadd fast float %1798, %1659
  %1803 = fadd fast float %1800, %1660
  %1804 = fadd fast float %1792, %1801
  %1805 = fmul fast float %1802, %1794
  %1806 = call float @dx.op.tertiary.f32(i32 46, float %1803, float %1795, float %1805)  ; FMad(a,b,c)
  %1807 = call float @dx.op.tertiary.f32(i32 46, float %1804, float %1796, float %1806)  ; FMad(a,b,c)
  %1808 = fsub fast float %1807, %1801
  %1809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1810 = extractvalue %dx.types.CBufRet.f32 %1809, 2
  %1811 = fsub fast float %1808, %1810
  %1812 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1813 = extractvalue %dx.types.CBufRet.i32 %1812, 0
  %1814 = call i32 @dx.op.binary.i32(i32 40, i32 %1690, i32 %1813)  ; UMin(a,b)
  %1815 = mul i32 %1814, 36
  %1816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.i32 %1816, 0
  %1818 = add i32 %1815, 4
  %1819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1820 = extractvalue %dx.types.CBufRet.f32 %1819, 0
  %1821 = fmul fast float %1820, %1712
  %1822 = fmul fast float %1820, %1714
  %1823 = extractvalue %dx.types.CBufRet.f32 %1819, 1
  %1824 = fadd fast float %1821, %1823
  %1825 = fadd fast float %1822, %1823
  %1826 = icmp eq i32 %1817, 0
  br i1 %1826, label %1895, label %1827

; <label>:1827                                    ; preds = %1758
  br label %1828

; <label>:1828                                    ; preds = %1885, %1827
  %1829 = phi float [ %1886, %1885 ], [ 0.000000e+00, %1827 ]
  %1830 = phi float [ %1887, %1885 ], [ 0.000000e+00, %1827 ]
  %1831 = phi float [ %1888, %1885 ], [ 0.000000e+00, %1827 ]
  %1832 = phi float [ %1889, %1885 ], [ 0.000000e+00, %1827 ]
  %1833 = phi float [ %1890, %1885 ], [ 0.000000e+00, %1827 ]
  %1834 = phi float [ %1891, %1885 ], [ 0.000000e+00, %1827 ]
  %1835 = phi i32 [ %1892, %1885 ], [ 0, %1827 ]
  %1836 = shl i32 %1835, 2
  %1837 = add i32 %1703, %1836
  %1838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.f32 %1838, 0
  %1840 = add i32 %1707, %1836
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = add i32 %1842, 0
  %1844 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1843, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1845 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1844, i32 0)  ; GetDimensions(handle,mipLevel)
  %1846 = extractvalue %dx.types.Dimensions %1845, 0
  %1847 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1846)  ; FirstbitLo(value)
  %1848 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1849 = extractvalue %dx.types.CBufRet.i32 %1848, 1
  %1850 = sub nsw i32 %1849, %1847
  %1851 = sitofp i32 %1850 to float
  %1852 = fsub fast float %1736, %1851
  %1853 = call float @dx.op.binary.f32(i32 35, float %1852, float 0.000000e+00)  ; FMax(a,b)
  %1854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1844, %dx.types.Handle %56, float %1824, float %1825, float %1839, float undef, i32 0, i32 0, i32 undef, float %1853)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1855 = extractvalue %dx.types.ResRet.f32 %1854, 0
  %1856 = fcmp fast ogt float %1855, 0.000000e+00
  br i1 %1856, label %1857, label %1885

; <label>:1857                                    ; preds = %1828
  %1858 = add i32 %1818, %1836
  %1859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.i32 %1859, 0
  %1861 = and i32 %1860, 32767
  %1862 = mul nuw nsw i32 %1861, 928
  %1863 = add nuw nsw i32 %1862, 48
  %1864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1863, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.f32 %1864, 0
  %1866 = extractvalue %dx.types.ResRet.f32 %1864, 1
  %1867 = extractvalue %dx.types.ResRet.f32 %1864, 2
  %1868 = add nuw nsw i32 %1862, 60
  %1869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.f32 %1869, 0
  %1871 = extractvalue %dx.types.ResRet.f32 %1869, 1
  %1872 = extractvalue %dx.types.ResRet.f32 %1869, 2
  %1873 = fmul fast float %1865, %1855
  %1874 = fmul fast float %1866, %1855
  %1875 = fmul fast float %1867, %1855
  %1876 = fadd fast float %1873, %1829
  %1877 = fadd fast float %1874, %1830
  %1878 = fadd fast float %1875, %1831
  %1879 = fmul fast float %1870, %1855
  %1880 = fmul fast float %1871, %1855
  %1881 = fmul fast float %1872, %1855
  %1882 = fadd fast float %1879, %1832
  %1883 = fadd fast float %1880, %1833
  %1884 = fadd fast float %1881, %1834
  br label %1885

; <label>:1885                                    ; preds = %1857, %1828
  %1886 = phi float [ %1876, %1857 ], [ %1829, %1828 ]
  %1887 = phi float [ %1877, %1857 ], [ %1830, %1828 ]
  %1888 = phi float [ %1878, %1857 ], [ %1831, %1828 ]
  %1889 = phi float [ %1882, %1857 ], [ %1832, %1828 ]
  %1890 = phi float [ %1883, %1857 ], [ %1833, %1828 ]
  %1891 = phi float [ %1884, %1857 ], [ %1834, %1828 ]
  %1892 = add nuw i32 %1835, 1
  %1893 = icmp eq i32 %1892, %1817
  br i1 %1893, label %1894, label %1828

; <label>:1894                                    ; preds = %1885
  br label %1895

; <label>:1895                                    ; preds = %1894, %1758
  %1896 = phi float [ 0.000000e+00, %1758 ], [ %1886, %1894 ]
  %1897 = phi float [ 0.000000e+00, %1758 ], [ %1887, %1894 ]
  %1898 = phi float [ 0.000000e+00, %1758 ], [ %1888, %1894 ]
  %1899 = phi float [ 0.000000e+00, %1758 ], [ %1889, %1894 ]
  %1900 = phi float [ 0.000000e+00, %1758 ], [ %1890, %1894 ]
  %1901 = phi float [ 0.000000e+00, %1758 ], [ %1891, %1894 ]
  %1902 = fadd fast float %1899, %1896
  %1903 = fmul fast float %1902, 0x3F847AE140000000
  %1904 = fadd fast float %1900, %1897
  %1905 = fmul fast float %1904, 0x3F847AE140000000
  %1906 = fadd fast float %1901, %1898
  %1907 = fmul fast float %1906, 0x3F847AE140000000
  br label %1908

; <label>:1908                                    ; preds = %1895, %1692, %1637, %1634, %1605, %1567
  %1909 = phi float [ %1619, %1605 ], [ -1.310720e+05, %1567 ], [ %1811, %1895 ], [ -1.310720e+05, %1637 ], [ -1.310720e+05, %1692 ], [ -1.310720e+05, %1634 ]
  %1910 = phi float [ %1629, %1605 ], [ 0.000000e+00, %1567 ], [ %1903, %1895 ], [ 0.000000e+00, %1637 ], [ 0.000000e+00, %1692 ], [ 0.000000e+00, %1634 ]
  %1911 = phi float [ %1631, %1605 ], [ 0.000000e+00, %1567 ], [ %1905, %1895 ], [ 0.000000e+00, %1637 ], [ 0.000000e+00, %1692 ], [ 0.000000e+00, %1634 ]
  %1912 = phi float [ %1633, %1605 ], [ 0.000000e+00, %1567 ], [ %1907, %1895 ], [ 0.000000e+00, %1637 ], [ 0.000000e+00, %1692 ], [ 0.000000e+00, %1634 ]
  %1913 = phi i1 [ true, %1605 ], [ false, %1567 ], [ true, %1895 ], [ false, %1637 ], [ false, %1692 ], [ false, %1634 ]
  %1914 = and i32 %215, 3
  %1915 = icmp eq i32 %1914, 1
  %1916 = select i1 %1915, float 1.000000e+00, float 0.000000e+00
  %1917 = fsub fast float %1909, %150
  %1918 = call float @dx.op.unary.f32(i32 7, float %1917)  ; Saturate(value)
  %1919 = select i1 %1913, float %1918, float 1.000000e+00
  %1920 = fmul fast float %1919, %1916
  %1921 = icmp eq i32 %1914, 3
  %1922 = select i1 %1921, float 1.000000e+00, float %1920
  %1923 = call float @dx.op.binary.f32(i32 35, float %1482, float %1922)  ; FMax(a,b)
  %1924 = call float @dx.op.unary.f32(i32 7, float %1923)  ; Saturate(value)
  %1925 = fcmp fast une float %1924, 0.000000e+00
  %1926 = call float @dx.op.dot3.f32(i32 55, float %148, float %149, float %150, float %148, float %149, float %150)  ; Dot3(ax,ay,az,bx,by,bz)
  %1927 = call float @dx.op.unary.f32(i32 25, float %1926)  ; Rsqrt(value)
  br i1 %1925, label %1935, label %1928

; <label>:1928                                    ; preds = %1908
  %1929 = fmul fast float %1927, %148
  %1930 = fmul fast float %1927, %149
  %1931 = fmul fast float %1927, %150
  %1932 = fsub fast float -0.000000e+00, %1929
  %1933 = fsub fast float -0.000000e+00, %1930
  %1934 = fsub fast float -0.000000e+00, %1931
  br label %2103

; <label>:1935                                    ; preds = %1908
  %1936 = fmul fast float %148, %1927
  %1937 = fsub fast float -0.000000e+00, %1936
  %1938 = fmul fast float %149, %1927
  %1939 = fsub fast float -0.000000e+00, %1938
  %1940 = fmul fast float %150, %1927
  %1941 = fsub fast float -0.000000e+00, %1940
  %1942 = call float @dx.op.dot3.f32(i32 55, float %1937, float %1939, float %1941, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %1943 = fmul fast float %1924, 2.500000e+00
  %1944 = call float @dx.op.unary.f32(i32 7, float %1943)  ; Saturate(value)
  %1945 = fmul fast float %1924, 0x4013FFFFE0000000
  %1946 = fadd fast float %1945, 0xBFFFFFFFE0000000
  %1947 = call float @dx.op.unary.f32(i32 7, float %1946)  ; Saturate(value)
  %1948 = fmul fast float %1924, 0x4004000020000000
  %1949 = fadd fast float %1948, 0xBFF8000040000000
  %1950 = call float @dx.op.unary.f32(i32 7, float %1949)  ; Saturate(value)
  %1951 = call float @dx.op.unary.f32(i32 7, float %1944)  ; Saturate(value)
  %1952 = fmul fast float %1513, 1.000000e+01
  %1953 = call float @dx.op.unary.f32(i32 7, float %1952)  ; Saturate(value)
  %1954 = fmul fast float %1953, 2.000000e+00
  %1955 = fsub fast float 3.000000e+00, %1954
  %1956 = fmul fast float %1953, %1953
  %1957 = fmul fast float %1956, %1955
  %1958 = fsub fast float 1.000000e+00, %1957
  %1959 = fsub fast float 0x3FE3333340000000, %1534
  %1960 = fmul fast float %1959, 0x400AAAAAA0000000
  %1961 = call float @dx.op.unary.f32(i32 7, float %1960)  ; Saturate(value)
  %1962 = fmul fast float %1958, %1961
  %1963 = fmul fast float %1546, 0x3FEA2B8620000000
  %1964 = fmul fast float %1547, 0x3FEA2B8620000000
  %1965 = fmul fast float %1548, 0x3FEA2B8620000000
  %1966 = fadd fast float %1963, 0x3FC81DFBA0000000
  %1967 = fmul fast float %1966, %1546
  %1968 = fadd fast float %1967, 0x3F910E6020000000
  %1969 = fadd fast float %1964, 0x3FC81DFBA0000000
  %1970 = fmul fast float %1969, %1547
  %1971 = fadd fast float %1970, 0x3F910E6020000000
  %1972 = fadd fast float %1965, 0x3FC81DFBA0000000
  %1973 = fmul fast float %1972, %1548
  %1974 = fadd fast float %1973, 0x3F910E6020000000
  %1975 = call float @dx.op.unary.f32(i32 7, float %1968)  ; Saturate(value)
  %1976 = call float @dx.op.unary.f32(i32 7, float %1971)  ; Saturate(value)
  %1977 = call float @dx.op.unary.f32(i32 7, float %1974)  ; Saturate(value)
  %1978 = fsub fast float %1975, %1546
  %1979 = fsub fast float %1976, %1547
  %1980 = fsub fast float %1977, %1548
  %1981 = fmul fast float %1978, %1951
  %1982 = fmul fast float %1981, %1962
  %1983 = fmul fast float %1979, %1951
  %1984 = fmul fast float %1983, %1962
  %1985 = fmul fast float %1980, %1951
  %1986 = fmul fast float %1985, %1962
  %1987 = fadd fast float %1982, %1546
  %1988 = fadd fast float %1984, %1547
  %1989 = fadd fast float %1986, %1548
  %1990 = fmul fast float %1494, %1494
  %1991 = fmul fast float %1990, %1990
  %1992 = fadd fast float %1947, 1.000000e+00
  %1993 = fsub fast float %1992, %1962
  %1994 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1995 = call float @dx.op.dot3.f32(i32 55, float %96, float %97, float %98, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1996 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  %1997 = fsub fast float 1.000000e+00, %1991
  %1998 = call float @dx.op.binary.f32(i32 36, float %1994, float %1997)  ; FMin(a,b)
  %1999 = call float @dx.op.unary.f32(i32 7, float %1950)  ; Saturate(value)
  %2000 = call float @dx.op.binary.f32(i32 35, float %1998, float %1999)  ; FMax(a,b)
  %2001 = fadd fast float %1996, 0xBFE4CCCCC0000000
  %2002 = fmul fast float %2001, 0x4006DB6DA0000000
  %2003 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  %2004 = fmul fast float %2003, 2.000000e+00
  %2005 = fsub fast float 3.000000e+00, %2004
  %2006 = bitcast float %1531 to i32
  %2007 = ashr i32 %2006, 1
  %2008 = add nsw i32 %2007, 532487669
  %2009 = bitcast i32 %2008 to float
  %2010 = fsub fast float 1.000000e+00, %2009
  %2011 = bitcast float %2010 to i32
  %2012 = sub nsw i32 2129859010, %2011
  %2013 = bitcast i32 %2012 to float
  %2014 = fmul fast float %2013, 2.000000e+00
  %2015 = bitcast float %1532 to i32
  %2016 = ashr i32 %2015, 1
  %2017 = add nsw i32 %2016, 532487669
  %2018 = bitcast i32 %2017 to float
  %2019 = fsub fast float 1.000000e+00, %2018
  %2020 = bitcast float %2019 to i32
  %2021 = sub nsw i32 2129859010, %2020
  %2022 = bitcast i32 %2021 to float
  %2023 = fmul fast float %2022, 2.000000e+00
  %2024 = bitcast float %1533 to i32
  %2025 = ashr i32 %2024, 1
  %2026 = add nsw i32 %2025, 532487669
  %2027 = bitcast i32 %2026 to float
  %2028 = fsub fast float 1.000000e+00, %2027
  %2029 = bitcast float %2028 to i32
  %2030 = sub nsw i32 2129859010, %2029
  %2031 = bitcast i32 %2030 to float
  %2032 = fmul fast float %2031, 2.000000e+00
  %2033 = fsub fast float 0x4002A9FBE0000000, %2014
  %2034 = fadd fast float %2014, 0x3FD54FDF00000000
  %2035 = bitcast float %2034 to i32
  %2036 = sub nsw i32 2129859010, %2035
  %2037 = bitcast i32 %2036 to float
  %2038 = fmul fast float %2037, %2033
  %2039 = fmul fast float %2038, %2038
  %2040 = fsub fast float 0x4002A9FBE0000000, %2023
  %2041 = fadd fast float %2023, 0x3FD54FDF00000000
  %2042 = bitcast float %2041 to i32
  %2043 = sub nsw i32 2129859010, %2042
  %2044 = bitcast i32 %2043 to float
  %2045 = fmul fast float %2044, %2040
  %2046 = fmul fast float %2045, %2045
  %2047 = fsub fast float 0x4002A9FBE0000000, %2032
  %2048 = fadd fast float %2032, 0x3FD54FDF00000000
  %2049 = bitcast float %2048 to i32
  %2050 = sub nsw i32 2129859010, %2049
  %2051 = bitcast i32 %2050 to float
  %2052 = fmul fast float %2051, %2047
  %2053 = fmul fast float %2052, %2052
  %2054 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2039)  ; FMax(a,b)
  %2055 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2046)  ; FMax(a,b)
  %2056 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2053)  ; FMax(a,b)
  %2057 = fsub fast float 1.000000e+00, %1942
  %2058 = fadd fast float %2057, %1958
  %2059 = call float @dx.op.unary.f32(i32 7, float %2058)  ; Saturate(value)
  %2060 = fsub fast float 1.000000e+00, %1922
  %2061 = fmul fast float %2000, %2060
  %2062 = fmul fast float %2003, %2003
  %2063 = fmul fast float %2062, %2061
  %2064 = fmul fast float %2063, %2005
  %2065 = fmul fast float %2060, 0xBFE99999A0000000
  %2066 = fmul fast float %2065, %1951
  %2067 = fmul fast float %2066, %1962
  %2068 = fadd fast float %2067, 1.000000e+00
  %2069 = fadd fast float %1534, -1.000000e+00
  %2070 = fmul fast float %2068, %2069
  %2071 = fadd fast float %2070, 1.000000e+00
  %2072 = fsub fast float %2054, %1531
  %2073 = fsub fast float %2055, %1532
  %2074 = fsub fast float %2056, %1533
  %2075 = fmul fast float %2064, %2072
  %2076 = fmul fast float %2064, %2073
  %2077 = fmul fast float %2064, %2074
  %2078 = fadd fast float %2075, %1531
  %2079 = fadd fast float %2076, %1532
  %2080 = fadd fast float %2077, %1533
  %2081 = fsub fast float %96, %1510
  %2082 = fsub fast float %97, %1511
  %2083 = fsub fast float %98, %1512
  %2084 = fmul fast float %2064, %2081
  %2085 = fmul fast float %2064, %2082
  %2086 = fmul fast float %2064, %2083
  %2087 = fadd fast float %2084, %1510
  %2088 = fadd fast float %2085, %1511
  %2089 = fadd fast float %2086, %1512
  %2090 = fmul fast float %2064, %2059
  %2091 = call float @dx.op.unary.f32(i32 7, float %2071)  ; Saturate(value)
  %2092 = fsub fast float 1.000000e+00, %2091
  %2093 = fmul fast float %2090, %2092
  %2094 = fadd fast float %2093, %2091
  %2095 = fsub fast float 1.000000e+00, %1494
  %2096 = fmul fast float %2064, %2095
  %2097 = fadd fast float %2096, %1494
  %2098 = call float @dx.op.dot3.f32(i32 55, float %2087, float %2088, float %2089, float %2087, float %2088, float %2089)  ; Dot3(ax,ay,az,bx,by,bz)
  %2099 = call float @dx.op.unary.f32(i32 25, float %2098)  ; Rsqrt(value)
  %2100 = fmul fast float %2087, %2099
  %2101 = fmul fast float %2088, %2099
  %2102 = fmul fast float %2089, %2099
  br label %2103

; <label>:2103                                    ; preds = %1935, %1928
  %2104 = phi float [ %1934, %1928 ], [ %1941, %1935 ]
  %2105 = phi float [ %1933, %1928 ], [ %1939, %1935 ]
  %2106 = phi float [ %1932, %1928 ], [ %1937, %1935 ]
  %2107 = phi float [ %1931, %1928 ], [ %1940, %1935 ]
  %2108 = phi float [ %1930, %1928 ], [ %1938, %1935 ]
  %2109 = phi float [ %1929, %1928 ], [ %1936, %1935 ]
  %2110 = phi float [ %1531, %1928 ], [ %2078, %1935 ]
  %2111 = phi float [ %1532, %1928 ], [ %2079, %1935 ]
  %2112 = phi float [ %1533, %1928 ], [ %2080, %1935 ]
  %2113 = phi float [ %1546, %1928 ], [ %1987, %1935 ]
  %2114 = phi float [ %1547, %1928 ], [ %1988, %1935 ]
  %2115 = phi float [ %1548, %1928 ], [ %1989, %1935 ]
  %2116 = phi float [ %1510, %1928 ], [ %2100, %1935 ]
  %2117 = phi float [ %1511, %1928 ], [ %2101, %1935 ]
  %2118 = phi float [ %1512, %1928 ], [ %2102, %1935 ]
  %2119 = phi float [ %1534, %1928 ], [ %2094, %1935 ]
  %2120 = phi float [ %1494, %1928 ], [ %2097, %1935 ]
  %2121 = fsub fast float -0.000000e+00, %150
  %2122 = select i1 %239, float 0.000000e+00, float %2112
  %2123 = call float @dx.op.dot3.f32(i32 55, float %2116, float %2117, float %2118, float %2106, float %2105, float %2104)  ; Dot3(ax,ay,az,bx,by,bz)
  %2124 = call float @dx.op.unary.f32(i32 7, float %2123)  ; Saturate(value)
  %2125 = call float @dx.op.dot3.f32(i32 55, float %2109, float %2108, float %2107, float %2116, float %2117, float %2118)  ; Dot3(ax,ay,az,bx,by,bz)
  %2126 = fmul fast float %2125, 2.000000e+00
  %2127 = fmul fast float %2126, %2116
  %2128 = fmul fast float %2126, %2117
  %2129 = fmul fast float %2126, %2118
  %2130 = fsub fast float %2109, %2127
  %2131 = fsub fast float %2108, %2128
  %2132 = fsub fast float %2107, %2129
  %2133 = call float @dx.op.binary.f32(i32 36, float %2120, float 1.000000e+00)  ; FMin(a,b)
  %2134 = fsub fast float 1.000000e+00, %2120
  %2135 = bitcast float %2134 to i32
  %2136 = sub nsw i32 2129859010, %2135
  %2137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2138 = extractvalue %dx.types.CBufRet.f32 %2137, 0
  %2139 = extractvalue %dx.types.CBufRet.f32 %2137, 1
  %2140 = fadd fast float %2138, %148
  %2141 = fadd fast float %2139, %149
  %2142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2143 = extractvalue %dx.types.CBufRet.i32 %2142, 0
  %2144 = icmp eq i32 %2143, 1
  br i1 %2144, label %2145, label %2180

; <label>:2145                                    ; preds = %2103
  %2146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2147 = extractvalue %dx.types.CBufRet.f32 %2146, 0
  %2148 = extractvalue %dx.types.CBufRet.f32 %2146, 1
  %2149 = fsub fast float %2140, %2147
  %2150 = fsub fast float %2141, %2148
  %2151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2152 = extractvalue %dx.types.CBufRet.f32 %2151, 0
  %2153 = extractvalue %dx.types.CBufRet.f32 %2151, 1
  %2154 = fmul fast float %2149, %2152
  %2155 = fmul fast float %2150, %2153
  %2156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %2154, float %2155, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2157 = extractvalue %dx.types.ResRet.f32 %2156, 0
  %2158 = fcmp fast ogt float %2157, 0.000000e+00
  %2159 = extractvalue %dx.types.CBufRet.i32 %2142, 3
  %2160 = icmp ne i32 %2159, 0
  %2161 = and i1 %2158, %2160
  br i1 %2161, label %2162, label %2180, !dx.controlflow.hints !102

; <label>:2162                                    ; preds = %2145
  %2163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2164 = extractvalue %dx.types.CBufRet.f32 %2163, 0
  %2165 = extractvalue %dx.types.CBufRet.f32 %2163, 1
  %2166 = fsub fast float %2140, %2164
  %2167 = fsub fast float %2141, %2165
  %2168 = fmul fast float %2166, %2166
  %2169 = fmul fast float %2167, %2167
  %2170 = fadd fast float %2168, %2169
  %2171 = uitofp i32 %2159 to float
  %2172 = fmul fast float %2171, %2171
  %2173 = fcmp fast ogt float %2170, %2172
  br i1 %2173, label %2180, label %2174

; <label>:2174                                    ; preds = %2162
  %2175 = call float @dx.op.unary.f32(i32 24, float %2170)  ; Sqrt(value)
  %2176 = fsub fast float %2171, %2175
  %2177 = fmul fast float %2176, 0x3F75555560000000
  %2178 = call float @dx.op.unary.f32(i32 7, float %2177)  ; Saturate(value)
  %2179 = call float @dx.op.binary.f32(i32 36, float %2178, float %2157)  ; FMin(a,b)
  br label %2180

; <label>:2180                                    ; preds = %2174, %2162, %2145, %2103
  %2181 = phi float [ 1.000000e+00, %2103 ], [ %2179, %2174 ], [ %2157, %2145 ], [ 0.000000e+00, %2162 ]
  %2182 = fcmp fast ogt float %2181, 0.000000e+00
  br i1 %2182, label %2183, label %2281, !dx.controlflow.hints !103

; <label>:2183                                    ; preds = %2180
  %2184 = fadd fast float %179, 5.000000e-01
  %2185 = call float @dx.op.unary.f32(i32 27, float %2184)  ; Round_ni(value)
  %2186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %58, float %177, float %178, float %2185, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2187 = extractvalue %dx.types.ResRet.f32 %2186, 0
  %2188 = extractvalue %dx.types.ResRet.f32 %2186, 1
  %2189 = extractvalue %dx.types.ResRet.f32 %2186, 2
  %2190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2191 = extractvalue %dx.types.CBufRet.f32 %2190, 3
  %2192 = fmul fast float %2191, %2187
  %2193 = fmul fast float %2191, %2188
  %2194 = fmul fast float %2191, %2189
  %2195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %58, float %177, float %178, float %2185, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2196 = extractvalue %dx.types.ResRet.f32 %2195, 0
  %2197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %58, float %177, float %178, float %2185, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2198 = extractvalue %dx.types.ResRet.f32 %2197, 0
  %2199 = extractvalue %dx.types.ResRet.f32 %2197, 1
  %2200 = fmul fast float %2198, 2.000000e+00
  %2201 = fmul fast float %2199, 2.000000e+00
  %2202 = fadd fast float %2200, -1.000000e+00
  %2203 = fadd fast float %2201, -1.000000e+00
  %2204 = fadd fast float %2202, %2203
  %2205 = fmul fast float %2204, 5.000000e-01
  %2206 = fsub fast float %2202, %2203
  %2207 = fmul fast float %2206, 5.000000e-01
  %2208 = call float @dx.op.unary.f32(i32 6, float %2205)  ; FAbs(value)
  %2209 = fsub fast float 1.000000e+00, %2208
  %2210 = call float @dx.op.unary.f32(i32 6, float %2207)  ; FAbs(value)
  %2211 = fsub fast float %2209, %2210
  %2212 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2211)  ; FMax(a,b)
  %2213 = call float @dx.op.dot3.f32(i32 55, float %2205, float %2207, float %2212, float %2205, float %2207, float %2212)  ; Dot3(ax,ay,az,bx,by,bz)
  %2214 = bitcast float %2213 to i32
  %2215 = ashr i32 %2214, 1
  %2216 = sub nsw i32 1597250115, %2215
  %2217 = bitcast i32 %2216 to float
  %2218 = fmul fast float %2217, %2205
  %2219 = fmul fast float %2217, %2207
  %2220 = fmul fast float %2217, %2212
  %2221 = fsub fast float 1.000000e+00, %2196
  %2222 = fdiv fast float %2221, %2220
  %2223 = fmul fast float %2220, %96
  %2224 = fmul fast float %2220, %97
  %2225 = fmul fast float %2220, %98
  %2226 = fmul fast float %2218, %99
  %2227 = fmul fast float %2218, %100
  %2228 = fmul fast float %2218, %101
  %2229 = fadd fast float %2223, %2226
  %2230 = fadd fast float %2224, %2227
  %2231 = fadd fast float %2225, %2228
  %2232 = fmul fast float %2219, %112
  %2233 = fmul fast float %2219, %113
  %2234 = fmul fast float %2219, %114
  %2235 = fadd fast float %2229, %2232
  %2236 = fadd fast float %2230, %2233
  %2237 = fadd fast float %2231, %2234
  %2238 = call float @dx.op.dot3.f32(i32 55, float %2235, float %2236, float %2237, float %2235, float %2236, float %2237)  ; Dot3(ax,ay,az,bx,by,bz)
  %2239 = call float @dx.op.unary.f32(i32 25, float %2238)  ; Rsqrt(value)
  %2240 = fmul fast float %2235, %2239
  %2241 = fmul fast float %2236, %2239
  %2242 = fmul fast float %2237, %2239
  %2243 = call float @dx.op.dot3.f32(i32 55, float %2116, float %2117, float %2118, float %2116, float %2117, float %2118)  ; Dot3(ax,ay,az,bx,by,bz)
  %2244 = call float @dx.op.unary.f32(i32 7, float %2243)  ; Saturate(value)
  %2245 = fmul fast float %2244, 5.000000e-01
  %2246 = fadd fast float %2245, 5.000000e-01
  %2247 = fmul fast float %2246, %2196
  %2248 = call float @dx.op.dot3.f32(i32 55, float %2116, float %2117, float %2118, float %2240, float %2241, float %2242)  ; Dot3(ax,ay,az,bx,by,bz)
  %2249 = call float @dx.op.unary.f32(i32 7, float %2248)  ; Saturate(value)
  %2250 = fmul fast float %2249, %2222
  %2251 = fadd fast float %2247, %2250
  %2252 = fsub fast float 5.000000e-01, %2245
  %2253 = fmul fast float %2252, %2113
  %2254 = fmul fast float %2252, %2114
  %2255 = fmul fast float %2252, %2115
  %2256 = fadd fast float %2251, %2253
  %2257 = fmul fast float %2256, %2192
  %2258 = fadd fast float %2251, %2254
  %2259 = fmul fast float %2258, %2193
  %2260 = fadd fast float %2251, %2255
  %2261 = fmul fast float %2260, %2194
  %2262 = call float @dx.op.dot3.f32(i32 55, float %2130, float %2131, float %2132, float %2116, float %2117, float %2118)  ; Dot3(ax,ay,az,bx,by,bz)
  %2263 = call float @dx.op.unary.f32(i32 7, float %2262)  ; Saturate(value)
  %2264 = fmul fast float %2263, 5.000000e-01
  %2265 = fadd fast float %2264, 5.000000e-01
  %2266 = fmul fast float %2265, %2196
  %2267 = call float @dx.op.dot3.f32(i32 55, float %2130, float %2131, float %2132, float %2240, float %2241, float %2242)  ; Dot3(ax,ay,az,bx,by,bz)
  %2268 = call float @dx.op.unary.f32(i32 7, float %2267)  ; Saturate(value)
  %2269 = fmul fast float %2268, %2222
  %2270 = fadd fast float %2266, %2269
  %2271 = fsub fast float 5.000000e-01, %2264
  %2272 = fmul fast float %2271, %2113
  %2273 = fmul fast float %2271, %2114
  %2274 = fmul fast float %2271, %2115
  %2275 = fadd fast float %2270, %2272
  %2276 = fmul fast float %2275, %2192
  %2277 = fadd fast float %2270, %2273
  %2278 = fmul fast float %2277, %2193
  %2279 = fadd fast float %2270, %2274
  %2280 = fmul fast float %2279, %2194
  br label %2281

; <label>:2281                                    ; preds = %2183, %2180
  %2282 = phi float [ %2276, %2183 ], [ 0.000000e+00, %2180 ]
  %2283 = phi float [ %2278, %2183 ], [ 0.000000e+00, %2180 ]
  %2284 = phi float [ %2280, %2183 ], [ 0.000000e+00, %2180 ]
  %2285 = phi float [ %2257, %2183 ], [ 0.000000e+00, %2180 ]
  %2286 = phi float [ %2259, %2183 ], [ 0.000000e+00, %2180 ]
  %2287 = phi float [ %2261, %2183 ], [ 0.000000e+00, %2180 ]
  %2288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2289 = extractvalue %dx.types.CBufRet.f32 %2288, 0
  %2290 = fcmp fast ogt float %2289, 0.000000e+00
  %2291 = and i1 %2182, %2290
  br i1 %2291, label %2292, label %2496, !dx.controlflow.hints !104

; <label>:2292                                    ; preds = %2281
  %2293 = extractvalue %dx.types.CBufRet.f32 %2137, 2
  %2294 = fadd fast float %2293, %150
  %2295 = fmul fast float %2116, 3.200000e+01
  %2296 = fmul fast float %2117, 3.200000e+01
  %2297 = fadd fast float %2140, %2295
  %2298 = fadd fast float %2141, %2296
  %2299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2300 = extractvalue %dx.types.CBufRet.f32 %2299, 0
  %2301 = extractvalue %dx.types.CBufRet.f32 %2299, 1
  %2302 = fsub fast float %2297, %2300
  %2303 = fsub fast float %2298, %2301
  %2304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2305 = extractvalue %dx.types.CBufRet.f32 %2304, 0
  %2306 = extractvalue %dx.types.CBufRet.f32 %2304, 1
  %2307 = fmul fast float %2302, %2305
  %2308 = fmul fast float %2303, %2306
  %2309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2310 = extractvalue %dx.types.CBufRet.f32 %2309, 0
  %2311 = extractvalue %dx.types.CBufRet.f32 %2309, 1
  %2312 = fsub fast float %2140, %2310
  %2313 = fsub fast float %2141, %2311
  %2314 = fmul fast float %2312, %2312
  %2315 = fmul fast float %2313, %2313
  %2316 = fadd fast float %2314, %2315
  %2317 = call float @dx.op.unary.f32(i32 24, float %2316)  ; Sqrt(value)
  %2318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2319 = extractvalue %dx.types.CBufRet.f32 %2318, 0
  %2320 = extractvalue %dx.types.CBufRet.f32 %2318, 1
  %2321 = fsub fast float %2317, %2319
  %2322 = fdiv fast float %2321, %2320
  %2323 = call float @dx.op.unary.f32(i32 7, float %2322)  ; Saturate(value)
  %2324 = fmul fast float %2323, 2.000000e+00
  %2325 = fsub fast float 3.000000e+00, %2324
  %2326 = fmul fast float %2323, %2323
  %2327 = fmul fast float %2326, %2325
  %2328 = fcmp fast oge float %2307, 0.000000e+00
  %2329 = fcmp fast ole float %2307, 1.000000e+00
  %2330 = and i1 %2329, %2328
  %2331 = fcmp fast oge float %2308, 0.000000e+00
  %2332 = and i1 %2331, %2330
  %2333 = fcmp fast ole float %2308, 1.000000e+00
  %2334 = and i1 %2333, %2332
  %2335 = fcmp fast ogt float %2327, 0.000000e+00
  %2336 = and i1 %2335, %2334
  br i1 %2336, label %2337, label %2460, !dx.controlflow.hints !105

; <label>:2337                                    ; preds = %2292
  %2338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2339 = extractvalue %dx.types.CBufRet.f32 %2338, 2
  %2340 = extractvalue %dx.types.CBufRet.f32 %2338, 3
  %2341 = fmul fast float %2339, %2307
  %2342 = fmul fast float %2340, %2308
  %2343 = call float @dx.op.unary.f32(i32 27, float %2341)  ; Round_ni(value)
  %2344 = call float @dx.op.unary.f32(i32 27, float %2342)  ; Round_ni(value)
  %2345 = fptosi float %2343 to i32
  %2346 = fptosi float %2344 to i32
  %2347 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %2345, i32 %2346, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = lshr i32 %2348, 16
  %2350 = icmp eq i32 %2349, 65535
  br i1 %2350, label %2460, label %2351

; <label>:2351                                    ; preds = %2337
  %2352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2353 = extractvalue %dx.types.CBufRet.f32 %2352, 0
  %2354 = fmul fast float %2353, %2307
  %2355 = extractvalue %dx.types.CBufRet.f32 %2352, 1
  %2356 = fadd fast float %2354, %2355
  %2357 = extractvalue %dx.types.CBufRet.f32 %2352, 2
  %2358 = fmul fast float %2357, %2308
  %2359 = extractvalue %dx.types.CBufRet.f32 %2352, 3
  %2360 = fadd fast float %2358, %2359
  %2361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2356, float %2360, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2362 = extractvalue %dx.types.ResRet.f32 %2361, 0
  %2363 = extractvalue %dx.types.ResRet.f32 %2361, 1
  %2364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2365 = extractvalue %dx.types.CBufRet.f32 %2364, 1
  %2366 = extractvalue %dx.types.CBufRet.f32 %2364, 0
  %2367 = fsub fast float %2365, %2366
  %2368 = fmul fast float %2367, %2362
  %2369 = fadd fast float %2368, %2366
  %2370 = extractvalue %dx.types.CBufRet.f32 %2364, 3
  %2371 = extractvalue %dx.types.CBufRet.f32 %2364, 2
  %2372 = fsub fast float %2370, %2371
  %2373 = fmul fast float %2372, %2363
  %2374 = fadd fast float %2373, %2371
  %2375 = fsub fast float %2294, %2369
  %2376 = fsub fast float %2374, %2369
  %2377 = fdiv fast float %2375, %2376
  %2378 = call float @dx.op.unary.f32(i32 7, float %2377)  ; Saturate(value)
  %2379 = extractvalue %dx.types.CBufRet.f32 %2288, 1
  %2380 = extractvalue %dx.types.CBufRet.f32 %2338, 0
  %2381 = extractvalue %dx.types.CBufRet.f32 %2338, 1
  %2382 = fmul fast float %2380, %2307
  %2383 = fmul fast float %2381, %2308
  %2384 = fmul fast float %2382, 1.250000e-01
  %2385 = fmul fast float %2383, 1.250000e-01
  %2386 = call float @dx.op.unary.f32(i32 27, float %2384)  ; Round_ni(value)
  %2387 = call float @dx.op.unary.f32(i32 27, float %2385)  ; Round_ni(value)
  %2388 = fmul fast float %2386, 8.000000e+00
  %2389 = fmul fast float %2387, 8.000000e+00
  %2390 = fsub fast float %2382, %2388
  %2391 = fsub fast float %2383, %2389
  %2392 = fadd fast float %2390, 5.000000e-01
  %2393 = fadd fast float %2391, 5.000000e-01
  %2394 = and i32 %2349, 255
  %2395 = lshr i32 %2348, 24
  %2396 = mul nuw nsw i32 %2394, 9
  %2397 = uitofp i32 %2396 to float
  %2398 = mul nuw nsw i32 %2395, 9
  %2399 = uitofp i32 %2398 to float
  %2400 = fadd fast float %2392, %2397
  %2401 = fadd fast float %2393, %2399
  %2402 = fdiv fast float %2400, %2289
  %2403 = fdiv fast float %2401, %2379
  %2404 = fmul fast float %2378, 4.375000e-01
  %2405 = fadd fast float %2404, 3.125000e-02
  %2406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2402, float %2403, float %2405, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2407 = extractvalue %dx.types.ResRet.f32 %2406, 0
  %2408 = extractvalue %dx.types.ResRet.f32 %2406, 1
  %2409 = extractvalue %dx.types.ResRet.f32 %2406, 2
  %2410 = fadd fast float %2404, 5.312500e-01
  %2411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2402, float %2403, float %2410, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2412 = extractvalue %dx.types.ResRet.f32 %2411, 0
  %2413 = extractvalue %dx.types.ResRet.f32 %2411, 1
  %2414 = extractvalue %dx.types.ResRet.f32 %2411, 2
  %2415 = fmul fast float %2412, 2.000000e+00
  %2416 = fmul fast float %2413, 2.000000e+00
  %2417 = fmul fast float %2414, 2.000000e+00
  %2418 = fadd fast float %2415, -1.000000e+00
  %2419 = fadd fast float %2416, -1.000000e+00
  %2420 = fadd fast float %2417, -1.000000e+00
  %2421 = fmul fast float %2418, %2418
  %2422 = fmul fast float %2419, %2419
  %2423 = fadd fast float %2421, %2422
  %2424 = fmul fast float %2420, %2420
  %2425 = fadd fast float %2423, %2424
  %2426 = call float @dx.op.unary.f32(i32 24, float %2425)  ; Sqrt(value)
  %2427 = fcmp fast ogt float %2426, 0.000000e+00
  br i1 %2427, label %2428, label %2432

; <label>:2428                                    ; preds = %2351
  %2429 = fdiv fast float %2418, %2426
  %2430 = fdiv fast float %2419, %2426
  %2431 = fdiv fast float %2420, %2426
  br label %2432

; <label>:2432                                    ; preds = %2428, %2351
  %2433 = phi float [ %2429, %2428 ], [ 0.000000e+00, %2351 ]
  %2434 = phi float [ %2430, %2428 ], [ 0.000000e+00, %2351 ]
  %2435 = phi float [ %2431, %2428 ], [ 0.000000e+00, %2351 ]
  %2436 = call float @dx.op.dot3.f32(i32 55, float %2433, float %2434, float %2435, float %2116, float %2117, float %2118)  ; Dot3(ax,ay,az,bx,by,bz)
  %2437 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2436)  ; FMax(a,b)
  %2438 = fmul fast float %2437, 0x400C5BF8A0000000
  %2439 = fmul fast float %2407, %2327
  %2440 = fmul fast float %2439, %2438
  %2441 = fmul fast float %2408, %2327
  %2442 = fmul fast float %2441, %2438
  %2443 = fmul fast float %2409, %2327
  %2444 = fmul fast float %2443, %2438
  %2445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2446 = extractvalue %dx.types.CBufRet.f32 %2445, 3
  %2447 = fmul fast float %2440, %2446
  %2448 = fmul fast float %2442, %2446
  %2449 = fmul fast float %2444, %2446
  %2450 = fcmp fast ogt float %2294, %2374
  br i1 %2450, label %2451, label %2460

; <label>:2451                                    ; preds = %2432
  %2452 = fmul fast float %2376, 0x3FC24924A0000000
  %2453 = fsub fast float %2294, %2374
  %2454 = fdiv fast float %2453, %2452
  %2455 = call float @dx.op.unary.f32(i32 7, float %2454)  ; Saturate(value)
  %2456 = fsub fast float 1.000000e+00, %2455
  %2457 = fmul fast float %2456, %2447
  %2458 = fmul fast float %2456, %2448
  %2459 = fmul fast float %2456, %2449
  br label %2460

; <label>:2460                                    ; preds = %2451, %2432, %2337, %2292
  %2461 = phi float [ %2459, %2451 ], [ %2449, %2432 ], [ 0.000000e+00, %2337 ], [ 0.000000e+00, %2292 ]
  %2462 = phi float [ %2458, %2451 ], [ %2448, %2432 ], [ 0.000000e+00, %2337 ], [ 0.000000e+00, %2292 ]
  %2463 = phi float [ %2457, %2451 ], [ %2447, %2432 ], [ 0.000000e+00, %2337 ], [ 0.000000e+00, %2292 ]
  %2464 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2463)  ; FMax(a,b)
  %2465 = fmul fast float %2464, 0x3FD20DD760000000
  %2466 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2130, float %2131, float %2132)  ; Dot3(ax,ay,az,bx,by,bz)
  %2467 = fmul fast float %2466, 0x3FDF454380000000
  %2468 = fmul fast float %2466, %2466
  %2469 = fmul fast float %2468, 0x3FEE471020000000
  %2470 = fadd fast float %2469, 0xBFD42F6020000000
  %2471 = call float @dx.op.dot3.f32(i32 55, float %2464, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2467, float %2470)  ; Dot3(ax,ay,az,bx,by,bz)
  %2472 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2462)  ; FMax(a,b)
  %2473 = fmul fast float %2472, 0x3FD20DD760000000
  %2474 = call float @dx.op.dot3.f32(i32 55, float %2472, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2467, float %2470)  ; Dot3(ax,ay,az,bx,by,bz)
  %2475 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2461)  ; FMax(a,b)
  %2476 = fmul fast float %2475, 0x3FD20DD760000000
  %2477 = call float @dx.op.dot3.f32(i32 55, float %2475, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2467, float %2470)  ; Dot3(ax,ay,az,bx,by,bz)
  %2478 = call float @dx.op.binary.f32(i32 35, float %2465, float 0.000000e+00)  ; FMax(a,b)
  %2479 = call float @dx.op.binary.f32(i32 35, float %2473, float 0.000000e+00)  ; FMax(a,b)
  %2480 = call float @dx.op.binary.f32(i32 35, float %2476, float 0.000000e+00)  ; FMax(a,b)
  %2481 = call float @dx.op.binary.f32(i32 35, float %2471, float 0.000000e+00)  ; FMax(a,b)
  %2482 = call float @dx.op.binary.f32(i32 35, float %2474, float 0.000000e+00)  ; FMax(a,b)
  %2483 = call float @dx.op.binary.f32(i32 35, float %2477, float 0.000000e+00)  ; FMax(a,b)
  %2484 = fmul fast float %2478, %2181
  %2485 = fmul fast float %2479, %2181
  %2486 = fmul fast float %2480, %2181
  %2487 = fadd fast float %2484, %2285
  %2488 = fadd fast float %2485, %2286
  %2489 = fadd fast float %2486, %2287
  %2490 = fmul fast float %2481, %2181
  %2491 = fmul fast float %2482, %2181
  %2492 = fmul fast float %2483, %2181
  %2493 = fadd fast float %2490, %2282
  %2494 = fadd fast float %2491, %2283
  %2495 = fadd fast float %2492, %2284
  br label %2496

; <label>:2496                                    ; preds = %2460, %2281
  %2497 = phi float [ %2493, %2460 ], [ %2282, %2281 ]
  %2498 = phi float [ %2494, %2460 ], [ %2283, %2281 ]
  %2499 = phi float [ %2495, %2460 ], [ %2284, %2281 ]
  %2500 = phi float [ %2487, %2460 ], [ %2285, %2281 ]
  %2501 = phi float [ %2488, %2460 ], [ %2286, %2281 ]
  %2502 = phi float [ %2489, %2460 ], [ %2287, %2281 ]
  %2503 = fcmp fast olt float %2181, 1.000000e+00
  br i1 %2503, label %2504, label %3322, !dx.controlflow.hints !106

; <label>:2504                                    ; preds = %2496
  %2505 = extractvalue %dx.types.CBufRet.f32 %2137, 2
  %2506 = fadd fast float %2505, %150
  %2507 = fmul fast float %2116, 3.200000e+01
  %2508 = fmul fast float %2117, 3.200000e+01
  %2509 = fadd fast float %2140, %2507
  %2510 = fadd fast float %2141, %2508
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
  %2521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2522 = extractvalue %dx.types.CBufRet.f32 %2521, 0
  %2523 = fmul fast float %2519, %2522
  %2524 = extractvalue %dx.types.CBufRet.f32 %2521, 1
  %2525 = fadd fast float %2523, %2524
  %2526 = extractvalue %dx.types.CBufRet.f32 %2521, 2
  %2527 = fmul fast float %2526, %2520
  %2528 = extractvalue %dx.types.CBufRet.f32 %2521, 3
  %2529 = fadd fast float %2527, %2528
  %2530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2525, float %2529, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2531 = extractvalue %dx.types.ResRet.f32 %2530, 0
  %2532 = extractvalue %dx.types.ResRet.f32 %2530, 1
  %2533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2534 = extractvalue %dx.types.CBufRet.f32 %2533, 1
  %2535 = extractvalue %dx.types.CBufRet.f32 %2533, 0
  %2536 = fsub fast float %2534, %2535
  %2537 = fmul fast float %2536, %2531
  %2538 = fadd fast float %2537, %2535
  %2539 = extractvalue %dx.types.CBufRet.f32 %2533, 3
  %2540 = extractvalue %dx.types.CBufRet.f32 %2533, 2
  %2541 = fsub fast float %2539, %2540
  %2542 = fmul fast float %2541, %2532
  %2543 = fadd fast float %2542, %2540
  %2544 = fsub fast float %2506, %2538
  %2545 = fsub fast float %2543, %2538
  %2546 = fdiv fast float %2544, %2545
  %2547 = call float @dx.op.unary.f32(i32 7, float %2546)  ; Saturate(value)
  %2548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2549 = extractvalue %dx.types.CBufRet.f32 %2548, 0
  %2550 = fmul fast float %2549, %2547
  %2551 = extractvalue %dx.types.CBufRet.f32 %2548, 1
  %2552 = fadd fast float %2550, %2551
  %2553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %58, float %2525, float %2529, float %2552, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2554 = extractvalue %dx.types.ResRet.f32 %2553, 0
  %2555 = extractvalue %dx.types.ResRet.f32 %2553, 1
  %2556 = extractvalue %dx.types.ResRet.f32 %2553, 2
  %2557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2558 = extractvalue %dx.types.CBufRet.f32 %2557, 0
  %2559 = extractvalue %dx.types.CBufRet.f32 %2557, 1
  %2560 = extractvalue %dx.types.CBufRet.f32 %2557, 2
  %2561 = fmul fast float %2558, %2554
  %2562 = fmul fast float %2559, %2555
  %2563 = fmul fast float %2560, %2556
  %2564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2565 = extractvalue %dx.types.CBufRet.f32 %2564, 0
  %2566 = extractvalue %dx.types.CBufRet.f32 %2564, 1
  %2567 = extractvalue %dx.types.CBufRet.f32 %2564, 2
  %2568 = fadd fast float %2561, %2565
  %2569 = fadd fast float %2562, %2566
  %2570 = fadd fast float %2563, %2567
  %2571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2572 = extractvalue %dx.types.CBufRet.f32 %2571, 0
  %2573 = fmul fast float %2572, %2519
  %2574 = extractvalue %dx.types.CBufRet.f32 %2571, 1
  %2575 = fadd fast float %2573, %2574
  %2576 = extractvalue %dx.types.CBufRet.f32 %2571, 2
  %2577 = fmul fast float %2576, %2520
  %2578 = extractvalue %dx.types.CBufRet.f32 %2571, 3
  %2579 = fadd fast float %2577, %2578
  %2580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2581 = extractvalue %dx.types.CBufRet.f32 %2580, 0
  %2582 = extractvalue %dx.types.CBufRet.f32 %2580, 1
  %2583 = extractvalue %dx.types.CBufRet.f32 %2580, 2
  %2584 = extractvalue %dx.types.CBufRet.f32 %2580, 3
  %2585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2586 = extractvalue %dx.types.CBufRet.f32 %2585, 0
  %2587 = extractvalue %dx.types.CBufRet.f32 %2585, 1
  %2588 = extractvalue %dx.types.CBufRet.f32 %2585, 2
  %2589 = extractvalue %dx.types.CBufRet.f32 %2585, 3
  %2590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2575, float %2579, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2591 = extractvalue %dx.types.ResRet.f32 %2590, 0
  %2592 = extractvalue %dx.types.ResRet.f32 %2590, 1
  %2593 = extractvalue %dx.types.ResRet.f32 %2590, 2
  %2594 = extractvalue %dx.types.ResRet.f32 %2590, 3
  %2595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2575, float %2579, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2596 = extractvalue %dx.types.ResRet.f32 %2595, 0
  %2597 = extractvalue %dx.types.ResRet.f32 %2595, 1
  %2598 = extractvalue %dx.types.ResRet.f32 %2595, 2
  %2599 = extractvalue %dx.types.ResRet.f32 %2595, 3
  %2600 = fmul fast float %2591, %2568
  %2601 = fmul fast float %2596, %2568
  %2602 = fmul fast float %2598, %2568
  %2603 = fmul fast float %2594, %2568
  %2604 = fadd fast float %2600, %2581
  %2605 = fadd fast float %2601, %2582
  %2606 = fadd fast float %2602, %2583
  %2607 = fadd fast float %2603, %2584
  %2608 = fmul fast float %2592, %2568
  %2609 = fmul fast float %2597, %2568
  %2610 = fadd fast float %2608, %2586
  %2611 = fadd fast float %2609, %2587
  %2612 = fmul fast float %2593, %2568
  %2613 = fmul fast float %2599, %2568
  %2614 = fadd fast float %2612, %2588
  %2615 = fadd fast float %2613, %2589
  %2616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2575, float %2579, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2617 = extractvalue %dx.types.ResRet.f32 %2616, 0
  %2618 = extractvalue %dx.types.ResRet.f32 %2616, 1
  %2619 = extractvalue %dx.types.ResRet.f32 %2616, 2
  %2620 = extractvalue %dx.types.ResRet.f32 %2616, 3
  %2621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2575, float %2579, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2622 = extractvalue %dx.types.ResRet.f32 %2621, 0
  %2623 = extractvalue %dx.types.ResRet.f32 %2621, 1
  %2624 = extractvalue %dx.types.ResRet.f32 %2621, 2
  %2625 = extractvalue %dx.types.ResRet.f32 %2621, 3
  %2626 = fmul fast float %2617, %2569
  %2627 = fmul fast float %2622, %2569
  %2628 = fmul fast float %2624, %2569
  %2629 = fmul fast float %2620, %2569
  %2630 = fadd fast float %2604, %2626
  %2631 = fadd fast float %2605, %2627
  %2632 = fadd fast float %2606, %2628
  %2633 = fadd fast float %2607, %2629
  %2634 = fmul fast float %2618, %2569
  %2635 = fmul fast float %2623, %2569
  %2636 = fadd fast float %2610, %2634
  %2637 = fadd fast float %2611, %2635
  %2638 = fmul fast float %2619, %2569
  %2639 = fmul fast float %2625, %2569
  %2640 = fadd fast float %2614, %2638
  %2641 = fadd fast float %2615, %2639
  %2642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2575, float %2579, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2643 = extractvalue %dx.types.ResRet.f32 %2642, 0
  %2644 = extractvalue %dx.types.ResRet.f32 %2642, 1
  %2645 = extractvalue %dx.types.ResRet.f32 %2642, 2
  %2646 = extractvalue %dx.types.ResRet.f32 %2642, 3
  %2647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2575, float %2579, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2648 = extractvalue %dx.types.ResRet.f32 %2647, 0
  %2649 = extractvalue %dx.types.ResRet.f32 %2647, 1
  %2650 = extractvalue %dx.types.ResRet.f32 %2647, 2
  %2651 = extractvalue %dx.types.ResRet.f32 %2647, 3
  %2652 = fmul fast float %2643, %2570
  %2653 = fmul fast float %2648, %2570
  %2654 = fmul fast float %2650, %2570
  %2655 = fmul fast float %2646, %2570
  %2656 = fadd fast float %2630, %2652
  %2657 = fadd fast float %2631, %2653
  %2658 = fadd fast float %2632, %2654
  %2659 = fadd fast float %2633, %2655
  %2660 = fmul fast float %2644, %2570
  %2661 = fmul fast float %2649, %2570
  %2662 = fadd fast float %2636, %2660
  %2663 = fadd fast float %2637, %2661
  %2664 = fmul fast float %2645, %2570
  %2665 = fmul fast float %2651, %2570
  %2666 = fadd fast float %2640, %2664
  %2667 = fadd fast float %2641, %2665
  %2668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2669 = extractvalue %dx.types.CBufRet.f32 %2668, 0
  %2670 = fsub fast float %2140, %2669
  %2671 = fsub fast float %2512, %2140
  %2672 = call float @dx.op.binary.f32(i32 35, float %2671, float %2670)  ; FMax(a,b)
  %2673 = extractvalue %dx.types.CBufRet.f32 %2668, 1
  %2674 = fsub fast float %2141, %2673
  %2675 = fsub fast float %2513, %2141
  %2676 = call float @dx.op.binary.f32(i32 35, float %2675, float %2674)  ; FMax(a,b)
  %2677 = call float @dx.op.binary.f32(i32 35, float %2672, float %2676)  ; FMax(a,b)
  %2678 = extractvalue %dx.types.CBufRet.f32 %2516, 3
  %2679 = fmul fast float %2678, %2677
  %2680 = call float @dx.op.unary.f32(i32 7, float %2679)  ; Saturate(value)
  %2681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2682 = extractvalue %dx.types.CBufRet.f32 %2681, 0
  %2683 = extractvalue %dx.types.CBufRet.f32 %2681, 1
  %2684 = extractvalue %dx.types.CBufRet.f32 %2681, 2
  %2685 = extractvalue %dx.types.CBufRet.f32 %2681, 3
  %2686 = fsub fast float %2682, %2656
  %2687 = fsub fast float %2683, %2657
  %2688 = fsub fast float %2684, %2658
  %2689 = fsub fast float %2685, %2659
  %2690 = fmul fast float %2686, %2680
  %2691 = fmul fast float %2687, %2680
  %2692 = fmul fast float %2688, %2680
  %2693 = fmul fast float %2689, %2680
  %2694 = fadd fast float %2690, %2656
  %2695 = fadd fast float %2691, %2657
  %2696 = fadd fast float %2692, %2658
  %2697 = fadd fast float %2693, %2659
  %2698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2699 = extractvalue %dx.types.CBufRet.f32 %2698, 0
  %2700 = extractvalue %dx.types.CBufRet.f32 %2698, 1
  %2701 = fsub fast float %2699, %2662
  %2702 = fsub fast float %2700, %2663
  %2703 = fmul fast float %2701, %2680
  %2704 = fmul fast float %2702, %2680
  %2705 = fadd fast float %2703, %2662
  %2706 = fadd fast float %2704, %2663
  %2707 = extractvalue %dx.types.CBufRet.f32 %2698, 2
  %2708 = extractvalue %dx.types.CBufRet.f32 %2698, 3
  %2709 = fsub fast float %2707, %2666
  %2710 = fsub fast float %2708, %2667
  %2711 = fmul fast float %2709, %2680
  %2712 = fmul fast float %2710, %2680
  %2713 = fadd fast float %2711, %2666
  %2714 = fadd fast float %2712, %2667
  %2715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2716 = extractvalue %dx.types.CBufRet.f32 %2715, 0
  %2717 = fmul fast float %2716, %2694
  %2718 = fmul fast float %2716, %2695
  %2719 = fmul fast float %2716, %2696
  %2720 = fmul fast float %2716, %2697
  %2721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2722 = extractvalue %dx.types.CBufRet.f32 %2721, 0
  %2723 = fmul fast float %2722, %2705
  %2724 = fmul fast float %2722, %2706
  %2725 = fadd fast float %2723, %2717
  %2726 = fadd fast float %2724, %2719
  %2727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2728 = extractvalue %dx.types.CBufRet.f32 %2727, 0
  %2729 = fmul fast float %2728, %2713
  %2730 = fmul fast float %2728, %2714
  %2731 = fadd fast float %2725, %2729
  %2732 = fadd fast float %2726, %2730
  %2733 = extractvalue %dx.types.CBufRet.f32 %2715, 1
  %2734 = fmul fast float %2733, %2694
  %2735 = fmul fast float %2733, %2695
  %2736 = fmul fast float %2733, %2696
  %2737 = fmul fast float %2733, %2697
  %2738 = extractvalue %dx.types.CBufRet.f32 %2721, 1
  %2739 = fmul fast float %2738, %2705
  %2740 = fmul fast float %2738, %2706
  %2741 = fadd fast float %2739, %2734
  %2742 = fadd fast float %2740, %2736
  %2743 = extractvalue %dx.types.CBufRet.f32 %2727, 1
  %2744 = fmul fast float %2743, %2713
  %2745 = fmul fast float %2743, %2714
  %2746 = fadd fast float %2741, %2744
  %2747 = fadd fast float %2742, %2745
  %2748 = extractvalue %dx.types.CBufRet.f32 %2715, 2
  %2749 = fmul fast float %2748, %2694
  %2750 = fmul fast float %2748, %2695
  %2751 = fmul fast float %2748, %2696
  %2752 = fmul fast float %2748, %2697
  %2753 = extractvalue %dx.types.CBufRet.f32 %2721, 2
  %2754 = fmul fast float %2753, %2705
  %2755 = fmul fast float %2753, %2706
  %2756 = fadd fast float %2754, %2749
  %2757 = fadd fast float %2755, %2751
  %2758 = extractvalue %dx.types.CBufRet.f32 %2727, 2
  %2759 = fmul fast float %2758, %2713
  %2760 = fmul fast float %2758, %2714
  %2761 = fadd fast float %2756, %2759
  %2762 = fadd fast float %2757, %2760
  %2763 = fmul fast float %2750, %2750
  %2764 = fmul fast float %2762, %2762
  %2765 = fmul fast float %2752, %2752
  %2766 = fadd fast float %2765, %2763
  %2767 = fadd fast float %2766, %2764
  %2768 = call float @dx.op.unary.f32(i32 24, float %2767)  ; Sqrt(value)
  %2769 = fcmp fast ugt float %2768, 0.000000e+00
  br i1 %2769, label %2770, label %2785

; <label>:2770                                    ; preds = %2504
  %2771 = fsub fast float -0.000000e+00, %2752
  %2772 = fdiv fast float %2771, %2768
  %2773 = fsub fast float -0.000000e+00, %2750
  %2774 = fdiv fast float %2773, %2768
  %2775 = fdiv fast float %2762, %2768
  %2776 = fmul fast float %2761, 0x3FE279A760000000
  %2777 = fmul fast float %2774, %2750
  %2778 = fmul fast float %2775, %2762
  %2779 = fmul fast float %2772, %2752
  %2780 = fadd fast float %2777, %2779
  %2781 = fsub fast float %2780, %2778
  %2782 = call float @dx.op.unary.f32(i32 6, float %2781)  ; FAbs(value)
  %2783 = fadd fast float %2782, 0x3DDB7CDFE0000000
  %2784 = fdiv fast float %2776, %2783
  br label %2785

; <label>:2785                                    ; preds = %2770, %2504
  %2786 = phi float [ %2784, %2770 ], [ 1.000000e+00, %2504 ]
  %2787 = fmul fast float %2735, %2735
  %2788 = fmul fast float %2747, %2747
  %2789 = fmul fast float %2737, %2737
  %2790 = fadd fast float %2789, %2787
  %2791 = fadd fast float %2790, %2788
  %2792 = call float @dx.op.unary.f32(i32 24, float %2791)  ; Sqrt(value)
  %2793 = fcmp fast ugt float %2792, 0.000000e+00
  br i1 %2793, label %2794, label %2809

; <label>:2794                                    ; preds = %2785
  %2795 = fsub fast float -0.000000e+00, %2737
  %2796 = fdiv fast float %2795, %2792
  %2797 = fsub fast float -0.000000e+00, %2735
  %2798 = fdiv fast float %2797, %2792
  %2799 = fdiv fast float %2747, %2792
  %2800 = fmul fast float %2746, 0x3FE279A760000000
  %2801 = fmul fast float %2798, %2735
  %2802 = fmul fast float %2799, %2747
  %2803 = fmul fast float %2796, %2737
  %2804 = fadd fast float %2801, %2803
  %2805 = fsub fast float %2804, %2802
  %2806 = call float @dx.op.unary.f32(i32 6, float %2805)  ; FAbs(value)
  %2807 = fadd fast float %2806, 0x3DDB7CDFE0000000
  %2808 = fdiv fast float %2800, %2807
  br label %2809

; <label>:2809                                    ; preds = %2794, %2785
  %2810 = phi float [ %2808, %2794 ], [ 1.000000e+00, %2785 ]
  %2811 = call float @dx.op.binary.f32(i32 36, float %2810, float %2786)  ; FMin(a,b)
  %2812 = fmul fast float %2718, %2718
  %2813 = fmul fast float %2732, %2732
  %2814 = fmul fast float %2720, %2720
  %2815 = fadd fast float %2814, %2812
  %2816 = fadd fast float %2815, %2813
  %2817 = call float @dx.op.unary.f32(i32 24, float %2816)  ; Sqrt(value)
  %2818 = fcmp fast ugt float %2817, 0.000000e+00
  br i1 %2818, label %2819, label %2834

; <label>:2819                                    ; preds = %2809
  %2820 = fsub fast float -0.000000e+00, %2720
  %2821 = fdiv fast float %2820, %2817
  %2822 = fsub fast float -0.000000e+00, %2718
  %2823 = fdiv fast float %2822, %2817
  %2824 = fdiv fast float %2732, %2817
  %2825 = fmul fast float %2731, 0x3FE279A760000000
  %2826 = fmul fast float %2823, %2718
  %2827 = fmul fast float %2824, %2732
  %2828 = fmul fast float %2821, %2720
  %2829 = fadd fast float %2826, %2828
  %2830 = fsub fast float %2829, %2827
  %2831 = call float @dx.op.unary.f32(i32 6, float %2830)  ; FAbs(value)
  %2832 = fadd fast float %2831, 0x3DDB7CDFE0000000
  %2833 = fdiv fast float %2825, %2832
  br label %2834

; <label>:2834                                    ; preds = %2819, %2809
  %2835 = phi float [ %2833, %2819 ], [ 1.000000e+00, %2809 ]
  %2836 = call float @dx.op.binary.f32(i32 36, float %2835, float %2811)  ; FMin(a,b)
  %2837 = call float @dx.op.unary.f32(i32 7, float %2836)  ; Saturate(value)
  %2838 = fcmp fast olt float %2837, 1.000000e+00
  br i1 %2838, label %2839, label %2849

; <label>:2839                                    ; preds = %2834
  %2840 = fmul fast float %2837, %2718
  %2841 = fmul fast float %2837, %2732
  %2842 = fmul fast float %2837, %2720
  %2843 = fmul fast float %2837, %2735
  %2844 = fmul fast float %2837, %2747
  %2845 = fmul fast float %2837, %2737
  %2846 = fmul fast float %2837, %2750
  %2847 = fmul fast float %2837, %2762
  %2848 = fmul fast float %2837, %2752
  br label %2849

; <label>:2849                                    ; preds = %2839, %2834
  %2850 = phi float [ %2846, %2839 ], [ %2750, %2834 ]
  %2851 = phi float [ %2847, %2839 ], [ %2762, %2834 ]
  %2852 = phi float [ %2848, %2839 ], [ %2752, %2834 ]
  %2853 = phi float [ %2843, %2839 ], [ %2735, %2834 ]
  %2854 = phi float [ %2844, %2839 ], [ %2747, %2834 ]
  %2855 = phi float [ %2845, %2839 ], [ %2737, %2834 ]
  %2856 = phi float [ %2840, %2839 ], [ %2718, %2834 ]
  %2857 = phi float [ %2841, %2839 ], [ %2732, %2834 ]
  %2858 = phi float [ %2842, %2839 ], [ %2720, %2834 ]
  %2859 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2731)  ; FMax(a,b)
  %2860 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2746)  ; FMax(a,b)
  %2861 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2761)  ; FMax(a,b)
  %2862 = fcmp fast oge float %2519, 0.000000e+00
  %2863 = and i1 %2862, %2290
  %2864 = fcmp fast ole float %2519, 1.000000e+00
  %2865 = and i1 %2864, %2863
  %2866 = fcmp fast oge float %2520, 0.000000e+00
  %2867 = and i1 %2866, %2865
  %2868 = fcmp fast ole float %2520, 1.000000e+00
  %2869 = and i1 %2868, %2867
  br i1 %2869, label %2870, label %3015, !dx.controlflow.hints !107

; <label>:2870                                    ; preds = %2849
  %2871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2872 = extractvalue %dx.types.CBufRet.f32 %2871, 2
  %2873 = extractvalue %dx.types.CBufRet.f32 %2871, 3
  %2874 = fmul fast float %2872, %2519
  %2875 = fmul fast float %2873, %2520
  %2876 = call float @dx.op.unary.f32(i32 27, float %2874)  ; Round_ni(value)
  %2877 = call float @dx.op.unary.f32(i32 27, float %2875)  ; Round_ni(value)
  %2878 = fptosi float %2876 to i32
  %2879 = fptosi float %2877 to i32
  %2880 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %2878, i32 %2879, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2881 = extractvalue %dx.types.ResRet.i32 %2880, 0
  %2882 = and i32 %2881, 65535
  %2883 = lshr i32 %2881, 16
  %2884 = icmp eq i32 %2882, 65535
  br i1 %2884, label %2921, label %2885

; <label>:2885                                    ; preds = %2870
  %2886 = extractvalue %dx.types.CBufRet.f32 %2288, 1
  %2887 = extractvalue %dx.types.CBufRet.f32 %2871, 0
  %2888 = extractvalue %dx.types.CBufRet.f32 %2871, 1
  %2889 = fmul fast float %2887, %2519
  %2890 = fmul fast float %2888, %2520
  %2891 = fmul fast float %2889, 1.250000e-01
  %2892 = fmul fast float %2890, 1.250000e-01
  %2893 = call float @dx.op.unary.f32(i32 27, float %2891)  ; Round_ni(value)
  %2894 = call float @dx.op.unary.f32(i32 27, float %2892)  ; Round_ni(value)
  %2895 = fmul fast float %2893, 8.000000e+00
  %2896 = fmul fast float %2894, 8.000000e+00
  %2897 = and i32 %2881, 255
  %2898 = lshr i32 %2881, 8
  %2899 = and i32 %2898, 255
  %2900 = mul nuw nsw i32 %2897, 9
  %2901 = uitofp i32 %2900 to float
  %2902 = mul nuw nsw i32 %2899, 9
  %2903 = uitofp i32 %2902 to float
  %2904 = fadd fast float %2901, 5.000000e-01
  %2905 = fadd fast float %2904, %2889
  %2906 = fsub fast float %2905, %2895
  %2907 = fadd fast float %2903, 5.000000e-01
  %2908 = fadd fast float %2907, %2890
  %2909 = fsub fast float %2908, %2896
  %2910 = fdiv fast float %2906, %2289
  %2911 = fdiv fast float %2909, %2886
  %2912 = fmul fast float %2547, 4.375000e-01
  %2913 = fadd fast float %2912, 3.125000e-02
  %2914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2910, float %2911, float %2913, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2915 = extractvalue %dx.types.ResRet.f32 %2914, 0
  %2916 = extractvalue %dx.types.ResRet.f32 %2914, 1
  %2917 = extractvalue %dx.types.ResRet.f32 %2914, 2
  %2918 = fadd fast float %2915, %2859
  %2919 = fadd fast float %2916, %2860
  %2920 = fadd fast float %2917, %2861
  br label %2921

; <label>:2921                                    ; preds = %2885, %2870
  %2922 = phi float [ %2920, %2885 ], [ %2861, %2870 ]
  %2923 = phi float [ %2919, %2885 ], [ %2860, %2870 ]
  %2924 = phi float [ %2918, %2885 ], [ %2859, %2870 ]
  %2925 = icmp eq i32 %2883, 65535
  br i1 %2925, label %3015, label %2926

; <label>:2926                                    ; preds = %2921
  %2927 = extractvalue %dx.types.CBufRet.f32 %2288, 1
  %2928 = extractvalue %dx.types.CBufRet.f32 %2871, 0
  %2929 = extractvalue %dx.types.CBufRet.f32 %2871, 1
  %2930 = fmul fast float %2928, %2519
  %2931 = fmul fast float %2929, %2520
  %2932 = fmul fast float %2930, 1.250000e-01
  %2933 = fmul fast float %2931, 1.250000e-01
  %2934 = call float @dx.op.unary.f32(i32 27, float %2932)  ; Round_ni(value)
  %2935 = call float @dx.op.unary.f32(i32 27, float %2933)  ; Round_ni(value)
  %2936 = fmul fast float %2934, 8.000000e+00
  %2937 = fmul fast float %2935, 8.000000e+00
  %2938 = fsub fast float %2930, %2936
  %2939 = fsub fast float %2931, %2937
  %2940 = fadd fast float %2938, 5.000000e-01
  %2941 = fadd fast float %2939, 5.000000e-01
  %2942 = and i32 %2883, 255
  %2943 = lshr i32 %2881, 24
  %2944 = mul nuw nsw i32 %2942, 9
  %2945 = uitofp i32 %2944 to float
  %2946 = mul nuw nsw i32 %2943, 9
  %2947 = uitofp i32 %2946 to float
  %2948 = fadd fast float %2940, %2945
  %2949 = fadd fast float %2941, %2947
  %2950 = fdiv fast float %2948, %2289
  %2951 = fdiv fast float %2949, %2927
  %2952 = fmul fast float %2547, 4.375000e-01
  %2953 = fadd fast float %2952, 3.125000e-02
  %2954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2950, float %2951, float %2953, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2955 = extractvalue %dx.types.ResRet.f32 %2954, 0
  %2956 = extractvalue %dx.types.ResRet.f32 %2954, 1
  %2957 = extractvalue %dx.types.ResRet.f32 %2954, 2
  %2958 = fadd fast float %2952, 5.312500e-01
  %2959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2950, float %2951, float %2958, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2960 = extractvalue %dx.types.ResRet.f32 %2959, 0
  %2961 = extractvalue %dx.types.ResRet.f32 %2959, 1
  %2962 = extractvalue %dx.types.ResRet.f32 %2959, 2
  %2963 = fmul fast float %2960, 2.000000e+00
  %2964 = fmul fast float %2961, 2.000000e+00
  %2965 = fmul fast float %2962, 2.000000e+00
  %2966 = fadd fast float %2963, -1.000000e+00
  %2967 = fadd fast float %2964, -1.000000e+00
  %2968 = fadd fast float %2965, -1.000000e+00
  %2969 = fmul fast float %2966, %2966
  %2970 = fmul fast float %2967, %2967
  %2971 = fadd fast float %2969, %2970
  %2972 = fmul fast float %2968, %2968
  %2973 = fadd fast float %2971, %2972
  %2974 = call float @dx.op.unary.f32(i32 24, float %2973)  ; Sqrt(value)
  %2975 = fcmp fast ogt float %2974, 0.000000e+00
  br i1 %2975, label %2976, label %2980

; <label>:2976                                    ; preds = %2926
  %2977 = fdiv fast float %2966, %2974
  %2978 = fdiv fast float %2967, %2974
  %2979 = fdiv fast float %2968, %2974
  br label %2980

; <label>:2980                                    ; preds = %2976, %2926
  %2981 = phi float [ %2977, %2976 ], [ 0.000000e+00, %2926 ]
  %2982 = phi float [ %2978, %2976 ], [ 0.000000e+00, %2926 ]
  %2983 = phi float [ %2979, %2976 ], [ 0.000000e+00, %2926 ]
  %2984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2985 = extractvalue %dx.types.CBufRet.f32 %2984, 0
  %2986 = extractvalue %dx.types.CBufRet.f32 %2984, 1
  %2987 = fsub fast float %2140, %2985
  %2988 = fsub fast float %2141, %2986
  %2989 = fmul fast float %2987, %2987
  %2990 = fmul fast float %2988, %2988
  %2991 = fadd fast float %2989, %2990
  %2992 = call float @dx.op.unary.f32(i32 24, float %2991)  ; Sqrt(value)
  %2993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2994 = extractvalue %dx.types.CBufRet.f32 %2993, 0
  %2995 = extractvalue %dx.types.CBufRet.f32 %2993, 1
  %2996 = fsub fast float %2992, %2994
  %2997 = fdiv fast float %2996, %2995
  %2998 = call float @dx.op.unary.f32(i32 7, float %2997)  ; Saturate(value)
  %2999 = fmul fast float %2998, 2.000000e+00
  %3000 = fsub fast float 3.000000e+00, %2999
  %3001 = fmul fast float %2998, %2998
  %3002 = fmul fast float %3001, %3000
  %3003 = call float @dx.op.dot3.f32(i32 55, float %2981, float %2982, float %2983, float %2116, float %2117, float %2118)  ; Dot3(ax,ay,az,bx,by,bz)
  %3004 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3003)  ; FMax(a,b)
  %3005 = fmul fast float %3004, 0x400C5BF8A0000000
  %3006 = fmul fast float %3002, %2955
  %3007 = fmul fast float %3006, %3005
  %3008 = fadd fast float %3007, %2924
  %3009 = fmul fast float %3002, %2956
  %3010 = fmul fast float %3009, %3005
  %3011 = fadd fast float %3010, %2923
  %3012 = fmul fast float %3002, %2957
  %3013 = fmul fast float %3012, %3005
  %3014 = fadd fast float %3013, %2922
  br label %3015

; <label>:3015                                    ; preds = %2980, %2921, %2849
  %3016 = phi float [ %3014, %2980 ], [ %2922, %2921 ], [ %2861, %2849 ]
  %3017 = phi float [ %3011, %2980 ], [ %2923, %2921 ], [ %2860, %2849 ]
  %3018 = phi float [ %3008, %2980 ], [ %2924, %2921 ], [ %2859, %2849 ]
  %3019 = fcmp fast ogt float %2506, %2543
  %3020 = and i1 %2862, %3019
  %3021 = and i1 %2864, %3020
  %3022 = and i1 %2866, %3021
  %3023 = and i1 %2868, %3022
  br i1 %3023, label %3024, label %3081, !dx.controlflow.hints !108

; <label>:3024                                    ; preds = %3015
  %3025 = fmul fast float %2545, 0x3FC24924A0000000
  %3026 = fsub fast float %2506, %2543
  %3027 = fdiv fast float %3026, %3025
  %3028 = call float @dx.op.unary.f32(i32 7, float %3027)  ; Saturate(value)
  %3029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3030 = extractvalue %dx.types.CBufRet.f32 %3029, 0
  %3031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3032 = extractvalue %dx.types.CBufRet.f32 %3031, 0
  %3033 = extractvalue %dx.types.CBufRet.f32 %3031, 1
  %3034 = extractvalue %dx.types.CBufRet.f32 %3031, 2
  %3035 = fsub fast float %3030, %3018
  %3036 = fsub fast float %3032, %2856
  %3037 = fsub fast float %3033, %2857
  %3038 = fsub fast float %3034, %2858
  %3039 = fmul fast float %3035, %3028
  %3040 = fmul fast float %3036, %3028
  %3041 = fmul fast float %3037, %3028
  %3042 = fmul fast float %3038, %3028
  %3043 = fadd fast float %3039, %3018
  %3044 = fadd fast float %3040, %2856
  %3045 = fadd fast float %3041, %2857
  %3046 = fadd fast float %3042, %2858
  %3047 = extractvalue %dx.types.CBufRet.f32 %3029, 1
  %3048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3049 = extractvalue %dx.types.CBufRet.f32 %3048, 0
  %3050 = extractvalue %dx.types.CBufRet.f32 %3048, 1
  %3051 = extractvalue %dx.types.CBufRet.f32 %3048, 2
  %3052 = fsub fast float %3047, %3017
  %3053 = fsub fast float %3049, %2853
  %3054 = fsub fast float %3050, %2854
  %3055 = fsub fast float %3051, %2855
  %3056 = fmul fast float %3052, %3028
  %3057 = fmul fast float %3053, %3028
  %3058 = fmul fast float %3054, %3028
  %3059 = fmul fast float %3055, %3028
  %3060 = fadd fast float %3056, %3017
  %3061 = fadd fast float %3057, %2853
  %3062 = fadd fast float %3058, %2854
  %3063 = fadd fast float %3059, %2855
  %3064 = extractvalue %dx.types.CBufRet.f32 %3029, 2
  %3065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3066 = extractvalue %dx.types.CBufRet.f32 %3065, 0
  %3067 = extractvalue %dx.types.CBufRet.f32 %3065, 1
  %3068 = extractvalue %dx.types.CBufRet.f32 %3065, 2
  %3069 = fsub fast float %3064, %3016
  %3070 = fsub fast float %3066, %2850
  %3071 = fsub fast float %3067, %2851
  %3072 = fsub fast float %3068, %2852
  %3073 = fmul fast float %3069, %3028
  %3074 = fmul fast float %3070, %3028
  %3075 = fmul fast float %3071, %3028
  %3076 = fmul fast float %3072, %3028
  %3077 = fadd fast float %3073, %3016
  %3078 = fadd fast float %3074, %2850
  %3079 = fadd fast float %3075, %2851
  %3080 = fadd fast float %3076, %2852
  br label %3081

; <label>:3081                                    ; preds = %3024, %3015
  %3082 = phi float [ %3077, %3024 ], [ %3016, %3015 ]
  %3083 = phi float [ %3078, %3024 ], [ %2850, %3015 ]
  %3084 = phi float [ %3079, %3024 ], [ %2851, %3015 ]
  %3085 = phi float [ %3080, %3024 ], [ %2852, %3015 ]
  %3086 = phi float [ %3060, %3024 ], [ %3017, %3015 ]
  %3087 = phi float [ %3061, %3024 ], [ %2853, %3015 ]
  %3088 = phi float [ %3062, %3024 ], [ %2854, %3015 ]
  %3089 = phi float [ %3063, %3024 ], [ %2855, %3015 ]
  %3090 = phi float [ %3043, %3024 ], [ %3018, %3015 ]
  %3091 = phi float [ %3044, %3024 ], [ %2856, %3015 ]
  %3092 = phi float [ %3045, %3024 ], [ %2857, %3015 ]
  %3093 = phi float [ %3046, %3024 ], [ %2858, %3015 ]
  %3094 = extractvalue %dx.types.CBufRet.f32 %2668, 3
  %3095 = fmul fast float %3094, %3090
  %3096 = fmul fast float %3094, %3086
  %3097 = fmul fast float %3094, %3082
  %3098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3099 = extractvalue %dx.types.CBufRet.f32 %3098, 3
  %3100 = fmul fast float %3095, %3099
  %3101 = fmul fast float %3096, %3099
  %3102 = fmul fast float %3097, %3099
  %3103 = fmul fast float %3091, 1.500000e+00
  %3104 = fmul fast float %3103, %3094
  %3105 = fmul fast float %3104, %3099
  %3106 = fmul fast float %3092, 1.500000e+00
  %3107 = fmul fast float %3106, %3094
  %3108 = fmul fast float %3107, %3099
  %3109 = fmul fast float %3093, 1.500000e+00
  %3110 = fmul fast float %3109, %3094
  %3111 = fmul fast float %3110, %3099
  %3112 = fmul fast float %3087, 1.500000e+00
  %3113 = fmul fast float %3112, %3094
  %3114 = fmul fast float %3113, %3099
  %3115 = fmul fast float %3088, 1.500000e+00
  %3116 = fmul fast float %3115, %3094
  %3117 = fmul fast float %3116, %3099
  %3118 = fmul fast float %3089, 1.500000e+00
  %3119 = fmul fast float %3118, %3094
  %3120 = fmul fast float %3119, %3099
  %3121 = fmul fast float %3083, 1.500000e+00
  %3122 = fmul fast float %3121, %3094
  %3123 = fmul fast float %3122, %3099
  %3124 = fmul fast float %3084, 1.500000e+00
  %3125 = fmul fast float %3124, %3094
  %3126 = fmul fast float %3125, %3099
  %3127 = fmul fast float %3085, 1.500000e+00
  %3128 = fmul fast float %3127, %3094
  %3129 = fmul fast float %3128, %3099
  %3130 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3100)  ; FMax(a,b)
  %3131 = call float @dx.op.dot3.f32(i32 55, float %3105, float %3108, float %3111, float %3105, float %3108, float %3111)  ; Dot3(ax,ay,az,bx,by,bz)
  %3132 = fcmp fast oeq float %3131, 0.000000e+00
  %3133 = fcmp fast oeq float %3130, 0.000000e+00
  %3134 = or i1 %3133, %3132
  br i1 %3134, label %3164, label %3135

; <label>:3135                                    ; preds = %3081
  %3136 = fsub fast float -0.000000e+00, %3111
  %3137 = fsub fast float -0.000000e+00, %3105
  %3138 = call float @dx.op.unary.f32(i32 24, float %3131)  ; Sqrt(value)
  %3139 = fdiv fast float %3138, %3130
  %3140 = fcmp fast ogt float %3139, 0x3FFB6F8900000000
  %3141 = select i1 %3140, float 0x3FFB6F8900000000, float %3139
  %3142 = fmul fast float %3141, 0x3FE8A23460000000
  %3143 = call float @dx.op.unary.f32(i32 7, float %3142)  ; Saturate(value)
  %3144 = call float @dx.op.binary.f32(i32 35, float %3141, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3145 = fmul fast float %3143, %3130
  %3146 = fmul fast float %3144, 0x3FF279A740000000
  %3147 = fadd fast float %3146, -1.000000e+00
  %3148 = call float @dx.op.dot3.f32(i32 55, float %3136, float %3137, float %3108, float %3136, float %3137, float %3108)  ; Dot3(ax,ay,az,bx,by,bz)
  %3149 = call float @dx.op.unary.f32(i32 25, float %3148)  ; Rsqrt(value)
  %3150 = fmul fast float %3149, %3136
  %3151 = fmul fast float %3149, %3137
  %3152 = fmul fast float %3149, %3108
  %3153 = fmul fast float %3147, %3147
  %3154 = fsub fast float 1.000000e+00, %3153
  %3155 = fmul fast float %3144, 0x40005F8BE0000000
  %3156 = fsub fast float 0x400C5BF8A0000000, %3155
  %3157 = fdiv fast float %3145, %3156
  %3158 = fmul fast float %3157, 0x3FEE31C3C0000000
  %3159 = fmul fast float %3158, %3154
  %3160 = fmul fast float %3144, 0x3FDACB7480000000
  %3161 = fadd fast float %3160, 0xBFD7347680000000
  %3162 = fmul fast float %3161, %3157
  %3163 = fmul fast float %3162, %3154
  br label %3164

; <label>:3164                                    ; preds = %3135, %3081
  %3165 = phi float [ %3150, %3135 ], [ 0.000000e+00, %3081 ]
  %3166 = phi float [ %3151, %3135 ], [ 0.000000e+00, %3081 ]
  %3167 = phi float [ %3152, %3135 ], [ 0.000000e+00, %3081 ]
  %3168 = phi float [ %3159, %3135 ], [ 0.000000e+00, %3081 ]
  %3169 = phi float [ %3163, %3135 ], [ 0.000000e+00, %3081 ]
  %3170 = call float @dx.op.dot3.f32(i32 55, float %3165, float %3166, float %3167, float %2116, float %2117, float %2118)  ; Dot3(ax,ay,az,bx,by,bz)
  %3171 = fmul fast float %3170, %3170
  %3172 = fmul fast float %3171, 0x3FEE471020000000
  %3173 = fadd fast float %3172, 0xBFD42F6020000000
  %3174 = fmul fast float %3130, 0x3FD20DD760000000
  %3175 = fmul fast float %3173, %3169
  %3176 = fmul fast float %3168, 0x3FDF454380000000
  %3177 = fmul fast float %3176, %3170
  %3178 = fadd fast float %3177, %3174
  %3179 = fadd fast float %3178, %3175
  %3180 = call float @dx.op.dot3.f32(i32 55, float %3165, float %3166, float %3167, float %2130, float %2131, float %2132)  ; Dot3(ax,ay,az,bx,by,bz)
  %3181 = fmul fast float %3180, 0x3FDF454380000000
  %3182 = fmul fast float %3180, %3180
  %3183 = fmul fast float %3182, 0x3FEE471020000000
  %3184 = fadd fast float %3183, 0xBFD42F6020000000
  %3185 = call float @dx.op.dot3.f32(i32 55, float %3130, float %3168, float %3169, float 0x3FD20DD760000000, float %3181, float %3184)  ; Dot3(ax,ay,az,bx,by,bz)
  %3186 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3101)  ; FMax(a,b)
  %3187 = call float @dx.op.dot3.f32(i32 55, float %3114, float %3117, float %3120, float %3114, float %3117, float %3120)  ; Dot3(ax,ay,az,bx,by,bz)
  %3188 = fcmp fast oeq float %3187, 0.000000e+00
  %3189 = fcmp fast oeq float %3186, 0.000000e+00
  %3190 = or i1 %3189, %3188
  br i1 %3190, label %3220, label %3191

; <label>:3191                                    ; preds = %3164
  %3192 = fsub fast float -0.000000e+00, %3120
  %3193 = fsub fast float -0.000000e+00, %3114
  %3194 = call float @dx.op.unary.f32(i32 24, float %3187)  ; Sqrt(value)
  %3195 = fdiv fast float %3194, %3186
  %3196 = fcmp fast ogt float %3195, 0x3FFB6F8900000000
  %3197 = select i1 %3196, float 0x3FFB6F8900000000, float %3195
  %3198 = fmul fast float %3197, 0x3FE8A23460000000
  %3199 = call float @dx.op.unary.f32(i32 7, float %3198)  ; Saturate(value)
  %3200 = call float @dx.op.binary.f32(i32 35, float %3197, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3201 = fmul fast float %3199, %3186
  %3202 = fmul fast float %3200, 0x3FF279A740000000
  %3203 = fadd fast float %3202, -1.000000e+00
  %3204 = call float @dx.op.dot3.f32(i32 55, float %3192, float %3193, float %3117, float %3192, float %3193, float %3117)  ; Dot3(ax,ay,az,bx,by,bz)
  %3205 = call float @dx.op.unary.f32(i32 25, float %3204)  ; Rsqrt(value)
  %3206 = fmul fast float %3205, %3192
  %3207 = fmul fast float %3205, %3193
  %3208 = fmul fast float %3205, %3117
  %3209 = fmul fast float %3203, %3203
  %3210 = fsub fast float 1.000000e+00, %3209
  %3211 = fmul fast float %3200, 0x40005F8BE0000000
  %3212 = fsub fast float 0x400C5BF8A0000000, %3211
  %3213 = fdiv fast float %3201, %3212
  %3214 = fmul fast float %3213, 0x3FEE31C3C0000000
  %3215 = fmul fast float %3214, %3210
  %3216 = fmul fast float %3200, 0x3FDACB7480000000
  %3217 = fadd fast float %3216, 0xBFD7347680000000
  %3218 = fmul fast float %3217, %3213
  %3219 = fmul fast float %3218, %3210
  br label %3220

; <label>:3220                                    ; preds = %3191, %3164
  %3221 = phi float [ %3206, %3191 ], [ 0.000000e+00, %3164 ]
  %3222 = phi float [ %3207, %3191 ], [ 0.000000e+00, %3164 ]
  %3223 = phi float [ %3208, %3191 ], [ 0.000000e+00, %3164 ]
  %3224 = phi float [ %3215, %3191 ], [ 0.000000e+00, %3164 ]
  %3225 = phi float [ %3219, %3191 ], [ 0.000000e+00, %3164 ]
  %3226 = call float @dx.op.dot3.f32(i32 55, float %3221, float %3222, float %3223, float %2116, float %2117, float %2118)  ; Dot3(ax,ay,az,bx,by,bz)
  %3227 = fmul fast float %3226, %3226
  %3228 = fmul fast float %3227, 0x3FEE471020000000
  %3229 = fadd fast float %3228, 0xBFD42F6020000000
  %3230 = fmul fast float %3186, 0x3FD20DD760000000
  %3231 = fmul fast float %3229, %3225
  %3232 = fmul fast float %3224, 0x3FDF454380000000
  %3233 = fmul fast float %3232, %3226
  %3234 = fadd fast float %3233, %3230
  %3235 = fadd fast float %3234, %3231
  %3236 = call float @dx.op.dot3.f32(i32 55, float %3221, float %3222, float %3223, float %2130, float %2131, float %2132)  ; Dot3(ax,ay,az,bx,by,bz)
  %3237 = fmul fast float %3236, 0x3FDF454380000000
  %3238 = fmul fast float %3236, %3236
  %3239 = fmul fast float %3238, 0x3FEE471020000000
  %3240 = fadd fast float %3239, 0xBFD42F6020000000
  %3241 = call float @dx.op.dot3.f32(i32 55, float %3186, float %3224, float %3225, float 0x3FD20DD760000000, float %3237, float %3240)  ; Dot3(ax,ay,az,bx,by,bz)
  %3242 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3102)  ; FMax(a,b)
  %3243 = call float @dx.op.dot3.f32(i32 55, float %3123, float %3126, float %3129, float %3123, float %3126, float %3129)  ; Dot3(ax,ay,az,bx,by,bz)
  %3244 = fcmp fast oeq float %3243, 0.000000e+00
  %3245 = fcmp fast oeq float %3242, 0.000000e+00
  %3246 = or i1 %3245, %3244
  br i1 %3246, label %3276, label %3247

; <label>:3247                                    ; preds = %3220
  %3248 = fsub fast float -0.000000e+00, %3129
  %3249 = fsub fast float -0.000000e+00, %3123
  %3250 = call float @dx.op.unary.f32(i32 24, float %3243)  ; Sqrt(value)
  %3251 = fdiv fast float %3250, %3242
  %3252 = fcmp fast ogt float %3251, 0x3FFB6F8900000000
  %3253 = select i1 %3252, float 0x3FFB6F8900000000, float %3251
  %3254 = fmul fast float %3253, 0x3FE8A23460000000
  %3255 = call float @dx.op.unary.f32(i32 7, float %3254)  ; Saturate(value)
  %3256 = call float @dx.op.binary.f32(i32 35, float %3253, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3257 = fmul fast float %3255, %3242
  %3258 = fmul fast float %3256, 0x3FF279A740000000
  %3259 = fadd fast float %3258, -1.000000e+00
  %3260 = call float @dx.op.dot3.f32(i32 55, float %3248, float %3249, float %3126, float %3248, float %3249, float %3126)  ; Dot3(ax,ay,az,bx,by,bz)
  %3261 = call float @dx.op.unary.f32(i32 25, float %3260)  ; Rsqrt(value)
  %3262 = fmul fast float %3261, %3248
  %3263 = fmul fast float %3261, %3249
  %3264 = fmul fast float %3261, %3126
  %3265 = fmul fast float %3259, %3259
  %3266 = fsub fast float 1.000000e+00, %3265
  %3267 = fmul fast float %3256, 0x40005F8BE0000000
  %3268 = fsub fast float 0x400C5BF8A0000000, %3267
  %3269 = fdiv fast float %3257, %3268
  %3270 = fmul fast float %3269, 0x3FEE31C3C0000000
  %3271 = fmul fast float %3270, %3266
  %3272 = fmul fast float %3256, 0x3FDACB7480000000
  %3273 = fadd fast float %3272, 0xBFD7347680000000
  %3274 = fmul fast float %3273, %3269
  %3275 = fmul fast float %3274, %3266
  br label %3276

; <label>:3276                                    ; preds = %3247, %3220
  %3277 = phi float [ %3262, %3247 ], [ 0.000000e+00, %3220 ]
  %3278 = phi float [ %3263, %3247 ], [ 0.000000e+00, %3220 ]
  %3279 = phi float [ %3264, %3247 ], [ 0.000000e+00, %3220 ]
  %3280 = phi float [ %3271, %3247 ], [ 0.000000e+00, %3220 ]
  %3281 = phi float [ %3275, %3247 ], [ 0.000000e+00, %3220 ]
  %3282 = call float @dx.op.dot3.f32(i32 55, float %3277, float %3278, float %3279, float %2116, float %2117, float %2118)  ; Dot3(ax,ay,az,bx,by,bz)
  %3283 = fmul fast float %3282, %3282
  %3284 = fmul fast float %3283, 0x3FEE471020000000
  %3285 = fadd fast float %3284, 0xBFD42F6020000000
  %3286 = fmul fast float %3242, 0x3FD20DD760000000
  %3287 = fmul fast float %3285, %3281
  %3288 = fmul fast float %3280, 0x3FDF454380000000
  %3289 = fmul fast float %3288, %3282
  %3290 = fadd fast float %3289, %3286
  %3291 = fadd fast float %3290, %3287
  %3292 = call float @dx.op.dot3.f32(i32 55, float %3277, float %3278, float %3279, float %2130, float %2131, float %2132)  ; Dot3(ax,ay,az,bx,by,bz)
  %3293 = fmul fast float %3292, 0x3FDF454380000000
  %3294 = fmul fast float %3292, %3292
  %3295 = fmul fast float %3294, 0x3FEE471020000000
  %3296 = fadd fast float %3295, 0xBFD42F6020000000
  %3297 = call float @dx.op.dot3.f32(i32 55, float %3242, float %3280, float %3281, float 0x3FD20DD760000000, float %3293, float %3296)  ; Dot3(ax,ay,az,bx,by,bz)
  %3298 = call float @dx.op.binary.f32(i32 35, float %3179, float 0.000000e+00)  ; FMax(a,b)
  %3299 = call float @dx.op.binary.f32(i32 35, float %3235, float 0.000000e+00)  ; FMax(a,b)
  %3300 = call float @dx.op.binary.f32(i32 35, float %3291, float 0.000000e+00)  ; FMax(a,b)
  %3301 = call float @dx.op.binary.f32(i32 35, float %3185, float 0.000000e+00)  ; FMax(a,b)
  %3302 = call float @dx.op.binary.f32(i32 35, float %3241, float 0.000000e+00)  ; FMax(a,b)
  %3303 = call float @dx.op.binary.f32(i32 35, float %3297, float 0.000000e+00)  ; FMax(a,b)
  %3304 = fsub fast float %2500, %3298
  %3305 = fsub fast float %2501, %3299
  %3306 = fsub fast float %2502, %3300
  %3307 = fmul fast float %3304, %2181
  %3308 = fmul fast float %3305, %2181
  %3309 = fmul fast float %3306, %2181
  %3310 = fadd fast float %3307, %3298
  %3311 = fadd fast float %3308, %3299
  %3312 = fadd fast float %3309, %3300
  %3313 = fsub fast float %2497, %3301
  %3314 = fsub fast float %2498, %3302
  %3315 = fsub fast float %2499, %3303
  %3316 = fmul fast float %3313, %2181
  %3317 = fmul fast float %3314, %2181
  %3318 = fmul fast float %3315, %2181
  %3319 = fadd fast float %3316, %3301
  %3320 = fadd fast float %3317, %3302
  %3321 = fadd fast float %3318, %3303
  br label %3322

; <label>:3322                                    ; preds = %3276, %2496
  %3323 = phi float [ %3319, %3276 ], [ %2497, %2496 ]
  %3324 = phi float [ %3320, %3276 ], [ %2498, %2496 ]
  %3325 = phi float [ %3321, %3276 ], [ %2499, %2496 ]
  %3326 = phi float [ %3310, %3276 ], [ %2500, %2496 ]
  %3327 = phi float [ %3311, %3276 ], [ %2501, %2496 ]
  %3328 = phi float [ %3312, %3276 ], [ %2502, %2496 ]
  %3329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3330 = extractvalue %dx.types.CBufRet.f32 %3329, 0
  %3331 = call float @dx.op.binary.f32(i32 36, float %2113, float %3330)  ; FMin(a,b)
  %3332 = fsub fast float 1.000000e+00, %2133
  %3333 = fmul fast float %3331, %3332
  %3334 = fsub fast float 1.000000e+00, %3333
  %3335 = bitcast float %3334 to i32
  %3336 = sub nsw i32 2129859010, %3335
  %3337 = bitcast i32 %3336 to float
  %3338 = call float @dx.op.binary.f32(i32 36, float %2114, float %3330)  ; FMin(a,b)
  %3339 = fmul fast float %3338, %3332
  %3340 = fsub fast float 1.000000e+00, %3339
  %3341 = bitcast float %3340 to i32
  %3342 = sub nsw i32 2129859010, %3341
  %3343 = bitcast i32 %3342 to float
  %3344 = call float @dx.op.binary.f32(i32 36, float %2115, float %3330)  ; FMin(a,b)
  %3345 = fmul fast float %3344, %3332
  %3346 = fsub fast float 1.000000e+00, %3345
  %3347 = bitcast float %3346 to i32
  %3348 = sub nsw i32 2129859010, %3347
  %3349 = bitcast i32 %3348 to float
  %3350 = fmul fast float %3326, %2133
  %3351 = fmul fast float %3350, %3337
  %3352 = fmul fast float %3327, %2133
  %3353 = fmul fast float %3352, %3343
  %3354 = fmul fast float %3328, %2133
  %3355 = fmul fast float %3354, %3349
  %3356 = call float @dx.op.binary.f32(i32 36, float %2110, float %3330)  ; FMin(a,b)
  %3357 = fmul fast float %3356, %3332
  %3358 = fsub fast float 1.000000e+00, %3357
  %3359 = bitcast float %3358 to i32
  %3360 = sub nsw i32 2129859010, %3359
  %3361 = bitcast i32 %3360 to float
  %3362 = call float @dx.op.binary.f32(i32 36, float %2111, float %3330)  ; FMin(a,b)
  %3363 = fmul fast float %3362, %3332
  %3364 = fsub fast float 1.000000e+00, %3363
  %3365 = bitcast float %3364 to i32
  %3366 = sub nsw i32 2129859010, %3365
  %3367 = bitcast i32 %3366 to float
  %3368 = call float @dx.op.binary.f32(i32 36, float %2122, float %3330)  ; FMin(a,b)
  %3369 = fmul fast float %3368, %3332
  %3370 = fsub fast float 1.000000e+00, %3369
  %3371 = bitcast float %3370 to i32
  %3372 = sub nsw i32 2129859010, %3371
  %3373 = bitcast i32 %3372 to float
  %3374 = fmul fast float %3323, %2133
  %3375 = fmul fast float %3374, %3361
  %3376 = fmul fast float %3324, %2133
  %3377 = fmul fast float %3376, %3367
  %3378 = fmul fast float %3325, %2133
  %3379 = fmul fast float %3378, %3373
  %3380 = call float @dx.op.dot3.f32(i32 55, float %3351, float %3353, float %3355, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3381 = select i1 %239, float 0.000000e+00, float %3351
  %3382 = select i1 %239, float %3380, float %3353
  %3383 = select i1 %239, float 0.000000e+00, float %3355
  %3384 = call float @dx.op.dot3.f32(i32 55, float %3375, float %3377, float %3379, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3385 = select i1 %239, float 0.000000e+00, float %3375
  %3386 = select i1 %239, float %3384, float %3377
  %3387 = select i1 %239, float 0.000000e+00, float %3379
  %3388 = fmul fast float %2124, 9.843750e-01
  %3389 = fmul fast float %2119, 9.843750e-01
  %3390 = fadd fast float %3388, 7.812500e-03
  %3391 = fadd fast float %3389, 7.812500e-03
  %3392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %3390, float %3391, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3393 = extractvalue %dx.types.ResRet.f32 %3392, 2
  %3394 = extractvalue %dx.types.ResRet.f32 %3392, 3
  %3395 = fmul fast float %3393, %2110
  %3396 = fmul fast float %3393, %2111
  %3397 = fmul fast float %3393, %2122
  %3398 = fadd fast float %3395, %3394
  %3399 = fadd fast float %3396, %3394
  %3400 = fadd fast float %3397, %3394
  %3401 = fcmp fast ogt float %1487, 0.000000e+00
  br i1 %3401, label %3402, label %3428

; <label>:3402                                    ; preds = %3322
  %3403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1487, float %2124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3404 = extractvalue %dx.types.ResRet.f32 %3403, 0
  %3405 = extractvalue %dx.types.ResRet.f32 %3403, 1
  %3406 = extractvalue %dx.types.ResRet.f32 %3403, 2
  %3407 = fadd fast float %3404, -5.000000e-01
  %3408 = fadd fast float %3405, -5.000000e-01
  %3409 = fadd fast float %3406, -5.000000e-01
  %3410 = fsub fast float 1.000000e+00, %2110
  %3411 = fsub fast float 1.000000e+00, %2111
  %3412 = fsub fast float 1.000000e+00, %2122
  %3413 = fmul fast float %2110, 4.000000e+00
  %3414 = fmul fast float %3413, %3410
  %3415 = fmul fast float %3414, %3407
  %3416 = fmul fast float %2111, 4.000000e+00
  %3417 = fmul fast float %3416, %3411
  %3418 = fmul fast float %3417, %3408
  %3419 = fmul fast float %2122, 4.000000e+00
  %3420 = fmul fast float %3419, %3412
  %3421 = fmul fast float %3420, %3409
  %3422 = fadd fast float %3415, %3398
  %3423 = fadd fast float %3418, %3399
  %3424 = fadd fast float %3421, %3400
  %3425 = call float @dx.op.unary.f32(i32 7, float %3422)  ; Saturate(value)
  %3426 = call float @dx.op.unary.f32(i32 7, float %3423)  ; Saturate(value)
  %3427 = call float @dx.op.unary.f32(i32 7, float %3424)  ; Saturate(value)
  br label %3428

; <label>:3428                                    ; preds = %3402, %3322
  %3429 = phi float [ %3425, %3402 ], [ %3398, %3322 ]
  %3430 = phi float [ %3426, %3402 ], [ %3399, %3322 ]
  %3431 = phi float [ %3427, %3402 ], [ %3400, %3322 ]
  %3432 = call float @dx.op.binary.f32(i32 35, float %3430, float %3431)  ; FMax(a,b)
  %3433 = call float @dx.op.binary.f32(i32 35, float %3429, float %3432)  ; FMax(a,b)
  %3434 = fsub fast float 1.000000e+00, %3433
  %3435 = fmul fast float %3434, %3381
  %3436 = fmul fast float %3434, %3382
  %3437 = fmul fast float %3434, %3383
  %3438 = call float @dx.op.dot3.f32(i32 55, float %2113, float %2114, float %2115, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3439 = fcmp fast ogt float %3438, 0x3E7FF19E20000000
  %3440 = fdiv fast float 1.000000e+00, %3438
  %3441 = select i1 %3439, float %3440, float 0.000000e+00
  %3442 = fmul fast float %3441, %2113
  %3443 = fmul fast float %3441, %2114
  %3444 = fmul fast float %3441, %2115
  %3445 = fadd fast float %3442, -1.000000e+00
  %3446 = fadd fast float %3443, -1.000000e+00
  %3447 = fadd fast float %3444, -1.000000e+00
  %3448 = fmul fast float %3445, 5.000000e-01
  %3449 = fmul fast float %3446, 5.000000e-01
  %3450 = fmul fast float %3447, 5.000000e-01
  %3451 = fadd fast float %3448, 1.000000e+00
  %3452 = fadd fast float %3449, 1.000000e+00
  %3453 = fadd fast float %3450, 1.000000e+00
  %3454 = fmul fast float %3429, %3385
  %3455 = fmul fast float %3430, %3386
  %3456 = fmul fast float %3431, %3387
  %3457 = fsub fast float 1.000000e+00, %2124
  %3458 = bitcast float %3457 to i32
  %3459 = sitofp i32 %3458 to float
  %3460 = fmul fast float %3459, 5.000000e+00
  %3461 = fadd fast float %3460, 0xC1EFBF8940000000
  %3462 = fptosi float %3461 to i32
  %3463 = bitcast i32 %3462 to float
  %3464 = fmul fast float %3463, %1486
  %3465 = fmul fast float %3381, %3464
  %3466 = fmul fast float %3465, %3434
  %3467 = fmul fast float %3466, %3451
  %3468 = fmul fast float %3382, %3464
  %3469 = fmul fast float %3468, %3434
  %3470 = fmul fast float %3469, %3452
  %3471 = fmul fast float %3383, %3464
  %3472 = fmul fast float %3471, %3434
  %3473 = fmul fast float %3472, %3453
  %3474 = fmul fast float %3435, %1507
  %3475 = fmul fast float %3436, %1507
  %3476 = fmul fast float %3437, %1507
  %3477 = fadd fast float %3454, %1488
  %3478 = fadd fast float %3477, %3467
  %3479 = fmul fast float %3478, %1507
  %3480 = fadd fast float %3455, %1489
  %3481 = fadd fast float %3480, %3470
  %3482 = fmul fast float %3481, %1507
  %3483 = fadd fast float %3456, %1490
  %3484 = fadd fast float %3483, %3473
  %3485 = fmul fast float %3484, %1507
  %3486 = bitcast i32 %2136 to float
  %3487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3488 = extractvalue %dx.types.CBufRet.f32 %3487, 3
  %3489 = fcmp fast oeq float %3488, 0.000000e+00
  br i1 %3489, label %4553, label %3490

; <label>:3490                                    ; preds = %3428
  %3491 = extractvalue %dx.types.CBufRet.f32 %3487, 0
  %3492 = extractvalue %dx.types.CBufRet.f32 %3487, 1
  %3493 = extractvalue %dx.types.CBufRet.f32 %3487, 2
  %3494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3495 = extractvalue %dx.types.CBufRet.f32 %3494, 0
  %3496 = extractvalue %dx.types.CBufRet.f32 %3494, 1
  %3497 = extractvalue %dx.types.CBufRet.f32 %3494, 2
  %3498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3499 = extractvalue %dx.types.CBufRet.f32 %3498, 0
  %3500 = extractvalue %dx.types.CBufRet.f32 %3498, 1
  %3501 = call float @dx.op.dot3.f32(i32 55, float %3495, float %3496, float %3497, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3502 = select i1 %239, float %3499, float %3495
  %3503 = select i1 %239, float %3501, float %3496
  %3504 = select i1 %239, float %3500, float %3497
  %3505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3506 = extractvalue %dx.types.CBufRet.f32 %3505, 2
  %3507 = fmul fast float %3506, %96
  %3508 = fmul fast float %3506, %97
  %3509 = fmul fast float %3506, %98
  %3510 = fadd fast float %3507, %148
  %3511 = fadd fast float %3508, %149
  %3512 = fadd fast float %3509, %150
  %3513 = fcmp fast olt float %3488, 0.000000e+00
  br i1 %3513, label %4135, label %3514

; <label>:3514                                    ; preds = %3490
  %3515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3516 = extractvalue %dx.types.CBufRet.f32 %3515, 0
  %3517 = extractvalue %dx.types.CBufRet.f32 %3515, 1
  %3518 = extractvalue %dx.types.CBufRet.f32 %3515, 2
  %3519 = extractvalue %dx.types.CBufRet.f32 %3515, 3
  %3520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3521 = extractvalue %dx.types.CBufRet.f32 %3520, 0
  %3522 = extractvalue %dx.types.CBufRet.f32 %3520, 1
  %3523 = extractvalue %dx.types.CBufRet.f32 %3520, 2
  %3524 = extractvalue %dx.types.CBufRet.f32 %3520, 3
  %3525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3526 = extractvalue %dx.types.CBufRet.f32 %3525, 0
  %3527 = extractvalue %dx.types.CBufRet.f32 %3525, 1
  %3528 = extractvalue %dx.types.CBufRet.f32 %3525, 2
  %3529 = extractvalue %dx.types.CBufRet.f32 %3525, 3
  %3530 = fmul fast float %3516, %3510
  %3531 = call float @dx.op.tertiary.f32(i32 46, float %3511, float %3517, float %3530)  ; FMad(a,b,c)
  %3532 = call float @dx.op.tertiary.f32(i32 46, float %3512, float %3518, float %3531)  ; FMad(a,b,c)
  %3533 = fadd fast float %3532, %3519
  %3534 = fmul fast float %3521, %3510
  %3535 = call float @dx.op.tertiary.f32(i32 46, float %3511, float %3522, float %3534)  ; FMad(a,b,c)
  %3536 = call float @dx.op.tertiary.f32(i32 46, float %3512, float %3523, float %3535)  ; FMad(a,b,c)
  %3537 = fadd fast float %3536, %3524
  %3538 = fmul fast float %3526, %3510
  %3539 = call float @dx.op.tertiary.f32(i32 46, float %3511, float %3527, float %3538)  ; FMad(a,b,c)
  %3540 = call float @dx.op.tertiary.f32(i32 46, float %3512, float %3528, float %3539)  ; FMad(a,b,c)
  %3541 = fadd fast float %3540, %3529
  %3542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3543 = extractvalue %dx.types.CBufRet.f32 %3542, 0
  %3544 = extractvalue %dx.types.CBufRet.f32 %3542, 1
  %3545 = extractvalue %dx.types.CBufRet.f32 %3542, 3
  %3546 = fmul fast float %3545, %3533
  %3547 = fmul fast float %3545, %3537
  %3548 = fadd fast float %3546, %3543
  %3549 = fadd fast float %3547, %3544
  %3550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3551 = extractvalue %dx.types.CBufRet.f32 %3550, 0
  %3552 = extractvalue %dx.types.CBufRet.f32 %3550, 1
  %3553 = extractvalue %dx.types.CBufRet.f32 %3550, 3
  %3554 = fmul fast float %3553, %3533
  %3555 = fmul fast float %3553, %3537
  %3556 = fadd fast float %3554, %3551
  %3557 = fadd fast float %3555, %3552
  %3558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3559 = extractvalue %dx.types.CBufRet.f32 %3558, 1
  %3560 = fsub fast float %3559, %3541
  %3561 = extractvalue %dx.types.CBufRet.f32 %3558, 2
  %3562 = fmul fast float %3560, %3561
  %3563 = fsub fast float 1.000000e+00, %3562
  %3564 = call float @dx.op.unary.f32(i32 7, float %3563)  ; Saturate(value)
  %3565 = extractvalue %dx.types.CBufRet.f32 %3550, 2
  %3566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3567 = extractvalue %dx.types.CBufRet.f32 %3566, 2
  %3568 = fadd fast float %3567, %3565
  %3569 = fcmp fast ogt float %3568, 0.000000e+00
  br i1 %3569, label %3570, label %3594

; <label>:3570                                    ; preds = %3514
  %3571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3572 = extractvalue %dx.types.CBufRet.f32 %3571, 0
  %3573 = extractvalue %dx.types.CBufRet.f32 %3571, 1
  %3574 = fsub fast float %3556, %3572
  %3575 = fsub fast float %3557, %3573
  %3576 = fcmp fast olt float %3574, 0.000000e+00
  %3577 = fcmp fast olt float %3575, 0.000000e+00
  %3578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3579 = extractvalue %dx.types.CBufRet.f32 %3578, 0
  %3580 = extractvalue %dx.types.CBufRet.f32 %3578, 1
  %3581 = extractvalue %dx.types.CBufRet.f32 %3578, 2
  %3582 = extractvalue %dx.types.CBufRet.f32 %3578, 3
  %3583 = select i1 %3576, float %3579, float %3581
  %3584 = select i1 %3577, float %3580, float %3582
  %3585 = fmul fast float %3583, %3574
  %3586 = fmul fast float %3584, %3575
  %3587 = call float @dx.op.unary.f32(i32 6, float %3585)  ; FAbs(value)
  %3588 = call float @dx.op.unary.f32(i32 6, float %3586)  ; FAbs(value)
  %3589 = extractvalue %dx.types.CBufRet.f32 %3505, 0
  %3590 = call float @dx.op.binary.f32(i32 35, float %3587, float %3588)  ; FMax(a,b)
  %3591 = fsub fast float %3589, %3590
  %3592 = call float @dx.op.unary.f32(i32 7, float %3591)  ; Saturate(value)
  %3593 = fmul fast float %3592, %3564
  br label %3594

; <label>:3594                                    ; preds = %3570, %3514
  %3595 = phi float [ %3593, %3570 ], [ 0.000000e+00, %3514 ]
  %3596 = extractvalue %dx.types.CBufRet.f32 %3542, 2
  %3597 = extractvalue %dx.types.CBufRet.f32 %3566, 1
  %3598 = fadd fast float %3597, %3596
  %3599 = fcmp fast ogt float %3598, 0.000000e+00
  %3600 = extractvalue %dx.types.CBufRet.f32 %3505, 0
  br i1 %3599, label %3601, label %3624

; <label>:3601                                    ; preds = %3594
  %3602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3603 = extractvalue %dx.types.CBufRet.f32 %3602, 0
  %3604 = extractvalue %dx.types.CBufRet.f32 %3602, 1
  %3605 = fsub fast float %3548, %3603
  %3606 = fsub fast float %3549, %3604
  %3607 = fcmp fast olt float %3605, 0.000000e+00
  %3608 = fcmp fast olt float %3606, 0.000000e+00
  %3609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3610 = extractvalue %dx.types.CBufRet.f32 %3609, 0
  %3611 = extractvalue %dx.types.CBufRet.f32 %3609, 1
  %3612 = extractvalue %dx.types.CBufRet.f32 %3609, 2
  %3613 = extractvalue %dx.types.CBufRet.f32 %3609, 3
  %3614 = select i1 %3607, float %3610, float %3612
  %3615 = select i1 %3608, float %3611, float %3613
  %3616 = fmul fast float %3614, %3605
  %3617 = fmul fast float %3615, %3606
  %3618 = call float @dx.op.unary.f32(i32 6, float %3616)  ; FAbs(value)
  %3619 = call float @dx.op.unary.f32(i32 6, float %3617)  ; FAbs(value)
  %3620 = call float @dx.op.binary.f32(i32 35, float %3618, float %3619)  ; FMax(a,b)
  %3621 = fsub fast float %3600, %3620
  %3622 = call float @dx.op.unary.f32(i32 7, float %3621)  ; Saturate(value)
  %3623 = fmul fast float %3622, %3564
  br label %3624

; <label>:3624                                    ; preds = %3601, %3594
  %3625 = phi float [ %3623, %3601 ], [ 0.000000e+00, %3594 ]
  %3626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3627 = extractvalue %dx.types.CBufRet.f32 %3626, 1
  %3628 = call float @dx.op.unary.f32(i32 7, float %3627)  ; Saturate(value)
  %3629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3630 = extractvalue %dx.types.CBufRet.f32 %3629, 0
  %3631 = extractvalue %dx.types.CBufRet.f32 %3629, 1
  %3632 = fsub fast float %3533, %3630
  %3633 = fsub fast float %3537, %3631
  %3634 = fcmp fast olt float %3632, 0.000000e+00
  %3635 = fcmp fast olt float %3633, 0.000000e+00
  %3636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3637 = extractvalue %dx.types.CBufRet.f32 %3636, 0
  %3638 = extractvalue %dx.types.CBufRet.f32 %3636, 1
  %3639 = extractvalue %dx.types.CBufRet.f32 %3636, 2
  %3640 = extractvalue %dx.types.CBufRet.f32 %3636, 3
  %3641 = select i1 %3634, float %3637, float %3639
  %3642 = select i1 %3635, float %3638, float %3640
  %3643 = fmul fast float %3641, %3632
  %3644 = fmul fast float %3642, %3633
  %3645 = call float @dx.op.unary.f32(i32 6, float %3643)  ; FAbs(value)
  %3646 = call float @dx.op.unary.f32(i32 6, float %3644)  ; FAbs(value)
  %3647 = call float @dx.op.binary.f32(i32 35, float %3645, float %3646)  ; FMax(a,b)
  %3648 = fsub fast float %3600, %3647
  %3649 = call float @dx.op.unary.f32(i32 7, float %3648)  ; Saturate(value)
  %3650 = call float @dx.op.binary.f32(i32 36, float %3649, float %3628)  ; FMin(a,b)
  %3651 = fmul fast float %3650, %3564
  %3652 = fsub fast float %3625, %3651
  %3653 = fsub fast float %3595, %3625
  %3654 = fsub fast float %3653, %3651
  %3655 = call float @dx.op.binary.f32(i32 35, float %3625, float %3595)  ; FMax(a,b)
  %3656 = call float @dx.op.binary.f32(i32 35, float %3651, float %3655)  ; FMax(a,b)
  %3657 = fcmp fast olt float %3656, 1.000000e+00
  br i1 %3657, label %3658, label %4056, !dx.controlflow.hints !109

; <label>:3658                                    ; preds = %3624
  %3659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3660 = extractvalue %dx.types.CBufRet.f32 %3659, 0
  %3661 = fcmp fast une float %3660, 0.000000e+00
  br i1 %3661, label %3662, label %4056, !dx.controlflow.hints !110

; <label>:3662                                    ; preds = %3658
  %3663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3664 = extractvalue %dx.types.CBufRet.f32 %3663, 0
  %3665 = extractvalue %dx.types.CBufRet.f32 %3663, 1
  %3666 = extractvalue %dx.types.CBufRet.f32 %3663, 2
  %3667 = extractvalue %dx.types.CBufRet.f32 %3663, 3
  %3668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3669 = extractvalue %dx.types.CBufRet.f32 %3668, 0
  %3670 = extractvalue %dx.types.CBufRet.f32 %3668, 1
  %3671 = extractvalue %dx.types.CBufRet.f32 %3668, 2
  %3672 = extractvalue %dx.types.CBufRet.f32 %3668, 3
  %3673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3674 = extractvalue %dx.types.CBufRet.f32 %3673, 0
  %3675 = extractvalue %dx.types.CBufRet.f32 %3673, 1
  %3676 = extractvalue %dx.types.CBufRet.f32 %3673, 2
  %3677 = extractvalue %dx.types.CBufRet.f32 %3673, 3
  %3678 = fmul fast float %3664, %3510
  %3679 = call float @dx.op.tertiary.f32(i32 46, float %3511, float %3665, float %3678)  ; FMad(a,b,c)
  %3680 = call float @dx.op.tertiary.f32(i32 46, float %3512, float %3666, float %3679)  ; FMad(a,b,c)
  %3681 = fadd fast float %3680, %3667
  %3682 = fmul fast float %3669, %3510
  %3683 = call float @dx.op.tertiary.f32(i32 46, float %3511, float %3670, float %3682)  ; FMad(a,b,c)
  %3684 = call float @dx.op.tertiary.f32(i32 46, float %3512, float %3671, float %3683)  ; FMad(a,b,c)
  %3685 = fadd fast float %3684, %3672
  %3686 = fmul fast float %3674, %3510
  %3687 = call float @dx.op.tertiary.f32(i32 46, float %3511, float %3675, float %3686)  ; FMad(a,b,c)
  %3688 = call float @dx.op.tertiary.f32(i32 46, float %3512, float %3676, float %3687)  ; FMad(a,b,c)
  %3689 = fadd fast float %3688, %3677
  %3690 = fcmp fast oge float %3681, 1.000000e+00
  %3691 = fcmp fast oge float %3685, 1.000000e+00
  %3692 = or i1 %3690, %3691
  %3693 = fcmp fast olt float %3681, 0.000000e+00
  %3694 = fcmp fast olt float %3685, 0.000000e+00
  %3695 = or i1 %3693, %3694
  %3696 = or i1 %3692, %3695
  br i1 %3696, label %4056, label %3697, !dx.controlflow.hints !111

; <label>:3697                                    ; preds = %3662
  %3698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3699 = extractvalue %dx.types.CBufRet.f32 %3698, 0
  %3700 = extractvalue %dx.types.CBufRet.f32 %3698, 1
  %3701 = extractvalue %dx.types.CBufRet.f32 %3698, 2
  %3702 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3703 = extractvalue %dx.types.CBufRet.i32 %3702, 2
  %3704 = uitofp i32 %3703 to float
  %3705 = extractvalue %dx.types.CBufRet.i32 %3702, 3
  %3706 = uitofp i32 %3705 to float
  %3707 = extractvalue %dx.types.CBufRet.f32 %3698, 3
  %3708 = fmul fast float %3707, 2.000000e+00
  %3709 = fsub fast float %3681, %3699
  %3710 = fsub fast float %3685, %3700
  %3711 = fmul fast float %3708, %3709
  %3712 = fmul fast float %3708, %3710
  %3713 = fdiv fast float 1.000000e+00, %3493
  %3714 = fmul fast float %3712, %3713
  %3715 = call float @dx.op.unary.f32(i32 6, float %3714)  ; FAbs(value)
  %3716 = fmul fast float %3701, %3512
  %3717 = fmul fast float %3716, %3708
  %3718 = call float @dx.op.unary.f32(i32 6, float %3717)  ; FAbs(value)
  %3719 = call float @dx.op.unary.f32(i32 6, float %3711)  ; FAbs(value)
  %3720 = call float @dx.op.binary.f32(i32 35, float %3718, float %3715)  ; FMax(a,b)
  %3721 = call float @dx.op.binary.f32(i32 35, float %3719, float %3720)  ; FMax(a,b)
  %3722 = fmul fast float %3721, 2.000000e+00
  %3723 = call float @dx.op.unary.f32(i32 23, float %3722)  ; Log(value)
  %3724 = call float @dx.op.binary.f32(i32 35, float %3723, float %3704)  ; FMax(a,b)
  %3725 = call float @dx.op.unary.f32(i32 22, float %3724)  ; Frc(value)
  %3726 = fadd fast float %3725, 0xBFEA666660000000
  %3727 = fmul fast float %3726, 8.000000e+00
  %3728 = call float @dx.op.unary.f32(i32 7, float %3727)  ; Saturate(value)
  %3729 = call float @dx.op.unary.f32(i32 27, float %3724)  ; Round_ni(value)
  %3730 = fadd fast float %3729, %3728
  %3731 = call float @dx.op.binary.f32(i32 36, float %3730, float %3706)  ; FMin(a,b)
  %3732 = call float @dx.op.unary.f32(i32 27, float %3731)  ; Round_ni(value)
  %3733 = fsub fast float -0.000000e+00, %3732
  %3734 = call float @dx.op.unary.f32(i32 21, float %3733)  ; Exp(value)
  %3735 = fmul fast float %3734, %3708
  %3736 = fmul fast float %3735, %3681
  %3737 = fmul fast float %3735, %3685
  %3738 = fmul fast float %3736, 2.500000e-01
  %3739 = fmul fast float %3737, 2.500000e-01
  %3740 = fadd fast float %3738, 5.000000e-01
  %3741 = fadd fast float %3739, 5.000000e-01
  %3742 = fsub fast float %3706, %3704
  %3743 = fptoui float %3742 to i32
  %3744 = add i32 %3743, 320
  %3745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %3744)  ; CBufferLoadLegacy(handle,regIndex)
  %3746 = extractvalue %dx.types.CBufRet.f32 %3745, 0
  %3747 = extractvalue %dx.types.CBufRet.f32 %3745, 1
  %3748 = fcmp fast une float %3731, %3706
  %3749 = fsub fast float %3681, %3746
  %3750 = fsub fast float %3685, %3747
  %3751 = call float @dx.op.unary.f32(i32 6, float %3749)  ; FAbs(value)
  %3752 = call float @dx.op.unary.f32(i32 6, float %3750)  ; FAbs(value)
  %3753 = fmul fast float %3751, %3735
  %3754 = fmul fast float %3752, %3735
  %3755 = fcmp fast olt float %3753, 1.000000e+00
  %3756 = fcmp fast olt float %3754, 1.000000e+00
  %3757 = and i1 %3755, %3756
  %3758 = or i1 %3748, %3757
  br i1 %3758, label %3759, label %4056, !dx.controlflow.hints !112

; <label>:3759                                    ; preds = %3697
  %3760 = fmul fast float %3737, 5.000000e-01
  %3761 = fmul fast float %3736, 5.000000e-01
  %3762 = fadd fast float %3760, 5.000000e-01
  %3763 = fadd fast float %3761, 5.000000e-01
  %3764 = sitofp i32 %3703 to float
  %3765 = fsub fast float %3731, %3764
  %3766 = call float @dx.op.unary.f32(i32 27, float %3765)  ; Round_ni(value)
  %3767 = call float @dx.op.unary.f32(i32 22, float %3731)  ; Frc(value)
  %3768 = call float @dx.op.unary.f32(i32 22, float %3763)  ; Frc(value)
  %3769 = call float @dx.op.unary.f32(i32 22, float %3762)  ; Frc(value)
  %3770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %3768, float %3769, float %3766, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3771 = extractvalue %dx.types.ResRet.f32 %3770, 0
  %3772 = extractvalue %dx.types.ResRet.f32 %3770, 1
  %3773 = extractvalue %dx.types.ResRet.f32 %3770, 2
  %3774 = extractvalue %dx.types.ResRet.f32 %3770, 3
  %3775 = fcmp fast ogt float %3767, 0.000000e+00
  br i1 %3775, label %3776, label %3797, !dx.controlflow.hints !113

; <label>:3776                                    ; preds = %3759
  %3777 = fadd fast float %3766, 1.000000e+00
  %3778 = call float @dx.op.unary.f32(i32 22, float %3740)  ; Frc(value)
  %3779 = call float @dx.op.unary.f32(i32 22, float %3741)  ; Frc(value)
  %3780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %3778, float %3779, float %3777, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3781 = extractvalue %dx.types.ResRet.f32 %3780, 0
  %3782 = extractvalue %dx.types.ResRet.f32 %3780, 1
  %3783 = extractvalue %dx.types.ResRet.f32 %3780, 2
  %3784 = extractvalue %dx.types.ResRet.f32 %3780, 3
  %3785 = fsub fast float %3781, %3771
  %3786 = fsub fast float %3782, %3772
  %3787 = fsub fast float %3783, %3773
  %3788 = fsub fast float %3784, %3774
  %3789 = fmul fast float %3785, %3767
  %3790 = fmul fast float %3786, %3767
  %3791 = fmul fast float %3787, %3767
  %3792 = fmul fast float %3788, %3767
  %3793 = fadd fast float %3789, %3771
  %3794 = fadd fast float %3790, %3772
  %3795 = fadd fast float %3791, %3773
  %3796 = fadd fast float %3792, %3774
  br label %3797

; <label>:3797                                    ; preds = %3776, %3759
  %3798 = phi float [ %3793, %3776 ], [ %3771, %3759 ]
  %3799 = phi float [ %3794, %3776 ], [ %3772, %3759 ]
  %3800 = phi float [ %3795, %3776 ], [ %3773, %3759 ]
  %3801 = phi float [ %3796, %3776 ], [ %3774, %3759 ]
  %3802 = fadd fast float %3798, -5.000000e-01
  %3803 = fadd fast float %3800, -5.000000e-01
  %3804 = fmul fast float %3802, 0xBFD5555560000000
  %3805 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3803, float %3804)  ; FMad(a,b,c)
  %3806 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3799, float 0.000000e+00)  ; FMad(a,b,c)
  %3807 = fadd fast float %3806, %3801
  %3808 = fmul fast float %3802, -7.500000e-01
  %3809 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3803, float %3808)  ; FMad(a,b,c)
  %3810 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3799, float 0.000000e+00)  ; FMad(a,b,c)
  %3811 = fadd fast float %3810, %3801
  %3812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3813 = extractvalue %dx.types.CBufRet.f32 %3812, 0
  %3814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3815 = extractvalue %dx.types.CBufRet.f32 %3814, 0
  %3816 = extractvalue %dx.types.CBufRet.f32 %3814, 1
  %3817 = extractvalue %dx.types.CBufRet.f32 %3814, 2
  %3818 = extractvalue %dx.types.CBufRet.f32 %3814, 3
  %3819 = fsub fast float %3815, %3805
  %3820 = fsub fast float %3816, %3807
  %3821 = fsub fast float %3817, %3809
  %3822 = fsub fast float %3818, %3811
  %3823 = fmul fast float %3819, %3813
  %3824 = fmul fast float %3820, %3813
  %3825 = fmul fast float %3821, %3813
  %3826 = fmul fast float %3822, %3813
  %3827 = fadd fast float %3823, %3805
  %3828 = fadd fast float %3824, %3807
  %3829 = fadd fast float %3825, %3809
  %3830 = fadd fast float %3826, %3811
  %3831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.i32 %3831, 0
  %3833 = and i32 %3832, 536870911
  %3834 = uitofp i32 %3833 to float
  %3835 = fmul fast float %3834, %3681
  %3836 = fmul fast float %3834, %3685
  %3837 = fptoui float %3835 to i32
  %3838 = fptoui float %3836 to i32
  %3839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3840 = extractvalue %dx.types.ResRet.i32 %3839, 0
  %3841 = and i32 %3840, 31
  %3842 = lshr i32 %3837, %3841
  %3843 = lshr i32 %3838, %3841
  %3844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3845 = extractvalue %dx.types.ResRet.i32 %3844, 0
  %3846 = and i32 %3845, 31
  %3847 = shl i32 1, %3846
  %3848 = call i32 @dx.op.binary.i32(i32 40, i32 %3847, i32 4)  ; UMin(a,b)
  %3849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3850 = extractvalue %dx.types.ResRet.i32 %3849, 0
  %3851 = extractvalue %dx.types.ResRet.i32 %3849, 1
  %3852 = icmp eq i32 %3848, 0
  br i1 %3852, label %3894, label %3853

; <label>:3853                                    ; preds = %3797
  br label %3854

; <label>:3854                                    ; preds = %3882, %3853
  %3855 = phi i32 [ %3885, %3882 ], [ 0, %3853 ]
  %3856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3857 = extractvalue %dx.types.ResRet.i32 %3856, 0
  %3858 = lshr i32 %3857, 16
  %3859 = and i32 %3858, 31
  %3860 = shl i32 %3843, %3859
  %3861 = add i32 %3860, %3842
  %3862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = extractvalue %dx.types.ResRet.i32 %3862, 0
  %3864 = and i32 %3863, 31
  %3865 = shl i32 %3861, %3864
  %3866 = add i32 %3865, %3855
  %3867 = shl i32 %3866, 2
  %3868 = add i32 %3867, 32
  %3869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3868, i32 undef)  ; BufferLoad(srv,index,wot)
  %3870 = extractvalue %dx.types.ResRet.i32 %3869, 0
  %3871 = icmp slt i32 %3870, 0
  %3872 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 %3855
  %3873 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %3855
  %3874 = bitcast float* %3872 to i32*
  %3875 = bitcast float* %3873 to i32*
  br i1 %3871, label %3876, label %3882

; <label>:3876                                    ; preds = %3854
  %3877 = and i32 %3870, 1073741823
  %3878 = add nuw nsw i32 %3877, 20
  %3879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3878, i32 undef)  ; BufferLoad(srv,index,wot)
  %3880 = extractvalue %dx.types.ResRet.i32 %3879, 0
  %3881 = extractvalue %dx.types.ResRet.i32 %3879, 1
  br label %3882

; <label>:3882                                    ; preds = %3876, %3854
  %3883 = phi i32 [ %3880, %3876 ], [ %3850, %3854 ]
  %3884 = phi i32 [ %3881, %3876 ], [ %3851, %3854 ]
  store i32 %3883, i32* %3874, align 4
  store i32 %3884, i32* %3875, align 4
  %3885 = add nuw i32 %3855, 1
  %3886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3887 = extractvalue %dx.types.CBufRet.i32 %3886, 2
  %3888 = icmp eq i32 %3887, 0
  %3889 = icmp ugt i32 %3870, -1073741825
  %3890 = and i1 %3889, %3888
  %3891 = icmp ult i32 %3885, %3848
  %3892 = and i1 %3890, %3891
  br i1 %3892, label %3854, label %3893

; <label>:3893                                    ; preds = %3882
  br label %3894

; <label>:3894                                    ; preds = %3893, %3797
  %3895 = phi i32 [ 0, %3797 ], [ %3885, %3893 ]
  %3896 = extractvalue %dx.types.CBufRet.f32 %3659, 2
  %3897 = fptoui float %3896 to i32
  %3898 = icmp eq i32 %3897, 0
  br i1 %3898, label %3950, label %3899

; <label>:3899                                    ; preds = %3894
  br label %3900

; <label>:3900                                    ; preds = %3945, %3899
  %3901 = phi i32 [ %3946, %3945 ], [ %3895, %3899 ]
  %3902 = phi i32 [ %3947, %3945 ], [ 0, %3899 ]
  %3903 = lshr i32 %3902, 2
  %3904 = and i32 %3902, 3
  %3905 = add nuw nsw i32 %3903, 83
  %3906 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 %3905)  ; CBufferLoadLegacy(handle,regIndex)
  %3907 = extractvalue %dx.types.CBufRet.i32 %3906, 0
  %3908 = extractvalue %dx.types.CBufRet.i32 %3906, 1
  %3909 = extractvalue %dx.types.CBufRet.i32 %3906, 2
  %3910 = extractvalue %dx.types.CBufRet.i32 %3906, 3
  %3911 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 0
  store i32 %3907, i32* %3911, align 4
  %3912 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 1
  store i32 %3908, i32* %3912, align 4
  %3913 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 2
  store i32 %3909, i32* %3913, align 4
  %3914 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 3
  store i32 %3910, i32* %3914, align 4
  %3915 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 %3904
  %3916 = load i32, i32* %3915, align 4, !tbaa !114, !noalias !118
  %3917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3918 = extractvalue %dx.types.ResRet.i32 %3917, 0
  %3919 = lshr i32 %3918, 16
  %3920 = and i32 %3919, 31
  %3921 = shl i32 %3843, %3920
  %3922 = add i32 %3921, %3842
  %3923 = shl i32 %3922, 2
  %3924 = add i32 %3923, %3916
  %3925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3926 = extractvalue %dx.types.ResRet.i32 %3925, 0
  %3927 = icmp eq i32 %3926, 0
  br i1 %3927, label %3945, label %3928

; <label>:3928                                    ; preds = %3900
  %3929 = icmp slt i32 %3926, 0
  %3930 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 %3901
  %3931 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %3901
  %3932 = bitcast float* %3930 to i32*
  %3933 = bitcast float* %3931 to i32*
  br i1 %3929, label %3934, label %3941

; <label>:3934                                    ; preds = %3928
  %3935 = and i32 %3926, 1073741823
  %3936 = add i32 %3916, 20
  %3937 = add i32 %3936, %3935
  %3938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3937, i32 undef)  ; BufferLoad(srv,index,wot)
  %3939 = extractvalue %dx.types.ResRet.i32 %3938, 0
  %3940 = extractvalue %dx.types.ResRet.i32 %3938, 1
  br label %3941

; <label>:3941                                    ; preds = %3934, %3928
  %3942 = phi i32 [ %3939, %3934 ], [ %3850, %3928 ]
  %3943 = phi i32 [ %3940, %3934 ], [ %3851, %3928 ]
  store i32 %3942, i32* %3932, align 4
  store i32 %3943, i32* %3933, align 4
  %3944 = add i32 %3901, 1
  br label %3945

; <label>:3945                                    ; preds = %3941, %3900
  %3946 = phi i32 [ %3901, %3900 ], [ %3944, %3941 ]
  %3947 = add nuw i32 %3902, 1
  %3948 = icmp eq i32 %3947, %3897
  br i1 %3948, label %3949, label %3900

; <label>:3949                                    ; preds = %3945
  br label %3950

; <label>:3950                                    ; preds = %3949, %3894
  %3951 = phi i32 [ %3895, %3894 ], [ %3946, %3949 ]
  %3952 = icmp eq i32 %3951, 1
  %3953 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 0
  %3954 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 0
  br i1 %3952, label %3955, label %3958

; <label>:3955                                    ; preds = %3950
  %3956 = load float, float* %3953, align 4
  %3957 = load float, float* %3954, align 4
  br label %3985

; <label>:3958                                    ; preds = %3950
  %3959 = load float, float* %3953, align 4
  %3960 = load float, float* %3954, align 4
  %3961 = fdiv fast float 1.000000e+00, %3960
  %3962 = fsub fast float %3959, %3961
  %3963 = icmp ugt i32 %3951, 1
  br i1 %3963, label %3964, label %3980

; <label>:3964                                    ; preds = %3958
  br label %3965

; <label>:3965                                    ; preds = %3965, %3964
  %3966 = phi float [ %3975, %3965 ], [ %3962, %3964 ]
  %3967 = phi float [ %3976, %3965 ], [ %3959, %3964 ]
  %3968 = phi i32 [ %3977, %3965 ], [ 1, %3964 ]
  %3969 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 %3968
  %3970 = load float, float* %3969, align 4
  %3971 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %3968
  %3972 = load float, float* %3971, align 4
  %3973 = fdiv fast float 1.000000e+00, %3972
  %3974 = fsub fast float %3970, %3973
  %3975 = call float @dx.op.binary.f32(i32 36, float %3966, float %3974)  ; FMin(a,b)
  %3976 = call float @dx.op.binary.f32(i32 35, float %3967, float %3970)  ; FMax(a,b)
  %3977 = add nuw i32 %3968, 1
  %3978 = icmp eq i32 %3977, %3951
  br i1 %3978, label %3979, label %3965

; <label>:3979                                    ; preds = %3965
  br label %3980

; <label>:3980                                    ; preds = %3979, %3958
  %3981 = phi float [ %3962, %3958 ], [ %3975, %3979 ]
  %3982 = phi float [ %3959, %3958 ], [ %3976, %3979 ]
  %3983 = fsub fast float %3982, %3981
  %3984 = fdiv fast float 1.000000e+00, %3983
  br label %3985

; <label>:3985                                    ; preds = %3980, %3955
  %3986 = phi float [ %3956, %3955 ], [ %3982, %3980 ]
  %3987 = phi float [ %3957, %3955 ], [ %3984, %3980 ]
  %3988 = fadd fast float %3689, %3986
  %3989 = fmul fast float %3988, %3987
  %3990 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3991 = fmul fast float %3990, 2.000000e+00
  %3992 = fsub fast float 1.000000e+00, %3991
  %3993 = fmul fast float %3827, %3827
  %3994 = fsub fast float %3828, %3993
  %3995 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3994)  ; FMax(a,b)
  %3996 = fdiv fast float 1.000000e+00, %3995
  %3997 = fmul fast float %3828, %3827
  %3998 = fsub fast float %3829, %3997
  %3999 = fsub fast float %3992, %3827
  %4000 = fmul fast float %3992, %3992
  %4001 = fsub fast float %4000, %3828
  %4002 = fmul fast float %3996, %3998
  %4003 = fmul fast float %4002, %3999
  %4004 = fsub fast float %4001, %4003
  %4005 = fmul fast float %3828, %3828
  %4006 = fsub fast float %3830, %4005
  %4007 = fmul fast float %3998, %3998
  %4008 = fmul fast float %4007, %3996
  %4009 = fsub fast float %4006, %4008
  %4010 = fdiv fast float %4004, %4009
  %4011 = fmul fast float %4010, %3998
  %4012 = fsub fast float %3999, %4011
  %4013 = fmul fast float %4012, %3996
  %4014 = fmul fast float %4013, %3827
  %4015 = fsub fast float 1.000000e+00, %4014
  %4016 = fmul fast float %4010, %3828
  %4017 = fsub fast float %4015, %4016
  %4018 = fmul fast float %4013, %4013
  %4019 = fmul fast float %4010, 4.000000e+00
  %4020 = fmul fast float %4019, %4017
  %4021 = fsub fast float %4018, %4020
  %4022 = call float @dx.op.unary.f32(i32 24, float %4021)  ; Sqrt(value)
  %4023 = fcmp fast oge float %4013, 0.000000e+00
  %4024 = fsub fast float -0.000000e+00, %4022
  %4025 = select i1 %4023, float %4024, float %4022
  %4026 = fsub fast float %4025, %4013
  %4027 = fdiv fast float %4026, %4010
  %4028 = fdiv fast float %4017, %4026
  %4029 = fmul fast float %4027, 5.000000e-01
  %4030 = fmul fast float %4028, 2.000000e+00
  %4031 = select i1 %4023, float %4029, float %4030
  %4032 = select i1 %4023, float %4030, float %4029
  %4033 = call float @dx.op.binary.f32(i32 35, float %4031, float %4032)  ; FMax(a,b)
  %4034 = call float @dx.op.binary.f32(i32 36, float %4031, float %4032)  ; FMin(a,b)
  %4035 = fcmp fast ogt float %3992, %4033
  %4036 = fsub fast float %3992, %4034
  %4037 = fsub fast float %3992, %4033
  %4038 = fsub fast float %4033, %4034
  %4039 = select i1 %4035, float %4037, float %4038
  %4040 = fmul float %4036, %4039
  %4041 = select i1 %4035, float %4034, float %3992
  %4042 = fcmp fast ogt float %3992, %4034
  %4043 = fmul fast float %4041, %4033
  %4044 = fadd fast float %4041, %4033
  %4045 = fmul fast float %4044, %3827
  %4046 = fadd fast float %4043, %3828
  %4047 = fsub fast float %4046, %4045
  %4048 = fdiv fast float %4047, %4040
  %4049 = select i1 %4042, float %4048, float 0.000000e+00
  %4050 = fsub fast float 1.000000e+00, %4049
  %4051 = select i1 %4035, float %4050, float %4049
  %4052 = call float @dx.op.unary.f32(i32 7, float %4051)  ; Saturate(value)
  %4053 = extractvalue %dx.types.CBufRet.f32 %3812, 3
  %4054 = fmul fast float %4053, %4052
  %4055 = fsub fast float 1.000000e+00, %4054
  br label %4056

; <label>:4056                                    ; preds = %3985, %3697, %3662, %3658, %3624
  %4057 = phi float [ 1.000000e+00, %3624 ], [ %4055, %3985 ], [ 1.000000e+00, %3662 ], [ 1.000000e+00, %3697 ], [ 1.000000e+00, %3658 ]
  %4058 = fcmp fast ogt float %3654, 0.000000e+00
  br i1 %4058, label %4059, label %4065, !dx.controlflow.hints !127

; <label>:4059                                    ; preds = %4056
  %4060 = fadd fast float %3567, %3541
  %4061 = call float @dx.op.binary.f32(i32 35, float %4060, float 0.000000e+00)  ; FMax(a,b)
  %4062 = fadd fast float %4061, 0x3F10000000000000
  %4063 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %3556, float %3557, float undef, float undef, i32 0, i32 0, i32 undef, float %4062)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4064 = extractvalue %dx.types.ResRet.f32 %4063, 0
  br label %4065

; <label>:4065                                    ; preds = %4059, %4056
  %4066 = phi float [ %4064, %4059 ], [ 1.000000e+00, %4056 ]
  %4067 = fcmp fast ogt float %3652, 0.000000e+00
  br i1 %4067, label %4068, label %4074, !dx.controlflow.hints !128

; <label>:4068                                    ; preds = %4065
  %4069 = fadd fast float %3597, %3541
  %4070 = call float @dx.op.binary.f32(i32 35, float %4069, float 0.000000e+00)  ; FMax(a,b)
  %4071 = fadd fast float %4070, 0x3F10000000000000
  %4072 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %3548, float %3549, float undef, float undef, i32 0, i32 0, i32 undef, float %4071)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4073 = extractvalue %dx.types.ResRet.f32 %4072, 0
  br label %4074

; <label>:4074                                    ; preds = %4068, %4065
  %4075 = phi float [ %4073, %4068 ], [ 1.000000e+00, %4065 ]
  %4076 = fcmp fast ogt float %3651, 0.000000e+00
  br i1 %4076, label %4077, label %4084, !dx.controlflow.hints !129

; <label>:4077                                    ; preds = %4074
  %4078 = extractvalue %dx.types.CBufRet.f32 %3566, 0
  %4079 = fadd fast float %4078, %3541
  %4080 = call float @dx.op.binary.f32(i32 35, float %4079, float 0.000000e+00)  ; FMax(a,b)
  %4081 = fadd fast float %4080, 0x3F10000000000000
  %4082 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %3533, float %3537, float undef, float undef, i32 0, i32 0, i32 undef, float %4081)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4083 = extractvalue %dx.types.ResRet.f32 %4082, 0
  br label %4084

; <label>:4084                                    ; preds = %4077, %4074
  %4085 = phi float [ %4083, %4077 ], [ 1.000000e+00, %4074 ]
  %4086 = fsub fast float %4066, %4057
  %4087 = fmul fast float %4086, %3595
  %4088 = fadd fast float %4087, %4057
  %4089 = fsub fast float %4075, %4088
  %4090 = fmul fast float %4089, %3625
  %4091 = fadd fast float %4090, %4088
  %4092 = fsub fast float %4085, %4091
  %4093 = fmul fast float %4092, %3651
  %4094 = fadd fast float %4093, %4091
  %4095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4096 = extractvalue %dx.types.CBufRet.f32 %4095, 2
  %4097 = fcmp fast ogt float %4096, 0.000000e+00
  br i1 %4097, label %4098, label %4135, !dx.controlflow.hints !130

; <label>:4098                                    ; preds = %4084
  %4099 = fcmp fast ugt float %4096, 0.000000e+00
  br i1 %4099, label %4100, label %4132

; <label>:4100                                    ; preds = %4098
  %4101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4102 = extractvalue %dx.types.CBufRet.f32 %4101, 0
  %4103 = extractvalue %dx.types.CBufRet.f32 %4101, 1
  %4104 = extractvalue %dx.types.CBufRet.f32 %4101, 2
  %4105 = extractvalue %dx.types.CBufRet.f32 %4101, 3
  %4106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.f32 %4106, 0
  %4108 = extractvalue %dx.types.CBufRet.f32 %4106, 1
  %4109 = extractvalue %dx.types.CBufRet.f32 %4106, 2
  %4110 = extractvalue %dx.types.CBufRet.f32 %4106, 3
  %4111 = extractvalue %dx.types.CBufRet.f32 %4095, 0
  %4112 = extractvalue %dx.types.CBufRet.f32 %4095, 1
  %4113 = extractvalue %dx.types.CBufRet.f32 %2137, 2
  %4114 = fadd fast float %2138, %3510
  %4115 = fadd fast float %2139, %3511
  %4116 = fadd fast float %4113, %3512
  %4117 = fmul fast float %4114, %4102
  %4118 = call float @dx.op.tertiary.f32(i32 46, float %4103, float %4115, float %4117)  ; FMad(a,b,c)
  %4119 = call float @dx.op.tertiary.f32(i32 46, float %4104, float %4116, float %4118)  ; FMad(a,b,c)
  %4120 = fadd fast float %4119, %4105
  %4121 = fmul fast float %4114, %4107
  %4122 = call float @dx.op.tertiary.f32(i32 46, float %4108, float %4115, float %4121)  ; FMad(a,b,c)
  %4123 = call float @dx.op.tertiary.f32(i32 46, float %4109, float %4116, float %4122)  ; FMad(a,b,c)
  %4124 = fadd fast float %4123, %4110
  %4125 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %55, float %4120, float %4124, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4126 = extractvalue %dx.types.ResRet.f32 %4125, 0
  %4127 = fmul fast float %4126, %4112
  %4128 = fadd fast float %4127, %4111
  %4129 = call float @dx.op.unary.f32(i32 7, float %4128)  ; Saturate(value)
  %4130 = fmul fast float %4129, %4096
  %4131 = fsub fast float 1.000000e+00, %4130
  br label %4132

; <label>:4132                                    ; preds = %4100, %4098
  %4133 = phi float [ %4131, %4100 ], [ 1.000000e+00, %4098 ]
  %4134 = fmul fast float %4133, %4094
  br label %4135

; <label>:4135                                    ; preds = %4132, %4084, %3490
  %4136 = phi float [ 1.000000e+00, %3490 ], [ %4134, %4132 ], [ %4094, %4084 ]
  %4137 = call float @dx.op.binary.f32(i32 36, float %4136, float %4136)  ; FMin(a,b)
  %4138 = call float @dx.op.binary.f32(i32 36, float %4136, float %4137)  ; FMin(a,b)
  %4139 = fcmp fast ogt float %4138, 0.000000e+00
  br i1 %4139, label %4140, label %4297, !dx.controlflow.hints !131

; <label>:4140                                    ; preds = %4135
  %4141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4142 = extractvalue %dx.types.CBufRet.f32 %4141, 0
  %4143 = extractvalue %dx.types.CBufRet.f32 %4141, 1
  %4144 = extractvalue %dx.types.CBufRet.f32 %4141, 2
  %4145 = extractvalue %dx.types.CBufRet.f32 %4141, 3
  %4146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4147 = extractvalue %dx.types.CBufRet.f32 %4146, 0
  %4148 = extractvalue %dx.types.CBufRet.f32 %4146, 1
  %4149 = extractvalue %dx.types.CBufRet.f32 %4146, 2
  %4150 = extractvalue %dx.types.CBufRet.f32 %4146, 3
  %4151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4152 = extractvalue %dx.types.CBufRet.f32 %4151, 0
  %4153 = extractvalue %dx.types.CBufRet.f32 %4151, 1
  %4154 = extractvalue %dx.types.CBufRet.f32 %4151, 2
  %4155 = extractvalue %dx.types.CBufRet.f32 %4151, 3
  %4156 = fmul fast float %4142, %3510
  %4157 = call float @dx.op.tertiary.f32(i32 46, float %3511, float %4143, float %4156)  ; FMad(a,b,c)
  %4158 = call float @dx.op.tertiary.f32(i32 46, float %3512, float %4144, float %4157)  ; FMad(a,b,c)
  %4159 = fadd fast float %4158, %4145
  %4160 = fmul fast float %4147, %3510
  %4161 = call float @dx.op.tertiary.f32(i32 46, float %3511, float %4148, float %4160)  ; FMad(a,b,c)
  %4162 = call float @dx.op.tertiary.f32(i32 46, float %3512, float %4149, float %4161)  ; FMad(a,b,c)
  %4163 = fadd fast float %4162, %4150
  %4164 = fmul fast float %4152, %3510
  %4165 = call float @dx.op.tertiary.f32(i32 46, float %3511, float %4153, float %4164)  ; FMad(a,b,c)
  %4166 = call float @dx.op.tertiary.f32(i32 46, float %3512, float %4154, float %4165)  ; FMad(a,b,c)
  %4167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.CBufRet.f32 %4167, 1
  %4170 = extractvalue %dx.types.CBufRet.f32 %4167, 3
  %4171 = fmul fast float %4170, %4159
  %4172 = fmul fast float %4170, %4163
  %4173 = fadd fast float %4171, %4168
  %4174 = fadd fast float %4172, %4169
  %4175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.f32 %4175, 0
  %4177 = extractvalue %dx.types.CBufRet.f32 %4175, 1
  %4178 = fsub fast float %4173, %4176
  %4179 = fsub fast float %4174, %4177
  %4180 = fcmp fast olt float %4178, 0.000000e+00
  %4181 = fcmp fast olt float %4179, 0.000000e+00
  %4182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4183 = extractvalue %dx.types.CBufRet.f32 %4182, 0
  %4184 = extractvalue %dx.types.CBufRet.f32 %4182, 1
  %4185 = extractvalue %dx.types.CBufRet.f32 %4182, 2
  %4186 = extractvalue %dx.types.CBufRet.f32 %4182, 3
  %4187 = select i1 %4180, float %4183, float %4185
  %4188 = select i1 %4181, float %4184, float %4186
  %4189 = fmul fast float %4187, %4178
  %4190 = fmul fast float %4188, %4179
  %4191 = call float @dx.op.unary.f32(i32 6, float %4189)  ; FAbs(value)
  %4192 = call float @dx.op.unary.f32(i32 6, float %4190)  ; FAbs(value)
  %4193 = extractvalue %dx.types.CBufRet.f32 %3505, 0
  %4194 = call float @dx.op.binary.f32(i32 35, float %4191, float %4192)  ; FMax(a,b)
  %4195 = fsub fast float %4193, %4194
  %4196 = call float @dx.op.unary.f32(i32 7, float %4195)  ; Saturate(value)
  %4197 = fcmp fast ogt float %4196, 0.000000e+00
  br i1 %4197, label %4198, label %4239, !dx.controlflow.hints !132

; <label>:4198                                    ; preds = %4140
  %4199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %58, float %4173, float %4174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 1
  %4201 = fcmp fast ogt float %4200, 0.000000e+00
  br i1 %4201, label %4202, label %4234

; <label>:4202                                    ; preds = %4198
  %4203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %58, float %4173, float %4174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4204 = extractvalue %dx.types.ResRet.f32 %4203, 0
  %4205 = extractvalue %dx.types.ResRet.f32 %4203, 1
  %4206 = extractvalue %dx.types.ResRet.f32 %4203, 2
  %4207 = extractvalue %dx.types.ResRet.f32 %4203, 3
  %4208 = fsub fast float 1.000000e+00, %4155
  %4209 = fsub fast float %4208, %4166
  %4210 = fmul fast float %4209, 0x400921FB60000000
  %4211 = fadd fast float %4210, 0x3FF921FB60000000
  %4212 = call float @dx.op.unary.f32(i32 13, float %4211)  ; Sin(value)
  %4213 = fadd fast float %4212, -1.000000e+00
  %4214 = fmul fast float %4213, 0x3FD45F3060000000
  %4215 = fmul fast float %4209, 0x401921FB60000000
  %4216 = fadd fast float %4215, 0x400921FB60000000
  %4217 = call float @dx.op.unary.f32(i32 13, float %4216)  ; Sin(value)
  %4218 = fadd fast float %4217, 0x3E7777A5C0000000
  %4219 = fmul fast float %4218, 0x3FC45F3060000000
  %4220 = fmul fast float %4209, 0x4022D97C80000000
  %4221 = fadd fast float %4220, 0x4012D97C80000000
  %4222 = call float @dx.op.unary.f32(i32 13, float %4221)  ; Sin(value)
  %4223 = fadd fast float %4222, 1.000000e+00
  %4224 = fmul fast float %4223, 0x3FBB2995E0000000
  %4225 = fmul fast float %4209, 0x402921FB60000000
  %4226 = fadd fast float %4225, 0x401921FB60000000
  %4227 = call float @dx.op.unary.f32(i32 13, float %4226)  ; Sin(value)
  %4228 = fadd fast float %4227, 0xBE8777A5C0000000
  %4229 = fmul fast float %4228, 0x3FB45F3060000000
  %4230 = call float @dx.op.dot4.f32(i32 56, float %4204, float %4205, float %4206, float %4207, float %4214, float %4219, float %4224, float %4229)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4231 = fmul fast float %4230, 0xBFF7154760000000
  %4232 = call float @dx.op.unary.f32(i32 21, float %4231)  ; Exp(value)
  %4233 = call float @dx.op.unary.f32(i32 7, float %4232)  ; Saturate(value)
  br label %4234

; <label>:4234                                    ; preds = %4202, %4198
  %4235 = phi float [ %4233, %4202 ], [ 1.000000e+00, %4198 ]
  %4236 = fadd fast float %4235, -1.000000e+00
  %4237 = fmul fast float %4236, %4196
  %4238 = fadd fast float %4237, 1.000000e+00
  br label %4239

; <label>:4239                                    ; preds = %4234, %4140
  %4240 = phi float [ %4238, %4234 ], [ 1.000000e+00, %4140 ]
  %4241 = fmul fast float %4240, %4136
  %4242 = extractvalue %dx.types.CBufRet.f32 %2137, 2
  %4243 = fadd fast float %2138, %148
  %4244 = fadd fast float %2139, %149
  %4245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.f32 %4245, 1
  %4247 = fsub fast float -0.000000e+00, %4243
  %4248 = fsub fast float -0.000000e+00, %4244
  %4249 = fsub fast float %2121, %4242
  %4250 = fadd fast float %4249, %4246
  %4251 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4247, float %4248, float %4250)  ; Dot3(ax,ay,az,bx,by,bz)
  %4252 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3491, float %3492, float %3493)  ; Dot3(ax,ay,az,bx,by,bz)
  %4253 = fdiv fast float 1.000000e+00, %4252
  %4254 = fmul fast float %4253, %4251
  %4255 = fmul fast float %3491, %4254
  %4256 = fmul fast float %3492, %4254
  %4257 = fadd fast float %4255, %4243
  %4258 = fadd fast float %4256, %4244
  %4259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4260 = extractvalue %dx.types.CBufRet.f32 %4259, 0
  %4261 = extractvalue %dx.types.CBufRet.f32 %4259, 1
  %4262 = fsub fast float %4257, %4260
  %4263 = fsub fast float %4258, %4261
  %4264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.f32 %4264, 2
  %4266 = extractvalue %dx.types.CBufRet.f32 %4264, 3
  %4267 = fmul fast float %4262, %4265
  %4268 = fmul fast float %4263, %4266
  %4269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4270 = extractvalue %dx.types.CBufRet.i32 %4269, 3
  %4271 = icmp eq i32 %4270, 0
  br i1 %4271, label %4277, label %4272

; <label>:4272                                    ; preds = %4239
  %4273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %57, float %4267, float %4268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4274 = extractvalue %dx.types.ResRet.f32 %4273, 0
  %4275 = extractvalue %dx.types.ResRet.f32 %4273, 1
  %4276 = extractvalue %dx.types.ResRet.f32 %4273, 2
  br label %4282

; <label>:4277                                    ; preds = %4239
  %4278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %58, float %4267, float %4268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4279 = extractvalue %dx.types.ResRet.f32 %4278, 0
  %4280 = extractvalue %dx.types.ResRet.f32 %4278, 1
  %4281 = extractvalue %dx.types.ResRet.f32 %4278, 2
  br label %4282

; <label>:4282                                    ; preds = %4277, %4272
  %4283 = phi float [ %4274, %4272 ], [ %4279, %4277 ]
  %4284 = phi float [ %4275, %4272 ], [ %4280, %4277 ]
  %4285 = phi float [ %4276, %4272 ], [ %4281, %4277 ]
  %4286 = extractvalue %dx.types.CBufRet.f32 %4245, 2
  %4287 = fmul fast float %4286, %4283
  %4288 = extractvalue %dx.types.CBufRet.f32 %4245, 0
  %4289 = fsub fast float %4254, %4288
  %4290 = fsub fast float %4289, %4287
  %4291 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4290)  ; FMax(a,b)
  %4292 = fmul fast float %4291, %4284
  %4293 = call float @dx.op.binary.f32(i32 36, float %4285, float %4292)  ; FMin(a,b)
  %4294 = fmul fast float %4293, 0xBFF7154760000000
  %4295 = call float @dx.op.unary.f32(i32 21, float %4294)  ; Exp(value)
  %4296 = fmul fast float %4241, %4295
  br label %4297

; <label>:4297                                    ; preds = %4282, %4135
  %4298 = phi float [ %4296, %4282 ], [ %4136, %4135 ]
  %4299 = call float @dx.op.binary.f32(i32 36, float %4298, float %4298)  ; FMin(a,b)
  %4300 = call float @dx.op.binary.f32(i32 36, float %4298, float %4299)  ; FMin(a,b)
  %4301 = fcmp fast ogt float %4300, 0.000000e+00
  br i1 %4301, label %4302, label %4553, !dx.controlflow.hints !133

; <label>:4302                                    ; preds = %4297
  %4303 = fmul fast float %4298, %3502
  %4304 = fmul fast float %4298, %3503
  %4305 = fmul fast float %4298, %3504
  %4306 = fsub fast float %150, %1909
  %4307 = fcmp fast ogt float %4306, 0.000000e+00
  %4308 = fmul fast float %3491, 5.120000e+02
  %4309 = fmul fast float %3492, 5.120000e+02
  %4310 = fmul fast float %3493, 5.120000e+02
  %4311 = fadd fast float %4310, %150
  %4312 = fsub fast float %1909, %4311
  %4313 = fmul fast float %4312, 2.000000e+00
  %4314 = fadd fast float %4313, %4311
  %4315 = select i1 %4307, float %4314, float %4311
  %4316 = fsub fast float %4315, %150
  %4317 = call float @dx.op.dot3.f32(i32 55, float %4308, float %4309, float %4316, float %4308, float %4309, float %4316)  ; Dot3(ax,ay,az,bx,by,bz)
  %4318 = call float @dx.op.unary.f32(i32 25, float %4317)  ; Rsqrt(value)
  %4319 = fmul fast float %4318, %4308
  %4320 = fmul fast float %4318, %4309
  %4321 = fmul fast float %4318, %4316
  %4322 = fsub fast float %1909, %150
  %4323 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4322)  ; Dot3(ax,ay,az,bx,by,bz)
  %4324 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4319, float %4320, float %4321)  ; Dot3(ax,ay,az,bx,by,bz)
  %4325 = fdiv fast float 1.000000e+00, %4324
  %4326 = fmul fast float %4325, %4323
  %4327 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4306, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4328 = fcmp fast ogt float %4327, 0.000000e+00
  %4329 = fcmp fast olt float %4327, 0.000000e+00
  %4330 = zext i1 %4328 to i32
  %4331 = zext i1 %4329 to i32
  %4332 = sub nsw i32 %4330, %4331
  %4333 = sitofp i32 %4332 to float
  %4334 = fsub fast float %4315, %1909
  %4335 = call float @dx.op.dot3.f32(i32 55, float %4308, float %4309, float %4334, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4336 = fcmp fast ogt float %4335, 0.000000e+00
  %4337 = fcmp fast olt float %4335, 0.000000e+00
  %4338 = zext i1 %4336 to i32
  %4339 = zext i1 %4337 to i32
  %4340 = sub nsw i32 %4338, %4339
  %4341 = sitofp i32 %4340 to float
  %4342 = fcmp fast une float %4333, %4341
  br i1 %4342, label %4343, label %4353

; <label>:4343                                    ; preds = %4302
  %4344 = fmul fast float %4326, %4321
  %4345 = fmul fast float %4326, %4320
  %4346 = fmul fast float %4326, %4319
  %4347 = fmul fast float %4346, %4346
  %4348 = fmul fast float %4345, %4345
  %4349 = fadd fast float %4347, %4348
  %4350 = fmul fast float %4344, %4344
  %4351 = fadd fast float %4349, %4350
  %4352 = call float @dx.op.unary.f32(i32 24, float %4351)  ; Sqrt(value)
  br label %4363

; <label>:4353                                    ; preds = %4302
  %4354 = icmp slt i32 %4332, 0
  br i1 %4354, label %4355, label %4363

; <label>:4355                                    ; preds = %4353
  %4356 = fsub fast float %150, %4315
  %4357 = fmul fast float %4308, %4308
  %4358 = fmul fast float %4309, %4309
  %4359 = fadd fast float %4357, %4358
  %4360 = fmul fast float %4356, %4356
  %4361 = fadd fast float %4359, %4360
  %4362 = call float @dx.op.unary.f32(i32 24, float %4361)  ; Sqrt(value)
  br label %4363

; <label>:4363                                    ; preds = %4355, %4353, %4343
  %4364 = phi float [ %4352, %4343 ], [ %4362, %4355 ], [ 0.000000e+00, %4353 ]
  %4365 = fsub fast float -0.000000e+00, %4364
  %4366 = select i1 %4307, float -0.000000e+00, float %4365
  %4367 = fmul fast float %1910, 0x3FF7154760000000
  %4368 = fmul fast float %4367, %4366
  %4369 = fmul fast float %1911, 0x3FF7154760000000
  %4370 = fmul fast float %4369, %4366
  %4371 = fmul fast float %1912, 0x3FF7154760000000
  %4372 = fmul fast float %4371, %4366
  %4373 = call float @dx.op.unary.f32(i32 21, float %4368)  ; Exp(value)
  %4374 = call float @dx.op.unary.f32(i32 21, float %4370)  ; Exp(value)
  %4375 = call float @dx.op.unary.f32(i32 21, float %4372)  ; Exp(value)
  %4376 = call float @dx.op.unary.f32(i32 7, float %4373)  ; Saturate(value)
  %4377 = call float @dx.op.unary.f32(i32 7, float %4374)  ; Saturate(value)
  %4378 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4379 = fmul fast float %4303, %4376
  %4380 = fmul fast float %4304, %4377
  %4381 = fmul fast float %4305, %4378
  %4382 = fsub fast float %3491, %2109
  %4383 = fsub fast float %3492, %2108
  %4384 = fsub fast float %3493, %2107
  %4385 = call float @dx.op.dot3.f32(i32 55, float %4382, float %4383, float %4384, float %4382, float %4383, float %4384)  ; Dot3(ax,ay,az,bx,by,bz)
  %4386 = call float @dx.op.unary.f32(i32 25, float %4385)  ; Rsqrt(value)
  %4387 = fmul fast float %4386, %4382
  %4388 = fmul fast float %4386, %4383
  %4389 = fmul fast float %4386, %4384
  %4390 = call float @dx.op.dot3.f32(i32 55, float %3491, float %3492, float %3493, float %2116, float %2117, float %2118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4391 = call float @dx.op.dot3.f32(i32 55, float %2106, float %2105, float %2104, float %4387, float %4388, float %4389)  ; Dot3(ax,ay,az,bx,by,bz)
  %4392 = call float @dx.op.unary.f32(i32 7, float %4390)  ; Saturate(value)
  %4393 = fmul fast float %4392, %4392
  %4394 = fmul fast float %4393, %3486
  %4395 = call float @dx.op.unary.f32(i32 7, float %4394)  ; Saturate(value)
  %4396 = fmul fast float %4395, %4392
  %4397 = call float @dx.op.dot3.f32(i32 55, float %2116, float %2117, float %2118, float %4387, float %4388, float %4389)  ; Dot3(ax,ay,az,bx,by,bz)
  %4398 = fmul fast float %4397, %4397
  %4399 = call float @dx.op.unary.f32(i32 6, float %4390)  ; FAbs(value)
  %4400 = fsub fast float 1.000000e+00, %2119
  %4401 = call float @dx.op.binary.f32(i32 35, float %4400, float 0x3F847AE140000000)  ; FMax(a,b)
  %4402 = fmul fast float %4401, %4401
  %4403 = fmul fast float %4402, %4402
  %4404 = fsub fast float 1.000000e+00, %4403
  %4405 = fmul fast float %2124, %2124
  %4406 = fmul fast float %4405, %4404
  %4407 = fadd fast float %4406, %4403
  %4408 = bitcast float %4407 to i32
  %4409 = ashr i32 %4408, 1
  %4410 = add nsw i32 %4409, 532487669
  %4411 = bitcast i32 %4410 to float
  %4412 = fadd fast float %4411, %2124
  %4413 = fmul fast float %4403, %4398
  %4414 = fsub fast float 1.000000e+00, %4398
  %4415 = fadd fast float %4414, %4413
  %4416 = fmul fast float %4399, %4399
  %4417 = fmul fast float %4416, %4404
  %4418 = fadd fast float %4417, %4403
  %4419 = bitcast float %4418 to i32
  %4420 = ashr i32 %4419, 1
  %4421 = add nsw i32 %4420, 532487669
  %4422 = bitcast i32 %4421 to float
  %4423 = fadd fast float %4422, %4399
  %4424 = fmul fast float %4415, %4415
  %4425 = fmul fast float %4424, %4412
  %4426 = fmul fast float %4425, %4423
  %4427 = fdiv fast float 0x3FF0A00000000000, %4426
  %4428 = fmul fast float %4427, %4403
  %4429 = call float @dx.op.unary.f32(i32 6, float %4391)  ; FAbs(value)
  %4430 = fsub fast float 1.000000e+00, %4429
  %4431 = bitcast float %4430 to i32
  %4432 = sitofp i32 %4431 to float
  %4433 = fmul fast float %4432, 5.000000e+00
  %4434 = fadd fast float %4433, 0xC1EFBF8940000000
  %4435 = fptosi float %4434 to i32
  %4436 = bitcast i32 %4435 to float
  %4437 = fsub fast float 1.000000e+00, %2110
  %4438 = fsub fast float 1.000000e+00, %2111
  %4439 = fsub fast float 1.000000e+00, %2122
  %4440 = fmul fast float %4436, %4437
  %4441 = fmul fast float %4436, %4438
  %4442 = fmul fast float %4436, %4439
  %4443 = fadd fast float %4440, %2110
  %4444 = fadd fast float %4441, %2111
  %4445 = fadd fast float %4442, %2122
  br i1 %3401, label %4446, label %4469

; <label>:4446                                    ; preds = %4363
  %4447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1487, float %4429, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4448 = extractvalue %dx.types.ResRet.f32 %4447, 0
  %4449 = extractvalue %dx.types.ResRet.f32 %4447, 1
  %4450 = extractvalue %dx.types.ResRet.f32 %4447, 2
  %4451 = fadd fast float %4448, -5.000000e-01
  %4452 = fadd fast float %4449, -5.000000e-01
  %4453 = fadd fast float %4450, -5.000000e-01
  %4454 = fmul fast float %2110, 4.000000e+00
  %4455 = fmul fast float %4454, %4437
  %4456 = fmul fast float %4455, %4451
  %4457 = fmul fast float %2111, 4.000000e+00
  %4458 = fmul fast float %4457, %4438
  %4459 = fmul fast float %4458, %4452
  %4460 = fmul fast float %2122, 4.000000e+00
  %4461 = fmul fast float %4460, %4439
  %4462 = fmul fast float %4461, %4453
  %4463 = fadd fast float %4456, %4443
  %4464 = fadd fast float %4459, %4444
  %4465 = fadd fast float %4462, %4445
  %4466 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4467 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4468 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  br label %4469

; <label>:4469                                    ; preds = %4446, %4363
  %4470 = phi float [ %4466, %4446 ], [ %4443, %4363 ]
  %4471 = phi float [ %4467, %4446 ], [ %4444, %4363 ]
  %4472 = phi float [ %4468, %4446 ], [ %4445, %4363 ]
  %4473 = fmul fast float %4390, 9.843750e-01
  %4474 = fadd fast float %4473, 7.812500e-03
  %4475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %4474, float %3391, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4476 = extractvalue %dx.types.ResRet.f32 %4475, 2
  %4477 = extractvalue %dx.types.ResRet.f32 %4475, 3
  %4478 = fmul fast float %4476, %2110
  %4479 = fmul fast float %4476, %2111
  %4480 = fmul fast float %4476, %2122
  %4481 = fadd fast float %4478, %4477
  %4482 = fadd fast float %4479, %4477
  %4483 = fadd fast float %4480, %4477
  br i1 %3401, label %4484, label %4507

; <label>:4484                                    ; preds = %4469
  %4485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1487, float %4390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4486 = extractvalue %dx.types.ResRet.f32 %4485, 0
  %4487 = extractvalue %dx.types.ResRet.f32 %4485, 1
  %4488 = extractvalue %dx.types.ResRet.f32 %4485, 2
  %4489 = fadd fast float %4486, -5.000000e-01
  %4490 = fadd fast float %4487, -5.000000e-01
  %4491 = fadd fast float %4488, -5.000000e-01
  %4492 = fmul fast float %2110, 4.000000e+00
  %4493 = fmul fast float %4492, %4437
  %4494 = fmul fast float %4493, %4489
  %4495 = fmul fast float %2111, 4.000000e+00
  %4496 = fmul fast float %4495, %4438
  %4497 = fmul fast float %4496, %4490
  %4498 = fmul fast float %2122, 4.000000e+00
  %4499 = fmul fast float %4498, %4439
  %4500 = fmul fast float %4499, %4491
  %4501 = fadd fast float %4494, %4481
  %4502 = fadd fast float %4497, %4482
  %4503 = fadd fast float %4500, %4483
  %4504 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4505 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4506 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  br label %4507

; <label>:4507                                    ; preds = %4484, %4469
  %4508 = phi float [ %4504, %4484 ], [ %4481, %4469 ]
  %4509 = phi float [ %4505, %4484 ], [ %4482, %4469 ]
  %4510 = phi float [ %4506, %4484 ], [ %4483, %4469 ]
  %4511 = call float @dx.op.binary.f32(i32 35, float %4509, float %4510)  ; FMax(a,b)
  %4512 = call float @dx.op.binary.f32(i32 35, float %4508, float %4511)  ; FMax(a,b)
  %4513 = fsub fast float 1.000000e+00, %4512
  %4514 = fmul fast float %4470, %4428
  %4515 = fmul fast float %4471, %4428
  %4516 = fmul fast float %4472, %4428
  %4517 = fsub fast float 1.000000e+00, %4391
  %4518 = bitcast float %4517 to i32
  %4519 = sitofp i32 %4518 to float
  %4520 = fmul fast float %4519, 5.000000e+00
  %4521 = fadd fast float %4520, 0xC1EFBF8940000000
  %4522 = fptosi float %4521 to i32
  %4523 = bitcast i32 %4522 to float
  %4524 = fmul fast float %4523, %1486
  %4525 = fmul fast float %4513, %4524
  %4526 = fmul fast float %4525, %3451
  %4527 = fmul fast float %4525, %3452
  %4528 = fmul fast float %4525, %3453
  %4529 = fadd fast float %4526, %4514
  %4530 = fadd fast float %4527, %4515
  %4531 = fadd fast float %4528, %4516
  %4532 = fmul fast float %4396, %4379
  %4533 = fmul fast float %4532, %4513
  %4534 = fmul fast float %4396, %4380
  %4535 = fmul fast float %4534, %4513
  %4536 = fmul fast float %4396, %4381
  %4537 = fmul fast float %4536, %4513
  %4538 = fmul fast float %4532, %4529
  %4539 = fmul fast float %4534, %4530
  %4540 = fmul fast float %4536, %4531
  %4541 = fadd fast float %4533, %3435
  %4542 = fmul fast float %4541, %1507
  %4543 = fadd fast float %4535, %3436
  %4544 = fmul fast float %4543, %1507
  %4545 = fadd fast float %4537, %3437
  %4546 = fmul fast float %4545, %1507
  %4547 = fadd fast float %4538, %3478
  %4548 = fmul fast float %4547, %1507
  %4549 = fadd fast float %4539, %3481
  %4550 = fmul fast float %4549, %1507
  %4551 = fadd fast float %4540, %3484
  %4552 = fmul fast float %4551, %1507
  br label %4553

; <label>:4553                                    ; preds = %4507, %4297, %3428
  %4554 = phi float [ %3479, %3428 ], [ %3479, %4297 ], [ %4548, %4507 ]
  %4555 = phi float [ %3482, %3428 ], [ %3482, %4297 ], [ %4550, %4507 ]
  %4556 = phi float [ %3485, %3428 ], [ %3485, %4297 ], [ %4552, %4507 ]
  %4557 = phi float [ %3474, %3428 ], [ %3474, %4297 ], [ %4542, %4507 ]
  %4558 = phi float [ %3475, %3428 ], [ %3475, %4297 ], [ %4544, %4507 ]
  %4559 = phi float [ %3476, %3428 ], [ %3476, %4297 ], [ %4546, %4507 ]
  %4560 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4561 = extractvalue %dx.types.CBufRet.i32 %4560, 0
  %4562 = icmp eq i32 %4561, 0
  br i1 %4562, label %5183, label %4563

; <label>:4563                                    ; preds = %4553
  %4564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4565 = extractvalue %dx.types.CBufRet.f32 %4564, 2
  %4566 = extractvalue %dx.types.CBufRet.f32 %4564, 3
  %4567 = fmul fast float %4565, %93
  %4568 = fmul fast float %4566, %94
  %4569 = fptoui float %4567 to i32
  %4570 = fptoui float %4568 to i32
  %4571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4572 = extractvalue %dx.types.CBufRet.f32 %4571, 0
  %4573 = extractvalue %dx.types.CBufRet.f32 %4571, 2
  %4574 = extractvalue %dx.types.CBufRet.f32 %4571, 3
  %4575 = fadd fast float %84, -4.000000e+00
  %4576 = call float @dx.op.binary.f32(i32 35, float %4575, float 0.000000e+00)  ; FMax(a,b)
  %4577 = fadd fast float %4576, %4572
  %4578 = fmul fast float %4577, %4573
  %4579 = call float @dx.op.unary.f32(i32 23, float %4578)  ; Log(value)
  %4580 = fmul fast float %4579, %4574
  %4581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4582 = extractvalue %dx.types.CBufRet.f32 %4581, 2
  %4583 = fmul fast float %4580, %4582
  %4584 = call float @dx.op.unary.f32(i32 7, float %4583)  ; Saturate(value)
  %4585 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4586 = extractvalue %dx.types.CBufRet.i32 %4585, 1
  %4587 = add i32 %4586, -1
  %4588 = uitofp i32 %4586 to float
  %4589 = fmul fast float %4588, %4584
  %4590 = fptoui float %4589 to i32
  %4591 = call i32 @dx.op.binary.i32(i32 40, i32 %4590, i32 %4587)  ; UMin(a,b)
  %4592 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4593 = extractvalue %dx.types.CBufRet.i32 %4592, 2
  %4594 = extractvalue %dx.types.CBufRet.i32 %4592, 3
  %4595 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4570, i32 %4593, i32 %4569)  ; UMad(a,b,c)
  %4596 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4591, i32 %4594, i32 %4595)  ; UMad(a,b,c)
  %4597 = add nsw i32 %4561, -1
  %4598 = call i32 @dx.op.binary.i32(i32 37, i32 %4597, i32 0)  ; IMax(a,b)
  %4599 = call float @dx.op.binary.f32(i32 35, float %84, float 0.000000e+00)  ; FMax(a,b)
  %4600 = fptoui float %4599 to i32
  %4601 = lshr i32 %4600, 5
  %4602 = call i32 @dx.op.binary.i32(i32 40, i32 %4601, i32 8191)  ; UMin(a,b)
  %4603 = shl i32 %4602, 2
  %4604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4603, i32 undef)  ; BufferLoad(srv,index,wot)
  %4605 = extractvalue %dx.types.ResRet.i32 %4604, 0
  %4606 = lshr i32 %4605, 16
  %4607 = and i32 %4605, 65535
  %4608 = lshr i32 %4605, 21
  %4609 = lshr i32 %4607, 5
  %4610 = call i32 @dx.op.binary.i32(i32 40, i32 %4609, i32 %4598)  ; UMin(a,b)
  %4611 = icmp ugt i32 %4608, %4610
  br i1 %4611, label %5183, label %4612

; <label>:4612                                    ; preds = %4563
  br label %4613

; <label>:4613                                    ; preds = %5173, %4612
  %4614 = phi i32 [ %5180, %5173 ], [ %4608, %4612 ]
  %4615 = phi float [ %5174, %5173 ], [ %4554, %4612 ]
  %4616 = phi float [ %5175, %5173 ], [ %4555, %4612 ]
  %4617 = phi float [ %5176, %5173 ], [ %4556, %4612 ]
  %4618 = phi float [ %5177, %5173 ], [ %4557, %4612 ]
  %4619 = phi float [ %5178, %5173 ], [ %4558, %4612 ]
  %4620 = phi float [ %5179, %5173 ], [ %4559, %4612 ]
  %4621 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4622 = extractvalue %dx.types.CBufRet.i32 %4621, 0
  %4623 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4596, i32 %4622, i32 %4614)  ; UMad(a,b,c)
  %4624 = shl i32 %4623, 2
  %4625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4624, i32 undef)  ; BufferLoad(srv,index,wot)
  %4626 = extractvalue %dx.types.ResRet.i32 %4625, 0
  %4627 = shl i32 %4614, 5
  %4628 = sub nsw i32 %4606, %4627
  %4629 = call i32 @dx.op.binary.i32(i32 37, i32 %4628, i32 0)  ; IMax(a,b)
  %4630 = call i32 @dx.op.binary.i32(i32 38, i32 %4629, i32 31)  ; IMin(a,b)
  %4631 = sub nsw i32 1, %4606
  %4632 = add nsw i32 %4631, %4607
  %4633 = call i32 @dx.op.binary.i32(i32 37, i32 %4632, i32 0)  ; IMax(a,b)
  %4634 = call i32 @dx.op.binary.i32(i32 38, i32 %4633, i32 32)  ; IMin(a,b)
  %4635 = and i32 %4634, 31
  %4636 = shl i32 -1, %4635
  %4637 = xor i32 %4636, -1
  %4638 = and i32 %4630, 31
  %4639 = shl i32 %4637, %4638
  %4640 = icmp eq i32 %4634, 32
  %4641 = select i1 %4640, i32 -1, i32 %4639
  %4642 = and i32 %4641, %4626
  %4643 = icmp eq i32 %4642, 0
  br i1 %4643, label %5173, label %4644

; <label>:4644                                    ; preds = %4613
  br label %4645

; <label>:4645                                    ; preds = %4779, %4644
  %4646 = phi i32 [ %4657, %4779 ], [ %4642, %4644 ]
  %4647 = phi float [ %4780, %4779 ], [ %4615, %4644 ]
  %4648 = phi float [ %4781, %4779 ], [ %4616, %4644 ]
  %4649 = phi float [ %4782, %4779 ], [ %4617, %4644 ]
  %4650 = phi float [ %4783, %4779 ], [ %4618, %4644 ]
  %4651 = phi float [ %4784, %4779 ], [ %4619, %4644 ]
  %4652 = phi float [ %4785, %4779 ], [ %4620, %4644 ]
  %4653 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4646)  ; FirstbitLo(value)
  %4654 = add i32 %4653, %4627
  %4655 = and i32 %4653, 31
  %4656 = shl i32 1, %4655
  %4657 = xor i32 %4656, %4646
  %4658 = mul i32 %4654, 112
  %4659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4658, i32 undef)  ; BufferLoad(srv,index,wot)
  %4660 = extractvalue %dx.types.ResRet.f32 %4659, 0
  %4661 = extractvalue %dx.types.ResRet.f32 %4659, 1
  %4662 = extractvalue %dx.types.ResRet.f32 %4659, 2
  %4663 = or i32 %4658, 12
  %4664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4663, i32 undef)  ; BufferLoad(srv,index,wot)
  %4665 = extractvalue %dx.types.ResRet.f32 %4664, 0
  %4666 = add i32 %4658, 16
  %4667 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4666, i32 undef)  ; BufferLoad(srv,index,wot)
  %4668 = extractvalue %dx.types.ResRet.f32 %4667, 0
  %4669 = extractvalue %dx.types.ResRet.f32 %4667, 1
  %4670 = extractvalue %dx.types.ResRet.f32 %4667, 2
  %4671 = add i32 %4658, 28
  %4672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4671, i32 undef)  ; BufferLoad(srv,index,wot)
  %4673 = extractvalue %dx.types.ResRet.i32 %4672, 0
  %4674 = add i32 %4658, 44
  %4675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4674, i32 undef)  ; BufferLoad(srv,index,wot)
  %4676 = extractvalue %dx.types.ResRet.f32 %4675, 0
  %4677 = add i32 %4658, 48
  %4678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4677, i32 undef)  ; BufferLoad(srv,index,wot)
  %4679 = extractvalue %dx.types.ResRet.f32 %4678, 0
  %4680 = extractvalue %dx.types.ResRet.f32 %4678, 1
  %4681 = extractvalue %dx.types.ResRet.f32 %4678, 2
  %4682 = extractvalue %dx.types.ResRet.f32 %4678, 3
  %4683 = add i32 %4658, 64
  %4684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4683, i32 undef)  ; BufferLoad(srv,index,wot)
  %4685 = extractvalue %dx.types.ResRet.f32 %4684, 0
  %4686 = extractvalue %dx.types.ResRet.f32 %4684, 1
  %4687 = extractvalue %dx.types.ResRet.f32 %4684, 2
  %4688 = extractvalue %dx.types.ResRet.f32 %4684, 3
  %4689 = add i32 %4658, 80
  %4690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4689, i32 undef)  ; BufferLoad(srv,index,wot)
  %4691 = extractvalue %dx.types.ResRet.f32 %4690, 1
  %4692 = extractvalue %dx.types.ResRet.f32 %4690, 2
  %4693 = add i32 %4658, 92
  %4694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4693, i32 undef)  ; BufferLoad(srv,index,wot)
  %4695 = extractvalue %dx.types.ResRet.i32 %4694, 0
  %4696 = call float @dx.op.dot3.f32(i32 55, float %4660, float %4661, float %4662, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4697 = select i1 %239, float %4691, float %4660
  %4698 = select i1 %239, float %4696, float %4661
  %4699 = select i1 %239, float %4692, float %4662
  %4700 = and i32 %4695, 65535
  %4701 = uitofp i32 %4700 to float
  %4702 = lshr i32 %4695, 16
  %4703 = uitofp i32 %4702 to float
  %4704 = and i32 %4673, 65535
  %4705 = and i32 %4673, 50331648
  %4706 = icmp eq i32 %4705, 33554432
  %4707 = fsub fast float %4679, %148
  %4708 = fsub fast float %4680, %149
  %4709 = fsub fast float %4681, %150
  %4710 = call float @dx.op.dot3.f32(i32 55, float %4707, float %4708, float %4709, float %4707, float %4708, float %4709)  ; Dot3(ax,ay,az,bx,by,bz)
  %4711 = call float @dx.op.unary.f32(i32 24, float %4710)  ; Sqrt(value)
  %4712 = fdiv fast float 1.000000e+00, %4711
  %4713 = fmul fast float %4712, %4707
  %4714 = fmul fast float %4712, %4708
  %4715 = fmul fast float %4712, %4709
  %4716 = fadd fast float %4711, %4665
  %4717 = fdiv fast float 1.000000e+00, %4716
  %4718 = fmul float %4676, %4717
  %4719 = fmul float %4718, %4718
  %4720 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  br i1 %4706, label %4721, label %4742

; <label>:4721                                    ; preds = %4645
  %4722 = fmul fast float %4687, %4668
  %4723 = fmul fast float %4687, %4669
  %4724 = fmul fast float %4687, %4670
  %4725 = fadd fast float %4707, %4722
  %4726 = fadd fast float %4708, %4723
  %4727 = fadd fast float %4709, %4724
  %4728 = call float @dx.op.dot3.f32(i32 55, float %4725, float %4726, float %4727, float %4725, float %4726, float %4727)  ; Dot3(ax,ay,az,bx,by,bz)
  %4729 = call float @dx.op.unary.f32(i32 25, float %4728)  ; Rsqrt(value)
  %4730 = fmul fast float %4729, %4725
  %4731 = fmul fast float %4729, %4726
  %4732 = fmul fast float %4729, %4727
  %4733 = fsub fast float %148, %4679
  %4734 = fsub fast float %149, %4680
  %4735 = fsub fast float %150, %4681
  %4736 = fsub fast float -0.000000e+00, %4733
  %4737 = fsub fast float -0.000000e+00, %4734
  %4738 = fsub fast float -0.000000e+00, %4735
  %4739 = call float @dx.op.dot3.f32(i32 55, float %4736, float %4737, float %4738, float %4668, float %4669, float %4670)  ; Dot3(ax,ay,az,bx,by,bz)
  %4740 = fcmp fast ogt float %4739, 0.000000e+00
  %4741 = uitofp i1 %4740 to float
  br label %4742

; <label>:4742                                    ; preds = %4721, %4645
  %4743 = phi float [ %4741, %4721 ], [ 1.000000e+00, %4645 ]
  %4744 = phi float [ %4730, %4721 ], [ %4713, %4645 ]
  %4745 = phi float [ %4731, %4721 ], [ %4714, %4645 ]
  %4746 = phi float [ %4732, %4721 ], [ %4715, %4645 ]
  %4747 = call float @dx.op.dot3.f32(i32 55, float %4668, float %4669, float %4670, float %4744, float %4745, float %4746)  ; Dot3(ax,ay,az,bx,by,bz)
  %4748 = fmul fast float %4747, %4747
  %4749 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4750 = fsub fast float 1.000000e+00, %4749
  %4751 = fmul fast float %4750, 5.000000e-01
  %4752 = fcmp fast ogt float %4747, 0.000000e+00
  %4753 = fsub fast float 1.000000e+00, %4751
  %4754 = select i1 %4752, float %4751, float %4753
  %4755 = fmul fast float %4754, %4703
  %4756 = fadd fast float %4755, %4701
  %4757 = fmul fast float %4756, 0x3EF0001000000000
  %4758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %58, float %4757, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4759 = extractvalue %dx.types.ResRet.f32 %4758, 0
  %4760 = fmul fast float %4747, %4685
  %4761 = fadd fast float %4760, %4686
  %4762 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4763 = select i1 %4706, float 1.000000e+00, float %4762
  %4764 = select i1 %4706, float %4762, float 1.000000e+00
  %4765 = fmul fast float %4711, %4682
  %4766 = fsub fast float 1.000000e+00, %4765
  %4767 = fmul fast float %4766, %4688
  %4768 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  %4769 = fmul fast float %4768, %4764
  %4770 = fmul fast float %4769, 2.000000e+00
  %4771 = fsub fast float 3.000000e+00, %4770
  %4772 = fmul fast float %4759, %4743
  %4773 = fmul fast float %4769, %4769
  %4774 = fmul fast float %4773, %4772
  %4775 = fmul fast float %4774, %4771
  %4776 = call float @dx.op.binary.f32(i32 36, float %4775, float %4775)  ; FMin(a,b)
  %4777 = call float @dx.op.binary.f32(i32 36, float %4775, float %4776)  ; FMin(a,b)
  %4778 = fcmp fast ogt float %4777, 0.000000e+00
  br i1 %4778, label %4787, label %4779, !dx.controlflow.hints !134

; <label>:4779                                    ; preds = %5129, %4887, %4742
  %4780 = phi float [ %4647, %4887 ], [ %4647, %4742 ], [ %5169, %5129 ]
  %4781 = phi float [ %4648, %4887 ], [ %4648, %4742 ], [ %5170, %5129 ]
  %4782 = phi float [ %4649, %4887 ], [ %4649, %4742 ], [ %5171, %5129 ]
  %4783 = phi float [ %4650, %4887 ], [ %4650, %4742 ], [ %5163, %5129 ]
  %4784 = phi float [ %4651, %4887 ], [ %4651, %4742 ], [ %5164, %5129 ]
  %4785 = phi float [ %4652, %4887 ], [ %4652, %4742 ], [ %5165, %5129 ]
  %4786 = icmp eq i32 %4646, %4656
  br i1 %4786, label %5172, label %4645

; <label>:4787                                    ; preds = %4742
  %4788 = icmp eq i32 %4704, 255
  br i1 %4788, label %4887, label %4789, !dx.controlflow.hints !135

; <label>:4789                                    ; preds = %4787
  %4790 = mul nuw nsw i32 %4704, 176
  %4791 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4790, i32 undef)  ; BufferLoad(srv,index,wot)
  %4792 = extractvalue %dx.types.ResRet.f32 %4791, 0
  %4793 = extractvalue %dx.types.ResRet.f32 %4791, 1
  %4794 = extractvalue %dx.types.ResRet.f32 %4791, 2
  %4795 = extractvalue %dx.types.ResRet.f32 %4791, 3
  %4796 = add nuw nsw i32 %4790, 16
  %4797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4796, i32 undef)  ; BufferLoad(srv,index,wot)
  %4798 = extractvalue %dx.types.ResRet.f32 %4797, 0
  %4799 = extractvalue %dx.types.ResRet.f32 %4797, 1
  %4800 = add nuw nsw i32 %4790, 32
  %4801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4800, i32 undef)  ; BufferLoad(srv,index,wot)
  %4802 = extractvalue %dx.types.ResRet.f32 %4801, 0
  %4803 = extractvalue %dx.types.ResRet.f32 %4801, 1
  %4804 = extractvalue %dx.types.ResRet.f32 %4801, 2
  %4805 = add nuw nsw i32 %4790, 48
  %4806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4805, i32 undef)  ; BufferLoad(srv,index,wot)
  %4807 = extractvalue %dx.types.ResRet.f32 %4806, 0
  %4808 = extractvalue %dx.types.ResRet.f32 %4806, 1
  %4809 = extractvalue %dx.types.ResRet.f32 %4806, 2
  %4810 = extractvalue %dx.types.ResRet.f32 %4806, 3
  %4811 = add nuw nsw i32 %4790, 64
  %4812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4811, i32 undef)  ; BufferLoad(srv,index,wot)
  %4813 = extractvalue %dx.types.ResRet.f32 %4812, 0
  %4814 = extractvalue %dx.types.ResRet.f32 %4812, 1
  %4815 = extractvalue %dx.types.ResRet.f32 %4812, 2
  %4816 = extractvalue %dx.types.ResRet.f32 %4812, 3
  %4817 = add nuw nsw i32 %4790, 80
  %4818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4817, i32 undef)  ; BufferLoad(srv,index,wot)
  %4819 = extractvalue %dx.types.ResRet.f32 %4818, 0
  %4820 = extractvalue %dx.types.ResRet.f32 %4818, 1
  %4821 = extractvalue %dx.types.ResRet.f32 %4818, 2
  %4822 = extractvalue %dx.types.ResRet.f32 %4818, 3
  %4823 = add nuw nsw i32 %4790, 96
  %4824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4823, i32 undef)  ; BufferLoad(srv,index,wot)
  %4825 = extractvalue %dx.types.ResRet.f32 %4824, 0
  %4826 = extractvalue %dx.types.ResRet.f32 %4824, 1
  %4827 = extractvalue %dx.types.ResRet.f32 %4824, 2
  %4828 = extractvalue %dx.types.ResRet.f32 %4824, 3
  %4829 = bitcast float %4799 to i32
  %4830 = fmul fast float %4804, %96
  %4831 = fmul fast float %4804, %97
  %4832 = fmul fast float %4804, %98
  %4833 = fadd fast float %4830, %148
  %4834 = fadd fast float %4831, %149
  %4835 = fadd fast float %4832, %150
  %4836 = fmul fast float %4833, %4807
  %4837 = call float @dx.op.tertiary.f32(i32 46, float %4834, float %4813, float %4836)  ; FMad(a,b,c)
  %4838 = call float @dx.op.tertiary.f32(i32 46, float %4835, float %4819, float %4837)  ; FMad(a,b,c)
  %4839 = fadd fast float %4838, %4825
  %4840 = fmul fast float %4833, %4808
  %4841 = call float @dx.op.tertiary.f32(i32 46, float %4834, float %4814, float %4840)  ; FMad(a,b,c)
  %4842 = call float @dx.op.tertiary.f32(i32 46, float %4835, float %4820, float %4841)  ; FMad(a,b,c)
  %4843 = fadd fast float %4842, %4826
  %4844 = fmul fast float %4833, %4809
  %4845 = call float @dx.op.tertiary.f32(i32 46, float %4834, float %4815, float %4844)  ; FMad(a,b,c)
  %4846 = call float @dx.op.tertiary.f32(i32 46, float %4835, float %4821, float %4845)  ; FMad(a,b,c)
  %4847 = fadd fast float %4846, %4827
  %4848 = fmul fast float %4833, %4810
  %4849 = call float @dx.op.tertiary.f32(i32 46, float %4834, float %4816, float %4848)  ; FMad(a,b,c)
  %4850 = call float @dx.op.tertiary.f32(i32 46, float %4835, float %4822, float %4849)  ; FMad(a,b,c)
  %4851 = fadd fast float %4850, %4828
  %4852 = fdiv fast float %4839, %4851
  %4853 = fdiv fast float %4843, %4851
  %4854 = fdiv fast float %4847, %4851
  %4855 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4854)  ; FMax(a,b)
  %4856 = fmul fast float %250, 0x401921FB60000000
  %4857 = call float @dx.op.unary.f32(i32 13, float %4856)  ; Sin(value)
  %4858 = call float @dx.op.unary.f32(i32 12, float %4856)  ; Cos(value)
  %4859 = fsub fast float -0.000000e+00, %4857
  %4860 = fmul fast float %4794, 5.000000e-01
  %4861 = call float @dx.op.dot2.f32(i32 54, float %250, float %250, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %4862 = call float @dx.op.unary.f32(i32 22, float %4861)  ; Frc(value)
  %4863 = fmul fast float %4862, 0x404A7DD040000000
  %4864 = call float @dx.op.unary.f32(i32 22, float %4863)  ; Frc(value)
  %4865 = fmul fast float %4864, %4803
  %4866 = fadd fast float %4865, %4860
  %4867 = call float @dx.op.tertiary.f32(i32 46, float %4866, float %4859, float 0.000000e+00)  ; FMad(a,b,c)
  %4868 = call float @dx.op.tertiary.f32(i32 46, float %4866, float %4858, float 0.000000e+00)  ; FMad(a,b,c)
  %4869 = fadd fast float %4867, %4852
  %4870 = fadd fast float %4868, %4853
  %4871 = fmul fast float %4869, %4798
  %4872 = fmul fast float %4870, %4798
  %4873 = call float @dx.op.binary.f32(i32 35, float %4871, float %4794)  ; FMax(a,b)
  %4874 = call float @dx.op.binary.f32(i32 35, float %4872, float %4794)  ; FMax(a,b)
  %4875 = call float @dx.op.binary.f32(i32 36, float %4873, float %4795)  ; FMin(a,b)
  %4876 = call float @dx.op.binary.f32(i32 36, float %4874, float %4795)  ; FMin(a,b)
  %4877 = fadd fast float %4875, %4792
  %4878 = fadd fast float %4876, %4793
  %4879 = uitofp i32 %4829 to float
  %4880 = fadd fast float %4855, %4802
  %4881 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %60, float %4877, float %4878, float %4879, float undef, i32 0, i32 0, i32 undef, float %4880)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4882 = extractvalue %dx.types.ResRet.f32 %4881, 0
  %4883 = fadd fast float %4882, -1.000000e+00
  %4884 = fmul fast float %4883, %4763
  %4885 = fadd fast float %4884, 1.000000e+00
  %4886 = fmul fast float %4885, %4775
  br label %4887

; <label>:4887                                    ; preds = %4789, %4787
  %4888 = phi float [ %4886, %4789 ], [ %4775, %4787 ]
  %4889 = call float @dx.op.binary.f32(i32 36, float %4888, float %4888)  ; FMin(a,b)
  %4890 = call float @dx.op.binary.f32(i32 36, float %4888, float %4889)  ; FMin(a,b)
  %4891 = fcmp fast ogt float %4890, 0.000000e+00
  br i1 %4891, label %4892, label %4779, !dx.controlflow.hints !136

; <label>:4892                                    ; preds = %4887
  %4893 = fmul fast float %4888, %4697
  %4894 = fmul fast float %4888, %4698
  %4895 = fmul fast float %4888, %4699
  %4896 = fsub fast float %4681, %1909
  %4897 = fcmp fast ogt float %4896, 0.000000e+00
  %4898 = fsub fast float %150, %1909
  %4899 = fcmp fast ogt float %4898, 0.000000e+00
  %4900 = xor i1 %4899, %4897
  %4901 = fsub fast float %1909, %4681
  %4902 = fmul fast float %4901, 2.000000e+00
  %4903 = fadd fast float %4902, %4681
  %4904 = select i1 %4900, float %4681, float %4903
  %4905 = fsub fast float %4904, %150
  %4906 = call float @dx.op.dot3.f32(i32 55, float %4707, float %4708, float %4905, float %4707, float %4708, float %4905)  ; Dot3(ax,ay,az,bx,by,bz)
  %4907 = call float @dx.op.unary.f32(i32 25, float %4906)  ; Rsqrt(value)
  %4908 = fmul fast float %4907, %4707
  %4909 = fmul fast float %4907, %4708
  %4910 = fmul fast float %4907, %4905
  %4911 = fsub fast float %1909, %150
  %4912 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4911)  ; Dot3(ax,ay,az,bx,by,bz)
  %4913 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4908, float %4909, float %4910)  ; Dot3(ax,ay,az,bx,by,bz)
  %4914 = fdiv fast float 1.000000e+00, %4913
  %4915 = fmul fast float %4914, %4912
  %4916 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4898, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4917 = fcmp fast ogt float %4916, 0.000000e+00
  %4918 = fcmp fast olt float %4916, 0.000000e+00
  %4919 = zext i1 %4917 to i32
  %4920 = zext i1 %4918 to i32
  %4921 = sub nsw i32 %4919, %4920
  %4922 = sitofp i32 %4921 to float
  %4923 = fsub fast float %4904, %1909
  %4924 = call float @dx.op.dot3.f32(i32 55, float %4707, float %4708, float %4923, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4925 = fcmp fast ogt float %4924, 0.000000e+00
  %4926 = fcmp fast olt float %4924, 0.000000e+00
  %4927 = zext i1 %4925 to i32
  %4928 = zext i1 %4926 to i32
  %4929 = sub nsw i32 %4927, %4928
  %4930 = sitofp i32 %4929 to float
  %4931 = fcmp fast une float %4922, %4930
  br i1 %4931, label %4932, label %4942

; <label>:4932                                    ; preds = %4892
  %4933 = fmul fast float %4915, %4910
  %4934 = fmul fast float %4915, %4909
  %4935 = fmul fast float %4915, %4908
  %4936 = fmul fast float %4935, %4935
  %4937 = fmul fast float %4934, %4934
  %4938 = fadd fast float %4936, %4937
  %4939 = fmul fast float %4933, %4933
  %4940 = fadd fast float %4938, %4939
  %4941 = call float @dx.op.unary.f32(i32 24, float %4940)  ; Sqrt(value)
  br label %4954

; <label>:4942                                    ; preds = %4892
  %4943 = icmp slt i32 %4921, 0
  br i1 %4943, label %4944, label %4954

; <label>:4944                                    ; preds = %4942
  %4945 = fsub fast float %148, %4679
  %4946 = fsub fast float %149, %4680
  %4947 = fsub fast float %150, %4904
  %4948 = fmul fast float %4945, %4945
  %4949 = fmul fast float %4946, %4946
  %4950 = fadd fast float %4948, %4949
  %4951 = fmul fast float %4947, %4947
  %4952 = fadd fast float %4950, %4951
  %4953 = call float @dx.op.unary.f32(i32 24, float %4952)  ; Sqrt(value)
  br label %4954

; <label>:4954                                    ; preds = %4944, %4942, %4932
  %4955 = phi float [ %4941, %4932 ], [ %4953, %4944 ], [ 0.000000e+00, %4942 ]
  %4956 = and i1 %4899, %4897
  %4957 = fsub fast float -0.000000e+00, %4955
  %4958 = select i1 %4956, float -0.000000e+00, float %4957
  %4959 = fmul fast float %1910, 0x3FF7154760000000
  %4960 = fmul fast float %4959, %4958
  %4961 = fmul fast float %1911, 0x3FF7154760000000
  %4962 = fmul fast float %4961, %4958
  %4963 = fmul fast float %1912, 0x3FF7154760000000
  %4964 = fmul fast float %4963, %4958
  %4965 = call float @dx.op.unary.f32(i32 21, float %4960)  ; Exp(value)
  %4966 = call float @dx.op.unary.f32(i32 21, float %4962)  ; Exp(value)
  %4967 = call float @dx.op.unary.f32(i32 21, float %4964)  ; Exp(value)
  %4968 = call float @dx.op.unary.f32(i32 7, float %4965)  ; Saturate(value)
  %4969 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4970 = call float @dx.op.unary.f32(i32 7, float %4967)  ; Saturate(value)
  %4971 = fmul fast float %4893, %4968
  %4972 = fmul fast float %4894, %4969
  %4973 = fmul fast float %4895, %4970
  %4974 = fsub fast float %4713, %2109
  %4975 = fsub fast float %4714, %2108
  %4976 = fsub fast float %4715, %2107
  %4977 = call float @dx.op.dot3.f32(i32 55, float %4974, float %4975, float %4976, float %4974, float %4975, float %4976)  ; Dot3(ax,ay,az,bx,by,bz)
  %4978 = call float @dx.op.unary.f32(i32 25, float %4977)  ; Rsqrt(value)
  %4979 = fmul fast float %4978, %4974
  %4980 = fmul fast float %4978, %4975
  %4981 = fmul fast float %4978, %4976
  %4982 = call float @dx.op.dot3.f32(i32 55, float %4713, float %4714, float %4715, float %2116, float %2117, float %2118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4983 = call float @dx.op.dot3.f32(i32 55, float %2106, float %2105, float %2104, float %4979, float %4980, float %4981)  ; Dot3(ax,ay,az,bx,by,bz)
  %4984 = call float @dx.op.unary.f32(i32 7, float %4982)  ; Saturate(value)
  %4985 = fmul fast float %4984, %4720
  %4986 = fmul fast float %4984, %4984
  %4987 = fmul fast float %4986, %3486
  %4988 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4989 = fmul fast float %4985, %4988
  %4990 = bitcast float %4710 to i32
  %4991 = ashr i32 %4990, 1
  %4992 = sub nsw i32 1597463007, %4991
  %4993 = bitcast i32 %4992 to float
  %4994 = fmul fast float %4993, %4707
  %4995 = fmul fast float %4993, %4708
  %4996 = fmul fast float %4993, %4709
  %4997 = fsub fast float %4994, %2109
  %4998 = fsub fast float %4995, %2108
  %4999 = fsub fast float %4996, %2107
  %5000 = call float @dx.op.dot3.f32(i32 55, float %4997, float %4998, float %4999, float %4997, float %4998, float %4999)  ; Dot3(ax,ay,az,bx,by,bz)
  %5001 = call float @dx.op.unary.f32(i32 25, float %5000)  ; Rsqrt(value)
  %5002 = fmul fast float %4997, %5001
  %5003 = fmul fast float %4998, %5001
  %5004 = fmul fast float %4999, %5001
  %5005 = call float @dx.op.dot3.f32(i32 55, float %2116, float %2117, float %2118, float %5002, float %5003, float %5004)  ; Dot3(ax,ay,az,bx,by,bz)
  %5006 = fmul fast float %5005, %5005
  %5007 = call float @dx.op.unary.f32(i32 6, float %4982)  ; FAbs(value)
  %5008 = fsub fast float 1.000000e+00, %2119
  %5009 = call float @dx.op.binary.f32(i32 35, float %5008, float 0x3F847AE140000000)  ; FMax(a,b)
  %5010 = fmul fast float %5009, %5009
  %5011 = fmul fast float %5010, %5010
  %5012 = fsub fast float 1.000000e+00, %5011
  %5013 = fmul fast float %2124, %2124
  %5014 = fmul fast float %5013, %5012
  %5015 = fadd fast float %5014, %5011
  %5016 = bitcast float %5015 to i32
  %5017 = ashr i32 %5016, 1
  %5018 = add nsw i32 %5017, 532487669
  %5019 = bitcast i32 %5018 to float
  %5020 = fadd fast float %5019, %2124
  %5021 = fmul fast float %5011, %5006
  %5022 = fsub fast float 1.000000e+00, %5006
  %5023 = fadd fast float %5022, %5021
  %5024 = fmul fast float %5007, %5007
  %5025 = fmul fast float %5024, %5012
  %5026 = fadd fast float %5025, %5011
  %5027 = bitcast float %5026 to i32
  %5028 = ashr i32 %5027, 1
  %5029 = add nsw i32 %5028, 532487669
  %5030 = bitcast i32 %5029 to float
  %5031 = fadd fast float %5030, %5007
  %5032 = fmul fast float %5023, %5023
  %5033 = fmul fast float %5032, %5020
  %5034 = fmul fast float %5033, %5031
  %5035 = fdiv fast float 1.000000e+00, %5034
  %5036 = bitcast float %5011 to i32
  %5037 = sitofp i32 %5036 to float
  %5038 = fmul fast float %5037, 0x3FE7F73180000000
  %5039 = fadd fast float %5038, 0x41AFE27C40000000
  %5040 = fptosi float %5039 to i32
  %5041 = bitcast i32 %5040 to float
  %5042 = fmul fast float %4676, 0x3FD80E9D60000000
  %5043 = fmul fast float %5042, %4993
  %5044 = fadd fast float %5041, %5043
  %5045 = bitcast float %5044 to i32
  %5046 = sub nsw i32 2129859010, %5045
  %5047 = bitcast i32 %5046 to float
  %5048 = fmul fast float %5011, %5035
  %5049 = fmul fast float %5048, %5041
  %5050 = fmul fast float %5049, %5047
  %5051 = call float @dx.op.unary.f32(i32 6, float %4983)  ; FAbs(value)
  %5052 = fsub fast float 1.000000e+00, %5051
  %5053 = bitcast float %5052 to i32
  %5054 = sitofp i32 %5053 to float
  %5055 = fmul fast float %5054, 5.000000e+00
  %5056 = fadd fast float %5055, 0xC1EFBF8940000000
  %5057 = fptosi float %5056 to i32
  %5058 = bitcast i32 %5057 to float
  %5059 = fsub fast float 1.000000e+00, %2110
  %5060 = fsub fast float 1.000000e+00, %2111
  %5061 = fsub fast float 1.000000e+00, %2122
  %5062 = fmul fast float %5058, %5059
  %5063 = fmul fast float %5058, %5060
  %5064 = fmul fast float %5058, %5061
  %5065 = fadd fast float %5062, %2110
  %5066 = fadd fast float %5063, %2111
  %5067 = fadd fast float %5064, %2122
  br i1 %3401, label %5068, label %5091

; <label>:5068                                    ; preds = %4954
  %5069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1487, float %5051, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5070 = extractvalue %dx.types.ResRet.f32 %5069, 0
  %5071 = extractvalue %dx.types.ResRet.f32 %5069, 1
  %5072 = extractvalue %dx.types.ResRet.f32 %5069, 2
  %5073 = fadd fast float %5070, -5.000000e-01
  %5074 = fadd fast float %5071, -5.000000e-01
  %5075 = fadd fast float %5072, -5.000000e-01
  %5076 = fmul fast float %2110, 4.000000e+00
  %5077 = fmul fast float %5076, %5059
  %5078 = fmul fast float %5077, %5073
  %5079 = fmul fast float %2111, 4.000000e+00
  %5080 = fmul fast float %5079, %5060
  %5081 = fmul fast float %5080, %5074
  %5082 = fmul fast float %2122, 4.000000e+00
  %5083 = fmul fast float %5082, %5061
  %5084 = fmul fast float %5083, %5075
  %5085 = fadd fast float %5078, %5065
  %5086 = fadd fast float %5081, %5066
  %5087 = fadd fast float %5084, %5067
  %5088 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5089 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5090 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  br label %5091

; <label>:5091                                    ; preds = %5068, %4954
  %5092 = phi float [ %5088, %5068 ], [ %5065, %4954 ]
  %5093 = phi float [ %5089, %5068 ], [ %5066, %4954 ]
  %5094 = phi float [ %5090, %5068 ], [ %5067, %4954 ]
  %5095 = fmul fast float %4982, 9.843750e-01
  %5096 = fadd fast float %5095, 7.812500e-03
  %5097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5096, float %3391, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5098 = extractvalue %dx.types.ResRet.f32 %5097, 2
  %5099 = extractvalue %dx.types.ResRet.f32 %5097, 3
  %5100 = fmul fast float %5098, %2110
  %5101 = fmul fast float %5098, %2111
  %5102 = fmul fast float %5098, %2122
  %5103 = fadd fast float %5100, %5099
  %5104 = fadd fast float %5101, %5099
  %5105 = fadd fast float %5102, %5099
  br i1 %3401, label %5106, label %5129

; <label>:5106                                    ; preds = %5091
  %5107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1487, float %4982, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5108 = extractvalue %dx.types.ResRet.f32 %5107, 0
  %5109 = extractvalue %dx.types.ResRet.f32 %5107, 1
  %5110 = extractvalue %dx.types.ResRet.f32 %5107, 2
  %5111 = fadd fast float %5108, -5.000000e-01
  %5112 = fadd fast float %5109, -5.000000e-01
  %5113 = fadd fast float %5110, -5.000000e-01
  %5114 = fmul fast float %2110, 4.000000e+00
  %5115 = fmul fast float %5114, %5059
  %5116 = fmul fast float %5115, %5111
  %5117 = fmul fast float %2111, 4.000000e+00
  %5118 = fmul fast float %5117, %5060
  %5119 = fmul fast float %5118, %5112
  %5120 = fmul fast float %2122, 4.000000e+00
  %5121 = fmul fast float %5120, %5061
  %5122 = fmul fast float %5121, %5113
  %5123 = fadd fast float %5116, %5103
  %5124 = fadd fast float %5119, %5104
  %5125 = fadd fast float %5122, %5105
  %5126 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  %5127 = call float @dx.op.unary.f32(i32 7, float %5124)  ; Saturate(value)
  %5128 = call float @dx.op.unary.f32(i32 7, float %5125)  ; Saturate(value)
  br label %5129

; <label>:5129                                    ; preds = %5106, %5091
  %5130 = phi float [ %5126, %5106 ], [ %5103, %5091 ]
  %5131 = phi float [ %5127, %5106 ], [ %5104, %5091 ]
  %5132 = phi float [ %5128, %5106 ], [ %5105, %5091 ]
  %5133 = call float @dx.op.binary.f32(i32 35, float %5131, float %5132)  ; FMax(a,b)
  %5134 = call float @dx.op.binary.f32(i32 35, float %5130, float %5133)  ; FMax(a,b)
  %5135 = fsub fast float 1.000000e+00, %5134
  %5136 = fmul fast float %5092, %5050
  %5137 = fmul fast float %5093, %5050
  %5138 = fmul fast float %5094, %5050
  %5139 = fsub fast float 1.000000e+00, %4983
  %5140 = bitcast float %5139 to i32
  %5141 = sitofp i32 %5140 to float
  %5142 = fmul fast float %5141, 5.000000e+00
  %5143 = fadd fast float %5142, 0xC1EFBF8940000000
  %5144 = fptosi float %5143 to i32
  %5145 = bitcast i32 %5144 to float
  %5146 = fmul fast float %5145, %1486
  %5147 = fmul fast float %5135, %5146
  %5148 = fmul fast float %5147, %3451
  %5149 = fmul fast float %5147, %3452
  %5150 = fmul fast float %5147, %3453
  %5151 = fadd fast float %5148, %5136
  %5152 = fadd fast float %5149, %5137
  %5153 = fadd fast float %5150, %5138
  %5154 = fmul fast float %4971, %1507
  %5155 = fmul fast float %5154, %4989
  %5156 = fmul fast float %5155, %5135
  %5157 = fmul fast float %4972, %1507
  %5158 = fmul fast float %5157, %4989
  %5159 = fmul fast float %5158, %5135
  %5160 = fmul fast float %4973, %1507
  %5161 = fmul fast float %5160, %4989
  %5162 = fmul fast float %5161, %5135
  %5163 = fadd fast float %5156, %4650
  %5164 = fadd fast float %5159, %4651
  %5165 = fadd fast float %5162, %4652
  %5166 = fmul fast float %5155, %5151
  %5167 = fmul fast float %5158, %5152
  %5168 = fmul fast float %5161, %5153
  %5169 = fadd fast float %5166, %4647
  %5170 = fadd fast float %5167, %4648
  %5171 = fadd fast float %5168, %4649
  br label %4779

; <label>:5172                                    ; preds = %4779
  br label %5173

; <label>:5173                                    ; preds = %5172, %4613
  %5174 = phi float [ %4615, %4613 ], [ %4780, %5172 ]
  %5175 = phi float [ %4616, %4613 ], [ %4781, %5172 ]
  %5176 = phi float [ %4617, %4613 ], [ %4782, %5172 ]
  %5177 = phi float [ %4618, %4613 ], [ %4783, %5172 ]
  %5178 = phi float [ %4619, %4613 ], [ %4784, %5172 ]
  %5179 = phi float [ %4620, %4613 ], [ %4785, %5172 ]
  %5180 = add i32 %4614, 1
  %5181 = icmp ugt i32 %5180, %4610
  br i1 %5181, label %5182, label %4613

; <label>:5182                                    ; preds = %5173
  br label %5183

; <label>:5183                                    ; preds = %5182, %4563, %4553
  %5184 = phi float [ %4554, %4553 ], [ %4554, %4563 ], [ %5174, %5182 ]
  %5185 = phi float [ %4555, %4553 ], [ %4555, %4563 ], [ %5175, %5182 ]
  %5186 = phi float [ %4556, %4553 ], [ %4556, %4563 ], [ %5176, %5182 ]
  %5187 = phi float [ %4557, %4553 ], [ %4557, %4563 ], [ %5177, %5182 ]
  %5188 = phi float [ %4558, %4553 ], [ %4558, %4563 ], [ %5178, %5182 ]
  %5189 = phi float [ %4559, %4553 ], [ %4559, %4563 ], [ %5179, %5182 ]
  %5190 = fmul fast float %1507, %1507
  %5191 = fsub fast float 1.000000e+00, %5190
  %5192 = call float @dx.op.dot3.f32(i32 55, float %5191, float %5191, float %5191, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5193 = fsub fast float 1.000000e+00, %5192
  %5194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5194, 0
  %5196 = fmul fast float %5195, %3457
  %5197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5198 = extractvalue %dx.types.CBufRet.f32 %5197, 3
  %5199 = fsub fast float 1.000000e+00, %1485
  %5200 = call float @dx.op.unary.f32(i32 7, float %5199)  ; Saturate(value)
  %5201 = fadd fast float %5189, %1484
  %5202 = fmul fast float %5201, %1485
  %5203 = fmul fast float %5200, %5198
  %5204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5205 = extractvalue %dx.types.CBufRet.f32 %5204, 3
  %5206 = fmul fast float %5187, %2113
  %5207 = fmul fast float %5188, %2114
  %5208 = fmul fast float %5189, %2115
  %5209 = fcmp fast ogt float %84, %199
  %5210 = and i1 %5209, %1915
  %5211 = or i1 %1921, %5210
  %5212 = icmp eq i32 %1914, 2
  %5213 = fcmp fast ole float %84, %199
  %5214 = and i1 %5213, %5212
  %5215 = or i1 %5214, %5211
  br i1 %5210, label %5216, label %5475

; <label>:5216                                    ; preds = %5183
  %5217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5218 = extractvalue %dx.types.CBufRet.f32 %5217, 2
  %5219 = extractvalue %dx.types.CBufRet.f32 %5217, 3
  %5220 = fmul fast float %5218, %93
  %5221 = fmul fast float %5219, %94
  %5222 = call float @dx.op.unary.f32(i32 7, float %5220)  ; Saturate(value)
  %5223 = call float @dx.op.unary.f32(i32 7, float %5221)  ; Saturate(value)
  %5224 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5222, float %5223, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5225 = extractvalue %dx.types.ResRet.f32 %5224, 0
  %5226 = extractvalue %dx.types.ResRet.f32 %5224, 1
  %5227 = extractvalue %dx.types.ResRet.f32 %5224, 2
  %5228 = extractvalue %dx.types.ResRet.f32 %5224, 3
  %5229 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5222, float %5223, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5230 = extractvalue %dx.types.ResRet.f32 %5229, 0
  %5231 = extractvalue %dx.types.ResRet.f32 %5229, 1
  %5232 = extractvalue %dx.types.ResRet.f32 %5229, 2
  %5233 = extractvalue %dx.types.ResRet.f32 %5229, 3
  %5234 = call float @dx.op.binary.f32(i32 35, float %5226, float %5227)  ; FMax(a,b)
  %5235 = call float @dx.op.binary.f32(i32 35, float %5225, float %5234)  ; FMax(a,b)
  %5236 = call float @dx.op.binary.f32(i32 35, float %5235, float %5228)  ; FMax(a,b)
  %5237 = call float @dx.op.binary.f32(i32 36, float %5231, float %5232)  ; FMin(a,b)
  %5238 = call float @dx.op.binary.f32(i32 36, float %5230, float %5237)  ; FMin(a,b)
  %5239 = call float @dx.op.binary.f32(i32 36, float %5238, float %5233)  ; FMin(a,b)
  %5240 = fmul fast float %5236, 2.550000e+02
  %5241 = fadd fast float %5240, 0x3F70101020000000
  %5242 = fptoui float %5241 to i32
  %5243 = fmul fast float %5239, 2.550000e+02
  %5244 = fadd fast float %5243, 0x3F70101020000000
  %5245 = fptoui float %5244 to i32
  %5246 = icmp ult i32 %5242, %5245
  br i1 %5246, label %5247, label %5415

; <label>:5247                                    ; preds = %5216
  %5248 = fcmp fast ogt float %83, 9.843750e-01
  %5249 = fadd fast float %84, -4.000000e+00
  %5250 = select i1 %5248, float -4.000000e+00, float %5249
  %5251 = call float @dx.op.binary.f32(i32 35, float %5250, float 0.000000e+00)  ; FMax(a,b)
  %5252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5253 = extractvalue %dx.types.CBufRet.f32 %5252, 0
  %5254 = fadd fast float %5253, %5251
  %5255 = extractvalue %dx.types.CBufRet.f32 %5252, 2
  %5256 = fmul fast float %5254, %5255
  %5257 = call float @dx.op.unary.f32(i32 23, float %5256)  ; Log(value)
  %5258 = extractvalue %dx.types.CBufRet.f32 %5252, 3
  %5259 = fmul fast float %5258, %5257
  %5260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5261 = extractvalue %dx.types.CBufRet.f32 %5260, 2
  %5262 = fmul fast float %5259, %5261
  %5263 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5264 = uitofp i32 %5242 to float
  %5265 = uitofp i32 %5245 to float
  %5266 = fadd fast float %5264, 5.000000e-01
  %5267 = fadd fast float %5265, 5.000000e-01
  %5268 = fmul fast float %5261, %5266
  %5269 = fmul fast float %5261, %5267
  %5270 = fadd fast float %5268, 0x3F0FFB4800000000
  %5271 = fadd fast float %5269, 0xBF0FFB4800000000
  %5272 = call float @dx.op.binary.f32(i32 35, float %5263, float %5270)  ; FMax(a,b)
  %5273 = call float @dx.op.binary.f32(i32 36, float %5272, float %5271)  ; FMin(a,b)
  %5274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5275 = extractvalue %dx.types.CBufRet.f32 %5274, 1
  %5276 = extractvalue %dx.types.CBufRet.f32 %5274, 2
  %5277 = extractvalue %dx.types.CBufRet.f32 %5274, 0
  %5278 = fmul fast float %5275, %5273
  %5279 = fadd fast float %5277, %5278
  %5280 = fadd fast float %5277, %5276
  %5281 = fsub fast float %5275, %5276
  %5282 = fadd fast float %5281, %5277
  %5283 = call float @dx.op.binary.f32(i32 35, float %5279, float %5280)  ; FMax(a,b)
  %5284 = call float @dx.op.binary.f32(i32 36, float %5283, float %5282)  ; FMin(a,b)
  %5285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %5222, float %5223, float %5284, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5286 = extractvalue %dx.types.ResRet.f32 %5285, 0
  %5287 = extractvalue %dx.types.ResRet.f32 %5285, 1
  %5288 = extractvalue %dx.types.ResRet.f32 %5285, 2
  %5289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.i32 %5289, 0
  %5291 = extractvalue %dx.types.CBufRet.i32 %5289, 1
  %5292 = uitofp i32 %5290 to float
  %5293 = uitofp i32 %5291 to float
  %5294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5295 = extractvalue %dx.types.CBufRet.f32 %5294, 0
  %5296 = extractvalue %dx.types.CBufRet.f32 %5294, 1
  %5297 = fmul fast float %5292, %5222
  %5298 = fmul fast float %5293, %5223
  %5299 = fadd fast float %5297, -5.000000e-01
  %5300 = fadd fast float %5298, -5.000000e-01
  %5301 = call float @dx.op.unary.f32(i32 22, float %5299)  ; Frc(value)
  %5302 = call float @dx.op.unary.f32(i32 22, float %5300)  ; Frc(value)
  %5303 = fmul fast float %5301, %5301
  %5304 = fmul fast float %5303, %5301
  %5305 = fsub fast float 3.000000e+00, %5301
  %5306 = fmul fast float %5303, %5305
  %5307 = fmul fast float %5301, 3.000000e+00
  %5308 = fmul fast float %5304, 3.000000e+00
  %5309 = fmul fast float %5303, 6.000000e+00
  %5310 = fsub fast float %5308, %5309
  %5311 = fadd fast float %5310, 4.000000e+00
  %5312 = fmul fast float %5311, 0x3FC5555560000000
  %5313 = fmul fast float %5304, -3.000000e+00
  %5314 = fadd fast float %5303, %5301
  %5315 = fmul fast float %5314, 3.000000e+00
  %5316 = fadd fast float %5313, 1.000000e+00
  %5317 = fadd fast float %5316, %5315
  %5318 = fmul fast float %5304, 0x3FC5555560000000
  %5319 = fmul fast float %5302, %5302
  %5320 = fmul fast float %5319, %5302
  %5321 = fsub fast float 3.000000e+00, %5302
  %5322 = fmul fast float %5319, %5321
  %5323 = fmul fast float %5302, 3.000000e+00
  %5324 = fmul fast float %5320, 3.000000e+00
  %5325 = fmul fast float %5319, 6.000000e+00
  %5326 = fsub fast float %5324, %5325
  %5327 = fadd fast float %5326, 4.000000e+00
  %5328 = fmul fast float %5327, 0x3FC5555560000000
  %5329 = fmul fast float %5320, -3.000000e+00
  %5330 = fadd fast float %5319, %5302
  %5331 = fmul fast float %5330, 3.000000e+00
  %5332 = fadd fast float %5329, 1.000000e+00
  %5333 = fadd fast float %5332, %5331
  %5334 = fmul fast float %5320, 0x3FC5555560000000
  %5335 = fadd fast float %5301, 1.000000e+00
  %5336 = fsub fast float 1.000000e+00, %5307
  %5337 = fadd fast float %5336, %5306
  %5338 = fadd fast float %5337, %5311
  %5339 = fmul fast float %5338, 0x3FC5555560000000
  %5340 = fdiv fast float %5312, %5339
  %5341 = fsub fast float %5335, %5340
  %5342 = fsub fast float 1.000000e+00, %5301
  %5343 = fadd fast float %5317, %5304
  %5344 = fmul fast float %5343, 0x3FC5555560000000
  %5345 = fdiv fast float %5318, %5344
  %5346 = fadd fast float %5342, %5345
  %5347 = fadd fast float %5302, 1.000000e+00
  %5348 = fsub fast float 1.000000e+00, %5323
  %5349 = fadd fast float %5348, %5322
  %5350 = fadd fast float %5349, %5327
  %5351 = fmul fast float %5350, 0x3FC5555560000000
  %5352 = fdiv fast float %5328, %5351
  %5353 = fsub fast float %5347, %5352
  %5354 = fsub fast float 1.000000e+00, %5302
  %5355 = fadd fast float %5333, %5320
  %5356 = fmul fast float %5355, 0x3FC5555560000000
  %5357 = fdiv fast float %5334, %5356
  %5358 = fadd fast float %5357, %5354
  %5359 = fmul fast float %5341, %5295
  %5360 = fsub fast float %5222, %5359
  %5361 = fmul fast float %5346, %5295
  %5362 = fadd fast float %5361, %5222
  %5363 = fmul fast float %5358, %5296
  %5364 = fadd fast float %5363, %5223
  %5365 = fmul fast float %5353, %5296
  %5366 = fsub fast float %5223, %5365
  %5367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5360, float %5366, float %5284, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5368 = extractvalue %dx.types.ResRet.f32 %5367, 0
  %5369 = extractvalue %dx.types.ResRet.f32 %5367, 1
  %5370 = extractvalue %dx.types.ResRet.f32 %5367, 2
  %5371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5362, float %5366, float %5284, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5372 = extractvalue %dx.types.ResRet.f32 %5371, 0
  %5373 = extractvalue %dx.types.ResRet.f32 %5371, 1
  %5374 = extractvalue %dx.types.ResRet.f32 %5371, 2
  %5375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5360, float %5364, float %5284, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5376 = extractvalue %dx.types.ResRet.f32 %5375, 0
  %5377 = extractvalue %dx.types.ResRet.f32 %5375, 1
  %5378 = extractvalue %dx.types.ResRet.f32 %5375, 2
  %5379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5362, float %5364, float %5284, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5380 = extractvalue %dx.types.ResRet.f32 %5379, 0
  %5381 = extractvalue %dx.types.ResRet.f32 %5379, 1
  %5382 = extractvalue %dx.types.ResRet.f32 %5379, 2
  %5383 = fsub fast float %5376, %5368
  %5384 = fsub fast float %5377, %5369
  %5385 = fsub fast float %5378, %5370
  %5386 = fmul fast float %5383, %5356
  %5387 = fmul fast float %5384, %5356
  %5388 = fmul fast float %5385, %5356
  %5389 = fadd fast float %5386, %5368
  %5390 = fadd fast float %5387, %5369
  %5391 = fadd fast float %5388, %5370
  %5392 = fsub fast float %5380, %5372
  %5393 = fsub fast float %5381, %5373
  %5394 = fsub fast float %5382, %5374
  %5395 = fmul fast float %5392, %5356
  %5396 = fmul fast float %5393, %5356
  %5397 = fmul fast float %5394, %5356
  %5398 = fsub fast float %5372, %5389
  %5399 = fadd fast float %5398, %5395
  %5400 = fsub fast float %5373, %5390
  %5401 = fadd fast float %5400, %5396
  %5402 = fsub fast float %5374, %5391
  %5403 = fadd fast float %5402, %5397
  %5404 = fmul fast float %5399, %5344
  %5405 = fmul fast float %5401, %5344
  %5406 = fmul fast float %5403, %5344
  %5407 = fadd fast float %5404, %5389
  %5408 = fadd fast float %5405, %5390
  %5409 = fadd fast float %5406, %5391
  %5410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5411 = extractvalue %dx.types.CBufRet.f32 %5410, 1
  %5412 = fmul fast float %5407, %5411
  %5413 = fmul fast float %5408, %5411
  %5414 = fmul fast float %5409, %5411
  br label %5415

; <label>:5415                                    ; preds = %5247, %5216
  %5416 = phi float [ %5286, %5247 ], [ 1.000000e+00, %5216 ]
  %5417 = phi float [ %5287, %5247 ], [ 1.000000e+00, %5216 ]
  %5418 = phi float [ %5288, %5247 ], [ 1.000000e+00, %5216 ]
  %5419 = phi float [ %5412, %5247 ], [ 0.000000e+00, %5216 ]
  %5420 = phi float [ %5413, %5247 ], [ 0.000000e+00, %5216 ]
  %5421 = phi float [ %5414, %5247 ], [ 0.000000e+00, %5216 ]
  %5422 = fmul fast float %5419, %5193
  %5423 = fmul fast float %5420, %5193
  %5424 = fmul fast float %5421, %5193
  %5425 = call float @dx.op.dot3.f32(i32 55, float %5416, float %5417, float %5418, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5426 = call float @dx.op.dot3.f32(i32 55, float %5422, float %5423, float %5424, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5427 = select i1 %239, float %5425, float %5416
  %5428 = select i1 %239, float %5425, float %5417
  %5429 = select i1 %239, float 1.000000e+00, float %5418
  %5430 = select i1 %239, float %5426, float %5422
  %5431 = select i1 %239, float 0.000000e+00, float %5423
  %5432 = select i1 %239, float 0.000000e+00, float %5424
  %5433 = fmul fast float %5427, %5206
  %5434 = fmul fast float %5428, %5207
  %5435 = fmul fast float %5429, %5208
  %5436 = fadd fast float %5433, %5430
  %5437 = fadd fast float %5434, %5431
  %5438 = fadd fast float %5432, %5435
  %5439 = fmul fast float %5427, %5184
  %5440 = fmul fast float %5428, %5185
  %5441 = fmul fast float %5429, %5186
  %5442 = fmul fast float %93, 2.000000e+00
  %5443 = fmul fast float %5442, %5218
  %5444 = fmul fast float %94, 2.000000e+00
  %5445 = fmul fast float %5444, %5219
  %5446 = fsub fast float 1.000000e+00, %5443
  %5447 = fsub fast float 1.000000e+00, %5445
  %5448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5449 = extractvalue %dx.types.CBufRet.f32 %5448, 0
  %5450 = extractvalue %dx.types.CBufRet.f32 %5448, 1
  %5451 = extractvalue %dx.types.CBufRet.f32 %5448, 2
  %5452 = fmul fast float %5446, %5449
  %5453 = fmul fast float %5446, %5450
  %5454 = fmul fast float %5446, %5451
  %5455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5456 = extractvalue %dx.types.CBufRet.f32 %5455, 0
  %5457 = extractvalue %dx.types.CBufRet.f32 %5455, 1
  %5458 = extractvalue %dx.types.CBufRet.f32 %5455, 2
  %5459 = fmul fast float %5447, %5456
  %5460 = fmul fast float %5447, %5457
  %5461 = fmul fast float %5447, %5458
  %5462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5463 = extractvalue %dx.types.CBufRet.f32 %5462, 0
  %5464 = extractvalue %dx.types.CBufRet.f32 %5462, 1
  %5465 = extractvalue %dx.types.CBufRet.f32 %5462, 2
  %5466 = fadd fast float %5459, %5463
  %5467 = fadd fast float %5466, %5452
  %5468 = fadd fast float %5460, %5464
  %5469 = fadd fast float %5468, %5453
  %5470 = fadd fast float %5461, %5465
  %5471 = fadd fast float %5470, %5454
  %5472 = fmul fast float %5467, %199
  %5473 = fmul fast float %5469, %199
  %5474 = fmul fast float %5471, %199
  br label %5475

; <label>:5475                                    ; preds = %5415, %5183
  %5476 = phi float [ %5472, %5415 ], [ %148, %5183 ]
  %5477 = phi float [ %5473, %5415 ], [ %149, %5183 ]
  %5478 = phi float [ %5474, %5415 ], [ %150, %5183 ]
  %5479 = phi float [ %199, %5415 ], [ %84, %5183 ]
  %5480 = phi float [ %5436, %5415 ], [ %5206, %5183 ]
  %5481 = phi float [ %5437, %5415 ], [ %5207, %5183 ]
  %5482 = phi float [ %5438, %5415 ], [ %5208, %5183 ]
  %5483 = phi float [ %5439, %5415 ], [ %5184, %5183 ]
  %5484 = phi float [ %5440, %5415 ], [ %5185, %5183 ]
  %5485 = phi float [ %5441, %5415 ], [ %5186, %5183 ]
  %5486 = phi float [ %5416, %5415 ], [ 1.000000e+00, %5183 ]
  br i1 %5215, label %6641, label %5487

; <label>:5487                                    ; preds = %5475
  %5488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5489 = extractvalue %dx.types.CBufRet.f32 %5488, 0
  %5490 = extractvalue %dx.types.CBufRet.f32 %5488, 1
  %5491 = extractvalue %dx.types.CBufRet.f32 %5488, 2
  %5492 = extractvalue %dx.types.CBufRet.f32 %5488, 3
  %5493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5494 = extractvalue %dx.types.CBufRet.f32 %5493, 0
  %5495 = extractvalue %dx.types.CBufRet.f32 %5493, 1
  %5496 = extractvalue %dx.types.CBufRet.f32 %5493, 2
  %5497 = extractvalue %dx.types.CBufRet.f32 %5493, 3
  %5498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5499 = extractvalue %dx.types.CBufRet.f32 %5498, 0
  %5500 = extractvalue %dx.types.CBufRet.f32 %5498, 1
  %5501 = extractvalue %dx.types.CBufRet.f32 %5498, 2
  %5502 = extractvalue %dx.types.CBufRet.f32 %5498, 3
  %5503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5504 = extractvalue %dx.types.CBufRet.f32 %5503, 0
  %5505 = extractvalue %dx.types.CBufRet.f32 %5503, 1
  %5506 = extractvalue %dx.types.CBufRet.f32 %5503, 2
  %5507 = extractvalue %dx.types.CBufRet.f32 %5503, 3
  %5508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5509 = extractvalue %dx.types.CBufRet.f32 %5508, 3
  %5510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5511 = extractvalue %dx.types.CBufRet.f32 %5510, 3
  %5512 = extractvalue %dx.types.CBufRet.f32 %5510, 0
  %5513 = extractvalue %dx.types.CBufRet.f32 %5510, 1
  %5514 = extractvalue %dx.types.CBufRet.f32 %5510, 2
  %5515 = fcmp fast olt float %5514, -5.000000e-01
  %5516 = call float @dx.op.dot3.f32(i32 55, float %5476, float %5477, float %5478, float %5476, float %5477, float %5478)  ; Dot3(ax,ay,az,bx,by,bz)
  %5517 = call float @dx.op.unary.f32(i32 25, float %5516)  ; Rsqrt(value)
  %5518 = fmul fast float %5517, %5516
  %5519 = fmul fast float %5517, %5476
  %5520 = fmul fast float %5517, %5477
  %5521 = fmul fast float %5517, %5478
  %5522 = fadd fast float %5518, %5492
  %5523 = call float @dx.op.dot3.f32(i32 55, float %5519, float %5520, float %5521, float %5489, float %5490, float %5491)  ; Dot3(ax,ay,az,bx,by,bz)
  %5524 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5525 = extractvalue %dx.types.CBufRet.i32 %5524, 1
  %5526 = and i32 %5525, 1
  %5527 = icmp ne i32 %5526, 0
  %5528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5529 = extractvalue %dx.types.CBufRet.f32 %5528, 2
  %5530 = fcmp fast ogt float %5529, 0.000000e+00
  %5531 = and i1 %5527, %5530
  br i1 %5531, label %5532, label %5938, !dx.controlflow.hints !137

; <label>:5532                                    ; preds = %5487
  %5533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5534 = extractvalue %dx.types.CBufRet.f32 %5533, 3
  %5535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5536 = extractvalue %dx.types.CBufRet.f32 %5535, 2
  %5537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5538 = extractvalue %dx.types.CBufRet.f32 %5537, 2
  %5539 = fsub fast float %5536, %5538
  %5540 = and i32 %5525, 2
  %5541 = extractvalue %dx.types.CBufRet.i32 %5524, 0
  %5542 = call i32 @dx.op.binary.i32(i32 40, i32 %5541, i32 3)  ; UMin(a,b)
  %5543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5544 = extractvalue %dx.types.CBufRet.f32 %5543, 0
  %5545 = extractvalue %dx.types.CBufRet.f32 %5543, 1
  %5546 = extractvalue %dx.types.CBufRet.f32 %5537, 0
  %5547 = extractvalue %dx.types.CBufRet.f32 %5537, 1
  %5548 = fsub fast float %5544, %5546
  %5549 = fsub fast float %5545, %5547
  %5550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5551 = extractvalue %dx.types.CBufRet.f32 %5550, 0
  %5552 = fcmp fast ogt float %5551, 0.000000e+00
  %5553 = fsub fast float -0.000000e+00, %5548
  %5554 = fsub fast float -0.000000e+00, %5549
  %5555 = call float @dx.op.dot2.f32(i32 54, float %5519, float %5520, float %5519, float %5520)  ; Dot2(ax,ay,bx,by)
  %5556 = call float @dx.op.dot2.f32(i32 54, float %5519, float %5520, float %5553, float %5554)  ; Dot2(ax,ay,bx,by)
  %5557 = fmul fast float %5556, 2.000000e+00
  %5558 = call float @dx.op.dot2.f32(i32 54, float %5553, float %5554, float %5553, float %5554)  ; Dot2(ax,ay,bx,by)
  %5559 = fmul fast float %5551, %5551
  %5560 = fsub fast float %5558, %5559
  %5561 = fmul fast float %5557, %5557
  %5562 = fmul fast float %5555, 4.000000e+00
  %5563 = fmul fast float %5562, %5560
  %5564 = fsub fast float %5561, %5563
  %5565 = fcmp fast ogt float %5564, 0.000000e+00
  br i1 %5565, label %5566, label %5581

; <label>:5566                                    ; preds = %5532
  %5567 = fcmp fast ogt float %5557, 0.000000e+00
  %5568 = call float @dx.op.unary.f32(i32 24, float %5564)  ; Sqrt(value)
  %5569 = fsub fast float -0.000000e+00, %5568
  %5570 = select i1 %5567, float %5568, float %5569
  %5571 = fadd fast float %5570, %5557
  %5572 = fmul float %5571, -5.000000e-01
  %5573 = fdiv fast float %5572, %5555
  %5574 = call float @dx.op.binary.f32(i32 35, float %5573, float 0.000000e+00)  ; FMax(a,b)
  %5575 = call float @dx.op.binary.f32(i32 36, float %5518, float %5574)  ; FMin(a,b)
  %5576 = fdiv fast float %5560, %5572
  %5577 = call float @dx.op.binary.f32(i32 35, float %5576, float 0.000000e+00)  ; FMax(a,b)
  %5578 = call float @dx.op.binary.f32(i32 36, float %5518, float %5577)  ; FMin(a,b)
  %5579 = call float @dx.op.binary.f32(i32 36, float %5575, float %5578)  ; FMin(a,b)
  %5580 = call float @dx.op.binary.f32(i32 35, float %5575, float %5578)  ; FMax(a,b)
  br label %5581

; <label>:5581                                    ; preds = %5566, %5532
  %5582 = phi float [ %5580, %5566 ], [ -1.000000e+00, %5532 ]
  %5583 = phi float [ %5579, %5566 ], [ -1.000000e+00, %5532 ]
  %5584 = phi i1 [ true, %5566 ], [ false, %5532 ]
  %5585 = and i1 %5552, %5584
  br i1 %5585, label %5586, label %5588

; <label>:5586                                    ; preds = %5581
  %5587 = fcmp fast oeq float %5583, %5582
  br i1 %5587, label %5891, label %5589

; <label>:5588                                    ; preds = %5581
  br i1 %5552, label %5891, label %5589

; <label>:5589                                    ; preds = %5588, %5586
  %5590 = phi float [ %5518, %5588 ], [ %5582, %5586 ]
  %5591 = phi float [ 0.000000e+00, %5588 ], [ %5583, %5586 ]
  %5592 = icmp ne i32 %5540, 0
  %5593 = fmul fast float %5590, %5521
  %5594 = fadd fast float %5593, %5534
  %5595 = fmul fast float %5594, %5590
  %5596 = select i1 %5592, float 0.000000e+00, float %5595
  %5597 = fcmp fast oeq float %5521, 0.000000e+00
  %5598 = fdiv fast float %5539, %5521
  %5599 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5598)  ; FMax(a,b)
  %5600 = select i1 %5597, float %5590, float %5599
  %5601 = call float @dx.op.binary.f32(i32 36, float %5590, float %5600)  ; FMin(a,b)
  %5602 = fcmp fast ogt float %5521, 0.000000e+00
  %5603 = fcmp fast olt float %5539, 0.000000e+00
  br i1 %5602, label %5604, label %5661

; <label>:5604                                    ; preds = %5589
  %5605 = icmp eq i32 %5540, 0
  br i1 %5603, label %5606, label %5650

; <label>:5606                                    ; preds = %5604
  %5607 = select i1 %5605, float %5590, float 0.000000e+00
  %5608 = fsub fast float -0.000000e+00, %5607
  %5609 = call float @dx.op.unary.f32(i32 6, float %5608)  ; FAbs(value)
  %5610 = fmul fast float %5607, %5521
  %5611 = fadd fast float %5610, %5534
  %5612 = fmul fast float %5609, %5611
  %5613 = fsub fast float %5596, %5612
  %5614 = fsub fast float %5590, %5609
  %5615 = select i1 %5605, float %5614, float 0.000000e+00
  %5616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5617 = extractvalue %dx.types.CBufRet.f32 %5616, 0
  %5618 = extractvalue %dx.types.CBufRet.f32 %5616, 1
  %5619 = extractvalue %dx.types.CBufRet.f32 %5616, 2
  %5620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5621 = extractvalue %dx.types.CBufRet.f32 %5620, 0
  %5622 = extractvalue %dx.types.CBufRet.f32 %5620, 1
  %5623 = extractvalue %dx.types.CBufRet.f32 %5620, 2
  %5624 = extractvalue %dx.types.CBufRet.f32 %5620, 3
  %5625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5626 = extractvalue %dx.types.CBufRet.f32 %5625, 3
  %5627 = call float @dx.op.binary.f32(i32 36, float %5613, float %5626)  ; FMin(a,b)
  %5628 = fmul fast float %5624, %5615
  %5629 = call float @dx.op.unary.f32(i32 7, float %5628)  ; Saturate(value)
  %5630 = fsub fast float %5621, %5617
  %5631 = fsub fast float %5622, %5618
  %5632 = fsub fast float %5623, %5619
  %5633 = fmul fast float %5629, %5630
  %5634 = fmul fast float %5629, %5631
  %5635 = fmul fast float %5629, %5632
  %5636 = fadd fast float %5633, %5617
  %5637 = fadd fast float %5634, %5618
  %5638 = fadd fast float %5635, %5619
  %5639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5640 = extractvalue %dx.types.CBufRet.f32 %5639, 0
  %5641 = extractvalue %dx.types.CBufRet.f32 %5639, 1
  %5642 = fadd fast float %5641, %5640
  %5643 = call float @dx.op.unary.f32(i32 7, float %5642)  ; Saturate(value)
  %5644 = extractvalue %dx.types.CBufRet.f32 %5639, 2
  %5645 = extractvalue %dx.types.CBufRet.f32 %5639, 3
  %5646 = fadd fast float %5645, %5644
  %5647 = call float @dx.op.unary.f32(i32 7, float %5646)  ; Saturate(value)
  %5648 = fmul fast float %5643, %5627
  %5649 = fmul fast float %5648, %5647
  br label %5891

; <label>:5650                                    ; preds = %5604
  br i1 %5605, label %5651, label %5672

; <label>:5651                                    ; preds = %5650
  %5652 = call float @dx.op.binary.f32(i32 36, float %5601, float %5591)  ; FMin(a,b)
  %5653 = fsub fast float %5601, %5652
  %5654 = fsub fast float %5653, %5590
  %5655 = call float @dx.op.unary.f32(i32 6, float %5654)  ; FAbs(value)
  %5656 = fadd fast float %5653, %5590
  %5657 = fmul fast float %5656, %5521
  %5658 = fadd fast float %5657, %5534
  %5659 = fmul fast float %5658, %5655
  %5660 = fsub fast float %5596, %5659
  br label %5672

; <label>:5661                                    ; preds = %5589
  br i1 %5603, label %5662, label %5672

; <label>:5662                                    ; preds = %5661
  %5663 = call float @dx.op.binary.f32(i32 35, float %5591, float %5601)  ; FMax(a,b)
  %5664 = icmp eq i32 %5540, 0
  %5665 = select i1 %5664, float %5601, float 0.000000e+00
  %5666 = fsub fast float -0.000000e+00, %5665
  %5667 = call float @dx.op.unary.f32(i32 6, float %5666)  ; FAbs(value)
  %5668 = fmul fast float %5665, %5521
  %5669 = fadd fast float %5668, %5534
  %5670 = fmul fast float %5667, %5669
  %5671 = fsub fast float %5596, %5670
  br label %5672

; <label>:5672                                    ; preds = %5662, %5661, %5651, %5650
  %5673 = phi float [ %5591, %5650 ], [ %5591, %5651 ], [ %5663, %5662 ], [ %5591, %5661 ]
  %5674 = phi float [ 0.000000e+00, %5650 ], [ %5655, %5651 ], [ %5667, %5662 ], [ 0.000000e+00, %5661 ]
  %5675 = phi float [ %5596, %5650 ], [ %5660, %5651 ], [ %5671, %5662 ], [ %5596, %5661 ]
  %5676 = phi float [ %5601, %5650 ], [ %5601, %5651 ], [ %5590, %5662 ], [ %5590, %5661 ]
  %5677 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 0
  store float -1.000000e+00, float* %5677, align 4, !tbaa !138, !noalias !140
  %5678 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 1
  store float -1.000000e+00, float* %5678, align 4, !tbaa !138, !noalias !140
  %5679 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 2
  store float -1.000000e+00, float* %5679, align 4, !tbaa !138, !noalias !140
  %5680 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 0
  store float -1.000000e+00, float* %5680, align 4, !tbaa !138, !noalias !140
  %5681 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 1
  store float -1.000000e+00, float* %5681, align 4, !tbaa !138, !noalias !140
  %5682 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 2
  store float -1.000000e+00, float* %5682, align 4, !tbaa !138, !noalias !140
  %5683 = icmp sgt i32 %5542, 0
  br i1 %5683, label %5684, label %5745

; <label>:5684                                    ; preds = %5672
  br label %5685

; <label>:5685                                    ; preds = %5734, %5684
  %5686 = phi i32 [ %5735, %5734 ], [ 0, %5684 ]
  %5687 = phi i32 [ %5736, %5734 ], [ 0, %5684 ]
  %5688 = add nuw i32 %5687, 171
  %5689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %5688)  ; CBufferLoadLegacy(handle,regIndex)
  %5690 = extractvalue %dx.types.CBufRet.f32 %5689, 0
  %5691 = extractvalue %dx.types.CBufRet.f32 %5689, 1
  %5692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5693 = extractvalue %dx.types.CBufRet.f32 %5692, 0
  %5694 = extractvalue %dx.types.CBufRet.f32 %5692, 1
  %5695 = fsub fast float %5690, %5693
  %5696 = fsub fast float %5691, %5694
  %5697 = extractvalue %dx.types.CBufRet.f32 %5689, 2
  %5698 = fsub fast float -0.000000e+00, %5695
  %5699 = fsub fast float -0.000000e+00, %5696
  %5700 = call float @dx.op.dot2.f32(i32 54, float %5519, float %5520, float %5698, float %5699)  ; Dot2(ax,ay,bx,by)
  %5701 = fmul fast float %5700, 2.000000e+00
  %5702 = call float @dx.op.dot2.f32(i32 54, float %5698, float %5699, float %5698, float %5699)  ; Dot2(ax,ay,bx,by)
  %5703 = fmul fast float %5697, %5697
  %5704 = fsub fast float %5702, %5703
  %5705 = fmul fast float %5701, %5701
  %5706 = fmul fast float %5562, %5704
  %5707 = fsub fast float %5705, %5706
  %5708 = fcmp fast ogt float %5707, 0.000000e+00
  br i1 %5708, label %5709, label %5724

; <label>:5709                                    ; preds = %5685
  %5710 = fcmp fast ogt float %5701, 0.000000e+00
  %5711 = call float @dx.op.unary.f32(i32 24, float %5707)  ; Sqrt(value)
  %5712 = fsub fast float -0.000000e+00, %5711
  %5713 = select i1 %5710, float %5711, float %5712
  %5714 = fadd fast float %5713, %5701
  %5715 = fmul float %5714, -5.000000e-01
  %5716 = fdiv fast float %5715, %5555
  %5717 = call float @dx.op.binary.f32(i32 35, float %5716, float 0.000000e+00)  ; FMax(a,b)
  %5718 = call float @dx.op.binary.f32(i32 36, float %5590, float %5717)  ; FMin(a,b)
  %5719 = fdiv fast float %5704, %5715
  %5720 = call float @dx.op.binary.f32(i32 35, float %5719, float 0.000000e+00)  ; FMax(a,b)
  %5721 = call float @dx.op.binary.f32(i32 36, float %5590, float %5720)  ; FMin(a,b)
  %5722 = call float @dx.op.binary.f32(i32 36, float %5718, float %5721)  ; FMin(a,b)
  %5723 = call float @dx.op.binary.f32(i32 35, float %5718, float %5721)  ; FMax(a,b)
  br label %5724

; <label>:5724                                    ; preds = %5709, %5685
  %5725 = phi float [ %5723, %5709 ], [ -1.000000e+00, %5685 ]
  %5726 = phi float [ %5722, %5709 ], [ -1.000000e+00, %5685 ]
  %5727 = phi i1 [ true, %5709 ], [ false, %5685 ]
  br i1 %5727, label %5728, label %5734

; <label>:5728                                    ; preds = %5724
  %5729 = call float @dx.op.binary.f32(i32 35, float %5673, float %5726)  ; FMax(a,b)
  %5730 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 %5687
  store float %5729, float* %5730, align 4, !tbaa !138, !noalias !140
  %5731 = call float @dx.op.binary.f32(i32 35, float %5673, float %5725)  ; FMax(a,b)
  %5732 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %5687
  store float %5731, float* %5732, align 4, !tbaa !138, !noalias !140
  %5733 = add nsw i32 %5686, 1
  br label %5734

; <label>:5734                                    ; preds = %5728, %5724
  %5735 = phi i32 [ %5733, %5728 ], [ %5686, %5724 ]
  %5736 = add nuw nsw i32 %5687, 1
  %5737 = icmp eq i32 %5736, %5542
  br i1 %5737, label %5738, label %5685

; <label>:5738                                    ; preds = %5734
  %5739 = load float, float* %5679, align 4, !tbaa !138, !alias.scope !156, !noalias !159
  %5740 = load float, float* %5678, align 4, !tbaa !138, !alias.scope !162, !noalias !163
  %5741 = load float, float* %5677, align 4, !tbaa !138, !alias.scope !164, !noalias !165
  %5742 = load float, float* %5682, align 4, !tbaa !138, !alias.scope !166, !noalias !169
  %5743 = load float, float* %5681, align 4, !tbaa !138, !alias.scope !172, !noalias !173
  %5744 = load float, float* %5680, align 4, !tbaa !138, !alias.scope !174, !noalias !175
  br label %5745

; <label>:5745                                    ; preds = %5738, %5672
  %5746 = phi float [ -1.000000e+00, %5672 ], [ %5744, %5738 ]
  %5747 = phi float [ -1.000000e+00, %5672 ], [ %5743, %5738 ]
  %5748 = phi float [ -1.000000e+00, %5672 ], [ %5742, %5738 ]
  %5749 = phi float [ -1.000000e+00, %5672 ], [ %5741, %5738 ]
  %5750 = phi float [ -1.000000e+00, %5672 ], [ %5740, %5738 ]
  %5751 = phi float [ -1.000000e+00, %5672 ], [ %5739, %5738 ]
  %5752 = phi i32 [ 0, %5672 ], [ %5735, %5738 ]
  %5753 = call float @dx.op.binary.f32(i32 36, float %5750, float %5751)  ; FMin(a,b)
  %5754 = call float @dx.op.binary.f32(i32 36, float %5749, float %5753)  ; FMin(a,b)
  %5755 = call float @dx.op.binary.f32(i32 35, float %5749, float %5750)  ; FMax(a,b)
  %5756 = call float @dx.op.binary.f32(i32 36, float %5755, float %5751)  ; FMin(a,b)
  %5757 = call float @dx.op.binary.f32(i32 36, float %5749, float %5750)  ; FMin(a,b)
  %5758 = call float @dx.op.binary.f32(i32 35, float %5757, float %5756)  ; FMax(a,b)
  %5759 = call float @dx.op.binary.f32(i32 35, float %5750, float %5751)  ; FMax(a,b)
  %5760 = call float @dx.op.binary.f32(i32 35, float %5749, float %5759)  ; FMax(a,b)
  store float %5754, float* %5677, align 4, !tbaa !138, !alias.scope !164, !noalias !165
  store float %5758, float* %5678, align 4, !tbaa !138, !alias.scope !162, !noalias !163
  store float %5760, float* %5679, align 4, !tbaa !138, !alias.scope !156, !noalias !159
  %5761 = call float @dx.op.binary.f32(i32 36, float %5747, float %5748)  ; FMin(a,b)
  %5762 = call float @dx.op.binary.f32(i32 36, float %5746, float %5761)  ; FMin(a,b)
  %5763 = call float @dx.op.binary.f32(i32 35, float %5746, float %5747)  ; FMax(a,b)
  %5764 = call float @dx.op.binary.f32(i32 36, float %5763, float %5748)  ; FMin(a,b)
  %5765 = call float @dx.op.binary.f32(i32 36, float %5746, float %5747)  ; FMin(a,b)
  %5766 = call float @dx.op.binary.f32(i32 35, float %5765, float %5764)  ; FMax(a,b)
  %5767 = call float @dx.op.binary.f32(i32 35, float %5747, float %5748)  ; FMax(a,b)
  %5768 = call float @dx.op.binary.f32(i32 35, float %5746, float %5767)  ; FMax(a,b)
  store float %5762, float* %5680, align 4, !tbaa !138, !alias.scope !174, !noalias !175
  store float %5766, float* %5681, align 4, !tbaa !138, !alias.scope !172, !noalias !173
  store float %5768, float* %5682, align 4, !tbaa !138, !alias.scope !166, !noalias !169
  %5769 = sub nsw i32 3, %5752
  %5770 = icmp sgt i32 %5769, 2
  br i1 %5770, label %5771, label %5809

; <label>:5771                                    ; preds = %5745
  %5772 = icmp eq i32 %5540, 0
  %5773 = fsub fast float %5590, %5674
  %5774 = select i1 %5772, float %5773, float %5674
  %5775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %5777 = extractvalue %dx.types.CBufRet.f32 %5775, 1
  %5778 = extractvalue %dx.types.CBufRet.f32 %5775, 2
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.CBufRet.f32 %5779, 1
  %5782 = extractvalue %dx.types.CBufRet.f32 %5779, 2
  %5783 = extractvalue %dx.types.CBufRet.f32 %5779, 3
  %5784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5785 = extractvalue %dx.types.CBufRet.f32 %5784, 3
  %5786 = call float @dx.op.binary.f32(i32 36, float %5675, float %5785)  ; FMin(a,b)
  %5787 = fmul fast float %5783, %5774
  %5788 = call float @dx.op.unary.f32(i32 7, float %5787)  ; Saturate(value)
  %5789 = fsub fast float %5780, %5776
  %5790 = fsub fast float %5781, %5777
  %5791 = fsub fast float %5782, %5778
  %5792 = fmul fast float %5788, %5789
  %5793 = fmul fast float %5788, %5790
  %5794 = fmul fast float %5788, %5791
  %5795 = fadd fast float %5792, %5776
  %5796 = fadd fast float %5793, %5777
  %5797 = fadd fast float %5794, %5778
  %5798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5799 = extractvalue %dx.types.CBufRet.f32 %5798, 0
  %5800 = extractvalue %dx.types.CBufRet.f32 %5798, 1
  %5801 = fadd fast float %5800, %5799
  %5802 = call float @dx.op.unary.f32(i32 7, float %5801)  ; Saturate(value)
  %5803 = extractvalue %dx.types.CBufRet.f32 %5798, 2
  %5804 = extractvalue %dx.types.CBufRet.f32 %5798, 3
  %5805 = fadd fast float %5804, %5803
  %5806 = call float @dx.op.unary.f32(i32 7, float %5805)  ; Saturate(value)
  %5807 = fmul fast float %5802, %5786
  %5808 = fmul fast float %5807, %5806
  br label %5891

; <label>:5809                                    ; preds = %5745
  %5810 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 %5769
  %5811 = load float, float* %5810, align 4, !tbaa !138, !noalias !140
  %5812 = fcmp fast olt float %5811, %5676
  %5813 = icmp sgt i32 %5752, 0
  %5814 = and i1 %5813, %5812
  br i1 %5814, label %5815, label %5852

; <label>:5815                                    ; preds = %5809
  br label %5816

; <label>:5816                                    ; preds = %5845, %5815
  %5817 = phi float [ %5846, %5845 ], [ %5674, %5815 ]
  %5818 = phi float [ %5847, %5845 ], [ %5675, %5815 ]
  %5819 = phi float [ %5827, %5845 ], [ %5811, %5815 ]
  %5820 = phi i32 [ %5824, %5845 ], [ %5769, %5815 ]
  %5821 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %5820
  %5822 = load float, float* %5821, align 4, !tbaa !138, !noalias !140
  %5823 = icmp slt i32 %5820, 2
  %5824 = add nsw i32 %5820, 1
  %5825 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 %5824
  %5826 = load float, float* %5825, align 4, !tbaa !138, !noalias !140
  %5827 = select i1 %5823, float %5826, float %5590
  %5828 = call float @dx.op.binary.f32(i32 36, float %5827, float %5822)  ; FMin(a,b)
  %5829 = call float @dx.op.binary.f32(i32 36, float %5676, float %5828)  ; FMin(a,b)
  %5830 = icmp eq i32 %5540, 0
  %5831 = fadd fast float %5829, %5819
  %5832 = fmul fast float %5831, %5521
  %5833 = fadd fast float %5832, %5534
  br i1 %5830, label %5839, label %5834

; <label>:5834                                    ; preds = %5816
  %5835 = fsub fast float %5829, %5819
  %5836 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5835)  ; FMax(a,b)
  %5837 = fmul fast float %5836, %5833
  %5838 = fadd fast float %5837, %5818
  br label %5845

; <label>:5839                                    ; preds = %5816
  %5840 = fsub fast float %5819, %5829
  %5841 = call float @dx.op.unary.f32(i32 6, float %5840)  ; FAbs(value)
  %5842 = fadd fast float %5841, %5817
  %5843 = fmul fast float %5841, %5833
  %5844 = fsub fast float %5818, %5843
  br label %5845

; <label>:5845                                    ; preds = %5839, %5834
  %5846 = phi float [ %5836, %5834 ], [ %5842, %5839 ]
  %5847 = phi float [ %5838, %5834 ], [ %5844, %5839 ]
  %5848 = fcmp fast olt float %5827, %5676
  %5849 = icmp slt i32 %5824, 3
  %5850 = and i1 %5849, %5848
  br i1 %5850, label %5816, label %5851

; <label>:5851                                    ; preds = %5845
  br label %5852

; <label>:5852                                    ; preds = %5851, %5809
  %5853 = phi float [ %5674, %5809 ], [ %5846, %5851 ]
  %5854 = phi float [ %5675, %5809 ], [ %5847, %5851 ]
  %5855 = fsub fast float %5590, %5853
  %5856 = select i1 %5592, float %5853, float %5855
  %5857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5858 = extractvalue %dx.types.CBufRet.f32 %5857, 0
  %5859 = extractvalue %dx.types.CBufRet.f32 %5857, 1
  %5860 = extractvalue %dx.types.CBufRet.f32 %5857, 2
  %5861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5862 = extractvalue %dx.types.CBufRet.f32 %5861, 0
  %5863 = extractvalue %dx.types.CBufRet.f32 %5861, 1
  %5864 = extractvalue %dx.types.CBufRet.f32 %5861, 2
  %5865 = extractvalue %dx.types.CBufRet.f32 %5861, 3
  %5866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5866, 3
  %5868 = call float @dx.op.binary.f32(i32 36, float %5854, float %5867)  ; FMin(a,b)
  %5869 = fmul fast float %5865, %5856
  %5870 = call float @dx.op.unary.f32(i32 7, float %5869)  ; Saturate(value)
  %5871 = fsub fast float %5862, %5858
  %5872 = fsub fast float %5863, %5859
  %5873 = fsub fast float %5864, %5860
  %5874 = fmul fast float %5870, %5871
  %5875 = fmul fast float %5870, %5872
  %5876 = fmul fast float %5870, %5873
  %5877 = fadd fast float %5874, %5858
  %5878 = fadd fast float %5875, %5859
  %5879 = fadd fast float %5876, %5860
  %5880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5881 = extractvalue %dx.types.CBufRet.f32 %5880, 0
  %5882 = extractvalue %dx.types.CBufRet.f32 %5880, 1
  %5883 = fadd fast float %5882, %5881
  %5884 = call float @dx.op.unary.f32(i32 7, float %5883)  ; Saturate(value)
  %5885 = extractvalue %dx.types.CBufRet.f32 %5880, 2
  %5886 = extractvalue %dx.types.CBufRet.f32 %5880, 3
  %5887 = fadd fast float %5886, %5885
  %5888 = call float @dx.op.unary.f32(i32 7, float %5887)  ; Saturate(value)
  %5889 = fmul fast float %5884, %5868
  %5890 = fmul fast float %5889, %5888
  br label %5891

; <label>:5891                                    ; preds = %5852, %5771, %5606, %5588, %5586
  %5892 = phi float [ %5615, %5606 ], [ %5774, %5771 ], [ %5856, %5852 ], [ 0.000000e+00, %5586 ], [ 0.000000e+00, %5588 ]
  %5893 = phi float [ %5649, %5606 ], [ %5808, %5771 ], [ %5890, %5852 ], [ 0.000000e+00, %5586 ], [ 0.000000e+00, %5588 ]
  %5894 = phi float [ %5636, %5606 ], [ %5795, %5771 ], [ %5877, %5852 ], [ 0.000000e+00, %5586 ], [ 0.000000e+00, %5588 ]
  %5895 = phi float [ %5637, %5606 ], [ %5796, %5771 ], [ %5878, %5852 ], [ 0.000000e+00, %5586 ], [ 0.000000e+00, %5588 ]
  %5896 = phi float [ %5638, %5606 ], [ %5797, %5771 ], [ %5879, %5852 ], [ 0.000000e+00, %5586 ], [ 0.000000e+00, %5588 ]
  %5897 = fmul fast float %5529, %5893
  %5898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5899 = extractvalue %dx.types.CBufRet.f32 %5898, 2
  %5900 = fsub fast float %5536, %5899
  %5901 = fcmp fast olt float %5897, -2.000000e+01
  %5902 = call float @dx.op.unary.f32(i32 21, float %5897)  ; Exp(value)
  %5903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5904 = extractvalue %dx.types.CBufRet.f32 %5903, 2
  %5905 = extractvalue %dx.types.CBufRet.f32 %5903, 3
  %5906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5907 = extractvalue %dx.types.CBufRet.f32 %5906, 2
  %5908 = fmul fast float %5905, %5900
  %5909 = call float @dx.op.unary.f32(i32 7, float %5908)  ; Saturate(value)
  %5910 = fsub fast float 1.000000e+00, %5909
  %5911 = fmul fast float %5521, 5.000000e-01
  %5912 = fadd fast float %5911, 5.000000e-01
  %5913 = call float @dx.op.unary.f32(i32 7, float %5912)  ; Saturate(value)
  %5914 = fsub fast float 1.000000e+00, %5913
  %5915 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5910)  ; FMax(a,b)
  %5916 = fdiv fast float %5914, %5915
  %5917 = fsub fast float %5900, %5478
  %5918 = call float @dx.op.unary.f32(i32 6, float %5917)  ; FAbs(value)
  %5919 = fmul fast float %5918, %5904
  %5920 = call float @dx.op.unary.f32(i32 7, float %5916)  ; Saturate(value)
  %5921 = fsub fast float 1.000000e+00, %5919
  %5922 = fmul fast float %5921, %5920
  %5923 = fadd fast float %5922, %5919
  %5924 = fmul fast float %5907, %5900
  %5925 = call float @dx.op.unary.f32(i32 7, float %5924)  ; Saturate(value)
  %5926 = fsub fast float 1.000000e+00, %5923
  %5927 = fmul fast float %5926, %5925
  %5928 = fadd fast float %5927, %5923
  %5929 = call float @dx.op.unary.f32(i32 7, float %5928)  ; Saturate(value)
  %5930 = fadd fast float %5902, -1.000000e+00
  %5931 = select i1 %5901, float -1.000000e+00, float %5930
  %5932 = fmul fast float %5929, %5931
  %5933 = fadd fast float %5932, 1.000000e+00
  %5934 = fsub fast float -0.000000e+00, %5932
  %5935 = fmul fast float %5894, %5934
  %5936 = fmul fast float %5895, %5934
  %5937 = fmul fast float %5896, %5934
  br label %5938

; <label>:5938                                    ; preds = %5891, %5487
  %5939 = phi float [ %5892, %5891 ], [ 0.000000e+00, %5487 ]
  %5940 = phi float [ %5933, %5891 ], [ 1.000000e+00, %5487 ]
  %5941 = phi float [ %5935, %5891 ], [ 0.000000e+00, %5487 ]
  %5942 = phi float [ %5936, %5891 ], [ 0.000000e+00, %5487 ]
  %5943 = phi float [ %5937, %5891 ], [ 0.000000e+00, %5487 ]
  %5944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5945 = extractvalue %dx.types.CBufRet.f32 %5944, 1
  %5946 = fsub fast float 1.000000e+00, %5940
  %5947 = fmul fast float %5946, %5522
  %5948 = fmul fast float %5947, %5945
  %5949 = fsub fast float %5522, %5948
  br i1 %5515, label %5950, label %5979, !dx.controlflow.hints !176

; <label>:5950                                    ; preds = %5938
  %5951 = fmul fast float %5523, %5512
  %5952 = fadd fast float %5951, %5513
  %5953 = call float @dx.op.unary.f32(i32 7, float %5952)  ; Saturate(value)
  %5954 = fmul fast float %5494, %5949
  %5955 = fsub fast float -0.000000e+00, %5954
  %5956 = fmul fast float %5495, %5949
  %5957 = fsub fast float -0.000000e+00, %5956
  %5958 = call float @dx.op.unary.f32(i32 21, float %5955)  ; Exp(value)
  %5959 = call float @dx.op.unary.f32(i32 21, float %5957)  ; Exp(value)
  %5960 = call float @dx.op.binary.f32(i32 35, float %5502, float %5958)  ; FMax(a,b)
  %5961 = call float @dx.op.binary.f32(i32 35, float %5502, float %5959)  ; FMax(a,b)
  %5962 = fsub fast float %5961, %5960
  %5963 = fmul fast float %5962, %5953
  %5964 = fadd fast float %5963, %5960
  %5965 = call float @dx.op.unary.f32(i32 7, float %5964)  ; Saturate(value)
  %5966 = fsub fast float %5499, %5504
  %5967 = fsub fast float %5500, %5505
  %5968 = fsub fast float %5501, %5506
  %5969 = fmul fast float %5953, %5966
  %5970 = fmul fast float %5953, %5967
  %5971 = fmul fast float %5953, %5968
  %5972 = fadd fast float %5969, %5504
  %5973 = fadd fast float %5970, %5505
  %5974 = fadd fast float %5971, %5506
  %5975 = fsub fast float 1.000000e+00, %5965
  %5976 = fmul fast float %5975, %5972
  %5977 = fmul fast float %5975, %5973
  %5978 = fmul fast float %5975, %5974
  br label %6038

; <label>:5979                                    ; preds = %5938
  %5980 = fmul fast float %5949, %5511
  %5981 = call float @dx.op.unary.f32(i32 7, float %5980)  ; Saturate(value)
  %5982 = fsub fast float 2.000000e+00, %5981
  %5983 = fmul fast float %5981, 9.921875e-01
  %5984 = fmul fast float %5983, %5982
  %5985 = fadd fast float %5984, 3.906250e-03
  %5986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %58, float %5985, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5987 = extractvalue %dx.types.ResRet.f32 %5986, 0
  %5988 = fsub fast float %5981, %5987
  %5989 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5988)  ; FMax(a,b)
  %5990 = fmul fast float %5497, %5478
  %5991 = call float @dx.op.unary.f32(i32 6, float %5990)  ; FAbs(value)
  %5992 = fcmp fast ogt float %5991, 0x3EB0C6F7A0000000
  br i1 %5992, label %5993, label %5999, !dx.controlflow.hints !177

; <label>:5993                                    ; preds = %5979
  %5994 = fmul fast float %5990, 0xBFF7154760000000
  %5995 = call float @dx.op.unary.f32(i32 21, float %5994)  ; Exp(value)
  %5996 = fsub fast float 1.000000e+00, %5995
  %5997 = fdiv fast float %5996, %5990
  %5998 = fmul fast float %5997, %5507
  br label %5999

; <label>:5999                                    ; preds = %5993, %5979
  %6000 = phi float [ %5998, %5993 ], [ %5507, %5979 ]
  %6001 = fadd fast float %6000, %5509
  %6002 = fmul fast float %6001, %5989
  %6003 = fmul fast float %5494, %6002
  %6004 = fsub fast float -0.000000e+00, %6003
  %6005 = fmul fast float %5495, %6002
  %6006 = fsub fast float -0.000000e+00, %6005
  %6007 = fmul fast float %5496, %6002
  %6008 = fsub fast float -0.000000e+00, %6007
  %6009 = call float @dx.op.unary.f32(i32 21, float %6004)  ; Exp(value)
  %6010 = call float @dx.op.unary.f32(i32 21, float %6006)  ; Exp(value)
  %6011 = call float @dx.op.unary.f32(i32 21, float %6008)  ; Exp(value)
  %6012 = fmul fast float %5523, %5523
  %6013 = fadd fast float %6012, 1.000000e+00
  %6014 = fmul fast float %6013, 0x3FAE8EC8A0000000
  %6015 = fmul fast float %6014, %5504
  %6016 = fmul fast float %6014, %5505
  %6017 = fmul fast float %6014, %5506
  %6018 = fmul fast float %5523, %5502
  %6019 = fsub fast float 1.000000e+00, %6018
  %6020 = fmul fast float %5502, %5502
  %6021 = fsub fast float 1.000000e+00, %6020
  %6022 = fmul fast float %6021, 0x3FB45F3060000000
  %6023 = fmul fast float %6019, %6019
  %6024 = fdiv fast float 1.000000e+00, %6023
  %6025 = fmul fast float %6022, %6024
  %6026 = fmul fast float %6025, %5499
  %6027 = fmul fast float %6025, %5500
  %6028 = fmul fast float %6025, %5501
  %6029 = fadd fast float %6026, %6015
  %6030 = fadd fast float %6027, %6016
  %6031 = fadd fast float %6028, %6017
  %6032 = fsub fast float 1.000000e+00, %6009
  %6033 = fsub fast float 1.000000e+00, %6010
  %6034 = fsub fast float 1.000000e+00, %6011
  %6035 = fmul fast float %6029, %6032
  %6036 = fmul fast float %6030, %6033
  %6037 = fmul fast float %6031, %6034
  br label %6038

; <label>:6038                                    ; preds = %5999, %5950
  %6039 = phi float [ %5976, %5950 ], [ %6035, %5999 ]
  %6040 = phi float [ %5977, %5950 ], [ %6036, %5999 ]
  %6041 = phi float [ %5978, %5950 ], [ %6037, %5999 ]
  %6042 = phi float [ %5965, %5950 ], [ %6009, %5999 ]
  %6043 = phi float [ %5965, %5950 ], [ %6010, %5999 ]
  %6044 = phi float [ %5965, %5950 ], [ %6011, %5999 ]
  br i1 %5531, label %6045, label %6243, !dx.controlflow.hints !178

; <label>:6045                                    ; preds = %6038
  %6046 = extractvalue %dx.types.CBufRet.f32 %5944, 0
  %6047 = fmul fast float %6046, %5946
  %6048 = fsub fast float %5941, %6039
  %6049 = fsub fast float %5942, %6040
  %6050 = fsub fast float %5943, %6041
  %6051 = fmul fast float %6047, %6048
  %6052 = fmul fast float %6047, %6049
  %6053 = fmul fast float %6047, %6050
  %6054 = fadd fast float %6051, %6039
  %6055 = fadd fast float %6052, %6040
  %6056 = fadd fast float %6053, %6041
  %6057 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6042)  ; FMax(a,b)
  %6058 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6043)  ; FMax(a,b)
  %6059 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6044)  ; FMax(a,b)
  %6060 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5940)  ; FMax(a,b)
  %6061 = call float @dx.op.binary.f32(i32 35, float %5939, float %5949)  ; FMax(a,b)
  %6062 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6061)  ; FMax(a,b)
  %6063 = fdiv fast float %5939, %6062
  %6064 = call float @dx.op.unary.f32(i32 7, float %6063)  ; Saturate(value)
  %6065 = fdiv fast float %5949, %6062
  %6066 = call float @dx.op.unary.f32(i32 7, float %6065)  ; Saturate(value)
  %6067 = fcmp fast une float %6060, 1.000000e+00
  br i1 %6067, label %6068, label %6081, !dx.controlflow.hints !179

; <label>:6068                                    ; preds = %6045
  %6069 = call float @dx.op.unary.f32(i32 23, float %6060)  ; Log(value)
  %6070 = fmul fast float %6069, 0x3FE62E4300000000
  %6071 = fmul fast float %5941, %6070
  %6072 = fsub fast float -0.000000e+00, %6071
  %6073 = fmul fast float %5942, %6070
  %6074 = fsub fast float -0.000000e+00, %6073
  %6075 = fmul fast float %5943, %6070
  %6076 = fsub fast float -0.000000e+00, %6075
  %6077 = fsub fast float 1.000000e+00, %6060
  %6078 = fdiv fast float %6072, %6077
  %6079 = fdiv fast float %6074, %6077
  %6080 = fdiv fast float %6076, %6077
  br label %6081

; <label>:6081                                    ; preds = %6068, %6045
  %6082 = phi float [ %6078, %6068 ], [ %5941, %6045 ]
  %6083 = phi float [ %6079, %6068 ], [ %5942, %6045 ]
  %6084 = phi float [ %6080, %6068 ], [ %5943, %6045 ]
  %6085 = phi float [ %6070, %6068 ], [ 0.000000e+00, %6045 ]
  %6086 = fcmp fast une float %6057, 1.000000e+00
  br i1 %6086, label %6087, label %6094, !dx.controlflow.hints !180

; <label>:6087                                    ; preds = %6081
  %6088 = call float @dx.op.unary.f32(i32 23, float %6057)  ; Log(value)
  %6089 = fmul fast float %6088, 0x3FE62E4300000000
  %6090 = fmul fast float %6054, %6089
  %6091 = fsub fast float -0.000000e+00, %6090
  %6092 = fsub fast float 1.000000e+00, %6057
  %6093 = fdiv fast float %6091, %6092
  br label %6094

; <label>:6094                                    ; preds = %6087, %6081
  %6095 = phi float [ %6093, %6087 ], [ %6054, %6081 ]
  %6096 = phi float [ %6089, %6087 ], [ 0.000000e+00, %6081 ]
  %6097 = fcmp fast une float %6058, 1.000000e+00
  br i1 %6097, label %6098, label %6105, !dx.controlflow.hints !180

; <label>:6098                                    ; preds = %6094
  %6099 = call float @dx.op.unary.f32(i32 23, float %6058)  ; Log(value)
  %6100 = fmul fast float %6099, 0x3FE62E4300000000
  %6101 = fmul fast float %6055, %6100
  %6102 = fsub fast float -0.000000e+00, %6101
  %6103 = fsub fast float 1.000000e+00, %6058
  %6104 = fdiv fast float %6102, %6103
  br label %6105

; <label>:6105                                    ; preds = %6098, %6094
  %6106 = phi float [ %6104, %6098 ], [ %6055, %6094 ]
  %6107 = phi float [ %6100, %6098 ], [ 0.000000e+00, %6094 ]
  %6108 = fcmp fast une float %6059, 1.000000e+00
  br i1 %6108, label %6109, label %6116, !dx.controlflow.hints !180

; <label>:6109                                    ; preds = %6105
  %6110 = call float @dx.op.unary.f32(i32 23, float %6059)  ; Log(value)
  %6111 = fmul fast float %6110, 0x3FE62E4300000000
  %6112 = fmul fast float %6056, %6111
  %6113 = fsub fast float -0.000000e+00, %6112
  %6114 = fsub fast float 1.000000e+00, %6059
  %6115 = fdiv fast float %6113, %6114
  br label %6116

; <label>:6116                                    ; preds = %6109, %6105
  %6117 = phi float [ %6115, %6109 ], [ %6056, %6105 ]
  %6118 = phi float [ %6111, %6109 ], [ 0.000000e+00, %6105 ]
  %6119 = fmul fast float %6082, %6066
  %6120 = fmul fast float %6083, %6066
  %6121 = fmul fast float %6084, %6066
  %6122 = fmul fast float %6085, %6066
  %6123 = fmul fast float %6095, %6064
  %6124 = fmul fast float %6106, %6064
  %6125 = fmul fast float %6117, %6064
  %6126 = fmul fast float %6096, %6064
  %6127 = fmul fast float %6107, %6064
  %6128 = fmul fast float %6118, %6064
  %6129 = fadd fast float %6123, %6119
  %6130 = fadd fast float %6124, %6120
  %6131 = fadd fast float %6125, %6121
  %6132 = fadd fast float %6126, %6122
  %6133 = fadd fast float %6127, %6122
  %6134 = fadd fast float %6128, %6122
  %6135 = fcmp fast une float %6132, 0.000000e+00
  br i1 %6135, label %6136, label %6143, !dx.controlflow.hints !181

; <label>:6136                                    ; preds = %6116
  %6137 = fmul fast float %6132, 0x3FF7154760000000
  %6138 = call float @dx.op.unary.f32(i32 21, float %6137)  ; Exp(value)
  %6139 = fsub fast float 1.000000e+00, %6138
  %6140 = fmul fast float %6129, %6139
  %6141 = fsub fast float -0.000000e+00, %6140
  %6142 = fdiv fast float %6141, %6132
  br label %6143

; <label>:6143                                    ; preds = %6136, %6116
  %6144 = phi float [ %6138, %6136 ], [ 1.000000e+00, %6116 ]
  %6145 = phi float [ %6142, %6136 ], [ %6129, %6116 ]
  %6146 = fcmp fast une float %6133, 0.000000e+00
  br i1 %6146, label %6147, label %6154, !dx.controlflow.hints !181

; <label>:6147                                    ; preds = %6143
  %6148 = fmul fast float %6133, 0x3FF7154760000000
  %6149 = call float @dx.op.unary.f32(i32 21, float %6148)  ; Exp(value)
  %6150 = fsub fast float 1.000000e+00, %6149
  %6151 = fmul fast float %6130, %6150
  %6152 = fsub fast float -0.000000e+00, %6151
  %6153 = fdiv fast float %6152, %6133
  br label %6154

; <label>:6154                                    ; preds = %6147, %6143
  %6155 = phi float [ %6149, %6147 ], [ 1.000000e+00, %6143 ]
  %6156 = phi float [ %6153, %6147 ], [ %6130, %6143 ]
  %6157 = fcmp fast une float %6134, 0.000000e+00
  br i1 %6157, label %6158, label %6165, !dx.controlflow.hints !181

; <label>:6158                                    ; preds = %6154
  %6159 = fmul fast float %6134, 0x3FF7154760000000
  %6160 = call float @dx.op.unary.f32(i32 21, float %6159)  ; Exp(value)
  %6161 = fsub fast float 1.000000e+00, %6160
  %6162 = fmul fast float %6131, %6161
  %6163 = fsub fast float -0.000000e+00, %6162
  %6164 = fdiv fast float %6163, %6134
  br label %6165

; <label>:6165                                    ; preds = %6158, %6154
  %6166 = phi float [ %6160, %6158 ], [ 1.000000e+00, %6154 ]
  %6167 = phi float [ %6164, %6158 ], [ %6131, %6154 ]
  %6168 = fcmp fast ogt float %6064, %6066
  br i1 %6168, label %6169, label %6189

; <label>:6169                                    ; preds = %6165
  %6170 = fsub fast float 1.000000e+00, %6066
  %6171 = fmul fast float %6082, %6170
  %6172 = fmul fast float %6083, %6170
  %6173 = fmul fast float %6084, %6170
  %6174 = fmul fast float %6085, %6170
  %6175 = fcmp fast une float %6174, 0.000000e+00
  br i1 %6175, label %6176, label %6227, !dx.controlflow.hints !182

; <label>:6176                                    ; preds = %6169
  %6177 = fmul fast float %6174, 0x3FF7154760000000
  %6178 = call float @dx.op.unary.f32(i32 21, float %6177)  ; Exp(value)
  %6179 = fsub fast float 1.000000e+00, %6178
  %6180 = fmul fast float %6171, %6179
  %6181 = fsub fast float -0.000000e+00, %6180
  %6182 = fmul fast float %6172, %6179
  %6183 = fsub fast float -0.000000e+00, %6182
  %6184 = fmul fast float %6173, %6179
  %6185 = fsub fast float -0.000000e+00, %6184
  %6186 = fdiv fast float %6181, %6174
  %6187 = fdiv fast float %6183, %6174
  %6188 = fdiv fast float %6185, %6174
  br label %6227

; <label>:6189                                    ; preds = %6165
  %6190 = fsub fast float 1.000000e+00, %6064
  %6191 = fmul fast float %6095, %6190
  %6192 = fmul fast float %6106, %6190
  %6193 = fmul fast float %6117, %6190
  %6194 = fmul fast float %6096, %6190
  %6195 = fmul fast float %6107, %6190
  %6196 = fmul fast float %6118, %6190
  %6197 = fcmp fast une float %6194, 0.000000e+00
  br i1 %6197, label %6198, label %6205, !dx.controlflow.hints !181

; <label>:6198                                    ; preds = %6189
  %6199 = fmul fast float %6194, 0x3FF7154760000000
  %6200 = call float @dx.op.unary.f32(i32 21, float %6199)  ; Exp(value)
  %6201 = fsub fast float 1.000000e+00, %6200
  %6202 = fmul fast float %6191, %6201
  %6203 = fsub fast float -0.000000e+00, %6202
  %6204 = fdiv fast float %6203, %6194
  br label %6205

; <label>:6205                                    ; preds = %6198, %6189
  %6206 = phi float [ %6204, %6198 ], [ %6191, %6189 ]
  %6207 = phi float [ %6200, %6198 ], [ 1.000000e+00, %6189 ]
  %6208 = fcmp fast une float %6195, 0.000000e+00
  br i1 %6208, label %6209, label %6216, !dx.controlflow.hints !181

; <label>:6209                                    ; preds = %6205
  %6210 = fmul fast float %6195, 0x3FF7154760000000
  %6211 = call float @dx.op.unary.f32(i32 21, float %6210)  ; Exp(value)
  %6212 = fsub fast float 1.000000e+00, %6211
  %6213 = fmul fast float %6192, %6212
  %6214 = fsub fast float -0.000000e+00, %6213
  %6215 = fdiv fast float %6214, %6195
  br label %6216

; <label>:6216                                    ; preds = %6209, %6205
  %6217 = phi float [ %6215, %6209 ], [ %6192, %6205 ]
  %6218 = phi float [ %6211, %6209 ], [ 1.000000e+00, %6205 ]
  %6219 = fcmp fast une float %6196, 0.000000e+00
  br i1 %6219, label %6220, label %6227, !dx.controlflow.hints !181

; <label>:6220                                    ; preds = %6216
  %6221 = fmul fast float %6196, 0x3FF7154760000000
  %6222 = call float @dx.op.unary.f32(i32 21, float %6221)  ; Exp(value)
  %6223 = fsub fast float 1.000000e+00, %6222
  %6224 = fmul fast float %6193, %6223
  %6225 = fsub fast float -0.000000e+00, %6224
  %6226 = fdiv fast float %6225, %6196
  br label %6227

; <label>:6227                                    ; preds = %6220, %6216, %6176, %6169
  %6228 = phi float [ %6226, %6220 ], [ %6188, %6176 ], [ %6173, %6169 ], [ %6193, %6216 ]
  %6229 = phi float [ %6217, %6220 ], [ %6187, %6176 ], [ %6172, %6169 ], [ %6217, %6216 ]
  %6230 = phi float [ %6206, %6220 ], [ %6186, %6176 ], [ %6171, %6169 ], [ %6206, %6216 ]
  %6231 = phi float [ %6222, %6220 ], [ %6178, %6176 ], [ 1.000000e+00, %6169 ], [ 1.000000e+00, %6216 ]
  %6232 = phi float [ %6218, %6220 ], [ %6178, %6176 ], [ 1.000000e+00, %6169 ], [ %6218, %6216 ]
  %6233 = phi float [ %6207, %6220 ], [ %6178, %6176 ], [ 1.000000e+00, %6169 ], [ %6207, %6216 ]
  %6234 = fmul fast float %6233, %6145
  %6235 = fmul fast float %6232, %6156
  %6236 = fmul fast float %6231, %6167
  %6237 = fadd fast float %6234, %6230
  %6238 = fadd fast float %6235, %6229
  %6239 = fadd fast float %6236, %6228
  %6240 = fmul fast float %6233, %6144
  %6241 = fmul fast float %6232, %6155
  %6242 = fmul fast float %6231, %6166
  br label %6243

; <label>:6243                                    ; preds = %6227, %6038
  %6244 = phi float [ %6242, %6227 ], [ %6044, %6038 ]
  %6245 = phi float [ %6241, %6227 ], [ %6043, %6038 ]
  %6246 = phi float [ %6240, %6227 ], [ %6042, %6038 ]
  %6247 = phi float [ %6239, %6227 ], [ %6041, %6038 ]
  %6248 = phi float [ %6238, %6227 ], [ %6040, %6038 ]
  %6249 = phi float [ %6237, %6227 ], [ %6039, %6038 ]
  %6250 = fmul fast float %6249, %5193
  %6251 = fmul fast float %6248, %5193
  %6252 = fmul fast float %6247, %5193
  %6253 = fmul fast float %6246, %5486
  %6254 = call float @dx.op.dot3.f32(i32 55, float %6246, float %6245, float %6244, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6255 = call float @dx.op.dot3.f32(i32 55, float %6250, float %6251, float %6252, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6256 = select i1 %239, float %6254, float %6246
  %6257 = select i1 %239, float %6254, float %6245
  %6258 = select i1 %239, float 1.000000e+00, float %6244
  %6259 = select i1 %239, float %6255, float %6250
  %6260 = select i1 %239, float 0.000000e+00, float %6251
  %6261 = select i1 %239, float 0.000000e+00, float %6252
  %6262 = fmul fast float %6256, %5480
  %6263 = fmul fast float %6257, %5481
  %6264 = fmul fast float %6258, %5482
  %6265 = fadd fast float %6262, %6259
  %6266 = fadd fast float %6263, %6260
  %6267 = fadd fast float %6261, %6264
  %6268 = fmul fast float %6256, %5483
  %6269 = fmul fast float %6257, %5484
  %6270 = fmul fast float %6258, %5485
  %6271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6272 = extractvalue %dx.types.CBufRet.i32 %6271, 0
  %6273 = icmp eq i32 %6272, 0
  br i1 %6273, label %6641, label %6274, !dx.controlflow.hints !183

; <label>:6274                                    ; preds = %6243
  %6275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6276 = extractvalue %dx.types.CBufRet.f32 %6275, 2
  %6277 = extractvalue %dx.types.CBufRet.f32 %6275, 3
  %6278 = fmul fast float %6276, %93
  %6279 = fmul fast float %6277, %94
  %6280 = fmul fast float %6278, 2.000000e+00
  %6281 = fmul fast float %6279, 2.000000e+00
  %6282 = fsub fast float 1.000000e+00, %6280
  %6283 = fsub fast float 1.000000e+00, %6281
  %6284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6285 = extractvalue %dx.types.CBufRet.f32 %6284, 0
  %6286 = extractvalue %dx.types.CBufRet.f32 %6284, 1
  %6287 = extractvalue %dx.types.CBufRet.f32 %6284, 2
  %6288 = fmul fast float %6282, %6285
  %6289 = fmul fast float %6282, %6286
  %6290 = fmul fast float %6282, %6287
  %6291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6292 = extractvalue %dx.types.CBufRet.f32 %6291, 0
  %6293 = extractvalue %dx.types.CBufRet.f32 %6291, 1
  %6294 = extractvalue %dx.types.CBufRet.f32 %6291, 2
  %6295 = fmul fast float %6283, %6292
  %6296 = fmul fast float %6283, %6293
  %6297 = fmul fast float %6283, %6294
  %6298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6299 = extractvalue %dx.types.CBufRet.f32 %6298, 0
  %6300 = extractvalue %dx.types.CBufRet.f32 %6298, 1
  %6301 = extractvalue %dx.types.CBufRet.f32 %6298, 2
  %6302 = fadd fast float %6295, %6299
  %6303 = fadd fast float %6302, %6288
  %6304 = fadd fast float %6296, %6300
  %6305 = fadd fast float %6304, %6289
  %6306 = fadd fast float %6297, %6301
  %6307 = fadd fast float %6306, %6290
  %6308 = fmul fast float %6303, %5479
  %6309 = fmul fast float %6305, %5479
  %6310 = fmul fast float %6307, %5479
  %6311 = fmul fast float %6308, %6308
  %6312 = fmul fast float %6309, %6309
  %6313 = fadd fast float %6311, %6312
  %6314 = fmul fast float %6310, %6310
  %6315 = fadd fast float %6313, %6314
  %6316 = call float @dx.op.unary.f32(i32 24, float %6315)  ; Sqrt(value)
  %6317 = extractvalue %dx.types.CBufRet.f32 %5204, 0
  %6318 = fsub fast float %6316, %6317
  %6319 = extractvalue %dx.types.CBufRet.f32 %5204, 2
  %6320 = fmul fast float %6318, %6319
  %6321 = call float @dx.op.unary.f32(i32 7, float %6320)  ; Saturate(value)
  %6322 = fadd fast float %6321, -5.000000e-01
  %6323 = fmul fast float %6322, 2.000000e+00
  %6324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6325 = extractvalue %dx.types.CBufRet.f32 %6324, 2
  %6326 = call float @dx.op.binary.f32(i32 36, float %6325, float %6323)  ; FMin(a,b)
  %6327 = fsub fast float -0.000000e+00, %6325
  %6328 = fcmp fast ogt float %6326, %6327
  br i1 %6328, label %6329, label %6641, !dx.controlflow.hints !184

; <label>:6329                                    ; preds = %6274
  %6330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6331 = extractvalue %dx.types.CBufRet.f32 %6330, 3
  %6332 = fcmp fast ogt float %6331, 0.000000e+00
  br i1 %6332, label %6333, label %6408, !dx.controlflow.hints !185

; <label>:6333                                    ; preds = %6329
  %6334 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %6335 = extractvalue %dx.types.Dimensions %6334, 0
  %6336 = sitofp i32 %6335 to float
  %6337 = extractvalue %dx.types.Dimensions %6334, 1
  %6338 = sitofp i32 %6337 to float
  %6339 = fmul fast float %6278, %6336
  %6340 = fmul fast float %6279, %6338
  %6341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6342 = extractvalue %dx.types.CBufRet.f32 %6341, 1
  %6343 = fsub fast float -0.000000e+00, %6342
  %6344 = fptoui float %6343 to i32
  %6345 = fptoui float %6339 to i32
  %6346 = fptoui float %6340 to i32
  %6347 = and i32 %6344, 31
  %6348 = lshr i32 %6345, %6347
  %6349 = lshr i32 %6346, %6347
  %6350 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %6344, i32 %6348, i32 %6349, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6351 = extractvalue %dx.types.ResRet.f32 %6350, 0
  %6352 = fcmp fast olt float %6351, -1.000000e+00
  %6353 = fcmp fast ogt float %6351, -1.000000e+00
  %6354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6355 = extractvalue %dx.types.CBufRet.f32 %6354, 1
  %6356 = select i1 %6353, float %6355, float 1.000000e+00
  %6357 = fadd fast float %6351, 1.000000e+00
  %6358 = fmul fast float %6356, %6357
  %6359 = call float @dx.op.unary.f32(i32 6, float %6358)  ; FAbs(value)
  %6360 = extractvalue %dx.types.CBufRet.f32 %6354, 3
  %6361 = fcmp fast oge float %6359, %6360
  %6362 = select i1 %6361, float 0x4197782600000000, float %6359
  %6363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6364 = extractvalue %dx.types.CBufRet.f32 %6363, 0
  %6365 = extractvalue %dx.types.CBufRet.f32 %6363, 1
  %6366 = extractvalue %dx.types.CBufRet.f32 %6363, 2
  %6367 = select i1 %6352, float %6364, float %6285
  %6368 = select i1 %6352, float %6365, float %6286
  %6369 = select i1 %6352, float %6366, float %6287
  %6370 = fmul fast float %6367, %6282
  %6371 = fmul fast float %6368, %6282
  %6372 = fmul fast float %6369, %6282
  %6373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6374 = extractvalue %dx.types.CBufRet.f32 %6373, 0
  %6375 = extractvalue %dx.types.CBufRet.f32 %6373, 1
  %6376 = extractvalue %dx.types.CBufRet.f32 %6373, 2
  %6377 = select i1 %6352, float %6374, float %6292
  %6378 = select i1 %6352, float %6375, float %6293
  %6379 = select i1 %6352, float %6376, float %6294
  %6380 = fmul fast float %6377, %6283
  %6381 = fmul fast float %6378, %6283
  %6382 = fmul fast float %6379, %6283
  %6383 = fadd fast float %6380, %6370
  %6384 = fadd fast float %6381, %6371
  %6385 = fadd fast float %6382, %6372
  %6386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6386, 0
  %6388 = extractvalue %dx.types.CBufRet.f32 %6386, 1
  %6389 = extractvalue %dx.types.CBufRet.f32 %6386, 2
  %6390 = select i1 %6352, float %6387, float %6299
  %6391 = select i1 %6352, float %6388, float %6300
  %6392 = select i1 %6352, float %6389, float %6301
  %6393 = fadd fast float %6383, %6390
  %6394 = fadd fast float %6384, %6391
  %6395 = fadd fast float %6385, %6392
  %6396 = fmul fast float %6393, %6362
  %6397 = fmul fast float %6394, %6362
  %6398 = fmul fast float %6395, %6362
  %6399 = fmul fast float %6396, %6396
  %6400 = fmul fast float %6397, %6397
  %6401 = fadd fast float %6399, %6400
  %6402 = fmul fast float %6398, %6398
  %6403 = fadd fast float %6401, %6402
  %6404 = call float @dx.op.unary.f32(i32 24, float %6403)  ; Sqrt(value)
  %6405 = fsub fast float %6404, %6317
  %6406 = fmul fast float %6405, %6319
  %6407 = call float @dx.op.unary.f32(i32 7, float %6406)  ; Saturate(value)
  br label %6408

; <label>:6408                                    ; preds = %6333, %6329
  %6409 = phi float [ %6407, %6333 ], [ 1.000000e+00, %6329 ]
  %6410 = fmul fast float %6326, 5.000000e-01
  %6411 = fadd fast float %6410, 5.000000e-01
  %6412 = call float @dx.op.unary.f32(i32 22, float %6411)  ; Frc(value)
  %6413 = call float @dx.op.unary.f32(i32 27, float %6412)  ; Round_ni(value)
  %6414 = call float @dx.op.unary.f32(i32 22, float %6412)  ; Frc(value)
  %6415 = fmul fast float %6414, 2.000000e+00
  %6416 = fadd fast float %6415, -1.000000e+00
  %6417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %58, float %6278, float %6279, float %6413, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6418 = extractvalue %dx.types.ResRet.f32 %6417, 0
  %6419 = extractvalue %dx.types.ResRet.f32 %6417, 1
  %6420 = extractvalue %dx.types.ResRet.f32 %6417, 2
  %6421 = extractvalue %dx.types.ResRet.f32 %6417, 3
  %6422 = fadd fast float %6418, -5.000000e-01
  %6423 = fadd fast float %6420, -5.000000e-01
  %6424 = fmul fast float %6422, 0xBFD5555560000000
  %6425 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6423, float %6424)  ; FMad(a,b,c)
  %6426 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6419, float 0.000000e+00)  ; FMad(a,b,c)
  %6427 = fadd fast float %6426, %6421
  %6428 = fmul fast float %6422, -7.500000e-01
  %6429 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6423, float %6428)  ; FMad(a,b,c)
  %6430 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6419, float 0.000000e+00)  ; FMad(a,b,c)
  %6431 = fadd fast float %6430, %6421
  %6432 = call float @dx.op.binary.f32(i32 35, float %6425, float -1.000000e+00)  ; FMax(a,b)
  %6433 = call float @dx.op.binary.f32(i32 35, float %6427, float -1.000000e+00)  ; FMax(a,b)
  %6434 = call float @dx.op.binary.f32(i32 35, float %6429, float -1.000000e+00)  ; FMax(a,b)
  %6435 = call float @dx.op.binary.f32(i32 35, float %6431, float -1.000000e+00)  ; FMax(a,b)
  %6436 = call float @dx.op.binary.f32(i32 36, float %6432, float 1.000000e+00)  ; FMin(a,b)
  %6437 = call float @dx.op.binary.f32(i32 36, float %6433, float 1.000000e+00)  ; FMin(a,b)
  %6438 = call float @dx.op.binary.f32(i32 36, float %6434, float 1.000000e+00)  ; FMin(a,b)
  %6439 = call float @dx.op.binary.f32(i32 36, float %6435, float 1.000000e+00)  ; FMin(a,b)
  %6440 = fcmp fast olt float %6436, 0x3FEFFF8020000000
  br i1 %6440, label %6441, label %6556, !dx.controlflow.hints !186

; <label>:6441                                    ; preds = %6408
  %6442 = extractvalue %dx.types.CBufRet.f32 %6324, 3
  %6443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6444 = extractvalue %dx.types.CBufRet.f32 %6443, 0
  %6445 = extractvalue %dx.types.CBufRet.f32 %6443, 1
  %6446 = extractvalue %dx.types.CBufRet.f32 %6443, 2
  %6447 = extractvalue %dx.types.CBufRet.f32 %6443, 3
  %6448 = fsub fast float %6444, %6436
  %6449 = fsub fast float %6445, %6437
  %6450 = fsub fast float %6446, %6438
  %6451 = fsub fast float %6447, %6439
  %6452 = fmul fast float %6448, %6442
  %6453 = fmul fast float %6449, %6442
  %6454 = fmul fast float %6450, %6442
  %6455 = fmul fast float %6451, %6442
  %6456 = fadd fast float %6452, %6436
  %6457 = fadd fast float %6453, %6437
  %6458 = fsub fast float -0.000000e+00, %6457
  %6459 = fadd fast float %6454, %6438
  %6460 = fadd fast float %6455, %6439
  %6461 = fmul fast float %6456, %6456
  %6462 = fsub fast float %6457, %6461
  %6463 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6462)  ; FMax(a,b)
  %6464 = fdiv fast float 1.000000e+00, %6463
  %6465 = fmul fast float %6457, %6456
  %6466 = fsub fast float %6459, %6465
  %6467 = fsub fast float %6416, %6456
  %6468 = fmul fast float %6416, %6416
  %6469 = fsub fast float %6468, %6457
  %6470 = fmul fast float %6467, %6464
  %6471 = fmul fast float %6470, %6466
  %6472 = fsub fast float %6469, %6471
  %6473 = fmul fast float %6457, %6457
  %6474 = fsub fast float %6460, %6473
  %6475 = fmul fast float %6466, %6466
  %6476 = fmul fast float %6475, %6464
  %6477 = fsub fast float %6474, %6476
  %6478 = fdiv fast float %6472, %6477
  %6479 = fmul fast float %6466, %6478
  %6480 = fsub fast float %6467, %6479
  %6481 = fmul fast float %6480, %6464
  %6482 = fmul fast float %6481, %6456
  %6483 = fsub fast float 1.000000e+00, %6482
  %6484 = fmul fast float %6457, %6478
  %6485 = fsub fast float %6483, %6484
  %6486 = fmul fast float %6481, %6481
  %6487 = fmul fast float %6478, 4.000000e+00
  %6488 = fmul fast float %6487, %6485
  %6489 = fsub fast float %6486, %6488
  %6490 = call float @dx.op.unary.f32(i32 24, float %6489)  ; Sqrt(value)
  %6491 = fcmp fast oge float %6481, 0.000000e+00
  %6492 = fsub fast float -0.000000e+00, %6490
  %6493 = select i1 %6491, float %6492, float %6490
  %6494 = fsub fast float %6493, %6481
  %6495 = fdiv fast float %6494, %6478
  %6496 = fdiv fast float %6485, %6494
  %6497 = fmul fast float %6495, 5.000000e-01
  %6498 = fmul fast float %6496, 2.000000e+00
  %6499 = select i1 %6491, float %6497, float %6498
  %6500 = select i1 %6491, float %6498, float %6497
  %6501 = call float @dx.op.binary.f32(i32 35, float %6499, float %6500)  ; FMax(a,b)
  %6502 = call float @dx.op.binary.f32(i32 36, float %6499, float %6500)  ; FMin(a,b)
  %6503 = fcmp fast ogt float %6416, %6502
  br i1 %6503, label %6504, label %6514

; <label>:6504                                    ; preds = %6441
  %6505 = fsub fast float %6416, %6502
  %6506 = fsub fast float %6501, %6502
  %6507 = fmul fast float %6505, %6506
  %6508 = fmul fast float %6501, %6416
  %6509 = fadd fast float %6501, %6416
  %6510 = fmul fast float %6509, %6456
  %6511 = fadd fast float %6508, %6457
  %6512 = fsub fast float %6511, %6510
  %6513 = fdiv fast float %6512, %6507
  br label %6514

; <label>:6514                                    ; preds = %6504, %6441
  %6515 = phi float [ %6513, %6504 ], [ 0.000000e+00, %6441 ]
  %6516 = fcmp fast ogt float %6416, %6501
  %6517 = fsub fast float %6416, %6501
  br i1 %6516, label %6518, label %6528

; <label>:6518                                    ; preds = %6514
  %6519 = fsub fast float %6501, %6502
  %6520 = fmul fast float %6519, %6517
  %6521 = fmul fast float %6502, %6416
  %6522 = fadd fast float %6502, %6416
  %6523 = fmul fast float %6522, %6456
  %6524 = fsub fast float %6458, %6521
  %6525 = fadd fast float %6524, %6523
  %6526 = fdiv fast float %6525, %6520
  %6527 = fadd fast float %6526, %6515
  br label %6528

; <label>:6528                                    ; preds = %6518, %6514
  %6529 = phi float [ %6527, %6518 ], [ %6515, %6514 ]
  %6530 = fsub fast float %6416, %6502
  %6531 = fmul fast float %6530, %6517
  %6532 = fmul fast float %6502, %6501
  %6533 = fadd fast float %6502, %6501
  %6534 = fmul fast float %6533, %6456
  %6535 = fadd fast float %6532, %6457
  %6536 = fsub fast float %6535, %6534
  %6537 = fdiv fast float %6536, %6531
  %6538 = call float @dx.op.unary.f32(i32 7, float %6529)  ; Saturate(value)
  %6539 = fcmp fast oeq float %5205, 0.000000e+00
  %6540 = extractvalue %dx.types.CBufRet.f32 %6324, 0
  %6541 = fcmp fast oeq float %6540, 0.000000e+00
  %6542 = or i1 %6539, %6541
  %6543 = fmul fast float %6540, 2.000000e+00
  %6544 = fadd fast float %6325, %6326
  %6545 = fdiv fast float %6544, %6543
  %6546 = call float @dx.op.unary.f32(i32 7, float %6545)  ; Saturate(value)
  %6547 = fmul fast float %6546, 2.000000e+00
  %6548 = fsub fast float 3.000000e+00, %6547
  %6549 = fmul fast float %6546, %6546
  %6550 = fmul fast float %6549, %6548
  %6551 = select i1 %6542, float 1.000000e+00, float %6550
  %6552 = fmul fast float %6537, %5205
  %6553 = fadd fast float %6538, %6552
  %6554 = call float @dx.op.unary.f32(i32 7, float %6553)  ; Saturate(value)
  %6555 = fmul fast float %6551, %6554
  br label %6556

; <label>:6556                                    ; preds = %6528, %6408
  %6557 = phi float [ %6555, %6528 ], [ 0.000000e+00, %6408 ]
  %6558 = fsub fast float 1.000000e+00, %6557
  %6559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %58, float %6278, float %6279, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6560 = extractvalue %dx.types.ResRet.f32 %6559, 0
  %6561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6562 = extractvalue %dx.types.CBufRet.i32 %6561, 2
  %6563 = icmp eq i32 %6562, 0
  br i1 %6563, label %6569, label %6564

; <label>:6564                                    ; preds = %6556
  %6565 = call float @dx.op.unary.f32(i32 7, float %6557)  ; Saturate(value)
  %6566 = fadd fast float %6560, -1.000000e+00
  %6567 = fmul fast float %6565, %6566
  %6568 = fadd fast float %6567, 1.000000e+00
  br label %6569

; <label>:6569                                    ; preds = %6564, %6556
  %6570 = phi float [ %6568, %6564 ], [ %6558, %6556 ]
  br i1 %6332, label %6571, label %6589

; <label>:6571                                    ; preds = %6569
  %6572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6573 = extractvalue %dx.types.CBufRet.f32 %6572, 1
  %6574 = fsub fast float %6409, %6573
  %6575 = call float @dx.op.unary.f32(i32 7, float %6574)  ; Saturate(value)
  %6576 = fsub fast float %6409, %6331
  %6577 = call float @dx.op.unary.f32(i32 7, float %6576)  ; Saturate(value)
  %6578 = fsub fast float %6575, %6577
  %6579 = fsub fast float %6411, %6577
  %6580 = fdiv fast float %6579, %6578
  %6581 = call float @dx.op.unary.f32(i32 7, float %6580)  ; Saturate(value)
  %6582 = fmul fast float %6581, 2.000000e+00
  %6583 = fsub fast float 3.000000e+00, %6582
  %6584 = fsub fast float %6560, %6570
  %6585 = fmul fast float %6581, %6581
  %6586 = fmul fast float %6585, %6584
  %6587 = fmul fast float %6586, %6583
  %6588 = fadd fast float %6587, %6570
  br label %6589

; <label>:6589                                    ; preds = %6571, %6569
  %6590 = phi float [ %6588, %6571 ], [ %6570, %6569 ]
  %6591 = call float @dx.op.binary.f32(i32 35, float %6560, float %6590)  ; FMax(a,b)
  %6592 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6593 = extractvalue %dx.types.CBufRet.i32 %6592, 2
  %6594 = and i32 %6593, 1
  %6595 = icmp eq i32 %6594, 0
  %6596 = fcmp fast une float %6591, 1.000000e+00
  %6597 = and i1 %6596, %6595
  br i1 %6597, label %6598, label %6617

; <label>:6598                                    ; preds = %6589
  %6599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %58, float %6278, float %6279, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6600 = extractvalue %dx.types.ResRet.f32 %6599, 0
  %6601 = extractvalue %dx.types.ResRet.f32 %6599, 1
  %6602 = extractvalue %dx.types.ResRet.f32 %6599, 2
  %6603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6604 = extractvalue %dx.types.CBufRet.f32 %6603, 1
  %6605 = fmul fast float %6604, %6600
  %6606 = fmul fast float %6604, %6601
  %6607 = fmul fast float %6604, %6602
  %6608 = fcmp fast ogt float %6560, 0x3FEFFF2E40000000
  %6609 = fsub fast float 1.000000e+00, %6591
  %6610 = fsub fast float 1.000000e+00, %6560
  %6611 = fdiv fast float %6609, %6610
  %6612 = call float @dx.op.unary.f32(i32 7, float %6611)  ; Saturate(value)
  %6613 = select i1 %6608, float 0.000000e+00, float %6612
  %6614 = fmul fast float %6605, %6613
  %6615 = fmul fast float %6606, %6613
  %6616 = fmul fast float %6607, %6613
  br label %6617

; <label>:6617                                    ; preds = %6598, %6589
  %6618 = phi float [ 0.000000e+00, %6589 ], [ %6614, %6598 ]
  %6619 = phi float [ 0.000000e+00, %6589 ], [ %6615, %6598 ]
  %6620 = phi float [ 0.000000e+00, %6589 ], [ %6616, %6598 ]
  %6621 = fmul fast float %6618, %5193
  %6622 = fmul fast float %6619, %5193
  %6623 = fmul fast float %6620, %5193
  %6624 = fmul fast float %6591, %6253
  %6625 = call float @dx.op.dot3.f32(i32 55, float %6591, float %6591, float %6591, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6626 = call float @dx.op.dot3.f32(i32 55, float %6621, float %6622, float %6623, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6627 = select i1 %239, float %6625, float %6591
  %6628 = select i1 %239, float 1.000000e+00, float %6591
  %6629 = select i1 %239, float %6626, float %6621
  %6630 = select i1 %239, float 0.000000e+00, float %6622
  %6631 = select i1 %239, float 0.000000e+00, float %6623
  %6632 = fmul fast float %6627, %6265
  %6633 = fmul fast float %6627, %6266
  %6634 = fmul fast float %6628, %6267
  %6635 = fadd fast float %6632, %6629
  %6636 = fadd fast float %6633, %6630
  %6637 = fadd fast float %6631, %6634
  %6638 = fmul fast float %6627, %6268
  %6639 = fmul fast float %6627, %6269
  %6640 = fmul fast float %6628, %6270
  br label %6641

; <label>:6641                                    ; preds = %6617, %6274, %6243, %5475
  %6642 = phi float [ %5480, %5475 ], [ %6265, %6243 ], [ %6635, %6617 ], [ %6265, %6274 ]
  %6643 = phi float [ %5481, %5475 ], [ %6266, %6243 ], [ %6636, %6617 ], [ %6266, %6274 ]
  %6644 = phi float [ %5482, %5475 ], [ %6267, %6243 ], [ %6637, %6617 ], [ %6267, %6274 ]
  %6645 = phi float [ %5483, %5475 ], [ %6268, %6243 ], [ %6638, %6617 ], [ %6268, %6274 ]
  %6646 = phi float [ %5484, %5475 ], [ %6269, %6243 ], [ %6639, %6617 ], [ %6269, %6274 ]
  %6647 = phi float [ %5485, %5475 ], [ %6270, %6243 ], [ %6640, %6617 ], [ %6270, %6274 ]
  %6648 = phi float [ %5486, %5475 ], [ %6253, %6243 ], [ %6624, %6617 ], [ %6253, %6274 ]
  %6649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6650 = extractvalue %dx.types.CBufRet.f32 %6649, 2
  %6651 = extractvalue %dx.types.CBufRet.f32 %6649, 3
  %6652 = fmul fast float %6650, %93
  %6653 = fmul fast float %6651, %94
  %6654 = call float @dx.op.unary.f32(i32 7, float %6652)  ; Saturate(value)
  %6655 = call float @dx.op.unary.f32(i32 7, float %6653)  ; Saturate(value)
  %6656 = select i1 %5215, i32 2, i32 0
  %6657 = or i32 %6656, 1
  %6658 = uitofp i32 %6657 to float
  %6659 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6654, float %6655, float %6658, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6660 = extractvalue %dx.types.ResRet.f32 %6659, 0
  %6661 = extractvalue %dx.types.ResRet.f32 %6659, 1
  %6662 = extractvalue %dx.types.ResRet.f32 %6659, 2
  %6663 = extractvalue %dx.types.ResRet.f32 %6659, 3
  %6664 = add nuw nsw i32 %6656, 2
  %6665 = uitofp i32 %6664 to float
  %6666 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6654, float %6655, float %6665, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6667 = extractvalue %dx.types.ResRet.f32 %6666, 0
  %6668 = extractvalue %dx.types.ResRet.f32 %6666, 1
  %6669 = extractvalue %dx.types.ResRet.f32 %6666, 2
  %6670 = extractvalue %dx.types.ResRet.f32 %6666, 3
  %6671 = call float @dx.op.binary.f32(i32 35, float %6661, float %6662)  ; FMax(a,b)
  %6672 = call float @dx.op.binary.f32(i32 35, float %6660, float %6671)  ; FMax(a,b)
  %6673 = call float @dx.op.binary.f32(i32 35, float %6672, float %6663)  ; FMax(a,b)
  %6674 = call float @dx.op.binary.f32(i32 36, float %6668, float %6669)  ; FMin(a,b)
  %6675 = call float @dx.op.binary.f32(i32 36, float %6667, float %6674)  ; FMin(a,b)
  %6676 = call float @dx.op.binary.f32(i32 36, float %6675, float %6670)  ; FMin(a,b)
  %6677 = fmul fast float %6673, 2.550000e+02
  %6678 = fadd fast float %6677, 0x3F70101020000000
  %6679 = fptoui float %6678 to i32
  %6680 = fmul fast float %6676, 2.550000e+02
  %6681 = fadd fast float %6680, 0x3F70101020000000
  %6682 = fptoui float %6681 to i32
  %6683 = icmp ult i32 %6679, %6682
  br i1 %6683, label %6684, label %6853

; <label>:6684                                    ; preds = %6641
  %6685 = fcmp fast ogt float %83, 9.843750e-01
  %6686 = fadd fast float %5479, -4.000000e+00
  %6687 = select i1 %6685, float -4.000000e+00, float %6686
  %6688 = call float @dx.op.binary.f32(i32 35, float %6687, float 0.000000e+00)  ; FMax(a,b)
  %6689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6690 = extractvalue %dx.types.CBufRet.f32 %6689, 0
  %6691 = fadd fast float %6690, %6688
  %6692 = extractvalue %dx.types.CBufRet.f32 %6689, 2
  %6693 = fmul fast float %6691, %6692
  %6694 = call float @dx.op.unary.f32(i32 23, float %6693)  ; Log(value)
  %6695 = extractvalue %dx.types.CBufRet.f32 %6689, 3
  %6696 = fmul fast float %6695, %6694
  %6697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6698 = extractvalue %dx.types.CBufRet.f32 %6697, 2
  %6699 = fmul fast float %6696, %6698
  %6700 = call float @dx.op.unary.f32(i32 7, float %6699)  ; Saturate(value)
  %6701 = uitofp i32 %6679 to float
  %6702 = uitofp i32 %6682 to float
  %6703 = fadd fast float %6701, 5.000000e-01
  %6704 = fadd fast float %6702, 5.000000e-01
  %6705 = fmul fast float %6698, %6703
  %6706 = fmul fast float %6698, %6704
  %6707 = fadd fast float %6705, 0x3F0FFB4800000000
  %6708 = fadd fast float %6706, 0xBF0FFB4800000000
  %6709 = call float @dx.op.binary.f32(i32 35, float %6700, float %6707)  ; FMax(a,b)
  %6710 = call float @dx.op.binary.f32(i32 36, float %6709, float %6708)  ; FMin(a,b)
  %6711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6712 = extractvalue %dx.types.CBufRet.f32 %6711, 1
  %6713 = extractvalue %dx.types.CBufRet.f32 %6711, 2
  %6714 = extractvalue %dx.types.CBufRet.f32 %6711, 0
  %6715 = select i1 %5215, float %6714, float 0.000000e+00
  %6716 = fmul fast float %6712, %6710
  %6717 = fadd fast float %6715, %6716
  %6718 = fadd fast float %6715, %6713
  %6719 = fsub fast float %6712, %6713
  %6720 = fadd fast float %6719, %6715
  %6721 = call float @dx.op.binary.f32(i32 35, float %6717, float %6718)  ; FMax(a,b)
  %6722 = call float @dx.op.binary.f32(i32 36, float %6721, float %6720)  ; FMin(a,b)
  %6723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %6654, float %6655, float %6722, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6724 = extractvalue %dx.types.ResRet.f32 %6723, 0
  %6725 = extractvalue %dx.types.ResRet.f32 %6723, 1
  %6726 = extractvalue %dx.types.ResRet.f32 %6723, 2
  %6727 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6728 = extractvalue %dx.types.CBufRet.i32 %6727, 0
  %6729 = extractvalue %dx.types.CBufRet.i32 %6727, 1
  %6730 = uitofp i32 %6728 to float
  %6731 = uitofp i32 %6729 to float
  %6732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6733 = extractvalue %dx.types.CBufRet.f32 %6732, 0
  %6734 = extractvalue %dx.types.CBufRet.f32 %6732, 1
  %6735 = fmul fast float %6730, %6654
  %6736 = fmul fast float %6731, %6655
  %6737 = fadd fast float %6735, -5.000000e-01
  %6738 = fadd fast float %6736, -5.000000e-01
  %6739 = call float @dx.op.unary.f32(i32 22, float %6737)  ; Frc(value)
  %6740 = call float @dx.op.unary.f32(i32 22, float %6738)  ; Frc(value)
  %6741 = fmul fast float %6739, %6739
  %6742 = fmul fast float %6741, %6739
  %6743 = fsub fast float 3.000000e+00, %6739
  %6744 = fmul fast float %6741, %6743
  %6745 = fmul fast float %6739, 3.000000e+00
  %6746 = fmul fast float %6742, 3.000000e+00
  %6747 = fmul fast float %6741, 6.000000e+00
  %6748 = fsub fast float %6746, %6747
  %6749 = fadd fast float %6748, 4.000000e+00
  %6750 = fmul fast float %6749, 0x3FC5555560000000
  %6751 = fmul fast float %6742, -3.000000e+00
  %6752 = fadd fast float %6741, %6739
  %6753 = fmul fast float %6752, 3.000000e+00
  %6754 = fadd fast float %6751, 1.000000e+00
  %6755 = fadd fast float %6754, %6753
  %6756 = fmul fast float %6742, 0x3FC5555560000000
  %6757 = fmul fast float %6740, %6740
  %6758 = fmul fast float %6757, %6740
  %6759 = fsub fast float 3.000000e+00, %6740
  %6760 = fmul fast float %6757, %6759
  %6761 = fmul fast float %6740, 3.000000e+00
  %6762 = fmul fast float %6758, 3.000000e+00
  %6763 = fmul fast float %6757, 6.000000e+00
  %6764 = fsub fast float %6762, %6763
  %6765 = fadd fast float %6764, 4.000000e+00
  %6766 = fmul fast float %6765, 0x3FC5555560000000
  %6767 = fmul fast float %6758, -3.000000e+00
  %6768 = fadd fast float %6757, %6740
  %6769 = fmul fast float %6768, 3.000000e+00
  %6770 = fadd fast float %6767, 1.000000e+00
  %6771 = fadd fast float %6770, %6769
  %6772 = fmul fast float %6758, 0x3FC5555560000000
  %6773 = fadd fast float %6739, 1.000000e+00
  %6774 = fsub fast float 1.000000e+00, %6745
  %6775 = fadd fast float %6774, %6744
  %6776 = fadd fast float %6775, %6749
  %6777 = fmul fast float %6776, 0x3FC5555560000000
  %6778 = fdiv fast float %6750, %6777
  %6779 = fsub fast float %6773, %6778
  %6780 = fsub fast float 1.000000e+00, %6739
  %6781 = fadd fast float %6755, %6742
  %6782 = fmul fast float %6781, 0x3FC5555560000000
  %6783 = fdiv fast float %6756, %6782
  %6784 = fadd fast float %6780, %6783
  %6785 = fadd fast float %6740, 1.000000e+00
  %6786 = fsub fast float 1.000000e+00, %6761
  %6787 = fadd fast float %6786, %6760
  %6788 = fadd fast float %6787, %6765
  %6789 = fmul fast float %6788, 0x3FC5555560000000
  %6790 = fdiv fast float %6766, %6789
  %6791 = fsub fast float %6785, %6790
  %6792 = fsub fast float 1.000000e+00, %6740
  %6793 = fadd fast float %6771, %6758
  %6794 = fmul fast float %6793, 0x3FC5555560000000
  %6795 = fdiv fast float %6772, %6794
  %6796 = fadd fast float %6795, %6792
  %6797 = fmul fast float %6779, %6733
  %6798 = fsub fast float %6654, %6797
  %6799 = fmul fast float %6784, %6733
  %6800 = fadd fast float %6799, %6654
  %6801 = fmul fast float %6796, %6734
  %6802 = fadd fast float %6801, %6655
  %6803 = fmul fast float %6791, %6734
  %6804 = fsub fast float %6655, %6803
  %6805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6798, float %6804, float %6722, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6806 = extractvalue %dx.types.ResRet.f32 %6805, 0
  %6807 = extractvalue %dx.types.ResRet.f32 %6805, 1
  %6808 = extractvalue %dx.types.ResRet.f32 %6805, 2
  %6809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6800, float %6804, float %6722, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6810 = extractvalue %dx.types.ResRet.f32 %6809, 0
  %6811 = extractvalue %dx.types.ResRet.f32 %6809, 1
  %6812 = extractvalue %dx.types.ResRet.f32 %6809, 2
  %6813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6798, float %6802, float %6722, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6814 = extractvalue %dx.types.ResRet.f32 %6813, 0
  %6815 = extractvalue %dx.types.ResRet.f32 %6813, 1
  %6816 = extractvalue %dx.types.ResRet.f32 %6813, 2
  %6817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6800, float %6802, float %6722, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6818 = extractvalue %dx.types.ResRet.f32 %6817, 0
  %6819 = extractvalue %dx.types.ResRet.f32 %6817, 1
  %6820 = extractvalue %dx.types.ResRet.f32 %6817, 2
  %6821 = fsub fast float %6814, %6806
  %6822 = fsub fast float %6815, %6807
  %6823 = fsub fast float %6816, %6808
  %6824 = fmul fast float %6821, %6794
  %6825 = fmul fast float %6822, %6794
  %6826 = fmul fast float %6823, %6794
  %6827 = fadd fast float %6824, %6806
  %6828 = fadd fast float %6825, %6807
  %6829 = fadd fast float %6826, %6808
  %6830 = fsub fast float %6818, %6810
  %6831 = fsub fast float %6819, %6811
  %6832 = fsub fast float %6820, %6812
  %6833 = fmul fast float %6830, %6794
  %6834 = fmul fast float %6831, %6794
  %6835 = fmul fast float %6832, %6794
  %6836 = fsub fast float %6810, %6827
  %6837 = fadd fast float %6836, %6833
  %6838 = fsub fast float %6811, %6828
  %6839 = fadd fast float %6838, %6834
  %6840 = fsub fast float %6812, %6829
  %6841 = fadd fast float %6840, %6835
  %6842 = fmul fast float %6837, %6782
  %6843 = fmul fast float %6839, %6782
  %6844 = fmul fast float %6841, %6782
  %6845 = fadd fast float %6842, %6827
  %6846 = fadd fast float %6843, %6828
  %6847 = fadd fast float %6844, %6829
  %6848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6849 = extractvalue %dx.types.CBufRet.f32 %6848, 1
  %6850 = fmul fast float %6845, %6849
  %6851 = fmul fast float %6846, %6849
  %6852 = fmul fast float %6847, %6849
  br label %6853

; <label>:6853                                    ; preds = %6684, %6641
  %6854 = phi float [ %6724, %6684 ], [ 1.000000e+00, %6641 ]
  %6855 = phi float [ %6725, %6684 ], [ 1.000000e+00, %6641 ]
  %6856 = phi float [ %6726, %6684 ], [ 1.000000e+00, %6641 ]
  %6857 = phi float [ %6850, %6684 ], [ 0.000000e+00, %6641 ]
  %6858 = phi float [ %6851, %6684 ], [ 0.000000e+00, %6641 ]
  %6859 = phi float [ %6852, %6684 ], [ 0.000000e+00, %6641 ]
  %6860 = fmul fast float %6857, %5193
  %6861 = fmul fast float %6858, %5193
  %6862 = fmul fast float %6859, %5193
  %6863 = fmul fast float %6854, %6648
  %6864 = call float @dx.op.dot3.f32(i32 55, float %6854, float %6855, float %6856, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6865 = call float @dx.op.dot3.f32(i32 55, float %6860, float %6861, float %6862, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6866 = select i1 %239, float %6864, float %6854
  %6867 = select i1 %239, float %6864, float %6855
  %6868 = select i1 %239, float 1.000000e+00, float %6856
  %6869 = select i1 %239, float %6865, float %6860
  %6870 = select i1 %239, float 0.000000e+00, float %6861
  %6871 = select i1 %239, float 0.000000e+00, float %6862
  %6872 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6873 = extractvalue %dx.types.CBufRet.i32 %6872, 3
  %6874 = and i32 %6873, 3
  %6875 = icmp ne i32 %6874, 0
  %6876 = and i32 %6873, 4
  %6877 = icmp ne i32 %6876, 0
  %6878 = and i1 %6875, %6877
  %6879 = and i1 %239, %6878
  br i1 %6879, label %6880, label %6886

; <label>:6880                                    ; preds = %6853
  %6881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6882 = extractvalue %dx.types.CBufRet.f32 %6881, 1
  %6883 = fadd fast float %6863, -1.000000e+00
  %6884 = fmul fast float %6882, %6883
  %6885 = fadd fast float %6884, 1.000000e+00
  br label %6886

; <label>:6886                                    ; preds = %6880, %6853
  %6887 = phi float [ %6885, %6880 ], [ %6863, %6853 ]
  %6888 = fadd fast float %6645, %6642
  %6889 = fmul fast float %6866, %6888
  %6890 = fadd fast float %6889, %6869
  %6891 = fadd fast float %6646, %6643
  %6892 = fmul fast float %6867, %6891
  %6893 = fadd fast float %6892, %6870
  %6894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6895 = extractvalue %dx.types.CBufRet.f32 %6894, 0
  br i1 %239, label %6896, label %6920

; <label>:6896                                    ; preds = %6886
  %6897 = fadd fast float %6890, %6893
  %6898 = fmul fast float %6895, %6897
  %6899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6900 = extractvalue %dx.types.CBufRet.f32 %6899, 3
  %6901 = extractvalue %dx.types.CBufRet.f32 %5197, 1
  %6902 = fsub fast float %5202, %5196
  %6903 = fadd fast float %6902, %5203
  %6904 = fsub fast float %6903, %6901
  %6905 = extractvalue %dx.types.CBufRet.f32 %5197, 2
  %6906 = fmul fast float %6904, %6905
  %6907 = call float @dx.op.unary.f32(i32 7, float %6906)  ; Saturate(value)
  %6908 = fsub fast float %6907, %6900
  %6909 = fmul fast float %6908, %6887
  %6910 = fadd fast float %6909, %6900
  %6911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6912 = extractvalue %dx.types.CBufRet.f32 %6911, 0
  %6913 = fsub fast float %6910, %6912
  %6914 = fmul fast float %6913, 1.000000e+01
  %6915 = call float @dx.op.unary.f32(i32 7, float %6914)  ; Saturate(value)
  %6916 = fsub fast float %1483, %5193
  %6917 = fmul fast float %6915, %6916
  %6918 = fadd fast float %6917, %5193
  %6919 = fmul fast float %6918, %6910
  br label %6944

; <label>:6920                                    ; preds = %6886
  %6921 = fadd fast float %6647, %6644
  %6922 = fmul fast float %6868, %6921
  %6923 = fadd fast float %6922, %6871
  %6924 = fmul fast float %6895, %6890
  %6925 = fmul fast float %6895, %6893
  %6926 = fmul fast float %6895, %6923
  %6927 = call float @dx.op.binary.f32(i32 35, float %6925, float %6926)  ; FMax(a,b)
  %6928 = call float @dx.op.binary.f32(i32 35, float %6924, float %6927)  ; FMax(a,b)
  %6929 = call float @dx.op.binary.f32(i32 35, float %6928, float %5193)  ; FMax(a,b)
  %6930 = fcmp fast ugt float %6929, 0x3F10000000000000
  br i1 %6930, label %6932, label %6931

; <label>:6931                                    ; preds = %6920
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6932

; <label>:6932                                    ; preds = %6931, %6920
  %6933 = add i32 %67, 132
  %6934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %6933, i32 undef)  ; BufferLoad(srv,index,wot)
  %6935 = extractvalue %dx.types.ResRet.i32 %6934, 0
  %6936 = and i32 %6935, 32
  %6937 = icmp eq i32 %6936, 0
  br i1 %6937, label %6944, label %6938

; <label>:6938                                    ; preds = %6932
  %6939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6940 = extractvalue %dx.types.CBufRet.f32 %6939, 0
  %6941 = fmul fast float %6940, 0x3FE99999A0000000
  %6942 = fadd fast float %6940, %6924
  %6943 = fadd fast float %6941, %6926
  br label %6944

; <label>:6944                                    ; preds = %6938, %6932, %6896
  %6945 = phi float [ %6898, %6896 ], [ %6942, %6938 ], [ %6924, %6932 ]
  %6946 = phi float [ %6919, %6896 ], [ %6925, %6938 ], [ %6925, %6932 ]
  %6947 = phi float [ %6918, %6896 ], [ %6943, %6938 ], [ %6926, %6932 ]
  %6948 = phi float [ %6918, %6896 ], [ %5193, %6938 ], [ %5193, %6932 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6949 = call float @dx.op.binary.f32(i32 36, float %6945, float 3.225500e+04)  ; FMin(a,b)
  %6950 = call float @dx.op.binary.f32(i32 36, float %6946, float 3.225500e+04)  ; FMin(a,b)
  %6951 = call float @dx.op.binary.f32(i32 36, float %6947, float 3.225500e+04)  ; FMin(a,b)
  %6952 = call float @dx.op.binary.f32(i32 36, float %6948, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6949)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6950)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6951)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6952)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %6948)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %6948)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %6948)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %6948)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!78 = !{[29 x i32] [i32 27, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 0, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255]}
!79 = !{void ()* @ps_main, !"ps_main", !80, !4, !101}
!80 = !{!81, !97, null}
!81 = !{!82, !85, !87, !89, !91, !92, !93, !94, !95, !96}
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
!95 = !{i32 8, !"SV_IsFrontFace", i8 5, i8 13, !83, i8 1, i32 1, i8 1, i32 6, i8 2, !86}
!96 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !83, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!97 = !{!98, !99}
!98 = !{i32 0, !"SV_Target", i8 9, i8 16, !83, i8 0, i32 1, i8 4, i32 0, i8 0, !84}
!99 = !{i32 1, !"SV_Target", i8 9, i8 16, !100, i8 0, i32 1, i8 4, i32 1, i8 0, !84}
!100 = !{i32 1}
!101 = !{i32 0, i64 16}
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
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = !{!115, !115, i64 0}
!115 = !{!"int", !116, i64 0}
!116 = !{!"omnipotent char", !117, i64 0}
!117 = !{!"Simple C/C++ TBAA"}
!118 = !{!119, !121, !123, !125}
!119 = distinct !{!119, !120, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!120 = distinct !{!120, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!121 = distinct !{!121, !122, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!122 = distinct !{!122, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!123 = distinct !{!123, !124, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!124 = distinct !{!124, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!125 = distinct !{!125, !126, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!126 = distinct !{!126, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = !{!139, !139, i64 0}
!139 = !{!"float", !116, i64 0}
!140 = !{!141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!141 = distinct !{!141, !142, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!142 = distinct !{!142, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!143 = distinct !{!143, !144, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!144 = distinct !{!144, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!145 = distinct !{!145, !144, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!146 = distinct !{!146, !147, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!147 = distinct !{!147, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!148 = distinct !{!148, !147, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!149 = distinct !{!149, !147, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!150 = distinct !{!150, !151, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!151 = distinct !{!151, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!152 = distinct !{!152, !151, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!153 = distinct !{!153, !151, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!154 = distinct !{!154, !155, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!155 = distinct !{!155, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"\01?sort@@YAXAIAM00@Z: %c"}
!158 = distinct !{!158, !"\01?sort@@YAXAIAM00@Z"}
!159 = !{!160, !161, !141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!160 = distinct !{!160, !158, !"\01?sort@@YAXAIAM00@Z: %a"}
!161 = distinct !{!161, !158, !"\01?sort@@YAXAIAM00@Z: %b"}
!162 = !{!161}
!163 = !{!160, !157, !141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!164 = !{!160}
!165 = !{!161, !157, !141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!166 = !{!167}
!167 = distinct !{!167, !168, !"\01?sort@@YAXAIAM00@Z: %c"}
!168 = distinct !{!168, !"\01?sort@@YAXAIAM00@Z"}
!169 = !{!170, !171, !141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!170 = distinct !{!170, !168, !"\01?sort@@YAXAIAM00@Z: %a"}
!171 = distinct !{!171, !168, !"\01?sort@@YAXAIAM00@Z: %b"}
!172 = !{!171}
!173 = !{!170, !167, !141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!174 = !{!170}
!175 = !{!171, !167, !141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 2}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 1}
!186 = distinct !{!186, !"dx.controlflow.hints", i32 1}

