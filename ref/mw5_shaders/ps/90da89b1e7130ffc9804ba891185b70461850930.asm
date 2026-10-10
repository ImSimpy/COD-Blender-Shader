;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         8     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        9     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy         10     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       11     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       12     NONE   float   xyz 
; DECAL_VOLUME_GRID_INDEX     0   x          13     NONE    uint   x   
; ENTITY_IDS               0    yz        13     NONE    uint    y  
; PACKED_TRI_DATA          0   xyzw       14     NONE    uint   x   
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
; shader hash: c4940c756283b4a6f9052bcfafce485b
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
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; DECAL_VOLUME_GRID_INDEX     0        nointerpolation       
; ENTITY_IDS               0        nointerpolation       
; PACKED_TRI_DATA          0        nointerpolation       
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
;   [160 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S7             s6     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture    byte         r/o      T4     t22,space1     1
;                                   texture     f32          3d      T5     t52,space2     1
;                                   texture     f32          2d      T6     t33,space2     1
;                                   texture     f32          2d      T7     t69,space2     1
;                                   texture    byte         r/o      T8     t18,space1     1
;                                   texture    byte         r/o      T9     t19,space1     1
;                                   texture    byte         r/o     T10     t20,space1     1
;                                   texture    byte         r/o     T11     t21,space1     1
;                                   texture     f32          2d     T12     t37,space2     1
;                                   texture     f32          2d     T13             t0     1
;                                   texture     f32          2d     T14             t1     1
;                                   texture     f32          2d     T15     t58,space2     1
;                                   texture     f32          2d     T16     t59,space2     1
;                                   texture     f32          2d     T17     t60,space2     1
;                                   texture    byte         r/o     T18     t45,space1     1
;                                   texture    byte         r/o     T19     t46,space1     1
;                                   texture    byte         r/o     T20     t47,space1     1
;                                   texture    byte         r/o     T21     t48,space1     1
;                                   texture     f32          2d     T22     t57,space2     1
;                                   texture    byte         r/o     T23     t69,space1     1
;                                   texture     u32          2d     T24     t56,space2     1
;                                   texture     f32          2d     T25     t34,space2     1
;                                   texture    byte         r/o     T26     t10,space1     1
;                                   texture    byte         r/o     T27      t1,space1     1
;                                   texture     f32          1d     T28     t32,space2     1
;                                   texture     f32     2darray     T29      t8,space2     1
;                                   texture     f32          2d     T30      t1,space2     1
;                                   texture     f32          2d     T31      t2,space2     1
;                                   texture     f32          2d     T32      t3,space2     1
;                                   texture     f32          2d     T33      t4,space2     1
;                                   textureunorm_f32     2darray     T34     t80,space2     1
;                                   texture    byte         r/o     T35     t67,space1     1
;                                   texture     f32          2d     T36      t7,space2     1
;                                   texture     f32          2d     T37      t6,space2     1
;                                   texture     f32          2d     T38      t5,space2     1
;                                   texture     f32          2d     T39     t38,space2     1
;                                   texture    byte         r/o     T40     t12,space1     1
;                                   texture    byte         r/o     T41     t13,space1     1
;                                   texture     f32          1d     T42     t30,space2     1
;                                   texture     f32          3d     T43     t44,space2     1
;                                   texture     f32          3d     T44     t45,space2     1
;                                   texture     f32     2darray     T45     t47,space2     1
;                                   textureunorm_f32     2darray     T46     t85,space2     1
;                                   texture     f32          2d     T47     t83,space2     1
;                                   texture     f32          2d     T48     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
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
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = alloca [4 x i32], align 4
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = alloca [12 x float], align 4
  %106 = alloca [12 x float], align 4
  %107 = alloca [3 x float], align 4
  %108 = alloca [3 x float], align 4
  %109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = fmul fast float %112, %101
  %114 = fmul fast float %112, %102
  %115 = call float @dx.op.dot3.f32(i32 55, float %92, float %93, float %94, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %116 = bitcast float %115 to i32
  %117 = ashr i32 %116, 1
  %118 = sub nsw i32 1597250115, %117
  %119 = bitcast i32 %118 to float
  %120 = fmul fast float %119, %92
  %121 = fmul fast float %119, %93
  %122 = fmul fast float %119, %94
  %123 = fmul fast float %93, %90
  %124 = fmul fast float %94, %89
  %125 = fsub fast float %123, %124
  %126 = fmul fast float %94, %88
  %127 = fmul fast float %92, %90
  %128 = fsub fast float %126, %127
  %129 = fmul fast float %92, %89
  %130 = fmul fast float %93, %88
  %131 = fsub fast float %129, %130
  %132 = fmul fast float %125, %91
  %133 = fmul fast float %128, %91
  %134 = fmul fast float %131, %91
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = fcmp fast une float %136, 0.000000e+00
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 3
  %141 = fmul fast float %113, 2.000000e+00
  %142 = fmul fast float %141, %139
  %143 = fmul fast float %114, 2.000000e+00
  %144 = fmul fast float %143, %140
  %145 = fsub fast float 1.000000e+00, %142
  %146 = fsub fast float 1.000000e+00, %144
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = select i1 %137, float %148, float %152
  %156 = select i1 %137, float %149, float %153
  %157 = select i1 %137, float %150, float %154
  %158 = fmul fast float %155, %145
  %159 = fmul fast float %156, %145
  %160 = fmul fast float %157, %145
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %168 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %169 = select i1 %137, float %162, float %166
  %170 = select i1 %137, float %163, float %167
  %171 = select i1 %137, float %164, float %168
  %172 = fmul fast float %169, %146
  %173 = fmul fast float %170, %146
  %174 = fmul fast float %171, %146
  %175 = fadd fast float %172, %158
  %176 = fadd fast float %173, %159
  %177 = fadd fast float %174, %160
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %184 = extractvalue %dx.types.CBufRet.f32 %182, 1
  %185 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %186 = select i1 %137, float %179, float %183
  %187 = select i1 %137, float %180, float %184
  %188 = select i1 %137, float %181, float %185
  %189 = fadd fast float %175, %186
  %190 = fadd fast float %176, %187
  %191 = fadd fast float %177, %188
  %192 = fmul fast float %189, %104
  %193 = fmul fast float %190, %104
  %194 = fmul fast float %191, %104
  %195 = shl i32 %58, 5
  %196 = add i32 %195, 4194304
  %197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = extractvalue %dx.types.ResRet.i32 %197, 1
  %200 = extractvalue %dx.types.ResRet.i32 %197, 2
  %201 = extractvalue %dx.types.ResRet.i32 %197, 3
  %202 = add i32 %195, 4194320
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = extractvalue %dx.types.ResRet.i32 %203, 1
  %206 = bitcast i32 %204 to float
  %207 = bitcast i32 %205 to float
  %208 = add i32 %57, 360
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = extractvalue %dx.types.ResRet.i32 %209, 1
  %212 = extractvalue %dx.types.ResRet.i32 %209, 2
  %213 = extractvalue %dx.types.ResRet.i32 %209, 3
  %214 = bitcast i32 %210 to float
  %215 = bitcast i32 %211 to float
  %216 = bitcast i32 %212 to float
  %217 = bitcast i32 %213 to float
  %218 = call float @dx.op.dot3.f32(i32 55, float %120, float %121, float %122, float %120, float %121, float %122)  ; Dot3(ax,ay,az,bx,by,bz)
  %219 = call float @dx.op.unary.f32(i32 25, float %218)  ; Rsqrt(value)
  %220 = fmul fast float %219, %120
  %221 = fmul fast float %219, %121
  %222 = fmul fast float %219, %122
  %223 = call float @dx.op.dot3.f32(i32 55, float %192, float %193, float %194, float %192, float %193, float %194)  ; Dot3(ax,ay,az,bx,by,bz)
  %224 = call float @dx.op.unary.f32(i32 25, float %223)  ; Rsqrt(value)
  %225 = fmul fast float %224, %192
  %226 = fmul fast float %224, %193
  %227 = fmul fast float %224, %194
  %228 = call float @dx.op.dot3.f32(i32 55, float %225, float %226, float %227, float %220, float %221, float %222)  ; Dot3(ax,ay,az,bx,by,bz)
  %229 = fmul fast float %228, %228
  %230 = fmul fast float %229, %216
  %231 = fadd fast float %230, %217
  %232 = call float @dx.op.unary.f32(i32 7, float %231)  ; Saturate(value)
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 3
  %235 = fmul fast float %234, %223
  %236 = fsub fast float %214, %235
  %237 = fmul fast float %236, %215
  %238 = call float @dx.op.unary.f32(i32 7, float %237)  ; Saturate(value)
  %239 = fmul fast float %238, %232
  %240 = fmul fast float %113, 5.000000e-01
  %241 = fmul fast float %114, 5.000000e-01
  %242 = fptosi float %240 to i32
  %243 = fptosi float %241 to i32
  %244 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %242, i32 %243, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = lshr i32 %245, 18
  %247 = uitofp i32 %246 to float
  %248 = fmul fast float %247, 0x3F4C00EBA0000000
  %249 = call float @dx.op.unary.f32(i32 21, float %248)  ; Exp(value)
  %250 = fadd fast float %249, -1.000000e+00
  %251 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %252 = extractvalue %dx.types.Dimensions %251, 0
  %253 = sitofp i32 %252 to float
  %254 = extractvalue %dx.types.Dimensions %251, 1
  %255 = sitofp i32 %254 to float
  %256 = fcmp fast oge float %240, %253
  %257 = fcmp fast oge float %241, %255
  %258 = or i1 %256, %257
  %259 = select i1 %258, float 0x4197782600000000, float %250
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 2
  %262 = extractvalue %dx.types.CBufRet.f32 %260, 3
  %263 = fmul fast float %261, %113
  %264 = fmul fast float %262, %114
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = and i32 %266, 114688
  %268 = icmp ne i32 %267, 0
  %269 = select i1 %268, float %263, float 0.000000e+00
  %270 = select i1 %268, float %264, float 0.000000e+00
  %271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %52, float %269, float %270, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %272 = extractvalue %dx.types.ResRet.f32 %271, 0
  %273 = fmul fast float %272, 2.550000e+02
  %274 = fptoui float %273 to i32
  %275 = select i1 %268, i32 %274, i32 0
  %276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.i32 %276, 3
  %278 = and i32 %277, 3
  %279 = icmp ne i32 %278, 0
  %280 = and i32 %277, 4
  %281 = icmp ne i32 %280, 0
  %282 = and i1 %279, %281
  br i1 %282, label %283, label %292

; <label>:283                                     ; preds = %0
  %284 = fmul fast float %140, %114
  %285 = fmul fast float %139, %113
  %286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %51, float %285, float %284, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = fsub fast float 1.000000e+00, %287
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 0
  %291 = fcmp fast olt float %288, %290
  br label %295

; <label>:292                                     ; preds = %0
  %293 = icmp eq i32 %280, 0
  %294 = and i1 %279, %293
  br label %295

; <label>:295                                     ; preds = %292, %283
  %296 = phi i1 [ %291, %283 ], [ %294, %292 ]
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %299 = fmul fast float %298, 0x3FE3C6EF40000000
  %300 = frem fast float %113, 2.560000e+02
  %301 = frem fast float %114, 2.560000e+02
  %302 = fptoui float %300 to i32
  %303 = fptoui float %301 to i32
  %304 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %302, i32 %303, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = extractvalue %dx.types.ResRet.f32 %304, 1
  %307 = fadd fast float %305, %299
  %308 = fadd fast float %306, %299
  %309 = call float @dx.op.unary.f32(i32 22, float %307)  ; Frc(value)
  %310 = call float @dx.op.unary.f32(i32 22, float %308)  ; Frc(value)
  %311 = add i32 %57, 156
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = shl i32 %313, 4
  %315 = and i32 %314, 32752
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %313, 7
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %313, 22
  %321 = shl nuw nsw i32 %320, 5
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = add i32 %57, 216
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = lshr i32 %325, 8
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = lshr i32 %325, 16
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = add i32 %57, 36
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = add i32 %57, 288
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %346, 16
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = fmul fast float %348, 0x3F50624DE0000000
  %352 = fmul fast float %350, 0x3F50624DE0000000
  %353 = add i32 %57, 172
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = shl i32 %355, 4
  %357 = and i32 %356, 32752
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %355, 7
  %360 = and i32 %359, 32752
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %355, 22
  %363 = shl nuw nsw i32 %362, 5
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = add i32 %57, 232
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 255
  %369 = uitofp i32 %368 to float
  %370 = fmul fast float %369, 0x3F70101020000000
  %371 = lshr i32 %367, 8
  %372 = and i32 %371, 255
  %373 = uitofp i32 %372 to float
  %374 = fmul fast float %373, 0x3F70101020000000
  %375 = lshr i32 %367, 16
  %376 = and i32 %375, 255
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, 0x3F70101020000000
  %379 = add i32 %57, 52
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 65535
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %381, 16
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = add i32 %57, 304
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 65535
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %388, 16
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = fmul fast float %390, 0x3F50624DE0000000
  %394 = fmul fast float %392, 0x3F50624DE0000000
  %395 = add i32 %57, 188
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = shl i32 %397, 4
  %399 = and i32 %398, 32752
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = lshr i32 %397, 7
  %402 = and i32 %401, 32752
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = lshr i32 %397, 22
  %405 = shl nuw nsw i32 %404, 5
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = add i32 %57, 248
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 255
  %411 = uitofp i32 %410 to float
  %412 = fmul fast float %411, 0x3F70101020000000
  %413 = lshr i32 %409, 8
  %414 = and i32 %413, 255
  %415 = uitofp i32 %414 to float
  %416 = fmul fast float %415, 0x3F70101020000000
  %417 = lshr i32 %409, 16
  %418 = and i32 %417, 255
  %419 = uitofp i32 %418 to float
  %420 = fmul fast float %419, 0x3F70101020000000
  %421 = add i32 %57, 68
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 65535
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = lshr i32 %423, 16
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = add i32 %57, 320
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 65535
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = lshr i32 %430, 16
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = fmul fast float %432, 0x3F50624DE0000000
  %436 = fmul fast float %434, 0x3F50624DE0000000
  %437 = add i32 %57, 204
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = shl i32 %439, 4
  %441 = and i32 %440, 32752
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = lshr i32 %439, 7
  %444 = and i32 %443, 32752
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = lshr i32 %439, 22
  %447 = shl nuw nsw i32 %446, 5
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = add i32 %57, 264
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 255
  %453 = uitofp i32 %452 to float
  %454 = fmul fast float %453, 0x3F70101020000000
  %455 = lshr i32 %451, 8
  %456 = and i32 %455, 255
  %457 = uitofp i32 %456 to float
  %458 = fmul fast float %457, 0x3F70101020000000
  %459 = lshr i32 %451, 16
  %460 = and i32 %459, 255
  %461 = uitofp i32 %460 to float
  %462 = fmul fast float %461, 0x3F70101020000000
  %463 = add i32 %57, 84
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = and i32 %465, 65535
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = lshr i32 %465, 16
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = add i32 %57, 336
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 65535
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = lshr i32 %472, 16
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = fmul fast float %474, 0x3F50624DE0000000
  %478 = fmul fast float %476, 0x3F50624DE0000000
  %479 = add i32 %57, 348
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = and i32 %481, 32
  %483 = icmp eq i32 %482, 0
  %484 = and i32 %481, 64
  %485 = icmp eq i32 %484, 0
  %486 = and i32 %481, 128
  %487 = icmp eq i32 %486, 0
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = and i32 %489, 2
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %507, label %492

; <label>:492                                     ; preds = %295
  %493 = add i32 %57, 540
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = add i32 %495, 0
  %497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %496, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %498 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %497, %dx.types.Handle %110, float %95, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 0
  %500 = extractvalue %dx.types.ResRet.f32 %498, 1
  %501 = extractvalue %dx.types.ResRet.f32 %498, 2
  %502 = extractvalue %dx.types.ResRet.f32 %498, 3
  %503 = fmul fast float %502, %97
  %504 = fmul fast float %499, %98
  %505 = fmul fast float %500, %99
  %506 = fmul fast float %501, %100
  br label %507

; <label>:507                                     ; preds = %492, %295
  %508 = phi float [ %100, %295 ], [ %506, %492 ]
  %509 = phi float [ %99, %295 ], [ %505, %492 ]
  %510 = phi float [ %98, %295 ], [ %504, %492 ]
  %511 = phi float [ %97, %295 ], [ %503, %492 ]
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = and i32 %513, 2
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %535, label %516

; <label>:516                                     ; preds = %507
  %517 = add i32 %57, 44
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = and i32 %519, 1
  %521 = icmp ne i32 %520, 0
  %522 = select i1 %521, float %510, float 1.000000e+00
  %523 = add i32 %57, 60
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = and i32 %525, 1
  %527 = icmp ne i32 %526, 0
  %528 = select i1 %527, float %509, float 1.000000e+00
  %529 = add i32 %57, 76
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = and i32 %531, 1
  %533 = icmp ne i32 %532, 0
  %534 = select i1 %533, float %508, float 1.000000e+00
  br label %535

; <label>:535                                     ; preds = %516, %507
  %536 = phi float [ %508, %507 ], [ %534, %516 ]
  %537 = phi float [ %509, %507 ], [ %528, %516 ]
  %538 = phi float [ %510, %507 ], [ %522, %516 ]
  %539 = lshr i32 %513, 20
  %540 = and i32 %539, 3
  %541 = add nuw nsw i32 %540, 1
  %542 = add i32 %57, 24
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = add i32 %57, 28
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = or i32 %547, %544
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %1137, label %550

; <label>:550                                     ; preds = %535
  %551 = and i32 %544, 262144
  %552 = icmp ne i32 %551, 0
  %553 = select i1 %552, float %63, float 1.000000e+00
  %554 = select i1 %552, float %64, float 0.000000e+00
  %555 = select i1 %552, float %65, float 0.000000e+00
  %556 = select i1 %552, float %66, float 1.000000e+00
  %557 = select i1 %552, float %67, float %95
  %558 = select i1 %552, float %68, float %96
  %559 = add i32 %57, 284
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = lshr i32 %561, 16
  %563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %562)  ; LegacyF16ToF32(value)
  %564 = fmul fast float %563, 0x3F50624DE0000000
  %565 = add i32 %57, 88
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = lshr i32 %567, 16
  %569 = and i32 %568, 255
  %570 = lshr i32 %567, 24
  %571 = add i32 %57, 292
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = and i32 %573, 65535
  %575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %574)  ; LegacyF16ToF32(value)
  %576 = lshr i32 %573, 16
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = add i32 %57, 32
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = lshr i32 %580, 22
  %582 = shl nuw nsw i32 %581, 5
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = shl i32 %580, 4
  %585 = and i32 %584, 32752
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = lshr i32 %580, 7
  %588 = and i32 %587, 32752
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 3
  %592 = fmul fast float %591, 1.000000e+03
  %593 = fmul fast float %351, %592
  %594 = call float @dx.op.unary.f32(i32 22, float %593)  ; Frc(value)
  %595 = fadd fast float %594, %341
  %596 = fmul fast float %352, %592
  %597 = call float @dx.op.unary.f32(i32 22, float %596)  ; Frc(value)
  %598 = fadd fast float %597, %343
  %599 = fmul fast float %564, %592
  %600 = call float @dx.op.unary.f32(i32 22, float %599)  ; Frc(value)
  %601 = fmul fast float %600, 0x401921FB60000000
  %602 = fadd fast float %601, %583
  %603 = call float @dx.op.unary.f32(i32 13, float %602)  ; Sin(value)
  %604 = call float @dx.op.unary.f32(i32 12, float %602)  ; Cos(value)
  %605 = fsub fast float -0.000000e+00, %603
  %606 = fadd fast float %557, -5.000000e-01
  %607 = fadd fast float %558, -5.000000e-01
  %608 = fmul fast float %575, %606
  %609 = fmul fast float %577, %607
  %610 = fadd fast float %608, 5.000000e-01
  %611 = fadd fast float %609, 5.000000e-01
  %612 = fmul fast float %586, %610
  %613 = fmul fast float %589, %611
  %614 = fmul fast float %604, %612
  %615 = call float @dx.op.tertiary.f32(i32 46, float %605, float %613, float %614)  ; FMad(a,b,c)
  %616 = fmul fast float %603, %612
  %617 = call float @dx.op.tertiary.f32(i32 46, float %604, float %613, float %616)  ; FMad(a,b,c)
  %618 = fadd fast float %595, %615
  %619 = fadd fast float %598, %617
  %620 = icmp ugt i32 %569, 1
  %621 = icmp ugt i32 %567, 33554431
  %622 = or i1 %621, %620
  br i1 %622, label %623, label %648

; <label>:623                                     ; preds = %550
  %624 = add i32 %57, 228
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = lshr i32 %626, 16
  %628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %627)  ; LegacyF16ToF32(value)
  %629 = fmul fast float %591, %628
  %630 = call float @dx.op.unary.f32(i32 22, float %629)  ; Frc(value)
  %631 = mul nuw nsw i32 %569, %570
  %632 = uitofp i32 %631 to float
  %633 = fmul fast float %630, %632
  %634 = call float @dx.op.unary.f32(i32 27, float %633)  ; Round_ni(value)
  %635 = fptoui float %634 to i32
  %636 = urem i32 %635, %569
  %637 = udiv i32 %635, %570
  %638 = call float @dx.op.unary.f32(i32 22, float %618)  ; Frc(value)
  %639 = call float @dx.op.unary.f32(i32 22, float %619)  ; Frc(value)
  %640 = uitofp i32 %636 to float
  %641 = uitofp i32 %637 to float
  %642 = fadd fast float %638, %640
  %643 = fadd fast float %639, %641
  %644 = uitofp i32 %569 to float
  %645 = uitofp i32 %570 to float
  %646 = fdiv fast float %642, %644
  %647 = fdiv fast float %643, %645
  br label %648

; <label>:648                                     ; preds = %623, %550
  %649 = phi float [ %646, %623 ], [ %618, %550 ]
  %650 = phi float [ %647, %623 ], [ %619, %550 ]
  %651 = and i32 %544, 256
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %699, label %653

; <label>:653                                     ; preds = %648
  %654 = add i32 %57, 488
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = add i32 %656, 0
  %658 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %657, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %659 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %658, %dx.types.Handle %110, float %649, float %650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %660 = extractvalue %dx.types.ResRet.f32 %659, 0
  %661 = add i32 %57, 100
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = shl i32 %663, 4
  %665 = and i32 %664, 32752
  %666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %665)  ; LegacyF16ToF32(value)
  %667 = lshr i32 %663, 7
  %668 = and i32 %667, 32752
  %669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %668)  ; LegacyF16ToF32(value)
  %670 = fsub fast float 1.000000e+00, %511
  %671 = call float @dx.op.binary.f32(i32 35, float %670, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %672 = bitcast float %511 to i32
  %673 = sitofp i32 %672 to float
  %674 = fadd fast float %673, 0xC1CFBF8940000000
  %675 = fmul fast float %669, %674
  %676 = fadd fast float %675, 0x41CFBF8940000000
  %677 = fptosi float %676 to i32
  %678 = bitcast i32 %677 to float
  %679 = bitcast float %671 to i32
  %680 = sitofp i32 %679 to float
  %681 = fadd fast float %680, 0xC1CFBF8940000000
  %682 = fmul fast float %681, %669
  %683 = fadd fast float %682, 0x41CFBF8940000000
  %684 = fptosi float %683 to i32
  %685 = bitcast i32 %684 to float
  %686 = fmul fast float %678, %666
  %687 = fmul fast float %685, %666
  %688 = fsub fast float %671, %686
  %689 = fadd fast float %687, %671
  %690 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %691 = call float @dx.op.unary.f32(i32 7, float %689)  ; Saturate(value)
  %692 = fsub fast float %660, %690
  %693 = fsub fast float %691, %690
  %694 = bitcast float %693 to i32
  %695 = sub nsw i32 2129859010, %694
  %696 = bitcast i32 %695 to float
  %697 = fmul fast float %696, %692
  %698 = call float @dx.op.unary.f32(i32 7, float %697)  ; Saturate(value)
  br label %699

; <label>:699                                     ; preds = %653, %648
  %700 = phi float [ %698, %653 ], [ %511, %648 ]
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = and i32 %702, 128
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %721, label %705

; <label>:705                                     ; preds = %699
  %706 = add i32 %57, 472
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = add i32 %708, 0
  %710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %709, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %711 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %710, %dx.types.Handle %110, float %649, float %650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %712 = extractvalue %dx.types.ResRet.f32 %711, 0
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = and i32 %714, 524288
  %716 = icmp ne i32 %715, 0
  %717 = fcmp fast ogt float %712, 0x3FE0101020000000
  %718 = select i1 %717, float 1.000000e+00, float 0.000000e+00
  %719 = select i1 %716, float %718, float %712
  %720 = fmul fast float %719, %700
  br label %721

; <label>:721                                     ; preds = %705, %699
  %722 = phi float [ %720, %705 ], [ %700, %699 ]
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = and i32 %724, 16
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %925, label %727

; <label>:727                                     ; preds = %721
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = add i32 %57, 424
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %730, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = add i32 %732, 0
  %734 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %733, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %735 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %734, %dx.types.Handle %109, float %649, float %650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %736 = extractvalue %dx.types.ResRet.f32 %735, 0
  %737 = extractvalue %dx.types.ResRet.f32 %735, 1
  %738 = extractvalue %dx.types.ResRet.f32 %735, 2
  %739 = extractvalue %dx.types.ResRet.f32 %735, 3
  %740 = and i32 %729, 255
  %741 = uitofp i32 %740 to float
  %742 = lshr i32 %729, 8
  %743 = and i32 %742, 255
  %744 = uitofp i32 %743 to float
  %745 = fmul fast float %739, %741
  %746 = fadd fast float %745, %744
  %747 = fmul fast float %746, 0x3F70101000000000
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = and i32 %749, 512
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %760, label %752

; <label>:752                                     ; preds = %727
  %753 = add i32 %57, 508
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = add i32 %755, 0
  %757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %756, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %758 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %757, %dx.types.Handle %110, float %649, float %650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %759 = extractvalue %dx.types.ResRet.f32 %758, 0
  br label %760

; <label>:760                                     ; preds = %752, %727
  %761 = phi float [ %759, %752 ], [ 1.000000e+00, %727 ]
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = and i32 %763, 33554432
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %872, label %766

; <label>:766                                     ; preds = %760
  %767 = add i32 %57, 224
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = and i32 %769, 65535
  %771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %770)  ; LegacyF16ToF32(value)
  %772 = lshr i32 %769, 16
  %773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %772)  ; LegacyF16ToF32(value)
  %774 = add i32 %57, 228
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = and i32 %776, 65535
  %778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %777)  ; LegacyF16ToF32(value)
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = lshr i32 %780, 24
  %782 = uitofp i32 %781 to float
  %783 = fmul fast float %782, 0x3F70101020000000
  %784 = and i32 %780, 255
  %785 = uitofp i32 %784 to float
  %786 = fmul fast float %785, 0x3F70101020000000
  %787 = lshr i32 %780, 8
  %788 = and i32 %787, 255
  %789 = uitofp i32 %788 to float
  %790 = fmul fast float %789, 0x3F70101020000000
  %791 = lshr i32 %780, 16
  %792 = and i32 %791, 255
  %793 = uitofp i32 %792 to float
  %794 = fmul fast float %793, 0x3F70101020000000
  %795 = add i32 %57, 220
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %795, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = lshr i32 %797, 24
  %799 = uitofp i32 %798 to float
  %800 = fmul fast float %799, 0x3F70101020000000
  %801 = and i32 %797, 255
  %802 = uitofp i32 %801 to float
  %803 = fmul fast float %802, 0x3F70101020000000
  %804 = lshr i32 %797, 8
  %805 = and i32 %804, 255
  %806 = uitofp i32 %805 to float
  %807 = fmul fast float %806, 0x3F70101020000000
  %808 = lshr i32 %797, 16
  %809 = and i32 %808, 255
  %810 = uitofp i32 %809 to float
  %811 = fmul fast float %810, 0x3F70101020000000
  %812 = bitcast float %736 to i32
  %813 = ashr i32 %812, 1
  %814 = sub nsw i32 1597463174, %813
  %815 = bitcast i32 %814 to float
  %816 = fmul fast float %736, 5.000000e-01
  %817 = fmul fast float %815, %815
  %818 = fmul fast float %817, %816
  %819 = fsub fast float 1.500000e+00, %818
  %820 = fmul fast float %815, %736
  %821 = fmul fast float %820, %819
  %822 = bitcast float %737 to i32
  %823 = ashr i32 %822, 1
  %824 = sub nsw i32 1597463174, %823
  %825 = bitcast i32 %824 to float
  %826 = fmul fast float %737, 5.000000e-01
  %827 = fmul fast float %825, %825
  %828 = fmul fast float %827, %826
  %829 = fsub fast float 1.500000e+00, %828
  %830 = fmul fast float %825, %737
  %831 = fmul fast float %830, %829
  %832 = bitcast float %738 to i32
  %833 = ashr i32 %832, 1
  %834 = sub nsw i32 1597463174, %833
  %835 = bitcast i32 %834 to float
  %836 = fmul fast float %738, 5.000000e-01
  %837 = fmul fast float %835, %835
  %838 = fmul fast float %837, %836
  %839 = fsub fast float 1.500000e+00, %838
  %840 = fmul fast float %835, %738
  %841 = fmul fast float %840, %839
  %842 = fsub fast float %821, %803
  %843 = fsub fast float %831, %807
  %844 = fsub fast float %841, %811
  %845 = fmul fast float %842, %771
  %846 = fmul fast float %843, %773
  %847 = fmul fast float %844, %778
  %848 = fadd fast float %845, %786
  %849 = fadd fast float %846, %790
  %850 = fadd fast float %847, %794
  %851 = call float @dx.op.unary.f32(i32 7, float %848)  ; Saturate(value)
  %852 = call float @dx.op.unary.f32(i32 7, float %849)  ; Saturate(value)
  %853 = call float @dx.op.unary.f32(i32 7, float %850)  ; Saturate(value)
  %854 = fmul fast float %851, %851
  %855 = fmul fast float %852, %852
  %856 = fmul fast float %853, %853
  %857 = fsub fast float %854, %736
  %858 = fsub fast float %855, %737
  %859 = fsub fast float %856, %738
  %860 = fmul fast float %857, %761
  %861 = fmul fast float %858, %761
  %862 = fmul fast float %859, %761
  %863 = fadd fast float %860, %736
  %864 = fadd fast float %861, %737
  %865 = fadd fast float %862, %738
  %866 = fadd fast float %783, %747
  %867 = fsub fast float %866, %800
  %868 = call float @dx.op.unary.f32(i32 7, float %867)  ; Saturate(value)
  %869 = fsub fast float %868, %747
  %870 = fmul fast float %869, %761
  %871 = fadd fast float %870, %747
  br label %925

; <label>:872                                     ; preds = %760
  %873 = and i32 %763, 134217728
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %909, label %875

; <label>:875                                     ; preds = %872
  %876 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %877 = call float @dx.op.unary.f32(i32 24, float %332)  ; Sqrt(value)
  %878 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %879 = fadd fast float %876, -5.000000e-01
  %880 = fadd fast float %877, -5.000000e-01
  %881 = fadd fast float %878, -5.000000e-01
  %882 = fmul fast float %879, %761
  %883 = fmul fast float %880, %761
  %884 = fmul fast float %881, %761
  %885 = fadd fast float %882, 5.000000e-01
  %886 = fadd fast float %883, 5.000000e-01
  %887 = fadd fast float %884, 5.000000e-01
  %888 = call float @dx.op.unary.f32(i32 24, float %736)  ; Sqrt(value)
  %889 = call float @dx.op.unary.f32(i32 24, float %737)  ; Sqrt(value)
  %890 = call float @dx.op.unary.f32(i32 24, float %738)  ; Sqrt(value)
  %891 = fmul fast float %885, 2.000000e+00
  %892 = fsub fast float 1.000000e+00, %891
  %893 = fmul fast float %892, %888
  %894 = fadd fast float %893, %891
  %895 = fmul fast float %894, %888
  %896 = fmul fast float %886, 2.000000e+00
  %897 = fsub fast float 1.000000e+00, %896
  %898 = fmul fast float %897, %889
  %899 = fadd fast float %898, %896
  %900 = fmul fast float %899, %889
  %901 = fmul fast float %887, 2.000000e+00
  %902 = fsub fast float 1.000000e+00, %901
  %903 = fmul fast float %902, %890
  %904 = fadd fast float %903, %901
  %905 = fmul fast float %904, %890
  %906 = fmul fast float %895, %895
  %907 = fmul fast float %900, %900
  %908 = fmul fast float %905, %905
  br label %925

; <label>:909                                     ; preds = %872
  %910 = fmul fast float %328, %328
  %911 = fmul fast float %332, %332
  %912 = fmul fast float %336, %336
  %913 = fadd fast float %910, -1.000000e+00
  %914 = fadd fast float %911, -1.000000e+00
  %915 = fadd fast float %912, -1.000000e+00
  %916 = fmul fast float %761, %913
  %917 = fmul fast float %761, %914
  %918 = fmul fast float %761, %915
  %919 = fadd fast float %916, 1.000000e+00
  %920 = fadd fast float %917, 1.000000e+00
  %921 = fadd fast float %918, 1.000000e+00
  %922 = fmul fast float %919, %736
  %923 = fmul fast float %920, %737
  %924 = fmul fast float %921, %738
  br label %925

; <label>:925                                     ; preds = %909, %875, %766, %721
  %926 = phi float [ %871, %766 ], [ %747, %875 ], [ %747, %909 ], [ 0x3FA23C0BE0000000, %721 ]
  %927 = phi float [ %863, %766 ], [ %906, %875 ], [ %922, %909 ], [ 1.000000e+00, %721 ]
  %928 = phi float [ %864, %766 ], [ %907, %875 ], [ %923, %909 ], [ 1.000000e+00, %721 ]
  %929 = phi float [ %865, %766 ], [ %908, %875 ], [ %924, %909 ], [ 1.000000e+00, %721 ]
  %930 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.i32 %930, 1
  %932 = and i32 %931, 1
  %933 = icmp ne i32 %932, 0
  %934 = add i32 %57, 356
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = and i32 %936, 32
  %938 = icmp ne i32 %937, 0
  %939 = and i1 %933, %938
  %940 = select i1 %939, float 1.000000e+00, float %927
  %941 = select i1 %939, float 0x3FD3333340000000, float %928
  %942 = select i1 %939, float 0x3FD3333340000000, float %929
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = and i32 %944, 32
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %1019, label %947

; <label>:947                                     ; preds = %925
  %948 = add i32 %57, 92
  %949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.i32 %949, 0
  %951 = add i32 %57, 440
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = add i32 %953, 0
  %955 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %954, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %956 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %955, %dx.types.Handle %109, float %649, float %650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %957 = extractvalue %dx.types.ResRet.f32 %956, 0
  %958 = extractvalue %dx.types.ResRet.f32 %956, 1
  %959 = extractvalue %dx.types.ResRet.f32 %956, 2
  %960 = extractvalue %dx.types.ResRet.f32 %956, 3
  %961 = and i32 %950, 255
  %962 = uitofp i32 %961 to float
  %963 = lshr i32 %950, 8
  %964 = and i32 %963, 255
  %965 = uitofp i32 %964 to float
  %966 = lshr i32 %950, 16
  %967 = and i32 %966, 255
  %968 = uitofp i32 %967 to float
  %969 = fmul fast float %968, 0x3F70101000000000
  %970 = fmul fast float %957, %962
  %971 = fadd fast float %970, %965
  %972 = fmul fast float %971, 0x3F70101000000000
  %973 = fadd fast float %958, -5.000000e-01
  %974 = fadd fast float %960, -5.000000e-01
  %975 = fmul fast float %973, %969
  %976 = fmul fast float %974, %969
  %977 = fadd fast float %975, 5.000000e-01
  %978 = fadd fast float %976, 5.000000e-01
  %979 = fmul fast float %977, 2.000000e+00
  %980 = fadd fast float %979, -1.000000e+00
  %981 = fmul fast float %978, 2.000000e+00
  %982 = fadd fast float %981, -1.000000e+00
  %983 = fadd fast float %980, %982
  %984 = fmul fast float %983, 5.000000e-01
  %985 = fsub fast float %980, %982
  %986 = fmul fast float %985, 5.000000e-01
  %987 = call float @dx.op.unary.f32(i32 6, float %984)  ; FAbs(value)
  %988 = fsub fast float 1.000000e+00, %987
  %989 = call float @dx.op.unary.f32(i32 6, float %986)  ; FAbs(value)
  %990 = fsub fast float %988, %989
  %991 = call float @dx.op.dot3.f32(i32 55, float %984, float %986, float %990, float %984, float %986, float %990)  ; Dot3(ax,ay,az,bx,by,bz)
  %992 = call float @dx.op.unary.f32(i32 25, float %991)  ; Rsqrt(value)
  %993 = fmul fast float %984, %992
  %994 = fmul fast float %986, %992
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = and i32 %996, 67108864
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %1015, label %999

; <label>:999                                     ; preds = %947
  %1000 = add i32 %57, 280
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = and i32 %1002, 65535
  %1004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1003)  ; LegacyF16ToF32(value)
  %1005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.i32 %1005, 0
  %1007 = and i32 %1006, 65535
  %1008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1007)  ; LegacyF16ToF32(value)
  %1009 = lshr i32 %1002, 16
  %1010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1009)  ; LegacyF16ToF32(value)
  %1011 = fsub fast float %972, %1010
  %1012 = fmul fast float %1011, %1004
  %1013 = fadd fast float %1012, %1008
  %1014 = call float @dx.op.unary.f32(i32 7, float %1013)  ; Saturate(value)
  br label %1015

; <label>:1015                                    ; preds = %999, %947
  %1016 = phi float [ %1014, %999 ], [ %972, %947 ]
  %1017 = call float @dx.op.dot2.f32(i32 54, float %993, float %994, float %553, float %554)  ; Dot2(ax,ay,bx,by)
  %1018 = call float @dx.op.dot2.f32(i32 54, float %993, float %994, float %555, float %556)  ; Dot2(ax,ay,bx,by)
  br label %1019

; <label>:1019                                    ; preds = %1015, %925
  %1020 = phi float [ %1016, %1015 ], [ 0x3FD6666660000000, %925 ]
  %1021 = phi float [ %1017, %1015 ], [ 0.000000e+00, %925 ]
  %1022 = phi float [ %1018, %1015 ], [ 0.000000e+00, %925 ]
  %1023 = phi float [ %959, %1015 ], [ 1.000000e+00, %925 ]
  %1024 = add i32 %57, 160
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = lshr i32 %1026, 22
  %1028 = shl nuw nsw i32 %1027, 5
  %1029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1028)  ; LegacyF16ToF32(value)
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = and i32 %1031, 64
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1067, label %1034

; <label>:1034                                    ; preds = %1019
  %1035 = add i32 %57, 456
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = add i32 %1037, 0
  %1039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1038, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = and i32 %1041, 131072
  %1043 = icmp eq i32 %1042, 0
  %1044 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1039, %dx.types.Handle %109, float %649, float %650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.ResRet.f32 %1044, 1
  %1047 = extractvalue %dx.types.ResRet.f32 %1044, 2
  %1048 = fmul fast float %1045, %316
  %1049 = fmul fast float %1046, %319
  %1050 = fmul fast float %1047, %322
  br i1 %1043, label %1057, label %1051

; <label>:1051                                    ; preds = %1034
  %1052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1052, 0
  %1054 = fmul fast float %1053, %1048
  %1055 = fmul fast float %1053, %1049
  %1056 = fmul fast float %1053, %1050
  br label %1057

; <label>:1057                                    ; preds = %1051, %1034
  %1058 = phi float [ %1054, %1051 ], [ %1048, %1034 ]
  %1059 = phi float [ %1055, %1051 ], [ %1049, %1034 ]
  %1060 = phi float [ %1056, %1051 ], [ %1050, %1034 ]
  %1061 = fmul fast float %1058, %1029
  %1062 = select i1 %296, float %1061, float %1058
  %1063 = call float @dx.op.dot3.f32(i32 55, float %1062, float %1059, float %1060, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1064 = select i1 %296, float 0.000000e+00, float %1058
  %1065 = select i1 %296, float %1063, float %1059
  %1066 = select i1 %296, float 0.000000e+00, float %1060
  br label %1067

; <label>:1067                                    ; preds = %1057, %1019
  %1068 = phi float [ %1064, %1057 ], [ 0.000000e+00, %1019 ]
  %1069 = phi float [ %1065, %1057 ], [ 0.000000e+00, %1019 ]
  %1070 = phi float [ %1066, %1057 ], [ 0.000000e+00, %1019 ]
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = and i32 %1072, 10240
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1119, label %1075

; <label>:1075                                    ; preds = %1067
  %1076 = add i32 %57, 524
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = add i32 %1078, 0
  %1080 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1079, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1081 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1080, %dx.types.Handle %110, float %649, float %650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 3
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = and i32 %1085, 1048576
  %1087 = icmp ne i32 %1086, 0
  %1088 = and i32 %1085, 8192
  %1089 = icmp eq i32 %1088, 0
  br i1 %1089, label %1105, label %1090

; <label>:1090                                    ; preds = %1075
  %1091 = extractvalue %dx.types.ResRet.f32 %1081, 2
  %1092 = select i1 %1087, float %1091, float %1082
  %1093 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1094 = select i1 %1087, float %1093, float %1082
  %1095 = add i32 %57, 96
  %1096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1095, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.i32 %1096, 0
  %1098 = lshr i32 %1097, 16
  %1099 = and i32 %1098, 255
  %1100 = uitofp i32 %1099 to float
  %1101 = fmul fast float %1100, 0x3F80101020000000
  %1102 = fmul fast float %1101, %1094
  %1103 = fmul fast float %1101, %1082
  %1104 = fmul fast float %1101, %1092
  br label %1105

; <label>:1105                                    ; preds = %1090, %1075
  %1106 = phi float [ %1102, %1090 ], [ 0.000000e+00, %1075 ]
  %1107 = phi float [ %1103, %1090 ], [ 0.000000e+00, %1075 ]
  %1108 = phi float [ %1104, %1090 ], [ 0.000000e+00, %1075 ]
  %1109 = and i32 %1085, 2048
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1119, label %1111

; <label>:1111                                    ; preds = %1105
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = shl i32 %1113, 4
  %1115 = and i32 %1114, 32752
  %1116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1115)  ; LegacyF16ToF32(value)
  %1117 = fmul fast float %1116, %1083
  %1118 = call float @dx.op.binary.f32(i32 35, float %1117, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1119

; <label>:1119                                    ; preds = %1111, %1105, %1067
  %1120 = phi float [ %1106, %1111 ], [ %1106, %1105 ], [ 0.000000e+00, %1067 ]
  %1121 = phi float [ %1107, %1111 ], [ %1107, %1105 ], [ 0.000000e+00, %1067 ]
  %1122 = phi float [ %1108, %1111 ], [ %1108, %1105 ], [ 0.000000e+00, %1067 ]
  %1123 = phi float [ %1118, %1111 ], [ 0x3F70101020000000, %1105 ], [ 0x3F70101020000000, %1067 ]
  %1124 = add i32 %57, 96
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1124, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = and i32 %1126, 255
  %1128 = uitofp i32 %1127 to float
  %1129 = lshr i32 %1126, 8
  %1130 = and i32 %1129, 255
  %1131 = uitofp i32 %1130 to float
  %1132 = call float @dx.op.dot3.f32(i32 55, float %940, float %941, float %942, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1133 = fmul fast float %1131, %1132
  %1134 = fadd fast float %1133, %1128
  %1135 = fmul fast float %1134, 0x3F70101020000000
  %1136 = call float @dx.op.unary.f32(i32 7, float %1135)  ; Saturate(value)
  br label %1137

; <label>:1137                                    ; preds = %1119, %535
  %1138 = phi float [ 0.000000e+00, %535 ], [ %1021, %1119 ]
  %1139 = phi float [ 0.000000e+00, %535 ], [ %1022, %1119 ]
  %1140 = phi float [ 0.000000e+00, %535 ], [ %940, %1119 ]
  %1141 = phi float [ 0.000000e+00, %535 ], [ %941, %1119 ]
  %1142 = phi float [ 0.000000e+00, %535 ], [ %942, %1119 ]
  %1143 = phi float [ 0.000000e+00, %535 ], [ %1120, %1119 ]
  %1144 = phi float [ 0.000000e+00, %535 ], [ %1121, %1119 ]
  %1145 = phi float [ 0.000000e+00, %535 ], [ %1122, %1119 ]
  %1146 = phi float [ 0.000000e+00, %535 ], [ %1068, %1119 ]
  %1147 = phi float [ 0.000000e+00, %535 ], [ %1069, %1119 ]
  %1148 = phi float [ 0.000000e+00, %535 ], [ %1070, %1119 ]
  %1149 = phi float [ 0.000000e+00, %535 ], [ %926, %1119 ]
  %1150 = phi float [ 0.000000e+00, %535 ], [ %722, %1119 ]
  %1151 = phi float [ 0.000000e+00, %535 ], [ %1020, %1119 ]
  %1152 = phi float [ 0.000000e+00, %535 ], [ %1023, %1119 ]
  %1153 = phi float [ 0.000000e+00, %535 ], [ %1123, %1119 ]
  %1154 = phi float [ 0.000000e+00, %535 ], [ %1136, %1119 ]
  br i1 %483, label %1968, label %1155

; <label>:1155                                    ; preds = %1137
  %1156 = icmp ult i32 %541, 2
  %1157 = add i32 %57, 40
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = add i32 %57, 44
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1160, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = or i32 %1162, %1159
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1968, label %1165

; <label>:1165                                    ; preds = %1155
  %1166 = and i32 %1159, 262144
  %1167 = icmp ne i32 %1166, 0
  %1168 = select i1 %1167, float %63, float 1.000000e+00
  %1169 = select i1 %1167, float %64, float 0.000000e+00
  %1170 = select i1 %1167, float %65, float 0.000000e+00
  %1171 = select i1 %1167, float %66, float 1.000000e+00
  %1172 = select i1 %1167, float %67, float %95
  %1173 = select i1 %1167, float %68, float %96
  %1174 = add i32 %57, 300
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = lshr i32 %1176, 16
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = fmul fast float %1178, 0x3F50624DE0000000
  %1180 = add i32 %57, 104
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = lshr i32 %1182, 16
  %1184 = and i32 %1183, 255
  %1185 = lshr i32 %1182, 24
  %1186 = add i32 %57, 308
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = and i32 %1188, 65535
  %1190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1189)  ; LegacyF16ToF32(value)
  %1191 = lshr i32 %1188, 16
  %1192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1191)  ; LegacyF16ToF32(value)
  %1193 = add i32 %57, 48
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = lshr i32 %1195, 22
  %1197 = shl nuw nsw i32 %1196, 5
  %1198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1197)  ; LegacyF16ToF32(value)
  %1199 = shl i32 %1195, 4
  %1200 = and i32 %1199, 32752
  %1201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1200)  ; LegacyF16ToF32(value)
  %1202 = lshr i32 %1195, 7
  %1203 = and i32 %1202, 32752
  %1204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1203)  ; LegacyF16ToF32(value)
  %1205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1206 = extractvalue %dx.types.CBufRet.f32 %1205, 3
  %1207 = fmul fast float %1206, 1.000000e+03
  %1208 = fmul fast float %393, %1207
  %1209 = call float @dx.op.unary.f32(i32 22, float %1208)  ; Frc(value)
  %1210 = fadd fast float %1209, %383
  %1211 = fmul fast float %394, %1207
  %1212 = call float @dx.op.unary.f32(i32 22, float %1211)  ; Frc(value)
  %1213 = fadd fast float %1212, %385
  %1214 = fmul fast float %1179, %1207
  %1215 = call float @dx.op.unary.f32(i32 22, float %1214)  ; Frc(value)
  %1216 = fmul fast float %1215, 0x401921FB60000000
  %1217 = fadd fast float %1216, %1198
  %1218 = call float @dx.op.unary.f32(i32 13, float %1217)  ; Sin(value)
  %1219 = call float @dx.op.unary.f32(i32 12, float %1217)  ; Cos(value)
  %1220 = fsub fast float -0.000000e+00, %1218
  %1221 = fadd fast float %1172, -5.000000e-01
  %1222 = fadd fast float %1173, -5.000000e-01
  %1223 = fmul fast float %1190, %1221
  %1224 = fmul fast float %1192, %1222
  %1225 = fadd fast float %1223, 5.000000e-01
  %1226 = fadd fast float %1224, 5.000000e-01
  %1227 = fmul fast float %1201, %1225
  %1228 = fmul fast float %1204, %1226
  %1229 = fmul fast float %1219, %1227
  %1230 = call float @dx.op.tertiary.f32(i32 46, float %1220, float %1228, float %1229)  ; FMad(a,b,c)
  %1231 = fmul fast float %1218, %1227
  %1232 = call float @dx.op.tertiary.f32(i32 46, float %1219, float %1228, float %1231)  ; FMad(a,b,c)
  %1233 = fadd fast float %1210, %1230
  %1234 = fadd fast float %1213, %1232
  %1235 = icmp ugt i32 %1184, 1
  %1236 = icmp ugt i32 %1182, 33554431
  %1237 = or i1 %1236, %1235
  br i1 %1237, label %1238, label %1263

; <label>:1238                                    ; preds = %1165
  %1239 = add i32 %57, 244
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = lshr i32 %1241, 16
  %1243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1242)  ; LegacyF16ToF32(value)
  %1244 = fmul fast float %1206, %1243
  %1245 = call float @dx.op.unary.f32(i32 22, float %1244)  ; Frc(value)
  %1246 = mul nuw nsw i32 %1184, %1185
  %1247 = uitofp i32 %1246 to float
  %1248 = fmul fast float %1245, %1247
  %1249 = call float @dx.op.unary.f32(i32 27, float %1248)  ; Round_ni(value)
  %1250 = fptoui float %1249 to i32
  %1251 = urem i32 %1250, %1184
  %1252 = udiv i32 %1250, %1185
  %1253 = call float @dx.op.unary.f32(i32 22, float %1233)  ; Frc(value)
  %1254 = call float @dx.op.unary.f32(i32 22, float %1234)  ; Frc(value)
  %1255 = uitofp i32 %1251 to float
  %1256 = uitofp i32 %1252 to float
  %1257 = fadd fast float %1253, %1255
  %1258 = fadd fast float %1254, %1256
  %1259 = uitofp i32 %1184 to float
  %1260 = uitofp i32 %1185 to float
  %1261 = fdiv fast float %1257, %1259
  %1262 = fdiv fast float %1258, %1260
  br label %1263

; <label>:1263                                    ; preds = %1238, %1165
  %1264 = phi float [ %1261, %1238 ], [ %1233, %1165 ]
  %1265 = phi float [ %1262, %1238 ], [ %1234, %1165 ]
  %1266 = and i32 %1159, 256
  %1267 = icmp eq i32 %1266, 0
  br i1 %1267, label %1314, label %1268

; <label>:1268                                    ; preds = %1263
  %1269 = add i32 %57, 492
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = add i32 %1271, 0
  %1273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1272, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1274 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1273, %dx.types.Handle %110, float %1264, float %1265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  %1276 = add i32 %57, 116
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = shl i32 %1278, 4
  %1280 = and i32 %1279, 32752
  %1281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1280)  ; LegacyF16ToF32(value)
  %1282 = lshr i32 %1278, 7
  %1283 = and i32 %1282, 32752
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = fsub fast float 1.000000e+00, %538
  %1286 = call float @dx.op.binary.f32(i32 35, float %1285, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1287 = bitcast float %538 to i32
  %1288 = sitofp i32 %1287 to float
  %1289 = fadd fast float %1288, 0xC1CFBF8940000000
  %1290 = fmul fast float %1284, %1289
  %1291 = fadd fast float %1290, 0x41CFBF8940000000
  %1292 = fptosi float %1291 to i32
  %1293 = bitcast i32 %1292 to float
  %1294 = bitcast float %1286 to i32
  %1295 = sitofp i32 %1294 to float
  %1296 = fadd fast float %1295, 0xC1CFBF8940000000
  %1297 = fmul fast float %1296, %1284
  %1298 = fadd fast float %1297, 0x41CFBF8940000000
  %1299 = fptosi float %1298 to i32
  %1300 = bitcast i32 %1299 to float
  %1301 = fmul fast float %1293, %1281
  %1302 = fmul fast float %1300, %1281
  %1303 = fsub fast float %1286, %1301
  %1304 = fadd fast float %1302, %1286
  %1305 = call float @dx.op.unary.f32(i32 7, float %1303)  ; Saturate(value)
  %1306 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  %1307 = fsub fast float %1275, %1305
  %1308 = fsub fast float %1306, %1305
  %1309 = bitcast float %1308 to i32
  %1310 = sub nsw i32 2129859010, %1309
  %1311 = bitcast i32 %1310 to float
  %1312 = fmul fast float %1311, %1307
  %1313 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  br label %1314

; <label>:1314                                    ; preds = %1268, %1263
  %1315 = phi float [ %1313, %1268 ], [ %538, %1263 ]
  %1316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.i32 %1316, 0
  %1318 = and i32 %1317, 128
  %1319 = icmp eq i32 %1318, 0
  br i1 %1319, label %1336, label %1320

; <label>:1320                                    ; preds = %1314
  %1321 = add i32 %57, 476
  %1322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1321, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.i32 %1322, 0
  %1324 = add i32 %1323, 0
  %1325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1324, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1326 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1325, %dx.types.Handle %110, float %1264, float %1265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1327 = extractvalue %dx.types.ResRet.f32 %1326, 0
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = and i32 %1329, 524288
  %1331 = icmp ne i32 %1330, 0
  %1332 = fcmp fast ogt float %1327, 0x3FE0101020000000
  %1333 = select i1 %1332, float 1.000000e+00, float 0.000000e+00
  %1334 = select i1 %1331, float %1333, float %1327
  %1335 = fmul fast float %1334, %1315
  br label %1336

; <label>:1336                                    ; preds = %1320, %1314
  %1337 = phi float [ %1335, %1320 ], [ %1315, %1314 ]
  %1338 = fcmp fast ult float %1337, 0x3F70101020000000
  br i1 %1338, label %1968, label %1339

; <label>:1339                                    ; preds = %1336
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = and i32 %1341, 16
  %1343 = icmp eq i32 %1342, 0
  br i1 %1343, label %1542, label %1344

; <label>:1344                                    ; preds = %1339
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = add i32 %57, 428
  %1348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1347, i32 undef)  ; BufferLoad(srv,index,wot)
  %1349 = extractvalue %dx.types.ResRet.i32 %1348, 0
  %1350 = add i32 %1349, 0
  %1351 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1350, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1352 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1351, %dx.types.Handle %109, float %1264, float %1265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1353 = extractvalue %dx.types.ResRet.f32 %1352, 0
  %1354 = extractvalue %dx.types.ResRet.f32 %1352, 1
  %1355 = extractvalue %dx.types.ResRet.f32 %1352, 2
  %1356 = extractvalue %dx.types.ResRet.f32 %1352, 3
  %1357 = and i32 %1346, 255
  %1358 = uitofp i32 %1357 to float
  %1359 = lshr i32 %1346, 8
  %1360 = and i32 %1359, 255
  %1361 = uitofp i32 %1360 to float
  %1362 = fmul fast float %1356, %1358
  %1363 = fadd fast float %1362, %1361
  %1364 = fmul fast float %1363, 0x3F70101000000000
  %1365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1366 = extractvalue %dx.types.ResRet.i32 %1365, 0
  %1367 = and i32 %1366, 512
  %1368 = icmp eq i32 %1367, 0
  br i1 %1368, label %1377, label %1369

; <label>:1369                                    ; preds = %1344
  %1370 = add i32 %57, 512
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = add i32 %1372, 0
  %1374 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1373, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1375 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1374, %dx.types.Handle %110, float %1264, float %1265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1376 = extractvalue %dx.types.ResRet.f32 %1375, 0
  br label %1377

; <label>:1377                                    ; preds = %1369, %1344
  %1378 = phi float [ %1376, %1369 ], [ 1.000000e+00, %1344 ]
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = and i32 %1380, 33554432
  %1382 = icmp eq i32 %1381, 0
  br i1 %1382, label %1489, label %1383

; <label>:1383                                    ; preds = %1377
  %1384 = add i32 %57, 240
  %1385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1384, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.i32 %1385, 0
  %1387 = and i32 %1386, 65535
  %1388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1387)  ; LegacyF16ToF32(value)
  %1389 = lshr i32 %1386, 16
  %1390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1389)  ; LegacyF16ToF32(value)
  %1391 = add i32 %57, 244
  %1392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1391, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.i32 %1392, 0
  %1394 = and i32 %1393, 65535
  %1395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1394)  ; LegacyF16ToF32(value)
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = lshr i32 %1397, 24
  %1399 = uitofp i32 %1398 to float
  %1400 = fmul fast float %1399, 0x3F70101020000000
  %1401 = and i32 %1397, 255
  %1402 = uitofp i32 %1401 to float
  %1403 = fmul fast float %1402, 0x3F70101020000000
  %1404 = lshr i32 %1397, 8
  %1405 = and i32 %1404, 255
  %1406 = uitofp i32 %1405 to float
  %1407 = fmul fast float %1406, 0x3F70101020000000
  %1408 = lshr i32 %1397, 16
  %1409 = and i32 %1408, 255
  %1410 = uitofp i32 %1409 to float
  %1411 = fmul fast float %1410, 0x3F70101020000000
  %1412 = add i32 %57, 236
  %1413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1412, i32 undef)  ; BufferLoad(srv,index,wot)
  %1414 = extractvalue %dx.types.ResRet.i32 %1413, 0
  %1415 = lshr i32 %1414, 24
  %1416 = uitofp i32 %1415 to float
  %1417 = fmul fast float %1416, 0x3F70101020000000
  %1418 = and i32 %1414, 255
  %1419 = uitofp i32 %1418 to float
  %1420 = fmul fast float %1419, 0x3F70101020000000
  %1421 = lshr i32 %1414, 8
  %1422 = and i32 %1421, 255
  %1423 = uitofp i32 %1422 to float
  %1424 = fmul fast float %1423, 0x3F70101020000000
  %1425 = lshr i32 %1414, 16
  %1426 = and i32 %1425, 255
  %1427 = uitofp i32 %1426 to float
  %1428 = fmul fast float %1427, 0x3F70101020000000
  %1429 = bitcast float %1353 to i32
  %1430 = ashr i32 %1429, 1
  %1431 = sub nsw i32 1597463174, %1430
  %1432 = bitcast i32 %1431 to float
  %1433 = fmul fast float %1353, 5.000000e-01
  %1434 = fmul fast float %1432, %1432
  %1435 = fmul fast float %1434, %1433
  %1436 = fsub fast float 1.500000e+00, %1435
  %1437 = fmul fast float %1432, %1353
  %1438 = fmul fast float %1437, %1436
  %1439 = bitcast float %1354 to i32
  %1440 = ashr i32 %1439, 1
  %1441 = sub nsw i32 1597463174, %1440
  %1442 = bitcast i32 %1441 to float
  %1443 = fmul fast float %1354, 5.000000e-01
  %1444 = fmul fast float %1442, %1442
  %1445 = fmul fast float %1444, %1443
  %1446 = fsub fast float 1.500000e+00, %1445
  %1447 = fmul fast float %1442, %1354
  %1448 = fmul fast float %1447, %1446
  %1449 = bitcast float %1355 to i32
  %1450 = ashr i32 %1449, 1
  %1451 = sub nsw i32 1597463174, %1450
  %1452 = bitcast i32 %1451 to float
  %1453 = fmul fast float %1355, 5.000000e-01
  %1454 = fmul fast float %1452, %1452
  %1455 = fmul fast float %1454, %1453
  %1456 = fsub fast float 1.500000e+00, %1455
  %1457 = fmul fast float %1452, %1355
  %1458 = fmul fast float %1457, %1456
  %1459 = fsub fast float %1438, %1420
  %1460 = fsub fast float %1448, %1424
  %1461 = fsub fast float %1458, %1428
  %1462 = fmul fast float %1459, %1388
  %1463 = fmul fast float %1460, %1390
  %1464 = fmul fast float %1461, %1395
  %1465 = fadd fast float %1462, %1403
  %1466 = fadd fast float %1463, %1407
  %1467 = fadd fast float %1464, %1411
  %1468 = call float @dx.op.unary.f32(i32 7, float %1465)  ; Saturate(value)
  %1469 = call float @dx.op.unary.f32(i32 7, float %1466)  ; Saturate(value)
  %1470 = call float @dx.op.unary.f32(i32 7, float %1467)  ; Saturate(value)
  %1471 = fmul fast float %1468, %1468
  %1472 = fmul fast float %1469, %1469
  %1473 = fmul fast float %1470, %1470
  %1474 = fsub fast float %1471, %1353
  %1475 = fsub fast float %1472, %1354
  %1476 = fsub fast float %1473, %1355
  %1477 = fmul fast float %1474, %1378
  %1478 = fmul fast float %1475, %1378
  %1479 = fmul fast float %1476, %1378
  %1480 = fadd fast float %1477, %1353
  %1481 = fadd fast float %1478, %1354
  %1482 = fadd fast float %1479, %1355
  %1483 = fadd fast float %1400, %1364
  %1484 = fsub fast float %1483, %1417
  %1485 = call float @dx.op.unary.f32(i32 7, float %1484)  ; Saturate(value)
  %1486 = fsub fast float %1485, %1364
  %1487 = fmul fast float %1486, %1378
  %1488 = fadd fast float %1487, %1364
  br label %1542

; <label>:1489                                    ; preds = %1377
  %1490 = and i32 %1380, 134217728
  %1491 = icmp eq i32 %1490, 0
  br i1 %1491, label %1526, label %1492

; <label>:1492                                    ; preds = %1489
  %1493 = call float @dx.op.unary.f32(i32 24, float %370)  ; Sqrt(value)
  %1494 = call float @dx.op.unary.f32(i32 24, float %374)  ; Sqrt(value)
  %1495 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %1496 = fadd fast float %1493, -5.000000e-01
  %1497 = fadd fast float %1494, -5.000000e-01
  %1498 = fadd fast float %1495, -5.000000e-01
  %1499 = fmul fast float %1496, %1378
  %1500 = fmul fast float %1497, %1378
  %1501 = fmul fast float %1498, %1378
  %1502 = fadd fast float %1499, 5.000000e-01
  %1503 = fadd fast float %1500, 5.000000e-01
  %1504 = fadd fast float %1501, 5.000000e-01
  %1505 = call float @dx.op.unary.f32(i32 24, float %1353)  ; Sqrt(value)
  %1506 = call float @dx.op.unary.f32(i32 24, float %1354)  ; Sqrt(value)
  %1507 = call float @dx.op.unary.f32(i32 24, float %1355)  ; Sqrt(value)
  %1508 = fmul fast float %1502, 2.000000e+00
  %1509 = fsub fast float 1.000000e+00, %1508
  %1510 = fmul fast float %1509, %1505
  %1511 = fadd fast float %1510, %1508
  %1512 = fmul fast float %1511, %1505
  %1513 = fmul fast float %1503, 2.000000e+00
  %1514 = fsub fast float 1.000000e+00, %1513
  %1515 = fmul fast float %1514, %1506
  %1516 = fadd fast float %1515, %1513
  %1517 = fmul fast float %1516, %1506
  %1518 = fmul fast float %1504, 2.000000e+00
  %1519 = fsub fast float 1.000000e+00, %1518
  %1520 = fmul fast float %1519, %1507
  %1521 = fadd fast float %1520, %1518
  %1522 = fmul fast float %1521, %1507
  %1523 = fmul fast float %1512, %1512
  %1524 = fmul fast float %1517, %1517
  %1525 = fmul fast float %1522, %1522
  br label %1542

; <label>:1526                                    ; preds = %1489
  %1527 = fmul fast float %370, %370
  %1528 = fmul fast float %374, %374
  %1529 = fmul fast float %378, %378
  %1530 = fadd fast float %1527, -1.000000e+00
  %1531 = fadd fast float %1528, -1.000000e+00
  %1532 = fadd fast float %1529, -1.000000e+00
  %1533 = fmul fast float %1378, %1530
  %1534 = fmul fast float %1378, %1531
  %1535 = fmul fast float %1378, %1532
  %1536 = fadd fast float %1533, 1.000000e+00
  %1537 = fadd fast float %1534, 1.000000e+00
  %1538 = fadd fast float %1535, 1.000000e+00
  %1539 = fmul fast float %1536, %1353
  %1540 = fmul fast float %1537, %1354
  %1541 = fmul fast float %1538, %1355
  br label %1542

; <label>:1542                                    ; preds = %1526, %1492, %1383, %1339
  %1543 = phi float [ %1488, %1383 ], [ %1364, %1492 ], [ %1364, %1526 ], [ 0x3FA23C0BE0000000, %1339 ]
  %1544 = phi float [ %1480, %1383 ], [ %1523, %1492 ], [ %1539, %1526 ], [ 1.000000e+00, %1339 ]
  %1545 = phi float [ %1481, %1383 ], [ %1524, %1492 ], [ %1540, %1526 ], [ 1.000000e+00, %1339 ]
  %1546 = phi float [ %1482, %1383 ], [ %1525, %1492 ], [ %1541, %1526 ], [ 1.000000e+00, %1339 ]
  %1547 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1548 = extractvalue %dx.types.CBufRet.i32 %1547, 1
  %1549 = and i32 %1548, 1
  %1550 = icmp ne i32 %1549, 0
  %1551 = add i32 %57, 356
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = and i32 %1553, 32
  %1555 = icmp ne i32 %1554, 0
  %1556 = and i1 %1550, %1555
  %1557 = select i1 %1556, float 1.000000e+00, float %1544
  %1558 = select i1 %1556, float 0x3FD3333340000000, float %1545
  %1559 = select i1 %1556, float 0x3FD3333340000000, float %1546
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = and i32 %1561, 32
  %1563 = icmp eq i32 %1562, 0
  br i1 %1563, label %1636, label %1564

; <label>:1564                                    ; preds = %1542
  %1565 = add i32 %57, 108
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = add i32 %57, 444
  %1569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1568, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.i32 %1569, 0
  %1571 = add i32 %1570, 0
  %1572 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1571, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1573 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1572, %dx.types.Handle %109, float %1264, float %1265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1574 = extractvalue %dx.types.ResRet.f32 %1573, 0
  %1575 = extractvalue %dx.types.ResRet.f32 %1573, 1
  %1576 = extractvalue %dx.types.ResRet.f32 %1573, 2
  %1577 = extractvalue %dx.types.ResRet.f32 %1573, 3
  %1578 = and i32 %1567, 255
  %1579 = uitofp i32 %1578 to float
  %1580 = lshr i32 %1567, 8
  %1581 = and i32 %1580, 255
  %1582 = uitofp i32 %1581 to float
  %1583 = lshr i32 %1567, 16
  %1584 = and i32 %1583, 255
  %1585 = uitofp i32 %1584 to float
  %1586 = fmul fast float %1585, 0x3F70101000000000
  %1587 = fmul fast float %1574, %1579
  %1588 = fadd fast float %1587, %1582
  %1589 = fmul fast float %1588, 0x3F70101000000000
  %1590 = fadd fast float %1575, -5.000000e-01
  %1591 = fadd fast float %1577, -5.000000e-01
  %1592 = fmul fast float %1590, %1586
  %1593 = fmul fast float %1591, %1586
  %1594 = fadd fast float %1592, 5.000000e-01
  %1595 = fadd fast float %1593, 5.000000e-01
  %1596 = fmul fast float %1594, 2.000000e+00
  %1597 = fadd fast float %1596, -1.000000e+00
  %1598 = fmul fast float %1595, 2.000000e+00
  %1599 = fadd fast float %1598, -1.000000e+00
  %1600 = fadd fast float %1597, %1599
  %1601 = fmul fast float %1600, 5.000000e-01
  %1602 = fsub fast float %1597, %1599
  %1603 = fmul fast float %1602, 5.000000e-01
  %1604 = call float @dx.op.unary.f32(i32 6, float %1601)  ; FAbs(value)
  %1605 = fsub fast float 1.000000e+00, %1604
  %1606 = call float @dx.op.unary.f32(i32 6, float %1603)  ; FAbs(value)
  %1607 = fsub fast float %1605, %1606
  %1608 = call float @dx.op.dot3.f32(i32 55, float %1601, float %1603, float %1607, float %1601, float %1603, float %1607)  ; Dot3(ax,ay,az,bx,by,bz)
  %1609 = call float @dx.op.unary.f32(i32 25, float %1608)  ; Rsqrt(value)
  %1610 = fmul fast float %1601, %1609
  %1611 = fmul fast float %1603, %1609
  %1612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1613 = extractvalue %dx.types.ResRet.i32 %1612, 0
  %1614 = and i32 %1613, 67108864
  %1615 = icmp eq i32 %1614, 0
  br i1 %1615, label %1632, label %1616

; <label>:1616                                    ; preds = %1564
  %1617 = add i32 %57, 296
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1617, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = and i32 %1619, 65535
  %1621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1620)  ; LegacyF16ToF32(value)
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = and i32 %1623, 65535
  %1625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1624)  ; LegacyF16ToF32(value)
  %1626 = lshr i32 %1619, 16
  %1627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1626)  ; LegacyF16ToF32(value)
  %1628 = fsub fast float %1589, %1627
  %1629 = fmul fast float %1628, %1621
  %1630 = fadd fast float %1629, %1625
  %1631 = call float @dx.op.unary.f32(i32 7, float %1630)  ; Saturate(value)
  br label %1632

; <label>:1632                                    ; preds = %1616, %1564
  %1633 = phi float [ %1631, %1616 ], [ %1589, %1564 ]
  %1634 = call float @dx.op.dot2.f32(i32 54, float %1610, float %1611, float %1168, float %1169)  ; Dot2(ax,ay,bx,by)
  %1635 = call float @dx.op.dot2.f32(i32 54, float %1610, float %1611, float %1170, float %1171)  ; Dot2(ax,ay,bx,by)
  br label %1636

; <label>:1636                                    ; preds = %1632, %1542
  %1637 = phi float [ %1633, %1632 ], [ 0x3FD6666660000000, %1542 ]
  %1638 = phi float [ %1634, %1632 ], [ 0.000000e+00, %1542 ]
  %1639 = phi float [ %1635, %1632 ], [ 0.000000e+00, %1542 ]
  %1640 = phi float [ %1576, %1632 ], [ 1.000000e+00, %1542 ]
  %1641 = add i32 %57, 176
  %1642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1641, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = lshr i32 %1643, 22
  %1645 = shl nuw nsw i32 %1644, 5
  %1646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1645)  ; LegacyF16ToF32(value)
  %1647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1648 = extractvalue %dx.types.ResRet.i32 %1647, 0
  %1649 = and i32 %1648, 64
  %1650 = icmp eq i32 %1649, 0
  br i1 %1650, label %1684, label %1651

; <label>:1651                                    ; preds = %1636
  %1652 = add i32 %57, 460
  %1653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1654 = extractvalue %dx.types.ResRet.i32 %1653, 0
  %1655 = add i32 %1654, 0
  %1656 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1655, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1658 = extractvalue %dx.types.ResRet.i32 %1657, 0
  %1659 = and i32 %1658, 131072
  %1660 = icmp eq i32 %1659, 0
  %1661 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1656, %dx.types.Handle %109, float %1264, float %1265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1662 = extractvalue %dx.types.ResRet.f32 %1661, 0
  %1663 = extractvalue %dx.types.ResRet.f32 %1661, 1
  %1664 = extractvalue %dx.types.ResRet.f32 %1661, 2
  %1665 = fmul fast float %1662, %358
  %1666 = fmul fast float %1663, %361
  %1667 = fmul fast float %1664, %364
  br i1 %1660, label %1674, label %1668

; <label>:1668                                    ; preds = %1651
  %1669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1670 = extractvalue %dx.types.CBufRet.f32 %1669, 0
  %1671 = fmul fast float %1670, %1665
  %1672 = fmul fast float %1670, %1666
  %1673 = fmul fast float %1670, %1667
  br label %1674

; <label>:1674                                    ; preds = %1668, %1651
  %1675 = phi float [ %1671, %1668 ], [ %1665, %1651 ]
  %1676 = phi float [ %1672, %1668 ], [ %1666, %1651 ]
  %1677 = phi float [ %1673, %1668 ], [ %1667, %1651 ]
  %1678 = fmul fast float %1675, %1646
  %1679 = select i1 %296, float %1678, float %1675
  %1680 = call float @dx.op.dot3.f32(i32 55, float %1679, float %1676, float %1677, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1681 = select i1 %296, float 0.000000e+00, float %1675
  %1682 = select i1 %296, float %1680, float %1676
  %1683 = select i1 %296, float 0.000000e+00, float %1677
  br label %1684

; <label>:1684                                    ; preds = %1674, %1636
  %1685 = phi float [ %1681, %1674 ], [ 0.000000e+00, %1636 ]
  %1686 = phi float [ %1682, %1674 ], [ 0.000000e+00, %1636 ]
  %1687 = phi float [ %1683, %1674 ], [ 0.000000e+00, %1636 ]
  %1688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1689 = extractvalue %dx.types.ResRet.i32 %1688, 0
  %1690 = and i32 %1689, 10240
  %1691 = icmp eq i32 %1690, 0
  br i1 %1691, label %1736, label %1692

; <label>:1692                                    ; preds = %1684
  %1693 = add i32 %57, 528
  %1694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1695 = extractvalue %dx.types.ResRet.i32 %1694, 0
  %1696 = add i32 %1695, 0
  %1697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1697, %dx.types.Handle %110, float %1264, float %1265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1699 = extractvalue %dx.types.ResRet.f32 %1698, 1
  %1700 = extractvalue %dx.types.ResRet.f32 %1698, 3
  %1701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1702 = extractvalue %dx.types.ResRet.i32 %1701, 0
  %1703 = and i32 %1702, 1048576
  %1704 = icmp ne i32 %1703, 0
  %1705 = and i32 %1702, 8192
  %1706 = icmp eq i32 %1705, 0
  br i1 %1706, label %1722, label %1707

; <label>:1707                                    ; preds = %1692
  %1708 = extractvalue %dx.types.ResRet.f32 %1698, 2
  %1709 = select i1 %1704, float %1708, float %1699
  %1710 = extractvalue %dx.types.ResRet.f32 %1698, 0
  %1711 = select i1 %1704, float %1710, float %1699
  %1712 = add i32 %57, 112
  %1713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1714 = extractvalue %dx.types.ResRet.i32 %1713, 0
  %1715 = lshr i32 %1714, 16
  %1716 = and i32 %1715, 255
  %1717 = uitofp i32 %1716 to float
  %1718 = fmul fast float %1717, 0x3F80101020000000
  %1719 = fmul fast float %1718, %1711
  %1720 = fmul fast float %1718, %1699
  %1721 = fmul fast float %1718, %1709
  br label %1722

; <label>:1722                                    ; preds = %1707, %1692
  %1723 = phi float [ %1719, %1707 ], [ 0.000000e+00, %1692 ]
  %1724 = phi float [ %1720, %1707 ], [ 0.000000e+00, %1692 ]
  %1725 = phi float [ %1721, %1707 ], [ 0.000000e+00, %1692 ]
  %1726 = and i32 %1702, 2048
  %1727 = icmp eq i32 %1726, 0
  br i1 %1727, label %1736, label %1728

; <label>:1728                                    ; preds = %1722
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1641, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = shl i32 %1730, 4
  %1732 = and i32 %1731, 32752
  %1733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1732)  ; LegacyF16ToF32(value)
  %1734 = fmul fast float %1733, %1700
  %1735 = call float @dx.op.binary.f32(i32 35, float %1734, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1736

; <label>:1736                                    ; preds = %1728, %1722, %1684
  %1737 = phi float [ %1723, %1728 ], [ %1723, %1722 ], [ 0.000000e+00, %1684 ]
  %1738 = phi float [ %1724, %1728 ], [ %1724, %1722 ], [ 0.000000e+00, %1684 ]
  %1739 = phi float [ %1725, %1728 ], [ %1725, %1722 ], [ 0.000000e+00, %1684 ]
  %1740 = phi float [ %1735, %1728 ], [ 0x3F70101020000000, %1722 ], [ 0x3F70101020000000, %1684 ]
  %1741 = add i32 %57, 112
  %1742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.i32 %1742, 0
  %1744 = and i32 %1743, 255
  %1745 = uitofp i32 %1744 to float
  %1746 = lshr i32 %1743, 8
  %1747 = and i32 %1746, 255
  %1748 = uitofp i32 %1747 to float
  %1749 = call float @dx.op.dot3.f32(i32 55, float %1557, float %1558, float %1559, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1750 = fmul fast float %1748, %1749
  %1751 = fadd fast float %1750, %1745
  %1752 = fmul fast float %1751, 0x3F70101020000000
  %1753 = call float @dx.op.unary.f32(i32 7, float %1752)  ; Saturate(value)
  br i1 %1156, label %1754, label %1762

; <label>:1754                                    ; preds = %1736
  %1755 = fsub fast float 1.000000e+00, %1337
  %1756 = fmul fast float %1755, %1140
  %1757 = fmul fast float %1755, %1141
  %1758 = fmul fast float %1755, %1142
  %1759 = fmul fast float %1755, %1146
  %1760 = fmul fast float %1755, %1147
  %1761 = fmul fast float %1755, %1148
  br label %1762

; <label>:1762                                    ; preds = %1754, %1736
  %1763 = phi float [ %1756, %1754 ], [ %1140, %1736 ]
  %1764 = phi float [ %1757, %1754 ], [ %1141, %1736 ]
  %1765 = phi float [ %1758, %1754 ], [ %1142, %1736 ]
  %1766 = phi float [ %1759, %1754 ], [ %1146, %1736 ]
  %1767 = phi float [ %1760, %1754 ], [ %1147, %1736 ]
  %1768 = phi float [ %1761, %1754 ], [ %1148, %1736 ]
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = and i32 %1770, 3
  %1772 = icmp eq i32 %1771, 3
  br i1 %1772, label %1851, label %1773

; <label>:1773                                    ; preds = %1762
  %1774 = and i32 %1770, 16
  %1775 = icmp ne i32 %1774, 0
  %1776 = select i1 %1775, float %1337, float 0.000000e+00
  %1777 = icmp eq i32 %1771, 0
  br i1 %1777, label %1778, label %1806

; <label>:1778                                    ; preds = %1773
  %1779 = and i32 %1770, 64
  %1780 = icmp ne i32 %1779, 0
  %1781 = select i1 %1780, float %1337, float 0.000000e+00
  %1782 = fsub fast float %1557, %1763
  %1783 = fsub fast float %1558, %1764
  %1784 = fsub fast float %1559, %1765
  %1785 = fmul fast float %1776, %1782
  %1786 = fmul fast float %1776, %1783
  %1787 = fmul fast float %1776, %1784
  %1788 = fadd fast float %1785, %1763
  %1789 = fadd fast float %1786, %1764
  %1790 = fadd fast float %1787, %1765
  %1791 = fsub fast float %1543, %1149
  %1792 = fmul fast float %1776, %1791
  %1793 = fadd fast float %1792, %1149
  %1794 = fsub fast float %1685, %1766
  %1795 = fsub fast float %1686, %1767
  %1796 = fsub fast float %1687, %1768
  %1797 = fmul fast float %1781, %1794
  %1798 = fmul fast float %1781, %1795
  %1799 = fmul fast float %1781, %1796
  %1800 = fadd fast float %1797, %1766
  %1801 = fadd fast float %1798, %1767
  %1802 = fadd fast float %1799, %1768
  %1803 = fsub fast float %1753, %1154
  %1804 = fmul fast float %1776, %1803
  %1805 = fadd fast float %1804, %1154
  br label %1851

; <label>:1806                                    ; preds = %1773
  %1807 = icmp eq i32 %1771, 1
  br i1 %1807, label %1808, label %1821

; <label>:1808                                    ; preds = %1806
  %1809 = fadd fast float %1557, -1.000000e+00
  %1810 = fadd fast float %1558, -1.000000e+00
  %1811 = fadd fast float %1559, -1.000000e+00
  %1812 = fmul fast float %1776, %1809
  %1813 = fmul fast float %1776, %1810
  %1814 = fmul fast float %1776, %1811
  %1815 = fadd fast float %1812, 1.000000e+00
  %1816 = fadd fast float %1813, 1.000000e+00
  %1817 = fadd fast float %1814, 1.000000e+00
  %1818 = fmul fast float %1815, %1763
  %1819 = fmul fast float %1816, %1764
  %1820 = fmul fast float %1817, %1765
  br label %1851

; <label>:1821                                    ; preds = %1806
  %1822 = icmp eq i32 %1771, 2
  br i1 %1822, label %1823, label %1851

; <label>:1823                                    ; preds = %1821
  %1824 = call float @dx.op.unary.f32(i32 24, float %1557)  ; Sqrt(value)
  %1825 = call float @dx.op.unary.f32(i32 24, float %1558)  ; Sqrt(value)
  %1826 = call float @dx.op.unary.f32(i32 24, float %1559)  ; Sqrt(value)
  %1827 = fadd fast float %1824, -5.000000e-01
  %1828 = fadd fast float %1825, -5.000000e-01
  %1829 = fadd fast float %1826, -5.000000e-01
  %1830 = fmul fast float %1827, %1776
  %1831 = fmul fast float %1828, %1776
  %1832 = fmul fast float %1829, %1776
  %1833 = fadd fast float %1830, 5.000000e-01
  %1834 = fadd fast float %1831, 5.000000e-01
  %1835 = fadd fast float %1832, 5.000000e-01
  %1836 = fmul fast float %1833, 2.000000e+00
  %1837 = fsub fast float 1.000000e+00, %1836
  %1838 = fmul fast float %1837, %1763
  %1839 = fadd fast float %1838, %1836
  %1840 = fmul fast float %1839, %1763
  %1841 = fmul fast float %1834, 2.000000e+00
  %1842 = fsub fast float 1.000000e+00, %1841
  %1843 = fmul fast float %1842, %1764
  %1844 = fadd fast float %1843, %1841
  %1845 = fmul fast float %1844, %1764
  %1846 = fmul fast float %1835, 2.000000e+00
  %1847 = fsub fast float 1.000000e+00, %1846
  %1848 = fmul fast float %1847, %1765
  %1849 = fadd fast float %1848, %1846
  %1850 = fmul fast float %1849, %1765
  br label %1851

; <label>:1851                                    ; preds = %1823, %1821, %1808, %1778, %1762
  %1852 = phi float [ %1763, %1762 ], [ %1840, %1823 ], [ %1763, %1821 ], [ %1818, %1808 ], [ %1788, %1778 ]
  %1853 = phi float [ %1764, %1762 ], [ %1845, %1823 ], [ %1764, %1821 ], [ %1819, %1808 ], [ %1789, %1778 ]
  %1854 = phi float [ %1765, %1762 ], [ %1850, %1823 ], [ %1765, %1821 ], [ %1820, %1808 ], [ %1790, %1778 ]
  %1855 = phi float [ %1766, %1762 ], [ %1766, %1823 ], [ %1766, %1821 ], [ %1766, %1808 ], [ %1800, %1778 ]
  %1856 = phi float [ %1767, %1762 ], [ %1767, %1823 ], [ %1767, %1821 ], [ %1767, %1808 ], [ %1801, %1778 ]
  %1857 = phi float [ %1768, %1762 ], [ %1768, %1823 ], [ %1768, %1821 ], [ %1768, %1808 ], [ %1802, %1778 ]
  %1858 = phi float [ %1149, %1762 ], [ %1149, %1823 ], [ %1149, %1821 ], [ %1149, %1808 ], [ %1793, %1778 ]
  %1859 = phi float [ %1154, %1762 ], [ %1154, %1823 ], [ %1154, %1821 ], [ %1154, %1808 ], [ %1805, %1778 ]
  %1860 = and i32 %1770, 12
  %1861 = icmp eq i32 %1860, 12
  br i1 %1861, label %1968, label %1862

; <label>:1862                                    ; preds = %1851
  %1863 = and i32 %1770, 2097184
  %1864 = icmp eq i32 %1863, 2097184
  %1865 = select i1 %1864, float %1337, float 0.000000e+00
  %1866 = and i32 %1770, 4194336
  %1867 = icmp eq i32 %1866, 4194336
  %1868 = select i1 %1867, float %1337, float 0.000000e+00
  %1869 = and i32 %1770, 8388640
  %1870 = icmp eq i32 %1869, 8388640
  %1871 = select i1 %1870, float %1337, float 0.000000e+00
  %1872 = and i32 %1770, 2048
  %1873 = icmp ne i32 %1872, 0
  %1874 = select i1 %1873, float %1337, float 0.000000e+00
  %1875 = and i32 %1770, 8192
  %1876 = icmp ne i32 %1875, 0
  %1877 = select i1 %1876, float %1337, float 0.000000e+00
  %1878 = icmp eq i32 %1860, 0
  br i1 %1878, label %1879, label %1904

; <label>:1879                                    ; preds = %1862
  %1880 = fsub fast float %1638, %1138
  %1881 = fsub fast float %1639, %1139
  %1882 = fmul fast float %1865, %1880
  %1883 = fmul fast float %1865, %1881
  %1884 = fadd fast float %1882, %1138
  %1885 = fadd fast float %1883, %1139
  %1886 = fsub fast float %1640, %1152
  %1887 = fmul fast float %1868, %1886
  %1888 = fadd fast float %1887, %1152
  %1889 = fsub fast float %1637, %1151
  %1890 = fmul fast float %1871, %1889
  %1891 = fadd fast float %1890, %1151
  %1892 = fsub fast float %1740, %1153
  %1893 = fmul fast float %1874, %1892
  %1894 = fadd fast float %1893, %1153
  %1895 = fsub fast float %1737, %1143
  %1896 = fsub fast float %1738, %1144
  %1897 = fsub fast float %1739, %1145
  %1898 = fmul fast float %1877, %1895
  %1899 = fmul fast float %1877, %1896
  %1900 = fmul fast float %1877, %1897
  %1901 = fadd fast float %1898, %1143
  %1902 = fadd fast float %1899, %1144
  %1903 = fadd fast float %1900, %1145
  br label %1968

; <label>:1904                                    ; preds = %1862
  %1905 = icmp eq i32 %1860, 4
  br i1 %1905, label %1906, label %1946

; <label>:1906                                    ; preds = %1904
  %1907 = fmul fast float %1865, %1638
  %1908 = fmul fast float %1865, %1639
  %1909 = fadd fast float %1907, %1138
  %1910 = fadd fast float %1908, %1139
  %1911 = call float @dx.op.binary.f32(i32 36, float %1152, float %1640)  ; FMin(a,b)
  %1912 = fsub fast float %1911, %1152
  %1913 = fmul fast float %1912, %1868
  %1914 = fadd fast float %1913, %1152
  %1915 = fadd fast float %1637, %1151
  %1916 = fmul fast float %1915, 0x3FF337FAE0000000
  %1917 = fmul fast float %1151, %1151
  %1918 = fmul fast float %1637, %1637
  %1919 = fadd fast float %1918, %1917
  %1920 = fmul fast float %1919, 0x3FE5152B00000000
  %1921 = fmul fast float %1151, 0xBFCC1F85E0000000
  %1922 = fmul fast float %1921, %1637
  %1923 = fadd fast float %1922, 0xBFE1363700000000
  %1924 = fadd fast float %1923, %1916
  %1925 = fsub fast float %1924, %1920
  %1926 = fmul fast float %1915, 0x3FBA6F0D00000000
  %1927 = fmul fast float %1919, 0x3FD0432880000000
  %1928 = fmul fast float %1151, 0xBFEF110800000000
  %1929 = fmul fast float %1928, %1637
  %1930 = fadd fast float %1929, 1.000000e+00
  %1931 = fsub fast float %1930, %1926
  %1932 = fadd fast float %1931, %1927
  %1933 = fdiv fast float %1925, %1932
  %1934 = call float @dx.op.unary.f32(i32 7, float %1933)  ; Saturate(value)
  %1935 = fsub fast float %1934, %1151
  %1936 = fmul fast float %1935, %1871
  %1937 = fadd fast float %1936, %1151
  %1938 = fmul fast float %1874, %1740
  %1939 = fadd fast float %1938, %1153
  %1940 = fmul fast float %1877, %1737
  %1941 = fmul fast float %1877, %1738
  %1942 = fmul fast float %1877, %1739
  %1943 = fadd fast float %1940, %1143
  %1944 = fadd fast float %1941, %1144
  %1945 = fadd fast float %1942, %1145
  br label %1968

; <label>:1946                                    ; preds = %1904
  %1947 = icmp eq i32 %1860, 8
  br i1 %1947, label %1948, label %1968

; <label>:1948                                    ; preds = %1946
  %1949 = fmul fast float %1865, %1638
  %1950 = fmul fast float %1865, %1639
  %1951 = fadd fast float %1949, %1138
  %1952 = fadd fast float %1950, %1139
  %1953 = call float @dx.op.binary.f32(i32 36, float %1152, float %1640)  ; FMin(a,b)
  %1954 = fsub fast float %1953, %1152
  %1955 = fmul fast float %1954, %1868
  %1956 = fadd fast float %1955, %1152
  %1957 = fsub fast float %1637, %1151
  %1958 = fmul fast float %1871, %1957
  %1959 = fadd fast float %1958, %1151
  %1960 = fmul fast float %1874, %1740
  %1961 = fadd fast float %1960, %1153
  %1962 = fmul fast float %1877, %1737
  %1963 = fmul fast float %1877, %1738
  %1964 = fmul fast float %1877, %1739
  %1965 = fadd fast float %1962, %1143
  %1966 = fadd fast float %1963, %1144
  %1967 = fadd fast float %1964, %1145
  br label %1968

; <label>:1968                                    ; preds = %1948, %1946, %1906, %1879, %1851, %1336, %1155, %1137
  %1969 = phi float [ %1138, %1851 ], [ %1138, %1336 ], [ %1138, %1137 ], [ %1951, %1948 ], [ %1138, %1946 ], [ %1909, %1906 ], [ %1884, %1879 ], [ %1138, %1155 ]
  %1970 = phi float [ %1139, %1851 ], [ %1139, %1336 ], [ %1139, %1137 ], [ %1952, %1948 ], [ %1139, %1946 ], [ %1910, %1906 ], [ %1885, %1879 ], [ %1139, %1155 ]
  %1971 = phi float [ %1852, %1851 ], [ %1140, %1336 ], [ %1140, %1137 ], [ %1852, %1948 ], [ %1852, %1946 ], [ %1852, %1906 ], [ %1852, %1879 ], [ %1140, %1155 ]
  %1972 = phi float [ %1853, %1851 ], [ %1141, %1336 ], [ %1141, %1137 ], [ %1853, %1948 ], [ %1853, %1946 ], [ %1853, %1906 ], [ %1853, %1879 ], [ %1141, %1155 ]
  %1973 = phi float [ %1854, %1851 ], [ %1142, %1336 ], [ %1142, %1137 ], [ %1854, %1948 ], [ %1854, %1946 ], [ %1854, %1906 ], [ %1854, %1879 ], [ %1142, %1155 ]
  %1974 = phi float [ %1143, %1851 ], [ %1143, %1336 ], [ %1143, %1137 ], [ %1965, %1948 ], [ %1143, %1946 ], [ %1943, %1906 ], [ %1901, %1879 ], [ %1143, %1155 ]
  %1975 = phi float [ %1144, %1851 ], [ %1144, %1336 ], [ %1144, %1137 ], [ %1966, %1948 ], [ %1144, %1946 ], [ %1944, %1906 ], [ %1902, %1879 ], [ %1144, %1155 ]
  %1976 = phi float [ %1145, %1851 ], [ %1145, %1336 ], [ %1145, %1137 ], [ %1967, %1948 ], [ %1145, %1946 ], [ %1945, %1906 ], [ %1903, %1879 ], [ %1145, %1155 ]
  %1977 = phi float [ %1855, %1851 ], [ %1146, %1336 ], [ %1146, %1137 ], [ %1855, %1948 ], [ %1855, %1946 ], [ %1855, %1906 ], [ %1855, %1879 ], [ %1146, %1155 ]
  %1978 = phi float [ %1856, %1851 ], [ %1147, %1336 ], [ %1147, %1137 ], [ %1856, %1948 ], [ %1856, %1946 ], [ %1856, %1906 ], [ %1856, %1879 ], [ %1147, %1155 ]
  %1979 = phi float [ %1857, %1851 ], [ %1148, %1336 ], [ %1148, %1137 ], [ %1857, %1948 ], [ %1857, %1946 ], [ %1857, %1906 ], [ %1857, %1879 ], [ %1148, %1155 ]
  %1980 = phi float [ %1858, %1851 ], [ %1149, %1336 ], [ %1149, %1137 ], [ %1858, %1948 ], [ %1858, %1946 ], [ %1858, %1906 ], [ %1858, %1879 ], [ %1149, %1155 ]
  %1981 = phi float [ %1151, %1851 ], [ %1151, %1336 ], [ %1151, %1137 ], [ %1959, %1948 ], [ %1151, %1946 ], [ %1937, %1906 ], [ %1891, %1879 ], [ %1151, %1155 ]
  %1982 = phi float [ %1152, %1851 ], [ %1152, %1336 ], [ %1152, %1137 ], [ %1956, %1948 ], [ %1152, %1946 ], [ %1914, %1906 ], [ %1888, %1879 ], [ %1152, %1155 ]
  %1983 = phi float [ %1153, %1851 ], [ %1153, %1336 ], [ %1153, %1137 ], [ %1961, %1948 ], [ %1153, %1946 ], [ %1939, %1906 ], [ %1894, %1879 ], [ %1153, %1155 ]
  %1984 = phi float [ %1859, %1851 ], [ %1154, %1336 ], [ %1154, %1137 ], [ %1859, %1948 ], [ %1859, %1946 ], [ %1859, %1906 ], [ %1859, %1879 ], [ %1154, %1155 ]
  br i1 %485, label %2798, label %1985

; <label>:1985                                    ; preds = %1968
  %1986 = icmp ult i32 %541, 3
  %1987 = add i32 %57, 56
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = add i32 %57, 60
  %1991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.i32 %1991, 0
  %1993 = or i32 %1992, %1989
  %1994 = icmp eq i32 %1993, 0
  br i1 %1994, label %2798, label %1995

; <label>:1995                                    ; preds = %1985
  %1996 = and i32 %1989, 262144
  %1997 = icmp ne i32 %1996, 0
  %1998 = select i1 %1997, float %63, float 1.000000e+00
  %1999 = select i1 %1997, float %64, float 0.000000e+00
  %2000 = select i1 %1997, float %65, float 0.000000e+00
  %2001 = select i1 %1997, float %66, float 1.000000e+00
  %2002 = select i1 %1997, float %67, float %95
  %2003 = select i1 %1997, float %68, float %96
  %2004 = add i32 %57, 316
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = lshr i32 %2006, 16
  %2008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2007)  ; LegacyF16ToF32(value)
  %2009 = fmul fast float %2008, 0x3F50624DE0000000
  %2010 = add i32 %57, 120
  %2011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2010, i32 undef)  ; BufferLoad(srv,index,wot)
  %2012 = extractvalue %dx.types.ResRet.i32 %2011, 0
  %2013 = lshr i32 %2012, 16
  %2014 = and i32 %2013, 255
  %2015 = lshr i32 %2012, 24
  %2016 = add i32 %57, 324
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = and i32 %2018, 65535
  %2020 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2019)  ; LegacyF16ToF32(value)
  %2021 = lshr i32 %2018, 16
  %2022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2021)  ; LegacyF16ToF32(value)
  %2023 = add i32 %57, 64
  %2024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2023, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.i32 %2024, 0
  %2026 = lshr i32 %2025, 22
  %2027 = shl nuw nsw i32 %2026, 5
  %2028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2027)  ; LegacyF16ToF32(value)
  %2029 = shl i32 %2025, 4
  %2030 = and i32 %2029, 32752
  %2031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2030)  ; LegacyF16ToF32(value)
  %2032 = lshr i32 %2025, 7
  %2033 = and i32 %2032, 32752
  %2034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2033)  ; LegacyF16ToF32(value)
  %2035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.f32 %2035, 3
  %2037 = fmul fast float %2036, 1.000000e+03
  %2038 = fmul fast float %435, %2037
  %2039 = call float @dx.op.unary.f32(i32 22, float %2038)  ; Frc(value)
  %2040 = fadd fast float %2039, %425
  %2041 = fmul fast float %436, %2037
  %2042 = call float @dx.op.unary.f32(i32 22, float %2041)  ; Frc(value)
  %2043 = fadd fast float %2042, %427
  %2044 = fmul fast float %2009, %2037
  %2045 = call float @dx.op.unary.f32(i32 22, float %2044)  ; Frc(value)
  %2046 = fmul fast float %2045, 0x401921FB60000000
  %2047 = fadd fast float %2046, %2028
  %2048 = call float @dx.op.unary.f32(i32 13, float %2047)  ; Sin(value)
  %2049 = call float @dx.op.unary.f32(i32 12, float %2047)  ; Cos(value)
  %2050 = fsub fast float -0.000000e+00, %2048
  %2051 = fadd fast float %2002, -5.000000e-01
  %2052 = fadd fast float %2003, -5.000000e-01
  %2053 = fmul fast float %2020, %2051
  %2054 = fmul fast float %2022, %2052
  %2055 = fadd fast float %2053, 5.000000e-01
  %2056 = fadd fast float %2054, 5.000000e-01
  %2057 = fmul fast float %2031, %2055
  %2058 = fmul fast float %2034, %2056
  %2059 = fmul fast float %2049, %2057
  %2060 = call float @dx.op.tertiary.f32(i32 46, float %2050, float %2058, float %2059)  ; FMad(a,b,c)
  %2061 = fmul fast float %2048, %2057
  %2062 = call float @dx.op.tertiary.f32(i32 46, float %2049, float %2058, float %2061)  ; FMad(a,b,c)
  %2063 = fadd fast float %2040, %2060
  %2064 = fadd fast float %2043, %2062
  %2065 = icmp ugt i32 %2014, 1
  %2066 = icmp ugt i32 %2012, 33554431
  %2067 = or i1 %2066, %2065
  br i1 %2067, label %2068, label %2093

; <label>:2068                                    ; preds = %1995
  %2069 = add i32 %57, 260
  %2070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2069, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.i32 %2070, 0
  %2072 = lshr i32 %2071, 16
  %2073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2072)  ; LegacyF16ToF32(value)
  %2074 = fmul fast float %2036, %2073
  %2075 = call float @dx.op.unary.f32(i32 22, float %2074)  ; Frc(value)
  %2076 = mul nuw nsw i32 %2014, %2015
  %2077 = uitofp i32 %2076 to float
  %2078 = fmul fast float %2075, %2077
  %2079 = call float @dx.op.unary.f32(i32 27, float %2078)  ; Round_ni(value)
  %2080 = fptoui float %2079 to i32
  %2081 = urem i32 %2080, %2014
  %2082 = udiv i32 %2080, %2015
  %2083 = call float @dx.op.unary.f32(i32 22, float %2063)  ; Frc(value)
  %2084 = call float @dx.op.unary.f32(i32 22, float %2064)  ; Frc(value)
  %2085 = uitofp i32 %2081 to float
  %2086 = uitofp i32 %2082 to float
  %2087 = fadd fast float %2083, %2085
  %2088 = fadd fast float %2084, %2086
  %2089 = uitofp i32 %2014 to float
  %2090 = uitofp i32 %2015 to float
  %2091 = fdiv fast float %2087, %2089
  %2092 = fdiv fast float %2088, %2090
  br label %2093

; <label>:2093                                    ; preds = %2068, %1995
  %2094 = phi float [ %2091, %2068 ], [ %2063, %1995 ]
  %2095 = phi float [ %2092, %2068 ], [ %2064, %1995 ]
  %2096 = and i32 %1989, 256
  %2097 = icmp eq i32 %2096, 0
  br i1 %2097, label %2144, label %2098

; <label>:2098                                    ; preds = %2093
  %2099 = add i32 %57, 496
  %2100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2099, i32 undef)  ; BufferLoad(srv,index,wot)
  %2101 = extractvalue %dx.types.ResRet.i32 %2100, 0
  %2102 = add i32 %2101, 0
  %2103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2102, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2104 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2103, %dx.types.Handle %110, float %2094, float %2095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2105 = extractvalue %dx.types.ResRet.f32 %2104, 0
  %2106 = add i32 %57, 132
  %2107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2106, i32 undef)  ; BufferLoad(srv,index,wot)
  %2108 = extractvalue %dx.types.ResRet.i32 %2107, 0
  %2109 = shl i32 %2108, 4
  %2110 = and i32 %2109, 32752
  %2111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2110)  ; LegacyF16ToF32(value)
  %2112 = lshr i32 %2108, 7
  %2113 = and i32 %2112, 32752
  %2114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2113)  ; LegacyF16ToF32(value)
  %2115 = fsub fast float 1.000000e+00, %537
  %2116 = call float @dx.op.binary.f32(i32 35, float %2115, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2117 = bitcast float %537 to i32
  %2118 = sitofp i32 %2117 to float
  %2119 = fadd fast float %2118, 0xC1CFBF8940000000
  %2120 = fmul fast float %2114, %2119
  %2121 = fadd fast float %2120, 0x41CFBF8940000000
  %2122 = fptosi float %2121 to i32
  %2123 = bitcast i32 %2122 to float
  %2124 = bitcast float %2116 to i32
  %2125 = sitofp i32 %2124 to float
  %2126 = fadd fast float %2125, 0xC1CFBF8940000000
  %2127 = fmul fast float %2126, %2114
  %2128 = fadd fast float %2127, 0x41CFBF8940000000
  %2129 = fptosi float %2128 to i32
  %2130 = bitcast i32 %2129 to float
  %2131 = fmul fast float %2123, %2111
  %2132 = fmul fast float %2130, %2111
  %2133 = fsub fast float %2116, %2131
  %2134 = fadd fast float %2132, %2116
  %2135 = call float @dx.op.unary.f32(i32 7, float %2133)  ; Saturate(value)
  %2136 = call float @dx.op.unary.f32(i32 7, float %2134)  ; Saturate(value)
  %2137 = fsub fast float %2105, %2135
  %2138 = fsub fast float %2136, %2135
  %2139 = bitcast float %2138 to i32
  %2140 = sub nsw i32 2129859010, %2139
  %2141 = bitcast i32 %2140 to float
  %2142 = fmul fast float %2141, %2137
  %2143 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  br label %2144

; <label>:2144                                    ; preds = %2098, %2093
  %2145 = phi float [ %2143, %2098 ], [ %537, %2093 ]
  %2146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2147 = extractvalue %dx.types.ResRet.i32 %2146, 0
  %2148 = and i32 %2147, 128
  %2149 = icmp eq i32 %2148, 0
  br i1 %2149, label %2166, label %2150

; <label>:2150                                    ; preds = %2144
  %2151 = add i32 %57, 480
  %2152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2151, i32 undef)  ; BufferLoad(srv,index,wot)
  %2153 = extractvalue %dx.types.ResRet.i32 %2152, 0
  %2154 = add i32 %2153, 0
  %2155 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2154, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2156 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2155, %dx.types.Handle %110, float %2094, float %2095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2157 = extractvalue %dx.types.ResRet.f32 %2156, 0
  %2158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.i32 %2158, 0
  %2160 = and i32 %2159, 524288
  %2161 = icmp ne i32 %2160, 0
  %2162 = fcmp fast ogt float %2157, 0x3FE0101020000000
  %2163 = select i1 %2162, float 1.000000e+00, float 0.000000e+00
  %2164 = select i1 %2161, float %2163, float %2157
  %2165 = fmul fast float %2164, %2145
  br label %2166

; <label>:2166                                    ; preds = %2150, %2144
  %2167 = phi float [ %2165, %2150 ], [ %2145, %2144 ]
  %2168 = fcmp fast ult float %2167, 0x3F70101020000000
  br i1 %2168, label %2798, label %2169

; <label>:2169                                    ; preds = %2166
  %2170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.i32 %2170, 0
  %2172 = and i32 %2171, 16
  %2173 = icmp eq i32 %2172, 0
  br i1 %2173, label %2372, label %2174

; <label>:2174                                    ; preds = %2169
  %2175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2010, i32 undef)  ; BufferLoad(srv,index,wot)
  %2176 = extractvalue %dx.types.ResRet.i32 %2175, 0
  %2177 = add i32 %57, 432
  %2178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2177, i32 undef)  ; BufferLoad(srv,index,wot)
  %2179 = extractvalue %dx.types.ResRet.i32 %2178, 0
  %2180 = add i32 %2179, 0
  %2181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2180, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2182 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2181, %dx.types.Handle %109, float %2094, float %2095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2183 = extractvalue %dx.types.ResRet.f32 %2182, 0
  %2184 = extractvalue %dx.types.ResRet.f32 %2182, 1
  %2185 = extractvalue %dx.types.ResRet.f32 %2182, 2
  %2186 = extractvalue %dx.types.ResRet.f32 %2182, 3
  %2187 = and i32 %2176, 255
  %2188 = uitofp i32 %2187 to float
  %2189 = lshr i32 %2176, 8
  %2190 = and i32 %2189, 255
  %2191 = uitofp i32 %2190 to float
  %2192 = fmul fast float %2186, %2188
  %2193 = fadd fast float %2192, %2191
  %2194 = fmul fast float %2193, 0x3F70101000000000
  %2195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2196 = extractvalue %dx.types.ResRet.i32 %2195, 0
  %2197 = and i32 %2196, 512
  %2198 = icmp eq i32 %2197, 0
  br i1 %2198, label %2207, label %2199

; <label>:2199                                    ; preds = %2174
  %2200 = add i32 %57, 516
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = add i32 %2202, 0
  %2204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2203, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2205 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2204, %dx.types.Handle %110, float %2094, float %2095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2206 = extractvalue %dx.types.ResRet.f32 %2205, 0
  br label %2207

; <label>:2207                                    ; preds = %2199, %2174
  %2208 = phi float [ %2206, %2199 ], [ 1.000000e+00, %2174 ]
  %2209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2210 = extractvalue %dx.types.ResRet.i32 %2209, 0
  %2211 = and i32 %2210, 33554432
  %2212 = icmp eq i32 %2211, 0
  br i1 %2212, label %2319, label %2213

; <label>:2213                                    ; preds = %2207
  %2214 = add i32 %57, 256
  %2215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2214, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.i32 %2215, 0
  %2217 = and i32 %2216, 65535
  %2218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2217)  ; LegacyF16ToF32(value)
  %2219 = lshr i32 %2216, 16
  %2220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2219)  ; LegacyF16ToF32(value)
  %2221 = add i32 %57, 260
  %2222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2221, i32 undef)  ; BufferLoad(srv,index,wot)
  %2223 = extractvalue %dx.types.ResRet.i32 %2222, 0
  %2224 = and i32 %2223, 65535
  %2225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2224)  ; LegacyF16ToF32(value)
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = lshr i32 %2227, 24
  %2229 = uitofp i32 %2228 to float
  %2230 = fmul fast float %2229, 0x3F70101020000000
  %2231 = and i32 %2227, 255
  %2232 = uitofp i32 %2231 to float
  %2233 = fmul fast float %2232, 0x3F70101020000000
  %2234 = lshr i32 %2227, 8
  %2235 = and i32 %2234, 255
  %2236 = uitofp i32 %2235 to float
  %2237 = fmul fast float %2236, 0x3F70101020000000
  %2238 = lshr i32 %2227, 16
  %2239 = and i32 %2238, 255
  %2240 = uitofp i32 %2239 to float
  %2241 = fmul fast float %2240, 0x3F70101020000000
  %2242 = add i32 %57, 252
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = lshr i32 %2244, 24
  %2246 = uitofp i32 %2245 to float
  %2247 = fmul fast float %2246, 0x3F70101020000000
  %2248 = and i32 %2244, 255
  %2249 = uitofp i32 %2248 to float
  %2250 = fmul fast float %2249, 0x3F70101020000000
  %2251 = lshr i32 %2244, 8
  %2252 = and i32 %2251, 255
  %2253 = uitofp i32 %2252 to float
  %2254 = fmul fast float %2253, 0x3F70101020000000
  %2255 = lshr i32 %2244, 16
  %2256 = and i32 %2255, 255
  %2257 = uitofp i32 %2256 to float
  %2258 = fmul fast float %2257, 0x3F70101020000000
  %2259 = bitcast float %2183 to i32
  %2260 = ashr i32 %2259, 1
  %2261 = sub nsw i32 1597463174, %2260
  %2262 = bitcast i32 %2261 to float
  %2263 = fmul fast float %2183, 5.000000e-01
  %2264 = fmul fast float %2262, %2262
  %2265 = fmul fast float %2264, %2263
  %2266 = fsub fast float 1.500000e+00, %2265
  %2267 = fmul fast float %2262, %2183
  %2268 = fmul fast float %2267, %2266
  %2269 = bitcast float %2184 to i32
  %2270 = ashr i32 %2269, 1
  %2271 = sub nsw i32 1597463174, %2270
  %2272 = bitcast i32 %2271 to float
  %2273 = fmul fast float %2184, 5.000000e-01
  %2274 = fmul fast float %2272, %2272
  %2275 = fmul fast float %2274, %2273
  %2276 = fsub fast float 1.500000e+00, %2275
  %2277 = fmul fast float %2272, %2184
  %2278 = fmul fast float %2277, %2276
  %2279 = bitcast float %2185 to i32
  %2280 = ashr i32 %2279, 1
  %2281 = sub nsw i32 1597463174, %2280
  %2282 = bitcast i32 %2281 to float
  %2283 = fmul fast float %2185, 5.000000e-01
  %2284 = fmul fast float %2282, %2282
  %2285 = fmul fast float %2284, %2283
  %2286 = fsub fast float 1.500000e+00, %2285
  %2287 = fmul fast float %2282, %2185
  %2288 = fmul fast float %2287, %2286
  %2289 = fsub fast float %2268, %2250
  %2290 = fsub fast float %2278, %2254
  %2291 = fsub fast float %2288, %2258
  %2292 = fmul fast float %2289, %2218
  %2293 = fmul fast float %2290, %2220
  %2294 = fmul fast float %2291, %2225
  %2295 = fadd fast float %2292, %2233
  %2296 = fadd fast float %2293, %2237
  %2297 = fadd fast float %2294, %2241
  %2298 = call float @dx.op.unary.f32(i32 7, float %2295)  ; Saturate(value)
  %2299 = call float @dx.op.unary.f32(i32 7, float %2296)  ; Saturate(value)
  %2300 = call float @dx.op.unary.f32(i32 7, float %2297)  ; Saturate(value)
  %2301 = fmul fast float %2298, %2298
  %2302 = fmul fast float %2299, %2299
  %2303 = fmul fast float %2300, %2300
  %2304 = fsub fast float %2301, %2183
  %2305 = fsub fast float %2302, %2184
  %2306 = fsub fast float %2303, %2185
  %2307 = fmul fast float %2304, %2208
  %2308 = fmul fast float %2305, %2208
  %2309 = fmul fast float %2306, %2208
  %2310 = fadd fast float %2307, %2183
  %2311 = fadd fast float %2308, %2184
  %2312 = fadd fast float %2309, %2185
  %2313 = fadd fast float %2230, %2194
  %2314 = fsub fast float %2313, %2247
  %2315 = call float @dx.op.unary.f32(i32 7, float %2314)  ; Saturate(value)
  %2316 = fsub fast float %2315, %2194
  %2317 = fmul fast float %2316, %2208
  %2318 = fadd fast float %2317, %2194
  br label %2372

; <label>:2319                                    ; preds = %2207
  %2320 = and i32 %2210, 134217728
  %2321 = icmp eq i32 %2320, 0
  br i1 %2321, label %2356, label %2322

; <label>:2322                                    ; preds = %2319
  %2323 = call float @dx.op.unary.f32(i32 24, float %412)  ; Sqrt(value)
  %2324 = call float @dx.op.unary.f32(i32 24, float %416)  ; Sqrt(value)
  %2325 = call float @dx.op.unary.f32(i32 24, float %420)  ; Sqrt(value)
  %2326 = fadd fast float %2323, -5.000000e-01
  %2327 = fadd fast float %2324, -5.000000e-01
  %2328 = fadd fast float %2325, -5.000000e-01
  %2329 = fmul fast float %2326, %2208
  %2330 = fmul fast float %2327, %2208
  %2331 = fmul fast float %2328, %2208
  %2332 = fadd fast float %2329, 5.000000e-01
  %2333 = fadd fast float %2330, 5.000000e-01
  %2334 = fadd fast float %2331, 5.000000e-01
  %2335 = call float @dx.op.unary.f32(i32 24, float %2183)  ; Sqrt(value)
  %2336 = call float @dx.op.unary.f32(i32 24, float %2184)  ; Sqrt(value)
  %2337 = call float @dx.op.unary.f32(i32 24, float %2185)  ; Sqrt(value)
  %2338 = fmul fast float %2332, 2.000000e+00
  %2339 = fsub fast float 1.000000e+00, %2338
  %2340 = fmul fast float %2339, %2335
  %2341 = fadd fast float %2340, %2338
  %2342 = fmul fast float %2341, %2335
  %2343 = fmul fast float %2333, 2.000000e+00
  %2344 = fsub fast float 1.000000e+00, %2343
  %2345 = fmul fast float %2344, %2336
  %2346 = fadd fast float %2345, %2343
  %2347 = fmul fast float %2346, %2336
  %2348 = fmul fast float %2334, 2.000000e+00
  %2349 = fsub fast float 1.000000e+00, %2348
  %2350 = fmul fast float %2349, %2337
  %2351 = fadd fast float %2350, %2348
  %2352 = fmul fast float %2351, %2337
  %2353 = fmul fast float %2342, %2342
  %2354 = fmul fast float %2347, %2347
  %2355 = fmul fast float %2352, %2352
  br label %2372

; <label>:2356                                    ; preds = %2319
  %2357 = fmul fast float %412, %412
  %2358 = fmul fast float %416, %416
  %2359 = fmul fast float %420, %420
  %2360 = fadd fast float %2357, -1.000000e+00
  %2361 = fadd fast float %2358, -1.000000e+00
  %2362 = fadd fast float %2359, -1.000000e+00
  %2363 = fmul fast float %2208, %2360
  %2364 = fmul fast float %2208, %2361
  %2365 = fmul fast float %2208, %2362
  %2366 = fadd fast float %2363, 1.000000e+00
  %2367 = fadd fast float %2364, 1.000000e+00
  %2368 = fadd fast float %2365, 1.000000e+00
  %2369 = fmul fast float %2366, %2183
  %2370 = fmul fast float %2367, %2184
  %2371 = fmul fast float %2368, %2185
  br label %2372

; <label>:2372                                    ; preds = %2356, %2322, %2213, %2169
  %2373 = phi float [ %2318, %2213 ], [ %2194, %2322 ], [ %2194, %2356 ], [ 0x3FA23C0BE0000000, %2169 ]
  %2374 = phi float [ %2310, %2213 ], [ %2353, %2322 ], [ %2369, %2356 ], [ 1.000000e+00, %2169 ]
  %2375 = phi float [ %2311, %2213 ], [ %2354, %2322 ], [ %2370, %2356 ], [ 1.000000e+00, %2169 ]
  %2376 = phi float [ %2312, %2213 ], [ %2355, %2322 ], [ %2371, %2356 ], [ 1.000000e+00, %2169 ]
  %2377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2378 = extractvalue %dx.types.CBufRet.i32 %2377, 1
  %2379 = and i32 %2378, 1
  %2380 = icmp ne i32 %2379, 0
  %2381 = add i32 %57, 356
  %2382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2381, i32 undef)  ; BufferLoad(srv,index,wot)
  %2383 = extractvalue %dx.types.ResRet.i32 %2382, 0
  %2384 = and i32 %2383, 32
  %2385 = icmp ne i32 %2384, 0
  %2386 = and i1 %2380, %2385
  %2387 = select i1 %2386, float 1.000000e+00, float %2374
  %2388 = select i1 %2386, float 0x3FD3333340000000, float %2375
  %2389 = select i1 %2386, float 0x3FD3333340000000, float %2376
  %2390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2391 = extractvalue %dx.types.ResRet.i32 %2390, 0
  %2392 = and i32 %2391, 32
  %2393 = icmp eq i32 %2392, 0
  br i1 %2393, label %2466, label %2394

; <label>:2394                                    ; preds = %2372
  %2395 = add i32 %57, 124
  %2396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2395, i32 undef)  ; BufferLoad(srv,index,wot)
  %2397 = extractvalue %dx.types.ResRet.i32 %2396, 0
  %2398 = add i32 %57, 448
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2398, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = add i32 %2400, 0
  %2402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2401, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2403 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2402, %dx.types.Handle %109, float %2094, float %2095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2404 = extractvalue %dx.types.ResRet.f32 %2403, 0
  %2405 = extractvalue %dx.types.ResRet.f32 %2403, 1
  %2406 = extractvalue %dx.types.ResRet.f32 %2403, 2
  %2407 = extractvalue %dx.types.ResRet.f32 %2403, 3
  %2408 = and i32 %2397, 255
  %2409 = uitofp i32 %2408 to float
  %2410 = lshr i32 %2397, 8
  %2411 = and i32 %2410, 255
  %2412 = uitofp i32 %2411 to float
  %2413 = lshr i32 %2397, 16
  %2414 = and i32 %2413, 255
  %2415 = uitofp i32 %2414 to float
  %2416 = fmul fast float %2415, 0x3F70101000000000
  %2417 = fmul fast float %2404, %2409
  %2418 = fadd fast float %2417, %2412
  %2419 = fmul fast float %2418, 0x3F70101000000000
  %2420 = fadd fast float %2405, -5.000000e-01
  %2421 = fadd fast float %2407, -5.000000e-01
  %2422 = fmul fast float %2420, %2416
  %2423 = fmul fast float %2421, %2416
  %2424 = fadd fast float %2422, 5.000000e-01
  %2425 = fadd fast float %2423, 5.000000e-01
  %2426 = fmul fast float %2424, 2.000000e+00
  %2427 = fadd fast float %2426, -1.000000e+00
  %2428 = fmul fast float %2425, 2.000000e+00
  %2429 = fadd fast float %2428, -1.000000e+00
  %2430 = fadd fast float %2427, %2429
  %2431 = fmul fast float %2430, 5.000000e-01
  %2432 = fsub fast float %2427, %2429
  %2433 = fmul fast float %2432, 5.000000e-01
  %2434 = call float @dx.op.unary.f32(i32 6, float %2431)  ; FAbs(value)
  %2435 = fsub fast float 1.000000e+00, %2434
  %2436 = call float @dx.op.unary.f32(i32 6, float %2433)  ; FAbs(value)
  %2437 = fsub fast float %2435, %2436
  %2438 = call float @dx.op.dot3.f32(i32 55, float %2431, float %2433, float %2437, float %2431, float %2433, float %2437)  ; Dot3(ax,ay,az,bx,by,bz)
  %2439 = call float @dx.op.unary.f32(i32 25, float %2438)  ; Rsqrt(value)
  %2440 = fmul fast float %2431, %2439
  %2441 = fmul fast float %2433, %2439
  %2442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2443 = extractvalue %dx.types.ResRet.i32 %2442, 0
  %2444 = and i32 %2443, 67108864
  %2445 = icmp eq i32 %2444, 0
  br i1 %2445, label %2462, label %2446

; <label>:2446                                    ; preds = %2394
  %2447 = add i32 %57, 312
  %2448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2447, i32 undef)  ; BufferLoad(srv,index,wot)
  %2449 = extractvalue %dx.types.ResRet.i32 %2448, 0
  %2450 = and i32 %2449, 65535
  %2451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2450)  ; LegacyF16ToF32(value)
  %2452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2453 = extractvalue %dx.types.ResRet.i32 %2452, 0
  %2454 = and i32 %2453, 65535
  %2455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2454)  ; LegacyF16ToF32(value)
  %2456 = lshr i32 %2449, 16
  %2457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2456)  ; LegacyF16ToF32(value)
  %2458 = fsub fast float %2419, %2457
  %2459 = fmul fast float %2458, %2451
  %2460 = fadd fast float %2459, %2455
  %2461 = call float @dx.op.unary.f32(i32 7, float %2460)  ; Saturate(value)
  br label %2462

; <label>:2462                                    ; preds = %2446, %2394
  %2463 = phi float [ %2461, %2446 ], [ %2419, %2394 ]
  %2464 = call float @dx.op.dot2.f32(i32 54, float %2440, float %2441, float %1998, float %1999)  ; Dot2(ax,ay,bx,by)
  %2465 = call float @dx.op.dot2.f32(i32 54, float %2440, float %2441, float %2000, float %2001)  ; Dot2(ax,ay,bx,by)
  br label %2466

; <label>:2466                                    ; preds = %2462, %2372
  %2467 = phi float [ %2463, %2462 ], [ 0x3FD6666660000000, %2372 ]
  %2468 = phi float [ %2464, %2462 ], [ 0.000000e+00, %2372 ]
  %2469 = phi float [ %2465, %2462 ], [ 0.000000e+00, %2372 ]
  %2470 = phi float [ %2406, %2462 ], [ 1.000000e+00, %2372 ]
  %2471 = add i32 %57, 192
  %2472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2471, i32 undef)  ; BufferLoad(srv,index,wot)
  %2473 = extractvalue %dx.types.ResRet.i32 %2472, 0
  %2474 = lshr i32 %2473, 22
  %2475 = shl nuw nsw i32 %2474, 5
  %2476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2475)  ; LegacyF16ToF32(value)
  %2477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.i32 %2477, 0
  %2479 = and i32 %2478, 64
  %2480 = icmp eq i32 %2479, 0
  br i1 %2480, label %2514, label %2481

; <label>:2481                                    ; preds = %2466
  %2482 = add i32 %57, 464
  %2483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2482, i32 undef)  ; BufferLoad(srv,index,wot)
  %2484 = extractvalue %dx.types.ResRet.i32 %2483, 0
  %2485 = add i32 %2484, 0
  %2486 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2485, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.i32 %2487, 0
  %2489 = and i32 %2488, 131072
  %2490 = icmp eq i32 %2489, 0
  %2491 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2486, %dx.types.Handle %109, float %2094, float %2095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2492 = extractvalue %dx.types.ResRet.f32 %2491, 0
  %2493 = extractvalue %dx.types.ResRet.f32 %2491, 1
  %2494 = extractvalue %dx.types.ResRet.f32 %2491, 2
  %2495 = fmul fast float %2492, %400
  %2496 = fmul fast float %2493, %403
  %2497 = fmul fast float %2494, %406
  br i1 %2490, label %2504, label %2498

; <label>:2498                                    ; preds = %2481
  %2499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2500 = extractvalue %dx.types.CBufRet.f32 %2499, 0
  %2501 = fmul fast float %2500, %2495
  %2502 = fmul fast float %2500, %2496
  %2503 = fmul fast float %2500, %2497
  br label %2504

; <label>:2504                                    ; preds = %2498, %2481
  %2505 = phi float [ %2501, %2498 ], [ %2495, %2481 ]
  %2506 = phi float [ %2502, %2498 ], [ %2496, %2481 ]
  %2507 = phi float [ %2503, %2498 ], [ %2497, %2481 ]
  %2508 = fmul fast float %2505, %2476
  %2509 = select i1 %296, float %2508, float %2505
  %2510 = call float @dx.op.dot3.f32(i32 55, float %2509, float %2506, float %2507, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2511 = select i1 %296, float 0.000000e+00, float %2505
  %2512 = select i1 %296, float %2510, float %2506
  %2513 = select i1 %296, float 0.000000e+00, float %2507
  br label %2514

; <label>:2514                                    ; preds = %2504, %2466
  %2515 = phi float [ %2511, %2504 ], [ 0.000000e+00, %2466 ]
  %2516 = phi float [ %2512, %2504 ], [ 0.000000e+00, %2466 ]
  %2517 = phi float [ %2513, %2504 ], [ 0.000000e+00, %2466 ]
  %2518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2519 = extractvalue %dx.types.ResRet.i32 %2518, 0
  %2520 = and i32 %2519, 10240
  %2521 = icmp eq i32 %2520, 0
  br i1 %2521, label %2566, label %2522

; <label>:2522                                    ; preds = %2514
  %2523 = add i32 %57, 532
  %2524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2523, i32 undef)  ; BufferLoad(srv,index,wot)
  %2525 = extractvalue %dx.types.ResRet.i32 %2524, 0
  %2526 = add i32 %2525, 0
  %2527 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2526, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2528 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2527, %dx.types.Handle %110, float %2094, float %2095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2529 = extractvalue %dx.types.ResRet.f32 %2528, 1
  %2530 = extractvalue %dx.types.ResRet.f32 %2528, 3
  %2531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2532 = extractvalue %dx.types.ResRet.i32 %2531, 0
  %2533 = and i32 %2532, 1048576
  %2534 = icmp ne i32 %2533, 0
  %2535 = and i32 %2532, 8192
  %2536 = icmp eq i32 %2535, 0
  br i1 %2536, label %2552, label %2537

; <label>:2537                                    ; preds = %2522
  %2538 = extractvalue %dx.types.ResRet.f32 %2528, 2
  %2539 = select i1 %2534, float %2538, float %2529
  %2540 = extractvalue %dx.types.ResRet.f32 %2528, 0
  %2541 = select i1 %2534, float %2540, float %2529
  %2542 = add i32 %57, 128
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = lshr i32 %2544, 16
  %2546 = and i32 %2545, 255
  %2547 = uitofp i32 %2546 to float
  %2548 = fmul fast float %2547, 0x3F80101020000000
  %2549 = fmul fast float %2548, %2541
  %2550 = fmul fast float %2548, %2529
  %2551 = fmul fast float %2548, %2539
  br label %2552

; <label>:2552                                    ; preds = %2537, %2522
  %2553 = phi float [ %2549, %2537 ], [ 0.000000e+00, %2522 ]
  %2554 = phi float [ %2550, %2537 ], [ 0.000000e+00, %2522 ]
  %2555 = phi float [ %2551, %2537 ], [ 0.000000e+00, %2522 ]
  %2556 = and i32 %2532, 2048
  %2557 = icmp eq i32 %2556, 0
  br i1 %2557, label %2566, label %2558

; <label>:2558                                    ; preds = %2552
  %2559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2471, i32 undef)  ; BufferLoad(srv,index,wot)
  %2560 = extractvalue %dx.types.ResRet.i32 %2559, 0
  %2561 = shl i32 %2560, 4
  %2562 = and i32 %2561, 32752
  %2563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2562)  ; LegacyF16ToF32(value)
  %2564 = fmul fast float %2563, %2530
  %2565 = call float @dx.op.binary.f32(i32 35, float %2564, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2566

; <label>:2566                                    ; preds = %2558, %2552, %2514
  %2567 = phi float [ %2553, %2558 ], [ %2553, %2552 ], [ 0.000000e+00, %2514 ]
  %2568 = phi float [ %2554, %2558 ], [ %2554, %2552 ], [ 0.000000e+00, %2514 ]
  %2569 = phi float [ %2555, %2558 ], [ %2555, %2552 ], [ 0.000000e+00, %2514 ]
  %2570 = phi float [ %2565, %2558 ], [ 0x3F70101020000000, %2552 ], [ 0x3F70101020000000, %2514 ]
  %2571 = add i32 %57, 128
  %2572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.i32 %2572, 0
  %2574 = and i32 %2573, 255
  %2575 = uitofp i32 %2574 to float
  %2576 = lshr i32 %2573, 8
  %2577 = and i32 %2576, 255
  %2578 = uitofp i32 %2577 to float
  %2579 = call float @dx.op.dot3.f32(i32 55, float %2387, float %2388, float %2389, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2580 = fmul fast float %2578, %2579
  %2581 = fadd fast float %2580, %2575
  %2582 = fmul fast float %2581, 0x3F70101020000000
  %2583 = call float @dx.op.unary.f32(i32 7, float %2582)  ; Saturate(value)
  br i1 %1986, label %2584, label %2592

; <label>:2584                                    ; preds = %2566
  %2585 = fsub fast float 1.000000e+00, %2167
  %2586 = fmul fast float %2585, %1971
  %2587 = fmul fast float %2585, %1972
  %2588 = fmul fast float %2585, %1973
  %2589 = fmul fast float %2585, %1977
  %2590 = fmul fast float %2585, %1978
  %2591 = fmul fast float %2585, %1979
  br label %2592

; <label>:2592                                    ; preds = %2584, %2566
  %2593 = phi float [ %2586, %2584 ], [ %1971, %2566 ]
  %2594 = phi float [ %2587, %2584 ], [ %1972, %2566 ]
  %2595 = phi float [ %2588, %2584 ], [ %1973, %2566 ]
  %2596 = phi float [ %2589, %2584 ], [ %1977, %2566 ]
  %2597 = phi float [ %2590, %2584 ], [ %1978, %2566 ]
  %2598 = phi float [ %2591, %2584 ], [ %1979, %2566 ]
  %2599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2600 = extractvalue %dx.types.ResRet.i32 %2599, 0
  %2601 = and i32 %2600, 3
  %2602 = icmp eq i32 %2601, 3
  br i1 %2602, label %2681, label %2603

; <label>:2603                                    ; preds = %2592
  %2604 = and i32 %2600, 16
  %2605 = icmp ne i32 %2604, 0
  %2606 = select i1 %2605, float %2167, float 0.000000e+00
  %2607 = icmp eq i32 %2601, 0
  br i1 %2607, label %2608, label %2636

; <label>:2608                                    ; preds = %2603
  %2609 = and i32 %2600, 64
  %2610 = icmp ne i32 %2609, 0
  %2611 = select i1 %2610, float %2167, float 0.000000e+00
  %2612 = fsub fast float %2387, %2593
  %2613 = fsub fast float %2388, %2594
  %2614 = fsub fast float %2389, %2595
  %2615 = fmul fast float %2606, %2612
  %2616 = fmul fast float %2606, %2613
  %2617 = fmul fast float %2606, %2614
  %2618 = fadd fast float %2615, %2593
  %2619 = fadd fast float %2616, %2594
  %2620 = fadd fast float %2617, %2595
  %2621 = fsub fast float %2373, %1980
  %2622 = fmul fast float %2606, %2621
  %2623 = fadd fast float %2622, %1980
  %2624 = fsub fast float %2515, %2596
  %2625 = fsub fast float %2516, %2597
  %2626 = fsub fast float %2517, %2598
  %2627 = fmul fast float %2611, %2624
  %2628 = fmul fast float %2611, %2625
  %2629 = fmul fast float %2611, %2626
  %2630 = fadd fast float %2627, %2596
  %2631 = fadd fast float %2628, %2597
  %2632 = fadd fast float %2629, %2598
  %2633 = fsub fast float %2583, %1984
  %2634 = fmul fast float %2606, %2633
  %2635 = fadd fast float %2634, %1984
  br label %2681

; <label>:2636                                    ; preds = %2603
  %2637 = icmp eq i32 %2601, 1
  br i1 %2637, label %2638, label %2651

; <label>:2638                                    ; preds = %2636
  %2639 = fadd fast float %2387, -1.000000e+00
  %2640 = fadd fast float %2388, -1.000000e+00
  %2641 = fadd fast float %2389, -1.000000e+00
  %2642 = fmul fast float %2606, %2639
  %2643 = fmul fast float %2606, %2640
  %2644 = fmul fast float %2606, %2641
  %2645 = fadd fast float %2642, 1.000000e+00
  %2646 = fadd fast float %2643, 1.000000e+00
  %2647 = fadd fast float %2644, 1.000000e+00
  %2648 = fmul fast float %2645, %2593
  %2649 = fmul fast float %2646, %2594
  %2650 = fmul fast float %2647, %2595
  br label %2681

; <label>:2651                                    ; preds = %2636
  %2652 = icmp eq i32 %2601, 2
  br i1 %2652, label %2653, label %2681

; <label>:2653                                    ; preds = %2651
  %2654 = call float @dx.op.unary.f32(i32 24, float %2387)  ; Sqrt(value)
  %2655 = call float @dx.op.unary.f32(i32 24, float %2388)  ; Sqrt(value)
  %2656 = call float @dx.op.unary.f32(i32 24, float %2389)  ; Sqrt(value)
  %2657 = fadd fast float %2654, -5.000000e-01
  %2658 = fadd fast float %2655, -5.000000e-01
  %2659 = fadd fast float %2656, -5.000000e-01
  %2660 = fmul fast float %2657, %2606
  %2661 = fmul fast float %2658, %2606
  %2662 = fmul fast float %2659, %2606
  %2663 = fadd fast float %2660, 5.000000e-01
  %2664 = fadd fast float %2661, 5.000000e-01
  %2665 = fadd fast float %2662, 5.000000e-01
  %2666 = fmul fast float %2663, 2.000000e+00
  %2667 = fsub fast float 1.000000e+00, %2666
  %2668 = fmul fast float %2667, %2593
  %2669 = fadd fast float %2668, %2666
  %2670 = fmul fast float %2669, %2593
  %2671 = fmul fast float %2664, 2.000000e+00
  %2672 = fsub fast float 1.000000e+00, %2671
  %2673 = fmul fast float %2672, %2594
  %2674 = fadd fast float %2673, %2671
  %2675 = fmul fast float %2674, %2594
  %2676 = fmul fast float %2665, 2.000000e+00
  %2677 = fsub fast float 1.000000e+00, %2676
  %2678 = fmul fast float %2677, %2595
  %2679 = fadd fast float %2678, %2676
  %2680 = fmul fast float %2679, %2595
  br label %2681

; <label>:2681                                    ; preds = %2653, %2651, %2638, %2608, %2592
  %2682 = phi float [ %2593, %2592 ], [ %2670, %2653 ], [ %2593, %2651 ], [ %2648, %2638 ], [ %2618, %2608 ]
  %2683 = phi float [ %2594, %2592 ], [ %2675, %2653 ], [ %2594, %2651 ], [ %2649, %2638 ], [ %2619, %2608 ]
  %2684 = phi float [ %2595, %2592 ], [ %2680, %2653 ], [ %2595, %2651 ], [ %2650, %2638 ], [ %2620, %2608 ]
  %2685 = phi float [ %2596, %2592 ], [ %2596, %2653 ], [ %2596, %2651 ], [ %2596, %2638 ], [ %2630, %2608 ]
  %2686 = phi float [ %2597, %2592 ], [ %2597, %2653 ], [ %2597, %2651 ], [ %2597, %2638 ], [ %2631, %2608 ]
  %2687 = phi float [ %2598, %2592 ], [ %2598, %2653 ], [ %2598, %2651 ], [ %2598, %2638 ], [ %2632, %2608 ]
  %2688 = phi float [ %1980, %2592 ], [ %1980, %2653 ], [ %1980, %2651 ], [ %1980, %2638 ], [ %2623, %2608 ]
  %2689 = phi float [ %1984, %2592 ], [ %1984, %2653 ], [ %1984, %2651 ], [ %1984, %2638 ], [ %2635, %2608 ]
  %2690 = and i32 %2600, 12
  %2691 = icmp eq i32 %2690, 12
  br i1 %2691, label %2798, label %2692

; <label>:2692                                    ; preds = %2681
  %2693 = and i32 %2600, 2097184
  %2694 = icmp eq i32 %2693, 2097184
  %2695 = select i1 %2694, float %2167, float 0.000000e+00
  %2696 = and i32 %2600, 4194336
  %2697 = icmp eq i32 %2696, 4194336
  %2698 = select i1 %2697, float %2167, float 0.000000e+00
  %2699 = and i32 %2600, 8388640
  %2700 = icmp eq i32 %2699, 8388640
  %2701 = select i1 %2700, float %2167, float 0.000000e+00
  %2702 = and i32 %2600, 2048
  %2703 = icmp ne i32 %2702, 0
  %2704 = select i1 %2703, float %2167, float 0.000000e+00
  %2705 = and i32 %2600, 8192
  %2706 = icmp ne i32 %2705, 0
  %2707 = select i1 %2706, float %2167, float 0.000000e+00
  %2708 = icmp eq i32 %2690, 0
  br i1 %2708, label %2709, label %2734

; <label>:2709                                    ; preds = %2692
  %2710 = fsub fast float %2468, %1969
  %2711 = fsub fast float %2469, %1970
  %2712 = fmul fast float %2695, %2710
  %2713 = fmul fast float %2695, %2711
  %2714 = fadd fast float %2712, %1969
  %2715 = fadd fast float %2713, %1970
  %2716 = fsub fast float %2470, %1982
  %2717 = fmul fast float %2698, %2716
  %2718 = fadd fast float %2717, %1982
  %2719 = fsub fast float %2467, %1981
  %2720 = fmul fast float %2701, %2719
  %2721 = fadd fast float %2720, %1981
  %2722 = fsub fast float %2570, %1983
  %2723 = fmul fast float %2704, %2722
  %2724 = fadd fast float %2723, %1983
  %2725 = fsub fast float %2567, %1974
  %2726 = fsub fast float %2568, %1975
  %2727 = fsub fast float %2569, %1976
  %2728 = fmul fast float %2707, %2725
  %2729 = fmul fast float %2707, %2726
  %2730 = fmul fast float %2707, %2727
  %2731 = fadd fast float %2728, %1974
  %2732 = fadd fast float %2729, %1975
  %2733 = fadd fast float %2730, %1976
  br label %2798

; <label>:2734                                    ; preds = %2692
  %2735 = icmp eq i32 %2690, 4
  br i1 %2735, label %2736, label %2776

; <label>:2736                                    ; preds = %2734
  %2737 = fmul fast float %2695, %2468
  %2738 = fmul fast float %2695, %2469
  %2739 = fadd fast float %2737, %1969
  %2740 = fadd fast float %2738, %1970
  %2741 = call float @dx.op.binary.f32(i32 36, float %1982, float %2470)  ; FMin(a,b)
  %2742 = fsub fast float %2741, %1982
  %2743 = fmul fast float %2742, %2698
  %2744 = fadd fast float %2743, %1982
  %2745 = fadd fast float %2467, %1981
  %2746 = fmul fast float %2745, 0x3FF337FAE0000000
  %2747 = fmul fast float %1981, %1981
  %2748 = fmul fast float %2467, %2467
  %2749 = fadd fast float %2748, %2747
  %2750 = fmul fast float %2749, 0x3FE5152B00000000
  %2751 = fmul fast float %1981, 0xBFCC1F85E0000000
  %2752 = fmul fast float %2751, %2467
  %2753 = fadd fast float %2752, 0xBFE1363700000000
  %2754 = fadd fast float %2753, %2746
  %2755 = fsub fast float %2754, %2750
  %2756 = fmul fast float %2745, 0x3FBA6F0D00000000
  %2757 = fmul fast float %2749, 0x3FD0432880000000
  %2758 = fmul fast float %1981, 0xBFEF110800000000
  %2759 = fmul fast float %2758, %2467
  %2760 = fadd fast float %2759, 1.000000e+00
  %2761 = fsub fast float %2760, %2756
  %2762 = fadd fast float %2761, %2757
  %2763 = fdiv fast float %2755, %2762
  %2764 = call float @dx.op.unary.f32(i32 7, float %2763)  ; Saturate(value)
  %2765 = fsub fast float %2764, %1981
  %2766 = fmul fast float %2765, %2701
  %2767 = fadd fast float %2766, %1981
  %2768 = fmul fast float %2704, %2570
  %2769 = fadd fast float %2768, %1983
  %2770 = fmul fast float %2707, %2567
  %2771 = fmul fast float %2707, %2568
  %2772 = fmul fast float %2707, %2569
  %2773 = fadd fast float %2770, %1974
  %2774 = fadd fast float %2771, %1975
  %2775 = fadd fast float %2772, %1976
  br label %2798

; <label>:2776                                    ; preds = %2734
  %2777 = icmp eq i32 %2690, 8
  br i1 %2777, label %2778, label %2798

; <label>:2778                                    ; preds = %2776
  %2779 = fmul fast float %2695, %2468
  %2780 = fmul fast float %2695, %2469
  %2781 = fadd fast float %2779, %1969
  %2782 = fadd fast float %2780, %1970
  %2783 = call float @dx.op.binary.f32(i32 36, float %1982, float %2470)  ; FMin(a,b)
  %2784 = fsub fast float %2783, %1982
  %2785 = fmul fast float %2784, %2698
  %2786 = fadd fast float %2785, %1982
  %2787 = fsub fast float %2467, %1981
  %2788 = fmul fast float %2701, %2787
  %2789 = fadd fast float %2788, %1981
  %2790 = fmul fast float %2704, %2570
  %2791 = fadd fast float %2790, %1983
  %2792 = fmul fast float %2707, %2567
  %2793 = fmul fast float %2707, %2568
  %2794 = fmul fast float %2707, %2569
  %2795 = fadd fast float %2792, %1974
  %2796 = fadd fast float %2793, %1975
  %2797 = fadd fast float %2794, %1976
  br label %2798

; <label>:2798                                    ; preds = %2778, %2776, %2736, %2709, %2681, %2166, %1985, %1968
  %2799 = phi float [ %1969, %2681 ], [ %1969, %2166 ], [ %1969, %1968 ], [ %2781, %2778 ], [ %1969, %2776 ], [ %2739, %2736 ], [ %2714, %2709 ], [ %1969, %1985 ]
  %2800 = phi float [ %1970, %2681 ], [ %1970, %2166 ], [ %1970, %1968 ], [ %2782, %2778 ], [ %1970, %2776 ], [ %2740, %2736 ], [ %2715, %2709 ], [ %1970, %1985 ]
  %2801 = phi float [ %2682, %2681 ], [ %1971, %2166 ], [ %1971, %1968 ], [ %2682, %2778 ], [ %2682, %2776 ], [ %2682, %2736 ], [ %2682, %2709 ], [ %1971, %1985 ]
  %2802 = phi float [ %2683, %2681 ], [ %1972, %2166 ], [ %1972, %1968 ], [ %2683, %2778 ], [ %2683, %2776 ], [ %2683, %2736 ], [ %2683, %2709 ], [ %1972, %1985 ]
  %2803 = phi float [ %2684, %2681 ], [ %1973, %2166 ], [ %1973, %1968 ], [ %2684, %2778 ], [ %2684, %2776 ], [ %2684, %2736 ], [ %2684, %2709 ], [ %1973, %1985 ]
  %2804 = phi float [ %1974, %2681 ], [ %1974, %2166 ], [ %1974, %1968 ], [ %2795, %2778 ], [ %1974, %2776 ], [ %2773, %2736 ], [ %2731, %2709 ], [ %1974, %1985 ]
  %2805 = phi float [ %1975, %2681 ], [ %1975, %2166 ], [ %1975, %1968 ], [ %2796, %2778 ], [ %1975, %2776 ], [ %2774, %2736 ], [ %2732, %2709 ], [ %1975, %1985 ]
  %2806 = phi float [ %1976, %2681 ], [ %1976, %2166 ], [ %1976, %1968 ], [ %2797, %2778 ], [ %1976, %2776 ], [ %2775, %2736 ], [ %2733, %2709 ], [ %1976, %1985 ]
  %2807 = phi float [ %2685, %2681 ], [ %1977, %2166 ], [ %1977, %1968 ], [ %2685, %2778 ], [ %2685, %2776 ], [ %2685, %2736 ], [ %2685, %2709 ], [ %1977, %1985 ]
  %2808 = phi float [ %2686, %2681 ], [ %1978, %2166 ], [ %1978, %1968 ], [ %2686, %2778 ], [ %2686, %2776 ], [ %2686, %2736 ], [ %2686, %2709 ], [ %1978, %1985 ]
  %2809 = phi float [ %2687, %2681 ], [ %1979, %2166 ], [ %1979, %1968 ], [ %2687, %2778 ], [ %2687, %2776 ], [ %2687, %2736 ], [ %2687, %2709 ], [ %1979, %1985 ]
  %2810 = phi float [ %2688, %2681 ], [ %1980, %2166 ], [ %1980, %1968 ], [ %2688, %2778 ], [ %2688, %2776 ], [ %2688, %2736 ], [ %2688, %2709 ], [ %1980, %1985 ]
  %2811 = phi float [ %1981, %2681 ], [ %1981, %2166 ], [ %1981, %1968 ], [ %2789, %2778 ], [ %1981, %2776 ], [ %2767, %2736 ], [ %2721, %2709 ], [ %1981, %1985 ]
  %2812 = phi float [ %1982, %2681 ], [ %1982, %2166 ], [ %1982, %1968 ], [ %2786, %2778 ], [ %1982, %2776 ], [ %2744, %2736 ], [ %2718, %2709 ], [ %1982, %1985 ]
  %2813 = phi float [ %1983, %2681 ], [ %1983, %2166 ], [ %1983, %1968 ], [ %2791, %2778 ], [ %1983, %2776 ], [ %2769, %2736 ], [ %2724, %2709 ], [ %1983, %1985 ]
  %2814 = phi float [ %2689, %2681 ], [ %1984, %2166 ], [ %1984, %1968 ], [ %2689, %2778 ], [ %2689, %2776 ], [ %2689, %2736 ], [ %2689, %2709 ], [ %1984, %1985 ]
  br i1 %487, label %3628, label %2815

; <label>:2815                                    ; preds = %2798
  %2816 = icmp ult i32 %541, 4
  %2817 = add i32 %57, 72
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = add i32 %57, 76
  %2821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2820, i32 undef)  ; BufferLoad(srv,index,wot)
  %2822 = extractvalue %dx.types.ResRet.i32 %2821, 0
  %2823 = or i32 %2822, %2819
  %2824 = icmp eq i32 %2823, 0
  br i1 %2824, label %3628, label %2825

; <label>:2825                                    ; preds = %2815
  %2826 = and i32 %2819, 262144
  %2827 = icmp ne i32 %2826, 0
  %2828 = select i1 %2827, float %63, float 1.000000e+00
  %2829 = select i1 %2827, float %64, float 0.000000e+00
  %2830 = select i1 %2827, float %65, float 0.000000e+00
  %2831 = select i1 %2827, float %66, float 1.000000e+00
  %2832 = select i1 %2827, float %67, float %95
  %2833 = select i1 %2827, float %68, float %96
  %2834 = add i32 %57, 332
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = lshr i32 %2836, 16
  %2838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2837)  ; LegacyF16ToF32(value)
  %2839 = fmul fast float %2838, 0x3F50624DE0000000
  %2840 = add i32 %57, 136
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = lshr i32 %2842, 16
  %2844 = and i32 %2843, 255
  %2845 = lshr i32 %2842, 24
  %2846 = add i32 %57, 340
  %2847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.i32 %2847, 0
  %2849 = and i32 %2848, 65535
  %2850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2849)  ; LegacyF16ToF32(value)
  %2851 = lshr i32 %2848, 16
  %2852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2851)  ; LegacyF16ToF32(value)
  %2853 = add i32 %57, 80
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = lshr i32 %2855, 22
  %2857 = shl nuw nsw i32 %2856, 5
  %2858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2857)  ; LegacyF16ToF32(value)
  %2859 = shl i32 %2855, 4
  %2860 = and i32 %2859, 32752
  %2861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2860)  ; LegacyF16ToF32(value)
  %2862 = lshr i32 %2855, 7
  %2863 = and i32 %2862, 32752
  %2864 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2863)  ; LegacyF16ToF32(value)
  %2865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2866 = extractvalue %dx.types.CBufRet.f32 %2865, 3
  %2867 = fmul fast float %2866, 1.000000e+03
  %2868 = fmul fast float %477, %2867
  %2869 = call float @dx.op.unary.f32(i32 22, float %2868)  ; Frc(value)
  %2870 = fadd fast float %2869, %467
  %2871 = fmul fast float %478, %2867
  %2872 = call float @dx.op.unary.f32(i32 22, float %2871)  ; Frc(value)
  %2873 = fadd fast float %2872, %469
  %2874 = fmul fast float %2839, %2867
  %2875 = call float @dx.op.unary.f32(i32 22, float %2874)  ; Frc(value)
  %2876 = fmul fast float %2875, 0x401921FB60000000
  %2877 = fadd fast float %2876, %2858
  %2878 = call float @dx.op.unary.f32(i32 13, float %2877)  ; Sin(value)
  %2879 = call float @dx.op.unary.f32(i32 12, float %2877)  ; Cos(value)
  %2880 = fsub fast float -0.000000e+00, %2878
  %2881 = fadd fast float %2832, -5.000000e-01
  %2882 = fadd fast float %2833, -5.000000e-01
  %2883 = fmul fast float %2850, %2881
  %2884 = fmul fast float %2852, %2882
  %2885 = fadd fast float %2883, 5.000000e-01
  %2886 = fadd fast float %2884, 5.000000e-01
  %2887 = fmul fast float %2861, %2885
  %2888 = fmul fast float %2864, %2886
  %2889 = fmul fast float %2879, %2887
  %2890 = call float @dx.op.tertiary.f32(i32 46, float %2880, float %2888, float %2889)  ; FMad(a,b,c)
  %2891 = fmul fast float %2878, %2887
  %2892 = call float @dx.op.tertiary.f32(i32 46, float %2879, float %2888, float %2891)  ; FMad(a,b,c)
  %2893 = fadd fast float %2870, %2890
  %2894 = fadd fast float %2873, %2892
  %2895 = icmp ugt i32 %2844, 1
  %2896 = icmp ugt i32 %2842, 33554431
  %2897 = or i1 %2896, %2895
  br i1 %2897, label %2898, label %2923

; <label>:2898                                    ; preds = %2825
  %2899 = add i32 %57, 276
  %2900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %2901 = extractvalue %dx.types.ResRet.i32 %2900, 0
  %2902 = lshr i32 %2901, 16
  %2903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2902)  ; LegacyF16ToF32(value)
  %2904 = fmul fast float %2866, %2903
  %2905 = call float @dx.op.unary.f32(i32 22, float %2904)  ; Frc(value)
  %2906 = mul nuw nsw i32 %2844, %2845
  %2907 = uitofp i32 %2906 to float
  %2908 = fmul fast float %2905, %2907
  %2909 = call float @dx.op.unary.f32(i32 27, float %2908)  ; Round_ni(value)
  %2910 = fptoui float %2909 to i32
  %2911 = urem i32 %2910, %2844
  %2912 = udiv i32 %2910, %2845
  %2913 = call float @dx.op.unary.f32(i32 22, float %2893)  ; Frc(value)
  %2914 = call float @dx.op.unary.f32(i32 22, float %2894)  ; Frc(value)
  %2915 = uitofp i32 %2911 to float
  %2916 = uitofp i32 %2912 to float
  %2917 = fadd fast float %2913, %2915
  %2918 = fadd fast float %2914, %2916
  %2919 = uitofp i32 %2844 to float
  %2920 = uitofp i32 %2845 to float
  %2921 = fdiv fast float %2917, %2919
  %2922 = fdiv fast float %2918, %2920
  br label %2923

; <label>:2923                                    ; preds = %2898, %2825
  %2924 = phi float [ %2921, %2898 ], [ %2893, %2825 ]
  %2925 = phi float [ %2922, %2898 ], [ %2894, %2825 ]
  %2926 = and i32 %2819, 256
  %2927 = icmp eq i32 %2926, 0
  br i1 %2927, label %2974, label %2928

; <label>:2928                                    ; preds = %2923
  %2929 = add i32 %57, 500
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = add i32 %2931, 0
  %2933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2932, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2934 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2933, %dx.types.Handle %110, float %2924, float %2925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2935 = extractvalue %dx.types.ResRet.f32 %2934, 0
  %2936 = add i32 %57, 148
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2936, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = shl i32 %2938, 4
  %2940 = and i32 %2939, 32752
  %2941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2940)  ; LegacyF16ToF32(value)
  %2942 = lshr i32 %2938, 7
  %2943 = and i32 %2942, 32752
  %2944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2943)  ; LegacyF16ToF32(value)
  %2945 = fsub fast float 1.000000e+00, %536
  %2946 = call float @dx.op.binary.f32(i32 35, float %2945, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2947 = bitcast float %536 to i32
  %2948 = sitofp i32 %2947 to float
  %2949 = fadd fast float %2948, 0xC1CFBF8940000000
  %2950 = fmul fast float %2944, %2949
  %2951 = fadd fast float %2950, 0x41CFBF8940000000
  %2952 = fptosi float %2951 to i32
  %2953 = bitcast i32 %2952 to float
  %2954 = bitcast float %2946 to i32
  %2955 = sitofp i32 %2954 to float
  %2956 = fadd fast float %2955, 0xC1CFBF8940000000
  %2957 = fmul fast float %2956, %2944
  %2958 = fadd fast float %2957, 0x41CFBF8940000000
  %2959 = fptosi float %2958 to i32
  %2960 = bitcast i32 %2959 to float
  %2961 = fmul fast float %2953, %2941
  %2962 = fmul fast float %2960, %2941
  %2963 = fsub fast float %2946, %2961
  %2964 = fadd fast float %2962, %2946
  %2965 = call float @dx.op.unary.f32(i32 7, float %2963)  ; Saturate(value)
  %2966 = call float @dx.op.unary.f32(i32 7, float %2964)  ; Saturate(value)
  %2967 = fsub fast float %2935, %2965
  %2968 = fsub fast float %2966, %2965
  %2969 = bitcast float %2968 to i32
  %2970 = sub nsw i32 2129859010, %2969
  %2971 = bitcast i32 %2970 to float
  %2972 = fmul fast float %2971, %2967
  %2973 = call float @dx.op.unary.f32(i32 7, float %2972)  ; Saturate(value)
  br label %2974

; <label>:2974                                    ; preds = %2928, %2923
  %2975 = phi float [ %2973, %2928 ], [ %536, %2923 ]
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 0
  %2978 = and i32 %2977, 128
  %2979 = icmp eq i32 %2978, 0
  br i1 %2979, label %2996, label %2980

; <label>:2980                                    ; preds = %2974
  %2981 = add i32 %57, 484
  %2982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2981, i32 undef)  ; BufferLoad(srv,index,wot)
  %2983 = extractvalue %dx.types.ResRet.i32 %2982, 0
  %2984 = add i32 %2983, 0
  %2985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2984, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2986 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2985, %dx.types.Handle %110, float %2924, float %2925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2987 = extractvalue %dx.types.ResRet.f32 %2986, 0
  %2988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2989 = extractvalue %dx.types.ResRet.i32 %2988, 0
  %2990 = and i32 %2989, 524288
  %2991 = icmp ne i32 %2990, 0
  %2992 = fcmp fast ogt float %2987, 0x3FE0101020000000
  %2993 = select i1 %2992, float 1.000000e+00, float 0.000000e+00
  %2994 = select i1 %2991, float %2993, float %2987
  %2995 = fmul fast float %2994, %2975
  br label %2996

; <label>:2996                                    ; preds = %2980, %2974
  %2997 = phi float [ %2995, %2980 ], [ %2975, %2974 ]
  %2998 = fcmp fast ult float %2997, 0x3F70101020000000
  br i1 %2998, label %3628, label %2999

; <label>:2999                                    ; preds = %2996
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = and i32 %3001, 16
  %3003 = icmp eq i32 %3002, 0
  br i1 %3003, label %3202, label %3004

; <label>:3004                                    ; preds = %2999
  %3005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.i32 %3005, 0
  %3007 = add i32 %57, 436
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = add i32 %3009, 0
  %3011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3012 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3011, %dx.types.Handle %109, float %2924, float %2925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3013 = extractvalue %dx.types.ResRet.f32 %3012, 0
  %3014 = extractvalue %dx.types.ResRet.f32 %3012, 1
  %3015 = extractvalue %dx.types.ResRet.f32 %3012, 2
  %3016 = extractvalue %dx.types.ResRet.f32 %3012, 3
  %3017 = and i32 %3006, 255
  %3018 = uitofp i32 %3017 to float
  %3019 = lshr i32 %3006, 8
  %3020 = and i32 %3019, 255
  %3021 = uitofp i32 %3020 to float
  %3022 = fmul fast float %3016, %3018
  %3023 = fadd fast float %3022, %3021
  %3024 = fmul fast float %3023, 0x3F70101000000000
  %3025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3026 = extractvalue %dx.types.ResRet.i32 %3025, 0
  %3027 = and i32 %3026, 512
  %3028 = icmp eq i32 %3027, 0
  br i1 %3028, label %3037, label %3029

; <label>:3029                                    ; preds = %3004
  %3030 = add i32 %57, 520
  %3031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3030, i32 undef)  ; BufferLoad(srv,index,wot)
  %3032 = extractvalue %dx.types.ResRet.i32 %3031, 0
  %3033 = add i32 %3032, 0
  %3034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3035 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3034, %dx.types.Handle %110, float %2924, float %2925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3036 = extractvalue %dx.types.ResRet.f32 %3035, 0
  br label %3037

; <label>:3037                                    ; preds = %3029, %3004
  %3038 = phi float [ %3036, %3029 ], [ 1.000000e+00, %3004 ]
  %3039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.i32 %3039, 0
  %3041 = and i32 %3040, 33554432
  %3042 = icmp eq i32 %3041, 0
  br i1 %3042, label %3149, label %3043

; <label>:3043                                    ; preds = %3037
  %3044 = add i32 %57, 272
  %3045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.i32 %3045, 0
  %3047 = and i32 %3046, 65535
  %3048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3047)  ; LegacyF16ToF32(value)
  %3049 = lshr i32 %3046, 16
  %3050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3049)  ; LegacyF16ToF32(value)
  %3051 = add i32 %57, 276
  %3052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3053 = extractvalue %dx.types.ResRet.i32 %3052, 0
  %3054 = and i32 %3053, 65535
  %3055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3054)  ; LegacyF16ToF32(value)
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = lshr i32 %3057, 24
  %3059 = uitofp i32 %3058 to float
  %3060 = fmul fast float %3059, 0x3F70101020000000
  %3061 = and i32 %3057, 255
  %3062 = uitofp i32 %3061 to float
  %3063 = fmul fast float %3062, 0x3F70101020000000
  %3064 = lshr i32 %3057, 8
  %3065 = and i32 %3064, 255
  %3066 = uitofp i32 %3065 to float
  %3067 = fmul fast float %3066, 0x3F70101020000000
  %3068 = lshr i32 %3057, 16
  %3069 = and i32 %3068, 255
  %3070 = uitofp i32 %3069 to float
  %3071 = fmul fast float %3070, 0x3F70101020000000
  %3072 = add i32 %57, 268
  %3073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.i32 %3073, 0
  %3075 = lshr i32 %3074, 24
  %3076 = uitofp i32 %3075 to float
  %3077 = fmul fast float %3076, 0x3F70101020000000
  %3078 = and i32 %3074, 255
  %3079 = uitofp i32 %3078 to float
  %3080 = fmul fast float %3079, 0x3F70101020000000
  %3081 = lshr i32 %3074, 8
  %3082 = and i32 %3081, 255
  %3083 = uitofp i32 %3082 to float
  %3084 = fmul fast float %3083, 0x3F70101020000000
  %3085 = lshr i32 %3074, 16
  %3086 = and i32 %3085, 255
  %3087 = uitofp i32 %3086 to float
  %3088 = fmul fast float %3087, 0x3F70101020000000
  %3089 = bitcast float %3013 to i32
  %3090 = ashr i32 %3089, 1
  %3091 = sub nsw i32 1597463174, %3090
  %3092 = bitcast i32 %3091 to float
  %3093 = fmul fast float %3013, 5.000000e-01
  %3094 = fmul fast float %3092, %3092
  %3095 = fmul fast float %3094, %3093
  %3096 = fsub fast float 1.500000e+00, %3095
  %3097 = fmul fast float %3092, %3013
  %3098 = fmul fast float %3097, %3096
  %3099 = bitcast float %3014 to i32
  %3100 = ashr i32 %3099, 1
  %3101 = sub nsw i32 1597463174, %3100
  %3102 = bitcast i32 %3101 to float
  %3103 = fmul fast float %3014, 5.000000e-01
  %3104 = fmul fast float %3102, %3102
  %3105 = fmul fast float %3104, %3103
  %3106 = fsub fast float 1.500000e+00, %3105
  %3107 = fmul fast float %3102, %3014
  %3108 = fmul fast float %3107, %3106
  %3109 = bitcast float %3015 to i32
  %3110 = ashr i32 %3109, 1
  %3111 = sub nsw i32 1597463174, %3110
  %3112 = bitcast i32 %3111 to float
  %3113 = fmul fast float %3015, 5.000000e-01
  %3114 = fmul fast float %3112, %3112
  %3115 = fmul fast float %3114, %3113
  %3116 = fsub fast float 1.500000e+00, %3115
  %3117 = fmul fast float %3112, %3015
  %3118 = fmul fast float %3117, %3116
  %3119 = fsub fast float %3098, %3080
  %3120 = fsub fast float %3108, %3084
  %3121 = fsub fast float %3118, %3088
  %3122 = fmul fast float %3119, %3048
  %3123 = fmul fast float %3120, %3050
  %3124 = fmul fast float %3121, %3055
  %3125 = fadd fast float %3122, %3063
  %3126 = fadd fast float %3123, %3067
  %3127 = fadd fast float %3124, %3071
  %3128 = call float @dx.op.unary.f32(i32 7, float %3125)  ; Saturate(value)
  %3129 = call float @dx.op.unary.f32(i32 7, float %3126)  ; Saturate(value)
  %3130 = call float @dx.op.unary.f32(i32 7, float %3127)  ; Saturate(value)
  %3131 = fmul fast float %3128, %3128
  %3132 = fmul fast float %3129, %3129
  %3133 = fmul fast float %3130, %3130
  %3134 = fsub fast float %3131, %3013
  %3135 = fsub fast float %3132, %3014
  %3136 = fsub fast float %3133, %3015
  %3137 = fmul fast float %3134, %3038
  %3138 = fmul fast float %3135, %3038
  %3139 = fmul fast float %3136, %3038
  %3140 = fadd fast float %3137, %3013
  %3141 = fadd fast float %3138, %3014
  %3142 = fadd fast float %3139, %3015
  %3143 = fadd fast float %3060, %3024
  %3144 = fsub fast float %3143, %3077
  %3145 = call float @dx.op.unary.f32(i32 7, float %3144)  ; Saturate(value)
  %3146 = fsub fast float %3145, %3024
  %3147 = fmul fast float %3146, %3038
  %3148 = fadd fast float %3147, %3024
  br label %3202

; <label>:3149                                    ; preds = %3037
  %3150 = and i32 %3040, 134217728
  %3151 = icmp eq i32 %3150, 0
  br i1 %3151, label %3186, label %3152

; <label>:3152                                    ; preds = %3149
  %3153 = call float @dx.op.unary.f32(i32 24, float %454)  ; Sqrt(value)
  %3154 = call float @dx.op.unary.f32(i32 24, float %458)  ; Sqrt(value)
  %3155 = call float @dx.op.unary.f32(i32 24, float %462)  ; Sqrt(value)
  %3156 = fadd fast float %3153, -5.000000e-01
  %3157 = fadd fast float %3154, -5.000000e-01
  %3158 = fadd fast float %3155, -5.000000e-01
  %3159 = fmul fast float %3156, %3038
  %3160 = fmul fast float %3157, %3038
  %3161 = fmul fast float %3158, %3038
  %3162 = fadd fast float %3159, 5.000000e-01
  %3163 = fadd fast float %3160, 5.000000e-01
  %3164 = fadd fast float %3161, 5.000000e-01
  %3165 = call float @dx.op.unary.f32(i32 24, float %3013)  ; Sqrt(value)
  %3166 = call float @dx.op.unary.f32(i32 24, float %3014)  ; Sqrt(value)
  %3167 = call float @dx.op.unary.f32(i32 24, float %3015)  ; Sqrt(value)
  %3168 = fmul fast float %3162, 2.000000e+00
  %3169 = fsub fast float 1.000000e+00, %3168
  %3170 = fmul fast float %3169, %3165
  %3171 = fadd fast float %3170, %3168
  %3172 = fmul fast float %3171, %3165
  %3173 = fmul fast float %3163, 2.000000e+00
  %3174 = fsub fast float 1.000000e+00, %3173
  %3175 = fmul fast float %3174, %3166
  %3176 = fadd fast float %3175, %3173
  %3177 = fmul fast float %3176, %3166
  %3178 = fmul fast float %3164, 2.000000e+00
  %3179 = fsub fast float 1.000000e+00, %3178
  %3180 = fmul fast float %3179, %3167
  %3181 = fadd fast float %3180, %3178
  %3182 = fmul fast float %3181, %3167
  %3183 = fmul fast float %3172, %3172
  %3184 = fmul fast float %3177, %3177
  %3185 = fmul fast float %3182, %3182
  br label %3202

; <label>:3186                                    ; preds = %3149
  %3187 = fmul fast float %454, %454
  %3188 = fmul fast float %458, %458
  %3189 = fmul fast float %462, %462
  %3190 = fadd fast float %3187, -1.000000e+00
  %3191 = fadd fast float %3188, -1.000000e+00
  %3192 = fadd fast float %3189, -1.000000e+00
  %3193 = fmul fast float %3038, %3190
  %3194 = fmul fast float %3038, %3191
  %3195 = fmul fast float %3038, %3192
  %3196 = fadd fast float %3193, 1.000000e+00
  %3197 = fadd fast float %3194, 1.000000e+00
  %3198 = fadd fast float %3195, 1.000000e+00
  %3199 = fmul fast float %3196, %3013
  %3200 = fmul fast float %3197, %3014
  %3201 = fmul fast float %3198, %3015
  br label %3202

; <label>:3202                                    ; preds = %3186, %3152, %3043, %2999
  %3203 = phi float [ %3148, %3043 ], [ %3024, %3152 ], [ %3024, %3186 ], [ 0x3FA23C0BE0000000, %2999 ]
  %3204 = phi float [ %3140, %3043 ], [ %3183, %3152 ], [ %3199, %3186 ], [ 1.000000e+00, %2999 ]
  %3205 = phi float [ %3141, %3043 ], [ %3184, %3152 ], [ %3200, %3186 ], [ 1.000000e+00, %2999 ]
  %3206 = phi float [ %3142, %3043 ], [ %3185, %3152 ], [ %3201, %3186 ], [ 1.000000e+00, %2999 ]
  %3207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3208 = extractvalue %dx.types.CBufRet.i32 %3207, 1
  %3209 = and i32 %3208, 1
  %3210 = icmp ne i32 %3209, 0
  %3211 = add i32 %57, 356
  %3212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3211, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.i32 %3212, 0
  %3214 = and i32 %3213, 32
  %3215 = icmp ne i32 %3214, 0
  %3216 = and i1 %3210, %3215
  %3217 = select i1 %3216, float 1.000000e+00, float %3204
  %3218 = select i1 %3216, float 0x3FD3333340000000, float %3205
  %3219 = select i1 %3216, float 0x3FD3333340000000, float %3206
  %3220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3221 = extractvalue %dx.types.ResRet.i32 %3220, 0
  %3222 = and i32 %3221, 32
  %3223 = icmp eq i32 %3222, 0
  br i1 %3223, label %3296, label %3224

; <label>:3224                                    ; preds = %3202
  %3225 = add i32 %57, 140
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3225, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = add i32 %57, 452
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3228, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = add i32 %3230, 0
  %3232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3231, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3233 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3232, %dx.types.Handle %109, float %2924, float %2925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3234 = extractvalue %dx.types.ResRet.f32 %3233, 0
  %3235 = extractvalue %dx.types.ResRet.f32 %3233, 1
  %3236 = extractvalue %dx.types.ResRet.f32 %3233, 2
  %3237 = extractvalue %dx.types.ResRet.f32 %3233, 3
  %3238 = and i32 %3227, 255
  %3239 = uitofp i32 %3238 to float
  %3240 = lshr i32 %3227, 8
  %3241 = and i32 %3240, 255
  %3242 = uitofp i32 %3241 to float
  %3243 = lshr i32 %3227, 16
  %3244 = and i32 %3243, 255
  %3245 = uitofp i32 %3244 to float
  %3246 = fmul fast float %3245, 0x3F70101000000000
  %3247 = fmul fast float %3234, %3239
  %3248 = fadd fast float %3247, %3242
  %3249 = fmul fast float %3248, 0x3F70101000000000
  %3250 = fadd fast float %3235, -5.000000e-01
  %3251 = fadd fast float %3237, -5.000000e-01
  %3252 = fmul fast float %3250, %3246
  %3253 = fmul fast float %3251, %3246
  %3254 = fadd fast float %3252, 5.000000e-01
  %3255 = fadd fast float %3253, 5.000000e-01
  %3256 = fmul fast float %3254, 2.000000e+00
  %3257 = fadd fast float %3256, -1.000000e+00
  %3258 = fmul fast float %3255, 2.000000e+00
  %3259 = fadd fast float %3258, -1.000000e+00
  %3260 = fadd fast float %3257, %3259
  %3261 = fmul fast float %3260, 5.000000e-01
  %3262 = fsub fast float %3257, %3259
  %3263 = fmul fast float %3262, 5.000000e-01
  %3264 = call float @dx.op.unary.f32(i32 6, float %3261)  ; FAbs(value)
  %3265 = fsub fast float 1.000000e+00, %3264
  %3266 = call float @dx.op.unary.f32(i32 6, float %3263)  ; FAbs(value)
  %3267 = fsub fast float %3265, %3266
  %3268 = call float @dx.op.dot3.f32(i32 55, float %3261, float %3263, float %3267, float %3261, float %3263, float %3267)  ; Dot3(ax,ay,az,bx,by,bz)
  %3269 = call float @dx.op.unary.f32(i32 25, float %3268)  ; Rsqrt(value)
  %3270 = fmul fast float %3261, %3269
  %3271 = fmul fast float %3263, %3269
  %3272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3273 = extractvalue %dx.types.ResRet.i32 %3272, 0
  %3274 = and i32 %3273, 67108864
  %3275 = icmp eq i32 %3274, 0
  br i1 %3275, label %3292, label %3276

; <label>:3276                                    ; preds = %3224
  %3277 = add i32 %57, 328
  %3278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3277, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.i32 %3278, 0
  %3280 = and i32 %3279, 65535
  %3281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3280)  ; LegacyF16ToF32(value)
  %3282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.i32 %3282, 0
  %3284 = and i32 %3283, 65535
  %3285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3284)  ; LegacyF16ToF32(value)
  %3286 = lshr i32 %3279, 16
  %3287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3286)  ; LegacyF16ToF32(value)
  %3288 = fsub fast float %3249, %3287
  %3289 = fmul fast float %3288, %3281
  %3290 = fadd fast float %3289, %3285
  %3291 = call float @dx.op.unary.f32(i32 7, float %3290)  ; Saturate(value)
  br label %3292

; <label>:3292                                    ; preds = %3276, %3224
  %3293 = phi float [ %3291, %3276 ], [ %3249, %3224 ]
  %3294 = call float @dx.op.dot2.f32(i32 54, float %3270, float %3271, float %2828, float %2829)  ; Dot2(ax,ay,bx,by)
  %3295 = call float @dx.op.dot2.f32(i32 54, float %3270, float %3271, float %2830, float %2831)  ; Dot2(ax,ay,bx,by)
  br label %3296

; <label>:3296                                    ; preds = %3292, %3202
  %3297 = phi float [ %3293, %3292 ], [ 0x3FD6666660000000, %3202 ]
  %3298 = phi float [ %3294, %3292 ], [ 0.000000e+00, %3202 ]
  %3299 = phi float [ %3295, %3292 ], [ 0.000000e+00, %3202 ]
  %3300 = phi float [ %3236, %3292 ], [ 1.000000e+00, %3202 ]
  %3301 = add i32 %57, 208
  %3302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3301, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.i32 %3302, 0
  %3304 = lshr i32 %3303, 22
  %3305 = shl nuw nsw i32 %3304, 5
  %3306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3305)  ; LegacyF16ToF32(value)
  %3307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3308 = extractvalue %dx.types.ResRet.i32 %3307, 0
  %3309 = and i32 %3308, 64
  %3310 = icmp eq i32 %3309, 0
  br i1 %3310, label %3344, label %3311

; <label>:3311                                    ; preds = %3296
  %3312 = add i32 %57, 468
  %3313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3312, i32 undef)  ; BufferLoad(srv,index,wot)
  %3314 = extractvalue %dx.types.ResRet.i32 %3313, 0
  %3315 = add i32 %3314, 0
  %3316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3315, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3318 = extractvalue %dx.types.ResRet.i32 %3317, 0
  %3319 = and i32 %3318, 131072
  %3320 = icmp eq i32 %3319, 0
  %3321 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3316, %dx.types.Handle %109, float %2924, float %2925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3322 = extractvalue %dx.types.ResRet.f32 %3321, 0
  %3323 = extractvalue %dx.types.ResRet.f32 %3321, 1
  %3324 = extractvalue %dx.types.ResRet.f32 %3321, 2
  %3325 = fmul fast float %3322, %442
  %3326 = fmul fast float %3323, %445
  %3327 = fmul fast float %3324, %448
  br i1 %3320, label %3334, label %3328

; <label>:3328                                    ; preds = %3311
  %3329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3330 = extractvalue %dx.types.CBufRet.f32 %3329, 0
  %3331 = fmul fast float %3330, %3325
  %3332 = fmul fast float %3330, %3326
  %3333 = fmul fast float %3330, %3327
  br label %3334

; <label>:3334                                    ; preds = %3328, %3311
  %3335 = phi float [ %3331, %3328 ], [ %3325, %3311 ]
  %3336 = phi float [ %3332, %3328 ], [ %3326, %3311 ]
  %3337 = phi float [ %3333, %3328 ], [ %3327, %3311 ]
  %3338 = fmul fast float %3335, %3306
  %3339 = select i1 %296, float %3338, float %3335
  %3340 = call float @dx.op.dot3.f32(i32 55, float %3339, float %3336, float %3337, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3341 = select i1 %296, float 0.000000e+00, float %3335
  %3342 = select i1 %296, float %3340, float %3336
  %3343 = select i1 %296, float 0.000000e+00, float %3337
  br label %3344

; <label>:3344                                    ; preds = %3334, %3296
  %3345 = phi float [ %3341, %3334 ], [ 0.000000e+00, %3296 ]
  %3346 = phi float [ %3342, %3334 ], [ 0.000000e+00, %3296 ]
  %3347 = phi float [ %3343, %3334 ], [ 0.000000e+00, %3296 ]
  %3348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3349 = extractvalue %dx.types.ResRet.i32 %3348, 0
  %3350 = and i32 %3349, 10240
  %3351 = icmp eq i32 %3350, 0
  br i1 %3351, label %3396, label %3352

; <label>:3352                                    ; preds = %3344
  %3353 = add i32 %57, 536
  %3354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3353, i32 undef)  ; BufferLoad(srv,index,wot)
  %3355 = extractvalue %dx.types.ResRet.i32 %3354, 0
  %3356 = add i32 %3355, 0
  %3357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3356, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3358 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3357, %dx.types.Handle %110, float %2924, float %2925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3359 = extractvalue %dx.types.ResRet.f32 %3358, 1
  %3360 = extractvalue %dx.types.ResRet.f32 %3358, 3
  %3361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3362 = extractvalue %dx.types.ResRet.i32 %3361, 0
  %3363 = and i32 %3362, 1048576
  %3364 = icmp ne i32 %3363, 0
  %3365 = and i32 %3362, 8192
  %3366 = icmp eq i32 %3365, 0
  br i1 %3366, label %3382, label %3367

; <label>:3367                                    ; preds = %3352
  %3368 = extractvalue %dx.types.ResRet.f32 %3358, 2
  %3369 = select i1 %3364, float %3368, float %3359
  %3370 = extractvalue %dx.types.ResRet.f32 %3358, 0
  %3371 = select i1 %3364, float %3370, float %3359
  %3372 = add i32 %57, 144
  %3373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3374 = extractvalue %dx.types.ResRet.i32 %3373, 0
  %3375 = lshr i32 %3374, 16
  %3376 = and i32 %3375, 255
  %3377 = uitofp i32 %3376 to float
  %3378 = fmul fast float %3377, 0x3F80101020000000
  %3379 = fmul fast float %3378, %3371
  %3380 = fmul fast float %3378, %3359
  %3381 = fmul fast float %3378, %3369
  br label %3382

; <label>:3382                                    ; preds = %3367, %3352
  %3383 = phi float [ %3379, %3367 ], [ 0.000000e+00, %3352 ]
  %3384 = phi float [ %3380, %3367 ], [ 0.000000e+00, %3352 ]
  %3385 = phi float [ %3381, %3367 ], [ 0.000000e+00, %3352 ]
  %3386 = and i32 %3362, 2048
  %3387 = icmp eq i32 %3386, 0
  br i1 %3387, label %3396, label %3388

; <label>:3388                                    ; preds = %3382
  %3389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3301, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.i32 %3389, 0
  %3391 = shl i32 %3390, 4
  %3392 = and i32 %3391, 32752
  %3393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3392)  ; LegacyF16ToF32(value)
  %3394 = fmul fast float %3393, %3360
  %3395 = call float @dx.op.binary.f32(i32 35, float %3394, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3396

; <label>:3396                                    ; preds = %3388, %3382, %3344
  %3397 = phi float [ %3383, %3388 ], [ %3383, %3382 ], [ 0.000000e+00, %3344 ]
  %3398 = phi float [ %3384, %3388 ], [ %3384, %3382 ], [ 0.000000e+00, %3344 ]
  %3399 = phi float [ %3385, %3388 ], [ %3385, %3382 ], [ 0.000000e+00, %3344 ]
  %3400 = phi float [ %3395, %3388 ], [ 0x3F70101020000000, %3382 ], [ 0x3F70101020000000, %3344 ]
  %3401 = add i32 %57, 144
  %3402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3401, i32 undef)  ; BufferLoad(srv,index,wot)
  %3403 = extractvalue %dx.types.ResRet.i32 %3402, 0
  %3404 = and i32 %3403, 255
  %3405 = uitofp i32 %3404 to float
  %3406 = lshr i32 %3403, 8
  %3407 = and i32 %3406, 255
  %3408 = uitofp i32 %3407 to float
  %3409 = call float @dx.op.dot3.f32(i32 55, float %3217, float %3218, float %3219, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3410 = fmul fast float %3408, %3409
  %3411 = fadd fast float %3410, %3405
  %3412 = fmul fast float %3411, 0x3F70101020000000
  %3413 = call float @dx.op.unary.f32(i32 7, float %3412)  ; Saturate(value)
  br i1 %2816, label %3414, label %3422

; <label>:3414                                    ; preds = %3396
  %3415 = fsub fast float 1.000000e+00, %2997
  %3416 = fmul fast float %3415, %2801
  %3417 = fmul fast float %3415, %2802
  %3418 = fmul fast float %3415, %2803
  %3419 = fmul fast float %3415, %2807
  %3420 = fmul fast float %3415, %2808
  %3421 = fmul fast float %3415, %2809
  br label %3422

; <label>:3422                                    ; preds = %3414, %3396
  %3423 = phi float [ %3416, %3414 ], [ %2801, %3396 ]
  %3424 = phi float [ %3417, %3414 ], [ %2802, %3396 ]
  %3425 = phi float [ %3418, %3414 ], [ %2803, %3396 ]
  %3426 = phi float [ %3419, %3414 ], [ %2807, %3396 ]
  %3427 = phi float [ %3420, %3414 ], [ %2808, %3396 ]
  %3428 = phi float [ %3421, %3414 ], [ %2809, %3396 ]
  %3429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3430 = extractvalue %dx.types.ResRet.i32 %3429, 0
  %3431 = and i32 %3430, 3
  %3432 = icmp eq i32 %3431, 3
  br i1 %3432, label %3511, label %3433

; <label>:3433                                    ; preds = %3422
  %3434 = and i32 %3430, 16
  %3435 = icmp ne i32 %3434, 0
  %3436 = select i1 %3435, float %2997, float 0.000000e+00
  %3437 = icmp eq i32 %3431, 0
  br i1 %3437, label %3438, label %3466

; <label>:3438                                    ; preds = %3433
  %3439 = and i32 %3430, 64
  %3440 = icmp ne i32 %3439, 0
  %3441 = select i1 %3440, float %2997, float 0.000000e+00
  %3442 = fsub fast float %3217, %3423
  %3443 = fsub fast float %3218, %3424
  %3444 = fsub fast float %3219, %3425
  %3445 = fmul fast float %3436, %3442
  %3446 = fmul fast float %3436, %3443
  %3447 = fmul fast float %3436, %3444
  %3448 = fadd fast float %3445, %3423
  %3449 = fadd fast float %3446, %3424
  %3450 = fadd fast float %3447, %3425
  %3451 = fsub fast float %3203, %2810
  %3452 = fmul fast float %3436, %3451
  %3453 = fadd fast float %3452, %2810
  %3454 = fsub fast float %3345, %3426
  %3455 = fsub fast float %3346, %3427
  %3456 = fsub fast float %3347, %3428
  %3457 = fmul fast float %3441, %3454
  %3458 = fmul fast float %3441, %3455
  %3459 = fmul fast float %3441, %3456
  %3460 = fadd fast float %3457, %3426
  %3461 = fadd fast float %3458, %3427
  %3462 = fadd fast float %3459, %3428
  %3463 = fsub fast float %3413, %2814
  %3464 = fmul fast float %3436, %3463
  %3465 = fadd fast float %3464, %2814
  br label %3511

; <label>:3466                                    ; preds = %3433
  %3467 = icmp eq i32 %3431, 1
  br i1 %3467, label %3468, label %3481

; <label>:3468                                    ; preds = %3466
  %3469 = fadd fast float %3217, -1.000000e+00
  %3470 = fadd fast float %3218, -1.000000e+00
  %3471 = fadd fast float %3219, -1.000000e+00
  %3472 = fmul fast float %3436, %3469
  %3473 = fmul fast float %3436, %3470
  %3474 = fmul fast float %3436, %3471
  %3475 = fadd fast float %3472, 1.000000e+00
  %3476 = fadd fast float %3473, 1.000000e+00
  %3477 = fadd fast float %3474, 1.000000e+00
  %3478 = fmul fast float %3475, %3423
  %3479 = fmul fast float %3476, %3424
  %3480 = fmul fast float %3477, %3425
  br label %3511

; <label>:3481                                    ; preds = %3466
  %3482 = icmp eq i32 %3431, 2
  br i1 %3482, label %3483, label %3511

; <label>:3483                                    ; preds = %3481
  %3484 = call float @dx.op.unary.f32(i32 24, float %3217)  ; Sqrt(value)
  %3485 = call float @dx.op.unary.f32(i32 24, float %3218)  ; Sqrt(value)
  %3486 = call float @dx.op.unary.f32(i32 24, float %3219)  ; Sqrt(value)
  %3487 = fadd fast float %3484, -5.000000e-01
  %3488 = fadd fast float %3485, -5.000000e-01
  %3489 = fadd fast float %3486, -5.000000e-01
  %3490 = fmul fast float %3487, %3436
  %3491 = fmul fast float %3488, %3436
  %3492 = fmul fast float %3489, %3436
  %3493 = fadd fast float %3490, 5.000000e-01
  %3494 = fadd fast float %3491, 5.000000e-01
  %3495 = fadd fast float %3492, 5.000000e-01
  %3496 = fmul fast float %3493, 2.000000e+00
  %3497 = fsub fast float 1.000000e+00, %3496
  %3498 = fmul fast float %3497, %3423
  %3499 = fadd fast float %3498, %3496
  %3500 = fmul fast float %3499, %3423
  %3501 = fmul fast float %3494, 2.000000e+00
  %3502 = fsub fast float 1.000000e+00, %3501
  %3503 = fmul fast float %3502, %3424
  %3504 = fadd fast float %3503, %3501
  %3505 = fmul fast float %3504, %3424
  %3506 = fmul fast float %3495, 2.000000e+00
  %3507 = fsub fast float 1.000000e+00, %3506
  %3508 = fmul fast float %3507, %3425
  %3509 = fadd fast float %3508, %3506
  %3510 = fmul fast float %3509, %3425
  br label %3511

; <label>:3511                                    ; preds = %3483, %3481, %3468, %3438, %3422
  %3512 = phi float [ %3423, %3422 ], [ %3500, %3483 ], [ %3423, %3481 ], [ %3478, %3468 ], [ %3448, %3438 ]
  %3513 = phi float [ %3424, %3422 ], [ %3505, %3483 ], [ %3424, %3481 ], [ %3479, %3468 ], [ %3449, %3438 ]
  %3514 = phi float [ %3425, %3422 ], [ %3510, %3483 ], [ %3425, %3481 ], [ %3480, %3468 ], [ %3450, %3438 ]
  %3515 = phi float [ %3426, %3422 ], [ %3426, %3483 ], [ %3426, %3481 ], [ %3426, %3468 ], [ %3460, %3438 ]
  %3516 = phi float [ %3427, %3422 ], [ %3427, %3483 ], [ %3427, %3481 ], [ %3427, %3468 ], [ %3461, %3438 ]
  %3517 = phi float [ %3428, %3422 ], [ %3428, %3483 ], [ %3428, %3481 ], [ %3428, %3468 ], [ %3462, %3438 ]
  %3518 = phi float [ %2810, %3422 ], [ %2810, %3483 ], [ %2810, %3481 ], [ %2810, %3468 ], [ %3453, %3438 ]
  %3519 = phi float [ %2814, %3422 ], [ %2814, %3483 ], [ %2814, %3481 ], [ %2814, %3468 ], [ %3465, %3438 ]
  %3520 = and i32 %3430, 12
  %3521 = icmp eq i32 %3520, 12
  br i1 %3521, label %3628, label %3522

; <label>:3522                                    ; preds = %3511
  %3523 = and i32 %3430, 2097184
  %3524 = icmp eq i32 %3523, 2097184
  %3525 = select i1 %3524, float %2997, float 0.000000e+00
  %3526 = and i32 %3430, 4194336
  %3527 = icmp eq i32 %3526, 4194336
  %3528 = select i1 %3527, float %2997, float 0.000000e+00
  %3529 = and i32 %3430, 8388640
  %3530 = icmp eq i32 %3529, 8388640
  %3531 = select i1 %3530, float %2997, float 0.000000e+00
  %3532 = and i32 %3430, 2048
  %3533 = icmp ne i32 %3532, 0
  %3534 = select i1 %3533, float %2997, float 0.000000e+00
  %3535 = and i32 %3430, 8192
  %3536 = icmp ne i32 %3535, 0
  %3537 = select i1 %3536, float %2997, float 0.000000e+00
  %3538 = icmp eq i32 %3520, 0
  br i1 %3538, label %3539, label %3564

; <label>:3539                                    ; preds = %3522
  %3540 = fsub fast float %3298, %2799
  %3541 = fsub fast float %3299, %2800
  %3542 = fmul fast float %3525, %3540
  %3543 = fmul fast float %3525, %3541
  %3544 = fadd fast float %3542, %2799
  %3545 = fadd fast float %3543, %2800
  %3546 = fsub fast float %3300, %2812
  %3547 = fmul fast float %3528, %3546
  %3548 = fadd fast float %3547, %2812
  %3549 = fsub fast float %3297, %2811
  %3550 = fmul fast float %3531, %3549
  %3551 = fadd fast float %3550, %2811
  %3552 = fsub fast float %3400, %2813
  %3553 = fmul fast float %3534, %3552
  %3554 = fadd fast float %3553, %2813
  %3555 = fsub fast float %3397, %2804
  %3556 = fsub fast float %3398, %2805
  %3557 = fsub fast float %3399, %2806
  %3558 = fmul fast float %3537, %3555
  %3559 = fmul fast float %3537, %3556
  %3560 = fmul fast float %3537, %3557
  %3561 = fadd fast float %3558, %2804
  %3562 = fadd fast float %3559, %2805
  %3563 = fadd fast float %3560, %2806
  br label %3628

; <label>:3564                                    ; preds = %3522
  %3565 = icmp eq i32 %3520, 4
  br i1 %3565, label %3566, label %3606

; <label>:3566                                    ; preds = %3564
  %3567 = fmul fast float %3525, %3298
  %3568 = fmul fast float %3525, %3299
  %3569 = fadd fast float %3567, %2799
  %3570 = fadd fast float %3568, %2800
  %3571 = call float @dx.op.binary.f32(i32 36, float %2812, float %3300)  ; FMin(a,b)
  %3572 = fsub fast float %3571, %2812
  %3573 = fmul fast float %3572, %3528
  %3574 = fadd fast float %3573, %2812
  %3575 = fadd fast float %3297, %2811
  %3576 = fmul fast float %3575, 0x3FF337FAE0000000
  %3577 = fmul fast float %2811, %2811
  %3578 = fmul fast float %3297, %3297
  %3579 = fadd fast float %3578, %3577
  %3580 = fmul fast float %3579, 0x3FE5152B00000000
  %3581 = fmul fast float %2811, 0xBFCC1F85E0000000
  %3582 = fmul fast float %3581, %3297
  %3583 = fadd fast float %3582, 0xBFE1363700000000
  %3584 = fadd fast float %3583, %3576
  %3585 = fsub fast float %3584, %3580
  %3586 = fmul fast float %3575, 0x3FBA6F0D00000000
  %3587 = fmul fast float %3579, 0x3FD0432880000000
  %3588 = fmul fast float %2811, 0xBFEF110800000000
  %3589 = fmul fast float %3588, %3297
  %3590 = fadd fast float %3589, 1.000000e+00
  %3591 = fsub fast float %3590, %3586
  %3592 = fadd fast float %3591, %3587
  %3593 = fdiv fast float %3585, %3592
  %3594 = call float @dx.op.unary.f32(i32 7, float %3593)  ; Saturate(value)
  %3595 = fsub fast float %3594, %2811
  %3596 = fmul fast float %3595, %3531
  %3597 = fadd fast float %3596, %2811
  %3598 = fmul fast float %3534, %3400
  %3599 = fadd fast float %3598, %2813
  %3600 = fmul fast float %3537, %3397
  %3601 = fmul fast float %3537, %3398
  %3602 = fmul fast float %3537, %3399
  %3603 = fadd fast float %3600, %2804
  %3604 = fadd fast float %3601, %2805
  %3605 = fadd fast float %3602, %2806
  br label %3628

; <label>:3606                                    ; preds = %3564
  %3607 = icmp eq i32 %3520, 8
  br i1 %3607, label %3608, label %3628

; <label>:3608                                    ; preds = %3606
  %3609 = fmul fast float %3525, %3298
  %3610 = fmul fast float %3525, %3299
  %3611 = fadd fast float %3609, %2799
  %3612 = fadd fast float %3610, %2800
  %3613 = call float @dx.op.binary.f32(i32 36, float %2812, float %3300)  ; FMin(a,b)
  %3614 = fsub fast float %3613, %2812
  %3615 = fmul fast float %3614, %3528
  %3616 = fadd fast float %3615, %2812
  %3617 = fsub fast float %3297, %2811
  %3618 = fmul fast float %3531, %3617
  %3619 = fadd fast float %3618, %2811
  %3620 = fmul fast float %3534, %3400
  %3621 = fadd fast float %3620, %2813
  %3622 = fmul fast float %3537, %3397
  %3623 = fmul fast float %3537, %3398
  %3624 = fmul fast float %3537, %3399
  %3625 = fadd fast float %3622, %2804
  %3626 = fadd fast float %3623, %2805
  %3627 = fadd fast float %3624, %2806
  br label %3628

; <label>:3628                                    ; preds = %3608, %3606, %3566, %3539, %3511, %2996, %2815, %2798
  %3629 = phi float [ %2799, %3511 ], [ %2799, %2996 ], [ %2799, %2798 ], [ %2799, %2815 ], [ %3544, %3539 ], [ %3569, %3566 ], [ %2799, %3606 ], [ %3611, %3608 ]
  %3630 = phi float [ %2800, %3511 ], [ %2800, %2996 ], [ %2800, %2798 ], [ %2800, %2815 ], [ %3545, %3539 ], [ %3570, %3566 ], [ %2800, %3606 ], [ %3612, %3608 ]
  %3631 = phi float [ %3512, %3511 ], [ %2801, %2996 ], [ %2801, %2798 ], [ %2801, %2815 ], [ %3512, %3539 ], [ %3512, %3566 ], [ %3512, %3606 ], [ %3512, %3608 ]
  %3632 = phi float [ %3513, %3511 ], [ %2802, %2996 ], [ %2802, %2798 ], [ %2802, %2815 ], [ %3513, %3539 ], [ %3513, %3566 ], [ %3513, %3606 ], [ %3513, %3608 ]
  %3633 = phi float [ %3514, %3511 ], [ %2803, %2996 ], [ %2803, %2798 ], [ %2803, %2815 ], [ %3514, %3539 ], [ %3514, %3566 ], [ %3514, %3606 ], [ %3514, %3608 ]
  %3634 = phi float [ %2804, %3511 ], [ %2804, %2996 ], [ %2804, %2798 ], [ %2804, %2815 ], [ %3561, %3539 ], [ %3603, %3566 ], [ %2804, %3606 ], [ %3625, %3608 ]
  %3635 = phi float [ %2805, %3511 ], [ %2805, %2996 ], [ %2805, %2798 ], [ %2805, %2815 ], [ %3562, %3539 ], [ %3604, %3566 ], [ %2805, %3606 ], [ %3626, %3608 ]
  %3636 = phi float [ %2806, %3511 ], [ %2806, %2996 ], [ %2806, %2798 ], [ %2806, %2815 ], [ %3563, %3539 ], [ %3605, %3566 ], [ %2806, %3606 ], [ %3627, %3608 ]
  %3637 = phi float [ %3515, %3511 ], [ %2807, %2996 ], [ %2807, %2798 ], [ %2807, %2815 ], [ %3515, %3539 ], [ %3515, %3566 ], [ %3515, %3606 ], [ %3515, %3608 ]
  %3638 = phi float [ %3516, %3511 ], [ %2808, %2996 ], [ %2808, %2798 ], [ %2808, %2815 ], [ %3516, %3539 ], [ %3516, %3566 ], [ %3516, %3606 ], [ %3516, %3608 ]
  %3639 = phi float [ %3517, %3511 ], [ %2809, %2996 ], [ %2809, %2798 ], [ %2809, %2815 ], [ %3517, %3539 ], [ %3517, %3566 ], [ %3517, %3606 ], [ %3517, %3608 ]
  %3640 = phi float [ %3518, %3511 ], [ %2810, %2996 ], [ %2810, %2798 ], [ %2810, %2815 ], [ %3518, %3539 ], [ %3518, %3566 ], [ %3518, %3606 ], [ %3518, %3608 ]
  %3641 = phi float [ %2811, %3511 ], [ %2811, %2996 ], [ %2811, %2798 ], [ %2811, %2815 ], [ %3551, %3539 ], [ %3597, %3566 ], [ %2811, %3606 ], [ %3619, %3608 ]
  %3642 = phi float [ %2812, %3511 ], [ %2812, %2996 ], [ %2812, %2798 ], [ %2812, %2815 ], [ %3548, %3539 ], [ %3574, %3566 ], [ %2812, %3606 ], [ %3616, %3608 ]
  %3643 = phi float [ %2813, %3511 ], [ %2813, %2996 ], [ %2813, %2798 ], [ %2813, %2815 ], [ %3554, %3539 ], [ %3599, %3566 ], [ %2813, %3606 ], [ %3621, %3608 ]
  %3644 = phi float [ %3519, %3511 ], [ %2814, %2996 ], [ %2814, %2798 ], [ %2814, %2815 ], [ %3519, %3539 ], [ %3519, %3566 ], [ %3519, %3606 ], [ %3519, %3608 ]
  %3645 = add i32 %57, 408
  %3646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.i32 %3646, 0
  %3648 = extractvalue %dx.types.ResRet.i32 %3646, 1
  %3649 = bitcast i32 %3647 to float
  %3650 = bitcast i32 %3648 to float
  %3651 = fcmp fast oge float %3649, 0.000000e+00
  %3652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3653 = extractvalue %dx.types.CBufRet.f32 %3652, 0
  %3654 = select i1 %3651, float %3649, float %3653
  %3655 = fadd fast float %3654, %206
  %3656 = fmul fast float %3650, %207
  %3657 = add i32 %57, 504
  %3658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3659 = extractvalue %dx.types.ResRet.i32 %3658, 0
  %3660 = add i32 %3659, 0
  %3661 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3660, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3662 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3661, %dx.types.Handle %110, float %95, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3663 = extractvalue %dx.types.ResRet.f32 %3662, 0
  %3664 = fmul fast float %3656, %3663
  %3665 = fadd fast float %3655, %3664
  %3666 = and i32 %198, 65535
  %3667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3666)  ; LegacyF16ToF32(value)
  %3668 = lshr i32 %198, 16
  %3669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3668)  ; LegacyF16ToF32(value)
  %3670 = and i32 %199, 65535
  %3671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3670)  ; LegacyF16ToF32(value)
  %3672 = fmul fast float %3667, %3631
  %3673 = fmul fast float %3669, %3632
  %3674 = fmul fast float %3671, %3633
  %3675 = shl i32 %200, 4
  %3676 = and i32 %3675, 32752
  %3677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3676)  ; LegacyF16ToF32(value)
  %3678 = lshr i32 %200, 7
  %3679 = and i32 %3678, 32752
  %3680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3679)  ; LegacyF16ToF32(value)
  %3681 = lshr i32 %200, 22
  %3682 = shl nuw nsw i32 %3681, 5
  %3683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3682)  ; LegacyF16ToF32(value)
  %3684 = and i32 %201, 65535
  %3685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3684)  ; LegacyF16ToF32(value)
  %3686 = fmul fast float %3677, %3637
  %3687 = fmul fast float %3686, %3685
  %3688 = fmul fast float %3680, %3638
  %3689 = fmul fast float %3688, %3685
  %3690 = fmul fast float %3683, %3639
  %3691 = fmul fast float %3690, %3685
  %3692 = call float @dx.op.dot2.f32(i32 54, float %3629, float %3630, float %3629, float %3630)  ; Dot2(ax,ay,bx,by)
  %3693 = fmul fast float %3692, 0x3FE3333340000000
  %3694 = fsub fast float 1.000000e+00, %3693
  %3695 = call float @dx.op.dot3.f32(i32 55, float %3629, float %3630, float %3694, float %3629, float %3630, float %3694)  ; Dot3(ax,ay,az,bx,by,bz)
  %3696 = call float @dx.op.unary.f32(i32 25, float %3695)  ; Rsqrt(value)
  %3697 = fmul fast float %3696, %3629
  %3698 = fmul fast float %3696, %3630
  %3699 = fmul fast float %3694, %3696
  %3700 = fmul fast float %3699, %120
  %3701 = fmul fast float %3699, %121
  %3702 = fmul fast float %3699, %122
  %3703 = fmul fast float %3697, %88
  %3704 = fmul fast float %3697, %89
  %3705 = fmul fast float %3697, %90
  %3706 = fadd fast float %3700, %3703
  %3707 = fadd fast float %3701, %3704
  %3708 = fadd fast float %3702, %3705
  %3709 = fmul fast float %132, %3698
  %3710 = fmul fast float %133, %3698
  %3711 = fmul fast float %134, %3698
  %3712 = fadd fast float %3706, %3709
  %3713 = fadd fast float %3707, %3710
  %3714 = fadd fast float %3708, %3711
  %3715 = call float @dx.op.dot3.f32(i32 55, float %3712, float %3713, float %3714, float %3712, float %3713, float %3714)  ; Dot3(ax,ay,az,bx,by,bz)
  %3716 = call float @dx.op.unary.f32(i32 25, float %3715)  ; Rsqrt(value)
  %3717 = fmul fast float %3712, %3716
  %3718 = fmul fast float %3713, %3716
  %3719 = fmul fast float %3714, %3716
  %3720 = icmp eq i32 %59, 65535
  br i1 %3720, label %4288, label %3721

; <label>:3721                                    ; preds = %3628
  %3722 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %3723 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %3724 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3725 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %3726 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %3727 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3728 = fadd fast float %3722, %60
  %3729 = fadd fast float %3723, %61
  %3730 = fadd fast float %3724, %62
  %3731 = fadd fast float %3725, %60
  %3732 = fadd fast float %3726, %61
  %3733 = fadd fast float %3727, %62
  %3734 = mul i32 %59, 48
  %3735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3734, i32 undef)  ; BufferLoad(srv,index,wot)
  %3736 = extractvalue %dx.types.ResRet.f32 %3735, 0
  %3737 = extractvalue %dx.types.ResRet.f32 %3735, 1
  %3738 = extractvalue %dx.types.ResRet.f32 %3735, 2
  %3739 = add i32 %3734, 16
  %3740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3741 = extractvalue %dx.types.ResRet.f32 %3740, 0
  %3742 = extractvalue %dx.types.ResRet.f32 %3740, 1
  %3743 = extractvalue %dx.types.ResRet.f32 %3740, 2
  %3744 = add i32 %3734, 32
  %3745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3746 = extractvalue %dx.types.ResRet.f32 %3745, 0
  %3747 = extractvalue %dx.types.ResRet.f32 %3745, 1
  %3748 = extractvalue %dx.types.ResRet.f32 %3745, 2
  %3749 = extractvalue %dx.types.ResRet.f32 %3745, 3
  %3750 = bitcast float %3749 to i32
  %3751 = fmul fast float %3736, %60
  %3752 = fmul fast float %3737, %61
  %3753 = fmul fast float %3738, %62
  %3754 = fsub fast float %3751, %3741
  %3755 = fsub fast float %3752, %3742
  %3756 = fsub fast float %3753, %3743
  %3757 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3758 = call float @dx.op.unary.f32(i32 7, float %3755)  ; Saturate(value)
  %3759 = call float @dx.op.unary.f32(i32 7, float %3756)  ; Saturate(value)
  %3760 = fmul fast float %3757, %3746
  %3761 = fmul fast float %3758, %3747
  %3762 = fmul fast float %3759, %3748
  %3763 = fadd fast float %3746, -1.000000e+00
  %3764 = fadd fast float %3747, -1.000000e+00
  %3765 = fadd fast float %3748, -1.000000e+00
  %3766 = call float @dx.op.unary.f32(i32 27, float %3760)  ; Round_ni(value)
  %3767 = call float @dx.op.unary.f32(i32 27, float %3761)  ; Round_ni(value)
  %3768 = call float @dx.op.unary.f32(i32 27, float %3762)  ; Round_ni(value)
  %3769 = call float @dx.op.binary.f32(i32 36, float %3766, float %3763)  ; FMin(a,b)
  %3770 = call float @dx.op.binary.f32(i32 36, float %3767, float %3764)  ; FMin(a,b)
  %3771 = call float @dx.op.binary.f32(i32 36, float %3768, float %3765)  ; FMin(a,b)
  %3772 = fmul fast float %3771, %3747
  %3773 = fadd fast float %3772, %3770
  %3774 = fmul fast float %3773, %3746
  %3775 = fadd fast float %3774, %3769
  %3776 = fptosi float %3775 to i32
  %3777 = add nsw i32 %3776, %3750
  %3778 = shl nsw i32 %3777, 2
  %3779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3778, i32 undef)  ; BufferLoad(srv,index,wot)
  %3780 = extractvalue %dx.types.ResRet.i32 %3779, 0
  %3781 = lshr i32 %3780, 16
  %3782 = icmp eq i32 %3781, 0
  br i1 %3782, label %4254, label %3783

; <label>:3783                                    ; preds = %3721
  br label %3784

; <label>:3784                                    ; preds = %3908, %3783
  %3785 = phi i32 [ %3810, %3908 ], [ %3781, %3783 ]
  %3786 = phi float [ %3909, %3908 ], [ 0.000000e+00, %3783 ]
  %3787 = phi float [ %3910, %3908 ], [ %3665, %3783 ]
  %3788 = phi float [ %3911, %3908 ], [ %3644, %3783 ]
  %3789 = phi float [ %3912, %3908 ], [ 0.000000e+00, %3783 ]
  %3790 = phi float [ %3913, %3908 ], [ 0.000000e+00, %3783 ]
  %3791 = phi float [ %3914, %3908 ], [ %3634, %3783 ]
  %3792 = phi float [ %3915, %3908 ], [ %3635, %3783 ]
  %3793 = phi float [ %3916, %3908 ], [ %3636, %3783 ]
  %3794 = phi float [ %3917, %3908 ], [ %3687, %3783 ]
  %3795 = phi float [ %3918, %3908 ], [ %3689, %3783 ]
  %3796 = phi float [ %3919, %3908 ], [ %3691, %3783 ]
  %3797 = phi float [ %3920, %3908 ], [ %3717, %3783 ]
  %3798 = phi float [ %3921, %3908 ], [ %3718, %3783 ]
  %3799 = phi float [ %3922, %3908 ], [ %3719, %3783 ]
  %3800 = phi float [ %3923, %3908 ], [ %3642, %3783 ]
  %3801 = phi float [ %3924, %3908 ], [ %3641, %3783 ]
  %3802 = phi float [ %3925, %3908 ], [ 0.000000e+00, %3783 ]
  %3803 = phi float [ %3926, %3908 ], [ %3640, %3783 ]
  %3804 = phi float [ %3927, %3908 ], [ %3672, %3783 ]
  %3805 = phi float [ %3928, %3908 ], [ %3673, %3783 ]
  %3806 = phi float [ %3929, %3908 ], [ %3674, %3783 ]
  %3807 = shl nuw nsw i32 %3785, 2
  %3808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3809 = extractvalue %dx.types.ResRet.i32 %3808, 0
  %3810 = lshr i32 %3809, 16
  %3811 = shl i32 %3809, 8
  %3812 = and i32 %3811, 16776960
  %3813 = or i32 %3812, 48
  %3814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3815 = extractvalue %dx.types.ResRet.f32 %3814, 0
  %3816 = extractvalue %dx.types.ResRet.f32 %3814, 1
  %3817 = extractvalue %dx.types.ResRet.f32 %3814, 2
  %3818 = or i32 %3812, 64
  %3819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3818, i32 undef)  ; BufferLoad(srv,index,wot)
  %3820 = extractvalue %dx.types.ResRet.i32 %3819, 0
  %3821 = extractvalue %dx.types.ResRet.i32 %3819, 1
  %3822 = or i32 %3812, 80
  %3823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.f32 %3823, 2
  %3825 = extractvalue %dx.types.ResRet.f32 %3823, 3
  %3826 = or i32 %3812, 96
  %3827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3828 = extractvalue %dx.types.ResRet.f32 %3827, 0
  %3829 = extractvalue %dx.types.ResRet.f32 %3827, 1
  %3830 = extractvalue %dx.types.ResRet.f32 %3827, 2
  %3831 = extractvalue %dx.types.ResRet.f32 %3827, 3
  %3832 = or i32 %3812, 112
  %3833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3834 = extractvalue %dx.types.ResRet.f32 %3833, 2
  %3835 = or i32 %3812, 128
  %3836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3835, i32 undef)  ; BufferLoad(srv,index,wot)
  %3837 = extractvalue %dx.types.ResRet.f32 %3836, 0
  %3838 = extractvalue %dx.types.ResRet.f32 %3836, 1
  %3839 = extractvalue %dx.types.ResRet.f32 %3836, 2
  %3840 = extractvalue %dx.types.ResRet.f32 %3836, 3
  %3841 = or i32 %3812, 144
  %3842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3841, i32 undef)  ; BufferLoad(srv,index,wot)
  %3843 = extractvalue %dx.types.ResRet.f32 %3842, 0
  %3844 = extractvalue %dx.types.ResRet.f32 %3842, 1
  %3845 = extractvalue %dx.types.ResRet.f32 %3842, 2
  %3846 = extractvalue %dx.types.ResRet.f32 %3842, 3
  %3847 = or i32 %3812, 160
  %3848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3849 = extractvalue %dx.types.ResRet.f32 %3848, 0
  %3850 = extractvalue %dx.types.ResRet.f32 %3848, 1
  %3851 = extractvalue %dx.types.ResRet.f32 %3848, 2
  %3852 = extractvalue %dx.types.ResRet.f32 %3848, 3
  %3853 = or i32 %3812, 192
  %3854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3855 = extractvalue %dx.types.ResRet.i32 %3854, 0
  %3856 = or i32 %3812, 208
  %3857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3858 = extractvalue %dx.types.ResRet.f32 %3857, 0
  %3859 = or i32 %3812, 248
  %3860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3859, i32 undef)  ; BufferLoad(srv,index,wot)
  %3861 = extractvalue %dx.types.ResRet.f32 %3860, 0
  %3862 = extractvalue %dx.types.ResRet.f32 %3860, 1
  %3863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3864 = extractvalue %dx.types.ResRet.f32 %3863, 0
  %3865 = extractvalue %dx.types.ResRet.f32 %3863, 1
  %3866 = extractvalue %dx.types.ResRet.f32 %3863, 2
  %3867 = extractvalue %dx.types.ResRet.f32 %3863, 3
  %3868 = call float @dx.op.dot4.f32(i32 56, float %3864, float %3865, float %3866, float %3867, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3869 = or i32 %3812, 16
  %3870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3869, i32 undef)  ; BufferLoad(srv,index,wot)
  %3871 = extractvalue %dx.types.ResRet.f32 %3870, 0
  %3872 = extractvalue %dx.types.ResRet.f32 %3870, 1
  %3873 = extractvalue %dx.types.ResRet.f32 %3870, 2
  %3874 = extractvalue %dx.types.ResRet.f32 %3870, 3
  %3875 = call float @dx.op.dot4.f32(i32 56, float %3871, float %3872, float %3873, float %3874, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3876 = or i32 %3812, 32
  %3877 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3878 = extractvalue %dx.types.ResRet.f32 %3877, 0
  %3879 = extractvalue %dx.types.ResRet.f32 %3877, 1
  %3880 = extractvalue %dx.types.ResRet.f32 %3877, 2
  %3881 = extractvalue %dx.types.ResRet.f32 %3877, 3
  %3882 = call float @dx.op.dot4.f32(i32 56, float %3878, float %3879, float %3880, float %3881, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3883 = call float @dx.op.unary.f32(i32 27, float %3868)  ; Round_ni(value)
  %3884 = call float @dx.op.unary.f32(i32 6, float %3883)  ; FAbs(value)
  %3885 = call float @dx.op.unary.f32(i32 27, float %3875)  ; Round_ni(value)
  %3886 = call float @dx.op.unary.f32(i32 6, float %3885)  ; FAbs(value)
  %3887 = call float @dx.op.unary.f32(i32 6, float %3882)  ; FAbs(value)
  %3888 = call float @dx.op.unary.f32(i32 27, float %3887)  ; Round_ni(value)
  %3889 = fadd fast float %3886, %3884
  %3890 = fadd fast float %3889, %3888
  %3891 = fcmp fast oeq float %3890, 0.000000e+00
  %3892 = call float @dx.op.dot4.f32(i32 56, float %3864, float %3865, float %3866, float %3867, float %3728, float %3729, float %3730, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3893 = call float @dx.op.dot4.f32(i32 56, float %3871, float %3872, float %3873, float %3874, float %3728, float %3729, float %3730, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3894 = call float @dx.op.dot4.f32(i32 56, float %3864, float %3865, float %3866, float %3867, float %3731, float %3732, float %3733, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3895 = call float @dx.op.dot4.f32(i32 56, float %3871, float %3872, float %3873, float %3874, float %3731, float %3732, float %3733, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3896 = fsub fast float %3892, %3868
  %3897 = fsub fast float %3894, %3868
  %3898 = fsub fast float %3893, %3875
  %3899 = fsub fast float %3895, %3875
  %3900 = call float @dx.op.dot3.f32(i32 55, float %3815, float %3816, float %3817, float %120, float %121, float %122)  ; Dot3(ax,ay,az,bx,by,bz)
  %3901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3902 = extractvalue %dx.types.CBufRet.f32 %3901, 2
  %3903 = fadd fast float %3902, %3900
  %3904 = call float @dx.op.unary.f32(i32 7, float %3903)  ; Saturate(value)
  %3905 = extractvalue %dx.types.CBufRet.f32 %3901, 0
  %3906 = fcmp fast ogt float %3904, %3905
  %3907 = and i1 %3891, %3906
  br i1 %3907, label %3931, label %3908

; <label>:3908                                    ; preds = %4240, %4014, %3931, %3784
  %3909 = phi float [ %3786, %3931 ], [ %4017, %4014 ], [ %4017, %4240 ], [ %3786, %3784 ]
  %3910 = phi float [ %3787, %3931 ], [ %3787, %4014 ], [ %4216, %4240 ], [ %3787, %3784 ]
  %3911 = phi float [ %3788, %3931 ], [ %3788, %4014 ], [ %4214, %4240 ], [ %3788, %3784 ]
  %3912 = phi float [ %3789, %3931 ], [ %3789, %4014 ], [ %4141, %4240 ], [ %3789, %3784 ]
  %3913 = phi float [ %3790, %3931 ], [ %3790, %4014 ], [ %4139, %4240 ], [ %3790, %3784 ]
  %3914 = phi float [ %3791, %3931 ], [ %3791, %4014 ], [ %4184, %4240 ], [ %3791, %3784 ]
  %3915 = phi float [ %3792, %3931 ], [ %3792, %4014 ], [ %4185, %4240 ], [ %3792, %3784 ]
  %3916 = phi float [ %3793, %3931 ], [ %3793, %4014 ], [ %4186, %4240 ], [ %3793, %3784 ]
  %3917 = phi float [ %3794, %3931 ], [ %3794, %4014 ], [ %4250, %4240 ], [ %3794, %3784 ]
  %3918 = phi float [ %3795, %3931 ], [ %3795, %4014 ], [ %4251, %4240 ], [ %3795, %3784 ]
  %3919 = phi float [ %3796, %3931 ], [ %3796, %4014 ], [ %4252, %4240 ], [ %3796, %3784 ]
  %3920 = phi float [ %3797, %3931 ], [ %3797, %4014 ], [ %4120, %4240 ], [ %3797, %3784 ]
  %3921 = phi float [ %3798, %3931 ], [ %3798, %4014 ], [ %4121, %4240 ], [ %3798, %3784 ]
  %3922 = phi float [ %3799, %3931 ], [ %3799, %4014 ], [ %4122, %4240 ], [ %3799, %3784 ]
  %3923 = phi float [ %3800, %3931 ], [ %3800, %4014 ], [ %4194, %4240 ], [ %3800, %3784 ]
  %3924 = phi float [ %3801, %3931 ], [ %3801, %4014 ], [ %4191, %4240 ], [ %3801, %3784 ]
  %3925 = phi float [ %3802, %3931 ], [ %3802, %4014 ], [ %4188, %4240 ], [ %3802, %3784 ]
  %3926 = phi float [ %3803, %3931 ], [ %3803, %4014 ], [ %4137, %4240 ], [ %3803, %3784 ]
  %3927 = phi float [ %3804, %3931 ], [ %3804, %4014 ], [ %4132, %4240 ], [ %3804, %3784 ]
  %3928 = phi float [ %3805, %3931 ], [ %3805, %4014 ], [ %4133, %4240 ], [ %3805, %3784 ]
  %3929 = phi float [ %3806, %3931 ], [ %3806, %4014 ], [ %4134, %4240 ], [ %3806, %3784 ]
  %3930 = icmp eq i32 %3810, 0
  br i1 %3930, label %4253, label %3784

; <label>:3931                                    ; preds = %3784
  %3932 = extractvalue %dx.types.ResRet.f32 %3814, 3
  %3933 = extractvalue %dx.types.ResRet.f32 %3833, 3
  %3934 = extractvalue %dx.types.ResRet.f32 %3833, 1
  %3935 = extractvalue %dx.types.ResRet.f32 %3833, 0
  %3936 = extractvalue %dx.types.ResRet.f32 %3823, 1
  %3937 = extractvalue %dx.types.ResRet.f32 %3823, 0
  %3938 = extractvalue %dx.types.ResRet.i32 %3819, 3
  %3939 = extractvalue %dx.types.ResRet.i32 %3819, 2
  %3940 = bitcast float %3932 to i32
  %3941 = add i32 %3938, 0
  %3942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3941, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3943 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3944 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3942, %dx.types.Handle %3943, float %3868, float %3875, float undef, float undef, i32 0, i32 0, i32 undef, float %3896, float %3898, float undef, float %3897, float %3899, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3945 = extractvalue %dx.types.ResRet.f32 %3944, 0
  %3946 = fmul fast float %3945, %3937
  %3947 = fadd fast float %3946, %3936
  %3948 = call float @dx.op.unary.f32(i32 7, float %3947)  ; Saturate(value)
  %3949 = fmul fast float %3868, %3828
  %3950 = call float @dx.op.tertiary.f32(i32 46, float %3829, float %3875, float %3949)  ; FMad(a,b,c)
  %3951 = fadd fast float %3950, %3935
  %3952 = fmul fast float %3868, %3830
  %3953 = call float @dx.op.tertiary.f32(i32 46, float %3831, float %3875, float %3952)  ; FMad(a,b,c)
  %3954 = fadd fast float %3953, %3934
  %3955 = fmul fast float %3896, %3828
  %3956 = call float @dx.op.tertiary.f32(i32 46, float %3829, float %3898, float %3955)  ; FMad(a,b,c)
  %3957 = fmul fast float %3896, %3830
  %3958 = call float @dx.op.tertiary.f32(i32 46, float %3831, float %3898, float %3957)  ; FMad(a,b,c)
  %3959 = fmul fast float %3897, %3828
  %3960 = call float @dx.op.tertiary.f32(i32 46, float %3829, float %3899, float %3959)  ; FMad(a,b,c)
  %3961 = fmul fast float %3897, %3830
  %3962 = call float @dx.op.tertiary.f32(i32 46, float %3831, float %3899, float %3961)  ; FMad(a,b,c)
  %3963 = add i32 %3939, 0
  %3964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3963, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3965 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3964, %dx.types.Handle %3943, float %3951, float %3954, float undef, float undef, i32 0, i32 0, i32 undef, float %3956, float %3958, float undef, float %3960, float %3962, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3966 = extractvalue %dx.types.ResRet.f32 %3965, 0
  %3967 = and i32 %3940, 1024
  %3968 = icmp ne i32 %3967, 0
  %3969 = fcmp fast ogt float %3966, 0x3FE0101020000000
  %3970 = uitofp i1 %3969 to float
  %3971 = select i1 %3968, float %3970, float %3966
  %3972 = and i32 %3940, 8192
  %3973 = icmp ne i32 %3972, 0
  %3974 = select i1 %3973, float %3933, float 1.000000e+00
  %3975 = fmul fast float %3868, 2.000000e+00
  %3976 = fadd fast float %3975, -1.000000e+00
  %3977 = call float @dx.op.unary.f32(i32 6, float %3976)  ; FAbs(value)
  %3978 = fmul fast float %3977, %3861
  %3979 = fsub fast float %3978, %3861
  %3980 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3981 = fmul fast float %3875, 2.000000e+00
  %3982 = fadd fast float %3981, -1.000000e+00
  %3983 = call float @dx.op.unary.f32(i32 6, float %3982)  ; FAbs(value)
  %3984 = fmul fast float %3983, %3862
  %3985 = fsub fast float %3984, %3862
  %3986 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3987 = fmul fast float %3887, %3824
  %3988 = fsub fast float %3987, %3824
  %3989 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  %3990 = fmul fast float %3948, %3974
  %3991 = fmul fast float %3990, %3945
  %3992 = fmul fast float %3991, %3980
  %3993 = fmul fast float %3992, %3971
  %3994 = fmul fast float %3993, %3986
  %3995 = fmul fast float %3994, %3989
  %3996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3997 = extractvalue %dx.types.CBufRet.f32 %3996, 1
  %3998 = extractvalue %dx.types.CBufRet.f32 %3996, 0
  %3999 = fsub fast float %3904, %3998
  %4000 = fmul fast float %3999, %3997
  %4001 = call float @dx.op.unary.f32(i32 7, float %4000)  ; Saturate(value)
  %4002 = fmul fast float %3995, %3825
  %4003 = fadd fast float %3995, %3825
  %4004 = fmul fast float %4003, %3834
  %4005 = fsub fast float %4004, %3834
  %4006 = call float @dx.op.unary.f32(i32 7, float %4005)  ; Saturate(value)
  %4007 = and i32 %3940, 128
  %4008 = icmp ne i32 %4007, 0
  %4009 = select i1 %4008, float %4006, float %4002
  %4010 = fmul fast float %4009, %4001
  %4011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4012 = extractvalue %dx.types.CBufRet.f32 %4011, 0
  %4013 = fcmp fast ugt float %4010, %4012
  br i1 %4013, label %4014, label %3908

; <label>:4014                                    ; preds = %3931
  %4015 = select i1 %3973, float %4010, float 0.000000e+00
  %4016 = fadd fast float %4015, %3786
  %4017 = call float @dx.op.unary.f32(i32 7, float %4016)  ; Saturate(value)
  br i1 %3973, label %3908, label %4018

; <label>:4018                                    ; preds = %4014
  %4019 = and i32 %3940, 4
  %4020 = and i32 %3940, 8
  %4021 = add i32 %3820, 0
  %4022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4021, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4023 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4024 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4022, %dx.types.Handle %4023, float %3951, float %3954, float undef, float undef, i32 0, i32 0, i32 undef, float %3956, float %3958, float undef, float %3960, float %3962, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4025 = extractvalue %dx.types.ResRet.f32 %4024, 0
  %4026 = extractvalue %dx.types.ResRet.f32 %4024, 1
  %4027 = extractvalue %dx.types.ResRet.f32 %4024, 2
  %4028 = extractvalue %dx.types.ResRet.f32 %4024, 3
  %4029 = bitcast float %3846 to i32
  %4030 = and i32 %4029, 255
  %4031 = uitofp i32 %4030 to float
  %4032 = lshr i32 %4029, 8
  %4033 = and i32 %4032, 255
  %4034 = uitofp i32 %4033 to float
  %4035 = fmul fast float %4028, %4031
  %4036 = fadd fast float %4035, %4034
  %4037 = fmul fast float %4036, 0x3F70101000000000
  %4038 = add i32 %3821, 0
  %4039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4038, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4040 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4039, %dx.types.Handle %4023, float %3951, float %3954, float undef, float undef, i32 0, i32 0, i32 undef, float %3956, float %3958, float undef, float %3960, float %3962, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4041 = extractvalue %dx.types.ResRet.f32 %4040, 0
  %4042 = extractvalue %dx.types.ResRet.f32 %4040, 1
  %4043 = extractvalue %dx.types.ResRet.f32 %4040, 2
  %4044 = extractvalue %dx.types.ResRet.f32 %4040, 3
  %4045 = bitcast float %3840 to i32
  %4046 = and i32 %4045, 255
  %4047 = uitofp i32 %4046 to float
  %4048 = lshr i32 %4045, 8
  %4049 = and i32 %4048, 255
  %4050 = uitofp i32 %4049 to float
  %4051 = lshr i32 %4045, 16
  %4052 = and i32 %4051, 255
  %4053 = uitofp i32 %4052 to float
  %4054 = fmul fast float %4053, 0x3F70101000000000
  %4055 = fmul fast float %4041, %4047
  %4056 = fadd fast float %4055, %4050
  %4057 = fmul fast float %4056, 0x3F70101000000000
  %4058 = fadd fast float %4042, -5.000000e-01
  %4059 = fadd fast float %4044, -5.000000e-01
  %4060 = fmul fast float %4058, %4054
  %4061 = fmul fast float %4059, %4054
  %4062 = fadd fast float %4060, 5.000000e-01
  %4063 = fadd fast float %4061, 5.000000e-01
  %4064 = fmul fast float %4025, %3849
  %4065 = fmul fast float %4026, %3850
  %4066 = fmul fast float %4027, %3851
  %4067 = fmul fast float %4062, 2.000000e+00
  %4068 = fadd fast float %4067, -1.000000e+00
  %4069 = fmul fast float %4063, 2.000000e+00
  %4070 = fadd fast float %4069, -1.000000e+00
  %4071 = fadd fast float %4068, %4070
  %4072 = fmul fast float %4071, 5.000000e-01
  %4073 = fsub fast float %4068, %4070
  %4074 = fmul fast float %4073, 5.000000e-01
  %4075 = call float @dx.op.unary.f32(i32 6, float %4072)  ; FAbs(value)
  %4076 = fsub fast float 1.000000e+00, %4075
  %4077 = call float @dx.op.unary.f32(i32 6, float %4074)  ; FAbs(value)
  %4078 = fsub fast float %4076, %4077
  %4079 = call float @dx.op.dot3.f32(i32 55, float %4072, float %4074, float %4078, float %4072, float %4074, float %4078)  ; Dot3(ax,ay,az,bx,by,bz)
  %4080 = call float @dx.op.unary.f32(i32 25, float %4079)  ; Rsqrt(value)
  %4081 = fmul fast float %4072, %4080
  %4082 = fmul fast float %4074, %4080
  %4083 = fmul fast float %4080, %4078
  %4084 = fmul fast float %4083, %3815
  %4085 = fmul fast float %4083, %3816
  %4086 = fmul fast float %4083, %3817
  %4087 = fmul fast float %4081, %3837
  %4088 = fmul fast float %4081, %3838
  %4089 = fmul fast float %4081, %3839
  %4090 = fadd fast float %4087, %4084
  %4091 = fadd fast float %4088, %4085
  %4092 = fadd fast float %4089, %4086
  %4093 = fmul fast float %4082, %3843
  %4094 = fmul fast float %4082, %3844
  %4095 = fmul fast float %4082, %3845
  %4096 = fadd fast float %4090, %4093
  %4097 = fadd fast float %4091, %4094
  %4098 = fadd fast float %4092, %4095
  %4099 = call float @dx.op.dot3.f32(i32 55, float %4096, float %4097, float %4098, float %4096, float %4097, float %4098)  ; Dot3(ax,ay,az,bx,by,bz)
  %4100 = call float @dx.op.unary.f32(i32 25, float %4099)  ; Rsqrt(value)
  %4101 = fmul fast float %4096, %4100
  %4102 = fmul fast float %4097, %4100
  %4103 = fmul fast float %4098, %4100
  %4104 = icmp ne i32 %4020, 0
  %4105 = select i1 %4104, float 1.000000e+00, float 0.000000e+00
  %4106 = fmul fast float %4010, %4105
  %4107 = and i32 %3940, 1
  %4108 = icmp eq i32 %4107, 0
  br i1 %4108, label %4109, label %4113

; <label>:4109                                    ; preds = %4018
  %4110 = fsub fast float %4101, %3797
  %4111 = fsub fast float %4102, %3798
  %4112 = fsub fast float %4103, %3799
  br label %4113

; <label>:4113                                    ; preds = %4109, %4018
  %4114 = phi float [ %4110, %4109 ], [ %4101, %4018 ]
  %4115 = phi float [ %4111, %4109 ], [ %4102, %4018 ]
  %4116 = phi float [ %4112, %4109 ], [ %4103, %4018 ]
  %4117 = fmul float %4116, %4106
  %4118 = fmul float %4115, %4106
  %4119 = fmul float %4114, %4106
  %4120 = fadd fast float %4119, %3797
  %4121 = fadd fast float %4118, %3798
  %4122 = fadd fast float %4117, %3799
  %4123 = icmp ne i32 %4019, 0
  %4124 = select i1 %4123, float 1.000000e+00, float 0.000000e+00
  %4125 = fmul fast float %4010, %4124
  %4126 = fsub fast float %4064, %3804
  %4127 = fsub fast float %4065, %3805
  %4128 = fsub fast float %4066, %3806
  %4129 = fmul fast float %4126, %4125
  %4130 = fmul fast float %4127, %4125
  %4131 = fmul fast float %4128, %4125
  %4132 = fadd fast float %4129, %3804
  %4133 = fadd fast float %4130, %3805
  %4134 = fadd fast float %4131, %3806
  %4135 = fsub fast float %4037, %3803
  %4136 = fmul fast float %4135, %4125
  %4137 = fadd fast float %4136, %3803
  %4138 = fmul fast float %4125, %3790
  %4139 = fsub fast float %3790, %4138
  %4140 = fmul fast float %4125, %3789
  %4141 = fsub fast float %3789, %4140
  %4142 = bitcast float %3858 to i32
  %4143 = lshr i32 %4142, 16
  %4144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4143)  ; LegacyF16ToF32(value)
  %4145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %4146 = extractvalue %dx.types.ResRet.i32 %4145, 0
  %4147 = and i32 %4146, 1
  %4148 = icmp eq i32 %4147, 0
  br i1 %4148, label %4149, label %4174

; <label>:4149                                    ; preds = %4113
  %4150 = fadd fast float %4037, 0xBFB99999A0000000
  %4151 = call float @dx.op.unary.f32(i32 7, float %4150)  ; Saturate(value)
  %4152 = fmul fast float %4151, 0x3FF1C71C80000000
  %4153 = fsub fast float 1.000000e+00, %4152
  %4154 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4155 = fmul fast float %4154, %4064
  %4156 = fmul fast float %4154, %4065
  %4157 = fmul fast float %4154, %4066
  %4158 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4159 = call float @dx.op.unary.f32(i32 7, float %4156)  ; Saturate(value)
  %4160 = call float @dx.op.unary.f32(i32 7, float %4157)  ; Saturate(value)
  %4161 = call float @dx.op.binary.f32(i32 35, float %4159, float %4160)  ; FMax(a,b)
  %4162 = call float @dx.op.binary.f32(i32 35, float %4158, float %4161)  ; FMax(a,b)
  %4163 = fcmp fast ogt float %4162, 0.000000e+00
  %4164 = bitcast float %4162 to i32
  %4165 = sub nsw i32 2129859010, %4164
  %4166 = bitcast i32 %4165 to float
  %4167 = select i1 %4163, float %4166, float 0.000000e+00
  %4168 = fmul fast float %4158, %4144
  %4169 = fmul fast float %4159, %4144
  %4170 = fmul fast float %4160, %4144
  %4171 = fmul fast float %4168, %4167
  %4172 = fmul fast float %4169, %4167
  %4173 = fmul fast float %4170, %4167
  br label %4174

; <label>:4174                                    ; preds = %4149, %4113
  %4175 = phi float [ %4144, %4113 ], [ %4171, %4149 ]
  %4176 = phi float [ %4144, %4113 ], [ %4172, %4149 ]
  %4177 = phi float [ %4144, %4113 ], [ %4173, %4149 ]
  %4178 = fsub fast float %4175, %3791
  %4179 = fsub fast float %4176, %3792
  %4180 = fsub fast float %4177, %3793
  %4181 = fmul fast float %4178, %4125
  %4182 = fmul fast float %4179, %4125
  %4183 = fmul fast float %4180, %4125
  %4184 = fadd fast float %4181, %3791
  %4185 = fadd fast float %4182, %3792
  %4186 = fadd fast float %4183, %3793
  %4187 = fadd fast float %4010, %3802
  %4188 = call float @dx.op.unary.f32(i32 7, float %4187)  ; Saturate(value)
  %4189 = fsub fast float %4057, %3801
  %4190 = fmul fast float %4189, %4106
  %4191 = fadd fast float %4190, %3801
  %4192 = fsub fast float %4043, %3800
  %4193 = fmul fast float %4192, %4106
  %4194 = fadd fast float %4193, %3800
  %4195 = call float @dx.op.dot3.f32(i32 55, float %4064, float %4065, float %4066, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.f32 %4196, 0
  %4198 = extractvalue %dx.types.CBufRet.f32 %4196, 1
  %4199 = fmul fast float %4198, %4195
  %4200 = fadd fast float %4199, %4197
  %4201 = call float @dx.op.unary.f32(i32 7, float %4200)  ; Saturate(value)
  %4202 = bitcast float %3852 to i32
  %4203 = and i32 %4202, 65535
  %4204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4203)  ; LegacyF16ToF32(value)
  %4205 = lshr i32 %4202, 16
  %4206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4205)  ; LegacyF16ToF32(value)
  %4207 = fcmp fast oge float %4204, 0.000000e+00
  %4208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4209 = extractvalue %dx.types.CBufRet.f32 %4208, 0
  %4210 = select i1 %4207, float %4204, float %4209
  %4211 = fadd fast float %4210, %4206
  %4212 = fsub fast float %4201, %3788
  %4213 = fmul fast float %4212, %4010
  %4214 = fadd fast float %4213, %3788
  %4215 = fmul fast float %4211, %4010
  %4216 = call float @dx.op.binary.f32(i32 35, float %3787, float %4215)  ; FMax(a,b)
  %4217 = and i32 %3940, 16
  %4218 = icmp eq i32 %4217, 0
  br i1 %4218, label %4240, label %4219

; <label>:4219                                    ; preds = %4174
  %4220 = add i32 %3855, 0
  %4221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4220, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4222 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4221, %dx.types.Handle %4023, float %3951, float %3954, float undef, float undef, i32 0, i32 0, i32 undef, float %3956, float %3958, float undef, float %3960, float %3962, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4223 = extractvalue %dx.types.ResRet.f32 %4222, 0
  %4224 = extractvalue %dx.types.ResRet.f32 %4222, 1
  %4225 = extractvalue %dx.types.ResRet.f32 %4222, 2
  %4226 = and i32 %4142, 65535
  %4227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4226)  ; LegacyF16ToF32(value)
  %4228 = fmul fast float %4223, %3849
  %4229 = fmul fast float %4224, %3850
  %4230 = fmul fast float %4225, %3851
  %4231 = and i32 %3940, 16384
  %4232 = icmp ne i32 %4231, 0
  %4233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4233, 0
  %4235 = select i1 %4232, float %4234, float 1.000000e+00
  %4236 = fmul fast float %4235, %4227
  %4237 = fmul fast float %4228, %4236
  %4238 = fmul fast float %4229, %4236
  %4239 = fmul fast float %4230, %4236
  br label %4240

; <label>:4240                                    ; preds = %4219, %4174
  %4241 = phi float [ %4237, %4219 ], [ 0.000000e+00, %4174 ]
  %4242 = phi float [ %4238, %4219 ], [ 0.000000e+00, %4174 ]
  %4243 = phi float [ %4239, %4219 ], [ 0.000000e+00, %4174 ]
  %4244 = fsub fast float %4241, %3794
  %4245 = fsub fast float %4242, %3795
  %4246 = fsub fast float %4243, %3796
  %4247 = fmul fast float %4244, %4010
  %4248 = fmul fast float %4245, %4010
  %4249 = fmul fast float %4246, %4010
  %4250 = fadd fast float %4247, %3794
  %4251 = fadd fast float %4248, %3795
  %4252 = fadd fast float %4249, %3796
  br label %3908

; <label>:4253                                    ; preds = %3908
  br label %4254

; <label>:4254                                    ; preds = %4253, %3721
  %4255 = phi float [ 0.000000e+00, %3721 ], [ %3909, %4253 ]
  %4256 = phi float [ %3665, %3721 ], [ %3910, %4253 ]
  %4257 = phi float [ %3644, %3721 ], [ %3911, %4253 ]
  %4258 = phi float [ 0.000000e+00, %3721 ], [ %3912, %4253 ]
  %4259 = phi float [ 0.000000e+00, %3721 ], [ %3913, %4253 ]
  %4260 = phi float [ %3634, %3721 ], [ %3914, %4253 ]
  %4261 = phi float [ %3635, %3721 ], [ %3915, %4253 ]
  %4262 = phi float [ %3636, %3721 ], [ %3916, %4253 ]
  %4263 = phi float [ %3687, %3721 ], [ %3917, %4253 ]
  %4264 = phi float [ %3689, %3721 ], [ %3918, %4253 ]
  %4265 = phi float [ %3691, %3721 ], [ %3919, %4253 ]
  %4266 = phi float [ %3717, %3721 ], [ %3920, %4253 ]
  %4267 = phi float [ %3718, %3721 ], [ %3921, %4253 ]
  %4268 = phi float [ %3719, %3721 ], [ %3922, %4253 ]
  %4269 = phi float [ %3642, %3721 ], [ %3923, %4253 ]
  %4270 = phi float [ %3641, %3721 ], [ %3924, %4253 ]
  %4271 = phi float [ 0.000000e+00, %3721 ], [ %3925, %4253 ]
  %4272 = phi float [ %3640, %3721 ], [ %3926, %4253 ]
  %4273 = phi float [ %3672, %3721 ], [ %3927, %4253 ]
  %4274 = phi float [ %3673, %3721 ], [ %3928, %4253 ]
  %4275 = phi float [ %3674, %3721 ], [ %3929, %4253 ]
  %4276 = call float @dx.op.dot3.f32(i32 55, float %4266, float %4267, float %4268, float %4266, float %4267, float %4268)  ; Dot3(ax,ay,az,bx,by,bz)
  %4277 = call float @dx.op.unary.f32(i32 25, float %4276)  ; Rsqrt(value)
  %4278 = fmul fast float %4277, %4266
  %4279 = fmul fast float %4277, %4267
  %4280 = fmul fast float %4277, %4268
  %4281 = fadd fast float %4271, %1150
  %4282 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4283 = call float @dx.op.dot3.f32(i32 55, float %4278, float %4279, float %4280, float %4278, float %4279, float %4280)  ; Dot3(ax,ay,az,bx,by,bz)
  %4284 = call float @dx.op.unary.f32(i32 25, float %4283)  ; Rsqrt(value)
  %4285 = fmul fast float %4284, %4278
  %4286 = fmul fast float %4284, %4279
  %4287 = fmul fast float %4284, %4280
  br label %4288

; <label>:4288                                    ; preds = %4254, %3628
  %4289 = phi float [ %4285, %4254 ], [ %3717, %3628 ]
  %4290 = phi float [ %4286, %4254 ], [ %3718, %3628 ]
  %4291 = phi float [ %4287, %4254 ], [ %3719, %3628 ]
  %4292 = phi float [ %4273, %4254 ], [ %3672, %3628 ]
  %4293 = phi float [ %4274, %4254 ], [ %3673, %3628 ]
  %4294 = phi float [ %4275, %4254 ], [ %3674, %3628 ]
  %4295 = phi float [ %4263, %4254 ], [ %3687, %3628 ]
  %4296 = phi float [ %4264, %4254 ], [ %3689, %3628 ]
  %4297 = phi float [ %4265, %4254 ], [ %3691, %3628 ]
  %4298 = phi float [ %4260, %4254 ], [ %3634, %3628 ]
  %4299 = phi float [ %4261, %4254 ], [ %3635, %3628 ]
  %4300 = phi float [ %4262, %4254 ], [ %3636, %3628 ]
  %4301 = phi float [ %4272, %4254 ], [ %3640, %3628 ]
  %4302 = phi float [ %4282, %4254 ], [ %1150, %3628 ]
  %4303 = phi float [ %4270, %4254 ], [ %3641, %3628 ]
  %4304 = phi float [ %4269, %4254 ], [ %3642, %3628 ]
  %4305 = phi float [ %4259, %4254 ], [ 0.000000e+00, %3628 ]
  %4306 = phi float [ %4258, %4254 ], [ 0.000000e+00, %3628 ]
  %4307 = phi float [ %4255, %4254 ], [ 0.000000e+00, %3628 ]
  %4308 = phi float [ %4256, %4254 ], [ %3665, %3628 ]
  %4309 = phi float [ %4257, %4254 ], [ %3644, %3628 ]
  %4310 = add i32 %57, 392
  %4311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %4310, i32 undef)  ; BufferLoad(srv,index,wot)
  %4312 = extractvalue %dx.types.ResRet.i32 %4311, 0
  %4313 = extractvalue %dx.types.ResRet.i32 %4311, 1
  %4314 = extractvalue %dx.types.ResRet.i32 %4311, 2
  %4315 = extractvalue %dx.types.ResRet.i32 %4311, 3
  %4316 = bitcast i32 %4312 to float
  %4317 = bitcast i32 %4313 to float
  %4318 = bitcast i32 %4314 to float
  %4319 = bitcast i32 %4315 to float
  %4320 = fsub fast float %4292, %4316
  %4321 = fsub fast float %4293, %4317
  %4322 = fsub fast float %4294, %4318
  %4323 = fmul fast float %4320, %239
  %4324 = fmul fast float %4321, %239
  %4325 = fmul fast float %4322, %239
  %4326 = fadd fast float %4323, %4316
  %4327 = fadd fast float %4324, %4317
  %4328 = fadd fast float %4325, %4318
  %4329 = fsub fast float %4302, %4319
  %4330 = fmul fast float %4329, %239
  %4331 = fadd fast float %4330, %4319
  %4332 = fadd fast float %4301, 0xBFB99999A0000000
  %4333 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4334 = fmul fast float %4333, 0x3FF1C71C80000000
  %4335 = call float @dx.op.binary.f32(i32 36, float %4301, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4336 = fsub fast float 1.000000e+00, %4334
  %4337 = call float @dx.op.unary.f32(i32 7, float %4336)  ; Saturate(value)
  %4338 = fmul fast float %4326, %4337
  %4339 = fmul fast float %4327, %4337
  %4340 = fmul fast float %4328, %4337
  %4341 = call float @dx.op.unary.f32(i32 7, float %4338)  ; Saturate(value)
  %4342 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  %4343 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4344 = fmul fast float %4326, %4334
  %4345 = fmul fast float %4327, %4334
  %4346 = fmul fast float %4328, %4334
  %4347 = fadd fast float %4344, %4335
  %4348 = fadd fast float %4345, %4335
  %4349 = fadd fast float %4346, %4335
  %4350 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4351 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4352 = call float @dx.op.unary.f32(i32 7, float %4349)  ; Saturate(value)
  %4353 = call float @dx.op.unary.f32(i32 7, float %4303)  ; Saturate(value)
  %4354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %4355 = extractvalue %dx.types.ResRet.i32 %4354, 0
  %4356 = and i32 %4355, 1
  %4357 = icmp eq i32 %4356, 0
  br i1 %4357, label %4372, label %4358

; <label>:4358                                    ; preds = %4288
  %4359 = call float @dx.op.binary.f32(i32 35, float %4342, float %4343)  ; FMax(a,b)
  %4360 = call float @dx.op.binary.f32(i32 35, float %4341, float %4359)  ; FMax(a,b)
  %4361 = fcmp fast ogt float %4360, 0.000000e+00
  %4362 = bitcast float %4360 to i32
  %4363 = sub nsw i32 2129859010, %4362
  %4364 = bitcast i32 %4363 to float
  %4365 = select i1 %4361, float %4364, float 0.000000e+00
  %4366 = fmul fast float %4341, %4298
  %4367 = fmul fast float %4342, %4299
  %4368 = fmul fast float %4343, %4300
  %4369 = fmul fast float %4366, %4365
  %4370 = fmul fast float %4367, %4365
  %4371 = fmul fast float %4368, %4365
  br label %4372

; <label>:4372                                    ; preds = %4358, %4288
  %4373 = phi float [ %4369, %4358 ], [ %4298, %4288 ]
  %4374 = phi float [ %4370, %4358 ], [ %4299, %4288 ]
  %4375 = phi float [ %4371, %4358 ], [ %4300, %4288 ]
  %4376 = fadd fast float %4341, 0xBFD51EB860000000
  %4377 = fadd fast float %4342, 0xBFD51EB860000000
  %4378 = fadd fast float %4343, 0xBFD51EB860000000
  %4379 = fmul fast float %4376, %4376
  %4380 = fmul fast float %4377, %4377
  %4381 = fmul fast float %4378, %4378
  %4382 = fmul fast float %4379, %4379
  %4383 = fmul fast float %4382, 1.000000e+02
  %4384 = fmul fast float %4380, %4380
  %4385 = fmul fast float %4384, 1.000000e+02
  %4386 = fmul fast float %4381, %4381
  %4387 = fmul fast float %4386, 1.000000e+02
  %4388 = fadd fast float %4383, 3.500000e+00
  %4389 = fadd fast float %4385, 3.500000e+00
  %4390 = fadd fast float %4387, 3.500000e+00
  %4391 = call float @dx.op.binary.f32(i32 35, float %4373, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4392 = call float @dx.op.binary.f32(i32 35, float %4374, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4393 = call float @dx.op.binary.f32(i32 35, float %4375, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4394 = fdiv fast float %4388, %4391
  %4395 = fdiv fast float %4389, %4392
  %4396 = fdiv fast float %4390, %4393
  %4397 = fmul fast float %3643, 0xBFF7154760000000
  %4398 = fmul fast float %4397, %4394
  %4399 = call float @dx.op.unary.f32(i32 21, float %4398)  ; Exp(value)
  %4400 = fmul fast float %4399, 2.500000e-01
  %4401 = fmul fast float %3643, 0xBFDEC709E0000000
  %4402 = fmul fast float %4401, %4394
  %4403 = call float @dx.op.unary.f32(i32 21, float %4402)  ; Exp(value)
  %4404 = fmul fast float %4403, 7.500000e-01
  %4405 = fmul fast float %4397, %4395
  %4406 = call float @dx.op.unary.f32(i32 21, float %4405)  ; Exp(value)
  %4407 = fmul fast float %4406, 2.500000e-01
  %4408 = fmul fast float %4401, %4395
  %4409 = call float @dx.op.unary.f32(i32 21, float %4408)  ; Exp(value)
  %4410 = fmul fast float %4409, 7.500000e-01
  %4411 = fmul fast float %4397, %4396
  %4412 = call float @dx.op.unary.f32(i32 21, float %4411)  ; Exp(value)
  %4413 = fmul fast float %4412, 2.500000e-01
  %4414 = fmul fast float %4401, %4396
  %4415 = call float @dx.op.unary.f32(i32 21, float %4414)  ; Exp(value)
  %4416 = fmul fast float %4415, 7.500000e-01
  %4417 = fadd fast float %4400, %4404
  %4418 = fadd fast float %4407, %4410
  %4419 = fadd fast float %4413, %4416
  %4420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4421 = extractvalue %dx.types.CBufRet.i32 %4420, 3
  %4422 = and i32 %4421, 8
  %4423 = icmp ne i32 %4422, 0
  %4424 = call float @dx.op.binary.f32(i32 35, float %4341, float %4326)  ; FMax(a,b)
  %4425 = call float @dx.op.binary.f32(i32 35, float %4342, float %4326)  ; FMax(a,b)
  %4426 = call float @dx.op.binary.f32(i32 35, float %4343, float %4326)  ; FMax(a,b)
  %4427 = call float @dx.op.dot3.f32(i32 55, float %4341, float %4342, float %4343, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4428 = select i1 %296, float %4326, float %4341
  %4429 = select i1 %296, float %4427, float %4342
  %4430 = select i1 %296, float 1.000000e+00, float %4343
  %4431 = select i1 %4423, float %4424, float %4428
  %4432 = select i1 %4423, float %4425, float %4429
  %4433 = select i1 %4423, float %4426, float %4430
  %4434 = call float @dx.op.dot3.f32(i32 55, float %4373, float %4374, float %4375, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4435 = select i1 %296, float %4434, float %4373
  %4436 = select i1 %296, float %4434, float %4374
  %4437 = select i1 %296, float %4434, float %4375
  %4438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4439 = extractvalue %dx.types.CBufRet.f32 %4438, 0
  %4440 = extractvalue %dx.types.CBufRet.f32 %4438, 1
  %4441 = extractvalue %dx.types.CBufRet.f32 %4438, 2
  %4442 = fadd fast float %4439, %192
  %4443 = fadd fast float %4440, %193
  %4444 = fadd fast float %4441, %194
  %4445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4446 = extractvalue %dx.types.CBufRet.f32 %4445, 0
  %4447 = extractvalue %dx.types.CBufRet.f32 %4445, 1
  %4448 = fsub fast float %4442, %4446
  %4449 = fsub fast float %4443, %4447
  %4450 = fmul fast float %4448, %4448
  %4451 = fmul fast float %4449, %4449
  %4452 = fadd fast float %4450, %4451
  %4453 = call float @dx.op.unary.f32(i32 24, float %4452)  ; Sqrt(value)
  %4454 = extractvalue %dx.types.CBufRet.f32 %4445, 2
  %4455 = fcmp fast olt float %4453, %4454
  br i1 %4455, label %4456, label %4523

; <label>:4456                                    ; preds = %4372
  %4457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4458 = extractvalue %dx.types.CBufRet.f32 %4457, 0
  %4459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4459, 0
  %4461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4462 = extractvalue %dx.types.CBufRet.f32 %4461, 0
  %4463 = extractvalue %dx.types.CBufRet.f32 %4457, 1
  %4464 = extractvalue %dx.types.CBufRet.f32 %4459, 1
  %4465 = extractvalue %dx.types.CBufRet.f32 %4461, 1
  %4466 = extractvalue %dx.types.CBufRet.f32 %4457, 3
  %4467 = extractvalue %dx.types.CBufRet.f32 %4459, 3
  %4468 = extractvalue %dx.types.CBufRet.f32 %4461, 3
  %4469 = fadd fast float %4466, %4442
  %4470 = fadd fast float %4467, %4443
  %4471 = fadd fast float %4468, %4444
  %4472 = fmul fast float %4469, %4458
  %4473 = call float @dx.op.tertiary.f32(i32 46, float %4470, float %4460, float %4472)  ; FMad(a,b,c)
  %4474 = call float @dx.op.tertiary.f32(i32 46, float %4471, float %4462, float %4473)  ; FMad(a,b,c)
  %4475 = fmul fast float %4469, %4463
  %4476 = call float @dx.op.tertiary.f32(i32 46, float %4470, float %4464, float %4475)  ; FMad(a,b,c)
  %4477 = call float @dx.op.tertiary.f32(i32 46, float %4471, float %4465, float %4476)  ; FMad(a,b,c)
  %4478 = fsub fast float %4474, %4466
  %4479 = fsub fast float %4477, %4467
  %4480 = fsub fast float %4478, %4446
  %4481 = fadd fast float %4480, %4454
  %4482 = fsub fast float %4479, %4447
  %4483 = fadd fast float %4482, %4454
  %4484 = extractvalue %dx.types.CBufRet.f32 %4445, 3
  %4485 = fmul fast float %4481, %4484
  %4486 = fmul fast float %4483, %4484
  %4487 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4488 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4489 = fsub fast float 1.000000e+00, %4487
  %4490 = fsub fast float 1.000000e+00, %4488
  %4491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %51, float %4489, float %4490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4492 = extractvalue %dx.types.ResRet.f32 %4491, 0
  %4493 = fcmp fast ugt float %4492, 0.000000e+00
  br i1 %4493, label %4494, label %4797

; <label>:4494                                    ; preds = %4456
  %4495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4496 = extractvalue %dx.types.CBufRet.f32 %4495, 2
  %4497 = fmul fast float %4496, %4492
  %4498 = extractvalue %dx.types.CBufRet.f32 %4495, 3
  %4499 = fadd fast float %4498, %4497
  %4500 = extractvalue %dx.types.CBufRet.f32 %4461, 2
  %4501 = fadd fast float %4499, %4468
  %4502 = fmul fast float %4474, %4462
  %4503 = call float @dx.op.tertiary.f32(i32 46, float %4477, float %4465, float %4502)  ; FMad(a,b,c)
  %4504 = call float @dx.op.tertiary.f32(i32 46, float %4501, float %4500, float %4503)  ; FMad(a,b,c)
  %4505 = fsub fast float %4504, %4468
  %4506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4507 = extractvalue %dx.types.CBufRet.f32 %4506, 2
  %4508 = fsub fast float %4505, %4507
  %4509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %51, float %4489, float %4490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4510 = extractvalue %dx.types.ResRet.f32 %4509, 0
  %4511 = extractvalue %dx.types.ResRet.f32 %4509, 1
  %4512 = extractvalue %dx.types.ResRet.f32 %4509, 2
  %4513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %51, float %4489, float %4490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4514 = extractvalue %dx.types.ResRet.f32 %4513, 0
  %4515 = extractvalue %dx.types.ResRet.f32 %4513, 1
  %4516 = extractvalue %dx.types.ResRet.f32 %4513, 2
  %4517 = fadd fast float %4514, %4510
  %4518 = fmul fast float %4517, 0x3F847AE140000000
  %4519 = fadd fast float %4515, %4511
  %4520 = fmul fast float %4519, 0x3F847AE140000000
  %4521 = fadd fast float %4516, %4512
  %4522 = fmul fast float %4521, 0x3F847AE140000000
  br label %4797

; <label>:4523                                    ; preds = %4372
  %4524 = and i32 %275, 1
  %4525 = icmp eq i32 %4524, 0
  br i1 %4525, label %4797, label %4526

; <label>:4526                                    ; preds = %4523
  %4527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4528 = extractvalue %dx.types.CBufRet.f32 %4527, 0
  %4529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4530 = extractvalue %dx.types.CBufRet.f32 %4529, 0
  %4531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4532 = extractvalue %dx.types.CBufRet.f32 %4531, 0
  %4533 = extractvalue %dx.types.CBufRet.f32 %4527, 1
  %4534 = extractvalue %dx.types.CBufRet.f32 %4529, 1
  %4535 = extractvalue %dx.types.CBufRet.f32 %4531, 1
  %4536 = extractvalue %dx.types.CBufRet.f32 %4527, 3
  %4537 = extractvalue %dx.types.CBufRet.f32 %4529, 3
  %4538 = extractvalue %dx.types.CBufRet.f32 %4531, 3
  %4539 = fadd fast float %4536, %4442
  %4540 = fadd fast float %4537, %4443
  %4541 = fadd fast float %4538, %4444
  %4542 = fmul fast float %4539, %4528
  %4543 = call float @dx.op.tertiary.f32(i32 46, float %4540, float %4530, float %4542)  ; FMad(a,b,c)
  %4544 = call float @dx.op.tertiary.f32(i32 46, float %4541, float %4532, float %4543)  ; FMad(a,b,c)
  %4545 = fmul fast float %4539, %4533
  %4546 = call float @dx.op.tertiary.f32(i32 46, float %4540, float %4534, float %4545)  ; FMad(a,b,c)
  %4547 = call float @dx.op.tertiary.f32(i32 46, float %4541, float %4535, float %4546)  ; FMad(a,b,c)
  %4548 = fsub fast float %4544, %4536
  %4549 = fsub fast float %4547, %4537
  %4550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4551 = extractvalue %dx.types.CBufRet.f32 %4550, 0
  %4552 = extractvalue %dx.types.CBufRet.f32 %4550, 1
  %4553 = extractvalue %dx.types.CBufRet.f32 %4550, 2
  %4554 = extractvalue %dx.types.CBufRet.f32 %4550, 3
  %4555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4556 = extractvalue %dx.types.CBufRet.f32 %4555, 3
  %4557 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4558 = extractvalue %dx.types.CBufRet.i32 %4557, 0
  %4559 = extractvalue %dx.types.CBufRet.i32 %4557, 1
  %4560 = udiv i32 %4559, %4558
  %4561 = fsub fast float %4548, %4551
  %4562 = fsub fast float %4549, %4552
  %4563 = call float @dx.op.binary.f32(i32 35, float %4561, float 0.000000e+00)  ; FMax(a,b)
  %4564 = call float @dx.op.binary.f32(i32 35, float %4562, float 0.000000e+00)  ; FMax(a,b)
  %4565 = call float @dx.op.binary.f32(i32 36, float %4563, float %4553)  ; FMin(a,b)
  %4566 = call float @dx.op.binary.f32(i32 36, float %4564, float %4554)  ; FMin(a,b)
  %4567 = add i32 %4558, -1
  %4568 = add i32 %4560, -1
  %4569 = fmul fast float %4565, %4556
  %4570 = fmul fast float %4566, %4556
  %4571 = fptoui float %4569 to i32
  %4572 = fptoui float %4570 to i32
  %4573 = call i32 @dx.op.binary.i32(i32 40, i32 %4571, i32 %4567)  ; UMin(a,b)
  %4574 = call i32 @dx.op.binary.i32(i32 40, i32 %4572, i32 %4568)  ; UMin(a,b)
  %4575 = mul i32 %4574, %4558
  %4576 = add i32 %4575, %4573
  %4577 = shl i32 %4576, 2
  %4578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4577, i32 undef)  ; BufferLoad(srv,index,wot)
  %4579 = extractvalue %dx.types.ResRet.i32 %4578, 0
  %4580 = icmp eq i32 %4579, -1
  br i1 %4580, label %4797, label %4581

; <label>:4581                                    ; preds = %4526
  %4582 = mul i32 %4579, 148
  %4583 = add i32 %4582, 4
  %4584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4583, i32 undef)  ; BufferLoad(srv,index,wot)
  %4585 = extractvalue %dx.types.ResRet.f32 %4584, 0
  %4586 = add i32 %4582, 8
  %4587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4586, i32 undef)  ; BufferLoad(srv,index,wot)
  %4588 = extractvalue %dx.types.ResRet.f32 %4587, 0
  %4589 = add i32 %4582, 36
  %4590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4589, i32 undef)  ; BufferLoad(srv,index,wot)
  %4591 = extractvalue %dx.types.ResRet.f32 %4590, 0
  %4592 = add i32 %4582, 60
  %4593 = add i32 %4582, 92
  %4594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4593, i32 undef)  ; BufferLoad(srv,index,wot)
  %4595 = extractvalue %dx.types.ResRet.i32 %4594, 0
  %4596 = add i32 %4582, 116
  %4597 = fsub fast float %4548, %4585
  %4598 = fsub fast float %4549, %4588
  %4599 = fmul fast float %4556, %4597
  %4600 = fmul fast float %4556, %4598
  %4601 = call float @dx.op.unary.f32(i32 7, float %4599)  ; Saturate(value)
  %4602 = call float @dx.op.unary.f32(i32 7, float %4600)  ; Saturate(value)
  %4603 = fsub fast float 1.000000e+00, %4602
  %4604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4605 = extractvalue %dx.types.CBufRet.f32 %4604, 2
  %4606 = call float @dx.op.unary.f32(i32 83, float %4601)  ; DerivCoarseX(value)
  %4607 = call float @dx.op.unary.f32(i32 83, float %4603)  ; DerivCoarseX(value)
  %4608 = call float @dx.op.unary.f32(i32 84, float %4601)  ; DerivCoarseY(value)
  %4609 = call float @dx.op.unary.f32(i32 84, float %4603)  ; DerivCoarseY(value)
  %4610 = fmul fast float %4606, %4605
  %4611 = fmul fast float %4607, %4605
  %4612 = fmul fast float %4608, %4605
  %4613 = fmul fast float %4609, %4605
  %4614 = call float @dx.op.dot2.f32(i32 54, float %4612, float %4613, float %4612, float %4613)  ; Dot2(ax,ay,bx,by)
  %4615 = call float @dx.op.dot2.f32(i32 54, float %4610, float %4611, float %4610, float %4611)  ; Dot2(ax,ay,bx,by)
  %4616 = call float @dx.op.binary.f32(i32 35, float %4615, float %4614)  ; FMax(a,b)
  %4617 = call float @dx.op.unary.f32(i32 23, float %4616)  ; Log(value)
  %4618 = fmul fast float %4617, 5.000000e-01
  %4619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4620 = extractvalue %dx.types.CBufRet.f32 %4619, 1
  %4621 = fadd fast float %4620, %4618
  %4622 = call float @dx.op.binary.f32(i32 35, float %4621, float 0.000000e+00)  ; FMax(a,b)
  %4623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4624 = extractvalue %dx.types.CBufRet.f32 %4623, 3
  %4625 = fadd fast float %4624, %4622
  %4626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4627 = extractvalue %dx.types.CBufRet.f32 %4626, 3
  %4628 = fadd fast float %4625, %4627
  %4629 = add i32 %4595, 0
  %4630 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4629, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4631 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4630, i32 0)  ; GetDimensions(handle,mipLevel)
  %4632 = extractvalue %dx.types.Dimensions %4631, 0
  %4633 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4632)  ; FirstbitLo(value)
  %4634 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4635 = extractvalue %dx.types.CBufRet.i32 %4634, 1
  %4636 = sub nsw i32 %4635, %4633
  %4637 = sitofp i32 %4636 to float
  %4638 = fsub fast float %4628, %4637
  %4639 = call float @dx.op.binary.f32(i32 35, float %4638, float 0.000000e+00)  ; FMax(a,b)
  %4640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4630, %dx.types.Handle %49, float %4601, float %4603, float %4591, float undef, i32 0, i32 0, i32 undef, float %4639)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4641 = extractvalue %dx.types.ResRet.f32 %4640, 0
  %4642 = fcmp ule float %4641, 0x3FE0101020000000
  %4643 = extractvalue %dx.types.CBufRet.i32 %4634, 0
  %4644 = and i32 %4643, 128
  %4645 = icmp ne i32 %4644, 0
  %4646 = and i1 %4642, %4645
  br i1 %4646, label %4797, label %4647

; <label>:4647                                    ; preds = %4581
  %4648 = add i32 %4582, 20
  %4649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4648, i32 undef)  ; BufferLoad(srv,index,wot)
  %4650 = extractvalue %dx.types.ResRet.f32 %4649, 0
  %4651 = add i32 %4582, 24
  %4652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4651, i32 undef)  ; BufferLoad(srv,index,wot)
  %4653 = extractvalue %dx.types.ResRet.f32 %4652, 0
  %4654 = add i32 %4582, 40
  %4655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4654, i32 undef)  ; BufferLoad(srv,index,wot)
  %4656 = extractvalue %dx.types.ResRet.f32 %4655, 0
  %4657 = add i32 %4582, 96
  %4658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4657, i32 undef)  ; BufferLoad(srv,index,wot)
  %4659 = extractvalue %dx.types.ResRet.i32 %4658, 0
  %4660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4661 = extractvalue %dx.types.CBufRet.f32 %4660, 2
  %4662 = fmul fast float %4661, %4601
  %4663 = fmul fast float %4661, %4603
  %4664 = extractvalue %dx.types.CBufRet.f32 %4660, 3
  %4665 = fadd fast float %4662, %4664
  %4666 = fadd fast float %4663, %4664
  %4667 = add i32 %4659, 0
  %4668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4667, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4669 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4668, i32 0)  ; GetDimensions(handle,mipLevel)
  %4670 = extractvalue %dx.types.Dimensions %4669, 0
  %4671 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4670)  ; FirstbitLo(value)
  %4672 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4673 = extractvalue %dx.types.CBufRet.i32 %4672, 1
  %4674 = sub nsw i32 %4673, %4671
  %4675 = sitofp i32 %4674 to float
  %4676 = fsub fast float %4625, %4675
  %4677 = call float @dx.op.binary.f32(i32 35, float %4676, float 0.000000e+00)  ; FMax(a,b)
  %4678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4668, %dx.types.Handle %49, float %4665, float %4666, float %4656, float undef, i32 0, i32 0, i32 undef, float %4677)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4679 = extractvalue %dx.types.ResRet.f32 %4678, 0
  %4680 = fmul fast float %4679, %4650
  %4681 = fadd fast float %4680, %4653
  %4682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4683 = extractvalue %dx.types.CBufRet.f32 %4682, 0
  %4684 = extractvalue %dx.types.CBufRet.f32 %4682, 1
  %4685 = extractvalue %dx.types.CBufRet.f32 %4682, 2
  %4686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4687 = extractvalue %dx.types.CBufRet.f32 %4686, 3
  %4688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4689 = extractvalue %dx.types.CBufRet.f32 %4688, 3
  %4690 = extractvalue %dx.types.CBufRet.f32 %4682, 3
  %4691 = fadd fast float %4687, %4548
  %4692 = fadd fast float %4689, %4549
  %4693 = fadd fast float %4681, %4690
  %4694 = fmul fast float %4691, %4683
  %4695 = call float @dx.op.tertiary.f32(i32 46, float %4692, float %4684, float %4694)  ; FMad(a,b,c)
  %4696 = call float @dx.op.tertiary.f32(i32 46, float %4693, float %4685, float %4695)  ; FMad(a,b,c)
  %4697 = fsub fast float %4696, %4690
  %4698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.f32 %4698, 2
  %4700 = fsub fast float %4697, %4699
  %4701 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4702 = extractvalue %dx.types.CBufRet.i32 %4701, 0
  %4703 = call i32 @dx.op.binary.i32(i32 40, i32 %4579, i32 %4702)  ; UMin(a,b)
  %4704 = mul i32 %4703, 36
  %4705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4704, i32 undef)  ; BufferLoad(srv,index,wot)
  %4706 = extractvalue %dx.types.ResRet.i32 %4705, 0
  %4707 = add i32 %4704, 4
  %4708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4709 = extractvalue %dx.types.CBufRet.f32 %4708, 0
  %4710 = fmul fast float %4709, %4601
  %4711 = fmul fast float %4709, %4603
  %4712 = extractvalue %dx.types.CBufRet.f32 %4708, 1
  %4713 = fadd fast float %4710, %4712
  %4714 = fadd fast float %4711, %4712
  %4715 = icmp eq i32 %4706, 0
  br i1 %4715, label %4784, label %4716

; <label>:4716                                    ; preds = %4647
  br label %4717

; <label>:4717                                    ; preds = %4774, %4716
  %4718 = phi float [ %4775, %4774 ], [ 0.000000e+00, %4716 ]
  %4719 = phi float [ %4776, %4774 ], [ 0.000000e+00, %4716 ]
  %4720 = phi float [ %4777, %4774 ], [ 0.000000e+00, %4716 ]
  %4721 = phi float [ %4778, %4774 ], [ 0.000000e+00, %4716 ]
  %4722 = phi float [ %4779, %4774 ], [ 0.000000e+00, %4716 ]
  %4723 = phi float [ %4780, %4774 ], [ 0.000000e+00, %4716 ]
  %4724 = phi i32 [ %4781, %4774 ], [ 0, %4716 ]
  %4725 = shl i32 %4724, 2
  %4726 = add i32 %4592, %4725
  %4727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4726, i32 undef)  ; BufferLoad(srv,index,wot)
  %4728 = extractvalue %dx.types.ResRet.f32 %4727, 0
  %4729 = add i32 %4596, %4725
  %4730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4729, i32 undef)  ; BufferLoad(srv,index,wot)
  %4731 = extractvalue %dx.types.ResRet.i32 %4730, 0
  %4732 = add i32 %4731, 0
  %4733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4732, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4734 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4733, i32 0)  ; GetDimensions(handle,mipLevel)
  %4735 = extractvalue %dx.types.Dimensions %4734, 0
  %4736 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4735)  ; FirstbitLo(value)
  %4737 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4738 = extractvalue %dx.types.CBufRet.i32 %4737, 1
  %4739 = sub nsw i32 %4738, %4736
  %4740 = sitofp i32 %4739 to float
  %4741 = fsub fast float %4625, %4740
  %4742 = call float @dx.op.binary.f32(i32 35, float %4741, float 0.000000e+00)  ; FMax(a,b)
  %4743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4733, %dx.types.Handle %49, float %4713, float %4714, float %4728, float undef, i32 0, i32 0, i32 undef, float %4742)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4744 = extractvalue %dx.types.ResRet.f32 %4743, 0
  %4745 = fcmp fast ogt float %4744, 0.000000e+00
  br i1 %4745, label %4746, label %4774

; <label>:4746                                    ; preds = %4717
  %4747 = add i32 %4707, %4725
  %4748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4747, i32 undef)  ; BufferLoad(srv,index,wot)
  %4749 = extractvalue %dx.types.ResRet.i32 %4748, 0
  %4750 = and i32 %4749, 32767
  %4751 = mul nuw nsw i32 %4750, 928
  %4752 = add nuw nsw i32 %4751, 48
  %4753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4752, i32 undef)  ; BufferLoad(srv,index,wot)
  %4754 = extractvalue %dx.types.ResRet.f32 %4753, 0
  %4755 = extractvalue %dx.types.ResRet.f32 %4753, 1
  %4756 = extractvalue %dx.types.ResRet.f32 %4753, 2
  %4757 = add nuw nsw i32 %4751, 60
  %4758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4757, i32 undef)  ; BufferLoad(srv,index,wot)
  %4759 = extractvalue %dx.types.ResRet.f32 %4758, 0
  %4760 = extractvalue %dx.types.ResRet.f32 %4758, 1
  %4761 = extractvalue %dx.types.ResRet.f32 %4758, 2
  %4762 = fmul fast float %4754, %4744
  %4763 = fmul fast float %4755, %4744
  %4764 = fmul fast float %4756, %4744
  %4765 = fadd fast float %4762, %4718
  %4766 = fadd fast float %4763, %4719
  %4767 = fadd fast float %4764, %4720
  %4768 = fmul fast float %4759, %4744
  %4769 = fmul fast float %4760, %4744
  %4770 = fmul fast float %4761, %4744
  %4771 = fadd fast float %4768, %4721
  %4772 = fadd fast float %4769, %4722
  %4773 = fadd fast float %4770, %4723
  br label %4774

; <label>:4774                                    ; preds = %4746, %4717
  %4775 = phi float [ %4765, %4746 ], [ %4718, %4717 ]
  %4776 = phi float [ %4766, %4746 ], [ %4719, %4717 ]
  %4777 = phi float [ %4767, %4746 ], [ %4720, %4717 ]
  %4778 = phi float [ %4771, %4746 ], [ %4721, %4717 ]
  %4779 = phi float [ %4772, %4746 ], [ %4722, %4717 ]
  %4780 = phi float [ %4773, %4746 ], [ %4723, %4717 ]
  %4781 = add nuw i32 %4724, 1
  %4782 = icmp eq i32 %4781, %4706
  br i1 %4782, label %4783, label %4717

; <label>:4783                                    ; preds = %4774
  br label %4784

; <label>:4784                                    ; preds = %4783, %4647
  %4785 = phi float [ 0.000000e+00, %4647 ], [ %4775, %4783 ]
  %4786 = phi float [ 0.000000e+00, %4647 ], [ %4776, %4783 ]
  %4787 = phi float [ 0.000000e+00, %4647 ], [ %4777, %4783 ]
  %4788 = phi float [ 0.000000e+00, %4647 ], [ %4778, %4783 ]
  %4789 = phi float [ 0.000000e+00, %4647 ], [ %4779, %4783 ]
  %4790 = phi float [ 0.000000e+00, %4647 ], [ %4780, %4783 ]
  %4791 = fadd fast float %4788, %4785
  %4792 = fmul fast float %4791, 0x3F847AE140000000
  %4793 = fadd fast float %4789, %4786
  %4794 = fmul fast float %4793, 0x3F847AE140000000
  %4795 = fadd fast float %4790, %4787
  %4796 = fmul fast float %4795, 0x3F847AE140000000
  br label %4797

; <label>:4797                                    ; preds = %4784, %4581, %4526, %4523, %4494, %4456
  %4798 = phi float [ %4508, %4494 ], [ -1.310720e+05, %4456 ], [ %4700, %4784 ], [ -1.310720e+05, %4526 ], [ -1.310720e+05, %4581 ], [ -1.310720e+05, %4523 ]
  %4799 = phi float [ %4518, %4494 ], [ 0.000000e+00, %4456 ], [ %4792, %4784 ], [ 0.000000e+00, %4526 ], [ 0.000000e+00, %4581 ], [ 0.000000e+00, %4523 ]
  %4800 = phi float [ %4520, %4494 ], [ 0.000000e+00, %4456 ], [ %4794, %4784 ], [ 0.000000e+00, %4526 ], [ 0.000000e+00, %4581 ], [ 0.000000e+00, %4523 ]
  %4801 = phi float [ %4522, %4494 ], [ 0.000000e+00, %4456 ], [ %4796, %4784 ], [ 0.000000e+00, %4526 ], [ 0.000000e+00, %4581 ], [ 0.000000e+00, %4523 ]
  %4802 = phi i1 [ true, %4494 ], [ false, %4456 ], [ true, %4784 ], [ false, %4526 ], [ false, %4581 ], [ false, %4523 ]
  %4803 = and i32 %275, 3
  %4804 = icmp eq i32 %4803, 1
  %4805 = select i1 %4804, float 1.000000e+00, float 0.000000e+00
  %4806 = fsub fast float %4798, %194
  %4807 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4808 = select i1 %4802, float %4807, float 1.000000e+00
  %4809 = fmul fast float %4808, %4805
  %4810 = icmp eq i32 %4803, 3
  %4811 = select i1 %4810, float 1.000000e+00, float %4809
  %4812 = call float @dx.op.binary.f32(i32 35, float %4307, float %4811)  ; FMax(a,b)
  %4813 = fcmp fast olt float %4811, 1.000000e+00
  %4814 = fcmp uge float %73, 0.000000e+00
  %4815 = and i1 %4814, %4813
  br i1 %4815, label %4816, label %4826

; <label>:4816                                    ; preds = %4797
  %4817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %49, float %73, float %74, float %75, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4818 = extractvalue %dx.types.ResRet.f32 %4817, 0
  %4819 = extractvalue %dx.types.ResRet.f32 %4817, 1
  %4820 = extractvalue %dx.types.ResRet.f32 %4817, 2
  %4821 = fadd fast float %4818, %4812
  %4822 = fcmp ule float %72, 0.000000e+00
  %4823 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4824 = select i1 %4822, float %4823, float 1.000000e+00
  %4825 = fmul fast float %4824, %4820
  br label %4826

; <label>:4826                                    ; preds = %4816, %4797
  %4827 = phi float [ %4821, %4816 ], [ %4812, %4797 ]
  %4828 = phi float [ %4819, %4816 ], [ 0.000000e+00, %4797 ]
  %4829 = phi float [ %4825, %4816 ], [ 0.000000e+00, %4797 ]
  %4830 = call float @dx.op.unary.f32(i32 7, float %4827)  ; Saturate(value)
  %4831 = call float @dx.op.unary.f32(i32 7, float %4828)  ; Saturate(value)
  %4832 = call float @dx.op.unary.f32(i32 7, float %4829)  ; Saturate(value)
  %4833 = fcmp fast une float %4831, 0.000000e+00
  %4834 = fcmp fast une float %4832, 0.000000e+00
  %4835 = or i1 %4833, %4834
  br i1 %4835, label %4836, label %5411

; <label>:4836                                    ; preds = %4826
  br i1 %4833, label %4837, label %5110

; <label>:4837                                    ; preds = %4836
  %4838 = call float @dx.op.unary.f32(i32 23, float %4304)  ; Log(value)
  %4839 = fmul fast float %4838, 4.000000e+00
  %4840 = call float @dx.op.unary.f32(i32 21, float %4839)  ; Exp(value)
  %4841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4842 = extractvalue %dx.types.CBufRet.f32 %4841, 0
  %4843 = fmul fast float %4842, %60
  %4844 = fmul fast float %4842, %61
  %4845 = fmul fast float %4842, %62
  %4846 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4847 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4848 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4849 = call float @dx.op.unary.f32(i32 23, float %4846)  ; Log(value)
  %4850 = call float @dx.op.unary.f32(i32 23, float %4847)  ; Log(value)
  %4851 = call float @dx.op.unary.f32(i32 23, float %4848)  ; Log(value)
  %4852 = fmul fast float %4849, 4.000000e+00
  %4853 = fmul fast float %4850, 4.000000e+00
  %4854 = fmul fast float %4851, 4.000000e+00
  %4855 = call float @dx.op.unary.f32(i32 21, float %4852)  ; Exp(value)
  %4856 = call float @dx.op.unary.f32(i32 21, float %4853)  ; Exp(value)
  %4857 = call float @dx.op.unary.f32(i32 21, float %4854)  ; Exp(value)
  %4858 = fadd fast float %4856, %4855
  %4859 = fadd fast float %4858, %4857
  %4860 = fdiv fast float 1.000000e+00, %4859
  %4861 = fmul fast float %4860, %4855
  %4862 = fcmp fast ogt float %69, 0.000000e+00
  %4863 = fcmp fast ogt float %70, 0.000000e+00
  %4864 = fcmp fast ogt float %71, 0.000000e+00
  %4865 = fcmp fast olt float %69, 0.000000e+00
  %4866 = fcmp fast olt float %70, 0.000000e+00
  %4867 = fcmp fast olt float %71, 0.000000e+00
  %4868 = zext i1 %4862 to i32
  %4869 = zext i1 %4863 to i32
  %4870 = zext i1 %4864 to i32
  %4871 = zext i1 %4865 to i32
  %4872 = zext i1 %4866 to i32
  %4873 = zext i1 %4867 to i32
  %4874 = sub nsw i32 %4868, %4871
  %4875 = sub nsw i32 %4869, %4872
  %4876 = sub nsw i32 %4870, %4873
  %4877 = call float @dx.op.unary.f32(i32 83, float %4843)  ; DerivCoarseX(value)
  %4878 = call float @dx.op.unary.f32(i32 83, float %4844)  ; DerivCoarseX(value)
  %4879 = call float @dx.op.unary.f32(i32 83, float %4845)  ; DerivCoarseX(value)
  %4880 = call float @dx.op.unary.f32(i32 84, float %4843)  ; DerivCoarseY(value)
  %4881 = call float @dx.op.unary.f32(i32 84, float %4844)  ; DerivCoarseY(value)
  %4882 = call float @dx.op.unary.f32(i32 84, float %4845)  ; DerivCoarseY(value)
  %4883 = fcmp fast ole float %309, %4861
  %4884 = fmul fast float %4860, %4858
  %4885 = fcmp fast ole float %309, %4884
  %4886 = select i1 %4885, float %4845, float %4843
  %4887 = select i1 %4885, float %4843, float %4844
  %4888 = select i1 %4883, float %4844, float %4886
  %4889 = select i1 %4883, float %4845, float %4887
  %4890 = select i1 %4885, float %4879, float %4877
  %4891 = select i1 %4885, float %4877, float %4878
  %4892 = select i1 %4883, float %4878, float %4890
  %4893 = select i1 %4883, float %4879, float %4891
  %4894 = select i1 %4885, float %4882, float %4880
  %4895 = select i1 %4885, float %4880, float %4881
  %4896 = select i1 %4883, float %4881, float %4894
  %4897 = select i1 %4883, float %4882, float %4895
  %4898 = call float @dx.op.unary.f32(i32 27, float %4888)  ; Round_ni(value)
  %4899 = call float @dx.op.unary.f32(i32 27, float %4889)  ; Round_ni(value)
  %4900 = fptosi float %4898 to i32
  %4901 = fptosi float %4899 to i32
  %4902 = xor i32 %4901, %4900
  %4903 = sitofp i32 %4902 to float
  %4904 = fptosi float %4903 to i32
  %4905 = sitofp i32 %4904 to float
  %4906 = fmul fast float %4905, 0x3FE3C6EF40000000
  %4907 = frem fast float %4898, 2.560000e+02
  %4908 = frem fast float %4899, 2.560000e+02
  %4909 = fptoui float %4907 to i32
  %4910 = fptoui float %4908 to i32
  %4911 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %4909, i32 %4910, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4912 = extractvalue %dx.types.ResRet.f32 %4911, 0
  %4913 = extractvalue %dx.types.ResRet.f32 %4911, 1
  %4914 = extractvalue %dx.types.ResRet.f32 %4911, 2
  %4915 = fadd fast float %4912, %4906
  %4916 = fadd fast float %4913, %4906
  %4917 = fadd fast float %4914, %4906
  %4918 = call float @dx.op.unary.f32(i32 22, float %4915)  ; Frc(value)
  %4919 = call float @dx.op.unary.f32(i32 22, float %4916)  ; Frc(value)
  %4920 = call float @dx.op.unary.f32(i32 22, float %4917)  ; Frc(value)
  %4921 = fmul fast float %4920, 0x401921FB60000000
  %4922 = call float @dx.op.unary.f32(i32 13, float %4921)  ; Sin(value)
  %4923 = call float @dx.op.unary.f32(i32 12, float %4921)  ; Cos(value)
  %4924 = fsub fast float -0.000000e+00, %4923
  %4925 = fmul fast float %4923, %4888
  %4926 = call float @dx.op.tertiary.f32(i32 46, float %4922, float %4889, float %4925)  ; FMad(a,b,c)
  %4927 = fmul fast float %4922, %4888
  %4928 = call float @dx.op.tertiary.f32(i32 46, float %4924, float %4889, float %4927)  ; FMad(a,b,c)
  %4929 = fadd fast float %4926, %4918
  %4930 = fadd fast float %4928, %4919
  %4931 = extractvalue %dx.types.CBufRet.f32 %4841, 3
  %4932 = bitcast float %4931 to i32
  %4933 = icmp eq i32 %4932, 0
  br i1 %4933, label %4972, label %4934

; <label>:4934                                    ; preds = %4837
  %4935 = add i32 %4932, 0
  %4936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4935, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4937 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4936, %dx.types.Handle %110, float %4929, float %4930, float undef, float undef, i32 0, i32 0, i32 undef, float %4892, float %4893, float undef, float %4896, float %4897, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4938 = extractvalue %dx.types.ResRet.f32 %4937, 0
  %4939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4940 = extractvalue %dx.types.CBufRet.f32 %4939, 1
  %4941 = extractvalue %dx.types.CBufRet.f32 %4939, 2
  %4942 = fsub fast float 1.000000e+00, %4831
  %4943 = call float @dx.op.binary.f32(i32 35, float %4942, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4944 = bitcast float %4831 to i32
  %4945 = sitofp i32 %4944 to float
  %4946 = fadd fast float %4945, 0xC1CFBF8940000000
  %4947 = fmul fast float %4941, %4946
  %4948 = fadd fast float %4947, 0x41CFBF8940000000
  %4949 = fptosi float %4948 to i32
  %4950 = bitcast i32 %4949 to float
  %4951 = bitcast float %4943 to i32
  %4952 = sitofp i32 %4951 to float
  %4953 = fadd fast float %4952, 0xC1CFBF8940000000
  %4954 = fmul fast float %4953, %4941
  %4955 = fadd fast float %4954, 0x41CFBF8940000000
  %4956 = fptosi float %4955 to i32
  %4957 = bitcast i32 %4956 to float
  %4958 = fmul fast float %4950, %4940
  %4959 = fmul fast float %4957, %4940
  %4960 = fsub fast float %4943, %4958
  %4961 = fadd fast float %4959, %4943
  %4962 = call float @dx.op.unary.f32(i32 7, float %4960)  ; Saturate(value)
  %4963 = call float @dx.op.unary.f32(i32 7, float %4961)  ; Saturate(value)
  %4964 = fsub fast float %4938, %4962
  %4965 = fsub fast float %4963, %4962
  %4966 = bitcast float %4965 to i32
  %4967 = sub nsw i32 2129859010, %4966
  %4968 = bitcast i32 %4967 to float
  %4969 = fmul fast float %4968, %4964
  %4970 = call float @dx.op.unary.f32(i32 7, float %4969)  ; Saturate(value)
  %4971 = fcmp fast olt float %4970, 0x3F70101020000000
  br i1 %4971, label %5110, label %4972

; <label>:4972                                    ; preds = %4934, %4837
  %4973 = phi float [ %4970, %4934 ], [ %4831, %4837 ]
  %4974 = fmul fast float %4973, %4840
  %4975 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4976 = extractvalue %dx.types.CBufRet.i32 %4975, 1
  %4977 = extractvalue %dx.types.CBufRet.i32 %4975, 0
  %4978 = add i32 %4977, 0
  %4979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4978, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4980 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4979, %dx.types.Handle %109, float %4929, float %4930, float undef, float undef, i32 0, i32 0, i32 undef, float %4892, float %4893, float undef, float %4896, float %4897, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4981 = extractvalue %dx.types.ResRet.f32 %4980, 0
  %4982 = extractvalue %dx.types.ResRet.f32 %4980, 1
  %4983 = extractvalue %dx.types.ResRet.f32 %4980, 2
  %4984 = extractvalue %dx.types.ResRet.f32 %4980, 3
  %4985 = and i32 %4976, 255
  %4986 = uitofp i32 %4985 to float
  %4987 = lshr i32 %4976, 8
  %4988 = and i32 %4987, 255
  %4989 = uitofp i32 %4988 to float
  %4990 = fmul fast float %4984, %4986
  %4991 = fadd fast float %4990, %4989
  %4992 = fmul fast float %4991, 0x3F70101000000000
  %4993 = fadd fast float %4992, 0xBFB99999A0000000
  %4994 = call float @dx.op.unary.f32(i32 7, float %4993)  ; Saturate(value)
  %4995 = fmul fast float %4994, 0x3FF1C71C80000000
  %4996 = call float @dx.op.binary.f32(i32 36, float %4992, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4997 = fsub fast float 1.000000e+00, %4995
  %4998 = call float @dx.op.unary.f32(i32 7, float %4997)  ; Saturate(value)
  %4999 = fmul fast float %4998, %4981
  %5000 = fmul fast float %4998, %4982
  %5001 = fmul fast float %4998, %4983
  %5002 = call float @dx.op.unary.f32(i32 7, float %4999)  ; Saturate(value)
  %5003 = call float @dx.op.unary.f32(i32 7, float %5000)  ; Saturate(value)
  %5004 = call float @dx.op.unary.f32(i32 7, float %5001)  ; Saturate(value)
  %5005 = fmul fast float %4995, %4981
  %5006 = fmul fast float %4995, %4982
  %5007 = fmul fast float %4995, %4983
  %5008 = fadd fast float %5005, %4996
  %5009 = fadd fast float %5006, %4996
  %5010 = fadd fast float %5007, %4996
  %5011 = call float @dx.op.unary.f32(i32 7, float %5008)  ; Saturate(value)
  %5012 = call float @dx.op.unary.f32(i32 7, float %5009)  ; Saturate(value)
  %5013 = call float @dx.op.unary.f32(i32 7, float %5010)  ; Saturate(value)
  %5014 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5015 = extractvalue %dx.types.CBufRet.i32 %5014, 3
  %5016 = extractvalue %dx.types.CBufRet.i32 %5014, 2
  %5017 = add i32 %5016, 0
  %5018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5017, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5019 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5018, %dx.types.Handle %109, float %4929, float %4930, float undef, float undef, i32 0, i32 0, i32 undef, float %4892, float %4893, float undef, float %4896, float %4897, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5020 = extractvalue %dx.types.ResRet.f32 %5019, 0
  %5021 = extractvalue %dx.types.ResRet.f32 %5019, 1
  %5022 = extractvalue %dx.types.ResRet.f32 %5019, 2
  %5023 = extractvalue %dx.types.ResRet.f32 %5019, 3
  %5024 = and i32 %5015, 255
  %5025 = uitofp i32 %5024 to float
  %5026 = lshr i32 %5015, 8
  %5027 = and i32 %5026, 255
  %5028 = uitofp i32 %5027 to float
  %5029 = lshr i32 %5015, 16
  %5030 = and i32 %5029, 255
  %5031 = uitofp i32 %5030 to float
  %5032 = fmul fast float %5031, 0x3F70101000000000
  %5033 = fmul fast float %5020, %5025
  %5034 = fadd fast float %5033, %5028
  %5035 = fmul fast float %5034, 0x3F70101000000000
  %5036 = fadd fast float %5021, -5.000000e-01
  %5037 = fadd fast float %5023, -5.000000e-01
  %5038 = fmul fast float %5036, %5032
  %5039 = fmul fast float %5037, %5032
  %5040 = fadd fast float %5038, 5.000000e-01
  %5041 = fadd fast float %5039, 5.000000e-01
  %5042 = fmul fast float %5040, 2.000000e+00
  %5043 = fadd fast float %5042, -1.000000e+00
  %5044 = fmul fast float %5041, 2.000000e+00
  %5045 = fadd fast float %5044, -1.000000e+00
  %5046 = fadd fast float %5043, %5045
  %5047 = fmul fast float %5046, 5.000000e-01
  %5048 = fsub fast float %5043, %5045
  %5049 = fmul fast float %5048, 5.000000e-01
  %5050 = call float @dx.op.unary.f32(i32 6, float %5047)  ; FAbs(value)
  %5051 = fsub fast float 1.000000e+00, %5050
  %5052 = call float @dx.op.unary.f32(i32 6, float %5049)  ; FAbs(value)
  %5053 = fsub fast float %5051, %5052
  %5054 = call float @dx.op.dot3.f32(i32 55, float %5047, float %5049, float %5053, float %5047, float %5049, float %5053)  ; Dot3(ax,ay,az,bx,by,bz)
  %5055 = call float @dx.op.unary.f32(i32 25, float %5054)  ; Rsqrt(value)
  %5056 = fmul fast float %5047, %5055
  %5057 = fmul fast float %5049, %5055
  %5058 = select i1 %4885, i32 %4875, i32 %4876
  %5059 = select i1 %4883, i32 %4874, i32 %5058
  %5060 = sitofp i32 %5059 to float
  %5061 = fmul fast float %5053, %5060
  %5062 = fmul fast float %5061, %5055
  %5063 = select i1 %4885, float %5062, float %5057
  %5064 = select i1 %4885, float %5057, float %5062
  %5065 = select i1 %4883, float %5062, float %5056
  %5066 = select i1 %4883, float %5057, float %5063
  %5067 = select i1 %4883, float %5056, float %5064
  %5068 = fsub fast float %5002, %4431
  %5069 = fsub fast float %5003, %4432
  %5070 = fsub fast float %5004, %4433
  %5071 = fmul fast float %5068, %4974
  %5072 = fmul fast float %5069, %4974
  %5073 = fmul fast float %5070, %4974
  %5074 = fadd fast float %5071, %4431
  %5075 = fadd fast float %5072, %4432
  %5076 = fadd fast float %5073, %4433
  %5077 = fsub fast float %5011, %4350
  %5078 = fsub fast float %5012, %4351
  %5079 = fsub fast float %5013, %4352
  %5080 = fmul fast float %5077, %4974
  %5081 = fmul fast float %5078, %4974
  %5082 = fmul fast float %5079, %4974
  %5083 = fadd fast float %5080, %4350
  %5084 = fadd fast float %5081, %4351
  %5085 = fadd fast float %5082, %4352
  %5086 = fadd fast float %5065, %4289
  %5087 = fadd fast float %5066, %4290
  %5088 = fadd fast float %5067, %4291
  %5089 = call float @dx.op.dot3.f32(i32 55, float %5086, float %5087, float %5088, float %5086, float %5087, float %5088)  ; Dot3(ax,ay,az,bx,by,bz)
  %5090 = call float @dx.op.unary.f32(i32 25, float %5089)  ; Rsqrt(value)
  %5091 = fmul fast float %5086, %5090
  %5092 = fmul fast float %5087, %5090
  %5093 = fmul fast float %5088, %5090
  %5094 = fsub fast float %5091, %4289
  %5095 = fsub fast float %5092, %4290
  %5096 = fsub fast float %5093, %4291
  %5097 = fmul fast float %5094, %4974
  %5098 = fmul fast float %5095, %4974
  %5099 = fmul fast float %5096, %4974
  %5100 = fadd fast float %5097, %4289
  %5101 = fadd fast float %5098, %4290
  %5102 = fadd fast float %5099, %4291
  %5103 = call float @dx.op.binary.f32(i32 36, float %4304, float %5022)  ; FMin(a,b)
  %5104 = fsub fast float %5103, %4304
  %5105 = fmul fast float %5104, %4974
  %5106 = fadd fast float %5105, %4304
  %5107 = fsub fast float %5035, %4353
  %5108 = fmul fast float %5107, %4974
  %5109 = fadd fast float %5108, %4353
  br label %5110

; <label>:5110                                    ; preds = %4972, %4934, %4836
  %5111 = phi float [ %5100, %4972 ], [ %4289, %4934 ], [ %4289, %4836 ]
  %5112 = phi float [ %5101, %4972 ], [ %4290, %4934 ], [ %4290, %4836 ]
  %5113 = phi float [ %5102, %4972 ], [ %4291, %4934 ], [ %4291, %4836 ]
  %5114 = phi float [ %5074, %4972 ], [ %4431, %4934 ], [ %4431, %4836 ]
  %5115 = phi float [ %5075, %4972 ], [ %4432, %4934 ], [ %4432, %4836 ]
  %5116 = phi float [ %5076, %4972 ], [ %4433, %4934 ], [ %4433, %4836 ]
  %5117 = phi float [ %5083, %4972 ], [ %4350, %4934 ], [ %4350, %4836 ]
  %5118 = phi float [ %5084, %4972 ], [ %4351, %4934 ], [ %4351, %4836 ]
  %5119 = phi float [ %5085, %4972 ], [ %4352, %4934 ], [ %4352, %4836 ]
  %5120 = phi float [ %5109, %4972 ], [ %4353, %4934 ], [ %4353, %4836 ]
  %5121 = phi float [ %5106, %4972 ], [ %4304, %4934 ], [ %4304, %4836 ]
  br i1 %4834, label %5122, label %5411

; <label>:5122                                    ; preds = %5110
  %5123 = call float @dx.op.unary.f32(i32 23, float %5121)  ; Log(value)
  %5124 = fmul fast float %5123, 4.000000e+00
  %5125 = call float @dx.op.unary.f32(i32 21, float %5124)  ; Exp(value)
  %5126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5127 = extractvalue %dx.types.CBufRet.f32 %5126, 0
  %5128 = fmul fast float %5127, %60
  %5129 = fmul fast float %5127, %61
  %5130 = fmul fast float %5127, %62
  %5131 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %5132 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %5133 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5134 = call float @dx.op.unary.f32(i32 23, float %5131)  ; Log(value)
  %5135 = call float @dx.op.unary.f32(i32 23, float %5132)  ; Log(value)
  %5136 = call float @dx.op.unary.f32(i32 23, float %5133)  ; Log(value)
  %5137 = fmul fast float %5134, 4.000000e+00
  %5138 = fmul fast float %5135, 4.000000e+00
  %5139 = fmul fast float %5136, 4.000000e+00
  %5140 = call float @dx.op.unary.f32(i32 21, float %5137)  ; Exp(value)
  %5141 = call float @dx.op.unary.f32(i32 21, float %5138)  ; Exp(value)
  %5142 = call float @dx.op.unary.f32(i32 21, float %5139)  ; Exp(value)
  %5143 = fadd fast float %5141, %5140
  %5144 = fadd fast float %5143, %5142
  %5145 = fdiv fast float 1.000000e+00, %5144
  %5146 = fmul fast float %5145, %5140
  %5147 = fcmp fast ogt float %69, 0.000000e+00
  %5148 = fcmp fast ogt float %70, 0.000000e+00
  %5149 = fcmp fast ogt float %71, 0.000000e+00
  %5150 = fcmp fast olt float %69, 0.000000e+00
  %5151 = fcmp fast olt float %70, 0.000000e+00
  %5152 = fcmp fast olt float %71, 0.000000e+00
  %5153 = zext i1 %5147 to i32
  %5154 = zext i1 %5148 to i32
  %5155 = zext i1 %5149 to i32
  %5156 = zext i1 %5150 to i32
  %5157 = zext i1 %5151 to i32
  %5158 = zext i1 %5152 to i32
  %5159 = sub nsw i32 %5153, %5156
  %5160 = sub nsw i32 %5154, %5157
  %5161 = sub nsw i32 %5155, %5158
  %5162 = call float @dx.op.unary.f32(i32 83, float %5128)  ; DerivCoarseX(value)
  %5163 = call float @dx.op.unary.f32(i32 83, float %5129)  ; DerivCoarseX(value)
  %5164 = call float @dx.op.unary.f32(i32 83, float %5130)  ; DerivCoarseX(value)
  %5165 = call float @dx.op.unary.f32(i32 84, float %5128)  ; DerivCoarseY(value)
  %5166 = call float @dx.op.unary.f32(i32 84, float %5129)  ; DerivCoarseY(value)
  %5167 = call float @dx.op.unary.f32(i32 84, float %5130)  ; DerivCoarseY(value)
  %5168 = fcmp fast ole float %309, %5146
  %5169 = fmul fast float %5145, %5143
  %5170 = fcmp fast ole float %309, %5169
  %5171 = select i1 %5170, float %5130, float %5128
  %5172 = select i1 %5170, float %5128, float %5129
  %5173 = select i1 %5168, float %5129, float %5171
  %5174 = select i1 %5168, float %5130, float %5172
  %5175 = select i1 %5170, float %5164, float %5162
  %5176 = select i1 %5170, float %5162, float %5163
  %5177 = select i1 %5168, float %5163, float %5175
  %5178 = select i1 %5168, float %5164, float %5176
  %5179 = select i1 %5170, float %5167, float %5165
  %5180 = select i1 %5170, float %5165, float %5166
  %5181 = select i1 %5168, float %5166, float %5179
  %5182 = select i1 %5168, float %5167, float %5180
  %5183 = call float @dx.op.unary.f32(i32 27, float %5173)  ; Round_ni(value)
  %5184 = call float @dx.op.unary.f32(i32 27, float %5174)  ; Round_ni(value)
  %5185 = fptosi float %5183 to i32
  %5186 = fptosi float %5184 to i32
  %5187 = xor i32 %5186, %5185
  %5188 = sitofp i32 %5187 to float
  %5189 = fptosi float %5188 to i32
  %5190 = sitofp i32 %5189 to float
  %5191 = fmul fast float %5190, 0x3FE3C6EF40000000
  %5192 = frem fast float %5183, 2.560000e+02
  %5193 = frem fast float %5184, 2.560000e+02
  %5194 = fptoui float %5192 to i32
  %5195 = fptoui float %5193 to i32
  %5196 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %5194, i32 %5195, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5197 = extractvalue %dx.types.ResRet.f32 %5196, 0
  %5198 = extractvalue %dx.types.ResRet.f32 %5196, 1
  %5199 = extractvalue %dx.types.ResRet.f32 %5196, 2
  %5200 = fadd fast float %5197, %5191
  %5201 = fadd fast float %5198, %5191
  %5202 = fadd fast float %5199, %5191
  %5203 = call float @dx.op.unary.f32(i32 22, float %5200)  ; Frc(value)
  %5204 = call float @dx.op.unary.f32(i32 22, float %5201)  ; Frc(value)
  %5205 = call float @dx.op.unary.f32(i32 22, float %5202)  ; Frc(value)
  %5206 = fmul fast float %5205, 0x401921FB60000000
  %5207 = call float @dx.op.unary.f32(i32 13, float %5206)  ; Sin(value)
  %5208 = call float @dx.op.unary.f32(i32 12, float %5206)  ; Cos(value)
  %5209 = fsub fast float -0.000000e+00, %5208
  %5210 = fmul fast float %5208, %5173
  %5211 = call float @dx.op.tertiary.f32(i32 46, float %5207, float %5174, float %5210)  ; FMad(a,b,c)
  %5212 = fmul fast float %5207, %5173
  %5213 = call float @dx.op.tertiary.f32(i32 46, float %5209, float %5174, float %5212)  ; FMad(a,b,c)
  %5214 = fadd fast float %5211, %5203
  %5215 = fadd fast float %5213, %5204
  %5216 = extractvalue %dx.types.CBufRet.f32 %5126, 3
  %5217 = bitcast float %5216 to i32
  %5218 = icmp eq i32 %5217, 0
  br i1 %5218, label %5257, label %5219

; <label>:5219                                    ; preds = %5122
  %5220 = add i32 %5217, 0
  %5221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5222 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5221, %dx.types.Handle %110, float %5214, float %5215, float undef, float undef, i32 0, i32 0, i32 undef, float %5177, float %5178, float undef, float %5181, float %5182, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5223 = extractvalue %dx.types.ResRet.f32 %5222, 0
  %5224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5225 = extractvalue %dx.types.CBufRet.f32 %5224, 1
  %5226 = extractvalue %dx.types.CBufRet.f32 %5224, 2
  %5227 = fsub fast float 1.000000e+00, %4832
  %5228 = call float @dx.op.binary.f32(i32 35, float %5227, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5229 = bitcast float %4832 to i32
  %5230 = sitofp i32 %5229 to float
  %5231 = fadd fast float %5230, 0xC1CFBF8940000000
  %5232 = fmul fast float %5226, %5231
  %5233 = fadd fast float %5232, 0x41CFBF8940000000
  %5234 = fptosi float %5233 to i32
  %5235 = bitcast i32 %5234 to float
  %5236 = bitcast float %5228 to i32
  %5237 = sitofp i32 %5236 to float
  %5238 = fadd fast float %5237, 0xC1CFBF8940000000
  %5239 = fmul fast float %5238, %5226
  %5240 = fadd fast float %5239, 0x41CFBF8940000000
  %5241 = fptosi float %5240 to i32
  %5242 = bitcast i32 %5241 to float
  %5243 = fmul fast float %5235, %5225
  %5244 = fmul fast float %5242, %5225
  %5245 = fsub fast float %5228, %5243
  %5246 = fadd fast float %5244, %5228
  %5247 = call float @dx.op.unary.f32(i32 7, float %5245)  ; Saturate(value)
  %5248 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5249 = fsub fast float %5223, %5247
  %5250 = fsub fast float %5248, %5247
  %5251 = bitcast float %5250 to i32
  %5252 = sub nsw i32 2129859010, %5251
  %5253 = bitcast i32 %5252 to float
  %5254 = fmul fast float %5253, %5249
  %5255 = call float @dx.op.unary.f32(i32 7, float %5254)  ; Saturate(value)
  %5256 = fcmp fast olt float %5255, 0x3F70101020000000
  br i1 %5256, label %5411, label %5257

; <label>:5257                                    ; preds = %5219, %5122
  %5258 = phi float [ %5255, %5219 ], [ %4832, %5122 ]
  %5259 = fmul fast float %5258, %5125
  %5260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5261 = extractvalue %dx.types.CBufRet.i32 %5260, 1
  %5262 = extractvalue %dx.types.CBufRet.i32 %5260, 0
  %5263 = add i32 %5262, 0
  %5264 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5263, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5265 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5264, %dx.types.Handle %109, float %5214, float %5215, float undef, float undef, i32 0, i32 0, i32 undef, float %5177, float %5178, float undef, float %5181, float %5182, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5266 = extractvalue %dx.types.ResRet.f32 %5265, 0
  %5267 = extractvalue %dx.types.ResRet.f32 %5265, 1
  %5268 = extractvalue %dx.types.ResRet.f32 %5265, 2
  %5269 = extractvalue %dx.types.ResRet.f32 %5265, 3
  %5270 = and i32 %5261, 255
  %5271 = uitofp i32 %5270 to float
  %5272 = lshr i32 %5261, 8
  %5273 = and i32 %5272, 255
  %5274 = uitofp i32 %5273 to float
  %5275 = fmul fast float %5269, %5271
  %5276 = fadd fast float %5275, %5274
  %5277 = fmul fast float %5276, 0x3F70101000000000
  %5278 = fadd fast float %5277, 0xBFB99999A0000000
  %5279 = call float @dx.op.unary.f32(i32 7, float %5278)  ; Saturate(value)
  %5280 = fmul fast float %5279, 0x3FF1C71C80000000
  %5281 = call float @dx.op.binary.f32(i32 36, float %5277, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5282 = fsub fast float 1.000000e+00, %5280
  %5283 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5284 = fmul fast float %5283, %5266
  %5285 = fmul fast float %5283, %5267
  %5286 = fmul fast float %5283, %5268
  %5287 = call float @dx.op.unary.f32(i32 7, float %5284)  ; Saturate(value)
  %5288 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5289 = call float @dx.op.unary.f32(i32 7, float %5286)  ; Saturate(value)
  %5290 = fmul fast float %5280, %5266
  %5291 = fmul fast float %5280, %5267
  %5292 = fmul fast float %5280, %5268
  %5293 = fadd fast float %5290, %5281
  %5294 = fadd fast float %5291, %5281
  %5295 = fadd fast float %5292, %5281
  %5296 = call float @dx.op.unary.f32(i32 7, float %5293)  ; Saturate(value)
  %5297 = call float @dx.op.unary.f32(i32 7, float %5294)  ; Saturate(value)
  %5298 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5300 = extractvalue %dx.types.CBufRet.i32 %5299, 3
  %5301 = extractvalue %dx.types.CBufRet.i32 %5299, 2
  %5302 = add i32 %5301, 0
  %5303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5302, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5304 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5303, %dx.types.Handle %109, float %5214, float %5215, float undef, float undef, i32 0, i32 0, i32 undef, float %5177, float %5178, float undef, float %5181, float %5182, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5305 = extractvalue %dx.types.ResRet.f32 %5304, 0
  %5306 = extractvalue %dx.types.ResRet.f32 %5304, 1
  %5307 = extractvalue %dx.types.ResRet.f32 %5304, 2
  %5308 = extractvalue %dx.types.ResRet.f32 %5304, 3
  %5309 = and i32 %5300, 255
  %5310 = uitofp i32 %5309 to float
  %5311 = lshr i32 %5300, 8
  %5312 = and i32 %5311, 255
  %5313 = uitofp i32 %5312 to float
  %5314 = lshr i32 %5300, 16
  %5315 = and i32 %5314, 255
  %5316 = uitofp i32 %5315 to float
  %5317 = fmul fast float %5316, 0x3F70101000000000
  %5318 = fmul fast float %5305, %5310
  %5319 = fadd fast float %5318, %5313
  %5320 = fmul fast float %5319, 0x3F70101000000000
  %5321 = fadd fast float %5306, -5.000000e-01
  %5322 = fadd fast float %5308, -5.000000e-01
  %5323 = fmul fast float %5321, %5317
  %5324 = fmul fast float %5322, %5317
  %5325 = fadd fast float %5323, 5.000000e-01
  %5326 = fadd fast float %5324, 5.000000e-01
  %5327 = fmul fast float %5325, 2.000000e+00
  %5328 = fadd fast float %5327, -1.000000e+00
  %5329 = fmul fast float %5326, 2.000000e+00
  %5330 = fadd fast float %5329, -1.000000e+00
  %5331 = fadd fast float %5328, %5330
  %5332 = fmul fast float %5331, 5.000000e-01
  %5333 = fsub fast float %5328, %5330
  %5334 = fmul fast float %5333, 5.000000e-01
  %5335 = call float @dx.op.unary.f32(i32 6, float %5332)  ; FAbs(value)
  %5336 = fsub fast float 1.000000e+00, %5335
  %5337 = call float @dx.op.unary.f32(i32 6, float %5334)  ; FAbs(value)
  %5338 = fsub fast float %5336, %5337
  %5339 = call float @dx.op.dot3.f32(i32 55, float %5332, float %5334, float %5338, float %5332, float %5334, float %5338)  ; Dot3(ax,ay,az,bx,by,bz)
  %5340 = call float @dx.op.unary.f32(i32 25, float %5339)  ; Rsqrt(value)
  %5341 = fmul fast float %5332, %5340
  %5342 = fmul fast float %5334, %5340
  %5343 = select i1 %5170, i32 %5160, i32 %5161
  %5344 = select i1 %5168, i32 %5159, i32 %5343
  %5345 = sitofp i32 %5344 to float
  %5346 = fmul fast float %5338, %5345
  %5347 = fmul fast float %5346, %5340
  %5348 = select i1 %5170, float %5347, float %5342
  %5349 = select i1 %5170, float %5342, float %5347
  %5350 = select i1 %5168, float %5347, float %5341
  %5351 = select i1 %5168, float %5342, float %5348
  %5352 = select i1 %5168, float %5341, float %5349
  %5353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5354 = extractvalue %dx.types.CBufRet.f32 %5353, 0
  %5355 = fptoui float %5354 to i32
  %5356 = add i32 %5355, 0
  %5357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5356, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5358 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5357, %dx.types.Handle %109, float %5214, float %5215, float undef, float undef, i32 0, i32 0, i32 undef, float %5177, float %5178, float undef, float %5181, float %5182, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5359 = extractvalue %dx.types.ResRet.f32 %5358, 0
  %5360 = fsub fast float %5287, %5114
  %5361 = fsub fast float %5288, %5115
  %5362 = fsub fast float %5289, %5116
  %5363 = fmul fast float %5360, %5259
  %5364 = fmul fast float %5361, %5259
  %5365 = fmul fast float %5362, %5259
  %5366 = fadd fast float %5363, %5114
  %5367 = fadd fast float %5364, %5115
  %5368 = fadd fast float %5365, %5116
  %5369 = fsub fast float %5296, %5117
  %5370 = fsub fast float %5297, %5118
  %5371 = fsub fast float %5298, %5119
  %5372 = fmul fast float %5369, %5259
  %5373 = fmul fast float %5370, %5259
  %5374 = fmul fast float %5371, %5259
  %5375 = fadd fast float %5372, %5117
  %5376 = fadd fast float %5373, %5118
  %5377 = fadd fast float %5374, %5119
  %5378 = fadd fast float %5350, %5111
  %5379 = fadd fast float %5351, %5112
  %5380 = fadd fast float %5352, %5113
  %5381 = call float @dx.op.dot3.f32(i32 55, float %5378, float %5379, float %5380, float %5378, float %5379, float %5380)  ; Dot3(ax,ay,az,bx,by,bz)
  %5382 = call float @dx.op.unary.f32(i32 25, float %5381)  ; Rsqrt(value)
  %5383 = fmul fast float %5382, %5378
  %5384 = fmul fast float %5382, %5379
  %5385 = fmul fast float %5382, %5380
  %5386 = fsub fast float %5383, %5111
  %5387 = fsub fast float %5384, %5112
  %5388 = fsub fast float %5385, %5113
  %5389 = fmul fast float %5386, %5259
  %5390 = fmul fast float %5387, %5259
  %5391 = fmul fast float %5388, %5259
  %5392 = fadd fast float %5389, %5111
  %5393 = fadd fast float %5390, %5112
  %5394 = fadd fast float %5391, %5113
  %5395 = call float @dx.op.binary.f32(i32 36, float %5121, float %5307)  ; FMin(a,b)
  %5396 = fsub fast float %5395, %5121
  %5397 = fmul fast float %5396, %5259
  %5398 = fadd fast float %5397, %5121
  %5399 = fsub fast float %5320, %5120
  %5400 = fmul fast float %5399, %5259
  %5401 = fadd fast float %5400, %5120
  %5402 = fsub fast float %5359, %4435
  %5403 = fsub fast float %5359, %4436
  %5404 = fsub fast float %5359, %4437
  %5405 = fmul fast float %5402, %5259
  %5406 = fmul fast float %5403, %5259
  %5407 = fmul fast float %5404, %5259
  %5408 = fadd fast float %5405, %4435
  %5409 = fadd fast float %5406, %4436
  %5410 = fadd fast float %5407, %4437
  br label %5411

; <label>:5411                                    ; preds = %5257, %5219, %5110, %4826
  %5412 = phi float [ %5392, %5257 ], [ %5111, %5219 ], [ %5111, %5110 ], [ %4289, %4826 ]
  %5413 = phi float [ %5393, %5257 ], [ %5112, %5219 ], [ %5112, %5110 ], [ %4290, %4826 ]
  %5414 = phi float [ %5394, %5257 ], [ %5113, %5219 ], [ %5113, %5110 ], [ %4291, %4826 ]
  %5415 = phi float [ %5408, %5257 ], [ %4435, %5219 ], [ %4435, %5110 ], [ %4435, %4826 ]
  %5416 = phi float [ %5409, %5257 ], [ %4436, %5219 ], [ %4436, %5110 ], [ %4436, %4826 ]
  %5417 = phi float [ %5410, %5257 ], [ %4437, %5219 ], [ %4437, %5110 ], [ %4437, %4826 ]
  %5418 = phi float [ %5366, %5257 ], [ %5114, %5219 ], [ %5114, %5110 ], [ %4431, %4826 ]
  %5419 = phi float [ %5367, %5257 ], [ %5115, %5219 ], [ %5115, %5110 ], [ %4432, %4826 ]
  %5420 = phi float [ %5368, %5257 ], [ %5116, %5219 ], [ %5116, %5110 ], [ %4433, %4826 ]
  %5421 = phi float [ %5375, %5257 ], [ %5117, %5219 ], [ %5117, %5110 ], [ %4350, %4826 ]
  %5422 = phi float [ %5376, %5257 ], [ %5118, %5219 ], [ %5118, %5110 ], [ %4351, %4826 ]
  %5423 = phi float [ %5377, %5257 ], [ %5119, %5219 ], [ %5119, %5110 ], [ %4352, %4826 ]
  %5424 = phi float [ %5401, %5257 ], [ %5120, %5219 ], [ %5120, %5110 ], [ %4353, %4826 ]
  %5425 = phi float [ %5398, %5257 ], [ %5121, %5219 ], [ %5121, %5110 ], [ %4304, %4826 ]
  %5426 = fcmp fast une float %4830, 0.000000e+00
  %5427 = fsub fast float -0.000000e+00, %225
  %5428 = fsub fast float -0.000000e+00, %226
  %5429 = fsub fast float -0.000000e+00, %227
  br i1 %5426, label %5430, label %5591

; <label>:5430                                    ; preds = %5411
  %5431 = call float @dx.op.dot3.f32(i32 55, float %5427, float %5428, float %5429, float %120, float %121, float %122)  ; Dot3(ax,ay,az,bx,by,bz)
  %5432 = fmul fast float %4830, 2.500000e+00
  %5433 = call float @dx.op.unary.f32(i32 7, float %5432)  ; Saturate(value)
  %5434 = fmul fast float %4830, 0x4013FFFFE0000000
  %5435 = fadd fast float %5434, 0xBFFFFFFFE0000000
  %5436 = call float @dx.op.unary.f32(i32 7, float %5435)  ; Saturate(value)
  %5437 = fmul fast float %4830, 0x4004000020000000
  %5438 = fadd fast float %5437, 0xBFF8000040000000
  %5439 = call float @dx.op.unary.f32(i32 7, float %5438)  ; Saturate(value)
  %5440 = fmul fast float %4332, 1.000000e+01
  %5441 = call float @dx.op.unary.f32(i32 7, float %5440)  ; Saturate(value)
  %5442 = fmul fast float %5441, 2.000000e+00
  %5443 = fsub fast float 3.000000e+00, %5442
  %5444 = fmul fast float %5441, %5441
  %5445 = fmul fast float %5444, %5443
  %5446 = fsub fast float 1.000000e+00, %5445
  %5447 = fsub fast float 0x3FE3333340000000, %5424
  %5448 = fmul fast float %5447, 0x400AAAAAA0000000
  %5449 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  %5450 = fmul fast float %5446, %5449
  %5451 = fmul fast float %5418, 0x3FEA2B8620000000
  %5452 = fmul fast float %5419, 0x3FEA2B8620000000
  %5453 = fmul fast float %5420, 0x3FEA2B8620000000
  %5454 = fadd fast float %5451, 0x3FC81DFBA0000000
  %5455 = fmul fast float %5454, %5418
  %5456 = fadd fast float %5455, 0x3F910E6020000000
  %5457 = fadd fast float %5452, 0x3FC81DFBA0000000
  %5458 = fmul fast float %5457, %5419
  %5459 = fadd fast float %5458, 0x3F910E6020000000
  %5460 = fadd fast float %5453, 0x3FC81DFBA0000000
  %5461 = fmul fast float %5460, %5420
  %5462 = fadd fast float %5461, 0x3F910E6020000000
  %5463 = call float @dx.op.unary.f32(i32 7, float %5456)  ; Saturate(value)
  %5464 = call float @dx.op.unary.f32(i32 7, float %5459)  ; Saturate(value)
  %5465 = call float @dx.op.unary.f32(i32 7, float %5462)  ; Saturate(value)
  %5466 = fsub fast float %5463, %5418
  %5467 = fsub fast float %5464, %5419
  %5468 = fsub fast float %5465, %5420
  %5469 = fmul fast float %5466, %5433
  %5470 = fmul fast float %5469, %5450
  %5471 = fmul fast float %5467, %5433
  %5472 = fmul fast float %5471, %5450
  %5473 = fmul fast float %5468, %5433
  %5474 = fmul fast float %5473, %5450
  %5475 = fadd fast float %5470, %5418
  %5476 = fadd fast float %5472, %5419
  %5477 = fadd fast float %5474, %5420
  %5478 = fmul fast float %5425, %5425
  %5479 = fmul fast float %5478, %5478
  %5480 = fadd fast float %5436, 1.000000e+00
  %5481 = fsub fast float %5480, %5450
  %5482 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5483 = call float @dx.op.dot3.f32(i32 55, float %120, float %121, float %122, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5484 = call float @dx.op.unary.f32(i32 7, float %5483)  ; Saturate(value)
  %5485 = fsub fast float 1.000000e+00, %5479
  %5486 = call float @dx.op.binary.f32(i32 36, float %5482, float %5485)  ; FMin(a,b)
  %5487 = call float @dx.op.unary.f32(i32 7, float %5439)  ; Saturate(value)
  %5488 = call float @dx.op.binary.f32(i32 35, float %5486, float %5487)  ; FMax(a,b)
  %5489 = fadd fast float %5484, 0xBFE4CCCCC0000000
  %5490 = fmul fast float %5489, 0x4006DB6DA0000000
  %5491 = call float @dx.op.unary.f32(i32 7, float %5490)  ; Saturate(value)
  %5492 = fmul fast float %5491, 2.000000e+00
  %5493 = fsub fast float 3.000000e+00, %5492
  %5494 = bitcast float %5421 to i32
  %5495 = ashr i32 %5494, 1
  %5496 = add nsw i32 %5495, 532487669
  %5497 = bitcast i32 %5496 to float
  %5498 = fsub fast float 1.000000e+00, %5497
  %5499 = bitcast float %5498 to i32
  %5500 = sub nsw i32 2129859010, %5499
  %5501 = bitcast i32 %5500 to float
  %5502 = fmul fast float %5501, 2.000000e+00
  %5503 = bitcast float %5422 to i32
  %5504 = ashr i32 %5503, 1
  %5505 = add nsw i32 %5504, 532487669
  %5506 = bitcast i32 %5505 to float
  %5507 = fsub fast float 1.000000e+00, %5506
  %5508 = bitcast float %5507 to i32
  %5509 = sub nsw i32 2129859010, %5508
  %5510 = bitcast i32 %5509 to float
  %5511 = fmul fast float %5510, 2.000000e+00
  %5512 = bitcast float %5423 to i32
  %5513 = ashr i32 %5512, 1
  %5514 = add nsw i32 %5513, 532487669
  %5515 = bitcast i32 %5514 to float
  %5516 = fsub fast float 1.000000e+00, %5515
  %5517 = bitcast float %5516 to i32
  %5518 = sub nsw i32 2129859010, %5517
  %5519 = bitcast i32 %5518 to float
  %5520 = fmul fast float %5519, 2.000000e+00
  %5521 = fsub fast float 0x4002A9FBE0000000, %5502
  %5522 = fadd fast float %5502, 0x3FD54FDF00000000
  %5523 = bitcast float %5522 to i32
  %5524 = sub nsw i32 2129859010, %5523
  %5525 = bitcast i32 %5524 to float
  %5526 = fmul fast float %5525, %5521
  %5527 = fmul fast float %5526, %5526
  %5528 = fsub fast float 0x4002A9FBE0000000, %5511
  %5529 = fadd fast float %5511, 0x3FD54FDF00000000
  %5530 = bitcast float %5529 to i32
  %5531 = sub nsw i32 2129859010, %5530
  %5532 = bitcast i32 %5531 to float
  %5533 = fmul fast float %5532, %5528
  %5534 = fmul fast float %5533, %5533
  %5535 = fsub fast float 0x4002A9FBE0000000, %5520
  %5536 = fadd fast float %5520, 0x3FD54FDF00000000
  %5537 = bitcast float %5536 to i32
  %5538 = sub nsw i32 2129859010, %5537
  %5539 = bitcast i32 %5538 to float
  %5540 = fmul fast float %5539, %5535
  %5541 = fmul fast float %5540, %5540
  %5542 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5527)  ; FMax(a,b)
  %5543 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5534)  ; FMax(a,b)
  %5544 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5541)  ; FMax(a,b)
  %5545 = fsub fast float 1.000000e+00, %5431
  %5546 = fadd fast float %5545, %5446
  %5547 = call float @dx.op.unary.f32(i32 7, float %5546)  ; Saturate(value)
  %5548 = fsub fast float 1.000000e+00, %4811
  %5549 = fmul fast float %5488, %5548
  %5550 = fmul fast float %5491, %5491
  %5551 = fmul fast float %5550, %5549
  %5552 = fmul fast float %5551, %5493
  %5553 = fmul fast float %5548, 0xBFE99999A0000000
  %5554 = fmul fast float %5553, %5433
  %5555 = fmul fast float %5554, %5450
  %5556 = fadd fast float %5555, 1.000000e+00
  %5557 = fadd fast float %5424, -1.000000e+00
  %5558 = fmul fast float %5556, %5557
  %5559 = fadd fast float %5558, 1.000000e+00
  %5560 = fsub fast float %5542, %5421
  %5561 = fsub fast float %5543, %5422
  %5562 = fsub fast float %5544, %5423
  %5563 = fmul fast float %5552, %5560
  %5564 = fmul fast float %5552, %5561
  %5565 = fmul fast float %5552, %5562
  %5566 = fadd fast float %5563, %5421
  %5567 = fadd fast float %5564, %5422
  %5568 = fadd fast float %5565, %5423
  %5569 = fsub fast float %120, %5412
  %5570 = fsub fast float %121, %5413
  %5571 = fsub fast float %122, %5414
  %5572 = fmul fast float %5552, %5569
  %5573 = fmul fast float %5552, %5570
  %5574 = fmul fast float %5552, %5571
  %5575 = fadd fast float %5572, %5412
  %5576 = fadd fast float %5573, %5413
  %5577 = fadd fast float %5574, %5414
  %5578 = fmul fast float %5552, %5547
  %5579 = call float @dx.op.unary.f32(i32 7, float %5559)  ; Saturate(value)
  %5580 = fsub fast float 1.000000e+00, %5579
  %5581 = fmul fast float %5578, %5580
  %5582 = fadd fast float %5581, %5579
  %5583 = fsub fast float 1.000000e+00, %5425
  %5584 = fmul fast float %5552, %5583
  %5585 = fadd fast float %5584, %5425
  %5586 = call float @dx.op.dot3.f32(i32 55, float %5575, float %5576, float %5577, float %5575, float %5576, float %5577)  ; Dot3(ax,ay,az,bx,by,bz)
  %5587 = call float @dx.op.unary.f32(i32 25, float %5586)  ; Rsqrt(value)
  %5588 = fmul fast float %5575, %5587
  %5589 = fmul fast float %5576, %5587
  %5590 = fmul fast float %5577, %5587
  br label %5591

; <label>:5591                                    ; preds = %5430, %5411
  %5592 = phi float [ %5588, %5430 ], [ %5412, %5411 ]
  %5593 = phi float [ %5589, %5430 ], [ %5413, %5411 ]
  %5594 = phi float [ %5590, %5430 ], [ %5414, %5411 ]
  %5595 = phi float [ %5475, %5430 ], [ %5418, %5411 ]
  %5596 = phi float [ %5476, %5430 ], [ %5419, %5411 ]
  %5597 = phi float [ %5477, %5430 ], [ %5420, %5411 ]
  %5598 = phi float [ %5566, %5430 ], [ %5421, %5411 ]
  %5599 = phi float [ %5567, %5430 ], [ %5422, %5411 ]
  %5600 = phi float [ %5568, %5430 ], [ %5423, %5411 ]
  %5601 = phi float [ %5582, %5430 ], [ %5424, %5411 ]
  %5602 = phi float [ %5585, %5430 ], [ %5425, %5411 ]
  %5603 = fsub fast float -0.000000e+00, %194
  %5604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5605 = extractvalue %dx.types.CBufRet.f32 %5604, 2
  %5606 = extractvalue %dx.types.CBufRet.f32 %5604, 3
  %5607 = fmul fast float %141, %5605
  %5608 = fmul fast float %143, %5606
  %5609 = fsub fast float 1.000000e+00, %5607
  %5610 = fsub fast float 1.000000e+00, %5608
  %5611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5612 = extractvalue %dx.types.CBufRet.f32 %5611, 0
  %5613 = extractvalue %dx.types.CBufRet.f32 %5611, 1
  %5614 = extractvalue %dx.types.CBufRet.f32 %5611, 2
  %5615 = fmul fast float %5609, %5612
  %5616 = fmul fast float %5609, %5613
  %5617 = fmul fast float %5609, %5614
  %5618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5619 = extractvalue %dx.types.CBufRet.f32 %5618, 0
  %5620 = extractvalue %dx.types.CBufRet.f32 %5618, 1
  %5621 = extractvalue %dx.types.CBufRet.f32 %5618, 2
  %5622 = fmul fast float %5610, %5619
  %5623 = fmul fast float %5610, %5620
  %5624 = fmul fast float %5610, %5621
  %5625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5626 = extractvalue %dx.types.CBufRet.f32 %5625, 0
  %5627 = extractvalue %dx.types.CBufRet.f32 %5625, 1
  %5628 = extractvalue %dx.types.CBufRet.f32 %5625, 2
  %5629 = fadd fast float %5622, %5626
  %5630 = fadd fast float %5629, %5615
  %5631 = fadd fast float %5623, %5627
  %5632 = fadd fast float %5631, %5616
  %5633 = fadd fast float %5624, %5628
  %5634 = fadd fast float %5633, %5617
  %5635 = fmul fast float %5630, %104
  %5636 = fmul fast float %5632, %104
  %5637 = fmul fast float %5634, %104
  %5638 = select i1 %296, float 0.000000e+00, float %5600
  %5639 = call float @dx.op.dot3.f32(i32 55, float %5592, float %5593, float %5594, float %5427, float %5428, float %5429)  ; Dot3(ax,ay,az,bx,by,bz)
  %5640 = call float @dx.op.unary.f32(i32 7, float %5639)  ; Saturate(value)
  %5641 = call float @dx.op.dot3.f32(i32 55, float %225, float %226, float %227, float %5592, float %5593, float %5594)  ; Dot3(ax,ay,az,bx,by,bz)
  %5642 = fmul fast float %5641, 2.000000e+00
  %5643 = fmul fast float %5642, %5592
  %5644 = fmul fast float %5642, %5593
  %5645 = fmul fast float %5642, %5594
  %5646 = fsub fast float %225, %5643
  %5647 = fsub fast float %226, %5644
  %5648 = fsub fast float %227, %5645
  %5649 = call float @dx.op.binary.f32(i32 36, float %5602, float 1.000000e+00)  ; FMin(a,b)
  %5650 = fsub fast float 1.000000e+00, %5602
  %5651 = bitcast float %5650 to i32
  %5652 = sub nsw i32 2129859010, %5651
  %5653 = bitcast i32 %5652 to float
  %5654 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %84)  ; FMax(a,b)
  %5655 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5656 = fcmp fast oeq float %5655, 0.000000e+00
  %5657 = fcmp fast oeq float %5654, 0.000000e+00
  %5658 = or i1 %5657, %5656
  br i1 %5658, label %5688, label %5659

; <label>:5659                                    ; preds = %5591
  %5660 = fsub fast float -0.000000e+00, %87
  %5661 = fsub fast float -0.000000e+00, %85
  %5662 = call float @dx.op.unary.f32(i32 24, float %5655)  ; Sqrt(value)
  %5663 = fdiv fast float %5662, %5654
  %5664 = fcmp fast ogt float %5663, 0x3FFB6F8900000000
  %5665 = select i1 %5664, float 0x3FFB6F8900000000, float %5663
  %5666 = fmul fast float %5665, 0x3FE8A23460000000
  %5667 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5668 = call float @dx.op.binary.f32(i32 35, float %5665, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5669 = fmul fast float %5667, %5654
  %5670 = fmul fast float %5668, 0x3FF279A740000000
  %5671 = fadd fast float %5670, -1.000000e+00
  %5672 = call float @dx.op.dot3.f32(i32 55, float %5660, float %5661, float %86, float %5660, float %5661, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %5673 = call float @dx.op.unary.f32(i32 25, float %5672)  ; Rsqrt(value)
  %5674 = fmul fast float %5673, %5660
  %5675 = fmul fast float %5673, %5661
  %5676 = fmul fast float %5673, %86
  %5677 = fmul fast float %5671, %5671
  %5678 = fsub fast float 1.000000e+00, %5677
  %5679 = fmul fast float %5668, 0x40005F8BE0000000
  %5680 = fsub fast float 0x400C5BF8A0000000, %5679
  %5681 = fdiv fast float %5669, %5680
  %5682 = fmul fast float %5681, 0x3FEE31C3C0000000
  %5683 = fmul fast float %5682, %5678
  %5684 = fmul fast float %5668, 0x3FDACB7480000000
  %5685 = fadd fast float %5684, 0xBFD7347680000000
  %5686 = fmul fast float %5685, %5681
  %5687 = fmul fast float %5686, %5678
  br label %5688

; <label>:5688                                    ; preds = %5659, %5591
  %5689 = phi float [ %5674, %5659 ], [ 0.000000e+00, %5591 ]
  %5690 = phi float [ %5675, %5659 ], [ 0.000000e+00, %5591 ]
  %5691 = phi float [ %5676, %5659 ], [ 0.000000e+00, %5591 ]
  %5692 = phi float [ %5683, %5659 ], [ 0.000000e+00, %5591 ]
  %5693 = phi float [ %5687, %5659 ], [ 0.000000e+00, %5591 ]
  %5694 = call float @dx.op.dot3.f32(i32 55, float %5689, float %5690, float %5691, float %5592, float %5593, float %5594)  ; Dot3(ax,ay,az,bx,by,bz)
  %5695 = fmul fast float %5694, %5694
  %5696 = fmul fast float %5695, 0x3FEE471020000000
  %5697 = fadd fast float %5696, 0xBFD42F6020000000
  %5698 = fmul fast float %5654, 0x3FD20DD760000000
  %5699 = fmul fast float %5697, %5693
  %5700 = fmul fast float %5692, 0x3FDF454380000000
  %5701 = fmul fast float %5700, %5694
  %5702 = fadd fast float %5701, %5698
  %5703 = fadd fast float %5702, %5699
  %5704 = call float @dx.op.dot3.f32(i32 55, float %5689, float %5690, float %5691, float %5646, float %5647, float %5648)  ; Dot3(ax,ay,az,bx,by,bz)
  %5705 = fmul fast float %5704, 0x3FDF454380000000
  %5706 = fmul fast float %5704, %5704
  %5707 = fmul fast float %5706, 0x3FEE471020000000
  %5708 = fadd fast float %5707, 0xBFD42F6020000000
  %5709 = call float @dx.op.dot3.f32(i32 55, float %5654, float %5692, float %5693, float 0x3FD20DD760000000, float %5705, float %5708)  ; Dot3(ax,ay,az,bx,by,bz)
  %5710 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %80)  ; FMax(a,b)
  %5711 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %5712 = fcmp fast oeq float %5711, 0.000000e+00
  %5713 = fcmp fast oeq float %5710, 0.000000e+00
  %5714 = or i1 %5713, %5712
  br i1 %5714, label %5744, label %5715

; <label>:5715                                    ; preds = %5688
  %5716 = fsub fast float -0.000000e+00, %83
  %5717 = fsub fast float -0.000000e+00, %81
  %5718 = call float @dx.op.unary.f32(i32 24, float %5711)  ; Sqrt(value)
  %5719 = fdiv fast float %5718, %5710
  %5720 = fcmp fast ogt float %5719, 0x3FFB6F8900000000
  %5721 = select i1 %5720, float 0x3FFB6F8900000000, float %5719
  %5722 = fmul fast float %5721, 0x3FE8A23460000000
  %5723 = call float @dx.op.unary.f32(i32 7, float %5722)  ; Saturate(value)
  %5724 = call float @dx.op.binary.f32(i32 35, float %5721, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5725 = fmul fast float %5723, %5710
  %5726 = fmul fast float %5724, 0x3FF279A740000000
  %5727 = fadd fast float %5726, -1.000000e+00
  %5728 = call float @dx.op.dot3.f32(i32 55, float %5716, float %5717, float %82, float %5716, float %5717, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5729 = call float @dx.op.unary.f32(i32 25, float %5728)  ; Rsqrt(value)
  %5730 = fmul fast float %5729, %5716
  %5731 = fmul fast float %5729, %5717
  %5732 = fmul fast float %5729, %82
  %5733 = fmul fast float %5727, %5727
  %5734 = fsub fast float 1.000000e+00, %5733
  %5735 = fmul fast float %5724, 0x40005F8BE0000000
  %5736 = fsub fast float 0x400C5BF8A0000000, %5735
  %5737 = fdiv fast float %5725, %5736
  %5738 = fmul fast float %5737, 0x3FEE31C3C0000000
  %5739 = fmul fast float %5738, %5734
  %5740 = fmul fast float %5724, 0x3FDACB7480000000
  %5741 = fadd fast float %5740, 0xBFD7347680000000
  %5742 = fmul fast float %5741, %5737
  %5743 = fmul fast float %5742, %5734
  br label %5744

; <label>:5744                                    ; preds = %5715, %5688
  %5745 = phi float [ %5730, %5715 ], [ 0.000000e+00, %5688 ]
  %5746 = phi float [ %5731, %5715 ], [ 0.000000e+00, %5688 ]
  %5747 = phi float [ %5732, %5715 ], [ 0.000000e+00, %5688 ]
  %5748 = phi float [ %5739, %5715 ], [ 0.000000e+00, %5688 ]
  %5749 = phi float [ %5743, %5715 ], [ 0.000000e+00, %5688 ]
  %5750 = call float @dx.op.dot3.f32(i32 55, float %5745, float %5746, float %5747, float %5592, float %5593, float %5594)  ; Dot3(ax,ay,az,bx,by,bz)
  %5751 = fmul fast float %5750, %5750
  %5752 = fmul fast float %5751, 0x3FEE471020000000
  %5753 = fadd fast float %5752, 0xBFD42F6020000000
  %5754 = fmul fast float %5710, 0x3FD20DD760000000
  %5755 = fmul fast float %5753, %5749
  %5756 = fmul fast float %5748, 0x3FDF454380000000
  %5757 = fmul fast float %5756, %5750
  %5758 = fadd fast float %5757, %5754
  %5759 = fadd fast float %5758, %5755
  %5760 = call float @dx.op.dot3.f32(i32 55, float %5745, float %5746, float %5747, float %5646, float %5647, float %5648)  ; Dot3(ax,ay,az,bx,by,bz)
  %5761 = fmul fast float %5760, 0x3FDF454380000000
  %5762 = fmul fast float %5760, %5760
  %5763 = fmul fast float %5762, 0x3FEE471020000000
  %5764 = fadd fast float %5763, 0xBFD42F6020000000
  %5765 = call float @dx.op.dot3.f32(i32 55, float %5710, float %5748, float %5749, float 0x3FD20DD760000000, float %5761, float %5764)  ; Dot3(ax,ay,az,bx,by,bz)
  %5766 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %5767 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5768 = fcmp fast oeq float %5767, 0.000000e+00
  %5769 = fcmp fast oeq float %5766, 0.000000e+00
  %5770 = or i1 %5769, %5768
  br i1 %5770, label %5800, label %5771

; <label>:5771                                    ; preds = %5744
  %5772 = fsub fast float -0.000000e+00, %79
  %5773 = fsub fast float -0.000000e+00, %77
  %5774 = call float @dx.op.unary.f32(i32 24, float %5767)  ; Sqrt(value)
  %5775 = fdiv fast float %5774, %5766
  %5776 = fcmp fast ogt float %5775, 0x3FFB6F8900000000
  %5777 = select i1 %5776, float 0x3FFB6F8900000000, float %5775
  %5778 = fmul fast float %5777, 0x3FE8A23460000000
  %5779 = call float @dx.op.unary.f32(i32 7, float %5778)  ; Saturate(value)
  %5780 = call float @dx.op.binary.f32(i32 35, float %5777, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5781 = fmul fast float %5779, %5766
  %5782 = fmul fast float %5780, 0x3FF279A740000000
  %5783 = fadd fast float %5782, -1.000000e+00
  %5784 = call float @dx.op.dot3.f32(i32 55, float %5772, float %5773, float %78, float %5772, float %5773, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5785 = call float @dx.op.unary.f32(i32 25, float %5784)  ; Rsqrt(value)
  %5786 = fmul fast float %5785, %5772
  %5787 = fmul fast float %5785, %5773
  %5788 = fmul fast float %5785, %78
  %5789 = fmul fast float %5783, %5783
  %5790 = fsub fast float 1.000000e+00, %5789
  %5791 = fmul fast float %5780, 0x40005F8BE0000000
  %5792 = fsub fast float 0x400C5BF8A0000000, %5791
  %5793 = fdiv fast float %5781, %5792
  %5794 = fmul fast float %5793, 0x3FEE31C3C0000000
  %5795 = fmul fast float %5794, %5790
  %5796 = fmul fast float %5780, 0x3FDACB7480000000
  %5797 = fadd fast float %5796, 0xBFD7347680000000
  %5798 = fmul fast float %5797, %5793
  %5799 = fmul fast float %5798, %5790
  br label %5800

; <label>:5800                                    ; preds = %5771, %5744
  %5801 = phi float [ %5786, %5771 ], [ 0.000000e+00, %5744 ]
  %5802 = phi float [ %5787, %5771 ], [ 0.000000e+00, %5744 ]
  %5803 = phi float [ %5788, %5771 ], [ 0.000000e+00, %5744 ]
  %5804 = phi float [ %5795, %5771 ], [ 0.000000e+00, %5744 ]
  %5805 = phi float [ %5799, %5771 ], [ 0.000000e+00, %5744 ]
  %5806 = call float @dx.op.dot3.f32(i32 55, float %5801, float %5802, float %5803, float %5592, float %5593, float %5594)  ; Dot3(ax,ay,az,bx,by,bz)
  %5807 = fmul fast float %5806, %5806
  %5808 = fmul fast float %5807, 0x3FEE471020000000
  %5809 = fadd fast float %5808, 0xBFD42F6020000000
  %5810 = fmul fast float %5766, 0x3FD20DD760000000
  %5811 = fmul fast float %5809, %5805
  %5812 = fmul fast float %5804, 0x3FDF454380000000
  %5813 = fmul fast float %5812, %5806
  %5814 = fadd fast float %5813, %5810
  %5815 = fadd fast float %5814, %5811
  %5816 = call float @dx.op.dot3.f32(i32 55, float %5801, float %5802, float %5803, float %5646, float %5647, float %5648)  ; Dot3(ax,ay,az,bx,by,bz)
  %5817 = fmul fast float %5816, 0x3FDF454380000000
  %5818 = fmul fast float %5816, %5816
  %5819 = fmul fast float %5818, 0x3FEE471020000000
  %5820 = fadd fast float %5819, 0xBFD42F6020000000
  %5821 = call float @dx.op.dot3.f32(i32 55, float %5766, float %5804, float %5805, float 0x3FD20DD760000000, float %5817, float %5820)  ; Dot3(ax,ay,az,bx,by,bz)
  %5822 = call float @dx.op.binary.f32(i32 35, float %5703, float 0.000000e+00)  ; FMax(a,b)
  %5823 = call float @dx.op.binary.f32(i32 35, float %5759, float 0.000000e+00)  ; FMax(a,b)
  %5824 = call float @dx.op.binary.f32(i32 35, float %5815, float 0.000000e+00)  ; FMax(a,b)
  %5825 = call float @dx.op.binary.f32(i32 35, float %5709, float 0.000000e+00)  ; FMax(a,b)
  %5826 = call float @dx.op.binary.f32(i32 35, float %5765, float 0.000000e+00)  ; FMax(a,b)
  %5827 = call float @dx.op.binary.f32(i32 35, float %5821, float 0.000000e+00)  ; FMax(a,b)
  %5828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5829 = extractvalue %dx.types.CBufRet.f32 %5828, 0
  %5830 = call float @dx.op.binary.f32(i32 36, float %5595, float %5829)  ; FMin(a,b)
  %5831 = fsub fast float 1.000000e+00, %5649
  %5832 = fmul fast float %5830, %5831
  %5833 = fsub fast float 1.000000e+00, %5832
  %5834 = bitcast float %5833 to i32
  %5835 = sub nsw i32 2129859010, %5834
  %5836 = bitcast i32 %5835 to float
  %5837 = call float @dx.op.binary.f32(i32 36, float %5596, float %5829)  ; FMin(a,b)
  %5838 = fmul fast float %5837, %5831
  %5839 = fsub fast float 1.000000e+00, %5838
  %5840 = bitcast float %5839 to i32
  %5841 = sub nsw i32 2129859010, %5840
  %5842 = bitcast i32 %5841 to float
  %5843 = call float @dx.op.binary.f32(i32 36, float %5597, float %5829)  ; FMin(a,b)
  %5844 = fmul fast float %5843, %5831
  %5845 = fsub fast float 1.000000e+00, %5844
  %5846 = bitcast float %5845 to i32
  %5847 = sub nsw i32 2129859010, %5846
  %5848 = bitcast i32 %5847 to float
  %5849 = fmul fast float %5822, %5649
  %5850 = fmul fast float %5849, %5836
  %5851 = fmul fast float %5823, %5649
  %5852 = fmul fast float %5851, %5842
  %5853 = fmul fast float %5824, %5649
  %5854 = fmul fast float %5853, %5848
  %5855 = call float @dx.op.binary.f32(i32 36, float %5598, float %5829)  ; FMin(a,b)
  %5856 = fmul fast float %5855, %5831
  %5857 = fsub fast float 1.000000e+00, %5856
  %5858 = bitcast float %5857 to i32
  %5859 = sub nsw i32 2129859010, %5858
  %5860 = bitcast i32 %5859 to float
  %5861 = call float @dx.op.binary.f32(i32 36, float %5599, float %5829)  ; FMin(a,b)
  %5862 = fmul fast float %5861, %5831
  %5863 = fsub fast float 1.000000e+00, %5862
  %5864 = bitcast float %5863 to i32
  %5865 = sub nsw i32 2129859010, %5864
  %5866 = bitcast i32 %5865 to float
  %5867 = call float @dx.op.binary.f32(i32 36, float %5638, float %5829)  ; FMin(a,b)
  %5868 = fmul fast float %5867, %5831
  %5869 = fsub fast float 1.000000e+00, %5868
  %5870 = bitcast float %5869 to i32
  %5871 = sub nsw i32 2129859010, %5870
  %5872 = bitcast i32 %5871 to float
  %5873 = fmul fast float %5825, %5649
  %5874 = fmul fast float %5873, %5860
  %5875 = fmul fast float %5826, %5649
  %5876 = fmul fast float %5875, %5866
  %5877 = fmul fast float %5827, %5649
  %5878 = fmul fast float %5877, %5872
  %5879 = call float @dx.op.dot3.f32(i32 55, float %5850, float %5852, float %5854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5880 = select i1 %296, float 0.000000e+00, float %5850
  %5881 = select i1 %296, float %5879, float %5852
  %5882 = select i1 %296, float 0.000000e+00, float %5854
  %5883 = call float @dx.op.dot3.f32(i32 55, float %5874, float %5876, float %5878, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5884 = select i1 %296, float 0.000000e+00, float %5874
  %5885 = select i1 %296, float %5883, float %5876
  %5886 = select i1 %296, float 0.000000e+00, float %5878
  %5887 = fmul fast float %5640, 9.843750e-01
  %5888 = fmul fast float %5601, 9.843750e-01
  %5889 = fadd fast float %5887, 7.812500e-03
  %5890 = fadd fast float %5888, 7.812500e-03
  %5891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %5889, float %5890, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5892 = extractvalue %dx.types.ResRet.f32 %5891, 2
  %5893 = extractvalue %dx.types.ResRet.f32 %5891, 3
  %5894 = fmul fast float %5892, %5598
  %5895 = fmul fast float %5892, %5599
  %5896 = fmul fast float %5892, %5638
  %5897 = fadd fast float %5894, %5893
  %5898 = fadd fast float %5895, %5893
  %5899 = fadd fast float %5896, %5893
  %5900 = fcmp fast ogt float %4305, 0.000000e+00
  br i1 %5900, label %5901, label %5927

; <label>:5901                                    ; preds = %5800
  %5902 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %4305, float %5640, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5903 = extractvalue %dx.types.ResRet.f32 %5902, 0
  %5904 = extractvalue %dx.types.ResRet.f32 %5902, 1
  %5905 = extractvalue %dx.types.ResRet.f32 %5902, 2
  %5906 = fadd fast float %5903, -5.000000e-01
  %5907 = fadd fast float %5904, -5.000000e-01
  %5908 = fadd fast float %5905, -5.000000e-01
  %5909 = fsub fast float 1.000000e+00, %5598
  %5910 = fsub fast float 1.000000e+00, %5599
  %5911 = fsub fast float 1.000000e+00, %5638
  %5912 = fmul fast float %5598, 4.000000e+00
  %5913 = fmul fast float %5912, %5909
  %5914 = fmul fast float %5913, %5906
  %5915 = fmul fast float %5599, 4.000000e+00
  %5916 = fmul fast float %5915, %5910
  %5917 = fmul fast float %5916, %5907
  %5918 = fmul fast float %5638, 4.000000e+00
  %5919 = fmul fast float %5918, %5911
  %5920 = fmul fast float %5919, %5908
  %5921 = fadd fast float %5914, %5897
  %5922 = fadd fast float %5917, %5898
  %5923 = fadd fast float %5920, %5899
  %5924 = call float @dx.op.unary.f32(i32 7, float %5921)  ; Saturate(value)
  %5925 = call float @dx.op.unary.f32(i32 7, float %5922)  ; Saturate(value)
  %5926 = call float @dx.op.unary.f32(i32 7, float %5923)  ; Saturate(value)
  br label %5927

; <label>:5927                                    ; preds = %5901, %5800
  %5928 = phi float [ %5924, %5901 ], [ %5897, %5800 ]
  %5929 = phi float [ %5925, %5901 ], [ %5898, %5800 ]
  %5930 = phi float [ %5926, %5901 ], [ %5899, %5800 ]
  %5931 = call float @dx.op.binary.f32(i32 35, float %5929, float %5930)  ; FMax(a,b)
  %5932 = call float @dx.op.binary.f32(i32 35, float %5928, float %5931)  ; FMax(a,b)
  %5933 = fsub fast float 1.000000e+00, %5932
  %5934 = fmul fast float %5933, %5880
  %5935 = fmul fast float %5933, %5881
  %5936 = fmul fast float %5933, %5882
  %5937 = call float @dx.op.dot3.f32(i32 55, float %5595, float %5596, float %5597, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5938 = fcmp fast ogt float %5937, 0x3E7FF19E20000000
  %5939 = fdiv fast float 1.000000e+00, %5937
  %5940 = select i1 %5938, float %5939, float 0.000000e+00
  %5941 = fmul fast float %5940, %5595
  %5942 = fmul fast float %5940, %5596
  %5943 = fmul fast float %5940, %5597
  %5944 = fadd fast float %5941, -1.000000e+00
  %5945 = fadd fast float %5942, -1.000000e+00
  %5946 = fadd fast float %5943, -1.000000e+00
  %5947 = fmul fast float %5944, 5.000000e-01
  %5948 = fmul fast float %5945, 5.000000e-01
  %5949 = fmul fast float %5946, 5.000000e-01
  %5950 = fadd fast float %5947, 1.000000e+00
  %5951 = fadd fast float %5948, 1.000000e+00
  %5952 = fadd fast float %5949, 1.000000e+00
  %5953 = fmul fast float %5933, %4417
  %5954 = fmul fast float %5933, %4418
  %5955 = fmul fast float %5933, %4419
  %5956 = fadd fast float %5953, -1.000000e+00
  %5957 = fadd fast float %5954, -1.000000e+00
  %5958 = fadd fast float %5955, -1.000000e+00
  %5959 = fmul fast float %5956, %4331
  %5960 = fmul fast float %5957, %4331
  %5961 = fmul fast float %5958, %4331
  %5962 = fadd fast float %5959, 1.000000e+00
  %5963 = fadd fast float %5960, 1.000000e+00
  %5964 = fadd fast float %5961, 1.000000e+00
  %5965 = fmul fast float %5599, 0x401CF23780000000
  %5966 = fadd fast float %5965, 0x3FF32641C0000000
  %5967 = fdiv fast float 1.000000e+00, %5966
  %5968 = call float @dx.op.dot3.f32(i32 55, float %5427, float %5428, float %5429, float %5592, float %5593, float %5594)  ; Dot3(ax,ay,az,bx,by,bz)
  %5969 = fmul fast float %5967, %5967
  %5970 = fmul fast float %5968, %5968
  %5971 = fsub fast float 1.000000e+00, %5970
  %5972 = fmul fast float %5969, %5971
  %5973 = fsub fast float 1.000000e+00, %5972
  %5974 = fcmp fast oge float %5973, 0.000000e+00
  %5975 = fmul fast float %5967, %5427
  %5976 = fmul fast float %5967, %5428
  %5977 = fmul fast float %5967, %5429
  %5978 = call float @dx.op.unary.f32(i32 24, float %5973)  ; Sqrt(value)
  %5979 = fmul fast float %5968, %5967
  %5980 = fadd fast float %5979, %5978
  %5981 = fmul fast float %5980, %5592
  %5982 = fmul fast float %5980, %5593
  %5983 = fmul fast float %5980, %5594
  %5984 = fsub fast float %5975, %5981
  %5985 = fsub fast float %5976, %5982
  %5986 = fsub fast float %5977, %5983
  %5987 = select i1 %5974, float %5984, float 0.000000e+00
  %5988 = select i1 %5974, float %5985, float 0.000000e+00
  %5989 = select i1 %5974, float %5986, float 0.000000e+00
  %5990 = fmul fast float %5987, %3643
  %5991 = fmul fast float %5988, %3643
  %5992 = fmul fast float %5989, %3643
  %5993 = fadd fast float %5990, %5635
  %5994 = fadd fast float %5991, %5636
  %5995 = fadd fast float %5992, %5637
  %5996 = call float @dx.op.dot3.f32(i32 55, float %5415, float %5416, float %5417, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5997 = fsub fast float 1.000000e+00, %5601
  %5998 = fmul fast float %5997, %4331
  %5999 = fsub fast float 1.000000e+00, %5998
  %6000 = call float @dx.op.unary.f32(i32 7, float %5999)  ; Saturate(value)
  %6001 = fsub fast float 1.000000e+00, %6000
  %6002 = fmul fast float %5599, 0x4012D0A400000000
  %6003 = fadd fast float %6002, 0x3FDB6377A0000000
  %6004 = fmul fast float %6001, %6003
  %6005 = fadd fast float %6004, %5996
  %6006 = call float @dx.op.unary.f32(i32 7, float %6005)  ; Saturate(value)
  %6007 = fmul fast float %5928, %5884
  %6008 = fmul fast float %5929, %5885
  %6009 = fmul fast float %5930, %5886
  %6010 = fsub fast float 1.000000e+00, %5640
  %6011 = bitcast float %6010 to i32
  %6012 = sitofp i32 %6011 to float
  %6013 = fmul fast float %6012, 5.000000e+00
  %6014 = fadd fast float %6013, 0xC1EFBF8940000000
  %6015 = fptosi float %6014 to i32
  %6016 = bitcast i32 %6015 to float
  %6017 = fmul fast float %6016, %4306
  %6018 = fmul fast float %5880, %6017
  %6019 = fmul fast float %6018, %5933
  %6020 = fmul fast float %6019, %5950
  %6021 = fmul fast float %5881, %6017
  %6022 = fmul fast float %6021, %5933
  %6023 = fmul fast float %6022, %5951
  %6024 = fmul fast float %5882, %6017
  %6025 = fmul fast float %6024, %5933
  %6026 = fmul fast float %6025, %5952
  %6027 = fmul fast float %5934, %4331
  %6028 = fmul fast float %5935, %4331
  %6029 = fmul fast float %5936, %4331
  %6030 = fsub fast float 1.000000e+00, %6006
  %6031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6032 = extractvalue %dx.types.CBufRet.f32 %6031, 0
  %6033 = extractvalue %dx.types.CBufRet.f32 %6031, 1
  %6034 = extractvalue %dx.types.CBufRet.f32 %6031, 2
  %6035 = extractvalue %dx.types.CBufRet.f32 %6031, 3
  %6036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6037 = extractvalue %dx.types.CBufRet.f32 %6036, 0
  %6038 = extractvalue %dx.types.CBufRet.f32 %6036, 1
  %6039 = extractvalue %dx.types.CBufRet.f32 %6036, 2
  %6040 = extractvalue %dx.types.CBufRet.f32 %6036, 3
  %6041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6042 = extractvalue %dx.types.CBufRet.f32 %6041, 0
  %6043 = extractvalue %dx.types.CBufRet.f32 %6041, 1
  %6044 = extractvalue %dx.types.CBufRet.f32 %6041, 2
  %6045 = extractvalue %dx.types.CBufRet.f32 %6041, 3
  %6046 = fmul fast float %5993, %6032
  %6047 = call float @dx.op.tertiary.f32(i32 46, float %5994, float %6033, float %6046)  ; FMad(a,b,c)
  %6048 = call float @dx.op.tertiary.f32(i32 46, float %5995, float %6034, float %6047)  ; FMad(a,b,c)
  %6049 = fadd fast float %6048, %6035
  %6050 = fmul fast float %5993, %6037
  %6051 = call float @dx.op.tertiary.f32(i32 46, float %5994, float %6038, float %6050)  ; FMad(a,b,c)
  %6052 = call float @dx.op.tertiary.f32(i32 46, float %5995, float %6039, float %6051)  ; FMad(a,b,c)
  %6053 = fadd fast float %6052, %6040
  %6054 = fmul fast float %5993, %6042
  %6055 = call float @dx.op.tertiary.f32(i32 46, float %5994, float %6043, float %6054)  ; FMad(a,b,c)
  %6056 = call float @dx.op.tertiary.f32(i32 46, float %5995, float %6044, float %6055)  ; FMad(a,b,c)
  %6057 = fadd fast float %6056, %6045
  %6058 = fdiv fast float %6049, %6057
  %6059 = fdiv fast float %6053, %6057
  %6060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6061 = extractvalue %dx.types.CBufRet.f32 %6060, 0
  %6062 = extractvalue %dx.types.CBufRet.f32 %6060, 1
  %6063 = fmul fast float %6061, %6058
  %6064 = fmul fast float %6062, %6059
  %6065 = extractvalue %dx.types.CBufRet.f32 %6060, 2
  %6066 = extractvalue %dx.types.CBufRet.f32 %6060, 3
  %6067 = fadd fast float %6063, %6065
  %6068 = fadd fast float %6064, %6066
  %6069 = call float @dx.op.unary.f32(i32 7, float %6067)  ; Saturate(value)
  %6070 = call float @dx.op.unary.f32(i32 7, float %6068)  ; Saturate(value)
  %6071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6072 = extractvalue %dx.types.CBufRet.f32 %6071, 0
  %6073 = extractvalue %dx.types.CBufRet.f32 %6071, 1
  %6074 = fmul fast float %6072, %6069
  %6075 = fmul fast float %6073, %6070
  %6076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6077 = extractvalue %dx.types.CBufRet.f32 %6076, 1
  %6078 = extractvalue %dx.types.CBufRet.f32 %6076, 2
  %6079 = fsub fast float %6077, %6078
  %6080 = fmul fast float %6079, %6030
  %6081 = fadd fast float %6080, %6078
  %6082 = fmul fast float %309, 2.000000e+00
  %6083 = fmul fast float %310, 2.000000e+00
  %6084 = fadd fast float %6082, -1.000000e+00
  %6085 = fadd fast float %6083, -1.000000e+00
  %6086 = fmul fast float %6081, %6084
  %6087 = fmul fast float %6081, %6085
  %6088 = fadd fast float %6086, %6074
  %6089 = fadd fast float %6087, %6075
  %6090 = extractvalue %dx.types.CBufRet.f32 %6071, 2
  %6091 = extractvalue %dx.types.CBufRet.f32 %6071, 3
  %6092 = fmul fast float %6088, %6090
  %6093 = fmul fast float %6089, %6091
  %6094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %52, float %6092, float %6093, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6095 = extractvalue %dx.types.ResRet.f32 %6094, 0
  %6096 = fcmp fast ogt float %6095, -1.000000e+00
  %6097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6098 = extractvalue %dx.types.CBufRet.f32 %6097, 1
  %6099 = select i1 %6096, float %6098, float 1.000000e+00
  %6100 = fadd fast float %6095, 1.000000e+00
  %6101 = fmul fast float %6099, %6100
  %6102 = call float @dx.op.unary.f32(i32 6, float %6101)  ; FAbs(value)
  %6103 = fsub fast float %6102, %6057
  %6104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6105 = extractvalue %dx.types.CBufRet.f32 %6104, 2
  %6106 = fmul fast float %6105, %6102
  %6107 = fdiv fast float 1.600000e+02, %6106
  %6108 = fmul fast float %6006, %6006
  %6109 = fmul fast float %6108, 0xBFB5B17960000000
  %6110 = fmul fast float %6109, %6103
  %6111 = fmul fast float %6110, %6107
  %6112 = call float @dx.op.unary.f32(i32 21, float %6111)  ; Exp(value)
  %6113 = fmul fast float %6112, 0x3FF04B2960000000
  %6114 = fsub fast float 0x3FF04B2960000000, %6113
  %6115 = call float @dx.op.unary.f32(i32 7, float %6114)  ; Saturate(value)
  %6116 = fmul fast float %6115, 4.000000e+00
  %6117 = fadd fast float %309, -5.000000e-01
  %6118 = fadd fast float %310, -5.000000e-01
  %6119 = fmul fast float %6115, 0x3FBEB851E0000000
  %6120 = call float @dx.op.unary.f32(i32 7, float %6119)  ; Saturate(value)
  %6121 = fmul fast float %6120, %6117
  %6122 = fmul fast float %6120, %6118
  %6123 = fadd fast float %6121, %6067
  %6124 = fadd fast float %6122, %6068
  %6125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6126 = extractvalue %dx.types.CBufRet.i32 %6125, 0
  %6127 = icmp eq i32 %6126, 0
  br i1 %6127, label %6133, label %6128, !dx.controlflow.hints !101

; <label>:6128                                    ; preds = %5927
  %6129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %47, float %6123, float %6124, float undef, float undef, i32 0, i32 0, i32 undef, float %6116)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6130 = extractvalue %dx.types.ResRet.f32 %6129, 0
  %6131 = extractvalue %dx.types.ResRet.f32 %6129, 1
  %6132 = extractvalue %dx.types.ResRet.f32 %6129, 2
  br label %6138

; <label>:6133                                    ; preds = %5927
  %6134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %49, float %6123, float %6124, float undef, float undef, i32 0, i32 0, i32 undef, float %6116)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6135 = extractvalue %dx.types.ResRet.f32 %6134, 0
  %6136 = extractvalue %dx.types.ResRet.f32 %6134, 1
  %6137 = extractvalue %dx.types.ResRet.f32 %6134, 2
  br label %6138

; <label>:6138                                    ; preds = %6133, %6128
  %6139 = phi float [ %6130, %6128 ], [ %6135, %6133 ]
  %6140 = phi float [ %6131, %6128 ], [ %6136, %6133 ]
  %6141 = phi float [ %6132, %6128 ], [ %6137, %6133 ]
  %6142 = select i1 %296, float 0.000000e+00, float %6140
  %6143 = select i1 %296, float 0.000000e+00, float %6141
  %6144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6145 = extractvalue %dx.types.CBufRet.f32 %6144, 1
  %6146 = fmul fast float %6139, %5962
  %6147 = fmul fast float %6146, %6145
  %6148 = fmul fast float %6142, %5963
  %6149 = fmul fast float %6148, %6145
  %6150 = fmul fast float %6143, %5964
  %6151 = fmul fast float %6150, %6145
  %6152 = fadd fast float %6007, %4295
  %6153 = fadd fast float %6152, %6020
  %6154 = fadd fast float %6153, %6147
  %6155 = fmul fast float %6154, %4331
  %6156 = fadd fast float %6008, %4296
  %6157 = fadd fast float %6156, %6023
  %6158 = fadd fast float %6157, %6149
  %6159 = fmul fast float %6158, %4331
  %6160 = fadd fast float %6009, %4297
  %6161 = fadd fast float %6160, %6026
  %6162 = fadd fast float %6161, %6151
  %6163 = fmul fast float %6162, %4331
  %6164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6165 = extractvalue %dx.types.CBufRet.f32 %6164, 3
  %6166 = fcmp fast oeq float %6165, 0.000000e+00
  br i1 %6166, label %7304, label %6167

; <label>:6167                                    ; preds = %6138
  %6168 = extractvalue %dx.types.CBufRet.f32 %6164, 0
  %6169 = extractvalue %dx.types.CBufRet.f32 %6164, 1
  %6170 = extractvalue %dx.types.CBufRet.f32 %6164, 2
  %6171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6172 = extractvalue %dx.types.CBufRet.f32 %6171, 0
  %6173 = extractvalue %dx.types.CBufRet.f32 %6171, 1
  %6174 = extractvalue %dx.types.CBufRet.f32 %6171, 2
  %6175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6176 = extractvalue %dx.types.CBufRet.f32 %6175, 0
  %6177 = extractvalue %dx.types.CBufRet.f32 %6175, 1
  %6178 = call float @dx.op.dot3.f32(i32 55, float %6172, float %6173, float %6174, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6179 = select i1 %296, float %6176, float %6172
  %6180 = select i1 %296, float %6178, float %6173
  %6181 = select i1 %296, float %6177, float %6174
  %6182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6183 = extractvalue %dx.types.CBufRet.f32 %6182, 2
  %6184 = fmul fast float %6183, %120
  %6185 = fmul fast float %6183, %121
  %6186 = fmul fast float %6183, %122
  %6187 = fadd fast float %6184, %192
  %6188 = fadd fast float %6185, %193
  %6189 = fadd fast float %6186, %194
  %6190 = fcmp fast olt float %6165, 0.000000e+00
  br i1 %6190, label %6830, label %6191

; <label>:6191                                    ; preds = %6167
  %6192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6193 = extractvalue %dx.types.CBufRet.f32 %6192, 0
  %6194 = extractvalue %dx.types.CBufRet.f32 %6192, 1
  %6195 = extractvalue %dx.types.CBufRet.f32 %6192, 2
  %6196 = extractvalue %dx.types.CBufRet.f32 %6192, 3
  %6197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6198 = extractvalue %dx.types.CBufRet.f32 %6197, 0
  %6199 = extractvalue %dx.types.CBufRet.f32 %6197, 1
  %6200 = extractvalue %dx.types.CBufRet.f32 %6197, 2
  %6201 = extractvalue %dx.types.CBufRet.f32 %6197, 3
  %6202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6203 = extractvalue %dx.types.CBufRet.f32 %6202, 0
  %6204 = extractvalue %dx.types.CBufRet.f32 %6202, 1
  %6205 = extractvalue %dx.types.CBufRet.f32 %6202, 2
  %6206 = extractvalue %dx.types.CBufRet.f32 %6202, 3
  %6207 = fmul fast float %6193, %6187
  %6208 = call float @dx.op.tertiary.f32(i32 46, float %6188, float %6194, float %6207)  ; FMad(a,b,c)
  %6209 = call float @dx.op.tertiary.f32(i32 46, float %6189, float %6195, float %6208)  ; FMad(a,b,c)
  %6210 = fadd fast float %6209, %6196
  %6211 = fmul fast float %6198, %6187
  %6212 = call float @dx.op.tertiary.f32(i32 46, float %6188, float %6199, float %6211)  ; FMad(a,b,c)
  %6213 = call float @dx.op.tertiary.f32(i32 46, float %6189, float %6200, float %6212)  ; FMad(a,b,c)
  %6214 = fadd fast float %6213, %6201
  %6215 = fmul fast float %6203, %6187
  %6216 = call float @dx.op.tertiary.f32(i32 46, float %6188, float %6204, float %6215)  ; FMad(a,b,c)
  %6217 = call float @dx.op.tertiary.f32(i32 46, float %6189, float %6205, float %6216)  ; FMad(a,b,c)
  %6218 = fadd fast float %6217, %6206
  %6219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6220 = extractvalue %dx.types.CBufRet.f32 %6219, 0
  %6221 = fcmp fast une float %6220, 0.000000e+00
  %6222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6223 = extractvalue %dx.types.CBufRet.f32 %6222, 0
  %6224 = extractvalue %dx.types.CBufRet.f32 %6222, 1
  %6225 = extractvalue %dx.types.CBufRet.f32 %6222, 3
  %6226 = fmul fast float %6225, %6210
  %6227 = fmul fast float %6225, %6214
  %6228 = fadd fast float %6226, %6223
  %6229 = fadd fast float %6227, %6224
  %6230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6231 = extractvalue %dx.types.CBufRet.f32 %6230, 0
  %6232 = extractvalue %dx.types.CBufRet.f32 %6230, 1
  %6233 = extractvalue %dx.types.CBufRet.f32 %6230, 3
  %6234 = fmul fast float %6233, %6210
  %6235 = fmul fast float %6233, %6214
  %6236 = fadd fast float %6234, %6231
  %6237 = fadd fast float %6235, %6232
  %6238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6239 = extractvalue %dx.types.CBufRet.f32 %6238, 1
  %6240 = fsub fast float %6239, %6218
  %6241 = extractvalue %dx.types.CBufRet.f32 %6238, 2
  %6242 = fmul fast float %6240, %6241
  %6243 = fsub fast float 1.000000e+00, %6242
  %6244 = call float @dx.op.unary.f32(i32 7, float %6243)  ; Saturate(value)
  br i1 %6221, label %6305, label %6245

; <label>:6245                                    ; preds = %6191
  %6246 = extractvalue %dx.types.CBufRet.f32 %6230, 2
  %6247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6248 = extractvalue %dx.types.CBufRet.f32 %6247, 2
  %6249 = fadd fast float %6248, %6246
  %6250 = fcmp fast ogt float %6249, 0.000000e+00
  br i1 %6250, label %6251, label %6275

; <label>:6251                                    ; preds = %6245
  %6252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6253 = extractvalue %dx.types.CBufRet.f32 %6252, 0
  %6254 = extractvalue %dx.types.CBufRet.f32 %6252, 1
  %6255 = fsub fast float %6236, %6253
  %6256 = fsub fast float %6237, %6254
  %6257 = fcmp fast olt float %6255, 0.000000e+00
  %6258 = fcmp fast olt float %6256, 0.000000e+00
  %6259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6260 = extractvalue %dx.types.CBufRet.f32 %6259, 0
  %6261 = extractvalue %dx.types.CBufRet.f32 %6259, 1
  %6262 = extractvalue %dx.types.CBufRet.f32 %6259, 2
  %6263 = extractvalue %dx.types.CBufRet.f32 %6259, 3
  %6264 = select i1 %6257, float %6260, float %6262
  %6265 = select i1 %6258, float %6261, float %6263
  %6266 = fmul fast float %6264, %6255
  %6267 = fmul fast float %6265, %6256
  %6268 = call float @dx.op.unary.f32(i32 6, float %6266)  ; FAbs(value)
  %6269 = call float @dx.op.unary.f32(i32 6, float %6267)  ; FAbs(value)
  %6270 = extractvalue %dx.types.CBufRet.f32 %6182, 0
  %6271 = call float @dx.op.binary.f32(i32 35, float %6268, float %6269)  ; FMax(a,b)
  %6272 = fsub fast float %6270, %6271
  %6273 = call float @dx.op.unary.f32(i32 7, float %6272)  ; Saturate(value)
  %6274 = fmul fast float %6273, %6244
  br label %6275

; <label>:6275                                    ; preds = %6251, %6245
  %6276 = phi float [ %6274, %6251 ], [ 0.000000e+00, %6245 ]
  %6277 = extractvalue %dx.types.CBufRet.f32 %6222, 2
  %6278 = extractvalue %dx.types.CBufRet.f32 %6247, 1
  %6279 = fadd fast float %6278, %6277
  %6280 = fcmp fast ogt float %6279, 0.000000e+00
  br i1 %6280, label %6281, label %6305

; <label>:6281                                    ; preds = %6275
  %6282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6283 = extractvalue %dx.types.CBufRet.f32 %6282, 0
  %6284 = extractvalue %dx.types.CBufRet.f32 %6282, 1
  %6285 = fsub fast float %6228, %6283
  %6286 = fsub fast float %6229, %6284
  %6287 = fcmp fast olt float %6285, 0.000000e+00
  %6288 = fcmp fast olt float %6286, 0.000000e+00
  %6289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6290 = extractvalue %dx.types.CBufRet.f32 %6289, 0
  %6291 = extractvalue %dx.types.CBufRet.f32 %6289, 1
  %6292 = extractvalue %dx.types.CBufRet.f32 %6289, 2
  %6293 = extractvalue %dx.types.CBufRet.f32 %6289, 3
  %6294 = select i1 %6287, float %6290, float %6292
  %6295 = select i1 %6288, float %6291, float %6293
  %6296 = fmul fast float %6294, %6285
  %6297 = fmul fast float %6295, %6286
  %6298 = call float @dx.op.unary.f32(i32 6, float %6296)  ; FAbs(value)
  %6299 = call float @dx.op.unary.f32(i32 6, float %6297)  ; FAbs(value)
  %6300 = extractvalue %dx.types.CBufRet.f32 %6182, 0
  %6301 = call float @dx.op.binary.f32(i32 35, float %6298, float %6299)  ; FMax(a,b)
  %6302 = fsub fast float %6300, %6301
  %6303 = call float @dx.op.unary.f32(i32 7, float %6302)  ; Saturate(value)
  %6304 = fmul fast float %6303, %6244
  br label %6305

; <label>:6305                                    ; preds = %6281, %6275, %6191
  %6306 = phi float [ 0.000000e+00, %6191 ], [ %6304, %6281 ], [ 0.000000e+00, %6275 ]
  %6307 = phi float [ 0.000000e+00, %6191 ], [ %6276, %6281 ], [ %6276, %6275 ]
  %6308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6309 = extractvalue %dx.types.CBufRet.f32 %6308, 1
  %6310 = call float @dx.op.unary.f32(i32 7, float %6309)  ; Saturate(value)
  %6311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6312 = extractvalue %dx.types.CBufRet.f32 %6311, 0
  %6313 = extractvalue %dx.types.CBufRet.f32 %6311, 1
  %6314 = fsub fast float %6210, %6312
  %6315 = fsub fast float %6214, %6313
  %6316 = fcmp fast olt float %6314, 0.000000e+00
  %6317 = fcmp fast olt float %6315, 0.000000e+00
  %6318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6319 = extractvalue %dx.types.CBufRet.f32 %6318, 0
  %6320 = extractvalue %dx.types.CBufRet.f32 %6318, 1
  %6321 = extractvalue %dx.types.CBufRet.f32 %6318, 2
  %6322 = extractvalue %dx.types.CBufRet.f32 %6318, 3
  %6323 = select i1 %6316, float %6319, float %6321
  %6324 = select i1 %6317, float %6320, float %6322
  %6325 = fmul fast float %6323, %6314
  %6326 = fmul fast float %6324, %6315
  %6327 = call float @dx.op.unary.f32(i32 6, float %6325)  ; FAbs(value)
  %6328 = call float @dx.op.unary.f32(i32 6, float %6326)  ; FAbs(value)
  %6329 = extractvalue %dx.types.CBufRet.f32 %6182, 0
  %6330 = call float @dx.op.binary.f32(i32 35, float %6327, float %6328)  ; FMax(a,b)
  %6331 = fsub fast float %6329, %6330
  %6332 = call float @dx.op.unary.f32(i32 7, float %6331)  ; Saturate(value)
  %6333 = call float @dx.op.binary.f32(i32 36, float %6332, float %6310)  ; FMin(a,b)
  %6334 = fmul fast float %6333, %6244
  %6335 = fsub fast float %6306, %6334
  %6336 = fsub fast float %6307, %6306
  %6337 = fsub fast float %6336, %6334
  %6338 = call float @dx.op.binary.f32(i32 35, float %6306, float %6307)  ; FMax(a,b)
  %6339 = call float @dx.op.binary.f32(i32 35, float %6334, float %6338)  ; FMax(a,b)
  %6340 = fcmp fast olt float %6339, 1.000000e+00
  br i1 %6340, label %6341, label %6739, !dx.controlflow.hints !102

; <label>:6341                                    ; preds = %6305
  %6342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6343 = extractvalue %dx.types.CBufRet.f32 %6342, 0
  %6344 = fcmp fast une float %6343, 0.000000e+00
  br i1 %6344, label %6345, label %6739, !dx.controlflow.hints !103

; <label>:6345                                    ; preds = %6341
  %6346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6347 = extractvalue %dx.types.CBufRet.f32 %6346, 0
  %6348 = extractvalue %dx.types.CBufRet.f32 %6346, 1
  %6349 = extractvalue %dx.types.CBufRet.f32 %6346, 2
  %6350 = extractvalue %dx.types.CBufRet.f32 %6346, 3
  %6351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6352 = extractvalue %dx.types.CBufRet.f32 %6351, 0
  %6353 = extractvalue %dx.types.CBufRet.f32 %6351, 1
  %6354 = extractvalue %dx.types.CBufRet.f32 %6351, 2
  %6355 = extractvalue %dx.types.CBufRet.f32 %6351, 3
  %6356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6357 = extractvalue %dx.types.CBufRet.f32 %6356, 0
  %6358 = extractvalue %dx.types.CBufRet.f32 %6356, 1
  %6359 = extractvalue %dx.types.CBufRet.f32 %6356, 2
  %6360 = extractvalue %dx.types.CBufRet.f32 %6356, 3
  %6361 = fmul fast float %6347, %6187
  %6362 = call float @dx.op.tertiary.f32(i32 46, float %6188, float %6348, float %6361)  ; FMad(a,b,c)
  %6363 = call float @dx.op.tertiary.f32(i32 46, float %6189, float %6349, float %6362)  ; FMad(a,b,c)
  %6364 = fadd fast float %6363, %6350
  %6365 = fmul fast float %6352, %6187
  %6366 = call float @dx.op.tertiary.f32(i32 46, float %6188, float %6353, float %6365)  ; FMad(a,b,c)
  %6367 = call float @dx.op.tertiary.f32(i32 46, float %6189, float %6354, float %6366)  ; FMad(a,b,c)
  %6368 = fadd fast float %6367, %6355
  %6369 = fmul fast float %6357, %6187
  %6370 = call float @dx.op.tertiary.f32(i32 46, float %6188, float %6358, float %6369)  ; FMad(a,b,c)
  %6371 = call float @dx.op.tertiary.f32(i32 46, float %6189, float %6359, float %6370)  ; FMad(a,b,c)
  %6372 = fadd fast float %6371, %6360
  %6373 = fcmp fast oge float %6364, 1.000000e+00
  %6374 = fcmp fast oge float %6368, 1.000000e+00
  %6375 = or i1 %6373, %6374
  %6376 = fcmp fast olt float %6364, 0.000000e+00
  %6377 = fcmp fast olt float %6368, 0.000000e+00
  %6378 = or i1 %6376, %6377
  %6379 = or i1 %6375, %6378
  br i1 %6379, label %6739, label %6380, !dx.controlflow.hints !104

; <label>:6380                                    ; preds = %6345
  %6381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6382 = extractvalue %dx.types.CBufRet.f32 %6381, 0
  %6383 = extractvalue %dx.types.CBufRet.f32 %6381, 1
  %6384 = extractvalue %dx.types.CBufRet.f32 %6381, 2
  %6385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6386 = extractvalue %dx.types.CBufRet.i32 %6385, 2
  %6387 = uitofp i32 %6386 to float
  %6388 = extractvalue %dx.types.CBufRet.i32 %6385, 3
  %6389 = uitofp i32 %6388 to float
  %6390 = extractvalue %dx.types.CBufRet.f32 %6381, 3
  %6391 = fmul fast float %6390, 2.000000e+00
  %6392 = fsub fast float %6364, %6382
  %6393 = fsub fast float %6368, %6383
  %6394 = fmul fast float %6391, %6392
  %6395 = fmul fast float %6391, %6393
  %6396 = fdiv fast float 1.000000e+00, %6170
  %6397 = fmul fast float %6395, %6396
  %6398 = call float @dx.op.unary.f32(i32 6, float %6397)  ; FAbs(value)
  %6399 = fmul fast float %6384, %6189
  %6400 = fmul fast float %6399, %6391
  %6401 = call float @dx.op.unary.f32(i32 6, float %6400)  ; FAbs(value)
  %6402 = call float @dx.op.unary.f32(i32 6, float %6394)  ; FAbs(value)
  %6403 = call float @dx.op.binary.f32(i32 35, float %6401, float %6398)  ; FMax(a,b)
  %6404 = call float @dx.op.binary.f32(i32 35, float %6402, float %6403)  ; FMax(a,b)
  %6405 = fmul fast float %6404, 2.000000e+00
  %6406 = call float @dx.op.unary.f32(i32 23, float %6405)  ; Log(value)
  %6407 = call float @dx.op.binary.f32(i32 35, float %6406, float %6387)  ; FMax(a,b)
  %6408 = call float @dx.op.unary.f32(i32 22, float %6407)  ; Frc(value)
  %6409 = fadd fast float %6408, 0xBFEA666660000000
  %6410 = fmul fast float %6409, 8.000000e+00
  %6411 = call float @dx.op.unary.f32(i32 7, float %6410)  ; Saturate(value)
  %6412 = call float @dx.op.unary.f32(i32 27, float %6407)  ; Round_ni(value)
  %6413 = fadd fast float %6412, %6411
  %6414 = call float @dx.op.binary.f32(i32 36, float %6413, float %6389)  ; FMin(a,b)
  %6415 = call float @dx.op.unary.f32(i32 27, float %6414)  ; Round_ni(value)
  %6416 = fsub fast float -0.000000e+00, %6415
  %6417 = call float @dx.op.unary.f32(i32 21, float %6416)  ; Exp(value)
  %6418 = fmul fast float %6417, %6391
  %6419 = fmul fast float %6418, %6364
  %6420 = fmul fast float %6418, %6368
  %6421 = fmul fast float %6419, 2.500000e-01
  %6422 = fmul fast float %6420, 2.500000e-01
  %6423 = fadd fast float %6421, 5.000000e-01
  %6424 = fadd fast float %6422, 5.000000e-01
  %6425 = fsub fast float %6389, %6387
  %6426 = fptoui float %6425 to i32
  %6427 = add i32 %6426, 320
  %6428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %6427)  ; CBufferLoadLegacy(handle,regIndex)
  %6429 = extractvalue %dx.types.CBufRet.f32 %6428, 0
  %6430 = extractvalue %dx.types.CBufRet.f32 %6428, 1
  %6431 = fcmp fast une float %6414, %6389
  %6432 = fsub fast float %6364, %6429
  %6433 = fsub fast float %6368, %6430
  %6434 = call float @dx.op.unary.f32(i32 6, float %6432)  ; FAbs(value)
  %6435 = call float @dx.op.unary.f32(i32 6, float %6433)  ; FAbs(value)
  %6436 = fmul fast float %6434, %6418
  %6437 = fmul fast float %6435, %6418
  %6438 = fcmp fast olt float %6436, 1.000000e+00
  %6439 = fcmp fast olt float %6437, 1.000000e+00
  %6440 = and i1 %6438, %6439
  %6441 = or i1 %6431, %6440
  br i1 %6441, label %6442, label %6739, !dx.controlflow.hints !105

; <label>:6442                                    ; preds = %6380
  %6443 = fmul fast float %6420, 5.000000e-01
  %6444 = fmul fast float %6419, 5.000000e-01
  %6445 = fadd fast float %6443, 5.000000e-01
  %6446 = fadd fast float %6444, 5.000000e-01
  %6447 = sitofp i32 %6386 to float
  %6448 = fsub fast float %6414, %6447
  %6449 = call float @dx.op.unary.f32(i32 27, float %6448)  ; Round_ni(value)
  %6450 = call float @dx.op.unary.f32(i32 22, float %6414)  ; Frc(value)
  %6451 = call float @dx.op.unary.f32(i32 22, float %6446)  ; Frc(value)
  %6452 = call float @dx.op.unary.f32(i32 22, float %6445)  ; Frc(value)
  %6453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %50, float %6451, float %6452, float %6449, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6454 = extractvalue %dx.types.ResRet.f32 %6453, 0
  %6455 = extractvalue %dx.types.ResRet.f32 %6453, 1
  %6456 = extractvalue %dx.types.ResRet.f32 %6453, 2
  %6457 = extractvalue %dx.types.ResRet.f32 %6453, 3
  %6458 = fcmp fast ogt float %6450, 0.000000e+00
  br i1 %6458, label %6459, label %6480, !dx.controlflow.hints !106

; <label>:6459                                    ; preds = %6442
  %6460 = fadd fast float %6449, 1.000000e+00
  %6461 = call float @dx.op.unary.f32(i32 22, float %6423)  ; Frc(value)
  %6462 = call float @dx.op.unary.f32(i32 22, float %6424)  ; Frc(value)
  %6463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %50, float %6461, float %6462, float %6460, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6464 = extractvalue %dx.types.ResRet.f32 %6463, 0
  %6465 = extractvalue %dx.types.ResRet.f32 %6463, 1
  %6466 = extractvalue %dx.types.ResRet.f32 %6463, 2
  %6467 = extractvalue %dx.types.ResRet.f32 %6463, 3
  %6468 = fsub fast float %6464, %6454
  %6469 = fsub fast float %6465, %6455
  %6470 = fsub fast float %6466, %6456
  %6471 = fsub fast float %6467, %6457
  %6472 = fmul fast float %6468, %6450
  %6473 = fmul fast float %6469, %6450
  %6474 = fmul fast float %6470, %6450
  %6475 = fmul fast float %6471, %6450
  %6476 = fadd fast float %6472, %6454
  %6477 = fadd fast float %6473, %6455
  %6478 = fadd fast float %6474, %6456
  %6479 = fadd fast float %6475, %6457
  br label %6480

; <label>:6480                                    ; preds = %6459, %6442
  %6481 = phi float [ %6476, %6459 ], [ %6454, %6442 ]
  %6482 = phi float [ %6477, %6459 ], [ %6455, %6442 ]
  %6483 = phi float [ %6478, %6459 ], [ %6456, %6442 ]
  %6484 = phi float [ %6479, %6459 ], [ %6457, %6442 ]
  %6485 = fadd fast float %6481, -5.000000e-01
  %6486 = fadd fast float %6483, -5.000000e-01
  %6487 = fmul fast float %6485, 0xBFD5555560000000
  %6488 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6486, float %6487)  ; FMad(a,b,c)
  %6489 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6482, float 0.000000e+00)  ; FMad(a,b,c)
  %6490 = fadd fast float %6489, %6484
  %6491 = fmul fast float %6485, -7.500000e-01
  %6492 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6486, float %6491)  ; FMad(a,b,c)
  %6493 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6482, float 0.000000e+00)  ; FMad(a,b,c)
  %6494 = fadd fast float %6493, %6484
  %6495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6496 = extractvalue %dx.types.CBufRet.f32 %6495, 0
  %6497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6498 = extractvalue %dx.types.CBufRet.f32 %6497, 0
  %6499 = extractvalue %dx.types.CBufRet.f32 %6497, 1
  %6500 = extractvalue %dx.types.CBufRet.f32 %6497, 2
  %6501 = extractvalue %dx.types.CBufRet.f32 %6497, 3
  %6502 = fsub fast float %6498, %6488
  %6503 = fsub fast float %6499, %6490
  %6504 = fsub fast float %6500, %6492
  %6505 = fsub fast float %6501, %6494
  %6506 = fmul fast float %6502, %6496
  %6507 = fmul fast float %6503, %6496
  %6508 = fmul fast float %6504, %6496
  %6509 = fmul fast float %6505, %6496
  %6510 = fadd fast float %6506, %6488
  %6511 = fadd fast float %6507, %6490
  %6512 = fadd fast float %6508, %6492
  %6513 = fadd fast float %6509, %6494
  %6514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6515 = extractvalue %dx.types.ResRet.i32 %6514, 0
  %6516 = and i32 %6515, 536870911
  %6517 = uitofp i32 %6516 to float
  %6518 = fmul fast float %6517, %6364
  %6519 = fmul fast float %6517, %6368
  %6520 = fptoui float %6518 to i32
  %6521 = fptoui float %6519 to i32
  %6522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6523 = extractvalue %dx.types.ResRet.i32 %6522, 0
  %6524 = and i32 %6523, 31
  %6525 = lshr i32 %6520, %6524
  %6526 = lshr i32 %6521, %6524
  %6527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6528 = extractvalue %dx.types.ResRet.i32 %6527, 0
  %6529 = and i32 %6528, 31
  %6530 = shl i32 1, %6529
  %6531 = call i32 @dx.op.binary.i32(i32 40, i32 %6530, i32 4)  ; UMin(a,b)
  %6532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6533 = extractvalue %dx.types.ResRet.i32 %6532, 0
  %6534 = extractvalue %dx.types.ResRet.i32 %6532, 1
  %6535 = icmp eq i32 %6531, 0
  br i1 %6535, label %6577, label %6536

; <label>:6536                                    ; preds = %6480
  br label %6537

; <label>:6537                                    ; preds = %6565, %6536
  %6538 = phi i32 [ %6568, %6565 ], [ 0, %6536 ]
  %6539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6540 = extractvalue %dx.types.ResRet.i32 %6539, 0
  %6541 = lshr i32 %6540, 16
  %6542 = and i32 %6541, 31
  %6543 = shl i32 %6526, %6542
  %6544 = add i32 %6543, %6525
  %6545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6546 = extractvalue %dx.types.ResRet.i32 %6545, 0
  %6547 = and i32 %6546, 31
  %6548 = shl i32 %6544, %6547
  %6549 = add i32 %6548, %6538
  %6550 = shl i32 %6549, 2
  %6551 = add i32 %6550, 32
  %6552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6551, i32 undef)  ; BufferLoad(srv,index,wot)
  %6553 = extractvalue %dx.types.ResRet.i32 %6552, 0
  %6554 = icmp slt i32 %6553, 0
  %6555 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6538
  %6556 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6538
  %6557 = bitcast float* %6555 to i32*
  %6558 = bitcast float* %6556 to i32*
  br i1 %6554, label %6559, label %6565

; <label>:6559                                    ; preds = %6537
  %6560 = and i32 %6553, 1073741823
  %6561 = add nuw nsw i32 %6560, 20
  %6562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6561, i32 undef)  ; BufferLoad(srv,index,wot)
  %6563 = extractvalue %dx.types.ResRet.i32 %6562, 0
  %6564 = extractvalue %dx.types.ResRet.i32 %6562, 1
  br label %6565

; <label>:6565                                    ; preds = %6559, %6537
  %6566 = phi i32 [ %6563, %6559 ], [ %6533, %6537 ]
  %6567 = phi i32 [ %6564, %6559 ], [ %6534, %6537 ]
  store i32 %6566, i32* %6557, align 4
  store i32 %6567, i32* %6558, align 4
  %6568 = add nuw i32 %6538, 1
  %6569 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6570 = extractvalue %dx.types.CBufRet.i32 %6569, 2
  %6571 = icmp eq i32 %6570, 0
  %6572 = icmp ugt i32 %6553, -1073741825
  %6573 = and i1 %6572, %6571
  %6574 = icmp ult i32 %6568, %6531
  %6575 = and i1 %6573, %6574
  br i1 %6575, label %6537, label %6576

; <label>:6576                                    ; preds = %6565
  br label %6577

; <label>:6577                                    ; preds = %6576, %6480
  %6578 = phi i32 [ 0, %6480 ], [ %6568, %6576 ]
  %6579 = extractvalue %dx.types.CBufRet.f32 %6342, 2
  %6580 = fptoui float %6579 to i32
  %6581 = icmp eq i32 %6580, 0
  br i1 %6581, label %6633, label %6582

; <label>:6582                                    ; preds = %6577
  br label %6583

; <label>:6583                                    ; preds = %6628, %6582
  %6584 = phi i32 [ %6629, %6628 ], [ %6578, %6582 ]
  %6585 = phi i32 [ %6630, %6628 ], [ 0, %6582 ]
  %6586 = lshr i32 %6585, 2
  %6587 = and i32 %6585, 3
  %6588 = add nuw nsw i32 %6586, 83
  %6589 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 %6588)  ; CBufferLoadLegacy(handle,regIndex)
  %6590 = extractvalue %dx.types.CBufRet.i32 %6589, 0
  %6591 = extractvalue %dx.types.CBufRet.i32 %6589, 1
  %6592 = extractvalue %dx.types.CBufRet.i32 %6589, 2
  %6593 = extractvalue %dx.types.CBufRet.i32 %6589, 3
  %6594 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 0
  store i32 %6590, i32* %6594, align 4
  %6595 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 1
  store i32 %6591, i32* %6595, align 4
  %6596 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 2
  store i32 %6592, i32* %6596, align 4
  %6597 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 3
  store i32 %6593, i32* %6597, align 4
  %6598 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 %6587
  %6599 = load i32, i32* %6598, align 4, !tbaa !107, !noalias !111
  %6600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6601 = extractvalue %dx.types.ResRet.i32 %6600, 0
  %6602 = lshr i32 %6601, 16
  %6603 = and i32 %6602, 31
  %6604 = shl i32 %6526, %6603
  %6605 = add i32 %6604, %6525
  %6606 = shl i32 %6605, 2
  %6607 = add i32 %6606, %6599
  %6608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6607, i32 undef)  ; BufferLoad(srv,index,wot)
  %6609 = extractvalue %dx.types.ResRet.i32 %6608, 0
  %6610 = icmp eq i32 %6609, 0
  br i1 %6610, label %6628, label %6611

; <label>:6611                                    ; preds = %6583
  %6612 = icmp slt i32 %6609, 0
  %6613 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6584
  %6614 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6584
  %6615 = bitcast float* %6613 to i32*
  %6616 = bitcast float* %6614 to i32*
  br i1 %6612, label %6617, label %6624

; <label>:6617                                    ; preds = %6611
  %6618 = and i32 %6609, 1073741823
  %6619 = add i32 %6599, 20
  %6620 = add i32 %6619, %6618
  %6621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6620, i32 undef)  ; BufferLoad(srv,index,wot)
  %6622 = extractvalue %dx.types.ResRet.i32 %6621, 0
  %6623 = extractvalue %dx.types.ResRet.i32 %6621, 1
  br label %6624

; <label>:6624                                    ; preds = %6617, %6611
  %6625 = phi i32 [ %6622, %6617 ], [ %6533, %6611 ]
  %6626 = phi i32 [ %6623, %6617 ], [ %6534, %6611 ]
  store i32 %6625, i32* %6615, align 4
  store i32 %6626, i32* %6616, align 4
  %6627 = add i32 %6584, 1
  br label %6628

; <label>:6628                                    ; preds = %6624, %6583
  %6629 = phi i32 [ %6584, %6583 ], [ %6627, %6624 ]
  %6630 = add nuw i32 %6585, 1
  %6631 = icmp eq i32 %6630, %6580
  br i1 %6631, label %6632, label %6583

; <label>:6632                                    ; preds = %6628
  br label %6633

; <label>:6633                                    ; preds = %6632, %6577
  %6634 = phi i32 [ %6578, %6577 ], [ %6629, %6632 ]
  %6635 = icmp eq i32 %6634, 1
  %6636 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 0
  %6637 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 0
  br i1 %6635, label %6638, label %6641

; <label>:6638                                    ; preds = %6633
  %6639 = load float, float* %6636, align 4
  %6640 = load float, float* %6637, align 4
  br label %6668

; <label>:6641                                    ; preds = %6633
  %6642 = load float, float* %6636, align 4
  %6643 = load float, float* %6637, align 4
  %6644 = fdiv fast float 1.000000e+00, %6643
  %6645 = fsub fast float %6642, %6644
  %6646 = icmp ugt i32 %6634, 1
  br i1 %6646, label %6647, label %6663

; <label>:6647                                    ; preds = %6641
  br label %6648

; <label>:6648                                    ; preds = %6648, %6647
  %6649 = phi float [ %6658, %6648 ], [ %6645, %6647 ]
  %6650 = phi float [ %6659, %6648 ], [ %6642, %6647 ]
  %6651 = phi i32 [ %6660, %6648 ], [ 1, %6647 ]
  %6652 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6651
  %6653 = load float, float* %6652, align 4
  %6654 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6651
  %6655 = load float, float* %6654, align 4
  %6656 = fdiv fast float 1.000000e+00, %6655
  %6657 = fsub fast float %6653, %6656
  %6658 = call float @dx.op.binary.f32(i32 36, float %6649, float %6657)  ; FMin(a,b)
  %6659 = call float @dx.op.binary.f32(i32 35, float %6650, float %6653)  ; FMax(a,b)
  %6660 = add nuw i32 %6651, 1
  %6661 = icmp eq i32 %6660, %6634
  br i1 %6661, label %6662, label %6648

; <label>:6662                                    ; preds = %6648
  br label %6663

; <label>:6663                                    ; preds = %6662, %6641
  %6664 = phi float [ %6645, %6641 ], [ %6658, %6662 ]
  %6665 = phi float [ %6642, %6641 ], [ %6659, %6662 ]
  %6666 = fsub fast float %6665, %6664
  %6667 = fdiv fast float 1.000000e+00, %6666
  br label %6668

; <label>:6668                                    ; preds = %6663, %6638
  %6669 = phi float [ %6639, %6638 ], [ %6665, %6663 ]
  %6670 = phi float [ %6640, %6638 ], [ %6667, %6663 ]
  %6671 = fadd fast float %6372, %6669
  %6672 = fmul fast float %6671, %6670
  %6673 = call float @dx.op.unary.f32(i32 7, float %6672)  ; Saturate(value)
  %6674 = fmul fast float %6673, 2.000000e+00
  %6675 = fsub fast float 1.000000e+00, %6674
  %6676 = fmul fast float %6510, %6510
  %6677 = fsub fast float %6511, %6676
  %6678 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6677)  ; FMax(a,b)
  %6679 = fdiv fast float 1.000000e+00, %6678
  %6680 = fmul fast float %6511, %6510
  %6681 = fsub fast float %6512, %6680
  %6682 = fsub fast float %6675, %6510
  %6683 = fmul fast float %6675, %6675
  %6684 = fsub fast float %6683, %6511
  %6685 = fmul fast float %6679, %6681
  %6686 = fmul fast float %6685, %6682
  %6687 = fsub fast float %6684, %6686
  %6688 = fmul fast float %6511, %6511
  %6689 = fsub fast float %6513, %6688
  %6690 = fmul fast float %6681, %6681
  %6691 = fmul fast float %6690, %6679
  %6692 = fsub fast float %6689, %6691
  %6693 = fdiv fast float %6687, %6692
  %6694 = fmul fast float %6693, %6681
  %6695 = fsub fast float %6682, %6694
  %6696 = fmul fast float %6695, %6679
  %6697 = fmul fast float %6696, %6510
  %6698 = fsub fast float 1.000000e+00, %6697
  %6699 = fmul fast float %6693, %6511
  %6700 = fsub fast float %6698, %6699
  %6701 = fmul fast float %6696, %6696
  %6702 = fmul fast float %6693, 4.000000e+00
  %6703 = fmul fast float %6702, %6700
  %6704 = fsub fast float %6701, %6703
  %6705 = call float @dx.op.unary.f32(i32 24, float %6704)  ; Sqrt(value)
  %6706 = fcmp fast oge float %6696, 0.000000e+00
  %6707 = fsub fast float -0.000000e+00, %6705
  %6708 = select i1 %6706, float %6707, float %6705
  %6709 = fsub fast float %6708, %6696
  %6710 = fdiv fast float %6709, %6693
  %6711 = fdiv fast float %6700, %6709
  %6712 = fmul fast float %6710, 5.000000e-01
  %6713 = fmul fast float %6711, 2.000000e+00
  %6714 = select i1 %6706, float %6712, float %6713
  %6715 = select i1 %6706, float %6713, float %6712
  %6716 = call float @dx.op.binary.f32(i32 35, float %6714, float %6715)  ; FMax(a,b)
  %6717 = call float @dx.op.binary.f32(i32 36, float %6714, float %6715)  ; FMin(a,b)
  %6718 = fcmp fast ogt float %6675, %6716
  %6719 = fsub fast float %6675, %6717
  %6720 = fsub fast float %6675, %6716
  %6721 = fsub fast float %6716, %6717
  %6722 = select i1 %6718, float %6720, float %6721
  %6723 = fmul float %6719, %6722
  %6724 = select i1 %6718, float %6717, float %6675
  %6725 = fcmp fast ogt float %6675, %6717
  %6726 = fmul fast float %6724, %6716
  %6727 = fadd fast float %6724, %6716
  %6728 = fmul fast float %6727, %6510
  %6729 = fadd fast float %6726, %6511
  %6730 = fsub fast float %6729, %6728
  %6731 = fdiv fast float %6730, %6723
  %6732 = select i1 %6725, float %6731, float 0.000000e+00
  %6733 = fsub fast float 1.000000e+00, %6732
  %6734 = select i1 %6718, float %6733, float %6732
  %6735 = call float @dx.op.unary.f32(i32 7, float %6734)  ; Saturate(value)
  %6736 = extractvalue %dx.types.CBufRet.f32 %6495, 3
  %6737 = fmul fast float %6736, %6735
  %6738 = fsub fast float 1.000000e+00, %6737
  br label %6739

; <label>:6739                                    ; preds = %6668, %6380, %6345, %6341, %6305
  %6740 = phi float [ 1.000000e+00, %6305 ], [ %6738, %6668 ], [ 1.000000e+00, %6345 ], [ 1.000000e+00, %6380 ], [ 1.000000e+00, %6341 ]
  %6741 = fcmp fast ogt float %6337, 0.000000e+00
  br i1 %6741, label %6742, label %6750, !dx.controlflow.hints !120

; <label>:6742                                    ; preds = %6739
  %6743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6744 = extractvalue %dx.types.CBufRet.f32 %6743, 2
  %6745 = fadd fast float %6744, %6218
  %6746 = call float @dx.op.binary.f32(i32 35, float %6745, float 0.000000e+00)  ; FMax(a,b)
  %6747 = fadd fast float %6746, 0x3F10000000000000
  %6748 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %6236, float %6237, float undef, float undef, i32 0, i32 0, i32 undef, float %6747)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6749 = extractvalue %dx.types.ResRet.f32 %6748, 0
  br label %6750

; <label>:6750                                    ; preds = %6742, %6739
  %6751 = phi float [ %6749, %6742 ], [ 1.000000e+00, %6739 ]
  %6752 = fcmp fast ogt float %6335, 0.000000e+00
  br i1 %6752, label %6753, label %6761, !dx.controlflow.hints !121

; <label>:6753                                    ; preds = %6750
  %6754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6755 = extractvalue %dx.types.CBufRet.f32 %6754, 1
  %6756 = fadd fast float %6755, %6218
  %6757 = call float @dx.op.binary.f32(i32 35, float %6756, float 0.000000e+00)  ; FMax(a,b)
  %6758 = fadd fast float %6757, 0x3F10000000000000
  %6759 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %6228, float %6229, float undef, float undef, i32 0, i32 0, i32 undef, float %6758)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6760 = extractvalue %dx.types.ResRet.f32 %6759, 0
  br label %6761

; <label>:6761                                    ; preds = %6753, %6750
  %6762 = phi float [ %6760, %6753 ], [ 1.000000e+00, %6750 ]
  %6763 = fcmp fast ogt float %6334, 0.000000e+00
  br i1 %6763, label %6764, label %6776, !dx.controlflow.hints !122

; <label>:6764                                    ; preds = %6761
  %6765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6766 = extractvalue %dx.types.CBufRet.f32 %6765, 0
  %6767 = fadd fast float %6766, %6218
  %6768 = call float @dx.op.binary.f32(i32 35, float %6767, float 0.000000e+00)  ; FMax(a,b)
  %6769 = fadd fast float %6768, 0x3F10000000000000
  br i1 %6221, label %6770, label %6773, !dx.controlflow.hints !123

; <label>:6770                                    ; preds = %6764
  %6771 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %53, float %6210, float %6214, float undef, float undef, i32 0, i32 0, i32 undef, float %6769)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6772 = extractvalue %dx.types.ResRet.f32 %6771, 0
  br label %6776

; <label>:6773                                    ; preds = %6764
  %6774 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %6210, float %6214, float undef, float undef, i32 0, i32 0, i32 undef, float %6769)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6775 = extractvalue %dx.types.ResRet.f32 %6774, 0
  br label %6776

; <label>:6776                                    ; preds = %6773, %6770, %6761
  %6777 = phi float [ %6772, %6770 ], [ %6775, %6773 ], [ 1.000000e+00, %6761 ]
  %6778 = fsub fast float %6751, %6740
  %6779 = fmul fast float %6778, %6307
  %6780 = fadd fast float %6779, %6740
  %6781 = fsub fast float %6762, %6780
  %6782 = fmul fast float %6781, %6306
  %6783 = fadd fast float %6782, %6780
  %6784 = fsub fast float %6777, %6783
  %6785 = fmul fast float %6784, %6334
  %6786 = fadd fast float %6785, %6783
  %6787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6788 = extractvalue %dx.types.CBufRet.f32 %6787, 2
  %6789 = fcmp fast ogt float %6788, 0.000000e+00
  br i1 %6789, label %6790, label %6830, !dx.controlflow.hints !124

; <label>:6790                                    ; preds = %6776
  %6791 = fcmp fast ugt float %6788, 0.000000e+00
  br i1 %6791, label %6792, label %6827

; <label>:6792                                    ; preds = %6790
  %6793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6794 = extractvalue %dx.types.CBufRet.f32 %6793, 0
  %6795 = extractvalue %dx.types.CBufRet.f32 %6793, 1
  %6796 = extractvalue %dx.types.CBufRet.f32 %6793, 2
  %6797 = extractvalue %dx.types.CBufRet.f32 %6793, 3
  %6798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6799 = extractvalue %dx.types.CBufRet.f32 %6798, 0
  %6800 = extractvalue %dx.types.CBufRet.f32 %6798, 1
  %6801 = extractvalue %dx.types.CBufRet.f32 %6798, 2
  %6802 = extractvalue %dx.types.CBufRet.f32 %6798, 3
  %6803 = extractvalue %dx.types.CBufRet.f32 %6787, 0
  %6804 = extractvalue %dx.types.CBufRet.f32 %6787, 1
  %6805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6806 = extractvalue %dx.types.CBufRet.f32 %6805, 0
  %6807 = extractvalue %dx.types.CBufRet.f32 %6805, 1
  %6808 = extractvalue %dx.types.CBufRet.f32 %6805, 2
  %6809 = fadd fast float %6806, %6187
  %6810 = fadd fast float %6807, %6188
  %6811 = fadd fast float %6808, %6189
  %6812 = fmul fast float %6809, %6794
  %6813 = call float @dx.op.tertiary.f32(i32 46, float %6795, float %6810, float %6812)  ; FMad(a,b,c)
  %6814 = call float @dx.op.tertiary.f32(i32 46, float %6796, float %6811, float %6813)  ; FMad(a,b,c)
  %6815 = fadd fast float %6814, %6797
  %6816 = fmul fast float %6809, %6799
  %6817 = call float @dx.op.tertiary.f32(i32 46, float %6800, float %6810, float %6816)  ; FMad(a,b,c)
  %6818 = call float @dx.op.tertiary.f32(i32 46, float %6801, float %6811, float %6817)  ; FMad(a,b,c)
  %6819 = fadd fast float %6818, %6802
  %6820 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %48, float %6815, float %6819, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6821 = extractvalue %dx.types.ResRet.f32 %6820, 0
  %6822 = fmul fast float %6821, %6804
  %6823 = fadd fast float %6822, %6803
  %6824 = call float @dx.op.unary.f32(i32 7, float %6823)  ; Saturate(value)
  %6825 = fmul fast float %6824, %6788
  %6826 = fsub fast float 1.000000e+00, %6825
  br label %6827

; <label>:6827                                    ; preds = %6792, %6790
  %6828 = phi float [ %6826, %6792 ], [ 1.000000e+00, %6790 ]
  %6829 = fmul fast float %6828, %6786
  br label %6830

; <label>:6830                                    ; preds = %6827, %6776, %6167
  %6831 = phi float [ 1.000000e+00, %6167 ], [ %6829, %6827 ], [ %6786, %6776 ]
  %6832 = call float @dx.op.binary.f32(i32 36, float %6831, float %6831)  ; FMin(a,b)
  %6833 = call float @dx.op.binary.f32(i32 36, float %6831, float %6832)  ; FMin(a,b)
  %6834 = fcmp fast ogt float %6833, 0.000000e+00
  br i1 %6834, label %6835, label %6995, !dx.controlflow.hints !125

; <label>:6835                                    ; preds = %6830
  %6836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6837 = extractvalue %dx.types.CBufRet.f32 %6836, 0
  %6838 = extractvalue %dx.types.CBufRet.f32 %6836, 1
  %6839 = extractvalue %dx.types.CBufRet.f32 %6836, 2
  %6840 = extractvalue %dx.types.CBufRet.f32 %6836, 3
  %6841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6842 = extractvalue %dx.types.CBufRet.f32 %6841, 0
  %6843 = extractvalue %dx.types.CBufRet.f32 %6841, 1
  %6844 = extractvalue %dx.types.CBufRet.f32 %6841, 2
  %6845 = extractvalue %dx.types.CBufRet.f32 %6841, 3
  %6846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6847 = extractvalue %dx.types.CBufRet.f32 %6846, 0
  %6848 = extractvalue %dx.types.CBufRet.f32 %6846, 1
  %6849 = extractvalue %dx.types.CBufRet.f32 %6846, 2
  %6850 = extractvalue %dx.types.CBufRet.f32 %6846, 3
  %6851 = fmul fast float %6837, %6187
  %6852 = call float @dx.op.tertiary.f32(i32 46, float %6188, float %6838, float %6851)  ; FMad(a,b,c)
  %6853 = call float @dx.op.tertiary.f32(i32 46, float %6189, float %6839, float %6852)  ; FMad(a,b,c)
  %6854 = fadd fast float %6853, %6840
  %6855 = fmul fast float %6842, %6187
  %6856 = call float @dx.op.tertiary.f32(i32 46, float %6188, float %6843, float %6855)  ; FMad(a,b,c)
  %6857 = call float @dx.op.tertiary.f32(i32 46, float %6189, float %6844, float %6856)  ; FMad(a,b,c)
  %6858 = fadd fast float %6857, %6845
  %6859 = fmul fast float %6847, %6187
  %6860 = call float @dx.op.tertiary.f32(i32 46, float %6188, float %6848, float %6859)  ; FMad(a,b,c)
  %6861 = call float @dx.op.tertiary.f32(i32 46, float %6189, float %6849, float %6860)  ; FMad(a,b,c)
  %6862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6863 = extractvalue %dx.types.CBufRet.f32 %6862, 0
  %6864 = extractvalue %dx.types.CBufRet.f32 %6862, 1
  %6865 = extractvalue %dx.types.CBufRet.f32 %6862, 3
  %6866 = fmul fast float %6865, %6854
  %6867 = fmul fast float %6865, %6858
  %6868 = fadd fast float %6866, %6863
  %6869 = fadd fast float %6867, %6864
  %6870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6871 = extractvalue %dx.types.CBufRet.f32 %6870, 0
  %6872 = extractvalue %dx.types.CBufRet.f32 %6870, 1
  %6873 = fsub fast float %6868, %6871
  %6874 = fsub fast float %6869, %6872
  %6875 = fcmp fast olt float %6873, 0.000000e+00
  %6876 = fcmp fast olt float %6874, 0.000000e+00
  %6877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6878 = extractvalue %dx.types.CBufRet.f32 %6877, 0
  %6879 = extractvalue %dx.types.CBufRet.f32 %6877, 1
  %6880 = extractvalue %dx.types.CBufRet.f32 %6877, 2
  %6881 = extractvalue %dx.types.CBufRet.f32 %6877, 3
  %6882 = select i1 %6875, float %6878, float %6880
  %6883 = select i1 %6876, float %6879, float %6881
  %6884 = fmul fast float %6882, %6873
  %6885 = fmul fast float %6883, %6874
  %6886 = call float @dx.op.unary.f32(i32 6, float %6884)  ; FAbs(value)
  %6887 = call float @dx.op.unary.f32(i32 6, float %6885)  ; FAbs(value)
  %6888 = extractvalue %dx.types.CBufRet.f32 %6182, 0
  %6889 = call float @dx.op.binary.f32(i32 35, float %6886, float %6887)  ; FMax(a,b)
  %6890 = fsub fast float %6888, %6889
  %6891 = call float @dx.op.unary.f32(i32 7, float %6890)  ; Saturate(value)
  %6892 = fcmp fast ogt float %6891, 0.000000e+00
  br i1 %6892, label %6893, label %6934, !dx.controlflow.hints !126

; <label>:6893                                    ; preds = %6835
  %6894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %51, float %6868, float %6869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6895 = extractvalue %dx.types.ResRet.f32 %6894, 1
  %6896 = fcmp fast ogt float %6895, 0.000000e+00
  br i1 %6896, label %6897, label %6929

; <label>:6897                                    ; preds = %6893
  %6898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %51, float %6868, float %6869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6899 = extractvalue %dx.types.ResRet.f32 %6898, 0
  %6900 = extractvalue %dx.types.ResRet.f32 %6898, 1
  %6901 = extractvalue %dx.types.ResRet.f32 %6898, 2
  %6902 = extractvalue %dx.types.ResRet.f32 %6898, 3
  %6903 = fsub fast float 1.000000e+00, %6850
  %6904 = fsub fast float %6903, %6861
  %6905 = fmul fast float %6904, 0x400921FB60000000
  %6906 = fadd fast float %6905, 0x3FF921FB60000000
  %6907 = call float @dx.op.unary.f32(i32 13, float %6906)  ; Sin(value)
  %6908 = fadd fast float %6907, -1.000000e+00
  %6909 = fmul fast float %6908, 0x3FD45F3060000000
  %6910 = fmul fast float %6904, 0x401921FB60000000
  %6911 = fadd fast float %6910, 0x400921FB60000000
  %6912 = call float @dx.op.unary.f32(i32 13, float %6911)  ; Sin(value)
  %6913 = fadd fast float %6912, 0x3E7777A5C0000000
  %6914 = fmul fast float %6913, 0x3FC45F3060000000
  %6915 = fmul fast float %6904, 0x4022D97C80000000
  %6916 = fadd fast float %6915, 0x4012D97C80000000
  %6917 = call float @dx.op.unary.f32(i32 13, float %6916)  ; Sin(value)
  %6918 = fadd fast float %6917, 1.000000e+00
  %6919 = fmul fast float %6918, 0x3FBB2995E0000000
  %6920 = fmul fast float %6904, 0x402921FB60000000
  %6921 = fadd fast float %6920, 0x401921FB60000000
  %6922 = call float @dx.op.unary.f32(i32 13, float %6921)  ; Sin(value)
  %6923 = fadd fast float %6922, 0xBE8777A5C0000000
  %6924 = fmul fast float %6923, 0x3FB45F3060000000
  %6925 = call float @dx.op.dot4.f32(i32 56, float %6899, float %6900, float %6901, float %6902, float %6909, float %6914, float %6919, float %6924)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6926 = fmul fast float %6925, 0xBFF7154760000000
  %6927 = call float @dx.op.unary.f32(i32 21, float %6926)  ; Exp(value)
  %6928 = call float @dx.op.unary.f32(i32 7, float %6927)  ; Saturate(value)
  br label %6929

; <label>:6929                                    ; preds = %6897, %6893
  %6930 = phi float [ %6928, %6897 ], [ 1.000000e+00, %6893 ]
  %6931 = fadd fast float %6930, -1.000000e+00
  %6932 = fmul fast float %6931, %6891
  %6933 = fadd fast float %6932, 1.000000e+00
  br label %6934

; <label>:6934                                    ; preds = %6929, %6835
  %6935 = phi float [ %6933, %6929 ], [ 1.000000e+00, %6835 ]
  %6936 = fmul fast float %6935, %6831
  %6937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6938 = extractvalue %dx.types.CBufRet.f32 %6937, 0
  %6939 = extractvalue %dx.types.CBufRet.f32 %6937, 1
  %6940 = extractvalue %dx.types.CBufRet.f32 %6937, 2
  %6941 = fadd fast float %6938, %192
  %6942 = fadd fast float %6939, %193
  %6943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6944 = extractvalue %dx.types.CBufRet.f32 %6943, 1
  %6945 = fsub fast float -0.000000e+00, %6941
  %6946 = fsub fast float -0.000000e+00, %6942
  %6947 = fsub fast float %5603, %6940
  %6948 = fadd fast float %6947, %6944
  %6949 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6945, float %6946, float %6948)  ; Dot3(ax,ay,az,bx,by,bz)
  %6950 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6168, float %6169, float %6170)  ; Dot3(ax,ay,az,bx,by,bz)
  %6951 = fdiv fast float 1.000000e+00, %6950
  %6952 = fmul fast float %6951, %6949
  %6953 = fmul fast float %6168, %6952
  %6954 = fmul fast float %6169, %6952
  %6955 = fadd fast float %6953, %6941
  %6956 = fadd fast float %6954, %6942
  %6957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6958 = extractvalue %dx.types.CBufRet.f32 %6957, 0
  %6959 = extractvalue %dx.types.CBufRet.f32 %6957, 1
  %6960 = fsub fast float %6955, %6958
  %6961 = fsub fast float %6956, %6959
  %6962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6963 = extractvalue %dx.types.CBufRet.f32 %6962, 2
  %6964 = extractvalue %dx.types.CBufRet.f32 %6962, 3
  %6965 = fmul fast float %6960, %6963
  %6966 = fmul fast float %6961, %6964
  %6967 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6968 = extractvalue %dx.types.CBufRet.i32 %6967, 3
  %6969 = icmp eq i32 %6968, 0
  br i1 %6969, label %6975, label %6970

; <label>:6970                                    ; preds = %6934
  %6971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %6965, float %6966, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6972 = extractvalue %dx.types.ResRet.f32 %6971, 0
  %6973 = extractvalue %dx.types.ResRet.f32 %6971, 1
  %6974 = extractvalue %dx.types.ResRet.f32 %6971, 2
  br label %6980

; <label>:6975                                    ; preds = %6934
  %6976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %51, float %6965, float %6966, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6977 = extractvalue %dx.types.ResRet.f32 %6976, 0
  %6978 = extractvalue %dx.types.ResRet.f32 %6976, 1
  %6979 = extractvalue %dx.types.ResRet.f32 %6976, 2
  br label %6980

; <label>:6980                                    ; preds = %6975, %6970
  %6981 = phi float [ %6972, %6970 ], [ %6977, %6975 ]
  %6982 = phi float [ %6973, %6970 ], [ %6978, %6975 ]
  %6983 = phi float [ %6974, %6970 ], [ %6979, %6975 ]
  %6984 = extractvalue %dx.types.CBufRet.f32 %6943, 2
  %6985 = fmul fast float %6984, %6981
  %6986 = extractvalue %dx.types.CBufRet.f32 %6943, 0
  %6987 = fsub fast float %6952, %6986
  %6988 = fsub fast float %6987, %6985
  %6989 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6988)  ; FMax(a,b)
  %6990 = fmul fast float %6989, %6982
  %6991 = call float @dx.op.binary.f32(i32 36, float %6983, float %6990)  ; FMin(a,b)
  %6992 = fmul fast float %6991, 0xBFF7154760000000
  %6993 = call float @dx.op.unary.f32(i32 21, float %6992)  ; Exp(value)
  %6994 = fmul fast float %6936, %6993
  br label %6995

; <label>:6995                                    ; preds = %6980, %6830
  %6996 = phi float [ %6994, %6980 ], [ %6831, %6830 ]
  %6997 = call float @dx.op.binary.f32(i32 36, float %6996, float %6996)  ; FMin(a,b)
  %6998 = call float @dx.op.binary.f32(i32 36, float %6996, float %6997)  ; FMin(a,b)
  %6999 = fcmp fast ogt float %6998, 0.000000e+00
  br i1 %6999, label %7000, label %7304, !dx.controlflow.hints !127

; <label>:7000                                    ; preds = %6995
  %7001 = fmul fast float %6996, %6179
  %7002 = fmul fast float %6996, %6180
  %7003 = fmul fast float %6996, %6181
  %7004 = fsub fast float %194, %4798
  %7005 = fcmp fast ogt float %7004, 0.000000e+00
  %7006 = fmul fast float %6168, 5.120000e+02
  %7007 = fmul fast float %6169, 5.120000e+02
  %7008 = fmul fast float %6170, 5.120000e+02
  %7009 = fadd fast float %7008, %194
  %7010 = fsub fast float %4798, %7009
  %7011 = fmul fast float %7010, 2.000000e+00
  %7012 = fadd fast float %7011, %7009
  %7013 = select i1 %7005, float %7012, float %7009
  %7014 = fsub fast float %7013, %194
  %7015 = call float @dx.op.dot3.f32(i32 55, float %7006, float %7007, float %7014, float %7006, float %7007, float %7014)  ; Dot3(ax,ay,az,bx,by,bz)
  %7016 = call float @dx.op.unary.f32(i32 25, float %7015)  ; Rsqrt(value)
  %7017 = fmul fast float %7016, %7006
  %7018 = fmul fast float %7016, %7007
  %7019 = fmul fast float %7016, %7014
  %7020 = fsub fast float %4798, %194
  %7021 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7020)  ; Dot3(ax,ay,az,bx,by,bz)
  %7022 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7017, float %7018, float %7019)  ; Dot3(ax,ay,az,bx,by,bz)
  %7023 = fdiv fast float 1.000000e+00, %7022
  %7024 = fmul fast float %7023, %7021
  %7025 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7004, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7026 = fcmp fast ogt float %7025, 0.000000e+00
  %7027 = fcmp fast olt float %7025, 0.000000e+00
  %7028 = zext i1 %7026 to i32
  %7029 = zext i1 %7027 to i32
  %7030 = sub nsw i32 %7028, %7029
  %7031 = sitofp i32 %7030 to float
  %7032 = fsub fast float %7013, %4798
  %7033 = call float @dx.op.dot3.f32(i32 55, float %7006, float %7007, float %7032, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7034 = fcmp fast ogt float %7033, 0.000000e+00
  %7035 = fcmp fast olt float %7033, 0.000000e+00
  %7036 = zext i1 %7034 to i32
  %7037 = zext i1 %7035 to i32
  %7038 = sub nsw i32 %7036, %7037
  %7039 = sitofp i32 %7038 to float
  %7040 = fcmp fast une float %7031, %7039
  br i1 %7040, label %7041, label %7051

; <label>:7041                                    ; preds = %7000
  %7042 = fmul fast float %7024, %7019
  %7043 = fmul fast float %7024, %7018
  %7044 = fmul fast float %7024, %7017
  %7045 = fmul fast float %7044, %7044
  %7046 = fmul fast float %7043, %7043
  %7047 = fadd fast float %7045, %7046
  %7048 = fmul fast float %7042, %7042
  %7049 = fadd fast float %7047, %7048
  %7050 = call float @dx.op.unary.f32(i32 24, float %7049)  ; Sqrt(value)
  br label %7061

; <label>:7051                                    ; preds = %7000
  %7052 = icmp slt i32 %7030, 0
  br i1 %7052, label %7053, label %7061

; <label>:7053                                    ; preds = %7051
  %7054 = fsub fast float %194, %7013
  %7055 = fmul fast float %7006, %7006
  %7056 = fmul fast float %7007, %7007
  %7057 = fadd fast float %7055, %7056
  %7058 = fmul fast float %7054, %7054
  %7059 = fadd fast float %7057, %7058
  %7060 = call float @dx.op.unary.f32(i32 24, float %7059)  ; Sqrt(value)
  br label %7061

; <label>:7061                                    ; preds = %7053, %7051, %7041
  %7062 = phi float [ %7050, %7041 ], [ %7060, %7053 ], [ 0.000000e+00, %7051 ]
  %7063 = fsub fast float -0.000000e+00, %7062
  %7064 = select i1 %7005, float -0.000000e+00, float %7063
  %7065 = fmul fast float %4799, 0x3FF7154760000000
  %7066 = fmul fast float %7065, %7064
  %7067 = fmul fast float %4800, 0x3FF7154760000000
  %7068 = fmul fast float %7067, %7064
  %7069 = fmul fast float %4801, 0x3FF7154760000000
  %7070 = fmul fast float %7069, %7064
  %7071 = call float @dx.op.unary.f32(i32 21, float %7066)  ; Exp(value)
  %7072 = call float @dx.op.unary.f32(i32 21, float %7068)  ; Exp(value)
  %7073 = call float @dx.op.unary.f32(i32 21, float %7070)  ; Exp(value)
  %7074 = call float @dx.op.unary.f32(i32 7, float %7071)  ; Saturate(value)
  %7075 = call float @dx.op.unary.f32(i32 7, float %7072)  ; Saturate(value)
  %7076 = call float @dx.op.unary.f32(i32 7, float %7073)  ; Saturate(value)
  %7077 = fmul fast float %7001, %7074
  %7078 = fmul fast float %7002, %7075
  %7079 = fmul fast float %7003, %7076
  %7080 = fsub fast float %6168, %225
  %7081 = fsub fast float %6169, %226
  %7082 = fsub fast float %6170, %227
  %7083 = call float @dx.op.dot3.f32(i32 55, float %7080, float %7081, float %7082, float %7080, float %7081, float %7082)  ; Dot3(ax,ay,az,bx,by,bz)
  %7084 = call float @dx.op.unary.f32(i32 25, float %7083)  ; Rsqrt(value)
  %7085 = fmul fast float %7084, %7080
  %7086 = fmul fast float %7084, %7081
  %7087 = fmul fast float %7084, %7082
  %7088 = call float @dx.op.dot3.f32(i32 55, float %6168, float %6169, float %6170, float %5592, float %5593, float %5594)  ; Dot3(ax,ay,az,bx,by,bz)
  %7089 = call float @dx.op.dot3.f32(i32 55, float %5427, float %5428, float %5429, float %7085, float %7086, float %7087)  ; Dot3(ax,ay,az,bx,by,bz)
  %7090 = call float @dx.op.unary.f32(i32 7, float %7088)  ; Saturate(value)
  %7091 = fmul fast float %7090, %7090
  %7092 = fmul fast float %7091, %5653
  %7093 = call float @dx.op.unary.f32(i32 7, float %7092)  ; Saturate(value)
  %7094 = fmul fast float %7093, %7090
  %7095 = call float @dx.op.dot3.f32(i32 55, float %5592, float %5593, float %5594, float %7085, float %7086, float %7087)  ; Dot3(ax,ay,az,bx,by,bz)
  %7096 = fmul fast float %7095, %7095
  %7097 = call float @dx.op.unary.f32(i32 6, float %7088)  ; FAbs(value)
  %7098 = call float @dx.op.binary.f32(i32 35, float %5997, float 0x3F847AE140000000)  ; FMax(a,b)
  %7099 = fmul fast float %7098, %7098
  %7100 = fmul fast float %7099, %7099
  %7101 = fsub fast float 1.000000e+00, %7100
  %7102 = fmul fast float %5640, %5640
  %7103 = fmul fast float %7102, %7101
  %7104 = fadd fast float %7103, %7100
  %7105 = bitcast float %7104 to i32
  %7106 = ashr i32 %7105, 1
  %7107 = add nsw i32 %7106, 532487669
  %7108 = bitcast i32 %7107 to float
  %7109 = fadd fast float %7108, %5640
  %7110 = fmul fast float %7100, %7096
  %7111 = fsub fast float 1.000000e+00, %7096
  %7112 = fadd fast float %7111, %7110
  %7113 = fmul fast float %7097, %7097
  %7114 = fmul fast float %7113, %7101
  %7115 = fadd fast float %7114, %7100
  %7116 = bitcast float %7115 to i32
  %7117 = ashr i32 %7116, 1
  %7118 = add nsw i32 %7117, 532487669
  %7119 = bitcast i32 %7118 to float
  %7120 = fadd fast float %7119, %7097
  %7121 = fmul fast float %7112, %7112
  %7122 = fmul fast float %7121, %7109
  %7123 = fmul fast float %7122, %7120
  %7124 = fdiv fast float 0x3FF0A00000000000, %7123
  %7125 = fmul fast float %7124, %7100
  %7126 = call float @dx.op.unary.f32(i32 6, float %7089)  ; FAbs(value)
  %7127 = fsub fast float 1.000000e+00, %7126
  %7128 = bitcast float %7127 to i32
  %7129 = sitofp i32 %7128 to float
  %7130 = fmul fast float %7129, 5.000000e+00
  %7131 = fadd fast float %7130, 0xC1EFBF8940000000
  %7132 = fptosi float %7131 to i32
  %7133 = bitcast i32 %7132 to float
  %7134 = fsub fast float 1.000000e+00, %5598
  %7135 = fsub fast float 1.000000e+00, %5599
  %7136 = fsub fast float 1.000000e+00, %5638
  %7137 = fmul fast float %7133, %7134
  %7138 = fmul fast float %7133, %7135
  %7139 = fmul fast float %7133, %7136
  %7140 = fadd fast float %7137, %5598
  %7141 = fadd fast float %7138, %5599
  %7142 = fadd fast float %7139, %5638
  br i1 %5900, label %7143, label %7166

; <label>:7143                                    ; preds = %7061
  %7144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %4305, float %7126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7145 = extractvalue %dx.types.ResRet.f32 %7144, 0
  %7146 = extractvalue %dx.types.ResRet.f32 %7144, 1
  %7147 = extractvalue %dx.types.ResRet.f32 %7144, 2
  %7148 = fadd fast float %7145, -5.000000e-01
  %7149 = fadd fast float %7146, -5.000000e-01
  %7150 = fadd fast float %7147, -5.000000e-01
  %7151 = fmul fast float %5598, 4.000000e+00
  %7152 = fmul fast float %7151, %7134
  %7153 = fmul fast float %7152, %7148
  %7154 = fmul fast float %5599, 4.000000e+00
  %7155 = fmul fast float %7154, %7135
  %7156 = fmul fast float %7155, %7149
  %7157 = fmul fast float %5638, 4.000000e+00
  %7158 = fmul fast float %7157, %7136
  %7159 = fmul fast float %7158, %7150
  %7160 = fadd fast float %7153, %7140
  %7161 = fadd fast float %7156, %7141
  %7162 = fadd fast float %7159, %7142
  %7163 = call float @dx.op.unary.f32(i32 7, float %7160)  ; Saturate(value)
  %7164 = call float @dx.op.unary.f32(i32 7, float %7161)  ; Saturate(value)
  %7165 = call float @dx.op.unary.f32(i32 7, float %7162)  ; Saturate(value)
  br label %7166

; <label>:7166                                    ; preds = %7143, %7061
  %7167 = phi float [ %7163, %7143 ], [ %7140, %7061 ]
  %7168 = phi float [ %7164, %7143 ], [ %7141, %7061 ]
  %7169 = phi float [ %7165, %7143 ], [ %7142, %7061 ]
  %7170 = fmul fast float %7088, 9.843750e-01
  %7171 = fadd fast float %7170, 7.812500e-03
  %7172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %7171, float %5890, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7173 = extractvalue %dx.types.ResRet.f32 %7172, 2
  %7174 = extractvalue %dx.types.ResRet.f32 %7172, 3
  %7175 = fmul fast float %7173, %5598
  %7176 = fmul fast float %7173, %5599
  %7177 = fmul fast float %7173, %5638
  %7178 = fadd fast float %7175, %7174
  %7179 = fadd fast float %7176, %7174
  %7180 = fadd fast float %7177, %7174
  br i1 %5900, label %7181, label %7204

; <label>:7181                                    ; preds = %7166
  %7182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %4305, float %7088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7183 = extractvalue %dx.types.ResRet.f32 %7182, 0
  %7184 = extractvalue %dx.types.ResRet.f32 %7182, 1
  %7185 = extractvalue %dx.types.ResRet.f32 %7182, 2
  %7186 = fadd fast float %7183, -5.000000e-01
  %7187 = fadd fast float %7184, -5.000000e-01
  %7188 = fadd fast float %7185, -5.000000e-01
  %7189 = fmul fast float %5598, 4.000000e+00
  %7190 = fmul fast float %7189, %7134
  %7191 = fmul fast float %7190, %7186
  %7192 = fmul fast float %5599, 4.000000e+00
  %7193 = fmul fast float %7192, %7135
  %7194 = fmul fast float %7193, %7187
  %7195 = fmul fast float %5638, 4.000000e+00
  %7196 = fmul fast float %7195, %7136
  %7197 = fmul fast float %7196, %7188
  %7198 = fadd fast float %7191, %7178
  %7199 = fadd fast float %7194, %7179
  %7200 = fadd fast float %7197, %7180
  %7201 = call float @dx.op.unary.f32(i32 7, float %7198)  ; Saturate(value)
  %7202 = call float @dx.op.unary.f32(i32 7, float %7199)  ; Saturate(value)
  %7203 = call float @dx.op.unary.f32(i32 7, float %7200)  ; Saturate(value)
  br label %7204

; <label>:7204                                    ; preds = %7181, %7166
  %7205 = phi float [ %7201, %7181 ], [ %7178, %7166 ]
  %7206 = phi float [ %7202, %7181 ], [ %7179, %7166 ]
  %7207 = phi float [ %7203, %7181 ], [ %7180, %7166 ]
  %7208 = call float @dx.op.binary.f32(i32 35, float %7206, float %7207)  ; FMax(a,b)
  %7209 = call float @dx.op.binary.f32(i32 35, float %7205, float %7208)  ; FMax(a,b)
  %7210 = fsub fast float 1.000000e+00, %7209
  %7211 = fsub fast float -0.000000e+00, %5592
  %7212 = fsub fast float -0.000000e+00, %5593
  %7213 = fsub fast float -0.000000e+00, %5594
  %7214 = call float @dx.op.dot3.f32(i32 55, float %6168, float %6169, float %6170, float %7211, float %7212, float %7213)  ; Dot3(ax,ay,az,bx,by,bz)
  %7215 = call float @dx.op.unary.f32(i32 7, float %7214)  ; Saturate(value)
  %7216 = fmul fast float %7215, 9.843750e-01
  %7217 = fadd fast float %7216, 7.812500e-03
  %7218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %7217, float %5890, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7219 = extractvalue %dx.types.ResRet.f32 %7218, 2
  %7220 = extractvalue %dx.types.ResRet.f32 %7218, 3
  %7221 = fmul fast float %7219, %5598
  %7222 = fmul fast float %7219, %5599
  %7223 = fmul fast float %7219, %5638
  %7224 = fadd fast float %7221, %7220
  %7225 = fadd fast float %7222, %7220
  %7226 = fadd fast float %7223, %7220
  br i1 %5900, label %7227, label %7250

; <label>:7227                                    ; preds = %7204
  %7228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %4305, float %7215, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7229 = extractvalue %dx.types.ResRet.f32 %7228, 0
  %7230 = extractvalue %dx.types.ResRet.f32 %7228, 1
  %7231 = extractvalue %dx.types.ResRet.f32 %7228, 2
  %7232 = fadd fast float %7229, -5.000000e-01
  %7233 = fadd fast float %7230, -5.000000e-01
  %7234 = fadd fast float %7231, -5.000000e-01
  %7235 = fmul fast float %5598, 4.000000e+00
  %7236 = fmul fast float %7235, %7134
  %7237 = fmul fast float %7236, %7232
  %7238 = fmul fast float %5599, 4.000000e+00
  %7239 = fmul fast float %7238, %7135
  %7240 = fmul fast float %7239, %7233
  %7241 = fmul fast float %5638, 4.000000e+00
  %7242 = fmul fast float %7241, %7136
  %7243 = fmul fast float %7242, %7234
  %7244 = fadd fast float %7237, %7224
  %7245 = fadd fast float %7240, %7225
  %7246 = fadd fast float %7243, %7226
  %7247 = call float @dx.op.unary.f32(i32 7, float %7244)  ; Saturate(value)
  %7248 = call float @dx.op.unary.f32(i32 7, float %7245)  ; Saturate(value)
  %7249 = call float @dx.op.unary.f32(i32 7, float %7246)  ; Saturate(value)
  br label %7250

; <label>:7250                                    ; preds = %7227, %7204
  %7251 = phi float [ %7247, %7227 ], [ %7224, %7204 ]
  %7252 = phi float [ %7248, %7227 ], [ %7225, %7204 ]
  %7253 = phi float [ %7249, %7227 ], [ %7226, %7204 ]
  %7254 = call float @dx.op.binary.f32(i32 35, float %7252, float %7253)  ; FMax(a,b)
  %7255 = call float @dx.op.binary.f32(i32 35, float %7251, float %7254)  ; FMax(a,b)
  %7256 = fsub fast float 1.000000e+00, %7255
  %7257 = fmul fast float %7256, %7215
  %7258 = fmul fast float %7257, %4417
  %7259 = fmul fast float %7257, %4418
  %7260 = fmul fast float %7257, %4419
  %7261 = fmul fast float %7167, %7125
  %7262 = fmul fast float %7168, %7125
  %7263 = fmul fast float %7169, %7125
  %7264 = fsub fast float 1.000000e+00, %7089
  %7265 = bitcast float %7264 to i32
  %7266 = sitofp i32 %7265 to float
  %7267 = fmul fast float %7266, 5.000000e+00
  %7268 = fadd fast float %7267, 0xC1EFBF8940000000
  %7269 = fptosi float %7268 to i32
  %7270 = bitcast i32 %7269 to float
  %7271 = fmul fast float %7270, %4306
  %7272 = fmul fast float %7210, %7271
  %7273 = fmul fast float %7272, %5950
  %7274 = fmul fast float %7272, %5951
  %7275 = fmul fast float %7272, %5952
  %7276 = fmul fast float %7210, %7094
  %7277 = fadd fast float %7273, %7261
  %7278 = fadd fast float %7274, %7262
  %7279 = fadd fast float %7275, %7263
  %7280 = fadd fast float %7258, %7276
  %7281 = fadd fast float %7259, %7276
  %7282 = fadd fast float %7260, %7276
  %7283 = fmul fast float %7280, %7077
  %7284 = fmul fast float %7281, %7078
  %7285 = fmul fast float %7282, %7079
  %7286 = fmul fast float %7094, %7077
  %7287 = fmul fast float %7286, %7277
  %7288 = fmul fast float %7094, %7078
  %7289 = fmul fast float %7288, %7278
  %7290 = fmul fast float %7094, %7079
  %7291 = fmul fast float %7290, %7279
  %7292 = fadd fast float %7283, %5934
  %7293 = fmul fast float %7292, %4331
  %7294 = fadd fast float %7284, %5935
  %7295 = fmul fast float %7294, %4331
  %7296 = fadd fast float %7285, %5936
  %7297 = fmul fast float %7296, %4331
  %7298 = fadd fast float %7287, %6154
  %7299 = fmul fast float %7298, %4331
  %7300 = fadd fast float %7289, %6158
  %7301 = fmul fast float %7300, %4331
  %7302 = fadd fast float %7291, %6162
  %7303 = fmul fast float %7302, %4331
  br label %7304

; <label>:7304                                    ; preds = %7250, %6995, %6138
  %7305 = phi float [ %6155, %6138 ], [ %6155, %6995 ], [ %7299, %7250 ]
  %7306 = phi float [ %6159, %6138 ], [ %6159, %6995 ], [ %7301, %7250 ]
  %7307 = phi float [ %6163, %6138 ], [ %6163, %6995 ], [ %7303, %7250 ]
  %7308 = phi float [ %6027, %6138 ], [ %6027, %6995 ], [ %7293, %7250 ]
  %7309 = phi float [ %6028, %6138 ], [ %6028, %6995 ], [ %7295, %7250 ]
  %7310 = phi float [ %6029, %6138 ], [ %6029, %6995 ], [ %7297, %7250 ]
  %7311 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7312 = extractvalue %dx.types.CBufRet.i32 %7311, 0
  %7313 = icmp eq i32 %7312, 0
  br i1 %7313, label %7988, label %7314

; <label>:7314                                    ; preds = %7304
  %7315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7316 = extractvalue %dx.types.CBufRet.f32 %7315, 2
  %7317 = extractvalue %dx.types.CBufRet.f32 %7315, 3
  %7318 = fmul fast float %7316, %113
  %7319 = fmul fast float %7317, %114
  %7320 = fptoui float %7318 to i32
  %7321 = fptoui float %7319 to i32
  %7322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7323 = extractvalue %dx.types.CBufRet.f32 %7322, 0
  %7324 = extractvalue %dx.types.CBufRet.f32 %7322, 2
  %7325 = extractvalue %dx.types.CBufRet.f32 %7322, 3
  %7326 = fadd fast float %104, -4.000000e+00
  %7327 = call float @dx.op.binary.f32(i32 35, float %7326, float 0.000000e+00)  ; FMax(a,b)
  %7328 = fadd fast float %7327, %7323
  %7329 = fmul fast float %7328, %7324
  %7330 = call float @dx.op.unary.f32(i32 23, float %7329)  ; Log(value)
  %7331 = fmul fast float %7330, %7325
  %7332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7333 = extractvalue %dx.types.CBufRet.f32 %7332, 2
  %7334 = fmul fast float %7331, %7333
  %7335 = call float @dx.op.unary.f32(i32 7, float %7334)  ; Saturate(value)
  %7336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7337 = extractvalue %dx.types.CBufRet.i32 %7336, 1
  %7338 = add i32 %7337, -1
  %7339 = uitofp i32 %7337 to float
  %7340 = fmul fast float %7339, %7335
  %7341 = fptoui float %7340 to i32
  %7342 = call i32 @dx.op.binary.i32(i32 40, i32 %7341, i32 %7338)  ; UMin(a,b)
  %7343 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7344 = extractvalue %dx.types.CBufRet.i32 %7343, 2
  %7345 = extractvalue %dx.types.CBufRet.i32 %7343, 3
  %7346 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7321, i32 %7344, i32 %7320)  ; UMad(a,b,c)
  %7347 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7342, i32 %7345, i32 %7346)  ; UMad(a,b,c)
  %7348 = add nsw i32 %7312, -1
  %7349 = call i32 @dx.op.binary.i32(i32 37, i32 %7348, i32 0)  ; IMax(a,b)
  %7350 = call float @dx.op.binary.f32(i32 35, float %104, float 0.000000e+00)  ; FMax(a,b)
  %7351 = fptoui float %7350 to i32
  %7352 = lshr i32 %7351, 5
  %7353 = call i32 @dx.op.binary.i32(i32 40, i32 %7352, i32 8191)  ; UMin(a,b)
  %7354 = shl i32 %7353, 2
  %7355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7354, i32 undef)  ; BufferLoad(srv,index,wot)
  %7356 = extractvalue %dx.types.ResRet.i32 %7355, 0
  %7357 = lshr i32 %7356, 16
  %7358 = and i32 %7356, 65535
  %7359 = lshr i32 %7356, 21
  %7360 = lshr i32 %7358, 5
  %7361 = call i32 @dx.op.binary.i32(i32 40, i32 %7360, i32 %7349)  ; UMin(a,b)
  %7362 = icmp ugt i32 %7359, %7361
  br i1 %7362, label %7988, label %7363

; <label>:7363                                    ; preds = %7314
  br label %7364

; <label>:7364                                    ; preds = %7978, %7363
  %7365 = phi i32 [ %7985, %7978 ], [ %7359, %7363 ]
  %7366 = phi float [ %7979, %7978 ], [ %7305, %7363 ]
  %7367 = phi float [ %7980, %7978 ], [ %7306, %7363 ]
  %7368 = phi float [ %7981, %7978 ], [ %7307, %7363 ]
  %7369 = phi float [ %7982, %7978 ], [ %7308, %7363 ]
  %7370 = phi float [ %7983, %7978 ], [ %7309, %7363 ]
  %7371 = phi float [ %7984, %7978 ], [ %7310, %7363 ]
  %7372 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7373 = extractvalue %dx.types.CBufRet.i32 %7372, 0
  %7374 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7347, i32 %7373, i32 %7365)  ; UMad(a,b,c)
  %7375 = shl i32 %7374, 2
  %7376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7375, i32 undef)  ; BufferLoad(srv,index,wot)
  %7377 = extractvalue %dx.types.ResRet.i32 %7376, 0
  %7378 = shl i32 %7365, 5
  %7379 = sub nsw i32 %7357, %7378
  %7380 = call i32 @dx.op.binary.i32(i32 37, i32 %7379, i32 0)  ; IMax(a,b)
  %7381 = call i32 @dx.op.binary.i32(i32 38, i32 %7380, i32 31)  ; IMin(a,b)
  %7382 = sub nsw i32 1, %7357
  %7383 = add nsw i32 %7382, %7358
  %7384 = call i32 @dx.op.binary.i32(i32 37, i32 %7383, i32 0)  ; IMax(a,b)
  %7385 = call i32 @dx.op.binary.i32(i32 38, i32 %7384, i32 32)  ; IMin(a,b)
  %7386 = and i32 %7385, 31
  %7387 = shl i32 -1, %7386
  %7388 = xor i32 %7387, -1
  %7389 = and i32 %7381, 31
  %7390 = shl i32 %7388, %7389
  %7391 = icmp eq i32 %7385, 32
  %7392 = select i1 %7391, i32 -1, i32 %7390
  %7393 = and i32 %7392, %7377
  %7394 = icmp eq i32 %7393, 0
  br i1 %7394, label %7978, label %7395

; <label>:7395                                    ; preds = %7364
  br label %7396

; <label>:7396                                    ; preds = %7530, %7395
  %7397 = phi i32 [ %7408, %7530 ], [ %7393, %7395 ]
  %7398 = phi float [ %7531, %7530 ], [ %7366, %7395 ]
  %7399 = phi float [ %7532, %7530 ], [ %7367, %7395 ]
  %7400 = phi float [ %7533, %7530 ], [ %7368, %7395 ]
  %7401 = phi float [ %7534, %7530 ], [ %7369, %7395 ]
  %7402 = phi float [ %7535, %7530 ], [ %7370, %7395 ]
  %7403 = phi float [ %7536, %7530 ], [ %7371, %7395 ]
  %7404 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7397)  ; FirstbitLo(value)
  %7405 = add i32 %7404, %7378
  %7406 = and i32 %7404, 31
  %7407 = shl i32 1, %7406
  %7408 = xor i32 %7407, %7397
  %7409 = mul i32 %7405, 112
  %7410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7409, i32 undef)  ; BufferLoad(srv,index,wot)
  %7411 = extractvalue %dx.types.ResRet.f32 %7410, 0
  %7412 = extractvalue %dx.types.ResRet.f32 %7410, 1
  %7413 = extractvalue %dx.types.ResRet.f32 %7410, 2
  %7414 = or i32 %7409, 12
  %7415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7414, i32 undef)  ; BufferLoad(srv,index,wot)
  %7416 = extractvalue %dx.types.ResRet.f32 %7415, 0
  %7417 = add i32 %7409, 16
  %7418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7417, i32 undef)  ; BufferLoad(srv,index,wot)
  %7419 = extractvalue %dx.types.ResRet.f32 %7418, 0
  %7420 = extractvalue %dx.types.ResRet.f32 %7418, 1
  %7421 = extractvalue %dx.types.ResRet.f32 %7418, 2
  %7422 = add i32 %7409, 28
  %7423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7422, i32 undef)  ; BufferLoad(srv,index,wot)
  %7424 = extractvalue %dx.types.ResRet.i32 %7423, 0
  %7425 = add i32 %7409, 44
  %7426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7425, i32 undef)  ; BufferLoad(srv,index,wot)
  %7427 = extractvalue %dx.types.ResRet.f32 %7426, 0
  %7428 = add i32 %7409, 48
  %7429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7428, i32 undef)  ; BufferLoad(srv,index,wot)
  %7430 = extractvalue %dx.types.ResRet.f32 %7429, 0
  %7431 = extractvalue %dx.types.ResRet.f32 %7429, 1
  %7432 = extractvalue %dx.types.ResRet.f32 %7429, 2
  %7433 = extractvalue %dx.types.ResRet.f32 %7429, 3
  %7434 = add i32 %7409, 64
  %7435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7434, i32 undef)  ; BufferLoad(srv,index,wot)
  %7436 = extractvalue %dx.types.ResRet.f32 %7435, 0
  %7437 = extractvalue %dx.types.ResRet.f32 %7435, 1
  %7438 = extractvalue %dx.types.ResRet.f32 %7435, 2
  %7439 = extractvalue %dx.types.ResRet.f32 %7435, 3
  %7440 = add i32 %7409, 80
  %7441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7440, i32 undef)  ; BufferLoad(srv,index,wot)
  %7442 = extractvalue %dx.types.ResRet.f32 %7441, 1
  %7443 = extractvalue %dx.types.ResRet.f32 %7441, 2
  %7444 = add i32 %7409, 92
  %7445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7444, i32 undef)  ; BufferLoad(srv,index,wot)
  %7446 = extractvalue %dx.types.ResRet.i32 %7445, 0
  %7447 = call float @dx.op.dot3.f32(i32 55, float %7411, float %7412, float %7413, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7448 = select i1 %296, float %7442, float %7411
  %7449 = select i1 %296, float %7447, float %7412
  %7450 = select i1 %296, float %7443, float %7413
  %7451 = and i32 %7446, 65535
  %7452 = uitofp i32 %7451 to float
  %7453 = lshr i32 %7446, 16
  %7454 = uitofp i32 %7453 to float
  %7455 = and i32 %7424, 65535
  %7456 = and i32 %7424, 50331648
  %7457 = icmp eq i32 %7456, 33554432
  %7458 = fsub fast float %7430, %192
  %7459 = fsub fast float %7431, %193
  %7460 = fsub fast float %7432, %194
  %7461 = call float @dx.op.dot3.f32(i32 55, float %7458, float %7459, float %7460, float %7458, float %7459, float %7460)  ; Dot3(ax,ay,az,bx,by,bz)
  %7462 = call float @dx.op.unary.f32(i32 24, float %7461)  ; Sqrt(value)
  %7463 = fdiv fast float 1.000000e+00, %7462
  %7464 = fmul fast float %7463, %7458
  %7465 = fmul fast float %7463, %7459
  %7466 = fmul fast float %7463, %7460
  %7467 = fadd fast float %7462, %7416
  %7468 = fdiv fast float 1.000000e+00, %7467
  %7469 = fmul float %7427, %7468
  %7470 = fmul float %7469, %7469
  %7471 = call float @dx.op.unary.f32(i32 7, float %7470)  ; Saturate(value)
  br i1 %7457, label %7472, label %7493

; <label>:7472                                    ; preds = %7396
  %7473 = fmul fast float %7438, %7419
  %7474 = fmul fast float %7438, %7420
  %7475 = fmul fast float %7438, %7421
  %7476 = fadd fast float %7458, %7473
  %7477 = fadd fast float %7459, %7474
  %7478 = fadd fast float %7460, %7475
  %7479 = call float @dx.op.dot3.f32(i32 55, float %7476, float %7477, float %7478, float %7476, float %7477, float %7478)  ; Dot3(ax,ay,az,bx,by,bz)
  %7480 = call float @dx.op.unary.f32(i32 25, float %7479)  ; Rsqrt(value)
  %7481 = fmul fast float %7480, %7476
  %7482 = fmul fast float %7480, %7477
  %7483 = fmul fast float %7480, %7478
  %7484 = fsub fast float %192, %7430
  %7485 = fsub fast float %193, %7431
  %7486 = fsub fast float %194, %7432
  %7487 = fsub fast float -0.000000e+00, %7484
  %7488 = fsub fast float -0.000000e+00, %7485
  %7489 = fsub fast float -0.000000e+00, %7486
  %7490 = call float @dx.op.dot3.f32(i32 55, float %7487, float %7488, float %7489, float %7419, float %7420, float %7421)  ; Dot3(ax,ay,az,bx,by,bz)
  %7491 = fcmp fast ogt float %7490, 0.000000e+00
  %7492 = uitofp i1 %7491 to float
  br label %7493

; <label>:7493                                    ; preds = %7472, %7396
  %7494 = phi float [ %7492, %7472 ], [ 1.000000e+00, %7396 ]
  %7495 = phi float [ %7481, %7472 ], [ %7464, %7396 ]
  %7496 = phi float [ %7482, %7472 ], [ %7465, %7396 ]
  %7497 = phi float [ %7483, %7472 ], [ %7466, %7396 ]
  %7498 = call float @dx.op.dot3.f32(i32 55, float %7419, float %7420, float %7421, float %7495, float %7496, float %7497)  ; Dot3(ax,ay,az,bx,by,bz)
  %7499 = fmul fast float %7498, %7498
  %7500 = call float @dx.op.unary.f32(i32 7, float %7499)  ; Saturate(value)
  %7501 = fsub fast float 1.000000e+00, %7500
  %7502 = fmul fast float %7501, 5.000000e-01
  %7503 = fcmp fast ogt float %7498, 0.000000e+00
  %7504 = fsub fast float 1.000000e+00, %7502
  %7505 = select i1 %7503, float %7502, float %7504
  %7506 = fmul fast float %7505, %7454
  %7507 = fadd fast float %7506, %7452
  %7508 = fmul fast float %7507, 0x3EF0001000000000
  %7509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %51, float %7508, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7510 = extractvalue %dx.types.ResRet.f32 %7509, 0
  %7511 = fmul fast float %7498, %7436
  %7512 = fadd fast float %7511, %7437
  %7513 = call float @dx.op.unary.f32(i32 7, float %7512)  ; Saturate(value)
  %7514 = select i1 %7457, float 1.000000e+00, float %7513
  %7515 = select i1 %7457, float %7513, float 1.000000e+00
  %7516 = fmul fast float %7462, %7433
  %7517 = fsub fast float 1.000000e+00, %7516
  %7518 = fmul fast float %7517, %7439
  %7519 = call float @dx.op.unary.f32(i32 7, float %7518)  ; Saturate(value)
  %7520 = fmul fast float %7519, %7515
  %7521 = fmul fast float %7520, 2.000000e+00
  %7522 = fsub fast float 3.000000e+00, %7521
  %7523 = fmul fast float %7510, %7494
  %7524 = fmul fast float %7520, %7520
  %7525 = fmul fast float %7524, %7523
  %7526 = fmul fast float %7525, %7522
  %7527 = call float @dx.op.binary.f32(i32 36, float %7526, float %7526)  ; FMin(a,b)
  %7528 = call float @dx.op.binary.f32(i32 36, float %7526, float %7527)  ; FMin(a,b)
  %7529 = fcmp fast ogt float %7528, 0.000000e+00
  br i1 %7529, label %7538, label %7530, !dx.controlflow.hints !128

; <label>:7530                                    ; preds = %7926, %7638, %7493
  %7531 = phi float [ %7398, %7638 ], [ %7398, %7493 ], [ %7974, %7926 ]
  %7532 = phi float [ %7399, %7638 ], [ %7399, %7493 ], [ %7975, %7926 ]
  %7533 = phi float [ %7400, %7638 ], [ %7400, %7493 ], [ %7976, %7926 ]
  %7534 = phi float [ %7401, %7638 ], [ %7401, %7493 ], [ %7965, %7926 ]
  %7535 = phi float [ %7402, %7638 ], [ %7402, %7493 ], [ %7966, %7926 ]
  %7536 = phi float [ %7403, %7638 ], [ %7403, %7493 ], [ %7967, %7926 ]
  %7537 = icmp eq i32 %7397, %7407
  br i1 %7537, label %7977, label %7396

; <label>:7538                                    ; preds = %7493
  %7539 = icmp eq i32 %7455, 255
  br i1 %7539, label %7638, label %7540, !dx.controlflow.hints !129

; <label>:7540                                    ; preds = %7538
  %7541 = mul nuw nsw i32 %7455, 176
  %7542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7541, i32 undef)  ; BufferLoad(srv,index,wot)
  %7543 = extractvalue %dx.types.ResRet.f32 %7542, 0
  %7544 = extractvalue %dx.types.ResRet.f32 %7542, 1
  %7545 = extractvalue %dx.types.ResRet.f32 %7542, 2
  %7546 = extractvalue %dx.types.ResRet.f32 %7542, 3
  %7547 = add nuw nsw i32 %7541, 16
  %7548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7547, i32 undef)  ; BufferLoad(srv,index,wot)
  %7549 = extractvalue %dx.types.ResRet.f32 %7548, 0
  %7550 = extractvalue %dx.types.ResRet.f32 %7548, 1
  %7551 = add nuw nsw i32 %7541, 32
  %7552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7551, i32 undef)  ; BufferLoad(srv,index,wot)
  %7553 = extractvalue %dx.types.ResRet.f32 %7552, 0
  %7554 = extractvalue %dx.types.ResRet.f32 %7552, 1
  %7555 = extractvalue %dx.types.ResRet.f32 %7552, 2
  %7556 = add nuw nsw i32 %7541, 48
  %7557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7556, i32 undef)  ; BufferLoad(srv,index,wot)
  %7558 = extractvalue %dx.types.ResRet.f32 %7557, 0
  %7559 = extractvalue %dx.types.ResRet.f32 %7557, 1
  %7560 = extractvalue %dx.types.ResRet.f32 %7557, 2
  %7561 = extractvalue %dx.types.ResRet.f32 %7557, 3
  %7562 = add nuw nsw i32 %7541, 64
  %7563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7562, i32 undef)  ; BufferLoad(srv,index,wot)
  %7564 = extractvalue %dx.types.ResRet.f32 %7563, 0
  %7565 = extractvalue %dx.types.ResRet.f32 %7563, 1
  %7566 = extractvalue %dx.types.ResRet.f32 %7563, 2
  %7567 = extractvalue %dx.types.ResRet.f32 %7563, 3
  %7568 = add nuw nsw i32 %7541, 80
  %7569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7568, i32 undef)  ; BufferLoad(srv,index,wot)
  %7570 = extractvalue %dx.types.ResRet.f32 %7569, 0
  %7571 = extractvalue %dx.types.ResRet.f32 %7569, 1
  %7572 = extractvalue %dx.types.ResRet.f32 %7569, 2
  %7573 = extractvalue %dx.types.ResRet.f32 %7569, 3
  %7574 = add nuw nsw i32 %7541, 96
  %7575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7574, i32 undef)  ; BufferLoad(srv,index,wot)
  %7576 = extractvalue %dx.types.ResRet.f32 %7575, 0
  %7577 = extractvalue %dx.types.ResRet.f32 %7575, 1
  %7578 = extractvalue %dx.types.ResRet.f32 %7575, 2
  %7579 = extractvalue %dx.types.ResRet.f32 %7575, 3
  %7580 = bitcast float %7550 to i32
  %7581 = fmul fast float %7555, %120
  %7582 = fmul fast float %7555, %121
  %7583 = fmul fast float %7555, %122
  %7584 = fadd fast float %7581, %192
  %7585 = fadd fast float %7582, %193
  %7586 = fadd fast float %7583, %194
  %7587 = fmul fast float %7584, %7558
  %7588 = call float @dx.op.tertiary.f32(i32 46, float %7585, float %7564, float %7587)  ; FMad(a,b,c)
  %7589 = call float @dx.op.tertiary.f32(i32 46, float %7586, float %7570, float %7588)  ; FMad(a,b,c)
  %7590 = fadd fast float %7589, %7576
  %7591 = fmul fast float %7584, %7559
  %7592 = call float @dx.op.tertiary.f32(i32 46, float %7585, float %7565, float %7591)  ; FMad(a,b,c)
  %7593 = call float @dx.op.tertiary.f32(i32 46, float %7586, float %7571, float %7592)  ; FMad(a,b,c)
  %7594 = fadd fast float %7593, %7577
  %7595 = fmul fast float %7584, %7560
  %7596 = call float @dx.op.tertiary.f32(i32 46, float %7585, float %7566, float %7595)  ; FMad(a,b,c)
  %7597 = call float @dx.op.tertiary.f32(i32 46, float %7586, float %7572, float %7596)  ; FMad(a,b,c)
  %7598 = fadd fast float %7597, %7578
  %7599 = fmul fast float %7584, %7561
  %7600 = call float @dx.op.tertiary.f32(i32 46, float %7585, float %7567, float %7599)  ; FMad(a,b,c)
  %7601 = call float @dx.op.tertiary.f32(i32 46, float %7586, float %7573, float %7600)  ; FMad(a,b,c)
  %7602 = fadd fast float %7601, %7579
  %7603 = fdiv fast float %7590, %7602
  %7604 = fdiv fast float %7594, %7602
  %7605 = fdiv fast float %7598, %7602
  %7606 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7605)  ; FMax(a,b)
  %7607 = fmul fast float %309, 0x401921FB60000000
  %7608 = call float @dx.op.unary.f32(i32 13, float %7607)  ; Sin(value)
  %7609 = call float @dx.op.unary.f32(i32 12, float %7607)  ; Cos(value)
  %7610 = fsub fast float -0.000000e+00, %7608
  %7611 = fmul fast float %7545, 5.000000e-01
  %7612 = call float @dx.op.dot2.f32(i32 54, float %309, float %309, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7613 = call float @dx.op.unary.f32(i32 22, float %7612)  ; Frc(value)
  %7614 = fmul fast float %7613, 0x404A7DD040000000
  %7615 = call float @dx.op.unary.f32(i32 22, float %7614)  ; Frc(value)
  %7616 = fmul fast float %7615, %7554
  %7617 = fadd fast float %7616, %7611
  %7618 = call float @dx.op.tertiary.f32(i32 46, float %7617, float %7610, float 0.000000e+00)  ; FMad(a,b,c)
  %7619 = call float @dx.op.tertiary.f32(i32 46, float %7617, float %7609, float 0.000000e+00)  ; FMad(a,b,c)
  %7620 = fadd fast float %7618, %7603
  %7621 = fadd fast float %7619, %7604
  %7622 = fmul fast float %7620, %7549
  %7623 = fmul fast float %7621, %7549
  %7624 = call float @dx.op.binary.f32(i32 35, float %7622, float %7545)  ; FMax(a,b)
  %7625 = call float @dx.op.binary.f32(i32 35, float %7623, float %7545)  ; FMax(a,b)
  %7626 = call float @dx.op.binary.f32(i32 36, float %7624, float %7546)  ; FMin(a,b)
  %7627 = call float @dx.op.binary.f32(i32 36, float %7625, float %7546)  ; FMin(a,b)
  %7628 = fadd fast float %7626, %7543
  %7629 = fadd fast float %7627, %7544
  %7630 = uitofp i32 %7580 to float
  %7631 = fadd fast float %7606, %7553
  %7632 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %53, float %7628, float %7629, float %7630, float undef, i32 0, i32 0, i32 undef, float %7631)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7633 = extractvalue %dx.types.ResRet.f32 %7632, 0
  %7634 = fadd fast float %7633, -1.000000e+00
  %7635 = fmul fast float %7634, %7514
  %7636 = fadd fast float %7635, 1.000000e+00
  %7637 = fmul fast float %7636, %7526
  br label %7638

; <label>:7638                                    ; preds = %7540, %7538
  %7639 = phi float [ %7637, %7540 ], [ %7526, %7538 ]
  %7640 = call float @dx.op.binary.f32(i32 36, float %7639, float %7639)  ; FMin(a,b)
  %7641 = call float @dx.op.binary.f32(i32 36, float %7639, float %7640)  ; FMin(a,b)
  %7642 = fcmp fast ogt float %7641, 0.000000e+00
  br i1 %7642, label %7643, label %7530, !dx.controlflow.hints !130

; <label>:7643                                    ; preds = %7638
  %7644 = fmul fast float %7639, %7448
  %7645 = fmul fast float %7639, %7449
  %7646 = fmul fast float %7639, %7450
  %7647 = fsub fast float %7432, %4798
  %7648 = fcmp fast ogt float %7647, 0.000000e+00
  %7649 = fsub fast float %194, %4798
  %7650 = fcmp fast ogt float %7649, 0.000000e+00
  %7651 = xor i1 %7650, %7648
  %7652 = fsub fast float %4798, %7432
  %7653 = fmul fast float %7652, 2.000000e+00
  %7654 = fadd fast float %7653, %7432
  %7655 = select i1 %7651, float %7432, float %7654
  %7656 = fsub fast float %7655, %194
  %7657 = call float @dx.op.dot3.f32(i32 55, float %7458, float %7459, float %7656, float %7458, float %7459, float %7656)  ; Dot3(ax,ay,az,bx,by,bz)
  %7658 = call float @dx.op.unary.f32(i32 25, float %7657)  ; Rsqrt(value)
  %7659 = fmul fast float %7658, %7458
  %7660 = fmul fast float %7658, %7459
  %7661 = fmul fast float %7658, %7656
  %7662 = fsub fast float %4798, %194
  %7663 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7662)  ; Dot3(ax,ay,az,bx,by,bz)
  %7664 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7659, float %7660, float %7661)  ; Dot3(ax,ay,az,bx,by,bz)
  %7665 = fdiv fast float 1.000000e+00, %7664
  %7666 = fmul fast float %7665, %7663
  %7667 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7649, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7668 = fcmp fast ogt float %7667, 0.000000e+00
  %7669 = fcmp fast olt float %7667, 0.000000e+00
  %7670 = zext i1 %7668 to i32
  %7671 = zext i1 %7669 to i32
  %7672 = sub nsw i32 %7670, %7671
  %7673 = sitofp i32 %7672 to float
  %7674 = fsub fast float %7655, %4798
  %7675 = call float @dx.op.dot3.f32(i32 55, float %7458, float %7459, float %7674, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7676 = fcmp fast ogt float %7675, 0.000000e+00
  %7677 = fcmp fast olt float %7675, 0.000000e+00
  %7678 = zext i1 %7676 to i32
  %7679 = zext i1 %7677 to i32
  %7680 = sub nsw i32 %7678, %7679
  %7681 = sitofp i32 %7680 to float
  %7682 = fcmp fast une float %7673, %7681
  br i1 %7682, label %7683, label %7693

; <label>:7683                                    ; preds = %7643
  %7684 = fmul fast float %7666, %7661
  %7685 = fmul fast float %7666, %7660
  %7686 = fmul fast float %7666, %7659
  %7687 = fmul fast float %7686, %7686
  %7688 = fmul fast float %7685, %7685
  %7689 = fadd fast float %7687, %7688
  %7690 = fmul fast float %7684, %7684
  %7691 = fadd fast float %7689, %7690
  %7692 = call float @dx.op.unary.f32(i32 24, float %7691)  ; Sqrt(value)
  br label %7705

; <label>:7693                                    ; preds = %7643
  %7694 = icmp slt i32 %7672, 0
  br i1 %7694, label %7695, label %7705

; <label>:7695                                    ; preds = %7693
  %7696 = fsub fast float %192, %7430
  %7697 = fsub fast float %193, %7431
  %7698 = fsub fast float %194, %7655
  %7699 = fmul fast float %7696, %7696
  %7700 = fmul fast float %7697, %7697
  %7701 = fadd fast float %7699, %7700
  %7702 = fmul fast float %7698, %7698
  %7703 = fadd fast float %7701, %7702
  %7704 = call float @dx.op.unary.f32(i32 24, float %7703)  ; Sqrt(value)
  br label %7705

; <label>:7705                                    ; preds = %7695, %7693, %7683
  %7706 = phi float [ %7692, %7683 ], [ %7704, %7695 ], [ 0.000000e+00, %7693 ]
  %7707 = and i1 %7650, %7648
  %7708 = fsub fast float -0.000000e+00, %7706
  %7709 = select i1 %7707, float -0.000000e+00, float %7708
  %7710 = fmul fast float %4799, 0x3FF7154760000000
  %7711 = fmul fast float %7710, %7709
  %7712 = fmul fast float %4800, 0x3FF7154760000000
  %7713 = fmul fast float %7712, %7709
  %7714 = fmul fast float %4801, 0x3FF7154760000000
  %7715 = fmul fast float %7714, %7709
  %7716 = call float @dx.op.unary.f32(i32 21, float %7711)  ; Exp(value)
  %7717 = call float @dx.op.unary.f32(i32 21, float %7713)  ; Exp(value)
  %7718 = call float @dx.op.unary.f32(i32 21, float %7715)  ; Exp(value)
  %7719 = call float @dx.op.unary.f32(i32 7, float %7716)  ; Saturate(value)
  %7720 = call float @dx.op.unary.f32(i32 7, float %7717)  ; Saturate(value)
  %7721 = call float @dx.op.unary.f32(i32 7, float %7718)  ; Saturate(value)
  %7722 = fmul fast float %7644, %7719
  %7723 = fmul fast float %7645, %7720
  %7724 = fmul fast float %7646, %7721
  %7725 = fsub fast float %7464, %225
  %7726 = fsub fast float %7465, %226
  %7727 = fsub fast float %7466, %227
  %7728 = call float @dx.op.dot3.f32(i32 55, float %7725, float %7726, float %7727, float %7725, float %7726, float %7727)  ; Dot3(ax,ay,az,bx,by,bz)
  %7729 = call float @dx.op.unary.f32(i32 25, float %7728)  ; Rsqrt(value)
  %7730 = fmul fast float %7729, %7725
  %7731 = fmul fast float %7729, %7726
  %7732 = fmul fast float %7729, %7727
  %7733 = call float @dx.op.dot3.f32(i32 55, float %7464, float %7465, float %7466, float %5592, float %5593, float %5594)  ; Dot3(ax,ay,az,bx,by,bz)
  %7734 = call float @dx.op.dot3.f32(i32 55, float %5427, float %5428, float %5429, float %7730, float %7731, float %7732)  ; Dot3(ax,ay,az,bx,by,bz)
  %7735 = call float @dx.op.unary.f32(i32 7, float %7733)  ; Saturate(value)
  %7736 = fmul fast float %7735, %7471
  %7737 = fmul fast float %7735, %7735
  %7738 = fmul fast float %7737, %5653
  %7739 = call float @dx.op.unary.f32(i32 7, float %7738)  ; Saturate(value)
  %7740 = fmul fast float %7736, %7739
  %7741 = bitcast float %7461 to i32
  %7742 = ashr i32 %7741, 1
  %7743 = sub nsw i32 1597463007, %7742
  %7744 = bitcast i32 %7743 to float
  %7745 = fmul fast float %7744, %7458
  %7746 = fmul fast float %7744, %7459
  %7747 = fmul fast float %7744, %7460
  %7748 = fsub fast float %7745, %225
  %7749 = fsub fast float %7746, %226
  %7750 = fsub fast float %7747, %227
  %7751 = call float @dx.op.dot3.f32(i32 55, float %7748, float %7749, float %7750, float %7748, float %7749, float %7750)  ; Dot3(ax,ay,az,bx,by,bz)
  %7752 = call float @dx.op.unary.f32(i32 25, float %7751)  ; Rsqrt(value)
  %7753 = fmul fast float %7748, %7752
  %7754 = fmul fast float %7749, %7752
  %7755 = fmul fast float %7750, %7752
  %7756 = call float @dx.op.dot3.f32(i32 55, float %5592, float %5593, float %5594, float %7753, float %7754, float %7755)  ; Dot3(ax,ay,az,bx,by,bz)
  %7757 = fmul fast float %7756, %7756
  %7758 = call float @dx.op.unary.f32(i32 6, float %7733)  ; FAbs(value)
  %7759 = call float @dx.op.binary.f32(i32 35, float %5997, float 0x3F847AE140000000)  ; FMax(a,b)
  %7760 = fmul fast float %7759, %7759
  %7761 = fmul fast float %7760, %7760
  %7762 = fsub fast float 1.000000e+00, %7761
  %7763 = fmul fast float %5640, %5640
  %7764 = fmul fast float %7763, %7762
  %7765 = fadd fast float %7764, %7761
  %7766 = bitcast float %7765 to i32
  %7767 = ashr i32 %7766, 1
  %7768 = add nsw i32 %7767, 532487669
  %7769 = bitcast i32 %7768 to float
  %7770 = fadd fast float %7769, %5640
  %7771 = fmul fast float %7761, %7757
  %7772 = fsub fast float 1.000000e+00, %7757
  %7773 = fadd fast float %7772, %7771
  %7774 = fmul fast float %7758, %7758
  %7775 = fmul fast float %7774, %7762
  %7776 = fadd fast float %7775, %7761
  %7777 = bitcast float %7776 to i32
  %7778 = ashr i32 %7777, 1
  %7779 = add nsw i32 %7778, 532487669
  %7780 = bitcast i32 %7779 to float
  %7781 = fadd fast float %7780, %7758
  %7782 = fmul fast float %7773, %7773
  %7783 = fmul fast float %7782, %7770
  %7784 = fmul fast float %7783, %7781
  %7785 = fdiv fast float 1.000000e+00, %7784
  %7786 = bitcast float %7761 to i32
  %7787 = sitofp i32 %7786 to float
  %7788 = fmul fast float %7787, 0x3FE7F73180000000
  %7789 = fadd fast float %7788, 0x41AFE27C40000000
  %7790 = fptosi float %7789 to i32
  %7791 = bitcast i32 %7790 to float
  %7792 = fmul fast float %7427, 0x3FD80E9D60000000
  %7793 = fmul fast float %7792, %7744
  %7794 = fadd fast float %7791, %7793
  %7795 = bitcast float %7794 to i32
  %7796 = sub nsw i32 2129859010, %7795
  %7797 = bitcast i32 %7796 to float
  %7798 = fmul fast float %7761, %7785
  %7799 = fmul fast float %7798, %7791
  %7800 = fmul fast float %7799, %7797
  %7801 = call float @dx.op.unary.f32(i32 6, float %7734)  ; FAbs(value)
  %7802 = fsub fast float 1.000000e+00, %7801
  %7803 = bitcast float %7802 to i32
  %7804 = sitofp i32 %7803 to float
  %7805 = fmul fast float %7804, 5.000000e+00
  %7806 = fadd fast float %7805, 0xC1EFBF8940000000
  %7807 = fptosi float %7806 to i32
  %7808 = bitcast i32 %7807 to float
  %7809 = fsub fast float 1.000000e+00, %5598
  %7810 = fsub fast float 1.000000e+00, %5599
  %7811 = fsub fast float 1.000000e+00, %5638
  %7812 = fmul fast float %7808, %7809
  %7813 = fmul fast float %7808, %7810
  %7814 = fmul fast float %7808, %7811
  %7815 = fadd fast float %7812, %5598
  %7816 = fadd fast float %7813, %5599
  %7817 = fadd fast float %7814, %5638
  br i1 %5900, label %7818, label %7841

; <label>:7818                                    ; preds = %7705
  %7819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %4305, float %7801, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7820 = extractvalue %dx.types.ResRet.f32 %7819, 0
  %7821 = extractvalue %dx.types.ResRet.f32 %7819, 1
  %7822 = extractvalue %dx.types.ResRet.f32 %7819, 2
  %7823 = fadd fast float %7820, -5.000000e-01
  %7824 = fadd fast float %7821, -5.000000e-01
  %7825 = fadd fast float %7822, -5.000000e-01
  %7826 = fmul fast float %5598, 4.000000e+00
  %7827 = fmul fast float %7826, %7809
  %7828 = fmul fast float %7827, %7823
  %7829 = fmul fast float %5599, 4.000000e+00
  %7830 = fmul fast float %7829, %7810
  %7831 = fmul fast float %7830, %7824
  %7832 = fmul fast float %5638, 4.000000e+00
  %7833 = fmul fast float %7832, %7811
  %7834 = fmul fast float %7833, %7825
  %7835 = fadd fast float %7828, %7815
  %7836 = fadd fast float %7831, %7816
  %7837 = fadd fast float %7834, %7817
  %7838 = call float @dx.op.unary.f32(i32 7, float %7835)  ; Saturate(value)
  %7839 = call float @dx.op.unary.f32(i32 7, float %7836)  ; Saturate(value)
  %7840 = call float @dx.op.unary.f32(i32 7, float %7837)  ; Saturate(value)
  br label %7841

; <label>:7841                                    ; preds = %7818, %7705
  %7842 = phi float [ %7838, %7818 ], [ %7815, %7705 ]
  %7843 = phi float [ %7839, %7818 ], [ %7816, %7705 ]
  %7844 = phi float [ %7840, %7818 ], [ %7817, %7705 ]
  %7845 = fmul fast float %7733, 9.843750e-01
  %7846 = fadd fast float %7845, 7.812500e-03
  %7847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %7846, float %5890, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7848 = extractvalue %dx.types.ResRet.f32 %7847, 2
  %7849 = extractvalue %dx.types.ResRet.f32 %7847, 3
  %7850 = fmul fast float %7848, %5598
  %7851 = fmul fast float %7848, %5599
  %7852 = fmul fast float %7848, %5638
  %7853 = fadd fast float %7850, %7849
  %7854 = fadd fast float %7851, %7849
  %7855 = fadd fast float %7852, %7849
  br i1 %5900, label %7856, label %7879

; <label>:7856                                    ; preds = %7841
  %7857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %4305, float %7733, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7858 = extractvalue %dx.types.ResRet.f32 %7857, 0
  %7859 = extractvalue %dx.types.ResRet.f32 %7857, 1
  %7860 = extractvalue %dx.types.ResRet.f32 %7857, 2
  %7861 = fadd fast float %7858, -5.000000e-01
  %7862 = fadd fast float %7859, -5.000000e-01
  %7863 = fadd fast float %7860, -5.000000e-01
  %7864 = fmul fast float %5598, 4.000000e+00
  %7865 = fmul fast float %7864, %7809
  %7866 = fmul fast float %7865, %7861
  %7867 = fmul fast float %5599, 4.000000e+00
  %7868 = fmul fast float %7867, %7810
  %7869 = fmul fast float %7868, %7862
  %7870 = fmul fast float %5638, 4.000000e+00
  %7871 = fmul fast float %7870, %7811
  %7872 = fmul fast float %7871, %7863
  %7873 = fadd fast float %7866, %7853
  %7874 = fadd fast float %7869, %7854
  %7875 = fadd fast float %7872, %7855
  %7876 = call float @dx.op.unary.f32(i32 7, float %7873)  ; Saturate(value)
  %7877 = call float @dx.op.unary.f32(i32 7, float %7874)  ; Saturate(value)
  %7878 = call float @dx.op.unary.f32(i32 7, float %7875)  ; Saturate(value)
  br label %7879

; <label>:7879                                    ; preds = %7856, %7841
  %7880 = phi float [ %7876, %7856 ], [ %7853, %7841 ]
  %7881 = phi float [ %7877, %7856 ], [ %7854, %7841 ]
  %7882 = phi float [ %7878, %7856 ], [ %7855, %7841 ]
  %7883 = call float @dx.op.binary.f32(i32 35, float %7881, float %7882)  ; FMax(a,b)
  %7884 = call float @dx.op.binary.f32(i32 35, float %7880, float %7883)  ; FMax(a,b)
  %7885 = fsub fast float 1.000000e+00, %7884
  %7886 = fsub fast float -0.000000e+00, %5592
  %7887 = fsub fast float -0.000000e+00, %5593
  %7888 = fsub fast float -0.000000e+00, %5594
  %7889 = call float @dx.op.dot3.f32(i32 55, float %7464, float %7465, float %7466, float %7886, float %7887, float %7888)  ; Dot3(ax,ay,az,bx,by,bz)
  %7890 = call float @dx.op.unary.f32(i32 7, float %7889)  ; Saturate(value)
  %7891 = fmul fast float %7890, %7471
  %7892 = fmul fast float %7890, 9.843750e-01
  %7893 = fadd fast float %7892, 7.812500e-03
  %7894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %7893, float %5890, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7895 = extractvalue %dx.types.ResRet.f32 %7894, 2
  %7896 = extractvalue %dx.types.ResRet.f32 %7894, 3
  %7897 = fmul fast float %7895, %5598
  %7898 = fmul fast float %7895, %5599
  %7899 = fmul fast float %7895, %5638
  %7900 = fadd fast float %7897, %7896
  %7901 = fadd fast float %7898, %7896
  %7902 = fadd fast float %7899, %7896
  br i1 %5900, label %7903, label %7926

; <label>:7903                                    ; preds = %7879
  %7904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %4305, float %7890, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7905 = extractvalue %dx.types.ResRet.f32 %7904, 0
  %7906 = extractvalue %dx.types.ResRet.f32 %7904, 1
  %7907 = extractvalue %dx.types.ResRet.f32 %7904, 2
  %7908 = fadd fast float %7905, -5.000000e-01
  %7909 = fadd fast float %7906, -5.000000e-01
  %7910 = fadd fast float %7907, -5.000000e-01
  %7911 = fmul fast float %5598, 4.000000e+00
  %7912 = fmul fast float %7911, %7809
  %7913 = fmul fast float %7912, %7908
  %7914 = fmul fast float %5599, 4.000000e+00
  %7915 = fmul fast float %7914, %7810
  %7916 = fmul fast float %7915, %7909
  %7917 = fmul fast float %5638, 4.000000e+00
  %7918 = fmul fast float %7917, %7811
  %7919 = fmul fast float %7918, %7910
  %7920 = fadd fast float %7913, %7900
  %7921 = fadd fast float %7916, %7901
  %7922 = fadd fast float %7919, %7902
  %7923 = call float @dx.op.unary.f32(i32 7, float %7920)  ; Saturate(value)
  %7924 = call float @dx.op.unary.f32(i32 7, float %7921)  ; Saturate(value)
  %7925 = call float @dx.op.unary.f32(i32 7, float %7922)  ; Saturate(value)
  br label %7926

; <label>:7926                                    ; preds = %7903, %7879
  %7927 = phi float [ %7923, %7903 ], [ %7900, %7879 ]
  %7928 = phi float [ %7924, %7903 ], [ %7901, %7879 ]
  %7929 = phi float [ %7925, %7903 ], [ %7902, %7879 ]
  %7930 = call float @dx.op.binary.f32(i32 35, float %7928, float %7929)  ; FMax(a,b)
  %7931 = call float @dx.op.binary.f32(i32 35, float %7927, float %7930)  ; FMax(a,b)
  %7932 = fsub fast float 1.000000e+00, %7931
  %7933 = fmul fast float %7891, %7932
  %7934 = fmul fast float %7933, %4417
  %7935 = fmul fast float %7933, %4418
  %7936 = fmul fast float %7933, %4419
  %7937 = fmul fast float %7842, %7800
  %7938 = fmul fast float %7843, %7800
  %7939 = fmul fast float %7844, %7800
  %7940 = fsub fast float 1.000000e+00, %7734
  %7941 = bitcast float %7940 to i32
  %7942 = sitofp i32 %7941 to float
  %7943 = fmul fast float %7942, 5.000000e+00
  %7944 = fadd fast float %7943, 0xC1EFBF8940000000
  %7945 = fptosi float %7944 to i32
  %7946 = bitcast i32 %7945 to float
  %7947 = fmul fast float %7946, %4306
  %7948 = fmul fast float %7885, %7947
  %7949 = fmul fast float %7948, %5950
  %7950 = fmul fast float %7948, %5951
  %7951 = fmul fast float %7948, %5952
  %7952 = fmul fast float %7885, %7740
  %7953 = fadd fast float %7949, %7937
  %7954 = fadd fast float %7950, %7938
  %7955 = fadd fast float %7951, %7939
  %7956 = fadd fast float %7934, %7952
  %7957 = fadd fast float %7935, %7952
  %7958 = fadd fast float %7936, %7952
  %7959 = fmul fast float %7722, %4331
  %7960 = fmul fast float %7959, %7956
  %7961 = fmul fast float %7723, %4331
  %7962 = fmul fast float %7961, %7957
  %7963 = fmul fast float %7724, %4331
  %7964 = fmul fast float %7963, %7958
  %7965 = fadd fast float %7960, %7401
  %7966 = fadd fast float %7962, %7402
  %7967 = fadd fast float %7964, %7403
  %7968 = fmul fast float %7959, %7740
  %7969 = fmul fast float %7968, %7953
  %7970 = fmul fast float %7961, %7740
  %7971 = fmul fast float %7970, %7954
  %7972 = fmul fast float %7963, %7740
  %7973 = fmul fast float %7972, %7955
  %7974 = fadd fast float %7969, %7398
  %7975 = fadd fast float %7971, %7399
  %7976 = fadd fast float %7973, %7400
  br label %7530

; <label>:7977                                    ; preds = %7530
  br label %7978

; <label>:7978                                    ; preds = %7977, %7364
  %7979 = phi float [ %7366, %7364 ], [ %7531, %7977 ]
  %7980 = phi float [ %7367, %7364 ], [ %7532, %7977 ]
  %7981 = phi float [ %7368, %7364 ], [ %7533, %7977 ]
  %7982 = phi float [ %7369, %7364 ], [ %7534, %7977 ]
  %7983 = phi float [ %7370, %7364 ], [ %7535, %7977 ]
  %7984 = phi float [ %7371, %7364 ], [ %7536, %7977 ]
  %7985 = add i32 %7365, 1
  %7986 = icmp ugt i32 %7985, %7361
  br i1 %7986, label %7987, label %7364

; <label>:7987                                    ; preds = %7978
  br label %7988

; <label>:7988                                    ; preds = %7987, %7314, %7304
  %7989 = phi float [ %7305, %7304 ], [ %7305, %7314 ], [ %7979, %7987 ]
  %7990 = phi float [ %7306, %7304 ], [ %7306, %7314 ], [ %7980, %7987 ]
  %7991 = phi float [ %7307, %7304 ], [ %7307, %7314 ], [ %7981, %7987 ]
  %7992 = phi float [ %7308, %7304 ], [ %7308, %7314 ], [ %7982, %7987 ]
  %7993 = phi float [ %7309, %7304 ], [ %7309, %7314 ], [ %7983, %7987 ]
  %7994 = phi float [ %7310, %7304 ], [ %7310, %7314 ], [ %7984, %7987 ]
  %7995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7996 = extractvalue %dx.types.CBufRet.f32 %7995, 0
  %7997 = fmul fast float %7996, %6010
  %7998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7999 = extractvalue %dx.types.CBufRet.f32 %7998, 3
  %8000 = fsub fast float 1.000000e+00, %4309
  %8001 = call float @dx.op.unary.f32(i32 7, float %8000)  ; Saturate(value)
  %8002 = fadd fast float %7994, %4308
  %8003 = fmul fast float %8002, %4309
  %8004 = fmul fast float %8001, %7999
  %8005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8006 = extractvalue %dx.types.CBufRet.f32 %8005, 3
  %8007 = fmul fast float %7992, %5595
  %8008 = fmul fast float %7993, %5596
  %8009 = fmul fast float %7994, %5597
  %8010 = fcmp fast ogt float %104, %259
  %8011 = and i1 %8010, %4804
  %8012 = or i1 %4810, %8011
  %8013 = icmp eq i32 %4803, 2
  %8014 = fcmp fast ole float %104, %259
  %8015 = and i1 %8014, %8013
  %8016 = or i1 %8015, %8012
  br i1 %8011, label %8017, label %8266

; <label>:8017                                    ; preds = %7988
  %8018 = fmul fast float %6090, %113
  %8019 = fmul fast float %6091, %114
  %8020 = call float @dx.op.unary.f32(i32 7, float %8018)  ; Saturate(value)
  %8021 = call float @dx.op.unary.f32(i32 7, float %8019)  ; Saturate(value)
  %8022 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %8020, float %8021, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8023 = extractvalue %dx.types.ResRet.f32 %8022, 0
  %8024 = extractvalue %dx.types.ResRet.f32 %8022, 1
  %8025 = extractvalue %dx.types.ResRet.f32 %8022, 2
  %8026 = extractvalue %dx.types.ResRet.f32 %8022, 3
  %8027 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %8020, float %8021, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8028 = extractvalue %dx.types.ResRet.f32 %8027, 0
  %8029 = extractvalue %dx.types.ResRet.f32 %8027, 1
  %8030 = extractvalue %dx.types.ResRet.f32 %8027, 2
  %8031 = extractvalue %dx.types.ResRet.f32 %8027, 3
  %8032 = call float @dx.op.binary.f32(i32 35, float %8024, float %8025)  ; FMax(a,b)
  %8033 = call float @dx.op.binary.f32(i32 35, float %8023, float %8032)  ; FMax(a,b)
  %8034 = call float @dx.op.binary.f32(i32 35, float %8033, float %8026)  ; FMax(a,b)
  %8035 = call float @dx.op.binary.f32(i32 36, float %8029, float %8030)  ; FMin(a,b)
  %8036 = call float @dx.op.binary.f32(i32 36, float %8028, float %8035)  ; FMin(a,b)
  %8037 = call float @dx.op.binary.f32(i32 36, float %8036, float %8031)  ; FMin(a,b)
  %8038 = fmul fast float %8034, 2.550000e+02
  %8039 = fadd fast float %8038, 0x3F70101020000000
  %8040 = fptoui float %8039 to i32
  %8041 = fmul fast float %8037, 2.550000e+02
  %8042 = fadd fast float %8041, 0x3F70101020000000
  %8043 = fptoui float %8042 to i32
  %8044 = icmp ult i32 %8040, %8043
  br i1 %8044, label %8045, label %8211

; <label>:8045                                    ; preds = %8017
  %8046 = fcmp fast ogt float %103, 9.843750e-01
  %8047 = fadd fast float %104, -4.000000e+00
  %8048 = select i1 %8046, float -4.000000e+00, float %8047
  %8049 = call float @dx.op.binary.f32(i32 35, float %8048, float 0.000000e+00)  ; FMax(a,b)
  %8050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8051 = extractvalue %dx.types.CBufRet.f32 %8050, 0
  %8052 = fadd fast float %8051, %8049
  %8053 = extractvalue %dx.types.CBufRet.f32 %8050, 2
  %8054 = fmul fast float %8052, %8053
  %8055 = call float @dx.op.unary.f32(i32 23, float %8054)  ; Log(value)
  %8056 = extractvalue %dx.types.CBufRet.f32 %8050, 3
  %8057 = fmul fast float %8056, %8055
  %8058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8059 = extractvalue %dx.types.CBufRet.f32 %8058, 2
  %8060 = fmul fast float %8057, %8059
  %8061 = call float @dx.op.unary.f32(i32 7, float %8060)  ; Saturate(value)
  %8062 = uitofp i32 %8040 to float
  %8063 = uitofp i32 %8043 to float
  %8064 = fadd fast float %8062, 5.000000e-01
  %8065 = fadd fast float %8063, 5.000000e-01
  %8066 = fmul fast float %8059, %8064
  %8067 = fmul fast float %8059, %8065
  %8068 = fadd fast float %8066, 0x3F0FFB4800000000
  %8069 = fadd fast float %8067, 0xBF0FFB4800000000
  %8070 = call float @dx.op.binary.f32(i32 35, float %8061, float %8068)  ; FMax(a,b)
  %8071 = call float @dx.op.binary.f32(i32 36, float %8070, float %8069)  ; FMin(a,b)
  %8072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8073 = extractvalue %dx.types.CBufRet.f32 %8072, 1
  %8074 = extractvalue %dx.types.CBufRet.f32 %8072, 2
  %8075 = extractvalue %dx.types.CBufRet.f32 %8072, 0
  %8076 = fmul fast float %8073, %8071
  %8077 = fadd fast float %8075, %8076
  %8078 = fadd fast float %8075, %8074
  %8079 = fsub fast float %8073, %8074
  %8080 = fadd fast float %8079, %8075
  %8081 = call float @dx.op.binary.f32(i32 35, float %8077, float %8078)  ; FMax(a,b)
  %8082 = call float @dx.op.binary.f32(i32 36, float %8081, float %8080)  ; FMin(a,b)
  %8083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %49, float %8020, float %8021, float %8082, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8084 = extractvalue %dx.types.ResRet.f32 %8083, 0
  %8085 = extractvalue %dx.types.ResRet.f32 %8083, 1
  %8086 = extractvalue %dx.types.ResRet.f32 %8083, 2
  %8087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8088 = extractvalue %dx.types.CBufRet.i32 %8087, 0
  %8089 = extractvalue %dx.types.CBufRet.i32 %8087, 1
  %8090 = uitofp i32 %8088 to float
  %8091 = uitofp i32 %8089 to float
  %8092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8093 = extractvalue %dx.types.CBufRet.f32 %8092, 0
  %8094 = extractvalue %dx.types.CBufRet.f32 %8092, 1
  %8095 = fmul fast float %8090, %8020
  %8096 = fmul fast float %8091, %8021
  %8097 = fadd fast float %8095, -5.000000e-01
  %8098 = fadd fast float %8096, -5.000000e-01
  %8099 = call float @dx.op.unary.f32(i32 22, float %8097)  ; Frc(value)
  %8100 = call float @dx.op.unary.f32(i32 22, float %8098)  ; Frc(value)
  %8101 = fmul fast float %8099, %8099
  %8102 = fmul fast float %8101, %8099
  %8103 = fsub fast float 3.000000e+00, %8099
  %8104 = fmul fast float %8101, %8103
  %8105 = fmul fast float %8099, 3.000000e+00
  %8106 = fmul fast float %8102, 3.000000e+00
  %8107 = fmul fast float %8101, 6.000000e+00
  %8108 = fsub fast float %8106, %8107
  %8109 = fadd fast float %8108, 4.000000e+00
  %8110 = fmul fast float %8109, 0x3FC5555560000000
  %8111 = fmul fast float %8102, -3.000000e+00
  %8112 = fadd fast float %8101, %8099
  %8113 = fmul fast float %8112, 3.000000e+00
  %8114 = fadd fast float %8111, 1.000000e+00
  %8115 = fadd fast float %8114, %8113
  %8116 = fmul fast float %8102, 0x3FC5555560000000
  %8117 = fmul fast float %8100, %8100
  %8118 = fmul fast float %8117, %8100
  %8119 = fsub fast float 3.000000e+00, %8100
  %8120 = fmul fast float %8117, %8119
  %8121 = fmul fast float %8100, 3.000000e+00
  %8122 = fmul fast float %8118, 3.000000e+00
  %8123 = fmul fast float %8117, 6.000000e+00
  %8124 = fsub fast float %8122, %8123
  %8125 = fadd fast float %8124, 4.000000e+00
  %8126 = fmul fast float %8125, 0x3FC5555560000000
  %8127 = fmul fast float %8118, -3.000000e+00
  %8128 = fadd fast float %8117, %8100
  %8129 = fmul fast float %8128, 3.000000e+00
  %8130 = fadd fast float %8127, 1.000000e+00
  %8131 = fadd fast float %8130, %8129
  %8132 = fmul fast float %8118, 0x3FC5555560000000
  %8133 = fadd fast float %8099, 1.000000e+00
  %8134 = fsub fast float 1.000000e+00, %8105
  %8135 = fadd fast float %8134, %8104
  %8136 = fadd fast float %8135, %8109
  %8137 = fmul fast float %8136, 0x3FC5555560000000
  %8138 = fdiv fast float %8110, %8137
  %8139 = fsub fast float %8133, %8138
  %8140 = fsub fast float 1.000000e+00, %8099
  %8141 = fadd fast float %8115, %8102
  %8142 = fmul fast float %8141, 0x3FC5555560000000
  %8143 = fdiv fast float %8116, %8142
  %8144 = fadd fast float %8140, %8143
  %8145 = fadd fast float %8100, 1.000000e+00
  %8146 = fsub fast float 1.000000e+00, %8121
  %8147 = fadd fast float %8146, %8120
  %8148 = fadd fast float %8147, %8125
  %8149 = fmul fast float %8148, 0x3FC5555560000000
  %8150 = fdiv fast float %8126, %8149
  %8151 = fsub fast float %8145, %8150
  %8152 = fsub fast float 1.000000e+00, %8100
  %8153 = fadd fast float %8131, %8118
  %8154 = fmul fast float %8153, 0x3FC5555560000000
  %8155 = fdiv fast float %8132, %8154
  %8156 = fadd fast float %8155, %8152
  %8157 = fmul fast float %8139, %8093
  %8158 = fsub fast float %8020, %8157
  %8159 = fmul fast float %8144, %8093
  %8160 = fadd fast float %8159, %8020
  %8161 = fmul fast float %8156, %8094
  %8162 = fadd fast float %8161, %8021
  %8163 = fmul fast float %8151, %8094
  %8164 = fsub fast float %8021, %8163
  %8165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %8158, float %8164, float %8082, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8166 = extractvalue %dx.types.ResRet.f32 %8165, 0
  %8167 = extractvalue %dx.types.ResRet.f32 %8165, 1
  %8168 = extractvalue %dx.types.ResRet.f32 %8165, 2
  %8169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %8160, float %8164, float %8082, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8170 = extractvalue %dx.types.ResRet.f32 %8169, 0
  %8171 = extractvalue %dx.types.ResRet.f32 %8169, 1
  %8172 = extractvalue %dx.types.ResRet.f32 %8169, 2
  %8173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %8158, float %8162, float %8082, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8174 = extractvalue %dx.types.ResRet.f32 %8173, 0
  %8175 = extractvalue %dx.types.ResRet.f32 %8173, 1
  %8176 = extractvalue %dx.types.ResRet.f32 %8173, 2
  %8177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %8160, float %8162, float %8082, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8178 = extractvalue %dx.types.ResRet.f32 %8177, 0
  %8179 = extractvalue %dx.types.ResRet.f32 %8177, 1
  %8180 = extractvalue %dx.types.ResRet.f32 %8177, 2
  %8181 = fsub fast float %8174, %8166
  %8182 = fsub fast float %8175, %8167
  %8183 = fsub fast float %8176, %8168
  %8184 = fmul fast float %8181, %8154
  %8185 = fmul fast float %8182, %8154
  %8186 = fmul fast float %8183, %8154
  %8187 = fadd fast float %8184, %8166
  %8188 = fadd fast float %8185, %8167
  %8189 = fadd fast float %8186, %8168
  %8190 = fsub fast float %8178, %8170
  %8191 = fsub fast float %8179, %8171
  %8192 = fsub fast float %8180, %8172
  %8193 = fmul fast float %8190, %8154
  %8194 = fmul fast float %8191, %8154
  %8195 = fmul fast float %8192, %8154
  %8196 = fsub fast float %8170, %8187
  %8197 = fadd fast float %8196, %8193
  %8198 = fsub fast float %8171, %8188
  %8199 = fadd fast float %8198, %8194
  %8200 = fsub fast float %8172, %8189
  %8201 = fadd fast float %8200, %8195
  %8202 = fmul fast float %8197, %8142
  %8203 = fmul fast float %8199, %8142
  %8204 = fmul fast float %8201, %8142
  %8205 = fadd fast float %8202, %8187
  %8206 = fadd fast float %8203, %8188
  %8207 = fadd fast float %8204, %8189
  %8208 = fmul fast float %8205, %6145
  %8209 = fmul fast float %8206, %6145
  %8210 = fmul fast float %8207, %6145
  br label %8211

; <label>:8211                                    ; preds = %8045, %8017
  %8212 = phi float [ %8084, %8045 ], [ 1.000000e+00, %8017 ]
  %8213 = phi float [ %8085, %8045 ], [ 1.000000e+00, %8017 ]
  %8214 = phi float [ %8086, %8045 ], [ 1.000000e+00, %8017 ]
  %8215 = phi float [ %8208, %8045 ], [ 0.000000e+00, %8017 ]
  %8216 = phi float [ %8209, %8045 ], [ 0.000000e+00, %8017 ]
  %8217 = phi float [ %8210, %8045 ], [ 0.000000e+00, %8017 ]
  %8218 = call float @dx.op.dot3.f32(i32 55, float %8212, float %8213, float %8214, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8219 = call float @dx.op.dot3.f32(i32 55, float %8215, float %8216, float %8217, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8220 = select i1 %296, float %8218, float %8212
  %8221 = select i1 %296, float %8218, float %8213
  %8222 = select i1 %296, float 1.000000e+00, float %8214
  %8223 = select i1 %296, float %8219, float %8215
  %8224 = select i1 %296, float 0.000000e+00, float %8216
  %8225 = select i1 %296, float 0.000000e+00, float %8217
  %8226 = fmul fast float %8220, %8007
  %8227 = fmul fast float %8221, %8008
  %8228 = fmul fast float %8222, %8009
  %8229 = fadd fast float %8226, %8223
  %8230 = fadd fast float %8227, %8224
  %8231 = fadd fast float %8225, %8228
  %8232 = fmul fast float %8220, %7989
  %8233 = fmul fast float %8221, %7990
  %8234 = fmul fast float %8222, %7991
  %8235 = fmul fast float %141, %6090
  %8236 = fmul fast float %143, %6091
  %8237 = fsub fast float 1.000000e+00, %8235
  %8238 = fsub fast float 1.000000e+00, %8236
  %8239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8240 = extractvalue %dx.types.CBufRet.f32 %8239, 0
  %8241 = extractvalue %dx.types.CBufRet.f32 %8239, 1
  %8242 = extractvalue %dx.types.CBufRet.f32 %8239, 2
  %8243 = fmul fast float %8237, %8240
  %8244 = fmul fast float %8237, %8241
  %8245 = fmul fast float %8237, %8242
  %8246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8247 = extractvalue %dx.types.CBufRet.f32 %8246, 0
  %8248 = extractvalue %dx.types.CBufRet.f32 %8246, 1
  %8249 = extractvalue %dx.types.CBufRet.f32 %8246, 2
  %8250 = fmul fast float %8238, %8247
  %8251 = fmul fast float %8238, %8248
  %8252 = fmul fast float %8238, %8249
  %8253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8254 = extractvalue %dx.types.CBufRet.f32 %8253, 0
  %8255 = extractvalue %dx.types.CBufRet.f32 %8253, 1
  %8256 = extractvalue %dx.types.CBufRet.f32 %8253, 2
  %8257 = fadd fast float %8250, %8254
  %8258 = fadd fast float %8257, %8243
  %8259 = fadd fast float %8251, %8255
  %8260 = fadd fast float %8259, %8244
  %8261 = fadd fast float %8252, %8256
  %8262 = fadd fast float %8261, %8245
  %8263 = fmul fast float %8258, %259
  %8264 = fmul fast float %8260, %259
  %8265 = fmul fast float %8262, %259
  br label %8266

; <label>:8266                                    ; preds = %8211, %7988
  %8267 = phi float [ %8263, %8211 ], [ %192, %7988 ]
  %8268 = phi float [ %8264, %8211 ], [ %193, %7988 ]
  %8269 = phi float [ %8265, %8211 ], [ %194, %7988 ]
  %8270 = phi float [ %259, %8211 ], [ %104, %7988 ]
  %8271 = phi float [ %8229, %8211 ], [ %8007, %7988 ]
  %8272 = phi float [ %8230, %8211 ], [ %8008, %7988 ]
  %8273 = phi float [ %8231, %8211 ], [ %8009, %7988 ]
  %8274 = phi float [ %8232, %8211 ], [ %7989, %7988 ]
  %8275 = phi float [ %8233, %8211 ], [ %7990, %7988 ]
  %8276 = phi float [ %8234, %8211 ], [ %7991, %7988 ]
  %8277 = phi float [ %8212, %8211 ], [ 1.000000e+00, %7988 ]
  br i1 %8016, label %9419, label %8278

; <label>:8278                                    ; preds = %8266
  %8279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8280 = extractvalue %dx.types.CBufRet.f32 %8279, 0
  %8281 = extractvalue %dx.types.CBufRet.f32 %8279, 1
  %8282 = extractvalue %dx.types.CBufRet.f32 %8279, 2
  %8283 = extractvalue %dx.types.CBufRet.f32 %8279, 3
  %8284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8285 = extractvalue %dx.types.CBufRet.f32 %8284, 0
  %8286 = extractvalue %dx.types.CBufRet.f32 %8284, 1
  %8287 = extractvalue %dx.types.CBufRet.f32 %8284, 2
  %8288 = extractvalue %dx.types.CBufRet.f32 %8284, 3
  %8289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8290 = extractvalue %dx.types.CBufRet.f32 %8289, 0
  %8291 = extractvalue %dx.types.CBufRet.f32 %8289, 1
  %8292 = extractvalue %dx.types.CBufRet.f32 %8289, 2
  %8293 = extractvalue %dx.types.CBufRet.f32 %8289, 3
  %8294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8295 = extractvalue %dx.types.CBufRet.f32 %8294, 0
  %8296 = extractvalue %dx.types.CBufRet.f32 %8294, 1
  %8297 = extractvalue %dx.types.CBufRet.f32 %8294, 2
  %8298 = extractvalue %dx.types.CBufRet.f32 %8294, 3
  %8299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8300 = extractvalue %dx.types.CBufRet.f32 %8299, 3
  %8301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8302 = extractvalue %dx.types.CBufRet.f32 %8301, 3
  %8303 = extractvalue %dx.types.CBufRet.f32 %8301, 0
  %8304 = extractvalue %dx.types.CBufRet.f32 %8301, 1
  %8305 = extractvalue %dx.types.CBufRet.f32 %8301, 2
  %8306 = fcmp fast olt float %8305, -5.000000e-01
  %8307 = call float @dx.op.dot3.f32(i32 55, float %8267, float %8268, float %8269, float %8267, float %8268, float %8269)  ; Dot3(ax,ay,az,bx,by,bz)
  %8308 = call float @dx.op.unary.f32(i32 25, float %8307)  ; Rsqrt(value)
  %8309 = fmul fast float %8308, %8307
  %8310 = fmul fast float %8308, %8267
  %8311 = fmul fast float %8308, %8268
  %8312 = fmul fast float %8308, %8269
  %8313 = fadd fast float %8309, %8283
  %8314 = call float @dx.op.dot3.f32(i32 55, float %8310, float %8311, float %8312, float %8280, float %8281, float %8282)  ; Dot3(ax,ay,az,bx,by,bz)
  %8315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8316 = extractvalue %dx.types.CBufRet.i32 %8315, 1
  %8317 = and i32 %8316, 1
  %8318 = icmp ne i32 %8317, 0
  %8319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8320 = extractvalue %dx.types.CBufRet.f32 %8319, 2
  %8321 = fcmp fast ogt float %8320, 0.000000e+00
  %8322 = and i1 %8318, %8321
  br i1 %8322, label %8323, label %8729, !dx.controlflow.hints !131

; <label>:8323                                    ; preds = %8278
  %8324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8325 = extractvalue %dx.types.CBufRet.f32 %8324, 3
  %8326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8327 = extractvalue %dx.types.CBufRet.f32 %8326, 2
  %8328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8329 = extractvalue %dx.types.CBufRet.f32 %8328, 2
  %8330 = fsub fast float %8327, %8329
  %8331 = and i32 %8316, 2
  %8332 = extractvalue %dx.types.CBufRet.i32 %8315, 0
  %8333 = call i32 @dx.op.binary.i32(i32 40, i32 %8332, i32 3)  ; UMin(a,b)
  %8334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8335 = extractvalue %dx.types.CBufRet.f32 %8334, 0
  %8336 = extractvalue %dx.types.CBufRet.f32 %8334, 1
  %8337 = extractvalue %dx.types.CBufRet.f32 %8328, 0
  %8338 = extractvalue %dx.types.CBufRet.f32 %8328, 1
  %8339 = fsub fast float %8335, %8337
  %8340 = fsub fast float %8336, %8338
  %8341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8342 = extractvalue %dx.types.CBufRet.f32 %8341, 0
  %8343 = fcmp fast ogt float %8342, 0.000000e+00
  %8344 = fsub fast float -0.000000e+00, %8339
  %8345 = fsub fast float -0.000000e+00, %8340
  %8346 = call float @dx.op.dot2.f32(i32 54, float %8310, float %8311, float %8310, float %8311)  ; Dot2(ax,ay,bx,by)
  %8347 = call float @dx.op.dot2.f32(i32 54, float %8310, float %8311, float %8344, float %8345)  ; Dot2(ax,ay,bx,by)
  %8348 = fmul fast float %8347, 2.000000e+00
  %8349 = call float @dx.op.dot2.f32(i32 54, float %8344, float %8345, float %8344, float %8345)  ; Dot2(ax,ay,bx,by)
  %8350 = fmul fast float %8342, %8342
  %8351 = fsub fast float %8349, %8350
  %8352 = fmul fast float %8348, %8348
  %8353 = fmul fast float %8346, 4.000000e+00
  %8354 = fmul fast float %8353, %8351
  %8355 = fsub fast float %8352, %8354
  %8356 = fcmp fast ogt float %8355, 0.000000e+00
  br i1 %8356, label %8357, label %8372

; <label>:8357                                    ; preds = %8323
  %8358 = fcmp fast ogt float %8348, 0.000000e+00
  %8359 = call float @dx.op.unary.f32(i32 24, float %8355)  ; Sqrt(value)
  %8360 = fsub fast float -0.000000e+00, %8359
  %8361 = select i1 %8358, float %8359, float %8360
  %8362 = fadd fast float %8361, %8348
  %8363 = fmul float %8362, -5.000000e-01
  %8364 = fdiv fast float %8363, %8346
  %8365 = call float @dx.op.binary.f32(i32 35, float %8364, float 0.000000e+00)  ; FMax(a,b)
  %8366 = call float @dx.op.binary.f32(i32 36, float %8309, float %8365)  ; FMin(a,b)
  %8367 = fdiv fast float %8351, %8363
  %8368 = call float @dx.op.binary.f32(i32 35, float %8367, float 0.000000e+00)  ; FMax(a,b)
  %8369 = call float @dx.op.binary.f32(i32 36, float %8309, float %8368)  ; FMin(a,b)
  %8370 = call float @dx.op.binary.f32(i32 36, float %8366, float %8369)  ; FMin(a,b)
  %8371 = call float @dx.op.binary.f32(i32 35, float %8366, float %8369)  ; FMax(a,b)
  br label %8372

; <label>:8372                                    ; preds = %8357, %8323
  %8373 = phi float [ %8371, %8357 ], [ -1.000000e+00, %8323 ]
  %8374 = phi float [ %8370, %8357 ], [ -1.000000e+00, %8323 ]
  %8375 = phi i1 [ true, %8357 ], [ false, %8323 ]
  %8376 = and i1 %8343, %8375
  br i1 %8376, label %8377, label %8379

; <label>:8377                                    ; preds = %8372
  %8378 = fcmp fast oeq float %8374, %8373
  br i1 %8378, label %8682, label %8380

; <label>:8379                                    ; preds = %8372
  br i1 %8343, label %8682, label %8380

; <label>:8380                                    ; preds = %8379, %8377
  %8381 = phi float [ %8309, %8379 ], [ %8373, %8377 ]
  %8382 = phi float [ 0.000000e+00, %8379 ], [ %8374, %8377 ]
  %8383 = icmp ne i32 %8331, 0
  %8384 = fmul fast float %8381, %8312
  %8385 = fadd fast float %8384, %8325
  %8386 = fmul fast float %8385, %8381
  %8387 = select i1 %8383, float 0.000000e+00, float %8386
  %8388 = fcmp fast oeq float %8312, 0.000000e+00
  %8389 = fdiv fast float %8330, %8312
  %8390 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8389)  ; FMax(a,b)
  %8391 = select i1 %8388, float %8381, float %8390
  %8392 = call float @dx.op.binary.f32(i32 36, float %8381, float %8391)  ; FMin(a,b)
  %8393 = fcmp fast ogt float %8312, 0.000000e+00
  %8394 = fcmp fast olt float %8330, 0.000000e+00
  br i1 %8393, label %8395, label %8452

; <label>:8395                                    ; preds = %8380
  %8396 = icmp eq i32 %8331, 0
  br i1 %8394, label %8397, label %8441

; <label>:8397                                    ; preds = %8395
  %8398 = select i1 %8396, float %8381, float 0.000000e+00
  %8399 = fsub fast float -0.000000e+00, %8398
  %8400 = call float @dx.op.unary.f32(i32 6, float %8399)  ; FAbs(value)
  %8401 = fmul fast float %8398, %8312
  %8402 = fadd fast float %8401, %8325
  %8403 = fmul fast float %8400, %8402
  %8404 = fsub fast float %8387, %8403
  %8405 = fsub fast float %8381, %8400
  %8406 = select i1 %8396, float %8405, float 0.000000e+00
  %8407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8408 = extractvalue %dx.types.CBufRet.f32 %8407, 0
  %8409 = extractvalue %dx.types.CBufRet.f32 %8407, 1
  %8410 = extractvalue %dx.types.CBufRet.f32 %8407, 2
  %8411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8412 = extractvalue %dx.types.CBufRet.f32 %8411, 0
  %8413 = extractvalue %dx.types.CBufRet.f32 %8411, 1
  %8414 = extractvalue %dx.types.CBufRet.f32 %8411, 2
  %8415 = extractvalue %dx.types.CBufRet.f32 %8411, 3
  %8416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8417 = extractvalue %dx.types.CBufRet.f32 %8416, 3
  %8418 = call float @dx.op.binary.f32(i32 36, float %8404, float %8417)  ; FMin(a,b)
  %8419 = fmul fast float %8415, %8406
  %8420 = call float @dx.op.unary.f32(i32 7, float %8419)  ; Saturate(value)
  %8421 = fsub fast float %8412, %8408
  %8422 = fsub fast float %8413, %8409
  %8423 = fsub fast float %8414, %8410
  %8424 = fmul fast float %8420, %8421
  %8425 = fmul fast float %8420, %8422
  %8426 = fmul fast float %8420, %8423
  %8427 = fadd fast float %8424, %8408
  %8428 = fadd fast float %8425, %8409
  %8429 = fadd fast float %8426, %8410
  %8430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8431 = extractvalue %dx.types.CBufRet.f32 %8430, 0
  %8432 = extractvalue %dx.types.CBufRet.f32 %8430, 1
  %8433 = fadd fast float %8432, %8431
  %8434 = call float @dx.op.unary.f32(i32 7, float %8433)  ; Saturate(value)
  %8435 = extractvalue %dx.types.CBufRet.f32 %8430, 2
  %8436 = extractvalue %dx.types.CBufRet.f32 %8430, 3
  %8437 = fadd fast float %8436, %8435
  %8438 = call float @dx.op.unary.f32(i32 7, float %8437)  ; Saturate(value)
  %8439 = fmul fast float %8434, %8418
  %8440 = fmul fast float %8439, %8438
  br label %8682

; <label>:8441                                    ; preds = %8395
  br i1 %8396, label %8442, label %8463

; <label>:8442                                    ; preds = %8441
  %8443 = call float @dx.op.binary.f32(i32 36, float %8392, float %8382)  ; FMin(a,b)
  %8444 = fsub fast float %8392, %8443
  %8445 = fsub fast float %8444, %8381
  %8446 = call float @dx.op.unary.f32(i32 6, float %8445)  ; FAbs(value)
  %8447 = fadd fast float %8444, %8381
  %8448 = fmul fast float %8447, %8312
  %8449 = fadd fast float %8448, %8325
  %8450 = fmul fast float %8449, %8446
  %8451 = fsub fast float %8387, %8450
  br label %8463

; <label>:8452                                    ; preds = %8380
  br i1 %8394, label %8453, label %8463

; <label>:8453                                    ; preds = %8452
  %8454 = call float @dx.op.binary.f32(i32 35, float %8382, float %8392)  ; FMax(a,b)
  %8455 = icmp eq i32 %8331, 0
  %8456 = select i1 %8455, float %8392, float 0.000000e+00
  %8457 = fsub fast float -0.000000e+00, %8456
  %8458 = call float @dx.op.unary.f32(i32 6, float %8457)  ; FAbs(value)
  %8459 = fmul fast float %8456, %8312
  %8460 = fadd fast float %8459, %8325
  %8461 = fmul fast float %8458, %8460
  %8462 = fsub fast float %8387, %8461
  br label %8463

; <label>:8463                                    ; preds = %8453, %8452, %8442, %8441
  %8464 = phi float [ %8382, %8441 ], [ %8382, %8442 ], [ %8454, %8453 ], [ %8382, %8452 ]
  %8465 = phi float [ 0.000000e+00, %8441 ], [ %8446, %8442 ], [ %8458, %8453 ], [ 0.000000e+00, %8452 ]
  %8466 = phi float [ %8387, %8441 ], [ %8451, %8442 ], [ %8462, %8453 ], [ %8387, %8452 ]
  %8467 = phi float [ %8392, %8441 ], [ %8392, %8442 ], [ %8381, %8453 ], [ %8381, %8452 ]
  %8468 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 0
  store float -1.000000e+00, float* %8468, align 4, !tbaa !132, !noalias !134
  %8469 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 1
  store float -1.000000e+00, float* %8469, align 4, !tbaa !132, !noalias !134
  %8470 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 2
  store float -1.000000e+00, float* %8470, align 4, !tbaa !132, !noalias !134
  %8471 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 0
  store float -1.000000e+00, float* %8471, align 4, !tbaa !132, !noalias !134
  %8472 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 1
  store float -1.000000e+00, float* %8472, align 4, !tbaa !132, !noalias !134
  %8473 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 2
  store float -1.000000e+00, float* %8473, align 4, !tbaa !132, !noalias !134
  %8474 = icmp sgt i32 %8333, 0
  br i1 %8474, label %8475, label %8536

; <label>:8475                                    ; preds = %8463
  br label %8476

; <label>:8476                                    ; preds = %8525, %8475
  %8477 = phi i32 [ %8526, %8525 ], [ 0, %8475 ]
  %8478 = phi i32 [ %8527, %8525 ], [ 0, %8475 ]
  %8479 = add nuw i32 %8478, 171
  %8480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %8479)  ; CBufferLoadLegacy(handle,regIndex)
  %8481 = extractvalue %dx.types.CBufRet.f32 %8480, 0
  %8482 = extractvalue %dx.types.CBufRet.f32 %8480, 1
  %8483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8484 = extractvalue %dx.types.CBufRet.f32 %8483, 0
  %8485 = extractvalue %dx.types.CBufRet.f32 %8483, 1
  %8486 = fsub fast float %8481, %8484
  %8487 = fsub fast float %8482, %8485
  %8488 = extractvalue %dx.types.CBufRet.f32 %8480, 2
  %8489 = fsub fast float -0.000000e+00, %8486
  %8490 = fsub fast float -0.000000e+00, %8487
  %8491 = call float @dx.op.dot2.f32(i32 54, float %8310, float %8311, float %8489, float %8490)  ; Dot2(ax,ay,bx,by)
  %8492 = fmul fast float %8491, 2.000000e+00
  %8493 = call float @dx.op.dot2.f32(i32 54, float %8489, float %8490, float %8489, float %8490)  ; Dot2(ax,ay,bx,by)
  %8494 = fmul fast float %8488, %8488
  %8495 = fsub fast float %8493, %8494
  %8496 = fmul fast float %8492, %8492
  %8497 = fmul fast float %8353, %8495
  %8498 = fsub fast float %8496, %8497
  %8499 = fcmp fast ogt float %8498, 0.000000e+00
  br i1 %8499, label %8500, label %8515

; <label>:8500                                    ; preds = %8476
  %8501 = fcmp fast ogt float %8492, 0.000000e+00
  %8502 = call float @dx.op.unary.f32(i32 24, float %8498)  ; Sqrt(value)
  %8503 = fsub fast float -0.000000e+00, %8502
  %8504 = select i1 %8501, float %8502, float %8503
  %8505 = fadd fast float %8504, %8492
  %8506 = fmul float %8505, -5.000000e-01
  %8507 = fdiv fast float %8506, %8346
  %8508 = call float @dx.op.binary.f32(i32 35, float %8507, float 0.000000e+00)  ; FMax(a,b)
  %8509 = call float @dx.op.binary.f32(i32 36, float %8381, float %8508)  ; FMin(a,b)
  %8510 = fdiv fast float %8495, %8506
  %8511 = call float @dx.op.binary.f32(i32 35, float %8510, float 0.000000e+00)  ; FMax(a,b)
  %8512 = call float @dx.op.binary.f32(i32 36, float %8381, float %8511)  ; FMin(a,b)
  %8513 = call float @dx.op.binary.f32(i32 36, float %8509, float %8512)  ; FMin(a,b)
  %8514 = call float @dx.op.binary.f32(i32 35, float %8509, float %8512)  ; FMax(a,b)
  br label %8515

; <label>:8515                                    ; preds = %8500, %8476
  %8516 = phi float [ %8514, %8500 ], [ -1.000000e+00, %8476 ]
  %8517 = phi float [ %8513, %8500 ], [ -1.000000e+00, %8476 ]
  %8518 = phi i1 [ true, %8500 ], [ false, %8476 ]
  br i1 %8518, label %8519, label %8525

; <label>:8519                                    ; preds = %8515
  %8520 = call float @dx.op.binary.f32(i32 35, float %8464, float %8517)  ; FMax(a,b)
  %8521 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 %8478
  store float %8520, float* %8521, align 4, !tbaa !132, !noalias !134
  %8522 = call float @dx.op.binary.f32(i32 35, float %8464, float %8516)  ; FMax(a,b)
  %8523 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8478
  store float %8522, float* %8523, align 4, !tbaa !132, !noalias !134
  %8524 = add nsw i32 %8477, 1
  br label %8525

; <label>:8525                                    ; preds = %8519, %8515
  %8526 = phi i32 [ %8524, %8519 ], [ %8477, %8515 ]
  %8527 = add nuw nsw i32 %8478, 1
  %8528 = icmp eq i32 %8527, %8333
  br i1 %8528, label %8529, label %8476

; <label>:8529                                    ; preds = %8525
  %8530 = load float, float* %8470, align 4, !tbaa !132, !alias.scope !150, !noalias !153
  %8531 = load float, float* %8469, align 4, !tbaa !132, !alias.scope !156, !noalias !157
  %8532 = load float, float* %8468, align 4, !tbaa !132, !alias.scope !158, !noalias !159
  %8533 = load float, float* %8473, align 4, !tbaa !132, !alias.scope !160, !noalias !163
  %8534 = load float, float* %8472, align 4, !tbaa !132, !alias.scope !166, !noalias !167
  %8535 = load float, float* %8471, align 4, !tbaa !132, !alias.scope !168, !noalias !169
  br label %8536

; <label>:8536                                    ; preds = %8529, %8463
  %8537 = phi float [ -1.000000e+00, %8463 ], [ %8535, %8529 ]
  %8538 = phi float [ -1.000000e+00, %8463 ], [ %8534, %8529 ]
  %8539 = phi float [ -1.000000e+00, %8463 ], [ %8533, %8529 ]
  %8540 = phi float [ -1.000000e+00, %8463 ], [ %8532, %8529 ]
  %8541 = phi float [ -1.000000e+00, %8463 ], [ %8531, %8529 ]
  %8542 = phi float [ -1.000000e+00, %8463 ], [ %8530, %8529 ]
  %8543 = phi i32 [ 0, %8463 ], [ %8526, %8529 ]
  %8544 = call float @dx.op.binary.f32(i32 36, float %8541, float %8542)  ; FMin(a,b)
  %8545 = call float @dx.op.binary.f32(i32 36, float %8540, float %8544)  ; FMin(a,b)
  %8546 = call float @dx.op.binary.f32(i32 35, float %8540, float %8541)  ; FMax(a,b)
  %8547 = call float @dx.op.binary.f32(i32 36, float %8546, float %8542)  ; FMin(a,b)
  %8548 = call float @dx.op.binary.f32(i32 36, float %8540, float %8541)  ; FMin(a,b)
  %8549 = call float @dx.op.binary.f32(i32 35, float %8548, float %8547)  ; FMax(a,b)
  %8550 = call float @dx.op.binary.f32(i32 35, float %8541, float %8542)  ; FMax(a,b)
  %8551 = call float @dx.op.binary.f32(i32 35, float %8540, float %8550)  ; FMax(a,b)
  store float %8545, float* %8468, align 4, !tbaa !132, !alias.scope !158, !noalias !159
  store float %8549, float* %8469, align 4, !tbaa !132, !alias.scope !156, !noalias !157
  store float %8551, float* %8470, align 4, !tbaa !132, !alias.scope !150, !noalias !153
  %8552 = call float @dx.op.binary.f32(i32 36, float %8538, float %8539)  ; FMin(a,b)
  %8553 = call float @dx.op.binary.f32(i32 36, float %8537, float %8552)  ; FMin(a,b)
  %8554 = call float @dx.op.binary.f32(i32 35, float %8537, float %8538)  ; FMax(a,b)
  %8555 = call float @dx.op.binary.f32(i32 36, float %8554, float %8539)  ; FMin(a,b)
  %8556 = call float @dx.op.binary.f32(i32 36, float %8537, float %8538)  ; FMin(a,b)
  %8557 = call float @dx.op.binary.f32(i32 35, float %8556, float %8555)  ; FMax(a,b)
  %8558 = call float @dx.op.binary.f32(i32 35, float %8538, float %8539)  ; FMax(a,b)
  %8559 = call float @dx.op.binary.f32(i32 35, float %8537, float %8558)  ; FMax(a,b)
  store float %8553, float* %8471, align 4, !tbaa !132, !alias.scope !168, !noalias !169
  store float %8557, float* %8472, align 4, !tbaa !132, !alias.scope !166, !noalias !167
  store float %8559, float* %8473, align 4, !tbaa !132, !alias.scope !160, !noalias !163
  %8560 = sub nsw i32 3, %8543
  %8561 = icmp sgt i32 %8560, 2
  br i1 %8561, label %8562, label %8600

; <label>:8562                                    ; preds = %8536
  %8563 = icmp eq i32 %8331, 0
  %8564 = fsub fast float %8381, %8465
  %8565 = select i1 %8563, float %8564, float %8465
  %8566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8567 = extractvalue %dx.types.CBufRet.f32 %8566, 0
  %8568 = extractvalue %dx.types.CBufRet.f32 %8566, 1
  %8569 = extractvalue %dx.types.CBufRet.f32 %8566, 2
  %8570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8571 = extractvalue %dx.types.CBufRet.f32 %8570, 0
  %8572 = extractvalue %dx.types.CBufRet.f32 %8570, 1
  %8573 = extractvalue %dx.types.CBufRet.f32 %8570, 2
  %8574 = extractvalue %dx.types.CBufRet.f32 %8570, 3
  %8575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8576 = extractvalue %dx.types.CBufRet.f32 %8575, 3
  %8577 = call float @dx.op.binary.f32(i32 36, float %8466, float %8576)  ; FMin(a,b)
  %8578 = fmul fast float %8574, %8565
  %8579 = call float @dx.op.unary.f32(i32 7, float %8578)  ; Saturate(value)
  %8580 = fsub fast float %8571, %8567
  %8581 = fsub fast float %8572, %8568
  %8582 = fsub fast float %8573, %8569
  %8583 = fmul fast float %8579, %8580
  %8584 = fmul fast float %8579, %8581
  %8585 = fmul fast float %8579, %8582
  %8586 = fadd fast float %8583, %8567
  %8587 = fadd fast float %8584, %8568
  %8588 = fadd fast float %8585, %8569
  %8589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8590 = extractvalue %dx.types.CBufRet.f32 %8589, 0
  %8591 = extractvalue %dx.types.CBufRet.f32 %8589, 1
  %8592 = fadd fast float %8591, %8590
  %8593 = call float @dx.op.unary.f32(i32 7, float %8592)  ; Saturate(value)
  %8594 = extractvalue %dx.types.CBufRet.f32 %8589, 2
  %8595 = extractvalue %dx.types.CBufRet.f32 %8589, 3
  %8596 = fadd fast float %8595, %8594
  %8597 = call float @dx.op.unary.f32(i32 7, float %8596)  ; Saturate(value)
  %8598 = fmul fast float %8593, %8577
  %8599 = fmul fast float %8598, %8597
  br label %8682

; <label>:8600                                    ; preds = %8536
  %8601 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 %8560
  %8602 = load float, float* %8601, align 4, !tbaa !132, !noalias !134
  %8603 = fcmp fast olt float %8602, %8467
  %8604 = icmp sgt i32 %8543, 0
  %8605 = and i1 %8604, %8603
  br i1 %8605, label %8606, label %8643

; <label>:8606                                    ; preds = %8600
  br label %8607

; <label>:8607                                    ; preds = %8636, %8606
  %8608 = phi float [ %8637, %8636 ], [ %8465, %8606 ]
  %8609 = phi float [ %8638, %8636 ], [ %8466, %8606 ]
  %8610 = phi float [ %8618, %8636 ], [ %8602, %8606 ]
  %8611 = phi i32 [ %8615, %8636 ], [ %8560, %8606 ]
  %8612 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8611
  %8613 = load float, float* %8612, align 4, !tbaa !132, !noalias !134
  %8614 = icmp slt i32 %8611, 2
  %8615 = add nsw i32 %8611, 1
  %8616 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 %8615
  %8617 = load float, float* %8616, align 4, !tbaa !132, !noalias !134
  %8618 = select i1 %8614, float %8617, float %8381
  %8619 = call float @dx.op.binary.f32(i32 36, float %8618, float %8613)  ; FMin(a,b)
  %8620 = call float @dx.op.binary.f32(i32 36, float %8467, float %8619)  ; FMin(a,b)
  %8621 = icmp eq i32 %8331, 0
  %8622 = fadd fast float %8620, %8610
  %8623 = fmul fast float %8622, %8312
  %8624 = fadd fast float %8623, %8325
  br i1 %8621, label %8630, label %8625

; <label>:8625                                    ; preds = %8607
  %8626 = fsub fast float %8620, %8610
  %8627 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8626)  ; FMax(a,b)
  %8628 = fmul fast float %8627, %8624
  %8629 = fadd fast float %8628, %8609
  br label %8636

; <label>:8630                                    ; preds = %8607
  %8631 = fsub fast float %8610, %8620
  %8632 = call float @dx.op.unary.f32(i32 6, float %8631)  ; FAbs(value)
  %8633 = fadd fast float %8632, %8608
  %8634 = fmul fast float %8632, %8624
  %8635 = fsub fast float %8609, %8634
  br label %8636

; <label>:8636                                    ; preds = %8630, %8625
  %8637 = phi float [ %8627, %8625 ], [ %8633, %8630 ]
  %8638 = phi float [ %8629, %8625 ], [ %8635, %8630 ]
  %8639 = fcmp fast olt float %8618, %8467
  %8640 = icmp slt i32 %8615, 3
  %8641 = and i1 %8640, %8639
  br i1 %8641, label %8607, label %8642

; <label>:8642                                    ; preds = %8636
  br label %8643

; <label>:8643                                    ; preds = %8642, %8600
  %8644 = phi float [ %8465, %8600 ], [ %8637, %8642 ]
  %8645 = phi float [ %8466, %8600 ], [ %8638, %8642 ]
  %8646 = fsub fast float %8381, %8644
  %8647 = select i1 %8383, float %8644, float %8646
  %8648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8649 = extractvalue %dx.types.CBufRet.f32 %8648, 0
  %8650 = extractvalue %dx.types.CBufRet.f32 %8648, 1
  %8651 = extractvalue %dx.types.CBufRet.f32 %8648, 2
  %8652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8653 = extractvalue %dx.types.CBufRet.f32 %8652, 0
  %8654 = extractvalue %dx.types.CBufRet.f32 %8652, 1
  %8655 = extractvalue %dx.types.CBufRet.f32 %8652, 2
  %8656 = extractvalue %dx.types.CBufRet.f32 %8652, 3
  %8657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8658 = extractvalue %dx.types.CBufRet.f32 %8657, 3
  %8659 = call float @dx.op.binary.f32(i32 36, float %8645, float %8658)  ; FMin(a,b)
  %8660 = fmul fast float %8656, %8647
  %8661 = call float @dx.op.unary.f32(i32 7, float %8660)  ; Saturate(value)
  %8662 = fsub fast float %8653, %8649
  %8663 = fsub fast float %8654, %8650
  %8664 = fsub fast float %8655, %8651
  %8665 = fmul fast float %8661, %8662
  %8666 = fmul fast float %8661, %8663
  %8667 = fmul fast float %8661, %8664
  %8668 = fadd fast float %8665, %8649
  %8669 = fadd fast float %8666, %8650
  %8670 = fadd fast float %8667, %8651
  %8671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8672 = extractvalue %dx.types.CBufRet.f32 %8671, 0
  %8673 = extractvalue %dx.types.CBufRet.f32 %8671, 1
  %8674 = fadd fast float %8673, %8672
  %8675 = call float @dx.op.unary.f32(i32 7, float %8674)  ; Saturate(value)
  %8676 = extractvalue %dx.types.CBufRet.f32 %8671, 2
  %8677 = extractvalue %dx.types.CBufRet.f32 %8671, 3
  %8678 = fadd fast float %8677, %8676
  %8679 = call float @dx.op.unary.f32(i32 7, float %8678)  ; Saturate(value)
  %8680 = fmul fast float %8675, %8659
  %8681 = fmul fast float %8680, %8679
  br label %8682

; <label>:8682                                    ; preds = %8643, %8562, %8397, %8379, %8377
  %8683 = phi float [ %8406, %8397 ], [ %8565, %8562 ], [ %8647, %8643 ], [ 0.000000e+00, %8377 ], [ 0.000000e+00, %8379 ]
  %8684 = phi float [ %8440, %8397 ], [ %8599, %8562 ], [ %8681, %8643 ], [ 0.000000e+00, %8377 ], [ 0.000000e+00, %8379 ]
  %8685 = phi float [ %8427, %8397 ], [ %8586, %8562 ], [ %8668, %8643 ], [ 0.000000e+00, %8377 ], [ 0.000000e+00, %8379 ]
  %8686 = phi float [ %8428, %8397 ], [ %8587, %8562 ], [ %8669, %8643 ], [ 0.000000e+00, %8377 ], [ 0.000000e+00, %8379 ]
  %8687 = phi float [ %8429, %8397 ], [ %8588, %8562 ], [ %8670, %8643 ], [ 0.000000e+00, %8377 ], [ 0.000000e+00, %8379 ]
  %8688 = fmul fast float %8320, %8684
  %8689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8690 = extractvalue %dx.types.CBufRet.f32 %8689, 2
  %8691 = fsub fast float %8327, %8690
  %8692 = fcmp fast olt float %8688, -2.000000e+01
  %8693 = call float @dx.op.unary.f32(i32 21, float %8688)  ; Exp(value)
  %8694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8695 = extractvalue %dx.types.CBufRet.f32 %8694, 2
  %8696 = extractvalue %dx.types.CBufRet.f32 %8694, 3
  %8697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8698 = extractvalue %dx.types.CBufRet.f32 %8697, 2
  %8699 = fmul fast float %8696, %8691
  %8700 = call float @dx.op.unary.f32(i32 7, float %8699)  ; Saturate(value)
  %8701 = fsub fast float 1.000000e+00, %8700
  %8702 = fmul fast float %8312, 5.000000e-01
  %8703 = fadd fast float %8702, 5.000000e-01
  %8704 = call float @dx.op.unary.f32(i32 7, float %8703)  ; Saturate(value)
  %8705 = fsub fast float 1.000000e+00, %8704
  %8706 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8701)  ; FMax(a,b)
  %8707 = fdiv fast float %8705, %8706
  %8708 = fsub fast float %8691, %8269
  %8709 = call float @dx.op.unary.f32(i32 6, float %8708)  ; FAbs(value)
  %8710 = fmul fast float %8709, %8695
  %8711 = call float @dx.op.unary.f32(i32 7, float %8707)  ; Saturate(value)
  %8712 = fsub fast float 1.000000e+00, %8710
  %8713 = fmul fast float %8712, %8711
  %8714 = fadd fast float %8713, %8710
  %8715 = fmul fast float %8698, %8691
  %8716 = call float @dx.op.unary.f32(i32 7, float %8715)  ; Saturate(value)
  %8717 = fsub fast float 1.000000e+00, %8714
  %8718 = fmul fast float %8717, %8716
  %8719 = fadd fast float %8718, %8714
  %8720 = call float @dx.op.unary.f32(i32 7, float %8719)  ; Saturate(value)
  %8721 = fadd fast float %8693, -1.000000e+00
  %8722 = select i1 %8692, float -1.000000e+00, float %8721
  %8723 = fmul fast float %8720, %8722
  %8724 = fadd fast float %8723, 1.000000e+00
  %8725 = fsub fast float -0.000000e+00, %8723
  %8726 = fmul fast float %8685, %8725
  %8727 = fmul fast float %8686, %8725
  %8728 = fmul fast float %8687, %8725
  br label %8729

; <label>:8729                                    ; preds = %8682, %8278
  %8730 = phi float [ %8683, %8682 ], [ 0.000000e+00, %8278 ]
  %8731 = phi float [ %8724, %8682 ], [ 1.000000e+00, %8278 ]
  %8732 = phi float [ %8726, %8682 ], [ 0.000000e+00, %8278 ]
  %8733 = phi float [ %8727, %8682 ], [ 0.000000e+00, %8278 ]
  %8734 = phi float [ %8728, %8682 ], [ 0.000000e+00, %8278 ]
  %8735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8736 = extractvalue %dx.types.CBufRet.f32 %8735, 1
  %8737 = fsub fast float 1.000000e+00, %8731
  %8738 = fmul fast float %8737, %8313
  %8739 = fmul fast float %8738, %8736
  %8740 = fsub fast float %8313, %8739
  br i1 %8306, label %8741, label %8770, !dx.controlflow.hints !170

; <label>:8741                                    ; preds = %8729
  %8742 = fmul fast float %8314, %8303
  %8743 = fadd fast float %8742, %8304
  %8744 = call float @dx.op.unary.f32(i32 7, float %8743)  ; Saturate(value)
  %8745 = fmul fast float %8285, %8740
  %8746 = fsub fast float -0.000000e+00, %8745
  %8747 = fmul fast float %8286, %8740
  %8748 = fsub fast float -0.000000e+00, %8747
  %8749 = call float @dx.op.unary.f32(i32 21, float %8746)  ; Exp(value)
  %8750 = call float @dx.op.unary.f32(i32 21, float %8748)  ; Exp(value)
  %8751 = call float @dx.op.binary.f32(i32 35, float %8293, float %8749)  ; FMax(a,b)
  %8752 = call float @dx.op.binary.f32(i32 35, float %8293, float %8750)  ; FMax(a,b)
  %8753 = fsub fast float %8752, %8751
  %8754 = fmul fast float %8753, %8744
  %8755 = fadd fast float %8754, %8751
  %8756 = call float @dx.op.unary.f32(i32 7, float %8755)  ; Saturate(value)
  %8757 = fsub fast float %8290, %8295
  %8758 = fsub fast float %8291, %8296
  %8759 = fsub fast float %8292, %8297
  %8760 = fmul fast float %8744, %8757
  %8761 = fmul fast float %8744, %8758
  %8762 = fmul fast float %8744, %8759
  %8763 = fadd fast float %8760, %8295
  %8764 = fadd fast float %8761, %8296
  %8765 = fadd fast float %8762, %8297
  %8766 = fsub fast float 1.000000e+00, %8756
  %8767 = fmul fast float %8766, %8763
  %8768 = fmul fast float %8766, %8764
  %8769 = fmul fast float %8766, %8765
  br label %8829

; <label>:8770                                    ; preds = %8729
  %8771 = fmul fast float %8740, %8302
  %8772 = call float @dx.op.unary.f32(i32 7, float %8771)  ; Saturate(value)
  %8773 = fsub fast float 2.000000e+00, %8772
  %8774 = fmul fast float %8772, 9.921875e-01
  %8775 = fmul fast float %8774, %8773
  %8776 = fadd fast float %8775, 3.906250e-03
  %8777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %51, float %8776, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8778 = extractvalue %dx.types.ResRet.f32 %8777, 0
  %8779 = fsub fast float %8772, %8778
  %8780 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8779)  ; FMax(a,b)
  %8781 = fmul fast float %8288, %8269
  %8782 = call float @dx.op.unary.f32(i32 6, float %8781)  ; FAbs(value)
  %8783 = fcmp fast ogt float %8782, 0x3EB0C6F7A0000000
  br i1 %8783, label %8784, label %8790, !dx.controlflow.hints !171

; <label>:8784                                    ; preds = %8770
  %8785 = fmul fast float %8781, 0xBFF7154760000000
  %8786 = call float @dx.op.unary.f32(i32 21, float %8785)  ; Exp(value)
  %8787 = fsub fast float 1.000000e+00, %8786
  %8788 = fdiv fast float %8787, %8781
  %8789 = fmul fast float %8788, %8298
  br label %8790

; <label>:8790                                    ; preds = %8784, %8770
  %8791 = phi float [ %8789, %8784 ], [ %8298, %8770 ]
  %8792 = fadd fast float %8791, %8300
  %8793 = fmul fast float %8792, %8780
  %8794 = fmul fast float %8285, %8793
  %8795 = fsub fast float -0.000000e+00, %8794
  %8796 = fmul fast float %8286, %8793
  %8797 = fsub fast float -0.000000e+00, %8796
  %8798 = fmul fast float %8287, %8793
  %8799 = fsub fast float -0.000000e+00, %8798
  %8800 = call float @dx.op.unary.f32(i32 21, float %8795)  ; Exp(value)
  %8801 = call float @dx.op.unary.f32(i32 21, float %8797)  ; Exp(value)
  %8802 = call float @dx.op.unary.f32(i32 21, float %8799)  ; Exp(value)
  %8803 = fmul fast float %8314, %8314
  %8804 = fadd fast float %8803, 1.000000e+00
  %8805 = fmul fast float %8804, 0x3FAE8EC8A0000000
  %8806 = fmul fast float %8805, %8295
  %8807 = fmul fast float %8805, %8296
  %8808 = fmul fast float %8805, %8297
  %8809 = fmul fast float %8314, %8293
  %8810 = fsub fast float 1.000000e+00, %8809
  %8811 = fmul fast float %8293, %8293
  %8812 = fsub fast float 1.000000e+00, %8811
  %8813 = fmul fast float %8812, 0x3FB45F3060000000
  %8814 = fmul fast float %8810, %8810
  %8815 = fdiv fast float 1.000000e+00, %8814
  %8816 = fmul fast float %8813, %8815
  %8817 = fmul fast float %8816, %8290
  %8818 = fmul fast float %8816, %8291
  %8819 = fmul fast float %8816, %8292
  %8820 = fadd fast float %8817, %8806
  %8821 = fadd fast float %8818, %8807
  %8822 = fadd fast float %8819, %8808
  %8823 = fsub fast float 1.000000e+00, %8800
  %8824 = fsub fast float 1.000000e+00, %8801
  %8825 = fsub fast float 1.000000e+00, %8802
  %8826 = fmul fast float %8820, %8823
  %8827 = fmul fast float %8821, %8824
  %8828 = fmul fast float %8822, %8825
  br label %8829

; <label>:8829                                    ; preds = %8790, %8741
  %8830 = phi float [ %8767, %8741 ], [ %8826, %8790 ]
  %8831 = phi float [ %8768, %8741 ], [ %8827, %8790 ]
  %8832 = phi float [ %8769, %8741 ], [ %8828, %8790 ]
  %8833 = phi float [ %8756, %8741 ], [ %8800, %8790 ]
  %8834 = phi float [ %8756, %8741 ], [ %8801, %8790 ]
  %8835 = phi float [ %8756, %8741 ], [ %8802, %8790 ]
  br i1 %8322, label %8836, label %9034, !dx.controlflow.hints !172

; <label>:8836                                    ; preds = %8829
  %8837 = extractvalue %dx.types.CBufRet.f32 %8735, 0
  %8838 = fmul fast float %8837, %8737
  %8839 = fsub fast float %8732, %8830
  %8840 = fsub fast float %8733, %8831
  %8841 = fsub fast float %8734, %8832
  %8842 = fmul fast float %8838, %8839
  %8843 = fmul fast float %8838, %8840
  %8844 = fmul fast float %8838, %8841
  %8845 = fadd fast float %8842, %8830
  %8846 = fadd fast float %8843, %8831
  %8847 = fadd fast float %8844, %8832
  %8848 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8833)  ; FMax(a,b)
  %8849 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8834)  ; FMax(a,b)
  %8850 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8835)  ; FMax(a,b)
  %8851 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8731)  ; FMax(a,b)
  %8852 = call float @dx.op.binary.f32(i32 35, float %8730, float %8740)  ; FMax(a,b)
  %8853 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8852)  ; FMax(a,b)
  %8854 = fdiv fast float %8730, %8853
  %8855 = call float @dx.op.unary.f32(i32 7, float %8854)  ; Saturate(value)
  %8856 = fdiv fast float %8740, %8853
  %8857 = call float @dx.op.unary.f32(i32 7, float %8856)  ; Saturate(value)
  %8858 = fcmp fast une float %8851, 1.000000e+00
  br i1 %8858, label %8859, label %8872, !dx.controlflow.hints !173

; <label>:8859                                    ; preds = %8836
  %8860 = call float @dx.op.unary.f32(i32 23, float %8851)  ; Log(value)
  %8861 = fmul fast float %8860, 0x3FE62E4300000000
  %8862 = fmul fast float %8732, %8861
  %8863 = fsub fast float -0.000000e+00, %8862
  %8864 = fmul fast float %8733, %8861
  %8865 = fsub fast float -0.000000e+00, %8864
  %8866 = fmul fast float %8734, %8861
  %8867 = fsub fast float -0.000000e+00, %8866
  %8868 = fsub fast float 1.000000e+00, %8851
  %8869 = fdiv fast float %8863, %8868
  %8870 = fdiv fast float %8865, %8868
  %8871 = fdiv fast float %8867, %8868
  br label %8872

; <label>:8872                                    ; preds = %8859, %8836
  %8873 = phi float [ %8869, %8859 ], [ %8732, %8836 ]
  %8874 = phi float [ %8870, %8859 ], [ %8733, %8836 ]
  %8875 = phi float [ %8871, %8859 ], [ %8734, %8836 ]
  %8876 = phi float [ %8861, %8859 ], [ 0.000000e+00, %8836 ]
  %8877 = fcmp fast une float %8848, 1.000000e+00
  br i1 %8877, label %8878, label %8885, !dx.controlflow.hints !174

; <label>:8878                                    ; preds = %8872
  %8879 = call float @dx.op.unary.f32(i32 23, float %8848)  ; Log(value)
  %8880 = fmul fast float %8879, 0x3FE62E4300000000
  %8881 = fmul fast float %8845, %8880
  %8882 = fsub fast float -0.000000e+00, %8881
  %8883 = fsub fast float 1.000000e+00, %8848
  %8884 = fdiv fast float %8882, %8883
  br label %8885

; <label>:8885                                    ; preds = %8878, %8872
  %8886 = phi float [ %8884, %8878 ], [ %8845, %8872 ]
  %8887 = phi float [ %8880, %8878 ], [ 0.000000e+00, %8872 ]
  %8888 = fcmp fast une float %8849, 1.000000e+00
  br i1 %8888, label %8889, label %8896, !dx.controlflow.hints !174

; <label>:8889                                    ; preds = %8885
  %8890 = call float @dx.op.unary.f32(i32 23, float %8849)  ; Log(value)
  %8891 = fmul fast float %8890, 0x3FE62E4300000000
  %8892 = fmul fast float %8846, %8891
  %8893 = fsub fast float -0.000000e+00, %8892
  %8894 = fsub fast float 1.000000e+00, %8849
  %8895 = fdiv fast float %8893, %8894
  br label %8896

; <label>:8896                                    ; preds = %8889, %8885
  %8897 = phi float [ %8895, %8889 ], [ %8846, %8885 ]
  %8898 = phi float [ %8891, %8889 ], [ 0.000000e+00, %8885 ]
  %8899 = fcmp fast une float %8850, 1.000000e+00
  br i1 %8899, label %8900, label %8907, !dx.controlflow.hints !174

; <label>:8900                                    ; preds = %8896
  %8901 = call float @dx.op.unary.f32(i32 23, float %8850)  ; Log(value)
  %8902 = fmul fast float %8901, 0x3FE62E4300000000
  %8903 = fmul fast float %8847, %8902
  %8904 = fsub fast float -0.000000e+00, %8903
  %8905 = fsub fast float 1.000000e+00, %8850
  %8906 = fdiv fast float %8904, %8905
  br label %8907

; <label>:8907                                    ; preds = %8900, %8896
  %8908 = phi float [ %8906, %8900 ], [ %8847, %8896 ]
  %8909 = phi float [ %8902, %8900 ], [ 0.000000e+00, %8896 ]
  %8910 = fmul fast float %8873, %8857
  %8911 = fmul fast float %8874, %8857
  %8912 = fmul fast float %8875, %8857
  %8913 = fmul fast float %8876, %8857
  %8914 = fmul fast float %8886, %8855
  %8915 = fmul fast float %8897, %8855
  %8916 = fmul fast float %8908, %8855
  %8917 = fmul fast float %8887, %8855
  %8918 = fmul fast float %8898, %8855
  %8919 = fmul fast float %8909, %8855
  %8920 = fadd fast float %8914, %8910
  %8921 = fadd fast float %8915, %8911
  %8922 = fadd fast float %8916, %8912
  %8923 = fadd fast float %8917, %8913
  %8924 = fadd fast float %8918, %8913
  %8925 = fadd fast float %8919, %8913
  %8926 = fcmp fast une float %8923, 0.000000e+00
  br i1 %8926, label %8927, label %8934, !dx.controlflow.hints !175

; <label>:8927                                    ; preds = %8907
  %8928 = fmul fast float %8923, 0x3FF7154760000000
  %8929 = call float @dx.op.unary.f32(i32 21, float %8928)  ; Exp(value)
  %8930 = fsub fast float 1.000000e+00, %8929
  %8931 = fmul fast float %8920, %8930
  %8932 = fsub fast float -0.000000e+00, %8931
  %8933 = fdiv fast float %8932, %8923
  br label %8934

; <label>:8934                                    ; preds = %8927, %8907
  %8935 = phi float [ %8929, %8927 ], [ 1.000000e+00, %8907 ]
  %8936 = phi float [ %8933, %8927 ], [ %8920, %8907 ]
  %8937 = fcmp fast une float %8924, 0.000000e+00
  br i1 %8937, label %8938, label %8945, !dx.controlflow.hints !175

; <label>:8938                                    ; preds = %8934
  %8939 = fmul fast float %8924, 0x3FF7154760000000
  %8940 = call float @dx.op.unary.f32(i32 21, float %8939)  ; Exp(value)
  %8941 = fsub fast float 1.000000e+00, %8940
  %8942 = fmul fast float %8921, %8941
  %8943 = fsub fast float -0.000000e+00, %8942
  %8944 = fdiv fast float %8943, %8924
  br label %8945

; <label>:8945                                    ; preds = %8938, %8934
  %8946 = phi float [ %8940, %8938 ], [ 1.000000e+00, %8934 ]
  %8947 = phi float [ %8944, %8938 ], [ %8921, %8934 ]
  %8948 = fcmp fast une float %8925, 0.000000e+00
  br i1 %8948, label %8949, label %8956, !dx.controlflow.hints !175

; <label>:8949                                    ; preds = %8945
  %8950 = fmul fast float %8925, 0x3FF7154760000000
  %8951 = call float @dx.op.unary.f32(i32 21, float %8950)  ; Exp(value)
  %8952 = fsub fast float 1.000000e+00, %8951
  %8953 = fmul fast float %8922, %8952
  %8954 = fsub fast float -0.000000e+00, %8953
  %8955 = fdiv fast float %8954, %8925
  br label %8956

; <label>:8956                                    ; preds = %8949, %8945
  %8957 = phi float [ %8951, %8949 ], [ 1.000000e+00, %8945 ]
  %8958 = phi float [ %8955, %8949 ], [ %8922, %8945 ]
  %8959 = fcmp fast ogt float %8855, %8857
  br i1 %8959, label %8960, label %8980

; <label>:8960                                    ; preds = %8956
  %8961 = fsub fast float 1.000000e+00, %8857
  %8962 = fmul fast float %8873, %8961
  %8963 = fmul fast float %8874, %8961
  %8964 = fmul fast float %8875, %8961
  %8965 = fmul fast float %8876, %8961
  %8966 = fcmp fast une float %8965, 0.000000e+00
  br i1 %8966, label %8967, label %9018, !dx.controlflow.hints !176

; <label>:8967                                    ; preds = %8960
  %8968 = fmul fast float %8965, 0x3FF7154760000000
  %8969 = call float @dx.op.unary.f32(i32 21, float %8968)  ; Exp(value)
  %8970 = fsub fast float 1.000000e+00, %8969
  %8971 = fmul fast float %8962, %8970
  %8972 = fsub fast float -0.000000e+00, %8971
  %8973 = fmul fast float %8963, %8970
  %8974 = fsub fast float -0.000000e+00, %8973
  %8975 = fmul fast float %8964, %8970
  %8976 = fsub fast float -0.000000e+00, %8975
  %8977 = fdiv fast float %8972, %8965
  %8978 = fdiv fast float %8974, %8965
  %8979 = fdiv fast float %8976, %8965
  br label %9018

; <label>:8980                                    ; preds = %8956
  %8981 = fsub fast float 1.000000e+00, %8855
  %8982 = fmul fast float %8886, %8981
  %8983 = fmul fast float %8897, %8981
  %8984 = fmul fast float %8908, %8981
  %8985 = fmul fast float %8887, %8981
  %8986 = fmul fast float %8898, %8981
  %8987 = fmul fast float %8909, %8981
  %8988 = fcmp fast une float %8985, 0.000000e+00
  br i1 %8988, label %8989, label %8996, !dx.controlflow.hints !175

; <label>:8989                                    ; preds = %8980
  %8990 = fmul fast float %8985, 0x3FF7154760000000
  %8991 = call float @dx.op.unary.f32(i32 21, float %8990)  ; Exp(value)
  %8992 = fsub fast float 1.000000e+00, %8991
  %8993 = fmul fast float %8982, %8992
  %8994 = fsub fast float -0.000000e+00, %8993
  %8995 = fdiv fast float %8994, %8985
  br label %8996

; <label>:8996                                    ; preds = %8989, %8980
  %8997 = phi float [ %8995, %8989 ], [ %8982, %8980 ]
  %8998 = phi float [ %8991, %8989 ], [ 1.000000e+00, %8980 ]
  %8999 = fcmp fast une float %8986, 0.000000e+00
  br i1 %8999, label %9000, label %9007, !dx.controlflow.hints !175

; <label>:9000                                    ; preds = %8996
  %9001 = fmul fast float %8986, 0x3FF7154760000000
  %9002 = call float @dx.op.unary.f32(i32 21, float %9001)  ; Exp(value)
  %9003 = fsub fast float 1.000000e+00, %9002
  %9004 = fmul fast float %8983, %9003
  %9005 = fsub fast float -0.000000e+00, %9004
  %9006 = fdiv fast float %9005, %8986
  br label %9007

; <label>:9007                                    ; preds = %9000, %8996
  %9008 = phi float [ %9006, %9000 ], [ %8983, %8996 ]
  %9009 = phi float [ %9002, %9000 ], [ 1.000000e+00, %8996 ]
  %9010 = fcmp fast une float %8987, 0.000000e+00
  br i1 %9010, label %9011, label %9018, !dx.controlflow.hints !175

; <label>:9011                                    ; preds = %9007
  %9012 = fmul fast float %8987, 0x3FF7154760000000
  %9013 = call float @dx.op.unary.f32(i32 21, float %9012)  ; Exp(value)
  %9014 = fsub fast float 1.000000e+00, %9013
  %9015 = fmul fast float %8984, %9014
  %9016 = fsub fast float -0.000000e+00, %9015
  %9017 = fdiv fast float %9016, %8987
  br label %9018

; <label>:9018                                    ; preds = %9011, %9007, %8967, %8960
  %9019 = phi float [ %9017, %9011 ], [ %8979, %8967 ], [ %8964, %8960 ], [ %8984, %9007 ]
  %9020 = phi float [ %9008, %9011 ], [ %8978, %8967 ], [ %8963, %8960 ], [ %9008, %9007 ]
  %9021 = phi float [ %8997, %9011 ], [ %8977, %8967 ], [ %8962, %8960 ], [ %8997, %9007 ]
  %9022 = phi float [ %9013, %9011 ], [ %8969, %8967 ], [ 1.000000e+00, %8960 ], [ 1.000000e+00, %9007 ]
  %9023 = phi float [ %9009, %9011 ], [ %8969, %8967 ], [ 1.000000e+00, %8960 ], [ %9009, %9007 ]
  %9024 = phi float [ %8998, %9011 ], [ %8969, %8967 ], [ 1.000000e+00, %8960 ], [ %8998, %9007 ]
  %9025 = fmul fast float %9024, %8936
  %9026 = fmul fast float %9023, %8947
  %9027 = fmul fast float %9022, %8958
  %9028 = fadd fast float %9025, %9021
  %9029 = fadd fast float %9026, %9020
  %9030 = fadd fast float %9027, %9019
  %9031 = fmul fast float %9024, %8935
  %9032 = fmul fast float %9023, %8946
  %9033 = fmul fast float %9022, %8957
  br label %9034

; <label>:9034                                    ; preds = %9018, %8829
  %9035 = phi float [ %9033, %9018 ], [ %8835, %8829 ]
  %9036 = phi float [ %9032, %9018 ], [ %8834, %8829 ]
  %9037 = phi float [ %9031, %9018 ], [ %8833, %8829 ]
  %9038 = phi float [ %9030, %9018 ], [ %8832, %8829 ]
  %9039 = phi float [ %9029, %9018 ], [ %8831, %8829 ]
  %9040 = phi float [ %9028, %9018 ], [ %8830, %8829 ]
  %9041 = fmul fast float %9037, %8277
  %9042 = call float @dx.op.dot3.f32(i32 55, float %9037, float %9036, float %9035, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9043 = call float @dx.op.dot3.f32(i32 55, float %9040, float %9039, float %9038, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9044 = select i1 %296, float %9042, float %9037
  %9045 = select i1 %296, float %9042, float %9036
  %9046 = select i1 %296, float 1.000000e+00, float %9035
  %9047 = select i1 %296, float %9043, float %9040
  %9048 = select i1 %296, float 0.000000e+00, float %9039
  %9049 = select i1 %296, float 0.000000e+00, float %9038
  %9050 = fmul fast float %9044, %8271
  %9051 = fmul fast float %9045, %8272
  %9052 = fmul fast float %9046, %8273
  %9053 = fadd fast float %9050, %9047
  %9054 = fadd fast float %9051, %9048
  %9055 = fadd fast float %9049, %9052
  %9056 = fmul fast float %9044, %8274
  %9057 = fmul fast float %9045, %8275
  %9058 = fmul fast float %9046, %8276
  %9059 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9060 = extractvalue %dx.types.CBufRet.i32 %9059, 0
  %9061 = icmp eq i32 %9060, 0
  br i1 %9061, label %9419, label %9062, !dx.controlflow.hints !177

; <label>:9062                                    ; preds = %9034
  %9063 = fmul fast float %6090, %113
  %9064 = fmul fast float %6091, %114
  %9065 = fmul fast float %9063, 2.000000e+00
  %9066 = fmul fast float %9064, 2.000000e+00
  %9067 = fsub fast float 1.000000e+00, %9065
  %9068 = fsub fast float 1.000000e+00, %9066
  %9069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9070 = extractvalue %dx.types.CBufRet.f32 %9069, 0
  %9071 = extractvalue %dx.types.CBufRet.f32 %9069, 1
  %9072 = extractvalue %dx.types.CBufRet.f32 %9069, 2
  %9073 = fmul fast float %9067, %9070
  %9074 = fmul fast float %9067, %9071
  %9075 = fmul fast float %9067, %9072
  %9076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9077 = extractvalue %dx.types.CBufRet.f32 %9076, 0
  %9078 = extractvalue %dx.types.CBufRet.f32 %9076, 1
  %9079 = extractvalue %dx.types.CBufRet.f32 %9076, 2
  %9080 = fmul fast float %9068, %9077
  %9081 = fmul fast float %9068, %9078
  %9082 = fmul fast float %9068, %9079
  %9083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9084 = extractvalue %dx.types.CBufRet.f32 %9083, 0
  %9085 = extractvalue %dx.types.CBufRet.f32 %9083, 1
  %9086 = extractvalue %dx.types.CBufRet.f32 %9083, 2
  %9087 = fadd fast float %9080, %9084
  %9088 = fadd fast float %9087, %9073
  %9089 = fadd fast float %9081, %9085
  %9090 = fadd fast float %9089, %9074
  %9091 = fadd fast float %9082, %9086
  %9092 = fadd fast float %9091, %9075
  %9093 = fmul fast float %9088, %8270
  %9094 = fmul fast float %9090, %8270
  %9095 = fmul fast float %9092, %8270
  %9096 = fmul fast float %9093, %9093
  %9097 = fmul fast float %9094, %9094
  %9098 = fadd fast float %9096, %9097
  %9099 = fmul fast float %9095, %9095
  %9100 = fadd fast float %9098, %9099
  %9101 = call float @dx.op.unary.f32(i32 24, float %9100)  ; Sqrt(value)
  %9102 = extractvalue %dx.types.CBufRet.f32 %8005, 0
  %9103 = fsub fast float %9101, %9102
  %9104 = extractvalue %dx.types.CBufRet.f32 %8005, 2
  %9105 = fmul fast float %9103, %9104
  %9106 = call float @dx.op.unary.f32(i32 7, float %9105)  ; Saturate(value)
  %9107 = fadd fast float %9106, -5.000000e-01
  %9108 = fmul fast float %9107, 2.000000e+00
  %9109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9110 = extractvalue %dx.types.CBufRet.f32 %9109, 2
  %9111 = call float @dx.op.binary.f32(i32 36, float %9110, float %9108)  ; FMin(a,b)
  %9112 = fsub fast float -0.000000e+00, %9110
  %9113 = fcmp fast ogt float %9111, %9112
  br i1 %9113, label %9114, label %9419, !dx.controlflow.hints !178

; <label>:9114                                    ; preds = %9062
  %9115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9116 = extractvalue %dx.types.CBufRet.f32 %9115, 3
  %9117 = fcmp fast ogt float %9116, 0.000000e+00
  br i1 %9117, label %9118, label %9191, !dx.controlflow.hints !179

; <label>:9118                                    ; preds = %9114
  %9119 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9120 = extractvalue %dx.types.Dimensions %9119, 0
  %9121 = sitofp i32 %9120 to float
  %9122 = extractvalue %dx.types.Dimensions %9119, 1
  %9123 = sitofp i32 %9122 to float
  %9124 = fmul fast float %9063, %9121
  %9125 = fmul fast float %9064, %9123
  %9126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %9127 = extractvalue %dx.types.CBufRet.f32 %9126, 1
  %9128 = fsub fast float -0.000000e+00, %9127
  %9129 = fptoui float %9128 to i32
  %9130 = fptoui float %9124 to i32
  %9131 = fptoui float %9125 to i32
  %9132 = and i32 %9129, 31
  %9133 = lshr i32 %9130, %9132
  %9134 = lshr i32 %9131, %9132
  %9135 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9129, i32 %9133, i32 %9134, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9136 = extractvalue %dx.types.ResRet.f32 %9135, 0
  %9137 = fcmp fast olt float %9136, -1.000000e+00
  %9138 = fcmp fast ogt float %9136, -1.000000e+00
  %9139 = select i1 %9138, float %6098, float 1.000000e+00
  %9140 = fadd fast float %9136, 1.000000e+00
  %9141 = fmul fast float %9139, %9140
  %9142 = call float @dx.op.unary.f32(i32 6, float %9141)  ; FAbs(value)
  %9143 = extractvalue %dx.types.CBufRet.f32 %6097, 3
  %9144 = fcmp fast oge float %9142, %9143
  %9145 = select i1 %9144, float 0x4197782600000000, float %9142
  %9146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9147 = extractvalue %dx.types.CBufRet.f32 %9146, 0
  %9148 = extractvalue %dx.types.CBufRet.f32 %9146, 1
  %9149 = extractvalue %dx.types.CBufRet.f32 %9146, 2
  %9150 = select i1 %9137, float %9147, float %9070
  %9151 = select i1 %9137, float %9148, float %9071
  %9152 = select i1 %9137, float %9149, float %9072
  %9153 = fmul fast float %9150, %9067
  %9154 = fmul fast float %9151, %9067
  %9155 = fmul fast float %9152, %9067
  %9156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9157 = extractvalue %dx.types.CBufRet.f32 %9156, 0
  %9158 = extractvalue %dx.types.CBufRet.f32 %9156, 1
  %9159 = extractvalue %dx.types.CBufRet.f32 %9156, 2
  %9160 = select i1 %9137, float %9157, float %9077
  %9161 = select i1 %9137, float %9158, float %9078
  %9162 = select i1 %9137, float %9159, float %9079
  %9163 = fmul fast float %9160, %9068
  %9164 = fmul fast float %9161, %9068
  %9165 = fmul fast float %9162, %9068
  %9166 = fadd fast float %9163, %9153
  %9167 = fadd fast float %9164, %9154
  %9168 = fadd fast float %9165, %9155
  %9169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9170 = extractvalue %dx.types.CBufRet.f32 %9169, 0
  %9171 = extractvalue %dx.types.CBufRet.f32 %9169, 1
  %9172 = extractvalue %dx.types.CBufRet.f32 %9169, 2
  %9173 = select i1 %9137, float %9170, float %9084
  %9174 = select i1 %9137, float %9171, float %9085
  %9175 = select i1 %9137, float %9172, float %9086
  %9176 = fadd fast float %9166, %9173
  %9177 = fadd fast float %9167, %9174
  %9178 = fadd fast float %9168, %9175
  %9179 = fmul fast float %9176, %9145
  %9180 = fmul fast float %9177, %9145
  %9181 = fmul fast float %9178, %9145
  %9182 = fmul fast float %9179, %9179
  %9183 = fmul fast float %9180, %9180
  %9184 = fadd fast float %9182, %9183
  %9185 = fmul fast float %9181, %9181
  %9186 = fadd fast float %9184, %9185
  %9187 = call float @dx.op.unary.f32(i32 24, float %9186)  ; Sqrt(value)
  %9188 = fsub fast float %9187, %9102
  %9189 = fmul fast float %9188, %9104
  %9190 = call float @dx.op.unary.f32(i32 7, float %9189)  ; Saturate(value)
  br label %9191

; <label>:9191                                    ; preds = %9118, %9114
  %9192 = phi float [ %9190, %9118 ], [ 1.000000e+00, %9114 ]
  %9193 = fmul fast float %9111, 5.000000e-01
  %9194 = fadd fast float %9193, 5.000000e-01
  %9195 = call float @dx.op.unary.f32(i32 22, float %9194)  ; Frc(value)
  %9196 = call float @dx.op.unary.f32(i32 27, float %9195)  ; Round_ni(value)
  %9197 = call float @dx.op.unary.f32(i32 22, float %9195)  ; Frc(value)
  %9198 = fmul fast float %9197, 2.000000e+00
  %9199 = fadd fast float %9198, -1.000000e+00
  %9200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %51, float %9063, float %9064, float %9196, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9201 = extractvalue %dx.types.ResRet.f32 %9200, 0
  %9202 = extractvalue %dx.types.ResRet.f32 %9200, 1
  %9203 = extractvalue %dx.types.ResRet.f32 %9200, 2
  %9204 = extractvalue %dx.types.ResRet.f32 %9200, 3
  %9205 = fadd fast float %9201, -5.000000e-01
  %9206 = fadd fast float %9203, -5.000000e-01
  %9207 = fmul fast float %9205, 0xBFD5555560000000
  %9208 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9206, float %9207)  ; FMad(a,b,c)
  %9209 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9202, float 0.000000e+00)  ; FMad(a,b,c)
  %9210 = fadd fast float %9209, %9204
  %9211 = fmul fast float %9205, -7.500000e-01
  %9212 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9206, float %9211)  ; FMad(a,b,c)
  %9213 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9202, float 0.000000e+00)  ; FMad(a,b,c)
  %9214 = fadd fast float %9213, %9204
  %9215 = call float @dx.op.binary.f32(i32 35, float %9208, float -1.000000e+00)  ; FMax(a,b)
  %9216 = call float @dx.op.binary.f32(i32 35, float %9210, float -1.000000e+00)  ; FMax(a,b)
  %9217 = call float @dx.op.binary.f32(i32 35, float %9212, float -1.000000e+00)  ; FMax(a,b)
  %9218 = call float @dx.op.binary.f32(i32 35, float %9214, float -1.000000e+00)  ; FMax(a,b)
  %9219 = call float @dx.op.binary.f32(i32 36, float %9215, float 1.000000e+00)  ; FMin(a,b)
  %9220 = call float @dx.op.binary.f32(i32 36, float %9216, float 1.000000e+00)  ; FMin(a,b)
  %9221 = call float @dx.op.binary.f32(i32 36, float %9217, float 1.000000e+00)  ; FMin(a,b)
  %9222 = call float @dx.op.binary.f32(i32 36, float %9218, float 1.000000e+00)  ; FMin(a,b)
  %9223 = fcmp fast olt float %9219, 0x3FEFFF8020000000
  br i1 %9223, label %9224, label %9339, !dx.controlflow.hints !180

; <label>:9224                                    ; preds = %9191
  %9225 = extractvalue %dx.types.CBufRet.f32 %9109, 3
  %9226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9227 = extractvalue %dx.types.CBufRet.f32 %9226, 0
  %9228 = extractvalue %dx.types.CBufRet.f32 %9226, 1
  %9229 = extractvalue %dx.types.CBufRet.f32 %9226, 2
  %9230 = extractvalue %dx.types.CBufRet.f32 %9226, 3
  %9231 = fsub fast float %9227, %9219
  %9232 = fsub fast float %9228, %9220
  %9233 = fsub fast float %9229, %9221
  %9234 = fsub fast float %9230, %9222
  %9235 = fmul fast float %9231, %9225
  %9236 = fmul fast float %9232, %9225
  %9237 = fmul fast float %9233, %9225
  %9238 = fmul fast float %9234, %9225
  %9239 = fadd fast float %9235, %9219
  %9240 = fadd fast float %9236, %9220
  %9241 = fsub fast float -0.000000e+00, %9240
  %9242 = fadd fast float %9237, %9221
  %9243 = fadd fast float %9238, %9222
  %9244 = fmul fast float %9239, %9239
  %9245 = fsub fast float %9240, %9244
  %9246 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9245)  ; FMax(a,b)
  %9247 = fdiv fast float 1.000000e+00, %9246
  %9248 = fmul fast float %9240, %9239
  %9249 = fsub fast float %9242, %9248
  %9250 = fsub fast float %9199, %9239
  %9251 = fmul fast float %9199, %9199
  %9252 = fsub fast float %9251, %9240
  %9253 = fmul fast float %9250, %9247
  %9254 = fmul fast float %9253, %9249
  %9255 = fsub fast float %9252, %9254
  %9256 = fmul fast float %9240, %9240
  %9257 = fsub fast float %9243, %9256
  %9258 = fmul fast float %9249, %9249
  %9259 = fmul fast float %9258, %9247
  %9260 = fsub fast float %9257, %9259
  %9261 = fdiv fast float %9255, %9260
  %9262 = fmul fast float %9249, %9261
  %9263 = fsub fast float %9250, %9262
  %9264 = fmul fast float %9263, %9247
  %9265 = fmul fast float %9264, %9239
  %9266 = fsub fast float 1.000000e+00, %9265
  %9267 = fmul fast float %9240, %9261
  %9268 = fsub fast float %9266, %9267
  %9269 = fmul fast float %9264, %9264
  %9270 = fmul fast float %9261, 4.000000e+00
  %9271 = fmul fast float %9270, %9268
  %9272 = fsub fast float %9269, %9271
  %9273 = call float @dx.op.unary.f32(i32 24, float %9272)  ; Sqrt(value)
  %9274 = fcmp fast oge float %9264, 0.000000e+00
  %9275 = fsub fast float -0.000000e+00, %9273
  %9276 = select i1 %9274, float %9275, float %9273
  %9277 = fsub fast float %9276, %9264
  %9278 = fdiv fast float %9277, %9261
  %9279 = fdiv fast float %9268, %9277
  %9280 = fmul fast float %9278, 5.000000e-01
  %9281 = fmul fast float %9279, 2.000000e+00
  %9282 = select i1 %9274, float %9280, float %9281
  %9283 = select i1 %9274, float %9281, float %9280
  %9284 = call float @dx.op.binary.f32(i32 35, float %9282, float %9283)  ; FMax(a,b)
  %9285 = call float @dx.op.binary.f32(i32 36, float %9282, float %9283)  ; FMin(a,b)
  %9286 = fcmp fast ogt float %9199, %9285
  br i1 %9286, label %9287, label %9297

; <label>:9287                                    ; preds = %9224
  %9288 = fsub fast float %9199, %9285
  %9289 = fsub fast float %9284, %9285
  %9290 = fmul fast float %9288, %9289
  %9291 = fmul fast float %9284, %9199
  %9292 = fadd fast float %9284, %9199
  %9293 = fmul fast float %9292, %9239
  %9294 = fadd fast float %9291, %9240
  %9295 = fsub fast float %9294, %9293
  %9296 = fdiv fast float %9295, %9290
  br label %9297

; <label>:9297                                    ; preds = %9287, %9224
  %9298 = phi float [ %9296, %9287 ], [ 0.000000e+00, %9224 ]
  %9299 = fcmp fast ogt float %9199, %9284
  %9300 = fsub fast float %9199, %9284
  br i1 %9299, label %9301, label %9311

; <label>:9301                                    ; preds = %9297
  %9302 = fsub fast float %9284, %9285
  %9303 = fmul fast float %9302, %9300
  %9304 = fmul fast float %9285, %9199
  %9305 = fadd fast float %9285, %9199
  %9306 = fmul fast float %9305, %9239
  %9307 = fsub fast float %9241, %9304
  %9308 = fadd fast float %9307, %9306
  %9309 = fdiv fast float %9308, %9303
  %9310 = fadd fast float %9309, %9298
  br label %9311

; <label>:9311                                    ; preds = %9301, %9297
  %9312 = phi float [ %9310, %9301 ], [ %9298, %9297 ]
  %9313 = fsub fast float %9199, %9285
  %9314 = fmul fast float %9313, %9300
  %9315 = fmul fast float %9285, %9284
  %9316 = fadd fast float %9285, %9284
  %9317 = fmul fast float %9316, %9239
  %9318 = fadd fast float %9315, %9240
  %9319 = fsub fast float %9318, %9317
  %9320 = fdiv fast float %9319, %9314
  %9321 = call float @dx.op.unary.f32(i32 7, float %9312)  ; Saturate(value)
  %9322 = fcmp fast oeq float %8006, 0.000000e+00
  %9323 = extractvalue %dx.types.CBufRet.f32 %9109, 0
  %9324 = fcmp fast oeq float %9323, 0.000000e+00
  %9325 = or i1 %9322, %9324
  %9326 = fmul fast float %9323, 2.000000e+00
  %9327 = fadd fast float %9110, %9111
  %9328 = fdiv fast float %9327, %9326
  %9329 = call float @dx.op.unary.f32(i32 7, float %9328)  ; Saturate(value)
  %9330 = fmul fast float %9329, 2.000000e+00
  %9331 = fsub fast float 3.000000e+00, %9330
  %9332 = fmul fast float %9329, %9329
  %9333 = fmul fast float %9332, %9331
  %9334 = select i1 %9325, float 1.000000e+00, float %9333
  %9335 = fmul fast float %9320, %8006
  %9336 = fadd fast float %9321, %9335
  %9337 = call float @dx.op.unary.f32(i32 7, float %9336)  ; Saturate(value)
  %9338 = fmul fast float %9334, %9337
  br label %9339

; <label>:9339                                    ; preds = %9311, %9191
  %9340 = phi float [ %9338, %9311 ], [ 0.000000e+00, %9191 ]
  %9341 = fsub fast float 1.000000e+00, %9340
  %9342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %51, float %9063, float %9064, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9343 = extractvalue %dx.types.ResRet.f32 %9342, 0
  %9344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9345 = extractvalue %dx.types.CBufRet.i32 %9344, 2
  %9346 = icmp eq i32 %9345, 0
  br i1 %9346, label %9352, label %9347

; <label>:9347                                    ; preds = %9339
  %9348 = call float @dx.op.unary.f32(i32 7, float %9340)  ; Saturate(value)
  %9349 = fadd fast float %9343, -1.000000e+00
  %9350 = fmul fast float %9348, %9349
  %9351 = fadd fast float %9350, 1.000000e+00
  br label %9352

; <label>:9352                                    ; preds = %9347, %9339
  %9353 = phi float [ %9351, %9347 ], [ %9341, %9339 ]
  br i1 %9117, label %9354, label %9372

; <label>:9354                                    ; preds = %9352
  %9355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9356 = extractvalue %dx.types.CBufRet.f32 %9355, 1
  %9357 = fsub fast float %9192, %9356
  %9358 = call float @dx.op.unary.f32(i32 7, float %9357)  ; Saturate(value)
  %9359 = fsub fast float %9192, %9116
  %9360 = call float @dx.op.unary.f32(i32 7, float %9359)  ; Saturate(value)
  %9361 = fsub fast float %9358, %9360
  %9362 = fsub fast float %9194, %9360
  %9363 = fdiv fast float %9362, %9361
  %9364 = call float @dx.op.unary.f32(i32 7, float %9363)  ; Saturate(value)
  %9365 = fmul fast float %9364, 2.000000e+00
  %9366 = fsub fast float 3.000000e+00, %9365
  %9367 = fsub fast float %9343, %9353
  %9368 = fmul fast float %9364, %9364
  %9369 = fmul fast float %9368, %9367
  %9370 = fmul fast float %9369, %9366
  %9371 = fadd fast float %9370, %9353
  br label %9372

; <label>:9372                                    ; preds = %9354, %9352
  %9373 = phi float [ %9371, %9354 ], [ %9353, %9352 ]
  %9374 = call float @dx.op.binary.f32(i32 35, float %9343, float %9373)  ; FMax(a,b)
  %9375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9376 = extractvalue %dx.types.CBufRet.i32 %9375, 2
  %9377 = and i32 %9376, 1
  %9378 = icmp eq i32 %9377, 0
  %9379 = fcmp fast une float %9374, 1.000000e+00
  %9380 = and i1 %9379, %9378
  br i1 %9380, label %9381, label %9398

; <label>:9381                                    ; preds = %9372
  %9382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %51, float %9063, float %9064, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9383 = extractvalue %dx.types.ResRet.f32 %9382, 0
  %9384 = extractvalue %dx.types.ResRet.f32 %9382, 1
  %9385 = extractvalue %dx.types.ResRet.f32 %9382, 2
  %9386 = fmul fast float %6145, %9383
  %9387 = fmul fast float %6145, %9384
  %9388 = fmul fast float %6145, %9385
  %9389 = fcmp fast ogt float %9343, 0x3FEFFF2E40000000
  %9390 = fsub fast float 1.000000e+00, %9374
  %9391 = fsub fast float 1.000000e+00, %9343
  %9392 = fdiv fast float %9390, %9391
  %9393 = call float @dx.op.unary.f32(i32 7, float %9392)  ; Saturate(value)
  %9394 = select i1 %9389, float 0.000000e+00, float %9393
  %9395 = fmul fast float %9386, %9394
  %9396 = fmul fast float %9387, %9394
  %9397 = fmul fast float %9388, %9394
  br label %9398

; <label>:9398                                    ; preds = %9381, %9372
  %9399 = phi float [ 0.000000e+00, %9372 ], [ %9395, %9381 ]
  %9400 = phi float [ 0.000000e+00, %9372 ], [ %9396, %9381 ]
  %9401 = phi float [ 0.000000e+00, %9372 ], [ %9397, %9381 ]
  %9402 = fmul fast float %9374, %9041
  %9403 = call float @dx.op.dot3.f32(i32 55, float %9374, float %9374, float %9374, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9404 = call float @dx.op.dot3.f32(i32 55, float %9399, float %9400, float %9401, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9405 = select i1 %296, float %9403, float %9374
  %9406 = select i1 %296, float 1.000000e+00, float %9374
  %9407 = select i1 %296, float %9404, float %9399
  %9408 = select i1 %296, float 0.000000e+00, float %9400
  %9409 = select i1 %296, float 0.000000e+00, float %9401
  %9410 = fmul fast float %9405, %9053
  %9411 = fmul fast float %9405, %9054
  %9412 = fmul fast float %9406, %9055
  %9413 = fadd fast float %9410, %9407
  %9414 = fadd fast float %9411, %9408
  %9415 = fadd fast float %9409, %9412
  %9416 = fmul fast float %9405, %9056
  %9417 = fmul fast float %9405, %9057
  %9418 = fmul fast float %9406, %9058
  br label %9419

; <label>:9419                                    ; preds = %9398, %9062, %9034, %8266
  %9420 = phi float [ %8271, %8266 ], [ %9053, %9034 ], [ %9413, %9398 ], [ %9053, %9062 ]
  %9421 = phi float [ %8272, %8266 ], [ %9054, %9034 ], [ %9414, %9398 ], [ %9054, %9062 ]
  %9422 = phi float [ %8273, %8266 ], [ %9055, %9034 ], [ %9415, %9398 ], [ %9055, %9062 ]
  %9423 = phi float [ %8274, %8266 ], [ %9056, %9034 ], [ %9416, %9398 ], [ %9056, %9062 ]
  %9424 = phi float [ %8275, %8266 ], [ %9057, %9034 ], [ %9417, %9398 ], [ %9057, %9062 ]
  %9425 = phi float [ %8276, %8266 ], [ %9058, %9034 ], [ %9418, %9398 ], [ %9058, %9062 ]
  %9426 = phi float [ %8277, %8266 ], [ %9041, %9034 ], [ %9402, %9398 ], [ %9041, %9062 ]
  %9427 = fmul fast float %6090, %113
  %9428 = fmul fast float %6091, %114
  %9429 = call float @dx.op.unary.f32(i32 7, float %9427)  ; Saturate(value)
  %9430 = call float @dx.op.unary.f32(i32 7, float %9428)  ; Saturate(value)
  %9431 = select i1 %8016, i32 2, i32 0
  %9432 = or i32 %9431, 1
  %9433 = uitofp i32 %9432 to float
  %9434 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %9429, float %9430, float %9433, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9435 = extractvalue %dx.types.ResRet.f32 %9434, 0
  %9436 = extractvalue %dx.types.ResRet.f32 %9434, 1
  %9437 = extractvalue %dx.types.ResRet.f32 %9434, 2
  %9438 = extractvalue %dx.types.ResRet.f32 %9434, 3
  %9439 = add nuw nsw i32 %9431, 2
  %9440 = uitofp i32 %9439 to float
  %9441 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %9429, float %9430, float %9440, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9442 = extractvalue %dx.types.ResRet.f32 %9441, 0
  %9443 = extractvalue %dx.types.ResRet.f32 %9441, 1
  %9444 = extractvalue %dx.types.ResRet.f32 %9441, 2
  %9445 = extractvalue %dx.types.ResRet.f32 %9441, 3
  %9446 = call float @dx.op.binary.f32(i32 35, float %9436, float %9437)  ; FMax(a,b)
  %9447 = call float @dx.op.binary.f32(i32 35, float %9435, float %9446)  ; FMax(a,b)
  %9448 = call float @dx.op.binary.f32(i32 35, float %9447, float %9438)  ; FMax(a,b)
  %9449 = call float @dx.op.binary.f32(i32 36, float %9443, float %9444)  ; FMin(a,b)
  %9450 = call float @dx.op.binary.f32(i32 36, float %9442, float %9449)  ; FMin(a,b)
  %9451 = call float @dx.op.binary.f32(i32 36, float %9450, float %9445)  ; FMin(a,b)
  %9452 = fmul fast float %9448, 2.550000e+02
  %9453 = fadd fast float %9452, 0x3F70101020000000
  %9454 = fptoui float %9453 to i32
  %9455 = fmul fast float %9451, 2.550000e+02
  %9456 = fadd fast float %9455, 0x3F70101020000000
  %9457 = fptoui float %9456 to i32
  %9458 = icmp ult i32 %9454, %9457
  br i1 %9458, label %9459, label %9626

; <label>:9459                                    ; preds = %9419
  %9460 = fcmp fast ogt float %103, 9.843750e-01
  %9461 = fadd fast float %8270, -4.000000e+00
  %9462 = select i1 %9460, float -4.000000e+00, float %9461
  %9463 = call float @dx.op.binary.f32(i32 35, float %9462, float 0.000000e+00)  ; FMax(a,b)
  %9464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9465 = extractvalue %dx.types.CBufRet.f32 %9464, 0
  %9466 = fadd fast float %9465, %9463
  %9467 = extractvalue %dx.types.CBufRet.f32 %9464, 2
  %9468 = fmul fast float %9466, %9467
  %9469 = call float @dx.op.unary.f32(i32 23, float %9468)  ; Log(value)
  %9470 = extractvalue %dx.types.CBufRet.f32 %9464, 3
  %9471 = fmul fast float %9470, %9469
  %9472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9473 = extractvalue %dx.types.CBufRet.f32 %9472, 2
  %9474 = fmul fast float %9471, %9473
  %9475 = call float @dx.op.unary.f32(i32 7, float %9474)  ; Saturate(value)
  %9476 = uitofp i32 %9454 to float
  %9477 = uitofp i32 %9457 to float
  %9478 = fadd fast float %9476, 5.000000e-01
  %9479 = fadd fast float %9477, 5.000000e-01
  %9480 = fmul fast float %9473, %9478
  %9481 = fmul fast float %9473, %9479
  %9482 = fadd fast float %9480, 0x3F0FFB4800000000
  %9483 = fadd fast float %9481, 0xBF0FFB4800000000
  %9484 = call float @dx.op.binary.f32(i32 35, float %9475, float %9482)  ; FMax(a,b)
  %9485 = call float @dx.op.binary.f32(i32 36, float %9484, float %9483)  ; FMin(a,b)
  %9486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9487 = extractvalue %dx.types.CBufRet.f32 %9486, 1
  %9488 = extractvalue %dx.types.CBufRet.f32 %9486, 2
  %9489 = extractvalue %dx.types.CBufRet.f32 %9486, 0
  %9490 = select i1 %8016, float %9489, float 0.000000e+00
  %9491 = fmul fast float %9487, %9485
  %9492 = fadd fast float %9490, %9491
  %9493 = fadd fast float %9490, %9488
  %9494 = fsub fast float %9487, %9488
  %9495 = fadd fast float %9494, %9490
  %9496 = call float @dx.op.binary.f32(i32 35, float %9492, float %9493)  ; FMax(a,b)
  %9497 = call float @dx.op.binary.f32(i32 36, float %9496, float %9495)  ; FMin(a,b)
  %9498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %49, float %9429, float %9430, float %9497, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9499 = extractvalue %dx.types.ResRet.f32 %9498, 0
  %9500 = extractvalue %dx.types.ResRet.f32 %9498, 1
  %9501 = extractvalue %dx.types.ResRet.f32 %9498, 2
  %9502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9503 = extractvalue %dx.types.CBufRet.i32 %9502, 0
  %9504 = extractvalue %dx.types.CBufRet.i32 %9502, 1
  %9505 = uitofp i32 %9503 to float
  %9506 = uitofp i32 %9504 to float
  %9507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9508 = extractvalue %dx.types.CBufRet.f32 %9507, 0
  %9509 = extractvalue %dx.types.CBufRet.f32 %9507, 1
  %9510 = fmul fast float %9505, %9429
  %9511 = fmul fast float %9506, %9430
  %9512 = fadd fast float %9510, -5.000000e-01
  %9513 = fadd fast float %9511, -5.000000e-01
  %9514 = call float @dx.op.unary.f32(i32 22, float %9512)  ; Frc(value)
  %9515 = call float @dx.op.unary.f32(i32 22, float %9513)  ; Frc(value)
  %9516 = fmul fast float %9514, %9514
  %9517 = fmul fast float %9516, %9514
  %9518 = fsub fast float 3.000000e+00, %9514
  %9519 = fmul fast float %9516, %9518
  %9520 = fmul fast float %9514, 3.000000e+00
  %9521 = fmul fast float %9517, 3.000000e+00
  %9522 = fmul fast float %9516, 6.000000e+00
  %9523 = fsub fast float %9521, %9522
  %9524 = fadd fast float %9523, 4.000000e+00
  %9525 = fmul fast float %9524, 0x3FC5555560000000
  %9526 = fmul fast float %9517, -3.000000e+00
  %9527 = fadd fast float %9516, %9514
  %9528 = fmul fast float %9527, 3.000000e+00
  %9529 = fadd fast float %9526, 1.000000e+00
  %9530 = fadd fast float %9529, %9528
  %9531 = fmul fast float %9517, 0x3FC5555560000000
  %9532 = fmul fast float %9515, %9515
  %9533 = fmul fast float %9532, %9515
  %9534 = fsub fast float 3.000000e+00, %9515
  %9535 = fmul fast float %9532, %9534
  %9536 = fmul fast float %9515, 3.000000e+00
  %9537 = fmul fast float %9533, 3.000000e+00
  %9538 = fmul fast float %9532, 6.000000e+00
  %9539 = fsub fast float %9537, %9538
  %9540 = fadd fast float %9539, 4.000000e+00
  %9541 = fmul fast float %9540, 0x3FC5555560000000
  %9542 = fmul fast float %9533, -3.000000e+00
  %9543 = fadd fast float %9532, %9515
  %9544 = fmul fast float %9543, 3.000000e+00
  %9545 = fadd fast float %9542, 1.000000e+00
  %9546 = fadd fast float %9545, %9544
  %9547 = fmul fast float %9533, 0x3FC5555560000000
  %9548 = fadd fast float %9514, 1.000000e+00
  %9549 = fsub fast float 1.000000e+00, %9520
  %9550 = fadd fast float %9549, %9519
  %9551 = fadd fast float %9550, %9524
  %9552 = fmul fast float %9551, 0x3FC5555560000000
  %9553 = fdiv fast float %9525, %9552
  %9554 = fsub fast float %9548, %9553
  %9555 = fsub fast float 1.000000e+00, %9514
  %9556 = fadd fast float %9530, %9517
  %9557 = fmul fast float %9556, 0x3FC5555560000000
  %9558 = fdiv fast float %9531, %9557
  %9559 = fadd fast float %9555, %9558
  %9560 = fadd fast float %9515, 1.000000e+00
  %9561 = fsub fast float 1.000000e+00, %9536
  %9562 = fadd fast float %9561, %9535
  %9563 = fadd fast float %9562, %9540
  %9564 = fmul fast float %9563, 0x3FC5555560000000
  %9565 = fdiv fast float %9541, %9564
  %9566 = fsub fast float %9560, %9565
  %9567 = fsub fast float 1.000000e+00, %9515
  %9568 = fadd fast float %9546, %9533
  %9569 = fmul fast float %9568, 0x3FC5555560000000
  %9570 = fdiv fast float %9547, %9569
  %9571 = fadd fast float %9570, %9567
  %9572 = fmul fast float %9554, %9508
  %9573 = fsub fast float %9429, %9572
  %9574 = fmul fast float %9559, %9508
  %9575 = fadd fast float %9574, %9429
  %9576 = fmul fast float %9571, %9509
  %9577 = fadd fast float %9576, %9430
  %9578 = fmul fast float %9566, %9509
  %9579 = fsub fast float %9430, %9578
  %9580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %9573, float %9579, float %9497, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9581 = extractvalue %dx.types.ResRet.f32 %9580, 0
  %9582 = extractvalue %dx.types.ResRet.f32 %9580, 1
  %9583 = extractvalue %dx.types.ResRet.f32 %9580, 2
  %9584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %9575, float %9579, float %9497, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9585 = extractvalue %dx.types.ResRet.f32 %9584, 0
  %9586 = extractvalue %dx.types.ResRet.f32 %9584, 1
  %9587 = extractvalue %dx.types.ResRet.f32 %9584, 2
  %9588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %9573, float %9577, float %9497, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9589 = extractvalue %dx.types.ResRet.f32 %9588, 0
  %9590 = extractvalue %dx.types.ResRet.f32 %9588, 1
  %9591 = extractvalue %dx.types.ResRet.f32 %9588, 2
  %9592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %9575, float %9577, float %9497, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9593 = extractvalue %dx.types.ResRet.f32 %9592, 0
  %9594 = extractvalue %dx.types.ResRet.f32 %9592, 1
  %9595 = extractvalue %dx.types.ResRet.f32 %9592, 2
  %9596 = fsub fast float %9589, %9581
  %9597 = fsub fast float %9590, %9582
  %9598 = fsub fast float %9591, %9583
  %9599 = fmul fast float %9596, %9569
  %9600 = fmul fast float %9597, %9569
  %9601 = fmul fast float %9598, %9569
  %9602 = fadd fast float %9599, %9581
  %9603 = fadd fast float %9600, %9582
  %9604 = fadd fast float %9601, %9583
  %9605 = fsub fast float %9593, %9585
  %9606 = fsub fast float %9594, %9586
  %9607 = fsub fast float %9595, %9587
  %9608 = fmul fast float %9605, %9569
  %9609 = fmul fast float %9606, %9569
  %9610 = fmul fast float %9607, %9569
  %9611 = fsub fast float %9585, %9602
  %9612 = fadd fast float %9611, %9608
  %9613 = fsub fast float %9586, %9603
  %9614 = fadd fast float %9613, %9609
  %9615 = fsub fast float %9587, %9604
  %9616 = fadd fast float %9615, %9610
  %9617 = fmul fast float %9612, %9557
  %9618 = fmul fast float %9614, %9557
  %9619 = fmul fast float %9616, %9557
  %9620 = fadd fast float %9617, %9602
  %9621 = fadd fast float %9618, %9603
  %9622 = fadd fast float %9619, %9604
  %9623 = fmul fast float %9620, %6145
  %9624 = fmul fast float %9621, %6145
  %9625 = fmul fast float %9622, %6145
  br label %9626

; <label>:9626                                    ; preds = %9459, %9419
  %9627 = phi float [ %9499, %9459 ], [ 1.000000e+00, %9419 ]
  %9628 = phi float [ %9500, %9459 ], [ 1.000000e+00, %9419 ]
  %9629 = phi float [ %9501, %9459 ], [ 1.000000e+00, %9419 ]
  %9630 = phi float [ %9623, %9459 ], [ 0.000000e+00, %9419 ]
  %9631 = phi float [ %9624, %9459 ], [ 0.000000e+00, %9419 ]
  %9632 = phi float [ %9625, %9459 ], [ 0.000000e+00, %9419 ]
  %9633 = fmul fast float %9627, %9426
  %9634 = call float @dx.op.dot3.f32(i32 55, float %9627, float %9628, float %9629, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9635 = call float @dx.op.dot3.f32(i32 55, float %9630, float %9631, float %9632, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9636 = select i1 %296, float %9634, float %9627
  %9637 = select i1 %296, float %9634, float %9628
  %9638 = select i1 %296, float 1.000000e+00, float %9629
  %9639 = select i1 %296, float %9635, float %9630
  %9640 = select i1 %296, float 0.000000e+00, float %9631
  %9641 = select i1 %296, float 0.000000e+00, float %9632
  %9642 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9643 = extractvalue %dx.types.CBufRet.i32 %9642, 3
  %9644 = and i32 %9643, 3
  %9645 = icmp ne i32 %9644, 0
  %9646 = and i32 %9643, 4
  %9647 = icmp ne i32 %9646, 0
  %9648 = and i1 %9645, %9647
  %9649 = and i1 %296, %9648
  br i1 %9649, label %9650, label %9656

; <label>:9650                                    ; preds = %9626
  %9651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9652 = extractvalue %dx.types.CBufRet.f32 %9651, 1
  %9653 = fadd fast float %9633, -1.000000e+00
  %9654 = fmul fast float %9652, %9653
  %9655 = fadd fast float %9654, 1.000000e+00
  br label %9656

; <label>:9656                                    ; preds = %9650, %9626
  %9657 = phi float [ %9655, %9650 ], [ %9633, %9626 ]
  %9658 = fadd fast float %9423, %9420
  %9659 = fmul fast float %9636, %9658
  %9660 = fadd fast float %9659, %9639
  %9661 = fadd fast float %9424, %9421
  %9662 = fmul fast float %9637, %9661
  %9663 = fadd fast float %9662, %9640
  %9664 = extractvalue %dx.types.CBufRet.f32 %6144, 0
  br i1 %296, label %9665, label %9680

; <label>:9665                                    ; preds = %9656
  %9666 = fadd fast float %9660, %9663
  %9667 = fmul fast float %9664, %9666
  %9668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9669 = extractvalue %dx.types.CBufRet.f32 %9668, 3
  %9670 = extractvalue %dx.types.CBufRet.f32 %7998, 1
  %9671 = fsub fast float %8003, %7997
  %9672 = fadd fast float %9671, %8004
  %9673 = fsub fast float %9672, %9670
  %9674 = extractvalue %dx.types.CBufRet.f32 %7998, 2
  %9675 = fmul fast float %9673, %9674
  %9676 = call float @dx.op.unary.f32(i32 7, float %9675)  ; Saturate(value)
  %9677 = fsub fast float %9676, %9669
  %9678 = fmul fast float %9677, %9657
  %9679 = fadd fast float %9678, %9669
  br label %9704

; <label>:9680                                    ; preds = %9656
  %9681 = fadd fast float %9425, %9422
  %9682 = fmul fast float %9638, %9681
  %9683 = fadd fast float %9682, %9641
  %9684 = fmul fast float %9664, %9660
  %9685 = fmul fast float %9664, %9663
  %9686 = fmul fast float %9664, %9683
  %9687 = call float @dx.op.binary.f32(i32 35, float %9685, float %9686)  ; FMax(a,b)
  %9688 = call float @dx.op.binary.f32(i32 35, float %9684, float %9687)  ; FMax(a,b)
  %9689 = call float @dx.op.binary.f32(i32 35, float %9688, float 1.000000e+00)  ; FMax(a,b)
  %9690 = fcmp fast ugt float %9689, 0x3F10000000000000
  br i1 %9690, label %9692, label %9691

; <label>:9691                                    ; preds = %9680
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9692

; <label>:9692                                    ; preds = %9691, %9680
  %9693 = add i32 %57, 356
  %9694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %9693, i32 undef)  ; BufferLoad(srv,index,wot)
  %9695 = extractvalue %dx.types.ResRet.i32 %9694, 0
  %9696 = and i32 %9695, 32
  %9697 = icmp eq i32 %9696, 0
  br i1 %9697, label %9704, label %9698

; <label>:9698                                    ; preds = %9692
  %9699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9700 = extractvalue %dx.types.CBufRet.f32 %9699, 0
  %9701 = fmul fast float %9700, 0x3FE99999A0000000
  %9702 = fadd fast float %9700, %9684
  %9703 = fadd fast float %9701, %9686
  br label %9704

; <label>:9704                                    ; preds = %9698, %9692, %9665
  %9705 = phi float [ %9667, %9665 ], [ %9702, %9698 ], [ %9684, %9692 ]
  %9706 = phi float [ %9679, %9665 ], [ %9685, %9698 ], [ %9685, %9692 ]
  %9707 = phi float [ 1.000000e+00, %9665 ], [ %9703, %9698 ], [ %9686, %9692 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9708 = call float @dx.op.binary.f32(i32 36, float %9705, float 3.225500e+04)  ; FMin(a,b)
  %9709 = call float @dx.op.binary.f32(i32 36, float %9706, float 3.225500e+04)  ; FMin(a,b)
  %9710 = call float @dx.op.binary.f32(i32 36, float %9707, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9708)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9709)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9710)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!70}
!dx.entryPoints = !{!71}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !58, !61}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !32}
!32 = !{i32 0, i32 5}
!33 = !{i32 25, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!37 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!42 = !{i32 34, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !43}
!43 = !{i32 0, i32 14}
!44 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!45 = !{i32 36, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!51 = !{i32 42, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!52 = !{i32 43, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!53 = !{i32 44, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!54 = !{i32 45, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!55 = !{i32 46, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !43}
!56 = !{i32 47, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!57 = !{i32 48, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!58 = !{!59, !60}
!59 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!60 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69}
!62 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!63 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!64 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!65 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!66 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!67 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!68 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!69 = !{i32 7, %struct.SamplerState* undef, !"", i32 0, i32 6, i32 1, i32 0, null}
!70 = !{[62 x i32] [i32 60, i32 8, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!71 = !{void ()* @ps_main, !"ps_main", !72, !4, !100}
!72 = !{!73, !96, null}
!73 = !{!74, !77, !78, !80, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !93, !94, !95}
!74 = !{i32 0, !"SV_Position", i8 9, i8 3, !75, i8 4, i32 1, i8 4, i32 0, i8 0, !76}
!75 = !{i32 0}
!76 = !{i32 3, i32 15}
!77 = !{i32 1, !"COLOR", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 1, i8 0, !76}
!78 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 2, i8 0, !79}
!79 = !{i32 3, i32 3}
!80 = !{i32 3, !"NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 3, i32 3, i8 0, !81}
!81 = !{i32 3, i32 7}
!82 = !{i32 4, !"TANGENT", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 4, i8 0, !76}
!83 = !{i32 5, !"SH_RED", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 5, i8 0, !76}
!84 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 6, i8 0, !76}
!85 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 7, i8 0, !76}
!86 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !75, i8 2, i32 1, i8 3, i32 8, i8 0, !81}
!87 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 9, i8 0, !76}
!88 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !75, i8 2, i32 1, i8 2, i32 10, i8 0, !79}
!89 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 11, i8 0, !76}
!90 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 12, i8 0, !81}
!91 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !75, i8 1, i32 1, i8 1, i32 13, i8 0, !92}
!92 = !{i32 3, i32 1}
!93 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !75, i8 1, i32 1, i8 2, i32 13, i8 1, !92}
!94 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !75, i8 1, i32 1, i8 4, i32 14, i8 0, !92}
!95 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !75, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!96 = !{!97, !98}
!97 = !{i32 0, !"SV_Target", i8 9, i8 16, !75, i8 0, i32 1, i8 4, i32 0, i8 0, !76}
!98 = !{i32 1, !"SV_Target", i8 9, i8 16, !99, i8 0, i32 1, i8 4, i32 1, i8 0, !76}
!99 = !{i32 1}
!100 = !{i32 0, i64 16}
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
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = !{!133, !133, i64 0}
!133 = !{!"float", !109, i64 0}
!134 = !{!135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!135 = distinct !{!135, !136, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!136 = distinct !{!136, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!137 = distinct !{!137, !138, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!138 = distinct !{!138, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!139 = distinct !{!139, !138, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!140 = distinct !{!140, !141, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!141 = distinct !{!141, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!142 = distinct !{!142, !141, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!143 = distinct !{!143, !141, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!144 = distinct !{!144, !145, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!145 = distinct !{!145, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!146 = distinct !{!146, !145, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!147 = distinct !{!147, !145, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!148 = distinct !{!148, !149, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!149 = distinct !{!149, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"\01?sort@@YAXAIAM00@Z: %c"}
!152 = distinct !{!152, !"\01?sort@@YAXAIAM00@Z"}
!153 = !{!154, !155, !135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!154 = distinct !{!154, !152, !"\01?sort@@YAXAIAM00@Z: %a"}
!155 = distinct !{!155, !152, !"\01?sort@@YAXAIAM00@Z: %b"}
!156 = !{!155}
!157 = !{!154, !151, !135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!158 = !{!154}
!159 = !{!155, !151, !135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!160 = !{!161}
!161 = distinct !{!161, !162, !"\01?sort@@YAXAIAM00@Z: %c"}
!162 = distinct !{!162, !"\01?sort@@YAXAIAM00@Z"}
!163 = !{!164, !165, !135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!164 = distinct !{!164, !162, !"\01?sort@@YAXAIAM00@Z: %a"}
!165 = distinct !{!165, !162, !"\01?sort@@YAXAIAM00@Z: %b"}
!166 = !{!165}
!167 = !{!164, !161, !135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!168 = !{!164}
!169 = !{!165, !161, !135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 2}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}

