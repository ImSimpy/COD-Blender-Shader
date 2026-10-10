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
; shader hash: 845e57553022a9828970a55a42012e59
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
;                                   texture     f32     2darray      T1      t0,space6unbounded
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
;                                   texture     f32          2d     T15     t69,space2     1
;                                   texture    byte         r/o     T16     t49,space1     1
;                                   texture    byte         r/o     T17     t50,space1     1
;                                   texture    byte         r/o     T18     t51,space1     1
;                                   texture    byte         r/o     T19     t52,space1     1
;                                   texture     f32          2d     T20     t37,space2     1
;                                   texture     f32          2d     T21             t0     1
;                                   texture     f32          2d     T22     t58,space2     1
;                                   texture     f32          2d     T23     t59,space2     1
;                                   texture     f32          2d     T24     t60,space2     1
;                                   texture    byte         r/o     T25     t45,space1     1
;                                   texture    byte         r/o     T26     t46,space1     1
;                                   texture    byte         r/o     T27     t47,space1     1
;                                   texture    byte         r/o     T28     t48,space1     1
;                                   texture     f32          2d     T29     t57,space2     1
;                                   texture    byte         r/o     T30     t69,space1     1
;                                   texture     u32          2d     T31     t56,space2     1
;                                   texture    byte         r/o     T32     t10,space1     1
;                                   texture    byte         r/o     T33      t1,space1     1
;                                   texture     f32          1d     T34     t32,space2     1
;                                   texture     f32     2darray     T35      t8,space2     1
;                                   texture     f32          2d     T36      t2,space2     1
;                                   texture     f32          2d     T37      t3,space2     1
;                                   texture     f32          2d     T38      t4,space2     1
;                                   textureunorm_f32     2darray     T39     t80,space2     1
;                                   texture    byte         r/o     T40     t67,space1     1
;                                   texture     f32          2d     T41      t7,space2     1
;                                   texture     f32          2d     T42      t6,space2     1
;                                   texture     f32          2d     T43      t5,space2     1
;                                   texture     f32          2d     T44     t38,space2     1
;                                   texture    byte         r/o     T45     t12,space1     1
;                                   texture    byte         r/o     T46     t13,space1     1
;                                   texture     f32          1d     T47     t30,space2     1
;                                   texture     f32          3d     T48     t44,space2     1
;                                   texture     f32          3d     T49     t45,space2     1
;                                   texture     f32     2darray     T50     t47,space2     1
;                                   textureunorm_f32     2darray     T51     t85,space2     1
;                                   texture     f32          2d     T52     t83,space2     1
;                                   texture     f32          2d     T53     t86,space2     1
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
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = alloca [4 x i32], align 4
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = alloca [12 x float], align 4
  %81 = alloca [12 x float], align 4
  %82 = alloca [3 x float], align 4
  %83 = alloca [3 x float], align 4
  %84 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %85 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = fmul fast float %87, %76
  %89 = fmul fast float %87, %77
  %90 = fmul fast float %68, %65
  %91 = fmul fast float %69, %64
  %92 = fsub fast float %90, %91
  %93 = fmul fast float %69, %63
  %94 = fmul fast float %67, %65
  %95 = fsub fast float %93, %94
  %96 = fmul fast float %67, %64
  %97 = fmul fast float %68, %63
  %98 = fsub fast float %96, %97
  %99 = fmul fast float %92, %66
  %100 = fmul fast float %95, %66
  %101 = fmul fast float %98, %66
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 3
  %105 = fmul fast float %103, 2.000000e+00
  %106 = fmul fast float %105, %88
  %107 = fmul fast float %104, 2.000000e+00
  %108 = fmul fast float %107, %89
  %109 = fsub fast float 1.000000e+00, %106
  %110 = fsub fast float 1.000000e+00, %108
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %114 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %115 = fmul fast float %109, %112
  %116 = fmul fast float %109, %113
  %117 = fmul fast float %109, %114
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = fmul fast float %110, %119
  %123 = fmul fast float %110, %120
  %124 = fmul fast float %110, %121
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %129 = fadd fast float %122, %126
  %130 = fadd fast float %129, %115
  %131 = fadd fast float %123, %127
  %132 = fadd fast float %131, %116
  %133 = fadd fast float %124, %128
  %134 = fadd fast float %133, %117
  %135 = fmul fast float %130, %79
  %136 = fmul fast float %132, %79
  %137 = fmul fast float %134, %79
  %138 = fadd fast float %72, 5.000000e-01
  %139 = fptoui float %138 to i32
  %140 = shl i32 %139, 3
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %140, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = or i32 %140, 4
  %144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %143, i32 undef)  ; BufferLoad(srv,index,wot)
  %145 = extractvalue %dx.types.ResRet.i32 %144, 0
  %146 = and i32 %142, 8191
  %147 = lshr i32 %142, 13
  %148 = and i32 %147, 8191
  %149 = lshr i32 %142, 26
  %150 = and i32 %145, 65535
  %151 = lshr i32 %145, 16
  %152 = uitofp i32 %150 to float
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %155 = uitofp i32 %151 to float
  %156 = uitofp i32 %146 to float
  %157 = fmul fast float %154, %156
  %158 = uitofp i32 %148 to float
  %159 = fmul fast float %154, %158
  %160 = fmul fast float %154, %70
  %161 = fmul fast float %160, %152
  %162 = fmul fast float %154, %71
  %163 = fmul fast float %162, %155
  %164 = fadd fast float %161, %157
  %165 = fadd fast float %159, %163
  %166 = uitofp i32 %149 to float
  %167 = fmul fast float %88, 5.000000e-01
  %168 = fmul fast float %89, 5.000000e-01
  %169 = fptosi float %167 to i32
  %170 = fptosi float %168 to i32
  %171 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %169, i32 %170, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = lshr i32 %172, 18
  %174 = uitofp i32 %173 to float
  %175 = fmul fast float %174, 0x3F4C00EBA0000000
  %176 = call float @dx.op.unary.f32(i32 21, float %175)  ; Exp(value)
  %177 = fadd fast float %176, -1.000000e+00
  %178 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %179 = extractvalue %dx.types.Dimensions %178, 0
  %180 = sitofp i32 %179 to float
  %181 = extractvalue %dx.types.Dimensions %178, 1
  %182 = sitofp i32 %181 to float
  %183 = fcmp fast oge float %167, %180
  %184 = fcmp fast oge float %168, %182
  %185 = or i1 %183, %184
  %186 = select i1 %185, float 0x4197782600000000, float %177
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %189 = extractvalue %dx.types.CBufRet.f32 %187, 3
  %190 = fmul fast float %188, %88
  %191 = fmul fast float %189, %89
  %192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = and i32 %193, 114688
  %195 = icmp ne i32 %194, 0
  %196 = select i1 %195, float %190, float 0.000000e+00
  %197 = select i1 %195, float %191, float 0.000000e+00
  %198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %196, float %197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %199 = extractvalue %dx.types.ResRet.f32 %198, 0
  %200 = fmul fast float %199, 2.550000e+02
  %201 = fptoui float %200 to i32
  %202 = select i1 %195, i32 %201, i32 0
  %203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.i32 %203, 3
  %205 = and i32 %204, 3
  %206 = icmp ne i32 %205, 0
  %207 = and i32 %204, 4
  %208 = icmp ne i32 %207, 0
  %209 = and i1 %206, %208
  br i1 %209, label %210, label %219

; <label>:210                                     ; preds = %0
  %211 = fmul fast float %104, %89
  %212 = fmul fast float %103, %88
  %213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %55, float %212, float %211, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = fsub fast float 1.000000e+00, %214
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 0
  %218 = fcmp fast olt float %215, %217
  br label %227

; <label>:219                                     ; preds = %0
  %220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.i32 %220, 3
  %222 = and i32 %221, 3
  %223 = icmp ne i32 %222, 0
  %224 = and i32 %221, 4
  %225 = icmp eq i32 %224, 0
  %226 = and i1 %223, %225
  br label %227

; <label>:227                                     ; preds = %219, %210
  %228 = phi i1 [ %218, %210 ], [ %226, %219 ]
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %231 = fmul fast float %230, 0x3FE3C6EF40000000
  %232 = frem fast float %88, 2.560000e+02
  %233 = frem fast float %89, 2.560000e+02
  %234 = fptoui float %232 to i32
  %235 = fptoui float %233 to i32
  %236 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 0, i32 %234, i32 %235, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = fadd fast float %237, %231
  %239 = call float @dx.op.unary.f32(i32 22, float %238)  ; Frc(value)
  %240 = add i32 %62, 60
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %252 = add i32 %62, 72
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %266 = add i32 %62, 36
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = and i32 %268, 65535
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %268, 16
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = add i32 %62, 96
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 65535
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %275, 16
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = fmul fast float %277, 0x3F50624DE0000000
  %281 = fmul fast float %279, 0x3F50624DE0000000
  %282 = add i32 %62, 108
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 2
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %296, label %287

; <label>:287                                     ; preds = %227
  %288 = add i32 %62, 180
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = add i32 %290, 0
  %292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %291, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %293 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %292, %dx.types.Handle %85, float %73, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %294 = extractvalue %dx.types.ResRet.f32 %293, 3
  %295 = fmul fast float %294, %75
  br label %296

; <label>:296                                     ; preds = %287, %227
  %297 = phi float [ %75, %227 ], [ %295, %287 ]
  %298 = add i32 %62, 24
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = add i32 %62, 28
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = or i32 %303, %300
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %1015, label %306

; <label>:306                                     ; preds = %296
  %307 = add i32 %62, 92
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = lshr i32 %309, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = fmul fast float %311, 0x3F50624DE0000000
  %313 = add i32 %62, 40
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = lshr i32 %315, 16
  %317 = and i32 %316, 255
  %318 = lshr i32 %315, 24
  %319 = add i32 %62, 100
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 65535
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %321, 16
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = add i32 %62, 32
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = lshr i32 %328, 22
  %330 = shl nuw nsw i32 %329, 5
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = shl i32 %328, 4
  %333 = and i32 %332, 32752
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %328, 7
  %336 = and i32 %335, 32752
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 3
  %340 = fmul fast float %339, 1.000000e+03
  %341 = fmul fast float %280, %340
  %342 = call float @dx.op.unary.f32(i32 22, float %341)  ; Frc(value)
  %343 = fadd fast float %342, %270
  %344 = fmul fast float %281, %340
  %345 = call float @dx.op.unary.f32(i32 22, float %344)  ; Frc(value)
  %346 = fadd fast float %345, %272
  %347 = fmul fast float %312, %340
  %348 = call float @dx.op.unary.f32(i32 22, float %347)  ; Frc(value)
  %349 = fmul fast float %348, 0x401921FB60000000
  %350 = fadd fast float %349, %331
  %351 = call float @dx.op.unary.f32(i32 13, float %350)  ; Sin(value)
  %352 = call float @dx.op.unary.f32(i32 12, float %350)  ; Cos(value)
  %353 = fsub fast float -0.000000e+00, %351
  %354 = fadd fast float %73, -5.000000e-01
  %355 = fadd fast float %74, -5.000000e-01
  %356 = fmul fast float %323, %354
  %357 = fmul fast float %325, %355
  %358 = fadd fast float %356, 5.000000e-01
  %359 = fadd fast float %357, 5.000000e-01
  %360 = fmul fast float %334, %358
  %361 = fmul fast float %337, %359
  %362 = fmul fast float %352, %360
  %363 = call float @dx.op.tertiary.f32(i32 46, float %353, float %361, float %362)  ; FMad(a,b,c)
  %364 = fmul fast float %351, %360
  %365 = call float @dx.op.tertiary.f32(i32 46, float %352, float %361, float %364)  ; FMad(a,b,c)
  %366 = fadd fast float %343, %363
  %367 = fadd fast float %346, %365
  %368 = icmp ugt i32 %317, 1
  %369 = icmp ugt i32 %315, 33554431
  %370 = or i1 %369, %368
  br i1 %370, label %371, label %396

; <label>:371                                     ; preds = %306
  %372 = add i32 %62, 84
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = lshr i32 %374, 16
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = fmul fast float %339, %376
  %378 = call float @dx.op.unary.f32(i32 22, float %377)  ; Frc(value)
  %379 = mul nuw nsw i32 %317, %318
  %380 = uitofp i32 %379 to float
  %381 = fmul fast float %378, %380
  %382 = call float @dx.op.unary.f32(i32 27, float %381)  ; Round_ni(value)
  %383 = fptoui float %382 to i32
  %384 = urem i32 %383, %317
  %385 = udiv i32 %383, %318
  %386 = call float @dx.op.unary.f32(i32 22, float %366)  ; Frc(value)
  %387 = call float @dx.op.unary.f32(i32 22, float %367)  ; Frc(value)
  %388 = uitofp i32 %384 to float
  %389 = uitofp i32 %385 to float
  %390 = fadd fast float %386, %388
  %391 = fadd fast float %387, %389
  %392 = uitofp i32 %317 to float
  %393 = uitofp i32 %318 to float
  %394 = fdiv fast float %390, %392
  %395 = fdiv fast float %391, %393
  br label %396

; <label>:396                                     ; preds = %371, %306
  %397 = phi float [ %394, %371 ], [ %366, %306 ]
  %398 = phi float [ %395, %371 ], [ %367, %306 ]
  %399 = and i32 %300, 16777216
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %510, label %401

; <label>:401                                     ; preds = %396
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 0
  %404 = extractvalue %dx.types.CBufRet.f32 %402, 1
  %405 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %406 = fadd fast float %403, %135
  %407 = fadd fast float %404, %136
  %408 = fadd fast float %405, %137
  %409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.f32 %409, 0
  %411 = call float @dx.op.unary.f32(i32 7, float %410)  ; Saturate(value)
  %412 = icmp eq i32 %61, 65535
  br i1 %412, label %507, label %413

; <label>:413                                     ; preds = %401
  %414 = lshr i32 %61, 1
  %415 = shl i32 %414, 2
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %61, 1
  %419 = icmp ne i32 %418, 0
  %420 = lshr i32 %417, 16
  %421 = and i32 %417, 65535
  %422 = select i1 %419, i32 %420, i32 %421
  %423 = icmp eq i32 %422, 65535
  br i1 %423, label %503, label %424

; <label>:424                                     ; preds = %413
  %425 = mul nuw nsw i32 %422, 40
  %426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = extractvalue %dx.types.ResRet.f32 %426, 1
  %429 = extractvalue %dx.types.ResRet.f32 %426, 2
  %430 = add nuw nsw i32 %425, 12
  %431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.f32 %431, 0
  %433 = extractvalue %dx.types.ResRet.f32 %431, 1
  %434 = extractvalue %dx.types.ResRet.f32 %431, 2
  %435 = add nuw nsw i32 %425, 24
  %436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = extractvalue %dx.types.ResRet.f32 %436, 2
  %440 = add nuw nsw i32 %425, 36
  %441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = fsub fast float %406, %427
  %444 = fsub fast float %407, %428
  %445 = fsub fast float %408, %429
  %446 = fmul fast float %442, %443
  %447 = fmul fast float %442, %444
  %448 = fmul fast float %442, %445
  %449 = call float @dx.op.unary.f32(i32 27, float %446)  ; Round_ni(value)
  %450 = call float @dx.op.unary.f32(i32 27, float %447)  ; Round_ni(value)
  %451 = call float @dx.op.unary.f32(i32 27, float %448)  ; Round_ni(value)
  %452 = fadd fast float %449, 5.000000e-01
  %453 = fadd fast float %450, 5.000000e-01
  %454 = fadd fast float %451, 5.000000e-01
  %455 = fmul fast float %452, %432
  %456 = fmul fast float %453, %433
  %457 = fmul fast float %454, %434
  %458 = shl i32 %61, 2
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = add i32 %460, 0
  %462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %463 = call float @dx.op.unary.f32(i32 22, float %455)  ; Frc(value)
  %464 = call float @dx.op.unary.f32(i32 22, float %456)  ; Frc(value)
  %465 = call float @dx.op.unary.f32(i32 22, float %457)  ; Frc(value)
  %466 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %462, %dx.types.Handle %56, float %463, float %464, float %465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = extractvalue %dx.types.ResRet.f32 %466, 1
  %469 = extractvalue %dx.types.ResRet.f32 %466, 2
  %470 = fmul fast float %467, 1.023000e+03
  %471 = fmul fast float %468, 1.023000e+03
  %472 = fmul fast float %469, 1.023000e+03
  %473 = fadd fast float %470, 5.000000e-01
  %474 = fadd fast float %471, 5.000000e-01
  %475 = fadd fast float %472, 5.000000e-01
  %476 = call float @dx.op.unary.f32(i32 27, float %473)  ; Round_ni(value)
  %477 = call float @dx.op.unary.f32(i32 27, float %474)  ; Round_ni(value)
  %478 = call float @dx.op.unary.f32(i32 27, float %475)  ; Round_ni(value)
  %479 = fsub fast float %446, %449
  %480 = fsub fast float %447, %450
  %481 = fsub fast float %448, %451
  %482 = fmul fast float %479, 7.500000e-01
  %483 = fmul fast float %480, 7.500000e-01
  %484 = fmul fast float %481, 7.500000e-01
  %485 = fadd fast float %449, 1.250000e-01
  %486 = fadd fast float %485, %482
  %487 = fadd fast float %486, %476
  %488 = fadd fast float %450, 1.250000e-01
  %489 = fadd fast float %488, %483
  %490 = fadd fast float %489, %477
  %491 = fadd fast float %451, 1.250000e-01
  %492 = fadd fast float %491, %484
  %493 = fadd fast float %492, %478
  %494 = fmul fast float %487, %437
  %495 = fmul fast float %490, %438
  %496 = fmul fast float %493, %439
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = add i32 %498, 0
  %500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %499, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %500, %dx.types.Handle %54, float %494, float %495, float %496, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  br label %503

; <label>:503                                     ; preds = %424, %413
  %504 = phi float [ %502, %424 ], [ -1.000000e+00, %413 ]
  %505 = fadd fast float %504, %411
  %506 = call float @dx.op.unary.f32(i32 7, float %505)  ; Saturate(value)
  br label %507

; <label>:507                                     ; preds = %503, %401
  %508 = phi float [ %506, %503 ], [ %411, %401 ]
  %509 = fmul fast float %508, %297
  br label %510

; <label>:510                                     ; preds = %507, %396
  %511 = phi float [ %509, %507 ], [ %297, %396 ]
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = and i32 %513, 256
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %562, label %516

; <label>:516                                     ; preds = %510
  %517 = add i32 %62, 168
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = add i32 %519, 0
  %521 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %520, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %522 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %521, %dx.types.Handle %85, float %397, float %398, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %523 = extractvalue %dx.types.ResRet.f32 %522, 0
  %524 = add i32 %62, 52
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = shl i32 %526, 4
  %528 = and i32 %527, 32752
  %529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %528)  ; LegacyF16ToF32(value)
  %530 = lshr i32 %526, 7
  %531 = and i32 %530, 32752
  %532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %531)  ; LegacyF16ToF32(value)
  %533 = fsub fast float 1.000000e+00, %511
  %534 = call float @dx.op.binary.f32(i32 35, float %533, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %535 = bitcast float %511 to i32
  %536 = sitofp i32 %535 to float
  %537 = fadd fast float %536, 0xC1CFBF8940000000
  %538 = fmul fast float %532, %537
  %539 = fadd fast float %538, 0x41CFBF8940000000
  %540 = fptosi float %539 to i32
  %541 = bitcast i32 %540 to float
  %542 = bitcast float %534 to i32
  %543 = sitofp i32 %542 to float
  %544 = fadd fast float %543, 0xC1CFBF8940000000
  %545 = fmul fast float %544, %532
  %546 = fadd fast float %545, 0x41CFBF8940000000
  %547 = fptosi float %546 to i32
  %548 = bitcast i32 %547 to float
  %549 = fmul fast float %541, %529
  %550 = fmul fast float %548, %529
  %551 = fsub fast float %534, %549
  %552 = fadd fast float %550, %534
  %553 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  %554 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %555 = fsub fast float %523, %553
  %556 = fsub fast float %554, %553
  %557 = bitcast float %556 to i32
  %558 = sub nsw i32 2129859010, %557
  %559 = bitcast i32 %558 to float
  %560 = fmul fast float %559, %555
  %561 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  br label %562

; <label>:562                                     ; preds = %516, %510
  %563 = phi float [ %561, %516 ], [ %511, %510 ]
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = and i32 %565, 128
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %584, label %568

; <label>:568                                     ; preds = %562
  %569 = add i32 %62, 164
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = add i32 %571, 0
  %573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %572, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %574 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %573, %dx.types.Handle %85, float %397, float %398, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = and i32 %577, 524288
  %579 = icmp ne i32 %578, 0
  %580 = fcmp fast ogt float %575, 0x3FE0101020000000
  %581 = select i1 %580, float 1.000000e+00, float 0.000000e+00
  %582 = select i1 %579, float %581, float %575
  %583 = fmul fast float %582, %563
  br label %584

; <label>:584                                     ; preds = %568, %562
  %585 = phi float [ %583, %568 ], [ %563, %562 ]
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = and i32 %587, 16
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %788, label %590

; <label>:590                                     ; preds = %584
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = add i32 %62, 152
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = add i32 %595, 0
  %597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %596, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %598 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %597, %dx.types.Handle %84, float %397, float %398, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 0
  %600 = extractvalue %dx.types.ResRet.f32 %598, 1
  %601 = extractvalue %dx.types.ResRet.f32 %598, 2
  %602 = extractvalue %dx.types.ResRet.f32 %598, 3
  %603 = and i32 %592, 255
  %604 = uitofp i32 %603 to float
  %605 = lshr i32 %592, 8
  %606 = and i32 %605, 255
  %607 = uitofp i32 %606 to float
  %608 = fmul fast float %602, %604
  %609 = fadd fast float %608, %607
  %610 = fmul fast float %609, 0x3F70101000000000
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = and i32 %612, 512
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %623, label %615

; <label>:615                                     ; preds = %590
  %616 = add i32 %62, 172
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = add i32 %618, 0
  %620 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %619, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %621 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %620, %dx.types.Handle %85, float %397, float %398, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %622 = extractvalue %dx.types.ResRet.f32 %621, 0
  br label %623

; <label>:623                                     ; preds = %615, %590
  %624 = phi float [ %622, %615 ], [ 1.000000e+00, %590 ]
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = and i32 %626, 33554432
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %735, label %629

; <label>:629                                     ; preds = %623
  %630 = add i32 %62, 80
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = and i32 %632, 65535
  %634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %633)  ; LegacyF16ToF32(value)
  %635 = lshr i32 %632, 16
  %636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %635)  ; LegacyF16ToF32(value)
  %637 = add i32 %62, 84
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = and i32 %639, 65535
  %641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %640)  ; LegacyF16ToF32(value)
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = lshr i32 %643, 24
  %645 = uitofp i32 %644 to float
  %646 = fmul fast float %645, 0x3F70101020000000
  %647 = and i32 %643, 255
  %648 = uitofp i32 %647 to float
  %649 = fmul fast float %648, 0x3F70101020000000
  %650 = lshr i32 %643, 8
  %651 = and i32 %650, 255
  %652 = uitofp i32 %651 to float
  %653 = fmul fast float %652, 0x3F70101020000000
  %654 = lshr i32 %643, 16
  %655 = and i32 %654, 255
  %656 = uitofp i32 %655 to float
  %657 = fmul fast float %656, 0x3F70101020000000
  %658 = add i32 %62, 76
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = lshr i32 %660, 24
  %662 = uitofp i32 %661 to float
  %663 = fmul fast float %662, 0x3F70101020000000
  %664 = and i32 %660, 255
  %665 = uitofp i32 %664 to float
  %666 = fmul fast float %665, 0x3F70101020000000
  %667 = lshr i32 %660, 8
  %668 = and i32 %667, 255
  %669 = uitofp i32 %668 to float
  %670 = fmul fast float %669, 0x3F70101020000000
  %671 = lshr i32 %660, 16
  %672 = and i32 %671, 255
  %673 = uitofp i32 %672 to float
  %674 = fmul fast float %673, 0x3F70101020000000
  %675 = bitcast float %599 to i32
  %676 = ashr i32 %675, 1
  %677 = sub nsw i32 1597463174, %676
  %678 = bitcast i32 %677 to float
  %679 = fmul fast float %599, 5.000000e-01
  %680 = fmul fast float %678, %678
  %681 = fmul fast float %680, %679
  %682 = fsub fast float 1.500000e+00, %681
  %683 = fmul fast float %678, %599
  %684 = fmul fast float %683, %682
  %685 = bitcast float %600 to i32
  %686 = ashr i32 %685, 1
  %687 = sub nsw i32 1597463174, %686
  %688 = bitcast i32 %687 to float
  %689 = fmul fast float %600, 5.000000e-01
  %690 = fmul fast float %688, %688
  %691 = fmul fast float %690, %689
  %692 = fsub fast float 1.500000e+00, %691
  %693 = fmul fast float %688, %600
  %694 = fmul fast float %693, %692
  %695 = bitcast float %601 to i32
  %696 = ashr i32 %695, 1
  %697 = sub nsw i32 1597463174, %696
  %698 = bitcast i32 %697 to float
  %699 = fmul fast float %601, 5.000000e-01
  %700 = fmul fast float %698, %698
  %701 = fmul fast float %700, %699
  %702 = fsub fast float 1.500000e+00, %701
  %703 = fmul fast float %698, %601
  %704 = fmul fast float %703, %702
  %705 = fsub fast float %684, %666
  %706 = fsub fast float %694, %670
  %707 = fsub fast float %704, %674
  %708 = fmul fast float %705, %634
  %709 = fmul fast float %706, %636
  %710 = fmul fast float %707, %641
  %711 = fadd fast float %708, %649
  %712 = fadd fast float %709, %653
  %713 = fadd fast float %710, %657
  %714 = call float @dx.op.unary.f32(i32 7, float %711)  ; Saturate(value)
  %715 = call float @dx.op.unary.f32(i32 7, float %712)  ; Saturate(value)
  %716 = call float @dx.op.unary.f32(i32 7, float %713)  ; Saturate(value)
  %717 = fmul fast float %714, %714
  %718 = fmul fast float %715, %715
  %719 = fmul fast float %716, %716
  %720 = fsub fast float %717, %599
  %721 = fsub fast float %718, %600
  %722 = fsub fast float %719, %601
  %723 = fmul fast float %720, %624
  %724 = fmul fast float %721, %624
  %725 = fmul fast float %722, %624
  %726 = fadd fast float %723, %599
  %727 = fadd fast float %724, %600
  %728 = fadd fast float %725, %601
  %729 = fadd fast float %646, %610
  %730 = fsub fast float %729, %663
  %731 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  %732 = fsub fast float %731, %610
  %733 = fmul fast float %732, %624
  %734 = fadd fast float %733, %610
  br label %788

; <label>:735                                     ; preds = %623
  %736 = and i32 %626, 134217728
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %772, label %738

; <label>:738                                     ; preds = %735
  %739 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %740 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %741 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %742 = fadd fast float %739, -5.000000e-01
  %743 = fadd fast float %740, -5.000000e-01
  %744 = fadd fast float %741, -5.000000e-01
  %745 = fmul fast float %742, %624
  %746 = fmul fast float %743, %624
  %747 = fmul fast float %744, %624
  %748 = fadd fast float %745, 5.000000e-01
  %749 = fadd fast float %746, 5.000000e-01
  %750 = fadd fast float %747, 5.000000e-01
  %751 = call float @dx.op.unary.f32(i32 24, float %599)  ; Sqrt(value)
  %752 = call float @dx.op.unary.f32(i32 24, float %600)  ; Sqrt(value)
  %753 = call float @dx.op.unary.f32(i32 24, float %601)  ; Sqrt(value)
  %754 = fmul fast float %748, 2.000000e+00
  %755 = fsub fast float 1.000000e+00, %754
  %756 = fmul fast float %755, %751
  %757 = fadd fast float %756, %754
  %758 = fmul fast float %757, %751
  %759 = fmul fast float %749, 2.000000e+00
  %760 = fsub fast float 1.000000e+00, %759
  %761 = fmul fast float %760, %752
  %762 = fadd fast float %761, %759
  %763 = fmul fast float %762, %752
  %764 = fmul fast float %750, 2.000000e+00
  %765 = fsub fast float 1.000000e+00, %764
  %766 = fmul fast float %765, %753
  %767 = fadd fast float %766, %764
  %768 = fmul fast float %767, %753
  %769 = fmul fast float %758, %758
  %770 = fmul fast float %763, %763
  %771 = fmul fast float %768, %768
  br label %788

; <label>:772                                     ; preds = %735
  %773 = fmul fast float %257, %257
  %774 = fmul fast float %261, %261
  %775 = fmul fast float %265, %265
  %776 = fadd fast float %773, -1.000000e+00
  %777 = fadd fast float %774, -1.000000e+00
  %778 = fadd fast float %775, -1.000000e+00
  %779 = fmul fast float %624, %776
  %780 = fmul fast float %624, %777
  %781 = fmul fast float %624, %778
  %782 = fadd fast float %779, 1.000000e+00
  %783 = fadd fast float %780, 1.000000e+00
  %784 = fadd fast float %781, 1.000000e+00
  %785 = fmul fast float %782, %599
  %786 = fmul fast float %783, %600
  %787 = fmul fast float %784, %601
  br label %788

; <label>:788                                     ; preds = %772, %738, %629, %584
  %789 = phi float [ %734, %629 ], [ %610, %738 ], [ %610, %772 ], [ 0x3FA23C0BE0000000, %584 ]
  %790 = phi float [ %726, %629 ], [ %769, %738 ], [ %785, %772 ], [ 1.000000e+00, %584 ]
  %791 = phi float [ %727, %629 ], [ %770, %738 ], [ %786, %772 ], [ 1.000000e+00, %584 ]
  %792 = phi float [ %728, %629 ], [ %771, %738 ], [ %787, %772 ], [ 1.000000e+00, %584 ]
  %793 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.i32 %793, 1
  %795 = and i32 %794, 1
  %796 = icmp ne i32 %795, 0
  %797 = add i32 %62, 116
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %797, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = and i32 %799, 32
  %801 = icmp ne i32 %800, 0
  %802 = and i1 %796, %801
  %803 = select i1 %802, float 1.000000e+00, float %790
  %804 = select i1 %802, float 0x3FD3333340000000, float %791
  %805 = select i1 %802, float 0x3FD3333340000000, float %792
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = and i32 %807, 32
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %950, label %810

; <label>:810                                     ; preds = %788
  %811 = add i32 %62, 44
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = add i32 %62, 156
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = add i32 %816, 0
  %818 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %817, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %819 = add i32 %62, 120
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = extractvalue %dx.types.ResRet.i32 %820, 1
  %823 = extractvalue %dx.types.ResRet.i32 %820, 2
  %824 = extractvalue %dx.types.ResRet.i32 %820, 3
  %825 = bitcast i32 %822 to float
  %826 = bitcast i32 %823 to float
  %827 = bitcast i32 %824 to float
  %828 = add i32 %62, 136
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = extractvalue %dx.types.ResRet.i32 %829, 1
  %832 = extractvalue %dx.types.ResRet.i32 %829, 2
  %833 = extractvalue %dx.types.ResRet.i32 %829, 3
  %834 = bitcast i32 %831 to float
  %835 = bitcast i32 %832 to float
  %836 = bitcast i32 %833 to float
  %837 = fmul fast float %825, %397
  %838 = fmul fast float %825, %398
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 3
  %841 = fmul fast float %840, %826
  %842 = fmul fast float %840, %827
  %843 = fadd fast float %841, %837
  %844 = fadd fast float %842, %838
  %845 = fmul fast float %834, %397
  %846 = fmul fast float %834, %398
  %847 = fmul fast float %840, %835
  %848 = fmul fast float %840, %836
  %849 = fadd fast float %847, %845
  %850 = fadd fast float %848, %846
  %851 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %818, i32 0)  ; GetDimensions(handle,mipLevel)
  %852 = extractvalue %dx.types.Dimensions %851, 3
  %853 = sitofp i32 %852 to float
  %854 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %818, %dx.types.Handle %84, float %843, float %844, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %855 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %818, %dx.types.Handle %84, float %849, float %850, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %856 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %818, %dx.types.Handle %84, float %843, float %844, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %857 = extractvalue %dx.types.ResRet.f32 %856, 0
  %858 = extractvalue %dx.types.ResRet.f32 %856, 1
  %859 = extractvalue %dx.types.ResRet.f32 %856, 2
  %860 = extractvalue %dx.types.ResRet.f32 %856, 3
  %861 = and i32 %813, 255
  %862 = uitofp i32 %861 to float
  %863 = lshr i32 %813, 8
  %864 = and i32 %863, 255
  %865 = uitofp i32 %864 to float
  %866 = lshr i32 %813, 16
  %867 = and i32 %866, 255
  %868 = uitofp i32 %867 to float
  %869 = fmul fast float %868, 0x3F70101000000000
  %870 = fmul fast float %857, %862
  %871 = fadd fast float %870, %865
  %872 = fadd fast float %858, -5.000000e-01
  %873 = fadd fast float %860, -5.000000e-01
  %874 = fmul fast float %872, %869
  %875 = fmul fast float %873, %869
  %876 = fadd fast float %874, 5.000000e-01
  %877 = fadd fast float %875, 5.000000e-01
  %878 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %818, %dx.types.Handle %84, float %849, float %850, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %879 = extractvalue %dx.types.ResRet.f32 %878, 0
  %880 = extractvalue %dx.types.ResRet.f32 %878, 1
  %881 = extractvalue %dx.types.ResRet.f32 %878, 2
  %882 = extractvalue %dx.types.ResRet.f32 %878, 3
  %883 = fmul fast float %879, %862
  %884 = fadd fast float %883, %865
  %885 = fadd fast float %880, -5.000000e-01
  %886 = fadd fast float %882, -5.000000e-01
  %887 = fmul fast float %885, %869
  %888 = fmul fast float %886, %869
  %889 = fadd fast float %887, 5.000000e-01
  %890 = fadd fast float %888, 5.000000e-01
  %891 = fmul fast float %876, 2.000000e+00
  %892 = fadd fast float %891, -1.000000e+00
  %893 = fmul fast float %877, 2.000000e+00
  %894 = fadd fast float %893, -1.000000e+00
  %895 = fadd fast float %892, %894
  %896 = fmul fast float %895, 5.000000e-01
  %897 = fsub fast float %892, %894
  %898 = fmul fast float %897, 5.000000e-01
  %899 = call float @dx.op.unary.f32(i32 6, float %896)  ; FAbs(value)
  %900 = fsub fast float 1.000000e+00, %899
  %901 = call float @dx.op.unary.f32(i32 6, float %898)  ; FAbs(value)
  %902 = fsub fast float %900, %901
  %903 = call float @dx.op.dot3.f32(i32 55, float %896, float %898, float %902, float %896, float %898, float %902)  ; Dot3(ax,ay,az,bx,by,bz)
  %904 = call float @dx.op.unary.f32(i32 25, float %903)  ; Rsqrt(value)
  %905 = fmul fast float %889, 2.000000e+00
  %906 = fadd fast float %905, -1.000000e+00
  %907 = fmul fast float %890, 2.000000e+00
  %908 = fadd fast float %907, -1.000000e+00
  %909 = fadd fast float %906, %908
  %910 = fmul fast float %909, 5.000000e-01
  %911 = fsub fast float %906, %908
  %912 = fmul fast float %911, 5.000000e-01
  %913 = call float @dx.op.unary.f32(i32 6, float %910)  ; FAbs(value)
  %914 = fsub fast float 1.000000e+00, %913
  %915 = call float @dx.op.unary.f32(i32 6, float %912)  ; FAbs(value)
  %916 = fsub fast float %914, %915
  %917 = call float @dx.op.dot3.f32(i32 55, float %910, float %912, float %916, float %910, float %912, float %916)  ; Dot3(ax,ay,az,bx,by,bz)
  %918 = call float @dx.op.unary.f32(i32 25, float %917)  ; Rsqrt(value)
  %919 = fadd fast float %853, -1.000000e+00
  %920 = fsub fast float %919, %854
  %921 = fmul fast float %920, 5.000000e-01
  %922 = call float @dx.op.unary.f32(i32 7, float %921)  ; Saturate(value)
  %923 = fsub fast float %919, %855
  %924 = fmul fast float %923, 5.000000e-01
  %925 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  %926 = bitcast i32 %821 to float
  %927 = bitcast i32 %830 to float
  %928 = fmul fast float %896, %926
  %929 = fmul fast float %928, %904
  %930 = fmul fast float %929, %922
  %931 = fmul fast float %898, %926
  %932 = fmul fast float %931, %904
  %933 = fmul fast float %932, %922
  %934 = fmul fast float %918, %927
  %935 = fmul fast float %934, %910
  %936 = fmul fast float %935, %925
  %937 = fmul fast float %934, %912
  %938 = fmul fast float %937, %925
  %939 = fadd fast float %936, %930
  %940 = fadd fast float %938, %933
  %941 = fmul fast float %859, %926
  %942 = fmul fast float %881, %927
  %943 = fadd fast float %942, %941
  %944 = fmul fast float %871, %926
  %945 = fmul fast float %884, %927
  %946 = fadd fast float %945, %944
  %947 = fmul fast float %946, 0x3F70101000000000
  %948 = call float @dx.op.dot2.f32(i32 54, float %939, float %940, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %949 = call float @dx.op.dot2.f32(i32 54, float %939, float %940, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %950

; <label>:950                                     ; preds = %810, %788
  %951 = phi float [ %947, %810 ], [ 0x3FD6666660000000, %788 ]
  %952 = phi float [ %948, %810 ], [ 0.000000e+00, %788 ]
  %953 = phi float [ %949, %810 ], [ 0.000000e+00, %788 ]
  %954 = phi float [ %943, %810 ], [ 1.000000e+00, %788 ]
  %955 = add i32 %62, 64
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = lshr i32 %957, 22
  %959 = shl nuw nsw i32 %958, 5
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = and i32 %962, 64
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %998, label %965

; <label>:965                                     ; preds = %950
  %966 = add i32 %62, 160
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = add i32 %968, 0
  %970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %969, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 131072
  %974 = icmp eq i32 %973, 0
  %975 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %970, %dx.types.Handle %84, float %397, float %398, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %976 = extractvalue %dx.types.ResRet.f32 %975, 0
  %977 = extractvalue %dx.types.ResRet.f32 %975, 1
  %978 = extractvalue %dx.types.ResRet.f32 %975, 2
  %979 = fmul fast float %976, %245
  %980 = fmul fast float %977, %248
  %981 = fmul fast float %978, %251
  br i1 %974, label %988, label %982

; <label>:982                                     ; preds = %965
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 0
  %985 = fmul fast float %984, %979
  %986 = fmul fast float %984, %980
  %987 = fmul fast float %984, %981
  br label %988

; <label>:988                                     ; preds = %982, %965
  %989 = phi float [ %985, %982 ], [ %979, %965 ]
  %990 = phi float [ %986, %982 ], [ %980, %965 ]
  %991 = phi float [ %987, %982 ], [ %981, %965 ]
  %992 = fmul fast float %989, %960
  %993 = select i1 %228, float %992, float %989
  %994 = call float @dx.op.dot3.f32(i32 55, float %993, float %990, float %991, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %995 = select i1 %228, float 0.000000e+00, float %989
  %996 = select i1 %228, float %994, float %990
  %997 = select i1 %228, float 0.000000e+00, float %991
  br label %998

; <label>:998                                     ; preds = %988, %950
  %999 = phi float [ %995, %988 ], [ 0.000000e+00, %950 ]
  %1000 = phi float [ %996, %988 ], [ 0.000000e+00, %950 ]
  %1001 = phi float [ %997, %988 ], [ 0.000000e+00, %950 ]
  %1002 = add i32 %62, 48
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = and i32 %1004, 255
  %1006 = uitofp i32 %1005 to float
  %1007 = lshr i32 %1004, 8
  %1008 = and i32 %1007, 255
  %1009 = uitofp i32 %1008 to float
  %1010 = call float @dx.op.dot3.f32(i32 55, float %803, float %804, float %805, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1011 = fmul fast float %1009, %1010
  %1012 = fadd fast float %1011, %1006
  %1013 = fmul fast float %1012, 0x3F70101020000000
  %1014 = call float @dx.op.unary.f32(i32 7, float %1013)  ; Saturate(value)
  br label %1015

; <label>:1015                                    ; preds = %998, %296
  %1016 = phi float [ 0.000000e+00, %296 ], [ %952, %998 ]
  %1017 = phi float [ 0.000000e+00, %296 ], [ %953, %998 ]
  %1018 = phi float [ 0.000000e+00, %296 ], [ %803, %998 ]
  %1019 = phi float [ 0.000000e+00, %296 ], [ %804, %998 ]
  %1020 = phi float [ 0.000000e+00, %296 ], [ %805, %998 ]
  %1021 = phi float [ 0.000000e+00, %296 ], [ %999, %998 ]
  %1022 = phi float [ 0.000000e+00, %296 ], [ %1000, %998 ]
  %1023 = phi float [ 0.000000e+00, %296 ], [ %1001, %998 ]
  %1024 = phi float [ 0.000000e+00, %296 ], [ %789, %998 ]
  %1025 = phi float [ 0.000000e+00, %296 ], [ %585, %998 ]
  %1026 = phi float [ 0.000000e+00, %296 ], [ %951, %998 ]
  %1027 = phi float [ 0.000000e+00, %296 ], [ %954, %998 ]
  %1028 = phi float [ 0.000000e+00, %296 ], [ %1014, %998 ]
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = call float @dx.op.dot2.f32(i32 54, float %1016, float %1017, float %1016, float %1017)  ; Dot2(ax,ay,bx,by)
  %1032 = fmul fast float %1031, 0x3FE3333340000000
  %1033 = fsub fast float 1.000000e+00, %1032
  %1034 = call float @dx.op.dot3.f32(i32 55, float %1016, float %1017, float %1033, float %1016, float %1017, float %1033)  ; Dot3(ax,ay,az,bx,by,bz)
  %1035 = call float @dx.op.unary.f32(i32 25, float %1034)  ; Rsqrt(value)
  %1036 = fmul fast float %1035, %1016
  %1037 = fmul fast float %1035, %1017
  %1038 = fmul fast float %1033, %1035
  %1039 = fmul fast float %1038, %67
  %1040 = fmul fast float %1038, %68
  %1041 = fmul fast float %1038, %69
  %1042 = fmul fast float %1036, %63
  %1043 = fmul fast float %1036, %64
  %1044 = fmul fast float %1036, %65
  %1045 = fadd fast float %1039, %1042
  %1046 = fadd fast float %1040, %1043
  %1047 = fadd fast float %1041, %1044
  %1048 = fmul fast float %1037, %99
  %1049 = fmul fast float %1037, %100
  %1050 = fmul fast float %1037, %101
  %1051 = fadd fast float %1045, %1048
  %1052 = fadd fast float %1046, %1049
  %1053 = fadd fast float %1047, %1050
  %1054 = call float @dx.op.dot3.f32(i32 55, float %1051, float %1052, float %1053, float %1051, float %1052, float %1053)  ; Dot3(ax,ay,az,bx,by,bz)
  %1055 = call float @dx.op.unary.f32(i32 25, float %1054)  ; Rsqrt(value)
  %1056 = fmul fast float %1051, %1055
  %1057 = fmul fast float %1052, %1055
  %1058 = fmul fast float %1053, %1055
  %1059 = fadd fast float %1024, 0xBFB99999A0000000
  %1060 = call float @dx.op.unary.f32(i32 7, float %1059)  ; Saturate(value)
  %1061 = fmul fast float %1060, 0x3FF1C71C80000000
  %1062 = call float @dx.op.binary.f32(i32 36, float %1024, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1063 = fsub fast float 1.000000e+00, %1061
  %1064 = call float @dx.op.unary.f32(i32 7, float %1063)  ; Saturate(value)
  %1065 = fmul fast float %1064, %1018
  %1066 = fmul fast float %1064, %1019
  %1067 = fmul fast float %1064, %1020
  %1068 = call float @dx.op.unary.f32(i32 7, float %1065)  ; Saturate(value)
  %1069 = call float @dx.op.unary.f32(i32 7, float %1066)  ; Saturate(value)
  %1070 = call float @dx.op.unary.f32(i32 7, float %1067)  ; Saturate(value)
  %1071 = fmul fast float %1061, %1018
  %1072 = fmul fast float %1061, %1019
  %1073 = fmul fast float %1061, %1020
  %1074 = fadd fast float %1071, %1062
  %1075 = fadd fast float %1072, %1062
  %1076 = fadd fast float %1073, %1062
  %1077 = call float @dx.op.unary.f32(i32 7, float %1074)  ; Saturate(value)
  %1078 = call float @dx.op.unary.f32(i32 7, float %1075)  ; Saturate(value)
  %1079 = call float @dx.op.unary.f32(i32 7, float %1076)  ; Saturate(value)
  %1080 = call float @dx.op.unary.f32(i32 7, float %1026)  ; Saturate(value)
  %1081 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1082 = extractvalue %dx.types.CBufRet.i32 %1081, 3
  %1083 = and i32 %1082, 8
  %1084 = icmp ne i32 %1083, 0
  %1085 = call float @dx.op.binary.f32(i32 35, float %1068, float %1018)  ; FMax(a,b)
  %1086 = call float @dx.op.binary.f32(i32 35, float %1069, float %1018)  ; FMax(a,b)
  %1087 = call float @dx.op.binary.f32(i32 35, float %1070, float %1018)  ; FMax(a,b)
  %1088 = call float @dx.op.dot3.f32(i32 55, float %1068, float %1069, float %1070, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1089 = select i1 %228, float %1018, float %1068
  %1090 = select i1 %228, float %1088, float %1069
  %1091 = select i1 %228, float 1.000000e+00, float %1070
  %1092 = select i1 %1084, float %1085, float %1089
  %1093 = select i1 %1084, float %1086, float %1090
  %1094 = select i1 %1084, float %1087, float %1091
  %1095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1096 = extractvalue %dx.types.CBufRet.f32 %1095, 0
  %1097 = extractvalue %dx.types.CBufRet.f32 %1095, 1
  %1098 = extractvalue %dx.types.CBufRet.f32 %1095, 2
  %1099 = fadd fast float %1096, %135
  %1100 = fadd fast float %1097, %136
  %1101 = fadd fast float %1098, %137
  %1102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1103 = extractvalue %dx.types.CBufRet.f32 %1102, 0
  %1104 = extractvalue %dx.types.CBufRet.f32 %1102, 1
  %1105 = fsub fast float %1099, %1103
  %1106 = fsub fast float %1100, %1104
  %1107 = fmul fast float %1105, %1105
  %1108 = fmul fast float %1106, %1106
  %1109 = fadd fast float %1107, %1108
  %1110 = call float @dx.op.unary.f32(i32 24, float %1109)  ; Sqrt(value)
  %1111 = extractvalue %dx.types.CBufRet.f32 %1102, 2
  %1112 = fcmp fast olt float %1110, %1111
  br i1 %1112, label %1113, label %1180

; <label>:1113                                    ; preds = %1015
  %1114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1115 = extractvalue %dx.types.CBufRet.f32 %1114, 0
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 0
  %1118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1118, 0
  %1120 = extractvalue %dx.types.CBufRet.f32 %1114, 1
  %1121 = extractvalue %dx.types.CBufRet.f32 %1116, 1
  %1122 = extractvalue %dx.types.CBufRet.f32 %1118, 1
  %1123 = extractvalue %dx.types.CBufRet.f32 %1114, 3
  %1124 = extractvalue %dx.types.CBufRet.f32 %1116, 3
  %1125 = extractvalue %dx.types.CBufRet.f32 %1118, 3
  %1126 = fadd fast float %1123, %1099
  %1127 = fadd fast float %1124, %1100
  %1128 = fadd fast float %1125, %1101
  %1129 = fmul fast float %1126, %1115
  %1130 = call float @dx.op.tertiary.f32(i32 46, float %1127, float %1117, float %1129)  ; FMad(a,b,c)
  %1131 = call float @dx.op.tertiary.f32(i32 46, float %1128, float %1119, float %1130)  ; FMad(a,b,c)
  %1132 = fmul fast float %1126, %1120
  %1133 = call float @dx.op.tertiary.f32(i32 46, float %1127, float %1121, float %1132)  ; FMad(a,b,c)
  %1134 = call float @dx.op.tertiary.f32(i32 46, float %1128, float %1122, float %1133)  ; FMad(a,b,c)
  %1135 = fsub fast float %1131, %1123
  %1136 = fsub fast float %1134, %1124
  %1137 = fsub fast float %1135, %1103
  %1138 = fadd fast float %1137, %1111
  %1139 = fsub fast float %1136, %1104
  %1140 = fadd fast float %1139, %1111
  %1141 = extractvalue %dx.types.CBufRet.f32 %1102, 3
  %1142 = fmul fast float %1138, %1141
  %1143 = fmul fast float %1140, %1141
  %1144 = call float @dx.op.unary.f32(i32 7, float %1142)  ; Saturate(value)
  %1145 = call float @dx.op.unary.f32(i32 7, float %1143)  ; Saturate(value)
  %1146 = fsub fast float 1.000000e+00, %1144
  %1147 = fsub fast float 1.000000e+00, %1145
  %1148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %55, float %1146, float %1147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1149 = extractvalue %dx.types.ResRet.f32 %1148, 0
  %1150 = fcmp fast ugt float %1149, 0.000000e+00
  br i1 %1150, label %1151, label %1454

; <label>:1151                                    ; preds = %1113
  %1152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.f32 %1152, 2
  %1154 = fmul fast float %1153, %1149
  %1155 = extractvalue %dx.types.CBufRet.f32 %1152, 3
  %1156 = fadd fast float %1155, %1154
  %1157 = extractvalue %dx.types.CBufRet.f32 %1118, 2
  %1158 = fadd fast float %1156, %1125
  %1159 = fmul fast float %1131, %1119
  %1160 = call float @dx.op.tertiary.f32(i32 46, float %1134, float %1122, float %1159)  ; FMad(a,b,c)
  %1161 = call float @dx.op.tertiary.f32(i32 46, float %1158, float %1157, float %1160)  ; FMad(a,b,c)
  %1162 = fsub fast float %1161, %1125
  %1163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.f32 %1163, 2
  %1165 = fsub fast float %1162, %1164
  %1166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %55, float %1146, float %1147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1167 = extractvalue %dx.types.ResRet.f32 %1166, 0
  %1168 = extractvalue %dx.types.ResRet.f32 %1166, 1
  %1169 = extractvalue %dx.types.ResRet.f32 %1166, 2
  %1170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %55, float %1146, float %1147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.ResRet.f32 %1170, 1
  %1173 = extractvalue %dx.types.ResRet.f32 %1170, 2
  %1174 = fadd fast float %1171, %1167
  %1175 = fmul fast float %1174, 0x3F847AE140000000
  %1176 = fadd fast float %1172, %1168
  %1177 = fmul fast float %1176, 0x3F847AE140000000
  %1178 = fadd fast float %1173, %1169
  %1179 = fmul fast float %1178, 0x3F847AE140000000
  br label %1454

; <label>:1180                                    ; preds = %1015
  %1181 = and i32 %202, 1
  %1182 = icmp eq i32 %1181, 0
  br i1 %1182, label %1454, label %1183

; <label>:1183                                    ; preds = %1180
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 0
  %1186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1186, 0
  %1188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1189 = extractvalue %dx.types.CBufRet.f32 %1188, 0
  %1190 = extractvalue %dx.types.CBufRet.f32 %1184, 1
  %1191 = extractvalue %dx.types.CBufRet.f32 %1186, 1
  %1192 = extractvalue %dx.types.CBufRet.f32 %1188, 1
  %1193 = extractvalue %dx.types.CBufRet.f32 %1184, 3
  %1194 = extractvalue %dx.types.CBufRet.f32 %1186, 3
  %1195 = extractvalue %dx.types.CBufRet.f32 %1188, 3
  %1196 = fadd fast float %1193, %1099
  %1197 = fadd fast float %1194, %1100
  %1198 = fadd fast float %1195, %1101
  %1199 = fmul fast float %1196, %1185
  %1200 = call float @dx.op.tertiary.f32(i32 46, float %1197, float %1187, float %1199)  ; FMad(a,b,c)
  %1201 = call float @dx.op.tertiary.f32(i32 46, float %1198, float %1189, float %1200)  ; FMad(a,b,c)
  %1202 = fmul fast float %1196, %1190
  %1203 = call float @dx.op.tertiary.f32(i32 46, float %1197, float %1191, float %1202)  ; FMad(a,b,c)
  %1204 = call float @dx.op.tertiary.f32(i32 46, float %1198, float %1192, float %1203)  ; FMad(a,b,c)
  %1205 = fsub fast float %1201, %1193
  %1206 = fsub fast float %1204, %1194
  %1207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.f32 %1207, 0
  %1209 = extractvalue %dx.types.CBufRet.f32 %1207, 1
  %1210 = extractvalue %dx.types.CBufRet.f32 %1207, 2
  %1211 = extractvalue %dx.types.CBufRet.f32 %1207, 3
  %1212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1213 = extractvalue %dx.types.CBufRet.f32 %1212, 3
  %1214 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1215 = extractvalue %dx.types.CBufRet.i32 %1214, 0
  %1216 = extractvalue %dx.types.CBufRet.i32 %1214, 1
  %1217 = udiv i32 %1216, %1215
  %1218 = fsub fast float %1205, %1208
  %1219 = fsub fast float %1206, %1209
  %1220 = call float @dx.op.binary.f32(i32 35, float %1218, float 0.000000e+00)  ; FMax(a,b)
  %1221 = call float @dx.op.binary.f32(i32 35, float %1219, float 0.000000e+00)  ; FMax(a,b)
  %1222 = call float @dx.op.binary.f32(i32 36, float %1220, float %1210)  ; FMin(a,b)
  %1223 = call float @dx.op.binary.f32(i32 36, float %1221, float %1211)  ; FMin(a,b)
  %1224 = add i32 %1215, -1
  %1225 = add i32 %1217, -1
  %1226 = fmul fast float %1222, %1213
  %1227 = fmul fast float %1223, %1213
  %1228 = fptoui float %1226 to i32
  %1229 = fptoui float %1227 to i32
  %1230 = call i32 @dx.op.binary.i32(i32 40, i32 %1228, i32 %1224)  ; UMin(a,b)
  %1231 = call i32 @dx.op.binary.i32(i32 40, i32 %1229, i32 %1225)  ; UMin(a,b)
  %1232 = mul i32 %1231, %1215
  %1233 = add i32 %1232, %1230
  %1234 = shl i32 %1233, 2
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = icmp eq i32 %1236, -1
  br i1 %1237, label %1454, label %1238

; <label>:1238                                    ; preds = %1183
  %1239 = mul i32 %1236, 148
  %1240 = add i32 %1239, 4
  %1241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 0
  %1243 = add i32 %1239, 8
  %1244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  %1246 = add i32 %1239, 36
  %1247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1246, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 0
  %1249 = add i32 %1239, 60
  %1250 = add i32 %1239, 92
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = add i32 %1239, 116
  %1254 = fsub fast float %1205, %1242
  %1255 = fsub fast float %1206, %1245
  %1256 = fmul fast float %1213, %1254
  %1257 = fmul fast float %1213, %1255
  %1258 = call float @dx.op.unary.f32(i32 7, float %1256)  ; Saturate(value)
  %1259 = call float @dx.op.unary.f32(i32 7, float %1257)  ; Saturate(value)
  %1260 = fsub fast float 1.000000e+00, %1259
  %1261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1262 = extractvalue %dx.types.CBufRet.f32 %1261, 2
  %1263 = call float @dx.op.unary.f32(i32 83, float %1258)  ; DerivCoarseX(value)
  %1264 = call float @dx.op.unary.f32(i32 83, float %1260)  ; DerivCoarseX(value)
  %1265 = call float @dx.op.unary.f32(i32 84, float %1258)  ; DerivCoarseY(value)
  %1266 = call float @dx.op.unary.f32(i32 84, float %1260)  ; DerivCoarseY(value)
  %1267 = fmul fast float %1263, %1262
  %1268 = fmul fast float %1264, %1262
  %1269 = fmul fast float %1265, %1262
  %1270 = fmul fast float %1266, %1262
  %1271 = call float @dx.op.dot2.f32(i32 54, float %1269, float %1270, float %1269, float %1270)  ; Dot2(ax,ay,bx,by)
  %1272 = call float @dx.op.dot2.f32(i32 54, float %1267, float %1268, float %1267, float %1268)  ; Dot2(ax,ay,bx,by)
  %1273 = call float @dx.op.binary.f32(i32 35, float %1272, float %1271)  ; FMax(a,b)
  %1274 = call float @dx.op.unary.f32(i32 23, float %1273)  ; Log(value)
  %1275 = fmul fast float %1274, 5.000000e-01
  %1276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1277 = extractvalue %dx.types.CBufRet.f32 %1276, 1
  %1278 = fadd fast float %1277, %1275
  %1279 = call float @dx.op.binary.f32(i32 35, float %1278, float 0.000000e+00)  ; FMax(a,b)
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 3
  %1282 = fadd fast float %1281, %1279
  %1283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1284 = extractvalue %dx.types.CBufRet.f32 %1283, 3
  %1285 = fadd fast float %1282, %1284
  %1286 = add i32 %1252, 0
  %1287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1286, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1288 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1287, i32 0)  ; GetDimensions(handle,mipLevel)
  %1289 = extractvalue %dx.types.Dimensions %1288, 0
  %1290 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1289)  ; FirstbitLo(value)
  %1291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1292 = extractvalue %dx.types.CBufRet.i32 %1291, 1
  %1293 = sub nsw i32 %1292, %1290
  %1294 = sitofp i32 %1293 to float
  %1295 = fsub fast float %1285, %1294
  %1296 = call float @dx.op.binary.f32(i32 35, float %1295, float 0.000000e+00)  ; FMax(a,b)
  %1297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1287, %dx.types.Handle %53, float %1258, float %1260, float %1248, float undef, i32 0, i32 0, i32 undef, float %1296)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1298 = extractvalue %dx.types.ResRet.f32 %1297, 0
  %1299 = fcmp ule float %1298, 0x3FE0101020000000
  %1300 = extractvalue %dx.types.CBufRet.i32 %1291, 0
  %1301 = and i32 %1300, 128
  %1302 = icmp ne i32 %1301, 0
  %1303 = and i1 %1299, %1302
  br i1 %1303, label %1454, label %1304

; <label>:1304                                    ; preds = %1238
  %1305 = add i32 %1239, 20
  %1306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1305, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.f32 %1306, 0
  %1308 = add i32 %1239, 24
  %1309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.f32 %1309, 0
  %1311 = add i32 %1239, 40
  %1312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.f32 %1312, 0
  %1314 = add i32 %1239, 96
  %1315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1314, i32 undef)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.i32 %1315, 0
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 2
  %1319 = fmul fast float %1318, %1258
  %1320 = fmul fast float %1318, %1260
  %1321 = extractvalue %dx.types.CBufRet.f32 %1317, 3
  %1322 = fadd fast float %1319, %1321
  %1323 = fadd fast float %1320, %1321
  %1324 = add i32 %1316, 0
  %1325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1324, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1326 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1325, i32 0)  ; GetDimensions(handle,mipLevel)
  %1327 = extractvalue %dx.types.Dimensions %1326, 0
  %1328 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1327)  ; FirstbitLo(value)
  %1329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.i32 %1329, 1
  %1331 = sub nsw i32 %1330, %1328
  %1332 = sitofp i32 %1331 to float
  %1333 = fsub fast float %1282, %1332
  %1334 = call float @dx.op.binary.f32(i32 35, float %1333, float 0.000000e+00)  ; FMax(a,b)
  %1335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1325, %dx.types.Handle %53, float %1322, float %1323, float %1313, float undef, i32 0, i32 0, i32 undef, float %1334)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1336 = extractvalue %dx.types.ResRet.f32 %1335, 0
  %1337 = fmul fast float %1336, %1307
  %1338 = fadd fast float %1337, %1310
  %1339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1339, 0
  %1341 = extractvalue %dx.types.CBufRet.f32 %1339, 1
  %1342 = extractvalue %dx.types.CBufRet.f32 %1339, 2
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 3
  %1345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1346 = extractvalue %dx.types.CBufRet.f32 %1345, 3
  %1347 = extractvalue %dx.types.CBufRet.f32 %1339, 3
  %1348 = fadd fast float %1344, %1205
  %1349 = fadd fast float %1346, %1206
  %1350 = fadd fast float %1338, %1347
  %1351 = fmul fast float %1348, %1340
  %1352 = call float @dx.op.tertiary.f32(i32 46, float %1349, float %1341, float %1351)  ; FMad(a,b,c)
  %1353 = call float @dx.op.tertiary.f32(i32 46, float %1350, float %1342, float %1352)  ; FMad(a,b,c)
  %1354 = fsub fast float %1353, %1347
  %1355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1356 = extractvalue %dx.types.CBufRet.f32 %1355, 2
  %1357 = fsub fast float %1354, %1356
  %1358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1359 = extractvalue %dx.types.CBufRet.i32 %1358, 0
  %1360 = call i32 @dx.op.binary.i32(i32 40, i32 %1236, i32 %1359)  ; UMin(a,b)
  %1361 = mul i32 %1360, 36
  %1362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1361, i32 undef)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.i32 %1362, 0
  %1364 = add i32 %1361, 4
  %1365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1366 = extractvalue %dx.types.CBufRet.f32 %1365, 0
  %1367 = fmul fast float %1366, %1258
  %1368 = fmul fast float %1366, %1260
  %1369 = extractvalue %dx.types.CBufRet.f32 %1365, 1
  %1370 = fadd fast float %1367, %1369
  %1371 = fadd fast float %1368, %1369
  %1372 = icmp eq i32 %1363, 0
  br i1 %1372, label %1441, label %1373

; <label>:1373                                    ; preds = %1304
  br label %1374

; <label>:1374                                    ; preds = %1431, %1373
  %1375 = phi float [ %1432, %1431 ], [ 0.000000e+00, %1373 ]
  %1376 = phi float [ %1433, %1431 ], [ 0.000000e+00, %1373 ]
  %1377 = phi float [ %1434, %1431 ], [ 0.000000e+00, %1373 ]
  %1378 = phi float [ %1435, %1431 ], [ 0.000000e+00, %1373 ]
  %1379 = phi float [ %1436, %1431 ], [ 0.000000e+00, %1373 ]
  %1380 = phi float [ %1437, %1431 ], [ 0.000000e+00, %1373 ]
  %1381 = phi i32 [ %1438, %1431 ], [ 0, %1373 ]
  %1382 = shl i32 %1381, 2
  %1383 = add i32 %1249, %1382
  %1384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.f32 %1384, 0
  %1386 = add i32 %1253, %1382
  %1387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1386, i32 undef)  ; BufferLoad(srv,index,wot)
  %1388 = extractvalue %dx.types.ResRet.i32 %1387, 0
  %1389 = add i32 %1388, 0
  %1390 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1389, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1391 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1390, i32 0)  ; GetDimensions(handle,mipLevel)
  %1392 = extractvalue %dx.types.Dimensions %1391, 0
  %1393 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1392)  ; FirstbitLo(value)
  %1394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1395 = extractvalue %dx.types.CBufRet.i32 %1394, 1
  %1396 = sub nsw i32 %1395, %1393
  %1397 = sitofp i32 %1396 to float
  %1398 = fsub fast float %1282, %1397
  %1399 = call float @dx.op.binary.f32(i32 35, float %1398, float 0.000000e+00)  ; FMax(a,b)
  %1400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1390, %dx.types.Handle %53, float %1370, float %1371, float %1385, float undef, i32 0, i32 0, i32 undef, float %1399)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1401 = extractvalue %dx.types.ResRet.f32 %1400, 0
  %1402 = fcmp fast ogt float %1401, 0.000000e+00
  br i1 %1402, label %1403, label %1431

; <label>:1403                                    ; preds = %1374
  %1404 = add i32 %1364, %1382
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1404, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = and i32 %1406, 32767
  %1408 = mul nuw nsw i32 %1407, 928
  %1409 = add nuw nsw i32 %1408, 48
  %1410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1409, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.f32 %1410, 0
  %1412 = extractvalue %dx.types.ResRet.f32 %1410, 1
  %1413 = extractvalue %dx.types.ResRet.f32 %1410, 2
  %1414 = add nuw nsw i32 %1408, 60
  %1415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1414, i32 undef)  ; BufferLoad(srv,index,wot)
  %1416 = extractvalue %dx.types.ResRet.f32 %1415, 0
  %1417 = extractvalue %dx.types.ResRet.f32 %1415, 1
  %1418 = extractvalue %dx.types.ResRet.f32 %1415, 2
  %1419 = fmul fast float %1411, %1401
  %1420 = fmul fast float %1412, %1401
  %1421 = fmul fast float %1413, %1401
  %1422 = fadd fast float %1419, %1375
  %1423 = fadd fast float %1420, %1376
  %1424 = fadd fast float %1421, %1377
  %1425 = fmul fast float %1416, %1401
  %1426 = fmul fast float %1417, %1401
  %1427 = fmul fast float %1418, %1401
  %1428 = fadd fast float %1425, %1378
  %1429 = fadd fast float %1426, %1379
  %1430 = fadd fast float %1427, %1380
  br label %1431

; <label>:1431                                    ; preds = %1403, %1374
  %1432 = phi float [ %1422, %1403 ], [ %1375, %1374 ]
  %1433 = phi float [ %1423, %1403 ], [ %1376, %1374 ]
  %1434 = phi float [ %1424, %1403 ], [ %1377, %1374 ]
  %1435 = phi float [ %1428, %1403 ], [ %1378, %1374 ]
  %1436 = phi float [ %1429, %1403 ], [ %1379, %1374 ]
  %1437 = phi float [ %1430, %1403 ], [ %1380, %1374 ]
  %1438 = add nuw i32 %1381, 1
  %1439 = icmp eq i32 %1438, %1363
  br i1 %1439, label %1440, label %1374

; <label>:1440                                    ; preds = %1431
  br label %1441

; <label>:1441                                    ; preds = %1440, %1304
  %1442 = phi float [ 0.000000e+00, %1304 ], [ %1432, %1440 ]
  %1443 = phi float [ 0.000000e+00, %1304 ], [ %1433, %1440 ]
  %1444 = phi float [ 0.000000e+00, %1304 ], [ %1434, %1440 ]
  %1445 = phi float [ 0.000000e+00, %1304 ], [ %1435, %1440 ]
  %1446 = phi float [ 0.000000e+00, %1304 ], [ %1436, %1440 ]
  %1447 = phi float [ 0.000000e+00, %1304 ], [ %1437, %1440 ]
  %1448 = fadd fast float %1445, %1442
  %1449 = fmul fast float %1448, 0x3F847AE140000000
  %1450 = fadd fast float %1446, %1443
  %1451 = fmul fast float %1450, 0x3F847AE140000000
  %1452 = fadd fast float %1447, %1444
  %1453 = fmul fast float %1452, 0x3F847AE140000000
  br label %1454

; <label>:1454                                    ; preds = %1441, %1238, %1183, %1180, %1151, %1113
  %1455 = phi float [ %1165, %1151 ], [ -1.310720e+05, %1113 ], [ %1357, %1441 ], [ -1.310720e+05, %1183 ], [ -1.310720e+05, %1238 ], [ -1.310720e+05, %1180 ]
  %1456 = phi float [ %1175, %1151 ], [ 0.000000e+00, %1113 ], [ %1449, %1441 ], [ 0.000000e+00, %1183 ], [ 0.000000e+00, %1238 ], [ 0.000000e+00, %1180 ]
  %1457 = phi float [ %1177, %1151 ], [ 0.000000e+00, %1113 ], [ %1451, %1441 ], [ 0.000000e+00, %1183 ], [ 0.000000e+00, %1238 ], [ 0.000000e+00, %1180 ]
  %1458 = phi float [ %1179, %1151 ], [ 0.000000e+00, %1113 ], [ %1453, %1441 ], [ 0.000000e+00, %1183 ], [ 0.000000e+00, %1238 ], [ 0.000000e+00, %1180 ]
  %1459 = phi i1 [ true, %1151 ], [ false, %1113 ], [ true, %1441 ], [ false, %1183 ], [ false, %1238 ], [ false, %1180 ]
  %1460 = and i32 %202, 3
  %1461 = icmp eq i32 %1460, 1
  %1462 = select i1 %1461, float 1.000000e+00, float 0.000000e+00
  %1463 = fsub fast float %1455, %137
  %1464 = call float @dx.op.unary.f32(i32 7, float %1463)  ; Saturate(value)
  %1465 = select i1 %1459, float %1464, float 1.000000e+00
  %1466 = fmul fast float %1465, %1462
  %1467 = icmp eq i32 %1460, 3
  %1468 = select i1 %1467, float 1.000000e+00, float %1466
  %1469 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1468)  ; FMax(a,b)
  %1470 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  %1471 = fcmp fast une float %1470, 0.000000e+00
  %1472 = call float @dx.op.dot3.f32(i32 55, float %135, float %136, float %137, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %1473 = call float @dx.op.unary.f32(i32 25, float %1472)  ; Rsqrt(value)
  br i1 %1471, label %1481, label %1474

; <label>:1474                                    ; preds = %1454
  %1475 = fmul fast float %1473, %135
  %1476 = fmul fast float %1473, %136
  %1477 = fmul fast float %1473, %137
  %1478 = fsub fast float -0.000000e+00, %1475
  %1479 = fsub fast float -0.000000e+00, %1476
  %1480 = fsub fast float -0.000000e+00, %1477
  br label %1649

; <label>:1481                                    ; preds = %1454
  %1482 = fmul fast float %135, %1473
  %1483 = fsub fast float -0.000000e+00, %1482
  %1484 = fmul fast float %136, %1473
  %1485 = fsub fast float -0.000000e+00, %1484
  %1486 = fmul fast float %137, %1473
  %1487 = fsub fast float -0.000000e+00, %1486
  %1488 = call float @dx.op.dot3.f32(i32 55, float %1483, float %1485, float %1487, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %1489 = fmul fast float %1470, 2.500000e+00
  %1490 = call float @dx.op.unary.f32(i32 7, float %1489)  ; Saturate(value)
  %1491 = fmul fast float %1470, 0x4013FFFFE0000000
  %1492 = fadd fast float %1491, 0xBFFFFFFFE0000000
  %1493 = call float @dx.op.unary.f32(i32 7, float %1492)  ; Saturate(value)
  %1494 = fmul fast float %1470, 0x4004000020000000
  %1495 = fadd fast float %1494, 0xBFF8000040000000
  %1496 = call float @dx.op.unary.f32(i32 7, float %1495)  ; Saturate(value)
  %1497 = call float @dx.op.unary.f32(i32 7, float %1490)  ; Saturate(value)
  %1498 = fmul fast float %1059, 1.000000e+01
  %1499 = call float @dx.op.unary.f32(i32 7, float %1498)  ; Saturate(value)
  %1500 = fmul fast float %1499, 2.000000e+00
  %1501 = fsub fast float 3.000000e+00, %1500
  %1502 = fmul fast float %1499, %1499
  %1503 = fmul fast float %1502, %1501
  %1504 = fsub fast float 1.000000e+00, %1503
  %1505 = fsub fast float 0x3FE3333340000000, %1080
  %1506 = fmul fast float %1505, 0x400AAAAAA0000000
  %1507 = call float @dx.op.unary.f32(i32 7, float %1506)  ; Saturate(value)
  %1508 = fmul fast float %1504, %1507
  %1509 = fmul fast float %1092, 0x3FEA2B8620000000
  %1510 = fmul fast float %1093, 0x3FEA2B8620000000
  %1511 = fmul fast float %1094, 0x3FEA2B8620000000
  %1512 = fadd fast float %1509, 0x3FC81DFBA0000000
  %1513 = fmul fast float %1512, %1092
  %1514 = fadd fast float %1513, 0x3F910E6020000000
  %1515 = fadd fast float %1510, 0x3FC81DFBA0000000
  %1516 = fmul fast float %1515, %1093
  %1517 = fadd fast float %1516, 0x3F910E6020000000
  %1518 = fadd fast float %1511, 0x3FC81DFBA0000000
  %1519 = fmul fast float %1518, %1094
  %1520 = fadd fast float %1519, 0x3F910E6020000000
  %1521 = call float @dx.op.unary.f32(i32 7, float %1514)  ; Saturate(value)
  %1522 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1523 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1524 = fsub fast float %1521, %1092
  %1525 = fsub fast float %1522, %1093
  %1526 = fsub fast float %1523, %1094
  %1527 = fmul fast float %1524, %1497
  %1528 = fmul fast float %1527, %1508
  %1529 = fmul fast float %1525, %1497
  %1530 = fmul fast float %1529, %1508
  %1531 = fmul fast float %1526, %1497
  %1532 = fmul fast float %1531, %1508
  %1533 = fadd fast float %1528, %1092
  %1534 = fadd fast float %1530, %1093
  %1535 = fadd fast float %1532, %1094
  %1536 = fmul fast float %1027, %1027
  %1537 = fmul fast float %1536, %1536
  %1538 = fadd fast float %1493, 1.000000e+00
  %1539 = fsub fast float %1538, %1508
  %1540 = call float @dx.op.unary.f32(i32 7, float %1539)  ; Saturate(value)
  %1541 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1542 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  %1543 = fsub fast float 1.000000e+00, %1537
  %1544 = call float @dx.op.binary.f32(i32 36, float %1540, float %1543)  ; FMin(a,b)
  %1545 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  %1546 = call float @dx.op.binary.f32(i32 35, float %1544, float %1545)  ; FMax(a,b)
  %1547 = fadd fast float %1542, 0xBFE4CCCCC0000000
  %1548 = fmul fast float %1547, 0x4006DB6DA0000000
  %1549 = call float @dx.op.unary.f32(i32 7, float %1548)  ; Saturate(value)
  %1550 = fmul fast float %1549, 2.000000e+00
  %1551 = fsub fast float 3.000000e+00, %1550
  %1552 = bitcast float %1077 to i32
  %1553 = ashr i32 %1552, 1
  %1554 = add nsw i32 %1553, 532487669
  %1555 = bitcast i32 %1554 to float
  %1556 = fsub fast float 1.000000e+00, %1555
  %1557 = bitcast float %1556 to i32
  %1558 = sub nsw i32 2129859010, %1557
  %1559 = bitcast i32 %1558 to float
  %1560 = fmul fast float %1559, 2.000000e+00
  %1561 = bitcast float %1078 to i32
  %1562 = ashr i32 %1561, 1
  %1563 = add nsw i32 %1562, 532487669
  %1564 = bitcast i32 %1563 to float
  %1565 = fsub fast float 1.000000e+00, %1564
  %1566 = bitcast float %1565 to i32
  %1567 = sub nsw i32 2129859010, %1566
  %1568 = bitcast i32 %1567 to float
  %1569 = fmul fast float %1568, 2.000000e+00
  %1570 = bitcast float %1079 to i32
  %1571 = ashr i32 %1570, 1
  %1572 = add nsw i32 %1571, 532487669
  %1573 = bitcast i32 %1572 to float
  %1574 = fsub fast float 1.000000e+00, %1573
  %1575 = bitcast float %1574 to i32
  %1576 = sub nsw i32 2129859010, %1575
  %1577 = bitcast i32 %1576 to float
  %1578 = fmul fast float %1577, 2.000000e+00
  %1579 = fsub fast float 0x4002A9FBE0000000, %1560
  %1580 = fadd fast float %1560, 0x3FD54FDF00000000
  %1581 = bitcast float %1580 to i32
  %1582 = sub nsw i32 2129859010, %1581
  %1583 = bitcast i32 %1582 to float
  %1584 = fmul fast float %1583, %1579
  %1585 = fmul fast float %1584, %1584
  %1586 = fsub fast float 0x4002A9FBE0000000, %1569
  %1587 = fadd fast float %1569, 0x3FD54FDF00000000
  %1588 = bitcast float %1587 to i32
  %1589 = sub nsw i32 2129859010, %1588
  %1590 = bitcast i32 %1589 to float
  %1591 = fmul fast float %1590, %1586
  %1592 = fmul fast float %1591, %1591
  %1593 = fsub fast float 0x4002A9FBE0000000, %1578
  %1594 = fadd fast float %1578, 0x3FD54FDF00000000
  %1595 = bitcast float %1594 to i32
  %1596 = sub nsw i32 2129859010, %1595
  %1597 = bitcast i32 %1596 to float
  %1598 = fmul fast float %1597, %1593
  %1599 = fmul fast float %1598, %1598
  %1600 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1585)  ; FMax(a,b)
  %1601 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1592)  ; FMax(a,b)
  %1602 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1599)  ; FMax(a,b)
  %1603 = fsub fast float 1.000000e+00, %1488
  %1604 = fadd fast float %1603, %1504
  %1605 = call float @dx.op.unary.f32(i32 7, float %1604)  ; Saturate(value)
  %1606 = fsub fast float 1.000000e+00, %1468
  %1607 = fmul fast float %1546, %1606
  %1608 = fmul fast float %1549, %1549
  %1609 = fmul fast float %1608, %1607
  %1610 = fmul fast float %1609, %1551
  %1611 = fmul fast float %1606, 0xBFE99999A0000000
  %1612 = fmul fast float %1611, %1497
  %1613 = fmul fast float %1612, %1508
  %1614 = fadd fast float %1613, 1.000000e+00
  %1615 = fadd fast float %1080, -1.000000e+00
  %1616 = fmul fast float %1614, %1615
  %1617 = fadd fast float %1616, 1.000000e+00
  %1618 = fsub fast float %1600, %1077
  %1619 = fsub fast float %1601, %1078
  %1620 = fsub fast float %1602, %1079
  %1621 = fmul fast float %1610, %1618
  %1622 = fmul fast float %1610, %1619
  %1623 = fmul fast float %1610, %1620
  %1624 = fadd fast float %1621, %1077
  %1625 = fadd fast float %1622, %1078
  %1626 = fadd fast float %1623, %1079
  %1627 = fsub fast float %67, %1056
  %1628 = fsub fast float %68, %1057
  %1629 = fsub fast float %69, %1058
  %1630 = fmul fast float %1610, %1627
  %1631 = fmul fast float %1610, %1628
  %1632 = fmul fast float %1610, %1629
  %1633 = fadd fast float %1630, %1056
  %1634 = fadd fast float %1631, %1057
  %1635 = fadd fast float %1632, %1058
  %1636 = fmul fast float %1610, %1605
  %1637 = call float @dx.op.unary.f32(i32 7, float %1617)  ; Saturate(value)
  %1638 = fsub fast float 1.000000e+00, %1637
  %1639 = fmul fast float %1636, %1638
  %1640 = fadd fast float %1639, %1637
  %1641 = fsub fast float 1.000000e+00, %1027
  %1642 = fmul fast float %1610, %1641
  %1643 = fadd fast float %1642, %1027
  %1644 = call float @dx.op.dot3.f32(i32 55, float %1633, float %1634, float %1635, float %1633, float %1634, float %1635)  ; Dot3(ax,ay,az,bx,by,bz)
  %1645 = call float @dx.op.unary.f32(i32 25, float %1644)  ; Rsqrt(value)
  %1646 = fmul fast float %1633, %1645
  %1647 = fmul fast float %1634, %1645
  %1648 = fmul fast float %1635, %1645
  br label %1649

; <label>:1649                                    ; preds = %1481, %1474
  %1650 = phi float [ %1480, %1474 ], [ %1487, %1481 ]
  %1651 = phi float [ %1479, %1474 ], [ %1485, %1481 ]
  %1652 = phi float [ %1478, %1474 ], [ %1483, %1481 ]
  %1653 = phi float [ %1477, %1474 ], [ %1486, %1481 ]
  %1654 = phi float [ %1476, %1474 ], [ %1484, %1481 ]
  %1655 = phi float [ %1475, %1474 ], [ %1482, %1481 ]
  %1656 = phi float [ %1077, %1474 ], [ %1624, %1481 ]
  %1657 = phi float [ %1078, %1474 ], [ %1625, %1481 ]
  %1658 = phi float [ %1079, %1474 ], [ %1626, %1481 ]
  %1659 = phi float [ %1092, %1474 ], [ %1533, %1481 ]
  %1660 = phi float [ %1093, %1474 ], [ %1534, %1481 ]
  %1661 = phi float [ %1094, %1474 ], [ %1535, %1481 ]
  %1662 = phi float [ %1056, %1474 ], [ %1646, %1481 ]
  %1663 = phi float [ %1057, %1474 ], [ %1647, %1481 ]
  %1664 = phi float [ %1058, %1474 ], [ %1648, %1481 ]
  %1665 = phi float [ %1080, %1474 ], [ %1640, %1481 ]
  %1666 = phi float [ %1027, %1474 ], [ %1643, %1481 ]
  %1667 = fsub fast float -0.000000e+00, %137
  %1668 = select i1 %228, float 0.000000e+00, float %1658
  %1669 = call float @dx.op.dot3.f32(i32 55, float %1662, float %1663, float %1664, float %1652, float %1651, float %1650)  ; Dot3(ax,ay,az,bx,by,bz)
  %1670 = call float @dx.op.unary.f32(i32 7, float %1669)  ; Saturate(value)
  %1671 = call float @dx.op.dot3.f32(i32 55, float %1655, float %1654, float %1653, float %1662, float %1663, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %1672 = fmul fast float %1671, 2.000000e+00
  %1673 = fmul fast float %1672, %1662
  %1674 = fmul fast float %1672, %1663
  %1675 = fmul fast float %1672, %1664
  %1676 = fsub fast float %1655, %1673
  %1677 = fsub fast float %1654, %1674
  %1678 = fsub fast float %1653, %1675
  %1679 = call float @dx.op.binary.f32(i32 36, float %1666, float 1.000000e+00)  ; FMin(a,b)
  %1680 = fsub fast float 1.000000e+00, %1666
  %1681 = bitcast float %1680 to i32
  %1682 = sub nsw i32 2129859010, %1681
  %1683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1684 = extractvalue %dx.types.CBufRet.f32 %1683, 0
  %1685 = extractvalue %dx.types.CBufRet.f32 %1683, 1
  %1686 = fadd fast float %1684, %135
  %1687 = fadd fast float %1685, %136
  %1688 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1689 = extractvalue %dx.types.CBufRet.i32 %1688, 0
  %1690 = icmp eq i32 %1689, 1
  br i1 %1690, label %1691, label %1726

; <label>:1691                                    ; preds = %1649
  %1692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1693 = extractvalue %dx.types.CBufRet.f32 %1692, 0
  %1694 = extractvalue %dx.types.CBufRet.f32 %1692, 1
  %1695 = fsub fast float %1686, %1693
  %1696 = fsub fast float %1687, %1694
  %1697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1698 = extractvalue %dx.types.CBufRet.f32 %1697, 0
  %1699 = extractvalue %dx.types.CBufRet.f32 %1697, 1
  %1700 = fmul fast float %1695, %1698
  %1701 = fmul fast float %1696, %1699
  %1702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %55, float %1700, float %1701, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1703 = extractvalue %dx.types.ResRet.f32 %1702, 0
  %1704 = fcmp fast ogt float %1703, 0.000000e+00
  %1705 = extractvalue %dx.types.CBufRet.i32 %1688, 3
  %1706 = icmp ne i32 %1705, 0
  %1707 = and i1 %1704, %1706
  br i1 %1707, label %1708, label %1726, !dx.controlflow.hints !95

; <label>:1708                                    ; preds = %1691
  %1709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.f32 %1709, 0
  %1711 = extractvalue %dx.types.CBufRet.f32 %1709, 1
  %1712 = fsub fast float %1686, %1710
  %1713 = fsub fast float %1687, %1711
  %1714 = fmul fast float %1712, %1712
  %1715 = fmul fast float %1713, %1713
  %1716 = fadd fast float %1714, %1715
  %1717 = uitofp i32 %1705 to float
  %1718 = fmul fast float %1717, %1717
  %1719 = fcmp fast ogt float %1716, %1718
  br i1 %1719, label %1726, label %1720

; <label>:1720                                    ; preds = %1708
  %1721 = call float @dx.op.unary.f32(i32 24, float %1716)  ; Sqrt(value)
  %1722 = fsub fast float %1717, %1721
  %1723 = fmul fast float %1722, 0x3F75555560000000
  %1724 = call float @dx.op.unary.f32(i32 7, float %1723)  ; Saturate(value)
  %1725 = call float @dx.op.binary.f32(i32 36, float %1724, float %1703)  ; FMin(a,b)
  br label %1726

; <label>:1726                                    ; preds = %1720, %1708, %1691, %1649
  %1727 = phi float [ 1.000000e+00, %1649 ], [ %1725, %1720 ], [ %1703, %1691 ], [ 0.000000e+00, %1708 ]
  %1728 = fcmp fast ogt float %1727, 0.000000e+00
  br i1 %1728, label %1729, label %1827, !dx.controlflow.hints !96

; <label>:1729                                    ; preds = %1726
  %1730 = fadd fast float %166, 5.000000e-01
  %1731 = call float @dx.op.unary.f32(i32 27, float %1730)  ; Round_ni(value)
  %1732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %55, float %164, float %165, float %1731, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1733 = extractvalue %dx.types.ResRet.f32 %1732, 0
  %1734 = extractvalue %dx.types.ResRet.f32 %1732, 1
  %1735 = extractvalue %dx.types.ResRet.f32 %1732, 2
  %1736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1737 = extractvalue %dx.types.CBufRet.f32 %1736, 3
  %1738 = fmul fast float %1737, %1733
  %1739 = fmul fast float %1737, %1734
  %1740 = fmul fast float %1737, %1735
  %1741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %55, float %164, float %165, float %1731, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1742 = extractvalue %dx.types.ResRet.f32 %1741, 0
  %1743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %55, float %164, float %165, float %1731, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1744 = extractvalue %dx.types.ResRet.f32 %1743, 0
  %1745 = extractvalue %dx.types.ResRet.f32 %1743, 1
  %1746 = fmul fast float %1744, 2.000000e+00
  %1747 = fmul fast float %1745, 2.000000e+00
  %1748 = fadd fast float %1746, -1.000000e+00
  %1749 = fadd fast float %1747, -1.000000e+00
  %1750 = fadd fast float %1748, %1749
  %1751 = fmul fast float %1750, 5.000000e-01
  %1752 = fsub fast float %1748, %1749
  %1753 = fmul fast float %1752, 5.000000e-01
  %1754 = call float @dx.op.unary.f32(i32 6, float %1751)  ; FAbs(value)
  %1755 = fsub fast float 1.000000e+00, %1754
  %1756 = call float @dx.op.unary.f32(i32 6, float %1753)  ; FAbs(value)
  %1757 = fsub fast float %1755, %1756
  %1758 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1757)  ; FMax(a,b)
  %1759 = call float @dx.op.dot3.f32(i32 55, float %1751, float %1753, float %1758, float %1751, float %1753, float %1758)  ; Dot3(ax,ay,az,bx,by,bz)
  %1760 = bitcast float %1759 to i32
  %1761 = ashr i32 %1760, 1
  %1762 = sub nsw i32 1597250115, %1761
  %1763 = bitcast i32 %1762 to float
  %1764 = fmul fast float %1763, %1751
  %1765 = fmul fast float %1763, %1753
  %1766 = fmul fast float %1763, %1758
  %1767 = fsub fast float 1.000000e+00, %1742
  %1768 = fdiv fast float %1767, %1766
  %1769 = fmul fast float %1766, %67
  %1770 = fmul fast float %1766, %68
  %1771 = fmul fast float %1766, %69
  %1772 = fmul fast float %1764, %63
  %1773 = fmul fast float %1764, %64
  %1774 = fmul fast float %1764, %65
  %1775 = fadd fast float %1769, %1772
  %1776 = fadd fast float %1770, %1773
  %1777 = fadd fast float %1771, %1774
  %1778 = fmul fast float %1765, %99
  %1779 = fmul fast float %1765, %100
  %1780 = fmul fast float %1765, %101
  %1781 = fadd fast float %1775, %1778
  %1782 = fadd fast float %1776, %1779
  %1783 = fadd fast float %1777, %1780
  %1784 = call float @dx.op.dot3.f32(i32 55, float %1781, float %1782, float %1783, float %1781, float %1782, float %1783)  ; Dot3(ax,ay,az,bx,by,bz)
  %1785 = call float @dx.op.unary.f32(i32 25, float %1784)  ; Rsqrt(value)
  %1786 = fmul fast float %1781, %1785
  %1787 = fmul fast float %1782, %1785
  %1788 = fmul fast float %1783, %1785
  %1789 = call float @dx.op.dot3.f32(i32 55, float %1662, float %1663, float %1664, float %1662, float %1663, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %1790 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1791 = fmul fast float %1790, 5.000000e-01
  %1792 = fadd fast float %1791, 5.000000e-01
  %1793 = fmul fast float %1792, %1742
  %1794 = call float @dx.op.dot3.f32(i32 55, float %1662, float %1663, float %1664, float %1786, float %1787, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %1795 = call float @dx.op.unary.f32(i32 7, float %1794)  ; Saturate(value)
  %1796 = fmul fast float %1795, %1768
  %1797 = fadd fast float %1793, %1796
  %1798 = fsub fast float 5.000000e-01, %1791
  %1799 = fmul fast float %1798, %1659
  %1800 = fmul fast float %1798, %1660
  %1801 = fmul fast float %1798, %1661
  %1802 = fadd fast float %1797, %1799
  %1803 = fmul fast float %1802, %1738
  %1804 = fadd fast float %1797, %1800
  %1805 = fmul fast float %1804, %1739
  %1806 = fadd fast float %1797, %1801
  %1807 = fmul fast float %1806, %1740
  %1808 = call float @dx.op.dot3.f32(i32 55, float %1676, float %1677, float %1678, float %1662, float %1663, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %1809 = call float @dx.op.unary.f32(i32 7, float %1808)  ; Saturate(value)
  %1810 = fmul fast float %1809, 5.000000e-01
  %1811 = fadd fast float %1810, 5.000000e-01
  %1812 = fmul fast float %1811, %1742
  %1813 = call float @dx.op.dot3.f32(i32 55, float %1676, float %1677, float %1678, float %1786, float %1787, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %1814 = call float @dx.op.unary.f32(i32 7, float %1813)  ; Saturate(value)
  %1815 = fmul fast float %1814, %1768
  %1816 = fadd fast float %1812, %1815
  %1817 = fsub fast float 5.000000e-01, %1810
  %1818 = fmul fast float %1817, %1659
  %1819 = fmul fast float %1817, %1660
  %1820 = fmul fast float %1817, %1661
  %1821 = fadd fast float %1816, %1818
  %1822 = fmul fast float %1821, %1738
  %1823 = fadd fast float %1816, %1819
  %1824 = fmul fast float %1823, %1739
  %1825 = fadd fast float %1816, %1820
  %1826 = fmul fast float %1825, %1740
  br label %1827

; <label>:1827                                    ; preds = %1729, %1726
  %1828 = phi float [ %1822, %1729 ], [ 0.000000e+00, %1726 ]
  %1829 = phi float [ %1824, %1729 ], [ 0.000000e+00, %1726 ]
  %1830 = phi float [ %1826, %1729 ], [ 0.000000e+00, %1726 ]
  %1831 = phi float [ %1803, %1729 ], [ 0.000000e+00, %1726 ]
  %1832 = phi float [ %1805, %1729 ], [ 0.000000e+00, %1726 ]
  %1833 = phi float [ %1807, %1729 ], [ 0.000000e+00, %1726 ]
  %1834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1835 = extractvalue %dx.types.CBufRet.f32 %1834, 0
  %1836 = fcmp fast ogt float %1835, 0.000000e+00
  %1837 = and i1 %1728, %1836
  br i1 %1837, label %1838, label %2042, !dx.controlflow.hints !97

; <label>:1838                                    ; preds = %1827
  %1839 = extractvalue %dx.types.CBufRet.f32 %1683, 2
  %1840 = fadd fast float %1839, %137
  %1841 = fmul fast float %1662, 3.200000e+01
  %1842 = fmul fast float %1663, 3.200000e+01
  %1843 = fadd fast float %1686, %1841
  %1844 = fadd fast float %1687, %1842
  %1845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1846 = extractvalue %dx.types.CBufRet.f32 %1845, 0
  %1847 = extractvalue %dx.types.CBufRet.f32 %1845, 1
  %1848 = fsub fast float %1843, %1846
  %1849 = fsub fast float %1844, %1847
  %1850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1851 = extractvalue %dx.types.CBufRet.f32 %1850, 0
  %1852 = extractvalue %dx.types.CBufRet.f32 %1850, 1
  %1853 = fmul fast float %1848, %1851
  %1854 = fmul fast float %1849, %1852
  %1855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1856 = extractvalue %dx.types.CBufRet.f32 %1855, 0
  %1857 = extractvalue %dx.types.CBufRet.f32 %1855, 1
  %1858 = fsub fast float %1686, %1856
  %1859 = fsub fast float %1687, %1857
  %1860 = fmul fast float %1858, %1858
  %1861 = fmul fast float %1859, %1859
  %1862 = fadd fast float %1860, %1861
  %1863 = call float @dx.op.unary.f32(i32 24, float %1862)  ; Sqrt(value)
  %1864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.f32 %1864, 0
  %1866 = extractvalue %dx.types.CBufRet.f32 %1864, 1
  %1867 = fsub fast float %1863, %1865
  %1868 = fdiv fast float %1867, %1866
  %1869 = call float @dx.op.unary.f32(i32 7, float %1868)  ; Saturate(value)
  %1870 = fmul fast float %1869, 2.000000e+00
  %1871 = fsub fast float 3.000000e+00, %1870
  %1872 = fmul fast float %1869, %1869
  %1873 = fmul fast float %1872, %1871
  %1874 = fcmp fast oge float %1853, 0.000000e+00
  %1875 = fcmp fast ole float %1853, 1.000000e+00
  %1876 = and i1 %1875, %1874
  %1877 = fcmp fast oge float %1854, 0.000000e+00
  %1878 = and i1 %1877, %1876
  %1879 = fcmp fast ole float %1854, 1.000000e+00
  %1880 = and i1 %1879, %1878
  %1881 = fcmp fast ogt float %1873, 0.000000e+00
  %1882 = and i1 %1881, %1880
  br i1 %1882, label %1883, label %2006, !dx.controlflow.hints !98

; <label>:1883                                    ; preds = %1838
  %1884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1885 = extractvalue %dx.types.CBufRet.f32 %1884, 2
  %1886 = extractvalue %dx.types.CBufRet.f32 %1884, 3
  %1887 = fmul fast float %1885, %1853
  %1888 = fmul fast float %1886, %1854
  %1889 = call float @dx.op.unary.f32(i32 27, float %1887)  ; Round_ni(value)
  %1890 = call float @dx.op.unary.f32(i32 27, float %1888)  ; Round_ni(value)
  %1891 = fptosi float %1889 to i32
  %1892 = fptosi float %1890 to i32
  %1893 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %45, i32 0, i32 %1891, i32 %1892, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1894 = extractvalue %dx.types.ResRet.i32 %1893, 0
  %1895 = lshr i32 %1894, 16
  %1896 = icmp eq i32 %1895, 65535
  br i1 %1896, label %2006, label %1897

; <label>:1897                                    ; preds = %1883
  %1898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1899 = extractvalue %dx.types.CBufRet.f32 %1898, 0
  %1900 = fmul fast float %1899, %1853
  %1901 = extractvalue %dx.types.CBufRet.f32 %1898, 1
  %1902 = fadd fast float %1900, %1901
  %1903 = extractvalue %dx.types.CBufRet.f32 %1898, 2
  %1904 = fmul fast float %1903, %1854
  %1905 = extractvalue %dx.types.CBufRet.f32 %1898, 3
  %1906 = fadd fast float %1904, %1905
  %1907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %55, float %1902, float %1906, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1908 = extractvalue %dx.types.ResRet.f32 %1907, 0
  %1909 = extractvalue %dx.types.ResRet.f32 %1907, 1
  %1910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.f32 %1910, 1
  %1912 = extractvalue %dx.types.CBufRet.f32 %1910, 0
  %1913 = fsub fast float %1911, %1912
  %1914 = fmul fast float %1913, %1908
  %1915 = fadd fast float %1914, %1912
  %1916 = extractvalue %dx.types.CBufRet.f32 %1910, 3
  %1917 = extractvalue %dx.types.CBufRet.f32 %1910, 2
  %1918 = fsub fast float %1916, %1917
  %1919 = fmul fast float %1918, %1909
  %1920 = fadd fast float %1919, %1917
  %1921 = fsub fast float %1840, %1915
  %1922 = fsub fast float %1920, %1915
  %1923 = fdiv fast float %1921, %1922
  %1924 = call float @dx.op.unary.f32(i32 7, float %1923)  ; Saturate(value)
  %1925 = extractvalue %dx.types.CBufRet.f32 %1834, 1
  %1926 = extractvalue %dx.types.CBufRet.f32 %1884, 0
  %1927 = extractvalue %dx.types.CBufRet.f32 %1884, 1
  %1928 = fmul fast float %1926, %1853
  %1929 = fmul fast float %1927, %1854
  %1930 = fmul fast float %1928, 1.250000e-01
  %1931 = fmul fast float %1929, 1.250000e-01
  %1932 = call float @dx.op.unary.f32(i32 27, float %1930)  ; Round_ni(value)
  %1933 = call float @dx.op.unary.f32(i32 27, float %1931)  ; Round_ni(value)
  %1934 = fmul fast float %1932, 8.000000e+00
  %1935 = fmul fast float %1933, 8.000000e+00
  %1936 = fsub fast float %1928, %1934
  %1937 = fsub fast float %1929, %1935
  %1938 = fadd fast float %1936, 5.000000e-01
  %1939 = fadd fast float %1937, 5.000000e-01
  %1940 = and i32 %1895, 255
  %1941 = lshr i32 %1894, 24
  %1942 = mul nuw nsw i32 %1940, 9
  %1943 = uitofp i32 %1942 to float
  %1944 = mul nuw nsw i32 %1941, 9
  %1945 = uitofp i32 %1944 to float
  %1946 = fadd fast float %1938, %1943
  %1947 = fadd fast float %1939, %1945
  %1948 = fdiv fast float %1946, %1835
  %1949 = fdiv fast float %1947, %1925
  %1950 = fmul fast float %1924, 4.375000e-01
  %1951 = fadd fast float %1950, 3.125000e-02
  %1952 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %55, float %1948, float %1949, float %1951, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1953 = extractvalue %dx.types.ResRet.f32 %1952, 0
  %1954 = extractvalue %dx.types.ResRet.f32 %1952, 1
  %1955 = extractvalue %dx.types.ResRet.f32 %1952, 2
  %1956 = fadd fast float %1950, 5.312500e-01
  %1957 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %55, float %1948, float %1949, float %1956, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1958 = extractvalue %dx.types.ResRet.f32 %1957, 0
  %1959 = extractvalue %dx.types.ResRet.f32 %1957, 1
  %1960 = extractvalue %dx.types.ResRet.f32 %1957, 2
  %1961 = fmul fast float %1958, 2.000000e+00
  %1962 = fmul fast float %1959, 2.000000e+00
  %1963 = fmul fast float %1960, 2.000000e+00
  %1964 = fadd fast float %1961, -1.000000e+00
  %1965 = fadd fast float %1962, -1.000000e+00
  %1966 = fadd fast float %1963, -1.000000e+00
  %1967 = fmul fast float %1964, %1964
  %1968 = fmul fast float %1965, %1965
  %1969 = fadd fast float %1967, %1968
  %1970 = fmul fast float %1966, %1966
  %1971 = fadd fast float %1969, %1970
  %1972 = call float @dx.op.unary.f32(i32 24, float %1971)  ; Sqrt(value)
  %1973 = fcmp fast ogt float %1972, 0.000000e+00
  br i1 %1973, label %1974, label %1978

; <label>:1974                                    ; preds = %1897
  %1975 = fdiv fast float %1964, %1972
  %1976 = fdiv fast float %1965, %1972
  %1977 = fdiv fast float %1966, %1972
  br label %1978

; <label>:1978                                    ; preds = %1974, %1897
  %1979 = phi float [ %1975, %1974 ], [ 0.000000e+00, %1897 ]
  %1980 = phi float [ %1976, %1974 ], [ 0.000000e+00, %1897 ]
  %1981 = phi float [ %1977, %1974 ], [ 0.000000e+00, %1897 ]
  %1982 = call float @dx.op.dot3.f32(i32 55, float %1979, float %1980, float %1981, float %1662, float %1663, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %1983 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1982)  ; FMax(a,b)
  %1984 = fmul fast float %1983, 0x400C5BF8A0000000
  %1985 = fmul fast float %1953, %1873
  %1986 = fmul fast float %1985, %1984
  %1987 = fmul fast float %1954, %1873
  %1988 = fmul fast float %1987, %1984
  %1989 = fmul fast float %1955, %1873
  %1990 = fmul fast float %1989, %1984
  %1991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1992 = extractvalue %dx.types.CBufRet.f32 %1991, 3
  %1993 = fmul fast float %1986, %1992
  %1994 = fmul fast float %1988, %1992
  %1995 = fmul fast float %1990, %1992
  %1996 = fcmp fast ogt float %1840, %1920
  br i1 %1996, label %1997, label %2006

; <label>:1997                                    ; preds = %1978
  %1998 = fmul fast float %1922, 0x3FC24924A0000000
  %1999 = fsub fast float %1840, %1920
  %2000 = fdiv fast float %1999, %1998
  %2001 = call float @dx.op.unary.f32(i32 7, float %2000)  ; Saturate(value)
  %2002 = fsub fast float 1.000000e+00, %2001
  %2003 = fmul fast float %2002, %1993
  %2004 = fmul fast float %2002, %1994
  %2005 = fmul fast float %2002, %1995
  br label %2006

; <label>:2006                                    ; preds = %1997, %1978, %1883, %1838
  %2007 = phi float [ %2005, %1997 ], [ %1995, %1978 ], [ 0.000000e+00, %1883 ], [ 0.000000e+00, %1838 ]
  %2008 = phi float [ %2004, %1997 ], [ %1994, %1978 ], [ 0.000000e+00, %1883 ], [ 0.000000e+00, %1838 ]
  %2009 = phi float [ %2003, %1997 ], [ %1993, %1978 ], [ 0.000000e+00, %1883 ], [ 0.000000e+00, %1838 ]
  %2010 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2009)  ; FMax(a,b)
  %2011 = fmul fast float %2010, 0x3FD20DD760000000
  %2012 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1676, float %1677, float %1678)  ; Dot3(ax,ay,az,bx,by,bz)
  %2013 = fmul fast float %2012, 0x3FDF454380000000
  %2014 = fmul fast float %2012, %2012
  %2015 = fmul fast float %2014, 0x3FEE471020000000
  %2016 = fadd fast float %2015, 0xBFD42F6020000000
  %2017 = call float @dx.op.dot3.f32(i32 55, float %2010, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2013, float %2016)  ; Dot3(ax,ay,az,bx,by,bz)
  %2018 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2008)  ; FMax(a,b)
  %2019 = fmul fast float %2018, 0x3FD20DD760000000
  %2020 = call float @dx.op.dot3.f32(i32 55, float %2018, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2013, float %2016)  ; Dot3(ax,ay,az,bx,by,bz)
  %2021 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2007)  ; FMax(a,b)
  %2022 = fmul fast float %2021, 0x3FD20DD760000000
  %2023 = call float @dx.op.dot3.f32(i32 55, float %2021, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2013, float %2016)  ; Dot3(ax,ay,az,bx,by,bz)
  %2024 = call float @dx.op.binary.f32(i32 35, float %2011, float 0.000000e+00)  ; FMax(a,b)
  %2025 = call float @dx.op.binary.f32(i32 35, float %2019, float 0.000000e+00)  ; FMax(a,b)
  %2026 = call float @dx.op.binary.f32(i32 35, float %2022, float 0.000000e+00)  ; FMax(a,b)
  %2027 = call float @dx.op.binary.f32(i32 35, float %2017, float 0.000000e+00)  ; FMax(a,b)
  %2028 = call float @dx.op.binary.f32(i32 35, float %2020, float 0.000000e+00)  ; FMax(a,b)
  %2029 = call float @dx.op.binary.f32(i32 35, float %2023, float 0.000000e+00)  ; FMax(a,b)
  %2030 = fmul fast float %2024, %1727
  %2031 = fmul fast float %2025, %1727
  %2032 = fmul fast float %2026, %1727
  %2033 = fadd fast float %2030, %1831
  %2034 = fadd fast float %2031, %1832
  %2035 = fadd fast float %2032, %1833
  %2036 = fmul fast float %2027, %1727
  %2037 = fmul fast float %2028, %1727
  %2038 = fmul fast float %2029, %1727
  %2039 = fadd fast float %2036, %1828
  %2040 = fadd fast float %2037, %1829
  %2041 = fadd fast float %2038, %1830
  br label %2042

; <label>:2042                                    ; preds = %2006, %1827
  %2043 = phi float [ %2039, %2006 ], [ %1828, %1827 ]
  %2044 = phi float [ %2040, %2006 ], [ %1829, %1827 ]
  %2045 = phi float [ %2041, %2006 ], [ %1830, %1827 ]
  %2046 = phi float [ %2033, %2006 ], [ %1831, %1827 ]
  %2047 = phi float [ %2034, %2006 ], [ %1832, %1827 ]
  %2048 = phi float [ %2035, %2006 ], [ %1833, %1827 ]
  %2049 = fcmp fast olt float %1727, 1.000000e+00
  br i1 %2049, label %2050, label %2868, !dx.controlflow.hints !99

; <label>:2050                                    ; preds = %2042
  %2051 = extractvalue %dx.types.CBufRet.f32 %1683, 2
  %2052 = fadd fast float %2051, %137
  %2053 = fmul fast float %1662, 3.200000e+01
  %2054 = fmul fast float %1663, 3.200000e+01
  %2055 = fadd fast float %1686, %2053
  %2056 = fadd fast float %1687, %2054
  %2057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2058 = extractvalue %dx.types.CBufRet.f32 %2057, 0
  %2059 = extractvalue %dx.types.CBufRet.f32 %2057, 1
  %2060 = fsub fast float %2055, %2058
  %2061 = fsub fast float %2056, %2059
  %2062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2063 = extractvalue %dx.types.CBufRet.f32 %2062, 0
  %2064 = extractvalue %dx.types.CBufRet.f32 %2062, 1
  %2065 = fmul fast float %2060, %2063
  %2066 = fmul fast float %2061, %2064
  %2067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2068 = extractvalue %dx.types.CBufRet.f32 %2067, 0
  %2069 = fmul fast float %2065, %2068
  %2070 = extractvalue %dx.types.CBufRet.f32 %2067, 1
  %2071 = fadd fast float %2069, %2070
  %2072 = extractvalue %dx.types.CBufRet.f32 %2067, 2
  %2073 = fmul fast float %2072, %2066
  %2074 = extractvalue %dx.types.CBufRet.f32 %2067, 3
  %2075 = fadd fast float %2073, %2074
  %2076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %55, float %2071, float %2075, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2077 = extractvalue %dx.types.ResRet.f32 %2076, 0
  %2078 = extractvalue %dx.types.ResRet.f32 %2076, 1
  %2079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2080 = extractvalue %dx.types.CBufRet.f32 %2079, 1
  %2081 = extractvalue %dx.types.CBufRet.f32 %2079, 0
  %2082 = fsub fast float %2080, %2081
  %2083 = fmul fast float %2082, %2077
  %2084 = fadd fast float %2083, %2081
  %2085 = extractvalue %dx.types.CBufRet.f32 %2079, 3
  %2086 = extractvalue %dx.types.CBufRet.f32 %2079, 2
  %2087 = fsub fast float %2085, %2086
  %2088 = fmul fast float %2087, %2078
  %2089 = fadd fast float %2088, %2086
  %2090 = fsub fast float %2052, %2084
  %2091 = fsub fast float %2089, %2084
  %2092 = fdiv fast float %2090, %2091
  %2093 = call float @dx.op.unary.f32(i32 7, float %2092)  ; Saturate(value)
  %2094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2095 = extractvalue %dx.types.CBufRet.f32 %2094, 0
  %2096 = fmul fast float %2095, %2093
  %2097 = extractvalue %dx.types.CBufRet.f32 %2094, 1
  %2098 = fadd fast float %2096, %2097
  %2099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %2071, float %2075, float %2098, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2100 = extractvalue %dx.types.ResRet.f32 %2099, 0
  %2101 = extractvalue %dx.types.ResRet.f32 %2099, 1
  %2102 = extractvalue %dx.types.ResRet.f32 %2099, 2
  %2103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2104 = extractvalue %dx.types.CBufRet.f32 %2103, 0
  %2105 = extractvalue %dx.types.CBufRet.f32 %2103, 1
  %2106 = extractvalue %dx.types.CBufRet.f32 %2103, 2
  %2107 = fmul fast float %2104, %2100
  %2108 = fmul fast float %2105, %2101
  %2109 = fmul fast float %2106, %2102
  %2110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2111 = extractvalue %dx.types.CBufRet.f32 %2110, 0
  %2112 = extractvalue %dx.types.CBufRet.f32 %2110, 1
  %2113 = extractvalue %dx.types.CBufRet.f32 %2110, 2
  %2114 = fadd fast float %2107, %2111
  %2115 = fadd fast float %2108, %2112
  %2116 = fadd fast float %2109, %2113
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 0
  %2119 = fmul fast float %2118, %2065
  %2120 = extractvalue %dx.types.CBufRet.f32 %2117, 1
  %2121 = fadd fast float %2119, %2120
  %2122 = extractvalue %dx.types.CBufRet.f32 %2117, 2
  %2123 = fmul fast float %2122, %2066
  %2124 = extractvalue %dx.types.CBufRet.f32 %2117, 3
  %2125 = fadd fast float %2123, %2124
  %2126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2127 = extractvalue %dx.types.CBufRet.f32 %2126, 0
  %2128 = extractvalue %dx.types.CBufRet.f32 %2126, 1
  %2129 = extractvalue %dx.types.CBufRet.f32 %2126, 2
  %2130 = extractvalue %dx.types.CBufRet.f32 %2126, 3
  %2131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2132 = extractvalue %dx.types.CBufRet.f32 %2131, 0
  %2133 = extractvalue %dx.types.CBufRet.f32 %2131, 1
  %2134 = extractvalue %dx.types.CBufRet.f32 %2131, 2
  %2135 = extractvalue %dx.types.CBufRet.f32 %2131, 3
  %2136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %55, float %2121, float %2125, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2137 = extractvalue %dx.types.ResRet.f32 %2136, 0
  %2138 = extractvalue %dx.types.ResRet.f32 %2136, 1
  %2139 = extractvalue %dx.types.ResRet.f32 %2136, 2
  %2140 = extractvalue %dx.types.ResRet.f32 %2136, 3
  %2141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %55, float %2121, float %2125, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2142 = extractvalue %dx.types.ResRet.f32 %2141, 0
  %2143 = extractvalue %dx.types.ResRet.f32 %2141, 1
  %2144 = extractvalue %dx.types.ResRet.f32 %2141, 2
  %2145 = extractvalue %dx.types.ResRet.f32 %2141, 3
  %2146 = fmul fast float %2137, %2114
  %2147 = fmul fast float %2142, %2114
  %2148 = fmul fast float %2144, %2114
  %2149 = fmul fast float %2140, %2114
  %2150 = fadd fast float %2146, %2127
  %2151 = fadd fast float %2147, %2128
  %2152 = fadd fast float %2148, %2129
  %2153 = fadd fast float %2149, %2130
  %2154 = fmul fast float %2138, %2114
  %2155 = fmul fast float %2143, %2114
  %2156 = fadd fast float %2154, %2132
  %2157 = fadd fast float %2155, %2133
  %2158 = fmul fast float %2139, %2114
  %2159 = fmul fast float %2145, %2114
  %2160 = fadd fast float %2158, %2134
  %2161 = fadd fast float %2159, %2135
  %2162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %55, float %2121, float %2125, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2163 = extractvalue %dx.types.ResRet.f32 %2162, 0
  %2164 = extractvalue %dx.types.ResRet.f32 %2162, 1
  %2165 = extractvalue %dx.types.ResRet.f32 %2162, 2
  %2166 = extractvalue %dx.types.ResRet.f32 %2162, 3
  %2167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %55, float %2121, float %2125, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2168 = extractvalue %dx.types.ResRet.f32 %2167, 0
  %2169 = extractvalue %dx.types.ResRet.f32 %2167, 1
  %2170 = extractvalue %dx.types.ResRet.f32 %2167, 2
  %2171 = extractvalue %dx.types.ResRet.f32 %2167, 3
  %2172 = fmul fast float %2163, %2115
  %2173 = fmul fast float %2168, %2115
  %2174 = fmul fast float %2170, %2115
  %2175 = fmul fast float %2166, %2115
  %2176 = fadd fast float %2150, %2172
  %2177 = fadd fast float %2151, %2173
  %2178 = fadd fast float %2152, %2174
  %2179 = fadd fast float %2153, %2175
  %2180 = fmul fast float %2164, %2115
  %2181 = fmul fast float %2169, %2115
  %2182 = fadd fast float %2156, %2180
  %2183 = fadd fast float %2157, %2181
  %2184 = fmul fast float %2165, %2115
  %2185 = fmul fast float %2171, %2115
  %2186 = fadd fast float %2160, %2184
  %2187 = fadd fast float %2161, %2185
  %2188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %55, float %2121, float %2125, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2189 = extractvalue %dx.types.ResRet.f32 %2188, 0
  %2190 = extractvalue %dx.types.ResRet.f32 %2188, 1
  %2191 = extractvalue %dx.types.ResRet.f32 %2188, 2
  %2192 = extractvalue %dx.types.ResRet.f32 %2188, 3
  %2193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %55, float %2121, float %2125, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2194 = extractvalue %dx.types.ResRet.f32 %2193, 0
  %2195 = extractvalue %dx.types.ResRet.f32 %2193, 1
  %2196 = extractvalue %dx.types.ResRet.f32 %2193, 2
  %2197 = extractvalue %dx.types.ResRet.f32 %2193, 3
  %2198 = fmul fast float %2189, %2116
  %2199 = fmul fast float %2194, %2116
  %2200 = fmul fast float %2196, %2116
  %2201 = fmul fast float %2192, %2116
  %2202 = fadd fast float %2176, %2198
  %2203 = fadd fast float %2177, %2199
  %2204 = fadd fast float %2178, %2200
  %2205 = fadd fast float %2179, %2201
  %2206 = fmul fast float %2190, %2116
  %2207 = fmul fast float %2195, %2116
  %2208 = fadd fast float %2182, %2206
  %2209 = fadd fast float %2183, %2207
  %2210 = fmul fast float %2191, %2116
  %2211 = fmul fast float %2197, %2116
  %2212 = fadd fast float %2186, %2210
  %2213 = fadd fast float %2187, %2211
  %2214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2215 = extractvalue %dx.types.CBufRet.f32 %2214, 0
  %2216 = fsub fast float %1686, %2215
  %2217 = fsub fast float %2058, %1686
  %2218 = call float @dx.op.binary.f32(i32 35, float %2217, float %2216)  ; FMax(a,b)
  %2219 = extractvalue %dx.types.CBufRet.f32 %2214, 1
  %2220 = fsub fast float %1687, %2219
  %2221 = fsub fast float %2059, %1687
  %2222 = call float @dx.op.binary.f32(i32 35, float %2221, float %2220)  ; FMax(a,b)
  %2223 = call float @dx.op.binary.f32(i32 35, float %2218, float %2222)  ; FMax(a,b)
  %2224 = extractvalue %dx.types.CBufRet.f32 %2062, 3
  %2225 = fmul fast float %2224, %2223
  %2226 = call float @dx.op.unary.f32(i32 7, float %2225)  ; Saturate(value)
  %2227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2228 = extractvalue %dx.types.CBufRet.f32 %2227, 0
  %2229 = extractvalue %dx.types.CBufRet.f32 %2227, 1
  %2230 = extractvalue %dx.types.CBufRet.f32 %2227, 2
  %2231 = extractvalue %dx.types.CBufRet.f32 %2227, 3
  %2232 = fsub fast float %2228, %2202
  %2233 = fsub fast float %2229, %2203
  %2234 = fsub fast float %2230, %2204
  %2235 = fsub fast float %2231, %2205
  %2236 = fmul fast float %2232, %2226
  %2237 = fmul fast float %2233, %2226
  %2238 = fmul fast float %2234, %2226
  %2239 = fmul fast float %2235, %2226
  %2240 = fadd fast float %2236, %2202
  %2241 = fadd fast float %2237, %2203
  %2242 = fadd fast float %2238, %2204
  %2243 = fadd fast float %2239, %2205
  %2244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2245 = extractvalue %dx.types.CBufRet.f32 %2244, 0
  %2246 = extractvalue %dx.types.CBufRet.f32 %2244, 1
  %2247 = fsub fast float %2245, %2208
  %2248 = fsub fast float %2246, %2209
  %2249 = fmul fast float %2247, %2226
  %2250 = fmul fast float %2248, %2226
  %2251 = fadd fast float %2249, %2208
  %2252 = fadd fast float %2250, %2209
  %2253 = extractvalue %dx.types.CBufRet.f32 %2244, 2
  %2254 = extractvalue %dx.types.CBufRet.f32 %2244, 3
  %2255 = fsub fast float %2253, %2212
  %2256 = fsub fast float %2254, %2213
  %2257 = fmul fast float %2255, %2226
  %2258 = fmul fast float %2256, %2226
  %2259 = fadd fast float %2257, %2212
  %2260 = fadd fast float %2258, %2213
  %2261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2262 = extractvalue %dx.types.CBufRet.f32 %2261, 0
  %2263 = fmul fast float %2262, %2240
  %2264 = fmul fast float %2262, %2241
  %2265 = fmul fast float %2262, %2242
  %2266 = fmul fast float %2262, %2243
  %2267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2268 = extractvalue %dx.types.CBufRet.f32 %2267, 0
  %2269 = fmul fast float %2268, %2251
  %2270 = fmul fast float %2268, %2252
  %2271 = fadd fast float %2269, %2263
  %2272 = fadd fast float %2270, %2265
  %2273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2274 = extractvalue %dx.types.CBufRet.f32 %2273, 0
  %2275 = fmul fast float %2274, %2259
  %2276 = fmul fast float %2274, %2260
  %2277 = fadd fast float %2271, %2275
  %2278 = fadd fast float %2272, %2276
  %2279 = extractvalue %dx.types.CBufRet.f32 %2261, 1
  %2280 = fmul fast float %2279, %2240
  %2281 = fmul fast float %2279, %2241
  %2282 = fmul fast float %2279, %2242
  %2283 = fmul fast float %2279, %2243
  %2284 = extractvalue %dx.types.CBufRet.f32 %2267, 1
  %2285 = fmul fast float %2284, %2251
  %2286 = fmul fast float %2284, %2252
  %2287 = fadd fast float %2285, %2280
  %2288 = fadd fast float %2286, %2282
  %2289 = extractvalue %dx.types.CBufRet.f32 %2273, 1
  %2290 = fmul fast float %2289, %2259
  %2291 = fmul fast float %2289, %2260
  %2292 = fadd fast float %2287, %2290
  %2293 = fadd fast float %2288, %2291
  %2294 = extractvalue %dx.types.CBufRet.f32 %2261, 2
  %2295 = fmul fast float %2294, %2240
  %2296 = fmul fast float %2294, %2241
  %2297 = fmul fast float %2294, %2242
  %2298 = fmul fast float %2294, %2243
  %2299 = extractvalue %dx.types.CBufRet.f32 %2267, 2
  %2300 = fmul fast float %2299, %2251
  %2301 = fmul fast float %2299, %2252
  %2302 = fadd fast float %2300, %2295
  %2303 = fadd fast float %2301, %2297
  %2304 = extractvalue %dx.types.CBufRet.f32 %2273, 2
  %2305 = fmul fast float %2304, %2259
  %2306 = fmul fast float %2304, %2260
  %2307 = fadd fast float %2302, %2305
  %2308 = fadd fast float %2303, %2306
  %2309 = fmul fast float %2296, %2296
  %2310 = fmul fast float %2308, %2308
  %2311 = fmul fast float %2298, %2298
  %2312 = fadd fast float %2311, %2309
  %2313 = fadd fast float %2312, %2310
  %2314 = call float @dx.op.unary.f32(i32 24, float %2313)  ; Sqrt(value)
  %2315 = fcmp fast ugt float %2314, 0.000000e+00
  br i1 %2315, label %2316, label %2331

; <label>:2316                                    ; preds = %2050
  %2317 = fsub fast float -0.000000e+00, %2298
  %2318 = fdiv fast float %2317, %2314
  %2319 = fsub fast float -0.000000e+00, %2296
  %2320 = fdiv fast float %2319, %2314
  %2321 = fdiv fast float %2308, %2314
  %2322 = fmul fast float %2307, 0x3FE279A760000000
  %2323 = fmul fast float %2320, %2296
  %2324 = fmul fast float %2321, %2308
  %2325 = fmul fast float %2318, %2298
  %2326 = fadd fast float %2323, %2325
  %2327 = fsub fast float %2326, %2324
  %2328 = call float @dx.op.unary.f32(i32 6, float %2327)  ; FAbs(value)
  %2329 = fadd fast float %2328, 0x3DDB7CDFE0000000
  %2330 = fdiv fast float %2322, %2329
  br label %2331

; <label>:2331                                    ; preds = %2316, %2050
  %2332 = phi float [ %2330, %2316 ], [ 1.000000e+00, %2050 ]
  %2333 = fmul fast float %2281, %2281
  %2334 = fmul fast float %2293, %2293
  %2335 = fmul fast float %2283, %2283
  %2336 = fadd fast float %2335, %2333
  %2337 = fadd fast float %2336, %2334
  %2338 = call float @dx.op.unary.f32(i32 24, float %2337)  ; Sqrt(value)
  %2339 = fcmp fast ugt float %2338, 0.000000e+00
  br i1 %2339, label %2340, label %2355

; <label>:2340                                    ; preds = %2331
  %2341 = fsub fast float -0.000000e+00, %2283
  %2342 = fdiv fast float %2341, %2338
  %2343 = fsub fast float -0.000000e+00, %2281
  %2344 = fdiv fast float %2343, %2338
  %2345 = fdiv fast float %2293, %2338
  %2346 = fmul fast float %2292, 0x3FE279A760000000
  %2347 = fmul fast float %2344, %2281
  %2348 = fmul fast float %2345, %2293
  %2349 = fmul fast float %2342, %2283
  %2350 = fadd fast float %2347, %2349
  %2351 = fsub fast float %2350, %2348
  %2352 = call float @dx.op.unary.f32(i32 6, float %2351)  ; FAbs(value)
  %2353 = fadd fast float %2352, 0x3DDB7CDFE0000000
  %2354 = fdiv fast float %2346, %2353
  br label %2355

; <label>:2355                                    ; preds = %2340, %2331
  %2356 = phi float [ %2354, %2340 ], [ 1.000000e+00, %2331 ]
  %2357 = call float @dx.op.binary.f32(i32 36, float %2356, float %2332)  ; FMin(a,b)
  %2358 = fmul fast float %2264, %2264
  %2359 = fmul fast float %2278, %2278
  %2360 = fmul fast float %2266, %2266
  %2361 = fadd fast float %2360, %2358
  %2362 = fadd fast float %2361, %2359
  %2363 = call float @dx.op.unary.f32(i32 24, float %2362)  ; Sqrt(value)
  %2364 = fcmp fast ugt float %2363, 0.000000e+00
  br i1 %2364, label %2365, label %2380

; <label>:2365                                    ; preds = %2355
  %2366 = fsub fast float -0.000000e+00, %2266
  %2367 = fdiv fast float %2366, %2363
  %2368 = fsub fast float -0.000000e+00, %2264
  %2369 = fdiv fast float %2368, %2363
  %2370 = fdiv fast float %2278, %2363
  %2371 = fmul fast float %2277, 0x3FE279A760000000
  %2372 = fmul fast float %2369, %2264
  %2373 = fmul fast float %2370, %2278
  %2374 = fmul fast float %2367, %2266
  %2375 = fadd fast float %2372, %2374
  %2376 = fsub fast float %2375, %2373
  %2377 = call float @dx.op.unary.f32(i32 6, float %2376)  ; FAbs(value)
  %2378 = fadd fast float %2377, 0x3DDB7CDFE0000000
  %2379 = fdiv fast float %2371, %2378
  br label %2380

; <label>:2380                                    ; preds = %2365, %2355
  %2381 = phi float [ %2379, %2365 ], [ 1.000000e+00, %2355 ]
  %2382 = call float @dx.op.binary.f32(i32 36, float %2381, float %2357)  ; FMin(a,b)
  %2383 = call float @dx.op.unary.f32(i32 7, float %2382)  ; Saturate(value)
  %2384 = fcmp fast olt float %2383, 1.000000e+00
  br i1 %2384, label %2385, label %2395

; <label>:2385                                    ; preds = %2380
  %2386 = fmul fast float %2383, %2264
  %2387 = fmul fast float %2383, %2278
  %2388 = fmul fast float %2383, %2266
  %2389 = fmul fast float %2383, %2281
  %2390 = fmul fast float %2383, %2293
  %2391 = fmul fast float %2383, %2283
  %2392 = fmul fast float %2383, %2296
  %2393 = fmul fast float %2383, %2308
  %2394 = fmul fast float %2383, %2298
  br label %2395

; <label>:2395                                    ; preds = %2385, %2380
  %2396 = phi float [ %2392, %2385 ], [ %2296, %2380 ]
  %2397 = phi float [ %2393, %2385 ], [ %2308, %2380 ]
  %2398 = phi float [ %2394, %2385 ], [ %2298, %2380 ]
  %2399 = phi float [ %2389, %2385 ], [ %2281, %2380 ]
  %2400 = phi float [ %2390, %2385 ], [ %2293, %2380 ]
  %2401 = phi float [ %2391, %2385 ], [ %2283, %2380 ]
  %2402 = phi float [ %2386, %2385 ], [ %2264, %2380 ]
  %2403 = phi float [ %2387, %2385 ], [ %2278, %2380 ]
  %2404 = phi float [ %2388, %2385 ], [ %2266, %2380 ]
  %2405 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2277)  ; FMax(a,b)
  %2406 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2292)  ; FMax(a,b)
  %2407 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2307)  ; FMax(a,b)
  %2408 = fcmp fast oge float %2065, 0.000000e+00
  %2409 = and i1 %2408, %1836
  %2410 = fcmp fast ole float %2065, 1.000000e+00
  %2411 = and i1 %2410, %2409
  %2412 = fcmp fast oge float %2066, 0.000000e+00
  %2413 = and i1 %2412, %2411
  %2414 = fcmp fast ole float %2066, 1.000000e+00
  %2415 = and i1 %2414, %2413
  br i1 %2415, label %2416, label %2561, !dx.controlflow.hints !100

; <label>:2416                                    ; preds = %2395
  %2417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2418 = extractvalue %dx.types.CBufRet.f32 %2417, 2
  %2419 = extractvalue %dx.types.CBufRet.f32 %2417, 3
  %2420 = fmul fast float %2418, %2065
  %2421 = fmul fast float %2419, %2066
  %2422 = call float @dx.op.unary.f32(i32 27, float %2420)  ; Round_ni(value)
  %2423 = call float @dx.op.unary.f32(i32 27, float %2421)  ; Round_ni(value)
  %2424 = fptosi float %2422 to i32
  %2425 = fptosi float %2423 to i32
  %2426 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %45, i32 0, i32 %2424, i32 %2425, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2427 = extractvalue %dx.types.ResRet.i32 %2426, 0
  %2428 = and i32 %2427, 65535
  %2429 = lshr i32 %2427, 16
  %2430 = icmp eq i32 %2428, 65535
  br i1 %2430, label %2467, label %2431

; <label>:2431                                    ; preds = %2416
  %2432 = extractvalue %dx.types.CBufRet.f32 %1834, 1
  %2433 = extractvalue %dx.types.CBufRet.f32 %2417, 0
  %2434 = extractvalue %dx.types.CBufRet.f32 %2417, 1
  %2435 = fmul fast float %2433, %2065
  %2436 = fmul fast float %2434, %2066
  %2437 = fmul fast float %2435, 1.250000e-01
  %2438 = fmul fast float %2436, 1.250000e-01
  %2439 = call float @dx.op.unary.f32(i32 27, float %2437)  ; Round_ni(value)
  %2440 = call float @dx.op.unary.f32(i32 27, float %2438)  ; Round_ni(value)
  %2441 = fmul fast float %2439, 8.000000e+00
  %2442 = fmul fast float %2440, 8.000000e+00
  %2443 = and i32 %2427, 255
  %2444 = lshr i32 %2427, 8
  %2445 = and i32 %2444, 255
  %2446 = mul nuw nsw i32 %2443, 9
  %2447 = uitofp i32 %2446 to float
  %2448 = mul nuw nsw i32 %2445, 9
  %2449 = uitofp i32 %2448 to float
  %2450 = fadd fast float %2447, 5.000000e-01
  %2451 = fadd fast float %2450, %2435
  %2452 = fsub fast float %2451, %2441
  %2453 = fadd fast float %2449, 5.000000e-01
  %2454 = fadd fast float %2453, %2436
  %2455 = fsub fast float %2454, %2442
  %2456 = fdiv fast float %2452, %1835
  %2457 = fdiv fast float %2455, %2432
  %2458 = fmul fast float %2093, 4.375000e-01
  %2459 = fadd fast float %2458, 3.125000e-02
  %2460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %55, float %2456, float %2457, float %2459, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2461 = extractvalue %dx.types.ResRet.f32 %2460, 0
  %2462 = extractvalue %dx.types.ResRet.f32 %2460, 1
  %2463 = extractvalue %dx.types.ResRet.f32 %2460, 2
  %2464 = fadd fast float %2461, %2405
  %2465 = fadd fast float %2462, %2406
  %2466 = fadd fast float %2463, %2407
  br label %2467

; <label>:2467                                    ; preds = %2431, %2416
  %2468 = phi float [ %2466, %2431 ], [ %2407, %2416 ]
  %2469 = phi float [ %2465, %2431 ], [ %2406, %2416 ]
  %2470 = phi float [ %2464, %2431 ], [ %2405, %2416 ]
  %2471 = icmp eq i32 %2429, 65535
  br i1 %2471, label %2561, label %2472

; <label>:2472                                    ; preds = %2467
  %2473 = extractvalue %dx.types.CBufRet.f32 %1834, 1
  %2474 = extractvalue %dx.types.CBufRet.f32 %2417, 0
  %2475 = extractvalue %dx.types.CBufRet.f32 %2417, 1
  %2476 = fmul fast float %2474, %2065
  %2477 = fmul fast float %2475, %2066
  %2478 = fmul fast float %2476, 1.250000e-01
  %2479 = fmul fast float %2477, 1.250000e-01
  %2480 = call float @dx.op.unary.f32(i32 27, float %2478)  ; Round_ni(value)
  %2481 = call float @dx.op.unary.f32(i32 27, float %2479)  ; Round_ni(value)
  %2482 = fmul fast float %2480, 8.000000e+00
  %2483 = fmul fast float %2481, 8.000000e+00
  %2484 = fsub fast float %2476, %2482
  %2485 = fsub fast float %2477, %2483
  %2486 = fadd fast float %2484, 5.000000e-01
  %2487 = fadd fast float %2485, 5.000000e-01
  %2488 = and i32 %2429, 255
  %2489 = lshr i32 %2427, 24
  %2490 = mul nuw nsw i32 %2488, 9
  %2491 = uitofp i32 %2490 to float
  %2492 = mul nuw nsw i32 %2489, 9
  %2493 = uitofp i32 %2492 to float
  %2494 = fadd fast float %2486, %2491
  %2495 = fadd fast float %2487, %2493
  %2496 = fdiv fast float %2494, %1835
  %2497 = fdiv fast float %2495, %2473
  %2498 = fmul fast float %2093, 4.375000e-01
  %2499 = fadd fast float %2498, 3.125000e-02
  %2500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %55, float %2496, float %2497, float %2499, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2501 = extractvalue %dx.types.ResRet.f32 %2500, 0
  %2502 = extractvalue %dx.types.ResRet.f32 %2500, 1
  %2503 = extractvalue %dx.types.ResRet.f32 %2500, 2
  %2504 = fadd fast float %2498, 5.312500e-01
  %2505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %55, float %2496, float %2497, float %2504, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2506 = extractvalue %dx.types.ResRet.f32 %2505, 0
  %2507 = extractvalue %dx.types.ResRet.f32 %2505, 1
  %2508 = extractvalue %dx.types.ResRet.f32 %2505, 2
  %2509 = fmul fast float %2506, 2.000000e+00
  %2510 = fmul fast float %2507, 2.000000e+00
  %2511 = fmul fast float %2508, 2.000000e+00
  %2512 = fadd fast float %2509, -1.000000e+00
  %2513 = fadd fast float %2510, -1.000000e+00
  %2514 = fadd fast float %2511, -1.000000e+00
  %2515 = fmul fast float %2512, %2512
  %2516 = fmul fast float %2513, %2513
  %2517 = fadd fast float %2515, %2516
  %2518 = fmul fast float %2514, %2514
  %2519 = fadd fast float %2517, %2518
  %2520 = call float @dx.op.unary.f32(i32 24, float %2519)  ; Sqrt(value)
  %2521 = fcmp fast ogt float %2520, 0.000000e+00
  br i1 %2521, label %2522, label %2526

; <label>:2522                                    ; preds = %2472
  %2523 = fdiv fast float %2512, %2520
  %2524 = fdiv fast float %2513, %2520
  %2525 = fdiv fast float %2514, %2520
  br label %2526

; <label>:2526                                    ; preds = %2522, %2472
  %2527 = phi float [ %2523, %2522 ], [ 0.000000e+00, %2472 ]
  %2528 = phi float [ %2524, %2522 ], [ 0.000000e+00, %2472 ]
  %2529 = phi float [ %2525, %2522 ], [ 0.000000e+00, %2472 ]
  %2530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2531 = extractvalue %dx.types.CBufRet.f32 %2530, 0
  %2532 = extractvalue %dx.types.CBufRet.f32 %2530, 1
  %2533 = fsub fast float %1686, %2531
  %2534 = fsub fast float %1687, %2532
  %2535 = fmul fast float %2533, %2533
  %2536 = fmul fast float %2534, %2534
  %2537 = fadd fast float %2535, %2536
  %2538 = call float @dx.op.unary.f32(i32 24, float %2537)  ; Sqrt(value)
  %2539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2540 = extractvalue %dx.types.CBufRet.f32 %2539, 0
  %2541 = extractvalue %dx.types.CBufRet.f32 %2539, 1
  %2542 = fsub fast float %2538, %2540
  %2543 = fdiv fast float %2542, %2541
  %2544 = call float @dx.op.unary.f32(i32 7, float %2543)  ; Saturate(value)
  %2545 = fmul fast float %2544, 2.000000e+00
  %2546 = fsub fast float 3.000000e+00, %2545
  %2547 = fmul fast float %2544, %2544
  %2548 = fmul fast float %2547, %2546
  %2549 = call float @dx.op.dot3.f32(i32 55, float %2527, float %2528, float %2529, float %1662, float %1663, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %2550 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2549)  ; FMax(a,b)
  %2551 = fmul fast float %2550, 0x400C5BF8A0000000
  %2552 = fmul fast float %2548, %2501
  %2553 = fmul fast float %2552, %2551
  %2554 = fadd fast float %2553, %2470
  %2555 = fmul fast float %2548, %2502
  %2556 = fmul fast float %2555, %2551
  %2557 = fadd fast float %2556, %2469
  %2558 = fmul fast float %2548, %2503
  %2559 = fmul fast float %2558, %2551
  %2560 = fadd fast float %2559, %2468
  br label %2561

; <label>:2561                                    ; preds = %2526, %2467, %2395
  %2562 = phi float [ %2560, %2526 ], [ %2468, %2467 ], [ %2407, %2395 ]
  %2563 = phi float [ %2557, %2526 ], [ %2469, %2467 ], [ %2406, %2395 ]
  %2564 = phi float [ %2554, %2526 ], [ %2470, %2467 ], [ %2405, %2395 ]
  %2565 = fcmp fast ogt float %2052, %2089
  %2566 = and i1 %2408, %2565
  %2567 = and i1 %2410, %2566
  %2568 = and i1 %2412, %2567
  %2569 = and i1 %2414, %2568
  br i1 %2569, label %2570, label %2627, !dx.controlflow.hints !101

; <label>:2570                                    ; preds = %2561
  %2571 = fmul fast float %2091, 0x3FC24924A0000000
  %2572 = fsub fast float %2052, %2089
  %2573 = fdiv fast float %2572, %2571
  %2574 = call float @dx.op.unary.f32(i32 7, float %2573)  ; Saturate(value)
  %2575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2576 = extractvalue %dx.types.CBufRet.f32 %2575, 0
  %2577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2578 = extractvalue %dx.types.CBufRet.f32 %2577, 0
  %2579 = extractvalue %dx.types.CBufRet.f32 %2577, 1
  %2580 = extractvalue %dx.types.CBufRet.f32 %2577, 2
  %2581 = fsub fast float %2576, %2564
  %2582 = fsub fast float %2578, %2402
  %2583 = fsub fast float %2579, %2403
  %2584 = fsub fast float %2580, %2404
  %2585 = fmul fast float %2581, %2574
  %2586 = fmul fast float %2582, %2574
  %2587 = fmul fast float %2583, %2574
  %2588 = fmul fast float %2584, %2574
  %2589 = fadd fast float %2585, %2564
  %2590 = fadd fast float %2586, %2402
  %2591 = fadd fast float %2587, %2403
  %2592 = fadd fast float %2588, %2404
  %2593 = extractvalue %dx.types.CBufRet.f32 %2575, 1
  %2594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2595 = extractvalue %dx.types.CBufRet.f32 %2594, 0
  %2596 = extractvalue %dx.types.CBufRet.f32 %2594, 1
  %2597 = extractvalue %dx.types.CBufRet.f32 %2594, 2
  %2598 = fsub fast float %2593, %2563
  %2599 = fsub fast float %2595, %2399
  %2600 = fsub fast float %2596, %2400
  %2601 = fsub fast float %2597, %2401
  %2602 = fmul fast float %2598, %2574
  %2603 = fmul fast float %2599, %2574
  %2604 = fmul fast float %2600, %2574
  %2605 = fmul fast float %2601, %2574
  %2606 = fadd fast float %2602, %2563
  %2607 = fadd fast float %2603, %2399
  %2608 = fadd fast float %2604, %2400
  %2609 = fadd fast float %2605, %2401
  %2610 = extractvalue %dx.types.CBufRet.f32 %2575, 2
  %2611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2612 = extractvalue %dx.types.CBufRet.f32 %2611, 0
  %2613 = extractvalue %dx.types.CBufRet.f32 %2611, 1
  %2614 = extractvalue %dx.types.CBufRet.f32 %2611, 2
  %2615 = fsub fast float %2610, %2562
  %2616 = fsub fast float %2612, %2396
  %2617 = fsub fast float %2613, %2397
  %2618 = fsub fast float %2614, %2398
  %2619 = fmul fast float %2615, %2574
  %2620 = fmul fast float %2616, %2574
  %2621 = fmul fast float %2617, %2574
  %2622 = fmul fast float %2618, %2574
  %2623 = fadd fast float %2619, %2562
  %2624 = fadd fast float %2620, %2396
  %2625 = fadd fast float %2621, %2397
  %2626 = fadd fast float %2622, %2398
  br label %2627

; <label>:2627                                    ; preds = %2570, %2561
  %2628 = phi float [ %2623, %2570 ], [ %2562, %2561 ]
  %2629 = phi float [ %2624, %2570 ], [ %2396, %2561 ]
  %2630 = phi float [ %2625, %2570 ], [ %2397, %2561 ]
  %2631 = phi float [ %2626, %2570 ], [ %2398, %2561 ]
  %2632 = phi float [ %2606, %2570 ], [ %2563, %2561 ]
  %2633 = phi float [ %2607, %2570 ], [ %2399, %2561 ]
  %2634 = phi float [ %2608, %2570 ], [ %2400, %2561 ]
  %2635 = phi float [ %2609, %2570 ], [ %2401, %2561 ]
  %2636 = phi float [ %2589, %2570 ], [ %2564, %2561 ]
  %2637 = phi float [ %2590, %2570 ], [ %2402, %2561 ]
  %2638 = phi float [ %2591, %2570 ], [ %2403, %2561 ]
  %2639 = phi float [ %2592, %2570 ], [ %2404, %2561 ]
  %2640 = extractvalue %dx.types.CBufRet.f32 %2214, 3
  %2641 = fmul fast float %2640, %2636
  %2642 = fmul fast float %2640, %2632
  %2643 = fmul fast float %2640, %2628
  %2644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2645 = extractvalue %dx.types.CBufRet.f32 %2644, 3
  %2646 = fmul fast float %2641, %2645
  %2647 = fmul fast float %2642, %2645
  %2648 = fmul fast float %2643, %2645
  %2649 = fmul fast float %2637, 1.500000e+00
  %2650 = fmul fast float %2649, %2640
  %2651 = fmul fast float %2650, %2645
  %2652 = fmul fast float %2638, 1.500000e+00
  %2653 = fmul fast float %2652, %2640
  %2654 = fmul fast float %2653, %2645
  %2655 = fmul fast float %2639, 1.500000e+00
  %2656 = fmul fast float %2655, %2640
  %2657 = fmul fast float %2656, %2645
  %2658 = fmul fast float %2633, 1.500000e+00
  %2659 = fmul fast float %2658, %2640
  %2660 = fmul fast float %2659, %2645
  %2661 = fmul fast float %2634, 1.500000e+00
  %2662 = fmul fast float %2661, %2640
  %2663 = fmul fast float %2662, %2645
  %2664 = fmul fast float %2635, 1.500000e+00
  %2665 = fmul fast float %2664, %2640
  %2666 = fmul fast float %2665, %2645
  %2667 = fmul fast float %2629, 1.500000e+00
  %2668 = fmul fast float %2667, %2640
  %2669 = fmul fast float %2668, %2645
  %2670 = fmul fast float %2630, 1.500000e+00
  %2671 = fmul fast float %2670, %2640
  %2672 = fmul fast float %2671, %2645
  %2673 = fmul fast float %2631, 1.500000e+00
  %2674 = fmul fast float %2673, %2640
  %2675 = fmul fast float %2674, %2645
  %2676 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2646)  ; FMax(a,b)
  %2677 = call float @dx.op.dot3.f32(i32 55, float %2651, float %2654, float %2657, float %2651, float %2654, float %2657)  ; Dot3(ax,ay,az,bx,by,bz)
  %2678 = fcmp fast oeq float %2677, 0.000000e+00
  %2679 = fcmp fast oeq float %2676, 0.000000e+00
  %2680 = or i1 %2679, %2678
  br i1 %2680, label %2710, label %2681

; <label>:2681                                    ; preds = %2627
  %2682 = fsub fast float -0.000000e+00, %2657
  %2683 = fsub fast float -0.000000e+00, %2651
  %2684 = call float @dx.op.unary.f32(i32 24, float %2677)  ; Sqrt(value)
  %2685 = fdiv fast float %2684, %2676
  %2686 = fcmp fast ogt float %2685, 0x3FFB6F8900000000
  %2687 = select i1 %2686, float 0x3FFB6F8900000000, float %2685
  %2688 = fmul fast float %2687, 0x3FE8A23460000000
  %2689 = call float @dx.op.unary.f32(i32 7, float %2688)  ; Saturate(value)
  %2690 = call float @dx.op.binary.f32(i32 35, float %2687, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2691 = fmul fast float %2689, %2676
  %2692 = fmul fast float %2690, 0x3FF279A740000000
  %2693 = fadd fast float %2692, -1.000000e+00
  %2694 = call float @dx.op.dot3.f32(i32 55, float %2682, float %2683, float %2654, float %2682, float %2683, float %2654)  ; Dot3(ax,ay,az,bx,by,bz)
  %2695 = call float @dx.op.unary.f32(i32 25, float %2694)  ; Rsqrt(value)
  %2696 = fmul fast float %2695, %2682
  %2697 = fmul fast float %2695, %2683
  %2698 = fmul fast float %2695, %2654
  %2699 = fmul fast float %2693, %2693
  %2700 = fsub fast float 1.000000e+00, %2699
  %2701 = fmul fast float %2690, 0x40005F8BE0000000
  %2702 = fsub fast float 0x400C5BF8A0000000, %2701
  %2703 = fdiv fast float %2691, %2702
  %2704 = fmul fast float %2703, 0x3FEE31C3C0000000
  %2705 = fmul fast float %2704, %2700
  %2706 = fmul fast float %2690, 0x3FDACB7480000000
  %2707 = fadd fast float %2706, 0xBFD7347680000000
  %2708 = fmul fast float %2707, %2703
  %2709 = fmul fast float %2708, %2700
  br label %2710

; <label>:2710                                    ; preds = %2681, %2627
  %2711 = phi float [ %2696, %2681 ], [ 0.000000e+00, %2627 ]
  %2712 = phi float [ %2697, %2681 ], [ 0.000000e+00, %2627 ]
  %2713 = phi float [ %2698, %2681 ], [ 0.000000e+00, %2627 ]
  %2714 = phi float [ %2705, %2681 ], [ 0.000000e+00, %2627 ]
  %2715 = phi float [ %2709, %2681 ], [ 0.000000e+00, %2627 ]
  %2716 = call float @dx.op.dot3.f32(i32 55, float %2711, float %2712, float %2713, float %1662, float %1663, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %2717 = fmul fast float %2716, %2716
  %2718 = fmul fast float %2717, 0x3FEE471020000000
  %2719 = fadd fast float %2718, 0xBFD42F6020000000
  %2720 = fmul fast float %2676, 0x3FD20DD760000000
  %2721 = fmul fast float %2719, %2715
  %2722 = fmul fast float %2714, 0x3FDF454380000000
  %2723 = fmul fast float %2722, %2716
  %2724 = fadd fast float %2723, %2720
  %2725 = fadd fast float %2724, %2721
  %2726 = call float @dx.op.dot3.f32(i32 55, float %2711, float %2712, float %2713, float %1676, float %1677, float %1678)  ; Dot3(ax,ay,az,bx,by,bz)
  %2727 = fmul fast float %2726, 0x3FDF454380000000
  %2728 = fmul fast float %2726, %2726
  %2729 = fmul fast float %2728, 0x3FEE471020000000
  %2730 = fadd fast float %2729, 0xBFD42F6020000000
  %2731 = call float @dx.op.dot3.f32(i32 55, float %2676, float %2714, float %2715, float 0x3FD20DD760000000, float %2727, float %2730)  ; Dot3(ax,ay,az,bx,by,bz)
  %2732 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2647)  ; FMax(a,b)
  %2733 = call float @dx.op.dot3.f32(i32 55, float %2660, float %2663, float %2666, float %2660, float %2663, float %2666)  ; Dot3(ax,ay,az,bx,by,bz)
  %2734 = fcmp fast oeq float %2733, 0.000000e+00
  %2735 = fcmp fast oeq float %2732, 0.000000e+00
  %2736 = or i1 %2735, %2734
  br i1 %2736, label %2766, label %2737

; <label>:2737                                    ; preds = %2710
  %2738 = fsub fast float -0.000000e+00, %2666
  %2739 = fsub fast float -0.000000e+00, %2660
  %2740 = call float @dx.op.unary.f32(i32 24, float %2733)  ; Sqrt(value)
  %2741 = fdiv fast float %2740, %2732
  %2742 = fcmp fast ogt float %2741, 0x3FFB6F8900000000
  %2743 = select i1 %2742, float 0x3FFB6F8900000000, float %2741
  %2744 = fmul fast float %2743, 0x3FE8A23460000000
  %2745 = call float @dx.op.unary.f32(i32 7, float %2744)  ; Saturate(value)
  %2746 = call float @dx.op.binary.f32(i32 35, float %2743, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2747 = fmul fast float %2745, %2732
  %2748 = fmul fast float %2746, 0x3FF279A740000000
  %2749 = fadd fast float %2748, -1.000000e+00
  %2750 = call float @dx.op.dot3.f32(i32 55, float %2738, float %2739, float %2663, float %2738, float %2739, float %2663)  ; Dot3(ax,ay,az,bx,by,bz)
  %2751 = call float @dx.op.unary.f32(i32 25, float %2750)  ; Rsqrt(value)
  %2752 = fmul fast float %2751, %2738
  %2753 = fmul fast float %2751, %2739
  %2754 = fmul fast float %2751, %2663
  %2755 = fmul fast float %2749, %2749
  %2756 = fsub fast float 1.000000e+00, %2755
  %2757 = fmul fast float %2746, 0x40005F8BE0000000
  %2758 = fsub fast float 0x400C5BF8A0000000, %2757
  %2759 = fdiv fast float %2747, %2758
  %2760 = fmul fast float %2759, 0x3FEE31C3C0000000
  %2761 = fmul fast float %2760, %2756
  %2762 = fmul fast float %2746, 0x3FDACB7480000000
  %2763 = fadd fast float %2762, 0xBFD7347680000000
  %2764 = fmul fast float %2763, %2759
  %2765 = fmul fast float %2764, %2756
  br label %2766

; <label>:2766                                    ; preds = %2737, %2710
  %2767 = phi float [ %2752, %2737 ], [ 0.000000e+00, %2710 ]
  %2768 = phi float [ %2753, %2737 ], [ 0.000000e+00, %2710 ]
  %2769 = phi float [ %2754, %2737 ], [ 0.000000e+00, %2710 ]
  %2770 = phi float [ %2761, %2737 ], [ 0.000000e+00, %2710 ]
  %2771 = phi float [ %2765, %2737 ], [ 0.000000e+00, %2710 ]
  %2772 = call float @dx.op.dot3.f32(i32 55, float %2767, float %2768, float %2769, float %1662, float %1663, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %2773 = fmul fast float %2772, %2772
  %2774 = fmul fast float %2773, 0x3FEE471020000000
  %2775 = fadd fast float %2774, 0xBFD42F6020000000
  %2776 = fmul fast float %2732, 0x3FD20DD760000000
  %2777 = fmul fast float %2775, %2771
  %2778 = fmul fast float %2770, 0x3FDF454380000000
  %2779 = fmul fast float %2778, %2772
  %2780 = fadd fast float %2779, %2776
  %2781 = fadd fast float %2780, %2777
  %2782 = call float @dx.op.dot3.f32(i32 55, float %2767, float %2768, float %2769, float %1676, float %1677, float %1678)  ; Dot3(ax,ay,az,bx,by,bz)
  %2783 = fmul fast float %2782, 0x3FDF454380000000
  %2784 = fmul fast float %2782, %2782
  %2785 = fmul fast float %2784, 0x3FEE471020000000
  %2786 = fadd fast float %2785, 0xBFD42F6020000000
  %2787 = call float @dx.op.dot3.f32(i32 55, float %2732, float %2770, float %2771, float 0x3FD20DD760000000, float %2783, float %2786)  ; Dot3(ax,ay,az,bx,by,bz)
  %2788 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2648)  ; FMax(a,b)
  %2789 = call float @dx.op.dot3.f32(i32 55, float %2669, float %2672, float %2675, float %2669, float %2672, float %2675)  ; Dot3(ax,ay,az,bx,by,bz)
  %2790 = fcmp fast oeq float %2789, 0.000000e+00
  %2791 = fcmp fast oeq float %2788, 0.000000e+00
  %2792 = or i1 %2791, %2790
  br i1 %2792, label %2822, label %2793

; <label>:2793                                    ; preds = %2766
  %2794 = fsub fast float -0.000000e+00, %2675
  %2795 = fsub fast float -0.000000e+00, %2669
  %2796 = call float @dx.op.unary.f32(i32 24, float %2789)  ; Sqrt(value)
  %2797 = fdiv fast float %2796, %2788
  %2798 = fcmp fast ogt float %2797, 0x3FFB6F8900000000
  %2799 = select i1 %2798, float 0x3FFB6F8900000000, float %2797
  %2800 = fmul fast float %2799, 0x3FE8A23460000000
  %2801 = call float @dx.op.unary.f32(i32 7, float %2800)  ; Saturate(value)
  %2802 = call float @dx.op.binary.f32(i32 35, float %2799, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2803 = fmul fast float %2801, %2788
  %2804 = fmul fast float %2802, 0x3FF279A740000000
  %2805 = fadd fast float %2804, -1.000000e+00
  %2806 = call float @dx.op.dot3.f32(i32 55, float %2794, float %2795, float %2672, float %2794, float %2795, float %2672)  ; Dot3(ax,ay,az,bx,by,bz)
  %2807 = call float @dx.op.unary.f32(i32 25, float %2806)  ; Rsqrt(value)
  %2808 = fmul fast float %2807, %2794
  %2809 = fmul fast float %2807, %2795
  %2810 = fmul fast float %2807, %2672
  %2811 = fmul fast float %2805, %2805
  %2812 = fsub fast float 1.000000e+00, %2811
  %2813 = fmul fast float %2802, 0x40005F8BE0000000
  %2814 = fsub fast float 0x400C5BF8A0000000, %2813
  %2815 = fdiv fast float %2803, %2814
  %2816 = fmul fast float %2815, 0x3FEE31C3C0000000
  %2817 = fmul fast float %2816, %2812
  %2818 = fmul fast float %2802, 0x3FDACB7480000000
  %2819 = fadd fast float %2818, 0xBFD7347680000000
  %2820 = fmul fast float %2819, %2815
  %2821 = fmul fast float %2820, %2812
  br label %2822

; <label>:2822                                    ; preds = %2793, %2766
  %2823 = phi float [ %2808, %2793 ], [ 0.000000e+00, %2766 ]
  %2824 = phi float [ %2809, %2793 ], [ 0.000000e+00, %2766 ]
  %2825 = phi float [ %2810, %2793 ], [ 0.000000e+00, %2766 ]
  %2826 = phi float [ %2817, %2793 ], [ 0.000000e+00, %2766 ]
  %2827 = phi float [ %2821, %2793 ], [ 0.000000e+00, %2766 ]
  %2828 = call float @dx.op.dot3.f32(i32 55, float %2823, float %2824, float %2825, float %1662, float %1663, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %2829 = fmul fast float %2828, %2828
  %2830 = fmul fast float %2829, 0x3FEE471020000000
  %2831 = fadd fast float %2830, 0xBFD42F6020000000
  %2832 = fmul fast float %2788, 0x3FD20DD760000000
  %2833 = fmul fast float %2831, %2827
  %2834 = fmul fast float %2826, 0x3FDF454380000000
  %2835 = fmul fast float %2834, %2828
  %2836 = fadd fast float %2835, %2832
  %2837 = fadd fast float %2836, %2833
  %2838 = call float @dx.op.dot3.f32(i32 55, float %2823, float %2824, float %2825, float %1676, float %1677, float %1678)  ; Dot3(ax,ay,az,bx,by,bz)
  %2839 = fmul fast float %2838, 0x3FDF454380000000
  %2840 = fmul fast float %2838, %2838
  %2841 = fmul fast float %2840, 0x3FEE471020000000
  %2842 = fadd fast float %2841, 0xBFD42F6020000000
  %2843 = call float @dx.op.dot3.f32(i32 55, float %2788, float %2826, float %2827, float 0x3FD20DD760000000, float %2839, float %2842)  ; Dot3(ax,ay,az,bx,by,bz)
  %2844 = call float @dx.op.binary.f32(i32 35, float %2725, float 0.000000e+00)  ; FMax(a,b)
  %2845 = call float @dx.op.binary.f32(i32 35, float %2781, float 0.000000e+00)  ; FMax(a,b)
  %2846 = call float @dx.op.binary.f32(i32 35, float %2837, float 0.000000e+00)  ; FMax(a,b)
  %2847 = call float @dx.op.binary.f32(i32 35, float %2731, float 0.000000e+00)  ; FMax(a,b)
  %2848 = call float @dx.op.binary.f32(i32 35, float %2787, float 0.000000e+00)  ; FMax(a,b)
  %2849 = call float @dx.op.binary.f32(i32 35, float %2843, float 0.000000e+00)  ; FMax(a,b)
  %2850 = fsub fast float %2046, %2844
  %2851 = fsub fast float %2047, %2845
  %2852 = fsub fast float %2048, %2846
  %2853 = fmul fast float %2850, %1727
  %2854 = fmul fast float %2851, %1727
  %2855 = fmul fast float %2852, %1727
  %2856 = fadd fast float %2853, %2844
  %2857 = fadd fast float %2854, %2845
  %2858 = fadd fast float %2855, %2846
  %2859 = fsub fast float %2043, %2847
  %2860 = fsub fast float %2044, %2848
  %2861 = fsub fast float %2045, %2849
  %2862 = fmul fast float %2859, %1727
  %2863 = fmul fast float %2860, %1727
  %2864 = fmul fast float %2861, %1727
  %2865 = fadd fast float %2862, %2847
  %2866 = fadd fast float %2863, %2848
  %2867 = fadd fast float %2864, %2849
  br label %2868

; <label>:2868                                    ; preds = %2822, %2042
  %2869 = phi float [ %2865, %2822 ], [ %2043, %2042 ]
  %2870 = phi float [ %2866, %2822 ], [ %2044, %2042 ]
  %2871 = phi float [ %2867, %2822 ], [ %2045, %2042 ]
  %2872 = phi float [ %2856, %2822 ], [ %2046, %2042 ]
  %2873 = phi float [ %2857, %2822 ], [ %2047, %2042 ]
  %2874 = phi float [ %2858, %2822 ], [ %2048, %2042 ]
  %2875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2876 = extractvalue %dx.types.CBufRet.f32 %2875, 0
  %2877 = call float @dx.op.binary.f32(i32 36, float %1659, float %2876)  ; FMin(a,b)
  %2878 = fsub fast float 1.000000e+00, %1679
  %2879 = fmul fast float %2877, %2878
  %2880 = fsub fast float 1.000000e+00, %2879
  %2881 = bitcast float %2880 to i32
  %2882 = sub nsw i32 2129859010, %2881
  %2883 = bitcast i32 %2882 to float
  %2884 = call float @dx.op.binary.f32(i32 36, float %1660, float %2876)  ; FMin(a,b)
  %2885 = fmul fast float %2884, %2878
  %2886 = fsub fast float 1.000000e+00, %2885
  %2887 = bitcast float %2886 to i32
  %2888 = sub nsw i32 2129859010, %2887
  %2889 = bitcast i32 %2888 to float
  %2890 = call float @dx.op.binary.f32(i32 36, float %1661, float %2876)  ; FMin(a,b)
  %2891 = fmul fast float %2890, %2878
  %2892 = fsub fast float 1.000000e+00, %2891
  %2893 = bitcast float %2892 to i32
  %2894 = sub nsw i32 2129859010, %2893
  %2895 = bitcast i32 %2894 to float
  %2896 = fmul fast float %2872, %1679
  %2897 = fmul fast float %2896, %2883
  %2898 = fmul fast float %2873, %1679
  %2899 = fmul fast float %2898, %2889
  %2900 = fmul fast float %2874, %1679
  %2901 = fmul fast float %2900, %2895
  %2902 = call float @dx.op.binary.f32(i32 36, float %1656, float %2876)  ; FMin(a,b)
  %2903 = fmul fast float %2902, %2878
  %2904 = fsub fast float 1.000000e+00, %2903
  %2905 = bitcast float %2904 to i32
  %2906 = sub nsw i32 2129859010, %2905
  %2907 = bitcast i32 %2906 to float
  %2908 = call float @dx.op.binary.f32(i32 36, float %1657, float %2876)  ; FMin(a,b)
  %2909 = fmul fast float %2908, %2878
  %2910 = fsub fast float 1.000000e+00, %2909
  %2911 = bitcast float %2910 to i32
  %2912 = sub nsw i32 2129859010, %2911
  %2913 = bitcast i32 %2912 to float
  %2914 = call float @dx.op.binary.f32(i32 36, float %1668, float %2876)  ; FMin(a,b)
  %2915 = fmul fast float %2914, %2878
  %2916 = fsub fast float 1.000000e+00, %2915
  %2917 = bitcast float %2916 to i32
  %2918 = sub nsw i32 2129859010, %2917
  %2919 = bitcast i32 %2918 to float
  %2920 = fmul fast float %2869, %1679
  %2921 = fmul fast float %2920, %2907
  %2922 = fmul fast float %2870, %1679
  %2923 = fmul fast float %2922, %2913
  %2924 = fmul fast float %2871, %1679
  %2925 = fmul fast float %2924, %2919
  %2926 = call float @dx.op.dot3.f32(i32 55, float %2897, float %2899, float %2901, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2927 = select i1 %228, float 0.000000e+00, float %2897
  %2928 = select i1 %228, float %2926, float %2899
  %2929 = select i1 %228, float 0.000000e+00, float %2901
  %2930 = call float @dx.op.dot3.f32(i32 55, float %2921, float %2923, float %2925, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2931 = select i1 %228, float 0.000000e+00, float %2921
  %2932 = select i1 %228, float %2930, float %2923
  %2933 = select i1 %228, float 0.000000e+00, float %2925
  %2934 = fmul fast float %1670, 9.843750e-01
  %2935 = fmul fast float %1665, 9.843750e-01
  %2936 = fadd fast float %2934, 7.812500e-03
  %2937 = fadd fast float %2935, 7.812500e-03
  %2938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %55, float %2936, float %2937, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2939 = extractvalue %dx.types.ResRet.f32 %2938, 2
  %2940 = extractvalue %dx.types.ResRet.f32 %2938, 3
  %2941 = fmul fast float %2939, %1656
  %2942 = fmul fast float %2939, %1657
  %2943 = fmul fast float %2939, %1668
  %2944 = fadd fast float %2941, %2940
  %2945 = fadd fast float %2942, %2940
  %2946 = fadd fast float %2943, %2940
  %2947 = call float @dx.op.binary.f32(i32 35, float %2945, float %2946)  ; FMax(a,b)
  %2948 = call float @dx.op.binary.f32(i32 35, float %2944, float %2947)  ; FMax(a,b)
  %2949 = fsub fast float 1.000000e+00, %2948
  %2950 = fmul fast float %2949, %2927
  %2951 = fmul fast float %2949, %2928
  %2952 = fmul fast float %2949, %2929
  %2953 = fmul fast float %2944, %2931
  %2954 = fmul fast float %2945, %2932
  %2955 = fmul fast float %2946, %2933
  %2956 = fmul fast float %2950, %1025
  %2957 = fmul fast float %2951, %1025
  %2958 = fmul fast float %2952, %1025
  %2959 = fadd fast float %2953, %1021
  %2960 = fmul fast float %2959, %1025
  %2961 = fadd fast float %2954, %1022
  %2962 = fmul fast float %2961, %1025
  %2963 = fadd fast float %2955, %1023
  %2964 = fmul fast float %2963, %1025
  %2965 = bitcast i32 %1682 to float
  %2966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2967 = extractvalue %dx.types.CBufRet.f32 %2966, 3
  %2968 = fcmp fast oeq float %2967, 0.000000e+00
  br i1 %2968, label %3963, label %2969

; <label>:2969                                    ; preds = %2868
  %2970 = extractvalue %dx.types.CBufRet.f32 %2966, 0
  %2971 = extractvalue %dx.types.CBufRet.f32 %2966, 1
  %2972 = extractvalue %dx.types.CBufRet.f32 %2966, 2
  %2973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2974 = extractvalue %dx.types.CBufRet.f32 %2973, 0
  %2975 = extractvalue %dx.types.CBufRet.f32 %2973, 1
  %2976 = extractvalue %dx.types.CBufRet.f32 %2973, 2
  %2977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2978 = extractvalue %dx.types.CBufRet.f32 %2977, 0
  %2979 = extractvalue %dx.types.CBufRet.f32 %2977, 1
  %2980 = call float @dx.op.dot3.f32(i32 55, float %2974, float %2975, float %2976, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2981 = select i1 %228, float %2978, float %2974
  %2982 = select i1 %228, float %2980, float %2975
  %2983 = select i1 %228, float %2979, float %2976
  %2984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2985 = extractvalue %dx.types.CBufRet.f32 %2984, 2
  %2986 = fmul fast float %2985, %67
  %2987 = fmul fast float %2985, %68
  %2988 = fmul fast float %2985, %69
  %2989 = fadd fast float %2986, %135
  %2990 = fadd fast float %2987, %136
  %2991 = fadd fast float %2988, %137
  %2992 = fcmp fast olt float %2967, 0.000000e+00
  br i1 %2992, label %3614, label %2993

; <label>:2993                                    ; preds = %2969
  %2994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2995 = extractvalue %dx.types.CBufRet.f32 %2994, 0
  %2996 = extractvalue %dx.types.CBufRet.f32 %2994, 1
  %2997 = extractvalue %dx.types.CBufRet.f32 %2994, 2
  %2998 = extractvalue %dx.types.CBufRet.f32 %2994, 3
  %2999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3000 = extractvalue %dx.types.CBufRet.f32 %2999, 0
  %3001 = extractvalue %dx.types.CBufRet.f32 %2999, 1
  %3002 = extractvalue %dx.types.CBufRet.f32 %2999, 2
  %3003 = extractvalue %dx.types.CBufRet.f32 %2999, 3
  %3004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3005 = extractvalue %dx.types.CBufRet.f32 %3004, 0
  %3006 = extractvalue %dx.types.CBufRet.f32 %3004, 1
  %3007 = extractvalue %dx.types.CBufRet.f32 %3004, 2
  %3008 = extractvalue %dx.types.CBufRet.f32 %3004, 3
  %3009 = fmul fast float %2995, %2989
  %3010 = call float @dx.op.tertiary.f32(i32 46, float %2990, float %2996, float %3009)  ; FMad(a,b,c)
  %3011 = call float @dx.op.tertiary.f32(i32 46, float %2991, float %2997, float %3010)  ; FMad(a,b,c)
  %3012 = fadd fast float %3011, %2998
  %3013 = fmul fast float %3000, %2989
  %3014 = call float @dx.op.tertiary.f32(i32 46, float %2990, float %3001, float %3013)  ; FMad(a,b,c)
  %3015 = call float @dx.op.tertiary.f32(i32 46, float %2991, float %3002, float %3014)  ; FMad(a,b,c)
  %3016 = fadd fast float %3015, %3003
  %3017 = fmul fast float %3005, %2989
  %3018 = call float @dx.op.tertiary.f32(i32 46, float %2990, float %3006, float %3017)  ; FMad(a,b,c)
  %3019 = call float @dx.op.tertiary.f32(i32 46, float %2991, float %3007, float %3018)  ; FMad(a,b,c)
  %3020 = fadd fast float %3019, %3008
  %3021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3022 = extractvalue %dx.types.CBufRet.f32 %3021, 0
  %3023 = extractvalue %dx.types.CBufRet.f32 %3021, 1
  %3024 = extractvalue %dx.types.CBufRet.f32 %3021, 3
  %3025 = fmul fast float %3024, %3012
  %3026 = fmul fast float %3024, %3016
  %3027 = fadd fast float %3025, %3022
  %3028 = fadd fast float %3026, %3023
  %3029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3030 = extractvalue %dx.types.CBufRet.f32 %3029, 0
  %3031 = extractvalue %dx.types.CBufRet.f32 %3029, 1
  %3032 = extractvalue %dx.types.CBufRet.f32 %3029, 3
  %3033 = fmul fast float %3032, %3012
  %3034 = fmul fast float %3032, %3016
  %3035 = fadd fast float %3033, %3030
  %3036 = fadd fast float %3034, %3031
  %3037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3038 = extractvalue %dx.types.CBufRet.f32 %3037, 1
  %3039 = fsub fast float %3038, %3020
  %3040 = extractvalue %dx.types.CBufRet.f32 %3037, 2
  %3041 = fmul fast float %3039, %3040
  %3042 = fsub fast float 1.000000e+00, %3041
  %3043 = call float @dx.op.unary.f32(i32 7, float %3042)  ; Saturate(value)
  %3044 = extractvalue %dx.types.CBufRet.f32 %3029, 2
  %3045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3046 = extractvalue %dx.types.CBufRet.f32 %3045, 2
  %3047 = fadd fast float %3046, %3044
  %3048 = fcmp fast ogt float %3047, 0.000000e+00
  br i1 %3048, label %3049, label %3073

; <label>:3049                                    ; preds = %2993
  %3050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3051 = extractvalue %dx.types.CBufRet.f32 %3050, 0
  %3052 = extractvalue %dx.types.CBufRet.f32 %3050, 1
  %3053 = fsub fast float %3035, %3051
  %3054 = fsub fast float %3036, %3052
  %3055 = fcmp fast olt float %3053, 0.000000e+00
  %3056 = fcmp fast olt float %3054, 0.000000e+00
  %3057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3058 = extractvalue %dx.types.CBufRet.f32 %3057, 0
  %3059 = extractvalue %dx.types.CBufRet.f32 %3057, 1
  %3060 = extractvalue %dx.types.CBufRet.f32 %3057, 2
  %3061 = extractvalue %dx.types.CBufRet.f32 %3057, 3
  %3062 = select i1 %3055, float %3058, float %3060
  %3063 = select i1 %3056, float %3059, float %3061
  %3064 = fmul fast float %3062, %3053
  %3065 = fmul fast float %3063, %3054
  %3066 = call float @dx.op.unary.f32(i32 6, float %3064)  ; FAbs(value)
  %3067 = call float @dx.op.unary.f32(i32 6, float %3065)  ; FAbs(value)
  %3068 = extractvalue %dx.types.CBufRet.f32 %2984, 0
  %3069 = call float @dx.op.binary.f32(i32 35, float %3066, float %3067)  ; FMax(a,b)
  %3070 = fsub fast float %3068, %3069
  %3071 = call float @dx.op.unary.f32(i32 7, float %3070)  ; Saturate(value)
  %3072 = fmul fast float %3071, %3043
  br label %3073

; <label>:3073                                    ; preds = %3049, %2993
  %3074 = phi float [ %3072, %3049 ], [ 0.000000e+00, %2993 ]
  %3075 = extractvalue %dx.types.CBufRet.f32 %3021, 2
  %3076 = extractvalue %dx.types.CBufRet.f32 %3045, 1
  %3077 = fadd fast float %3076, %3075
  %3078 = fcmp fast ogt float %3077, 0.000000e+00
  %3079 = extractvalue %dx.types.CBufRet.f32 %2984, 0
  br i1 %3078, label %3080, label %3103

; <label>:3080                                    ; preds = %3073
  %3081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3082 = extractvalue %dx.types.CBufRet.f32 %3081, 0
  %3083 = extractvalue %dx.types.CBufRet.f32 %3081, 1
  %3084 = fsub fast float %3027, %3082
  %3085 = fsub fast float %3028, %3083
  %3086 = fcmp fast olt float %3084, 0.000000e+00
  %3087 = fcmp fast olt float %3085, 0.000000e+00
  %3088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3089 = extractvalue %dx.types.CBufRet.f32 %3088, 0
  %3090 = extractvalue %dx.types.CBufRet.f32 %3088, 1
  %3091 = extractvalue %dx.types.CBufRet.f32 %3088, 2
  %3092 = extractvalue %dx.types.CBufRet.f32 %3088, 3
  %3093 = select i1 %3086, float %3089, float %3091
  %3094 = select i1 %3087, float %3090, float %3092
  %3095 = fmul fast float %3093, %3084
  %3096 = fmul fast float %3094, %3085
  %3097 = call float @dx.op.unary.f32(i32 6, float %3095)  ; FAbs(value)
  %3098 = call float @dx.op.unary.f32(i32 6, float %3096)  ; FAbs(value)
  %3099 = call float @dx.op.binary.f32(i32 35, float %3097, float %3098)  ; FMax(a,b)
  %3100 = fsub fast float %3079, %3099
  %3101 = call float @dx.op.unary.f32(i32 7, float %3100)  ; Saturate(value)
  %3102 = fmul fast float %3101, %3043
  br label %3103

; <label>:3103                                    ; preds = %3080, %3073
  %3104 = phi float [ %3102, %3080 ], [ 0.000000e+00, %3073 ]
  %3105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3106 = extractvalue %dx.types.CBufRet.f32 %3105, 1
  %3107 = call float @dx.op.unary.f32(i32 7, float %3106)  ; Saturate(value)
  %3108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3109 = extractvalue %dx.types.CBufRet.f32 %3108, 0
  %3110 = extractvalue %dx.types.CBufRet.f32 %3108, 1
  %3111 = fsub fast float %3012, %3109
  %3112 = fsub fast float %3016, %3110
  %3113 = fcmp fast olt float %3111, 0.000000e+00
  %3114 = fcmp fast olt float %3112, 0.000000e+00
  %3115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3116 = extractvalue %dx.types.CBufRet.f32 %3115, 0
  %3117 = extractvalue %dx.types.CBufRet.f32 %3115, 1
  %3118 = extractvalue %dx.types.CBufRet.f32 %3115, 2
  %3119 = extractvalue %dx.types.CBufRet.f32 %3115, 3
  %3120 = select i1 %3113, float %3116, float %3118
  %3121 = select i1 %3114, float %3117, float %3119
  %3122 = fmul fast float %3120, %3111
  %3123 = fmul fast float %3121, %3112
  %3124 = call float @dx.op.unary.f32(i32 6, float %3122)  ; FAbs(value)
  %3125 = call float @dx.op.unary.f32(i32 6, float %3123)  ; FAbs(value)
  %3126 = call float @dx.op.binary.f32(i32 35, float %3124, float %3125)  ; FMax(a,b)
  %3127 = fsub fast float %3079, %3126
  %3128 = call float @dx.op.unary.f32(i32 7, float %3127)  ; Saturate(value)
  %3129 = call float @dx.op.binary.f32(i32 36, float %3128, float %3107)  ; FMin(a,b)
  %3130 = fmul fast float %3129, %3043
  %3131 = fsub fast float %3104, %3130
  %3132 = fsub fast float %3074, %3104
  %3133 = fsub fast float %3132, %3130
  %3134 = call float @dx.op.binary.f32(i32 35, float %3104, float %3074)  ; FMax(a,b)
  %3135 = call float @dx.op.binary.f32(i32 35, float %3130, float %3134)  ; FMax(a,b)
  %3136 = fcmp fast olt float %3135, 1.000000e+00
  br i1 %3136, label %3137, label %3535, !dx.controlflow.hints !102

; <label>:3137                                    ; preds = %3103
  %3138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3139 = extractvalue %dx.types.CBufRet.f32 %3138, 0
  %3140 = fcmp fast une float %3139, 0.000000e+00
  br i1 %3140, label %3141, label %3535, !dx.controlflow.hints !103

; <label>:3141                                    ; preds = %3137
  %3142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3143 = extractvalue %dx.types.CBufRet.f32 %3142, 0
  %3144 = extractvalue %dx.types.CBufRet.f32 %3142, 1
  %3145 = extractvalue %dx.types.CBufRet.f32 %3142, 2
  %3146 = extractvalue %dx.types.CBufRet.f32 %3142, 3
  %3147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3148 = extractvalue %dx.types.CBufRet.f32 %3147, 0
  %3149 = extractvalue %dx.types.CBufRet.f32 %3147, 1
  %3150 = extractvalue %dx.types.CBufRet.f32 %3147, 2
  %3151 = extractvalue %dx.types.CBufRet.f32 %3147, 3
  %3152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3153 = extractvalue %dx.types.CBufRet.f32 %3152, 0
  %3154 = extractvalue %dx.types.CBufRet.f32 %3152, 1
  %3155 = extractvalue %dx.types.CBufRet.f32 %3152, 2
  %3156 = extractvalue %dx.types.CBufRet.f32 %3152, 3
  %3157 = fmul fast float %3143, %2989
  %3158 = call float @dx.op.tertiary.f32(i32 46, float %2990, float %3144, float %3157)  ; FMad(a,b,c)
  %3159 = call float @dx.op.tertiary.f32(i32 46, float %2991, float %3145, float %3158)  ; FMad(a,b,c)
  %3160 = fadd fast float %3159, %3146
  %3161 = fmul fast float %3148, %2989
  %3162 = call float @dx.op.tertiary.f32(i32 46, float %2990, float %3149, float %3161)  ; FMad(a,b,c)
  %3163 = call float @dx.op.tertiary.f32(i32 46, float %2991, float %3150, float %3162)  ; FMad(a,b,c)
  %3164 = fadd fast float %3163, %3151
  %3165 = fmul fast float %3153, %2989
  %3166 = call float @dx.op.tertiary.f32(i32 46, float %2990, float %3154, float %3165)  ; FMad(a,b,c)
  %3167 = call float @dx.op.tertiary.f32(i32 46, float %2991, float %3155, float %3166)  ; FMad(a,b,c)
  %3168 = fadd fast float %3167, %3156
  %3169 = fcmp fast oge float %3160, 1.000000e+00
  %3170 = fcmp fast oge float %3164, 1.000000e+00
  %3171 = or i1 %3169, %3170
  %3172 = fcmp fast olt float %3160, 0.000000e+00
  %3173 = fcmp fast olt float %3164, 0.000000e+00
  %3174 = or i1 %3172, %3173
  %3175 = or i1 %3171, %3174
  br i1 %3175, label %3535, label %3176, !dx.controlflow.hints !104

; <label>:3176                                    ; preds = %3141
  %3177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3178 = extractvalue %dx.types.CBufRet.f32 %3177, 0
  %3179 = extractvalue %dx.types.CBufRet.f32 %3177, 1
  %3180 = extractvalue %dx.types.CBufRet.f32 %3177, 2
  %3181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3182 = extractvalue %dx.types.CBufRet.i32 %3181, 2
  %3183 = uitofp i32 %3182 to float
  %3184 = extractvalue %dx.types.CBufRet.i32 %3181, 3
  %3185 = uitofp i32 %3184 to float
  %3186 = extractvalue %dx.types.CBufRet.f32 %3177, 3
  %3187 = fmul fast float %3186, 2.000000e+00
  %3188 = fsub fast float %3160, %3178
  %3189 = fsub fast float %3164, %3179
  %3190 = fmul fast float %3187, %3188
  %3191 = fmul fast float %3187, %3189
  %3192 = fdiv fast float 1.000000e+00, %2972
  %3193 = fmul fast float %3191, %3192
  %3194 = call float @dx.op.unary.f32(i32 6, float %3193)  ; FAbs(value)
  %3195 = fmul fast float %3180, %2991
  %3196 = fmul fast float %3195, %3187
  %3197 = call float @dx.op.unary.f32(i32 6, float %3196)  ; FAbs(value)
  %3198 = call float @dx.op.unary.f32(i32 6, float %3190)  ; FAbs(value)
  %3199 = call float @dx.op.binary.f32(i32 35, float %3197, float %3194)  ; FMax(a,b)
  %3200 = call float @dx.op.binary.f32(i32 35, float %3198, float %3199)  ; FMax(a,b)
  %3201 = fmul fast float %3200, 2.000000e+00
  %3202 = call float @dx.op.unary.f32(i32 23, float %3201)  ; Log(value)
  %3203 = call float @dx.op.binary.f32(i32 35, float %3202, float %3183)  ; FMax(a,b)
  %3204 = call float @dx.op.unary.f32(i32 22, float %3203)  ; Frc(value)
  %3205 = fadd fast float %3204, 0xBFEA666660000000
  %3206 = fmul fast float %3205, 8.000000e+00
  %3207 = call float @dx.op.unary.f32(i32 7, float %3206)  ; Saturate(value)
  %3208 = call float @dx.op.unary.f32(i32 27, float %3203)  ; Round_ni(value)
  %3209 = fadd fast float %3208, %3207
  %3210 = call float @dx.op.binary.f32(i32 36, float %3209, float %3185)  ; FMin(a,b)
  %3211 = call float @dx.op.unary.f32(i32 27, float %3210)  ; Round_ni(value)
  %3212 = fsub fast float -0.000000e+00, %3211
  %3213 = call float @dx.op.unary.f32(i32 21, float %3212)  ; Exp(value)
  %3214 = fmul fast float %3213, %3187
  %3215 = fmul fast float %3214, %3160
  %3216 = fmul fast float %3214, %3164
  %3217 = fmul fast float %3215, 2.500000e-01
  %3218 = fmul fast float %3216, 2.500000e-01
  %3219 = fadd fast float %3217, 5.000000e-01
  %3220 = fadd fast float %3218, 5.000000e-01
  %3221 = fsub fast float %3185, %3183
  %3222 = fptoui float %3221 to i32
  %3223 = add i32 %3222, 320
  %3224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %3223)  ; CBufferLoadLegacy(handle,regIndex)
  %3225 = extractvalue %dx.types.CBufRet.f32 %3224, 0
  %3226 = extractvalue %dx.types.CBufRet.f32 %3224, 1
  %3227 = fcmp fast une float %3210, %3185
  %3228 = fsub fast float %3160, %3225
  %3229 = fsub fast float %3164, %3226
  %3230 = call float @dx.op.unary.f32(i32 6, float %3228)  ; FAbs(value)
  %3231 = call float @dx.op.unary.f32(i32 6, float %3229)  ; FAbs(value)
  %3232 = fmul fast float %3230, %3214
  %3233 = fmul fast float %3231, %3214
  %3234 = fcmp fast olt float %3232, 1.000000e+00
  %3235 = fcmp fast olt float %3233, 1.000000e+00
  %3236 = and i1 %3234, %3235
  %3237 = or i1 %3227, %3236
  br i1 %3237, label %3238, label %3535, !dx.controlflow.hints !105

; <label>:3238                                    ; preds = %3176
  %3239 = fmul fast float %3216, 5.000000e-01
  %3240 = fmul fast float %3215, 5.000000e-01
  %3241 = fadd fast float %3239, 5.000000e-01
  %3242 = fadd fast float %3240, 5.000000e-01
  %3243 = sitofp i32 %3182 to float
  %3244 = fsub fast float %3210, %3243
  %3245 = call float @dx.op.unary.f32(i32 27, float %3244)  ; Round_ni(value)
  %3246 = call float @dx.op.unary.f32(i32 22, float %3210)  ; Frc(value)
  %3247 = call float @dx.op.unary.f32(i32 22, float %3242)  ; Frc(value)
  %3248 = call float @dx.op.unary.f32(i32 22, float %3241)  ; Frc(value)
  %3249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %3247, float %3248, float %3245, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3250 = extractvalue %dx.types.ResRet.f32 %3249, 0
  %3251 = extractvalue %dx.types.ResRet.f32 %3249, 1
  %3252 = extractvalue %dx.types.ResRet.f32 %3249, 2
  %3253 = extractvalue %dx.types.ResRet.f32 %3249, 3
  %3254 = fcmp fast ogt float %3246, 0.000000e+00
  br i1 %3254, label %3255, label %3276, !dx.controlflow.hints !106

; <label>:3255                                    ; preds = %3238
  %3256 = fadd fast float %3245, 1.000000e+00
  %3257 = call float @dx.op.unary.f32(i32 22, float %3219)  ; Frc(value)
  %3258 = call float @dx.op.unary.f32(i32 22, float %3220)  ; Frc(value)
  %3259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %3257, float %3258, float %3256, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3260 = extractvalue %dx.types.ResRet.f32 %3259, 0
  %3261 = extractvalue %dx.types.ResRet.f32 %3259, 1
  %3262 = extractvalue %dx.types.ResRet.f32 %3259, 2
  %3263 = extractvalue %dx.types.ResRet.f32 %3259, 3
  %3264 = fsub fast float %3260, %3250
  %3265 = fsub fast float %3261, %3251
  %3266 = fsub fast float %3262, %3252
  %3267 = fsub fast float %3263, %3253
  %3268 = fmul fast float %3264, %3246
  %3269 = fmul fast float %3265, %3246
  %3270 = fmul fast float %3266, %3246
  %3271 = fmul fast float %3267, %3246
  %3272 = fadd fast float %3268, %3250
  %3273 = fadd fast float %3269, %3251
  %3274 = fadd fast float %3270, %3252
  %3275 = fadd fast float %3271, %3253
  br label %3276

; <label>:3276                                    ; preds = %3255, %3238
  %3277 = phi float [ %3272, %3255 ], [ %3250, %3238 ]
  %3278 = phi float [ %3273, %3255 ], [ %3251, %3238 ]
  %3279 = phi float [ %3274, %3255 ], [ %3252, %3238 ]
  %3280 = phi float [ %3275, %3255 ], [ %3253, %3238 ]
  %3281 = fadd fast float %3277, -5.000000e-01
  %3282 = fadd fast float %3279, -5.000000e-01
  %3283 = fmul fast float %3281, 0xBFD5555560000000
  %3284 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3282, float %3283)  ; FMad(a,b,c)
  %3285 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3278, float 0.000000e+00)  ; FMad(a,b,c)
  %3286 = fadd fast float %3285, %3280
  %3287 = fmul fast float %3281, -7.500000e-01
  %3288 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3282, float %3287)  ; FMad(a,b,c)
  %3289 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3278, float 0.000000e+00)  ; FMad(a,b,c)
  %3290 = fadd fast float %3289, %3280
  %3291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3292 = extractvalue %dx.types.CBufRet.f32 %3291, 0
  %3293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3294 = extractvalue %dx.types.CBufRet.f32 %3293, 0
  %3295 = extractvalue %dx.types.CBufRet.f32 %3293, 1
  %3296 = extractvalue %dx.types.CBufRet.f32 %3293, 2
  %3297 = extractvalue %dx.types.CBufRet.f32 %3293, 3
  %3298 = fsub fast float %3294, %3284
  %3299 = fsub fast float %3295, %3286
  %3300 = fsub fast float %3296, %3288
  %3301 = fsub fast float %3297, %3290
  %3302 = fmul fast float %3298, %3292
  %3303 = fmul fast float %3299, %3292
  %3304 = fmul fast float %3300, %3292
  %3305 = fmul fast float %3301, %3292
  %3306 = fadd fast float %3302, %3284
  %3307 = fadd fast float %3303, %3286
  %3308 = fadd fast float %3304, %3288
  %3309 = fadd fast float %3305, %3290
  %3310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3311 = extractvalue %dx.types.ResRet.i32 %3310, 0
  %3312 = and i32 %3311, 536870911
  %3313 = uitofp i32 %3312 to float
  %3314 = fmul fast float %3313, %3160
  %3315 = fmul fast float %3313, %3164
  %3316 = fptoui float %3314 to i32
  %3317 = fptoui float %3315 to i32
  %3318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3319 = extractvalue %dx.types.ResRet.i32 %3318, 0
  %3320 = and i32 %3319, 31
  %3321 = lshr i32 %3316, %3320
  %3322 = lshr i32 %3317, %3320
  %3323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3324 = extractvalue %dx.types.ResRet.i32 %3323, 0
  %3325 = and i32 %3324, 31
  %3326 = shl i32 1, %3325
  %3327 = call i32 @dx.op.binary.i32(i32 40, i32 %3326, i32 4)  ; UMin(a,b)
  %3328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3329 = extractvalue %dx.types.ResRet.i32 %3328, 0
  %3330 = extractvalue %dx.types.ResRet.i32 %3328, 1
  %3331 = icmp eq i32 %3327, 0
  br i1 %3331, label %3373, label %3332

; <label>:3332                                    ; preds = %3276
  br label %3333

; <label>:3333                                    ; preds = %3361, %3332
  %3334 = phi i32 [ %3364, %3361 ], [ 0, %3332 ]
  %3335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3336 = extractvalue %dx.types.ResRet.i32 %3335, 0
  %3337 = lshr i32 %3336, 16
  %3338 = and i32 %3337, 31
  %3339 = shl i32 %3322, %3338
  %3340 = add i32 %3339, %3321
  %3341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3342 = extractvalue %dx.types.ResRet.i32 %3341, 0
  %3343 = and i32 %3342, 31
  %3344 = shl i32 %3340, %3343
  %3345 = add i32 %3344, %3334
  %3346 = shl i32 %3345, 2
  %3347 = add i32 %3346, 32
  %3348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3347, i32 undef)  ; BufferLoad(srv,index,wot)
  %3349 = extractvalue %dx.types.ResRet.i32 %3348, 0
  %3350 = icmp slt i32 %3349, 0
  %3351 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %3334
  %3352 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 %3334
  %3353 = bitcast float* %3351 to i32*
  %3354 = bitcast float* %3352 to i32*
  br i1 %3350, label %3355, label %3361

; <label>:3355                                    ; preds = %3333
  %3356 = and i32 %3349, 1073741823
  %3357 = add nuw nsw i32 %3356, 20
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = extractvalue %dx.types.ResRet.i32 %3358, 1
  br label %3361

; <label>:3361                                    ; preds = %3355, %3333
  %3362 = phi i32 [ %3359, %3355 ], [ %3329, %3333 ]
  %3363 = phi i32 [ %3360, %3355 ], [ %3330, %3333 ]
  store i32 %3362, i32* %3353, align 4
  store i32 %3363, i32* %3354, align 4
  %3364 = add nuw i32 %3334, 1
  %3365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3366 = extractvalue %dx.types.CBufRet.i32 %3365, 2
  %3367 = icmp eq i32 %3366, 0
  %3368 = icmp ugt i32 %3349, -1073741825
  %3369 = and i1 %3368, %3367
  %3370 = icmp ult i32 %3364, %3327
  %3371 = and i1 %3369, %3370
  br i1 %3371, label %3333, label %3372

; <label>:3372                                    ; preds = %3361
  br label %3373

; <label>:3373                                    ; preds = %3372, %3276
  %3374 = phi i32 [ 0, %3276 ], [ %3364, %3372 ]
  %3375 = extractvalue %dx.types.CBufRet.f32 %3138, 2
  %3376 = fptoui float %3375 to i32
  %3377 = icmp eq i32 %3376, 0
  br i1 %3377, label %3429, label %3378

; <label>:3378                                    ; preds = %3373
  br label %3379

; <label>:3379                                    ; preds = %3424, %3378
  %3380 = phi i32 [ %3425, %3424 ], [ %3374, %3378 ]
  %3381 = phi i32 [ %3426, %3424 ], [ 0, %3378 ]
  %3382 = lshr i32 %3381, 2
  %3383 = and i32 %3381, 3
  %3384 = add nuw nsw i32 %3382, 83
  %3385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 %3384)  ; CBufferLoadLegacy(handle,regIndex)
  %3386 = extractvalue %dx.types.CBufRet.i32 %3385, 0
  %3387 = extractvalue %dx.types.CBufRet.i32 %3385, 1
  %3388 = extractvalue %dx.types.CBufRet.i32 %3385, 2
  %3389 = extractvalue %dx.types.CBufRet.i32 %3385, 3
  %3390 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 0
  store i32 %3386, i32* %3390, align 4
  %3391 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 1
  store i32 %3387, i32* %3391, align 4
  %3392 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 2
  store i32 %3388, i32* %3392, align 4
  %3393 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 3
  store i32 %3389, i32* %3393, align 4
  %3394 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 %3383
  %3395 = load i32, i32* %3394, align 4, !tbaa !107, !noalias !111
  %3396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3397 = extractvalue %dx.types.ResRet.i32 %3396, 0
  %3398 = lshr i32 %3397, 16
  %3399 = and i32 %3398, 31
  %3400 = shl i32 %3322, %3399
  %3401 = add i32 %3400, %3321
  %3402 = shl i32 %3401, 2
  %3403 = add i32 %3402, %3395
  %3404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.i32 %3404, 0
  %3406 = icmp eq i32 %3405, 0
  br i1 %3406, label %3424, label %3407

; <label>:3407                                    ; preds = %3379
  %3408 = icmp slt i32 %3405, 0
  %3409 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %3380
  %3410 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 %3380
  %3411 = bitcast float* %3409 to i32*
  %3412 = bitcast float* %3410 to i32*
  br i1 %3408, label %3413, label %3420

; <label>:3413                                    ; preds = %3407
  %3414 = and i32 %3405, 1073741823
  %3415 = add i32 %3395, 20
  %3416 = add i32 %3415, %3414
  %3417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3416, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.i32 %3417, 0
  %3419 = extractvalue %dx.types.ResRet.i32 %3417, 1
  br label %3420

; <label>:3420                                    ; preds = %3413, %3407
  %3421 = phi i32 [ %3418, %3413 ], [ %3329, %3407 ]
  %3422 = phi i32 [ %3419, %3413 ], [ %3330, %3407 ]
  store i32 %3421, i32* %3411, align 4
  store i32 %3422, i32* %3412, align 4
  %3423 = add i32 %3380, 1
  br label %3424

; <label>:3424                                    ; preds = %3420, %3379
  %3425 = phi i32 [ %3380, %3379 ], [ %3423, %3420 ]
  %3426 = add nuw i32 %3381, 1
  %3427 = icmp eq i32 %3426, %3376
  br i1 %3427, label %3428, label %3379

; <label>:3428                                    ; preds = %3424
  br label %3429

; <label>:3429                                    ; preds = %3428, %3373
  %3430 = phi i32 [ %3374, %3373 ], [ %3425, %3428 ]
  %3431 = icmp eq i32 %3430, 1
  %3432 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 0
  %3433 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 0
  br i1 %3431, label %3434, label %3437

; <label>:3434                                    ; preds = %3429
  %3435 = load float, float* %3432, align 4
  %3436 = load float, float* %3433, align 4
  br label %3464

; <label>:3437                                    ; preds = %3429
  %3438 = load float, float* %3432, align 4
  %3439 = load float, float* %3433, align 4
  %3440 = fdiv fast float 1.000000e+00, %3439
  %3441 = fsub fast float %3438, %3440
  %3442 = icmp ugt i32 %3430, 1
  br i1 %3442, label %3443, label %3459

; <label>:3443                                    ; preds = %3437
  br label %3444

; <label>:3444                                    ; preds = %3444, %3443
  %3445 = phi float [ %3454, %3444 ], [ %3441, %3443 ]
  %3446 = phi float [ %3455, %3444 ], [ %3438, %3443 ]
  %3447 = phi i32 [ %3456, %3444 ], [ 1, %3443 ]
  %3448 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %3447
  %3449 = load float, float* %3448, align 4
  %3450 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 %3447
  %3451 = load float, float* %3450, align 4
  %3452 = fdiv fast float 1.000000e+00, %3451
  %3453 = fsub fast float %3449, %3452
  %3454 = call float @dx.op.binary.f32(i32 36, float %3445, float %3453)  ; FMin(a,b)
  %3455 = call float @dx.op.binary.f32(i32 35, float %3446, float %3449)  ; FMax(a,b)
  %3456 = add nuw i32 %3447, 1
  %3457 = icmp eq i32 %3456, %3430
  br i1 %3457, label %3458, label %3444

; <label>:3458                                    ; preds = %3444
  br label %3459

; <label>:3459                                    ; preds = %3458, %3437
  %3460 = phi float [ %3441, %3437 ], [ %3454, %3458 ]
  %3461 = phi float [ %3438, %3437 ], [ %3455, %3458 ]
  %3462 = fsub fast float %3461, %3460
  %3463 = fdiv fast float 1.000000e+00, %3462
  br label %3464

; <label>:3464                                    ; preds = %3459, %3434
  %3465 = phi float [ %3435, %3434 ], [ %3461, %3459 ]
  %3466 = phi float [ %3436, %3434 ], [ %3463, %3459 ]
  %3467 = fadd fast float %3168, %3465
  %3468 = fmul fast float %3467, %3466
  %3469 = call float @dx.op.unary.f32(i32 7, float %3468)  ; Saturate(value)
  %3470 = fmul fast float %3469, 2.000000e+00
  %3471 = fsub fast float 1.000000e+00, %3470
  %3472 = fmul fast float %3306, %3306
  %3473 = fsub fast float %3307, %3472
  %3474 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3473)  ; FMax(a,b)
  %3475 = fdiv fast float 1.000000e+00, %3474
  %3476 = fmul fast float %3307, %3306
  %3477 = fsub fast float %3308, %3476
  %3478 = fsub fast float %3471, %3306
  %3479 = fmul fast float %3471, %3471
  %3480 = fsub fast float %3479, %3307
  %3481 = fmul fast float %3475, %3477
  %3482 = fmul fast float %3481, %3478
  %3483 = fsub fast float %3480, %3482
  %3484 = fmul fast float %3307, %3307
  %3485 = fsub fast float %3309, %3484
  %3486 = fmul fast float %3477, %3477
  %3487 = fmul fast float %3486, %3475
  %3488 = fsub fast float %3485, %3487
  %3489 = fdiv fast float %3483, %3488
  %3490 = fmul fast float %3489, %3477
  %3491 = fsub fast float %3478, %3490
  %3492 = fmul fast float %3491, %3475
  %3493 = fmul fast float %3492, %3306
  %3494 = fsub fast float 1.000000e+00, %3493
  %3495 = fmul fast float %3489, %3307
  %3496 = fsub fast float %3494, %3495
  %3497 = fmul fast float %3492, %3492
  %3498 = fmul fast float %3489, 4.000000e+00
  %3499 = fmul fast float %3498, %3496
  %3500 = fsub fast float %3497, %3499
  %3501 = call float @dx.op.unary.f32(i32 24, float %3500)  ; Sqrt(value)
  %3502 = fcmp fast oge float %3492, 0.000000e+00
  %3503 = fsub fast float -0.000000e+00, %3501
  %3504 = select i1 %3502, float %3503, float %3501
  %3505 = fsub fast float %3504, %3492
  %3506 = fdiv fast float %3505, %3489
  %3507 = fdiv fast float %3496, %3505
  %3508 = fmul fast float %3506, 5.000000e-01
  %3509 = fmul fast float %3507, 2.000000e+00
  %3510 = select i1 %3502, float %3508, float %3509
  %3511 = select i1 %3502, float %3509, float %3508
  %3512 = call float @dx.op.binary.f32(i32 35, float %3510, float %3511)  ; FMax(a,b)
  %3513 = call float @dx.op.binary.f32(i32 36, float %3510, float %3511)  ; FMin(a,b)
  %3514 = fcmp fast ogt float %3471, %3512
  %3515 = fsub fast float %3471, %3513
  %3516 = fsub fast float %3471, %3512
  %3517 = fsub fast float %3512, %3513
  %3518 = select i1 %3514, float %3516, float %3517
  %3519 = fmul float %3515, %3518
  %3520 = select i1 %3514, float %3513, float %3471
  %3521 = fcmp fast ogt float %3471, %3513
  %3522 = fmul fast float %3520, %3512
  %3523 = fadd fast float %3520, %3512
  %3524 = fmul fast float %3523, %3306
  %3525 = fadd fast float %3522, %3307
  %3526 = fsub fast float %3525, %3524
  %3527 = fdiv fast float %3526, %3519
  %3528 = select i1 %3521, float %3527, float 0.000000e+00
  %3529 = fsub fast float 1.000000e+00, %3528
  %3530 = select i1 %3514, float %3529, float %3528
  %3531 = call float @dx.op.unary.f32(i32 7, float %3530)  ; Saturate(value)
  %3532 = extractvalue %dx.types.CBufRet.f32 %3291, 3
  %3533 = fmul fast float %3532, %3531
  %3534 = fsub fast float 1.000000e+00, %3533
  br label %3535

; <label>:3535                                    ; preds = %3464, %3176, %3141, %3137, %3103
  %3536 = phi float [ 1.000000e+00, %3103 ], [ %3534, %3464 ], [ 1.000000e+00, %3141 ], [ 1.000000e+00, %3176 ], [ 1.000000e+00, %3137 ]
  %3537 = fcmp fast ogt float %3133, 0.000000e+00
  br i1 %3537, label %3538, label %3544, !dx.controlflow.hints !120

; <label>:3538                                    ; preds = %3535
  %3539 = fadd fast float %3046, %3020
  %3540 = call float @dx.op.binary.f32(i32 35, float %3539, float 0.000000e+00)  ; FMax(a,b)
  %3541 = fadd fast float %3540, 0x3F10000000000000
  %3542 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %3035, float %3036, float undef, float undef, i32 0, i32 0, i32 undef, float %3541)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3543 = extractvalue %dx.types.ResRet.f32 %3542, 0
  br label %3544

; <label>:3544                                    ; preds = %3538, %3535
  %3545 = phi float [ %3543, %3538 ], [ 1.000000e+00, %3535 ]
  %3546 = fcmp fast ogt float %3131, 0.000000e+00
  br i1 %3546, label %3547, label %3553, !dx.controlflow.hints !121

; <label>:3547                                    ; preds = %3544
  %3548 = fadd fast float %3076, %3020
  %3549 = call float @dx.op.binary.f32(i32 35, float %3548, float 0.000000e+00)  ; FMax(a,b)
  %3550 = fadd fast float %3549, 0x3F10000000000000
  %3551 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %3027, float %3028, float undef, float undef, i32 0, i32 0, i32 undef, float %3550)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3552 = extractvalue %dx.types.ResRet.f32 %3551, 0
  br label %3553

; <label>:3553                                    ; preds = %3547, %3544
  %3554 = phi float [ %3552, %3547 ], [ 1.000000e+00, %3544 ]
  %3555 = fcmp fast ogt float %3130, 0.000000e+00
  br i1 %3555, label %3556, label %3563, !dx.controlflow.hints !122

; <label>:3556                                    ; preds = %3553
  %3557 = extractvalue %dx.types.CBufRet.f32 %3045, 0
  %3558 = fadd fast float %3557, %3020
  %3559 = call float @dx.op.binary.f32(i32 35, float %3558, float 0.000000e+00)  ; FMax(a,b)
  %3560 = fadd fast float %3559, 0x3F10000000000000
  %3561 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %3012, float %3016, float undef, float undef, i32 0, i32 0, i32 undef, float %3560)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3562 = extractvalue %dx.types.ResRet.f32 %3561, 0
  br label %3563

; <label>:3563                                    ; preds = %3556, %3553
  %3564 = phi float [ %3562, %3556 ], [ 1.000000e+00, %3553 ]
  %3565 = fsub fast float %3545, %3536
  %3566 = fmul fast float %3565, %3074
  %3567 = fadd fast float %3566, %3536
  %3568 = fsub fast float %3554, %3567
  %3569 = fmul fast float %3568, %3104
  %3570 = fadd fast float %3569, %3567
  %3571 = fsub fast float %3564, %3570
  %3572 = fmul fast float %3571, %3130
  %3573 = fadd fast float %3572, %3570
  %3574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3575 = extractvalue %dx.types.CBufRet.f32 %3574, 2
  %3576 = fcmp fast ogt float %3575, 0.000000e+00
  br i1 %3576, label %3577, label %3614, !dx.controlflow.hints !123

; <label>:3577                                    ; preds = %3563
  %3578 = fcmp fast ugt float %3575, 0.000000e+00
  br i1 %3578, label %3579, label %3611

; <label>:3579                                    ; preds = %3577
  %3580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3581 = extractvalue %dx.types.CBufRet.f32 %3580, 0
  %3582 = extractvalue %dx.types.CBufRet.f32 %3580, 1
  %3583 = extractvalue %dx.types.CBufRet.f32 %3580, 2
  %3584 = extractvalue %dx.types.CBufRet.f32 %3580, 3
  %3585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3586 = extractvalue %dx.types.CBufRet.f32 %3585, 0
  %3587 = extractvalue %dx.types.CBufRet.f32 %3585, 1
  %3588 = extractvalue %dx.types.CBufRet.f32 %3585, 2
  %3589 = extractvalue %dx.types.CBufRet.f32 %3585, 3
  %3590 = extractvalue %dx.types.CBufRet.f32 %3574, 0
  %3591 = extractvalue %dx.types.CBufRet.f32 %3574, 1
  %3592 = extractvalue %dx.types.CBufRet.f32 %1683, 2
  %3593 = fadd fast float %1684, %2989
  %3594 = fadd fast float %1685, %2990
  %3595 = fadd fast float %3592, %2991
  %3596 = fmul fast float %3593, %3581
  %3597 = call float @dx.op.tertiary.f32(i32 46, float %3582, float %3594, float %3596)  ; FMad(a,b,c)
  %3598 = call float @dx.op.tertiary.f32(i32 46, float %3583, float %3595, float %3597)  ; FMad(a,b,c)
  %3599 = fadd fast float %3598, %3584
  %3600 = fmul fast float %3593, %3586
  %3601 = call float @dx.op.tertiary.f32(i32 46, float %3587, float %3594, float %3600)  ; FMad(a,b,c)
  %3602 = call float @dx.op.tertiary.f32(i32 46, float %3588, float %3595, float %3601)  ; FMad(a,b,c)
  %3603 = fadd fast float %3602, %3589
  %3604 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %52, float %3599, float %3603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3605 = extractvalue %dx.types.ResRet.f32 %3604, 0
  %3606 = fmul fast float %3605, %3591
  %3607 = fadd fast float %3606, %3590
  %3608 = call float @dx.op.unary.f32(i32 7, float %3607)  ; Saturate(value)
  %3609 = fmul fast float %3608, %3575
  %3610 = fsub fast float 1.000000e+00, %3609
  br label %3611

; <label>:3611                                    ; preds = %3579, %3577
  %3612 = phi float [ %3610, %3579 ], [ 1.000000e+00, %3577 ]
  %3613 = fmul fast float %3612, %3573
  br label %3614

; <label>:3614                                    ; preds = %3611, %3563, %2969
  %3615 = phi float [ 1.000000e+00, %2969 ], [ %3613, %3611 ], [ %3573, %3563 ]
  %3616 = call float @dx.op.binary.f32(i32 36, float %3615, float %3615)  ; FMin(a,b)
  %3617 = call float @dx.op.binary.f32(i32 36, float %3615, float %3616)  ; FMin(a,b)
  %3618 = fcmp fast ogt float %3617, 0.000000e+00
  br i1 %3618, label %3619, label %3776, !dx.controlflow.hints !124

; <label>:3619                                    ; preds = %3614
  %3620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3621 = extractvalue %dx.types.CBufRet.f32 %3620, 0
  %3622 = extractvalue %dx.types.CBufRet.f32 %3620, 1
  %3623 = extractvalue %dx.types.CBufRet.f32 %3620, 2
  %3624 = extractvalue %dx.types.CBufRet.f32 %3620, 3
  %3625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3626 = extractvalue %dx.types.CBufRet.f32 %3625, 0
  %3627 = extractvalue %dx.types.CBufRet.f32 %3625, 1
  %3628 = extractvalue %dx.types.CBufRet.f32 %3625, 2
  %3629 = extractvalue %dx.types.CBufRet.f32 %3625, 3
  %3630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3631 = extractvalue %dx.types.CBufRet.f32 %3630, 0
  %3632 = extractvalue %dx.types.CBufRet.f32 %3630, 1
  %3633 = extractvalue %dx.types.CBufRet.f32 %3630, 2
  %3634 = extractvalue %dx.types.CBufRet.f32 %3630, 3
  %3635 = fmul fast float %3621, %2989
  %3636 = call float @dx.op.tertiary.f32(i32 46, float %2990, float %3622, float %3635)  ; FMad(a,b,c)
  %3637 = call float @dx.op.tertiary.f32(i32 46, float %2991, float %3623, float %3636)  ; FMad(a,b,c)
  %3638 = fadd fast float %3637, %3624
  %3639 = fmul fast float %3626, %2989
  %3640 = call float @dx.op.tertiary.f32(i32 46, float %2990, float %3627, float %3639)  ; FMad(a,b,c)
  %3641 = call float @dx.op.tertiary.f32(i32 46, float %2991, float %3628, float %3640)  ; FMad(a,b,c)
  %3642 = fadd fast float %3641, %3629
  %3643 = fmul fast float %3631, %2989
  %3644 = call float @dx.op.tertiary.f32(i32 46, float %2990, float %3632, float %3643)  ; FMad(a,b,c)
  %3645 = call float @dx.op.tertiary.f32(i32 46, float %2991, float %3633, float %3644)  ; FMad(a,b,c)
  %3646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3647 = extractvalue %dx.types.CBufRet.f32 %3646, 0
  %3648 = extractvalue %dx.types.CBufRet.f32 %3646, 1
  %3649 = extractvalue %dx.types.CBufRet.f32 %3646, 3
  %3650 = fmul fast float %3649, %3638
  %3651 = fmul fast float %3649, %3642
  %3652 = fadd fast float %3650, %3647
  %3653 = fadd fast float %3651, %3648
  %3654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3655 = extractvalue %dx.types.CBufRet.f32 %3654, 0
  %3656 = extractvalue %dx.types.CBufRet.f32 %3654, 1
  %3657 = fsub fast float %3652, %3655
  %3658 = fsub fast float %3653, %3656
  %3659 = fcmp fast olt float %3657, 0.000000e+00
  %3660 = fcmp fast olt float %3658, 0.000000e+00
  %3661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3662 = extractvalue %dx.types.CBufRet.f32 %3661, 0
  %3663 = extractvalue %dx.types.CBufRet.f32 %3661, 1
  %3664 = extractvalue %dx.types.CBufRet.f32 %3661, 2
  %3665 = extractvalue %dx.types.CBufRet.f32 %3661, 3
  %3666 = select i1 %3659, float %3662, float %3664
  %3667 = select i1 %3660, float %3663, float %3665
  %3668 = fmul fast float %3666, %3657
  %3669 = fmul fast float %3667, %3658
  %3670 = call float @dx.op.unary.f32(i32 6, float %3668)  ; FAbs(value)
  %3671 = call float @dx.op.unary.f32(i32 6, float %3669)  ; FAbs(value)
  %3672 = extractvalue %dx.types.CBufRet.f32 %2984, 0
  %3673 = call float @dx.op.binary.f32(i32 35, float %3670, float %3671)  ; FMax(a,b)
  %3674 = fsub fast float %3672, %3673
  %3675 = call float @dx.op.unary.f32(i32 7, float %3674)  ; Saturate(value)
  %3676 = fcmp fast ogt float %3675, 0.000000e+00
  br i1 %3676, label %3677, label %3718, !dx.controlflow.hints !125

; <label>:3677                                    ; preds = %3619
  %3678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %55, float %3652, float %3653, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3679 = extractvalue %dx.types.ResRet.f32 %3678, 1
  %3680 = fcmp fast ogt float %3679, 0.000000e+00
  br i1 %3680, label %3681, label %3713

; <label>:3681                                    ; preds = %3677
  %3682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %55, float %3652, float %3653, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3683 = extractvalue %dx.types.ResRet.f32 %3682, 0
  %3684 = extractvalue %dx.types.ResRet.f32 %3682, 1
  %3685 = extractvalue %dx.types.ResRet.f32 %3682, 2
  %3686 = extractvalue %dx.types.ResRet.f32 %3682, 3
  %3687 = fsub fast float 1.000000e+00, %3634
  %3688 = fsub fast float %3687, %3645
  %3689 = fmul fast float %3688, 0x400921FB60000000
  %3690 = fadd fast float %3689, 0x3FF921FB60000000
  %3691 = call float @dx.op.unary.f32(i32 13, float %3690)  ; Sin(value)
  %3692 = fadd fast float %3691, -1.000000e+00
  %3693 = fmul fast float %3692, 0x3FD45F3060000000
  %3694 = fmul fast float %3688, 0x401921FB60000000
  %3695 = fadd fast float %3694, 0x400921FB60000000
  %3696 = call float @dx.op.unary.f32(i32 13, float %3695)  ; Sin(value)
  %3697 = fadd fast float %3696, 0x3E7777A5C0000000
  %3698 = fmul fast float %3697, 0x3FC45F3060000000
  %3699 = fmul fast float %3688, 0x4022D97C80000000
  %3700 = fadd fast float %3699, 0x4012D97C80000000
  %3701 = call float @dx.op.unary.f32(i32 13, float %3700)  ; Sin(value)
  %3702 = fadd fast float %3701, 1.000000e+00
  %3703 = fmul fast float %3702, 0x3FBB2995E0000000
  %3704 = fmul fast float %3688, 0x402921FB60000000
  %3705 = fadd fast float %3704, 0x401921FB60000000
  %3706 = call float @dx.op.unary.f32(i32 13, float %3705)  ; Sin(value)
  %3707 = fadd fast float %3706, 0xBE8777A5C0000000
  %3708 = fmul fast float %3707, 0x3FB45F3060000000
  %3709 = call float @dx.op.dot4.f32(i32 56, float %3683, float %3684, float %3685, float %3686, float %3693, float %3698, float %3703, float %3708)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3710 = fmul fast float %3709, 0xBFF7154760000000
  %3711 = call float @dx.op.unary.f32(i32 21, float %3710)  ; Exp(value)
  %3712 = call float @dx.op.unary.f32(i32 7, float %3711)  ; Saturate(value)
  br label %3713

; <label>:3713                                    ; preds = %3681, %3677
  %3714 = phi float [ %3712, %3681 ], [ 1.000000e+00, %3677 ]
  %3715 = fadd fast float %3714, -1.000000e+00
  %3716 = fmul fast float %3715, %3675
  %3717 = fadd fast float %3716, 1.000000e+00
  br label %3718

; <label>:3718                                    ; preds = %3713, %3619
  %3719 = phi float [ %3717, %3713 ], [ 1.000000e+00, %3619 ]
  %3720 = fmul fast float %3719, %3615
  %3721 = extractvalue %dx.types.CBufRet.f32 %1683, 2
  %3722 = fadd fast float %1684, %135
  %3723 = fadd fast float %1685, %136
  %3724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3725 = extractvalue %dx.types.CBufRet.f32 %3724, 1
  %3726 = fsub fast float -0.000000e+00, %3722
  %3727 = fsub fast float -0.000000e+00, %3723
  %3728 = fsub fast float %1667, %3721
  %3729 = fadd fast float %3728, %3725
  %3730 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3726, float %3727, float %3729)  ; Dot3(ax,ay,az,bx,by,bz)
  %3731 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2970, float %2971, float %2972)  ; Dot3(ax,ay,az,bx,by,bz)
  %3732 = fdiv fast float 1.000000e+00, %3731
  %3733 = fmul fast float %3732, %3730
  %3734 = fmul fast float %2970, %3733
  %3735 = fmul fast float %2971, %3733
  %3736 = fadd fast float %3734, %3722
  %3737 = fadd fast float %3735, %3723
  %3738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3739 = extractvalue %dx.types.CBufRet.f32 %3738, 0
  %3740 = extractvalue %dx.types.CBufRet.f32 %3738, 1
  %3741 = fsub fast float %3736, %3739
  %3742 = fsub fast float %3737, %3740
  %3743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3744 = extractvalue %dx.types.CBufRet.f32 %3743, 2
  %3745 = extractvalue %dx.types.CBufRet.f32 %3743, 3
  %3746 = fmul fast float %3741, %3744
  %3747 = fmul fast float %3742, %3745
  %3748 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3749 = extractvalue %dx.types.CBufRet.i32 %3748, 3
  %3750 = icmp eq i32 %3749, 0
  br i1 %3750, label %3756, label %3751

; <label>:3751                                    ; preds = %3718
  %3752 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %3746, float %3747, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3753 = extractvalue %dx.types.ResRet.f32 %3752, 0
  %3754 = extractvalue %dx.types.ResRet.f32 %3752, 1
  %3755 = extractvalue %dx.types.ResRet.f32 %3752, 2
  br label %3761

; <label>:3756                                    ; preds = %3718
  %3757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %3746, float %3747, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3758 = extractvalue %dx.types.ResRet.f32 %3757, 0
  %3759 = extractvalue %dx.types.ResRet.f32 %3757, 1
  %3760 = extractvalue %dx.types.ResRet.f32 %3757, 2
  br label %3761

; <label>:3761                                    ; preds = %3756, %3751
  %3762 = phi float [ %3753, %3751 ], [ %3758, %3756 ]
  %3763 = phi float [ %3754, %3751 ], [ %3759, %3756 ]
  %3764 = phi float [ %3755, %3751 ], [ %3760, %3756 ]
  %3765 = extractvalue %dx.types.CBufRet.f32 %3724, 2
  %3766 = fmul fast float %3765, %3762
  %3767 = extractvalue %dx.types.CBufRet.f32 %3724, 0
  %3768 = fsub fast float %3733, %3767
  %3769 = fsub fast float %3768, %3766
  %3770 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3769)  ; FMax(a,b)
  %3771 = fmul fast float %3770, %3763
  %3772 = call float @dx.op.binary.f32(i32 36, float %3764, float %3771)  ; FMin(a,b)
  %3773 = fmul fast float %3772, 0xBFF7154760000000
  %3774 = call float @dx.op.unary.f32(i32 21, float %3773)  ; Exp(value)
  %3775 = fmul fast float %3720, %3774
  br label %3776

; <label>:3776                                    ; preds = %3761, %3614
  %3777 = phi float [ %3775, %3761 ], [ %3615, %3614 ]
  %3778 = call float @dx.op.binary.f32(i32 36, float %3777, float %3777)  ; FMin(a,b)
  %3779 = call float @dx.op.binary.f32(i32 36, float %3777, float %3778)  ; FMin(a,b)
  %3780 = fcmp fast ogt float %3779, 0.000000e+00
  br i1 %3780, label %3781, label %3963, !dx.controlflow.hints !126

; <label>:3781                                    ; preds = %3776
  %3782 = fmul fast float %3777, %2981
  %3783 = fmul fast float %3777, %2982
  %3784 = fmul fast float %3777, %2983
  %3785 = fsub fast float %137, %1455
  %3786 = fcmp fast ogt float %3785, 0.000000e+00
  %3787 = fmul fast float %2970, 5.120000e+02
  %3788 = fmul fast float %2971, 5.120000e+02
  %3789 = fmul fast float %2972, 5.120000e+02
  %3790 = fadd fast float %3789, %137
  %3791 = fsub fast float %1455, %3790
  %3792 = fmul fast float %3791, 2.000000e+00
  %3793 = fadd fast float %3792, %3790
  %3794 = select i1 %3786, float %3793, float %3790
  %3795 = fsub fast float %3794, %137
  %3796 = call float @dx.op.dot3.f32(i32 55, float %3787, float %3788, float %3795, float %3787, float %3788, float %3795)  ; Dot3(ax,ay,az,bx,by,bz)
  %3797 = call float @dx.op.unary.f32(i32 25, float %3796)  ; Rsqrt(value)
  %3798 = fmul fast float %3797, %3787
  %3799 = fmul fast float %3797, %3788
  %3800 = fmul fast float %3797, %3795
  %3801 = fsub fast float %1455, %137
  %3802 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3801)  ; Dot3(ax,ay,az,bx,by,bz)
  %3803 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3798, float %3799, float %3800)  ; Dot3(ax,ay,az,bx,by,bz)
  %3804 = fdiv fast float 1.000000e+00, %3803
  %3805 = fmul fast float %3804, %3802
  %3806 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3785, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3807 = fcmp fast ogt float %3806, 0.000000e+00
  %3808 = fcmp fast olt float %3806, 0.000000e+00
  %3809 = zext i1 %3807 to i32
  %3810 = zext i1 %3808 to i32
  %3811 = sub nsw i32 %3809, %3810
  %3812 = sitofp i32 %3811 to float
  %3813 = fsub fast float %3794, %1455
  %3814 = call float @dx.op.dot3.f32(i32 55, float %3787, float %3788, float %3813, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3815 = fcmp fast ogt float %3814, 0.000000e+00
  %3816 = fcmp fast olt float %3814, 0.000000e+00
  %3817 = zext i1 %3815 to i32
  %3818 = zext i1 %3816 to i32
  %3819 = sub nsw i32 %3817, %3818
  %3820 = sitofp i32 %3819 to float
  %3821 = fcmp fast une float %3812, %3820
  br i1 %3821, label %3822, label %3832

; <label>:3822                                    ; preds = %3781
  %3823 = fmul fast float %3805, %3800
  %3824 = fmul fast float %3805, %3799
  %3825 = fmul fast float %3805, %3798
  %3826 = fmul fast float %3825, %3825
  %3827 = fmul fast float %3824, %3824
  %3828 = fadd fast float %3826, %3827
  %3829 = fmul fast float %3823, %3823
  %3830 = fadd fast float %3828, %3829
  %3831 = call float @dx.op.unary.f32(i32 24, float %3830)  ; Sqrt(value)
  br label %3842

; <label>:3832                                    ; preds = %3781
  %3833 = icmp slt i32 %3811, 0
  br i1 %3833, label %3834, label %3842

; <label>:3834                                    ; preds = %3832
  %3835 = fsub fast float %137, %3794
  %3836 = fmul fast float %3787, %3787
  %3837 = fmul fast float %3788, %3788
  %3838 = fadd fast float %3836, %3837
  %3839 = fmul fast float %3835, %3835
  %3840 = fadd fast float %3838, %3839
  %3841 = call float @dx.op.unary.f32(i32 24, float %3840)  ; Sqrt(value)
  br label %3842

; <label>:3842                                    ; preds = %3834, %3832, %3822
  %3843 = phi float [ %3831, %3822 ], [ %3841, %3834 ], [ 0.000000e+00, %3832 ]
  %3844 = fsub fast float -0.000000e+00, %3843
  %3845 = select i1 %3786, float -0.000000e+00, float %3844
  %3846 = fmul fast float %1456, 0x3FF7154760000000
  %3847 = fmul fast float %3846, %3845
  %3848 = fmul fast float %1457, 0x3FF7154760000000
  %3849 = fmul fast float %3848, %3845
  %3850 = fmul fast float %1458, 0x3FF7154760000000
  %3851 = fmul fast float %3850, %3845
  %3852 = call float @dx.op.unary.f32(i32 21, float %3847)  ; Exp(value)
  %3853 = call float @dx.op.unary.f32(i32 21, float %3849)  ; Exp(value)
  %3854 = call float @dx.op.unary.f32(i32 21, float %3851)  ; Exp(value)
  %3855 = call float @dx.op.unary.f32(i32 7, float %3852)  ; Saturate(value)
  %3856 = call float @dx.op.unary.f32(i32 7, float %3853)  ; Saturate(value)
  %3857 = call float @dx.op.unary.f32(i32 7, float %3854)  ; Saturate(value)
  %3858 = fmul fast float %3782, %3855
  %3859 = fmul fast float %3783, %3856
  %3860 = fmul fast float %3784, %3857
  %3861 = fsub fast float %2970, %1655
  %3862 = fsub fast float %2971, %1654
  %3863 = fsub fast float %2972, %1653
  %3864 = call float @dx.op.dot3.f32(i32 55, float %3861, float %3862, float %3863, float %3861, float %3862, float %3863)  ; Dot3(ax,ay,az,bx,by,bz)
  %3865 = call float @dx.op.unary.f32(i32 25, float %3864)  ; Rsqrt(value)
  %3866 = fmul fast float %3865, %3861
  %3867 = fmul fast float %3865, %3862
  %3868 = fmul fast float %3865, %3863
  %3869 = call float @dx.op.dot3.f32(i32 55, float %2970, float %2971, float %2972, float %1662, float %1663, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %3870 = call float @dx.op.dot3.f32(i32 55, float %1652, float %1651, float %1650, float %3866, float %3867, float %3868)  ; Dot3(ax,ay,az,bx,by,bz)
  %3871 = call float @dx.op.unary.f32(i32 7, float %3869)  ; Saturate(value)
  %3872 = fmul fast float %3871, %3871
  %3873 = fmul fast float %3872, %2965
  %3874 = call float @dx.op.unary.f32(i32 7, float %3873)  ; Saturate(value)
  %3875 = fmul fast float %3874, %3871
  %3876 = call float @dx.op.dot3.f32(i32 55, float %1662, float %1663, float %1664, float %3866, float %3867, float %3868)  ; Dot3(ax,ay,az,bx,by,bz)
  %3877 = fmul fast float %3876, %3876
  %3878 = call float @dx.op.unary.f32(i32 6, float %3869)  ; FAbs(value)
  %3879 = fsub fast float 1.000000e+00, %1665
  %3880 = call float @dx.op.binary.f32(i32 35, float %3879, float 0x3F847AE140000000)  ; FMax(a,b)
  %3881 = fmul fast float %3880, %3880
  %3882 = fmul fast float %3881, %3881
  %3883 = fsub fast float 1.000000e+00, %3882
  %3884 = fmul fast float %1670, %1670
  %3885 = fmul fast float %3884, %3883
  %3886 = fadd fast float %3885, %3882
  %3887 = bitcast float %3886 to i32
  %3888 = ashr i32 %3887, 1
  %3889 = add nsw i32 %3888, 532487669
  %3890 = bitcast i32 %3889 to float
  %3891 = fadd fast float %3890, %1670
  %3892 = fmul fast float %3882, %3877
  %3893 = fsub fast float 1.000000e+00, %3877
  %3894 = fadd fast float %3893, %3892
  %3895 = fmul fast float %3878, %3878
  %3896 = fmul fast float %3895, %3883
  %3897 = fadd fast float %3896, %3882
  %3898 = bitcast float %3897 to i32
  %3899 = ashr i32 %3898, 1
  %3900 = add nsw i32 %3899, 532487669
  %3901 = bitcast i32 %3900 to float
  %3902 = fadd fast float %3901, %3878
  %3903 = fmul fast float %3894, %3894
  %3904 = fmul fast float %3903, %3891
  %3905 = fmul fast float %3904, %3902
  %3906 = fdiv fast float 0x3FF0A00000000000, %3905
  %3907 = fmul fast float %3906, %3882
  %3908 = call float @dx.op.unary.f32(i32 6, float %3870)  ; FAbs(value)
  %3909 = fsub fast float 1.000000e+00, %3908
  %3910 = bitcast float %3909 to i32
  %3911 = sitofp i32 %3910 to float
  %3912 = fmul fast float %3911, 5.000000e+00
  %3913 = fadd fast float %3912, 0xC1EFBF8940000000
  %3914 = fptosi float %3913 to i32
  %3915 = bitcast i32 %3914 to float
  %3916 = fsub fast float 1.000000e+00, %1656
  %3917 = fsub fast float 1.000000e+00, %1657
  %3918 = fsub fast float 1.000000e+00, %1668
  %3919 = fmul fast float %3915, %3916
  %3920 = fmul fast float %3915, %3917
  %3921 = fmul fast float %3915, %3918
  %3922 = fadd fast float %3919, %1656
  %3923 = fadd fast float %3920, %1657
  %3924 = fadd fast float %3921, %1668
  %3925 = fmul fast float %3869, 9.843750e-01
  %3926 = fadd fast float %3925, 7.812500e-03
  %3927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %55, float %3926, float %2937, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3928 = extractvalue %dx.types.ResRet.f32 %3927, 2
  %3929 = extractvalue %dx.types.ResRet.f32 %3927, 3
  %3930 = fmul fast float %3928, %1656
  %3931 = fmul fast float %3928, %1657
  %3932 = fmul fast float %3928, %1668
  %3933 = fadd fast float %3930, %3929
  %3934 = fadd fast float %3931, %3929
  %3935 = fadd fast float %3932, %3929
  %3936 = call float @dx.op.binary.f32(i32 35, float %3934, float %3935)  ; FMax(a,b)
  %3937 = call float @dx.op.binary.f32(i32 35, float %3933, float %3936)  ; FMax(a,b)
  %3938 = fsub fast float 1.000000e+00, %3937
  %3939 = fmul fast float %3875, %3858
  %3940 = fmul fast float %3939, %3938
  %3941 = fmul fast float %3875, %3859
  %3942 = fmul fast float %3941, %3938
  %3943 = fmul fast float %3875, %3860
  %3944 = fmul fast float %3943, %3938
  %3945 = fmul fast float %3939, %3907
  %3946 = fmul fast float %3945, %3922
  %3947 = fmul fast float %3941, %3907
  %3948 = fmul fast float %3947, %3923
  %3949 = fmul fast float %3943, %3907
  %3950 = fmul fast float %3949, %3924
  %3951 = fadd fast float %3940, %2950
  %3952 = fmul fast float %3951, %1025
  %3953 = fadd fast float %3942, %2951
  %3954 = fmul fast float %3953, %1025
  %3955 = fadd fast float %3944, %2952
  %3956 = fmul fast float %3955, %1025
  %3957 = fadd fast float %3946, %2959
  %3958 = fmul fast float %3957, %1025
  %3959 = fadd fast float %3948, %2961
  %3960 = fmul fast float %3959, %1025
  %3961 = fadd fast float %3950, %2963
  %3962 = fmul fast float %3961, %1025
  br label %3963

; <label>:3963                                    ; preds = %3842, %3776, %2868
  %3964 = phi float [ %2960, %2868 ], [ %2960, %3776 ], [ %3958, %3842 ]
  %3965 = phi float [ %2962, %2868 ], [ %2962, %3776 ], [ %3960, %3842 ]
  %3966 = phi float [ %2964, %2868 ], [ %2964, %3776 ], [ %3962, %3842 ]
  %3967 = phi float [ %2956, %2868 ], [ %2956, %3776 ], [ %3952, %3842 ]
  %3968 = phi float [ %2957, %2868 ], [ %2957, %3776 ], [ %3954, %3842 ]
  %3969 = phi float [ %2958, %2868 ], [ %2958, %3776 ], [ %3956, %3842 ]
  %3970 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3971 = extractvalue %dx.types.CBufRet.i32 %3970, 0
  %3972 = icmp eq i32 %3971, 0
  br i1 %3972, label %4524, label %3973

; <label>:3973                                    ; preds = %3963
  %3974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3975 = extractvalue %dx.types.CBufRet.f32 %3974, 2
  %3976 = extractvalue %dx.types.CBufRet.f32 %3974, 3
  %3977 = fmul fast float %3975, %88
  %3978 = fmul fast float %3976, %89
  %3979 = fptoui float %3977 to i32
  %3980 = fptoui float %3978 to i32
  %3981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3982 = extractvalue %dx.types.CBufRet.f32 %3981, 0
  %3983 = extractvalue %dx.types.CBufRet.f32 %3981, 2
  %3984 = extractvalue %dx.types.CBufRet.f32 %3981, 3
  %3985 = fadd fast float %79, -4.000000e+00
  %3986 = call float @dx.op.binary.f32(i32 35, float %3985, float 0.000000e+00)  ; FMax(a,b)
  %3987 = fadd fast float %3986, %3982
  %3988 = fmul fast float %3987, %3983
  %3989 = call float @dx.op.unary.f32(i32 23, float %3988)  ; Log(value)
  %3990 = fmul fast float %3989, %3984
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 2
  %3993 = fmul fast float %3990, %3992
  %3994 = call float @dx.op.unary.f32(i32 7, float %3993)  ; Saturate(value)
  %3995 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.i32 %3995, 1
  %3997 = add i32 %3996, -1
  %3998 = uitofp i32 %3996 to float
  %3999 = fmul fast float %3998, %3994
  %4000 = fptoui float %3999 to i32
  %4001 = call i32 @dx.op.binary.i32(i32 40, i32 %4000, i32 %3997)  ; UMin(a,b)
  %4002 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.i32 %4002, 2
  %4004 = extractvalue %dx.types.CBufRet.i32 %4002, 3
  %4005 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3980, i32 %4003, i32 %3979)  ; UMad(a,b,c)
  %4006 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4001, i32 %4004, i32 %4005)  ; UMad(a,b,c)
  %4007 = add nsw i32 %3971, -1
  %4008 = call i32 @dx.op.binary.i32(i32 37, i32 %4007, i32 0)  ; IMax(a,b)
  %4009 = call float @dx.op.binary.f32(i32 35, float %79, float 0.000000e+00)  ; FMax(a,b)
  %4010 = fptoui float %4009 to i32
  %4011 = lshr i32 %4010, 5
  %4012 = call i32 @dx.op.binary.i32(i32 40, i32 %4011, i32 8191)  ; UMin(a,b)
  %4013 = shl i32 %4012, 2
  %4014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4013, i32 undef)  ; BufferLoad(srv,index,wot)
  %4015 = extractvalue %dx.types.ResRet.i32 %4014, 0
  %4016 = lshr i32 %4015, 16
  %4017 = and i32 %4015, 65535
  %4018 = lshr i32 %4015, 21
  %4019 = lshr i32 %4017, 5
  %4020 = call i32 @dx.op.binary.i32(i32 40, i32 %4019, i32 %4008)  ; UMin(a,b)
  %4021 = icmp ugt i32 %4018, %4020
  br i1 %4021, label %4524, label %4022

; <label>:4022                                    ; preds = %3973
  br label %4023

; <label>:4023                                    ; preds = %4514, %4022
  %4024 = phi i32 [ %4521, %4514 ], [ %4018, %4022 ]
  %4025 = phi float [ %4515, %4514 ], [ %3964, %4022 ]
  %4026 = phi float [ %4516, %4514 ], [ %3965, %4022 ]
  %4027 = phi float [ %4517, %4514 ], [ %3966, %4022 ]
  %4028 = phi float [ %4518, %4514 ], [ %3967, %4022 ]
  %4029 = phi float [ %4519, %4514 ], [ %3968, %4022 ]
  %4030 = phi float [ %4520, %4514 ], [ %3969, %4022 ]
  %4031 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4032 = extractvalue %dx.types.CBufRet.i32 %4031, 0
  %4033 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4006, i32 %4032, i32 %4024)  ; UMad(a,b,c)
  %4034 = shl i32 %4033, 2
  %4035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4034, i32 undef)  ; BufferLoad(srv,index,wot)
  %4036 = extractvalue %dx.types.ResRet.i32 %4035, 0
  %4037 = shl i32 %4024, 5
  %4038 = sub nsw i32 %4016, %4037
  %4039 = call i32 @dx.op.binary.i32(i32 37, i32 %4038, i32 0)  ; IMax(a,b)
  %4040 = call i32 @dx.op.binary.i32(i32 38, i32 %4039, i32 31)  ; IMin(a,b)
  %4041 = sub nsw i32 1, %4016
  %4042 = add nsw i32 %4041, %4017
  %4043 = call i32 @dx.op.binary.i32(i32 37, i32 %4042, i32 0)  ; IMax(a,b)
  %4044 = call i32 @dx.op.binary.i32(i32 38, i32 %4043, i32 32)  ; IMin(a,b)
  %4045 = and i32 %4044, 31
  %4046 = shl i32 -1, %4045
  %4047 = xor i32 %4046, -1
  %4048 = and i32 %4040, 31
  %4049 = shl i32 %4047, %4048
  %4050 = icmp eq i32 %4044, 32
  %4051 = select i1 %4050, i32 -1, i32 %4049
  %4052 = and i32 %4051, %4036
  %4053 = icmp eq i32 %4052, 0
  br i1 %4053, label %4514, label %4054

; <label>:4054                                    ; preds = %4023
  br label %4055

; <label>:4055                                    ; preds = %4189, %4054
  %4056 = phi i32 [ %4067, %4189 ], [ %4052, %4054 ]
  %4057 = phi float [ %4190, %4189 ], [ %4025, %4054 ]
  %4058 = phi float [ %4191, %4189 ], [ %4026, %4054 ]
  %4059 = phi float [ %4192, %4189 ], [ %4027, %4054 ]
  %4060 = phi float [ %4193, %4189 ], [ %4028, %4054 ]
  %4061 = phi float [ %4194, %4189 ], [ %4029, %4054 ]
  %4062 = phi float [ %4195, %4189 ], [ %4030, %4054 ]
  %4063 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4056)  ; FirstbitLo(value)
  %4064 = add i32 %4063, %4037
  %4065 = and i32 %4063, 31
  %4066 = shl i32 1, %4065
  %4067 = xor i32 %4066, %4056
  %4068 = mul i32 %4064, 112
  %4069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4068, i32 undef)  ; BufferLoad(srv,index,wot)
  %4070 = extractvalue %dx.types.ResRet.f32 %4069, 0
  %4071 = extractvalue %dx.types.ResRet.f32 %4069, 1
  %4072 = extractvalue %dx.types.ResRet.f32 %4069, 2
  %4073 = or i32 %4068, 12
  %4074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.f32 %4074, 0
  %4076 = add i32 %4068, 16
  %4077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4076, i32 undef)  ; BufferLoad(srv,index,wot)
  %4078 = extractvalue %dx.types.ResRet.f32 %4077, 0
  %4079 = extractvalue %dx.types.ResRet.f32 %4077, 1
  %4080 = extractvalue %dx.types.ResRet.f32 %4077, 2
  %4081 = add i32 %4068, 28
  %4082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4081, i32 undef)  ; BufferLoad(srv,index,wot)
  %4083 = extractvalue %dx.types.ResRet.i32 %4082, 0
  %4084 = add i32 %4068, 44
  %4085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4084, i32 undef)  ; BufferLoad(srv,index,wot)
  %4086 = extractvalue %dx.types.ResRet.f32 %4085, 0
  %4087 = add i32 %4068, 48
  %4088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4087, i32 undef)  ; BufferLoad(srv,index,wot)
  %4089 = extractvalue %dx.types.ResRet.f32 %4088, 0
  %4090 = extractvalue %dx.types.ResRet.f32 %4088, 1
  %4091 = extractvalue %dx.types.ResRet.f32 %4088, 2
  %4092 = extractvalue %dx.types.ResRet.f32 %4088, 3
  %4093 = add i32 %4068, 64
  %4094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4093, i32 undef)  ; BufferLoad(srv,index,wot)
  %4095 = extractvalue %dx.types.ResRet.f32 %4094, 0
  %4096 = extractvalue %dx.types.ResRet.f32 %4094, 1
  %4097 = extractvalue %dx.types.ResRet.f32 %4094, 2
  %4098 = extractvalue %dx.types.ResRet.f32 %4094, 3
  %4099 = add i32 %4068, 80
  %4100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4099, i32 undef)  ; BufferLoad(srv,index,wot)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 1
  %4102 = extractvalue %dx.types.ResRet.f32 %4100, 2
  %4103 = add i32 %4068, 92
  %4104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4103, i32 undef)  ; BufferLoad(srv,index,wot)
  %4105 = extractvalue %dx.types.ResRet.i32 %4104, 0
  %4106 = call float @dx.op.dot3.f32(i32 55, float %4070, float %4071, float %4072, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4107 = select i1 %228, float %4101, float %4070
  %4108 = select i1 %228, float %4106, float %4071
  %4109 = select i1 %228, float %4102, float %4072
  %4110 = and i32 %4105, 65535
  %4111 = uitofp i32 %4110 to float
  %4112 = lshr i32 %4105, 16
  %4113 = uitofp i32 %4112 to float
  %4114 = and i32 %4083, 65535
  %4115 = and i32 %4083, 50331648
  %4116 = icmp eq i32 %4115, 33554432
  %4117 = fsub fast float %4089, %135
  %4118 = fsub fast float %4090, %136
  %4119 = fsub fast float %4091, %137
  %4120 = call float @dx.op.dot3.f32(i32 55, float %4117, float %4118, float %4119, float %4117, float %4118, float %4119)  ; Dot3(ax,ay,az,bx,by,bz)
  %4121 = call float @dx.op.unary.f32(i32 24, float %4120)  ; Sqrt(value)
  %4122 = fdiv fast float 1.000000e+00, %4121
  %4123 = fmul fast float %4122, %4117
  %4124 = fmul fast float %4122, %4118
  %4125 = fmul fast float %4122, %4119
  %4126 = fadd fast float %4121, %4075
  %4127 = fdiv fast float 1.000000e+00, %4126
  %4128 = fmul float %4086, %4127
  %4129 = fmul float %4128, %4128
  %4130 = call float @dx.op.unary.f32(i32 7, float %4129)  ; Saturate(value)
  br i1 %4116, label %4131, label %4152

; <label>:4131                                    ; preds = %4055
  %4132 = fmul fast float %4097, %4078
  %4133 = fmul fast float %4097, %4079
  %4134 = fmul fast float %4097, %4080
  %4135 = fadd fast float %4117, %4132
  %4136 = fadd fast float %4118, %4133
  %4137 = fadd fast float %4119, %4134
  %4138 = call float @dx.op.dot3.f32(i32 55, float %4135, float %4136, float %4137, float %4135, float %4136, float %4137)  ; Dot3(ax,ay,az,bx,by,bz)
  %4139 = call float @dx.op.unary.f32(i32 25, float %4138)  ; Rsqrt(value)
  %4140 = fmul fast float %4139, %4135
  %4141 = fmul fast float %4139, %4136
  %4142 = fmul fast float %4139, %4137
  %4143 = fsub fast float %135, %4089
  %4144 = fsub fast float %136, %4090
  %4145 = fsub fast float %137, %4091
  %4146 = fsub fast float -0.000000e+00, %4143
  %4147 = fsub fast float -0.000000e+00, %4144
  %4148 = fsub fast float -0.000000e+00, %4145
  %4149 = call float @dx.op.dot3.f32(i32 55, float %4146, float %4147, float %4148, float %4078, float %4079, float %4080)  ; Dot3(ax,ay,az,bx,by,bz)
  %4150 = fcmp fast ogt float %4149, 0.000000e+00
  %4151 = uitofp i1 %4150 to float
  br label %4152

; <label>:4152                                    ; preds = %4131, %4055
  %4153 = phi float [ %4151, %4131 ], [ 1.000000e+00, %4055 ]
  %4154 = phi float [ %4140, %4131 ], [ %4123, %4055 ]
  %4155 = phi float [ %4141, %4131 ], [ %4124, %4055 ]
  %4156 = phi float [ %4142, %4131 ], [ %4125, %4055 ]
  %4157 = call float @dx.op.dot3.f32(i32 55, float %4078, float %4079, float %4080, float %4154, float %4155, float %4156)  ; Dot3(ax,ay,az,bx,by,bz)
  %4158 = fmul fast float %4157, %4157
  %4159 = call float @dx.op.unary.f32(i32 7, float %4158)  ; Saturate(value)
  %4160 = fsub fast float 1.000000e+00, %4159
  %4161 = fmul fast float %4160, 5.000000e-01
  %4162 = fcmp fast ogt float %4157, 0.000000e+00
  %4163 = fsub fast float 1.000000e+00, %4161
  %4164 = select i1 %4162, float %4161, float %4163
  %4165 = fmul fast float %4164, %4113
  %4166 = fadd fast float %4165, %4111
  %4167 = fmul fast float %4166, 0x3EF0001000000000
  %4168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %4167, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4169 = extractvalue %dx.types.ResRet.f32 %4168, 0
  %4170 = fmul fast float %4157, %4095
  %4171 = fadd fast float %4170, %4096
  %4172 = call float @dx.op.unary.f32(i32 7, float %4171)  ; Saturate(value)
  %4173 = select i1 %4116, float 1.000000e+00, float %4172
  %4174 = select i1 %4116, float %4172, float 1.000000e+00
  %4175 = fmul fast float %4121, %4092
  %4176 = fsub fast float 1.000000e+00, %4175
  %4177 = fmul fast float %4176, %4098
  %4178 = call float @dx.op.unary.f32(i32 7, float %4177)  ; Saturate(value)
  %4179 = fmul fast float %4178, %4174
  %4180 = fmul fast float %4179, 2.000000e+00
  %4181 = fsub fast float 3.000000e+00, %4180
  %4182 = fmul fast float %4169, %4153
  %4183 = fmul fast float %4179, %4179
  %4184 = fmul fast float %4183, %4182
  %4185 = fmul fast float %4184, %4181
  %4186 = call float @dx.op.binary.f32(i32 36, float %4185, float %4185)  ; FMin(a,b)
  %4187 = call float @dx.op.binary.f32(i32 36, float %4185, float %4186)  ; FMin(a,b)
  %4188 = fcmp fast ogt float %4187, 0.000000e+00
  br i1 %4188, label %4197, label %4189, !dx.controlflow.hints !127

; <label>:4189                                    ; preds = %4364, %4297, %4152
  %4190 = phi float [ %4057, %4297 ], [ %4057, %4152 ], [ %4510, %4364 ]
  %4191 = phi float [ %4058, %4297 ], [ %4058, %4152 ], [ %4511, %4364 ]
  %4192 = phi float [ %4059, %4297 ], [ %4059, %4152 ], [ %4512, %4364 ]
  %4193 = phi float [ %4060, %4297 ], [ %4060, %4152 ], [ %4501, %4364 ]
  %4194 = phi float [ %4061, %4297 ], [ %4061, %4152 ], [ %4502, %4364 ]
  %4195 = phi float [ %4062, %4297 ], [ %4062, %4152 ], [ %4503, %4364 ]
  %4196 = icmp eq i32 %4056, %4066
  br i1 %4196, label %4513, label %4055

; <label>:4197                                    ; preds = %4152
  %4198 = icmp eq i32 %4114, 255
  br i1 %4198, label %4297, label %4199, !dx.controlflow.hints !128

; <label>:4199                                    ; preds = %4197
  %4200 = mul nuw nsw i32 %4114, 176
  %4201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4200, i32 undef)  ; BufferLoad(srv,index,wot)
  %4202 = extractvalue %dx.types.ResRet.f32 %4201, 0
  %4203 = extractvalue %dx.types.ResRet.f32 %4201, 1
  %4204 = extractvalue %dx.types.ResRet.f32 %4201, 2
  %4205 = extractvalue %dx.types.ResRet.f32 %4201, 3
  %4206 = add nuw nsw i32 %4200, 16
  %4207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4206, i32 undef)  ; BufferLoad(srv,index,wot)
  %4208 = extractvalue %dx.types.ResRet.f32 %4207, 0
  %4209 = extractvalue %dx.types.ResRet.f32 %4207, 1
  %4210 = add nuw nsw i32 %4200, 32
  %4211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4210, i32 undef)  ; BufferLoad(srv,index,wot)
  %4212 = extractvalue %dx.types.ResRet.f32 %4211, 0
  %4213 = extractvalue %dx.types.ResRet.f32 %4211, 1
  %4214 = extractvalue %dx.types.ResRet.f32 %4211, 2
  %4215 = add nuw nsw i32 %4200, 48
  %4216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4215, i32 undef)  ; BufferLoad(srv,index,wot)
  %4217 = extractvalue %dx.types.ResRet.f32 %4216, 0
  %4218 = extractvalue %dx.types.ResRet.f32 %4216, 1
  %4219 = extractvalue %dx.types.ResRet.f32 %4216, 2
  %4220 = extractvalue %dx.types.ResRet.f32 %4216, 3
  %4221 = add nuw nsw i32 %4200, 64
  %4222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4221, i32 undef)  ; BufferLoad(srv,index,wot)
  %4223 = extractvalue %dx.types.ResRet.f32 %4222, 0
  %4224 = extractvalue %dx.types.ResRet.f32 %4222, 1
  %4225 = extractvalue %dx.types.ResRet.f32 %4222, 2
  %4226 = extractvalue %dx.types.ResRet.f32 %4222, 3
  %4227 = add nuw nsw i32 %4200, 80
  %4228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4227, i32 undef)  ; BufferLoad(srv,index,wot)
  %4229 = extractvalue %dx.types.ResRet.f32 %4228, 0
  %4230 = extractvalue %dx.types.ResRet.f32 %4228, 1
  %4231 = extractvalue %dx.types.ResRet.f32 %4228, 2
  %4232 = extractvalue %dx.types.ResRet.f32 %4228, 3
  %4233 = add nuw nsw i32 %4200, 96
  %4234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4233, i32 undef)  ; BufferLoad(srv,index,wot)
  %4235 = extractvalue %dx.types.ResRet.f32 %4234, 0
  %4236 = extractvalue %dx.types.ResRet.f32 %4234, 1
  %4237 = extractvalue %dx.types.ResRet.f32 %4234, 2
  %4238 = extractvalue %dx.types.ResRet.f32 %4234, 3
  %4239 = bitcast float %4209 to i32
  %4240 = fmul fast float %4214, %67
  %4241 = fmul fast float %4214, %68
  %4242 = fmul fast float %4214, %69
  %4243 = fadd fast float %4240, %135
  %4244 = fadd fast float %4241, %136
  %4245 = fadd fast float %4242, %137
  %4246 = fmul fast float %4243, %4217
  %4247 = call float @dx.op.tertiary.f32(i32 46, float %4244, float %4223, float %4246)  ; FMad(a,b,c)
  %4248 = call float @dx.op.tertiary.f32(i32 46, float %4245, float %4229, float %4247)  ; FMad(a,b,c)
  %4249 = fadd fast float %4248, %4235
  %4250 = fmul fast float %4243, %4218
  %4251 = call float @dx.op.tertiary.f32(i32 46, float %4244, float %4224, float %4250)  ; FMad(a,b,c)
  %4252 = call float @dx.op.tertiary.f32(i32 46, float %4245, float %4230, float %4251)  ; FMad(a,b,c)
  %4253 = fadd fast float %4252, %4236
  %4254 = fmul fast float %4243, %4219
  %4255 = call float @dx.op.tertiary.f32(i32 46, float %4244, float %4225, float %4254)  ; FMad(a,b,c)
  %4256 = call float @dx.op.tertiary.f32(i32 46, float %4245, float %4231, float %4255)  ; FMad(a,b,c)
  %4257 = fadd fast float %4256, %4237
  %4258 = fmul fast float %4243, %4220
  %4259 = call float @dx.op.tertiary.f32(i32 46, float %4244, float %4226, float %4258)  ; FMad(a,b,c)
  %4260 = call float @dx.op.tertiary.f32(i32 46, float %4245, float %4232, float %4259)  ; FMad(a,b,c)
  %4261 = fadd fast float %4260, %4238
  %4262 = fdiv fast float %4249, %4261
  %4263 = fdiv fast float %4253, %4261
  %4264 = fdiv fast float %4257, %4261
  %4265 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4264)  ; FMax(a,b)
  %4266 = fmul fast float %239, 0x401921FB60000000
  %4267 = call float @dx.op.unary.f32(i32 13, float %4266)  ; Sin(value)
  %4268 = call float @dx.op.unary.f32(i32 12, float %4266)  ; Cos(value)
  %4269 = fsub fast float -0.000000e+00, %4267
  %4270 = fmul fast float %4204, 5.000000e-01
  %4271 = call float @dx.op.dot2.f32(i32 54, float %239, float %239, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %4272 = call float @dx.op.unary.f32(i32 22, float %4271)  ; Frc(value)
  %4273 = fmul fast float %4272, 0x404A7DD040000000
  %4274 = call float @dx.op.unary.f32(i32 22, float %4273)  ; Frc(value)
  %4275 = fmul fast float %4274, %4213
  %4276 = fadd fast float %4275, %4270
  %4277 = call float @dx.op.tertiary.f32(i32 46, float %4276, float %4269, float 0.000000e+00)  ; FMad(a,b,c)
  %4278 = call float @dx.op.tertiary.f32(i32 46, float %4276, float %4268, float 0.000000e+00)  ; FMad(a,b,c)
  %4279 = fadd fast float %4277, %4262
  %4280 = fadd fast float %4278, %4263
  %4281 = fmul fast float %4279, %4208
  %4282 = fmul fast float %4280, %4208
  %4283 = call float @dx.op.binary.f32(i32 35, float %4281, float %4204)  ; FMax(a,b)
  %4284 = call float @dx.op.binary.f32(i32 35, float %4282, float %4204)  ; FMax(a,b)
  %4285 = call float @dx.op.binary.f32(i32 36, float %4283, float %4205)  ; FMin(a,b)
  %4286 = call float @dx.op.binary.f32(i32 36, float %4284, float %4205)  ; FMin(a,b)
  %4287 = fadd fast float %4285, %4202
  %4288 = fadd fast float %4286, %4203
  %4289 = uitofp i32 %4239 to float
  %4290 = fadd fast float %4265, %4212
  %4291 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %4287, float %4288, float %4289, float undef, i32 0, i32 0, i32 undef, float %4290)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4292 = extractvalue %dx.types.ResRet.f32 %4291, 0
  %4293 = fadd fast float %4292, -1.000000e+00
  %4294 = fmul fast float %4293, %4173
  %4295 = fadd fast float %4294, 1.000000e+00
  %4296 = fmul fast float %4295, %4185
  br label %4297

; <label>:4297                                    ; preds = %4199, %4197
  %4298 = phi float [ %4296, %4199 ], [ %4185, %4197 ]
  %4299 = call float @dx.op.binary.f32(i32 36, float %4298, float %4298)  ; FMin(a,b)
  %4300 = call float @dx.op.binary.f32(i32 36, float %4298, float %4299)  ; FMin(a,b)
  %4301 = fcmp fast ogt float %4300, 0.000000e+00
  br i1 %4301, label %4302, label %4189, !dx.controlflow.hints !129

; <label>:4302                                    ; preds = %4297
  %4303 = fmul fast float %4298, %4107
  %4304 = fmul fast float %4298, %4108
  %4305 = fmul fast float %4298, %4109
  %4306 = fsub fast float %4091, %1455
  %4307 = fcmp fast ogt float %4306, 0.000000e+00
  %4308 = fsub fast float %137, %1455
  %4309 = fcmp fast ogt float %4308, 0.000000e+00
  %4310 = xor i1 %4309, %4307
  %4311 = fsub fast float %1455, %4091
  %4312 = fmul fast float %4311, 2.000000e+00
  %4313 = fadd fast float %4312, %4091
  %4314 = select i1 %4310, float %4091, float %4313
  %4315 = fsub fast float %4314, %137
  %4316 = call float @dx.op.dot3.f32(i32 55, float %4117, float %4118, float %4315, float %4117, float %4118, float %4315)  ; Dot3(ax,ay,az,bx,by,bz)
  %4317 = call float @dx.op.unary.f32(i32 25, float %4316)  ; Rsqrt(value)
  %4318 = fmul fast float %4317, %4117
  %4319 = fmul fast float %4317, %4118
  %4320 = fmul fast float %4317, %4315
  %4321 = fsub fast float %1455, %137
  %4322 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4321)  ; Dot3(ax,ay,az,bx,by,bz)
  %4323 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4318, float %4319, float %4320)  ; Dot3(ax,ay,az,bx,by,bz)
  %4324 = fdiv fast float 1.000000e+00, %4323
  %4325 = fmul fast float %4324, %4322
  %4326 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4308, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4327 = fcmp fast ogt float %4326, 0.000000e+00
  %4328 = fcmp fast olt float %4326, 0.000000e+00
  %4329 = zext i1 %4327 to i32
  %4330 = zext i1 %4328 to i32
  %4331 = sub nsw i32 %4329, %4330
  %4332 = sitofp i32 %4331 to float
  %4333 = fsub fast float %4314, %1455
  %4334 = call float @dx.op.dot3.f32(i32 55, float %4117, float %4118, float %4333, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4335 = fcmp fast ogt float %4334, 0.000000e+00
  %4336 = fcmp fast olt float %4334, 0.000000e+00
  %4337 = zext i1 %4335 to i32
  %4338 = zext i1 %4336 to i32
  %4339 = sub nsw i32 %4337, %4338
  %4340 = sitofp i32 %4339 to float
  %4341 = fcmp fast une float %4332, %4340
  br i1 %4341, label %4342, label %4352

; <label>:4342                                    ; preds = %4302
  %4343 = fmul fast float %4325, %4320
  %4344 = fmul fast float %4325, %4319
  %4345 = fmul fast float %4325, %4318
  %4346 = fmul fast float %4345, %4345
  %4347 = fmul fast float %4344, %4344
  %4348 = fadd fast float %4346, %4347
  %4349 = fmul fast float %4343, %4343
  %4350 = fadd fast float %4348, %4349
  %4351 = call float @dx.op.unary.f32(i32 24, float %4350)  ; Sqrt(value)
  br label %4364

; <label>:4352                                    ; preds = %4302
  %4353 = icmp slt i32 %4331, 0
  br i1 %4353, label %4354, label %4364

; <label>:4354                                    ; preds = %4352
  %4355 = fsub fast float %135, %4089
  %4356 = fsub fast float %136, %4090
  %4357 = fsub fast float %137, %4314
  %4358 = fmul fast float %4355, %4355
  %4359 = fmul fast float %4356, %4356
  %4360 = fadd fast float %4358, %4359
  %4361 = fmul fast float %4357, %4357
  %4362 = fadd fast float %4360, %4361
  %4363 = call float @dx.op.unary.f32(i32 24, float %4362)  ; Sqrt(value)
  br label %4364

; <label>:4364                                    ; preds = %4354, %4352, %4342
  %4365 = phi float [ %4351, %4342 ], [ %4363, %4354 ], [ 0.000000e+00, %4352 ]
  %4366 = and i1 %4309, %4307
  %4367 = fsub fast float -0.000000e+00, %4365
  %4368 = select i1 %4366, float -0.000000e+00, float %4367
  %4369 = fmul fast float %1456, 0x3FF7154760000000
  %4370 = fmul fast float %4369, %4368
  %4371 = fmul fast float %1457, 0x3FF7154760000000
  %4372 = fmul fast float %4371, %4368
  %4373 = fmul fast float %1458, 0x3FF7154760000000
  %4374 = fmul fast float %4373, %4368
  %4375 = call float @dx.op.unary.f32(i32 21, float %4370)  ; Exp(value)
  %4376 = call float @dx.op.unary.f32(i32 21, float %4372)  ; Exp(value)
  %4377 = call float @dx.op.unary.f32(i32 21, float %4374)  ; Exp(value)
  %4378 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4379 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  %4380 = call float @dx.op.unary.f32(i32 7, float %4377)  ; Saturate(value)
  %4381 = fmul fast float %4303, %4378
  %4382 = fmul fast float %4304, %4379
  %4383 = fmul fast float %4305, %4380
  %4384 = fsub fast float %4123, %1655
  %4385 = fsub fast float %4124, %1654
  %4386 = fsub fast float %4125, %1653
  %4387 = call float @dx.op.dot3.f32(i32 55, float %4384, float %4385, float %4386, float %4384, float %4385, float %4386)  ; Dot3(ax,ay,az,bx,by,bz)
  %4388 = call float @dx.op.unary.f32(i32 25, float %4387)  ; Rsqrt(value)
  %4389 = fmul fast float %4388, %4384
  %4390 = fmul fast float %4388, %4385
  %4391 = fmul fast float %4388, %4386
  %4392 = call float @dx.op.dot3.f32(i32 55, float %4123, float %4124, float %4125, float %1662, float %1663, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %4393 = call float @dx.op.dot3.f32(i32 55, float %1652, float %1651, float %1650, float %4389, float %4390, float %4391)  ; Dot3(ax,ay,az,bx,by,bz)
  %4394 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4395 = fmul fast float %4394, %4130
  %4396 = fmul fast float %4394, %4394
  %4397 = fmul fast float %4396, %2965
  %4398 = call float @dx.op.unary.f32(i32 7, float %4397)  ; Saturate(value)
  %4399 = fmul fast float %4395, %4398
  %4400 = bitcast float %4120 to i32
  %4401 = ashr i32 %4400, 1
  %4402 = sub nsw i32 1597463007, %4401
  %4403 = bitcast i32 %4402 to float
  %4404 = fmul fast float %4403, %4117
  %4405 = fmul fast float %4403, %4118
  %4406 = fmul fast float %4403, %4119
  %4407 = fsub fast float %4404, %1655
  %4408 = fsub fast float %4405, %1654
  %4409 = fsub fast float %4406, %1653
  %4410 = call float @dx.op.dot3.f32(i32 55, float %4407, float %4408, float %4409, float %4407, float %4408, float %4409)  ; Dot3(ax,ay,az,bx,by,bz)
  %4411 = call float @dx.op.unary.f32(i32 25, float %4410)  ; Rsqrt(value)
  %4412 = fmul fast float %4407, %4411
  %4413 = fmul fast float %4408, %4411
  %4414 = fmul fast float %4409, %4411
  %4415 = call float @dx.op.dot3.f32(i32 55, float %1662, float %1663, float %1664, float %4412, float %4413, float %4414)  ; Dot3(ax,ay,az,bx,by,bz)
  %4416 = fmul fast float %4415, %4415
  %4417 = call float @dx.op.unary.f32(i32 6, float %4392)  ; FAbs(value)
  %4418 = fsub fast float 1.000000e+00, %1665
  %4419 = call float @dx.op.binary.f32(i32 35, float %4418, float 0x3F847AE140000000)  ; FMax(a,b)
  %4420 = fmul fast float %4419, %4419
  %4421 = fmul fast float %4420, %4420
  %4422 = fsub fast float 1.000000e+00, %4421
  %4423 = fmul fast float %1670, %1670
  %4424 = fmul fast float %4423, %4422
  %4425 = fadd fast float %4424, %4421
  %4426 = bitcast float %4425 to i32
  %4427 = ashr i32 %4426, 1
  %4428 = add nsw i32 %4427, 532487669
  %4429 = bitcast i32 %4428 to float
  %4430 = fadd fast float %4429, %1670
  %4431 = fmul fast float %4421, %4416
  %4432 = fsub fast float 1.000000e+00, %4416
  %4433 = fadd fast float %4432, %4431
  %4434 = fmul fast float %4417, %4417
  %4435 = fmul fast float %4434, %4422
  %4436 = fadd fast float %4435, %4421
  %4437 = bitcast float %4436 to i32
  %4438 = ashr i32 %4437, 1
  %4439 = add nsw i32 %4438, 532487669
  %4440 = bitcast i32 %4439 to float
  %4441 = fadd fast float %4440, %4417
  %4442 = fmul fast float %4433, %4433
  %4443 = fmul fast float %4442, %4430
  %4444 = fmul fast float %4443, %4441
  %4445 = fdiv fast float 1.000000e+00, %4444
  %4446 = bitcast float %4421 to i32
  %4447 = sitofp i32 %4446 to float
  %4448 = fmul fast float %4447, 0x3FE7F73180000000
  %4449 = fadd fast float %4448, 0x41AFE27C40000000
  %4450 = fptosi float %4449 to i32
  %4451 = bitcast i32 %4450 to float
  %4452 = fmul fast float %4086, 0x3FD80E9D60000000
  %4453 = fmul fast float %4452, %4403
  %4454 = fadd fast float %4451, %4453
  %4455 = bitcast float %4454 to i32
  %4456 = sub nsw i32 2129859010, %4455
  %4457 = bitcast i32 %4456 to float
  %4458 = fmul fast float %4421, %4445
  %4459 = fmul fast float %4458, %4451
  %4460 = fmul fast float %4459, %4457
  %4461 = call float @dx.op.unary.f32(i32 6, float %4393)  ; FAbs(value)
  %4462 = fsub fast float 1.000000e+00, %4461
  %4463 = bitcast float %4462 to i32
  %4464 = sitofp i32 %4463 to float
  %4465 = fmul fast float %4464, 5.000000e+00
  %4466 = fadd fast float %4465, 0xC1EFBF8940000000
  %4467 = fptosi float %4466 to i32
  %4468 = bitcast i32 %4467 to float
  %4469 = fsub fast float 1.000000e+00, %1656
  %4470 = fsub fast float 1.000000e+00, %1657
  %4471 = fsub fast float 1.000000e+00, %1668
  %4472 = fmul fast float %4468, %4469
  %4473 = fmul fast float %4468, %4470
  %4474 = fmul fast float %4468, %4471
  %4475 = fadd fast float %4472, %1656
  %4476 = fadd fast float %4473, %1657
  %4477 = fadd fast float %4474, %1668
  %4478 = fmul fast float %4392, 9.843750e-01
  %4479 = fadd fast float %4478, 7.812500e-03
  %4480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %55, float %4479, float %2937, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4481 = extractvalue %dx.types.ResRet.f32 %4480, 2
  %4482 = extractvalue %dx.types.ResRet.f32 %4480, 3
  %4483 = fmul fast float %4481, %1656
  %4484 = fmul fast float %4481, %1657
  %4485 = fmul fast float %4481, %1668
  %4486 = fadd fast float %4483, %4482
  %4487 = fadd fast float %4484, %4482
  %4488 = fadd fast float %4485, %4482
  %4489 = call float @dx.op.binary.f32(i32 35, float %4487, float %4488)  ; FMax(a,b)
  %4490 = call float @dx.op.binary.f32(i32 35, float %4486, float %4489)  ; FMax(a,b)
  %4491 = fsub fast float 1.000000e+00, %4490
  %4492 = fmul fast float %4381, %1025
  %4493 = fmul fast float %4492, %4399
  %4494 = fmul fast float %4493, %4491
  %4495 = fmul fast float %4382, %1025
  %4496 = fmul fast float %4495, %4399
  %4497 = fmul fast float %4496, %4491
  %4498 = fmul fast float %4383, %1025
  %4499 = fmul fast float %4498, %4399
  %4500 = fmul fast float %4499, %4491
  %4501 = fadd fast float %4494, %4060
  %4502 = fadd fast float %4497, %4061
  %4503 = fadd fast float %4500, %4062
  %4504 = fmul fast float %4493, %4475
  %4505 = fmul fast float %4504, %4460
  %4506 = fmul fast float %4496, %4476
  %4507 = fmul fast float %4506, %4460
  %4508 = fmul fast float %4499, %4477
  %4509 = fmul fast float %4508, %4460
  %4510 = fadd fast float %4505, %4057
  %4511 = fadd fast float %4507, %4058
  %4512 = fadd fast float %4509, %4059
  br label %4189

; <label>:4513                                    ; preds = %4189
  br label %4514

; <label>:4514                                    ; preds = %4513, %4023
  %4515 = phi float [ %4025, %4023 ], [ %4190, %4513 ]
  %4516 = phi float [ %4026, %4023 ], [ %4191, %4513 ]
  %4517 = phi float [ %4027, %4023 ], [ %4192, %4513 ]
  %4518 = phi float [ %4028, %4023 ], [ %4193, %4513 ]
  %4519 = phi float [ %4029, %4023 ], [ %4194, %4513 ]
  %4520 = phi float [ %4030, %4023 ], [ %4195, %4513 ]
  %4521 = add i32 %4024, 1
  %4522 = icmp ugt i32 %4521, %4020
  br i1 %4522, label %4523, label %4023

; <label>:4523                                    ; preds = %4514
  br label %4524

; <label>:4524                                    ; preds = %4523, %3973, %3963
  %4525 = phi float [ %3964, %3963 ], [ %3964, %3973 ], [ %4515, %4523 ]
  %4526 = phi float [ %3965, %3963 ], [ %3965, %3973 ], [ %4516, %4523 ]
  %4527 = phi float [ %3966, %3963 ], [ %3966, %3973 ], [ %4517, %4523 ]
  %4528 = phi float [ %3967, %3963 ], [ %3967, %3973 ], [ %4518, %4523 ]
  %4529 = phi float [ %3968, %3963 ], [ %3968, %3973 ], [ %4519, %4523 ]
  %4530 = phi float [ %3969, %3963 ], [ %3969, %3973 ], [ %4520, %4523 ]
  %4531 = fmul fast float %1025, %1025
  %4532 = fsub fast float 1.000000e+00, %4531
  %4533 = call float @dx.op.dot3.f32(i32 55, float %4532, float %4532, float %4532, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4534 = fsub fast float 1.000000e+00, %4533
  %4535 = fsub fast float 1.000000e+00, %1670
  %4536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4537 = extractvalue %dx.types.CBufRet.f32 %4536, 0
  %4538 = fmul fast float %4537, %4535
  %4539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4540 = extractvalue %dx.types.CBufRet.f32 %4539, 3
  %4541 = fsub fast float 1.000000e+00, %1028
  %4542 = call float @dx.op.unary.f32(i32 7, float %4541)  ; Saturate(value)
  %4543 = fadd fast float %4530, %1030
  %4544 = fmul fast float %4543, %1028
  %4545 = fmul fast float %4542, %4540
  %4546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %4547 = extractvalue %dx.types.CBufRet.f32 %4546, 3
  %4548 = fmul fast float %4528, %1659
  %4549 = fmul fast float %4529, %1660
  %4550 = fmul fast float %4530, %1661
  %4551 = fcmp fast ogt float %79, %186
  %4552 = and i1 %4551, %1461
  %4553 = or i1 %1467, %4552
  %4554 = icmp eq i32 %1460, 2
  %4555 = fcmp fast ole float %79, %186
  %4556 = and i1 %4555, %4554
  %4557 = or i1 %4556, %4553
  br i1 %4552, label %4558, label %4817

; <label>:4558                                    ; preds = %4524
  %4559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4560 = extractvalue %dx.types.CBufRet.f32 %4559, 2
  %4561 = extractvalue %dx.types.CBufRet.f32 %4559, 3
  %4562 = fmul fast float %4560, %88
  %4563 = fmul fast float %4561, %89
  %4564 = call float @dx.op.unary.f32(i32 7, float %4562)  ; Saturate(value)
  %4565 = call float @dx.op.unary.f32(i32 7, float %4563)  ; Saturate(value)
  %4566 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %4564, float %4565, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4567 = extractvalue %dx.types.ResRet.f32 %4566, 0
  %4568 = extractvalue %dx.types.ResRet.f32 %4566, 1
  %4569 = extractvalue %dx.types.ResRet.f32 %4566, 2
  %4570 = extractvalue %dx.types.ResRet.f32 %4566, 3
  %4571 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %4564, float %4565, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4572 = extractvalue %dx.types.ResRet.f32 %4571, 0
  %4573 = extractvalue %dx.types.ResRet.f32 %4571, 1
  %4574 = extractvalue %dx.types.ResRet.f32 %4571, 2
  %4575 = extractvalue %dx.types.ResRet.f32 %4571, 3
  %4576 = call float @dx.op.binary.f32(i32 35, float %4568, float %4569)  ; FMax(a,b)
  %4577 = call float @dx.op.binary.f32(i32 35, float %4567, float %4576)  ; FMax(a,b)
  %4578 = call float @dx.op.binary.f32(i32 35, float %4577, float %4570)  ; FMax(a,b)
  %4579 = call float @dx.op.binary.f32(i32 36, float %4573, float %4574)  ; FMin(a,b)
  %4580 = call float @dx.op.binary.f32(i32 36, float %4572, float %4579)  ; FMin(a,b)
  %4581 = call float @dx.op.binary.f32(i32 36, float %4580, float %4575)  ; FMin(a,b)
  %4582 = fmul fast float %4578, 2.550000e+02
  %4583 = fadd fast float %4582, 0x3F70101020000000
  %4584 = fptoui float %4583 to i32
  %4585 = fmul fast float %4581, 2.550000e+02
  %4586 = fadd fast float %4585, 0x3F70101020000000
  %4587 = fptoui float %4586 to i32
  %4588 = icmp ult i32 %4584, %4587
  br i1 %4588, label %4589, label %4757

; <label>:4589                                    ; preds = %4558
  %4590 = fcmp fast ogt float %78, 9.843750e-01
  %4591 = fadd fast float %79, -4.000000e+00
  %4592 = select i1 %4590, float -4.000000e+00, float %4591
  %4593 = call float @dx.op.binary.f32(i32 35, float %4592, float 0.000000e+00)  ; FMax(a,b)
  %4594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4595 = extractvalue %dx.types.CBufRet.f32 %4594, 0
  %4596 = fadd fast float %4595, %4593
  %4597 = extractvalue %dx.types.CBufRet.f32 %4594, 2
  %4598 = fmul fast float %4596, %4597
  %4599 = call float @dx.op.unary.f32(i32 23, float %4598)  ; Log(value)
  %4600 = extractvalue %dx.types.CBufRet.f32 %4594, 3
  %4601 = fmul fast float %4600, %4599
  %4602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4603 = extractvalue %dx.types.CBufRet.f32 %4602, 2
  %4604 = fmul fast float %4601, %4603
  %4605 = call float @dx.op.unary.f32(i32 7, float %4604)  ; Saturate(value)
  %4606 = uitofp i32 %4584 to float
  %4607 = uitofp i32 %4587 to float
  %4608 = fadd fast float %4606, 5.000000e-01
  %4609 = fadd fast float %4607, 5.000000e-01
  %4610 = fmul fast float %4603, %4608
  %4611 = fmul fast float %4603, %4609
  %4612 = fadd fast float %4610, 0x3F0FFB4800000000
  %4613 = fadd fast float %4611, 0xBF0FFB4800000000
  %4614 = call float @dx.op.binary.f32(i32 35, float %4605, float %4612)  ; FMax(a,b)
  %4615 = call float @dx.op.binary.f32(i32 36, float %4614, float %4613)  ; FMin(a,b)
  %4616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4617 = extractvalue %dx.types.CBufRet.f32 %4616, 1
  %4618 = extractvalue %dx.types.CBufRet.f32 %4616, 2
  %4619 = extractvalue %dx.types.CBufRet.f32 %4616, 0
  %4620 = fmul fast float %4617, %4615
  %4621 = fadd fast float %4619, %4620
  %4622 = fadd fast float %4619, %4618
  %4623 = fsub fast float %4617, %4618
  %4624 = fadd fast float %4623, %4619
  %4625 = call float @dx.op.binary.f32(i32 35, float %4621, float %4622)  ; FMax(a,b)
  %4626 = call float @dx.op.binary.f32(i32 36, float %4625, float %4624)  ; FMin(a,b)
  %4627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %4564, float %4565, float %4626, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4628 = extractvalue %dx.types.ResRet.f32 %4627, 0
  %4629 = extractvalue %dx.types.ResRet.f32 %4627, 1
  %4630 = extractvalue %dx.types.ResRet.f32 %4627, 2
  %4631 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4632 = extractvalue %dx.types.CBufRet.i32 %4631, 0
  %4633 = extractvalue %dx.types.CBufRet.i32 %4631, 1
  %4634 = uitofp i32 %4632 to float
  %4635 = uitofp i32 %4633 to float
  %4636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4637 = extractvalue %dx.types.CBufRet.f32 %4636, 0
  %4638 = extractvalue %dx.types.CBufRet.f32 %4636, 1
  %4639 = fmul fast float %4634, %4564
  %4640 = fmul fast float %4635, %4565
  %4641 = fadd fast float %4639, -5.000000e-01
  %4642 = fadd fast float %4640, -5.000000e-01
  %4643 = call float @dx.op.unary.f32(i32 22, float %4641)  ; Frc(value)
  %4644 = call float @dx.op.unary.f32(i32 22, float %4642)  ; Frc(value)
  %4645 = fmul fast float %4643, %4643
  %4646 = fmul fast float %4645, %4643
  %4647 = fsub fast float 3.000000e+00, %4643
  %4648 = fmul fast float %4645, %4647
  %4649 = fmul fast float %4643, 3.000000e+00
  %4650 = fmul fast float %4646, 3.000000e+00
  %4651 = fmul fast float %4645, 6.000000e+00
  %4652 = fsub fast float %4650, %4651
  %4653 = fadd fast float %4652, 4.000000e+00
  %4654 = fmul fast float %4653, 0x3FC5555560000000
  %4655 = fmul fast float %4646, -3.000000e+00
  %4656 = fadd fast float %4645, %4643
  %4657 = fmul fast float %4656, 3.000000e+00
  %4658 = fadd fast float %4655, 1.000000e+00
  %4659 = fadd fast float %4658, %4657
  %4660 = fmul fast float %4646, 0x3FC5555560000000
  %4661 = fmul fast float %4644, %4644
  %4662 = fmul fast float %4661, %4644
  %4663 = fsub fast float 3.000000e+00, %4644
  %4664 = fmul fast float %4661, %4663
  %4665 = fmul fast float %4644, 3.000000e+00
  %4666 = fmul fast float %4662, 3.000000e+00
  %4667 = fmul fast float %4661, 6.000000e+00
  %4668 = fsub fast float %4666, %4667
  %4669 = fadd fast float %4668, 4.000000e+00
  %4670 = fmul fast float %4669, 0x3FC5555560000000
  %4671 = fmul fast float %4662, -3.000000e+00
  %4672 = fadd fast float %4661, %4644
  %4673 = fmul fast float %4672, 3.000000e+00
  %4674 = fadd fast float %4671, 1.000000e+00
  %4675 = fadd fast float %4674, %4673
  %4676 = fmul fast float %4662, 0x3FC5555560000000
  %4677 = fadd fast float %4643, 1.000000e+00
  %4678 = fsub fast float 1.000000e+00, %4649
  %4679 = fadd fast float %4678, %4648
  %4680 = fadd fast float %4679, %4653
  %4681 = fmul fast float %4680, 0x3FC5555560000000
  %4682 = fdiv fast float %4654, %4681
  %4683 = fsub fast float %4677, %4682
  %4684 = fsub fast float 1.000000e+00, %4643
  %4685 = fadd fast float %4659, %4646
  %4686 = fmul fast float %4685, 0x3FC5555560000000
  %4687 = fdiv fast float %4660, %4686
  %4688 = fadd fast float %4684, %4687
  %4689 = fadd fast float %4644, 1.000000e+00
  %4690 = fsub fast float 1.000000e+00, %4665
  %4691 = fadd fast float %4690, %4664
  %4692 = fadd fast float %4691, %4669
  %4693 = fmul fast float %4692, 0x3FC5555560000000
  %4694 = fdiv fast float %4670, %4693
  %4695 = fsub fast float %4689, %4694
  %4696 = fsub fast float 1.000000e+00, %4644
  %4697 = fadd fast float %4675, %4662
  %4698 = fmul fast float %4697, 0x3FC5555560000000
  %4699 = fdiv fast float %4676, %4698
  %4700 = fadd fast float %4699, %4696
  %4701 = fmul fast float %4683, %4637
  %4702 = fsub fast float %4564, %4701
  %4703 = fmul fast float %4688, %4637
  %4704 = fadd fast float %4703, %4564
  %4705 = fmul fast float %4700, %4638
  %4706 = fadd fast float %4705, %4565
  %4707 = fmul fast float %4695, %4638
  %4708 = fsub fast float %4565, %4707
  %4709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %4702, float %4708, float %4626, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4710 = extractvalue %dx.types.ResRet.f32 %4709, 0
  %4711 = extractvalue %dx.types.ResRet.f32 %4709, 1
  %4712 = extractvalue %dx.types.ResRet.f32 %4709, 2
  %4713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %4704, float %4708, float %4626, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4714 = extractvalue %dx.types.ResRet.f32 %4713, 0
  %4715 = extractvalue %dx.types.ResRet.f32 %4713, 1
  %4716 = extractvalue %dx.types.ResRet.f32 %4713, 2
  %4717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %4702, float %4706, float %4626, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4718 = extractvalue %dx.types.ResRet.f32 %4717, 0
  %4719 = extractvalue %dx.types.ResRet.f32 %4717, 1
  %4720 = extractvalue %dx.types.ResRet.f32 %4717, 2
  %4721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %4704, float %4706, float %4626, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4722 = extractvalue %dx.types.ResRet.f32 %4721, 0
  %4723 = extractvalue %dx.types.ResRet.f32 %4721, 1
  %4724 = extractvalue %dx.types.ResRet.f32 %4721, 2
  %4725 = fsub fast float %4718, %4710
  %4726 = fsub fast float %4719, %4711
  %4727 = fsub fast float %4720, %4712
  %4728 = fmul fast float %4725, %4698
  %4729 = fmul fast float %4726, %4698
  %4730 = fmul fast float %4727, %4698
  %4731 = fadd fast float %4728, %4710
  %4732 = fadd fast float %4729, %4711
  %4733 = fadd fast float %4730, %4712
  %4734 = fsub fast float %4722, %4714
  %4735 = fsub fast float %4723, %4715
  %4736 = fsub fast float %4724, %4716
  %4737 = fmul fast float %4734, %4698
  %4738 = fmul fast float %4735, %4698
  %4739 = fmul fast float %4736, %4698
  %4740 = fsub fast float %4714, %4731
  %4741 = fadd fast float %4740, %4737
  %4742 = fsub fast float %4715, %4732
  %4743 = fadd fast float %4742, %4738
  %4744 = fsub fast float %4716, %4733
  %4745 = fadd fast float %4744, %4739
  %4746 = fmul fast float %4741, %4686
  %4747 = fmul fast float %4743, %4686
  %4748 = fmul fast float %4745, %4686
  %4749 = fadd fast float %4746, %4731
  %4750 = fadd fast float %4747, %4732
  %4751 = fadd fast float %4748, %4733
  %4752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4753 = extractvalue %dx.types.CBufRet.f32 %4752, 1
  %4754 = fmul fast float %4749, %4753
  %4755 = fmul fast float %4750, %4753
  %4756 = fmul fast float %4751, %4753
  br label %4757

; <label>:4757                                    ; preds = %4589, %4558
  %4758 = phi float [ %4628, %4589 ], [ 1.000000e+00, %4558 ]
  %4759 = phi float [ %4629, %4589 ], [ 1.000000e+00, %4558 ]
  %4760 = phi float [ %4630, %4589 ], [ 1.000000e+00, %4558 ]
  %4761 = phi float [ %4754, %4589 ], [ 0.000000e+00, %4558 ]
  %4762 = phi float [ %4755, %4589 ], [ 0.000000e+00, %4558 ]
  %4763 = phi float [ %4756, %4589 ], [ 0.000000e+00, %4558 ]
  %4764 = fmul fast float %4761, %4534
  %4765 = fmul fast float %4762, %4534
  %4766 = fmul fast float %4763, %4534
  %4767 = call float @dx.op.dot3.f32(i32 55, float %4758, float %4759, float %4760, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4768 = call float @dx.op.dot3.f32(i32 55, float %4764, float %4765, float %4766, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4769 = select i1 %228, float %4767, float %4758
  %4770 = select i1 %228, float %4767, float %4759
  %4771 = select i1 %228, float 1.000000e+00, float %4760
  %4772 = select i1 %228, float %4768, float %4764
  %4773 = select i1 %228, float 0.000000e+00, float %4765
  %4774 = select i1 %228, float 0.000000e+00, float %4766
  %4775 = fmul fast float %4769, %4548
  %4776 = fmul fast float %4770, %4549
  %4777 = fmul fast float %4771, %4550
  %4778 = fadd fast float %4775, %4772
  %4779 = fadd fast float %4776, %4773
  %4780 = fadd fast float %4774, %4777
  %4781 = fmul fast float %4769, %4525
  %4782 = fmul fast float %4770, %4526
  %4783 = fmul fast float %4771, %4527
  %4784 = fmul fast float %88, 2.000000e+00
  %4785 = fmul fast float %4784, %4560
  %4786 = fmul fast float %89, 2.000000e+00
  %4787 = fmul fast float %4786, %4561
  %4788 = fsub fast float 1.000000e+00, %4785
  %4789 = fsub fast float 1.000000e+00, %4787
  %4790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4791 = extractvalue %dx.types.CBufRet.f32 %4790, 0
  %4792 = extractvalue %dx.types.CBufRet.f32 %4790, 1
  %4793 = extractvalue %dx.types.CBufRet.f32 %4790, 2
  %4794 = fmul fast float %4788, %4791
  %4795 = fmul fast float %4788, %4792
  %4796 = fmul fast float %4788, %4793
  %4797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4798 = extractvalue %dx.types.CBufRet.f32 %4797, 0
  %4799 = extractvalue %dx.types.CBufRet.f32 %4797, 1
  %4800 = extractvalue %dx.types.CBufRet.f32 %4797, 2
  %4801 = fmul fast float %4789, %4798
  %4802 = fmul fast float %4789, %4799
  %4803 = fmul fast float %4789, %4800
  %4804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4805 = extractvalue %dx.types.CBufRet.f32 %4804, 0
  %4806 = extractvalue %dx.types.CBufRet.f32 %4804, 1
  %4807 = extractvalue %dx.types.CBufRet.f32 %4804, 2
  %4808 = fadd fast float %4801, %4805
  %4809 = fadd fast float %4808, %4794
  %4810 = fadd fast float %4802, %4806
  %4811 = fadd fast float %4810, %4795
  %4812 = fadd fast float %4803, %4807
  %4813 = fadd fast float %4812, %4796
  %4814 = fmul fast float %4809, %186
  %4815 = fmul fast float %4811, %186
  %4816 = fmul fast float %4813, %186
  br label %4817

; <label>:4817                                    ; preds = %4757, %4524
  %4818 = phi float [ %4814, %4757 ], [ %135, %4524 ]
  %4819 = phi float [ %4815, %4757 ], [ %136, %4524 ]
  %4820 = phi float [ %4816, %4757 ], [ %137, %4524 ]
  %4821 = phi float [ %186, %4757 ], [ %79, %4524 ]
  %4822 = phi float [ %4778, %4757 ], [ %4548, %4524 ]
  %4823 = phi float [ %4779, %4757 ], [ %4549, %4524 ]
  %4824 = phi float [ %4780, %4757 ], [ %4550, %4524 ]
  %4825 = phi float [ %4781, %4757 ], [ %4525, %4524 ]
  %4826 = phi float [ %4782, %4757 ], [ %4526, %4524 ]
  %4827 = phi float [ %4783, %4757 ], [ %4527, %4524 ]
  %4828 = phi float [ %4758, %4757 ], [ 1.000000e+00, %4524 ]
  br i1 %4557, label %5983, label %4829

; <label>:4829                                    ; preds = %4817
  %4830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %4831 = extractvalue %dx.types.CBufRet.f32 %4830, 0
  %4832 = extractvalue %dx.types.CBufRet.f32 %4830, 1
  %4833 = extractvalue %dx.types.CBufRet.f32 %4830, 2
  %4834 = extractvalue %dx.types.CBufRet.f32 %4830, 3
  %4835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.f32 %4835, 0
  %4837 = extractvalue %dx.types.CBufRet.f32 %4835, 1
  %4838 = extractvalue %dx.types.CBufRet.f32 %4835, 2
  %4839 = extractvalue %dx.types.CBufRet.f32 %4835, 3
  %4840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %4841 = extractvalue %dx.types.CBufRet.f32 %4840, 0
  %4842 = extractvalue %dx.types.CBufRet.f32 %4840, 1
  %4843 = extractvalue %dx.types.CBufRet.f32 %4840, 2
  %4844 = extractvalue %dx.types.CBufRet.f32 %4840, 3
  %4845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %4846 = extractvalue %dx.types.CBufRet.f32 %4845, 0
  %4847 = extractvalue %dx.types.CBufRet.f32 %4845, 1
  %4848 = extractvalue %dx.types.CBufRet.f32 %4845, 2
  %4849 = extractvalue %dx.types.CBufRet.f32 %4845, 3
  %4850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %4851 = extractvalue %dx.types.CBufRet.f32 %4850, 3
  %4852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %4853 = extractvalue %dx.types.CBufRet.f32 %4852, 3
  %4854 = extractvalue %dx.types.CBufRet.f32 %4852, 0
  %4855 = extractvalue %dx.types.CBufRet.f32 %4852, 1
  %4856 = extractvalue %dx.types.CBufRet.f32 %4852, 2
  %4857 = fcmp fast olt float %4856, -5.000000e-01
  %4858 = call float @dx.op.dot3.f32(i32 55, float %4818, float %4819, float %4820, float %4818, float %4819, float %4820)  ; Dot3(ax,ay,az,bx,by,bz)
  %4859 = call float @dx.op.unary.f32(i32 25, float %4858)  ; Rsqrt(value)
  %4860 = fmul fast float %4859, %4858
  %4861 = fmul fast float %4859, %4818
  %4862 = fmul fast float %4859, %4819
  %4863 = fmul fast float %4859, %4820
  %4864 = fadd fast float %4860, %4834
  %4865 = call float @dx.op.dot3.f32(i32 55, float %4861, float %4862, float %4863, float %4831, float %4832, float %4833)  ; Dot3(ax,ay,az,bx,by,bz)
  %4866 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4867 = extractvalue %dx.types.CBufRet.i32 %4866, 1
  %4868 = and i32 %4867, 1
  %4869 = icmp ne i32 %4868, 0
  %4870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %4871 = extractvalue %dx.types.CBufRet.f32 %4870, 2
  %4872 = fcmp fast ogt float %4871, 0.000000e+00
  %4873 = and i1 %4869, %4872
  br i1 %4873, label %4874, label %5280, !dx.controlflow.hints !130

; <label>:4874                                    ; preds = %4829
  %4875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %4876 = extractvalue %dx.types.CBufRet.f32 %4875, 3
  %4877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4878 = extractvalue %dx.types.CBufRet.f32 %4877, 2
  %4879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = extractvalue %dx.types.CBufRet.f32 %4879, 2
  %4881 = fsub fast float %4878, %4880
  %4882 = and i32 %4867, 2
  %4883 = extractvalue %dx.types.CBufRet.i32 %4866, 0
  %4884 = call i32 @dx.op.binary.i32(i32 40, i32 %4883, i32 3)  ; UMin(a,b)
  %4885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %4886 = extractvalue %dx.types.CBufRet.f32 %4885, 0
  %4887 = extractvalue %dx.types.CBufRet.f32 %4885, 1
  %4888 = extractvalue %dx.types.CBufRet.f32 %4879, 0
  %4889 = extractvalue %dx.types.CBufRet.f32 %4879, 1
  %4890 = fsub fast float %4886, %4888
  %4891 = fsub fast float %4887, %4889
  %4892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %4893 = extractvalue %dx.types.CBufRet.f32 %4892, 0
  %4894 = fcmp fast ogt float %4893, 0.000000e+00
  %4895 = fsub fast float -0.000000e+00, %4890
  %4896 = fsub fast float -0.000000e+00, %4891
  %4897 = call float @dx.op.dot2.f32(i32 54, float %4861, float %4862, float %4861, float %4862)  ; Dot2(ax,ay,bx,by)
  %4898 = call float @dx.op.dot2.f32(i32 54, float %4861, float %4862, float %4895, float %4896)  ; Dot2(ax,ay,bx,by)
  %4899 = fmul fast float %4898, 2.000000e+00
  %4900 = call float @dx.op.dot2.f32(i32 54, float %4895, float %4896, float %4895, float %4896)  ; Dot2(ax,ay,bx,by)
  %4901 = fmul fast float %4893, %4893
  %4902 = fsub fast float %4900, %4901
  %4903 = fmul fast float %4899, %4899
  %4904 = fmul fast float %4897, 4.000000e+00
  %4905 = fmul fast float %4904, %4902
  %4906 = fsub fast float %4903, %4905
  %4907 = fcmp fast ogt float %4906, 0.000000e+00
  br i1 %4907, label %4908, label %4923

; <label>:4908                                    ; preds = %4874
  %4909 = fcmp fast ogt float %4899, 0.000000e+00
  %4910 = call float @dx.op.unary.f32(i32 24, float %4906)  ; Sqrt(value)
  %4911 = fsub fast float -0.000000e+00, %4910
  %4912 = select i1 %4909, float %4910, float %4911
  %4913 = fadd fast float %4912, %4899
  %4914 = fmul float %4913, -5.000000e-01
  %4915 = fdiv fast float %4914, %4897
  %4916 = call float @dx.op.binary.f32(i32 35, float %4915, float 0.000000e+00)  ; FMax(a,b)
  %4917 = call float @dx.op.binary.f32(i32 36, float %4860, float %4916)  ; FMin(a,b)
  %4918 = fdiv fast float %4902, %4914
  %4919 = call float @dx.op.binary.f32(i32 35, float %4918, float 0.000000e+00)  ; FMax(a,b)
  %4920 = call float @dx.op.binary.f32(i32 36, float %4860, float %4919)  ; FMin(a,b)
  %4921 = call float @dx.op.binary.f32(i32 36, float %4917, float %4920)  ; FMin(a,b)
  %4922 = call float @dx.op.binary.f32(i32 35, float %4917, float %4920)  ; FMax(a,b)
  br label %4923

; <label>:4923                                    ; preds = %4908, %4874
  %4924 = phi float [ %4922, %4908 ], [ -1.000000e+00, %4874 ]
  %4925 = phi float [ %4921, %4908 ], [ -1.000000e+00, %4874 ]
  %4926 = phi i1 [ true, %4908 ], [ false, %4874 ]
  %4927 = and i1 %4894, %4926
  br i1 %4927, label %4928, label %4930

; <label>:4928                                    ; preds = %4923
  %4929 = fcmp fast oeq float %4925, %4924
  br i1 %4929, label %5233, label %4931

; <label>:4930                                    ; preds = %4923
  br i1 %4894, label %5233, label %4931

; <label>:4931                                    ; preds = %4930, %4928
  %4932 = phi float [ %4860, %4930 ], [ %4924, %4928 ]
  %4933 = phi float [ 0.000000e+00, %4930 ], [ %4925, %4928 ]
  %4934 = icmp ne i32 %4882, 0
  %4935 = fmul fast float %4932, %4863
  %4936 = fadd fast float %4935, %4876
  %4937 = fmul fast float %4936, %4932
  %4938 = select i1 %4934, float 0.000000e+00, float %4937
  %4939 = fcmp fast oeq float %4863, 0.000000e+00
  %4940 = fdiv fast float %4881, %4863
  %4941 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4940)  ; FMax(a,b)
  %4942 = select i1 %4939, float %4932, float %4941
  %4943 = call float @dx.op.binary.f32(i32 36, float %4932, float %4942)  ; FMin(a,b)
  %4944 = fcmp fast ogt float %4863, 0.000000e+00
  %4945 = fcmp fast olt float %4881, 0.000000e+00
  br i1 %4944, label %4946, label %5003

; <label>:4946                                    ; preds = %4931
  %4947 = icmp eq i32 %4882, 0
  br i1 %4945, label %4948, label %4992

; <label>:4948                                    ; preds = %4946
  %4949 = select i1 %4947, float %4932, float 0.000000e+00
  %4950 = fsub fast float -0.000000e+00, %4949
  %4951 = call float @dx.op.unary.f32(i32 6, float %4950)  ; FAbs(value)
  %4952 = fmul fast float %4949, %4863
  %4953 = fadd fast float %4952, %4876
  %4954 = fmul fast float %4951, %4953
  %4955 = fsub fast float %4938, %4954
  %4956 = fsub fast float %4932, %4951
  %4957 = select i1 %4947, float %4956, float 0.000000e+00
  %4958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4959 = extractvalue %dx.types.CBufRet.f32 %4958, 0
  %4960 = extractvalue %dx.types.CBufRet.f32 %4958, 1
  %4961 = extractvalue %dx.types.CBufRet.f32 %4958, 2
  %4962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4963 = extractvalue %dx.types.CBufRet.f32 %4962, 0
  %4964 = extractvalue %dx.types.CBufRet.f32 %4962, 1
  %4965 = extractvalue %dx.types.CBufRet.f32 %4962, 2
  %4966 = extractvalue %dx.types.CBufRet.f32 %4962, 3
  %4967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4968 = extractvalue %dx.types.CBufRet.f32 %4967, 3
  %4969 = call float @dx.op.binary.f32(i32 36, float %4955, float %4968)  ; FMin(a,b)
  %4970 = fmul fast float %4966, %4957
  %4971 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4972 = fsub fast float %4963, %4959
  %4973 = fsub fast float %4964, %4960
  %4974 = fsub fast float %4965, %4961
  %4975 = fmul fast float %4971, %4972
  %4976 = fmul fast float %4971, %4973
  %4977 = fmul fast float %4971, %4974
  %4978 = fadd fast float %4975, %4959
  %4979 = fadd fast float %4976, %4960
  %4980 = fadd fast float %4977, %4961
  %4981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4982 = extractvalue %dx.types.CBufRet.f32 %4981, 0
  %4983 = extractvalue %dx.types.CBufRet.f32 %4981, 1
  %4984 = fadd fast float %4983, %4982
  %4985 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4986 = extractvalue %dx.types.CBufRet.f32 %4981, 2
  %4987 = extractvalue %dx.types.CBufRet.f32 %4981, 3
  %4988 = fadd fast float %4987, %4986
  %4989 = call float @dx.op.unary.f32(i32 7, float %4988)  ; Saturate(value)
  %4990 = fmul fast float %4985, %4969
  %4991 = fmul fast float %4990, %4989
  br label %5233

; <label>:4992                                    ; preds = %4946
  br i1 %4947, label %4993, label %5014

; <label>:4993                                    ; preds = %4992
  %4994 = call float @dx.op.binary.f32(i32 36, float %4943, float %4933)  ; FMin(a,b)
  %4995 = fsub fast float %4943, %4994
  %4996 = fsub fast float %4995, %4932
  %4997 = call float @dx.op.unary.f32(i32 6, float %4996)  ; FAbs(value)
  %4998 = fadd fast float %4995, %4932
  %4999 = fmul fast float %4998, %4863
  %5000 = fadd fast float %4999, %4876
  %5001 = fmul fast float %5000, %4997
  %5002 = fsub fast float %4938, %5001
  br label %5014

; <label>:5003                                    ; preds = %4931
  br i1 %4945, label %5004, label %5014

; <label>:5004                                    ; preds = %5003
  %5005 = call float @dx.op.binary.f32(i32 35, float %4933, float %4943)  ; FMax(a,b)
  %5006 = icmp eq i32 %4882, 0
  %5007 = select i1 %5006, float %4943, float 0.000000e+00
  %5008 = fsub fast float -0.000000e+00, %5007
  %5009 = call float @dx.op.unary.f32(i32 6, float %5008)  ; FAbs(value)
  %5010 = fmul fast float %5007, %4863
  %5011 = fadd fast float %5010, %4876
  %5012 = fmul fast float %5009, %5011
  %5013 = fsub fast float %4938, %5012
  br label %5014

; <label>:5014                                    ; preds = %5004, %5003, %4993, %4992
  %5015 = phi float [ %4933, %4992 ], [ %4933, %4993 ], [ %5005, %5004 ], [ %4933, %5003 ]
  %5016 = phi float [ 0.000000e+00, %4992 ], [ %4997, %4993 ], [ %5009, %5004 ], [ 0.000000e+00, %5003 ]
  %5017 = phi float [ %4938, %4992 ], [ %5002, %4993 ], [ %5013, %5004 ], [ %4938, %5003 ]
  %5018 = phi float [ %4943, %4992 ], [ %4943, %4993 ], [ %4932, %5004 ], [ %4932, %5003 ]
  %5019 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 0
  store float -1.000000e+00, float* %5019, align 4, !tbaa !131, !noalias !133
  %5020 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 1
  store float -1.000000e+00, float* %5020, align 4, !tbaa !131, !noalias !133
  %5021 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 2
  store float -1.000000e+00, float* %5021, align 4, !tbaa !131, !noalias !133
  %5022 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 0
  store float -1.000000e+00, float* %5022, align 4, !tbaa !131, !noalias !133
  %5023 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 1
  store float -1.000000e+00, float* %5023, align 4, !tbaa !131, !noalias !133
  %5024 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 2
  store float -1.000000e+00, float* %5024, align 4, !tbaa !131, !noalias !133
  %5025 = icmp sgt i32 %4884, 0
  br i1 %5025, label %5026, label %5087

; <label>:5026                                    ; preds = %5014
  br label %5027

; <label>:5027                                    ; preds = %5076, %5026
  %5028 = phi i32 [ %5077, %5076 ], [ 0, %5026 ]
  %5029 = phi i32 [ %5078, %5076 ], [ 0, %5026 ]
  %5030 = add nuw i32 %5029, 171
  %5031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %5030)  ; CBufferLoadLegacy(handle,regIndex)
  %5032 = extractvalue %dx.types.CBufRet.f32 %5031, 0
  %5033 = extractvalue %dx.types.CBufRet.f32 %5031, 1
  %5034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5035 = extractvalue %dx.types.CBufRet.f32 %5034, 0
  %5036 = extractvalue %dx.types.CBufRet.f32 %5034, 1
  %5037 = fsub fast float %5032, %5035
  %5038 = fsub fast float %5033, %5036
  %5039 = extractvalue %dx.types.CBufRet.f32 %5031, 2
  %5040 = fsub fast float -0.000000e+00, %5037
  %5041 = fsub fast float -0.000000e+00, %5038
  %5042 = call float @dx.op.dot2.f32(i32 54, float %4861, float %4862, float %5040, float %5041)  ; Dot2(ax,ay,bx,by)
  %5043 = fmul fast float %5042, 2.000000e+00
  %5044 = call float @dx.op.dot2.f32(i32 54, float %5040, float %5041, float %5040, float %5041)  ; Dot2(ax,ay,bx,by)
  %5045 = fmul fast float %5039, %5039
  %5046 = fsub fast float %5044, %5045
  %5047 = fmul fast float %5043, %5043
  %5048 = fmul fast float %4904, %5046
  %5049 = fsub fast float %5047, %5048
  %5050 = fcmp fast ogt float %5049, 0.000000e+00
  br i1 %5050, label %5051, label %5066

; <label>:5051                                    ; preds = %5027
  %5052 = fcmp fast ogt float %5043, 0.000000e+00
  %5053 = call float @dx.op.unary.f32(i32 24, float %5049)  ; Sqrt(value)
  %5054 = fsub fast float -0.000000e+00, %5053
  %5055 = select i1 %5052, float %5053, float %5054
  %5056 = fadd fast float %5055, %5043
  %5057 = fmul float %5056, -5.000000e-01
  %5058 = fdiv fast float %5057, %4897
  %5059 = call float @dx.op.binary.f32(i32 35, float %5058, float 0.000000e+00)  ; FMax(a,b)
  %5060 = call float @dx.op.binary.f32(i32 36, float %4932, float %5059)  ; FMin(a,b)
  %5061 = fdiv fast float %5046, %5057
  %5062 = call float @dx.op.binary.f32(i32 35, float %5061, float 0.000000e+00)  ; FMax(a,b)
  %5063 = call float @dx.op.binary.f32(i32 36, float %4932, float %5062)  ; FMin(a,b)
  %5064 = call float @dx.op.binary.f32(i32 36, float %5060, float %5063)  ; FMin(a,b)
  %5065 = call float @dx.op.binary.f32(i32 35, float %5060, float %5063)  ; FMax(a,b)
  br label %5066

; <label>:5066                                    ; preds = %5051, %5027
  %5067 = phi float [ %5065, %5051 ], [ -1.000000e+00, %5027 ]
  %5068 = phi float [ %5064, %5051 ], [ -1.000000e+00, %5027 ]
  %5069 = phi i1 [ true, %5051 ], [ false, %5027 ]
  br i1 %5069, label %5070, label %5076

; <label>:5070                                    ; preds = %5066
  %5071 = call float @dx.op.binary.f32(i32 35, float %5015, float %5068)  ; FMax(a,b)
  %5072 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %5029
  store float %5071, float* %5072, align 4, !tbaa !131, !noalias !133
  %5073 = call float @dx.op.binary.f32(i32 35, float %5015, float %5067)  ; FMax(a,b)
  %5074 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 %5029
  store float %5073, float* %5074, align 4, !tbaa !131, !noalias !133
  %5075 = add nsw i32 %5028, 1
  br label %5076

; <label>:5076                                    ; preds = %5070, %5066
  %5077 = phi i32 [ %5075, %5070 ], [ %5028, %5066 ]
  %5078 = add nuw nsw i32 %5029, 1
  %5079 = icmp eq i32 %5078, %4884
  br i1 %5079, label %5080, label %5027

; <label>:5080                                    ; preds = %5076
  %5081 = load float, float* %5021, align 4, !tbaa !131, !alias.scope !149, !noalias !152
  %5082 = load float, float* %5020, align 4, !tbaa !131, !alias.scope !155, !noalias !156
  %5083 = load float, float* %5019, align 4, !tbaa !131, !alias.scope !157, !noalias !158
  %5084 = load float, float* %5024, align 4, !tbaa !131, !alias.scope !159, !noalias !162
  %5085 = load float, float* %5023, align 4, !tbaa !131, !alias.scope !165, !noalias !166
  %5086 = load float, float* %5022, align 4, !tbaa !131, !alias.scope !167, !noalias !168
  br label %5087

; <label>:5087                                    ; preds = %5080, %5014
  %5088 = phi float [ -1.000000e+00, %5014 ], [ %5086, %5080 ]
  %5089 = phi float [ -1.000000e+00, %5014 ], [ %5085, %5080 ]
  %5090 = phi float [ -1.000000e+00, %5014 ], [ %5084, %5080 ]
  %5091 = phi float [ -1.000000e+00, %5014 ], [ %5083, %5080 ]
  %5092 = phi float [ -1.000000e+00, %5014 ], [ %5082, %5080 ]
  %5093 = phi float [ -1.000000e+00, %5014 ], [ %5081, %5080 ]
  %5094 = phi i32 [ 0, %5014 ], [ %5077, %5080 ]
  %5095 = call float @dx.op.binary.f32(i32 36, float %5092, float %5093)  ; FMin(a,b)
  %5096 = call float @dx.op.binary.f32(i32 36, float %5091, float %5095)  ; FMin(a,b)
  %5097 = call float @dx.op.binary.f32(i32 35, float %5091, float %5092)  ; FMax(a,b)
  %5098 = call float @dx.op.binary.f32(i32 36, float %5097, float %5093)  ; FMin(a,b)
  %5099 = call float @dx.op.binary.f32(i32 36, float %5091, float %5092)  ; FMin(a,b)
  %5100 = call float @dx.op.binary.f32(i32 35, float %5099, float %5098)  ; FMax(a,b)
  %5101 = call float @dx.op.binary.f32(i32 35, float %5092, float %5093)  ; FMax(a,b)
  %5102 = call float @dx.op.binary.f32(i32 35, float %5091, float %5101)  ; FMax(a,b)
  store float %5096, float* %5019, align 4, !tbaa !131, !alias.scope !157, !noalias !158
  store float %5100, float* %5020, align 4, !tbaa !131, !alias.scope !155, !noalias !156
  store float %5102, float* %5021, align 4, !tbaa !131, !alias.scope !149, !noalias !152
  %5103 = call float @dx.op.binary.f32(i32 36, float %5089, float %5090)  ; FMin(a,b)
  %5104 = call float @dx.op.binary.f32(i32 36, float %5088, float %5103)  ; FMin(a,b)
  %5105 = call float @dx.op.binary.f32(i32 35, float %5088, float %5089)  ; FMax(a,b)
  %5106 = call float @dx.op.binary.f32(i32 36, float %5105, float %5090)  ; FMin(a,b)
  %5107 = call float @dx.op.binary.f32(i32 36, float %5088, float %5089)  ; FMin(a,b)
  %5108 = call float @dx.op.binary.f32(i32 35, float %5107, float %5106)  ; FMax(a,b)
  %5109 = call float @dx.op.binary.f32(i32 35, float %5089, float %5090)  ; FMax(a,b)
  %5110 = call float @dx.op.binary.f32(i32 35, float %5088, float %5109)  ; FMax(a,b)
  store float %5104, float* %5022, align 4, !tbaa !131, !alias.scope !167, !noalias !168
  store float %5108, float* %5023, align 4, !tbaa !131, !alias.scope !165, !noalias !166
  store float %5110, float* %5024, align 4, !tbaa !131, !alias.scope !159, !noalias !162
  %5111 = sub nsw i32 3, %5094
  %5112 = icmp sgt i32 %5111, 2
  br i1 %5112, label %5113, label %5151

; <label>:5113                                    ; preds = %5087
  %5114 = icmp eq i32 %4882, 0
  %5115 = fsub fast float %4932, %5016
  %5116 = select i1 %5114, float %5115, float %5016
  %5117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5118 = extractvalue %dx.types.CBufRet.f32 %5117, 0
  %5119 = extractvalue %dx.types.CBufRet.f32 %5117, 1
  %5120 = extractvalue %dx.types.CBufRet.f32 %5117, 2
  %5121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5122 = extractvalue %dx.types.CBufRet.f32 %5121, 0
  %5123 = extractvalue %dx.types.CBufRet.f32 %5121, 1
  %5124 = extractvalue %dx.types.CBufRet.f32 %5121, 2
  %5125 = extractvalue %dx.types.CBufRet.f32 %5121, 3
  %5126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5127 = extractvalue %dx.types.CBufRet.f32 %5126, 3
  %5128 = call float @dx.op.binary.f32(i32 36, float %5017, float %5127)  ; FMin(a,b)
  %5129 = fmul fast float %5125, %5116
  %5130 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5131 = fsub fast float %5122, %5118
  %5132 = fsub fast float %5123, %5119
  %5133 = fsub fast float %5124, %5120
  %5134 = fmul fast float %5130, %5131
  %5135 = fmul fast float %5130, %5132
  %5136 = fmul fast float %5130, %5133
  %5137 = fadd fast float %5134, %5118
  %5138 = fadd fast float %5135, %5119
  %5139 = fadd fast float %5136, %5120
  %5140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.f32 %5140, 0
  %5142 = extractvalue %dx.types.CBufRet.f32 %5140, 1
  %5143 = fadd fast float %5142, %5141
  %5144 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5145 = extractvalue %dx.types.CBufRet.f32 %5140, 2
  %5146 = extractvalue %dx.types.CBufRet.f32 %5140, 3
  %5147 = fadd fast float %5146, %5145
  %5148 = call float @dx.op.unary.f32(i32 7, float %5147)  ; Saturate(value)
  %5149 = fmul fast float %5144, %5128
  %5150 = fmul fast float %5149, %5148
  br label %5233

; <label>:5151                                    ; preds = %5087
  %5152 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %5111
  %5153 = load float, float* %5152, align 4, !tbaa !131, !noalias !133
  %5154 = fcmp fast olt float %5153, %5018
  %5155 = icmp sgt i32 %5094, 0
  %5156 = and i1 %5155, %5154
  br i1 %5156, label %5157, label %5194

; <label>:5157                                    ; preds = %5151
  br label %5158

; <label>:5158                                    ; preds = %5187, %5157
  %5159 = phi float [ %5188, %5187 ], [ %5016, %5157 ]
  %5160 = phi float [ %5189, %5187 ], [ %5017, %5157 ]
  %5161 = phi float [ %5169, %5187 ], [ %5153, %5157 ]
  %5162 = phi i32 [ %5166, %5187 ], [ %5111, %5157 ]
  %5163 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 %5162
  %5164 = load float, float* %5163, align 4, !tbaa !131, !noalias !133
  %5165 = icmp slt i32 %5162, 2
  %5166 = add nsw i32 %5162, 1
  %5167 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %5166
  %5168 = load float, float* %5167, align 4, !tbaa !131, !noalias !133
  %5169 = select i1 %5165, float %5168, float %4932
  %5170 = call float @dx.op.binary.f32(i32 36, float %5169, float %5164)  ; FMin(a,b)
  %5171 = call float @dx.op.binary.f32(i32 36, float %5018, float %5170)  ; FMin(a,b)
  %5172 = icmp eq i32 %4882, 0
  %5173 = fadd fast float %5171, %5161
  %5174 = fmul fast float %5173, %4863
  %5175 = fadd fast float %5174, %4876
  br i1 %5172, label %5181, label %5176

; <label>:5176                                    ; preds = %5158
  %5177 = fsub fast float %5171, %5161
  %5178 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5177)  ; FMax(a,b)
  %5179 = fmul fast float %5178, %5175
  %5180 = fadd fast float %5179, %5160
  br label %5187

; <label>:5181                                    ; preds = %5158
  %5182 = fsub fast float %5161, %5171
  %5183 = call float @dx.op.unary.f32(i32 6, float %5182)  ; FAbs(value)
  %5184 = fadd fast float %5183, %5159
  %5185 = fmul fast float %5183, %5175
  %5186 = fsub fast float %5160, %5185
  br label %5187

; <label>:5187                                    ; preds = %5181, %5176
  %5188 = phi float [ %5178, %5176 ], [ %5184, %5181 ]
  %5189 = phi float [ %5180, %5176 ], [ %5186, %5181 ]
  %5190 = fcmp fast olt float %5169, %5018
  %5191 = icmp slt i32 %5166, 3
  %5192 = and i1 %5191, %5190
  br i1 %5192, label %5158, label %5193

; <label>:5193                                    ; preds = %5187
  br label %5194

; <label>:5194                                    ; preds = %5193, %5151
  %5195 = phi float [ %5016, %5151 ], [ %5188, %5193 ]
  %5196 = phi float [ %5017, %5151 ], [ %5189, %5193 ]
  %5197 = fsub fast float %4932, %5195
  %5198 = select i1 %4934, float %5195, float %5197
  %5199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5200 = extractvalue %dx.types.CBufRet.f32 %5199, 0
  %5201 = extractvalue %dx.types.CBufRet.f32 %5199, 1
  %5202 = extractvalue %dx.types.CBufRet.f32 %5199, 2
  %5203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5204 = extractvalue %dx.types.CBufRet.f32 %5203, 0
  %5205 = extractvalue %dx.types.CBufRet.f32 %5203, 1
  %5206 = extractvalue %dx.types.CBufRet.f32 %5203, 2
  %5207 = extractvalue %dx.types.CBufRet.f32 %5203, 3
  %5208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5209 = extractvalue %dx.types.CBufRet.f32 %5208, 3
  %5210 = call float @dx.op.binary.f32(i32 36, float %5196, float %5209)  ; FMin(a,b)
  %5211 = fmul fast float %5207, %5198
  %5212 = call float @dx.op.unary.f32(i32 7, float %5211)  ; Saturate(value)
  %5213 = fsub fast float %5204, %5200
  %5214 = fsub fast float %5205, %5201
  %5215 = fsub fast float %5206, %5202
  %5216 = fmul fast float %5212, %5213
  %5217 = fmul fast float %5212, %5214
  %5218 = fmul fast float %5212, %5215
  %5219 = fadd fast float %5216, %5200
  %5220 = fadd fast float %5217, %5201
  %5221 = fadd fast float %5218, %5202
  %5222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5223 = extractvalue %dx.types.CBufRet.f32 %5222, 0
  %5224 = extractvalue %dx.types.CBufRet.f32 %5222, 1
  %5225 = fadd fast float %5224, %5223
  %5226 = call float @dx.op.unary.f32(i32 7, float %5225)  ; Saturate(value)
  %5227 = extractvalue %dx.types.CBufRet.f32 %5222, 2
  %5228 = extractvalue %dx.types.CBufRet.f32 %5222, 3
  %5229 = fadd fast float %5228, %5227
  %5230 = call float @dx.op.unary.f32(i32 7, float %5229)  ; Saturate(value)
  %5231 = fmul fast float %5226, %5210
  %5232 = fmul fast float %5231, %5230
  br label %5233

; <label>:5233                                    ; preds = %5194, %5113, %4948, %4930, %4928
  %5234 = phi float [ %4957, %4948 ], [ %5116, %5113 ], [ %5198, %5194 ], [ 0.000000e+00, %4928 ], [ 0.000000e+00, %4930 ]
  %5235 = phi float [ %4991, %4948 ], [ %5150, %5113 ], [ %5232, %5194 ], [ 0.000000e+00, %4928 ], [ 0.000000e+00, %4930 ]
  %5236 = phi float [ %4978, %4948 ], [ %5137, %5113 ], [ %5219, %5194 ], [ 0.000000e+00, %4928 ], [ 0.000000e+00, %4930 ]
  %5237 = phi float [ %4979, %4948 ], [ %5138, %5113 ], [ %5220, %5194 ], [ 0.000000e+00, %4928 ], [ 0.000000e+00, %4930 ]
  %5238 = phi float [ %4980, %4948 ], [ %5139, %5113 ], [ %5221, %5194 ], [ 0.000000e+00, %4928 ], [ 0.000000e+00, %4930 ]
  %5239 = fmul fast float %4871, %5235
  %5240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5241 = extractvalue %dx.types.CBufRet.f32 %5240, 2
  %5242 = fsub fast float %4878, %5241
  %5243 = fcmp fast olt float %5239, -2.000000e+01
  %5244 = call float @dx.op.unary.f32(i32 21, float %5239)  ; Exp(value)
  %5245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5246 = extractvalue %dx.types.CBufRet.f32 %5245, 2
  %5247 = extractvalue %dx.types.CBufRet.f32 %5245, 3
  %5248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5249 = extractvalue %dx.types.CBufRet.f32 %5248, 2
  %5250 = fmul fast float %5247, %5242
  %5251 = call float @dx.op.unary.f32(i32 7, float %5250)  ; Saturate(value)
  %5252 = fsub fast float 1.000000e+00, %5251
  %5253 = fmul fast float %4863, 5.000000e-01
  %5254 = fadd fast float %5253, 5.000000e-01
  %5255 = call float @dx.op.unary.f32(i32 7, float %5254)  ; Saturate(value)
  %5256 = fsub fast float 1.000000e+00, %5255
  %5257 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5252)  ; FMax(a,b)
  %5258 = fdiv fast float %5256, %5257
  %5259 = fsub fast float %5242, %4820
  %5260 = call float @dx.op.unary.f32(i32 6, float %5259)  ; FAbs(value)
  %5261 = fmul fast float %5260, %5246
  %5262 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5263 = fsub fast float 1.000000e+00, %5261
  %5264 = fmul fast float %5263, %5262
  %5265 = fadd fast float %5264, %5261
  %5266 = fmul fast float %5249, %5242
  %5267 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5268 = fsub fast float 1.000000e+00, %5265
  %5269 = fmul fast float %5268, %5267
  %5270 = fadd fast float %5269, %5265
  %5271 = call float @dx.op.unary.f32(i32 7, float %5270)  ; Saturate(value)
  %5272 = fadd fast float %5244, -1.000000e+00
  %5273 = select i1 %5243, float -1.000000e+00, float %5272
  %5274 = fmul fast float %5271, %5273
  %5275 = fadd fast float %5274, 1.000000e+00
  %5276 = fsub fast float -0.000000e+00, %5274
  %5277 = fmul fast float %5236, %5276
  %5278 = fmul fast float %5237, %5276
  %5279 = fmul fast float %5238, %5276
  br label %5280

; <label>:5280                                    ; preds = %5233, %4829
  %5281 = phi float [ %5234, %5233 ], [ 0.000000e+00, %4829 ]
  %5282 = phi float [ %5275, %5233 ], [ 1.000000e+00, %4829 ]
  %5283 = phi float [ %5277, %5233 ], [ 0.000000e+00, %4829 ]
  %5284 = phi float [ %5278, %5233 ], [ 0.000000e+00, %4829 ]
  %5285 = phi float [ %5279, %5233 ], [ 0.000000e+00, %4829 ]
  %5286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5287 = extractvalue %dx.types.CBufRet.f32 %5286, 1
  %5288 = fsub fast float 1.000000e+00, %5282
  %5289 = fmul fast float %5288, %4864
  %5290 = fmul fast float %5289, %5287
  %5291 = fsub fast float %4864, %5290
  br i1 %4857, label %5292, label %5321, !dx.controlflow.hints !169

; <label>:5292                                    ; preds = %5280
  %5293 = fmul fast float %4865, %4854
  %5294 = fadd fast float %5293, %4855
  %5295 = call float @dx.op.unary.f32(i32 7, float %5294)  ; Saturate(value)
  %5296 = fmul fast float %4836, %5291
  %5297 = fsub fast float -0.000000e+00, %5296
  %5298 = fmul fast float %4837, %5291
  %5299 = fsub fast float -0.000000e+00, %5298
  %5300 = call float @dx.op.unary.f32(i32 21, float %5297)  ; Exp(value)
  %5301 = call float @dx.op.unary.f32(i32 21, float %5299)  ; Exp(value)
  %5302 = call float @dx.op.binary.f32(i32 35, float %4844, float %5300)  ; FMax(a,b)
  %5303 = call float @dx.op.binary.f32(i32 35, float %4844, float %5301)  ; FMax(a,b)
  %5304 = fsub fast float %5303, %5302
  %5305 = fmul fast float %5304, %5295
  %5306 = fadd fast float %5305, %5302
  %5307 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  %5308 = fsub fast float %4841, %4846
  %5309 = fsub fast float %4842, %4847
  %5310 = fsub fast float %4843, %4848
  %5311 = fmul fast float %5295, %5308
  %5312 = fmul fast float %5295, %5309
  %5313 = fmul fast float %5295, %5310
  %5314 = fadd fast float %5311, %4846
  %5315 = fadd fast float %5312, %4847
  %5316 = fadd fast float %5313, %4848
  %5317 = fsub fast float 1.000000e+00, %5307
  %5318 = fmul fast float %5317, %5314
  %5319 = fmul fast float %5317, %5315
  %5320 = fmul fast float %5317, %5316
  br label %5380

; <label>:5321                                    ; preds = %5280
  %5322 = fmul fast float %5291, %4853
  %5323 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5324 = fsub fast float 2.000000e+00, %5323
  %5325 = fmul fast float %5323, 9.921875e-01
  %5326 = fmul fast float %5325, %5324
  %5327 = fadd fast float %5326, 3.906250e-03
  %5328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %5327, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5329 = extractvalue %dx.types.ResRet.f32 %5328, 0
  %5330 = fsub fast float %5323, %5329
  %5331 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5330)  ; FMax(a,b)
  %5332 = fmul fast float %4839, %4820
  %5333 = call float @dx.op.unary.f32(i32 6, float %5332)  ; FAbs(value)
  %5334 = fcmp fast ogt float %5333, 0x3EB0C6F7A0000000
  br i1 %5334, label %5335, label %5341, !dx.controlflow.hints !170

; <label>:5335                                    ; preds = %5321
  %5336 = fmul fast float %5332, 0xBFF7154760000000
  %5337 = call float @dx.op.unary.f32(i32 21, float %5336)  ; Exp(value)
  %5338 = fsub fast float 1.000000e+00, %5337
  %5339 = fdiv fast float %5338, %5332
  %5340 = fmul fast float %5339, %4849
  br label %5341

; <label>:5341                                    ; preds = %5335, %5321
  %5342 = phi float [ %5340, %5335 ], [ %4849, %5321 ]
  %5343 = fadd fast float %5342, %4851
  %5344 = fmul fast float %5343, %5331
  %5345 = fmul fast float %4836, %5344
  %5346 = fsub fast float -0.000000e+00, %5345
  %5347 = fmul fast float %4837, %5344
  %5348 = fsub fast float -0.000000e+00, %5347
  %5349 = fmul fast float %4838, %5344
  %5350 = fsub fast float -0.000000e+00, %5349
  %5351 = call float @dx.op.unary.f32(i32 21, float %5346)  ; Exp(value)
  %5352 = call float @dx.op.unary.f32(i32 21, float %5348)  ; Exp(value)
  %5353 = call float @dx.op.unary.f32(i32 21, float %5350)  ; Exp(value)
  %5354 = fmul fast float %4865, %4865
  %5355 = fadd fast float %5354, 1.000000e+00
  %5356 = fmul fast float %5355, 0x3FAE8EC8A0000000
  %5357 = fmul fast float %5356, %4846
  %5358 = fmul fast float %5356, %4847
  %5359 = fmul fast float %5356, %4848
  %5360 = fmul fast float %4865, %4844
  %5361 = fsub fast float 1.000000e+00, %5360
  %5362 = fmul fast float %4844, %4844
  %5363 = fsub fast float 1.000000e+00, %5362
  %5364 = fmul fast float %5363, 0x3FB45F3060000000
  %5365 = fmul fast float %5361, %5361
  %5366 = fdiv fast float 1.000000e+00, %5365
  %5367 = fmul fast float %5364, %5366
  %5368 = fmul fast float %5367, %4841
  %5369 = fmul fast float %5367, %4842
  %5370 = fmul fast float %5367, %4843
  %5371 = fadd fast float %5368, %5357
  %5372 = fadd fast float %5369, %5358
  %5373 = fadd fast float %5370, %5359
  %5374 = fsub fast float 1.000000e+00, %5351
  %5375 = fsub fast float 1.000000e+00, %5352
  %5376 = fsub fast float 1.000000e+00, %5353
  %5377 = fmul fast float %5371, %5374
  %5378 = fmul fast float %5372, %5375
  %5379 = fmul fast float %5373, %5376
  br label %5380

; <label>:5380                                    ; preds = %5341, %5292
  %5381 = phi float [ %5318, %5292 ], [ %5377, %5341 ]
  %5382 = phi float [ %5319, %5292 ], [ %5378, %5341 ]
  %5383 = phi float [ %5320, %5292 ], [ %5379, %5341 ]
  %5384 = phi float [ %5307, %5292 ], [ %5351, %5341 ]
  %5385 = phi float [ %5307, %5292 ], [ %5352, %5341 ]
  %5386 = phi float [ %5307, %5292 ], [ %5353, %5341 ]
  br i1 %4873, label %5387, label %5585, !dx.controlflow.hints !171

; <label>:5387                                    ; preds = %5380
  %5388 = extractvalue %dx.types.CBufRet.f32 %5286, 0
  %5389 = fmul fast float %5388, %5288
  %5390 = fsub fast float %5283, %5381
  %5391 = fsub fast float %5284, %5382
  %5392 = fsub fast float %5285, %5383
  %5393 = fmul fast float %5389, %5390
  %5394 = fmul fast float %5389, %5391
  %5395 = fmul fast float %5389, %5392
  %5396 = fadd fast float %5393, %5381
  %5397 = fadd fast float %5394, %5382
  %5398 = fadd fast float %5395, %5383
  %5399 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5384)  ; FMax(a,b)
  %5400 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5385)  ; FMax(a,b)
  %5401 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5386)  ; FMax(a,b)
  %5402 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5282)  ; FMax(a,b)
  %5403 = call float @dx.op.binary.f32(i32 35, float %5281, float %5291)  ; FMax(a,b)
  %5404 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5403)  ; FMax(a,b)
  %5405 = fdiv fast float %5281, %5404
  %5406 = call float @dx.op.unary.f32(i32 7, float %5405)  ; Saturate(value)
  %5407 = fdiv fast float %5291, %5404
  %5408 = call float @dx.op.unary.f32(i32 7, float %5407)  ; Saturate(value)
  %5409 = fcmp fast une float %5402, 1.000000e+00
  br i1 %5409, label %5410, label %5423, !dx.controlflow.hints !172

; <label>:5410                                    ; preds = %5387
  %5411 = call float @dx.op.unary.f32(i32 23, float %5402)  ; Log(value)
  %5412 = fmul fast float %5411, 0x3FE62E4300000000
  %5413 = fmul fast float %5283, %5412
  %5414 = fsub fast float -0.000000e+00, %5413
  %5415 = fmul fast float %5284, %5412
  %5416 = fsub fast float -0.000000e+00, %5415
  %5417 = fmul fast float %5285, %5412
  %5418 = fsub fast float -0.000000e+00, %5417
  %5419 = fsub fast float 1.000000e+00, %5402
  %5420 = fdiv fast float %5414, %5419
  %5421 = fdiv fast float %5416, %5419
  %5422 = fdiv fast float %5418, %5419
  br label %5423

; <label>:5423                                    ; preds = %5410, %5387
  %5424 = phi float [ %5420, %5410 ], [ %5283, %5387 ]
  %5425 = phi float [ %5421, %5410 ], [ %5284, %5387 ]
  %5426 = phi float [ %5422, %5410 ], [ %5285, %5387 ]
  %5427 = phi float [ %5412, %5410 ], [ 0.000000e+00, %5387 ]
  %5428 = fcmp fast une float %5399, 1.000000e+00
  br i1 %5428, label %5429, label %5436, !dx.controlflow.hints !173

; <label>:5429                                    ; preds = %5423
  %5430 = call float @dx.op.unary.f32(i32 23, float %5399)  ; Log(value)
  %5431 = fmul fast float %5430, 0x3FE62E4300000000
  %5432 = fmul fast float %5396, %5431
  %5433 = fsub fast float -0.000000e+00, %5432
  %5434 = fsub fast float 1.000000e+00, %5399
  %5435 = fdiv fast float %5433, %5434
  br label %5436

; <label>:5436                                    ; preds = %5429, %5423
  %5437 = phi float [ %5435, %5429 ], [ %5396, %5423 ]
  %5438 = phi float [ %5431, %5429 ], [ 0.000000e+00, %5423 ]
  %5439 = fcmp fast une float %5400, 1.000000e+00
  br i1 %5439, label %5440, label %5447, !dx.controlflow.hints !173

; <label>:5440                                    ; preds = %5436
  %5441 = call float @dx.op.unary.f32(i32 23, float %5400)  ; Log(value)
  %5442 = fmul fast float %5441, 0x3FE62E4300000000
  %5443 = fmul fast float %5397, %5442
  %5444 = fsub fast float -0.000000e+00, %5443
  %5445 = fsub fast float 1.000000e+00, %5400
  %5446 = fdiv fast float %5444, %5445
  br label %5447

; <label>:5447                                    ; preds = %5440, %5436
  %5448 = phi float [ %5446, %5440 ], [ %5397, %5436 ]
  %5449 = phi float [ %5442, %5440 ], [ 0.000000e+00, %5436 ]
  %5450 = fcmp fast une float %5401, 1.000000e+00
  br i1 %5450, label %5451, label %5458, !dx.controlflow.hints !173

; <label>:5451                                    ; preds = %5447
  %5452 = call float @dx.op.unary.f32(i32 23, float %5401)  ; Log(value)
  %5453 = fmul fast float %5452, 0x3FE62E4300000000
  %5454 = fmul fast float %5398, %5453
  %5455 = fsub fast float -0.000000e+00, %5454
  %5456 = fsub fast float 1.000000e+00, %5401
  %5457 = fdiv fast float %5455, %5456
  br label %5458

; <label>:5458                                    ; preds = %5451, %5447
  %5459 = phi float [ %5457, %5451 ], [ %5398, %5447 ]
  %5460 = phi float [ %5453, %5451 ], [ 0.000000e+00, %5447 ]
  %5461 = fmul fast float %5424, %5408
  %5462 = fmul fast float %5425, %5408
  %5463 = fmul fast float %5426, %5408
  %5464 = fmul fast float %5427, %5408
  %5465 = fmul fast float %5437, %5406
  %5466 = fmul fast float %5448, %5406
  %5467 = fmul fast float %5459, %5406
  %5468 = fmul fast float %5438, %5406
  %5469 = fmul fast float %5449, %5406
  %5470 = fmul fast float %5460, %5406
  %5471 = fadd fast float %5465, %5461
  %5472 = fadd fast float %5466, %5462
  %5473 = fadd fast float %5467, %5463
  %5474 = fadd fast float %5468, %5464
  %5475 = fadd fast float %5469, %5464
  %5476 = fadd fast float %5470, %5464
  %5477 = fcmp fast une float %5474, 0.000000e+00
  br i1 %5477, label %5478, label %5485, !dx.controlflow.hints !174

; <label>:5478                                    ; preds = %5458
  %5479 = fmul fast float %5474, 0x3FF7154760000000
  %5480 = call float @dx.op.unary.f32(i32 21, float %5479)  ; Exp(value)
  %5481 = fsub fast float 1.000000e+00, %5480
  %5482 = fmul fast float %5471, %5481
  %5483 = fsub fast float -0.000000e+00, %5482
  %5484 = fdiv fast float %5483, %5474
  br label %5485

; <label>:5485                                    ; preds = %5478, %5458
  %5486 = phi float [ %5480, %5478 ], [ 1.000000e+00, %5458 ]
  %5487 = phi float [ %5484, %5478 ], [ %5471, %5458 ]
  %5488 = fcmp fast une float %5475, 0.000000e+00
  br i1 %5488, label %5489, label %5496, !dx.controlflow.hints !174

; <label>:5489                                    ; preds = %5485
  %5490 = fmul fast float %5475, 0x3FF7154760000000
  %5491 = call float @dx.op.unary.f32(i32 21, float %5490)  ; Exp(value)
  %5492 = fsub fast float 1.000000e+00, %5491
  %5493 = fmul fast float %5472, %5492
  %5494 = fsub fast float -0.000000e+00, %5493
  %5495 = fdiv fast float %5494, %5475
  br label %5496

; <label>:5496                                    ; preds = %5489, %5485
  %5497 = phi float [ %5491, %5489 ], [ 1.000000e+00, %5485 ]
  %5498 = phi float [ %5495, %5489 ], [ %5472, %5485 ]
  %5499 = fcmp fast une float %5476, 0.000000e+00
  br i1 %5499, label %5500, label %5507, !dx.controlflow.hints !174

; <label>:5500                                    ; preds = %5496
  %5501 = fmul fast float %5476, 0x3FF7154760000000
  %5502 = call float @dx.op.unary.f32(i32 21, float %5501)  ; Exp(value)
  %5503 = fsub fast float 1.000000e+00, %5502
  %5504 = fmul fast float %5473, %5503
  %5505 = fsub fast float -0.000000e+00, %5504
  %5506 = fdiv fast float %5505, %5476
  br label %5507

; <label>:5507                                    ; preds = %5500, %5496
  %5508 = phi float [ %5502, %5500 ], [ 1.000000e+00, %5496 ]
  %5509 = phi float [ %5506, %5500 ], [ %5473, %5496 ]
  %5510 = fcmp fast ogt float %5406, %5408
  br i1 %5510, label %5511, label %5531

; <label>:5511                                    ; preds = %5507
  %5512 = fsub fast float 1.000000e+00, %5408
  %5513 = fmul fast float %5424, %5512
  %5514 = fmul fast float %5425, %5512
  %5515 = fmul fast float %5426, %5512
  %5516 = fmul fast float %5427, %5512
  %5517 = fcmp fast une float %5516, 0.000000e+00
  br i1 %5517, label %5518, label %5569, !dx.controlflow.hints !175

; <label>:5518                                    ; preds = %5511
  %5519 = fmul fast float %5516, 0x3FF7154760000000
  %5520 = call float @dx.op.unary.f32(i32 21, float %5519)  ; Exp(value)
  %5521 = fsub fast float 1.000000e+00, %5520
  %5522 = fmul fast float %5513, %5521
  %5523 = fsub fast float -0.000000e+00, %5522
  %5524 = fmul fast float %5514, %5521
  %5525 = fsub fast float -0.000000e+00, %5524
  %5526 = fmul fast float %5515, %5521
  %5527 = fsub fast float -0.000000e+00, %5526
  %5528 = fdiv fast float %5523, %5516
  %5529 = fdiv fast float %5525, %5516
  %5530 = fdiv fast float %5527, %5516
  br label %5569

; <label>:5531                                    ; preds = %5507
  %5532 = fsub fast float 1.000000e+00, %5406
  %5533 = fmul fast float %5437, %5532
  %5534 = fmul fast float %5448, %5532
  %5535 = fmul fast float %5459, %5532
  %5536 = fmul fast float %5438, %5532
  %5537 = fmul fast float %5449, %5532
  %5538 = fmul fast float %5460, %5532
  %5539 = fcmp fast une float %5536, 0.000000e+00
  br i1 %5539, label %5540, label %5547, !dx.controlflow.hints !174

; <label>:5540                                    ; preds = %5531
  %5541 = fmul fast float %5536, 0x3FF7154760000000
  %5542 = call float @dx.op.unary.f32(i32 21, float %5541)  ; Exp(value)
  %5543 = fsub fast float 1.000000e+00, %5542
  %5544 = fmul fast float %5533, %5543
  %5545 = fsub fast float -0.000000e+00, %5544
  %5546 = fdiv fast float %5545, %5536
  br label %5547

; <label>:5547                                    ; preds = %5540, %5531
  %5548 = phi float [ %5546, %5540 ], [ %5533, %5531 ]
  %5549 = phi float [ %5542, %5540 ], [ 1.000000e+00, %5531 ]
  %5550 = fcmp fast une float %5537, 0.000000e+00
  br i1 %5550, label %5551, label %5558, !dx.controlflow.hints !174

; <label>:5551                                    ; preds = %5547
  %5552 = fmul fast float %5537, 0x3FF7154760000000
  %5553 = call float @dx.op.unary.f32(i32 21, float %5552)  ; Exp(value)
  %5554 = fsub fast float 1.000000e+00, %5553
  %5555 = fmul fast float %5534, %5554
  %5556 = fsub fast float -0.000000e+00, %5555
  %5557 = fdiv fast float %5556, %5537
  br label %5558

; <label>:5558                                    ; preds = %5551, %5547
  %5559 = phi float [ %5557, %5551 ], [ %5534, %5547 ]
  %5560 = phi float [ %5553, %5551 ], [ 1.000000e+00, %5547 ]
  %5561 = fcmp fast une float %5538, 0.000000e+00
  br i1 %5561, label %5562, label %5569, !dx.controlflow.hints !174

; <label>:5562                                    ; preds = %5558
  %5563 = fmul fast float %5538, 0x3FF7154760000000
  %5564 = call float @dx.op.unary.f32(i32 21, float %5563)  ; Exp(value)
  %5565 = fsub fast float 1.000000e+00, %5564
  %5566 = fmul fast float %5535, %5565
  %5567 = fsub fast float -0.000000e+00, %5566
  %5568 = fdiv fast float %5567, %5538
  br label %5569

; <label>:5569                                    ; preds = %5562, %5558, %5518, %5511
  %5570 = phi float [ %5568, %5562 ], [ %5530, %5518 ], [ %5515, %5511 ], [ %5535, %5558 ]
  %5571 = phi float [ %5559, %5562 ], [ %5529, %5518 ], [ %5514, %5511 ], [ %5559, %5558 ]
  %5572 = phi float [ %5548, %5562 ], [ %5528, %5518 ], [ %5513, %5511 ], [ %5548, %5558 ]
  %5573 = phi float [ %5564, %5562 ], [ %5520, %5518 ], [ 1.000000e+00, %5511 ], [ 1.000000e+00, %5558 ]
  %5574 = phi float [ %5560, %5562 ], [ %5520, %5518 ], [ 1.000000e+00, %5511 ], [ %5560, %5558 ]
  %5575 = phi float [ %5549, %5562 ], [ %5520, %5518 ], [ 1.000000e+00, %5511 ], [ %5549, %5558 ]
  %5576 = fmul fast float %5575, %5487
  %5577 = fmul fast float %5574, %5498
  %5578 = fmul fast float %5573, %5509
  %5579 = fadd fast float %5576, %5572
  %5580 = fadd fast float %5577, %5571
  %5581 = fadd fast float %5578, %5570
  %5582 = fmul fast float %5575, %5486
  %5583 = fmul fast float %5574, %5497
  %5584 = fmul fast float %5573, %5508
  br label %5585

; <label>:5585                                    ; preds = %5569, %5380
  %5586 = phi float [ %5584, %5569 ], [ %5386, %5380 ]
  %5587 = phi float [ %5583, %5569 ], [ %5385, %5380 ]
  %5588 = phi float [ %5582, %5569 ], [ %5384, %5380 ]
  %5589 = phi float [ %5581, %5569 ], [ %5383, %5380 ]
  %5590 = phi float [ %5580, %5569 ], [ %5382, %5380 ]
  %5591 = phi float [ %5579, %5569 ], [ %5381, %5380 ]
  %5592 = fmul fast float %5591, %4534
  %5593 = fmul fast float %5590, %4534
  %5594 = fmul fast float %5589, %4534
  %5595 = fmul fast float %5588, %4828
  %5596 = call float @dx.op.dot3.f32(i32 55, float %5588, float %5587, float %5586, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5597 = call float @dx.op.dot3.f32(i32 55, float %5592, float %5593, float %5594, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5598 = select i1 %228, float %5596, float %5588
  %5599 = select i1 %228, float %5596, float %5587
  %5600 = select i1 %228, float 1.000000e+00, float %5586
  %5601 = select i1 %228, float %5597, float %5592
  %5602 = select i1 %228, float 0.000000e+00, float %5593
  %5603 = select i1 %228, float 0.000000e+00, float %5594
  %5604 = fmul fast float %5598, %4822
  %5605 = fmul fast float %5599, %4823
  %5606 = fmul fast float %5600, %4824
  %5607 = fadd fast float %5604, %5601
  %5608 = fadd fast float %5605, %5602
  %5609 = fadd fast float %5603, %5606
  %5610 = fmul fast float %5598, %4825
  %5611 = fmul fast float %5599, %4826
  %5612 = fmul fast float %5600, %4827
  %5613 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5614 = extractvalue %dx.types.CBufRet.i32 %5613, 0
  %5615 = icmp eq i32 %5614, 0
  br i1 %5615, label %5983, label %5616, !dx.controlflow.hints !176

; <label>:5616                                    ; preds = %5585
  %5617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5618 = extractvalue %dx.types.CBufRet.f32 %5617, 2
  %5619 = extractvalue %dx.types.CBufRet.f32 %5617, 3
  %5620 = fmul fast float %5618, %88
  %5621 = fmul fast float %5619, %89
  %5622 = fmul fast float %5620, 2.000000e+00
  %5623 = fmul fast float %5621, 2.000000e+00
  %5624 = fsub fast float 1.000000e+00, %5622
  %5625 = fsub fast float 1.000000e+00, %5623
  %5626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5627 = extractvalue %dx.types.CBufRet.f32 %5626, 0
  %5628 = extractvalue %dx.types.CBufRet.f32 %5626, 1
  %5629 = extractvalue %dx.types.CBufRet.f32 %5626, 2
  %5630 = fmul fast float %5624, %5627
  %5631 = fmul fast float %5624, %5628
  %5632 = fmul fast float %5624, %5629
  %5633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5634 = extractvalue %dx.types.CBufRet.f32 %5633, 0
  %5635 = extractvalue %dx.types.CBufRet.f32 %5633, 1
  %5636 = extractvalue %dx.types.CBufRet.f32 %5633, 2
  %5637 = fmul fast float %5625, %5634
  %5638 = fmul fast float %5625, %5635
  %5639 = fmul fast float %5625, %5636
  %5640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5641 = extractvalue %dx.types.CBufRet.f32 %5640, 0
  %5642 = extractvalue %dx.types.CBufRet.f32 %5640, 1
  %5643 = extractvalue %dx.types.CBufRet.f32 %5640, 2
  %5644 = fadd fast float %5637, %5641
  %5645 = fadd fast float %5644, %5630
  %5646 = fadd fast float %5638, %5642
  %5647 = fadd fast float %5646, %5631
  %5648 = fadd fast float %5639, %5643
  %5649 = fadd fast float %5648, %5632
  %5650 = fmul fast float %5645, %4821
  %5651 = fmul fast float %5647, %4821
  %5652 = fmul fast float %5649, %4821
  %5653 = fmul fast float %5650, %5650
  %5654 = fmul fast float %5651, %5651
  %5655 = fadd fast float %5653, %5654
  %5656 = fmul fast float %5652, %5652
  %5657 = fadd fast float %5655, %5656
  %5658 = call float @dx.op.unary.f32(i32 24, float %5657)  ; Sqrt(value)
  %5659 = extractvalue %dx.types.CBufRet.f32 %4546, 0
  %5660 = fsub fast float %5658, %5659
  %5661 = extractvalue %dx.types.CBufRet.f32 %4546, 2
  %5662 = fmul fast float %5660, %5661
  %5663 = call float @dx.op.unary.f32(i32 7, float %5662)  ; Saturate(value)
  %5664 = fadd fast float %5663, -5.000000e-01
  %5665 = fmul fast float %5664, 2.000000e+00
  %5666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %5667 = extractvalue %dx.types.CBufRet.f32 %5666, 2
  %5668 = call float @dx.op.binary.f32(i32 36, float %5667, float %5665)  ; FMin(a,b)
  %5669 = fsub fast float -0.000000e+00, %5667
  %5670 = fcmp fast ogt float %5668, %5669
  br i1 %5670, label %5671, label %5983, !dx.controlflow.hints !177

; <label>:5671                                    ; preds = %5616
  %5672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %5673 = extractvalue %dx.types.CBufRet.f32 %5672, 3
  %5674 = fcmp fast ogt float %5673, 0.000000e+00
  br i1 %5674, label %5675, label %5750, !dx.controlflow.hints !178

; <label>:5675                                    ; preds = %5671
  %5676 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %33, i32 0)  ; GetDimensions(handle,mipLevel)
  %5677 = extractvalue %dx.types.Dimensions %5676, 0
  %5678 = sitofp i32 %5677 to float
  %5679 = extractvalue %dx.types.Dimensions %5676, 1
  %5680 = sitofp i32 %5679 to float
  %5681 = fmul fast float %5620, %5678
  %5682 = fmul fast float %5621, %5680
  %5683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5684 = extractvalue %dx.types.CBufRet.f32 %5683, 1
  %5685 = fsub fast float -0.000000e+00, %5684
  %5686 = fptoui float %5685 to i32
  %5687 = fptoui float %5681 to i32
  %5688 = fptoui float %5682 to i32
  %5689 = and i32 %5686, 31
  %5690 = lshr i32 %5687, %5689
  %5691 = lshr i32 %5688, %5689
  %5692 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %33, i32 %5686, i32 %5690, i32 %5691, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5693 = extractvalue %dx.types.ResRet.f32 %5692, 0
  %5694 = fcmp fast olt float %5693, -1.000000e+00
  %5695 = fcmp fast ogt float %5693, -1.000000e+00
  %5696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5697 = extractvalue %dx.types.CBufRet.f32 %5696, 1
  %5698 = select i1 %5695, float %5697, float 1.000000e+00
  %5699 = fadd fast float %5693, 1.000000e+00
  %5700 = fmul fast float %5698, %5699
  %5701 = call float @dx.op.unary.f32(i32 6, float %5700)  ; FAbs(value)
  %5702 = extractvalue %dx.types.CBufRet.f32 %5696, 3
  %5703 = fcmp fast oge float %5701, %5702
  %5704 = select i1 %5703, float 0x4197782600000000, float %5701
  %5705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %5706 = extractvalue %dx.types.CBufRet.f32 %5705, 0
  %5707 = extractvalue %dx.types.CBufRet.f32 %5705, 1
  %5708 = extractvalue %dx.types.CBufRet.f32 %5705, 2
  %5709 = select i1 %5694, float %5706, float %5627
  %5710 = select i1 %5694, float %5707, float %5628
  %5711 = select i1 %5694, float %5708, float %5629
  %5712 = fmul fast float %5709, %5624
  %5713 = fmul fast float %5710, %5624
  %5714 = fmul fast float %5711, %5624
  %5715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %5716 = extractvalue %dx.types.CBufRet.f32 %5715, 0
  %5717 = extractvalue %dx.types.CBufRet.f32 %5715, 1
  %5718 = extractvalue %dx.types.CBufRet.f32 %5715, 2
  %5719 = select i1 %5694, float %5716, float %5634
  %5720 = select i1 %5694, float %5717, float %5635
  %5721 = select i1 %5694, float %5718, float %5636
  %5722 = fmul fast float %5719, %5625
  %5723 = fmul fast float %5720, %5625
  %5724 = fmul fast float %5721, %5625
  %5725 = fadd fast float %5722, %5712
  %5726 = fadd fast float %5723, %5713
  %5727 = fadd fast float %5724, %5714
  %5728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %5729 = extractvalue %dx.types.CBufRet.f32 %5728, 0
  %5730 = extractvalue %dx.types.CBufRet.f32 %5728, 1
  %5731 = extractvalue %dx.types.CBufRet.f32 %5728, 2
  %5732 = select i1 %5694, float %5729, float %5641
  %5733 = select i1 %5694, float %5730, float %5642
  %5734 = select i1 %5694, float %5731, float %5643
  %5735 = fadd fast float %5725, %5732
  %5736 = fadd fast float %5726, %5733
  %5737 = fadd fast float %5727, %5734
  %5738 = fmul fast float %5735, %5704
  %5739 = fmul fast float %5736, %5704
  %5740 = fmul fast float %5737, %5704
  %5741 = fmul fast float %5738, %5738
  %5742 = fmul fast float %5739, %5739
  %5743 = fadd fast float %5741, %5742
  %5744 = fmul fast float %5740, %5740
  %5745 = fadd fast float %5743, %5744
  %5746 = call float @dx.op.unary.f32(i32 24, float %5745)  ; Sqrt(value)
  %5747 = fsub fast float %5746, %5659
  %5748 = fmul fast float %5747, %5661
  %5749 = call float @dx.op.unary.f32(i32 7, float %5748)  ; Saturate(value)
  br label %5750

; <label>:5750                                    ; preds = %5675, %5671
  %5751 = phi float [ %5749, %5675 ], [ 1.000000e+00, %5671 ]
  %5752 = fmul fast float %5668, 5.000000e-01
  %5753 = fadd fast float %5752, 5.000000e-01
  %5754 = call float @dx.op.unary.f32(i32 22, float %5753)  ; Frc(value)
  %5755 = call float @dx.op.unary.f32(i32 27, float %5754)  ; Round_ni(value)
  %5756 = call float @dx.op.unary.f32(i32 22, float %5754)  ; Frc(value)
  %5757 = fmul fast float %5756, 2.000000e+00
  %5758 = fadd fast float %5757, -1.000000e+00
  %5759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %55, float %5620, float %5621, float %5755, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5760 = extractvalue %dx.types.ResRet.f32 %5759, 0
  %5761 = extractvalue %dx.types.ResRet.f32 %5759, 1
  %5762 = extractvalue %dx.types.ResRet.f32 %5759, 2
  %5763 = extractvalue %dx.types.ResRet.f32 %5759, 3
  %5764 = fadd fast float %5760, -5.000000e-01
  %5765 = fadd fast float %5762, -5.000000e-01
  %5766 = fmul fast float %5764, 0xBFD5555560000000
  %5767 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5765, float %5766)  ; FMad(a,b,c)
  %5768 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5761, float 0.000000e+00)  ; FMad(a,b,c)
  %5769 = fadd fast float %5768, %5763
  %5770 = fmul fast float %5764, -7.500000e-01
  %5771 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5765, float %5770)  ; FMad(a,b,c)
  %5772 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5761, float 0.000000e+00)  ; FMad(a,b,c)
  %5773 = fadd fast float %5772, %5763
  %5774 = call float @dx.op.binary.f32(i32 35, float %5767, float -1.000000e+00)  ; FMax(a,b)
  %5775 = call float @dx.op.binary.f32(i32 35, float %5769, float -1.000000e+00)  ; FMax(a,b)
  %5776 = call float @dx.op.binary.f32(i32 35, float %5771, float -1.000000e+00)  ; FMax(a,b)
  %5777 = call float @dx.op.binary.f32(i32 35, float %5773, float -1.000000e+00)  ; FMax(a,b)
  %5778 = call float @dx.op.binary.f32(i32 36, float %5774, float 1.000000e+00)  ; FMin(a,b)
  %5779 = call float @dx.op.binary.f32(i32 36, float %5775, float 1.000000e+00)  ; FMin(a,b)
  %5780 = call float @dx.op.binary.f32(i32 36, float %5776, float 1.000000e+00)  ; FMin(a,b)
  %5781 = call float @dx.op.binary.f32(i32 36, float %5777, float 1.000000e+00)  ; FMin(a,b)
  %5782 = fcmp fast olt float %5778, 0x3FEFFF8020000000
  br i1 %5782, label %5783, label %5898, !dx.controlflow.hints !179

; <label>:5783                                    ; preds = %5750
  %5784 = extractvalue %dx.types.CBufRet.f32 %5666, 3
  %5785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %5786 = extractvalue %dx.types.CBufRet.f32 %5785, 0
  %5787 = extractvalue %dx.types.CBufRet.f32 %5785, 1
  %5788 = extractvalue %dx.types.CBufRet.f32 %5785, 2
  %5789 = extractvalue %dx.types.CBufRet.f32 %5785, 3
  %5790 = fsub fast float %5786, %5778
  %5791 = fsub fast float %5787, %5779
  %5792 = fsub fast float %5788, %5780
  %5793 = fsub fast float %5789, %5781
  %5794 = fmul fast float %5790, %5784
  %5795 = fmul fast float %5791, %5784
  %5796 = fmul fast float %5792, %5784
  %5797 = fmul fast float %5793, %5784
  %5798 = fadd fast float %5794, %5778
  %5799 = fadd fast float %5795, %5779
  %5800 = fsub fast float -0.000000e+00, %5799
  %5801 = fadd fast float %5796, %5780
  %5802 = fadd fast float %5797, %5781
  %5803 = fmul fast float %5798, %5798
  %5804 = fsub fast float %5799, %5803
  %5805 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5804)  ; FMax(a,b)
  %5806 = fdiv fast float 1.000000e+00, %5805
  %5807 = fmul fast float %5799, %5798
  %5808 = fsub fast float %5801, %5807
  %5809 = fsub fast float %5758, %5798
  %5810 = fmul fast float %5758, %5758
  %5811 = fsub fast float %5810, %5799
  %5812 = fmul fast float %5809, %5806
  %5813 = fmul fast float %5812, %5808
  %5814 = fsub fast float %5811, %5813
  %5815 = fmul fast float %5799, %5799
  %5816 = fsub fast float %5802, %5815
  %5817 = fmul fast float %5808, %5808
  %5818 = fmul fast float %5817, %5806
  %5819 = fsub fast float %5816, %5818
  %5820 = fdiv fast float %5814, %5819
  %5821 = fmul fast float %5808, %5820
  %5822 = fsub fast float %5809, %5821
  %5823 = fmul fast float %5822, %5806
  %5824 = fmul fast float %5823, %5798
  %5825 = fsub fast float 1.000000e+00, %5824
  %5826 = fmul fast float %5799, %5820
  %5827 = fsub fast float %5825, %5826
  %5828 = fmul fast float %5823, %5823
  %5829 = fmul fast float %5820, 4.000000e+00
  %5830 = fmul fast float %5829, %5827
  %5831 = fsub fast float %5828, %5830
  %5832 = call float @dx.op.unary.f32(i32 24, float %5831)  ; Sqrt(value)
  %5833 = fcmp fast oge float %5823, 0.000000e+00
  %5834 = fsub fast float -0.000000e+00, %5832
  %5835 = select i1 %5833, float %5834, float %5832
  %5836 = fsub fast float %5835, %5823
  %5837 = fdiv fast float %5836, %5820
  %5838 = fdiv fast float %5827, %5836
  %5839 = fmul fast float %5837, 5.000000e-01
  %5840 = fmul fast float %5838, 2.000000e+00
  %5841 = select i1 %5833, float %5839, float %5840
  %5842 = select i1 %5833, float %5840, float %5839
  %5843 = call float @dx.op.binary.f32(i32 35, float %5841, float %5842)  ; FMax(a,b)
  %5844 = call float @dx.op.binary.f32(i32 36, float %5841, float %5842)  ; FMin(a,b)
  %5845 = fcmp fast ogt float %5758, %5844
  br i1 %5845, label %5846, label %5856

; <label>:5846                                    ; preds = %5783
  %5847 = fsub fast float %5758, %5844
  %5848 = fsub fast float %5843, %5844
  %5849 = fmul fast float %5847, %5848
  %5850 = fmul fast float %5843, %5758
  %5851 = fadd fast float %5843, %5758
  %5852 = fmul fast float %5851, %5798
  %5853 = fadd fast float %5850, %5799
  %5854 = fsub fast float %5853, %5852
  %5855 = fdiv fast float %5854, %5849
  br label %5856

; <label>:5856                                    ; preds = %5846, %5783
  %5857 = phi float [ %5855, %5846 ], [ 0.000000e+00, %5783 ]
  %5858 = fcmp fast ogt float %5758, %5843
  %5859 = fsub fast float %5758, %5843
  br i1 %5858, label %5860, label %5870

; <label>:5860                                    ; preds = %5856
  %5861 = fsub fast float %5843, %5844
  %5862 = fmul fast float %5861, %5859
  %5863 = fmul fast float %5844, %5758
  %5864 = fadd fast float %5844, %5758
  %5865 = fmul fast float %5864, %5798
  %5866 = fsub fast float %5800, %5863
  %5867 = fadd fast float %5866, %5865
  %5868 = fdiv fast float %5867, %5862
  %5869 = fadd fast float %5868, %5857
  br label %5870

; <label>:5870                                    ; preds = %5860, %5856
  %5871 = phi float [ %5869, %5860 ], [ %5857, %5856 ]
  %5872 = fsub fast float %5758, %5844
  %5873 = fmul fast float %5872, %5859
  %5874 = fmul fast float %5844, %5843
  %5875 = fadd fast float %5844, %5843
  %5876 = fmul fast float %5875, %5798
  %5877 = fadd fast float %5874, %5799
  %5878 = fsub fast float %5877, %5876
  %5879 = fdiv fast float %5878, %5873
  %5880 = call float @dx.op.unary.f32(i32 7, float %5871)  ; Saturate(value)
  %5881 = fcmp fast oeq float %4547, 0.000000e+00
  %5882 = extractvalue %dx.types.CBufRet.f32 %5666, 0
  %5883 = fcmp fast oeq float %5882, 0.000000e+00
  %5884 = or i1 %5881, %5883
  %5885 = fmul fast float %5882, 2.000000e+00
  %5886 = fadd fast float %5667, %5668
  %5887 = fdiv fast float %5886, %5885
  %5888 = call float @dx.op.unary.f32(i32 7, float %5887)  ; Saturate(value)
  %5889 = fmul fast float %5888, 2.000000e+00
  %5890 = fsub fast float 3.000000e+00, %5889
  %5891 = fmul fast float %5888, %5888
  %5892 = fmul fast float %5891, %5890
  %5893 = select i1 %5884, float 1.000000e+00, float %5892
  %5894 = fmul fast float %5879, %4547
  %5895 = fadd fast float %5880, %5894
  %5896 = call float @dx.op.unary.f32(i32 7, float %5895)  ; Saturate(value)
  %5897 = fmul fast float %5893, %5896
  br label %5898

; <label>:5898                                    ; preds = %5870, %5750
  %5899 = phi float [ %5897, %5870 ], [ 0.000000e+00, %5750 ]
  %5900 = fsub fast float 1.000000e+00, %5899
  %5901 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %55, float %5620, float %5621, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5902 = extractvalue %dx.types.ResRet.f32 %5901, 0
  %5903 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %5904 = extractvalue %dx.types.CBufRet.i32 %5903, 2
  %5905 = icmp eq i32 %5904, 0
  br i1 %5905, label %5911, label %5906

; <label>:5906                                    ; preds = %5898
  %5907 = call float @dx.op.unary.f32(i32 7, float %5899)  ; Saturate(value)
  %5908 = fadd fast float %5902, -1.000000e+00
  %5909 = fmul fast float %5907, %5908
  %5910 = fadd fast float %5909, 1.000000e+00
  br label %5911

; <label>:5911                                    ; preds = %5906, %5898
  %5912 = phi float [ %5910, %5906 ], [ %5900, %5898 ]
  br i1 %5674, label %5913, label %5931

; <label>:5913                                    ; preds = %5911
  %5914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5915 = extractvalue %dx.types.CBufRet.f32 %5914, 1
  %5916 = fsub fast float %5751, %5915
  %5917 = call float @dx.op.unary.f32(i32 7, float %5916)  ; Saturate(value)
  %5918 = fsub fast float %5751, %5673
  %5919 = call float @dx.op.unary.f32(i32 7, float %5918)  ; Saturate(value)
  %5920 = fsub fast float %5917, %5919
  %5921 = fsub fast float %5753, %5919
  %5922 = fdiv fast float %5921, %5920
  %5923 = call float @dx.op.unary.f32(i32 7, float %5922)  ; Saturate(value)
  %5924 = fmul fast float %5923, 2.000000e+00
  %5925 = fsub fast float 3.000000e+00, %5924
  %5926 = fsub fast float %5902, %5912
  %5927 = fmul fast float %5923, %5923
  %5928 = fmul fast float %5927, %5926
  %5929 = fmul fast float %5928, %5925
  %5930 = fadd fast float %5929, %5912
  br label %5931

; <label>:5931                                    ; preds = %5913, %5911
  %5932 = phi float [ %5930, %5913 ], [ %5912, %5911 ]
  %5933 = call float @dx.op.binary.f32(i32 35, float %5902, float %5932)  ; FMax(a,b)
  %5934 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %5935 = extractvalue %dx.types.CBufRet.i32 %5934, 2
  %5936 = and i32 %5935, 1
  %5937 = icmp eq i32 %5936, 0
  %5938 = fcmp fast une float %5933, 1.000000e+00
  %5939 = and i1 %5938, %5937
  br i1 %5939, label %5940, label %5959

; <label>:5940                                    ; preds = %5931
  %5941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %55, float %5620, float %5621, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5942 = extractvalue %dx.types.ResRet.f32 %5941, 0
  %5943 = extractvalue %dx.types.ResRet.f32 %5941, 1
  %5944 = extractvalue %dx.types.ResRet.f32 %5941, 2
  %5945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5946 = extractvalue %dx.types.CBufRet.f32 %5945, 1
  %5947 = fmul fast float %5946, %5942
  %5948 = fmul fast float %5946, %5943
  %5949 = fmul fast float %5946, %5944
  %5950 = fcmp fast ogt float %5902, 0x3FEFFF2E40000000
  %5951 = fsub fast float 1.000000e+00, %5933
  %5952 = fsub fast float 1.000000e+00, %5902
  %5953 = fdiv fast float %5951, %5952
  %5954 = call float @dx.op.unary.f32(i32 7, float %5953)  ; Saturate(value)
  %5955 = select i1 %5950, float 0.000000e+00, float %5954
  %5956 = fmul fast float %5947, %5955
  %5957 = fmul fast float %5948, %5955
  %5958 = fmul fast float %5949, %5955
  br label %5959

; <label>:5959                                    ; preds = %5940, %5931
  %5960 = phi float [ 0.000000e+00, %5931 ], [ %5956, %5940 ]
  %5961 = phi float [ 0.000000e+00, %5931 ], [ %5957, %5940 ]
  %5962 = phi float [ 0.000000e+00, %5931 ], [ %5958, %5940 ]
  %5963 = fmul fast float %5960, %4534
  %5964 = fmul fast float %5961, %4534
  %5965 = fmul fast float %5962, %4534
  %5966 = fmul fast float %5933, %5595
  %5967 = call float @dx.op.dot3.f32(i32 55, float %5933, float %5933, float %5933, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5968 = call float @dx.op.dot3.f32(i32 55, float %5963, float %5964, float %5965, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5969 = select i1 %228, float %5967, float %5933
  %5970 = select i1 %228, float 1.000000e+00, float %5933
  %5971 = select i1 %228, float %5968, float %5963
  %5972 = select i1 %228, float 0.000000e+00, float %5964
  %5973 = select i1 %228, float 0.000000e+00, float %5965
  %5974 = fmul fast float %5969, %5607
  %5975 = fmul fast float %5969, %5608
  %5976 = fmul fast float %5970, %5609
  %5977 = fadd fast float %5974, %5971
  %5978 = fadd fast float %5975, %5972
  %5979 = fadd fast float %5973, %5976
  %5980 = fmul fast float %5969, %5610
  %5981 = fmul fast float %5969, %5611
  %5982 = fmul fast float %5970, %5612
  br label %5983

; <label>:5983                                    ; preds = %5959, %5616, %5585, %4817
  %5984 = phi float [ %4822, %4817 ], [ %5607, %5585 ], [ %5977, %5959 ], [ %5607, %5616 ]
  %5985 = phi float [ %4823, %4817 ], [ %5608, %5585 ], [ %5978, %5959 ], [ %5608, %5616 ]
  %5986 = phi float [ %4824, %4817 ], [ %5609, %5585 ], [ %5979, %5959 ], [ %5609, %5616 ]
  %5987 = phi float [ %4825, %4817 ], [ %5610, %5585 ], [ %5980, %5959 ], [ %5610, %5616 ]
  %5988 = phi float [ %4826, %4817 ], [ %5611, %5585 ], [ %5981, %5959 ], [ %5611, %5616 ]
  %5989 = phi float [ %4827, %4817 ], [ %5612, %5585 ], [ %5982, %5959 ], [ %5612, %5616 ]
  %5990 = phi float [ %4828, %4817 ], [ %5595, %5585 ], [ %5966, %5959 ], [ %5595, %5616 ]
  %5991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5992 = extractvalue %dx.types.CBufRet.f32 %5991, 2
  %5993 = extractvalue %dx.types.CBufRet.f32 %5991, 3
  %5994 = fmul fast float %5992, %88
  %5995 = fmul fast float %5993, %89
  %5996 = call float @dx.op.unary.f32(i32 7, float %5994)  ; Saturate(value)
  %5997 = call float @dx.op.unary.f32(i32 7, float %5995)  ; Saturate(value)
  %5998 = select i1 %4557, i32 2, i32 0
  %5999 = or i32 %5998, 1
  %6000 = uitofp i32 %5999 to float
  %6001 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %5996, float %5997, float %6000, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6002 = extractvalue %dx.types.ResRet.f32 %6001, 0
  %6003 = extractvalue %dx.types.ResRet.f32 %6001, 1
  %6004 = extractvalue %dx.types.ResRet.f32 %6001, 2
  %6005 = extractvalue %dx.types.ResRet.f32 %6001, 3
  %6006 = add nuw nsw i32 %5998, 2
  %6007 = uitofp i32 %6006 to float
  %6008 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %5996, float %5997, float %6007, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6009 = extractvalue %dx.types.ResRet.f32 %6008, 0
  %6010 = extractvalue %dx.types.ResRet.f32 %6008, 1
  %6011 = extractvalue %dx.types.ResRet.f32 %6008, 2
  %6012 = extractvalue %dx.types.ResRet.f32 %6008, 3
  %6013 = call float @dx.op.binary.f32(i32 35, float %6003, float %6004)  ; FMax(a,b)
  %6014 = call float @dx.op.binary.f32(i32 35, float %6002, float %6013)  ; FMax(a,b)
  %6015 = call float @dx.op.binary.f32(i32 35, float %6014, float %6005)  ; FMax(a,b)
  %6016 = call float @dx.op.binary.f32(i32 36, float %6010, float %6011)  ; FMin(a,b)
  %6017 = call float @dx.op.binary.f32(i32 36, float %6009, float %6016)  ; FMin(a,b)
  %6018 = call float @dx.op.binary.f32(i32 36, float %6017, float %6012)  ; FMin(a,b)
  %6019 = fmul fast float %6015, 2.550000e+02
  %6020 = fadd fast float %6019, 0x3F70101020000000
  %6021 = fptoui float %6020 to i32
  %6022 = fmul fast float %6018, 2.550000e+02
  %6023 = fadd fast float %6022, 0x3F70101020000000
  %6024 = fptoui float %6023 to i32
  %6025 = icmp ult i32 %6021, %6024
  br i1 %6025, label %6026, label %6195

; <label>:6026                                    ; preds = %5983
  %6027 = fcmp fast ogt float %78, 9.843750e-01
  %6028 = fadd fast float %4821, -4.000000e+00
  %6029 = select i1 %6027, float -4.000000e+00, float %6028
  %6030 = call float @dx.op.binary.f32(i32 35, float %6029, float 0.000000e+00)  ; FMax(a,b)
  %6031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6032 = extractvalue %dx.types.CBufRet.f32 %6031, 0
  %6033 = fadd fast float %6032, %6030
  %6034 = extractvalue %dx.types.CBufRet.f32 %6031, 2
  %6035 = fmul fast float %6033, %6034
  %6036 = call float @dx.op.unary.f32(i32 23, float %6035)  ; Log(value)
  %6037 = extractvalue %dx.types.CBufRet.f32 %6031, 3
  %6038 = fmul fast float %6037, %6036
  %6039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6040 = extractvalue %dx.types.CBufRet.f32 %6039, 2
  %6041 = fmul fast float %6038, %6040
  %6042 = call float @dx.op.unary.f32(i32 7, float %6041)  ; Saturate(value)
  %6043 = uitofp i32 %6021 to float
  %6044 = uitofp i32 %6024 to float
  %6045 = fadd fast float %6043, 5.000000e-01
  %6046 = fadd fast float %6044, 5.000000e-01
  %6047 = fmul fast float %6040, %6045
  %6048 = fmul fast float %6040, %6046
  %6049 = fadd fast float %6047, 0x3F0FFB4800000000
  %6050 = fadd fast float %6048, 0xBF0FFB4800000000
  %6051 = call float @dx.op.binary.f32(i32 35, float %6042, float %6049)  ; FMax(a,b)
  %6052 = call float @dx.op.binary.f32(i32 36, float %6051, float %6050)  ; FMin(a,b)
  %6053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6054 = extractvalue %dx.types.CBufRet.f32 %6053, 1
  %6055 = extractvalue %dx.types.CBufRet.f32 %6053, 2
  %6056 = extractvalue %dx.types.CBufRet.f32 %6053, 0
  %6057 = select i1 %4557, float %6056, float 0.000000e+00
  %6058 = fmul fast float %6054, %6052
  %6059 = fadd fast float %6057, %6058
  %6060 = fadd fast float %6057, %6055
  %6061 = fsub fast float %6054, %6055
  %6062 = fadd fast float %6061, %6057
  %6063 = call float @dx.op.binary.f32(i32 35, float %6059, float %6060)  ; FMax(a,b)
  %6064 = call float @dx.op.binary.f32(i32 36, float %6063, float %6062)  ; FMin(a,b)
  %6065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %5996, float %5997, float %6064, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6066 = extractvalue %dx.types.ResRet.f32 %6065, 0
  %6067 = extractvalue %dx.types.ResRet.f32 %6065, 1
  %6068 = extractvalue %dx.types.ResRet.f32 %6065, 2
  %6069 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6070 = extractvalue %dx.types.CBufRet.i32 %6069, 0
  %6071 = extractvalue %dx.types.CBufRet.i32 %6069, 1
  %6072 = uitofp i32 %6070 to float
  %6073 = uitofp i32 %6071 to float
  %6074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6075 = extractvalue %dx.types.CBufRet.f32 %6074, 0
  %6076 = extractvalue %dx.types.CBufRet.f32 %6074, 1
  %6077 = fmul fast float %6072, %5996
  %6078 = fmul fast float %6073, %5997
  %6079 = fadd fast float %6077, -5.000000e-01
  %6080 = fadd fast float %6078, -5.000000e-01
  %6081 = call float @dx.op.unary.f32(i32 22, float %6079)  ; Frc(value)
  %6082 = call float @dx.op.unary.f32(i32 22, float %6080)  ; Frc(value)
  %6083 = fmul fast float %6081, %6081
  %6084 = fmul fast float %6083, %6081
  %6085 = fsub fast float 3.000000e+00, %6081
  %6086 = fmul fast float %6083, %6085
  %6087 = fmul fast float %6081, 3.000000e+00
  %6088 = fmul fast float %6084, 3.000000e+00
  %6089 = fmul fast float %6083, 6.000000e+00
  %6090 = fsub fast float %6088, %6089
  %6091 = fadd fast float %6090, 4.000000e+00
  %6092 = fmul fast float %6091, 0x3FC5555560000000
  %6093 = fmul fast float %6084, -3.000000e+00
  %6094 = fadd fast float %6083, %6081
  %6095 = fmul fast float %6094, 3.000000e+00
  %6096 = fadd fast float %6093, 1.000000e+00
  %6097 = fadd fast float %6096, %6095
  %6098 = fmul fast float %6084, 0x3FC5555560000000
  %6099 = fmul fast float %6082, %6082
  %6100 = fmul fast float %6099, %6082
  %6101 = fsub fast float 3.000000e+00, %6082
  %6102 = fmul fast float %6099, %6101
  %6103 = fmul fast float %6082, 3.000000e+00
  %6104 = fmul fast float %6100, 3.000000e+00
  %6105 = fmul fast float %6099, 6.000000e+00
  %6106 = fsub fast float %6104, %6105
  %6107 = fadd fast float %6106, 4.000000e+00
  %6108 = fmul fast float %6107, 0x3FC5555560000000
  %6109 = fmul fast float %6100, -3.000000e+00
  %6110 = fadd fast float %6099, %6082
  %6111 = fmul fast float %6110, 3.000000e+00
  %6112 = fadd fast float %6109, 1.000000e+00
  %6113 = fadd fast float %6112, %6111
  %6114 = fmul fast float %6100, 0x3FC5555560000000
  %6115 = fadd fast float %6081, 1.000000e+00
  %6116 = fsub fast float 1.000000e+00, %6087
  %6117 = fadd fast float %6116, %6086
  %6118 = fadd fast float %6117, %6091
  %6119 = fmul fast float %6118, 0x3FC5555560000000
  %6120 = fdiv fast float %6092, %6119
  %6121 = fsub fast float %6115, %6120
  %6122 = fsub fast float 1.000000e+00, %6081
  %6123 = fadd fast float %6097, %6084
  %6124 = fmul fast float %6123, 0x3FC5555560000000
  %6125 = fdiv fast float %6098, %6124
  %6126 = fadd fast float %6122, %6125
  %6127 = fadd fast float %6082, 1.000000e+00
  %6128 = fsub fast float 1.000000e+00, %6103
  %6129 = fadd fast float %6128, %6102
  %6130 = fadd fast float %6129, %6107
  %6131 = fmul fast float %6130, 0x3FC5555560000000
  %6132 = fdiv fast float %6108, %6131
  %6133 = fsub fast float %6127, %6132
  %6134 = fsub fast float 1.000000e+00, %6082
  %6135 = fadd fast float %6113, %6100
  %6136 = fmul fast float %6135, 0x3FC5555560000000
  %6137 = fdiv fast float %6114, %6136
  %6138 = fadd fast float %6137, %6134
  %6139 = fmul fast float %6121, %6075
  %6140 = fsub fast float %5996, %6139
  %6141 = fmul fast float %6126, %6075
  %6142 = fadd fast float %6141, %5996
  %6143 = fmul fast float %6138, %6076
  %6144 = fadd fast float %6143, %5997
  %6145 = fmul fast float %6133, %6076
  %6146 = fsub fast float %5997, %6145
  %6147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %6140, float %6146, float %6064, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6148 = extractvalue %dx.types.ResRet.f32 %6147, 0
  %6149 = extractvalue %dx.types.ResRet.f32 %6147, 1
  %6150 = extractvalue %dx.types.ResRet.f32 %6147, 2
  %6151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %6142, float %6146, float %6064, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6152 = extractvalue %dx.types.ResRet.f32 %6151, 0
  %6153 = extractvalue %dx.types.ResRet.f32 %6151, 1
  %6154 = extractvalue %dx.types.ResRet.f32 %6151, 2
  %6155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %6140, float %6144, float %6064, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6156 = extractvalue %dx.types.ResRet.f32 %6155, 0
  %6157 = extractvalue %dx.types.ResRet.f32 %6155, 1
  %6158 = extractvalue %dx.types.ResRet.f32 %6155, 2
  %6159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %6142, float %6144, float %6064, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6160 = extractvalue %dx.types.ResRet.f32 %6159, 0
  %6161 = extractvalue %dx.types.ResRet.f32 %6159, 1
  %6162 = extractvalue %dx.types.ResRet.f32 %6159, 2
  %6163 = fsub fast float %6156, %6148
  %6164 = fsub fast float %6157, %6149
  %6165 = fsub fast float %6158, %6150
  %6166 = fmul fast float %6163, %6136
  %6167 = fmul fast float %6164, %6136
  %6168 = fmul fast float %6165, %6136
  %6169 = fadd fast float %6166, %6148
  %6170 = fadd fast float %6167, %6149
  %6171 = fadd fast float %6168, %6150
  %6172 = fsub fast float %6160, %6152
  %6173 = fsub fast float %6161, %6153
  %6174 = fsub fast float %6162, %6154
  %6175 = fmul fast float %6172, %6136
  %6176 = fmul fast float %6173, %6136
  %6177 = fmul fast float %6174, %6136
  %6178 = fsub fast float %6152, %6169
  %6179 = fadd fast float %6178, %6175
  %6180 = fsub fast float %6153, %6170
  %6181 = fadd fast float %6180, %6176
  %6182 = fsub fast float %6154, %6171
  %6183 = fadd fast float %6182, %6177
  %6184 = fmul fast float %6179, %6124
  %6185 = fmul fast float %6181, %6124
  %6186 = fmul fast float %6183, %6124
  %6187 = fadd fast float %6184, %6169
  %6188 = fadd fast float %6185, %6170
  %6189 = fadd fast float %6186, %6171
  %6190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6191 = extractvalue %dx.types.CBufRet.f32 %6190, 1
  %6192 = fmul fast float %6187, %6191
  %6193 = fmul fast float %6188, %6191
  %6194 = fmul fast float %6189, %6191
  br label %6195

; <label>:6195                                    ; preds = %6026, %5983
  %6196 = phi float [ %6066, %6026 ], [ 1.000000e+00, %5983 ]
  %6197 = phi float [ %6067, %6026 ], [ 1.000000e+00, %5983 ]
  %6198 = phi float [ %6068, %6026 ], [ 1.000000e+00, %5983 ]
  %6199 = phi float [ %6192, %6026 ], [ 0.000000e+00, %5983 ]
  %6200 = phi float [ %6193, %6026 ], [ 0.000000e+00, %5983 ]
  %6201 = phi float [ %6194, %6026 ], [ 0.000000e+00, %5983 ]
  %6202 = fmul fast float %6199, %4534
  %6203 = fmul fast float %6200, %4534
  %6204 = fmul fast float %6201, %4534
  %6205 = fmul fast float %6196, %5990
  %6206 = call float @dx.op.dot3.f32(i32 55, float %6196, float %6197, float %6198, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6207 = call float @dx.op.dot3.f32(i32 55, float %6202, float %6203, float %6204, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6208 = select i1 %228, float %6206, float %6196
  %6209 = select i1 %228, float %6206, float %6197
  %6210 = select i1 %228, float 1.000000e+00, float %6198
  %6211 = select i1 %228, float %6207, float %6202
  %6212 = select i1 %228, float 0.000000e+00, float %6203
  %6213 = select i1 %228, float 0.000000e+00, float %6204
  %6214 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6215 = extractvalue %dx.types.CBufRet.i32 %6214, 3
  %6216 = and i32 %6215, 3
  %6217 = icmp ne i32 %6216, 0
  %6218 = and i32 %6215, 4
  %6219 = icmp ne i32 %6218, 0
  %6220 = and i1 %6217, %6219
  %6221 = and i1 %228, %6220
  br i1 %6221, label %6222, label %6228

; <label>:6222                                    ; preds = %6195
  %6223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6224 = extractvalue %dx.types.CBufRet.f32 %6223, 1
  %6225 = fadd fast float %6205, -1.000000e+00
  %6226 = fmul fast float %6224, %6225
  %6227 = fadd fast float %6226, 1.000000e+00
  br label %6228

; <label>:6228                                    ; preds = %6222, %6195
  %6229 = phi float [ %6227, %6222 ], [ %6205, %6195 ]
  %6230 = fadd fast float %5987, %5984
  %6231 = fmul fast float %6208, %6230
  %6232 = fadd fast float %6231, %6211
  %6233 = fadd fast float %5988, %5985
  %6234 = fmul fast float %6209, %6233
  %6235 = fadd fast float %6234, %6212
  %6236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6237 = extractvalue %dx.types.CBufRet.f32 %6236, 0
  br i1 %228, label %6238, label %6261

; <label>:6238                                    ; preds = %6228
  %6239 = fadd fast float %6232, %6235
  %6240 = fmul fast float %6237, %6239
  %6241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6241, 3
  %6243 = extractvalue %dx.types.CBufRet.f32 %4539, 1
  %6244 = fsub fast float %4544, %4538
  %6245 = fadd fast float %6244, %4545
  %6246 = fsub fast float %6245, %6243
  %6247 = extractvalue %dx.types.CBufRet.f32 %4539, 2
  %6248 = fmul fast float %6246, %6247
  %6249 = call float @dx.op.unary.f32(i32 7, float %6248)  ; Saturate(value)
  %6250 = fsub fast float %6249, %6242
  %6251 = fmul fast float %6250, %6229
  %6252 = fadd fast float %6251, %6242
  %6253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6254 = extractvalue %dx.types.CBufRet.f32 %6253, 0
  %6255 = fsub fast float %6252, %6254
  %6256 = fmul fast float %6255, 1.000000e+01
  %6257 = call float @dx.op.unary.f32(i32 7, float %6256)  ; Saturate(value)
  %6258 = fmul fast float %6257, %4533
  %6259 = fadd fast float %6258, %4534
  %6260 = fmul fast float %6259, %6252
  br label %6285

; <label>:6261                                    ; preds = %6228
  %6262 = fadd fast float %5989, %5986
  %6263 = fmul fast float %6210, %6262
  %6264 = fadd fast float %6263, %6213
  %6265 = fmul fast float %6237, %6232
  %6266 = fmul fast float %6237, %6235
  %6267 = fmul fast float %6237, %6264
  %6268 = call float @dx.op.binary.f32(i32 35, float %6266, float %6267)  ; FMax(a,b)
  %6269 = call float @dx.op.binary.f32(i32 35, float %6265, float %6268)  ; FMax(a,b)
  %6270 = call float @dx.op.binary.f32(i32 35, float %6269, float %4534)  ; FMax(a,b)
  %6271 = fcmp fast ugt float %6270, 0x3F10000000000000
  br i1 %6271, label %6273, label %6272

; <label>:6272                                    ; preds = %6261
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6273

; <label>:6273                                    ; preds = %6272, %6261
  %6274 = add i32 %62, 116
  %6275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %6274, i32 undef)  ; BufferLoad(srv,index,wot)
  %6276 = extractvalue %dx.types.ResRet.i32 %6275, 0
  %6277 = and i32 %6276, 32
  %6278 = icmp eq i32 %6277, 0
  br i1 %6278, label %6285, label %6279

; <label>:6279                                    ; preds = %6273
  %6280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6281 = extractvalue %dx.types.CBufRet.f32 %6280, 0
  %6282 = fmul fast float %6281, 0x3FE99999A0000000
  %6283 = fadd fast float %6281, %6265
  %6284 = fadd fast float %6282, %6267
  br label %6285

; <label>:6285                                    ; preds = %6279, %6273, %6238
  %6286 = phi float [ %6240, %6238 ], [ %6283, %6279 ], [ %6265, %6273 ]
  %6287 = phi float [ %6260, %6238 ], [ %6266, %6279 ], [ %6266, %6273 ]
  %6288 = phi float [ %6259, %6238 ], [ %6284, %6279 ], [ %6267, %6273 ]
  %6289 = phi float [ %6259, %6238 ], [ %4534, %6279 ], [ %4534, %6273 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6290 = call float @dx.op.binary.f32(i32 36, float %6286, float 3.225500e+04)  ; FMin(a,b)
  %6291 = call float @dx.op.binary.f32(i32 36, float %6287, float 3.225500e+04)  ; FMin(a,b)
  %6292 = call float @dx.op.binary.f32(i32 36, float %6288, float 3.225500e+04)  ; FMin(a,b)
  %6293 = call float @dx.op.binary.f32(i32 36, float %6289, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6290)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6291)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6292)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6293)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

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
!dx.viewIdState = !{!74}
!dx.entryPoints = !{!75}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !63, !66}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
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
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !17}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!43 = !{i32 35, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!44 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!47 = !{i32 39, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !48}
!48 = !{i32 0, i32 14}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!54 = !{i32 45, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!55 = !{i32 46, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!56 = !{i32 47, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!57 = !{i32 48, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!58 = !{i32 49, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!59 = !{i32 50, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!60 = !{i32 51, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !48}
!61 = !{i32 52, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!62 = !{i32 53, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!63 = !{!64, !65}
!64 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!65 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!66 = !{!67, !68, !69, !70, !71, !72, !73}
!67 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!68 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!69 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!70 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!71 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!72 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!73 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!74 = !{[28 x i32] [i32 26, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
!75 = !{void ()* @ps_main, !"ps_main", !76, !4, !94}
!76 = !{!77, !92, null}
!77 = !{!78, !81, !83, !85, !87, !88, !89, !90, !91}
!78 = !{i32 0, !"SV_Position", i8 9, i8 3, !79, i8 4, i32 1, i8 4, i32 0, i8 0, !80}
!79 = !{i32 0}
!80 = !{i32 3, i32 15}
!81 = !{i32 1, !"COLOR", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 1, i8 0, !82}
!82 = !{i32 3, i32 1}
!83 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 2, i32 2, i8 0, !84}
!84 = !{i32 3, i32 3}
!85 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 3, i32 3, i8 0, !86}
!86 = !{i32 3, i32 7}
!87 = !{i32 4, !"NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 3, i32 4, i8 0, !86}
!88 = !{i32 5, !"TANGENT", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 5, i8 0, !80}
!89 = !{i32 6, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !79, i8 1, i32 1, i8 1, i32 6, i8 0, !82}
!90 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !79, i8 1, i32 1, i8 1, i32 6, i8 1, !82}
!91 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !79, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!92 = !{!93}
!93 = !{i32 0, !"SV_Target", i8 9, i8 16, !79, i8 0, i32 1, i8 4, i32 0, i8 0, !80}
!94 = !{i32 0, i64 16}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = !{!108, !108, i64 0}
!108 = !{!"int", !109, i64 0}
!109 = !{!"omnipotent char", !110, i64 0}
!110 = !{!"Simple C/C++ TBAA"}
!111 = !{!112, !114, !116, !118}
!112 = distinct !{!112, !113, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!113 = distinct !{!113, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!114 = distinct !{!114, !115, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!115 = distinct !{!115, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!116 = distinct !{!116, !117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!117 = distinct !{!117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!118 = distinct !{!118, !119, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!119 = distinct !{!119, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = !{!132, !132, i64 0}
!132 = !{!"float", !109, i64 0}
!133 = !{!134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!134 = distinct !{!134, !135, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!135 = distinct !{!135, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!136 = distinct !{!136, !137, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!137 = distinct !{!137, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!138 = distinct !{!138, !137, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!139 = distinct !{!139, !140, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!140 = distinct !{!140, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!141 = distinct !{!141, !140, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!142 = distinct !{!142, !140, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!143 = distinct !{!143, !144, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!144 = distinct !{!144, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!145 = distinct !{!145, !144, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!146 = distinct !{!146, !144, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!147 = distinct !{!147, !148, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!148 = distinct !{!148, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"\01?sort@@YAXAIAM00@Z: %c"}
!151 = distinct !{!151, !"\01?sort@@YAXAIAM00@Z"}
!152 = !{!153, !154, !134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!153 = distinct !{!153, !151, !"\01?sort@@YAXAIAM00@Z: %a"}
!154 = distinct !{!154, !151, !"\01?sort@@YAXAIAM00@Z: %b"}
!155 = !{!154}
!156 = !{!153, !150, !134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!157 = !{!153}
!158 = !{!154, !150, !134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!159 = !{!160}
!160 = distinct !{!160, !161, !"\01?sort@@YAXAIAM00@Z: %c"}
!161 = distinct !{!161, !"\01?sort@@YAXAIAM00@Z"}
!162 = !{!163, !164, !134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!163 = distinct !{!163, !161, !"\01?sort@@YAXAIAM00@Z: %a"}
!164 = distinct !{!164, !161, !"\01?sort@@YAXAIAM00@Z: %b"}
!165 = !{!164}
!166 = !{!163, !160, !134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!167 = !{!163}
!168 = !{!164, !160, !134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 2}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}

