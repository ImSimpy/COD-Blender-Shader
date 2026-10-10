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
; ENTITY_IDS               0    yz        13     NONE    uint    yz 
; SV_IsFrontFace           0      w       13    FFACE    uint      w
; PACKED_TRI_DATA          0   xyzw       14     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 8eef80f4fa5b8763d65917b7e81c781c
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
; SV_IsFrontFace           0        nointerpolation       
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
;                                   texture    byte         r/o      T3      t9,space1     1
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture    byte         r/o      T5     t22,space1     1
;                                   texture     f32          3d      T6     t52,space2     1
;                                   texture     f32          2d      T7     t33,space2     1
;                                   texture     f32          2d      T8     t69,space2     1
;                                   texture    byte         r/o      T9     t18,space1     1
;                                   texture    byte         r/o     T10     t19,space1     1
;                                   texture    byte         r/o     T11     t20,space1     1
;                                   texture    byte         r/o     T12     t21,space1     1
;                                   texture     f32          2d     T13     t37,space2     1
;                                   texture     f32          2d     T14             t0     1
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
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 55, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 55, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 55, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 55, 56 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = alloca [4 x i32], align 4
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 16, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = icmp ne i32 %56, 0
  %58 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %106 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %107 = alloca [12 x float], align 4
  %108 = alloca [12 x float], align 4
  %109 = alloca [3 x float], align 4
  %110 = alloca [3 x float], align 4
  %111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = fmul fast float %114, %103
  %116 = fmul fast float %114, %104
  %117 = select i1 %57, float 1.000000e+00, float -1.000000e+00
  %118 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %119 = bitcast float %118 to i32
  %120 = ashr i32 %119, 1
  %121 = sub nsw i32 1597250115, %120
  %122 = bitcast i32 %121 to float
  %123 = fmul fast float %94, %117
  %124 = fmul fast float %123, %122
  %125 = fmul fast float %95, %117
  %126 = fmul fast float %125, %122
  %127 = fmul fast float %96, %117
  %128 = fmul fast float %127, %122
  %129 = fmul fast float %95, %92
  %130 = fmul fast float %96, %91
  %131 = fsub fast float %129, %130
  %132 = fmul fast float %96, %90
  %133 = fmul fast float %94, %92
  %134 = fsub fast float %132, %133
  %135 = fmul fast float %94, %91
  %136 = fmul fast float %95, %90
  %137 = fsub fast float %135, %136
  %138 = fmul fast float %131, %93
  %139 = fmul fast float %134, %93
  %140 = fmul fast float %137, %93
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = fcmp fast une float %142, 0.000000e+00
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 3
  %147 = fmul fast float %115, 2.000000e+00
  %148 = fmul fast float %147, %145
  %149 = fmul fast float %116, 2.000000e+00
  %150 = fmul fast float %149, %146
  %151 = fsub fast float 1.000000e+00, %148
  %152 = fsub fast float 1.000000e+00, %150
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = select i1 %143, float %154, float %158
  %162 = select i1 %143, float %155, float %159
  %163 = select i1 %143, float %156, float %160
  %164 = fmul fast float %161, %151
  %165 = fmul fast float %162, %151
  %166 = fmul fast float %163, %151
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %170 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %174 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %175 = select i1 %143, float %168, float %172
  %176 = select i1 %143, float %169, float %173
  %177 = select i1 %143, float %170, float %174
  %178 = fmul fast float %175, %152
  %179 = fmul fast float %176, %152
  %180 = fmul fast float %177, %152
  %181 = fadd fast float %178, %164
  %182 = fadd fast float %179, %165
  %183 = fadd fast float %180, %166
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %186 = extractvalue %dx.types.CBufRet.f32 %184, 1
  %187 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %191 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %192 = select i1 %143, float %185, float %189
  %193 = select i1 %143, float %186, float %190
  %194 = select i1 %143, float %187, float %191
  %195 = fadd fast float %181, %192
  %196 = fadd fast float %182, %193
  %197 = fadd fast float %183, %194
  %198 = fmul fast float %195, %106
  %199 = fmul fast float %196, %106
  %200 = fmul fast float %197, %106
  %201 = shl i32 %59, 5
  %202 = add i32 %201, 4194304
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = extractvalue %dx.types.ResRet.i32 %203, 1
  %206 = extractvalue %dx.types.ResRet.i32 %203, 2
  %207 = extractvalue %dx.types.ResRet.i32 %203, 3
  %208 = add i32 %201, 4194320
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = bitcast i32 %210 to float
  %212 = fmul fast float %115, 5.000000e-01
  %213 = fmul fast float %116, 5.000000e-01
  %214 = fptosi float %212 to i32
  %215 = fptosi float %213 to i32
  %216 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %214, i32 %215, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = lshr i32 %217, 18
  %219 = uitofp i32 %218 to float
  %220 = fmul fast float %219, 0x3F4C00EBA0000000
  %221 = call float @dx.op.unary.f32(i32 21, float %220)  ; Exp(value)
  %222 = fadd fast float %221, -1.000000e+00
  %223 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %224 = extractvalue %dx.types.Dimensions %223, 0
  %225 = sitofp i32 %224 to float
  %226 = extractvalue %dx.types.Dimensions %223, 1
  %227 = sitofp i32 %226 to float
  %228 = fcmp fast oge float %212, %225
  %229 = fcmp fast oge float %213, %227
  %230 = or i1 %228, %229
  %231 = select i1 %230, float 0x4197782600000000, float %222
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %234 = extractvalue %dx.types.CBufRet.f32 %232, 3
  %235 = fmul fast float %233, %115
  %236 = fmul fast float %234, %116
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = and i32 %238, 114688
  %240 = icmp ne i32 %239, 0
  %241 = select i1 %240, float %235, float 0.000000e+00
  %242 = select i1 %240, float %236, float 0.000000e+00
  %243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %51, float %241, float %242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = fmul fast float %244, 2.550000e+02
  %246 = fptoui float %245 to i32
  %247 = select i1 %240, i32 %246, i32 0
  %248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.i32 %248, 3
  %250 = and i32 %249, 3
  %251 = icmp ne i32 %250, 0
  %252 = and i32 %249, 4
  %253 = icmp ne i32 %252, 0
  %254 = and i1 %251, %253
  br i1 %254, label %255, label %264

; <label>:255                                     ; preds = %0
  %256 = fmul fast float %146, %116
  %257 = fmul fast float %145, %115
  %258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %50, float %257, float %256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = fsub fast float 1.000000e+00, %259
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 0
  %263 = fcmp fast olt float %260, %262
  br label %267

; <label>:264                                     ; preds = %0
  %265 = icmp eq i32 %252, 0
  %266 = and i1 %251, %265
  br label %267

; <label>:267                                     ; preds = %264, %255
  %268 = phi i1 [ %263, %255 ], [ %266, %264 ]
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %271 = fmul fast float %270, 0x3FE3C6EF40000000
  %272 = frem fast float %115, 2.560000e+02
  %273 = frem fast float %116, 2.560000e+02
  %274 = fptoui float %272 to i32
  %275 = fptoui float %273 to i32
  %276 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %274, i32 %275, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = fadd fast float %277, %271
  %279 = call float @dx.op.unary.f32(i32 22, float %278)  ; Frc(value)
  %280 = fcmp uge float %75, 0.000000e+00
  br i1 %280, label %281, label %284

; <label>:281                                     ; preds = %267
  %282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %75, float %76, float %77, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  br label %284

; <label>:284                                     ; preds = %281, %267
  %285 = phi float [ %283, %281 ], [ 0.000000e+00, %267 ]
  %286 = add i32 %58, 156
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = shl i32 %288, 4
  %290 = and i32 %289, 32752
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %288, 7
  %293 = and i32 %292, 32752
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %288, 22
  %296 = shl nuw nsw i32 %295, 5
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = add i32 %58, 216
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 255
  %302 = uitofp i32 %301 to float
  %303 = fmul fast float %302, 0x3F70101020000000
  %304 = lshr i32 %300, 8
  %305 = and i32 %304, 255
  %306 = uitofp i32 %305 to float
  %307 = fmul fast float %306, 0x3F70101020000000
  %308 = lshr i32 %300, 16
  %309 = and i32 %308, 255
  %310 = uitofp i32 %309 to float
  %311 = fmul fast float %310, 0x3F70101020000000
  %312 = add i32 %58, 36
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = and i32 %314, 65535
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %314, 16
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = add i32 %58, 288
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 65535
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %321, 16
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = fmul fast float %323, 0x3F50624DE0000000
  %327 = fmul fast float %325, 0x3F50624DE0000000
  %328 = mul i32 %60, 100
  %329 = add i32 %328, 28
  %330 = add i32 %328, 40
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = add i32 %58, 172
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = shl i32 %335, 4
  %337 = and i32 %336, 32752
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %335, 7
  %340 = and i32 %339, 32752
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %335, 22
  %343 = shl nuw nsw i32 %342, 5
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = add i32 %58, 232
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 255
  %349 = uitofp i32 %348 to float
  %350 = fmul fast float %349, 0x3F70101020000000
  %351 = lshr i32 %347, 8
  %352 = and i32 %351, 255
  %353 = uitofp i32 %352 to float
  %354 = fmul fast float %353, 0x3F70101020000000
  %355 = lshr i32 %347, 16
  %356 = and i32 %355, 255
  %357 = uitofp i32 %356 to float
  %358 = fmul fast float %357, 0x3F70101020000000
  %359 = add i32 %58, 52
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 65535
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %361, 16
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = add i32 %58, 304
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, 65535
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = lshr i32 %368, 16
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = shl i32 %374, 4
  %376 = and i32 %375, 32752
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = lshr i32 %374, 7
  %379 = and i32 %378, 32752
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = lshr i32 %374, 22
  %382 = shl nuw nsw i32 %381, 5
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = and i32 %332, 1
  %385 = icmp ne i32 %384, 0
  %386 = select i1 %385, float %377, float %338
  %387 = select i1 %385, float %380, float %341
  %388 = select i1 %385, float %383, float %344
  %389 = add i32 %328, 44
  %390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.f32 %390, 0
  %392 = fmul fast float %391, %386
  %393 = fmul fast float %391, %387
  %394 = fmul fast float %391, %388
  %395 = add i32 %328, 48
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
  %407 = and i32 %332, 8
  %408 = icmp ne i32 %407, 0
  %409 = select i1 %408, float %400, float %350
  %410 = select i1 %408, float %403, float %354
  %411 = select i1 %408, float %406, float %358
  %412 = add i32 %328, 52
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = and i32 %414, 65535
  %416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %415)  ; LegacyF16ToF32(value)
  %417 = lshr i32 %414, 16
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = and i32 %332, 2
  %420 = icmp ne i32 %419, 0
  %421 = select i1 %420, float %416, float %363
  %422 = select i1 %420, float %418, float %365
  %423 = add i32 %328, 56
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 65535
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = lshr i32 %425, 16
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = and i32 %332, 4
  %431 = icmp ne i32 %430, 0
  %432 = select i1 %431, float %427, float %370
  %433 = fmul float %432, 0x3F50624DE0000000
  %434 = select i1 %431, float %429, float %372
  %435 = fmul float %434, 0x3F50624DE0000000
  %436 = add i32 %328, 60
  %437 = add i32 %328, 32
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = add i32 %58, 188
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = shl i32 %442, 4
  %444 = and i32 %443, 32752
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = lshr i32 %442, 7
  %447 = and i32 %446, 32752
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = lshr i32 %442, 22
  %450 = shl nuw nsw i32 %449, 5
  %451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %450)  ; LegacyF16ToF32(value)
  %452 = add i32 %58, 248
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = and i32 %454, 255
  %456 = uitofp i32 %455 to float
  %457 = fmul fast float %456, 0x3F70101020000000
  %458 = lshr i32 %454, 8
  %459 = and i32 %458, 255
  %460 = uitofp i32 %459 to float
  %461 = fmul fast float %460, 0x3F70101020000000
  %462 = lshr i32 %454, 16
  %463 = and i32 %462, 255
  %464 = uitofp i32 %463 to float
  %465 = fmul fast float %464, 0x3F70101020000000
  %466 = add i32 %58, 68
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = and i32 %468, 65535
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = lshr i32 %468, 16
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = add i32 %58, 320
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = and i32 %475, 65535
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = lshr i32 %475, 16
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = shl i32 %481, 4
  %483 = and i32 %482, 32752
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = lshr i32 %481, 7
  %486 = and i32 %485, 32752
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = lshr i32 %481, 22
  %489 = shl nuw nsw i32 %488, 5
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = and i32 %439, 1
  %492 = icmp ne i32 %491, 0
  %493 = select i1 %492, float %484, float %445
  %494 = select i1 %492, float %487, float %448
  %495 = select i1 %492, float %490, float %451
  %496 = add i32 %328, 64
  %497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.f32 %497, 0
  %499 = fmul fast float %498, %493
  %500 = fmul fast float %498, %494
  %501 = fmul fast float %498, %495
  %502 = add i32 %328, 68
  %503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.i32 %503, 0
  %505 = shl i32 %504, 4
  %506 = and i32 %505, 32752
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = lshr i32 %504, 7
  %509 = and i32 %508, 32752
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = lshr i32 %504, 22
  %512 = shl nuw nsw i32 %511, 5
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = and i32 %439, 8
  %515 = icmp ne i32 %514, 0
  %516 = select i1 %515, float %507, float %457
  %517 = select i1 %515, float %510, float %461
  %518 = select i1 %515, float %513, float %465
  %519 = add i32 %328, 72
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = and i32 %521, 65535
  %523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %522)  ; LegacyF16ToF32(value)
  %524 = lshr i32 %521, 16
  %525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %524)  ; LegacyF16ToF32(value)
  %526 = and i32 %439, 2
  %527 = icmp ne i32 %526, 0
  %528 = select i1 %527, float %523, float %470
  %529 = select i1 %527, float %525, float %472
  %530 = add i32 %328, 76
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = and i32 %532, 65535
  %534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %533)  ; LegacyF16ToF32(value)
  %535 = lshr i32 %532, 16
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = and i32 %439, 4
  %538 = icmp ne i32 %537, 0
  %539 = select i1 %538, float %534, float %477
  %540 = fmul float %539, 0x3F50624DE0000000
  %541 = select i1 %538, float %536, float %479
  %542 = fmul float %541, 0x3F50624DE0000000
  %543 = add i32 %328, 80
  %544 = add i32 %328, 36
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = add i32 %58, 204
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = shl i32 %549, 4
  %551 = and i32 %550, 32752
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = lshr i32 %549, 7
  %554 = and i32 %553, 32752
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = lshr i32 %549, 22
  %557 = shl nuw nsw i32 %556, 5
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = add i32 %58, 264
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = and i32 %561, 255
  %563 = uitofp i32 %562 to float
  %564 = fmul fast float %563, 0x3F70101020000000
  %565 = lshr i32 %561, 8
  %566 = and i32 %565, 255
  %567 = uitofp i32 %566 to float
  %568 = fmul fast float %567, 0x3F70101020000000
  %569 = lshr i32 %561, 16
  %570 = and i32 %569, 255
  %571 = uitofp i32 %570 to float
  %572 = fmul fast float %571, 0x3F70101020000000
  %573 = add i32 %58, 84
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = and i32 %575, 65535
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = lshr i32 %575, 16
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = add i32 %58, 336
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = and i32 %582, 65535
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = lshr i32 %582, 16
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = shl i32 %588, 4
  %590 = and i32 %589, 32752
  %591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %590)  ; LegacyF16ToF32(value)
  %592 = lshr i32 %588, 7
  %593 = and i32 %592, 32752
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = lshr i32 %588, 22
  %596 = shl nuw nsw i32 %595, 5
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = and i32 %546, 1
  %599 = icmp ne i32 %598, 0
  %600 = select i1 %599, float %591, float %552
  %601 = select i1 %599, float %594, float %555
  %602 = select i1 %599, float %597, float %558
  %603 = add i32 %328, 84
  %604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = fmul fast float %605, %600
  %607 = fmul fast float %605, %601
  %608 = fmul fast float %605, %602
  %609 = add i32 %328, 88
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = shl i32 %611, 4
  %613 = and i32 %612, 32752
  %614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %613)  ; LegacyF16ToF32(value)
  %615 = lshr i32 %611, 7
  %616 = and i32 %615, 32752
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = lshr i32 %611, 22
  %619 = shl nuw nsw i32 %618, 5
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = and i32 %546, 8
  %622 = icmp ne i32 %621, 0
  %623 = select i1 %622, float %614, float %564
  %624 = select i1 %622, float %617, float %568
  %625 = select i1 %622, float %620, float %572
  %626 = add i32 %328, 92
  %627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.i32 %627, 0
  %629 = and i32 %628, 65535
  %630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %629)  ; LegacyF16ToF32(value)
  %631 = lshr i32 %628, 16
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = and i32 %546, 2
  %634 = icmp ne i32 %633, 0
  %635 = select i1 %634, float %630, float %577
  %636 = select i1 %634, float %632, float %579
  %637 = add i32 %328, 96
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = and i32 %639, 65535
  %641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %640)  ; LegacyF16ToF32(value)
  %642 = lshr i32 %639, 16
  %643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %642)  ; LegacyF16ToF32(value)
  %644 = and i32 %546, 4
  %645 = icmp ne i32 %644, 0
  %646 = select i1 %645, float %641, float %584
  %647 = fmul float %646, 0x3F50624DE0000000
  %648 = select i1 %645, float %643, float %586
  %649 = fmul float %648, 0x3F50624DE0000000
  %650 = add i32 %58, 348
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %650, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = and i32 %652, 32
  %654 = icmp eq i32 %653, 0
  %655 = and i32 %652, 64
  %656 = icmp eq i32 %655, 0
  %657 = and i32 %652, 128
  %658 = icmp eq i32 %657, 0
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %650, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = and i32 %660, 2
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %678, label %663

; <label>:663                                     ; preds = %284
  %664 = add i32 %58, 504
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = add i32 %666, 0
  %668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %667, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %669 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %668, %dx.types.Handle %112, float %97, float %98, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = extractvalue %dx.types.ResRet.f32 %669, 1
  %672 = extractvalue %dx.types.ResRet.f32 %669, 2
  %673 = extractvalue %dx.types.ResRet.f32 %669, 3
  %674 = fmul fast float %673, %99
  %675 = fmul fast float %670, %100
  %676 = fmul fast float %671, %101
  %677 = fmul fast float %672, %102
  br label %678

; <label>:678                                     ; preds = %663, %284
  %679 = phi float [ %102, %284 ], [ %677, %663 ]
  %680 = phi float [ %101, %284 ], [ %676, %663 ]
  %681 = phi float [ %100, %284 ], [ %675, %663 ]
  %682 = phi float [ %99, %284 ], [ %674, %663 ]
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %650, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = and i32 %684, 2
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %706, label %687

; <label>:687                                     ; preds = %678
  %688 = add i32 %58, 44
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = and i32 %690, 1
  %692 = icmp ne i32 %691, 0
  %693 = select i1 %692, float %681, float 1.000000e+00
  %694 = add i32 %58, 60
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %694, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = and i32 %696, 1
  %698 = icmp ne i32 %697, 0
  %699 = select i1 %698, float %680, float 1.000000e+00
  %700 = add i32 %58, 76
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = and i32 %702, 1
  %704 = icmp ne i32 %703, 0
  %705 = select i1 %704, float %679, float 1.000000e+00
  br label %706

; <label>:706                                     ; preds = %687, %678
  %707 = phi float [ %679, %678 ], [ %705, %687 ]
  %708 = phi float [ %680, %678 ], [ %699, %687 ]
  %709 = phi float [ %681, %678 ], [ %693, %687 ]
  %710 = add i32 %58, 508
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = add i32 %712, 0
  %714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %713, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %715 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %714, %dx.types.Handle %112, float %97, float %98, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %716 = extractvalue %dx.types.ResRet.f32 %715, 0
  %717 = extractvalue %dx.types.ResRet.f32 %715, 1
  %718 = extractvalue %dx.types.ResRet.f32 %715, 2
  %719 = add i32 %58, 40
  %720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.i32 %720, 0
  %722 = icmp slt i32 %721, 0
  br i1 %722, label %727, label %723

; <label>:723                                     ; preds = %706
  %724 = add i32 %328, 16
  %725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.f32 %725, 0
  br label %727

; <label>:727                                     ; preds = %723, %706
  %728 = phi float [ %726, %723 ], [ %285, %706 ]
  %729 = and i32 %721, 536870912
  %730 = icmp ne i32 %729, 0
  %731 = add i32 %58, 116
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = shl i32 %733, 4
  %735 = and i32 %734, 32752
  %736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %735)  ; LegacyF16ToF32(value)
  %737 = lshr i32 %733, 7
  %738 = and i32 %737, 32752
  %739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %738)  ; LegacyF16ToF32(value)
  %740 = fmul fast float %736, 5.000000e-01
  %741 = select i1 %730, float 4.000000e+00, float 1.000000e+00
  %742 = select i1 %730, float 1.000000e+00, float 0.000000e+00
  %743 = fadd fast float %728, -5.000000e-01
  %744 = call float @dx.op.unary.f32(i32 6, float %743)  ; FAbs(value)
  %745 = fsub fast float 5.000000e-01, %744
  %746 = call float @dx.op.binary.f32(i32 36, float %740, float %745)  ; FMin(a,b)
  %747 = fadd fast float %716, -1.000000e+00
  %748 = fadd fast float %747, %728
  %749 = fadd fast float %748, %746
  %750 = fmul fast float %746, 2.000000e+00
  %751 = fdiv fast float %749, %750
  %752 = call float @dx.op.unary.f32(i32 7, float %751)  ; Saturate(value)
  %753 = fmul fast float %752, %741
  %754 = fmul fast float %752, %742
  %755 = fsub fast float 1.000000e+00, %754
  %756 = fmul fast float %753, %755
  %757 = bitcast float %756 to i32
  %758 = sitofp i32 %757 to float
  %759 = fadd fast float %758, 0xC1CFBF8940000000
  %760 = fmul fast float %759, %739
  %761 = fadd fast float %760, 0x41CFBF8940000000
  %762 = fptosi float %761 to i32
  %763 = bitcast i32 %762 to float
  %764 = add i32 %58, 56
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = icmp slt i32 %766, 0
  br i1 %767, label %772, label %768

; <label>:768                                     ; preds = %727
  %769 = add i32 %328, 20
  %770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.f32 %770, 0
  br label %772

; <label>:772                                     ; preds = %768, %727
  %773 = phi float [ %771, %768 ], [ %285, %727 ]
  %774 = and i32 %766, 536870912
  %775 = icmp ne i32 %774, 0
  %776 = add i32 %58, 132
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = shl i32 %778, 4
  %780 = and i32 %779, 32752
  %781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %780)  ; LegacyF16ToF32(value)
  %782 = lshr i32 %778, 7
  %783 = and i32 %782, 32752
  %784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %783)  ; LegacyF16ToF32(value)
  %785 = fmul fast float %781, 5.000000e-01
  %786 = select i1 %775, float 4.000000e+00, float 1.000000e+00
  %787 = select i1 %775, float 1.000000e+00, float 0.000000e+00
  %788 = fadd fast float %773, -5.000000e-01
  %789 = call float @dx.op.unary.f32(i32 6, float %788)  ; FAbs(value)
  %790 = fsub fast float 5.000000e-01, %789
  %791 = call float @dx.op.binary.f32(i32 36, float %785, float %790)  ; FMin(a,b)
  %792 = fadd fast float %717, -1.000000e+00
  %793 = fadd fast float %792, %773
  %794 = fadd fast float %793, %791
  %795 = fmul fast float %791, 2.000000e+00
  %796 = fdiv fast float %794, %795
  %797 = call float @dx.op.unary.f32(i32 7, float %796)  ; Saturate(value)
  %798 = fmul fast float %797, %786
  %799 = fmul fast float %797, %787
  %800 = fsub fast float 1.000000e+00, %799
  %801 = fmul fast float %798, %800
  %802 = bitcast float %801 to i32
  %803 = sitofp i32 %802 to float
  %804 = fadd fast float %803, 0xC1CFBF8940000000
  %805 = fmul fast float %804, %784
  %806 = fadd fast float %805, 0x41CFBF8940000000
  %807 = fptosi float %806 to i32
  %808 = bitcast i32 %807 to float
  %809 = add i32 %58, 72
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = icmp slt i32 %811, 0
  br i1 %812, label %817, label %813

; <label>:813                                     ; preds = %772
  %814 = add i32 %328, 24
  %815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.f32 %815, 0
  br label %817

; <label>:817                                     ; preds = %813, %772
  %818 = phi float [ %816, %813 ], [ %285, %772 ]
  %819 = and i32 %811, 536870912
  %820 = icmp ne i32 %819, 0
  %821 = add i32 %58, 148
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = shl i32 %823, 4
  %825 = and i32 %824, 32752
  %826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %825)  ; LegacyF16ToF32(value)
  %827 = lshr i32 %823, 7
  %828 = and i32 %827, 32752
  %829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %828)  ; LegacyF16ToF32(value)
  %830 = fmul fast float %826, 5.000000e-01
  %831 = select i1 %820, float 4.000000e+00, float 1.000000e+00
  %832 = select i1 %820, float 1.000000e+00, float 0.000000e+00
  %833 = fadd fast float %818, -5.000000e-01
  %834 = call float @dx.op.unary.f32(i32 6, float %833)  ; FAbs(value)
  %835 = fsub fast float 5.000000e-01, %834
  %836 = call float @dx.op.binary.f32(i32 36, float %830, float %835)  ; FMin(a,b)
  %837 = fadd fast float %718, -1.000000e+00
  %838 = fadd fast float %837, %818
  %839 = fadd fast float %838, %836
  %840 = fmul fast float %836, 2.000000e+00
  %841 = fdiv fast float %839, %840
  %842 = call float @dx.op.unary.f32(i32 7, float %841)  ; Saturate(value)
  %843 = fmul fast float %842, %831
  %844 = fmul fast float %842, %832
  %845 = fsub fast float 1.000000e+00, %844
  %846 = fmul fast float %843, %845
  %847 = bitcast float %846 to i32
  %848 = sitofp i32 %847 to float
  %849 = fadd fast float %848, 0xC1CFBF8940000000
  %850 = fmul fast float %849, %829
  %851 = fadd fast float %850, 0x41CFBF8940000000
  %852 = fptosi float %851 to i32
  %853 = bitcast i32 %852 to float
  %854 = call float @dx.op.dot4.f32(i32 56, float 0.000000e+00, float %763, float %808, float %853, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %855 = call float @dx.op.unary.f32(i32 7, float %854)  ; Saturate(value)
  %856 = and i32 %721, 268435456
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %863, label %858

; <label>:858                                     ; preds = %817
  %859 = and i32 %721, 1073741824
  %860 = icmp ne i32 %859, 0
  %861 = select i1 %860, float %855, float %763
  %862 = fmul fast float %861, %709
  br label %863

; <label>:863                                     ; preds = %858, %817
  %864 = phi float [ %709, %817 ], [ %862, %858 ]
  %865 = and i32 %766, 268435456
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %872, label %867

; <label>:867                                     ; preds = %863
  %868 = and i32 %766, 1073741824
  %869 = icmp ne i32 %868, 0
  %870 = select i1 %869, float %855, float %808
  %871 = fmul fast float %870, %708
  br label %872

; <label>:872                                     ; preds = %867, %863
  %873 = phi float [ %708, %863 ], [ %871, %867 ]
  %874 = and i32 %811, 268435456
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %881, label %876

; <label>:876                                     ; preds = %872
  %877 = and i32 %811, 1073741824
  %878 = icmp ne i32 %877, 0
  %879 = select i1 %878, float %855, float %853
  %880 = fmul fast float %879, %707
  br label %881

; <label>:881                                     ; preds = %876, %872
  %882 = phi float [ %707, %872 ], [ %880, %876 ]
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %650, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = lshr i32 %884, 20
  %886 = and i32 %885, 3
  %887 = add nuw nsw i32 %886, 1
  %888 = add i32 %58, 24
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = add i32 %58, 28
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = or i32 %893, %890
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %1514, label %896

; <label>:896                                     ; preds = %881
  %897 = and i32 %890, 262144
  %898 = icmp ne i32 %897, 0
  %899 = select i1 %898, float %65, float 1.000000e+00
  %900 = select i1 %898, float %66, float 0.000000e+00
  %901 = select i1 %898, float %67, float 0.000000e+00
  %902 = select i1 %898, float %68, float 1.000000e+00
  %903 = select i1 %898, float %69, float %97
  %904 = select i1 %898, float %70, float %98
  %905 = add i32 %58, 284
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = lshr i32 %907, 16
  %909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %908)  ; LegacyF16ToF32(value)
  %910 = fmul fast float %909, 0x3F50624DE0000000
  %911 = add i32 %58, 88
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = lshr i32 %913, 16
  %915 = and i32 %914, 255
  %916 = lshr i32 %913, 24
  %917 = add i32 %58, 292
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = and i32 %919, 65535
  %921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %920)  ; LegacyF16ToF32(value)
  %922 = lshr i32 %919, 16
  %923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %922)  ; LegacyF16ToF32(value)
  %924 = add i32 %58, 32
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 0
  %927 = lshr i32 %926, 22
  %928 = shl nuw nsw i32 %927, 5
  %929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %928)  ; LegacyF16ToF32(value)
  %930 = shl i32 %926, 4
  %931 = and i32 %930, 32752
  %932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %931)  ; LegacyF16ToF32(value)
  %933 = lshr i32 %926, 7
  %934 = and i32 %933, 32752
  %935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %934)  ; LegacyF16ToF32(value)
  %936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %937 = extractvalue %dx.types.CBufRet.f32 %936, 3
  %938 = fmul fast float %937, 1.000000e+03
  %939 = fmul fast float %326, %938
  %940 = call float @dx.op.unary.f32(i32 22, float %939)  ; Frc(value)
  %941 = fadd fast float %940, %316
  %942 = fmul fast float %327, %938
  %943 = call float @dx.op.unary.f32(i32 22, float %942)  ; Frc(value)
  %944 = fadd fast float %943, %318
  %945 = fmul fast float %910, %938
  %946 = call float @dx.op.unary.f32(i32 22, float %945)  ; Frc(value)
  %947 = fmul fast float %946, 0x401921FB60000000
  %948 = fadd fast float %947, %929
  %949 = call float @dx.op.unary.f32(i32 13, float %948)  ; Sin(value)
  %950 = call float @dx.op.unary.f32(i32 12, float %948)  ; Cos(value)
  %951 = fsub fast float -0.000000e+00, %949
  %952 = fadd fast float %903, -5.000000e-01
  %953 = fadd fast float %904, -5.000000e-01
  %954 = fmul fast float %921, %952
  %955 = fmul fast float %923, %953
  %956 = fadd fast float %954, 5.000000e-01
  %957 = fadd fast float %955, 5.000000e-01
  %958 = fmul fast float %932, %956
  %959 = fmul fast float %935, %957
  %960 = fmul fast float %950, %958
  %961 = call float @dx.op.tertiary.f32(i32 46, float %951, float %959, float %960)  ; FMad(a,b,c)
  %962 = fmul fast float %949, %958
  %963 = call float @dx.op.tertiary.f32(i32 46, float %950, float %959, float %962)  ; FMad(a,b,c)
  %964 = fadd fast float %941, %961
  %965 = fadd fast float %944, %963
  %966 = icmp ugt i32 %915, 1
  %967 = icmp ugt i32 %913, 33554431
  %968 = or i1 %967, %966
  br i1 %968, label %969, label %994

; <label>:969                                     ; preds = %896
  %970 = add i32 %58, 228
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = lshr i32 %972, 16
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = fmul fast float %937, %974
  %976 = call float @dx.op.unary.f32(i32 22, float %975)  ; Frc(value)
  %977 = mul nuw nsw i32 %915, %916
  %978 = uitofp i32 %977 to float
  %979 = fmul fast float %976, %978
  %980 = call float @dx.op.unary.f32(i32 27, float %979)  ; Round_ni(value)
  %981 = fptoui float %980 to i32
  %982 = urem i32 %981, %915
  %983 = udiv i32 %981, %916
  %984 = call float @dx.op.unary.f32(i32 22, float %964)  ; Frc(value)
  %985 = call float @dx.op.unary.f32(i32 22, float %965)  ; Frc(value)
  %986 = uitofp i32 %982 to float
  %987 = uitofp i32 %983 to float
  %988 = fadd fast float %984, %986
  %989 = fadd fast float %985, %987
  %990 = uitofp i32 %915 to float
  %991 = uitofp i32 %916 to float
  %992 = fdiv fast float %988, %990
  %993 = fdiv fast float %989, %991
  br label %994

; <label>:994                                     ; preds = %969, %896
  %995 = phi float [ %992, %969 ], [ %964, %896 ]
  %996 = phi float [ %993, %969 ], [ %965, %896 ]
  %997 = and i32 %890, 256
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %1045, label %999

; <label>:999                                     ; preds = %994
  %1000 = add i32 %58, 440
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = add i32 %1002, 0
  %1004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1003, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1005 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1004, %dx.types.Handle %112, float %995, float %996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 0
  %1007 = add i32 %58, 100
  %1008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1007, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 0
  %1010 = shl i32 %1009, 4
  %1011 = and i32 %1010, 32752
  %1012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1011)  ; LegacyF16ToF32(value)
  %1013 = lshr i32 %1009, 7
  %1014 = and i32 %1013, 32752
  %1015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1014)  ; LegacyF16ToF32(value)
  %1016 = fsub fast float 1.000000e+00, %682
  %1017 = call float @dx.op.binary.f32(i32 35, float %1016, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1018 = bitcast float %682 to i32
  %1019 = sitofp i32 %1018 to float
  %1020 = fadd fast float %1019, 0xC1CFBF8940000000
  %1021 = fmul fast float %1015, %1020
  %1022 = fadd fast float %1021, 0x41CFBF8940000000
  %1023 = fptosi float %1022 to i32
  %1024 = bitcast i32 %1023 to float
  %1025 = bitcast float %1017 to i32
  %1026 = sitofp i32 %1025 to float
  %1027 = fadd fast float %1026, 0xC1CFBF8940000000
  %1028 = fmul fast float %1027, %1015
  %1029 = fadd fast float %1028, 0x41CFBF8940000000
  %1030 = fptosi float %1029 to i32
  %1031 = bitcast i32 %1030 to float
  %1032 = fmul fast float %1024, %1012
  %1033 = fmul fast float %1031, %1012
  %1034 = fsub fast float %1017, %1032
  %1035 = fadd fast float %1033, %1017
  %1036 = call float @dx.op.unary.f32(i32 7, float %1034)  ; Saturate(value)
  %1037 = call float @dx.op.unary.f32(i32 7, float %1035)  ; Saturate(value)
  %1038 = fsub fast float %1006, %1036
  %1039 = fsub fast float %1037, %1036
  %1040 = bitcast float %1039 to i32
  %1041 = sub nsw i32 2129859010, %1040
  %1042 = bitcast i32 %1041 to float
  %1043 = fmul fast float %1042, %1038
  %1044 = call float @dx.op.unary.f32(i32 7, float %1043)  ; Saturate(value)
  br label %1045

; <label>:1045                                    ; preds = %999, %994
  %1046 = phi float [ %1044, %999 ], [ %682, %994 ]
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = and i32 %1048, 128
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1067, label %1051

; <label>:1051                                    ; preds = %1045
  %1052 = add i32 %58, 424
  %1053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.i32 %1053, 0
  %1055 = add i32 %1054, 0
  %1056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1055, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1057 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1056, %dx.types.Handle %112, float %995, float %996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = and i32 %1060, 524288
  %1062 = icmp ne i32 %1061, 0
  %1063 = fcmp fast ogt float %1058, 0x3FE0101020000000
  %1064 = select i1 %1063, float 1.000000e+00, float 0.000000e+00
  %1065 = select i1 %1062, float %1064, float %1058
  %1066 = fmul fast float %1065, %1046
  br label %1067

; <label>:1067                                    ; preds = %1051, %1045
  %1068 = phi float [ %1066, %1051 ], [ %1046, %1045 ]
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = and i32 %1070, 16
  %1072 = icmp eq i32 %1071, 0
  br i1 %1072, label %1271, label %1073

; <label>:1073                                    ; preds = %1067
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = add i32 %58, 376
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = add i32 %1078, 0
  %1080 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1079, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1081 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1080, %dx.types.Handle %111, float %995, float %996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.ResRet.f32 %1081, 2
  %1085 = extractvalue %dx.types.ResRet.f32 %1081, 3
  %1086 = and i32 %1075, 255
  %1087 = uitofp i32 %1086 to float
  %1088 = lshr i32 %1075, 8
  %1089 = and i32 %1088, 255
  %1090 = uitofp i32 %1089 to float
  %1091 = fmul fast float %1085, %1087
  %1092 = fadd fast float %1091, %1090
  %1093 = fmul fast float %1092, 0x3F70101000000000
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = and i32 %1095, 512
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1106, label %1098

; <label>:1098                                    ; preds = %1073
  %1099 = add i32 %58, 456
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = add i32 %1101, 0
  %1103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1102, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1104 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1103, %dx.types.Handle %112, float %995, float %996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  br label %1106

; <label>:1106                                    ; preds = %1098, %1073
  %1107 = phi float [ %1105, %1098 ], [ 1.000000e+00, %1073 ]
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = and i32 %1109, 33554432
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1218, label %1112

; <label>:1112                                    ; preds = %1106
  %1113 = add i32 %58, 224
  %1114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1113, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.i32 %1114, 0
  %1116 = and i32 %1115, 65535
  %1117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1116)  ; LegacyF16ToF32(value)
  %1118 = lshr i32 %1115, 16
  %1119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1118)  ; LegacyF16ToF32(value)
  %1120 = add i32 %58, 228
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = and i32 %1122, 65535
  %1124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1123)  ; LegacyF16ToF32(value)
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = lshr i32 %1126, 24
  %1128 = uitofp i32 %1127 to float
  %1129 = fmul fast float %1128, 0x3F70101020000000
  %1130 = and i32 %1126, 255
  %1131 = uitofp i32 %1130 to float
  %1132 = fmul fast float %1131, 0x3F70101020000000
  %1133 = lshr i32 %1126, 8
  %1134 = and i32 %1133, 255
  %1135 = uitofp i32 %1134 to float
  %1136 = fmul fast float %1135, 0x3F70101020000000
  %1137 = lshr i32 %1126, 16
  %1138 = and i32 %1137, 255
  %1139 = uitofp i32 %1138 to float
  %1140 = fmul fast float %1139, 0x3F70101020000000
  %1141 = add i32 %58, 220
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = lshr i32 %1143, 24
  %1145 = uitofp i32 %1144 to float
  %1146 = fmul fast float %1145, 0x3F70101020000000
  %1147 = and i32 %1143, 255
  %1148 = uitofp i32 %1147 to float
  %1149 = fmul fast float %1148, 0x3F70101020000000
  %1150 = lshr i32 %1143, 8
  %1151 = and i32 %1150, 255
  %1152 = uitofp i32 %1151 to float
  %1153 = fmul fast float %1152, 0x3F70101020000000
  %1154 = lshr i32 %1143, 16
  %1155 = and i32 %1154, 255
  %1156 = uitofp i32 %1155 to float
  %1157 = fmul fast float %1156, 0x3F70101020000000
  %1158 = bitcast float %1082 to i32
  %1159 = ashr i32 %1158, 1
  %1160 = sub nsw i32 1597463174, %1159
  %1161 = bitcast i32 %1160 to float
  %1162 = fmul fast float %1082, 5.000000e-01
  %1163 = fmul fast float %1161, %1161
  %1164 = fmul fast float %1163, %1162
  %1165 = fsub fast float 1.500000e+00, %1164
  %1166 = fmul fast float %1161, %1082
  %1167 = fmul fast float %1166, %1165
  %1168 = bitcast float %1083 to i32
  %1169 = ashr i32 %1168, 1
  %1170 = sub nsw i32 1597463174, %1169
  %1171 = bitcast i32 %1170 to float
  %1172 = fmul fast float %1083, 5.000000e-01
  %1173 = fmul fast float %1171, %1171
  %1174 = fmul fast float %1173, %1172
  %1175 = fsub fast float 1.500000e+00, %1174
  %1176 = fmul fast float %1171, %1083
  %1177 = fmul fast float %1176, %1175
  %1178 = bitcast float %1084 to i32
  %1179 = ashr i32 %1178, 1
  %1180 = sub nsw i32 1597463174, %1179
  %1181 = bitcast i32 %1180 to float
  %1182 = fmul fast float %1084, 5.000000e-01
  %1183 = fmul fast float %1181, %1181
  %1184 = fmul fast float %1183, %1182
  %1185 = fsub fast float 1.500000e+00, %1184
  %1186 = fmul fast float %1181, %1084
  %1187 = fmul fast float %1186, %1185
  %1188 = fsub fast float %1167, %1149
  %1189 = fsub fast float %1177, %1153
  %1190 = fsub fast float %1187, %1157
  %1191 = fmul fast float %1188, %1117
  %1192 = fmul fast float %1189, %1119
  %1193 = fmul fast float %1190, %1124
  %1194 = fadd fast float %1191, %1132
  %1195 = fadd fast float %1192, %1136
  %1196 = fadd fast float %1193, %1140
  %1197 = call float @dx.op.unary.f32(i32 7, float %1194)  ; Saturate(value)
  %1198 = call float @dx.op.unary.f32(i32 7, float %1195)  ; Saturate(value)
  %1199 = call float @dx.op.unary.f32(i32 7, float %1196)  ; Saturate(value)
  %1200 = fmul fast float %1197, %1197
  %1201 = fmul fast float %1198, %1198
  %1202 = fmul fast float %1199, %1199
  %1203 = fsub fast float %1200, %1082
  %1204 = fsub fast float %1201, %1083
  %1205 = fsub fast float %1202, %1084
  %1206 = fmul fast float %1203, %1107
  %1207 = fmul fast float %1204, %1107
  %1208 = fmul fast float %1205, %1107
  %1209 = fadd fast float %1206, %1082
  %1210 = fadd fast float %1207, %1083
  %1211 = fadd fast float %1208, %1084
  %1212 = fadd fast float %1129, %1093
  %1213 = fsub fast float %1212, %1146
  %1214 = call float @dx.op.unary.f32(i32 7, float %1213)  ; Saturate(value)
  %1215 = fsub fast float %1214, %1093
  %1216 = fmul fast float %1215, %1107
  %1217 = fadd fast float %1216, %1093
  br label %1271

; <label>:1218                                    ; preds = %1106
  %1219 = and i32 %1109, 134217728
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %1255, label %1221

; <label>:1221                                    ; preds = %1218
  %1222 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %1223 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %1224 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %1225 = fadd fast float %1222, -5.000000e-01
  %1226 = fadd fast float %1223, -5.000000e-01
  %1227 = fadd fast float %1224, -5.000000e-01
  %1228 = fmul fast float %1225, %1107
  %1229 = fmul fast float %1226, %1107
  %1230 = fmul fast float %1227, %1107
  %1231 = fadd fast float %1228, 5.000000e-01
  %1232 = fadd fast float %1229, 5.000000e-01
  %1233 = fadd fast float %1230, 5.000000e-01
  %1234 = call float @dx.op.unary.f32(i32 24, float %1082)  ; Sqrt(value)
  %1235 = call float @dx.op.unary.f32(i32 24, float %1083)  ; Sqrt(value)
  %1236 = call float @dx.op.unary.f32(i32 24, float %1084)  ; Sqrt(value)
  %1237 = fmul fast float %1231, 2.000000e+00
  %1238 = fsub fast float 1.000000e+00, %1237
  %1239 = fmul fast float %1238, %1234
  %1240 = fadd fast float %1239, %1237
  %1241 = fmul fast float %1240, %1234
  %1242 = fmul fast float %1232, 2.000000e+00
  %1243 = fsub fast float 1.000000e+00, %1242
  %1244 = fmul fast float %1243, %1235
  %1245 = fadd fast float %1244, %1242
  %1246 = fmul fast float %1245, %1235
  %1247 = fmul fast float %1233, 2.000000e+00
  %1248 = fsub fast float 1.000000e+00, %1247
  %1249 = fmul fast float %1248, %1236
  %1250 = fadd fast float %1249, %1247
  %1251 = fmul fast float %1250, %1236
  %1252 = fmul fast float %1241, %1241
  %1253 = fmul fast float %1246, %1246
  %1254 = fmul fast float %1251, %1251
  br label %1271

; <label>:1255                                    ; preds = %1218
  %1256 = fmul fast float %303, %303
  %1257 = fmul fast float %307, %307
  %1258 = fmul fast float %311, %311
  %1259 = fadd fast float %1256, -1.000000e+00
  %1260 = fadd fast float %1257, -1.000000e+00
  %1261 = fadd fast float %1258, -1.000000e+00
  %1262 = fmul fast float %1107, %1259
  %1263 = fmul fast float %1107, %1260
  %1264 = fmul fast float %1107, %1261
  %1265 = fadd fast float %1262, 1.000000e+00
  %1266 = fadd fast float %1263, 1.000000e+00
  %1267 = fadd fast float %1264, 1.000000e+00
  %1268 = fmul fast float %1265, %1082
  %1269 = fmul fast float %1266, %1083
  %1270 = fmul fast float %1267, %1084
  br label %1271

; <label>:1271                                    ; preds = %1255, %1221, %1112, %1067
  %1272 = phi float [ %1217, %1112 ], [ %1093, %1221 ], [ %1093, %1255 ], [ 0x3FA23C0BE0000000, %1067 ]
  %1273 = phi float [ %1209, %1112 ], [ %1252, %1221 ], [ %1268, %1255 ], [ 1.000000e+00, %1067 ]
  %1274 = phi float [ %1210, %1112 ], [ %1253, %1221 ], [ %1269, %1255 ], [ 1.000000e+00, %1067 ]
  %1275 = phi float [ %1211, %1112 ], [ %1254, %1221 ], [ %1270, %1255 ], [ 1.000000e+00, %1067 ]
  %1276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1277 = extractvalue %dx.types.CBufRet.i32 %1276, 1
  %1278 = and i32 %1277, 1
  %1279 = icmp ne i32 %1278, 0
  %1280 = add i32 %58, 356
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, 32
  %1284 = icmp ne i32 %1283, 0
  %1285 = and i1 %1279, %1284
  %1286 = select i1 %1285, float 1.000000e+00, float %1273
  %1287 = select i1 %1285, float 0x3FD3333340000000, float %1274
  %1288 = select i1 %1285, float 0x3FD3333340000000, float %1275
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = and i32 %1290, 32
  %1292 = icmp eq i32 %1291, 0
  br i1 %1292, label %1365, label %1293

; <label>:1293                                    ; preds = %1271
  %1294 = add i32 %58, 92
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = add i32 %58, 392
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = add i32 %1299, 0
  %1301 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1300, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1302 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1301, %dx.types.Handle %111, float %995, float %996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1303 = extractvalue %dx.types.ResRet.f32 %1302, 0
  %1304 = extractvalue %dx.types.ResRet.f32 %1302, 1
  %1305 = extractvalue %dx.types.ResRet.f32 %1302, 2
  %1306 = extractvalue %dx.types.ResRet.f32 %1302, 3
  %1307 = and i32 %1296, 255
  %1308 = uitofp i32 %1307 to float
  %1309 = lshr i32 %1296, 8
  %1310 = and i32 %1309, 255
  %1311 = uitofp i32 %1310 to float
  %1312 = lshr i32 %1296, 16
  %1313 = and i32 %1312, 255
  %1314 = uitofp i32 %1313 to float
  %1315 = fmul fast float %1314, 0x3F70101000000000
  %1316 = fmul fast float %1303, %1308
  %1317 = fadd fast float %1316, %1311
  %1318 = fmul fast float %1317, 0x3F70101000000000
  %1319 = fadd fast float %1304, -5.000000e-01
  %1320 = fadd fast float %1306, -5.000000e-01
  %1321 = fmul fast float %1319, %1315
  %1322 = fmul fast float %1320, %1315
  %1323 = fadd fast float %1321, 5.000000e-01
  %1324 = fadd fast float %1322, 5.000000e-01
  %1325 = fmul fast float %1323, 2.000000e+00
  %1326 = fadd fast float %1325, -1.000000e+00
  %1327 = fmul fast float %1324, 2.000000e+00
  %1328 = fadd fast float %1327, -1.000000e+00
  %1329 = fadd fast float %1326, %1328
  %1330 = fmul fast float %1329, 5.000000e-01
  %1331 = fsub fast float %1326, %1328
  %1332 = fmul fast float %1331, 5.000000e-01
  %1333 = call float @dx.op.unary.f32(i32 6, float %1330)  ; FAbs(value)
  %1334 = fsub fast float 1.000000e+00, %1333
  %1335 = call float @dx.op.unary.f32(i32 6, float %1332)  ; FAbs(value)
  %1336 = fsub fast float %1334, %1335
  %1337 = call float @dx.op.dot3.f32(i32 55, float %1330, float %1332, float %1336, float %1330, float %1332, float %1336)  ; Dot3(ax,ay,az,bx,by,bz)
  %1338 = call float @dx.op.unary.f32(i32 25, float %1337)  ; Rsqrt(value)
  %1339 = fmul fast float %1330, %1338
  %1340 = fmul fast float %1332, %1338
  %1341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.i32 %1341, 0
  %1343 = and i32 %1342, 67108864
  %1344 = icmp eq i32 %1343, 0
  br i1 %1344, label %1361, label %1345

; <label>:1345                                    ; preds = %1293
  %1346 = add i32 %58, 280
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1346, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = and i32 %1348, 65535
  %1350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1349)  ; LegacyF16ToF32(value)
  %1351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.i32 %1351, 0
  %1353 = and i32 %1352, 65535
  %1354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1353)  ; LegacyF16ToF32(value)
  %1355 = lshr i32 %1348, 16
  %1356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1355)  ; LegacyF16ToF32(value)
  %1357 = fsub fast float %1318, %1356
  %1358 = fmul fast float %1357, %1350
  %1359 = fadd fast float %1358, %1354
  %1360 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  br label %1361

; <label>:1361                                    ; preds = %1345, %1293
  %1362 = phi float [ %1360, %1345 ], [ %1318, %1293 ]
  %1363 = call float @dx.op.dot2.f32(i32 54, float %1339, float %1340, float %899, float %900)  ; Dot2(ax,ay,bx,by)
  %1364 = call float @dx.op.dot2.f32(i32 54, float %1339, float %1340, float %901, float %902)  ; Dot2(ax,ay,bx,by)
  br label %1365

; <label>:1365                                    ; preds = %1361, %1271
  %1366 = phi float [ %1362, %1361 ], [ 0x3FD6666660000000, %1271 ]
  %1367 = phi float [ %1363, %1361 ], [ 0.000000e+00, %1271 ]
  %1368 = phi float [ %1364, %1361 ], [ 0.000000e+00, %1271 ]
  %1369 = phi float [ %1305, %1361 ], [ 1.000000e+00, %1271 ]
  %1370 = add i32 %58, 160
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = lshr i32 %1372, 22
  %1374 = shl nuw nsw i32 %1373, 5
  %1375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1374)  ; LegacyF16ToF32(value)
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = and i32 %1377, 64
  %1379 = icmp eq i32 %1378, 0
  br i1 %1379, label %1413, label %1380

; <label>:1380                                    ; preds = %1365
  %1381 = add i32 %58, 408
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = add i32 %1383, 0
  %1385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1384, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = and i32 %1387, 131072
  %1389 = icmp eq i32 %1388, 0
  %1390 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1385, %dx.types.Handle %111, float %995, float %996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1391 = extractvalue %dx.types.ResRet.f32 %1390, 0
  %1392 = extractvalue %dx.types.ResRet.f32 %1390, 1
  %1393 = extractvalue %dx.types.ResRet.f32 %1390, 2
  %1394 = fmul fast float %1391, %291
  %1395 = fmul fast float %1392, %294
  %1396 = fmul fast float %1393, %297
  br i1 %1389, label %1403, label %1397

; <label>:1397                                    ; preds = %1380
  %1398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.f32 %1398, 0
  %1400 = fmul fast float %1399, %1394
  %1401 = fmul fast float %1399, %1395
  %1402 = fmul fast float %1399, %1396
  br label %1403

; <label>:1403                                    ; preds = %1397, %1380
  %1404 = phi float [ %1400, %1397 ], [ %1394, %1380 ]
  %1405 = phi float [ %1401, %1397 ], [ %1395, %1380 ]
  %1406 = phi float [ %1402, %1397 ], [ %1396, %1380 ]
  %1407 = fmul fast float %1404, %1375
  %1408 = select i1 %268, float %1407, float %1404
  %1409 = call float @dx.op.dot3.f32(i32 55, float %1408, float %1405, float %1406, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1410 = select i1 %268, float 0.000000e+00, float %1404
  %1411 = select i1 %268, float %1409, float %1405
  %1412 = select i1 %268, float 0.000000e+00, float %1406
  br label %1413

; <label>:1413                                    ; preds = %1403, %1365
  %1414 = phi float [ %1410, %1403 ], [ 0.000000e+00, %1365 ]
  %1415 = phi float [ %1411, %1403 ], [ 0.000000e+00, %1365 ]
  %1416 = phi float [ %1412, %1403 ], [ 0.000000e+00, %1365 ]
  %1417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1418 = extractvalue %dx.types.ResRet.i32 %1417, 0
  %1419 = and i32 %1418, 1024
  %1420 = icmp eq i32 %1419, 0
  br i1 %1420, label %1451, label %1421

; <label>:1421                                    ; preds = %1413
  %1422 = add i32 %58, 152
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1422, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = and i32 %1424, 255
  %1426 = uitofp i32 %1425 to float
  %1427 = fmul fast float %1426, 0x3F70101020000000
  %1428 = lshr i32 %1424, 8
  %1429 = and i32 %1428, 255
  %1430 = uitofp i32 %1429 to float
  %1431 = fmul fast float %1430, 0x3F70101020000000
  %1432 = lshr i32 %1424, 16
  %1433 = and i32 %1432, 255
  %1434 = uitofp i32 %1433 to float
  %1435 = fmul fast float %1434, 0x3F70101020000000
  %1436 = fmul fast float %1427, %1427
  %1437 = fmul fast float %1431, %1431
  %1438 = fmul fast float %1435, %1435
  %1439 = add i32 %58, 472
  %1440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1439, i32 undef)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.i32 %1440, 0
  %1442 = add i32 %1441, 0
  %1443 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1442, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1444 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1443, %dx.types.Handle %112, float %995, float %996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  %1446 = extractvalue %dx.types.ResRet.f32 %1444, 1
  %1447 = extractvalue %dx.types.ResRet.f32 %1444, 2
  %1448 = fmul fast float %1436, %1445
  %1449 = fmul fast float %1437, %1446
  %1450 = fmul fast float %1438, %1447
  br label %1451

; <label>:1451                                    ; preds = %1421, %1413
  %1452 = phi float [ %1448, %1421 ], [ 0.000000e+00, %1413 ]
  %1453 = phi float [ %1449, %1421 ], [ 0.000000e+00, %1413 ]
  %1454 = phi float [ %1450, %1421 ], [ 0.000000e+00, %1413 ]
  %1455 = fcmp fast ogt float %1452, 0.000000e+00
  %1456 = fcmp fast ogt float %1453, 0.000000e+00
  %1457 = fcmp fast ogt float %1454, 0.000000e+00
  %1458 = call float @dx.op.unary.f32(i32 23, float %1452)  ; Log(value)
  %1459 = call float @dx.op.unary.f32(i32 23, float %1453)  ; Log(value)
  %1460 = call float @dx.op.unary.f32(i32 23, float %1454)  ; Log(value)
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = lshr i32 %1462, 7
  %1464 = and i32 %1463, 32752
  %1465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1464)  ; LegacyF16ToF32(value)
  %1466 = fmul fast float %1458, 0xBFE62E4300000000
  %1467 = fmul fast float %1466, %1465
  %1468 = fmul fast float %1459, 0xBFE62E4300000000
  %1469 = fmul fast float %1468, %1465
  %1470 = fmul fast float %1460, 0xBFE62E4300000000
  %1471 = fmul fast float %1470, %1465
  %1472 = select i1 %1455, float %1467, float 1.270000e+02
  %1473 = select i1 %1456, float %1469, float 1.270000e+02
  %1474 = select i1 %1457, float %1471, float 1.270000e+02
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = and i32 %1476, 10240
  %1478 = icmp eq i32 %1477, 0
  br i1 %1478, label %1499, label %1479

; <label>:1479                                    ; preds = %1451
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = and i32 %1481, 2048
  %1483 = icmp eq i32 %1482, 0
  br i1 %1483, label %1499, label %1484

; <label>:1484                                    ; preds = %1479
  %1485 = add i32 %58, 488
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = add i32 %1487, 0
  %1489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1488, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1490 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1489, %dx.types.Handle %112, float %995, float %996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1491 = extractvalue %dx.types.ResRet.f32 %1490, 3
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = shl i32 %1493, 4
  %1495 = and i32 %1494, 32752
  %1496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1495)  ; LegacyF16ToF32(value)
  %1497 = fmul fast float %1496, %1491
  %1498 = call float @dx.op.binary.f32(i32 35, float %1497, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1499

; <label>:1499                                    ; preds = %1484, %1479, %1451
  %1500 = phi float [ %1498, %1484 ], [ 0x3F70101020000000, %1479 ], [ 0x3F70101020000000, %1451 ]
  %1501 = add i32 %58, 96
  %1502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.i32 %1502, 0
  %1504 = and i32 %1503, 255
  %1505 = uitofp i32 %1504 to float
  %1506 = lshr i32 %1503, 8
  %1507 = and i32 %1506, 255
  %1508 = uitofp i32 %1507 to float
  %1509 = call float @dx.op.dot3.f32(i32 55, float %1286, float %1287, float %1288, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1510 = fmul fast float %1508, %1509
  %1511 = fadd fast float %1510, %1505
  %1512 = fmul fast float %1511, 0x3F70101020000000
  %1513 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  br label %1514

; <label>:1514                                    ; preds = %1499, %881
  %1515 = phi float [ 0.000000e+00, %881 ], [ %1367, %1499 ]
  %1516 = phi float [ 0.000000e+00, %881 ], [ %1368, %1499 ]
  %1517 = phi float [ 0.000000e+00, %881 ], [ %1414, %1499 ]
  %1518 = phi float [ 0.000000e+00, %881 ], [ %1415, %1499 ]
  %1519 = phi float [ 0.000000e+00, %881 ], [ %1416, %1499 ]
  %1520 = phi float [ 0.000000e+00, %881 ], [ %1286, %1499 ]
  %1521 = phi float [ 0.000000e+00, %881 ], [ %1287, %1499 ]
  %1522 = phi float [ 0.000000e+00, %881 ], [ %1288, %1499 ]
  %1523 = phi float [ 0.000000e+00, %881 ], [ %1472, %1499 ]
  %1524 = phi float [ 0.000000e+00, %881 ], [ %1473, %1499 ]
  %1525 = phi float [ 0.000000e+00, %881 ], [ %1474, %1499 ]
  %1526 = phi float [ 0.000000e+00, %881 ], [ %1272, %1499 ]
  %1527 = phi float [ 0.000000e+00, %881 ], [ %1068, %1499 ]
  %1528 = phi float [ 0.000000e+00, %881 ], [ %1366, %1499 ]
  %1529 = phi float [ 0.000000e+00, %881 ], [ %1369, %1499 ]
  %1530 = phi float [ 0.000000e+00, %881 ], [ %1500, %1499 ]
  %1531 = phi float [ 0.000000e+00, %881 ], [ %1513, %1499 ]
  br i1 %654, label %2401, label %1532

; <label>:1532                                    ; preds = %1514
  %1533 = icmp ult i32 %887, 2
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = add i32 %58, 44
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = or i32 %1538, %1535
  %1540 = icmp eq i32 %1539, 0
  br i1 %1540, label %2401, label %1541

; <label>:1541                                    ; preds = %1532
  %1542 = and i32 %1535, 262144
  %1543 = icmp ne i32 %1542, 0
  %1544 = select i1 %1543, float %65, float 1.000000e+00
  %1545 = select i1 %1543, float %66, float 0.000000e+00
  %1546 = select i1 %1543, float %67, float 0.000000e+00
  %1547 = select i1 %1543, float %68, float 1.000000e+00
  %1548 = select i1 %1543, float %69, float %97
  %1549 = select i1 %1543, float %70, float %98
  %1550 = add i32 %58, 300
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = lshr i32 %1552, 16
  %1554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1553)  ; LegacyF16ToF32(value)
  %1555 = fmul fast float %1554, 0x3F50624DE0000000
  %1556 = add i32 %58, 104
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1556, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = lshr i32 %1558, 16
  %1560 = and i32 %1559, 255
  %1561 = lshr i32 %1558, 24
  %1562 = add i32 %58, 308
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = and i32 %1564, 65535
  %1566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1565)  ; LegacyF16ToF32(value)
  %1567 = lshr i32 %1564, 16
  %1568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1567)  ; LegacyF16ToF32(value)
  %1569 = add i32 %58, 48
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1569, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = lshr i32 %1571, 22
  %1573 = shl nuw nsw i32 %1572, 5
  %1574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1573)  ; LegacyF16ToF32(value)
  %1575 = shl i32 %1571, 4
  %1576 = and i32 %1575, 32752
  %1577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1576)  ; LegacyF16ToF32(value)
  %1578 = lshr i32 %1571, 7
  %1579 = and i32 %1578, 32752
  %1580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1579)  ; LegacyF16ToF32(value)
  %1581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1582 = extractvalue %dx.types.CBufRet.f32 %1581, 3
  %1583 = fmul fast float %1582, 1.000000e+03
  %1584 = fmul fast float %1583, %433
  %1585 = call float @dx.op.unary.f32(i32 22, float %1584)  ; Frc(value)
  %1586 = fadd fast float %1585, %421
  %1587 = fmul fast float %1583, %435
  %1588 = call float @dx.op.unary.f32(i32 22, float %1587)  ; Frc(value)
  %1589 = fadd fast float %1588, %422
  %1590 = fmul fast float %1555, %1583
  %1591 = call float @dx.op.unary.f32(i32 22, float %1590)  ; Frc(value)
  %1592 = fmul fast float %1591, 0x401921FB60000000
  %1593 = fadd fast float %1592, %1574
  %1594 = call float @dx.op.unary.f32(i32 13, float %1593)  ; Sin(value)
  %1595 = call float @dx.op.unary.f32(i32 12, float %1593)  ; Cos(value)
  %1596 = fsub fast float -0.000000e+00, %1594
  %1597 = fadd fast float %1548, -5.000000e-01
  %1598 = fadd fast float %1549, -5.000000e-01
  %1599 = fmul fast float %1566, %1597
  %1600 = fmul fast float %1568, %1598
  %1601 = fadd fast float %1599, 5.000000e-01
  %1602 = fadd fast float %1600, 5.000000e-01
  %1603 = fmul fast float %1577, %1601
  %1604 = fmul fast float %1580, %1602
  %1605 = fmul fast float %1595, %1603
  %1606 = call float @dx.op.tertiary.f32(i32 46, float %1596, float %1604, float %1605)  ; FMad(a,b,c)
  %1607 = fmul fast float %1594, %1603
  %1608 = call float @dx.op.tertiary.f32(i32 46, float %1595, float %1604, float %1607)  ; FMad(a,b,c)
  %1609 = fadd fast float %1586, %1606
  %1610 = fadd fast float %1589, %1608
  %1611 = icmp ugt i32 %1560, 1
  %1612 = icmp ugt i32 %1558, 33554431
  %1613 = or i1 %1612, %1611
  br i1 %1613, label %1614, label %1639

; <label>:1614                                    ; preds = %1541
  %1615 = add i32 %58, 244
  %1616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1615, i32 undef)  ; BufferLoad(srv,index,wot)
  %1617 = extractvalue %dx.types.ResRet.i32 %1616, 0
  %1618 = lshr i32 %1617, 16
  %1619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1618)  ; LegacyF16ToF32(value)
  %1620 = fmul fast float %1582, %1619
  %1621 = call float @dx.op.unary.f32(i32 22, float %1620)  ; Frc(value)
  %1622 = mul nuw nsw i32 %1560, %1561
  %1623 = uitofp i32 %1622 to float
  %1624 = fmul fast float %1621, %1623
  %1625 = call float @dx.op.unary.f32(i32 27, float %1624)  ; Round_ni(value)
  %1626 = fptoui float %1625 to i32
  %1627 = urem i32 %1626, %1560
  %1628 = udiv i32 %1626, %1561
  %1629 = call float @dx.op.unary.f32(i32 22, float %1609)  ; Frc(value)
  %1630 = call float @dx.op.unary.f32(i32 22, float %1610)  ; Frc(value)
  %1631 = uitofp i32 %1627 to float
  %1632 = uitofp i32 %1628 to float
  %1633 = fadd fast float %1629, %1631
  %1634 = fadd fast float %1630, %1632
  %1635 = uitofp i32 %1560 to float
  %1636 = uitofp i32 %1561 to float
  %1637 = fdiv fast float %1633, %1635
  %1638 = fdiv fast float %1634, %1636
  br label %1639

; <label>:1639                                    ; preds = %1614, %1541
  %1640 = phi float [ %1637, %1614 ], [ %1609, %1541 ]
  %1641 = phi float [ %1638, %1614 ], [ %1610, %1541 ]
  %1642 = and i32 %1535, 256
  %1643 = icmp eq i32 %1642, 0
  br i1 %1643, label %1689, label %1644

; <label>:1644                                    ; preds = %1639
  %1645 = add i32 %58, 444
  %1646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1645, i32 undef)  ; BufferLoad(srv,index,wot)
  %1647 = extractvalue %dx.types.ResRet.i32 %1646, 0
  %1648 = add i32 %1647, 0
  %1649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1648, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1650 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1649, %dx.types.Handle %112, float %1640, float %1641, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1651 = extractvalue %dx.types.ResRet.f32 %1650, 0
  %1652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1653 = extractvalue %dx.types.ResRet.i32 %1652, 0
  %1654 = shl i32 %1653, 4
  %1655 = and i32 %1654, 32752
  %1656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1655)  ; LegacyF16ToF32(value)
  %1657 = lshr i32 %1653, 7
  %1658 = and i32 %1657, 32752
  %1659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1658)  ; LegacyF16ToF32(value)
  %1660 = fsub fast float 1.000000e+00, %864
  %1661 = call float @dx.op.binary.f32(i32 35, float %1660, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1662 = bitcast float %864 to i32
  %1663 = sitofp i32 %1662 to float
  %1664 = fadd fast float %1663, 0xC1CFBF8940000000
  %1665 = fmul fast float %1659, %1664
  %1666 = fadd fast float %1665, 0x41CFBF8940000000
  %1667 = fptosi float %1666 to i32
  %1668 = bitcast i32 %1667 to float
  %1669 = bitcast float %1661 to i32
  %1670 = sitofp i32 %1669 to float
  %1671 = fadd fast float %1670, 0xC1CFBF8940000000
  %1672 = fmul fast float %1671, %1659
  %1673 = fadd fast float %1672, 0x41CFBF8940000000
  %1674 = fptosi float %1673 to i32
  %1675 = bitcast i32 %1674 to float
  %1676 = fmul fast float %1668, %1656
  %1677 = fmul fast float %1675, %1656
  %1678 = fsub fast float %1661, %1676
  %1679 = fadd fast float %1677, %1661
  %1680 = call float @dx.op.unary.f32(i32 7, float %1678)  ; Saturate(value)
  %1681 = call float @dx.op.unary.f32(i32 7, float %1679)  ; Saturate(value)
  %1682 = fsub fast float %1651, %1680
  %1683 = fsub fast float %1681, %1680
  %1684 = bitcast float %1683 to i32
  %1685 = sub nsw i32 2129859010, %1684
  %1686 = bitcast i32 %1685 to float
  %1687 = fmul fast float %1686, %1682
  %1688 = call float @dx.op.unary.f32(i32 7, float %1687)  ; Saturate(value)
  br label %1689

; <label>:1689                                    ; preds = %1644, %1639
  %1690 = phi float [ %1688, %1644 ], [ %864, %1639 ]
  %1691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.i32 %1691, 0
  %1693 = and i32 %1692, 128
  %1694 = icmp eq i32 %1693, 0
  br i1 %1694, label %1711, label %1695

; <label>:1695                                    ; preds = %1689
  %1696 = add i32 %58, 428
  %1697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1696, i32 undef)  ; BufferLoad(srv,index,wot)
  %1698 = extractvalue %dx.types.ResRet.i32 %1697, 0
  %1699 = add i32 %1698, 0
  %1700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1699, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1701 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1700, %dx.types.Handle %112, float %1640, float %1641, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1702 = extractvalue %dx.types.ResRet.f32 %1701, 0
  %1703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1704 = extractvalue %dx.types.ResRet.i32 %1703, 0
  %1705 = and i32 %1704, 524288
  %1706 = icmp ne i32 %1705, 0
  %1707 = fcmp fast ogt float %1702, 0x3FE0101020000000
  %1708 = select i1 %1707, float 1.000000e+00, float 0.000000e+00
  %1709 = select i1 %1706, float %1708, float %1702
  %1710 = fmul fast float %1709, %1690
  br label %1711

; <label>:1711                                    ; preds = %1695, %1689
  %1712 = phi float [ %1710, %1695 ], [ %1690, %1689 ]
  %1713 = fcmp fast ult float %1712, 0x3F70101020000000
  br i1 %1713, label %2401, label %1714

; <label>:1714                                    ; preds = %1711
  %1715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1716 = extractvalue %dx.types.ResRet.i32 %1715, 0
  %1717 = and i32 %1716, 16
  %1718 = icmp eq i32 %1717, 0
  br i1 %1718, label %1917, label %1719

; <label>:1719                                    ; preds = %1714
  %1720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1556, i32 undef)  ; BufferLoad(srv,index,wot)
  %1721 = extractvalue %dx.types.ResRet.i32 %1720, 0
  %1722 = add i32 %58, 380
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = add i32 %1724, 0
  %1726 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1725, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1727 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1726, %dx.types.Handle %111, float %1640, float %1641, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1728 = extractvalue %dx.types.ResRet.f32 %1727, 0
  %1729 = extractvalue %dx.types.ResRet.f32 %1727, 1
  %1730 = extractvalue %dx.types.ResRet.f32 %1727, 2
  %1731 = extractvalue %dx.types.ResRet.f32 %1727, 3
  %1732 = and i32 %1721, 255
  %1733 = uitofp i32 %1732 to float
  %1734 = lshr i32 %1721, 8
  %1735 = and i32 %1734, 255
  %1736 = uitofp i32 %1735 to float
  %1737 = fmul fast float %1731, %1733
  %1738 = fadd fast float %1737, %1736
  %1739 = fmul fast float %1738, 0x3F70101000000000
  %1740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.i32 %1740, 0
  %1742 = and i32 %1741, 512
  %1743 = icmp eq i32 %1742, 0
  br i1 %1743, label %1752, label %1744

; <label>:1744                                    ; preds = %1719
  %1745 = add i32 %58, 460
  %1746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.i32 %1746, 0
  %1748 = add i32 %1747, 0
  %1749 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1748, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1750 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1749, %dx.types.Handle %112, float %1640, float %1641, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1751 = extractvalue %dx.types.ResRet.f32 %1750, 0
  br label %1752

; <label>:1752                                    ; preds = %1744, %1719
  %1753 = phi float [ %1751, %1744 ], [ 1.000000e+00, %1719 ]
  %1754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.i32 %1754, 0
  %1756 = and i32 %1755, 33554432
  %1757 = icmp eq i32 %1756, 0
  br i1 %1757, label %1864, label %1758

; <label>:1758                                    ; preds = %1752
  %1759 = add i32 %58, 240
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = and i32 %1761, 65535
  %1763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1762)  ; LegacyF16ToF32(value)
  %1764 = lshr i32 %1761, 16
  %1765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1764)  ; LegacyF16ToF32(value)
  %1766 = add i32 %58, 244
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = and i32 %1768, 65535
  %1770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1769)  ; LegacyF16ToF32(value)
  %1771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %1772 = extractvalue %dx.types.ResRet.i32 %1771, 0
  %1773 = lshr i32 %1772, 24
  %1774 = uitofp i32 %1773 to float
  %1775 = fmul fast float %1774, 0x3F70101020000000
  %1776 = and i32 %1772, 255
  %1777 = uitofp i32 %1776 to float
  %1778 = fmul fast float %1777, 0x3F70101020000000
  %1779 = lshr i32 %1772, 8
  %1780 = and i32 %1779, 255
  %1781 = uitofp i32 %1780 to float
  %1782 = fmul fast float %1781, 0x3F70101020000000
  %1783 = lshr i32 %1772, 16
  %1784 = and i32 %1783, 255
  %1785 = uitofp i32 %1784 to float
  %1786 = fmul fast float %1785, 0x3F70101020000000
  %1787 = add i32 %58, 236
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1787, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = lshr i32 %1789, 24
  %1791 = uitofp i32 %1790 to float
  %1792 = fmul fast float %1791, 0x3F70101020000000
  %1793 = and i32 %1789, 255
  %1794 = uitofp i32 %1793 to float
  %1795 = fmul fast float %1794, 0x3F70101020000000
  %1796 = lshr i32 %1789, 8
  %1797 = and i32 %1796, 255
  %1798 = uitofp i32 %1797 to float
  %1799 = fmul fast float %1798, 0x3F70101020000000
  %1800 = lshr i32 %1789, 16
  %1801 = and i32 %1800, 255
  %1802 = uitofp i32 %1801 to float
  %1803 = fmul fast float %1802, 0x3F70101020000000
  %1804 = bitcast float %1728 to i32
  %1805 = ashr i32 %1804, 1
  %1806 = sub nsw i32 1597463174, %1805
  %1807 = bitcast i32 %1806 to float
  %1808 = fmul fast float %1728, 5.000000e-01
  %1809 = fmul fast float %1807, %1807
  %1810 = fmul fast float %1809, %1808
  %1811 = fsub fast float 1.500000e+00, %1810
  %1812 = fmul fast float %1807, %1728
  %1813 = fmul fast float %1812, %1811
  %1814 = bitcast float %1729 to i32
  %1815 = ashr i32 %1814, 1
  %1816 = sub nsw i32 1597463174, %1815
  %1817 = bitcast i32 %1816 to float
  %1818 = fmul fast float %1729, 5.000000e-01
  %1819 = fmul fast float %1817, %1817
  %1820 = fmul fast float %1819, %1818
  %1821 = fsub fast float 1.500000e+00, %1820
  %1822 = fmul fast float %1817, %1729
  %1823 = fmul fast float %1822, %1821
  %1824 = bitcast float %1730 to i32
  %1825 = ashr i32 %1824, 1
  %1826 = sub nsw i32 1597463174, %1825
  %1827 = bitcast i32 %1826 to float
  %1828 = fmul fast float %1730, 5.000000e-01
  %1829 = fmul fast float %1827, %1827
  %1830 = fmul fast float %1829, %1828
  %1831 = fsub fast float 1.500000e+00, %1830
  %1832 = fmul fast float %1827, %1730
  %1833 = fmul fast float %1832, %1831
  %1834 = fsub fast float %1813, %1795
  %1835 = fsub fast float %1823, %1799
  %1836 = fsub fast float %1833, %1803
  %1837 = fmul fast float %1834, %1763
  %1838 = fmul fast float %1835, %1765
  %1839 = fmul fast float %1836, %1770
  %1840 = fadd fast float %1837, %1778
  %1841 = fadd fast float %1838, %1782
  %1842 = fadd fast float %1839, %1786
  %1843 = call float @dx.op.unary.f32(i32 7, float %1840)  ; Saturate(value)
  %1844 = call float @dx.op.unary.f32(i32 7, float %1841)  ; Saturate(value)
  %1845 = call float @dx.op.unary.f32(i32 7, float %1842)  ; Saturate(value)
  %1846 = fmul fast float %1843, %1843
  %1847 = fmul fast float %1844, %1844
  %1848 = fmul fast float %1845, %1845
  %1849 = fsub fast float %1846, %1728
  %1850 = fsub fast float %1847, %1729
  %1851 = fsub fast float %1848, %1730
  %1852 = fmul fast float %1849, %1753
  %1853 = fmul fast float %1850, %1753
  %1854 = fmul fast float %1851, %1753
  %1855 = fadd fast float %1852, %1728
  %1856 = fadd fast float %1853, %1729
  %1857 = fadd fast float %1854, %1730
  %1858 = fadd fast float %1775, %1739
  %1859 = fsub fast float %1858, %1792
  %1860 = call float @dx.op.unary.f32(i32 7, float %1859)  ; Saturate(value)
  %1861 = fsub fast float %1860, %1739
  %1862 = fmul fast float %1861, %1753
  %1863 = fadd fast float %1862, %1739
  br label %1917

; <label>:1864                                    ; preds = %1752
  %1865 = and i32 %1755, 134217728
  %1866 = icmp eq i32 %1865, 0
  br i1 %1866, label %1901, label %1867

; <label>:1867                                    ; preds = %1864
  %1868 = call float @dx.op.unary.f32(i32 24, float %409)  ; Sqrt(value)
  %1869 = call float @dx.op.unary.f32(i32 24, float %410)  ; Sqrt(value)
  %1870 = call float @dx.op.unary.f32(i32 24, float %411)  ; Sqrt(value)
  %1871 = fadd fast float %1868, -5.000000e-01
  %1872 = fadd fast float %1869, -5.000000e-01
  %1873 = fadd fast float %1870, -5.000000e-01
  %1874 = fmul fast float %1871, %1753
  %1875 = fmul fast float %1872, %1753
  %1876 = fmul fast float %1873, %1753
  %1877 = fadd fast float %1874, 5.000000e-01
  %1878 = fadd fast float %1875, 5.000000e-01
  %1879 = fadd fast float %1876, 5.000000e-01
  %1880 = call float @dx.op.unary.f32(i32 24, float %1728)  ; Sqrt(value)
  %1881 = call float @dx.op.unary.f32(i32 24, float %1729)  ; Sqrt(value)
  %1882 = call float @dx.op.unary.f32(i32 24, float %1730)  ; Sqrt(value)
  %1883 = fmul fast float %1877, 2.000000e+00
  %1884 = fsub fast float 1.000000e+00, %1883
  %1885 = fmul fast float %1884, %1880
  %1886 = fadd fast float %1885, %1883
  %1887 = fmul fast float %1886, %1880
  %1888 = fmul fast float %1878, 2.000000e+00
  %1889 = fsub fast float 1.000000e+00, %1888
  %1890 = fmul fast float %1889, %1881
  %1891 = fadd fast float %1890, %1888
  %1892 = fmul fast float %1891, %1881
  %1893 = fmul fast float %1879, 2.000000e+00
  %1894 = fsub fast float 1.000000e+00, %1893
  %1895 = fmul fast float %1894, %1882
  %1896 = fadd fast float %1895, %1893
  %1897 = fmul fast float %1896, %1882
  %1898 = fmul fast float %1887, %1887
  %1899 = fmul fast float %1892, %1892
  %1900 = fmul fast float %1897, %1897
  br label %1917

; <label>:1901                                    ; preds = %1864
  %1902 = fmul fast float %409, %409
  %1903 = fmul fast float %410, %410
  %1904 = fmul fast float %411, %411
  %1905 = fadd fast float %1902, -1.000000e+00
  %1906 = fadd fast float %1903, -1.000000e+00
  %1907 = fadd fast float %1904, -1.000000e+00
  %1908 = fmul fast float %1753, %1905
  %1909 = fmul fast float %1753, %1906
  %1910 = fmul fast float %1753, %1907
  %1911 = fadd fast float %1908, 1.000000e+00
  %1912 = fadd fast float %1909, 1.000000e+00
  %1913 = fadd fast float %1910, 1.000000e+00
  %1914 = fmul fast float %1911, %1728
  %1915 = fmul fast float %1912, %1729
  %1916 = fmul fast float %1913, %1730
  br label %1917

; <label>:1917                                    ; preds = %1901, %1867, %1758, %1714
  %1918 = phi float [ %1863, %1758 ], [ %1739, %1867 ], [ %1739, %1901 ], [ 0x3FA23C0BE0000000, %1714 ]
  %1919 = phi float [ %1855, %1758 ], [ %1898, %1867 ], [ %1914, %1901 ], [ 1.000000e+00, %1714 ]
  %1920 = phi float [ %1856, %1758 ], [ %1899, %1867 ], [ %1915, %1901 ], [ 1.000000e+00, %1714 ]
  %1921 = phi float [ %1857, %1758 ], [ %1900, %1867 ], [ %1916, %1901 ], [ 1.000000e+00, %1714 ]
  %1922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1923 = extractvalue %dx.types.CBufRet.i32 %1922, 1
  %1924 = and i32 %1923, 1
  %1925 = icmp ne i32 %1924, 0
  %1926 = add i32 %58, 356
  %1927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1926, i32 undef)  ; BufferLoad(srv,index,wot)
  %1928 = extractvalue %dx.types.ResRet.i32 %1927, 0
  %1929 = and i32 %1928, 32
  %1930 = icmp ne i32 %1929, 0
  %1931 = and i1 %1925, %1930
  %1932 = select i1 %1931, float 1.000000e+00, float %1919
  %1933 = select i1 %1931, float 0x3FD3333340000000, float %1920
  %1934 = select i1 %1931, float 0x3FD3333340000000, float %1921
  %1935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.i32 %1935, 0
  %1937 = and i32 %1936, 32
  %1938 = icmp eq i32 %1937, 0
  br i1 %1938, label %2011, label %1939

; <label>:1939                                    ; preds = %1917
  %1940 = add i32 %58, 108
  %1941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1942 = extractvalue %dx.types.ResRet.i32 %1941, 0
  %1943 = add i32 %58, 396
  %1944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.i32 %1944, 0
  %1946 = add i32 %1945, 0
  %1947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1946, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1948 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1947, %dx.types.Handle %111, float %1640, float %1641, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1949 = extractvalue %dx.types.ResRet.f32 %1948, 0
  %1950 = extractvalue %dx.types.ResRet.f32 %1948, 1
  %1951 = extractvalue %dx.types.ResRet.f32 %1948, 2
  %1952 = extractvalue %dx.types.ResRet.f32 %1948, 3
  %1953 = and i32 %1942, 255
  %1954 = uitofp i32 %1953 to float
  %1955 = lshr i32 %1942, 8
  %1956 = and i32 %1955, 255
  %1957 = uitofp i32 %1956 to float
  %1958 = lshr i32 %1942, 16
  %1959 = and i32 %1958, 255
  %1960 = uitofp i32 %1959 to float
  %1961 = fmul fast float %1960, 0x3F70101000000000
  %1962 = fmul fast float %1949, %1954
  %1963 = fadd fast float %1962, %1957
  %1964 = fmul fast float %1963, 0x3F70101000000000
  %1965 = fadd fast float %1950, -5.000000e-01
  %1966 = fadd fast float %1952, -5.000000e-01
  %1967 = fmul fast float %1965, %1961
  %1968 = fmul fast float %1966, %1961
  %1969 = fadd fast float %1967, 5.000000e-01
  %1970 = fadd fast float %1968, 5.000000e-01
  %1971 = fmul fast float %1969, 2.000000e+00
  %1972 = fadd fast float %1971, -1.000000e+00
  %1973 = fmul fast float %1970, 2.000000e+00
  %1974 = fadd fast float %1973, -1.000000e+00
  %1975 = fadd fast float %1972, %1974
  %1976 = fmul fast float %1975, 5.000000e-01
  %1977 = fsub fast float %1972, %1974
  %1978 = fmul fast float %1977, 5.000000e-01
  %1979 = call float @dx.op.unary.f32(i32 6, float %1976)  ; FAbs(value)
  %1980 = fsub fast float 1.000000e+00, %1979
  %1981 = call float @dx.op.unary.f32(i32 6, float %1978)  ; FAbs(value)
  %1982 = fsub fast float %1980, %1981
  %1983 = call float @dx.op.dot3.f32(i32 55, float %1976, float %1978, float %1982, float %1976, float %1978, float %1982)  ; Dot3(ax,ay,az,bx,by,bz)
  %1984 = call float @dx.op.unary.f32(i32 25, float %1983)  ; Rsqrt(value)
  %1985 = fmul fast float %1976, %1984
  %1986 = fmul fast float %1978, %1984
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = and i32 %1988, 67108864
  %1990 = icmp eq i32 %1989, 0
  br i1 %1990, label %2007, label %1991

; <label>:1991                                    ; preds = %1939
  %1992 = add i32 %58, 296
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = and i32 %1994, 65535
  %1996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1995)  ; LegacyF16ToF32(value)
  %1997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.i32 %1997, 0
  %1999 = and i32 %1998, 65535
  %2000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1999)  ; LegacyF16ToF32(value)
  %2001 = lshr i32 %1994, 16
  %2002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2001)  ; LegacyF16ToF32(value)
  %2003 = fsub fast float %1964, %2002
  %2004 = fmul fast float %2003, %1996
  %2005 = fadd fast float %2004, %2000
  %2006 = call float @dx.op.unary.f32(i32 7, float %2005)  ; Saturate(value)
  br label %2007

; <label>:2007                                    ; preds = %1991, %1939
  %2008 = phi float [ %2006, %1991 ], [ %1964, %1939 ]
  %2009 = call float @dx.op.dot2.f32(i32 54, float %1985, float %1986, float %1544, float %1545)  ; Dot2(ax,ay,bx,by)
  %2010 = call float @dx.op.dot2.f32(i32 54, float %1985, float %1986, float %1546, float %1547)  ; Dot2(ax,ay,bx,by)
  br label %2011

; <label>:2011                                    ; preds = %2007, %1917
  %2012 = phi float [ %2008, %2007 ], [ 0x3FD6666660000000, %1917 ]
  %2013 = phi float [ %2009, %2007 ], [ 0.000000e+00, %1917 ]
  %2014 = phi float [ %2010, %2007 ], [ 0.000000e+00, %1917 ]
  %2015 = phi float [ %1951, %2007 ], [ 1.000000e+00, %1917 ]
  %2016 = add i32 %58, 176
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = lshr i32 %2018, 22
  %2020 = shl nuw nsw i32 %2019, 5
  %2021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2020)  ; LegacyF16ToF32(value)
  %2022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.i32 %2022, 0
  %2024 = and i32 %2023, 64
  %2025 = icmp eq i32 %2024, 0
  br i1 %2025, label %2059, label %2026

; <label>:2026                                    ; preds = %2011
  %2027 = add i32 %58, 412
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = add i32 %2029, 0
  %2031 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2030, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.i32 %2032, 0
  %2034 = and i32 %2033, 131072
  %2035 = icmp eq i32 %2034, 0
  %2036 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2031, %dx.types.Handle %111, float %1640, float %1641, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2037 = extractvalue %dx.types.ResRet.f32 %2036, 0
  %2038 = extractvalue %dx.types.ResRet.f32 %2036, 1
  %2039 = extractvalue %dx.types.ResRet.f32 %2036, 2
  %2040 = fmul fast float %392, %2037
  %2041 = fmul fast float %393, %2038
  %2042 = fmul fast float %394, %2039
  br i1 %2035, label %2049, label %2043

; <label>:2043                                    ; preds = %2026
  %2044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2045 = extractvalue %dx.types.CBufRet.f32 %2044, 0
  %2046 = fmul fast float %2045, %2040
  %2047 = fmul fast float %2045, %2041
  %2048 = fmul fast float %2045, %2042
  br label %2049

; <label>:2049                                    ; preds = %2043, %2026
  %2050 = phi float [ %2046, %2043 ], [ %2040, %2026 ]
  %2051 = phi float [ %2047, %2043 ], [ %2041, %2026 ]
  %2052 = phi float [ %2048, %2043 ], [ %2042, %2026 ]
  %2053 = fmul fast float %2050, %2021
  %2054 = select i1 %268, float %2053, float %2050
  %2055 = call float @dx.op.dot3.f32(i32 55, float %2054, float %2051, float %2052, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2056 = select i1 %268, float 0.000000e+00, float %2050
  %2057 = select i1 %268, float %2055, float %2051
  %2058 = select i1 %268, float 0.000000e+00, float %2052
  br label %2059

; <label>:2059                                    ; preds = %2049, %2011
  %2060 = phi float [ %2056, %2049 ], [ 0.000000e+00, %2011 ]
  %2061 = phi float [ %2057, %2049 ], [ 0.000000e+00, %2011 ]
  %2062 = phi float [ %2058, %2049 ], [ 0.000000e+00, %2011 ]
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = and i32 %2064, 1024
  %2066 = icmp eq i32 %2065, 0
  br i1 %2066, label %2097, label %2067

; <label>:2067                                    ; preds = %2059
  %2068 = add i32 %58, 168
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = and i32 %2070, 255
  %2072 = uitofp i32 %2071 to float
  %2073 = fmul fast float %2072, 0x3F70101020000000
  %2074 = lshr i32 %2070, 8
  %2075 = and i32 %2074, 255
  %2076 = uitofp i32 %2075 to float
  %2077 = fmul fast float %2076, 0x3F70101020000000
  %2078 = lshr i32 %2070, 16
  %2079 = and i32 %2078, 255
  %2080 = uitofp i32 %2079 to float
  %2081 = fmul fast float %2080, 0x3F70101020000000
  %2082 = fmul fast float %2073, %2073
  %2083 = fmul fast float %2077, %2077
  %2084 = fmul fast float %2081, %2081
  %2085 = add i32 %58, 476
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = add i32 %2087, 0
  %2089 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2088, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2090 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2089, %dx.types.Handle %112, float %1640, float %1641, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2091 = extractvalue %dx.types.ResRet.f32 %2090, 0
  %2092 = extractvalue %dx.types.ResRet.f32 %2090, 1
  %2093 = extractvalue %dx.types.ResRet.f32 %2090, 2
  %2094 = fmul fast float %2082, %2091
  %2095 = fmul fast float %2083, %2092
  %2096 = fmul fast float %2084, %2093
  br label %2097

; <label>:2097                                    ; preds = %2067, %2059
  %2098 = phi float [ %2094, %2067 ], [ 0.000000e+00, %2059 ]
  %2099 = phi float [ %2095, %2067 ], [ 0.000000e+00, %2059 ]
  %2100 = phi float [ %2096, %2067 ], [ 0.000000e+00, %2059 ]
  %2101 = fcmp fast ogt float %2098, 0.000000e+00
  %2102 = fcmp fast ogt float %2099, 0.000000e+00
  %2103 = fcmp fast ogt float %2100, 0.000000e+00
  %2104 = call float @dx.op.unary.f32(i32 23, float %2098)  ; Log(value)
  %2105 = call float @dx.op.unary.f32(i32 23, float %2099)  ; Log(value)
  %2106 = call float @dx.op.unary.f32(i32 23, float %2100)  ; Log(value)
  %2107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2108 = extractvalue %dx.types.ResRet.i32 %2107, 0
  %2109 = lshr i32 %2108, 7
  %2110 = and i32 %2109, 32752
  %2111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2110)  ; LegacyF16ToF32(value)
  %2112 = fmul fast float %2104, 0xBFE62E4300000000
  %2113 = fmul fast float %2112, %2111
  %2114 = fmul fast float %2105, 0xBFE62E4300000000
  %2115 = fmul fast float %2114, %2111
  %2116 = fmul fast float %2106, 0xBFE62E4300000000
  %2117 = fmul fast float %2116, %2111
  %2118 = select i1 %2101, float %2113, float 1.270000e+02
  %2119 = select i1 %2102, float %2115, float 1.270000e+02
  %2120 = select i1 %2103, float %2117, float 1.270000e+02
  %2121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2122 = extractvalue %dx.types.ResRet.i32 %2121, 0
  %2123 = and i32 %2122, 10240
  %2124 = icmp eq i32 %2123, 0
  br i1 %2124, label %2145, label %2125

; <label>:2125                                    ; preds = %2097
  %2126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.i32 %2126, 0
  %2128 = and i32 %2127, 2048
  %2129 = icmp eq i32 %2128, 0
  br i1 %2129, label %2145, label %2130

; <label>:2130                                    ; preds = %2125
  %2131 = add i32 %58, 492
  %2132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2133 = extractvalue %dx.types.ResRet.i32 %2132, 0
  %2134 = add i32 %2133, 0
  %2135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2134, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2136 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2135, %dx.types.Handle %112, float %1640, float %1641, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2137 = extractvalue %dx.types.ResRet.f32 %2136, 3
  %2138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2139 = extractvalue %dx.types.ResRet.i32 %2138, 0
  %2140 = shl i32 %2139, 4
  %2141 = and i32 %2140, 32752
  %2142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2141)  ; LegacyF16ToF32(value)
  %2143 = fmul fast float %2142, %2137
  %2144 = call float @dx.op.binary.f32(i32 35, float %2143, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2145

; <label>:2145                                    ; preds = %2130, %2125, %2097
  %2146 = phi float [ %2144, %2130 ], [ 0x3F70101020000000, %2125 ], [ 0x3F70101020000000, %2097 ]
  %2147 = add i32 %58, 112
  %2148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2149 = extractvalue %dx.types.ResRet.i32 %2148, 0
  %2150 = and i32 %2149, 255
  %2151 = uitofp i32 %2150 to float
  %2152 = lshr i32 %2149, 8
  %2153 = and i32 %2152, 255
  %2154 = uitofp i32 %2153 to float
  %2155 = call float @dx.op.dot3.f32(i32 55, float %1932, float %1933, float %1934, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2156 = fmul fast float %2154, %2155
  %2157 = fadd fast float %2156, %2151
  %2158 = fmul fast float %2157, 0x3F70101020000000
  %2159 = call float @dx.op.unary.f32(i32 7, float %2158)  ; Saturate(value)
  br i1 %1533, label %2160, label %2195

; <label>:2160                                    ; preds = %2145
  %2161 = fmul fast float %2146, 2.000000e+00
  %2162 = fcmp fast olt float %2118, 1.270000e+02
  %2163 = fcmp fast olt float %2119, 1.270000e+02
  %2164 = fcmp fast olt float %2120, 1.270000e+02
  %2165 = fmul fast float %2118, 0xBFF7154760000000
  %2166 = fmul fast float %2165, %2161
  %2167 = fmul fast float %2119, 0xBFF7154760000000
  %2168 = fmul fast float %2167, %2161
  %2169 = fmul fast float %2120, 0xBFF7154760000000
  %2170 = fmul fast float %2169, %2161
  %2171 = call float @dx.op.unary.f32(i32 21, float %2166)  ; Exp(value)
  %2172 = call float @dx.op.unary.f32(i32 21, float %2168)  ; Exp(value)
  %2173 = call float @dx.op.unary.f32(i32 21, float %2170)  ; Exp(value)
  %2174 = call float @dx.op.unary.f32(i32 7, float %2171)  ; Saturate(value)
  %2175 = call float @dx.op.unary.f32(i32 7, float %2172)  ; Saturate(value)
  %2176 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2177 = fadd fast float %2174, -1.000000e+00
  %2178 = select i1 %2162, float %2177, float -1.000000e+00
  %2179 = fadd fast float %2175, -1.000000e+00
  %2180 = select i1 %2163, float %2179, float -1.000000e+00
  %2181 = fadd fast float %2176, -1.000000e+00
  %2182 = select i1 %2164, float %2181, float -1.000000e+00
  %2183 = fmul fast float %2178, %1712
  %2184 = fmul fast float %2180, %1712
  %2185 = fmul fast float %2182, %1712
  %2186 = fadd fast float %2183, 1.000000e+00
  %2187 = fadd fast float %2184, 1.000000e+00
  %2188 = fadd fast float %2185, 1.000000e+00
  %2189 = fmul fast float %2186, %1520
  %2190 = fmul fast float %2187, %1521
  %2191 = fmul fast float %2188, %1522
  %2192 = fmul fast float %2186, %1517
  %2193 = fmul fast float %2187, %1518
  %2194 = fmul fast float %2188, %1519
  br label %2195

; <label>:2195                                    ; preds = %2160, %2145
  %2196 = phi float [ %2192, %2160 ], [ %1517, %2145 ]
  %2197 = phi float [ %2193, %2160 ], [ %1518, %2145 ]
  %2198 = phi float [ %2194, %2160 ], [ %1519, %2145 ]
  %2199 = phi float [ %2189, %2160 ], [ %1520, %2145 ]
  %2200 = phi float [ %2190, %2160 ], [ %1521, %2145 ]
  %2201 = phi float [ %2191, %2160 ], [ %1522, %2145 ]
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = and i32 %2203, 3
  %2205 = icmp eq i32 %2204, 3
  br i1 %2205, label %2284, label %2206

; <label>:2206                                    ; preds = %2195
  %2207 = and i32 %2203, 16
  %2208 = icmp ne i32 %2207, 0
  %2209 = select i1 %2208, float %1712, float 0.000000e+00
  %2210 = icmp eq i32 %2204, 0
  br i1 %2210, label %2211, label %2239

; <label>:2211                                    ; preds = %2206
  %2212 = and i32 %2203, 64
  %2213 = icmp ne i32 %2212, 0
  %2214 = select i1 %2213, float %1712, float 0.000000e+00
  %2215 = fsub fast float %1932, %2199
  %2216 = fsub fast float %1933, %2200
  %2217 = fsub fast float %1934, %2201
  %2218 = fmul fast float %2209, %2215
  %2219 = fmul fast float %2209, %2216
  %2220 = fmul fast float %2209, %2217
  %2221 = fadd fast float %2218, %2199
  %2222 = fadd fast float %2219, %2200
  %2223 = fadd fast float %2220, %2201
  %2224 = fsub fast float %1918, %1526
  %2225 = fmul fast float %2209, %2224
  %2226 = fadd fast float %2225, %1526
  %2227 = fsub fast float %2060, %2196
  %2228 = fsub fast float %2061, %2197
  %2229 = fsub fast float %2062, %2198
  %2230 = fmul fast float %2214, %2227
  %2231 = fmul fast float %2214, %2228
  %2232 = fmul fast float %2214, %2229
  %2233 = fadd fast float %2230, %2196
  %2234 = fadd fast float %2231, %2197
  %2235 = fadd fast float %2232, %2198
  %2236 = fsub fast float %2159, %1531
  %2237 = fmul fast float %2209, %2236
  %2238 = fadd fast float %2237, %1531
  br label %2284

; <label>:2239                                    ; preds = %2206
  %2240 = icmp eq i32 %2204, 1
  br i1 %2240, label %2241, label %2254

; <label>:2241                                    ; preds = %2239
  %2242 = fadd fast float %1932, -1.000000e+00
  %2243 = fadd fast float %1933, -1.000000e+00
  %2244 = fadd fast float %1934, -1.000000e+00
  %2245 = fmul fast float %2209, %2242
  %2246 = fmul fast float %2209, %2243
  %2247 = fmul fast float %2209, %2244
  %2248 = fadd fast float %2245, 1.000000e+00
  %2249 = fadd fast float %2246, 1.000000e+00
  %2250 = fadd fast float %2247, 1.000000e+00
  %2251 = fmul fast float %2248, %2199
  %2252 = fmul fast float %2249, %2200
  %2253 = fmul fast float %2250, %2201
  br label %2284

; <label>:2254                                    ; preds = %2239
  %2255 = icmp eq i32 %2204, 2
  br i1 %2255, label %2256, label %2284

; <label>:2256                                    ; preds = %2254
  %2257 = call float @dx.op.unary.f32(i32 24, float %1932)  ; Sqrt(value)
  %2258 = call float @dx.op.unary.f32(i32 24, float %1933)  ; Sqrt(value)
  %2259 = call float @dx.op.unary.f32(i32 24, float %1934)  ; Sqrt(value)
  %2260 = fadd fast float %2257, -5.000000e-01
  %2261 = fadd fast float %2258, -5.000000e-01
  %2262 = fadd fast float %2259, -5.000000e-01
  %2263 = fmul fast float %2260, %2209
  %2264 = fmul fast float %2261, %2209
  %2265 = fmul fast float %2262, %2209
  %2266 = fadd fast float %2263, 5.000000e-01
  %2267 = fadd fast float %2264, 5.000000e-01
  %2268 = fadd fast float %2265, 5.000000e-01
  %2269 = fmul fast float %2266, 2.000000e+00
  %2270 = fsub fast float 1.000000e+00, %2269
  %2271 = fmul fast float %2270, %2199
  %2272 = fadd fast float %2271, %2269
  %2273 = fmul fast float %2272, %2199
  %2274 = fmul fast float %2267, 2.000000e+00
  %2275 = fsub fast float 1.000000e+00, %2274
  %2276 = fmul fast float %2275, %2200
  %2277 = fadd fast float %2276, %2274
  %2278 = fmul fast float %2277, %2200
  %2279 = fmul fast float %2268, 2.000000e+00
  %2280 = fsub fast float 1.000000e+00, %2279
  %2281 = fmul fast float %2280, %2201
  %2282 = fadd fast float %2281, %2279
  %2283 = fmul fast float %2282, %2201
  br label %2284

; <label>:2284                                    ; preds = %2256, %2254, %2241, %2211, %2195
  %2285 = phi float [ %2196, %2195 ], [ %2196, %2256 ], [ %2196, %2254 ], [ %2196, %2241 ], [ %2233, %2211 ]
  %2286 = phi float [ %2197, %2195 ], [ %2197, %2256 ], [ %2197, %2254 ], [ %2197, %2241 ], [ %2234, %2211 ]
  %2287 = phi float [ %2198, %2195 ], [ %2198, %2256 ], [ %2198, %2254 ], [ %2198, %2241 ], [ %2235, %2211 ]
  %2288 = phi float [ %2199, %2195 ], [ %2273, %2256 ], [ %2199, %2254 ], [ %2251, %2241 ], [ %2221, %2211 ]
  %2289 = phi float [ %2200, %2195 ], [ %2278, %2256 ], [ %2200, %2254 ], [ %2252, %2241 ], [ %2222, %2211 ]
  %2290 = phi float [ %2201, %2195 ], [ %2283, %2256 ], [ %2201, %2254 ], [ %2253, %2241 ], [ %2223, %2211 ]
  %2291 = phi float [ %1526, %2195 ], [ %1526, %2256 ], [ %1526, %2254 ], [ %1526, %2241 ], [ %2226, %2211 ]
  %2292 = phi float [ %1531, %2195 ], [ %1531, %2256 ], [ %1531, %2254 ], [ %1531, %2241 ], [ %2238, %2211 ]
  %2293 = and i32 %2203, 12
  %2294 = icmp eq i32 %2293, 12
  br i1 %2294, label %2401, label %2295

; <label>:2295                                    ; preds = %2284
  %2296 = and i32 %2203, 2097184
  %2297 = icmp eq i32 %2296, 2097184
  %2298 = select i1 %2297, float %1712, float 0.000000e+00
  %2299 = and i32 %2203, 4194336
  %2300 = icmp eq i32 %2299, 4194336
  %2301 = select i1 %2300, float %1712, float 0.000000e+00
  %2302 = and i32 %2203, 8388640
  %2303 = icmp eq i32 %2302, 8388640
  %2304 = select i1 %2303, float %1712, float 0.000000e+00
  %2305 = and i32 %2203, 1024
  %2306 = icmp ne i32 %2305, 0
  %2307 = select i1 %2306, float %1712, float 0.000000e+00
  %2308 = and i32 %2203, 2048
  %2309 = icmp ne i32 %2308, 0
  %2310 = select i1 %2309, float %1712, float 0.000000e+00
  %2311 = icmp eq i32 %2293, 0
  br i1 %2311, label %2312, label %2337

; <label>:2312                                    ; preds = %2295
  %2313 = fsub fast float %2013, %1515
  %2314 = fsub fast float %2014, %1516
  %2315 = fmul fast float %2298, %2313
  %2316 = fmul fast float %2298, %2314
  %2317 = fadd fast float %2315, %1515
  %2318 = fadd fast float %2316, %1516
  %2319 = fsub fast float %2015, %1529
  %2320 = fmul fast float %2301, %2319
  %2321 = fadd fast float %2320, %1529
  %2322 = fsub fast float %2012, %1528
  %2323 = fmul fast float %2304, %2322
  %2324 = fadd fast float %2323, %1528
  %2325 = fsub fast float %2118, %1523
  %2326 = fsub fast float %2119, %1524
  %2327 = fsub fast float %2120, %1525
  %2328 = fmul fast float %2307, %2325
  %2329 = fmul fast float %2307, %2326
  %2330 = fmul fast float %2307, %2327
  %2331 = fadd fast float %2328, %1523
  %2332 = fadd fast float %2329, %1524
  %2333 = fadd fast float %2330, %1525
  %2334 = fsub fast float %2146, %1530
  %2335 = fmul fast float %2310, %2334
  %2336 = fadd fast float %2335, %1530
  br label %2401

; <label>:2337                                    ; preds = %2295
  %2338 = icmp eq i32 %2293, 4
  br i1 %2338, label %2339, label %2379

; <label>:2339                                    ; preds = %2337
  %2340 = fmul fast float %2298, %2013
  %2341 = fmul fast float %2298, %2014
  %2342 = fadd fast float %2340, %1515
  %2343 = fadd fast float %2341, %1516
  %2344 = call float @dx.op.binary.f32(i32 36, float %1529, float %2015)  ; FMin(a,b)
  %2345 = fsub fast float %2344, %1529
  %2346 = fmul fast float %2345, %2301
  %2347 = fadd fast float %2346, %1529
  %2348 = fadd fast float %2012, %1528
  %2349 = fmul fast float %2348, 0x3FF337FAE0000000
  %2350 = fmul fast float %1528, %1528
  %2351 = fmul fast float %2012, %2012
  %2352 = fadd fast float %2351, %2350
  %2353 = fmul fast float %2352, 0x3FE5152B00000000
  %2354 = fmul fast float %1528, 0xBFCC1F85E0000000
  %2355 = fmul fast float %2354, %2012
  %2356 = fadd fast float %2355, 0xBFE1363700000000
  %2357 = fadd fast float %2356, %2349
  %2358 = fsub fast float %2357, %2353
  %2359 = fmul fast float %2348, 0x3FBA6F0D00000000
  %2360 = fmul fast float %2352, 0x3FD0432880000000
  %2361 = fmul fast float %1528, 0xBFEF110800000000
  %2362 = fmul fast float %2361, %2012
  %2363 = fadd fast float %2362, 1.000000e+00
  %2364 = fsub fast float %2363, %2359
  %2365 = fadd fast float %2364, %2360
  %2366 = fdiv fast float %2358, %2365
  %2367 = call float @dx.op.unary.f32(i32 7, float %2366)  ; Saturate(value)
  %2368 = fsub fast float %2367, %1528
  %2369 = fmul fast float %2368, %2304
  %2370 = fadd fast float %2369, %1528
  %2371 = fmul fast float %2307, %2118
  %2372 = fmul fast float %2307, %2119
  %2373 = fmul fast float %2307, %2120
  %2374 = fadd fast float %2371, %1523
  %2375 = fadd fast float %2372, %1524
  %2376 = fadd fast float %2373, %1525
  %2377 = fmul fast float %2310, %2146
  %2378 = fadd fast float %2377, %1530
  br label %2401

; <label>:2379                                    ; preds = %2337
  %2380 = icmp eq i32 %2293, 8
  br i1 %2380, label %2381, label %2401

; <label>:2381                                    ; preds = %2379
  %2382 = fmul fast float %2298, %2013
  %2383 = fmul fast float %2298, %2014
  %2384 = fadd fast float %2382, %1515
  %2385 = fadd fast float %2383, %1516
  %2386 = call float @dx.op.binary.f32(i32 36, float %1529, float %2015)  ; FMin(a,b)
  %2387 = fsub fast float %2386, %1529
  %2388 = fmul fast float %2387, %2301
  %2389 = fadd fast float %2388, %1529
  %2390 = fsub fast float %2012, %1528
  %2391 = fmul fast float %2304, %2390
  %2392 = fadd fast float %2391, %1528
  %2393 = fmul fast float %2307, %2118
  %2394 = fmul fast float %2307, %2119
  %2395 = fmul fast float %2307, %2120
  %2396 = fadd fast float %2393, %1523
  %2397 = fadd fast float %2394, %1524
  %2398 = fadd fast float %2395, %1525
  %2399 = fmul fast float %2310, %2146
  %2400 = fadd fast float %2399, %1530
  br label %2401

; <label>:2401                                    ; preds = %2381, %2379, %2339, %2312, %2284, %1711, %1532, %1514
  %2402 = phi float [ %1515, %2284 ], [ %1515, %1711 ], [ %1515, %1514 ], [ %2384, %2381 ], [ %1515, %2379 ], [ %2342, %2339 ], [ %2317, %2312 ], [ %1515, %1532 ]
  %2403 = phi float [ %1516, %2284 ], [ %1516, %1711 ], [ %1516, %1514 ], [ %2385, %2381 ], [ %1516, %2379 ], [ %2343, %2339 ], [ %2318, %2312 ], [ %1516, %1532 ]
  %2404 = phi float [ %2285, %2284 ], [ %1517, %1711 ], [ %1517, %1514 ], [ %2285, %2381 ], [ %2285, %2379 ], [ %2285, %2339 ], [ %2285, %2312 ], [ %1517, %1532 ]
  %2405 = phi float [ %2286, %2284 ], [ %1518, %1711 ], [ %1518, %1514 ], [ %2286, %2381 ], [ %2286, %2379 ], [ %2286, %2339 ], [ %2286, %2312 ], [ %1518, %1532 ]
  %2406 = phi float [ %2287, %2284 ], [ %1519, %1711 ], [ %1519, %1514 ], [ %2287, %2381 ], [ %2287, %2379 ], [ %2287, %2339 ], [ %2287, %2312 ], [ %1519, %1532 ]
  %2407 = phi float [ %2288, %2284 ], [ %1520, %1711 ], [ %1520, %1514 ], [ %2288, %2381 ], [ %2288, %2379 ], [ %2288, %2339 ], [ %2288, %2312 ], [ %1520, %1532 ]
  %2408 = phi float [ %2289, %2284 ], [ %1521, %1711 ], [ %1521, %1514 ], [ %2289, %2381 ], [ %2289, %2379 ], [ %2289, %2339 ], [ %2289, %2312 ], [ %1521, %1532 ]
  %2409 = phi float [ %2290, %2284 ], [ %1522, %1711 ], [ %1522, %1514 ], [ %2290, %2381 ], [ %2290, %2379 ], [ %2290, %2339 ], [ %2290, %2312 ], [ %1522, %1532 ]
  %2410 = phi float [ %1523, %2284 ], [ %1523, %1711 ], [ %1523, %1514 ], [ %2396, %2381 ], [ %1523, %2379 ], [ %2374, %2339 ], [ %2331, %2312 ], [ %1523, %1532 ]
  %2411 = phi float [ %1524, %2284 ], [ %1524, %1711 ], [ %1524, %1514 ], [ %2397, %2381 ], [ %1524, %2379 ], [ %2375, %2339 ], [ %2332, %2312 ], [ %1524, %1532 ]
  %2412 = phi float [ %1525, %2284 ], [ %1525, %1711 ], [ %1525, %1514 ], [ %2398, %2381 ], [ %1525, %2379 ], [ %2376, %2339 ], [ %2333, %2312 ], [ %1525, %1532 ]
  %2413 = phi float [ %2291, %2284 ], [ %1526, %1711 ], [ %1526, %1514 ], [ %2291, %2381 ], [ %2291, %2379 ], [ %2291, %2339 ], [ %2291, %2312 ], [ %1526, %1532 ]
  %2414 = phi float [ %1528, %2284 ], [ %1528, %1711 ], [ %1528, %1514 ], [ %2392, %2381 ], [ %1528, %2379 ], [ %2370, %2339 ], [ %2324, %2312 ], [ %1528, %1532 ]
  %2415 = phi float [ %1529, %2284 ], [ %1529, %1711 ], [ %1529, %1514 ], [ %2389, %2381 ], [ %1529, %2379 ], [ %2347, %2339 ], [ %2321, %2312 ], [ %1529, %1532 ]
  %2416 = phi float [ %1530, %2284 ], [ %1530, %1711 ], [ %1530, %1514 ], [ %2400, %2381 ], [ %1530, %2379 ], [ %2378, %2339 ], [ %2336, %2312 ], [ %1530, %1532 ]
  %2417 = phi float [ %2292, %2284 ], [ %1531, %1711 ], [ %1531, %1514 ], [ %2292, %2381 ], [ %2292, %2379 ], [ %2292, %2339 ], [ %2292, %2312 ], [ %1531, %1532 ]
  br i1 %656, label %3287, label %2418

; <label>:2418                                    ; preds = %2401
  %2419 = icmp ult i32 %887, 3
  %2420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2421 = extractvalue %dx.types.ResRet.i32 %2420, 0
  %2422 = add i32 %58, 60
  %2423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2422, i32 undef)  ; BufferLoad(srv,index,wot)
  %2424 = extractvalue %dx.types.ResRet.i32 %2423, 0
  %2425 = or i32 %2424, %2421
  %2426 = icmp eq i32 %2425, 0
  br i1 %2426, label %3287, label %2427

; <label>:2427                                    ; preds = %2418
  %2428 = and i32 %2421, 262144
  %2429 = icmp ne i32 %2428, 0
  %2430 = select i1 %2429, float %65, float 1.000000e+00
  %2431 = select i1 %2429, float %66, float 0.000000e+00
  %2432 = select i1 %2429, float %67, float 0.000000e+00
  %2433 = select i1 %2429, float %68, float 1.000000e+00
  %2434 = select i1 %2429, float %69, float %97
  %2435 = select i1 %2429, float %70, float %98
  %2436 = add i32 %58, 316
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = lshr i32 %2438, 16
  %2440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2439)  ; LegacyF16ToF32(value)
  %2441 = fmul fast float %2440, 0x3F50624DE0000000
  %2442 = add i32 %58, 120
  %2443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2442, i32 undef)  ; BufferLoad(srv,index,wot)
  %2444 = extractvalue %dx.types.ResRet.i32 %2443, 0
  %2445 = lshr i32 %2444, 16
  %2446 = and i32 %2445, 255
  %2447 = lshr i32 %2444, 24
  %2448 = add i32 %58, 324
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2448, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = and i32 %2450, 65535
  %2452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2451)  ; LegacyF16ToF32(value)
  %2453 = lshr i32 %2450, 16
  %2454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2453)  ; LegacyF16ToF32(value)
  %2455 = add i32 %58, 64
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2455, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = lshr i32 %2457, 22
  %2459 = shl nuw nsw i32 %2458, 5
  %2460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2459)  ; LegacyF16ToF32(value)
  %2461 = shl i32 %2457, 4
  %2462 = and i32 %2461, 32752
  %2463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2462)  ; LegacyF16ToF32(value)
  %2464 = lshr i32 %2457, 7
  %2465 = and i32 %2464, 32752
  %2466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2465)  ; LegacyF16ToF32(value)
  %2467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2468 = extractvalue %dx.types.CBufRet.f32 %2467, 3
  %2469 = fmul fast float %2468, 1.000000e+03
  %2470 = fmul fast float %2469, %540
  %2471 = call float @dx.op.unary.f32(i32 22, float %2470)  ; Frc(value)
  %2472 = fadd fast float %2471, %528
  %2473 = fmul fast float %2469, %542
  %2474 = call float @dx.op.unary.f32(i32 22, float %2473)  ; Frc(value)
  %2475 = fadd fast float %2474, %529
  %2476 = fmul fast float %2441, %2469
  %2477 = call float @dx.op.unary.f32(i32 22, float %2476)  ; Frc(value)
  %2478 = fmul fast float %2477, 0x401921FB60000000
  %2479 = fadd fast float %2478, %2460
  %2480 = call float @dx.op.unary.f32(i32 13, float %2479)  ; Sin(value)
  %2481 = call float @dx.op.unary.f32(i32 12, float %2479)  ; Cos(value)
  %2482 = fsub fast float -0.000000e+00, %2480
  %2483 = fadd fast float %2434, -5.000000e-01
  %2484 = fadd fast float %2435, -5.000000e-01
  %2485 = fmul fast float %2452, %2483
  %2486 = fmul fast float %2454, %2484
  %2487 = fadd fast float %2485, 5.000000e-01
  %2488 = fadd fast float %2486, 5.000000e-01
  %2489 = fmul fast float %2463, %2487
  %2490 = fmul fast float %2466, %2488
  %2491 = fmul fast float %2481, %2489
  %2492 = call float @dx.op.tertiary.f32(i32 46, float %2482, float %2490, float %2491)  ; FMad(a,b,c)
  %2493 = fmul fast float %2480, %2489
  %2494 = call float @dx.op.tertiary.f32(i32 46, float %2481, float %2490, float %2493)  ; FMad(a,b,c)
  %2495 = fadd fast float %2472, %2492
  %2496 = fadd fast float %2475, %2494
  %2497 = icmp ugt i32 %2446, 1
  %2498 = icmp ugt i32 %2444, 33554431
  %2499 = or i1 %2498, %2497
  br i1 %2499, label %2500, label %2525

; <label>:2500                                    ; preds = %2427
  %2501 = add i32 %58, 260
  %2502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2501, i32 undef)  ; BufferLoad(srv,index,wot)
  %2503 = extractvalue %dx.types.ResRet.i32 %2502, 0
  %2504 = lshr i32 %2503, 16
  %2505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2504)  ; LegacyF16ToF32(value)
  %2506 = fmul fast float %2468, %2505
  %2507 = call float @dx.op.unary.f32(i32 22, float %2506)  ; Frc(value)
  %2508 = mul nuw nsw i32 %2446, %2447
  %2509 = uitofp i32 %2508 to float
  %2510 = fmul fast float %2507, %2509
  %2511 = call float @dx.op.unary.f32(i32 27, float %2510)  ; Round_ni(value)
  %2512 = fptoui float %2511 to i32
  %2513 = urem i32 %2512, %2446
  %2514 = udiv i32 %2512, %2447
  %2515 = call float @dx.op.unary.f32(i32 22, float %2495)  ; Frc(value)
  %2516 = call float @dx.op.unary.f32(i32 22, float %2496)  ; Frc(value)
  %2517 = uitofp i32 %2513 to float
  %2518 = uitofp i32 %2514 to float
  %2519 = fadd fast float %2515, %2517
  %2520 = fadd fast float %2516, %2518
  %2521 = uitofp i32 %2446 to float
  %2522 = uitofp i32 %2447 to float
  %2523 = fdiv fast float %2519, %2521
  %2524 = fdiv fast float %2520, %2522
  br label %2525

; <label>:2525                                    ; preds = %2500, %2427
  %2526 = phi float [ %2523, %2500 ], [ %2495, %2427 ]
  %2527 = phi float [ %2524, %2500 ], [ %2496, %2427 ]
  %2528 = and i32 %2421, 256
  %2529 = icmp eq i32 %2528, 0
  br i1 %2529, label %2575, label %2530

; <label>:2530                                    ; preds = %2525
  %2531 = add i32 %58, 448
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2531, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = add i32 %2533, 0
  %2535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2534, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2535, %dx.types.Handle %112, float %2526, float %2527, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2537 = extractvalue %dx.types.ResRet.f32 %2536, 0
  %2538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %2539 = extractvalue %dx.types.ResRet.i32 %2538, 0
  %2540 = shl i32 %2539, 4
  %2541 = and i32 %2540, 32752
  %2542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2541)  ; LegacyF16ToF32(value)
  %2543 = lshr i32 %2539, 7
  %2544 = and i32 %2543, 32752
  %2545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2544)  ; LegacyF16ToF32(value)
  %2546 = fsub fast float 1.000000e+00, %873
  %2547 = call float @dx.op.binary.f32(i32 35, float %2546, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2548 = bitcast float %873 to i32
  %2549 = sitofp i32 %2548 to float
  %2550 = fadd fast float %2549, 0xC1CFBF8940000000
  %2551 = fmul fast float %2545, %2550
  %2552 = fadd fast float %2551, 0x41CFBF8940000000
  %2553 = fptosi float %2552 to i32
  %2554 = bitcast i32 %2553 to float
  %2555 = bitcast float %2547 to i32
  %2556 = sitofp i32 %2555 to float
  %2557 = fadd fast float %2556, 0xC1CFBF8940000000
  %2558 = fmul fast float %2557, %2545
  %2559 = fadd fast float %2558, 0x41CFBF8940000000
  %2560 = fptosi float %2559 to i32
  %2561 = bitcast i32 %2560 to float
  %2562 = fmul fast float %2554, %2542
  %2563 = fmul fast float %2561, %2542
  %2564 = fsub fast float %2547, %2562
  %2565 = fadd fast float %2563, %2547
  %2566 = call float @dx.op.unary.f32(i32 7, float %2564)  ; Saturate(value)
  %2567 = call float @dx.op.unary.f32(i32 7, float %2565)  ; Saturate(value)
  %2568 = fsub fast float %2537, %2566
  %2569 = fsub fast float %2567, %2566
  %2570 = bitcast float %2569 to i32
  %2571 = sub nsw i32 2129859010, %2570
  %2572 = bitcast i32 %2571 to float
  %2573 = fmul fast float %2572, %2568
  %2574 = call float @dx.op.unary.f32(i32 7, float %2573)  ; Saturate(value)
  br label %2575

; <label>:2575                                    ; preds = %2530, %2525
  %2576 = phi float [ %2574, %2530 ], [ %873, %2525 ]
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = and i32 %2578, 128
  %2580 = icmp eq i32 %2579, 0
  br i1 %2580, label %2597, label %2581

; <label>:2581                                    ; preds = %2575
  %2582 = add i32 %58, 432
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = add i32 %2584, 0
  %2586 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2585, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2587 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2586, %dx.types.Handle %112, float %2526, float %2527, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2588 = extractvalue %dx.types.ResRet.f32 %2587, 0
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = and i32 %2590, 524288
  %2592 = icmp ne i32 %2591, 0
  %2593 = fcmp fast ogt float %2588, 0x3FE0101020000000
  %2594 = select i1 %2593, float 1.000000e+00, float 0.000000e+00
  %2595 = select i1 %2592, float %2594, float %2588
  %2596 = fmul fast float %2595, %2576
  br label %2597

; <label>:2597                                    ; preds = %2581, %2575
  %2598 = phi float [ %2596, %2581 ], [ %2576, %2575 ]
  %2599 = fcmp fast ult float %2598, 0x3F70101020000000
  br i1 %2599, label %3287, label %2600

; <label>:2600                                    ; preds = %2597
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = and i32 %2602, 16
  %2604 = icmp eq i32 %2603, 0
  br i1 %2604, label %2803, label %2605

; <label>:2605                                    ; preds = %2600
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2442, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = add i32 %58, 384
  %2609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2608, i32 undef)  ; BufferLoad(srv,index,wot)
  %2610 = extractvalue %dx.types.ResRet.i32 %2609, 0
  %2611 = add i32 %2610, 0
  %2612 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2611, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2613 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2612, %dx.types.Handle %111, float %2526, float %2527, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2614 = extractvalue %dx.types.ResRet.f32 %2613, 0
  %2615 = extractvalue %dx.types.ResRet.f32 %2613, 1
  %2616 = extractvalue %dx.types.ResRet.f32 %2613, 2
  %2617 = extractvalue %dx.types.ResRet.f32 %2613, 3
  %2618 = and i32 %2607, 255
  %2619 = uitofp i32 %2618 to float
  %2620 = lshr i32 %2607, 8
  %2621 = and i32 %2620, 255
  %2622 = uitofp i32 %2621 to float
  %2623 = fmul fast float %2617, %2619
  %2624 = fadd fast float %2623, %2622
  %2625 = fmul fast float %2624, 0x3F70101000000000
  %2626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2627 = extractvalue %dx.types.ResRet.i32 %2626, 0
  %2628 = and i32 %2627, 512
  %2629 = icmp eq i32 %2628, 0
  br i1 %2629, label %2638, label %2630

; <label>:2630                                    ; preds = %2605
  %2631 = add i32 %58, 464
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2631, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = add i32 %2633, 0
  %2635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2634, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2636 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2635, %dx.types.Handle %112, float %2526, float %2527, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2637 = extractvalue %dx.types.ResRet.f32 %2636, 0
  br label %2638

; <label>:2638                                    ; preds = %2630, %2605
  %2639 = phi float [ %2637, %2630 ], [ 1.000000e+00, %2605 ]
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = and i32 %2641, 33554432
  %2643 = icmp eq i32 %2642, 0
  br i1 %2643, label %2750, label %2644

; <label>:2644                                    ; preds = %2638
  %2645 = add i32 %58, 256
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2645, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = and i32 %2647, 65535
  %2649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2648)  ; LegacyF16ToF32(value)
  %2650 = lshr i32 %2647, 16
  %2651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2650)  ; LegacyF16ToF32(value)
  %2652 = add i32 %58, 260
  %2653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2652, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.i32 %2653, 0
  %2655 = and i32 %2654, 65535
  %2656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2655)  ; LegacyF16ToF32(value)
  %2657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %2658 = extractvalue %dx.types.ResRet.i32 %2657, 0
  %2659 = lshr i32 %2658, 24
  %2660 = uitofp i32 %2659 to float
  %2661 = fmul fast float %2660, 0x3F70101020000000
  %2662 = and i32 %2658, 255
  %2663 = uitofp i32 %2662 to float
  %2664 = fmul fast float %2663, 0x3F70101020000000
  %2665 = lshr i32 %2658, 8
  %2666 = and i32 %2665, 255
  %2667 = uitofp i32 %2666 to float
  %2668 = fmul fast float %2667, 0x3F70101020000000
  %2669 = lshr i32 %2658, 16
  %2670 = and i32 %2669, 255
  %2671 = uitofp i32 %2670 to float
  %2672 = fmul fast float %2671, 0x3F70101020000000
  %2673 = add i32 %58, 252
  %2674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2673, i32 undef)  ; BufferLoad(srv,index,wot)
  %2675 = extractvalue %dx.types.ResRet.i32 %2674, 0
  %2676 = lshr i32 %2675, 24
  %2677 = uitofp i32 %2676 to float
  %2678 = fmul fast float %2677, 0x3F70101020000000
  %2679 = and i32 %2675, 255
  %2680 = uitofp i32 %2679 to float
  %2681 = fmul fast float %2680, 0x3F70101020000000
  %2682 = lshr i32 %2675, 8
  %2683 = and i32 %2682, 255
  %2684 = uitofp i32 %2683 to float
  %2685 = fmul fast float %2684, 0x3F70101020000000
  %2686 = lshr i32 %2675, 16
  %2687 = and i32 %2686, 255
  %2688 = uitofp i32 %2687 to float
  %2689 = fmul fast float %2688, 0x3F70101020000000
  %2690 = bitcast float %2614 to i32
  %2691 = ashr i32 %2690, 1
  %2692 = sub nsw i32 1597463174, %2691
  %2693 = bitcast i32 %2692 to float
  %2694 = fmul fast float %2614, 5.000000e-01
  %2695 = fmul fast float %2693, %2693
  %2696 = fmul fast float %2695, %2694
  %2697 = fsub fast float 1.500000e+00, %2696
  %2698 = fmul fast float %2693, %2614
  %2699 = fmul fast float %2698, %2697
  %2700 = bitcast float %2615 to i32
  %2701 = ashr i32 %2700, 1
  %2702 = sub nsw i32 1597463174, %2701
  %2703 = bitcast i32 %2702 to float
  %2704 = fmul fast float %2615, 5.000000e-01
  %2705 = fmul fast float %2703, %2703
  %2706 = fmul fast float %2705, %2704
  %2707 = fsub fast float 1.500000e+00, %2706
  %2708 = fmul fast float %2703, %2615
  %2709 = fmul fast float %2708, %2707
  %2710 = bitcast float %2616 to i32
  %2711 = ashr i32 %2710, 1
  %2712 = sub nsw i32 1597463174, %2711
  %2713 = bitcast i32 %2712 to float
  %2714 = fmul fast float %2616, 5.000000e-01
  %2715 = fmul fast float %2713, %2713
  %2716 = fmul fast float %2715, %2714
  %2717 = fsub fast float 1.500000e+00, %2716
  %2718 = fmul fast float %2713, %2616
  %2719 = fmul fast float %2718, %2717
  %2720 = fsub fast float %2699, %2681
  %2721 = fsub fast float %2709, %2685
  %2722 = fsub fast float %2719, %2689
  %2723 = fmul fast float %2720, %2649
  %2724 = fmul fast float %2721, %2651
  %2725 = fmul fast float %2722, %2656
  %2726 = fadd fast float %2723, %2664
  %2727 = fadd fast float %2724, %2668
  %2728 = fadd fast float %2725, %2672
  %2729 = call float @dx.op.unary.f32(i32 7, float %2726)  ; Saturate(value)
  %2730 = call float @dx.op.unary.f32(i32 7, float %2727)  ; Saturate(value)
  %2731 = call float @dx.op.unary.f32(i32 7, float %2728)  ; Saturate(value)
  %2732 = fmul fast float %2729, %2729
  %2733 = fmul fast float %2730, %2730
  %2734 = fmul fast float %2731, %2731
  %2735 = fsub fast float %2732, %2614
  %2736 = fsub fast float %2733, %2615
  %2737 = fsub fast float %2734, %2616
  %2738 = fmul fast float %2735, %2639
  %2739 = fmul fast float %2736, %2639
  %2740 = fmul fast float %2737, %2639
  %2741 = fadd fast float %2738, %2614
  %2742 = fadd fast float %2739, %2615
  %2743 = fadd fast float %2740, %2616
  %2744 = fadd fast float %2661, %2625
  %2745 = fsub fast float %2744, %2678
  %2746 = call float @dx.op.unary.f32(i32 7, float %2745)  ; Saturate(value)
  %2747 = fsub fast float %2746, %2625
  %2748 = fmul fast float %2747, %2639
  %2749 = fadd fast float %2748, %2625
  br label %2803

; <label>:2750                                    ; preds = %2638
  %2751 = and i32 %2641, 134217728
  %2752 = icmp eq i32 %2751, 0
  br i1 %2752, label %2787, label %2753

; <label>:2753                                    ; preds = %2750
  %2754 = call float @dx.op.unary.f32(i32 24, float %516)  ; Sqrt(value)
  %2755 = call float @dx.op.unary.f32(i32 24, float %517)  ; Sqrt(value)
  %2756 = call float @dx.op.unary.f32(i32 24, float %518)  ; Sqrt(value)
  %2757 = fadd fast float %2754, -5.000000e-01
  %2758 = fadd fast float %2755, -5.000000e-01
  %2759 = fadd fast float %2756, -5.000000e-01
  %2760 = fmul fast float %2757, %2639
  %2761 = fmul fast float %2758, %2639
  %2762 = fmul fast float %2759, %2639
  %2763 = fadd fast float %2760, 5.000000e-01
  %2764 = fadd fast float %2761, 5.000000e-01
  %2765 = fadd fast float %2762, 5.000000e-01
  %2766 = call float @dx.op.unary.f32(i32 24, float %2614)  ; Sqrt(value)
  %2767 = call float @dx.op.unary.f32(i32 24, float %2615)  ; Sqrt(value)
  %2768 = call float @dx.op.unary.f32(i32 24, float %2616)  ; Sqrt(value)
  %2769 = fmul fast float %2763, 2.000000e+00
  %2770 = fsub fast float 1.000000e+00, %2769
  %2771 = fmul fast float %2770, %2766
  %2772 = fadd fast float %2771, %2769
  %2773 = fmul fast float %2772, %2766
  %2774 = fmul fast float %2764, 2.000000e+00
  %2775 = fsub fast float 1.000000e+00, %2774
  %2776 = fmul fast float %2775, %2767
  %2777 = fadd fast float %2776, %2774
  %2778 = fmul fast float %2777, %2767
  %2779 = fmul fast float %2765, 2.000000e+00
  %2780 = fsub fast float 1.000000e+00, %2779
  %2781 = fmul fast float %2780, %2768
  %2782 = fadd fast float %2781, %2779
  %2783 = fmul fast float %2782, %2768
  %2784 = fmul fast float %2773, %2773
  %2785 = fmul fast float %2778, %2778
  %2786 = fmul fast float %2783, %2783
  br label %2803

; <label>:2787                                    ; preds = %2750
  %2788 = fmul fast float %516, %516
  %2789 = fmul fast float %517, %517
  %2790 = fmul fast float %518, %518
  %2791 = fadd fast float %2788, -1.000000e+00
  %2792 = fadd fast float %2789, -1.000000e+00
  %2793 = fadd fast float %2790, -1.000000e+00
  %2794 = fmul fast float %2639, %2791
  %2795 = fmul fast float %2639, %2792
  %2796 = fmul fast float %2639, %2793
  %2797 = fadd fast float %2794, 1.000000e+00
  %2798 = fadd fast float %2795, 1.000000e+00
  %2799 = fadd fast float %2796, 1.000000e+00
  %2800 = fmul fast float %2797, %2614
  %2801 = fmul fast float %2798, %2615
  %2802 = fmul fast float %2799, %2616
  br label %2803

; <label>:2803                                    ; preds = %2787, %2753, %2644, %2600
  %2804 = phi float [ %2749, %2644 ], [ %2625, %2753 ], [ %2625, %2787 ], [ 0x3FA23C0BE0000000, %2600 ]
  %2805 = phi float [ %2741, %2644 ], [ %2784, %2753 ], [ %2800, %2787 ], [ 1.000000e+00, %2600 ]
  %2806 = phi float [ %2742, %2644 ], [ %2785, %2753 ], [ %2801, %2787 ], [ 1.000000e+00, %2600 ]
  %2807 = phi float [ %2743, %2644 ], [ %2786, %2753 ], [ %2802, %2787 ], [ 1.000000e+00, %2600 ]
  %2808 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2809 = extractvalue %dx.types.CBufRet.i32 %2808, 1
  %2810 = and i32 %2809, 1
  %2811 = icmp ne i32 %2810, 0
  %2812 = add i32 %58, 356
  %2813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %2814 = extractvalue %dx.types.ResRet.i32 %2813, 0
  %2815 = and i32 %2814, 32
  %2816 = icmp ne i32 %2815, 0
  %2817 = and i1 %2811, %2816
  %2818 = select i1 %2817, float 1.000000e+00, float %2805
  %2819 = select i1 %2817, float 0x3FD3333340000000, float %2806
  %2820 = select i1 %2817, float 0x3FD3333340000000, float %2807
  %2821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2822 = extractvalue %dx.types.ResRet.i32 %2821, 0
  %2823 = and i32 %2822, 32
  %2824 = icmp eq i32 %2823, 0
  br i1 %2824, label %2897, label %2825

; <label>:2825                                    ; preds = %2803
  %2826 = add i32 %58, 124
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = add i32 %58, 400
  %2830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.i32 %2830, 0
  %2832 = add i32 %2831, 0
  %2833 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2832, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2834 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2833, %dx.types.Handle %111, float %2526, float %2527, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2835 = extractvalue %dx.types.ResRet.f32 %2834, 0
  %2836 = extractvalue %dx.types.ResRet.f32 %2834, 1
  %2837 = extractvalue %dx.types.ResRet.f32 %2834, 2
  %2838 = extractvalue %dx.types.ResRet.f32 %2834, 3
  %2839 = and i32 %2828, 255
  %2840 = uitofp i32 %2839 to float
  %2841 = lshr i32 %2828, 8
  %2842 = and i32 %2841, 255
  %2843 = uitofp i32 %2842 to float
  %2844 = lshr i32 %2828, 16
  %2845 = and i32 %2844, 255
  %2846 = uitofp i32 %2845 to float
  %2847 = fmul fast float %2846, 0x3F70101000000000
  %2848 = fmul fast float %2835, %2840
  %2849 = fadd fast float %2848, %2843
  %2850 = fmul fast float %2849, 0x3F70101000000000
  %2851 = fadd fast float %2836, -5.000000e-01
  %2852 = fadd fast float %2838, -5.000000e-01
  %2853 = fmul fast float %2851, %2847
  %2854 = fmul fast float %2852, %2847
  %2855 = fadd fast float %2853, 5.000000e-01
  %2856 = fadd fast float %2854, 5.000000e-01
  %2857 = fmul fast float %2855, 2.000000e+00
  %2858 = fadd fast float %2857, -1.000000e+00
  %2859 = fmul fast float %2856, 2.000000e+00
  %2860 = fadd fast float %2859, -1.000000e+00
  %2861 = fadd fast float %2858, %2860
  %2862 = fmul fast float %2861, 5.000000e-01
  %2863 = fsub fast float %2858, %2860
  %2864 = fmul fast float %2863, 5.000000e-01
  %2865 = call float @dx.op.unary.f32(i32 6, float %2862)  ; FAbs(value)
  %2866 = fsub fast float 1.000000e+00, %2865
  %2867 = call float @dx.op.unary.f32(i32 6, float %2864)  ; FAbs(value)
  %2868 = fsub fast float %2866, %2867
  %2869 = call float @dx.op.dot3.f32(i32 55, float %2862, float %2864, float %2868, float %2862, float %2864, float %2868)  ; Dot3(ax,ay,az,bx,by,bz)
  %2870 = call float @dx.op.unary.f32(i32 25, float %2869)  ; Rsqrt(value)
  %2871 = fmul fast float %2862, %2870
  %2872 = fmul fast float %2864, %2870
  %2873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2874 = extractvalue %dx.types.ResRet.i32 %2873, 0
  %2875 = and i32 %2874, 67108864
  %2876 = icmp eq i32 %2875, 0
  br i1 %2876, label %2893, label %2877

; <label>:2877                                    ; preds = %2825
  %2878 = add i32 %58, 312
  %2879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2878, i32 undef)  ; BufferLoad(srv,index,wot)
  %2880 = extractvalue %dx.types.ResRet.i32 %2879, 0
  %2881 = and i32 %2880, 65535
  %2882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2881)  ; LegacyF16ToF32(value)
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = and i32 %2884, 65535
  %2886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2885)  ; LegacyF16ToF32(value)
  %2887 = lshr i32 %2880, 16
  %2888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2887)  ; LegacyF16ToF32(value)
  %2889 = fsub fast float %2850, %2888
  %2890 = fmul fast float %2889, %2882
  %2891 = fadd fast float %2890, %2886
  %2892 = call float @dx.op.unary.f32(i32 7, float %2891)  ; Saturate(value)
  br label %2893

; <label>:2893                                    ; preds = %2877, %2825
  %2894 = phi float [ %2892, %2877 ], [ %2850, %2825 ]
  %2895 = call float @dx.op.dot2.f32(i32 54, float %2871, float %2872, float %2430, float %2431)  ; Dot2(ax,ay,bx,by)
  %2896 = call float @dx.op.dot2.f32(i32 54, float %2871, float %2872, float %2432, float %2433)  ; Dot2(ax,ay,bx,by)
  br label %2897

; <label>:2897                                    ; preds = %2893, %2803
  %2898 = phi float [ %2894, %2893 ], [ 0x3FD6666660000000, %2803 ]
  %2899 = phi float [ %2895, %2893 ], [ 0.000000e+00, %2803 ]
  %2900 = phi float [ %2896, %2893 ], [ 0.000000e+00, %2803 ]
  %2901 = phi float [ %2837, %2893 ], [ 1.000000e+00, %2803 ]
  %2902 = add i32 %58, 192
  %2903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2902, i32 undef)  ; BufferLoad(srv,index,wot)
  %2904 = extractvalue %dx.types.ResRet.i32 %2903, 0
  %2905 = lshr i32 %2904, 22
  %2906 = shl nuw nsw i32 %2905, 5
  %2907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2906)  ; LegacyF16ToF32(value)
  %2908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2909 = extractvalue %dx.types.ResRet.i32 %2908, 0
  %2910 = and i32 %2909, 64
  %2911 = icmp eq i32 %2910, 0
  br i1 %2911, label %2945, label %2912

; <label>:2912                                    ; preds = %2897
  %2913 = add i32 %58, 416
  %2914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2913, i32 undef)  ; BufferLoad(srv,index,wot)
  %2915 = extractvalue %dx.types.ResRet.i32 %2914, 0
  %2916 = add i32 %2915, 0
  %2917 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2916, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.i32 %2918, 0
  %2920 = and i32 %2919, 131072
  %2921 = icmp eq i32 %2920, 0
  %2922 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2917, %dx.types.Handle %111, float %2526, float %2527, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2923 = extractvalue %dx.types.ResRet.f32 %2922, 0
  %2924 = extractvalue %dx.types.ResRet.f32 %2922, 1
  %2925 = extractvalue %dx.types.ResRet.f32 %2922, 2
  %2926 = fmul fast float %499, %2923
  %2927 = fmul fast float %500, %2924
  %2928 = fmul fast float %501, %2925
  br i1 %2921, label %2935, label %2929

; <label>:2929                                    ; preds = %2912
  %2930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2931 = extractvalue %dx.types.CBufRet.f32 %2930, 0
  %2932 = fmul fast float %2931, %2926
  %2933 = fmul fast float %2931, %2927
  %2934 = fmul fast float %2931, %2928
  br label %2935

; <label>:2935                                    ; preds = %2929, %2912
  %2936 = phi float [ %2932, %2929 ], [ %2926, %2912 ]
  %2937 = phi float [ %2933, %2929 ], [ %2927, %2912 ]
  %2938 = phi float [ %2934, %2929 ], [ %2928, %2912 ]
  %2939 = fmul fast float %2936, %2907
  %2940 = select i1 %268, float %2939, float %2936
  %2941 = call float @dx.op.dot3.f32(i32 55, float %2940, float %2937, float %2938, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2942 = select i1 %268, float 0.000000e+00, float %2936
  %2943 = select i1 %268, float %2941, float %2937
  %2944 = select i1 %268, float 0.000000e+00, float %2938
  br label %2945

; <label>:2945                                    ; preds = %2935, %2897
  %2946 = phi float [ %2942, %2935 ], [ 0.000000e+00, %2897 ]
  %2947 = phi float [ %2943, %2935 ], [ 0.000000e+00, %2897 ]
  %2948 = phi float [ %2944, %2935 ], [ 0.000000e+00, %2897 ]
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = and i32 %2950, 1024
  %2952 = icmp eq i32 %2951, 0
  br i1 %2952, label %2983, label %2953

; <label>:2953                                    ; preds = %2945
  %2954 = add i32 %58, 184
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2954, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %2956, 255
  %2958 = uitofp i32 %2957 to float
  %2959 = fmul fast float %2958, 0x3F70101020000000
  %2960 = lshr i32 %2956, 8
  %2961 = and i32 %2960, 255
  %2962 = uitofp i32 %2961 to float
  %2963 = fmul fast float %2962, 0x3F70101020000000
  %2964 = lshr i32 %2956, 16
  %2965 = and i32 %2964, 255
  %2966 = uitofp i32 %2965 to float
  %2967 = fmul fast float %2966, 0x3F70101020000000
  %2968 = fmul fast float %2959, %2959
  %2969 = fmul fast float %2963, %2963
  %2970 = fmul fast float %2967, %2967
  %2971 = add i32 %58, 480
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2971, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.i32 %2972, 0
  %2974 = add i32 %2973, 0
  %2975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2974, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2976 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2975, %dx.types.Handle %112, float %2526, float %2527, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2977 = extractvalue %dx.types.ResRet.f32 %2976, 0
  %2978 = extractvalue %dx.types.ResRet.f32 %2976, 1
  %2979 = extractvalue %dx.types.ResRet.f32 %2976, 2
  %2980 = fmul fast float %2968, %2977
  %2981 = fmul fast float %2969, %2978
  %2982 = fmul fast float %2970, %2979
  br label %2983

; <label>:2983                                    ; preds = %2953, %2945
  %2984 = phi float [ %2980, %2953 ], [ 0.000000e+00, %2945 ]
  %2985 = phi float [ %2981, %2953 ], [ 0.000000e+00, %2945 ]
  %2986 = phi float [ %2982, %2953 ], [ 0.000000e+00, %2945 ]
  %2987 = fcmp fast ogt float %2984, 0.000000e+00
  %2988 = fcmp fast ogt float %2985, 0.000000e+00
  %2989 = fcmp fast ogt float %2986, 0.000000e+00
  %2990 = call float @dx.op.unary.f32(i32 23, float %2984)  ; Log(value)
  %2991 = call float @dx.op.unary.f32(i32 23, float %2985)  ; Log(value)
  %2992 = call float @dx.op.unary.f32(i32 23, float %2986)  ; Log(value)
  %2993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2902, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.i32 %2993, 0
  %2995 = lshr i32 %2994, 7
  %2996 = and i32 %2995, 32752
  %2997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2996)  ; LegacyF16ToF32(value)
  %2998 = fmul fast float %2990, 0xBFE62E4300000000
  %2999 = fmul fast float %2998, %2997
  %3000 = fmul fast float %2991, 0xBFE62E4300000000
  %3001 = fmul fast float %3000, %2997
  %3002 = fmul fast float %2992, 0xBFE62E4300000000
  %3003 = fmul fast float %3002, %2997
  %3004 = select i1 %2987, float %2999, float 1.270000e+02
  %3005 = select i1 %2988, float %3001, float 1.270000e+02
  %3006 = select i1 %2989, float %3003, float 1.270000e+02
  %3007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %3008 = extractvalue %dx.types.ResRet.i32 %3007, 0
  %3009 = and i32 %3008, 10240
  %3010 = icmp eq i32 %3009, 0
  br i1 %3010, label %3031, label %3011

; <label>:3011                                    ; preds = %2983
  %3012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.i32 %3012, 0
  %3014 = and i32 %3013, 2048
  %3015 = icmp eq i32 %3014, 0
  br i1 %3015, label %3031, label %3016

; <label>:3016                                    ; preds = %3011
  %3017 = add i32 %58, 496
  %3018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.i32 %3018, 0
  %3020 = add i32 %3019, 0
  %3021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3020, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3022 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3021, %dx.types.Handle %112, float %2526, float %2527, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3023 = extractvalue %dx.types.ResRet.f32 %3022, 3
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2902, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = shl i32 %3025, 4
  %3027 = and i32 %3026, 32752
  %3028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3027)  ; LegacyF16ToF32(value)
  %3029 = fmul fast float %3028, %3023
  %3030 = call float @dx.op.binary.f32(i32 35, float %3029, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3031

; <label>:3031                                    ; preds = %3016, %3011, %2983
  %3032 = phi float [ %3030, %3016 ], [ 0x3F70101020000000, %3011 ], [ 0x3F70101020000000, %2983 ]
  %3033 = add i32 %58, 128
  %3034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3033, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.i32 %3034, 0
  %3036 = and i32 %3035, 255
  %3037 = uitofp i32 %3036 to float
  %3038 = lshr i32 %3035, 8
  %3039 = and i32 %3038, 255
  %3040 = uitofp i32 %3039 to float
  %3041 = call float @dx.op.dot3.f32(i32 55, float %2818, float %2819, float %2820, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3042 = fmul fast float %3040, %3041
  %3043 = fadd fast float %3042, %3037
  %3044 = fmul fast float %3043, 0x3F70101020000000
  %3045 = call float @dx.op.unary.f32(i32 7, float %3044)  ; Saturate(value)
  br i1 %2419, label %3046, label %3081

; <label>:3046                                    ; preds = %3031
  %3047 = fmul fast float %3032, 2.000000e+00
  %3048 = fcmp fast olt float %3004, 1.270000e+02
  %3049 = fcmp fast olt float %3005, 1.270000e+02
  %3050 = fcmp fast olt float %3006, 1.270000e+02
  %3051 = fmul fast float %3004, 0xBFF7154760000000
  %3052 = fmul fast float %3051, %3047
  %3053 = fmul fast float %3005, 0xBFF7154760000000
  %3054 = fmul fast float %3053, %3047
  %3055 = fmul fast float %3006, 0xBFF7154760000000
  %3056 = fmul fast float %3055, %3047
  %3057 = call float @dx.op.unary.f32(i32 21, float %3052)  ; Exp(value)
  %3058 = call float @dx.op.unary.f32(i32 21, float %3054)  ; Exp(value)
  %3059 = call float @dx.op.unary.f32(i32 21, float %3056)  ; Exp(value)
  %3060 = call float @dx.op.unary.f32(i32 7, float %3057)  ; Saturate(value)
  %3061 = call float @dx.op.unary.f32(i32 7, float %3058)  ; Saturate(value)
  %3062 = call float @dx.op.unary.f32(i32 7, float %3059)  ; Saturate(value)
  %3063 = fadd fast float %3060, -1.000000e+00
  %3064 = select i1 %3048, float %3063, float -1.000000e+00
  %3065 = fadd fast float %3061, -1.000000e+00
  %3066 = select i1 %3049, float %3065, float -1.000000e+00
  %3067 = fadd fast float %3062, -1.000000e+00
  %3068 = select i1 %3050, float %3067, float -1.000000e+00
  %3069 = fmul fast float %3064, %2598
  %3070 = fmul fast float %3066, %2598
  %3071 = fmul fast float %3068, %2598
  %3072 = fadd fast float %3069, 1.000000e+00
  %3073 = fadd fast float %3070, 1.000000e+00
  %3074 = fadd fast float %3071, 1.000000e+00
  %3075 = fmul fast float %3072, %2407
  %3076 = fmul fast float %3073, %2408
  %3077 = fmul fast float %3074, %2409
  %3078 = fmul fast float %3072, %2404
  %3079 = fmul fast float %3073, %2405
  %3080 = fmul fast float %3074, %2406
  br label %3081

; <label>:3081                                    ; preds = %3046, %3031
  %3082 = phi float [ %3078, %3046 ], [ %2404, %3031 ]
  %3083 = phi float [ %3079, %3046 ], [ %2405, %3031 ]
  %3084 = phi float [ %3080, %3046 ], [ %2406, %3031 ]
  %3085 = phi float [ %3075, %3046 ], [ %2407, %3031 ]
  %3086 = phi float [ %3076, %3046 ], [ %2408, %3031 ]
  %3087 = phi float [ %3077, %3046 ], [ %2409, %3031 ]
  %3088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %3089 = extractvalue %dx.types.ResRet.i32 %3088, 0
  %3090 = and i32 %3089, 3
  %3091 = icmp eq i32 %3090, 3
  br i1 %3091, label %3170, label %3092

; <label>:3092                                    ; preds = %3081
  %3093 = and i32 %3089, 16
  %3094 = icmp ne i32 %3093, 0
  %3095 = select i1 %3094, float %2598, float 0.000000e+00
  %3096 = icmp eq i32 %3090, 0
  br i1 %3096, label %3097, label %3125

; <label>:3097                                    ; preds = %3092
  %3098 = and i32 %3089, 64
  %3099 = icmp ne i32 %3098, 0
  %3100 = select i1 %3099, float %2598, float 0.000000e+00
  %3101 = fsub fast float %2818, %3085
  %3102 = fsub fast float %2819, %3086
  %3103 = fsub fast float %2820, %3087
  %3104 = fmul fast float %3095, %3101
  %3105 = fmul fast float %3095, %3102
  %3106 = fmul fast float %3095, %3103
  %3107 = fadd fast float %3104, %3085
  %3108 = fadd fast float %3105, %3086
  %3109 = fadd fast float %3106, %3087
  %3110 = fsub fast float %2804, %2413
  %3111 = fmul fast float %3095, %3110
  %3112 = fadd fast float %3111, %2413
  %3113 = fsub fast float %2946, %3082
  %3114 = fsub fast float %2947, %3083
  %3115 = fsub fast float %2948, %3084
  %3116 = fmul fast float %3100, %3113
  %3117 = fmul fast float %3100, %3114
  %3118 = fmul fast float %3100, %3115
  %3119 = fadd fast float %3116, %3082
  %3120 = fadd fast float %3117, %3083
  %3121 = fadd fast float %3118, %3084
  %3122 = fsub fast float %3045, %2417
  %3123 = fmul fast float %3095, %3122
  %3124 = fadd fast float %3123, %2417
  br label %3170

; <label>:3125                                    ; preds = %3092
  %3126 = icmp eq i32 %3090, 1
  br i1 %3126, label %3127, label %3140

; <label>:3127                                    ; preds = %3125
  %3128 = fadd fast float %2818, -1.000000e+00
  %3129 = fadd fast float %2819, -1.000000e+00
  %3130 = fadd fast float %2820, -1.000000e+00
  %3131 = fmul fast float %3095, %3128
  %3132 = fmul fast float %3095, %3129
  %3133 = fmul fast float %3095, %3130
  %3134 = fadd fast float %3131, 1.000000e+00
  %3135 = fadd fast float %3132, 1.000000e+00
  %3136 = fadd fast float %3133, 1.000000e+00
  %3137 = fmul fast float %3134, %3085
  %3138 = fmul fast float %3135, %3086
  %3139 = fmul fast float %3136, %3087
  br label %3170

; <label>:3140                                    ; preds = %3125
  %3141 = icmp eq i32 %3090, 2
  br i1 %3141, label %3142, label %3170

; <label>:3142                                    ; preds = %3140
  %3143 = call float @dx.op.unary.f32(i32 24, float %2818)  ; Sqrt(value)
  %3144 = call float @dx.op.unary.f32(i32 24, float %2819)  ; Sqrt(value)
  %3145 = call float @dx.op.unary.f32(i32 24, float %2820)  ; Sqrt(value)
  %3146 = fadd fast float %3143, -5.000000e-01
  %3147 = fadd fast float %3144, -5.000000e-01
  %3148 = fadd fast float %3145, -5.000000e-01
  %3149 = fmul fast float %3146, %3095
  %3150 = fmul fast float %3147, %3095
  %3151 = fmul fast float %3148, %3095
  %3152 = fadd fast float %3149, 5.000000e-01
  %3153 = fadd fast float %3150, 5.000000e-01
  %3154 = fadd fast float %3151, 5.000000e-01
  %3155 = fmul fast float %3152, 2.000000e+00
  %3156 = fsub fast float 1.000000e+00, %3155
  %3157 = fmul fast float %3156, %3085
  %3158 = fadd fast float %3157, %3155
  %3159 = fmul fast float %3158, %3085
  %3160 = fmul fast float %3153, 2.000000e+00
  %3161 = fsub fast float 1.000000e+00, %3160
  %3162 = fmul fast float %3161, %3086
  %3163 = fadd fast float %3162, %3160
  %3164 = fmul fast float %3163, %3086
  %3165 = fmul fast float %3154, 2.000000e+00
  %3166 = fsub fast float 1.000000e+00, %3165
  %3167 = fmul fast float %3166, %3087
  %3168 = fadd fast float %3167, %3165
  %3169 = fmul fast float %3168, %3087
  br label %3170

; <label>:3170                                    ; preds = %3142, %3140, %3127, %3097, %3081
  %3171 = phi float [ %3082, %3081 ], [ %3082, %3142 ], [ %3082, %3140 ], [ %3082, %3127 ], [ %3119, %3097 ]
  %3172 = phi float [ %3083, %3081 ], [ %3083, %3142 ], [ %3083, %3140 ], [ %3083, %3127 ], [ %3120, %3097 ]
  %3173 = phi float [ %3084, %3081 ], [ %3084, %3142 ], [ %3084, %3140 ], [ %3084, %3127 ], [ %3121, %3097 ]
  %3174 = phi float [ %3085, %3081 ], [ %3159, %3142 ], [ %3085, %3140 ], [ %3137, %3127 ], [ %3107, %3097 ]
  %3175 = phi float [ %3086, %3081 ], [ %3164, %3142 ], [ %3086, %3140 ], [ %3138, %3127 ], [ %3108, %3097 ]
  %3176 = phi float [ %3087, %3081 ], [ %3169, %3142 ], [ %3087, %3140 ], [ %3139, %3127 ], [ %3109, %3097 ]
  %3177 = phi float [ %2413, %3081 ], [ %2413, %3142 ], [ %2413, %3140 ], [ %2413, %3127 ], [ %3112, %3097 ]
  %3178 = phi float [ %2417, %3081 ], [ %2417, %3142 ], [ %2417, %3140 ], [ %2417, %3127 ], [ %3124, %3097 ]
  %3179 = and i32 %3089, 12
  %3180 = icmp eq i32 %3179, 12
  br i1 %3180, label %3287, label %3181

; <label>:3181                                    ; preds = %3170
  %3182 = and i32 %3089, 2097184
  %3183 = icmp eq i32 %3182, 2097184
  %3184 = select i1 %3183, float %2598, float 0.000000e+00
  %3185 = and i32 %3089, 4194336
  %3186 = icmp eq i32 %3185, 4194336
  %3187 = select i1 %3186, float %2598, float 0.000000e+00
  %3188 = and i32 %3089, 8388640
  %3189 = icmp eq i32 %3188, 8388640
  %3190 = select i1 %3189, float %2598, float 0.000000e+00
  %3191 = and i32 %3089, 1024
  %3192 = icmp ne i32 %3191, 0
  %3193 = select i1 %3192, float %2598, float 0.000000e+00
  %3194 = and i32 %3089, 2048
  %3195 = icmp ne i32 %3194, 0
  %3196 = select i1 %3195, float %2598, float 0.000000e+00
  %3197 = icmp eq i32 %3179, 0
  br i1 %3197, label %3198, label %3223

; <label>:3198                                    ; preds = %3181
  %3199 = fsub fast float %2899, %2402
  %3200 = fsub fast float %2900, %2403
  %3201 = fmul fast float %3184, %3199
  %3202 = fmul fast float %3184, %3200
  %3203 = fadd fast float %3201, %2402
  %3204 = fadd fast float %3202, %2403
  %3205 = fsub fast float %2901, %2415
  %3206 = fmul fast float %3187, %3205
  %3207 = fadd fast float %3206, %2415
  %3208 = fsub fast float %2898, %2414
  %3209 = fmul fast float %3190, %3208
  %3210 = fadd fast float %3209, %2414
  %3211 = fsub fast float %3004, %2410
  %3212 = fsub fast float %3005, %2411
  %3213 = fsub fast float %3006, %2412
  %3214 = fmul fast float %3193, %3211
  %3215 = fmul fast float %3193, %3212
  %3216 = fmul fast float %3193, %3213
  %3217 = fadd fast float %3214, %2410
  %3218 = fadd fast float %3215, %2411
  %3219 = fadd fast float %3216, %2412
  %3220 = fsub fast float %3032, %2416
  %3221 = fmul fast float %3196, %3220
  %3222 = fadd fast float %3221, %2416
  br label %3287

; <label>:3223                                    ; preds = %3181
  %3224 = icmp eq i32 %3179, 4
  br i1 %3224, label %3225, label %3265

; <label>:3225                                    ; preds = %3223
  %3226 = fmul fast float %3184, %2899
  %3227 = fmul fast float %3184, %2900
  %3228 = fadd fast float %3226, %2402
  %3229 = fadd fast float %3227, %2403
  %3230 = call float @dx.op.binary.f32(i32 36, float %2415, float %2901)  ; FMin(a,b)
  %3231 = fsub fast float %3230, %2415
  %3232 = fmul fast float %3231, %3187
  %3233 = fadd fast float %3232, %2415
  %3234 = fadd fast float %2898, %2414
  %3235 = fmul fast float %3234, 0x3FF337FAE0000000
  %3236 = fmul fast float %2414, %2414
  %3237 = fmul fast float %2898, %2898
  %3238 = fadd fast float %3237, %3236
  %3239 = fmul fast float %3238, 0x3FE5152B00000000
  %3240 = fmul fast float %2414, 0xBFCC1F85E0000000
  %3241 = fmul fast float %3240, %2898
  %3242 = fadd fast float %3241, 0xBFE1363700000000
  %3243 = fadd fast float %3242, %3235
  %3244 = fsub fast float %3243, %3239
  %3245 = fmul fast float %3234, 0x3FBA6F0D00000000
  %3246 = fmul fast float %3238, 0x3FD0432880000000
  %3247 = fmul fast float %2414, 0xBFEF110800000000
  %3248 = fmul fast float %3247, %2898
  %3249 = fadd fast float %3248, 1.000000e+00
  %3250 = fsub fast float %3249, %3245
  %3251 = fadd fast float %3250, %3246
  %3252 = fdiv fast float %3244, %3251
  %3253 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  %3254 = fsub fast float %3253, %2414
  %3255 = fmul fast float %3254, %3190
  %3256 = fadd fast float %3255, %2414
  %3257 = fmul fast float %3193, %3004
  %3258 = fmul fast float %3193, %3005
  %3259 = fmul fast float %3193, %3006
  %3260 = fadd fast float %3257, %2410
  %3261 = fadd fast float %3258, %2411
  %3262 = fadd fast float %3259, %2412
  %3263 = fmul fast float %3196, %3032
  %3264 = fadd fast float %3263, %2416
  br label %3287

; <label>:3265                                    ; preds = %3223
  %3266 = icmp eq i32 %3179, 8
  br i1 %3266, label %3267, label %3287

; <label>:3267                                    ; preds = %3265
  %3268 = fmul fast float %3184, %2899
  %3269 = fmul fast float %3184, %2900
  %3270 = fadd fast float %3268, %2402
  %3271 = fadd fast float %3269, %2403
  %3272 = call float @dx.op.binary.f32(i32 36, float %2415, float %2901)  ; FMin(a,b)
  %3273 = fsub fast float %3272, %2415
  %3274 = fmul fast float %3273, %3187
  %3275 = fadd fast float %3274, %2415
  %3276 = fsub fast float %2898, %2414
  %3277 = fmul fast float %3190, %3276
  %3278 = fadd fast float %3277, %2414
  %3279 = fmul fast float %3193, %3004
  %3280 = fmul fast float %3193, %3005
  %3281 = fmul fast float %3193, %3006
  %3282 = fadd fast float %3279, %2410
  %3283 = fadd fast float %3280, %2411
  %3284 = fadd fast float %3281, %2412
  %3285 = fmul fast float %3196, %3032
  %3286 = fadd fast float %3285, %2416
  br label %3287

; <label>:3287                                    ; preds = %3267, %3265, %3225, %3198, %3170, %2597, %2418, %2401
  %3288 = phi float [ %2402, %3170 ], [ %2402, %2597 ], [ %2402, %2401 ], [ %3270, %3267 ], [ %2402, %3265 ], [ %3228, %3225 ], [ %3203, %3198 ], [ %2402, %2418 ]
  %3289 = phi float [ %2403, %3170 ], [ %2403, %2597 ], [ %2403, %2401 ], [ %3271, %3267 ], [ %2403, %3265 ], [ %3229, %3225 ], [ %3204, %3198 ], [ %2403, %2418 ]
  %3290 = phi float [ %3171, %3170 ], [ %2404, %2597 ], [ %2404, %2401 ], [ %3171, %3267 ], [ %3171, %3265 ], [ %3171, %3225 ], [ %3171, %3198 ], [ %2404, %2418 ]
  %3291 = phi float [ %3172, %3170 ], [ %2405, %2597 ], [ %2405, %2401 ], [ %3172, %3267 ], [ %3172, %3265 ], [ %3172, %3225 ], [ %3172, %3198 ], [ %2405, %2418 ]
  %3292 = phi float [ %3173, %3170 ], [ %2406, %2597 ], [ %2406, %2401 ], [ %3173, %3267 ], [ %3173, %3265 ], [ %3173, %3225 ], [ %3173, %3198 ], [ %2406, %2418 ]
  %3293 = phi float [ %3174, %3170 ], [ %2407, %2597 ], [ %2407, %2401 ], [ %3174, %3267 ], [ %3174, %3265 ], [ %3174, %3225 ], [ %3174, %3198 ], [ %2407, %2418 ]
  %3294 = phi float [ %3175, %3170 ], [ %2408, %2597 ], [ %2408, %2401 ], [ %3175, %3267 ], [ %3175, %3265 ], [ %3175, %3225 ], [ %3175, %3198 ], [ %2408, %2418 ]
  %3295 = phi float [ %3176, %3170 ], [ %2409, %2597 ], [ %2409, %2401 ], [ %3176, %3267 ], [ %3176, %3265 ], [ %3176, %3225 ], [ %3176, %3198 ], [ %2409, %2418 ]
  %3296 = phi float [ %2410, %3170 ], [ %2410, %2597 ], [ %2410, %2401 ], [ %3282, %3267 ], [ %2410, %3265 ], [ %3260, %3225 ], [ %3217, %3198 ], [ %2410, %2418 ]
  %3297 = phi float [ %2411, %3170 ], [ %2411, %2597 ], [ %2411, %2401 ], [ %3283, %3267 ], [ %2411, %3265 ], [ %3261, %3225 ], [ %3218, %3198 ], [ %2411, %2418 ]
  %3298 = phi float [ %2412, %3170 ], [ %2412, %2597 ], [ %2412, %2401 ], [ %3284, %3267 ], [ %2412, %3265 ], [ %3262, %3225 ], [ %3219, %3198 ], [ %2412, %2418 ]
  %3299 = phi float [ %3177, %3170 ], [ %2413, %2597 ], [ %2413, %2401 ], [ %3177, %3267 ], [ %3177, %3265 ], [ %3177, %3225 ], [ %3177, %3198 ], [ %2413, %2418 ]
  %3300 = phi float [ %2414, %3170 ], [ %2414, %2597 ], [ %2414, %2401 ], [ %3278, %3267 ], [ %2414, %3265 ], [ %3256, %3225 ], [ %3210, %3198 ], [ %2414, %2418 ]
  %3301 = phi float [ %2415, %3170 ], [ %2415, %2597 ], [ %2415, %2401 ], [ %3275, %3267 ], [ %2415, %3265 ], [ %3233, %3225 ], [ %3207, %3198 ], [ %2415, %2418 ]
  %3302 = phi float [ %2416, %3170 ], [ %2416, %2597 ], [ %2416, %2401 ], [ %3286, %3267 ], [ %2416, %3265 ], [ %3264, %3225 ], [ %3222, %3198 ], [ %2416, %2418 ]
  %3303 = phi float [ %3178, %3170 ], [ %2417, %2597 ], [ %2417, %2401 ], [ %3178, %3267 ], [ %3178, %3265 ], [ %3178, %3225 ], [ %3178, %3198 ], [ %2417, %2418 ]
  br i1 %658, label %4173, label %3304

; <label>:3304                                    ; preds = %3287
  %3305 = icmp ult i32 %887, 4
  %3306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.i32 %3306, 0
  %3308 = add i32 %58, 76
  %3309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.i32 %3309, 0
  %3311 = or i32 %3310, %3307
  %3312 = icmp eq i32 %3311, 0
  br i1 %3312, label %4173, label %3313

; <label>:3313                                    ; preds = %3304
  %3314 = and i32 %3307, 262144
  %3315 = icmp ne i32 %3314, 0
  %3316 = select i1 %3315, float %65, float 1.000000e+00
  %3317 = select i1 %3315, float %66, float 0.000000e+00
  %3318 = select i1 %3315, float %67, float 0.000000e+00
  %3319 = select i1 %3315, float %68, float 1.000000e+00
  %3320 = select i1 %3315, float %69, float %97
  %3321 = select i1 %3315, float %70, float %98
  %3322 = add i32 %58, 332
  %3323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3322, i32 undef)  ; BufferLoad(srv,index,wot)
  %3324 = extractvalue %dx.types.ResRet.i32 %3323, 0
  %3325 = lshr i32 %3324, 16
  %3326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3325)  ; LegacyF16ToF32(value)
  %3327 = fmul fast float %3326, 0x3F50624DE0000000
  %3328 = add i32 %58, 136
  %3329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3328, i32 undef)  ; BufferLoad(srv,index,wot)
  %3330 = extractvalue %dx.types.ResRet.i32 %3329, 0
  %3331 = lshr i32 %3330, 16
  %3332 = and i32 %3331, 255
  %3333 = lshr i32 %3330, 24
  %3334 = add i32 %58, 340
  %3335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3334, i32 undef)  ; BufferLoad(srv,index,wot)
  %3336 = extractvalue %dx.types.ResRet.i32 %3335, 0
  %3337 = and i32 %3336, 65535
  %3338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3337)  ; LegacyF16ToF32(value)
  %3339 = lshr i32 %3336, 16
  %3340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3339)  ; LegacyF16ToF32(value)
  %3341 = add i32 %58, 80
  %3342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3341, i32 undef)  ; BufferLoad(srv,index,wot)
  %3343 = extractvalue %dx.types.ResRet.i32 %3342, 0
  %3344 = lshr i32 %3343, 22
  %3345 = shl nuw nsw i32 %3344, 5
  %3346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3345)  ; LegacyF16ToF32(value)
  %3347 = shl i32 %3343, 4
  %3348 = and i32 %3347, 32752
  %3349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3348)  ; LegacyF16ToF32(value)
  %3350 = lshr i32 %3343, 7
  %3351 = and i32 %3350, 32752
  %3352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3351)  ; LegacyF16ToF32(value)
  %3353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3354 = extractvalue %dx.types.CBufRet.f32 %3353, 3
  %3355 = fmul fast float %3354, 1.000000e+03
  %3356 = fmul fast float %3355, %647
  %3357 = call float @dx.op.unary.f32(i32 22, float %3356)  ; Frc(value)
  %3358 = fadd fast float %3357, %635
  %3359 = fmul fast float %3355, %649
  %3360 = call float @dx.op.unary.f32(i32 22, float %3359)  ; Frc(value)
  %3361 = fadd fast float %3360, %636
  %3362 = fmul fast float %3327, %3355
  %3363 = call float @dx.op.unary.f32(i32 22, float %3362)  ; Frc(value)
  %3364 = fmul fast float %3363, 0x401921FB60000000
  %3365 = fadd fast float %3364, %3346
  %3366 = call float @dx.op.unary.f32(i32 13, float %3365)  ; Sin(value)
  %3367 = call float @dx.op.unary.f32(i32 12, float %3365)  ; Cos(value)
  %3368 = fsub fast float -0.000000e+00, %3366
  %3369 = fadd fast float %3320, -5.000000e-01
  %3370 = fadd fast float %3321, -5.000000e-01
  %3371 = fmul fast float %3338, %3369
  %3372 = fmul fast float %3340, %3370
  %3373 = fadd fast float %3371, 5.000000e-01
  %3374 = fadd fast float %3372, 5.000000e-01
  %3375 = fmul fast float %3349, %3373
  %3376 = fmul fast float %3352, %3374
  %3377 = fmul fast float %3367, %3375
  %3378 = call float @dx.op.tertiary.f32(i32 46, float %3368, float %3376, float %3377)  ; FMad(a,b,c)
  %3379 = fmul fast float %3366, %3375
  %3380 = call float @dx.op.tertiary.f32(i32 46, float %3367, float %3376, float %3379)  ; FMad(a,b,c)
  %3381 = fadd fast float %3358, %3378
  %3382 = fadd fast float %3361, %3380
  %3383 = icmp ugt i32 %3332, 1
  %3384 = icmp ugt i32 %3330, 33554431
  %3385 = or i1 %3384, %3383
  br i1 %3385, label %3386, label %3411

; <label>:3386                                    ; preds = %3313
  %3387 = add i32 %58, 276
  %3388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3389 = extractvalue %dx.types.ResRet.i32 %3388, 0
  %3390 = lshr i32 %3389, 16
  %3391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3390)  ; LegacyF16ToF32(value)
  %3392 = fmul fast float %3354, %3391
  %3393 = call float @dx.op.unary.f32(i32 22, float %3392)  ; Frc(value)
  %3394 = mul nuw nsw i32 %3332, %3333
  %3395 = uitofp i32 %3394 to float
  %3396 = fmul fast float %3393, %3395
  %3397 = call float @dx.op.unary.f32(i32 27, float %3396)  ; Round_ni(value)
  %3398 = fptoui float %3397 to i32
  %3399 = urem i32 %3398, %3332
  %3400 = udiv i32 %3398, %3333
  %3401 = call float @dx.op.unary.f32(i32 22, float %3381)  ; Frc(value)
  %3402 = call float @dx.op.unary.f32(i32 22, float %3382)  ; Frc(value)
  %3403 = uitofp i32 %3399 to float
  %3404 = uitofp i32 %3400 to float
  %3405 = fadd fast float %3401, %3403
  %3406 = fadd fast float %3402, %3404
  %3407 = uitofp i32 %3332 to float
  %3408 = uitofp i32 %3333 to float
  %3409 = fdiv fast float %3405, %3407
  %3410 = fdiv fast float %3406, %3408
  br label %3411

; <label>:3411                                    ; preds = %3386, %3313
  %3412 = phi float [ %3409, %3386 ], [ %3381, %3313 ]
  %3413 = phi float [ %3410, %3386 ], [ %3382, %3313 ]
  %3414 = and i32 %3307, 256
  %3415 = icmp eq i32 %3414, 0
  br i1 %3415, label %3461, label %3416

; <label>:3416                                    ; preds = %3411
  %3417 = add i32 %58, 452
  %3418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3417, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.i32 %3418, 0
  %3420 = add i32 %3419, 0
  %3421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3420, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3422 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3421, %dx.types.Handle %112, float %3412, float %3413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3423 = extractvalue %dx.types.ResRet.f32 %3422, 0
  %3424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.i32 %3424, 0
  %3426 = shl i32 %3425, 4
  %3427 = and i32 %3426, 32752
  %3428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3427)  ; LegacyF16ToF32(value)
  %3429 = lshr i32 %3425, 7
  %3430 = and i32 %3429, 32752
  %3431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3430)  ; LegacyF16ToF32(value)
  %3432 = fsub fast float 1.000000e+00, %882
  %3433 = call float @dx.op.binary.f32(i32 35, float %3432, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3434 = bitcast float %882 to i32
  %3435 = sitofp i32 %3434 to float
  %3436 = fadd fast float %3435, 0xC1CFBF8940000000
  %3437 = fmul fast float %3431, %3436
  %3438 = fadd fast float %3437, 0x41CFBF8940000000
  %3439 = fptosi float %3438 to i32
  %3440 = bitcast i32 %3439 to float
  %3441 = bitcast float %3433 to i32
  %3442 = sitofp i32 %3441 to float
  %3443 = fadd fast float %3442, 0xC1CFBF8940000000
  %3444 = fmul fast float %3443, %3431
  %3445 = fadd fast float %3444, 0x41CFBF8940000000
  %3446 = fptosi float %3445 to i32
  %3447 = bitcast i32 %3446 to float
  %3448 = fmul fast float %3440, %3428
  %3449 = fmul fast float %3447, %3428
  %3450 = fsub fast float %3433, %3448
  %3451 = fadd fast float %3449, %3433
  %3452 = call float @dx.op.unary.f32(i32 7, float %3450)  ; Saturate(value)
  %3453 = call float @dx.op.unary.f32(i32 7, float %3451)  ; Saturate(value)
  %3454 = fsub fast float %3423, %3452
  %3455 = fsub fast float %3453, %3452
  %3456 = bitcast float %3455 to i32
  %3457 = sub nsw i32 2129859010, %3456
  %3458 = bitcast i32 %3457 to float
  %3459 = fmul fast float %3458, %3454
  %3460 = call float @dx.op.unary.f32(i32 7, float %3459)  ; Saturate(value)
  br label %3461

; <label>:3461                                    ; preds = %3416, %3411
  %3462 = phi float [ %3460, %3416 ], [ %882, %3411 ]
  %3463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.i32 %3463, 0
  %3465 = and i32 %3464, 128
  %3466 = icmp eq i32 %3465, 0
  br i1 %3466, label %3483, label %3467

; <label>:3467                                    ; preds = %3461
  %3468 = add i32 %58, 436
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = add i32 %3470, 0
  %3472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3471, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3473 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3472, %dx.types.Handle %112, float %3412, float %3413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3474 = extractvalue %dx.types.ResRet.f32 %3473, 0
  %3475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3476 = extractvalue %dx.types.ResRet.i32 %3475, 0
  %3477 = and i32 %3476, 524288
  %3478 = icmp ne i32 %3477, 0
  %3479 = fcmp fast ogt float %3474, 0x3FE0101020000000
  %3480 = select i1 %3479, float 1.000000e+00, float 0.000000e+00
  %3481 = select i1 %3478, float %3480, float %3474
  %3482 = fmul fast float %3481, %3462
  br label %3483

; <label>:3483                                    ; preds = %3467, %3461
  %3484 = phi float [ %3482, %3467 ], [ %3462, %3461 ]
  %3485 = fcmp fast ult float %3484, 0x3F70101020000000
  br i1 %3485, label %4173, label %3486

; <label>:3486                                    ; preds = %3483
  %3487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3488 = extractvalue %dx.types.ResRet.i32 %3487, 0
  %3489 = and i32 %3488, 16
  %3490 = icmp eq i32 %3489, 0
  br i1 %3490, label %3689, label %3491

; <label>:3491                                    ; preds = %3486
  %3492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3328, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.i32 %3492, 0
  %3494 = add i32 %58, 388
  %3495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3494, i32 undef)  ; BufferLoad(srv,index,wot)
  %3496 = extractvalue %dx.types.ResRet.i32 %3495, 0
  %3497 = add i32 %3496, 0
  %3498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3497, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3499 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3498, %dx.types.Handle %111, float %3412, float %3413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3500 = extractvalue %dx.types.ResRet.f32 %3499, 0
  %3501 = extractvalue %dx.types.ResRet.f32 %3499, 1
  %3502 = extractvalue %dx.types.ResRet.f32 %3499, 2
  %3503 = extractvalue %dx.types.ResRet.f32 %3499, 3
  %3504 = and i32 %3493, 255
  %3505 = uitofp i32 %3504 to float
  %3506 = lshr i32 %3493, 8
  %3507 = and i32 %3506, 255
  %3508 = uitofp i32 %3507 to float
  %3509 = fmul fast float %3503, %3505
  %3510 = fadd fast float %3509, %3508
  %3511 = fmul fast float %3510, 0x3F70101000000000
  %3512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3513 = extractvalue %dx.types.ResRet.i32 %3512, 0
  %3514 = and i32 %3513, 512
  %3515 = icmp eq i32 %3514, 0
  br i1 %3515, label %3524, label %3516

; <label>:3516                                    ; preds = %3491
  %3517 = add i32 %58, 468
  %3518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3517, i32 undef)  ; BufferLoad(srv,index,wot)
  %3519 = extractvalue %dx.types.ResRet.i32 %3518, 0
  %3520 = add i32 %3519, 0
  %3521 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3520, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3522 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3521, %dx.types.Handle %112, float %3412, float %3413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3523 = extractvalue %dx.types.ResRet.f32 %3522, 0
  br label %3524

; <label>:3524                                    ; preds = %3516, %3491
  %3525 = phi float [ %3523, %3516 ], [ 1.000000e+00, %3491 ]
  %3526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.i32 %3526, 0
  %3528 = and i32 %3527, 33554432
  %3529 = icmp eq i32 %3528, 0
  br i1 %3529, label %3636, label %3530

; <label>:3530                                    ; preds = %3524
  %3531 = add i32 %58, 272
  %3532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3531, i32 undef)  ; BufferLoad(srv,index,wot)
  %3533 = extractvalue %dx.types.ResRet.i32 %3532, 0
  %3534 = and i32 %3533, 65535
  %3535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3534)  ; LegacyF16ToF32(value)
  %3536 = lshr i32 %3533, 16
  %3537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3536)  ; LegacyF16ToF32(value)
  %3538 = add i32 %58, 276
  %3539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3540 = extractvalue %dx.types.ResRet.i32 %3539, 0
  %3541 = and i32 %3540, 65535
  %3542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3541)  ; LegacyF16ToF32(value)
  %3543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %3544 = extractvalue %dx.types.ResRet.i32 %3543, 0
  %3545 = lshr i32 %3544, 24
  %3546 = uitofp i32 %3545 to float
  %3547 = fmul fast float %3546, 0x3F70101020000000
  %3548 = and i32 %3544, 255
  %3549 = uitofp i32 %3548 to float
  %3550 = fmul fast float %3549, 0x3F70101020000000
  %3551 = lshr i32 %3544, 8
  %3552 = and i32 %3551, 255
  %3553 = uitofp i32 %3552 to float
  %3554 = fmul fast float %3553, 0x3F70101020000000
  %3555 = lshr i32 %3544, 16
  %3556 = and i32 %3555, 255
  %3557 = uitofp i32 %3556 to float
  %3558 = fmul fast float %3557, 0x3F70101020000000
  %3559 = add i32 %58, 268
  %3560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3559, i32 undef)  ; BufferLoad(srv,index,wot)
  %3561 = extractvalue %dx.types.ResRet.i32 %3560, 0
  %3562 = lshr i32 %3561, 24
  %3563 = uitofp i32 %3562 to float
  %3564 = fmul fast float %3563, 0x3F70101020000000
  %3565 = and i32 %3561, 255
  %3566 = uitofp i32 %3565 to float
  %3567 = fmul fast float %3566, 0x3F70101020000000
  %3568 = lshr i32 %3561, 8
  %3569 = and i32 %3568, 255
  %3570 = uitofp i32 %3569 to float
  %3571 = fmul fast float %3570, 0x3F70101020000000
  %3572 = lshr i32 %3561, 16
  %3573 = and i32 %3572, 255
  %3574 = uitofp i32 %3573 to float
  %3575 = fmul fast float %3574, 0x3F70101020000000
  %3576 = bitcast float %3500 to i32
  %3577 = ashr i32 %3576, 1
  %3578 = sub nsw i32 1597463174, %3577
  %3579 = bitcast i32 %3578 to float
  %3580 = fmul fast float %3500, 5.000000e-01
  %3581 = fmul fast float %3579, %3579
  %3582 = fmul fast float %3581, %3580
  %3583 = fsub fast float 1.500000e+00, %3582
  %3584 = fmul fast float %3579, %3500
  %3585 = fmul fast float %3584, %3583
  %3586 = bitcast float %3501 to i32
  %3587 = ashr i32 %3586, 1
  %3588 = sub nsw i32 1597463174, %3587
  %3589 = bitcast i32 %3588 to float
  %3590 = fmul fast float %3501, 5.000000e-01
  %3591 = fmul fast float %3589, %3589
  %3592 = fmul fast float %3591, %3590
  %3593 = fsub fast float 1.500000e+00, %3592
  %3594 = fmul fast float %3589, %3501
  %3595 = fmul fast float %3594, %3593
  %3596 = bitcast float %3502 to i32
  %3597 = ashr i32 %3596, 1
  %3598 = sub nsw i32 1597463174, %3597
  %3599 = bitcast i32 %3598 to float
  %3600 = fmul fast float %3502, 5.000000e-01
  %3601 = fmul fast float %3599, %3599
  %3602 = fmul fast float %3601, %3600
  %3603 = fsub fast float 1.500000e+00, %3602
  %3604 = fmul fast float %3599, %3502
  %3605 = fmul fast float %3604, %3603
  %3606 = fsub fast float %3585, %3567
  %3607 = fsub fast float %3595, %3571
  %3608 = fsub fast float %3605, %3575
  %3609 = fmul fast float %3606, %3535
  %3610 = fmul fast float %3607, %3537
  %3611 = fmul fast float %3608, %3542
  %3612 = fadd fast float %3609, %3550
  %3613 = fadd fast float %3610, %3554
  %3614 = fadd fast float %3611, %3558
  %3615 = call float @dx.op.unary.f32(i32 7, float %3612)  ; Saturate(value)
  %3616 = call float @dx.op.unary.f32(i32 7, float %3613)  ; Saturate(value)
  %3617 = call float @dx.op.unary.f32(i32 7, float %3614)  ; Saturate(value)
  %3618 = fmul fast float %3615, %3615
  %3619 = fmul fast float %3616, %3616
  %3620 = fmul fast float %3617, %3617
  %3621 = fsub fast float %3618, %3500
  %3622 = fsub fast float %3619, %3501
  %3623 = fsub fast float %3620, %3502
  %3624 = fmul fast float %3621, %3525
  %3625 = fmul fast float %3622, %3525
  %3626 = fmul fast float %3623, %3525
  %3627 = fadd fast float %3624, %3500
  %3628 = fadd fast float %3625, %3501
  %3629 = fadd fast float %3626, %3502
  %3630 = fadd fast float %3547, %3511
  %3631 = fsub fast float %3630, %3564
  %3632 = call float @dx.op.unary.f32(i32 7, float %3631)  ; Saturate(value)
  %3633 = fsub fast float %3632, %3511
  %3634 = fmul fast float %3633, %3525
  %3635 = fadd fast float %3634, %3511
  br label %3689

; <label>:3636                                    ; preds = %3524
  %3637 = and i32 %3527, 134217728
  %3638 = icmp eq i32 %3637, 0
  br i1 %3638, label %3673, label %3639

; <label>:3639                                    ; preds = %3636
  %3640 = call float @dx.op.unary.f32(i32 24, float %623)  ; Sqrt(value)
  %3641 = call float @dx.op.unary.f32(i32 24, float %624)  ; Sqrt(value)
  %3642 = call float @dx.op.unary.f32(i32 24, float %625)  ; Sqrt(value)
  %3643 = fadd fast float %3640, -5.000000e-01
  %3644 = fadd fast float %3641, -5.000000e-01
  %3645 = fadd fast float %3642, -5.000000e-01
  %3646 = fmul fast float %3643, %3525
  %3647 = fmul fast float %3644, %3525
  %3648 = fmul fast float %3645, %3525
  %3649 = fadd fast float %3646, 5.000000e-01
  %3650 = fadd fast float %3647, 5.000000e-01
  %3651 = fadd fast float %3648, 5.000000e-01
  %3652 = call float @dx.op.unary.f32(i32 24, float %3500)  ; Sqrt(value)
  %3653 = call float @dx.op.unary.f32(i32 24, float %3501)  ; Sqrt(value)
  %3654 = call float @dx.op.unary.f32(i32 24, float %3502)  ; Sqrt(value)
  %3655 = fmul fast float %3649, 2.000000e+00
  %3656 = fsub fast float 1.000000e+00, %3655
  %3657 = fmul fast float %3656, %3652
  %3658 = fadd fast float %3657, %3655
  %3659 = fmul fast float %3658, %3652
  %3660 = fmul fast float %3650, 2.000000e+00
  %3661 = fsub fast float 1.000000e+00, %3660
  %3662 = fmul fast float %3661, %3653
  %3663 = fadd fast float %3662, %3660
  %3664 = fmul fast float %3663, %3653
  %3665 = fmul fast float %3651, 2.000000e+00
  %3666 = fsub fast float 1.000000e+00, %3665
  %3667 = fmul fast float %3666, %3654
  %3668 = fadd fast float %3667, %3665
  %3669 = fmul fast float %3668, %3654
  %3670 = fmul fast float %3659, %3659
  %3671 = fmul fast float %3664, %3664
  %3672 = fmul fast float %3669, %3669
  br label %3689

; <label>:3673                                    ; preds = %3636
  %3674 = fmul fast float %623, %623
  %3675 = fmul fast float %624, %624
  %3676 = fmul fast float %625, %625
  %3677 = fadd fast float %3674, -1.000000e+00
  %3678 = fadd fast float %3675, -1.000000e+00
  %3679 = fadd fast float %3676, -1.000000e+00
  %3680 = fmul fast float %3525, %3677
  %3681 = fmul fast float %3525, %3678
  %3682 = fmul fast float %3525, %3679
  %3683 = fadd fast float %3680, 1.000000e+00
  %3684 = fadd fast float %3681, 1.000000e+00
  %3685 = fadd fast float %3682, 1.000000e+00
  %3686 = fmul fast float %3683, %3500
  %3687 = fmul fast float %3684, %3501
  %3688 = fmul fast float %3685, %3502
  br label %3689

; <label>:3689                                    ; preds = %3673, %3639, %3530, %3486
  %3690 = phi float [ %3635, %3530 ], [ %3511, %3639 ], [ %3511, %3673 ], [ 0x3FA23C0BE0000000, %3486 ]
  %3691 = phi float [ %3627, %3530 ], [ %3670, %3639 ], [ %3686, %3673 ], [ 1.000000e+00, %3486 ]
  %3692 = phi float [ %3628, %3530 ], [ %3671, %3639 ], [ %3687, %3673 ], [ 1.000000e+00, %3486 ]
  %3693 = phi float [ %3629, %3530 ], [ %3672, %3639 ], [ %3688, %3673 ], [ 1.000000e+00, %3486 ]
  %3694 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3695 = extractvalue %dx.types.CBufRet.i32 %3694, 1
  %3696 = and i32 %3695, 1
  %3697 = icmp ne i32 %3696, 0
  %3698 = add i32 %58, 356
  %3699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3698, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.i32 %3699, 0
  %3701 = and i32 %3700, 32
  %3702 = icmp ne i32 %3701, 0
  %3703 = and i1 %3697, %3702
  %3704 = select i1 %3703, float 1.000000e+00, float %3691
  %3705 = select i1 %3703, float 0x3FD3333340000000, float %3692
  %3706 = select i1 %3703, float 0x3FD3333340000000, float %3693
  %3707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3708 = extractvalue %dx.types.ResRet.i32 %3707, 0
  %3709 = and i32 %3708, 32
  %3710 = icmp eq i32 %3709, 0
  br i1 %3710, label %3783, label %3711

; <label>:3711                                    ; preds = %3689
  %3712 = add i32 %58, 140
  %3713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3712, i32 undef)  ; BufferLoad(srv,index,wot)
  %3714 = extractvalue %dx.types.ResRet.i32 %3713, 0
  %3715 = add i32 %58, 404
  %3716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3715, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.i32 %3716, 0
  %3718 = add i32 %3717, 0
  %3719 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3718, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3720 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3719, %dx.types.Handle %111, float %3412, float %3413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3721 = extractvalue %dx.types.ResRet.f32 %3720, 0
  %3722 = extractvalue %dx.types.ResRet.f32 %3720, 1
  %3723 = extractvalue %dx.types.ResRet.f32 %3720, 2
  %3724 = extractvalue %dx.types.ResRet.f32 %3720, 3
  %3725 = and i32 %3714, 255
  %3726 = uitofp i32 %3725 to float
  %3727 = lshr i32 %3714, 8
  %3728 = and i32 %3727, 255
  %3729 = uitofp i32 %3728 to float
  %3730 = lshr i32 %3714, 16
  %3731 = and i32 %3730, 255
  %3732 = uitofp i32 %3731 to float
  %3733 = fmul fast float %3732, 0x3F70101000000000
  %3734 = fmul fast float %3721, %3726
  %3735 = fadd fast float %3734, %3729
  %3736 = fmul fast float %3735, 0x3F70101000000000
  %3737 = fadd fast float %3722, -5.000000e-01
  %3738 = fadd fast float %3724, -5.000000e-01
  %3739 = fmul fast float %3737, %3733
  %3740 = fmul fast float %3738, %3733
  %3741 = fadd fast float %3739, 5.000000e-01
  %3742 = fadd fast float %3740, 5.000000e-01
  %3743 = fmul fast float %3741, 2.000000e+00
  %3744 = fadd fast float %3743, -1.000000e+00
  %3745 = fmul fast float %3742, 2.000000e+00
  %3746 = fadd fast float %3745, -1.000000e+00
  %3747 = fadd fast float %3744, %3746
  %3748 = fmul fast float %3747, 5.000000e-01
  %3749 = fsub fast float %3744, %3746
  %3750 = fmul fast float %3749, 5.000000e-01
  %3751 = call float @dx.op.unary.f32(i32 6, float %3748)  ; FAbs(value)
  %3752 = fsub fast float 1.000000e+00, %3751
  %3753 = call float @dx.op.unary.f32(i32 6, float %3750)  ; FAbs(value)
  %3754 = fsub fast float %3752, %3753
  %3755 = call float @dx.op.dot3.f32(i32 55, float %3748, float %3750, float %3754, float %3748, float %3750, float %3754)  ; Dot3(ax,ay,az,bx,by,bz)
  %3756 = call float @dx.op.unary.f32(i32 25, float %3755)  ; Rsqrt(value)
  %3757 = fmul fast float %3748, %3756
  %3758 = fmul fast float %3750, %3756
  %3759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3760 = extractvalue %dx.types.ResRet.i32 %3759, 0
  %3761 = and i32 %3760, 67108864
  %3762 = icmp eq i32 %3761, 0
  br i1 %3762, label %3779, label %3763

; <label>:3763                                    ; preds = %3711
  %3764 = add i32 %58, 328
  %3765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3764, i32 undef)  ; BufferLoad(srv,index,wot)
  %3766 = extractvalue %dx.types.ResRet.i32 %3765, 0
  %3767 = and i32 %3766, 65535
  %3768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3767)  ; LegacyF16ToF32(value)
  %3769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3322, i32 undef)  ; BufferLoad(srv,index,wot)
  %3770 = extractvalue %dx.types.ResRet.i32 %3769, 0
  %3771 = and i32 %3770, 65535
  %3772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3771)  ; LegacyF16ToF32(value)
  %3773 = lshr i32 %3766, 16
  %3774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3773)  ; LegacyF16ToF32(value)
  %3775 = fsub fast float %3736, %3774
  %3776 = fmul fast float %3775, %3768
  %3777 = fadd fast float %3776, %3772
  %3778 = call float @dx.op.unary.f32(i32 7, float %3777)  ; Saturate(value)
  br label %3779

; <label>:3779                                    ; preds = %3763, %3711
  %3780 = phi float [ %3778, %3763 ], [ %3736, %3711 ]
  %3781 = call float @dx.op.dot2.f32(i32 54, float %3757, float %3758, float %3316, float %3317)  ; Dot2(ax,ay,bx,by)
  %3782 = call float @dx.op.dot2.f32(i32 54, float %3757, float %3758, float %3318, float %3319)  ; Dot2(ax,ay,bx,by)
  br label %3783

; <label>:3783                                    ; preds = %3779, %3689
  %3784 = phi float [ %3780, %3779 ], [ 0x3FD6666660000000, %3689 ]
  %3785 = phi float [ %3781, %3779 ], [ 0.000000e+00, %3689 ]
  %3786 = phi float [ %3782, %3779 ], [ 0.000000e+00, %3689 ]
  %3787 = phi float [ %3723, %3779 ], [ 1.000000e+00, %3689 ]
  %3788 = add i32 %58, 208
  %3789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3788, i32 undef)  ; BufferLoad(srv,index,wot)
  %3790 = extractvalue %dx.types.ResRet.i32 %3789, 0
  %3791 = lshr i32 %3790, 22
  %3792 = shl nuw nsw i32 %3791, 5
  %3793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3792)  ; LegacyF16ToF32(value)
  %3794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3795 = extractvalue %dx.types.ResRet.i32 %3794, 0
  %3796 = and i32 %3795, 64
  %3797 = icmp eq i32 %3796, 0
  br i1 %3797, label %3831, label %3798

; <label>:3798                                    ; preds = %3783
  %3799 = add i32 %58, 420
  %3800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3801 = extractvalue %dx.types.ResRet.i32 %3800, 0
  %3802 = add i32 %3801, 0
  %3803 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3802, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3805 = extractvalue %dx.types.ResRet.i32 %3804, 0
  %3806 = and i32 %3805, 131072
  %3807 = icmp eq i32 %3806, 0
  %3808 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3803, %dx.types.Handle %111, float %3412, float %3413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3809 = extractvalue %dx.types.ResRet.f32 %3808, 0
  %3810 = extractvalue %dx.types.ResRet.f32 %3808, 1
  %3811 = extractvalue %dx.types.ResRet.f32 %3808, 2
  %3812 = fmul fast float %606, %3809
  %3813 = fmul fast float %607, %3810
  %3814 = fmul fast float %608, %3811
  br i1 %3807, label %3821, label %3815

; <label>:3815                                    ; preds = %3798
  %3816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3817 = extractvalue %dx.types.CBufRet.f32 %3816, 0
  %3818 = fmul fast float %3817, %3812
  %3819 = fmul fast float %3817, %3813
  %3820 = fmul fast float %3817, %3814
  br label %3821

; <label>:3821                                    ; preds = %3815, %3798
  %3822 = phi float [ %3818, %3815 ], [ %3812, %3798 ]
  %3823 = phi float [ %3819, %3815 ], [ %3813, %3798 ]
  %3824 = phi float [ %3820, %3815 ], [ %3814, %3798 ]
  %3825 = fmul fast float %3822, %3793
  %3826 = select i1 %268, float %3825, float %3822
  %3827 = call float @dx.op.dot3.f32(i32 55, float %3826, float %3823, float %3824, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3828 = select i1 %268, float 0.000000e+00, float %3822
  %3829 = select i1 %268, float %3827, float %3823
  %3830 = select i1 %268, float 0.000000e+00, float %3824
  br label %3831

; <label>:3831                                    ; preds = %3821, %3783
  %3832 = phi float [ %3828, %3821 ], [ 0.000000e+00, %3783 ]
  %3833 = phi float [ %3829, %3821 ], [ 0.000000e+00, %3783 ]
  %3834 = phi float [ %3830, %3821 ], [ 0.000000e+00, %3783 ]
  %3835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3836 = extractvalue %dx.types.ResRet.i32 %3835, 0
  %3837 = and i32 %3836, 1024
  %3838 = icmp eq i32 %3837, 0
  br i1 %3838, label %3869, label %3839

; <label>:3839                                    ; preds = %3831
  %3840 = add i32 %58, 200
  %3841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.i32 %3841, 0
  %3843 = and i32 %3842, 255
  %3844 = uitofp i32 %3843 to float
  %3845 = fmul fast float %3844, 0x3F70101020000000
  %3846 = lshr i32 %3842, 8
  %3847 = and i32 %3846, 255
  %3848 = uitofp i32 %3847 to float
  %3849 = fmul fast float %3848, 0x3F70101020000000
  %3850 = lshr i32 %3842, 16
  %3851 = and i32 %3850, 255
  %3852 = uitofp i32 %3851 to float
  %3853 = fmul fast float %3852, 0x3F70101020000000
  %3854 = fmul fast float %3845, %3845
  %3855 = fmul fast float %3849, %3849
  %3856 = fmul fast float %3853, %3853
  %3857 = add i32 %58, 484
  %3858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.i32 %3858, 0
  %3860 = add i32 %3859, 0
  %3861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3860, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3862 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3861, %dx.types.Handle %112, float %3412, float %3413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3863 = extractvalue %dx.types.ResRet.f32 %3862, 0
  %3864 = extractvalue %dx.types.ResRet.f32 %3862, 1
  %3865 = extractvalue %dx.types.ResRet.f32 %3862, 2
  %3866 = fmul fast float %3854, %3863
  %3867 = fmul fast float %3855, %3864
  %3868 = fmul fast float %3856, %3865
  br label %3869

; <label>:3869                                    ; preds = %3839, %3831
  %3870 = phi float [ %3866, %3839 ], [ 0.000000e+00, %3831 ]
  %3871 = phi float [ %3867, %3839 ], [ 0.000000e+00, %3831 ]
  %3872 = phi float [ %3868, %3839 ], [ 0.000000e+00, %3831 ]
  %3873 = fcmp fast ogt float %3870, 0.000000e+00
  %3874 = fcmp fast ogt float %3871, 0.000000e+00
  %3875 = fcmp fast ogt float %3872, 0.000000e+00
  %3876 = call float @dx.op.unary.f32(i32 23, float %3870)  ; Log(value)
  %3877 = call float @dx.op.unary.f32(i32 23, float %3871)  ; Log(value)
  %3878 = call float @dx.op.unary.f32(i32 23, float %3872)  ; Log(value)
  %3879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3788, i32 undef)  ; BufferLoad(srv,index,wot)
  %3880 = extractvalue %dx.types.ResRet.i32 %3879, 0
  %3881 = lshr i32 %3880, 7
  %3882 = and i32 %3881, 32752
  %3883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3882)  ; LegacyF16ToF32(value)
  %3884 = fmul fast float %3876, 0xBFE62E4300000000
  %3885 = fmul fast float %3884, %3883
  %3886 = fmul fast float %3877, 0xBFE62E4300000000
  %3887 = fmul fast float %3886, %3883
  %3888 = fmul fast float %3878, 0xBFE62E4300000000
  %3889 = fmul fast float %3888, %3883
  %3890 = select i1 %3873, float %3885, float 1.270000e+02
  %3891 = select i1 %3874, float %3887, float 1.270000e+02
  %3892 = select i1 %3875, float %3889, float 1.270000e+02
  %3893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3894 = extractvalue %dx.types.ResRet.i32 %3893, 0
  %3895 = and i32 %3894, 10240
  %3896 = icmp eq i32 %3895, 0
  br i1 %3896, label %3917, label %3897

; <label>:3897                                    ; preds = %3869
  %3898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3899 = extractvalue %dx.types.ResRet.i32 %3898, 0
  %3900 = and i32 %3899, 2048
  %3901 = icmp eq i32 %3900, 0
  br i1 %3901, label %3917, label %3902

; <label>:3902                                    ; preds = %3897
  %3903 = add i32 %58, 500
  %3904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3905 = extractvalue %dx.types.ResRet.i32 %3904, 0
  %3906 = add i32 %3905, 0
  %3907 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3906, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3908 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3907, %dx.types.Handle %112, float %3412, float %3413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3909 = extractvalue %dx.types.ResRet.f32 %3908, 3
  %3910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3788, i32 undef)  ; BufferLoad(srv,index,wot)
  %3911 = extractvalue %dx.types.ResRet.i32 %3910, 0
  %3912 = shl i32 %3911, 4
  %3913 = and i32 %3912, 32752
  %3914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3913)  ; LegacyF16ToF32(value)
  %3915 = fmul fast float %3914, %3909
  %3916 = call float @dx.op.binary.f32(i32 35, float %3915, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3917

; <label>:3917                                    ; preds = %3902, %3897, %3869
  %3918 = phi float [ %3916, %3902 ], [ 0x3F70101020000000, %3897 ], [ 0x3F70101020000000, %3869 ]
  %3919 = add i32 %58, 144
  %3920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3919, i32 undef)  ; BufferLoad(srv,index,wot)
  %3921 = extractvalue %dx.types.ResRet.i32 %3920, 0
  %3922 = and i32 %3921, 255
  %3923 = uitofp i32 %3922 to float
  %3924 = lshr i32 %3921, 8
  %3925 = and i32 %3924, 255
  %3926 = uitofp i32 %3925 to float
  %3927 = call float @dx.op.dot3.f32(i32 55, float %3704, float %3705, float %3706, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3928 = fmul fast float %3926, %3927
  %3929 = fadd fast float %3928, %3923
  %3930 = fmul fast float %3929, 0x3F70101020000000
  %3931 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  br i1 %3305, label %3932, label %3967

; <label>:3932                                    ; preds = %3917
  %3933 = fmul fast float %3918, 2.000000e+00
  %3934 = fcmp fast olt float %3890, 1.270000e+02
  %3935 = fcmp fast olt float %3891, 1.270000e+02
  %3936 = fcmp fast olt float %3892, 1.270000e+02
  %3937 = fmul fast float %3890, 0xBFF7154760000000
  %3938 = fmul fast float %3937, %3933
  %3939 = fmul fast float %3891, 0xBFF7154760000000
  %3940 = fmul fast float %3939, %3933
  %3941 = fmul fast float %3892, 0xBFF7154760000000
  %3942 = fmul fast float %3941, %3933
  %3943 = call float @dx.op.unary.f32(i32 21, float %3938)  ; Exp(value)
  %3944 = call float @dx.op.unary.f32(i32 21, float %3940)  ; Exp(value)
  %3945 = call float @dx.op.unary.f32(i32 21, float %3942)  ; Exp(value)
  %3946 = call float @dx.op.unary.f32(i32 7, float %3943)  ; Saturate(value)
  %3947 = call float @dx.op.unary.f32(i32 7, float %3944)  ; Saturate(value)
  %3948 = call float @dx.op.unary.f32(i32 7, float %3945)  ; Saturate(value)
  %3949 = fadd fast float %3946, -1.000000e+00
  %3950 = select i1 %3934, float %3949, float -1.000000e+00
  %3951 = fadd fast float %3947, -1.000000e+00
  %3952 = select i1 %3935, float %3951, float -1.000000e+00
  %3953 = fadd fast float %3948, -1.000000e+00
  %3954 = select i1 %3936, float %3953, float -1.000000e+00
  %3955 = fmul fast float %3950, %3484
  %3956 = fmul fast float %3952, %3484
  %3957 = fmul fast float %3954, %3484
  %3958 = fadd fast float %3955, 1.000000e+00
  %3959 = fadd fast float %3956, 1.000000e+00
  %3960 = fadd fast float %3957, 1.000000e+00
  %3961 = fmul fast float %3958, %3293
  %3962 = fmul fast float %3959, %3294
  %3963 = fmul fast float %3960, %3295
  %3964 = fmul fast float %3958, %3290
  %3965 = fmul fast float %3959, %3291
  %3966 = fmul fast float %3960, %3292
  br label %3967

; <label>:3967                                    ; preds = %3932, %3917
  %3968 = phi float [ %3964, %3932 ], [ %3290, %3917 ]
  %3969 = phi float [ %3965, %3932 ], [ %3291, %3917 ]
  %3970 = phi float [ %3966, %3932 ], [ %3292, %3917 ]
  %3971 = phi float [ %3961, %3932 ], [ %3293, %3917 ]
  %3972 = phi float [ %3962, %3932 ], [ %3294, %3917 ]
  %3973 = phi float [ %3963, %3932 ], [ %3295, %3917 ]
  %3974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3975 = extractvalue %dx.types.ResRet.i32 %3974, 0
  %3976 = and i32 %3975, 3
  %3977 = icmp eq i32 %3976, 3
  br i1 %3977, label %4056, label %3978

; <label>:3978                                    ; preds = %3967
  %3979 = and i32 %3975, 16
  %3980 = icmp ne i32 %3979, 0
  %3981 = select i1 %3980, float %3484, float 0.000000e+00
  %3982 = icmp eq i32 %3976, 0
  br i1 %3982, label %3983, label %4011

; <label>:3983                                    ; preds = %3978
  %3984 = and i32 %3975, 64
  %3985 = icmp ne i32 %3984, 0
  %3986 = select i1 %3985, float %3484, float 0.000000e+00
  %3987 = fsub fast float %3704, %3971
  %3988 = fsub fast float %3705, %3972
  %3989 = fsub fast float %3706, %3973
  %3990 = fmul fast float %3981, %3987
  %3991 = fmul fast float %3981, %3988
  %3992 = fmul fast float %3981, %3989
  %3993 = fadd fast float %3990, %3971
  %3994 = fadd fast float %3991, %3972
  %3995 = fadd fast float %3992, %3973
  %3996 = fsub fast float %3690, %3299
  %3997 = fmul fast float %3981, %3996
  %3998 = fadd fast float %3997, %3299
  %3999 = fsub fast float %3832, %3968
  %4000 = fsub fast float %3833, %3969
  %4001 = fsub fast float %3834, %3970
  %4002 = fmul fast float %3986, %3999
  %4003 = fmul fast float %3986, %4000
  %4004 = fmul fast float %3986, %4001
  %4005 = fadd fast float %4002, %3968
  %4006 = fadd fast float %4003, %3969
  %4007 = fadd fast float %4004, %3970
  %4008 = fsub fast float %3931, %3303
  %4009 = fmul fast float %3981, %4008
  %4010 = fadd fast float %4009, %3303
  br label %4056

; <label>:4011                                    ; preds = %3978
  %4012 = icmp eq i32 %3976, 1
  br i1 %4012, label %4013, label %4026

; <label>:4013                                    ; preds = %4011
  %4014 = fadd fast float %3704, -1.000000e+00
  %4015 = fadd fast float %3705, -1.000000e+00
  %4016 = fadd fast float %3706, -1.000000e+00
  %4017 = fmul fast float %3981, %4014
  %4018 = fmul fast float %3981, %4015
  %4019 = fmul fast float %3981, %4016
  %4020 = fadd fast float %4017, 1.000000e+00
  %4021 = fadd fast float %4018, 1.000000e+00
  %4022 = fadd fast float %4019, 1.000000e+00
  %4023 = fmul fast float %4020, %3971
  %4024 = fmul fast float %4021, %3972
  %4025 = fmul fast float %4022, %3973
  br label %4056

; <label>:4026                                    ; preds = %4011
  %4027 = icmp eq i32 %3976, 2
  br i1 %4027, label %4028, label %4056

; <label>:4028                                    ; preds = %4026
  %4029 = call float @dx.op.unary.f32(i32 24, float %3704)  ; Sqrt(value)
  %4030 = call float @dx.op.unary.f32(i32 24, float %3705)  ; Sqrt(value)
  %4031 = call float @dx.op.unary.f32(i32 24, float %3706)  ; Sqrt(value)
  %4032 = fadd fast float %4029, -5.000000e-01
  %4033 = fadd fast float %4030, -5.000000e-01
  %4034 = fadd fast float %4031, -5.000000e-01
  %4035 = fmul fast float %4032, %3981
  %4036 = fmul fast float %4033, %3981
  %4037 = fmul fast float %4034, %3981
  %4038 = fadd fast float %4035, 5.000000e-01
  %4039 = fadd fast float %4036, 5.000000e-01
  %4040 = fadd fast float %4037, 5.000000e-01
  %4041 = fmul fast float %4038, 2.000000e+00
  %4042 = fsub fast float 1.000000e+00, %4041
  %4043 = fmul fast float %4042, %3971
  %4044 = fadd fast float %4043, %4041
  %4045 = fmul fast float %4044, %3971
  %4046 = fmul fast float %4039, 2.000000e+00
  %4047 = fsub fast float 1.000000e+00, %4046
  %4048 = fmul fast float %4047, %3972
  %4049 = fadd fast float %4048, %4046
  %4050 = fmul fast float %4049, %3972
  %4051 = fmul fast float %4040, 2.000000e+00
  %4052 = fsub fast float 1.000000e+00, %4051
  %4053 = fmul fast float %4052, %3973
  %4054 = fadd fast float %4053, %4051
  %4055 = fmul fast float %4054, %3973
  br label %4056

; <label>:4056                                    ; preds = %4028, %4026, %4013, %3983, %3967
  %4057 = phi float [ %3968, %3967 ], [ %3968, %4028 ], [ %3968, %4026 ], [ %3968, %4013 ], [ %4005, %3983 ]
  %4058 = phi float [ %3969, %3967 ], [ %3969, %4028 ], [ %3969, %4026 ], [ %3969, %4013 ], [ %4006, %3983 ]
  %4059 = phi float [ %3970, %3967 ], [ %3970, %4028 ], [ %3970, %4026 ], [ %3970, %4013 ], [ %4007, %3983 ]
  %4060 = phi float [ %3971, %3967 ], [ %4045, %4028 ], [ %3971, %4026 ], [ %4023, %4013 ], [ %3993, %3983 ]
  %4061 = phi float [ %3972, %3967 ], [ %4050, %4028 ], [ %3972, %4026 ], [ %4024, %4013 ], [ %3994, %3983 ]
  %4062 = phi float [ %3973, %3967 ], [ %4055, %4028 ], [ %3973, %4026 ], [ %4025, %4013 ], [ %3995, %3983 ]
  %4063 = phi float [ %3299, %3967 ], [ %3299, %4028 ], [ %3299, %4026 ], [ %3299, %4013 ], [ %3998, %3983 ]
  %4064 = phi float [ %3303, %3967 ], [ %3303, %4028 ], [ %3303, %4026 ], [ %3303, %4013 ], [ %4010, %3983 ]
  %4065 = and i32 %3975, 12
  %4066 = icmp eq i32 %4065, 12
  br i1 %4066, label %4173, label %4067

; <label>:4067                                    ; preds = %4056
  %4068 = and i32 %3975, 2097184
  %4069 = icmp eq i32 %4068, 2097184
  %4070 = select i1 %4069, float %3484, float 0.000000e+00
  %4071 = and i32 %3975, 4194336
  %4072 = icmp eq i32 %4071, 4194336
  %4073 = select i1 %4072, float %3484, float 0.000000e+00
  %4074 = and i32 %3975, 8388640
  %4075 = icmp eq i32 %4074, 8388640
  %4076 = select i1 %4075, float %3484, float 0.000000e+00
  %4077 = and i32 %3975, 1024
  %4078 = icmp ne i32 %4077, 0
  %4079 = select i1 %4078, float %3484, float 0.000000e+00
  %4080 = and i32 %3975, 2048
  %4081 = icmp ne i32 %4080, 0
  %4082 = select i1 %4081, float %3484, float 0.000000e+00
  %4083 = icmp eq i32 %4065, 0
  br i1 %4083, label %4084, label %4109

; <label>:4084                                    ; preds = %4067
  %4085 = fsub fast float %3785, %3288
  %4086 = fsub fast float %3786, %3289
  %4087 = fmul fast float %4070, %4085
  %4088 = fmul fast float %4070, %4086
  %4089 = fadd fast float %4087, %3288
  %4090 = fadd fast float %4088, %3289
  %4091 = fsub fast float %3787, %3301
  %4092 = fmul fast float %4073, %4091
  %4093 = fadd fast float %4092, %3301
  %4094 = fsub fast float %3784, %3300
  %4095 = fmul fast float %4076, %4094
  %4096 = fadd fast float %4095, %3300
  %4097 = fsub fast float %3890, %3296
  %4098 = fsub fast float %3891, %3297
  %4099 = fsub fast float %3892, %3298
  %4100 = fmul fast float %4079, %4097
  %4101 = fmul fast float %4079, %4098
  %4102 = fmul fast float %4079, %4099
  %4103 = fadd fast float %4100, %3296
  %4104 = fadd fast float %4101, %3297
  %4105 = fadd fast float %4102, %3298
  %4106 = fsub fast float %3918, %3302
  %4107 = fmul fast float %4082, %4106
  %4108 = fadd fast float %4107, %3302
  br label %4173

; <label>:4109                                    ; preds = %4067
  %4110 = icmp eq i32 %4065, 4
  br i1 %4110, label %4111, label %4151

; <label>:4111                                    ; preds = %4109
  %4112 = fmul fast float %4070, %3785
  %4113 = fmul fast float %4070, %3786
  %4114 = fadd fast float %4112, %3288
  %4115 = fadd fast float %4113, %3289
  %4116 = call float @dx.op.binary.f32(i32 36, float %3301, float %3787)  ; FMin(a,b)
  %4117 = fsub fast float %4116, %3301
  %4118 = fmul fast float %4117, %4073
  %4119 = fadd fast float %4118, %3301
  %4120 = fadd fast float %3784, %3300
  %4121 = fmul fast float %4120, 0x3FF337FAE0000000
  %4122 = fmul fast float %3300, %3300
  %4123 = fmul fast float %3784, %3784
  %4124 = fadd fast float %4123, %4122
  %4125 = fmul fast float %4124, 0x3FE5152B00000000
  %4126 = fmul fast float %3300, 0xBFCC1F85E0000000
  %4127 = fmul fast float %4126, %3784
  %4128 = fadd fast float %4127, 0xBFE1363700000000
  %4129 = fadd fast float %4128, %4121
  %4130 = fsub fast float %4129, %4125
  %4131 = fmul fast float %4120, 0x3FBA6F0D00000000
  %4132 = fmul fast float %4124, 0x3FD0432880000000
  %4133 = fmul fast float %3300, 0xBFEF110800000000
  %4134 = fmul fast float %4133, %3784
  %4135 = fadd fast float %4134, 1.000000e+00
  %4136 = fsub fast float %4135, %4131
  %4137 = fadd fast float %4136, %4132
  %4138 = fdiv fast float %4130, %4137
  %4139 = call float @dx.op.unary.f32(i32 7, float %4138)  ; Saturate(value)
  %4140 = fsub fast float %4139, %3300
  %4141 = fmul fast float %4140, %4076
  %4142 = fadd fast float %4141, %3300
  %4143 = fmul fast float %4079, %3890
  %4144 = fmul fast float %4079, %3891
  %4145 = fmul fast float %4079, %3892
  %4146 = fadd fast float %4143, %3296
  %4147 = fadd fast float %4144, %3297
  %4148 = fadd fast float %4145, %3298
  %4149 = fmul fast float %4082, %3918
  %4150 = fadd fast float %4149, %3302
  br label %4173

; <label>:4151                                    ; preds = %4109
  %4152 = icmp eq i32 %4065, 8
  br i1 %4152, label %4153, label %4173

; <label>:4153                                    ; preds = %4151
  %4154 = fmul fast float %4070, %3785
  %4155 = fmul fast float %4070, %3786
  %4156 = fadd fast float %4154, %3288
  %4157 = fadd fast float %4155, %3289
  %4158 = call float @dx.op.binary.f32(i32 36, float %3301, float %3787)  ; FMin(a,b)
  %4159 = fsub fast float %4158, %3301
  %4160 = fmul fast float %4159, %4073
  %4161 = fadd fast float %4160, %3301
  %4162 = fsub fast float %3784, %3300
  %4163 = fmul fast float %4076, %4162
  %4164 = fadd fast float %4163, %3300
  %4165 = fmul fast float %4079, %3890
  %4166 = fmul fast float %4079, %3891
  %4167 = fmul fast float %4079, %3892
  %4168 = fadd fast float %4165, %3296
  %4169 = fadd fast float %4166, %3297
  %4170 = fadd fast float %4167, %3298
  %4171 = fmul fast float %4082, %3918
  %4172 = fadd fast float %4171, %3302
  br label %4173

; <label>:4173                                    ; preds = %4153, %4151, %4111, %4084, %4056, %3483, %3304, %3287
  %4174 = phi float [ %3288, %4056 ], [ %3288, %3483 ], [ %3288, %3287 ], [ %3288, %3304 ], [ %4089, %4084 ], [ %4114, %4111 ], [ %3288, %4151 ], [ %4156, %4153 ]
  %4175 = phi float [ %3289, %4056 ], [ %3289, %3483 ], [ %3289, %3287 ], [ %3289, %3304 ], [ %4090, %4084 ], [ %4115, %4111 ], [ %3289, %4151 ], [ %4157, %4153 ]
  %4176 = phi float [ %4057, %4056 ], [ %3290, %3483 ], [ %3290, %3287 ], [ %3290, %3304 ], [ %4057, %4084 ], [ %4057, %4111 ], [ %4057, %4151 ], [ %4057, %4153 ]
  %4177 = phi float [ %4058, %4056 ], [ %3291, %3483 ], [ %3291, %3287 ], [ %3291, %3304 ], [ %4058, %4084 ], [ %4058, %4111 ], [ %4058, %4151 ], [ %4058, %4153 ]
  %4178 = phi float [ %4059, %4056 ], [ %3292, %3483 ], [ %3292, %3287 ], [ %3292, %3304 ], [ %4059, %4084 ], [ %4059, %4111 ], [ %4059, %4151 ], [ %4059, %4153 ]
  %4179 = phi float [ %4060, %4056 ], [ %3293, %3483 ], [ %3293, %3287 ], [ %3293, %3304 ], [ %4060, %4084 ], [ %4060, %4111 ], [ %4060, %4151 ], [ %4060, %4153 ]
  %4180 = phi float [ %4061, %4056 ], [ %3294, %3483 ], [ %3294, %3287 ], [ %3294, %3304 ], [ %4061, %4084 ], [ %4061, %4111 ], [ %4061, %4151 ], [ %4061, %4153 ]
  %4181 = phi float [ %4062, %4056 ], [ %3295, %3483 ], [ %3295, %3287 ], [ %3295, %3304 ], [ %4062, %4084 ], [ %4062, %4111 ], [ %4062, %4151 ], [ %4062, %4153 ]
  %4182 = phi float [ %3296, %4056 ], [ %3296, %3483 ], [ %3296, %3287 ], [ %3296, %3304 ], [ %4103, %4084 ], [ %4146, %4111 ], [ %3296, %4151 ], [ %4168, %4153 ]
  %4183 = phi float [ %3297, %4056 ], [ %3297, %3483 ], [ %3297, %3287 ], [ %3297, %3304 ], [ %4104, %4084 ], [ %4147, %4111 ], [ %3297, %4151 ], [ %4169, %4153 ]
  %4184 = phi float [ %3298, %4056 ], [ %3298, %3483 ], [ %3298, %3287 ], [ %3298, %3304 ], [ %4105, %4084 ], [ %4148, %4111 ], [ %3298, %4151 ], [ %4170, %4153 ]
  %4185 = phi float [ %4063, %4056 ], [ %3299, %3483 ], [ %3299, %3287 ], [ %3299, %3304 ], [ %4063, %4084 ], [ %4063, %4111 ], [ %4063, %4151 ], [ %4063, %4153 ]
  %4186 = phi float [ %3300, %4056 ], [ %3300, %3483 ], [ %3300, %3287 ], [ %3300, %3304 ], [ %4096, %4084 ], [ %4142, %4111 ], [ %3300, %4151 ], [ %4164, %4153 ]
  %4187 = phi float [ %3301, %4056 ], [ %3301, %3483 ], [ %3301, %3287 ], [ %3301, %3304 ], [ %4093, %4084 ], [ %4119, %4111 ], [ %3301, %4151 ], [ %4161, %4153 ]
  %4188 = phi float [ %3302, %4056 ], [ %3302, %3483 ], [ %3302, %3287 ], [ %3302, %3304 ], [ %4108, %4084 ], [ %4150, %4111 ], [ %3302, %4151 ], [ %4172, %4153 ]
  %4189 = phi float [ %4064, %4056 ], [ %3303, %3483 ], [ %3303, %3287 ], [ %3303, %3304 ], [ %4064, %4084 ], [ %4064, %4111 ], [ %4064, %4151 ], [ %4064, %4153 ]
  %4190 = add i32 %58, 360
  %4191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4190, i32 undef)  ; BufferLoad(srv,index,wot)
  %4192 = extractvalue %dx.types.ResRet.i32 %4191, 0
  %4193 = bitcast i32 %4192 to float
  %4194 = fcmp fast oge float %4193, 0.000000e+00
  %4195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.f32 %4195, 0
  %4197 = select i1 %4194, float %4193, float %4196
  %4198 = fadd fast float %4197, %211
  %4199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.f32 %4199, 0
  %4201 = and i32 %204, 65535
  %4202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4201)  ; LegacyF16ToF32(value)
  %4203 = lshr i32 %204, 16
  %4204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4203)  ; LegacyF16ToF32(value)
  %4205 = and i32 %205, 65535
  %4206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4205)  ; LegacyF16ToF32(value)
  %4207 = fmul fast float %4202, %4179
  %4208 = fmul fast float %4204, %4180
  %4209 = fmul fast float %4206, %4181
  %4210 = shl i32 %206, 4
  %4211 = and i32 %4210, 32752
  %4212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4211)  ; LegacyF16ToF32(value)
  %4213 = lshr i32 %206, 7
  %4214 = and i32 %4213, 32752
  %4215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4214)  ; LegacyF16ToF32(value)
  %4216 = lshr i32 %206, 22
  %4217 = shl nuw nsw i32 %4216, 5
  %4218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4217)  ; LegacyF16ToF32(value)
  %4219 = and i32 %207, 65535
  %4220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4219)  ; LegacyF16ToF32(value)
  %4221 = fmul fast float %4200, %4176
  %4222 = fmul fast float %4221, %4212
  %4223 = fmul fast float %4222, %4220
  %4224 = fmul fast float %4200, %4177
  %4225 = fmul fast float %4224, %4215
  %4226 = fmul fast float %4225, %4220
  %4227 = fmul fast float %4200, %4178
  %4228 = fmul fast float %4227, %4218
  %4229 = fmul fast float %4228, %4220
  %4230 = call float @dx.op.dot2.f32(i32 54, float %4174, float %4175, float %4174, float %4175)  ; Dot2(ax,ay,bx,by)
  %4231 = fmul fast float %4230, 0x3FE3333340000000
  %4232 = fsub fast float 1.000000e+00, %4231
  %4233 = call float @dx.op.dot3.f32(i32 55, float %4174, float %4175, float %4232, float %4174, float %4175, float %4232)  ; Dot3(ax,ay,az,bx,by,bz)
  %4234 = call float @dx.op.unary.f32(i32 25, float %4233)  ; Rsqrt(value)
  %4235 = fmul fast float %4234, %4174
  %4236 = fmul fast float %4234, %4175
  %4237 = fmul fast float %4232, %4234
  %4238 = fmul fast float %4237, %124
  %4239 = fmul fast float %4237, %126
  %4240 = fmul fast float %4237, %128
  %4241 = fmul fast float %4235, %90
  %4242 = fmul fast float %4235, %91
  %4243 = fmul fast float %4235, %92
  %4244 = fadd fast float %4238, %4241
  %4245 = fadd fast float %4239, %4242
  %4246 = fadd fast float %4240, %4243
  %4247 = fmul fast float %138, %4236
  %4248 = fmul fast float %139, %4236
  %4249 = fmul fast float %140, %4236
  %4250 = fadd fast float %4244, %4247
  %4251 = fadd fast float %4245, %4248
  %4252 = fadd fast float %4246, %4249
  %4253 = call float @dx.op.dot3.f32(i32 55, float %4250, float %4251, float %4252, float %4250, float %4251, float %4252)  ; Dot3(ax,ay,az,bx,by,bz)
  %4254 = call float @dx.op.unary.f32(i32 25, float %4253)  ; Rsqrt(value)
  %4255 = fmul fast float %4250, %4254
  %4256 = fmul fast float %4251, %4254
  %4257 = fmul fast float %4252, %4254
  %4258 = icmp eq i32 %61, 65535
  br i1 %4258, label %4808, label %4259

; <label>:4259                                    ; preds = %4173
  %4260 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %4261 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %4262 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %4263 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %4264 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %4265 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %4266 = fadd fast float %4260, %62
  %4267 = fadd fast float %4261, %63
  %4268 = fadd fast float %4262, %64
  %4269 = fadd fast float %4263, %62
  %4270 = fadd fast float %4264, %63
  %4271 = fadd fast float %4265, %64
  %4272 = mul i32 %61, 48
  %4273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4272, i32 undef)  ; BufferLoad(srv,index,wot)
  %4274 = extractvalue %dx.types.ResRet.f32 %4273, 0
  %4275 = extractvalue %dx.types.ResRet.f32 %4273, 1
  %4276 = extractvalue %dx.types.ResRet.f32 %4273, 2
  %4277 = add i32 %4272, 16
  %4278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4277, i32 undef)  ; BufferLoad(srv,index,wot)
  %4279 = extractvalue %dx.types.ResRet.f32 %4278, 0
  %4280 = extractvalue %dx.types.ResRet.f32 %4278, 1
  %4281 = extractvalue %dx.types.ResRet.f32 %4278, 2
  %4282 = add i32 %4272, 32
  %4283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4282, i32 undef)  ; BufferLoad(srv,index,wot)
  %4284 = extractvalue %dx.types.ResRet.f32 %4283, 0
  %4285 = extractvalue %dx.types.ResRet.f32 %4283, 1
  %4286 = extractvalue %dx.types.ResRet.f32 %4283, 2
  %4287 = extractvalue %dx.types.ResRet.f32 %4283, 3
  %4288 = bitcast float %4287 to i32
  %4289 = fmul fast float %4274, %62
  %4290 = fmul fast float %4275, %63
  %4291 = fmul fast float %4276, %64
  %4292 = fsub fast float %4289, %4279
  %4293 = fsub fast float %4290, %4280
  %4294 = fsub fast float %4291, %4281
  %4295 = call float @dx.op.unary.f32(i32 7, float %4292)  ; Saturate(value)
  %4296 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4297 = call float @dx.op.unary.f32(i32 7, float %4294)  ; Saturate(value)
  %4298 = fmul fast float %4295, %4284
  %4299 = fmul fast float %4296, %4285
  %4300 = fmul fast float %4297, %4286
  %4301 = fadd fast float %4284, -1.000000e+00
  %4302 = fadd fast float %4285, -1.000000e+00
  %4303 = fadd fast float %4286, -1.000000e+00
  %4304 = call float @dx.op.unary.f32(i32 27, float %4298)  ; Round_ni(value)
  %4305 = call float @dx.op.unary.f32(i32 27, float %4299)  ; Round_ni(value)
  %4306 = call float @dx.op.unary.f32(i32 27, float %4300)  ; Round_ni(value)
  %4307 = call float @dx.op.binary.f32(i32 36, float %4304, float %4301)  ; FMin(a,b)
  %4308 = call float @dx.op.binary.f32(i32 36, float %4305, float %4302)  ; FMin(a,b)
  %4309 = call float @dx.op.binary.f32(i32 36, float %4306, float %4303)  ; FMin(a,b)
  %4310 = fmul fast float %4309, %4285
  %4311 = fadd fast float %4310, %4308
  %4312 = fmul fast float %4311, %4284
  %4313 = fadd fast float %4312, %4307
  %4314 = fptosi float %4313 to i32
  %4315 = add nsw i32 %4314, %4288
  %4316 = shl nsw i32 %4315, 2
  %4317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4316, i32 undef)  ; BufferLoad(srv,index,wot)
  %4318 = extractvalue %dx.types.ResRet.i32 %4317, 0
  %4319 = lshr i32 %4318, 16
  %4320 = icmp eq i32 %4319, 0
  br i1 %4320, label %4773, label %4321

; <label>:4321                                    ; preds = %4259
  br label %4322

; <label>:4322                                    ; preds = %4447, %4321
  %4323 = phi i32 [ %4349, %4447 ], [ %4319, %4321 ]
  %4324 = phi float [ %4448, %4447 ], [ 0.000000e+00, %4321 ]
  %4325 = phi float [ %4449, %4447 ], [ %1527, %4321 ]
  %4326 = phi float [ %4450, %4447 ], [ %4198, %4321 ]
  %4327 = phi float [ %4451, %4447 ], [ %4189, %4321 ]
  %4328 = phi float [ %4452, %4447 ], [ %4182, %4321 ]
  %4329 = phi float [ %4453, %4447 ], [ %4183, %4321 ]
  %4330 = phi float [ %4454, %4447 ], [ %4184, %4321 ]
  %4331 = phi float [ %4455, %4447 ], [ 0.000000e+00, %4321 ]
  %4332 = phi float [ %4456, %4447 ], [ 0.000000e+00, %4321 ]
  %4333 = phi float [ %4457, %4447 ], [ %4223, %4321 ]
  %4334 = phi float [ %4458, %4447 ], [ %4226, %4321 ]
  %4335 = phi float [ %4459, %4447 ], [ %4229, %4321 ]
  %4336 = phi float [ %4460, %4447 ], [ %4255, %4321 ]
  %4337 = phi float [ %4461, %4447 ], [ %4256, %4321 ]
  %4338 = phi float [ %4462, %4447 ], [ %4257, %4321 ]
  %4339 = phi float [ %4463, %4447 ], [ %4187, %4321 ]
  %4340 = phi float [ %4464, %4447 ], [ %4186, %4321 ]
  %4341 = phi float [ %4465, %4447 ], [ 0.000000e+00, %4321 ]
  %4342 = phi float [ %4466, %4447 ], [ %4185, %4321 ]
  %4343 = phi float [ %4467, %4447 ], [ %4207, %4321 ]
  %4344 = phi float [ %4468, %4447 ], [ %4208, %4321 ]
  %4345 = phi float [ %4469, %4447 ], [ %4209, %4321 ]
  %4346 = shl nuw nsw i32 %4323, 2
  %4347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4346, i32 undef)  ; BufferLoad(srv,index,wot)
  %4348 = extractvalue %dx.types.ResRet.i32 %4347, 0
  %4349 = lshr i32 %4348, 16
  %4350 = shl i32 %4348, 8
  %4351 = and i32 %4350, 16776960
  %4352 = or i32 %4351, 48
  %4353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4352, i32 undef)  ; BufferLoad(srv,index,wot)
  %4354 = extractvalue %dx.types.ResRet.f32 %4353, 0
  %4355 = extractvalue %dx.types.ResRet.f32 %4353, 1
  %4356 = extractvalue %dx.types.ResRet.f32 %4353, 2
  %4357 = or i32 %4351, 64
  %4358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4357, i32 undef)  ; BufferLoad(srv,index,wot)
  %4359 = extractvalue %dx.types.ResRet.i32 %4358, 0
  %4360 = extractvalue %dx.types.ResRet.i32 %4358, 1
  %4361 = or i32 %4351, 80
  %4362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4361, i32 undef)  ; BufferLoad(srv,index,wot)
  %4363 = extractvalue %dx.types.ResRet.f32 %4362, 2
  %4364 = extractvalue %dx.types.ResRet.f32 %4362, 3
  %4365 = or i32 %4351, 96
  %4366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4367 = extractvalue %dx.types.ResRet.f32 %4366, 0
  %4368 = extractvalue %dx.types.ResRet.f32 %4366, 1
  %4369 = extractvalue %dx.types.ResRet.f32 %4366, 2
  %4370 = extractvalue %dx.types.ResRet.f32 %4366, 3
  %4371 = or i32 %4351, 112
  %4372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4371, i32 undef)  ; BufferLoad(srv,index,wot)
  %4373 = extractvalue %dx.types.ResRet.f32 %4372, 2
  %4374 = or i32 %4351, 128
  %4375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4374, i32 undef)  ; BufferLoad(srv,index,wot)
  %4376 = extractvalue %dx.types.ResRet.f32 %4375, 0
  %4377 = extractvalue %dx.types.ResRet.f32 %4375, 1
  %4378 = extractvalue %dx.types.ResRet.f32 %4375, 2
  %4379 = extractvalue %dx.types.ResRet.f32 %4375, 3
  %4380 = or i32 %4351, 144
  %4381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4380, i32 undef)  ; BufferLoad(srv,index,wot)
  %4382 = extractvalue %dx.types.ResRet.f32 %4381, 0
  %4383 = extractvalue %dx.types.ResRet.f32 %4381, 1
  %4384 = extractvalue %dx.types.ResRet.f32 %4381, 2
  %4385 = extractvalue %dx.types.ResRet.f32 %4381, 3
  %4386 = or i32 %4351, 160
  %4387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4386, i32 undef)  ; BufferLoad(srv,index,wot)
  %4388 = extractvalue %dx.types.ResRet.f32 %4387, 0
  %4389 = extractvalue %dx.types.ResRet.f32 %4387, 1
  %4390 = extractvalue %dx.types.ResRet.f32 %4387, 2
  %4391 = extractvalue %dx.types.ResRet.f32 %4387, 3
  %4392 = or i32 %4351, 192
  %4393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4392, i32 undef)  ; BufferLoad(srv,index,wot)
  %4394 = extractvalue %dx.types.ResRet.i32 %4393, 0
  %4395 = or i32 %4351, 208
  %4396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4395, i32 undef)  ; BufferLoad(srv,index,wot)
  %4397 = extractvalue %dx.types.ResRet.f32 %4396, 0
  %4398 = or i32 %4351, 248
  %4399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4400 = extractvalue %dx.types.ResRet.f32 %4399, 0
  %4401 = extractvalue %dx.types.ResRet.f32 %4399, 1
  %4402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4351, i32 undef)  ; BufferLoad(srv,index,wot)
  %4403 = extractvalue %dx.types.ResRet.f32 %4402, 0
  %4404 = extractvalue %dx.types.ResRet.f32 %4402, 1
  %4405 = extractvalue %dx.types.ResRet.f32 %4402, 2
  %4406 = extractvalue %dx.types.ResRet.f32 %4402, 3
  %4407 = call float @dx.op.dot4.f32(i32 56, float %4403, float %4404, float %4405, float %4406, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4408 = or i32 %4351, 16
  %4409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4408, i32 undef)  ; BufferLoad(srv,index,wot)
  %4410 = extractvalue %dx.types.ResRet.f32 %4409, 0
  %4411 = extractvalue %dx.types.ResRet.f32 %4409, 1
  %4412 = extractvalue %dx.types.ResRet.f32 %4409, 2
  %4413 = extractvalue %dx.types.ResRet.f32 %4409, 3
  %4414 = call float @dx.op.dot4.f32(i32 56, float %4410, float %4411, float %4412, float %4413, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4415 = or i32 %4351, 32
  %4416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4415, i32 undef)  ; BufferLoad(srv,index,wot)
  %4417 = extractvalue %dx.types.ResRet.f32 %4416, 0
  %4418 = extractvalue %dx.types.ResRet.f32 %4416, 1
  %4419 = extractvalue %dx.types.ResRet.f32 %4416, 2
  %4420 = extractvalue %dx.types.ResRet.f32 %4416, 3
  %4421 = call float @dx.op.dot4.f32(i32 56, float %4417, float %4418, float %4419, float %4420, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4422 = call float @dx.op.unary.f32(i32 27, float %4407)  ; Round_ni(value)
  %4423 = call float @dx.op.unary.f32(i32 6, float %4422)  ; FAbs(value)
  %4424 = call float @dx.op.unary.f32(i32 27, float %4414)  ; Round_ni(value)
  %4425 = call float @dx.op.unary.f32(i32 6, float %4424)  ; FAbs(value)
  %4426 = call float @dx.op.unary.f32(i32 6, float %4421)  ; FAbs(value)
  %4427 = call float @dx.op.unary.f32(i32 27, float %4426)  ; Round_ni(value)
  %4428 = fadd fast float %4425, %4423
  %4429 = fadd fast float %4428, %4427
  %4430 = fcmp fast oeq float %4429, 0.000000e+00
  %4431 = call float @dx.op.dot4.f32(i32 56, float %4403, float %4404, float %4405, float %4406, float %4266, float %4267, float %4268, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4432 = call float @dx.op.dot4.f32(i32 56, float %4410, float %4411, float %4412, float %4413, float %4266, float %4267, float %4268, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4433 = call float @dx.op.dot4.f32(i32 56, float %4403, float %4404, float %4405, float %4406, float %4269, float %4270, float %4271, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4434 = call float @dx.op.dot4.f32(i32 56, float %4410, float %4411, float %4412, float %4413, float %4269, float %4270, float %4271, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4435 = fsub fast float %4431, %4407
  %4436 = fsub fast float %4433, %4407
  %4437 = fsub fast float %4432, %4414
  %4438 = fsub fast float %4434, %4414
  %4439 = call float @dx.op.dot3.f32(i32 55, float %4354, float %4355, float %4356, float %124, float %126, float %128)  ; Dot3(ax,ay,az,bx,by,bz)
  %4440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4441 = extractvalue %dx.types.CBufRet.f32 %4440, 2
  %4442 = fadd fast float %4441, %4439
  %4443 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4444 = extractvalue %dx.types.CBufRet.f32 %4440, 0
  %4445 = fcmp fast ogt float %4443, %4444
  %4446 = and i1 %4430, %4445
  br i1 %4446, label %4471, label %4447

; <label>:4447                                    ; preds = %4759, %4554, %4471, %4322
  %4448 = phi float [ %4324, %4471 ], [ %4557, %4554 ], [ %4557, %4759 ], [ %4324, %4322 ]
  %4449 = phi float [ %4325, %4471 ], [ %4325, %4554 ], [ %4735, %4759 ], [ %4325, %4322 ]
  %4450 = phi float [ %4326, %4471 ], [ %4326, %4554 ], [ %4734, %4759 ], [ %4326, %4322 ]
  %4451 = phi float [ %4327, %4471 ], [ %4327, %4554 ], [ %4732, %4759 ], [ %4327, %4322 ]
  %4452 = phi float [ %4328, %4471 ], [ %4328, %4554 ], [ %4710, %4759 ], [ %4328, %4322 ]
  %4453 = phi float [ %4329, %4471 ], [ %4329, %4554 ], [ %4711, %4759 ], [ %4329, %4322 ]
  %4454 = phi float [ %4330, %4471 ], [ %4330, %4554 ], [ %4712, %4759 ], [ %4330, %4322 ]
  %4455 = phi float [ %4331, %4471 ], [ %4331, %4554 ], [ %4681, %4759 ], [ %4331, %4322 ]
  %4456 = phi float [ %4332, %4471 ], [ %4332, %4554 ], [ %4679, %4759 ], [ %4332, %4322 ]
  %4457 = phi float [ %4333, %4471 ], [ %4333, %4554 ], [ %4769, %4759 ], [ %4333, %4322 ]
  %4458 = phi float [ %4334, %4471 ], [ %4334, %4554 ], [ %4770, %4759 ], [ %4334, %4322 ]
  %4459 = phi float [ %4335, %4471 ], [ %4335, %4554 ], [ %4771, %4759 ], [ %4335, %4322 ]
  %4460 = phi float [ %4336, %4471 ], [ %4336, %4554 ], [ %4660, %4759 ], [ %4336, %4322 ]
  %4461 = phi float [ %4337, %4471 ], [ %4337, %4554 ], [ %4661, %4759 ], [ %4337, %4322 ]
  %4462 = phi float [ %4338, %4471 ], [ %4338, %4554 ], [ %4662, %4759 ], [ %4338, %4322 ]
  %4463 = phi float [ %4339, %4471 ], [ %4339, %4554 ], [ %4690, %4759 ], [ %4339, %4322 ]
  %4464 = phi float [ %4340, %4471 ], [ %4340, %4554 ], [ %4687, %4759 ], [ %4340, %4322 ]
  %4465 = phi float [ %4341, %4471 ], [ %4341, %4554 ], [ %4684, %4759 ], [ %4341, %4322 ]
  %4466 = phi float [ %4342, %4471 ], [ %4342, %4554 ], [ %4677, %4759 ], [ %4342, %4322 ]
  %4467 = phi float [ %4343, %4471 ], [ %4343, %4554 ], [ %4672, %4759 ], [ %4343, %4322 ]
  %4468 = phi float [ %4344, %4471 ], [ %4344, %4554 ], [ %4673, %4759 ], [ %4344, %4322 ]
  %4469 = phi float [ %4345, %4471 ], [ %4345, %4554 ], [ %4674, %4759 ], [ %4345, %4322 ]
  %4470 = icmp eq i32 %4349, 0
  br i1 %4470, label %4772, label %4322

; <label>:4471                                    ; preds = %4322
  %4472 = extractvalue %dx.types.ResRet.f32 %4353, 3
  %4473 = extractvalue %dx.types.ResRet.f32 %4372, 3
  %4474 = extractvalue %dx.types.ResRet.f32 %4372, 1
  %4475 = extractvalue %dx.types.ResRet.f32 %4372, 0
  %4476 = extractvalue %dx.types.ResRet.f32 %4362, 1
  %4477 = extractvalue %dx.types.ResRet.f32 %4362, 0
  %4478 = extractvalue %dx.types.ResRet.i32 %4358, 3
  %4479 = extractvalue %dx.types.ResRet.i32 %4358, 2
  %4480 = bitcast float %4472 to i32
  %4481 = add i32 %4478, 0
  %4482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4481, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4484 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4482, %dx.types.Handle %4483, float %4407, float %4414, float undef, float undef, i32 0, i32 0, i32 undef, float %4435, float %4437, float undef, float %4436, float %4438, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4485 = extractvalue %dx.types.ResRet.f32 %4484, 0
  %4486 = fmul fast float %4485, %4477
  %4487 = fadd fast float %4486, %4476
  %4488 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4489 = fmul fast float %4407, %4367
  %4490 = call float @dx.op.tertiary.f32(i32 46, float %4368, float %4414, float %4489)  ; FMad(a,b,c)
  %4491 = fadd fast float %4490, %4475
  %4492 = fmul fast float %4407, %4369
  %4493 = call float @dx.op.tertiary.f32(i32 46, float %4370, float %4414, float %4492)  ; FMad(a,b,c)
  %4494 = fadd fast float %4493, %4474
  %4495 = fmul fast float %4435, %4367
  %4496 = call float @dx.op.tertiary.f32(i32 46, float %4368, float %4437, float %4495)  ; FMad(a,b,c)
  %4497 = fmul fast float %4435, %4369
  %4498 = call float @dx.op.tertiary.f32(i32 46, float %4370, float %4437, float %4497)  ; FMad(a,b,c)
  %4499 = fmul fast float %4436, %4367
  %4500 = call float @dx.op.tertiary.f32(i32 46, float %4368, float %4438, float %4499)  ; FMad(a,b,c)
  %4501 = fmul fast float %4436, %4369
  %4502 = call float @dx.op.tertiary.f32(i32 46, float %4370, float %4438, float %4501)  ; FMad(a,b,c)
  %4503 = add i32 %4479, 0
  %4504 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4503, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4505 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4504, %dx.types.Handle %4483, float %4491, float %4494, float undef, float undef, i32 0, i32 0, i32 undef, float %4496, float %4498, float undef, float %4500, float %4502, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4506 = extractvalue %dx.types.ResRet.f32 %4505, 0
  %4507 = and i32 %4480, 1024
  %4508 = icmp ne i32 %4507, 0
  %4509 = fcmp fast ogt float %4506, 0x3FE0101020000000
  %4510 = uitofp i1 %4509 to float
  %4511 = select i1 %4508, float %4510, float %4506
  %4512 = and i32 %4480, 8192
  %4513 = icmp ne i32 %4512, 0
  %4514 = select i1 %4513, float %4473, float 1.000000e+00
  %4515 = fmul fast float %4407, 2.000000e+00
  %4516 = fadd fast float %4515, -1.000000e+00
  %4517 = call float @dx.op.unary.f32(i32 6, float %4516)  ; FAbs(value)
  %4518 = fmul fast float %4517, %4400
  %4519 = fsub fast float %4518, %4400
  %4520 = call float @dx.op.unary.f32(i32 7, float %4519)  ; Saturate(value)
  %4521 = fmul fast float %4414, 2.000000e+00
  %4522 = fadd fast float %4521, -1.000000e+00
  %4523 = call float @dx.op.unary.f32(i32 6, float %4522)  ; FAbs(value)
  %4524 = fmul fast float %4523, %4401
  %4525 = fsub fast float %4524, %4401
  %4526 = call float @dx.op.unary.f32(i32 7, float %4525)  ; Saturate(value)
  %4527 = fmul fast float %4426, %4363
  %4528 = fsub fast float %4527, %4363
  %4529 = call float @dx.op.unary.f32(i32 7, float %4528)  ; Saturate(value)
  %4530 = fmul fast float %4488, %4514
  %4531 = fmul fast float %4530, %4485
  %4532 = fmul fast float %4531, %4520
  %4533 = fmul fast float %4532, %4511
  %4534 = fmul fast float %4533, %4526
  %4535 = fmul fast float %4534, %4529
  %4536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4537 = extractvalue %dx.types.CBufRet.f32 %4536, 1
  %4538 = extractvalue %dx.types.CBufRet.f32 %4536, 0
  %4539 = fsub fast float %4443, %4538
  %4540 = fmul fast float %4539, %4537
  %4541 = call float @dx.op.unary.f32(i32 7, float %4540)  ; Saturate(value)
  %4542 = fmul fast float %4535, %4364
  %4543 = fadd fast float %4535, %4364
  %4544 = fmul fast float %4543, %4373
  %4545 = fsub fast float %4544, %4373
  %4546 = call float @dx.op.unary.f32(i32 7, float %4545)  ; Saturate(value)
  %4547 = and i32 %4480, 128
  %4548 = icmp ne i32 %4547, 0
  %4549 = select i1 %4548, float %4546, float %4542
  %4550 = fmul fast float %4549, %4541
  %4551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4552 = extractvalue %dx.types.CBufRet.f32 %4551, 0
  %4553 = fcmp fast ugt float %4550, %4552
  br i1 %4553, label %4554, label %4447

; <label>:4554                                    ; preds = %4471
  %4555 = select i1 %4513, float %4550, float 0.000000e+00
  %4556 = fadd fast float %4555, %4324
  %4557 = call float @dx.op.unary.f32(i32 7, float %4556)  ; Saturate(value)
  br i1 %4513, label %4447, label %4558

; <label>:4558                                    ; preds = %4554
  %4559 = and i32 %4480, 4
  %4560 = and i32 %4480, 8
  %4561 = add i32 %4359, 0
  %4562 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4561, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4563 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4564 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4562, %dx.types.Handle %4563, float %4491, float %4494, float undef, float undef, i32 0, i32 0, i32 undef, float %4496, float %4498, float undef, float %4500, float %4502, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4565 = extractvalue %dx.types.ResRet.f32 %4564, 0
  %4566 = extractvalue %dx.types.ResRet.f32 %4564, 1
  %4567 = extractvalue %dx.types.ResRet.f32 %4564, 2
  %4568 = extractvalue %dx.types.ResRet.f32 %4564, 3
  %4569 = bitcast float %4385 to i32
  %4570 = and i32 %4569, 255
  %4571 = uitofp i32 %4570 to float
  %4572 = lshr i32 %4569, 8
  %4573 = and i32 %4572, 255
  %4574 = uitofp i32 %4573 to float
  %4575 = fmul fast float %4568, %4571
  %4576 = fadd fast float %4575, %4574
  %4577 = fmul fast float %4576, 0x3F70101000000000
  %4578 = add i32 %4360, 0
  %4579 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4578, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4580 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4579, %dx.types.Handle %4563, float %4491, float %4494, float undef, float undef, i32 0, i32 0, i32 undef, float %4496, float %4498, float undef, float %4500, float %4502, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4581 = extractvalue %dx.types.ResRet.f32 %4580, 0
  %4582 = extractvalue %dx.types.ResRet.f32 %4580, 1
  %4583 = extractvalue %dx.types.ResRet.f32 %4580, 2
  %4584 = extractvalue %dx.types.ResRet.f32 %4580, 3
  %4585 = bitcast float %4379 to i32
  %4586 = and i32 %4585, 255
  %4587 = uitofp i32 %4586 to float
  %4588 = lshr i32 %4585, 8
  %4589 = and i32 %4588, 255
  %4590 = uitofp i32 %4589 to float
  %4591 = lshr i32 %4585, 16
  %4592 = and i32 %4591, 255
  %4593 = uitofp i32 %4592 to float
  %4594 = fmul fast float %4593, 0x3F70101000000000
  %4595 = fmul fast float %4581, %4587
  %4596 = fadd fast float %4595, %4590
  %4597 = fmul fast float %4596, 0x3F70101000000000
  %4598 = fadd fast float %4582, -5.000000e-01
  %4599 = fadd fast float %4584, -5.000000e-01
  %4600 = fmul fast float %4598, %4594
  %4601 = fmul fast float %4599, %4594
  %4602 = fadd fast float %4600, 5.000000e-01
  %4603 = fadd fast float %4601, 5.000000e-01
  %4604 = fmul fast float %4565, %4388
  %4605 = fmul fast float %4566, %4389
  %4606 = fmul fast float %4567, %4390
  %4607 = fmul fast float %4602, 2.000000e+00
  %4608 = fadd fast float %4607, -1.000000e+00
  %4609 = fmul fast float %4603, 2.000000e+00
  %4610 = fadd fast float %4609, -1.000000e+00
  %4611 = fadd fast float %4608, %4610
  %4612 = fmul fast float %4611, 5.000000e-01
  %4613 = fsub fast float %4608, %4610
  %4614 = fmul fast float %4613, 5.000000e-01
  %4615 = call float @dx.op.unary.f32(i32 6, float %4612)  ; FAbs(value)
  %4616 = fsub fast float 1.000000e+00, %4615
  %4617 = call float @dx.op.unary.f32(i32 6, float %4614)  ; FAbs(value)
  %4618 = fsub fast float %4616, %4617
  %4619 = call float @dx.op.dot3.f32(i32 55, float %4612, float %4614, float %4618, float %4612, float %4614, float %4618)  ; Dot3(ax,ay,az,bx,by,bz)
  %4620 = call float @dx.op.unary.f32(i32 25, float %4619)  ; Rsqrt(value)
  %4621 = fmul fast float %4612, %4620
  %4622 = fmul fast float %4614, %4620
  %4623 = fmul fast float %4620, %4618
  %4624 = fmul fast float %4623, %4354
  %4625 = fmul fast float %4623, %4355
  %4626 = fmul fast float %4623, %4356
  %4627 = fmul fast float %4621, %4376
  %4628 = fmul fast float %4621, %4377
  %4629 = fmul fast float %4621, %4378
  %4630 = fadd fast float %4627, %4624
  %4631 = fadd fast float %4628, %4625
  %4632 = fadd fast float %4629, %4626
  %4633 = fmul fast float %4622, %4382
  %4634 = fmul fast float %4622, %4383
  %4635 = fmul fast float %4622, %4384
  %4636 = fadd fast float %4630, %4633
  %4637 = fadd fast float %4631, %4634
  %4638 = fadd fast float %4632, %4635
  %4639 = call float @dx.op.dot3.f32(i32 55, float %4636, float %4637, float %4638, float %4636, float %4637, float %4638)  ; Dot3(ax,ay,az,bx,by,bz)
  %4640 = call float @dx.op.unary.f32(i32 25, float %4639)  ; Rsqrt(value)
  %4641 = fmul fast float %4636, %4640
  %4642 = fmul fast float %4637, %4640
  %4643 = fmul fast float %4638, %4640
  %4644 = icmp ne i32 %4560, 0
  %4645 = select i1 %4644, float 1.000000e+00, float 0.000000e+00
  %4646 = fmul fast float %4550, %4645
  %4647 = and i32 %4480, 1
  %4648 = icmp eq i32 %4647, 0
  br i1 %4648, label %4649, label %4653

; <label>:4649                                    ; preds = %4558
  %4650 = fsub fast float %4641, %4336
  %4651 = fsub fast float %4642, %4337
  %4652 = fsub fast float %4643, %4338
  br label %4653

; <label>:4653                                    ; preds = %4649, %4558
  %4654 = phi float [ %4650, %4649 ], [ %4641, %4558 ]
  %4655 = phi float [ %4651, %4649 ], [ %4642, %4558 ]
  %4656 = phi float [ %4652, %4649 ], [ %4643, %4558 ]
  %4657 = fmul float %4656, %4646
  %4658 = fmul float %4655, %4646
  %4659 = fmul float %4654, %4646
  %4660 = fadd fast float %4659, %4336
  %4661 = fadd fast float %4658, %4337
  %4662 = fadd fast float %4657, %4338
  %4663 = icmp ne i32 %4559, 0
  %4664 = select i1 %4663, float 1.000000e+00, float 0.000000e+00
  %4665 = fmul fast float %4550, %4664
  %4666 = fsub fast float %4604, %4343
  %4667 = fsub fast float %4605, %4344
  %4668 = fsub fast float %4606, %4345
  %4669 = fmul fast float %4666, %4665
  %4670 = fmul fast float %4667, %4665
  %4671 = fmul fast float %4668, %4665
  %4672 = fadd fast float %4669, %4343
  %4673 = fadd fast float %4670, %4344
  %4674 = fadd fast float %4671, %4345
  %4675 = fsub fast float %4577, %4342
  %4676 = fmul fast float %4675, %4665
  %4677 = fadd fast float %4676, %4342
  %4678 = fmul fast float %4665, %4332
  %4679 = fsub fast float %4332, %4678
  %4680 = fmul fast float %4665, %4331
  %4681 = fsub fast float %4331, %4680
  %4682 = bitcast float %4397 to i32
  %4683 = fadd fast float %4550, %4341
  %4684 = call float @dx.op.unary.f32(i32 7, float %4683)  ; Saturate(value)
  %4685 = fsub fast float %4597, %4340
  %4686 = fmul fast float %4685, %4646
  %4687 = fadd fast float %4686, %4340
  %4688 = fsub fast float %4583, %4339
  %4689 = fmul fast float %4688, %4646
  %4690 = fadd fast float %4689, %4339
  br i1 %4648, label %4699, label %4691

; <label>:4691                                    ; preds = %4653
  %4692 = and i32 %4480, 32768
  %4693 = icmp eq i32 %4692, 0
  br i1 %4693, label %4709, label %4694

; <label>:4694                                    ; preds = %4691
  %4695 = fmul fast float %4646, 1.270000e+02
  %4696 = fadd fast float %4695, %4328
  %4697 = fadd fast float %4695, %4329
  %4698 = fadd fast float %4695, %4330
  br label %4709

; <label>:4699                                    ; preds = %4653
  %4700 = fsub fast float 1.270000e+02, %4328
  %4701 = fsub fast float 1.270000e+02, %4329
  %4702 = fsub fast float 1.270000e+02, %4330
  %4703 = fmul fast float %4646, %4700
  %4704 = fmul fast float %4646, %4701
  %4705 = fmul fast float %4646, %4702
  %4706 = fadd fast float %4703, %4328
  %4707 = fadd fast float %4704, %4329
  %4708 = fadd fast float %4705, %4330
  br label %4709

; <label>:4709                                    ; preds = %4699, %4694, %4691
  %4710 = phi float [ %4696, %4694 ], [ %4328, %4691 ], [ %4706, %4699 ]
  %4711 = phi float [ %4697, %4694 ], [ %4329, %4691 ], [ %4707, %4699 ]
  %4712 = phi float [ %4698, %4694 ], [ %4330, %4691 ], [ %4708, %4699 ]
  %4713 = call float @dx.op.dot3.f32(i32 55, float %4604, float %4605, float %4606, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4715 = extractvalue %dx.types.CBufRet.f32 %4714, 0
  %4716 = extractvalue %dx.types.CBufRet.f32 %4714, 1
  %4717 = fmul fast float %4716, %4713
  %4718 = fadd fast float %4717, %4715
  %4719 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4720 = bitcast float %4391 to i32
  %4721 = and i32 %4720, 65535
  %4722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4721)  ; LegacyF16ToF32(value)
  %4723 = lshr i32 %4720, 16
  %4724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4723)  ; LegacyF16ToF32(value)
  %4725 = fcmp fast oge float %4722, 0.000000e+00
  %4726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4727 = extractvalue %dx.types.CBufRet.f32 %4726, 0
  %4728 = select i1 %4725, float %4722, float %4727
  %4729 = fadd fast float %4728, %4724
  %4730 = fsub fast float %4719, %4327
  %4731 = fmul fast float %4730, %4550
  %4732 = fadd fast float %4731, %4327
  %4733 = fmul fast float %4729, %4550
  %4734 = call float @dx.op.binary.f32(i32 35, float %4326, float %4733)  ; FMax(a,b)
  %4735 = call float @dx.op.binary.f32(i32 35, float %4325, float %4550)  ; FMax(a,b)
  %4736 = and i32 %4480, 16
  %4737 = icmp eq i32 %4736, 0
  br i1 %4737, label %4759, label %4738

; <label>:4738                                    ; preds = %4709
  %4739 = add i32 %4394, 0
  %4740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4739, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4741 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4740, %dx.types.Handle %4563, float %4491, float %4494, float undef, float undef, i32 0, i32 0, i32 undef, float %4496, float %4498, float undef, float %4500, float %4502, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4742 = extractvalue %dx.types.ResRet.f32 %4741, 0
  %4743 = extractvalue %dx.types.ResRet.f32 %4741, 1
  %4744 = extractvalue %dx.types.ResRet.f32 %4741, 2
  %4745 = and i32 %4682, 65535
  %4746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4745)  ; LegacyF16ToF32(value)
  %4747 = fmul fast float %4742, %4388
  %4748 = fmul fast float %4743, %4389
  %4749 = fmul fast float %4744, %4390
  %4750 = and i32 %4480, 16384
  %4751 = icmp ne i32 %4750, 0
  %4752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4753 = extractvalue %dx.types.CBufRet.f32 %4752, 0
  %4754 = select i1 %4751, float %4753, float 1.000000e+00
  %4755 = fmul fast float %4754, %4746
  %4756 = fmul fast float %4747, %4755
  %4757 = fmul fast float %4748, %4755
  %4758 = fmul fast float %4749, %4755
  br label %4759

; <label>:4759                                    ; preds = %4738, %4709
  %4760 = phi float [ %4756, %4738 ], [ 0.000000e+00, %4709 ]
  %4761 = phi float [ %4757, %4738 ], [ 0.000000e+00, %4709 ]
  %4762 = phi float [ %4758, %4738 ], [ 0.000000e+00, %4709 ]
  %4763 = fsub fast float %4760, %4333
  %4764 = fsub fast float %4761, %4334
  %4765 = fsub fast float %4762, %4335
  %4766 = fmul fast float %4763, %4550
  %4767 = fmul fast float %4764, %4550
  %4768 = fmul fast float %4765, %4550
  %4769 = fadd fast float %4766, %4333
  %4770 = fadd fast float %4767, %4334
  %4771 = fadd fast float %4768, %4335
  br label %4447

; <label>:4772                                    ; preds = %4447
  br label %4773

; <label>:4773                                    ; preds = %4772, %4259
  %4774 = phi float [ 0.000000e+00, %4259 ], [ %4448, %4772 ]
  %4775 = phi float [ %1527, %4259 ], [ %4449, %4772 ]
  %4776 = phi float [ %4198, %4259 ], [ %4450, %4772 ]
  %4777 = phi float [ %4189, %4259 ], [ %4451, %4772 ]
  %4778 = phi float [ %4182, %4259 ], [ %4452, %4772 ]
  %4779 = phi float [ %4183, %4259 ], [ %4453, %4772 ]
  %4780 = phi float [ %4184, %4259 ], [ %4454, %4772 ]
  %4781 = phi float [ 0.000000e+00, %4259 ], [ %4455, %4772 ]
  %4782 = phi float [ 0.000000e+00, %4259 ], [ %4456, %4772 ]
  %4783 = phi float [ %4223, %4259 ], [ %4457, %4772 ]
  %4784 = phi float [ %4226, %4259 ], [ %4458, %4772 ]
  %4785 = phi float [ %4229, %4259 ], [ %4459, %4772 ]
  %4786 = phi float [ %4255, %4259 ], [ %4460, %4772 ]
  %4787 = phi float [ %4256, %4259 ], [ %4461, %4772 ]
  %4788 = phi float [ %4257, %4259 ], [ %4462, %4772 ]
  %4789 = phi float [ %4187, %4259 ], [ %4463, %4772 ]
  %4790 = phi float [ %4186, %4259 ], [ %4464, %4772 ]
  %4791 = phi float [ 0.000000e+00, %4259 ], [ %4465, %4772 ]
  %4792 = phi float [ %4185, %4259 ], [ %4466, %4772 ]
  %4793 = phi float [ %4207, %4259 ], [ %4467, %4772 ]
  %4794 = phi float [ %4208, %4259 ], [ %4468, %4772 ]
  %4795 = phi float [ %4209, %4259 ], [ %4469, %4772 ]
  %4796 = call float @dx.op.dot3.f32(i32 55, float %4786, float %4787, float %4788, float %4786, float %4787, float %4788)  ; Dot3(ax,ay,az,bx,by,bz)
  %4797 = call float @dx.op.unary.f32(i32 25, float %4796)  ; Rsqrt(value)
  %4798 = fmul fast float %4797, %4786
  %4799 = fmul fast float %4797, %4787
  %4800 = fmul fast float %4797, %4788
  %4801 = fadd fast float %4791, %1527
  %4802 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  %4803 = call float @dx.op.dot3.f32(i32 55, float %4798, float %4799, float %4800, float %4798, float %4799, float %4800)  ; Dot3(ax,ay,az,bx,by,bz)
  %4804 = call float @dx.op.unary.f32(i32 25, float %4803)  ; Rsqrt(value)
  %4805 = fmul fast float %4804, %4798
  %4806 = fmul fast float %4804, %4799
  %4807 = fmul fast float %4804, %4800
  br label %4808

; <label>:4808                                    ; preds = %4773, %4173
  %4809 = phi float [ %4805, %4773 ], [ %4255, %4173 ]
  %4810 = phi float [ %4806, %4773 ], [ %4256, %4173 ]
  %4811 = phi float [ %4807, %4773 ], [ %4257, %4173 ]
  %4812 = phi float [ %4793, %4773 ], [ %4207, %4173 ]
  %4813 = phi float [ %4794, %4773 ], [ %4208, %4173 ]
  %4814 = phi float [ %4795, %4773 ], [ %4209, %4173 ]
  %4815 = phi float [ %4783, %4773 ], [ %4223, %4173 ]
  %4816 = phi float [ %4784, %4773 ], [ %4226, %4173 ]
  %4817 = phi float [ %4785, %4773 ], [ %4229, %4173 ]
  %4818 = phi float [ %4778, %4773 ], [ %4182, %4173 ]
  %4819 = phi float [ %4779, %4773 ], [ %4183, %4173 ]
  %4820 = phi float [ %4780, %4773 ], [ %4184, %4173 ]
  %4821 = phi float [ %4792, %4773 ], [ %4185, %4173 ]
  %4822 = phi float [ %4802, %4773 ], [ %1527, %4173 ]
  %4823 = phi float [ %4790, %4773 ], [ %4186, %4173 ]
  %4824 = phi float [ %4789, %4773 ], [ %4187, %4173 ]
  %4825 = phi float [ %4782, %4773 ], [ 0.000000e+00, %4173 ]
  %4826 = phi float [ %4781, %4773 ], [ 0.000000e+00, %4173 ]
  %4827 = phi float [ %4774, %4773 ], [ 0.000000e+00, %4173 ]
  %4828 = phi float [ %4776, %4773 ], [ %4198, %4173 ]
  %4829 = phi float [ %4775, %4773 ], [ %1527, %4173 ]
  %4830 = phi float [ %4777, %4773 ], [ %4189, %4173 ]
  %4831 = fadd fast float %4821, 0xBFB99999A0000000
  %4832 = call float @dx.op.unary.f32(i32 7, float %4831)  ; Saturate(value)
  %4833 = fmul fast float %4832, 0x3FF1C71C80000000
  %4834 = call float @dx.op.binary.f32(i32 36, float %4821, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4835 = fsub fast float 1.000000e+00, %4833
  %4836 = call float @dx.op.unary.f32(i32 7, float %4835)  ; Saturate(value)
  %4837 = fmul fast float %4836, %4812
  %4838 = fmul fast float %4836, %4813
  %4839 = fmul fast float %4836, %4814
  %4840 = call float @dx.op.unary.f32(i32 7, float %4837)  ; Saturate(value)
  %4841 = call float @dx.op.unary.f32(i32 7, float %4838)  ; Saturate(value)
  %4842 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4843 = fmul fast float %4833, %4812
  %4844 = fmul fast float %4833, %4813
  %4845 = fmul fast float %4833, %4814
  %4846 = fadd fast float %4843, %4834
  %4847 = fadd fast float %4844, %4834
  %4848 = fadd fast float %4845, %4834
  %4849 = call float @dx.op.unary.f32(i32 7, float %4846)  ; Saturate(value)
  %4850 = call float @dx.op.unary.f32(i32 7, float %4847)  ; Saturate(value)
  %4851 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4852 = call float @dx.op.unary.f32(i32 7, float %4823)  ; Saturate(value)
  %4853 = call float @dx.op.binary.f32(i32 36, float %4818, float 1.270000e+02)  ; FMin(a,b)
  %4854 = call float @dx.op.binary.f32(i32 36, float %4819, float 1.270000e+02)  ; FMin(a,b)
  %4855 = call float @dx.op.binary.f32(i32 36, float %4820, float 1.270000e+02)  ; FMin(a,b)
  %4856 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4857 = extractvalue %dx.types.CBufRet.i32 %4856, 3
  %4858 = and i32 %4857, 8
  %4859 = icmp ne i32 %4858, 0
  %4860 = call float @dx.op.binary.f32(i32 35, float %4840, float %4812)  ; FMax(a,b)
  %4861 = call float @dx.op.binary.f32(i32 35, float %4841, float %4812)  ; FMax(a,b)
  %4862 = call float @dx.op.binary.f32(i32 35, float %4842, float %4812)  ; FMax(a,b)
  %4863 = call float @dx.op.dot3.f32(i32 55, float %4840, float %4841, float %4842, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4864 = select i1 %268, float %4812, float %4840
  %4865 = select i1 %268, float %4863, float %4841
  %4866 = select i1 %268, float 1.000000e+00, float %4842
  %4867 = select i1 %4859, float %4860, float %4864
  %4868 = select i1 %4859, float %4861, float %4865
  %4869 = select i1 %4859, float %4862, float %4866
  %4870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4871 = extractvalue %dx.types.CBufRet.f32 %4870, 0
  %4872 = extractvalue %dx.types.CBufRet.f32 %4870, 1
  %4873 = extractvalue %dx.types.CBufRet.f32 %4870, 2
  %4874 = fadd fast float %4871, %198
  %4875 = fadd fast float %4872, %199
  %4876 = fadd fast float %4873, %200
  %4877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4878 = extractvalue %dx.types.CBufRet.f32 %4877, 0
  %4879 = extractvalue %dx.types.CBufRet.f32 %4877, 1
  %4880 = fsub fast float %4874, %4878
  %4881 = fsub fast float %4875, %4879
  %4882 = fmul fast float %4880, %4880
  %4883 = fmul fast float %4881, %4881
  %4884 = fadd fast float %4882, %4883
  %4885 = call float @dx.op.unary.f32(i32 24, float %4884)  ; Sqrt(value)
  %4886 = extractvalue %dx.types.CBufRet.f32 %4877, 2
  %4887 = fcmp fast olt float %4885, %4886
  br i1 %4887, label %4888, label %4955

; <label>:4888                                    ; preds = %4808
  %4889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4890 = extractvalue %dx.types.CBufRet.f32 %4889, 0
  %4891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4892 = extractvalue %dx.types.CBufRet.f32 %4891, 0
  %4893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4894 = extractvalue %dx.types.CBufRet.f32 %4893, 0
  %4895 = extractvalue %dx.types.CBufRet.f32 %4889, 1
  %4896 = extractvalue %dx.types.CBufRet.f32 %4891, 1
  %4897 = extractvalue %dx.types.CBufRet.f32 %4893, 1
  %4898 = extractvalue %dx.types.CBufRet.f32 %4889, 3
  %4899 = extractvalue %dx.types.CBufRet.f32 %4891, 3
  %4900 = extractvalue %dx.types.CBufRet.f32 %4893, 3
  %4901 = fadd fast float %4898, %4874
  %4902 = fadd fast float %4899, %4875
  %4903 = fadd fast float %4900, %4876
  %4904 = fmul fast float %4901, %4890
  %4905 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %4892, float %4904)  ; FMad(a,b,c)
  %4906 = call float @dx.op.tertiary.f32(i32 46, float %4903, float %4894, float %4905)  ; FMad(a,b,c)
  %4907 = fmul fast float %4901, %4895
  %4908 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %4896, float %4907)  ; FMad(a,b,c)
  %4909 = call float @dx.op.tertiary.f32(i32 46, float %4903, float %4897, float %4908)  ; FMad(a,b,c)
  %4910 = fsub fast float %4906, %4898
  %4911 = fsub fast float %4909, %4899
  %4912 = fsub fast float %4910, %4878
  %4913 = fadd fast float %4912, %4886
  %4914 = fsub fast float %4911, %4879
  %4915 = fadd fast float %4914, %4886
  %4916 = extractvalue %dx.types.CBufRet.f32 %4877, 3
  %4917 = fmul fast float %4913, %4916
  %4918 = fmul fast float %4915, %4916
  %4919 = call float @dx.op.unary.f32(i32 7, float %4917)  ; Saturate(value)
  %4920 = call float @dx.op.unary.f32(i32 7, float %4918)  ; Saturate(value)
  %4921 = fsub fast float 1.000000e+00, %4919
  %4922 = fsub fast float 1.000000e+00, %4920
  %4923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %4921, float %4922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4924 = extractvalue %dx.types.ResRet.f32 %4923, 0
  %4925 = fcmp fast ugt float %4924, 0.000000e+00
  br i1 %4925, label %4926, label %5229

; <label>:4926                                    ; preds = %4888
  %4927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4928 = extractvalue %dx.types.CBufRet.f32 %4927, 2
  %4929 = fmul fast float %4928, %4924
  %4930 = extractvalue %dx.types.CBufRet.f32 %4927, 3
  %4931 = fadd fast float %4930, %4929
  %4932 = extractvalue %dx.types.CBufRet.f32 %4893, 2
  %4933 = fadd fast float %4931, %4900
  %4934 = fmul fast float %4906, %4894
  %4935 = call float @dx.op.tertiary.f32(i32 46, float %4909, float %4897, float %4934)  ; FMad(a,b,c)
  %4936 = call float @dx.op.tertiary.f32(i32 46, float %4933, float %4932, float %4935)  ; FMad(a,b,c)
  %4937 = fsub fast float %4936, %4900
  %4938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4939 = extractvalue %dx.types.CBufRet.f32 %4938, 2
  %4940 = fsub fast float %4937, %4939
  %4941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %4921, float %4922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4942 = extractvalue %dx.types.ResRet.f32 %4941, 0
  %4943 = extractvalue %dx.types.ResRet.f32 %4941, 1
  %4944 = extractvalue %dx.types.ResRet.f32 %4941, 2
  %4945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %4921, float %4922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4946 = extractvalue %dx.types.ResRet.f32 %4945, 0
  %4947 = extractvalue %dx.types.ResRet.f32 %4945, 1
  %4948 = extractvalue %dx.types.ResRet.f32 %4945, 2
  %4949 = fadd fast float %4946, %4942
  %4950 = fmul fast float %4949, 0x3F847AE140000000
  %4951 = fadd fast float %4947, %4943
  %4952 = fmul fast float %4951, 0x3F847AE140000000
  %4953 = fadd fast float %4948, %4944
  %4954 = fmul fast float %4953, 0x3F847AE140000000
  br label %5229

; <label>:4955                                    ; preds = %4808
  %4956 = and i32 %247, 1
  %4957 = icmp eq i32 %4956, 0
  br i1 %4957, label %5229, label %4958

; <label>:4958                                    ; preds = %4955
  %4959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4960 = extractvalue %dx.types.CBufRet.f32 %4959, 0
  %4961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4962 = extractvalue %dx.types.CBufRet.f32 %4961, 0
  %4963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4964 = extractvalue %dx.types.CBufRet.f32 %4963, 0
  %4965 = extractvalue %dx.types.CBufRet.f32 %4959, 1
  %4966 = extractvalue %dx.types.CBufRet.f32 %4961, 1
  %4967 = extractvalue %dx.types.CBufRet.f32 %4963, 1
  %4968 = extractvalue %dx.types.CBufRet.f32 %4959, 3
  %4969 = extractvalue %dx.types.CBufRet.f32 %4961, 3
  %4970 = extractvalue %dx.types.CBufRet.f32 %4963, 3
  %4971 = fadd fast float %4968, %4874
  %4972 = fadd fast float %4969, %4875
  %4973 = fadd fast float %4970, %4876
  %4974 = fmul fast float %4971, %4960
  %4975 = call float @dx.op.tertiary.f32(i32 46, float %4972, float %4962, float %4974)  ; FMad(a,b,c)
  %4976 = call float @dx.op.tertiary.f32(i32 46, float %4973, float %4964, float %4975)  ; FMad(a,b,c)
  %4977 = fmul fast float %4971, %4965
  %4978 = call float @dx.op.tertiary.f32(i32 46, float %4972, float %4966, float %4977)  ; FMad(a,b,c)
  %4979 = call float @dx.op.tertiary.f32(i32 46, float %4973, float %4967, float %4978)  ; FMad(a,b,c)
  %4980 = fsub fast float %4976, %4968
  %4981 = fsub fast float %4979, %4969
  %4982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4983 = extractvalue %dx.types.CBufRet.f32 %4982, 0
  %4984 = extractvalue %dx.types.CBufRet.f32 %4982, 1
  %4985 = extractvalue %dx.types.CBufRet.f32 %4982, 2
  %4986 = extractvalue %dx.types.CBufRet.f32 %4982, 3
  %4987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4988 = extractvalue %dx.types.CBufRet.f32 %4987, 3
  %4989 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4990 = extractvalue %dx.types.CBufRet.i32 %4989, 0
  %4991 = extractvalue %dx.types.CBufRet.i32 %4989, 1
  %4992 = udiv i32 %4991, %4990
  %4993 = fsub fast float %4980, %4983
  %4994 = fsub fast float %4981, %4984
  %4995 = call float @dx.op.binary.f32(i32 35, float %4993, float 0.000000e+00)  ; FMax(a,b)
  %4996 = call float @dx.op.binary.f32(i32 35, float %4994, float 0.000000e+00)  ; FMax(a,b)
  %4997 = call float @dx.op.binary.f32(i32 36, float %4995, float %4985)  ; FMin(a,b)
  %4998 = call float @dx.op.binary.f32(i32 36, float %4996, float %4986)  ; FMin(a,b)
  %4999 = add i32 %4990, -1
  %5000 = add i32 %4992, -1
  %5001 = fmul fast float %4997, %4988
  %5002 = fmul fast float %4998, %4988
  %5003 = fptoui float %5001 to i32
  %5004 = fptoui float %5002 to i32
  %5005 = call i32 @dx.op.binary.i32(i32 40, i32 %5003, i32 %4999)  ; UMin(a,b)
  %5006 = call i32 @dx.op.binary.i32(i32 40, i32 %5004, i32 %5000)  ; UMin(a,b)
  %5007 = mul i32 %5006, %4990
  %5008 = add i32 %5007, %5005
  %5009 = shl i32 %5008, 2
  %5010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5009, i32 undef)  ; BufferLoad(srv,index,wot)
  %5011 = extractvalue %dx.types.ResRet.i32 %5010, 0
  %5012 = icmp eq i32 %5011, -1
  br i1 %5012, label %5229, label %5013

; <label>:5013                                    ; preds = %4958
  %5014 = mul i32 %5011, 148
  %5015 = add i32 %5014, 4
  %5016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5015, i32 undef)  ; BufferLoad(srv,index,wot)
  %5017 = extractvalue %dx.types.ResRet.f32 %5016, 0
  %5018 = add i32 %5014, 8
  %5019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5018, i32 undef)  ; BufferLoad(srv,index,wot)
  %5020 = extractvalue %dx.types.ResRet.f32 %5019, 0
  %5021 = add i32 %5014, 36
  %5022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5021, i32 undef)  ; BufferLoad(srv,index,wot)
  %5023 = extractvalue %dx.types.ResRet.f32 %5022, 0
  %5024 = add i32 %5014, 60
  %5025 = add i32 %5014, 92
  %5026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5025, i32 undef)  ; BufferLoad(srv,index,wot)
  %5027 = extractvalue %dx.types.ResRet.i32 %5026, 0
  %5028 = add i32 %5014, 116
  %5029 = fsub fast float %4980, %5017
  %5030 = fsub fast float %4981, %5020
  %5031 = fmul fast float %4988, %5029
  %5032 = fmul fast float %4988, %5030
  %5033 = call float @dx.op.unary.f32(i32 7, float %5031)  ; Saturate(value)
  %5034 = call float @dx.op.unary.f32(i32 7, float %5032)  ; Saturate(value)
  %5035 = fsub fast float 1.000000e+00, %5034
  %5036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5037 = extractvalue %dx.types.CBufRet.f32 %5036, 2
  %5038 = call float @dx.op.unary.f32(i32 83, float %5033)  ; DerivCoarseX(value)
  %5039 = call float @dx.op.unary.f32(i32 83, float %5035)  ; DerivCoarseX(value)
  %5040 = call float @dx.op.unary.f32(i32 84, float %5033)  ; DerivCoarseY(value)
  %5041 = call float @dx.op.unary.f32(i32 84, float %5035)  ; DerivCoarseY(value)
  %5042 = fmul fast float %5038, %5037
  %5043 = fmul fast float %5039, %5037
  %5044 = fmul fast float %5040, %5037
  %5045 = fmul fast float %5041, %5037
  %5046 = call float @dx.op.dot2.f32(i32 54, float %5044, float %5045, float %5044, float %5045)  ; Dot2(ax,ay,bx,by)
  %5047 = call float @dx.op.dot2.f32(i32 54, float %5042, float %5043, float %5042, float %5043)  ; Dot2(ax,ay,bx,by)
  %5048 = call float @dx.op.binary.f32(i32 35, float %5047, float %5046)  ; FMax(a,b)
  %5049 = call float @dx.op.unary.f32(i32 23, float %5048)  ; Log(value)
  %5050 = fmul fast float %5049, 5.000000e-01
  %5051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5052 = extractvalue %dx.types.CBufRet.f32 %5051, 1
  %5053 = fadd fast float %5052, %5050
  %5054 = call float @dx.op.binary.f32(i32 35, float %5053, float 0.000000e+00)  ; FMax(a,b)
  %5055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5056 = extractvalue %dx.types.CBufRet.f32 %5055, 3
  %5057 = fadd fast float %5056, %5054
  %5058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5059 = extractvalue %dx.types.CBufRet.f32 %5058, 3
  %5060 = fadd fast float %5057, %5059
  %5061 = add i32 %5027, 0
  %5062 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5061, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5063 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5062, i32 0)  ; GetDimensions(handle,mipLevel)
  %5064 = extractvalue %dx.types.Dimensions %5063, 0
  %5065 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5064)  ; FirstbitLo(value)
  %5066 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5067 = extractvalue %dx.types.CBufRet.i32 %5066, 1
  %5068 = sub nsw i32 %5067, %5065
  %5069 = sitofp i32 %5068 to float
  %5070 = fsub fast float %5060, %5069
  %5071 = call float @dx.op.binary.f32(i32 35, float %5070, float 0.000000e+00)  ; FMax(a,b)
  %5072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5062, %dx.types.Handle %48, float %5033, float %5035, float %5023, float undef, i32 0, i32 0, i32 undef, float %5071)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5073 = extractvalue %dx.types.ResRet.f32 %5072, 0
  %5074 = fcmp ule float %5073, 0x3FE0101020000000
  %5075 = extractvalue %dx.types.CBufRet.i32 %5066, 0
  %5076 = and i32 %5075, 128
  %5077 = icmp ne i32 %5076, 0
  %5078 = and i1 %5074, %5077
  br i1 %5078, label %5229, label %5079

; <label>:5079                                    ; preds = %5013
  %5080 = add i32 %5014, 20
  %5081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5080, i32 undef)  ; BufferLoad(srv,index,wot)
  %5082 = extractvalue %dx.types.ResRet.f32 %5081, 0
  %5083 = add i32 %5014, 24
  %5084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5083, i32 undef)  ; BufferLoad(srv,index,wot)
  %5085 = extractvalue %dx.types.ResRet.f32 %5084, 0
  %5086 = add i32 %5014, 40
  %5087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5086, i32 undef)  ; BufferLoad(srv,index,wot)
  %5088 = extractvalue %dx.types.ResRet.f32 %5087, 0
  %5089 = add i32 %5014, 96
  %5090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5089, i32 undef)  ; BufferLoad(srv,index,wot)
  %5091 = extractvalue %dx.types.ResRet.i32 %5090, 0
  %5092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5093 = extractvalue %dx.types.CBufRet.f32 %5092, 2
  %5094 = fmul fast float %5093, %5033
  %5095 = fmul fast float %5093, %5035
  %5096 = extractvalue %dx.types.CBufRet.f32 %5092, 3
  %5097 = fadd fast float %5094, %5096
  %5098 = fadd fast float %5095, %5096
  %5099 = add i32 %5091, 0
  %5100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5099, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5101 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5100, i32 0)  ; GetDimensions(handle,mipLevel)
  %5102 = extractvalue %dx.types.Dimensions %5101, 0
  %5103 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5102)  ; FirstbitLo(value)
  %5104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5105 = extractvalue %dx.types.CBufRet.i32 %5104, 1
  %5106 = sub nsw i32 %5105, %5103
  %5107 = sitofp i32 %5106 to float
  %5108 = fsub fast float %5057, %5107
  %5109 = call float @dx.op.binary.f32(i32 35, float %5108, float 0.000000e+00)  ; FMax(a,b)
  %5110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5100, %dx.types.Handle %48, float %5097, float %5098, float %5088, float undef, i32 0, i32 0, i32 undef, float %5109)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5111 = extractvalue %dx.types.ResRet.f32 %5110, 0
  %5112 = fmul fast float %5111, %5082
  %5113 = fadd fast float %5112, %5085
  %5114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5115 = extractvalue %dx.types.CBufRet.f32 %5114, 0
  %5116 = extractvalue %dx.types.CBufRet.f32 %5114, 1
  %5117 = extractvalue %dx.types.CBufRet.f32 %5114, 2
  %5118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5119 = extractvalue %dx.types.CBufRet.f32 %5118, 3
  %5120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5121 = extractvalue %dx.types.CBufRet.f32 %5120, 3
  %5122 = extractvalue %dx.types.CBufRet.f32 %5114, 3
  %5123 = fadd fast float %5119, %4980
  %5124 = fadd fast float %5121, %4981
  %5125 = fadd fast float %5113, %5122
  %5126 = fmul fast float %5123, %5115
  %5127 = call float @dx.op.tertiary.f32(i32 46, float %5124, float %5116, float %5126)  ; FMad(a,b,c)
  %5128 = call float @dx.op.tertiary.f32(i32 46, float %5125, float %5117, float %5127)  ; FMad(a,b,c)
  %5129 = fsub fast float %5128, %5122
  %5130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5131 = extractvalue %dx.types.CBufRet.f32 %5130, 2
  %5132 = fsub fast float %5129, %5131
  %5133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5134 = extractvalue %dx.types.CBufRet.i32 %5133, 0
  %5135 = call i32 @dx.op.binary.i32(i32 40, i32 %5011, i32 %5134)  ; UMin(a,b)
  %5136 = mul i32 %5135, 36
  %5137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5136, i32 undef)  ; BufferLoad(srv,index,wot)
  %5138 = extractvalue %dx.types.ResRet.i32 %5137, 0
  %5139 = add i32 %5136, 4
  %5140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.f32 %5140, 0
  %5142 = fmul fast float %5141, %5033
  %5143 = fmul fast float %5141, %5035
  %5144 = extractvalue %dx.types.CBufRet.f32 %5140, 1
  %5145 = fadd fast float %5142, %5144
  %5146 = fadd fast float %5143, %5144
  %5147 = icmp eq i32 %5138, 0
  br i1 %5147, label %5216, label %5148

; <label>:5148                                    ; preds = %5079
  br label %5149

; <label>:5149                                    ; preds = %5206, %5148
  %5150 = phi float [ %5207, %5206 ], [ 0.000000e+00, %5148 ]
  %5151 = phi float [ %5208, %5206 ], [ 0.000000e+00, %5148 ]
  %5152 = phi float [ %5209, %5206 ], [ 0.000000e+00, %5148 ]
  %5153 = phi float [ %5210, %5206 ], [ 0.000000e+00, %5148 ]
  %5154 = phi float [ %5211, %5206 ], [ 0.000000e+00, %5148 ]
  %5155 = phi float [ %5212, %5206 ], [ 0.000000e+00, %5148 ]
  %5156 = phi i32 [ %5213, %5206 ], [ 0, %5148 ]
  %5157 = shl i32 %5156, 2
  %5158 = add i32 %5024, %5157
  %5159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5158, i32 undef)  ; BufferLoad(srv,index,wot)
  %5160 = extractvalue %dx.types.ResRet.f32 %5159, 0
  %5161 = add i32 %5028, %5157
  %5162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5161, i32 undef)  ; BufferLoad(srv,index,wot)
  %5163 = extractvalue %dx.types.ResRet.i32 %5162, 0
  %5164 = add i32 %5163, 0
  %5165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5164, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5166 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5165, i32 0)  ; GetDimensions(handle,mipLevel)
  %5167 = extractvalue %dx.types.Dimensions %5166, 0
  %5168 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5167)  ; FirstbitLo(value)
  %5169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5170 = extractvalue %dx.types.CBufRet.i32 %5169, 1
  %5171 = sub nsw i32 %5170, %5168
  %5172 = sitofp i32 %5171 to float
  %5173 = fsub fast float %5057, %5172
  %5174 = call float @dx.op.binary.f32(i32 35, float %5173, float 0.000000e+00)  ; FMax(a,b)
  %5175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5165, %dx.types.Handle %48, float %5145, float %5146, float %5160, float undef, i32 0, i32 0, i32 undef, float %5174)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5176 = extractvalue %dx.types.ResRet.f32 %5175, 0
  %5177 = fcmp fast ogt float %5176, 0.000000e+00
  br i1 %5177, label %5178, label %5206

; <label>:5178                                    ; preds = %5149
  %5179 = add i32 %5139, %5157
  %5180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5179, i32 undef)  ; BufferLoad(srv,index,wot)
  %5181 = extractvalue %dx.types.ResRet.i32 %5180, 0
  %5182 = and i32 %5181, 32767
  %5183 = mul nuw nsw i32 %5182, 928
  %5184 = add nuw nsw i32 %5183, 48
  %5185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5184, i32 undef)  ; BufferLoad(srv,index,wot)
  %5186 = extractvalue %dx.types.ResRet.f32 %5185, 0
  %5187 = extractvalue %dx.types.ResRet.f32 %5185, 1
  %5188 = extractvalue %dx.types.ResRet.f32 %5185, 2
  %5189 = add nuw nsw i32 %5183, 60
  %5190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5189, i32 undef)  ; BufferLoad(srv,index,wot)
  %5191 = extractvalue %dx.types.ResRet.f32 %5190, 0
  %5192 = extractvalue %dx.types.ResRet.f32 %5190, 1
  %5193 = extractvalue %dx.types.ResRet.f32 %5190, 2
  %5194 = fmul fast float %5186, %5176
  %5195 = fmul fast float %5187, %5176
  %5196 = fmul fast float %5188, %5176
  %5197 = fadd fast float %5194, %5150
  %5198 = fadd fast float %5195, %5151
  %5199 = fadd fast float %5196, %5152
  %5200 = fmul fast float %5191, %5176
  %5201 = fmul fast float %5192, %5176
  %5202 = fmul fast float %5193, %5176
  %5203 = fadd fast float %5200, %5153
  %5204 = fadd fast float %5201, %5154
  %5205 = fadd fast float %5202, %5155
  br label %5206

; <label>:5206                                    ; preds = %5178, %5149
  %5207 = phi float [ %5197, %5178 ], [ %5150, %5149 ]
  %5208 = phi float [ %5198, %5178 ], [ %5151, %5149 ]
  %5209 = phi float [ %5199, %5178 ], [ %5152, %5149 ]
  %5210 = phi float [ %5203, %5178 ], [ %5153, %5149 ]
  %5211 = phi float [ %5204, %5178 ], [ %5154, %5149 ]
  %5212 = phi float [ %5205, %5178 ], [ %5155, %5149 ]
  %5213 = add nuw i32 %5156, 1
  %5214 = icmp eq i32 %5213, %5138
  br i1 %5214, label %5215, label %5149

; <label>:5215                                    ; preds = %5206
  br label %5216

; <label>:5216                                    ; preds = %5215, %5079
  %5217 = phi float [ 0.000000e+00, %5079 ], [ %5207, %5215 ]
  %5218 = phi float [ 0.000000e+00, %5079 ], [ %5208, %5215 ]
  %5219 = phi float [ 0.000000e+00, %5079 ], [ %5209, %5215 ]
  %5220 = phi float [ 0.000000e+00, %5079 ], [ %5210, %5215 ]
  %5221 = phi float [ 0.000000e+00, %5079 ], [ %5211, %5215 ]
  %5222 = phi float [ 0.000000e+00, %5079 ], [ %5212, %5215 ]
  %5223 = fadd fast float %5220, %5217
  %5224 = fmul fast float %5223, 0x3F847AE140000000
  %5225 = fadd fast float %5221, %5218
  %5226 = fmul fast float %5225, 0x3F847AE140000000
  %5227 = fadd fast float %5222, %5219
  %5228 = fmul fast float %5227, 0x3F847AE140000000
  br label %5229

; <label>:5229                                    ; preds = %5216, %5013, %4958, %4955, %4926, %4888
  %5230 = phi float [ %4940, %4926 ], [ -1.310720e+05, %4888 ], [ %5132, %5216 ], [ -1.310720e+05, %4958 ], [ -1.310720e+05, %5013 ], [ -1.310720e+05, %4955 ]
  %5231 = phi float [ %4950, %4926 ], [ 0.000000e+00, %4888 ], [ %5224, %5216 ], [ 0.000000e+00, %4958 ], [ 0.000000e+00, %5013 ], [ 0.000000e+00, %4955 ]
  %5232 = phi float [ %4952, %4926 ], [ 0.000000e+00, %4888 ], [ %5226, %5216 ], [ 0.000000e+00, %4958 ], [ 0.000000e+00, %5013 ], [ 0.000000e+00, %4955 ]
  %5233 = phi float [ %4954, %4926 ], [ 0.000000e+00, %4888 ], [ %5228, %5216 ], [ 0.000000e+00, %4958 ], [ 0.000000e+00, %5013 ], [ 0.000000e+00, %4955 ]
  %5234 = phi i1 [ true, %4926 ], [ false, %4888 ], [ true, %5216 ], [ false, %4958 ], [ false, %5013 ], [ false, %4955 ]
  %5235 = and i32 %247, 3
  %5236 = icmp eq i32 %5235, 1
  %5237 = select i1 %5236, float 1.000000e+00, float 0.000000e+00
  %5238 = fsub fast float %5230, %200
  %5239 = call float @dx.op.unary.f32(i32 7, float %5238)  ; Saturate(value)
  %5240 = select i1 %5234, float %5239, float 1.000000e+00
  %5241 = fmul fast float %5240, %5237
  %5242 = icmp eq i32 %5235, 3
  %5243 = select i1 %5242, float 1.000000e+00, float %5241
  %5244 = call float @dx.op.binary.f32(i32 35, float %4827, float %5243)  ; FMax(a,b)
  %5245 = fcmp fast olt float %5243, 1.000000e+00
  %5246 = and i1 %280, %5245
  br i1 %5246, label %5247, label %5257

; <label>:5247                                    ; preds = %5229
  %5248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %75, float %76, float %77, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5249 = extractvalue %dx.types.ResRet.f32 %5248, 0
  %5250 = extractvalue %dx.types.ResRet.f32 %5248, 1
  %5251 = extractvalue %dx.types.ResRet.f32 %5248, 2
  %5252 = fadd fast float %5249, %5244
  %5253 = fcmp ule float %74, 0.000000e+00
  %5254 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5255 = select i1 %5253, float %5254, float 1.000000e+00
  %5256 = fmul fast float %5255, %5251
  br label %5257

; <label>:5257                                    ; preds = %5247, %5229
  %5258 = phi float [ %5252, %5247 ], [ %5244, %5229 ]
  %5259 = phi float [ %5250, %5247 ], [ 0.000000e+00, %5229 ]
  %5260 = phi float [ %5256, %5247 ], [ 0.000000e+00, %5229 ]
  %5261 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5262 = call float @dx.op.unary.f32(i32 7, float %5259)  ; Saturate(value)
  %5263 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5264 = fcmp fast une float %5262, 0.000000e+00
  %5265 = fcmp fast une float %5263, 0.000000e+00
  %5266 = or i1 %5264, %5265
  br i1 %5266, label %5267, label %5826

; <label>:5267                                    ; preds = %5257
  br i1 %5264, label %5268, label %5541

; <label>:5268                                    ; preds = %5267
  %5269 = call float @dx.op.unary.f32(i32 23, float %4824)  ; Log(value)
  %5270 = fmul fast float %5269, 4.000000e+00
  %5271 = call float @dx.op.unary.f32(i32 21, float %5270)  ; Exp(value)
  %5272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5273 = extractvalue %dx.types.CBufRet.f32 %5272, 0
  %5274 = fmul fast float %5273, %62
  %5275 = fmul fast float %5273, %63
  %5276 = fmul fast float %5273, %64
  %5277 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5278 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %5279 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %5280 = call float @dx.op.unary.f32(i32 23, float %5277)  ; Log(value)
  %5281 = call float @dx.op.unary.f32(i32 23, float %5278)  ; Log(value)
  %5282 = call float @dx.op.unary.f32(i32 23, float %5279)  ; Log(value)
  %5283 = fmul fast float %5280, 4.000000e+00
  %5284 = fmul fast float %5281, 4.000000e+00
  %5285 = fmul fast float %5282, 4.000000e+00
  %5286 = call float @dx.op.unary.f32(i32 21, float %5283)  ; Exp(value)
  %5287 = call float @dx.op.unary.f32(i32 21, float %5284)  ; Exp(value)
  %5288 = call float @dx.op.unary.f32(i32 21, float %5285)  ; Exp(value)
  %5289 = fadd fast float %5287, %5286
  %5290 = fadd fast float %5289, %5288
  %5291 = fdiv fast float 1.000000e+00, %5290
  %5292 = fmul fast float %5291, %5286
  %5293 = fcmp fast ogt float %71, 0.000000e+00
  %5294 = fcmp fast ogt float %72, 0.000000e+00
  %5295 = fcmp fast ogt float %73, 0.000000e+00
  %5296 = fcmp fast olt float %71, 0.000000e+00
  %5297 = fcmp fast olt float %72, 0.000000e+00
  %5298 = fcmp fast olt float %73, 0.000000e+00
  %5299 = zext i1 %5293 to i32
  %5300 = zext i1 %5294 to i32
  %5301 = zext i1 %5295 to i32
  %5302 = zext i1 %5296 to i32
  %5303 = zext i1 %5297 to i32
  %5304 = zext i1 %5298 to i32
  %5305 = sub nsw i32 %5299, %5302
  %5306 = sub nsw i32 %5300, %5303
  %5307 = sub nsw i32 %5301, %5304
  %5308 = call float @dx.op.unary.f32(i32 83, float %5274)  ; DerivCoarseX(value)
  %5309 = call float @dx.op.unary.f32(i32 83, float %5275)  ; DerivCoarseX(value)
  %5310 = call float @dx.op.unary.f32(i32 83, float %5276)  ; DerivCoarseX(value)
  %5311 = call float @dx.op.unary.f32(i32 84, float %5274)  ; DerivCoarseY(value)
  %5312 = call float @dx.op.unary.f32(i32 84, float %5275)  ; DerivCoarseY(value)
  %5313 = call float @dx.op.unary.f32(i32 84, float %5276)  ; DerivCoarseY(value)
  %5314 = fcmp fast ole float %279, %5292
  %5315 = fmul fast float %5291, %5289
  %5316 = fcmp fast ole float %279, %5315
  %5317 = select i1 %5316, float %5276, float %5274
  %5318 = select i1 %5316, float %5274, float %5275
  %5319 = select i1 %5314, float %5275, float %5317
  %5320 = select i1 %5314, float %5276, float %5318
  %5321 = select i1 %5316, float %5310, float %5308
  %5322 = select i1 %5316, float %5308, float %5309
  %5323 = select i1 %5314, float %5309, float %5321
  %5324 = select i1 %5314, float %5310, float %5322
  %5325 = select i1 %5316, float %5313, float %5311
  %5326 = select i1 %5316, float %5311, float %5312
  %5327 = select i1 %5314, float %5312, float %5325
  %5328 = select i1 %5314, float %5313, float %5326
  %5329 = call float @dx.op.unary.f32(i32 27, float %5319)  ; Round_ni(value)
  %5330 = call float @dx.op.unary.f32(i32 27, float %5320)  ; Round_ni(value)
  %5331 = fptosi float %5329 to i32
  %5332 = fptosi float %5330 to i32
  %5333 = xor i32 %5332, %5331
  %5334 = sitofp i32 %5333 to float
  %5335 = fptosi float %5334 to i32
  %5336 = sitofp i32 %5335 to float
  %5337 = fmul fast float %5336, 0x3FE3C6EF40000000
  %5338 = frem fast float %5329, 2.560000e+02
  %5339 = frem fast float %5330, 2.560000e+02
  %5340 = fptoui float %5338 to i32
  %5341 = fptoui float %5339 to i32
  %5342 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5340, i32 %5341, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5343 = extractvalue %dx.types.ResRet.f32 %5342, 0
  %5344 = extractvalue %dx.types.ResRet.f32 %5342, 1
  %5345 = extractvalue %dx.types.ResRet.f32 %5342, 2
  %5346 = fadd fast float %5343, %5337
  %5347 = fadd fast float %5344, %5337
  %5348 = fadd fast float %5345, %5337
  %5349 = call float @dx.op.unary.f32(i32 22, float %5346)  ; Frc(value)
  %5350 = call float @dx.op.unary.f32(i32 22, float %5347)  ; Frc(value)
  %5351 = call float @dx.op.unary.f32(i32 22, float %5348)  ; Frc(value)
  %5352 = fmul fast float %5351, 0x401921FB60000000
  %5353 = call float @dx.op.unary.f32(i32 13, float %5352)  ; Sin(value)
  %5354 = call float @dx.op.unary.f32(i32 12, float %5352)  ; Cos(value)
  %5355 = fsub fast float -0.000000e+00, %5354
  %5356 = fmul fast float %5354, %5319
  %5357 = call float @dx.op.tertiary.f32(i32 46, float %5353, float %5320, float %5356)  ; FMad(a,b,c)
  %5358 = fmul fast float %5353, %5319
  %5359 = call float @dx.op.tertiary.f32(i32 46, float %5355, float %5320, float %5358)  ; FMad(a,b,c)
  %5360 = fadd fast float %5357, %5349
  %5361 = fadd fast float %5359, %5350
  %5362 = extractvalue %dx.types.CBufRet.f32 %5272, 3
  %5363 = bitcast float %5362 to i32
  %5364 = icmp eq i32 %5363, 0
  br i1 %5364, label %5403, label %5365

; <label>:5365                                    ; preds = %5268
  %5366 = add i32 %5363, 0
  %5367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5366, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5368 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5367, %dx.types.Handle %112, float %5360, float %5361, float undef, float undef, i32 0, i32 0, i32 undef, float %5323, float %5324, float undef, float %5327, float %5328, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5369 = extractvalue %dx.types.ResRet.f32 %5368, 0
  %5370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5371 = extractvalue %dx.types.CBufRet.f32 %5370, 1
  %5372 = extractvalue %dx.types.CBufRet.f32 %5370, 2
  %5373 = fsub fast float 1.000000e+00, %5262
  %5374 = call float @dx.op.binary.f32(i32 35, float %5373, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5375 = bitcast float %5262 to i32
  %5376 = sitofp i32 %5375 to float
  %5377 = fadd fast float %5376, 0xC1CFBF8940000000
  %5378 = fmul fast float %5372, %5377
  %5379 = fadd fast float %5378, 0x41CFBF8940000000
  %5380 = fptosi float %5379 to i32
  %5381 = bitcast i32 %5380 to float
  %5382 = bitcast float %5374 to i32
  %5383 = sitofp i32 %5382 to float
  %5384 = fadd fast float %5383, 0xC1CFBF8940000000
  %5385 = fmul fast float %5384, %5372
  %5386 = fadd fast float %5385, 0x41CFBF8940000000
  %5387 = fptosi float %5386 to i32
  %5388 = bitcast i32 %5387 to float
  %5389 = fmul fast float %5381, %5371
  %5390 = fmul fast float %5388, %5371
  %5391 = fsub fast float %5374, %5389
  %5392 = fadd fast float %5390, %5374
  %5393 = call float @dx.op.unary.f32(i32 7, float %5391)  ; Saturate(value)
  %5394 = call float @dx.op.unary.f32(i32 7, float %5392)  ; Saturate(value)
  %5395 = fsub fast float %5369, %5393
  %5396 = fsub fast float %5394, %5393
  %5397 = bitcast float %5396 to i32
  %5398 = sub nsw i32 2129859010, %5397
  %5399 = bitcast i32 %5398 to float
  %5400 = fmul fast float %5399, %5395
  %5401 = call float @dx.op.unary.f32(i32 7, float %5400)  ; Saturate(value)
  %5402 = fcmp fast olt float %5401, 0x3F70101020000000
  br i1 %5402, label %5541, label %5403

; <label>:5403                                    ; preds = %5365, %5268
  %5404 = phi float [ %5401, %5365 ], [ %5262, %5268 ]
  %5405 = fmul fast float %5404, %5271
  %5406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5407 = extractvalue %dx.types.CBufRet.i32 %5406, 1
  %5408 = extractvalue %dx.types.CBufRet.i32 %5406, 0
  %5409 = add i32 %5408, 0
  %5410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5409, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5411 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5410, %dx.types.Handle %111, float %5360, float %5361, float undef, float undef, i32 0, i32 0, i32 undef, float %5323, float %5324, float undef, float %5327, float %5328, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5412 = extractvalue %dx.types.ResRet.f32 %5411, 0
  %5413 = extractvalue %dx.types.ResRet.f32 %5411, 1
  %5414 = extractvalue %dx.types.ResRet.f32 %5411, 2
  %5415 = extractvalue %dx.types.ResRet.f32 %5411, 3
  %5416 = and i32 %5407, 255
  %5417 = uitofp i32 %5416 to float
  %5418 = lshr i32 %5407, 8
  %5419 = and i32 %5418, 255
  %5420 = uitofp i32 %5419 to float
  %5421 = fmul fast float %5415, %5417
  %5422 = fadd fast float %5421, %5420
  %5423 = fmul fast float %5422, 0x3F70101000000000
  %5424 = fadd fast float %5423, 0xBFB99999A0000000
  %5425 = call float @dx.op.unary.f32(i32 7, float %5424)  ; Saturate(value)
  %5426 = fmul fast float %5425, 0x3FF1C71C80000000
  %5427 = call float @dx.op.binary.f32(i32 36, float %5423, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5428 = fsub fast float 1.000000e+00, %5426
  %5429 = call float @dx.op.unary.f32(i32 7, float %5428)  ; Saturate(value)
  %5430 = fmul fast float %5429, %5412
  %5431 = fmul fast float %5429, %5413
  %5432 = fmul fast float %5429, %5414
  %5433 = call float @dx.op.unary.f32(i32 7, float %5430)  ; Saturate(value)
  %5434 = call float @dx.op.unary.f32(i32 7, float %5431)  ; Saturate(value)
  %5435 = call float @dx.op.unary.f32(i32 7, float %5432)  ; Saturate(value)
  %5436 = fmul fast float %5426, %5412
  %5437 = fmul fast float %5426, %5413
  %5438 = fmul fast float %5426, %5414
  %5439 = fadd fast float %5436, %5427
  %5440 = fadd fast float %5437, %5427
  %5441 = fadd fast float %5438, %5427
  %5442 = call float @dx.op.unary.f32(i32 7, float %5439)  ; Saturate(value)
  %5443 = call float @dx.op.unary.f32(i32 7, float %5440)  ; Saturate(value)
  %5444 = call float @dx.op.unary.f32(i32 7, float %5441)  ; Saturate(value)
  %5445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.i32 %5445, 3
  %5447 = extractvalue %dx.types.CBufRet.i32 %5445, 2
  %5448 = add i32 %5447, 0
  %5449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5448, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5450 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5449, %dx.types.Handle %111, float %5360, float %5361, float undef, float undef, i32 0, i32 0, i32 undef, float %5323, float %5324, float undef, float %5327, float %5328, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5451 = extractvalue %dx.types.ResRet.f32 %5450, 0
  %5452 = extractvalue %dx.types.ResRet.f32 %5450, 1
  %5453 = extractvalue %dx.types.ResRet.f32 %5450, 2
  %5454 = extractvalue %dx.types.ResRet.f32 %5450, 3
  %5455 = and i32 %5446, 255
  %5456 = uitofp i32 %5455 to float
  %5457 = lshr i32 %5446, 8
  %5458 = and i32 %5457, 255
  %5459 = uitofp i32 %5458 to float
  %5460 = lshr i32 %5446, 16
  %5461 = and i32 %5460, 255
  %5462 = uitofp i32 %5461 to float
  %5463 = fmul fast float %5462, 0x3F70101000000000
  %5464 = fmul fast float %5451, %5456
  %5465 = fadd fast float %5464, %5459
  %5466 = fmul fast float %5465, 0x3F70101000000000
  %5467 = fadd fast float %5452, -5.000000e-01
  %5468 = fadd fast float %5454, -5.000000e-01
  %5469 = fmul fast float %5467, %5463
  %5470 = fmul fast float %5468, %5463
  %5471 = fadd fast float %5469, 5.000000e-01
  %5472 = fadd fast float %5470, 5.000000e-01
  %5473 = fmul fast float %5471, 2.000000e+00
  %5474 = fadd fast float %5473, -1.000000e+00
  %5475 = fmul fast float %5472, 2.000000e+00
  %5476 = fadd fast float %5475, -1.000000e+00
  %5477 = fadd fast float %5474, %5476
  %5478 = fmul fast float %5477, 5.000000e-01
  %5479 = fsub fast float %5474, %5476
  %5480 = fmul fast float %5479, 5.000000e-01
  %5481 = call float @dx.op.unary.f32(i32 6, float %5478)  ; FAbs(value)
  %5482 = fsub fast float 1.000000e+00, %5481
  %5483 = call float @dx.op.unary.f32(i32 6, float %5480)  ; FAbs(value)
  %5484 = fsub fast float %5482, %5483
  %5485 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5480, float %5484, float %5478, float %5480, float %5484)  ; Dot3(ax,ay,az,bx,by,bz)
  %5486 = call float @dx.op.unary.f32(i32 25, float %5485)  ; Rsqrt(value)
  %5487 = fmul fast float %5478, %5486
  %5488 = fmul fast float %5480, %5486
  %5489 = select i1 %5316, i32 %5306, i32 %5307
  %5490 = select i1 %5314, i32 %5305, i32 %5489
  %5491 = sitofp i32 %5490 to float
  %5492 = fmul fast float %5484, %5491
  %5493 = fmul fast float %5492, %5486
  %5494 = select i1 %5316, float %5493, float %5488
  %5495 = select i1 %5316, float %5488, float %5493
  %5496 = select i1 %5314, float %5493, float %5487
  %5497 = select i1 %5314, float %5488, float %5494
  %5498 = select i1 %5314, float %5487, float %5495
  %5499 = fsub fast float %5433, %4867
  %5500 = fsub fast float %5434, %4868
  %5501 = fsub fast float %5435, %4869
  %5502 = fmul fast float %5499, %5405
  %5503 = fmul fast float %5500, %5405
  %5504 = fmul fast float %5501, %5405
  %5505 = fadd fast float %5502, %4867
  %5506 = fadd fast float %5503, %4868
  %5507 = fadd fast float %5504, %4869
  %5508 = fsub fast float %5442, %4849
  %5509 = fsub fast float %5443, %4850
  %5510 = fsub fast float %5444, %4851
  %5511 = fmul fast float %5508, %5405
  %5512 = fmul fast float %5509, %5405
  %5513 = fmul fast float %5510, %5405
  %5514 = fadd fast float %5511, %4849
  %5515 = fadd fast float %5512, %4850
  %5516 = fadd fast float %5513, %4851
  %5517 = fadd fast float %5496, %4809
  %5518 = fadd fast float %5497, %4810
  %5519 = fadd fast float %5498, %4811
  %5520 = call float @dx.op.dot3.f32(i32 55, float %5517, float %5518, float %5519, float %5517, float %5518, float %5519)  ; Dot3(ax,ay,az,bx,by,bz)
  %5521 = call float @dx.op.unary.f32(i32 25, float %5520)  ; Rsqrt(value)
  %5522 = fmul fast float %5517, %5521
  %5523 = fmul fast float %5518, %5521
  %5524 = fmul fast float %5519, %5521
  %5525 = fsub fast float %5522, %4809
  %5526 = fsub fast float %5523, %4810
  %5527 = fsub fast float %5524, %4811
  %5528 = fmul fast float %5525, %5405
  %5529 = fmul fast float %5526, %5405
  %5530 = fmul fast float %5527, %5405
  %5531 = fadd fast float %5528, %4809
  %5532 = fadd fast float %5529, %4810
  %5533 = fadd fast float %5530, %4811
  %5534 = call float @dx.op.binary.f32(i32 36, float %4824, float %5453)  ; FMin(a,b)
  %5535 = fsub fast float %5534, %4824
  %5536 = fmul fast float %5535, %5405
  %5537 = fadd fast float %5536, %4824
  %5538 = fsub fast float %5466, %4852
  %5539 = fmul fast float %5538, %5405
  %5540 = fadd fast float %5539, %4852
  br label %5541

; <label>:5541                                    ; preds = %5403, %5365, %5267
  %5542 = phi float [ %5505, %5403 ], [ %4867, %5365 ], [ %4867, %5267 ]
  %5543 = phi float [ %5506, %5403 ], [ %4868, %5365 ], [ %4868, %5267 ]
  %5544 = phi float [ %5507, %5403 ], [ %4869, %5365 ], [ %4869, %5267 ]
  %5545 = phi float [ %5514, %5403 ], [ %4849, %5365 ], [ %4849, %5267 ]
  %5546 = phi float [ %5515, %5403 ], [ %4850, %5365 ], [ %4850, %5267 ]
  %5547 = phi float [ %5516, %5403 ], [ %4851, %5365 ], [ %4851, %5267 ]
  %5548 = phi float [ %5531, %5403 ], [ %4809, %5365 ], [ %4809, %5267 ]
  %5549 = phi float [ %5532, %5403 ], [ %4810, %5365 ], [ %4810, %5267 ]
  %5550 = phi float [ %5533, %5403 ], [ %4811, %5365 ], [ %4811, %5267 ]
  %5551 = phi float [ %5540, %5403 ], [ %4852, %5365 ], [ %4852, %5267 ]
  %5552 = phi float [ %5537, %5403 ], [ %4824, %5365 ], [ %4824, %5267 ]
  br i1 %5265, label %5553, label %5826

; <label>:5553                                    ; preds = %5541
  %5554 = call float @dx.op.unary.f32(i32 23, float %5552)  ; Log(value)
  %5555 = fmul fast float %5554, 4.000000e+00
  %5556 = call float @dx.op.unary.f32(i32 21, float %5555)  ; Exp(value)
  %5557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5558 = extractvalue %dx.types.CBufRet.f32 %5557, 0
  %5559 = fmul fast float %5558, %62
  %5560 = fmul fast float %5558, %63
  %5561 = fmul fast float %5558, %64
  %5562 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5563 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %5564 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %5565 = call float @dx.op.unary.f32(i32 23, float %5562)  ; Log(value)
  %5566 = call float @dx.op.unary.f32(i32 23, float %5563)  ; Log(value)
  %5567 = call float @dx.op.unary.f32(i32 23, float %5564)  ; Log(value)
  %5568 = fmul fast float %5565, 4.000000e+00
  %5569 = fmul fast float %5566, 4.000000e+00
  %5570 = fmul fast float %5567, 4.000000e+00
  %5571 = call float @dx.op.unary.f32(i32 21, float %5568)  ; Exp(value)
  %5572 = call float @dx.op.unary.f32(i32 21, float %5569)  ; Exp(value)
  %5573 = call float @dx.op.unary.f32(i32 21, float %5570)  ; Exp(value)
  %5574 = fadd fast float %5572, %5571
  %5575 = fadd fast float %5574, %5573
  %5576 = fdiv fast float 1.000000e+00, %5575
  %5577 = fmul fast float %5576, %5571
  %5578 = fcmp fast ogt float %71, 0.000000e+00
  %5579 = fcmp fast ogt float %72, 0.000000e+00
  %5580 = fcmp fast ogt float %73, 0.000000e+00
  %5581 = fcmp fast olt float %71, 0.000000e+00
  %5582 = fcmp fast olt float %72, 0.000000e+00
  %5583 = fcmp fast olt float %73, 0.000000e+00
  %5584 = zext i1 %5578 to i32
  %5585 = zext i1 %5579 to i32
  %5586 = zext i1 %5580 to i32
  %5587 = zext i1 %5581 to i32
  %5588 = zext i1 %5582 to i32
  %5589 = zext i1 %5583 to i32
  %5590 = sub nsw i32 %5584, %5587
  %5591 = sub nsw i32 %5585, %5588
  %5592 = sub nsw i32 %5586, %5589
  %5593 = call float @dx.op.unary.f32(i32 83, float %5559)  ; DerivCoarseX(value)
  %5594 = call float @dx.op.unary.f32(i32 83, float %5560)  ; DerivCoarseX(value)
  %5595 = call float @dx.op.unary.f32(i32 83, float %5561)  ; DerivCoarseX(value)
  %5596 = call float @dx.op.unary.f32(i32 84, float %5559)  ; DerivCoarseY(value)
  %5597 = call float @dx.op.unary.f32(i32 84, float %5560)  ; DerivCoarseY(value)
  %5598 = call float @dx.op.unary.f32(i32 84, float %5561)  ; DerivCoarseY(value)
  %5599 = fcmp fast ole float %279, %5577
  %5600 = fmul fast float %5576, %5574
  %5601 = fcmp fast ole float %279, %5600
  %5602 = select i1 %5601, float %5561, float %5559
  %5603 = select i1 %5601, float %5559, float %5560
  %5604 = select i1 %5599, float %5560, float %5602
  %5605 = select i1 %5599, float %5561, float %5603
  %5606 = select i1 %5601, float %5595, float %5593
  %5607 = select i1 %5601, float %5593, float %5594
  %5608 = select i1 %5599, float %5594, float %5606
  %5609 = select i1 %5599, float %5595, float %5607
  %5610 = select i1 %5601, float %5598, float %5596
  %5611 = select i1 %5601, float %5596, float %5597
  %5612 = select i1 %5599, float %5597, float %5610
  %5613 = select i1 %5599, float %5598, float %5611
  %5614 = call float @dx.op.unary.f32(i32 27, float %5604)  ; Round_ni(value)
  %5615 = call float @dx.op.unary.f32(i32 27, float %5605)  ; Round_ni(value)
  %5616 = fptosi float %5614 to i32
  %5617 = fptosi float %5615 to i32
  %5618 = xor i32 %5617, %5616
  %5619 = sitofp i32 %5618 to float
  %5620 = fptosi float %5619 to i32
  %5621 = sitofp i32 %5620 to float
  %5622 = fmul fast float %5621, 0x3FE3C6EF40000000
  %5623 = frem fast float %5614, 2.560000e+02
  %5624 = frem fast float %5615, 2.560000e+02
  %5625 = fptoui float %5623 to i32
  %5626 = fptoui float %5624 to i32
  %5627 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5625, i32 %5626, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5628 = extractvalue %dx.types.ResRet.f32 %5627, 0
  %5629 = extractvalue %dx.types.ResRet.f32 %5627, 1
  %5630 = extractvalue %dx.types.ResRet.f32 %5627, 2
  %5631 = fadd fast float %5628, %5622
  %5632 = fadd fast float %5629, %5622
  %5633 = fadd fast float %5630, %5622
  %5634 = call float @dx.op.unary.f32(i32 22, float %5631)  ; Frc(value)
  %5635 = call float @dx.op.unary.f32(i32 22, float %5632)  ; Frc(value)
  %5636 = call float @dx.op.unary.f32(i32 22, float %5633)  ; Frc(value)
  %5637 = fmul fast float %5636, 0x401921FB60000000
  %5638 = call float @dx.op.unary.f32(i32 13, float %5637)  ; Sin(value)
  %5639 = call float @dx.op.unary.f32(i32 12, float %5637)  ; Cos(value)
  %5640 = fsub fast float -0.000000e+00, %5639
  %5641 = fmul fast float %5639, %5604
  %5642 = call float @dx.op.tertiary.f32(i32 46, float %5638, float %5605, float %5641)  ; FMad(a,b,c)
  %5643 = fmul fast float %5638, %5604
  %5644 = call float @dx.op.tertiary.f32(i32 46, float %5640, float %5605, float %5643)  ; FMad(a,b,c)
  %5645 = fadd fast float %5642, %5634
  %5646 = fadd fast float %5644, %5635
  %5647 = extractvalue %dx.types.CBufRet.f32 %5557, 3
  %5648 = bitcast float %5647 to i32
  %5649 = icmp eq i32 %5648, 0
  br i1 %5649, label %5688, label %5650

; <label>:5650                                    ; preds = %5553
  %5651 = add i32 %5648, 0
  %5652 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5651, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5653 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5652, %dx.types.Handle %112, float %5645, float %5646, float undef, float undef, i32 0, i32 0, i32 undef, float %5608, float %5609, float undef, float %5612, float %5613, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5654 = extractvalue %dx.types.ResRet.f32 %5653, 0
  %5655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5656 = extractvalue %dx.types.CBufRet.f32 %5655, 1
  %5657 = extractvalue %dx.types.CBufRet.f32 %5655, 2
  %5658 = fsub fast float 1.000000e+00, %5263
  %5659 = call float @dx.op.binary.f32(i32 35, float %5658, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5660 = bitcast float %5263 to i32
  %5661 = sitofp i32 %5660 to float
  %5662 = fadd fast float %5661, 0xC1CFBF8940000000
  %5663 = fmul fast float %5657, %5662
  %5664 = fadd fast float %5663, 0x41CFBF8940000000
  %5665 = fptosi float %5664 to i32
  %5666 = bitcast i32 %5665 to float
  %5667 = bitcast float %5659 to i32
  %5668 = sitofp i32 %5667 to float
  %5669 = fadd fast float %5668, 0xC1CFBF8940000000
  %5670 = fmul fast float %5669, %5657
  %5671 = fadd fast float %5670, 0x41CFBF8940000000
  %5672 = fptosi float %5671 to i32
  %5673 = bitcast i32 %5672 to float
  %5674 = fmul fast float %5666, %5656
  %5675 = fmul fast float %5673, %5656
  %5676 = fsub fast float %5659, %5674
  %5677 = fadd fast float %5675, %5659
  %5678 = call float @dx.op.unary.f32(i32 7, float %5676)  ; Saturate(value)
  %5679 = call float @dx.op.unary.f32(i32 7, float %5677)  ; Saturate(value)
  %5680 = fsub fast float %5654, %5678
  %5681 = fsub fast float %5679, %5678
  %5682 = bitcast float %5681 to i32
  %5683 = sub nsw i32 2129859010, %5682
  %5684 = bitcast i32 %5683 to float
  %5685 = fmul fast float %5684, %5680
  %5686 = call float @dx.op.unary.f32(i32 7, float %5685)  ; Saturate(value)
  %5687 = fcmp fast olt float %5686, 0x3F70101020000000
  br i1 %5687, label %5826, label %5688

; <label>:5688                                    ; preds = %5650, %5553
  %5689 = phi float [ %5686, %5650 ], [ %5263, %5553 ]
  %5690 = fmul fast float %5689, %5556
  %5691 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5692 = extractvalue %dx.types.CBufRet.i32 %5691, 1
  %5693 = extractvalue %dx.types.CBufRet.i32 %5691, 0
  %5694 = add i32 %5693, 0
  %5695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5694, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5696 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5695, %dx.types.Handle %111, float %5645, float %5646, float undef, float undef, i32 0, i32 0, i32 undef, float %5608, float %5609, float undef, float %5612, float %5613, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5697 = extractvalue %dx.types.ResRet.f32 %5696, 0
  %5698 = extractvalue %dx.types.ResRet.f32 %5696, 1
  %5699 = extractvalue %dx.types.ResRet.f32 %5696, 2
  %5700 = extractvalue %dx.types.ResRet.f32 %5696, 3
  %5701 = and i32 %5692, 255
  %5702 = uitofp i32 %5701 to float
  %5703 = lshr i32 %5692, 8
  %5704 = and i32 %5703, 255
  %5705 = uitofp i32 %5704 to float
  %5706 = fmul fast float %5700, %5702
  %5707 = fadd fast float %5706, %5705
  %5708 = fmul fast float %5707, 0x3F70101000000000
  %5709 = fadd fast float %5708, 0xBFB99999A0000000
  %5710 = call float @dx.op.unary.f32(i32 7, float %5709)  ; Saturate(value)
  %5711 = fmul fast float %5710, 0x3FF1C71C80000000
  %5712 = call float @dx.op.binary.f32(i32 36, float %5708, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5713 = fsub fast float 1.000000e+00, %5711
  %5714 = call float @dx.op.unary.f32(i32 7, float %5713)  ; Saturate(value)
  %5715 = fmul fast float %5714, %5697
  %5716 = fmul fast float %5714, %5698
  %5717 = fmul fast float %5714, %5699
  %5718 = call float @dx.op.unary.f32(i32 7, float %5715)  ; Saturate(value)
  %5719 = call float @dx.op.unary.f32(i32 7, float %5716)  ; Saturate(value)
  %5720 = call float @dx.op.unary.f32(i32 7, float %5717)  ; Saturate(value)
  %5721 = fmul fast float %5711, %5697
  %5722 = fmul fast float %5711, %5698
  %5723 = fmul fast float %5711, %5699
  %5724 = fadd fast float %5721, %5712
  %5725 = fadd fast float %5722, %5712
  %5726 = fadd fast float %5723, %5712
  %5727 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  %5728 = call float @dx.op.unary.f32(i32 7, float %5725)  ; Saturate(value)
  %5729 = call float @dx.op.unary.f32(i32 7, float %5726)  ; Saturate(value)
  %5730 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5731 = extractvalue %dx.types.CBufRet.i32 %5730, 3
  %5732 = extractvalue %dx.types.CBufRet.i32 %5730, 2
  %5733 = add i32 %5732, 0
  %5734 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5733, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5735 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5734, %dx.types.Handle %111, float %5645, float %5646, float undef, float undef, i32 0, i32 0, i32 undef, float %5608, float %5609, float undef, float %5612, float %5613, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5736 = extractvalue %dx.types.ResRet.f32 %5735, 0
  %5737 = extractvalue %dx.types.ResRet.f32 %5735, 1
  %5738 = extractvalue %dx.types.ResRet.f32 %5735, 2
  %5739 = extractvalue %dx.types.ResRet.f32 %5735, 3
  %5740 = and i32 %5731, 255
  %5741 = uitofp i32 %5740 to float
  %5742 = lshr i32 %5731, 8
  %5743 = and i32 %5742, 255
  %5744 = uitofp i32 %5743 to float
  %5745 = lshr i32 %5731, 16
  %5746 = and i32 %5745, 255
  %5747 = uitofp i32 %5746 to float
  %5748 = fmul fast float %5747, 0x3F70101000000000
  %5749 = fmul fast float %5736, %5741
  %5750 = fadd fast float %5749, %5744
  %5751 = fmul fast float %5750, 0x3F70101000000000
  %5752 = fadd fast float %5737, -5.000000e-01
  %5753 = fadd fast float %5739, -5.000000e-01
  %5754 = fmul fast float %5752, %5748
  %5755 = fmul fast float %5753, %5748
  %5756 = fadd fast float %5754, 5.000000e-01
  %5757 = fadd fast float %5755, 5.000000e-01
  %5758 = fmul fast float %5756, 2.000000e+00
  %5759 = fadd fast float %5758, -1.000000e+00
  %5760 = fmul fast float %5757, 2.000000e+00
  %5761 = fadd fast float %5760, -1.000000e+00
  %5762 = fadd fast float %5759, %5761
  %5763 = fmul fast float %5762, 5.000000e-01
  %5764 = fsub fast float %5759, %5761
  %5765 = fmul fast float %5764, 5.000000e-01
  %5766 = call float @dx.op.unary.f32(i32 6, float %5763)  ; FAbs(value)
  %5767 = fsub fast float 1.000000e+00, %5766
  %5768 = call float @dx.op.unary.f32(i32 6, float %5765)  ; FAbs(value)
  %5769 = fsub fast float %5767, %5768
  %5770 = call float @dx.op.dot3.f32(i32 55, float %5763, float %5765, float %5769, float %5763, float %5765, float %5769)  ; Dot3(ax,ay,az,bx,by,bz)
  %5771 = call float @dx.op.unary.f32(i32 25, float %5770)  ; Rsqrt(value)
  %5772 = fmul fast float %5763, %5771
  %5773 = fmul fast float %5765, %5771
  %5774 = select i1 %5601, i32 %5591, i32 %5592
  %5775 = select i1 %5599, i32 %5590, i32 %5774
  %5776 = sitofp i32 %5775 to float
  %5777 = fmul fast float %5769, %5776
  %5778 = fmul fast float %5777, %5771
  %5779 = select i1 %5601, float %5778, float %5773
  %5780 = select i1 %5601, float %5773, float %5778
  %5781 = select i1 %5599, float %5778, float %5772
  %5782 = select i1 %5599, float %5773, float %5779
  %5783 = select i1 %5599, float %5772, float %5780
  %5784 = fsub fast float %5718, %5542
  %5785 = fsub fast float %5719, %5543
  %5786 = fsub fast float %5720, %5544
  %5787 = fmul fast float %5784, %5690
  %5788 = fmul fast float %5785, %5690
  %5789 = fmul fast float %5786, %5690
  %5790 = fadd fast float %5787, %5542
  %5791 = fadd fast float %5788, %5543
  %5792 = fadd fast float %5789, %5544
  %5793 = fsub fast float %5727, %5545
  %5794 = fsub fast float %5728, %5546
  %5795 = fsub fast float %5729, %5547
  %5796 = fmul fast float %5793, %5690
  %5797 = fmul fast float %5794, %5690
  %5798 = fmul fast float %5795, %5690
  %5799 = fadd fast float %5796, %5545
  %5800 = fadd fast float %5797, %5546
  %5801 = fadd fast float %5798, %5547
  %5802 = fadd fast float %5781, %5548
  %5803 = fadd fast float %5782, %5549
  %5804 = fadd fast float %5783, %5550
  %5805 = call float @dx.op.dot3.f32(i32 55, float %5802, float %5803, float %5804, float %5802, float %5803, float %5804)  ; Dot3(ax,ay,az,bx,by,bz)
  %5806 = call float @dx.op.unary.f32(i32 25, float %5805)  ; Rsqrt(value)
  %5807 = fmul fast float %5802, %5806
  %5808 = fmul fast float %5803, %5806
  %5809 = fmul fast float %5804, %5806
  %5810 = fsub fast float %5807, %5548
  %5811 = fsub fast float %5808, %5549
  %5812 = fsub fast float %5809, %5550
  %5813 = fmul fast float %5810, %5690
  %5814 = fmul fast float %5811, %5690
  %5815 = fmul fast float %5812, %5690
  %5816 = fadd fast float %5813, %5548
  %5817 = fadd fast float %5814, %5549
  %5818 = fadd fast float %5815, %5550
  %5819 = call float @dx.op.binary.f32(i32 36, float %5552, float %5738)  ; FMin(a,b)
  %5820 = fsub fast float %5819, %5552
  %5821 = fmul fast float %5820, %5690
  %5822 = fadd fast float %5821, %5552
  %5823 = fsub fast float %5751, %5551
  %5824 = fmul fast float %5823, %5690
  %5825 = fadd fast float %5824, %5551
  br label %5826

; <label>:5826                                    ; preds = %5688, %5650, %5541, %5257
  %5827 = phi float [ %5790, %5688 ], [ %5542, %5650 ], [ %5542, %5541 ], [ %4867, %5257 ]
  %5828 = phi float [ %5791, %5688 ], [ %5543, %5650 ], [ %5543, %5541 ], [ %4868, %5257 ]
  %5829 = phi float [ %5792, %5688 ], [ %5544, %5650 ], [ %5544, %5541 ], [ %4869, %5257 ]
  %5830 = phi float [ %5799, %5688 ], [ %5545, %5650 ], [ %5545, %5541 ], [ %4849, %5257 ]
  %5831 = phi float [ %5800, %5688 ], [ %5546, %5650 ], [ %5546, %5541 ], [ %4850, %5257 ]
  %5832 = phi float [ %5801, %5688 ], [ %5547, %5650 ], [ %5547, %5541 ], [ %4851, %5257 ]
  %5833 = phi float [ %5816, %5688 ], [ %5548, %5650 ], [ %5548, %5541 ], [ %4809, %5257 ]
  %5834 = phi float [ %5817, %5688 ], [ %5549, %5650 ], [ %5549, %5541 ], [ %4810, %5257 ]
  %5835 = phi float [ %5818, %5688 ], [ %5550, %5650 ], [ %5550, %5541 ], [ %4811, %5257 ]
  %5836 = phi float [ %5825, %5688 ], [ %5551, %5650 ], [ %5551, %5541 ], [ %4852, %5257 ]
  %5837 = phi float [ %5822, %5688 ], [ %5552, %5650 ], [ %5552, %5541 ], [ %4824, %5257 ]
  %5838 = fcmp fast une float %5261, 0.000000e+00
  br i1 %5838, label %5839, label %6008

; <label>:5839                                    ; preds = %5826
  %5840 = call float @dx.op.dot3.f32(i32 55, float %198, float %199, float %200, float %198, float %199, float %200)  ; Dot3(ax,ay,az,bx,by,bz)
  %5841 = call float @dx.op.unary.f32(i32 25, float %5840)  ; Rsqrt(value)
  %5842 = fmul fast float %198, %5841
  %5843 = fsub fast float -0.000000e+00, %5842
  %5844 = fmul fast float %199, %5841
  %5845 = fsub fast float -0.000000e+00, %5844
  %5846 = fmul fast float %200, %5841
  %5847 = fsub fast float -0.000000e+00, %5846
  %5848 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5845, float %5847, float %124, float %126, float %128)  ; Dot3(ax,ay,az,bx,by,bz)
  %5849 = fmul fast float %5261, 2.500000e+00
  %5850 = call float @dx.op.unary.f32(i32 7, float %5849)  ; Saturate(value)
  %5851 = fmul fast float %5261, 0x4013FFFFE0000000
  %5852 = fadd fast float %5851, 0xBFFFFFFFE0000000
  %5853 = call float @dx.op.unary.f32(i32 7, float %5852)  ; Saturate(value)
  %5854 = fmul fast float %5261, 0x4004000020000000
  %5855 = fadd fast float %5854, 0xBFF8000040000000
  %5856 = call float @dx.op.unary.f32(i32 7, float %5855)  ; Saturate(value)
  %5857 = fmul fast float %4831, 1.000000e+01
  %5858 = call float @dx.op.unary.f32(i32 7, float %5857)  ; Saturate(value)
  %5859 = fmul fast float %5858, 2.000000e+00
  %5860 = fsub fast float 3.000000e+00, %5859
  %5861 = fmul fast float %5858, %5858
  %5862 = fmul fast float %5861, %5860
  %5863 = fsub fast float 1.000000e+00, %5862
  %5864 = fsub fast float 0x3FE3333340000000, %5836
  %5865 = fmul fast float %5864, 0x400AAAAAA0000000
  %5866 = call float @dx.op.unary.f32(i32 7, float %5865)  ; Saturate(value)
  %5867 = fmul fast float %5863, %5866
  %5868 = fmul fast float %5827, 0x3FEA2B8620000000
  %5869 = fmul fast float %5828, 0x3FEA2B8620000000
  %5870 = fmul fast float %5829, 0x3FEA2B8620000000
  %5871 = fadd fast float %5868, 0x3FC81DFBA0000000
  %5872 = fmul fast float %5871, %5827
  %5873 = fadd fast float %5872, 0x3F910E6020000000
  %5874 = fadd fast float %5869, 0x3FC81DFBA0000000
  %5875 = fmul fast float %5874, %5828
  %5876 = fadd fast float %5875, 0x3F910E6020000000
  %5877 = fadd fast float %5870, 0x3FC81DFBA0000000
  %5878 = fmul fast float %5877, %5829
  %5879 = fadd fast float %5878, 0x3F910E6020000000
  %5880 = call float @dx.op.unary.f32(i32 7, float %5873)  ; Saturate(value)
  %5881 = call float @dx.op.unary.f32(i32 7, float %5876)  ; Saturate(value)
  %5882 = call float @dx.op.unary.f32(i32 7, float %5879)  ; Saturate(value)
  %5883 = fsub fast float %5880, %5827
  %5884 = fsub fast float %5881, %5828
  %5885 = fsub fast float %5882, %5829
  %5886 = fmul fast float %5883, %5850
  %5887 = fmul fast float %5886, %5867
  %5888 = fmul fast float %5884, %5850
  %5889 = fmul fast float %5888, %5867
  %5890 = fmul fast float %5885, %5850
  %5891 = fmul fast float %5890, %5867
  %5892 = fadd fast float %5887, %5827
  %5893 = fadd fast float %5889, %5828
  %5894 = fadd fast float %5891, %5829
  %5895 = fmul fast float %5837, %5837
  %5896 = fmul fast float %5895, %5895
  %5897 = fadd fast float %5853, 1.000000e+00
  %5898 = fsub fast float %5897, %5867
  %5899 = call float @dx.op.unary.f32(i32 7, float %5898)  ; Saturate(value)
  %5900 = call float @dx.op.dot3.f32(i32 55, float %124, float %126, float %128, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5901 = call float @dx.op.unary.f32(i32 7, float %5900)  ; Saturate(value)
  %5902 = fsub fast float 1.000000e+00, %5896
  %5903 = call float @dx.op.binary.f32(i32 36, float %5899, float %5902)  ; FMin(a,b)
  %5904 = call float @dx.op.unary.f32(i32 7, float %5856)  ; Saturate(value)
  %5905 = call float @dx.op.binary.f32(i32 35, float %5903, float %5904)  ; FMax(a,b)
  %5906 = fadd fast float %5901, 0xBFE4CCCCC0000000
  %5907 = fmul fast float %5906, 0x4006DB6DA0000000
  %5908 = call float @dx.op.unary.f32(i32 7, float %5907)  ; Saturate(value)
  %5909 = fmul fast float %5908, 2.000000e+00
  %5910 = fsub fast float 3.000000e+00, %5909
  %5911 = bitcast float %5830 to i32
  %5912 = ashr i32 %5911, 1
  %5913 = add nsw i32 %5912, 532487669
  %5914 = bitcast i32 %5913 to float
  %5915 = fsub fast float 1.000000e+00, %5914
  %5916 = bitcast float %5915 to i32
  %5917 = sub nsw i32 2129859010, %5916
  %5918 = bitcast i32 %5917 to float
  %5919 = fmul fast float %5918, 2.000000e+00
  %5920 = bitcast float %5831 to i32
  %5921 = ashr i32 %5920, 1
  %5922 = add nsw i32 %5921, 532487669
  %5923 = bitcast i32 %5922 to float
  %5924 = fsub fast float 1.000000e+00, %5923
  %5925 = bitcast float %5924 to i32
  %5926 = sub nsw i32 2129859010, %5925
  %5927 = bitcast i32 %5926 to float
  %5928 = fmul fast float %5927, 2.000000e+00
  %5929 = bitcast float %5832 to i32
  %5930 = ashr i32 %5929, 1
  %5931 = add nsw i32 %5930, 532487669
  %5932 = bitcast i32 %5931 to float
  %5933 = fsub fast float 1.000000e+00, %5932
  %5934 = bitcast float %5933 to i32
  %5935 = sub nsw i32 2129859010, %5934
  %5936 = bitcast i32 %5935 to float
  %5937 = fmul fast float %5936, 2.000000e+00
  %5938 = fsub fast float 0x4002A9FBE0000000, %5919
  %5939 = fadd fast float %5919, 0x3FD54FDF00000000
  %5940 = bitcast float %5939 to i32
  %5941 = sub nsw i32 2129859010, %5940
  %5942 = bitcast i32 %5941 to float
  %5943 = fmul fast float %5942, %5938
  %5944 = fmul fast float %5943, %5943
  %5945 = fsub fast float 0x4002A9FBE0000000, %5928
  %5946 = fadd fast float %5928, 0x3FD54FDF00000000
  %5947 = bitcast float %5946 to i32
  %5948 = sub nsw i32 2129859010, %5947
  %5949 = bitcast i32 %5948 to float
  %5950 = fmul fast float %5949, %5945
  %5951 = fmul fast float %5950, %5950
  %5952 = fsub fast float 0x4002A9FBE0000000, %5937
  %5953 = fadd fast float %5937, 0x3FD54FDF00000000
  %5954 = bitcast float %5953 to i32
  %5955 = sub nsw i32 2129859010, %5954
  %5956 = bitcast i32 %5955 to float
  %5957 = fmul fast float %5956, %5952
  %5958 = fmul fast float %5957, %5957
  %5959 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5944)  ; FMax(a,b)
  %5960 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5951)  ; FMax(a,b)
  %5961 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5958)  ; FMax(a,b)
  %5962 = fsub fast float 1.000000e+00, %5848
  %5963 = fadd fast float %5962, %5863
  %5964 = call float @dx.op.unary.f32(i32 7, float %5963)  ; Saturate(value)
  %5965 = fsub fast float 1.000000e+00, %5243
  %5966 = fmul fast float %5905, %5965
  %5967 = fmul fast float %5908, %5908
  %5968 = fmul fast float %5967, %5966
  %5969 = fmul fast float %5968, %5910
  %5970 = fmul fast float %5965, 0xBFE99999A0000000
  %5971 = fmul fast float %5970, %5850
  %5972 = fmul fast float %5971, %5867
  %5973 = fadd fast float %5972, 1.000000e+00
  %5974 = fadd fast float %5836, -1.000000e+00
  %5975 = fmul fast float %5973, %5974
  %5976 = fadd fast float %5975, 1.000000e+00
  %5977 = fsub fast float %5959, %5830
  %5978 = fsub fast float %5960, %5831
  %5979 = fsub fast float %5961, %5832
  %5980 = fmul fast float %5969, %5977
  %5981 = fmul fast float %5969, %5978
  %5982 = fmul fast float %5969, %5979
  %5983 = fadd fast float %5980, %5830
  %5984 = fadd fast float %5981, %5831
  %5985 = fadd fast float %5982, %5832
  %5986 = fsub fast float %124, %5833
  %5987 = fsub fast float %126, %5834
  %5988 = fsub fast float %128, %5835
  %5989 = fmul fast float %5969, %5986
  %5990 = fmul fast float %5969, %5987
  %5991 = fmul fast float %5969, %5988
  %5992 = fadd fast float %5989, %5833
  %5993 = fadd fast float %5990, %5834
  %5994 = fadd fast float %5991, %5835
  %5995 = fmul fast float %5969, %5964
  %5996 = call float @dx.op.unary.f32(i32 7, float %5976)  ; Saturate(value)
  %5997 = fsub fast float 1.000000e+00, %5996
  %5998 = fmul fast float %5995, %5997
  %5999 = fadd fast float %5998, %5996
  %6000 = fsub fast float 1.000000e+00, %5837
  %6001 = fmul fast float %5969, %6000
  %6002 = fadd fast float %6001, %5837
  %6003 = call float @dx.op.dot3.f32(i32 55, float %5992, float %5993, float %5994, float %5992, float %5993, float %5994)  ; Dot3(ax,ay,az,bx,by,bz)
  %6004 = call float @dx.op.unary.f32(i32 25, float %6003)  ; Rsqrt(value)
  %6005 = fmul fast float %5992, %6004
  %6006 = fmul fast float %5993, %6004
  %6007 = fmul fast float %5994, %6004
  br label %6008

; <label>:6008                                    ; preds = %5839, %5826
  %6009 = phi float [ %5892, %5839 ], [ %5827, %5826 ]
  %6010 = phi float [ %5893, %5839 ], [ %5828, %5826 ]
  %6011 = phi float [ %5894, %5839 ], [ %5829, %5826 ]
  %6012 = phi float [ %5983, %5839 ], [ %5830, %5826 ]
  %6013 = phi float [ %5984, %5839 ], [ %5831, %5826 ]
  %6014 = phi float [ %5985, %5839 ], [ %5832, %5826 ]
  %6015 = phi float [ %6005, %5839 ], [ %5833, %5826 ]
  %6016 = phi float [ %6006, %5839 ], [ %5834, %5826 ]
  %6017 = phi float [ %6007, %5839 ], [ %5835, %5826 ]
  %6018 = phi float [ %5999, %5839 ], [ %5836, %5826 ]
  %6019 = phi float [ %6002, %5839 ], [ %5837, %5826 ]
  %6020 = icmp eq i32 %60, 0
  br i1 %6020, label %6051, label %6021

; <label>:6021                                    ; preds = %6008
  %6022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6023 = extractvalue %dx.types.CBufRet.f32 %6022, 2
  %6024 = extractvalue %dx.types.CBufRet.f32 %6022, 3
  %6025 = fmul fast float %6023, %115
  %6026 = fmul fast float %6024, %116
  %6027 = fmul fast float %6025, 1.024000e+03
  %6028 = fmul fast float %6026, 1.024000e+03
  %6029 = fadd fast float %6027, -5.120000e+02
  %6030 = fadd fast float %6028, -5.120000e+02
  %6031 = fmul fast float %6025, 0x4081BEDF00000000
  %6032 = fadd fast float %6031, 0xC071BEDF00000000
  %6033 = call float @dx.op.unary.f32(i32 22, float %6032)  ; Frc(value)
  %6034 = fmul fast float %6029, %6033
  %6035 = fadd fast float %6034, %6030
  %6036 = fmul fast float %6026, 0x4073BEBE20000000
  %6037 = fadd fast float %6036, 0xC063BEBE20000000
  %6038 = call float @dx.op.unary.f32(i32 22, float %6037)  ; Frc(value)
  %6039 = fmul fast float %6030, %6038
  %6040 = fadd fast float %6039, %6029
  %6041 = fmul fast float %6035, %6040
  %6042 = call float @dx.op.unary.f32(i32 22, float %6041)  ; Frc(value)
  %6043 = add i32 %328, 12
  %6044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %6043, i32 undef)  ; BufferLoad(srv,index,wot)
  %6045 = extractvalue %dx.types.ResRet.i32 %6044, 0
  %6046 = and i32 %6045, 255
  %6047 = uitofp i32 %6046 to float
  %6048 = fmul fast float %6047, 0x3F70101020000000
  %6049 = fcmp fast olt float %6042, %6048
  br i1 %6049, label %6050, label %6051

; <label>:6050                                    ; preds = %6021
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6051

; <label>:6051                                    ; preds = %6050, %6021, %6008
  %6052 = fsub fast float -0.000000e+00, %200
  %6053 = call float @dx.op.dot3.f32(i32 55, float %198, float %199, float %200, float %198, float %199, float %200)  ; Dot3(ax,ay,az,bx,by,bz)
  %6054 = call float @dx.op.unary.f32(i32 25, float %6053)  ; Rsqrt(value)
  %6055 = fmul fast float %6054, %198
  %6056 = fmul fast float %6054, %199
  %6057 = fmul fast float %6054, %200
  %6058 = fsub fast float -0.000000e+00, %6055
  %6059 = fsub fast float -0.000000e+00, %6056
  %6060 = fsub fast float -0.000000e+00, %6057
  %6061 = select i1 %268, float 0.000000e+00, float %6014
  %6062 = call float @dx.op.dot3.f32(i32 55, float %6015, float %6016, float %6017, float %6058, float %6059, float %6060)  ; Dot3(ax,ay,az,bx,by,bz)
  %6063 = call float @dx.op.unary.f32(i32 7, float %6062)  ; Saturate(value)
  %6064 = call float @dx.op.dot3.f32(i32 55, float %6055, float %6056, float %6057, float %6015, float %6016, float %6017)  ; Dot3(ax,ay,az,bx,by,bz)
  %6065 = fmul fast float %6064, 2.000000e+00
  %6066 = fmul fast float %6065, %6015
  %6067 = fmul fast float %6065, %6016
  %6068 = fmul fast float %6065, %6017
  %6069 = fsub fast float %6055, %6066
  %6070 = fsub fast float %6056, %6067
  %6071 = fsub fast float %6057, %6068
  %6072 = call float @dx.op.binary.f32(i32 36, float %6019, float 1.000000e+00)  ; FMin(a,b)
  %6073 = fsub fast float 1.000000e+00, %6019
  %6074 = bitcast float %6073 to i32
  %6075 = sub nsw i32 2129859010, %6074
  %6076 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %86)  ; FMax(a,b)
  %6077 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %6078 = fcmp fast oeq float %6077, 0.000000e+00
  %6079 = fcmp fast oeq float %6076, 0.000000e+00
  %6080 = or i1 %6079, %6078
  br i1 %6080, label %6110, label %6081

; <label>:6081                                    ; preds = %6051
  %6082 = fsub fast float -0.000000e+00, %89
  %6083 = fsub fast float -0.000000e+00, %87
  %6084 = call float @dx.op.unary.f32(i32 24, float %6077)  ; Sqrt(value)
  %6085 = fdiv fast float %6084, %6076
  %6086 = fcmp fast ogt float %6085, 0x3FFB6F8900000000
  %6087 = select i1 %6086, float 0x3FFB6F8900000000, float %6085
  %6088 = fmul fast float %6087, 0x3FE8A23460000000
  %6089 = call float @dx.op.unary.f32(i32 7, float %6088)  ; Saturate(value)
  %6090 = call float @dx.op.binary.f32(i32 35, float %6087, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6091 = fmul fast float %6089, %6076
  %6092 = fmul fast float %6090, 0x3FF279A740000000
  %6093 = fadd fast float %6092, -1.000000e+00
  %6094 = call float @dx.op.dot3.f32(i32 55, float %6082, float %6083, float %88, float %6082, float %6083, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %6095 = call float @dx.op.unary.f32(i32 25, float %6094)  ; Rsqrt(value)
  %6096 = fmul fast float %6095, %6082
  %6097 = fmul fast float %6095, %6083
  %6098 = fmul fast float %6095, %88
  %6099 = fmul fast float %6093, %6093
  %6100 = fsub fast float 1.000000e+00, %6099
  %6101 = fmul fast float %6090, 0x40005F8BE0000000
  %6102 = fsub fast float 0x400C5BF8A0000000, %6101
  %6103 = fdiv fast float %6091, %6102
  %6104 = fmul fast float %6103, 0x3FEE31C3C0000000
  %6105 = fmul fast float %6104, %6100
  %6106 = fmul fast float %6090, 0x3FDACB7480000000
  %6107 = fadd fast float %6106, 0xBFD7347680000000
  %6108 = fmul fast float %6107, %6103
  %6109 = fmul fast float %6108, %6100
  br label %6110

; <label>:6110                                    ; preds = %6081, %6051
  %6111 = phi float [ %6096, %6081 ], [ 0.000000e+00, %6051 ]
  %6112 = phi float [ %6097, %6081 ], [ 0.000000e+00, %6051 ]
  %6113 = phi float [ %6098, %6081 ], [ 0.000000e+00, %6051 ]
  %6114 = phi float [ %6105, %6081 ], [ 0.000000e+00, %6051 ]
  %6115 = phi float [ %6109, %6081 ], [ 0.000000e+00, %6051 ]
  %6116 = call float @dx.op.dot3.f32(i32 55, float %6111, float %6112, float %6113, float %6015, float %6016, float %6017)  ; Dot3(ax,ay,az,bx,by,bz)
  %6117 = fmul fast float %6116, %6116
  %6118 = fmul fast float %6117, 0x3FEE471020000000
  %6119 = fadd fast float %6118, 0xBFD42F6020000000
  %6120 = fmul fast float %6076, 0x3FD20DD760000000
  %6121 = fmul fast float %6119, %6115
  %6122 = fmul fast float %6114, 0x3FDF454380000000
  %6123 = fmul fast float %6122, %6116
  %6124 = fadd fast float %6123, %6120
  %6125 = fadd fast float %6124, %6121
  %6126 = call float @dx.op.dot3.f32(i32 55, float %6111, float %6112, float %6113, float %6069, float %6070, float %6071)  ; Dot3(ax,ay,az,bx,by,bz)
  %6127 = fmul fast float %6126, 0x3FDF454380000000
  %6128 = fmul fast float %6126, %6126
  %6129 = fmul fast float %6128, 0x3FEE471020000000
  %6130 = fadd fast float %6129, 0xBFD42F6020000000
  %6131 = call float @dx.op.dot3.f32(i32 55, float %6076, float %6114, float %6115, float 0x3FD20DD760000000, float %6127, float %6130)  ; Dot3(ax,ay,az,bx,by,bz)
  %6132 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %82)  ; FMax(a,b)
  %6133 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %6134 = fcmp fast oeq float %6133, 0.000000e+00
  %6135 = fcmp fast oeq float %6132, 0.000000e+00
  %6136 = or i1 %6135, %6134
  br i1 %6136, label %6166, label %6137

; <label>:6137                                    ; preds = %6110
  %6138 = fsub fast float -0.000000e+00, %85
  %6139 = fsub fast float -0.000000e+00, %83
  %6140 = call float @dx.op.unary.f32(i32 24, float %6133)  ; Sqrt(value)
  %6141 = fdiv fast float %6140, %6132
  %6142 = fcmp fast ogt float %6141, 0x3FFB6F8900000000
  %6143 = select i1 %6142, float 0x3FFB6F8900000000, float %6141
  %6144 = fmul fast float %6143, 0x3FE8A23460000000
  %6145 = call float @dx.op.unary.f32(i32 7, float %6144)  ; Saturate(value)
  %6146 = call float @dx.op.binary.f32(i32 35, float %6143, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6147 = fmul fast float %6145, %6132
  %6148 = fmul fast float %6146, 0x3FF279A740000000
  %6149 = fadd fast float %6148, -1.000000e+00
  %6150 = call float @dx.op.dot3.f32(i32 55, float %6138, float %6139, float %84, float %6138, float %6139, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %6151 = call float @dx.op.unary.f32(i32 25, float %6150)  ; Rsqrt(value)
  %6152 = fmul fast float %6151, %6138
  %6153 = fmul fast float %6151, %6139
  %6154 = fmul fast float %6151, %84
  %6155 = fmul fast float %6149, %6149
  %6156 = fsub fast float 1.000000e+00, %6155
  %6157 = fmul fast float %6146, 0x40005F8BE0000000
  %6158 = fsub fast float 0x400C5BF8A0000000, %6157
  %6159 = fdiv fast float %6147, %6158
  %6160 = fmul fast float %6159, 0x3FEE31C3C0000000
  %6161 = fmul fast float %6160, %6156
  %6162 = fmul fast float %6146, 0x3FDACB7480000000
  %6163 = fadd fast float %6162, 0xBFD7347680000000
  %6164 = fmul fast float %6163, %6159
  %6165 = fmul fast float %6164, %6156
  br label %6166

; <label>:6166                                    ; preds = %6137, %6110
  %6167 = phi float [ %6152, %6137 ], [ 0.000000e+00, %6110 ]
  %6168 = phi float [ %6153, %6137 ], [ 0.000000e+00, %6110 ]
  %6169 = phi float [ %6154, %6137 ], [ 0.000000e+00, %6110 ]
  %6170 = phi float [ %6161, %6137 ], [ 0.000000e+00, %6110 ]
  %6171 = phi float [ %6165, %6137 ], [ 0.000000e+00, %6110 ]
  %6172 = call float @dx.op.dot3.f32(i32 55, float %6167, float %6168, float %6169, float %6015, float %6016, float %6017)  ; Dot3(ax,ay,az,bx,by,bz)
  %6173 = fmul fast float %6172, %6172
  %6174 = fmul fast float %6173, 0x3FEE471020000000
  %6175 = fadd fast float %6174, 0xBFD42F6020000000
  %6176 = fmul fast float %6132, 0x3FD20DD760000000
  %6177 = fmul fast float %6175, %6171
  %6178 = fmul fast float %6170, 0x3FDF454380000000
  %6179 = fmul fast float %6178, %6172
  %6180 = fadd fast float %6179, %6176
  %6181 = fadd fast float %6180, %6177
  %6182 = call float @dx.op.dot3.f32(i32 55, float %6167, float %6168, float %6169, float %6069, float %6070, float %6071)  ; Dot3(ax,ay,az,bx,by,bz)
  %6183 = fmul fast float %6182, 0x3FDF454380000000
  %6184 = fmul fast float %6182, %6182
  %6185 = fmul fast float %6184, 0x3FEE471020000000
  %6186 = fadd fast float %6185, 0xBFD42F6020000000
  %6187 = call float @dx.op.dot3.f32(i32 55, float %6132, float %6170, float %6171, float 0x3FD20DD760000000, float %6183, float %6186)  ; Dot3(ax,ay,az,bx,by,bz)
  %6188 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %6189 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %6190 = fcmp fast oeq float %6189, 0.000000e+00
  %6191 = fcmp fast oeq float %6188, 0.000000e+00
  %6192 = or i1 %6191, %6190
  br i1 %6192, label %6222, label %6193

; <label>:6193                                    ; preds = %6166
  %6194 = fsub fast float -0.000000e+00, %81
  %6195 = fsub fast float -0.000000e+00, %79
  %6196 = call float @dx.op.unary.f32(i32 24, float %6189)  ; Sqrt(value)
  %6197 = fdiv fast float %6196, %6188
  %6198 = fcmp fast ogt float %6197, 0x3FFB6F8900000000
  %6199 = select i1 %6198, float 0x3FFB6F8900000000, float %6197
  %6200 = fmul fast float %6199, 0x3FE8A23460000000
  %6201 = call float @dx.op.unary.f32(i32 7, float %6200)  ; Saturate(value)
  %6202 = call float @dx.op.binary.f32(i32 35, float %6199, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6203 = fmul fast float %6201, %6188
  %6204 = fmul fast float %6202, 0x3FF279A740000000
  %6205 = fadd fast float %6204, -1.000000e+00
  %6206 = call float @dx.op.dot3.f32(i32 55, float %6194, float %6195, float %80, float %6194, float %6195, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %6207 = call float @dx.op.unary.f32(i32 25, float %6206)  ; Rsqrt(value)
  %6208 = fmul fast float %6207, %6194
  %6209 = fmul fast float %6207, %6195
  %6210 = fmul fast float %6207, %80
  %6211 = fmul fast float %6205, %6205
  %6212 = fsub fast float 1.000000e+00, %6211
  %6213 = fmul fast float %6202, 0x40005F8BE0000000
  %6214 = fsub fast float 0x400C5BF8A0000000, %6213
  %6215 = fdiv fast float %6203, %6214
  %6216 = fmul fast float %6215, 0x3FEE31C3C0000000
  %6217 = fmul fast float %6216, %6212
  %6218 = fmul fast float %6202, 0x3FDACB7480000000
  %6219 = fadd fast float %6218, 0xBFD7347680000000
  %6220 = fmul fast float %6219, %6215
  %6221 = fmul fast float %6220, %6212
  br label %6222

; <label>:6222                                    ; preds = %6193, %6166
  %6223 = phi float [ %6208, %6193 ], [ 0.000000e+00, %6166 ]
  %6224 = phi float [ %6209, %6193 ], [ 0.000000e+00, %6166 ]
  %6225 = phi float [ %6210, %6193 ], [ 0.000000e+00, %6166 ]
  %6226 = phi float [ %6217, %6193 ], [ 0.000000e+00, %6166 ]
  %6227 = phi float [ %6221, %6193 ], [ 0.000000e+00, %6166 ]
  %6228 = call float @dx.op.dot3.f32(i32 55, float %6223, float %6224, float %6225, float %6015, float %6016, float %6017)  ; Dot3(ax,ay,az,bx,by,bz)
  %6229 = fmul fast float %6228, %6228
  %6230 = fmul fast float %6229, 0x3FEE471020000000
  %6231 = fadd fast float %6230, 0xBFD42F6020000000
  %6232 = fmul fast float %6188, 0x3FD20DD760000000
  %6233 = fmul fast float %6231, %6227
  %6234 = fmul fast float %6226, 0x3FDF454380000000
  %6235 = fmul fast float %6234, %6228
  %6236 = fadd fast float %6235, %6232
  %6237 = fadd fast float %6236, %6233
  %6238 = call float @dx.op.dot3.f32(i32 55, float %6223, float %6224, float %6225, float %6069, float %6070, float %6071)  ; Dot3(ax,ay,az,bx,by,bz)
  %6239 = fmul fast float %6238, 0x3FDF454380000000
  %6240 = fmul fast float %6238, %6238
  %6241 = fmul fast float %6240, 0x3FEE471020000000
  %6242 = fadd fast float %6241, 0xBFD42F6020000000
  %6243 = call float @dx.op.dot3.f32(i32 55, float %6188, float %6226, float %6227, float 0x3FD20DD760000000, float %6239, float %6242)  ; Dot3(ax,ay,az,bx,by,bz)
  %6244 = call float @dx.op.binary.f32(i32 35, float %6125, float 0.000000e+00)  ; FMax(a,b)
  %6245 = call float @dx.op.binary.f32(i32 35, float %6181, float 0.000000e+00)  ; FMax(a,b)
  %6246 = call float @dx.op.binary.f32(i32 35, float %6237, float 0.000000e+00)  ; FMax(a,b)
  %6247 = call float @dx.op.binary.f32(i32 35, float %6131, float 0.000000e+00)  ; FMax(a,b)
  %6248 = call float @dx.op.binary.f32(i32 35, float %6187, float 0.000000e+00)  ; FMax(a,b)
  %6249 = call float @dx.op.binary.f32(i32 35, float %6243, float 0.000000e+00)  ; FMax(a,b)
  %6250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6251 = extractvalue %dx.types.CBufRet.f32 %6250, 0
  %6252 = call float @dx.op.binary.f32(i32 36, float %6009, float %6251)  ; FMin(a,b)
  %6253 = fsub fast float 1.000000e+00, %6072
  %6254 = fmul fast float %6252, %6253
  %6255 = fsub fast float 1.000000e+00, %6254
  %6256 = bitcast float %6255 to i32
  %6257 = sub nsw i32 2129859010, %6256
  %6258 = bitcast i32 %6257 to float
  %6259 = call float @dx.op.binary.f32(i32 36, float %6010, float %6251)  ; FMin(a,b)
  %6260 = fmul fast float %6259, %6253
  %6261 = fsub fast float 1.000000e+00, %6260
  %6262 = bitcast float %6261 to i32
  %6263 = sub nsw i32 2129859010, %6262
  %6264 = bitcast i32 %6263 to float
  %6265 = call float @dx.op.binary.f32(i32 36, float %6011, float %6251)  ; FMin(a,b)
  %6266 = fmul fast float %6265, %6253
  %6267 = fsub fast float 1.000000e+00, %6266
  %6268 = bitcast float %6267 to i32
  %6269 = sub nsw i32 2129859010, %6268
  %6270 = bitcast i32 %6269 to float
  %6271 = fmul fast float %6244, %6072
  %6272 = fmul fast float %6271, %6258
  %6273 = fmul fast float %6245, %6072
  %6274 = fmul fast float %6273, %6264
  %6275 = fmul fast float %6246, %6072
  %6276 = fmul fast float %6275, %6270
  %6277 = call float @dx.op.binary.f32(i32 36, float %6012, float %6251)  ; FMin(a,b)
  %6278 = fmul fast float %6277, %6253
  %6279 = fsub fast float 1.000000e+00, %6278
  %6280 = bitcast float %6279 to i32
  %6281 = sub nsw i32 2129859010, %6280
  %6282 = bitcast i32 %6281 to float
  %6283 = call float @dx.op.binary.f32(i32 36, float %6013, float %6251)  ; FMin(a,b)
  %6284 = fmul fast float %6283, %6253
  %6285 = fsub fast float 1.000000e+00, %6284
  %6286 = bitcast float %6285 to i32
  %6287 = sub nsw i32 2129859010, %6286
  %6288 = bitcast i32 %6287 to float
  %6289 = call float @dx.op.binary.f32(i32 36, float %6061, float %6251)  ; FMin(a,b)
  %6290 = fmul fast float %6289, %6253
  %6291 = fsub fast float 1.000000e+00, %6290
  %6292 = bitcast float %6291 to i32
  %6293 = sub nsw i32 2129859010, %6292
  %6294 = bitcast i32 %6293 to float
  %6295 = fmul fast float %6247, %6072
  %6296 = fmul fast float %6295, %6282
  %6297 = fmul fast float %6248, %6072
  %6298 = fmul fast float %6297, %6288
  %6299 = fmul fast float %6249, %6072
  %6300 = fmul fast float %6299, %6294
  %6301 = call float @dx.op.dot3.f32(i32 55, float %6272, float %6274, float %6276, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6302 = select i1 %268, float 0.000000e+00, float %6272
  %6303 = select i1 %268, float %6301, float %6274
  %6304 = select i1 %268, float 0.000000e+00, float %6276
  %6305 = call float @dx.op.dot3.f32(i32 55, float %6296, float %6298, float %6300, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6306 = select i1 %268, float 0.000000e+00, float %6296
  %6307 = select i1 %268, float %6305, float %6298
  %6308 = select i1 %268, float 0.000000e+00, float %6300
  %6309 = fmul fast float %4188, %4188
  %6310 = call float @dx.op.unary.f32(i32 7, float %6309)  ; Saturate(value)
  %6311 = fmul fast float %6063, 9.843750e-01
  %6312 = fmul fast float %6018, 9.843750e-01
  %6313 = fadd fast float %6311, 7.812500e-03
  %6314 = fadd fast float %6312, 7.812500e-03
  %6315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %6313, float %6314, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6316 = extractvalue %dx.types.ResRet.f32 %6315, 0
  %6317 = extractvalue %dx.types.ResRet.f32 %6315, 1
  %6318 = extractvalue %dx.types.ResRet.f32 %6315, 2
  %6319 = extractvalue %dx.types.ResRet.f32 %6315, 3
  %6320 = fsub fast float 1.000000e+00, %6310
  %6321 = fsub fast float %6318, %6316
  %6322 = fsub fast float %6319, %6317
  %6323 = fmul fast float %6321, %6320
  %6324 = fmul fast float %6322, %6320
  %6325 = fadd fast float %6323, %6316
  %6326 = fadd fast float %6324, %6317
  %6327 = fmul fast float %6325, %6012
  %6328 = fmul fast float %6325, %6013
  %6329 = fmul fast float %6325, %6061
  %6330 = fadd fast float %6327, %6326
  %6331 = fadd fast float %6328, %6326
  %6332 = fadd fast float %6329, %6326
  %6333 = fcmp fast ogt float %4825, 0.000000e+00
  br i1 %6333, label %6334, label %6360

; <label>:6334                                    ; preds = %6222
  %6335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4825, float %6063, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6336 = extractvalue %dx.types.ResRet.f32 %6335, 0
  %6337 = extractvalue %dx.types.ResRet.f32 %6335, 1
  %6338 = extractvalue %dx.types.ResRet.f32 %6335, 2
  %6339 = fadd fast float %6336, -5.000000e-01
  %6340 = fadd fast float %6337, -5.000000e-01
  %6341 = fadd fast float %6338, -5.000000e-01
  %6342 = fsub fast float 1.000000e+00, %6012
  %6343 = fsub fast float 1.000000e+00, %6013
  %6344 = fsub fast float 1.000000e+00, %6061
  %6345 = fmul fast float %6012, 4.000000e+00
  %6346 = fmul fast float %6345, %6342
  %6347 = fmul fast float %6346, %6339
  %6348 = fmul fast float %6013, 4.000000e+00
  %6349 = fmul fast float %6348, %6343
  %6350 = fmul fast float %6349, %6340
  %6351 = fmul fast float %6061, 4.000000e+00
  %6352 = fmul fast float %6351, %6344
  %6353 = fmul fast float %6352, %6341
  %6354 = fadd fast float %6347, %6330
  %6355 = fadd fast float %6350, %6331
  %6356 = fadd fast float %6353, %6332
  %6357 = call float @dx.op.unary.f32(i32 7, float %6354)  ; Saturate(value)
  %6358 = call float @dx.op.unary.f32(i32 7, float %6355)  ; Saturate(value)
  %6359 = call float @dx.op.unary.f32(i32 7, float %6356)  ; Saturate(value)
  br label %6360

; <label>:6360                                    ; preds = %6334, %6222
  %6361 = phi float [ %6357, %6334 ], [ %6330, %6222 ]
  %6362 = phi float [ %6358, %6334 ], [ %6331, %6222 ]
  %6363 = phi float [ %6359, %6334 ], [ %6332, %6222 ]
  %6364 = call float @dx.op.binary.f32(i32 35, float %6362, float %6363)  ; FMax(a,b)
  %6365 = call float @dx.op.binary.f32(i32 35, float %6361, float %6364)  ; FMax(a,b)
  %6366 = fsub fast float 1.000000e+00, %6365
  %6367 = fmul fast float %6366, %6302
  %6368 = fmul fast float %6366, %6303
  %6369 = fmul fast float %6366, %6304
  %6370 = call float @dx.op.dot3.f32(i32 55, float %6009, float %6010, float %6011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6371 = fcmp fast ogt float %6370, 0x3E7FF19E20000000
  %6372 = fdiv fast float 1.000000e+00, %6370
  %6373 = select i1 %6371, float %6372, float 0.000000e+00
  %6374 = fmul fast float %6373, %6009
  %6375 = fmul fast float %6373, %6010
  %6376 = fmul fast float %6373, %6011
  %6377 = fadd fast float %6374, -1.000000e+00
  %6378 = fadd fast float %6375, -1.000000e+00
  %6379 = fadd fast float %6376, -1.000000e+00
  %6380 = fmul fast float %6377, 5.000000e-01
  %6381 = fmul fast float %6378, 5.000000e-01
  %6382 = fmul fast float %6379, 5.000000e-01
  %6383 = fadd fast float %6380, 1.000000e+00
  %6384 = fadd fast float %6381, 1.000000e+00
  %6385 = fadd fast float %6382, 1.000000e+00
  %6386 = call float @dx.op.binary.f32(i32 35, float %6063, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6387 = fdiv fast float %4188, %6386
  %6388 = fcmp fast olt float %4853, 1.270000e+02
  %6389 = fcmp fast olt float %4854, 1.270000e+02
  %6390 = fcmp fast olt float %4855, 1.270000e+02
  %6391 = fmul fast float %4853, 0xBFF7154760000000
  %6392 = fmul fast float %6391, %6387
  %6393 = fmul fast float %4854, 0xBFF7154760000000
  %6394 = fmul fast float %6393, %6387
  %6395 = fmul fast float %4855, 0xBFF7154760000000
  %6396 = fmul fast float %6395, %6387
  %6397 = call float @dx.op.unary.f32(i32 21, float %6392)  ; Exp(value)
  %6398 = call float @dx.op.unary.f32(i32 21, float %6394)  ; Exp(value)
  %6399 = call float @dx.op.unary.f32(i32 21, float %6396)  ; Exp(value)
  %6400 = call float @dx.op.unary.f32(i32 7, float %6397)  ; Saturate(value)
  %6401 = call float @dx.op.unary.f32(i32 7, float %6398)  ; Saturate(value)
  %6402 = call float @dx.op.unary.f32(i32 7, float %6399)  ; Saturate(value)
  %6403 = select i1 %6388, float %6400, float 0.000000e+00
  %6404 = select i1 %6389, float %6401, float 0.000000e+00
  %6405 = select i1 %6390, float %6402, float 0.000000e+00
  %6406 = fmul fast float %6403, %6366
  %6407 = fmul fast float %6404, %6366
  %6408 = fmul fast float %6405, %6366
  %6409 = fadd fast float %6406, -1.000000e+00
  %6410 = fadd fast float %6407, -1.000000e+00
  %6411 = fadd fast float %6408, -1.000000e+00
  %6412 = fmul fast float %6361, %6306
  %6413 = fmul fast float %6362, %6307
  %6414 = fmul fast float %6363, %6308
  %6415 = fsub fast float 1.000000e+00, %6063
  %6416 = bitcast float %6415 to i32
  %6417 = sitofp i32 %6416 to float
  %6418 = fmul fast float %6417, 5.000000e+00
  %6419 = fadd fast float %6418, 0xC1EFBF8940000000
  %6420 = fptosi float %6419 to i32
  %6421 = bitcast i32 %6420 to float
  %6422 = fmul fast float %6421, %4826
  %6423 = fmul fast float %6302, %6422
  %6424 = fmul fast float %6423, %6366
  %6425 = fmul fast float %6424, %6383
  %6426 = fmul fast float %6303, %6422
  %6427 = fmul fast float %6426, %6366
  %6428 = fmul fast float %6427, %6384
  %6429 = fmul fast float %6304, %6422
  %6430 = fmul fast float %6429, %6366
  %6431 = fmul fast float %6430, %6385
  %6432 = fmul fast float %6367, %4822
  %6433 = fmul fast float %6368, %4822
  %6434 = fmul fast float %6369, %4822
  %6435 = fadd fast float %6412, %4815
  %6436 = fadd fast float %6435, %6425
  %6437 = fmul fast float %6436, %4822
  %6438 = fadd fast float %6413, %4816
  %6439 = fadd fast float %6438, %6428
  %6440 = fmul fast float %6439, %4822
  %6441 = fadd fast float %6414, %4817
  %6442 = fadd fast float %6441, %6431
  %6443 = fmul fast float %6442, %4822
  %6444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6445 = extractvalue %dx.types.CBufRet.f32 %6444, 3
  %6446 = fcmp fast oeq float %6445, 0.000000e+00
  br i1 %6446, label %7544, label %6447

; <label>:6447                                    ; preds = %6360
  %6448 = extractvalue %dx.types.CBufRet.f32 %6444, 0
  %6449 = extractvalue %dx.types.CBufRet.f32 %6444, 1
  %6450 = extractvalue %dx.types.CBufRet.f32 %6444, 2
  %6451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6452 = extractvalue %dx.types.CBufRet.f32 %6451, 0
  %6453 = extractvalue %dx.types.CBufRet.f32 %6451, 1
  %6454 = extractvalue %dx.types.CBufRet.f32 %6451, 2
  %6455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6456 = extractvalue %dx.types.CBufRet.f32 %6455, 0
  %6457 = extractvalue %dx.types.CBufRet.f32 %6455, 1
  %6458 = call float @dx.op.dot3.f32(i32 55, float %6452, float %6453, float %6454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6459 = select i1 %268, float %6456, float %6452
  %6460 = select i1 %268, float %6458, float %6453
  %6461 = select i1 %268, float %6457, float %6454
  %6462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6463 = extractvalue %dx.types.CBufRet.f32 %6462, 2
  %6464 = fmul fast float %6463, %124
  %6465 = fmul fast float %6463, %126
  %6466 = fmul fast float %6463, %128
  %6467 = fadd fast float %6464, %198
  %6468 = fadd fast float %6465, %199
  %6469 = fadd fast float %6466, %200
  %6470 = fcmp fast olt float %6445, 0.000000e+00
  br i1 %6470, label %7110, label %6471

; <label>:6471                                    ; preds = %6447
  %6472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6473 = extractvalue %dx.types.CBufRet.f32 %6472, 0
  %6474 = extractvalue %dx.types.CBufRet.f32 %6472, 1
  %6475 = extractvalue %dx.types.CBufRet.f32 %6472, 2
  %6476 = extractvalue %dx.types.CBufRet.f32 %6472, 3
  %6477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6478 = extractvalue %dx.types.CBufRet.f32 %6477, 0
  %6479 = extractvalue %dx.types.CBufRet.f32 %6477, 1
  %6480 = extractvalue %dx.types.CBufRet.f32 %6477, 2
  %6481 = extractvalue %dx.types.CBufRet.f32 %6477, 3
  %6482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6483 = extractvalue %dx.types.CBufRet.f32 %6482, 0
  %6484 = extractvalue %dx.types.CBufRet.f32 %6482, 1
  %6485 = extractvalue %dx.types.CBufRet.f32 %6482, 2
  %6486 = extractvalue %dx.types.CBufRet.f32 %6482, 3
  %6487 = fmul fast float %6473, %6467
  %6488 = call float @dx.op.tertiary.f32(i32 46, float %6468, float %6474, float %6487)  ; FMad(a,b,c)
  %6489 = call float @dx.op.tertiary.f32(i32 46, float %6469, float %6475, float %6488)  ; FMad(a,b,c)
  %6490 = fadd fast float %6489, %6476
  %6491 = fmul fast float %6478, %6467
  %6492 = call float @dx.op.tertiary.f32(i32 46, float %6468, float %6479, float %6491)  ; FMad(a,b,c)
  %6493 = call float @dx.op.tertiary.f32(i32 46, float %6469, float %6480, float %6492)  ; FMad(a,b,c)
  %6494 = fadd fast float %6493, %6481
  %6495 = fmul fast float %6483, %6467
  %6496 = call float @dx.op.tertiary.f32(i32 46, float %6468, float %6484, float %6495)  ; FMad(a,b,c)
  %6497 = call float @dx.op.tertiary.f32(i32 46, float %6469, float %6485, float %6496)  ; FMad(a,b,c)
  %6498 = fadd fast float %6497, %6486
  %6499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6500 = extractvalue %dx.types.CBufRet.f32 %6499, 0
  %6501 = fcmp fast une float %6500, 0.000000e+00
  %6502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6503 = extractvalue %dx.types.CBufRet.f32 %6502, 0
  %6504 = extractvalue %dx.types.CBufRet.f32 %6502, 1
  %6505 = extractvalue %dx.types.CBufRet.f32 %6502, 3
  %6506 = fmul fast float %6505, %6490
  %6507 = fmul fast float %6505, %6494
  %6508 = fadd fast float %6506, %6503
  %6509 = fadd fast float %6507, %6504
  %6510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6511 = extractvalue %dx.types.CBufRet.f32 %6510, 0
  %6512 = extractvalue %dx.types.CBufRet.f32 %6510, 1
  %6513 = extractvalue %dx.types.CBufRet.f32 %6510, 3
  %6514 = fmul fast float %6513, %6490
  %6515 = fmul fast float %6513, %6494
  %6516 = fadd fast float %6514, %6511
  %6517 = fadd fast float %6515, %6512
  %6518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6519 = extractvalue %dx.types.CBufRet.f32 %6518, 1
  %6520 = fsub fast float %6519, %6498
  %6521 = extractvalue %dx.types.CBufRet.f32 %6518, 2
  %6522 = fmul fast float %6520, %6521
  %6523 = fsub fast float 1.000000e+00, %6522
  %6524 = call float @dx.op.unary.f32(i32 7, float %6523)  ; Saturate(value)
  br i1 %6501, label %6585, label %6525

; <label>:6525                                    ; preds = %6471
  %6526 = extractvalue %dx.types.CBufRet.f32 %6510, 2
  %6527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6528 = extractvalue %dx.types.CBufRet.f32 %6527, 2
  %6529 = fadd fast float %6528, %6526
  %6530 = fcmp fast ogt float %6529, 0.000000e+00
  br i1 %6530, label %6531, label %6555

; <label>:6531                                    ; preds = %6525
  %6532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6533 = extractvalue %dx.types.CBufRet.f32 %6532, 0
  %6534 = extractvalue %dx.types.CBufRet.f32 %6532, 1
  %6535 = fsub fast float %6516, %6533
  %6536 = fsub fast float %6517, %6534
  %6537 = fcmp fast olt float %6535, 0.000000e+00
  %6538 = fcmp fast olt float %6536, 0.000000e+00
  %6539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6540 = extractvalue %dx.types.CBufRet.f32 %6539, 0
  %6541 = extractvalue %dx.types.CBufRet.f32 %6539, 1
  %6542 = extractvalue %dx.types.CBufRet.f32 %6539, 2
  %6543 = extractvalue %dx.types.CBufRet.f32 %6539, 3
  %6544 = select i1 %6537, float %6540, float %6542
  %6545 = select i1 %6538, float %6541, float %6543
  %6546 = fmul fast float %6544, %6535
  %6547 = fmul fast float %6545, %6536
  %6548 = call float @dx.op.unary.f32(i32 6, float %6546)  ; FAbs(value)
  %6549 = call float @dx.op.unary.f32(i32 6, float %6547)  ; FAbs(value)
  %6550 = extractvalue %dx.types.CBufRet.f32 %6462, 0
  %6551 = call float @dx.op.binary.f32(i32 35, float %6548, float %6549)  ; FMax(a,b)
  %6552 = fsub fast float %6550, %6551
  %6553 = call float @dx.op.unary.f32(i32 7, float %6552)  ; Saturate(value)
  %6554 = fmul fast float %6553, %6524
  br label %6555

; <label>:6555                                    ; preds = %6531, %6525
  %6556 = phi float [ %6554, %6531 ], [ 0.000000e+00, %6525 ]
  %6557 = extractvalue %dx.types.CBufRet.f32 %6502, 2
  %6558 = extractvalue %dx.types.CBufRet.f32 %6527, 1
  %6559 = fadd fast float %6558, %6557
  %6560 = fcmp fast ogt float %6559, 0.000000e+00
  br i1 %6560, label %6561, label %6585

; <label>:6561                                    ; preds = %6555
  %6562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6563 = extractvalue %dx.types.CBufRet.f32 %6562, 0
  %6564 = extractvalue %dx.types.CBufRet.f32 %6562, 1
  %6565 = fsub fast float %6508, %6563
  %6566 = fsub fast float %6509, %6564
  %6567 = fcmp fast olt float %6565, 0.000000e+00
  %6568 = fcmp fast olt float %6566, 0.000000e+00
  %6569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6570 = extractvalue %dx.types.CBufRet.f32 %6569, 0
  %6571 = extractvalue %dx.types.CBufRet.f32 %6569, 1
  %6572 = extractvalue %dx.types.CBufRet.f32 %6569, 2
  %6573 = extractvalue %dx.types.CBufRet.f32 %6569, 3
  %6574 = select i1 %6567, float %6570, float %6572
  %6575 = select i1 %6568, float %6571, float %6573
  %6576 = fmul fast float %6574, %6565
  %6577 = fmul fast float %6575, %6566
  %6578 = call float @dx.op.unary.f32(i32 6, float %6576)  ; FAbs(value)
  %6579 = call float @dx.op.unary.f32(i32 6, float %6577)  ; FAbs(value)
  %6580 = extractvalue %dx.types.CBufRet.f32 %6462, 0
  %6581 = call float @dx.op.binary.f32(i32 35, float %6578, float %6579)  ; FMax(a,b)
  %6582 = fsub fast float %6580, %6581
  %6583 = call float @dx.op.unary.f32(i32 7, float %6582)  ; Saturate(value)
  %6584 = fmul fast float %6583, %6524
  br label %6585

; <label>:6585                                    ; preds = %6561, %6555, %6471
  %6586 = phi float [ 0.000000e+00, %6471 ], [ %6584, %6561 ], [ 0.000000e+00, %6555 ]
  %6587 = phi float [ 0.000000e+00, %6471 ], [ %6556, %6561 ], [ %6556, %6555 ]
  %6588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6589 = extractvalue %dx.types.CBufRet.f32 %6588, 1
  %6590 = call float @dx.op.unary.f32(i32 7, float %6589)  ; Saturate(value)
  %6591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6592 = extractvalue %dx.types.CBufRet.f32 %6591, 0
  %6593 = extractvalue %dx.types.CBufRet.f32 %6591, 1
  %6594 = fsub fast float %6490, %6592
  %6595 = fsub fast float %6494, %6593
  %6596 = fcmp fast olt float %6594, 0.000000e+00
  %6597 = fcmp fast olt float %6595, 0.000000e+00
  %6598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6599 = extractvalue %dx.types.CBufRet.f32 %6598, 0
  %6600 = extractvalue %dx.types.CBufRet.f32 %6598, 1
  %6601 = extractvalue %dx.types.CBufRet.f32 %6598, 2
  %6602 = extractvalue %dx.types.CBufRet.f32 %6598, 3
  %6603 = select i1 %6596, float %6599, float %6601
  %6604 = select i1 %6597, float %6600, float %6602
  %6605 = fmul fast float %6603, %6594
  %6606 = fmul fast float %6604, %6595
  %6607 = call float @dx.op.unary.f32(i32 6, float %6605)  ; FAbs(value)
  %6608 = call float @dx.op.unary.f32(i32 6, float %6606)  ; FAbs(value)
  %6609 = extractvalue %dx.types.CBufRet.f32 %6462, 0
  %6610 = call float @dx.op.binary.f32(i32 35, float %6607, float %6608)  ; FMax(a,b)
  %6611 = fsub fast float %6609, %6610
  %6612 = call float @dx.op.unary.f32(i32 7, float %6611)  ; Saturate(value)
  %6613 = call float @dx.op.binary.f32(i32 36, float %6612, float %6590)  ; FMin(a,b)
  %6614 = fmul fast float %6613, %6524
  %6615 = fsub fast float %6586, %6614
  %6616 = fsub fast float %6587, %6586
  %6617 = fsub fast float %6616, %6614
  %6618 = call float @dx.op.binary.f32(i32 35, float %6586, float %6587)  ; FMax(a,b)
  %6619 = call float @dx.op.binary.f32(i32 35, float %6614, float %6618)  ; FMax(a,b)
  %6620 = fcmp fast olt float %6619, 1.000000e+00
  br i1 %6620, label %6621, label %7019, !dx.controlflow.hints !99

; <label>:6621                                    ; preds = %6585
  %6622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6623 = extractvalue %dx.types.CBufRet.f32 %6622, 0
  %6624 = fcmp fast une float %6623, 0.000000e+00
  br i1 %6624, label %6625, label %7019, !dx.controlflow.hints !100

; <label>:6625                                    ; preds = %6621
  %6626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6627 = extractvalue %dx.types.CBufRet.f32 %6626, 0
  %6628 = extractvalue %dx.types.CBufRet.f32 %6626, 1
  %6629 = extractvalue %dx.types.CBufRet.f32 %6626, 2
  %6630 = extractvalue %dx.types.CBufRet.f32 %6626, 3
  %6631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6632 = extractvalue %dx.types.CBufRet.f32 %6631, 0
  %6633 = extractvalue %dx.types.CBufRet.f32 %6631, 1
  %6634 = extractvalue %dx.types.CBufRet.f32 %6631, 2
  %6635 = extractvalue %dx.types.CBufRet.f32 %6631, 3
  %6636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6637 = extractvalue %dx.types.CBufRet.f32 %6636, 0
  %6638 = extractvalue %dx.types.CBufRet.f32 %6636, 1
  %6639 = extractvalue %dx.types.CBufRet.f32 %6636, 2
  %6640 = extractvalue %dx.types.CBufRet.f32 %6636, 3
  %6641 = fmul fast float %6627, %6467
  %6642 = call float @dx.op.tertiary.f32(i32 46, float %6468, float %6628, float %6641)  ; FMad(a,b,c)
  %6643 = call float @dx.op.tertiary.f32(i32 46, float %6469, float %6629, float %6642)  ; FMad(a,b,c)
  %6644 = fadd fast float %6643, %6630
  %6645 = fmul fast float %6632, %6467
  %6646 = call float @dx.op.tertiary.f32(i32 46, float %6468, float %6633, float %6645)  ; FMad(a,b,c)
  %6647 = call float @dx.op.tertiary.f32(i32 46, float %6469, float %6634, float %6646)  ; FMad(a,b,c)
  %6648 = fadd fast float %6647, %6635
  %6649 = fmul fast float %6637, %6467
  %6650 = call float @dx.op.tertiary.f32(i32 46, float %6468, float %6638, float %6649)  ; FMad(a,b,c)
  %6651 = call float @dx.op.tertiary.f32(i32 46, float %6469, float %6639, float %6650)  ; FMad(a,b,c)
  %6652 = fadd fast float %6651, %6640
  %6653 = fcmp fast oge float %6644, 1.000000e+00
  %6654 = fcmp fast oge float %6648, 1.000000e+00
  %6655 = or i1 %6653, %6654
  %6656 = fcmp fast olt float %6644, 0.000000e+00
  %6657 = fcmp fast olt float %6648, 0.000000e+00
  %6658 = or i1 %6656, %6657
  %6659 = or i1 %6655, %6658
  br i1 %6659, label %7019, label %6660, !dx.controlflow.hints !101

; <label>:6660                                    ; preds = %6625
  %6661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6662 = extractvalue %dx.types.CBufRet.f32 %6661, 0
  %6663 = extractvalue %dx.types.CBufRet.f32 %6661, 1
  %6664 = extractvalue %dx.types.CBufRet.f32 %6661, 2
  %6665 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6666 = extractvalue %dx.types.CBufRet.i32 %6665, 2
  %6667 = uitofp i32 %6666 to float
  %6668 = extractvalue %dx.types.CBufRet.i32 %6665, 3
  %6669 = uitofp i32 %6668 to float
  %6670 = extractvalue %dx.types.CBufRet.f32 %6661, 3
  %6671 = fmul fast float %6670, 2.000000e+00
  %6672 = fsub fast float %6644, %6662
  %6673 = fsub fast float %6648, %6663
  %6674 = fmul fast float %6671, %6672
  %6675 = fmul fast float %6671, %6673
  %6676 = fdiv fast float 1.000000e+00, %6450
  %6677 = fmul fast float %6675, %6676
  %6678 = call float @dx.op.unary.f32(i32 6, float %6677)  ; FAbs(value)
  %6679 = fmul fast float %6664, %6469
  %6680 = fmul fast float %6679, %6671
  %6681 = call float @dx.op.unary.f32(i32 6, float %6680)  ; FAbs(value)
  %6682 = call float @dx.op.unary.f32(i32 6, float %6674)  ; FAbs(value)
  %6683 = call float @dx.op.binary.f32(i32 35, float %6681, float %6678)  ; FMax(a,b)
  %6684 = call float @dx.op.binary.f32(i32 35, float %6682, float %6683)  ; FMax(a,b)
  %6685 = fmul fast float %6684, 2.000000e+00
  %6686 = call float @dx.op.unary.f32(i32 23, float %6685)  ; Log(value)
  %6687 = call float @dx.op.binary.f32(i32 35, float %6686, float %6667)  ; FMax(a,b)
  %6688 = call float @dx.op.unary.f32(i32 22, float %6687)  ; Frc(value)
  %6689 = fadd fast float %6688, 0xBFEA666660000000
  %6690 = fmul fast float %6689, 8.000000e+00
  %6691 = call float @dx.op.unary.f32(i32 7, float %6690)  ; Saturate(value)
  %6692 = call float @dx.op.unary.f32(i32 27, float %6687)  ; Round_ni(value)
  %6693 = fadd fast float %6692, %6691
  %6694 = call float @dx.op.binary.f32(i32 36, float %6693, float %6669)  ; FMin(a,b)
  %6695 = call float @dx.op.unary.f32(i32 27, float %6694)  ; Round_ni(value)
  %6696 = fsub fast float -0.000000e+00, %6695
  %6697 = call float @dx.op.unary.f32(i32 21, float %6696)  ; Exp(value)
  %6698 = fmul fast float %6697, %6671
  %6699 = fmul fast float %6698, %6644
  %6700 = fmul fast float %6698, %6648
  %6701 = fmul fast float %6699, 2.500000e-01
  %6702 = fmul fast float %6700, 2.500000e-01
  %6703 = fadd fast float %6701, 5.000000e-01
  %6704 = fadd fast float %6702, 5.000000e-01
  %6705 = fsub fast float %6669, %6667
  %6706 = fptoui float %6705 to i32
  %6707 = add i32 %6706, 320
  %6708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6707)  ; CBufferLoadLegacy(handle,regIndex)
  %6709 = extractvalue %dx.types.CBufRet.f32 %6708, 0
  %6710 = extractvalue %dx.types.CBufRet.f32 %6708, 1
  %6711 = fcmp fast une float %6694, %6669
  %6712 = fsub fast float %6644, %6709
  %6713 = fsub fast float %6648, %6710
  %6714 = call float @dx.op.unary.f32(i32 6, float %6712)  ; FAbs(value)
  %6715 = call float @dx.op.unary.f32(i32 6, float %6713)  ; FAbs(value)
  %6716 = fmul fast float %6714, %6698
  %6717 = fmul fast float %6715, %6698
  %6718 = fcmp fast olt float %6716, 1.000000e+00
  %6719 = fcmp fast olt float %6717, 1.000000e+00
  %6720 = and i1 %6718, %6719
  %6721 = or i1 %6711, %6720
  br i1 %6721, label %6722, label %7019, !dx.controlflow.hints !102

; <label>:6722                                    ; preds = %6660
  %6723 = fmul fast float %6700, 5.000000e-01
  %6724 = fmul fast float %6699, 5.000000e-01
  %6725 = fadd fast float %6723, 5.000000e-01
  %6726 = fadd fast float %6724, 5.000000e-01
  %6727 = sitofp i32 %6666 to float
  %6728 = fsub fast float %6694, %6727
  %6729 = call float @dx.op.unary.f32(i32 27, float %6728)  ; Round_ni(value)
  %6730 = call float @dx.op.unary.f32(i32 22, float %6694)  ; Frc(value)
  %6731 = call float @dx.op.unary.f32(i32 22, float %6726)  ; Frc(value)
  %6732 = call float @dx.op.unary.f32(i32 22, float %6725)  ; Frc(value)
  %6733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6731, float %6732, float %6729, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6734 = extractvalue %dx.types.ResRet.f32 %6733, 0
  %6735 = extractvalue %dx.types.ResRet.f32 %6733, 1
  %6736 = extractvalue %dx.types.ResRet.f32 %6733, 2
  %6737 = extractvalue %dx.types.ResRet.f32 %6733, 3
  %6738 = fcmp fast ogt float %6730, 0.000000e+00
  br i1 %6738, label %6739, label %6760, !dx.controlflow.hints !103

; <label>:6739                                    ; preds = %6722
  %6740 = fadd fast float %6729, 1.000000e+00
  %6741 = call float @dx.op.unary.f32(i32 22, float %6703)  ; Frc(value)
  %6742 = call float @dx.op.unary.f32(i32 22, float %6704)  ; Frc(value)
  %6743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6741, float %6742, float %6740, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6744 = extractvalue %dx.types.ResRet.f32 %6743, 0
  %6745 = extractvalue %dx.types.ResRet.f32 %6743, 1
  %6746 = extractvalue %dx.types.ResRet.f32 %6743, 2
  %6747 = extractvalue %dx.types.ResRet.f32 %6743, 3
  %6748 = fsub fast float %6744, %6734
  %6749 = fsub fast float %6745, %6735
  %6750 = fsub fast float %6746, %6736
  %6751 = fsub fast float %6747, %6737
  %6752 = fmul fast float %6748, %6730
  %6753 = fmul fast float %6749, %6730
  %6754 = fmul fast float %6750, %6730
  %6755 = fmul fast float %6751, %6730
  %6756 = fadd fast float %6752, %6734
  %6757 = fadd fast float %6753, %6735
  %6758 = fadd fast float %6754, %6736
  %6759 = fadd fast float %6755, %6737
  br label %6760

; <label>:6760                                    ; preds = %6739, %6722
  %6761 = phi float [ %6756, %6739 ], [ %6734, %6722 ]
  %6762 = phi float [ %6757, %6739 ], [ %6735, %6722 ]
  %6763 = phi float [ %6758, %6739 ], [ %6736, %6722 ]
  %6764 = phi float [ %6759, %6739 ], [ %6737, %6722 ]
  %6765 = fadd fast float %6761, -5.000000e-01
  %6766 = fadd fast float %6763, -5.000000e-01
  %6767 = fmul fast float %6765, 0xBFD5555560000000
  %6768 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6766, float %6767)  ; FMad(a,b,c)
  %6769 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6762, float 0.000000e+00)  ; FMad(a,b,c)
  %6770 = fadd fast float %6769, %6764
  %6771 = fmul fast float %6765, -7.500000e-01
  %6772 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6766, float %6771)  ; FMad(a,b,c)
  %6773 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6762, float 0.000000e+00)  ; FMad(a,b,c)
  %6774 = fadd fast float %6773, %6764
  %6775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6776 = extractvalue %dx.types.CBufRet.f32 %6775, 0
  %6777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6778 = extractvalue %dx.types.CBufRet.f32 %6777, 0
  %6779 = extractvalue %dx.types.CBufRet.f32 %6777, 1
  %6780 = extractvalue %dx.types.CBufRet.f32 %6777, 2
  %6781 = extractvalue %dx.types.CBufRet.f32 %6777, 3
  %6782 = fsub fast float %6778, %6768
  %6783 = fsub fast float %6779, %6770
  %6784 = fsub fast float %6780, %6772
  %6785 = fsub fast float %6781, %6774
  %6786 = fmul fast float %6782, %6776
  %6787 = fmul fast float %6783, %6776
  %6788 = fmul fast float %6784, %6776
  %6789 = fmul fast float %6785, %6776
  %6790 = fadd fast float %6786, %6768
  %6791 = fadd fast float %6787, %6770
  %6792 = fadd fast float %6788, %6772
  %6793 = fadd fast float %6789, %6774
  %6794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6795 = extractvalue %dx.types.ResRet.i32 %6794, 0
  %6796 = and i32 %6795, 536870911
  %6797 = uitofp i32 %6796 to float
  %6798 = fmul fast float %6797, %6644
  %6799 = fmul fast float %6797, %6648
  %6800 = fptoui float %6798 to i32
  %6801 = fptoui float %6799 to i32
  %6802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6803 = extractvalue %dx.types.ResRet.i32 %6802, 0
  %6804 = and i32 %6803, 31
  %6805 = lshr i32 %6800, %6804
  %6806 = lshr i32 %6801, %6804
  %6807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6808 = extractvalue %dx.types.ResRet.i32 %6807, 0
  %6809 = and i32 %6808, 31
  %6810 = shl i32 1, %6809
  %6811 = call i32 @dx.op.binary.i32(i32 40, i32 %6810, i32 4)  ; UMin(a,b)
  %6812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6813 = extractvalue %dx.types.ResRet.i32 %6812, 0
  %6814 = extractvalue %dx.types.ResRet.i32 %6812, 1
  %6815 = icmp eq i32 %6811, 0
  br i1 %6815, label %6857, label %6816

; <label>:6816                                    ; preds = %6760
  br label %6817

; <label>:6817                                    ; preds = %6845, %6816
  %6818 = phi i32 [ %6848, %6845 ], [ 0, %6816 ]
  %6819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6820 = extractvalue %dx.types.ResRet.i32 %6819, 0
  %6821 = lshr i32 %6820, 16
  %6822 = and i32 %6821, 31
  %6823 = shl i32 %6806, %6822
  %6824 = add i32 %6823, %6805
  %6825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6826 = extractvalue %dx.types.ResRet.i32 %6825, 0
  %6827 = and i32 %6826, 31
  %6828 = shl i32 %6824, %6827
  %6829 = add i32 %6828, %6818
  %6830 = shl i32 %6829, 2
  %6831 = add i32 %6830, 32
  %6832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6831, i32 undef)  ; BufferLoad(srv,index,wot)
  %6833 = extractvalue %dx.types.ResRet.i32 %6832, 0
  %6834 = icmp slt i32 %6833, 0
  %6835 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6818
  %6836 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6818
  %6837 = bitcast float* %6835 to i32*
  %6838 = bitcast float* %6836 to i32*
  br i1 %6834, label %6839, label %6845

; <label>:6839                                    ; preds = %6817
  %6840 = and i32 %6833, 1073741823
  %6841 = add nuw nsw i32 %6840, 20
  %6842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6841, i32 undef)  ; BufferLoad(srv,index,wot)
  %6843 = extractvalue %dx.types.ResRet.i32 %6842, 0
  %6844 = extractvalue %dx.types.ResRet.i32 %6842, 1
  br label %6845

; <label>:6845                                    ; preds = %6839, %6817
  %6846 = phi i32 [ %6843, %6839 ], [ %6813, %6817 ]
  %6847 = phi i32 [ %6844, %6839 ], [ %6814, %6817 ]
  store i32 %6846, i32* %6837, align 4
  store i32 %6847, i32* %6838, align 4
  %6848 = add nuw i32 %6818, 1
  %6849 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6850 = extractvalue %dx.types.CBufRet.i32 %6849, 2
  %6851 = icmp eq i32 %6850, 0
  %6852 = icmp ugt i32 %6833, -1073741825
  %6853 = and i1 %6852, %6851
  %6854 = icmp ult i32 %6848, %6811
  %6855 = and i1 %6853, %6854
  br i1 %6855, label %6817, label %6856

; <label>:6856                                    ; preds = %6845
  br label %6857

; <label>:6857                                    ; preds = %6856, %6760
  %6858 = phi i32 [ 0, %6760 ], [ %6848, %6856 ]
  %6859 = extractvalue %dx.types.CBufRet.f32 %6622, 2
  %6860 = fptoui float %6859 to i32
  %6861 = icmp eq i32 %6860, 0
  br i1 %6861, label %6913, label %6862

; <label>:6862                                    ; preds = %6857
  br label %6863

; <label>:6863                                    ; preds = %6908, %6862
  %6864 = phi i32 [ %6909, %6908 ], [ %6858, %6862 ]
  %6865 = phi i32 [ %6910, %6908 ], [ 0, %6862 ]
  %6866 = lshr i32 %6865, 2
  %6867 = and i32 %6865, 3
  %6868 = add nuw nsw i32 %6866, 83
  %6869 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6868)  ; CBufferLoadLegacy(handle,regIndex)
  %6870 = extractvalue %dx.types.CBufRet.i32 %6869, 0
  %6871 = extractvalue %dx.types.CBufRet.i32 %6869, 1
  %6872 = extractvalue %dx.types.CBufRet.i32 %6869, 2
  %6873 = extractvalue %dx.types.CBufRet.i32 %6869, 3
  %6874 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6870, i32* %6874, align 4
  %6875 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6871, i32* %6875, align 4
  %6876 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6872, i32* %6876, align 4
  %6877 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6873, i32* %6877, align 4
  %6878 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6867
  %6879 = load i32, i32* %6878, align 4, !tbaa !104, !noalias !108
  %6880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6881 = extractvalue %dx.types.ResRet.i32 %6880, 0
  %6882 = lshr i32 %6881, 16
  %6883 = and i32 %6882, 31
  %6884 = shl i32 %6806, %6883
  %6885 = add i32 %6884, %6805
  %6886 = shl i32 %6885, 2
  %6887 = add i32 %6886, %6879
  %6888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6887, i32 undef)  ; BufferLoad(srv,index,wot)
  %6889 = extractvalue %dx.types.ResRet.i32 %6888, 0
  %6890 = icmp eq i32 %6889, 0
  br i1 %6890, label %6908, label %6891

; <label>:6891                                    ; preds = %6863
  %6892 = icmp slt i32 %6889, 0
  %6893 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6864
  %6894 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6864
  %6895 = bitcast float* %6893 to i32*
  %6896 = bitcast float* %6894 to i32*
  br i1 %6892, label %6897, label %6904

; <label>:6897                                    ; preds = %6891
  %6898 = and i32 %6889, 1073741823
  %6899 = add i32 %6879, 20
  %6900 = add i32 %6899, %6898
  %6901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6900, i32 undef)  ; BufferLoad(srv,index,wot)
  %6902 = extractvalue %dx.types.ResRet.i32 %6901, 0
  %6903 = extractvalue %dx.types.ResRet.i32 %6901, 1
  br label %6904

; <label>:6904                                    ; preds = %6897, %6891
  %6905 = phi i32 [ %6902, %6897 ], [ %6813, %6891 ]
  %6906 = phi i32 [ %6903, %6897 ], [ %6814, %6891 ]
  store i32 %6905, i32* %6895, align 4
  store i32 %6906, i32* %6896, align 4
  %6907 = add i32 %6864, 1
  br label %6908

; <label>:6908                                    ; preds = %6904, %6863
  %6909 = phi i32 [ %6864, %6863 ], [ %6907, %6904 ]
  %6910 = add nuw i32 %6865, 1
  %6911 = icmp eq i32 %6910, %6860
  br i1 %6911, label %6912, label %6863

; <label>:6912                                    ; preds = %6908
  br label %6913

; <label>:6913                                    ; preds = %6912, %6857
  %6914 = phi i32 [ %6858, %6857 ], [ %6909, %6912 ]
  %6915 = icmp eq i32 %6914, 1
  %6916 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 0
  %6917 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 0
  br i1 %6915, label %6918, label %6921

; <label>:6918                                    ; preds = %6913
  %6919 = load float, float* %6916, align 4
  %6920 = load float, float* %6917, align 4
  br label %6948

; <label>:6921                                    ; preds = %6913
  %6922 = load float, float* %6916, align 4
  %6923 = load float, float* %6917, align 4
  %6924 = fdiv fast float 1.000000e+00, %6923
  %6925 = fsub fast float %6922, %6924
  %6926 = icmp ugt i32 %6914, 1
  br i1 %6926, label %6927, label %6943

; <label>:6927                                    ; preds = %6921
  br label %6928

; <label>:6928                                    ; preds = %6928, %6927
  %6929 = phi float [ %6938, %6928 ], [ %6925, %6927 ]
  %6930 = phi float [ %6939, %6928 ], [ %6922, %6927 ]
  %6931 = phi i32 [ %6940, %6928 ], [ 1, %6927 ]
  %6932 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6931
  %6933 = load float, float* %6932, align 4
  %6934 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6931
  %6935 = load float, float* %6934, align 4
  %6936 = fdiv fast float 1.000000e+00, %6935
  %6937 = fsub fast float %6933, %6936
  %6938 = call float @dx.op.binary.f32(i32 36, float %6929, float %6937)  ; FMin(a,b)
  %6939 = call float @dx.op.binary.f32(i32 35, float %6930, float %6933)  ; FMax(a,b)
  %6940 = add nuw i32 %6931, 1
  %6941 = icmp eq i32 %6940, %6914
  br i1 %6941, label %6942, label %6928

; <label>:6942                                    ; preds = %6928
  br label %6943

; <label>:6943                                    ; preds = %6942, %6921
  %6944 = phi float [ %6925, %6921 ], [ %6938, %6942 ]
  %6945 = phi float [ %6922, %6921 ], [ %6939, %6942 ]
  %6946 = fsub fast float %6945, %6944
  %6947 = fdiv fast float 1.000000e+00, %6946
  br label %6948

; <label>:6948                                    ; preds = %6943, %6918
  %6949 = phi float [ %6919, %6918 ], [ %6945, %6943 ]
  %6950 = phi float [ %6920, %6918 ], [ %6947, %6943 ]
  %6951 = fadd fast float %6652, %6949
  %6952 = fmul fast float %6951, %6950
  %6953 = call float @dx.op.unary.f32(i32 7, float %6952)  ; Saturate(value)
  %6954 = fmul fast float %6953, 2.000000e+00
  %6955 = fsub fast float 1.000000e+00, %6954
  %6956 = fmul fast float %6790, %6790
  %6957 = fsub fast float %6791, %6956
  %6958 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6957)  ; FMax(a,b)
  %6959 = fdiv fast float 1.000000e+00, %6958
  %6960 = fmul fast float %6791, %6790
  %6961 = fsub fast float %6792, %6960
  %6962 = fsub fast float %6955, %6790
  %6963 = fmul fast float %6955, %6955
  %6964 = fsub fast float %6963, %6791
  %6965 = fmul fast float %6959, %6961
  %6966 = fmul fast float %6965, %6962
  %6967 = fsub fast float %6964, %6966
  %6968 = fmul fast float %6791, %6791
  %6969 = fsub fast float %6793, %6968
  %6970 = fmul fast float %6961, %6961
  %6971 = fmul fast float %6970, %6959
  %6972 = fsub fast float %6969, %6971
  %6973 = fdiv fast float %6967, %6972
  %6974 = fmul fast float %6973, %6961
  %6975 = fsub fast float %6962, %6974
  %6976 = fmul fast float %6975, %6959
  %6977 = fmul fast float %6976, %6790
  %6978 = fsub fast float 1.000000e+00, %6977
  %6979 = fmul fast float %6973, %6791
  %6980 = fsub fast float %6978, %6979
  %6981 = fmul fast float %6976, %6976
  %6982 = fmul fast float %6973, 4.000000e+00
  %6983 = fmul fast float %6982, %6980
  %6984 = fsub fast float %6981, %6983
  %6985 = call float @dx.op.unary.f32(i32 24, float %6984)  ; Sqrt(value)
  %6986 = fcmp fast oge float %6976, 0.000000e+00
  %6987 = fsub fast float -0.000000e+00, %6985
  %6988 = select i1 %6986, float %6987, float %6985
  %6989 = fsub fast float %6988, %6976
  %6990 = fdiv fast float %6989, %6973
  %6991 = fdiv fast float %6980, %6989
  %6992 = fmul fast float %6990, 5.000000e-01
  %6993 = fmul fast float %6991, 2.000000e+00
  %6994 = select i1 %6986, float %6992, float %6993
  %6995 = select i1 %6986, float %6993, float %6992
  %6996 = call float @dx.op.binary.f32(i32 35, float %6994, float %6995)  ; FMax(a,b)
  %6997 = call float @dx.op.binary.f32(i32 36, float %6994, float %6995)  ; FMin(a,b)
  %6998 = fcmp fast ogt float %6955, %6996
  %6999 = fsub fast float %6955, %6997
  %7000 = fsub fast float %6955, %6996
  %7001 = fsub fast float %6996, %6997
  %7002 = select i1 %6998, float %7000, float %7001
  %7003 = fmul float %6999, %7002
  %7004 = select i1 %6998, float %6997, float %6955
  %7005 = fcmp fast ogt float %6955, %6997
  %7006 = fmul fast float %7004, %6996
  %7007 = fadd fast float %7004, %6996
  %7008 = fmul fast float %7007, %6790
  %7009 = fadd fast float %7006, %6791
  %7010 = fsub fast float %7009, %7008
  %7011 = fdiv fast float %7010, %7003
  %7012 = select i1 %7005, float %7011, float 0.000000e+00
  %7013 = fsub fast float 1.000000e+00, %7012
  %7014 = select i1 %6998, float %7013, float %7012
  %7015 = call float @dx.op.unary.f32(i32 7, float %7014)  ; Saturate(value)
  %7016 = extractvalue %dx.types.CBufRet.f32 %6775, 3
  %7017 = fmul fast float %7016, %7015
  %7018 = fsub fast float 1.000000e+00, %7017
  br label %7019

; <label>:7019                                    ; preds = %6948, %6660, %6625, %6621, %6585
  %7020 = phi float [ 1.000000e+00, %6585 ], [ %7018, %6948 ], [ 1.000000e+00, %6625 ], [ 1.000000e+00, %6660 ], [ 1.000000e+00, %6621 ]
  %7021 = fcmp fast ogt float %6617, 0.000000e+00
  br i1 %7021, label %7022, label %7030, !dx.controlflow.hints !117

; <label>:7022                                    ; preds = %7019
  %7023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7024 = extractvalue %dx.types.CBufRet.f32 %7023, 2
  %7025 = fadd fast float %7024, %6498
  %7026 = call float @dx.op.binary.f32(i32 35, float %7025, float 0.000000e+00)  ; FMax(a,b)
  %7027 = fadd fast float %7026, 0x3F10000000000000
  %7028 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %6516, float %6517, float undef, float undef, i32 0, i32 0, i32 undef, float %7027)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7029 = extractvalue %dx.types.ResRet.f32 %7028, 0
  br label %7030

; <label>:7030                                    ; preds = %7022, %7019
  %7031 = phi float [ %7029, %7022 ], [ 1.000000e+00, %7019 ]
  %7032 = fcmp fast ogt float %6615, 0.000000e+00
  br i1 %7032, label %7033, label %7041, !dx.controlflow.hints !118

; <label>:7033                                    ; preds = %7030
  %7034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7035 = extractvalue %dx.types.CBufRet.f32 %7034, 1
  %7036 = fadd fast float %7035, %6498
  %7037 = call float @dx.op.binary.f32(i32 35, float %7036, float 0.000000e+00)  ; FMax(a,b)
  %7038 = fadd fast float %7037, 0x3F10000000000000
  %7039 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %6508, float %6509, float undef, float undef, i32 0, i32 0, i32 undef, float %7038)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7040 = extractvalue %dx.types.ResRet.f32 %7039, 0
  br label %7041

; <label>:7041                                    ; preds = %7033, %7030
  %7042 = phi float [ %7040, %7033 ], [ 1.000000e+00, %7030 ]
  %7043 = fcmp fast ogt float %6614, 0.000000e+00
  br i1 %7043, label %7044, label %7056, !dx.controlflow.hints !119

; <label>:7044                                    ; preds = %7041
  %7045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7046 = extractvalue %dx.types.CBufRet.f32 %7045, 0
  %7047 = fadd fast float %7046, %6498
  %7048 = call float @dx.op.binary.f32(i32 35, float %7047, float 0.000000e+00)  ; FMax(a,b)
  %7049 = fadd fast float %7048, 0x3F10000000000000
  br i1 %6501, label %7050, label %7053, !dx.controlflow.hints !120

; <label>:7050                                    ; preds = %7044
  %7051 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %6490, float %6494, float undef, float undef, i32 0, i32 0, i32 undef, float %7049)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7052 = extractvalue %dx.types.ResRet.f32 %7051, 0
  br label %7056

; <label>:7053                                    ; preds = %7044
  %7054 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %6490, float %6494, float undef, float undef, i32 0, i32 0, i32 undef, float %7049)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7055 = extractvalue %dx.types.ResRet.f32 %7054, 0
  br label %7056

; <label>:7056                                    ; preds = %7053, %7050, %7041
  %7057 = phi float [ %7052, %7050 ], [ %7055, %7053 ], [ 1.000000e+00, %7041 ]
  %7058 = fsub fast float %7031, %7020
  %7059 = fmul fast float %7058, %6587
  %7060 = fadd fast float %7059, %7020
  %7061 = fsub fast float %7042, %7060
  %7062 = fmul fast float %7061, %6586
  %7063 = fadd fast float %7062, %7060
  %7064 = fsub fast float %7057, %7063
  %7065 = fmul fast float %7064, %6614
  %7066 = fadd fast float %7065, %7063
  %7067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7068 = extractvalue %dx.types.CBufRet.f32 %7067, 2
  %7069 = fcmp fast ogt float %7068, 0.000000e+00
  br i1 %7069, label %7070, label %7110, !dx.controlflow.hints !121

; <label>:7070                                    ; preds = %7056
  %7071 = fcmp fast ugt float %7068, 0.000000e+00
  br i1 %7071, label %7072, label %7107

; <label>:7072                                    ; preds = %7070
  %7073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7074 = extractvalue %dx.types.CBufRet.f32 %7073, 0
  %7075 = extractvalue %dx.types.CBufRet.f32 %7073, 1
  %7076 = extractvalue %dx.types.CBufRet.f32 %7073, 2
  %7077 = extractvalue %dx.types.CBufRet.f32 %7073, 3
  %7078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7079 = extractvalue %dx.types.CBufRet.f32 %7078, 0
  %7080 = extractvalue %dx.types.CBufRet.f32 %7078, 1
  %7081 = extractvalue %dx.types.CBufRet.f32 %7078, 2
  %7082 = extractvalue %dx.types.CBufRet.f32 %7078, 3
  %7083 = extractvalue %dx.types.CBufRet.f32 %7067, 0
  %7084 = extractvalue %dx.types.CBufRet.f32 %7067, 1
  %7085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7086 = extractvalue %dx.types.CBufRet.f32 %7085, 0
  %7087 = extractvalue %dx.types.CBufRet.f32 %7085, 1
  %7088 = extractvalue %dx.types.CBufRet.f32 %7085, 2
  %7089 = fadd fast float %7086, %6467
  %7090 = fadd fast float %7087, %6468
  %7091 = fadd fast float %7088, %6469
  %7092 = fmul fast float %7089, %7074
  %7093 = call float @dx.op.tertiary.f32(i32 46, float %7075, float %7090, float %7092)  ; FMad(a,b,c)
  %7094 = call float @dx.op.tertiary.f32(i32 46, float %7076, float %7091, float %7093)  ; FMad(a,b,c)
  %7095 = fadd fast float %7094, %7077
  %7096 = fmul fast float %7089, %7079
  %7097 = call float @dx.op.tertiary.f32(i32 46, float %7080, float %7090, float %7096)  ; FMad(a,b,c)
  %7098 = call float @dx.op.tertiary.f32(i32 46, float %7081, float %7091, float %7097)  ; FMad(a,b,c)
  %7099 = fadd fast float %7098, %7082
  %7100 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %7095, float %7099, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7101 = extractvalue %dx.types.ResRet.f32 %7100, 0
  %7102 = fmul fast float %7101, %7084
  %7103 = fadd fast float %7102, %7083
  %7104 = call float @dx.op.unary.f32(i32 7, float %7103)  ; Saturate(value)
  %7105 = fmul fast float %7104, %7068
  %7106 = fsub fast float 1.000000e+00, %7105
  br label %7107

; <label>:7107                                    ; preds = %7072, %7070
  %7108 = phi float [ %7106, %7072 ], [ 1.000000e+00, %7070 ]
  %7109 = fmul fast float %7108, %7066
  br label %7110

; <label>:7110                                    ; preds = %7107, %7056, %6447
  %7111 = phi float [ 1.000000e+00, %6447 ], [ %7109, %7107 ], [ %7066, %7056 ]
  %7112 = call float @dx.op.binary.f32(i32 36, float %7111, float %7111)  ; FMin(a,b)
  %7113 = call float @dx.op.binary.f32(i32 36, float %7111, float %7112)  ; FMin(a,b)
  %7114 = fcmp fast ogt float %7113, 0.000000e+00
  br i1 %7114, label %7115, label %7275, !dx.controlflow.hints !122

; <label>:7115                                    ; preds = %7110
  %7116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7117 = extractvalue %dx.types.CBufRet.f32 %7116, 0
  %7118 = extractvalue %dx.types.CBufRet.f32 %7116, 1
  %7119 = extractvalue %dx.types.CBufRet.f32 %7116, 2
  %7120 = extractvalue %dx.types.CBufRet.f32 %7116, 3
  %7121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7122 = extractvalue %dx.types.CBufRet.f32 %7121, 0
  %7123 = extractvalue %dx.types.CBufRet.f32 %7121, 1
  %7124 = extractvalue %dx.types.CBufRet.f32 %7121, 2
  %7125 = extractvalue %dx.types.CBufRet.f32 %7121, 3
  %7126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7127 = extractvalue %dx.types.CBufRet.f32 %7126, 0
  %7128 = extractvalue %dx.types.CBufRet.f32 %7126, 1
  %7129 = extractvalue %dx.types.CBufRet.f32 %7126, 2
  %7130 = extractvalue %dx.types.CBufRet.f32 %7126, 3
  %7131 = fmul fast float %7117, %6467
  %7132 = call float @dx.op.tertiary.f32(i32 46, float %6468, float %7118, float %7131)  ; FMad(a,b,c)
  %7133 = call float @dx.op.tertiary.f32(i32 46, float %6469, float %7119, float %7132)  ; FMad(a,b,c)
  %7134 = fadd fast float %7133, %7120
  %7135 = fmul fast float %7122, %6467
  %7136 = call float @dx.op.tertiary.f32(i32 46, float %6468, float %7123, float %7135)  ; FMad(a,b,c)
  %7137 = call float @dx.op.tertiary.f32(i32 46, float %6469, float %7124, float %7136)  ; FMad(a,b,c)
  %7138 = fadd fast float %7137, %7125
  %7139 = fmul fast float %7127, %6467
  %7140 = call float @dx.op.tertiary.f32(i32 46, float %6468, float %7128, float %7139)  ; FMad(a,b,c)
  %7141 = call float @dx.op.tertiary.f32(i32 46, float %6469, float %7129, float %7140)  ; FMad(a,b,c)
  %7142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7143 = extractvalue %dx.types.CBufRet.f32 %7142, 0
  %7144 = extractvalue %dx.types.CBufRet.f32 %7142, 1
  %7145 = extractvalue %dx.types.CBufRet.f32 %7142, 3
  %7146 = fmul fast float %7145, %7134
  %7147 = fmul fast float %7145, %7138
  %7148 = fadd fast float %7146, %7143
  %7149 = fadd fast float %7147, %7144
  %7150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7151 = extractvalue %dx.types.CBufRet.f32 %7150, 0
  %7152 = extractvalue %dx.types.CBufRet.f32 %7150, 1
  %7153 = fsub fast float %7148, %7151
  %7154 = fsub fast float %7149, %7152
  %7155 = fcmp fast olt float %7153, 0.000000e+00
  %7156 = fcmp fast olt float %7154, 0.000000e+00
  %7157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7158 = extractvalue %dx.types.CBufRet.f32 %7157, 0
  %7159 = extractvalue %dx.types.CBufRet.f32 %7157, 1
  %7160 = extractvalue %dx.types.CBufRet.f32 %7157, 2
  %7161 = extractvalue %dx.types.CBufRet.f32 %7157, 3
  %7162 = select i1 %7155, float %7158, float %7160
  %7163 = select i1 %7156, float %7159, float %7161
  %7164 = fmul fast float %7162, %7153
  %7165 = fmul fast float %7163, %7154
  %7166 = call float @dx.op.unary.f32(i32 6, float %7164)  ; FAbs(value)
  %7167 = call float @dx.op.unary.f32(i32 6, float %7165)  ; FAbs(value)
  %7168 = extractvalue %dx.types.CBufRet.f32 %6462, 0
  %7169 = call float @dx.op.binary.f32(i32 35, float %7166, float %7167)  ; FMax(a,b)
  %7170 = fsub fast float %7168, %7169
  %7171 = call float @dx.op.unary.f32(i32 7, float %7170)  ; Saturate(value)
  %7172 = fcmp fast ogt float %7171, 0.000000e+00
  br i1 %7172, label %7173, label %7214, !dx.controlflow.hints !123

; <label>:7173                                    ; preds = %7115
  %7174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %7148, float %7149, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7175 = extractvalue %dx.types.ResRet.f32 %7174, 1
  %7176 = fcmp fast ogt float %7175, 0.000000e+00
  br i1 %7176, label %7177, label %7209

; <label>:7177                                    ; preds = %7173
  %7178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %7148, float %7149, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7179 = extractvalue %dx.types.ResRet.f32 %7178, 0
  %7180 = extractvalue %dx.types.ResRet.f32 %7178, 1
  %7181 = extractvalue %dx.types.ResRet.f32 %7178, 2
  %7182 = extractvalue %dx.types.ResRet.f32 %7178, 3
  %7183 = fsub fast float 1.000000e+00, %7130
  %7184 = fsub fast float %7183, %7141
  %7185 = fmul fast float %7184, 0x400921FB60000000
  %7186 = fadd fast float %7185, 0x3FF921FB60000000
  %7187 = call float @dx.op.unary.f32(i32 13, float %7186)  ; Sin(value)
  %7188 = fadd fast float %7187, -1.000000e+00
  %7189 = fmul fast float %7188, 0x3FD45F3060000000
  %7190 = fmul fast float %7184, 0x401921FB60000000
  %7191 = fadd fast float %7190, 0x400921FB60000000
  %7192 = call float @dx.op.unary.f32(i32 13, float %7191)  ; Sin(value)
  %7193 = fadd fast float %7192, 0x3E7777A5C0000000
  %7194 = fmul fast float %7193, 0x3FC45F3060000000
  %7195 = fmul fast float %7184, 0x4022D97C80000000
  %7196 = fadd fast float %7195, 0x4012D97C80000000
  %7197 = call float @dx.op.unary.f32(i32 13, float %7196)  ; Sin(value)
  %7198 = fadd fast float %7197, 1.000000e+00
  %7199 = fmul fast float %7198, 0x3FBB2995E0000000
  %7200 = fmul fast float %7184, 0x402921FB60000000
  %7201 = fadd fast float %7200, 0x401921FB60000000
  %7202 = call float @dx.op.unary.f32(i32 13, float %7201)  ; Sin(value)
  %7203 = fadd fast float %7202, 0xBE8777A5C0000000
  %7204 = fmul fast float %7203, 0x3FB45F3060000000
  %7205 = call float @dx.op.dot4.f32(i32 56, float %7179, float %7180, float %7181, float %7182, float %7189, float %7194, float %7199, float %7204)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7206 = fmul fast float %7205, 0xBFF7154760000000
  %7207 = call float @dx.op.unary.f32(i32 21, float %7206)  ; Exp(value)
  %7208 = call float @dx.op.unary.f32(i32 7, float %7207)  ; Saturate(value)
  br label %7209

; <label>:7209                                    ; preds = %7177, %7173
  %7210 = phi float [ %7208, %7177 ], [ 1.000000e+00, %7173 ]
  %7211 = fadd fast float %7210, -1.000000e+00
  %7212 = fmul fast float %7211, %7171
  %7213 = fadd fast float %7212, 1.000000e+00
  br label %7214

; <label>:7214                                    ; preds = %7209, %7115
  %7215 = phi float [ %7213, %7209 ], [ 1.000000e+00, %7115 ]
  %7216 = fmul fast float %7215, %7111
  %7217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7218 = extractvalue %dx.types.CBufRet.f32 %7217, 0
  %7219 = extractvalue %dx.types.CBufRet.f32 %7217, 1
  %7220 = extractvalue %dx.types.CBufRet.f32 %7217, 2
  %7221 = fadd fast float %7218, %198
  %7222 = fadd fast float %7219, %199
  %7223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7224 = extractvalue %dx.types.CBufRet.f32 %7223, 1
  %7225 = fsub fast float -0.000000e+00, %7221
  %7226 = fsub fast float -0.000000e+00, %7222
  %7227 = fsub fast float %6052, %7220
  %7228 = fadd fast float %7227, %7224
  %7229 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7225, float %7226, float %7228)  ; Dot3(ax,ay,az,bx,by,bz)
  %7230 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6448, float %6449, float %6450)  ; Dot3(ax,ay,az,bx,by,bz)
  %7231 = fdiv fast float 1.000000e+00, %7230
  %7232 = fmul fast float %7231, %7229
  %7233 = fmul fast float %6448, %7232
  %7234 = fmul fast float %6449, %7232
  %7235 = fadd fast float %7233, %7221
  %7236 = fadd fast float %7234, %7222
  %7237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7238 = extractvalue %dx.types.CBufRet.f32 %7237, 0
  %7239 = extractvalue %dx.types.CBufRet.f32 %7237, 1
  %7240 = fsub fast float %7235, %7238
  %7241 = fsub fast float %7236, %7239
  %7242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7243 = extractvalue %dx.types.CBufRet.f32 %7242, 2
  %7244 = extractvalue %dx.types.CBufRet.f32 %7242, 3
  %7245 = fmul fast float %7240, %7243
  %7246 = fmul fast float %7241, %7244
  %7247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7248 = extractvalue %dx.types.CBufRet.i32 %7247, 3
  %7249 = icmp eq i32 %7248, 0
  br i1 %7249, label %7255, label %7250

; <label>:7250                                    ; preds = %7214
  %7251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %7245, float %7246, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7252 = extractvalue %dx.types.ResRet.f32 %7251, 0
  %7253 = extractvalue %dx.types.ResRet.f32 %7251, 1
  %7254 = extractvalue %dx.types.ResRet.f32 %7251, 2
  br label %7260

; <label>:7255                                    ; preds = %7214
  %7256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %7245, float %7246, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7257 = extractvalue %dx.types.ResRet.f32 %7256, 0
  %7258 = extractvalue %dx.types.ResRet.f32 %7256, 1
  %7259 = extractvalue %dx.types.ResRet.f32 %7256, 2
  br label %7260

; <label>:7260                                    ; preds = %7255, %7250
  %7261 = phi float [ %7252, %7250 ], [ %7257, %7255 ]
  %7262 = phi float [ %7253, %7250 ], [ %7258, %7255 ]
  %7263 = phi float [ %7254, %7250 ], [ %7259, %7255 ]
  %7264 = extractvalue %dx.types.CBufRet.f32 %7223, 2
  %7265 = fmul fast float %7264, %7261
  %7266 = extractvalue %dx.types.CBufRet.f32 %7223, 0
  %7267 = fsub fast float %7232, %7266
  %7268 = fsub fast float %7267, %7265
  %7269 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7268)  ; FMax(a,b)
  %7270 = fmul fast float %7269, %7262
  %7271 = call float @dx.op.binary.f32(i32 36, float %7263, float %7270)  ; FMin(a,b)
  %7272 = fmul fast float %7271, 0xBFF7154760000000
  %7273 = call float @dx.op.unary.f32(i32 21, float %7272)  ; Exp(value)
  %7274 = fmul fast float %7216, %7273
  br label %7275

; <label>:7275                                    ; preds = %7260, %7110
  %7276 = phi float [ %7274, %7260 ], [ %7111, %7110 ]
  %7277 = call float @dx.op.binary.f32(i32 36, float %7276, float %7276)  ; FMin(a,b)
  %7278 = call float @dx.op.binary.f32(i32 36, float %7276, float %7277)  ; FMin(a,b)
  %7279 = fcmp fast ogt float %7278, 0.000000e+00
  br i1 %7279, label %7280, label %7544, !dx.controlflow.hints !124

; <label>:7280                                    ; preds = %7275
  %7281 = fmul fast float %7276, %6459
  %7282 = fmul fast float %7276, %6460
  %7283 = fmul fast float %7276, %6461
  %7284 = fsub fast float %200, %5230
  %7285 = fcmp fast ogt float %7284, 0.000000e+00
  %7286 = fmul fast float %6448, 5.120000e+02
  %7287 = fmul fast float %6449, 5.120000e+02
  %7288 = fmul fast float %6450, 5.120000e+02
  %7289 = fadd fast float %7288, %200
  %7290 = fsub fast float %5230, %7289
  %7291 = fmul fast float %7290, 2.000000e+00
  %7292 = fadd fast float %7291, %7289
  %7293 = select i1 %7285, float %7292, float %7289
  %7294 = fsub fast float %7293, %200
  %7295 = call float @dx.op.dot3.f32(i32 55, float %7286, float %7287, float %7294, float %7286, float %7287, float %7294)  ; Dot3(ax,ay,az,bx,by,bz)
  %7296 = call float @dx.op.unary.f32(i32 25, float %7295)  ; Rsqrt(value)
  %7297 = fmul fast float %7296, %7286
  %7298 = fmul fast float %7296, %7287
  %7299 = fmul fast float %7296, %7294
  %7300 = fsub fast float %5230, %200
  %7301 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7300)  ; Dot3(ax,ay,az,bx,by,bz)
  %7302 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7297, float %7298, float %7299)  ; Dot3(ax,ay,az,bx,by,bz)
  %7303 = fdiv fast float 1.000000e+00, %7302
  %7304 = fmul fast float %7303, %7301
  %7305 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7284, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7306 = fcmp fast ogt float %7305, 0.000000e+00
  %7307 = fcmp fast olt float %7305, 0.000000e+00
  %7308 = zext i1 %7306 to i32
  %7309 = zext i1 %7307 to i32
  %7310 = sub nsw i32 %7308, %7309
  %7311 = sitofp i32 %7310 to float
  %7312 = fsub fast float %7293, %5230
  %7313 = call float @dx.op.dot3.f32(i32 55, float %7286, float %7287, float %7312, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7314 = fcmp fast ogt float %7313, 0.000000e+00
  %7315 = fcmp fast olt float %7313, 0.000000e+00
  %7316 = zext i1 %7314 to i32
  %7317 = zext i1 %7315 to i32
  %7318 = sub nsw i32 %7316, %7317
  %7319 = sitofp i32 %7318 to float
  %7320 = fcmp fast une float %7311, %7319
  br i1 %7320, label %7321, label %7331

; <label>:7321                                    ; preds = %7280
  %7322 = fmul fast float %7304, %7299
  %7323 = fmul fast float %7304, %7298
  %7324 = fmul fast float %7304, %7297
  %7325 = fmul fast float %7324, %7324
  %7326 = fmul fast float %7323, %7323
  %7327 = fadd fast float %7325, %7326
  %7328 = fmul fast float %7322, %7322
  %7329 = fadd fast float %7327, %7328
  %7330 = call float @dx.op.unary.f32(i32 24, float %7329)  ; Sqrt(value)
  br label %7341

; <label>:7331                                    ; preds = %7280
  %7332 = icmp slt i32 %7310, 0
  br i1 %7332, label %7333, label %7341

; <label>:7333                                    ; preds = %7331
  %7334 = fsub fast float %200, %7293
  %7335 = fmul fast float %7286, %7286
  %7336 = fmul fast float %7287, %7287
  %7337 = fadd fast float %7335, %7336
  %7338 = fmul fast float %7334, %7334
  %7339 = fadd fast float %7337, %7338
  %7340 = call float @dx.op.unary.f32(i32 24, float %7339)  ; Sqrt(value)
  br label %7341

; <label>:7341                                    ; preds = %7333, %7331, %7321
  %7342 = phi float [ %7330, %7321 ], [ %7340, %7333 ], [ 0.000000e+00, %7331 ]
  %7343 = fsub fast float -0.000000e+00, %7342
  %7344 = select i1 %7285, float -0.000000e+00, float %7343
  %7345 = fmul fast float %5231, 0x3FF7154760000000
  %7346 = fmul fast float %7345, %7344
  %7347 = fmul fast float %5232, 0x3FF7154760000000
  %7348 = fmul fast float %7347, %7344
  %7349 = fmul fast float %5233, 0x3FF7154760000000
  %7350 = fmul fast float %7349, %7344
  %7351 = call float @dx.op.unary.f32(i32 21, float %7346)  ; Exp(value)
  %7352 = call float @dx.op.unary.f32(i32 21, float %7348)  ; Exp(value)
  %7353 = call float @dx.op.unary.f32(i32 21, float %7350)  ; Exp(value)
  %7354 = call float @dx.op.unary.f32(i32 7, float %7351)  ; Saturate(value)
  %7355 = call float @dx.op.unary.f32(i32 7, float %7352)  ; Saturate(value)
  %7356 = call float @dx.op.unary.f32(i32 7, float %7353)  ; Saturate(value)
  %7357 = fmul fast float %7281, %7354
  %7358 = fmul fast float %7282, %7355
  %7359 = fmul fast float %7283, %7356
  %7360 = fsub fast float %6448, %6055
  %7361 = fsub fast float %6449, %6056
  %7362 = fsub fast float %6450, %6057
  %7363 = call float @dx.op.dot3.f32(i32 55, float %7360, float %7361, float %7362, float %7360, float %7361, float %7362)  ; Dot3(ax,ay,az,bx,by,bz)
  %7364 = call float @dx.op.unary.f32(i32 25, float %7363)  ; Rsqrt(value)
  %7365 = fmul fast float %7364, %7360
  %7366 = fmul fast float %7364, %7361
  %7367 = fmul fast float %7364, %7362
  %7368 = call float @dx.op.dot3.f32(i32 55, float %6448, float %6449, float %6450, float %6015, float %6016, float %6017)  ; Dot3(ax,ay,az,bx,by,bz)
  %7369 = call float @dx.op.dot3.f32(i32 55, float %6058, float %6059, float %6060, float %7365, float %7366, float %7367)  ; Dot3(ax,ay,az,bx,by,bz)
  %7370 = call float @dx.op.unary.f32(i32 7, float %7368)  ; Saturate(value)
  %7371 = bitcast i32 %6075 to float
  %7372 = fmul fast float %7370, %7370
  %7373 = fmul fast float %7372, %7371
  %7374 = call float @dx.op.unary.f32(i32 7, float %7373)  ; Saturate(value)
  %7375 = fmul fast float %7374, %7370
  %7376 = call float @dx.op.dot3.f32(i32 55, float %6015, float %6016, float %6017, float %7365, float %7366, float %7367)  ; Dot3(ax,ay,az,bx,by,bz)
  %7377 = fmul fast float %7376, %7376
  %7378 = call float @dx.op.unary.f32(i32 6, float %7368)  ; FAbs(value)
  %7379 = fsub fast float 1.000000e+00, %6018
  %7380 = call float @dx.op.binary.f32(i32 35, float %7379, float 0x3F847AE140000000)  ; FMax(a,b)
  %7381 = fmul fast float %7380, %7380
  %7382 = fmul fast float %7381, %7381
  %7383 = fsub fast float 1.000000e+00, %7382
  %7384 = fmul fast float %6063, %6063
  %7385 = fmul fast float %7384, %7383
  %7386 = fadd fast float %7385, %7382
  %7387 = bitcast float %7386 to i32
  %7388 = ashr i32 %7387, 1
  %7389 = add nsw i32 %7388, 532487669
  %7390 = bitcast i32 %7389 to float
  %7391 = fadd fast float %7390, %6063
  %7392 = fmul fast float %7382, %7377
  %7393 = fsub fast float 1.000000e+00, %7377
  %7394 = fadd fast float %7393, %7392
  %7395 = fmul fast float %7378, %7378
  %7396 = fmul fast float %7395, %7383
  %7397 = fadd fast float %7396, %7382
  %7398 = bitcast float %7397 to i32
  %7399 = ashr i32 %7398, 1
  %7400 = add nsw i32 %7399, 532487669
  %7401 = bitcast i32 %7400 to float
  %7402 = fadd fast float %7401, %7378
  %7403 = fmul fast float %7394, %7394
  %7404 = fmul fast float %7403, %7391
  %7405 = fmul fast float %7404, %7402
  %7406 = fdiv fast float 0x3FF0A00000000000, %7405
  %7407 = fmul fast float %7406, %7382
  %7408 = fmul fast float %6310, 0x3FF9999980000000
  %7409 = fsub fast float 5.000000e+00, %7408
  %7410 = call float @dx.op.unary.f32(i32 6, float %7369)  ; FAbs(value)
  %7411 = fsub fast float 1.000000e+00, %7410
  %7412 = fmul fast float %6310, 0x41D9660740000000
  %7413 = fadd fast float %7412, 0xC1EFBF8940000000
  %7414 = bitcast float %7411 to i32
  %7415 = sitofp i32 %7414 to float
  %7416 = fmul fast float %7415, %7409
  %7417 = fadd fast float %7413, %7416
  %7418 = fptosi float %7417 to i32
  %7419 = bitcast i32 %7418 to float
  %7420 = fsub fast float 1.000000e+00, %6012
  %7421 = fsub fast float 1.000000e+00, %6013
  %7422 = fsub fast float 1.000000e+00, %6061
  %7423 = fmul fast float %7419, %7420
  %7424 = fmul fast float %7419, %7421
  %7425 = fmul fast float %7419, %7422
  %7426 = fadd fast float %7423, %6012
  %7427 = fadd fast float %7424, %6013
  %7428 = fadd fast float %7425, %6061
  br i1 %6333, label %7429, label %7452

; <label>:7429                                    ; preds = %7341
  %7430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4825, float %7410, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7431 = extractvalue %dx.types.ResRet.f32 %7430, 0
  %7432 = extractvalue %dx.types.ResRet.f32 %7430, 1
  %7433 = extractvalue %dx.types.ResRet.f32 %7430, 2
  %7434 = fadd fast float %7431, -5.000000e-01
  %7435 = fadd fast float %7432, -5.000000e-01
  %7436 = fadd fast float %7433, -5.000000e-01
  %7437 = fmul fast float %6012, 4.000000e+00
  %7438 = fmul fast float %7437, %7420
  %7439 = fmul fast float %7438, %7434
  %7440 = fmul fast float %6013, 4.000000e+00
  %7441 = fmul fast float %7440, %7421
  %7442 = fmul fast float %7441, %7435
  %7443 = fmul fast float %6061, 4.000000e+00
  %7444 = fmul fast float %7443, %7422
  %7445 = fmul fast float %7444, %7436
  %7446 = fadd fast float %7439, %7426
  %7447 = fadd fast float %7442, %7427
  %7448 = fadd fast float %7445, %7428
  %7449 = call float @dx.op.unary.f32(i32 7, float %7446)  ; Saturate(value)
  %7450 = call float @dx.op.unary.f32(i32 7, float %7447)  ; Saturate(value)
  %7451 = call float @dx.op.unary.f32(i32 7, float %7448)  ; Saturate(value)
  br label %7452

; <label>:7452                                    ; preds = %7429, %7341
  %7453 = phi float [ %7449, %7429 ], [ %7426, %7341 ]
  %7454 = phi float [ %7450, %7429 ], [ %7427, %7341 ]
  %7455 = phi float [ %7451, %7429 ], [ %7428, %7341 ]
  %7456 = fmul fast float %7368, 9.843750e-01
  %7457 = fadd fast float %7456, 7.812500e-03
  %7458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7457, float %6314, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7459 = extractvalue %dx.types.ResRet.f32 %7458, 0
  %7460 = extractvalue %dx.types.ResRet.f32 %7458, 1
  %7461 = extractvalue %dx.types.ResRet.f32 %7458, 2
  %7462 = extractvalue %dx.types.ResRet.f32 %7458, 3
  %7463 = fsub fast float %7461, %7459
  %7464 = fsub fast float %7462, %7460
  %7465 = fmul fast float %7463, %6320
  %7466 = fmul fast float %7464, %6320
  %7467 = fadd fast float %7465, %7459
  %7468 = fadd fast float %7466, %7460
  %7469 = fmul fast float %7467, %6012
  %7470 = fmul fast float %7467, %6013
  %7471 = fmul fast float %7467, %6061
  %7472 = fadd fast float %7469, %7468
  %7473 = fadd fast float %7470, %7468
  %7474 = fadd fast float %7471, %7468
  br i1 %6333, label %7475, label %7498

; <label>:7475                                    ; preds = %7452
  %7476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4825, float %7368, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7477 = extractvalue %dx.types.ResRet.f32 %7476, 0
  %7478 = extractvalue %dx.types.ResRet.f32 %7476, 1
  %7479 = extractvalue %dx.types.ResRet.f32 %7476, 2
  %7480 = fadd fast float %7477, -5.000000e-01
  %7481 = fadd fast float %7478, -5.000000e-01
  %7482 = fadd fast float %7479, -5.000000e-01
  %7483 = fmul fast float %6012, 4.000000e+00
  %7484 = fmul fast float %7483, %7420
  %7485 = fmul fast float %7484, %7480
  %7486 = fmul fast float %6013, 4.000000e+00
  %7487 = fmul fast float %7486, %7421
  %7488 = fmul fast float %7487, %7481
  %7489 = fmul fast float %6061, 4.000000e+00
  %7490 = fmul fast float %7489, %7422
  %7491 = fmul fast float %7490, %7482
  %7492 = fadd fast float %7485, %7472
  %7493 = fadd fast float %7488, %7473
  %7494 = fadd fast float %7491, %7474
  %7495 = call float @dx.op.unary.f32(i32 7, float %7492)  ; Saturate(value)
  %7496 = call float @dx.op.unary.f32(i32 7, float %7493)  ; Saturate(value)
  %7497 = call float @dx.op.unary.f32(i32 7, float %7494)  ; Saturate(value)
  br label %7498

; <label>:7498                                    ; preds = %7475, %7452
  %7499 = phi float [ %7495, %7475 ], [ %7472, %7452 ]
  %7500 = phi float [ %7496, %7475 ], [ %7473, %7452 ]
  %7501 = phi float [ %7497, %7475 ], [ %7474, %7452 ]
  %7502 = call float @dx.op.binary.f32(i32 35, float %7500, float %7501)  ; FMax(a,b)
  %7503 = call float @dx.op.binary.f32(i32 35, float %7499, float %7502)  ; FMax(a,b)
  %7504 = fsub fast float 1.000000e+00, %7503
  %7505 = fmul fast float %7453, %7407
  %7506 = fmul fast float %7454, %7407
  %7507 = fmul fast float %7455, %7407
  %7508 = fsub fast float 1.000000e+00, %7369
  %7509 = bitcast float %7508 to i32
  %7510 = sitofp i32 %7509 to float
  %7511 = fmul fast float %7510, 5.000000e+00
  %7512 = fadd fast float %7511, 0xC1EFBF8940000000
  %7513 = fptosi float %7512 to i32
  %7514 = bitcast i32 %7513 to float
  %7515 = fmul fast float %7514, %4826
  %7516 = fmul fast float %7504, %7515
  %7517 = fmul fast float %7516, %6383
  %7518 = fmul fast float %7516, %6384
  %7519 = fmul fast float %7516, %6385
  %7520 = fadd fast float %7517, %7505
  %7521 = fadd fast float %7518, %7506
  %7522 = fadd fast float %7519, %7507
  %7523 = fmul fast float %7375, %7357
  %7524 = fmul fast float %7523, %7504
  %7525 = fmul fast float %7375, %7358
  %7526 = fmul fast float %7525, %7504
  %7527 = fmul fast float %7375, %7359
  %7528 = fmul fast float %7527, %7504
  %7529 = fmul fast float %7523, %7520
  %7530 = fmul fast float %7525, %7521
  %7531 = fmul fast float %7527, %7522
  %7532 = fadd fast float %7524, %6367
  %7533 = fmul fast float %7532, %4822
  %7534 = fadd fast float %7526, %6368
  %7535 = fmul fast float %7534, %4822
  %7536 = fadd fast float %7528, %6369
  %7537 = fmul fast float %7536, %4822
  %7538 = fadd fast float %7529, %6436
  %7539 = fmul fast float %7538, %4822
  %7540 = fadd fast float %7530, %6439
  %7541 = fmul fast float %7540, %4822
  %7542 = fadd fast float %7531, %6442
  %7543 = fmul fast float %7542, %4822
  br label %7544

; <label>:7544                                    ; preds = %7498, %7275, %6360
  %7545 = phi float [ %6437, %6360 ], [ %6437, %7275 ], [ %7539, %7498 ]
  %7546 = phi float [ %6440, %6360 ], [ %6440, %7275 ], [ %7541, %7498 ]
  %7547 = phi float [ %6443, %6360 ], [ %6443, %7275 ], [ %7543, %7498 ]
  %7548 = phi float [ %6432, %6360 ], [ %6432, %7275 ], [ %7533, %7498 ]
  %7549 = phi float [ %6433, %6360 ], [ %6433, %7275 ], [ %7535, %7498 ]
  %7550 = phi float [ %6434, %6360 ], [ %6434, %7275 ], [ %7537, %7498 ]
  %7551 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7552 = extractvalue %dx.types.CBufRet.i32 %7551, 0
  %7553 = icmp eq i32 %7552, 0
  br i1 %7553, label %8187, label %7554

; <label>:7554                                    ; preds = %7544
  %7555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7556 = extractvalue %dx.types.CBufRet.f32 %7555, 2
  %7557 = extractvalue %dx.types.CBufRet.f32 %7555, 3
  %7558 = fmul fast float %7556, %115
  %7559 = fmul fast float %7557, %116
  %7560 = fptoui float %7558 to i32
  %7561 = fptoui float %7559 to i32
  %7562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7563 = extractvalue %dx.types.CBufRet.f32 %7562, 0
  %7564 = extractvalue %dx.types.CBufRet.f32 %7562, 2
  %7565 = extractvalue %dx.types.CBufRet.f32 %7562, 3
  %7566 = fadd fast float %106, -4.000000e+00
  %7567 = call float @dx.op.binary.f32(i32 35, float %7566, float 0.000000e+00)  ; FMax(a,b)
  %7568 = fadd fast float %7567, %7563
  %7569 = fmul fast float %7568, %7564
  %7570 = call float @dx.op.unary.f32(i32 23, float %7569)  ; Log(value)
  %7571 = fmul fast float %7570, %7565
  %7572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7573 = extractvalue %dx.types.CBufRet.f32 %7572, 2
  %7574 = fmul fast float %7571, %7573
  %7575 = call float @dx.op.unary.f32(i32 7, float %7574)  ; Saturate(value)
  %7576 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7577 = extractvalue %dx.types.CBufRet.i32 %7576, 1
  %7578 = add i32 %7577, -1
  %7579 = uitofp i32 %7577 to float
  %7580 = fmul fast float %7579, %7575
  %7581 = fptoui float %7580 to i32
  %7582 = call i32 @dx.op.binary.i32(i32 40, i32 %7581, i32 %7578)  ; UMin(a,b)
  %7583 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7584 = extractvalue %dx.types.CBufRet.i32 %7583, 2
  %7585 = extractvalue %dx.types.CBufRet.i32 %7583, 3
  %7586 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7561, i32 %7584, i32 %7560)  ; UMad(a,b,c)
  %7587 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7582, i32 %7585, i32 %7586)  ; UMad(a,b,c)
  %7588 = add nsw i32 %7552, -1
  %7589 = call i32 @dx.op.binary.i32(i32 37, i32 %7588, i32 0)  ; IMax(a,b)
  %7590 = call float @dx.op.binary.f32(i32 35, float %106, float 0.000000e+00)  ; FMax(a,b)
  %7591 = fptoui float %7590 to i32
  %7592 = lshr i32 %7591, 5
  %7593 = call i32 @dx.op.binary.i32(i32 40, i32 %7592, i32 8191)  ; UMin(a,b)
  %7594 = shl i32 %7593, 2
  %7595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7594, i32 undef)  ; BufferLoad(srv,index,wot)
  %7596 = extractvalue %dx.types.ResRet.i32 %7595, 0
  %7597 = lshr i32 %7596, 16
  %7598 = and i32 %7596, 65535
  %7599 = lshr i32 %7596, 21
  %7600 = lshr i32 %7598, 5
  %7601 = call i32 @dx.op.binary.i32(i32 40, i32 %7600, i32 %7589)  ; UMin(a,b)
  %7602 = icmp ugt i32 %7599, %7601
  br i1 %7602, label %8187, label %7603

; <label>:7603                                    ; preds = %7554
  br label %7604

; <label>:7604                                    ; preds = %8177, %7603
  %7605 = phi i32 [ %8184, %8177 ], [ %7599, %7603 ]
  %7606 = phi float [ %8178, %8177 ], [ %7545, %7603 ]
  %7607 = phi float [ %8179, %8177 ], [ %7546, %7603 ]
  %7608 = phi float [ %8180, %8177 ], [ %7547, %7603 ]
  %7609 = phi float [ %8181, %8177 ], [ %7548, %7603 ]
  %7610 = phi float [ %8182, %8177 ], [ %7549, %7603 ]
  %7611 = phi float [ %8183, %8177 ], [ %7550, %7603 ]
  %7612 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7613 = extractvalue %dx.types.CBufRet.i32 %7612, 0
  %7614 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7587, i32 %7613, i32 %7605)  ; UMad(a,b,c)
  %7615 = shl i32 %7614, 2
  %7616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7615, i32 undef)  ; BufferLoad(srv,index,wot)
  %7617 = extractvalue %dx.types.ResRet.i32 %7616, 0
  %7618 = shl i32 %7605, 5
  %7619 = sub nsw i32 %7597, %7618
  %7620 = call i32 @dx.op.binary.i32(i32 37, i32 %7619, i32 0)  ; IMax(a,b)
  %7621 = call i32 @dx.op.binary.i32(i32 38, i32 %7620, i32 31)  ; IMin(a,b)
  %7622 = sub nsw i32 1, %7597
  %7623 = add nsw i32 %7622, %7598
  %7624 = call i32 @dx.op.binary.i32(i32 37, i32 %7623, i32 0)  ; IMax(a,b)
  %7625 = call i32 @dx.op.binary.i32(i32 38, i32 %7624, i32 32)  ; IMin(a,b)
  %7626 = and i32 %7625, 31
  %7627 = shl i32 -1, %7626
  %7628 = xor i32 %7627, -1
  %7629 = and i32 %7621, 31
  %7630 = shl i32 %7628, %7629
  %7631 = icmp eq i32 %7625, 32
  %7632 = select i1 %7631, i32 -1, i32 %7630
  %7633 = and i32 %7632, %7617
  %7634 = icmp eq i32 %7633, 0
  br i1 %7634, label %8177, label %7635

; <label>:7635                                    ; preds = %7604
  br label %7636

; <label>:7636                                    ; preds = %7770, %7635
  %7637 = phi i32 [ %7648, %7770 ], [ %7633, %7635 ]
  %7638 = phi float [ %7771, %7770 ], [ %7606, %7635 ]
  %7639 = phi float [ %7772, %7770 ], [ %7607, %7635 ]
  %7640 = phi float [ %7773, %7770 ], [ %7608, %7635 ]
  %7641 = phi float [ %7774, %7770 ], [ %7609, %7635 ]
  %7642 = phi float [ %7775, %7770 ], [ %7610, %7635 ]
  %7643 = phi float [ %7776, %7770 ], [ %7611, %7635 ]
  %7644 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7637)  ; FirstbitLo(value)
  %7645 = add i32 %7644, %7618
  %7646 = and i32 %7644, 31
  %7647 = shl i32 1, %7646
  %7648 = xor i32 %7647, %7637
  %7649 = mul i32 %7645, 112
  %7650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7649, i32 undef)  ; BufferLoad(srv,index,wot)
  %7651 = extractvalue %dx.types.ResRet.f32 %7650, 0
  %7652 = extractvalue %dx.types.ResRet.f32 %7650, 1
  %7653 = extractvalue %dx.types.ResRet.f32 %7650, 2
  %7654 = or i32 %7649, 12
  %7655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7654, i32 undef)  ; BufferLoad(srv,index,wot)
  %7656 = extractvalue %dx.types.ResRet.f32 %7655, 0
  %7657 = add i32 %7649, 16
  %7658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7657, i32 undef)  ; BufferLoad(srv,index,wot)
  %7659 = extractvalue %dx.types.ResRet.f32 %7658, 0
  %7660 = extractvalue %dx.types.ResRet.f32 %7658, 1
  %7661 = extractvalue %dx.types.ResRet.f32 %7658, 2
  %7662 = add i32 %7649, 28
  %7663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7662, i32 undef)  ; BufferLoad(srv,index,wot)
  %7664 = extractvalue %dx.types.ResRet.i32 %7663, 0
  %7665 = add i32 %7649, 44
  %7666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7665, i32 undef)  ; BufferLoad(srv,index,wot)
  %7667 = extractvalue %dx.types.ResRet.f32 %7666, 0
  %7668 = add i32 %7649, 48
  %7669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7668, i32 undef)  ; BufferLoad(srv,index,wot)
  %7670 = extractvalue %dx.types.ResRet.f32 %7669, 0
  %7671 = extractvalue %dx.types.ResRet.f32 %7669, 1
  %7672 = extractvalue %dx.types.ResRet.f32 %7669, 2
  %7673 = extractvalue %dx.types.ResRet.f32 %7669, 3
  %7674 = add i32 %7649, 64
  %7675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7674, i32 undef)  ; BufferLoad(srv,index,wot)
  %7676 = extractvalue %dx.types.ResRet.f32 %7675, 0
  %7677 = extractvalue %dx.types.ResRet.f32 %7675, 1
  %7678 = extractvalue %dx.types.ResRet.f32 %7675, 2
  %7679 = extractvalue %dx.types.ResRet.f32 %7675, 3
  %7680 = add i32 %7649, 80
  %7681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7680, i32 undef)  ; BufferLoad(srv,index,wot)
  %7682 = extractvalue %dx.types.ResRet.f32 %7681, 1
  %7683 = extractvalue %dx.types.ResRet.f32 %7681, 2
  %7684 = add i32 %7649, 92
  %7685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7684, i32 undef)  ; BufferLoad(srv,index,wot)
  %7686 = extractvalue %dx.types.ResRet.i32 %7685, 0
  %7687 = call float @dx.op.dot3.f32(i32 55, float %7651, float %7652, float %7653, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7688 = select i1 %268, float %7682, float %7651
  %7689 = select i1 %268, float %7687, float %7652
  %7690 = select i1 %268, float %7683, float %7653
  %7691 = and i32 %7686, 65535
  %7692 = uitofp i32 %7691 to float
  %7693 = lshr i32 %7686, 16
  %7694 = uitofp i32 %7693 to float
  %7695 = and i32 %7664, 65535
  %7696 = and i32 %7664, 50331648
  %7697 = icmp eq i32 %7696, 33554432
  %7698 = fsub fast float %7670, %198
  %7699 = fsub fast float %7671, %199
  %7700 = fsub fast float %7672, %200
  %7701 = call float @dx.op.dot3.f32(i32 55, float %7698, float %7699, float %7700, float %7698, float %7699, float %7700)  ; Dot3(ax,ay,az,bx,by,bz)
  %7702 = call float @dx.op.unary.f32(i32 24, float %7701)  ; Sqrt(value)
  %7703 = fdiv fast float 1.000000e+00, %7702
  %7704 = fmul fast float %7703, %7698
  %7705 = fmul fast float %7703, %7699
  %7706 = fmul fast float %7703, %7700
  %7707 = fadd fast float %7702, %7656
  %7708 = fdiv fast float 1.000000e+00, %7707
  %7709 = fmul float %7667, %7708
  %7710 = fmul float %7709, %7709
  %7711 = call float @dx.op.unary.f32(i32 7, float %7710)  ; Saturate(value)
  br i1 %7697, label %7712, label %7733

; <label>:7712                                    ; preds = %7636
  %7713 = fmul fast float %7678, %7659
  %7714 = fmul fast float %7678, %7660
  %7715 = fmul fast float %7678, %7661
  %7716 = fadd fast float %7698, %7713
  %7717 = fadd fast float %7699, %7714
  %7718 = fadd fast float %7700, %7715
  %7719 = call float @dx.op.dot3.f32(i32 55, float %7716, float %7717, float %7718, float %7716, float %7717, float %7718)  ; Dot3(ax,ay,az,bx,by,bz)
  %7720 = call float @dx.op.unary.f32(i32 25, float %7719)  ; Rsqrt(value)
  %7721 = fmul fast float %7720, %7716
  %7722 = fmul fast float %7720, %7717
  %7723 = fmul fast float %7720, %7718
  %7724 = fsub fast float %198, %7670
  %7725 = fsub fast float %199, %7671
  %7726 = fsub fast float %200, %7672
  %7727 = fsub fast float -0.000000e+00, %7724
  %7728 = fsub fast float -0.000000e+00, %7725
  %7729 = fsub fast float -0.000000e+00, %7726
  %7730 = call float @dx.op.dot3.f32(i32 55, float %7727, float %7728, float %7729, float %7659, float %7660, float %7661)  ; Dot3(ax,ay,az,bx,by,bz)
  %7731 = fcmp fast ogt float %7730, 0.000000e+00
  %7732 = uitofp i1 %7731 to float
  br label %7733

; <label>:7733                                    ; preds = %7712, %7636
  %7734 = phi float [ %7732, %7712 ], [ 1.000000e+00, %7636 ]
  %7735 = phi float [ %7721, %7712 ], [ %7704, %7636 ]
  %7736 = phi float [ %7722, %7712 ], [ %7705, %7636 ]
  %7737 = phi float [ %7723, %7712 ], [ %7706, %7636 ]
  %7738 = call float @dx.op.dot3.f32(i32 55, float %7659, float %7660, float %7661, float %7735, float %7736, float %7737)  ; Dot3(ax,ay,az,bx,by,bz)
  %7739 = fmul fast float %7738, %7738
  %7740 = call float @dx.op.unary.f32(i32 7, float %7739)  ; Saturate(value)
  %7741 = fsub fast float 1.000000e+00, %7740
  %7742 = fmul fast float %7741, 5.000000e-01
  %7743 = fcmp fast ogt float %7738, 0.000000e+00
  %7744 = fsub fast float 1.000000e+00, %7742
  %7745 = select i1 %7743, float %7742, float %7744
  %7746 = fmul fast float %7745, %7694
  %7747 = fadd fast float %7746, %7692
  %7748 = fmul fast float %7747, 0x3EF0001000000000
  %7749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %7748, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7750 = extractvalue %dx.types.ResRet.f32 %7749, 0
  %7751 = fmul fast float %7738, %7676
  %7752 = fadd fast float %7751, %7677
  %7753 = call float @dx.op.unary.f32(i32 7, float %7752)  ; Saturate(value)
  %7754 = select i1 %7697, float 1.000000e+00, float %7753
  %7755 = select i1 %7697, float %7753, float 1.000000e+00
  %7756 = fmul fast float %7702, %7673
  %7757 = fsub fast float 1.000000e+00, %7756
  %7758 = fmul fast float %7757, %7679
  %7759 = call float @dx.op.unary.f32(i32 7, float %7758)  ; Saturate(value)
  %7760 = fmul fast float %7759, %7755
  %7761 = fmul fast float %7760, 2.000000e+00
  %7762 = fsub fast float 3.000000e+00, %7761
  %7763 = fmul fast float %7750, %7734
  %7764 = fmul fast float %7760, %7760
  %7765 = fmul fast float %7764, %7763
  %7766 = fmul fast float %7765, %7762
  %7767 = call float @dx.op.binary.f32(i32 36, float %7766, float %7766)  ; FMin(a,b)
  %7768 = call float @dx.op.binary.f32(i32 36, float %7766, float %7767)  ; FMin(a,b)
  %7769 = fcmp fast ogt float %7768, 0.000000e+00
  br i1 %7769, label %7778, label %7770, !dx.controlflow.hints !125

; <label>:7770                                    ; preds = %8133, %7878, %7733
  %7771 = phi float [ %7638, %7878 ], [ %7638, %7733 ], [ %8173, %8133 ]
  %7772 = phi float [ %7639, %7878 ], [ %7639, %7733 ], [ %8174, %8133 ]
  %7773 = phi float [ %7640, %7878 ], [ %7640, %7733 ], [ %8175, %8133 ]
  %7774 = phi float [ %7641, %7878 ], [ %7641, %7733 ], [ %8167, %8133 ]
  %7775 = phi float [ %7642, %7878 ], [ %7642, %7733 ], [ %8168, %8133 ]
  %7776 = phi float [ %7643, %7878 ], [ %7643, %7733 ], [ %8169, %8133 ]
  %7777 = icmp eq i32 %7637, %7647
  br i1 %7777, label %8176, label %7636

; <label>:7778                                    ; preds = %7733
  %7779 = icmp eq i32 %7695, 255
  br i1 %7779, label %7878, label %7780, !dx.controlflow.hints !126

; <label>:7780                                    ; preds = %7778
  %7781 = mul nuw nsw i32 %7695, 176
  %7782 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7781, i32 undef)  ; BufferLoad(srv,index,wot)
  %7783 = extractvalue %dx.types.ResRet.f32 %7782, 0
  %7784 = extractvalue %dx.types.ResRet.f32 %7782, 1
  %7785 = extractvalue %dx.types.ResRet.f32 %7782, 2
  %7786 = extractvalue %dx.types.ResRet.f32 %7782, 3
  %7787 = add nuw nsw i32 %7781, 16
  %7788 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7787, i32 undef)  ; BufferLoad(srv,index,wot)
  %7789 = extractvalue %dx.types.ResRet.f32 %7788, 0
  %7790 = extractvalue %dx.types.ResRet.f32 %7788, 1
  %7791 = add nuw nsw i32 %7781, 32
  %7792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7791, i32 undef)  ; BufferLoad(srv,index,wot)
  %7793 = extractvalue %dx.types.ResRet.f32 %7792, 0
  %7794 = extractvalue %dx.types.ResRet.f32 %7792, 1
  %7795 = extractvalue %dx.types.ResRet.f32 %7792, 2
  %7796 = add nuw nsw i32 %7781, 48
  %7797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7796, i32 undef)  ; BufferLoad(srv,index,wot)
  %7798 = extractvalue %dx.types.ResRet.f32 %7797, 0
  %7799 = extractvalue %dx.types.ResRet.f32 %7797, 1
  %7800 = extractvalue %dx.types.ResRet.f32 %7797, 2
  %7801 = extractvalue %dx.types.ResRet.f32 %7797, 3
  %7802 = add nuw nsw i32 %7781, 64
  %7803 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7802, i32 undef)  ; BufferLoad(srv,index,wot)
  %7804 = extractvalue %dx.types.ResRet.f32 %7803, 0
  %7805 = extractvalue %dx.types.ResRet.f32 %7803, 1
  %7806 = extractvalue %dx.types.ResRet.f32 %7803, 2
  %7807 = extractvalue %dx.types.ResRet.f32 %7803, 3
  %7808 = add nuw nsw i32 %7781, 80
  %7809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7808, i32 undef)  ; BufferLoad(srv,index,wot)
  %7810 = extractvalue %dx.types.ResRet.f32 %7809, 0
  %7811 = extractvalue %dx.types.ResRet.f32 %7809, 1
  %7812 = extractvalue %dx.types.ResRet.f32 %7809, 2
  %7813 = extractvalue %dx.types.ResRet.f32 %7809, 3
  %7814 = add nuw nsw i32 %7781, 96
  %7815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7814, i32 undef)  ; BufferLoad(srv,index,wot)
  %7816 = extractvalue %dx.types.ResRet.f32 %7815, 0
  %7817 = extractvalue %dx.types.ResRet.f32 %7815, 1
  %7818 = extractvalue %dx.types.ResRet.f32 %7815, 2
  %7819 = extractvalue %dx.types.ResRet.f32 %7815, 3
  %7820 = bitcast float %7790 to i32
  %7821 = fmul fast float %7795, %124
  %7822 = fmul fast float %7795, %126
  %7823 = fmul fast float %7795, %128
  %7824 = fadd fast float %7821, %198
  %7825 = fadd fast float %7822, %199
  %7826 = fadd fast float %7823, %200
  %7827 = fmul fast float %7824, %7798
  %7828 = call float @dx.op.tertiary.f32(i32 46, float %7825, float %7804, float %7827)  ; FMad(a,b,c)
  %7829 = call float @dx.op.tertiary.f32(i32 46, float %7826, float %7810, float %7828)  ; FMad(a,b,c)
  %7830 = fadd fast float %7829, %7816
  %7831 = fmul fast float %7824, %7799
  %7832 = call float @dx.op.tertiary.f32(i32 46, float %7825, float %7805, float %7831)  ; FMad(a,b,c)
  %7833 = call float @dx.op.tertiary.f32(i32 46, float %7826, float %7811, float %7832)  ; FMad(a,b,c)
  %7834 = fadd fast float %7833, %7817
  %7835 = fmul fast float %7824, %7800
  %7836 = call float @dx.op.tertiary.f32(i32 46, float %7825, float %7806, float %7835)  ; FMad(a,b,c)
  %7837 = call float @dx.op.tertiary.f32(i32 46, float %7826, float %7812, float %7836)  ; FMad(a,b,c)
  %7838 = fadd fast float %7837, %7818
  %7839 = fmul fast float %7824, %7801
  %7840 = call float @dx.op.tertiary.f32(i32 46, float %7825, float %7807, float %7839)  ; FMad(a,b,c)
  %7841 = call float @dx.op.tertiary.f32(i32 46, float %7826, float %7813, float %7840)  ; FMad(a,b,c)
  %7842 = fadd fast float %7841, %7819
  %7843 = fdiv fast float %7830, %7842
  %7844 = fdiv fast float %7834, %7842
  %7845 = fdiv fast float %7838, %7842
  %7846 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7845)  ; FMax(a,b)
  %7847 = fmul fast float %279, 0x401921FB60000000
  %7848 = call float @dx.op.unary.f32(i32 13, float %7847)  ; Sin(value)
  %7849 = call float @dx.op.unary.f32(i32 12, float %7847)  ; Cos(value)
  %7850 = fsub fast float -0.000000e+00, %7848
  %7851 = fmul fast float %7785, 5.000000e-01
  %7852 = call float @dx.op.dot2.f32(i32 54, float %279, float %279, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7853 = call float @dx.op.unary.f32(i32 22, float %7852)  ; Frc(value)
  %7854 = fmul fast float %7853, 0x404A7DD040000000
  %7855 = call float @dx.op.unary.f32(i32 22, float %7854)  ; Frc(value)
  %7856 = fmul fast float %7855, %7794
  %7857 = fadd fast float %7856, %7851
  %7858 = call float @dx.op.tertiary.f32(i32 46, float %7857, float %7850, float 0.000000e+00)  ; FMad(a,b,c)
  %7859 = call float @dx.op.tertiary.f32(i32 46, float %7857, float %7849, float 0.000000e+00)  ; FMad(a,b,c)
  %7860 = fadd fast float %7858, %7843
  %7861 = fadd fast float %7859, %7844
  %7862 = fmul fast float %7860, %7789
  %7863 = fmul fast float %7861, %7789
  %7864 = call float @dx.op.binary.f32(i32 35, float %7862, float %7785)  ; FMax(a,b)
  %7865 = call float @dx.op.binary.f32(i32 35, float %7863, float %7785)  ; FMax(a,b)
  %7866 = call float @dx.op.binary.f32(i32 36, float %7864, float %7786)  ; FMin(a,b)
  %7867 = call float @dx.op.binary.f32(i32 36, float %7865, float %7786)  ; FMin(a,b)
  %7868 = fadd fast float %7866, %7783
  %7869 = fadd fast float %7867, %7784
  %7870 = uitofp i32 %7820 to float
  %7871 = fadd fast float %7846, %7793
  %7872 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %52, float %7868, float %7869, float %7870, float undef, i32 0, i32 0, i32 undef, float %7871)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7873 = extractvalue %dx.types.ResRet.f32 %7872, 0
  %7874 = fadd fast float %7873, -1.000000e+00
  %7875 = fmul fast float %7874, %7754
  %7876 = fadd fast float %7875, 1.000000e+00
  %7877 = fmul fast float %7876, %7766
  br label %7878

; <label>:7878                                    ; preds = %7780, %7778
  %7879 = phi float [ %7877, %7780 ], [ %7766, %7778 ]
  %7880 = call float @dx.op.binary.f32(i32 36, float %7879, float %7879)  ; FMin(a,b)
  %7881 = call float @dx.op.binary.f32(i32 36, float %7879, float %7880)  ; FMin(a,b)
  %7882 = fcmp fast ogt float %7881, 0.000000e+00
  br i1 %7882, label %7883, label %7770, !dx.controlflow.hints !127

; <label>:7883                                    ; preds = %7878
  %7884 = fmul fast float %7879, %7688
  %7885 = fmul fast float %7879, %7689
  %7886 = fmul fast float %7879, %7690
  %7887 = fsub fast float %7672, %5230
  %7888 = fcmp fast ogt float %7887, 0.000000e+00
  %7889 = fsub fast float %200, %5230
  %7890 = fcmp fast ogt float %7889, 0.000000e+00
  %7891 = xor i1 %7890, %7888
  %7892 = fsub fast float %5230, %7672
  %7893 = fmul fast float %7892, 2.000000e+00
  %7894 = fadd fast float %7893, %7672
  %7895 = select i1 %7891, float %7672, float %7894
  %7896 = fsub fast float %7895, %200
  %7897 = call float @dx.op.dot3.f32(i32 55, float %7698, float %7699, float %7896, float %7698, float %7699, float %7896)  ; Dot3(ax,ay,az,bx,by,bz)
  %7898 = call float @dx.op.unary.f32(i32 25, float %7897)  ; Rsqrt(value)
  %7899 = fmul fast float %7898, %7698
  %7900 = fmul fast float %7898, %7699
  %7901 = fmul fast float %7898, %7896
  %7902 = fsub fast float %5230, %200
  %7903 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7902)  ; Dot3(ax,ay,az,bx,by,bz)
  %7904 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7899, float %7900, float %7901)  ; Dot3(ax,ay,az,bx,by,bz)
  %7905 = fdiv fast float 1.000000e+00, %7904
  %7906 = fmul fast float %7905, %7903
  %7907 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7889, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7908 = fcmp fast ogt float %7907, 0.000000e+00
  %7909 = fcmp fast olt float %7907, 0.000000e+00
  %7910 = zext i1 %7908 to i32
  %7911 = zext i1 %7909 to i32
  %7912 = sub nsw i32 %7910, %7911
  %7913 = sitofp i32 %7912 to float
  %7914 = fsub fast float %7895, %5230
  %7915 = call float @dx.op.dot3.f32(i32 55, float %7698, float %7699, float %7914, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7916 = fcmp fast ogt float %7915, 0.000000e+00
  %7917 = fcmp fast olt float %7915, 0.000000e+00
  %7918 = zext i1 %7916 to i32
  %7919 = zext i1 %7917 to i32
  %7920 = sub nsw i32 %7918, %7919
  %7921 = sitofp i32 %7920 to float
  %7922 = fcmp fast une float %7913, %7921
  br i1 %7922, label %7923, label %7933

; <label>:7923                                    ; preds = %7883
  %7924 = fmul fast float %7906, %7901
  %7925 = fmul fast float %7906, %7900
  %7926 = fmul fast float %7906, %7899
  %7927 = fmul fast float %7926, %7926
  %7928 = fmul fast float %7925, %7925
  %7929 = fadd fast float %7927, %7928
  %7930 = fmul fast float %7924, %7924
  %7931 = fadd fast float %7929, %7930
  %7932 = call float @dx.op.unary.f32(i32 24, float %7931)  ; Sqrt(value)
  br label %7945

; <label>:7933                                    ; preds = %7883
  %7934 = icmp slt i32 %7912, 0
  br i1 %7934, label %7935, label %7945

; <label>:7935                                    ; preds = %7933
  %7936 = fsub fast float %198, %7670
  %7937 = fsub fast float %199, %7671
  %7938 = fsub fast float %200, %7895
  %7939 = fmul fast float %7936, %7936
  %7940 = fmul fast float %7937, %7937
  %7941 = fadd fast float %7939, %7940
  %7942 = fmul fast float %7938, %7938
  %7943 = fadd fast float %7941, %7942
  %7944 = call float @dx.op.unary.f32(i32 24, float %7943)  ; Sqrt(value)
  br label %7945

; <label>:7945                                    ; preds = %7935, %7933, %7923
  %7946 = phi float [ %7932, %7923 ], [ %7944, %7935 ], [ 0.000000e+00, %7933 ]
  %7947 = and i1 %7890, %7888
  %7948 = fsub fast float -0.000000e+00, %7946
  %7949 = select i1 %7947, float -0.000000e+00, float %7948
  %7950 = fmul fast float %5231, 0x3FF7154760000000
  %7951 = fmul fast float %7950, %7949
  %7952 = fmul fast float %5232, 0x3FF7154760000000
  %7953 = fmul fast float %7952, %7949
  %7954 = fmul fast float %5233, 0x3FF7154760000000
  %7955 = fmul fast float %7954, %7949
  %7956 = call float @dx.op.unary.f32(i32 21, float %7951)  ; Exp(value)
  %7957 = call float @dx.op.unary.f32(i32 21, float %7953)  ; Exp(value)
  %7958 = call float @dx.op.unary.f32(i32 21, float %7955)  ; Exp(value)
  %7959 = call float @dx.op.unary.f32(i32 7, float %7956)  ; Saturate(value)
  %7960 = call float @dx.op.unary.f32(i32 7, float %7957)  ; Saturate(value)
  %7961 = call float @dx.op.unary.f32(i32 7, float %7958)  ; Saturate(value)
  %7962 = fmul fast float %7884, %7959
  %7963 = fmul fast float %7885, %7960
  %7964 = fmul fast float %7886, %7961
  %7965 = fsub fast float %7704, %6055
  %7966 = fsub fast float %7705, %6056
  %7967 = fsub fast float %7706, %6057
  %7968 = call float @dx.op.dot3.f32(i32 55, float %7965, float %7966, float %7967, float %7965, float %7966, float %7967)  ; Dot3(ax,ay,az,bx,by,bz)
  %7969 = call float @dx.op.unary.f32(i32 25, float %7968)  ; Rsqrt(value)
  %7970 = fmul fast float %7969, %7965
  %7971 = fmul fast float %7969, %7966
  %7972 = fmul fast float %7969, %7967
  %7973 = call float @dx.op.dot3.f32(i32 55, float %7704, float %7705, float %7706, float %6015, float %6016, float %6017)  ; Dot3(ax,ay,az,bx,by,bz)
  %7974 = call float @dx.op.dot3.f32(i32 55, float %6058, float %6059, float %6060, float %7970, float %7971, float %7972)  ; Dot3(ax,ay,az,bx,by,bz)
  %7975 = call float @dx.op.unary.f32(i32 7, float %7973)  ; Saturate(value)
  %7976 = fmul fast float %7975, %7711
  %7977 = bitcast i32 %6075 to float
  %7978 = fmul fast float %7975, %7975
  %7979 = fmul fast float %7978, %7977
  %7980 = call float @dx.op.unary.f32(i32 7, float %7979)  ; Saturate(value)
  %7981 = fmul fast float %7976, %7980
  %7982 = bitcast float %7701 to i32
  %7983 = ashr i32 %7982, 1
  %7984 = sub nsw i32 1597463007, %7983
  %7985 = bitcast i32 %7984 to float
  %7986 = fmul fast float %7985, %7698
  %7987 = fmul fast float %7985, %7699
  %7988 = fmul fast float %7985, %7700
  %7989 = fsub fast float %7986, %6055
  %7990 = fsub fast float %7987, %6056
  %7991 = fsub fast float %7988, %6057
  %7992 = call float @dx.op.dot3.f32(i32 55, float %7989, float %7990, float %7991, float %7989, float %7990, float %7991)  ; Dot3(ax,ay,az,bx,by,bz)
  %7993 = call float @dx.op.unary.f32(i32 25, float %7992)  ; Rsqrt(value)
  %7994 = fmul fast float %7989, %7993
  %7995 = fmul fast float %7990, %7993
  %7996 = fmul fast float %7991, %7993
  %7997 = call float @dx.op.dot3.f32(i32 55, float %6015, float %6016, float %6017, float %7994, float %7995, float %7996)  ; Dot3(ax,ay,az,bx,by,bz)
  %7998 = fmul fast float %7997, %7997
  %7999 = call float @dx.op.unary.f32(i32 6, float %7973)  ; FAbs(value)
  %8000 = fsub fast float 1.000000e+00, %6018
  %8001 = call float @dx.op.binary.f32(i32 35, float %8000, float 0x3F847AE140000000)  ; FMax(a,b)
  %8002 = fmul fast float %8001, %8001
  %8003 = fmul fast float %8002, %8002
  %8004 = fsub fast float 1.000000e+00, %8003
  %8005 = fmul fast float %6063, %6063
  %8006 = fmul fast float %8005, %8004
  %8007 = fadd fast float %8006, %8003
  %8008 = bitcast float %8007 to i32
  %8009 = ashr i32 %8008, 1
  %8010 = add nsw i32 %8009, 532487669
  %8011 = bitcast i32 %8010 to float
  %8012 = fadd fast float %8011, %6063
  %8013 = fmul fast float %8003, %7998
  %8014 = fsub fast float 1.000000e+00, %7998
  %8015 = fadd fast float %8014, %8013
  %8016 = fmul fast float %7999, %7999
  %8017 = fmul fast float %8016, %8004
  %8018 = fadd fast float %8017, %8003
  %8019 = bitcast float %8018 to i32
  %8020 = ashr i32 %8019, 1
  %8021 = add nsw i32 %8020, 532487669
  %8022 = bitcast i32 %8021 to float
  %8023 = fadd fast float %8022, %7999
  %8024 = fmul fast float %8015, %8015
  %8025 = fmul fast float %8024, %8012
  %8026 = fmul fast float %8025, %8023
  %8027 = fdiv fast float 1.000000e+00, %8026
  %8028 = bitcast float %8003 to i32
  %8029 = sitofp i32 %8028 to float
  %8030 = fmul fast float %8029, 0x3FE7F73180000000
  %8031 = fadd fast float %8030, 0x41AFE27C40000000
  %8032 = fptosi float %8031 to i32
  %8033 = bitcast i32 %8032 to float
  %8034 = fmul fast float %7667, 0x3FD80E9D60000000
  %8035 = fmul fast float %8034, %7985
  %8036 = fadd fast float %8033, %8035
  %8037 = bitcast float %8036 to i32
  %8038 = sub nsw i32 2129859010, %8037
  %8039 = bitcast i32 %8038 to float
  %8040 = fmul fast float %8003, %8027
  %8041 = fmul fast float %8040, %8033
  %8042 = fmul fast float %8041, %8039
  %8043 = fmul fast float %6310, 0x3FF9999980000000
  %8044 = fsub fast float 5.000000e+00, %8043
  %8045 = call float @dx.op.unary.f32(i32 6, float %7974)  ; FAbs(value)
  %8046 = fsub fast float 1.000000e+00, %8045
  %8047 = fmul fast float %6310, 0x41D9660740000000
  %8048 = fadd fast float %8047, 0xC1EFBF8940000000
  %8049 = bitcast float %8046 to i32
  %8050 = sitofp i32 %8049 to float
  %8051 = fmul fast float %8050, %8044
  %8052 = fadd fast float %8048, %8051
  %8053 = fptosi float %8052 to i32
  %8054 = bitcast i32 %8053 to float
  %8055 = fsub fast float 1.000000e+00, %6012
  %8056 = fsub fast float 1.000000e+00, %6013
  %8057 = fsub fast float 1.000000e+00, %6061
  %8058 = fmul fast float %8054, %8055
  %8059 = fmul fast float %8054, %8056
  %8060 = fmul fast float %8054, %8057
  %8061 = fadd fast float %8058, %6012
  %8062 = fadd fast float %8059, %6013
  %8063 = fadd fast float %8060, %6061
  br i1 %6333, label %8064, label %8087

; <label>:8064                                    ; preds = %7945
  %8065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4825, float %8045, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8066 = extractvalue %dx.types.ResRet.f32 %8065, 0
  %8067 = extractvalue %dx.types.ResRet.f32 %8065, 1
  %8068 = extractvalue %dx.types.ResRet.f32 %8065, 2
  %8069 = fadd fast float %8066, -5.000000e-01
  %8070 = fadd fast float %8067, -5.000000e-01
  %8071 = fadd fast float %8068, -5.000000e-01
  %8072 = fmul fast float %6012, 4.000000e+00
  %8073 = fmul fast float %8072, %8055
  %8074 = fmul fast float %8073, %8069
  %8075 = fmul fast float %6013, 4.000000e+00
  %8076 = fmul fast float %8075, %8056
  %8077 = fmul fast float %8076, %8070
  %8078 = fmul fast float %6061, 4.000000e+00
  %8079 = fmul fast float %8078, %8057
  %8080 = fmul fast float %8079, %8071
  %8081 = fadd fast float %8074, %8061
  %8082 = fadd fast float %8077, %8062
  %8083 = fadd fast float %8080, %8063
  %8084 = call float @dx.op.unary.f32(i32 7, float %8081)  ; Saturate(value)
  %8085 = call float @dx.op.unary.f32(i32 7, float %8082)  ; Saturate(value)
  %8086 = call float @dx.op.unary.f32(i32 7, float %8083)  ; Saturate(value)
  br label %8087

; <label>:8087                                    ; preds = %8064, %7945
  %8088 = phi float [ %8084, %8064 ], [ %8061, %7945 ]
  %8089 = phi float [ %8085, %8064 ], [ %8062, %7945 ]
  %8090 = phi float [ %8086, %8064 ], [ %8063, %7945 ]
  %8091 = fmul fast float %7973, 9.843750e-01
  %8092 = fadd fast float %8091, 7.812500e-03
  %8093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %8092, float %6314, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8094 = extractvalue %dx.types.ResRet.f32 %8093, 0
  %8095 = extractvalue %dx.types.ResRet.f32 %8093, 1
  %8096 = extractvalue %dx.types.ResRet.f32 %8093, 2
  %8097 = extractvalue %dx.types.ResRet.f32 %8093, 3
  %8098 = fsub fast float %8096, %8094
  %8099 = fsub fast float %8097, %8095
  %8100 = fmul fast float %8098, %6320
  %8101 = fmul fast float %8099, %6320
  %8102 = fadd fast float %8100, %8094
  %8103 = fadd fast float %8101, %8095
  %8104 = fmul fast float %8102, %6012
  %8105 = fmul fast float %8102, %6013
  %8106 = fmul fast float %8102, %6061
  %8107 = fadd fast float %8104, %8103
  %8108 = fadd fast float %8105, %8103
  %8109 = fadd fast float %8106, %8103
  br i1 %6333, label %8110, label %8133

; <label>:8110                                    ; preds = %8087
  %8111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4825, float %7973, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8112 = extractvalue %dx.types.ResRet.f32 %8111, 0
  %8113 = extractvalue %dx.types.ResRet.f32 %8111, 1
  %8114 = extractvalue %dx.types.ResRet.f32 %8111, 2
  %8115 = fadd fast float %8112, -5.000000e-01
  %8116 = fadd fast float %8113, -5.000000e-01
  %8117 = fadd fast float %8114, -5.000000e-01
  %8118 = fmul fast float %6012, 4.000000e+00
  %8119 = fmul fast float %8118, %8055
  %8120 = fmul fast float %8119, %8115
  %8121 = fmul fast float %6013, 4.000000e+00
  %8122 = fmul fast float %8121, %8056
  %8123 = fmul fast float %8122, %8116
  %8124 = fmul fast float %6061, 4.000000e+00
  %8125 = fmul fast float %8124, %8057
  %8126 = fmul fast float %8125, %8117
  %8127 = fadd fast float %8120, %8107
  %8128 = fadd fast float %8123, %8108
  %8129 = fadd fast float %8126, %8109
  %8130 = call float @dx.op.unary.f32(i32 7, float %8127)  ; Saturate(value)
  %8131 = call float @dx.op.unary.f32(i32 7, float %8128)  ; Saturate(value)
  %8132 = call float @dx.op.unary.f32(i32 7, float %8129)  ; Saturate(value)
  br label %8133

; <label>:8133                                    ; preds = %8110, %8087
  %8134 = phi float [ %8130, %8110 ], [ %8107, %8087 ]
  %8135 = phi float [ %8131, %8110 ], [ %8108, %8087 ]
  %8136 = phi float [ %8132, %8110 ], [ %8109, %8087 ]
  %8137 = call float @dx.op.binary.f32(i32 35, float %8135, float %8136)  ; FMax(a,b)
  %8138 = call float @dx.op.binary.f32(i32 35, float %8134, float %8137)  ; FMax(a,b)
  %8139 = fsub fast float 1.000000e+00, %8138
  %8140 = fmul fast float %8088, %8042
  %8141 = fmul fast float %8089, %8042
  %8142 = fmul fast float %8090, %8042
  %8143 = fsub fast float 1.000000e+00, %7974
  %8144 = bitcast float %8143 to i32
  %8145 = sitofp i32 %8144 to float
  %8146 = fmul fast float %8145, 5.000000e+00
  %8147 = fadd fast float %8146, 0xC1EFBF8940000000
  %8148 = fptosi float %8147 to i32
  %8149 = bitcast i32 %8148 to float
  %8150 = fmul fast float %8149, %4826
  %8151 = fmul fast float %8139, %8150
  %8152 = fmul fast float %8151, %6383
  %8153 = fmul fast float %8151, %6384
  %8154 = fmul fast float %8151, %6385
  %8155 = fadd fast float %8152, %8140
  %8156 = fadd fast float %8153, %8141
  %8157 = fadd fast float %8154, %8142
  %8158 = fmul fast float %7962, %4822
  %8159 = fmul fast float %8158, %7981
  %8160 = fmul fast float %8159, %8139
  %8161 = fmul fast float %7963, %4822
  %8162 = fmul fast float %8161, %7981
  %8163 = fmul fast float %8162, %8139
  %8164 = fmul fast float %7964, %4822
  %8165 = fmul fast float %8164, %7981
  %8166 = fmul fast float %8165, %8139
  %8167 = fadd fast float %8160, %7641
  %8168 = fadd fast float %8163, %7642
  %8169 = fadd fast float %8166, %7643
  %8170 = fmul fast float %8159, %8155
  %8171 = fmul fast float %8162, %8156
  %8172 = fmul fast float %8165, %8157
  %8173 = fadd fast float %8170, %7638
  %8174 = fadd fast float %8171, %7639
  %8175 = fadd fast float %8172, %7640
  br label %7770

; <label>:8176                                    ; preds = %7770
  br label %8177

; <label>:8177                                    ; preds = %8176, %7604
  %8178 = phi float [ %7606, %7604 ], [ %7771, %8176 ]
  %8179 = phi float [ %7607, %7604 ], [ %7772, %8176 ]
  %8180 = phi float [ %7608, %7604 ], [ %7773, %8176 ]
  %8181 = phi float [ %7609, %7604 ], [ %7774, %8176 ]
  %8182 = phi float [ %7610, %7604 ], [ %7775, %8176 ]
  %8183 = phi float [ %7611, %7604 ], [ %7776, %8176 ]
  %8184 = add i32 %7605, 1
  %8185 = icmp ugt i32 %8184, %7601
  br i1 %8185, label %8186, label %7604

; <label>:8186                                    ; preds = %8177
  br label %8187

; <label>:8187                                    ; preds = %8186, %7554, %7544
  %8188 = phi float [ %7545, %7544 ], [ %7545, %7554 ], [ %8178, %8186 ]
  %8189 = phi float [ %7546, %7544 ], [ %7546, %7554 ], [ %8179, %8186 ]
  %8190 = phi float [ %7547, %7544 ], [ %7547, %7554 ], [ %8180, %8186 ]
  %8191 = phi float [ %7548, %7544 ], [ %7548, %7554 ], [ %8181, %8186 ]
  %8192 = phi float [ %7549, %7544 ], [ %7549, %7554 ], [ %8182, %8186 ]
  %8193 = phi float [ %7550, %7544 ], [ %7550, %7554 ], [ %8183, %8186 ]
  %8194 = fmul fast float %4822, %4822
  %8195 = fmul fast float %8194, %6409
  %8196 = fmul fast float %8194, %6410
  %8197 = fmul fast float %8194, %6411
  %8198 = fadd fast float %8195, 1.000000e+00
  %8199 = fadd fast float %8196, 1.000000e+00
  %8200 = fadd fast float %8197, 1.000000e+00
  %8201 = call float @dx.op.dot3.f32(i32 55, float %8198, float %8199, float %8200, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8202 = fsub fast float 1.000000e+00, %8201
  %8203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8204 = extractvalue %dx.types.CBufRet.f32 %8203, 0
  %8205 = fmul fast float %8204, %6415
  %8206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8207 = extractvalue %dx.types.CBufRet.f32 %8206, 3
  %8208 = fsub fast float 1.000000e+00, %4830
  %8209 = call float @dx.op.unary.f32(i32 7, float %8208)  ; Saturate(value)
  %8210 = fadd fast float %8193, %4828
  %8211 = fmul fast float %8210, %4830
  %8212 = fmul fast float %8209, %8207
  %8213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8214 = extractvalue %dx.types.CBufRet.f32 %8213, 3
  %8215 = fmul fast float %8191, %6009
  %8216 = fmul fast float %8192, %6010
  %8217 = fmul fast float %8193, %6011
  %8218 = fcmp fast ogt float %106, %231
  %8219 = and i1 %8218, %5236
  %8220 = or i1 %5242, %8219
  %8221 = icmp eq i32 %5235, 2
  %8222 = fcmp fast ole float %106, %231
  %8223 = and i1 %8222, %8221
  %8224 = or i1 %8223, %8220
  br i1 %8219, label %8225, label %8482

; <label>:8225                                    ; preds = %8187
  %8226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8227 = extractvalue %dx.types.CBufRet.f32 %8226, 2
  %8228 = extractvalue %dx.types.CBufRet.f32 %8226, 3
  %8229 = fmul fast float %8227, %115
  %8230 = fmul fast float %8228, %116
  %8231 = call float @dx.op.unary.f32(i32 7, float %8229)  ; Saturate(value)
  %8232 = call float @dx.op.unary.f32(i32 7, float %8230)  ; Saturate(value)
  %8233 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8231, float %8232, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8234 = extractvalue %dx.types.ResRet.f32 %8233, 0
  %8235 = extractvalue %dx.types.ResRet.f32 %8233, 1
  %8236 = extractvalue %dx.types.ResRet.f32 %8233, 2
  %8237 = extractvalue %dx.types.ResRet.f32 %8233, 3
  %8238 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8231, float %8232, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8239 = extractvalue %dx.types.ResRet.f32 %8238, 0
  %8240 = extractvalue %dx.types.ResRet.f32 %8238, 1
  %8241 = extractvalue %dx.types.ResRet.f32 %8238, 2
  %8242 = extractvalue %dx.types.ResRet.f32 %8238, 3
  %8243 = call float @dx.op.binary.f32(i32 35, float %8235, float %8236)  ; FMax(a,b)
  %8244 = call float @dx.op.binary.f32(i32 35, float %8234, float %8243)  ; FMax(a,b)
  %8245 = call float @dx.op.binary.f32(i32 35, float %8244, float %8237)  ; FMax(a,b)
  %8246 = call float @dx.op.binary.f32(i32 36, float %8240, float %8241)  ; FMin(a,b)
  %8247 = call float @dx.op.binary.f32(i32 36, float %8239, float %8246)  ; FMin(a,b)
  %8248 = call float @dx.op.binary.f32(i32 36, float %8247, float %8242)  ; FMin(a,b)
  %8249 = fmul fast float %8245, 2.550000e+02
  %8250 = fadd fast float %8249, 0x3F70101020000000
  %8251 = fptoui float %8250 to i32
  %8252 = fmul fast float %8248, 2.550000e+02
  %8253 = fadd fast float %8252, 0x3F70101020000000
  %8254 = fptoui float %8253 to i32
  %8255 = icmp ult i32 %8251, %8254
  br i1 %8255, label %8256, label %8424

; <label>:8256                                    ; preds = %8225
  %8257 = fcmp fast ogt float %105, 9.843750e-01
  %8258 = fadd fast float %106, -4.000000e+00
  %8259 = select i1 %8257, float -4.000000e+00, float %8258
  %8260 = call float @dx.op.binary.f32(i32 35, float %8259, float 0.000000e+00)  ; FMax(a,b)
  %8261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8262 = extractvalue %dx.types.CBufRet.f32 %8261, 0
  %8263 = fadd fast float %8262, %8260
  %8264 = extractvalue %dx.types.CBufRet.f32 %8261, 2
  %8265 = fmul fast float %8263, %8264
  %8266 = call float @dx.op.unary.f32(i32 23, float %8265)  ; Log(value)
  %8267 = extractvalue %dx.types.CBufRet.f32 %8261, 3
  %8268 = fmul fast float %8267, %8266
  %8269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8270 = extractvalue %dx.types.CBufRet.f32 %8269, 2
  %8271 = fmul fast float %8268, %8270
  %8272 = call float @dx.op.unary.f32(i32 7, float %8271)  ; Saturate(value)
  %8273 = uitofp i32 %8251 to float
  %8274 = uitofp i32 %8254 to float
  %8275 = fadd fast float %8273, 5.000000e-01
  %8276 = fadd fast float %8274, 5.000000e-01
  %8277 = fmul fast float %8270, %8275
  %8278 = fmul fast float %8270, %8276
  %8279 = fadd fast float %8277, 0x3F0FFB4800000000
  %8280 = fadd fast float %8278, 0xBF0FFB4800000000
  %8281 = call float @dx.op.binary.f32(i32 35, float %8272, float %8279)  ; FMax(a,b)
  %8282 = call float @dx.op.binary.f32(i32 36, float %8281, float %8280)  ; FMin(a,b)
  %8283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8284 = extractvalue %dx.types.CBufRet.f32 %8283, 1
  %8285 = extractvalue %dx.types.CBufRet.f32 %8283, 2
  %8286 = extractvalue %dx.types.CBufRet.f32 %8283, 0
  %8287 = fmul fast float %8284, %8282
  %8288 = fadd fast float %8286, %8287
  %8289 = fadd fast float %8286, %8285
  %8290 = fsub fast float %8284, %8285
  %8291 = fadd fast float %8290, %8286
  %8292 = call float @dx.op.binary.f32(i32 35, float %8288, float %8289)  ; FMax(a,b)
  %8293 = call float @dx.op.binary.f32(i32 36, float %8292, float %8291)  ; FMin(a,b)
  %8294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %8231, float %8232, float %8293, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8295 = extractvalue %dx.types.ResRet.f32 %8294, 0
  %8296 = extractvalue %dx.types.ResRet.f32 %8294, 1
  %8297 = extractvalue %dx.types.ResRet.f32 %8294, 2
  %8298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8299 = extractvalue %dx.types.CBufRet.i32 %8298, 0
  %8300 = extractvalue %dx.types.CBufRet.i32 %8298, 1
  %8301 = uitofp i32 %8299 to float
  %8302 = uitofp i32 %8300 to float
  %8303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8304 = extractvalue %dx.types.CBufRet.f32 %8303, 0
  %8305 = extractvalue %dx.types.CBufRet.f32 %8303, 1
  %8306 = fmul fast float %8301, %8231
  %8307 = fmul fast float %8302, %8232
  %8308 = fadd fast float %8306, -5.000000e-01
  %8309 = fadd fast float %8307, -5.000000e-01
  %8310 = call float @dx.op.unary.f32(i32 22, float %8308)  ; Frc(value)
  %8311 = call float @dx.op.unary.f32(i32 22, float %8309)  ; Frc(value)
  %8312 = fmul fast float %8310, %8310
  %8313 = fmul fast float %8312, %8310
  %8314 = fsub fast float 3.000000e+00, %8310
  %8315 = fmul fast float %8312, %8314
  %8316 = fmul fast float %8310, 3.000000e+00
  %8317 = fmul fast float %8313, 3.000000e+00
  %8318 = fmul fast float %8312, 6.000000e+00
  %8319 = fsub fast float %8317, %8318
  %8320 = fadd fast float %8319, 4.000000e+00
  %8321 = fmul fast float %8320, 0x3FC5555560000000
  %8322 = fmul fast float %8313, -3.000000e+00
  %8323 = fadd fast float %8312, %8310
  %8324 = fmul fast float %8323, 3.000000e+00
  %8325 = fadd fast float %8322, 1.000000e+00
  %8326 = fadd fast float %8325, %8324
  %8327 = fmul fast float %8313, 0x3FC5555560000000
  %8328 = fmul fast float %8311, %8311
  %8329 = fmul fast float %8328, %8311
  %8330 = fsub fast float 3.000000e+00, %8311
  %8331 = fmul fast float %8328, %8330
  %8332 = fmul fast float %8311, 3.000000e+00
  %8333 = fmul fast float %8329, 3.000000e+00
  %8334 = fmul fast float %8328, 6.000000e+00
  %8335 = fsub fast float %8333, %8334
  %8336 = fadd fast float %8335, 4.000000e+00
  %8337 = fmul fast float %8336, 0x3FC5555560000000
  %8338 = fmul fast float %8329, -3.000000e+00
  %8339 = fadd fast float %8328, %8311
  %8340 = fmul fast float %8339, 3.000000e+00
  %8341 = fadd fast float %8338, 1.000000e+00
  %8342 = fadd fast float %8341, %8340
  %8343 = fmul fast float %8329, 0x3FC5555560000000
  %8344 = fadd fast float %8310, 1.000000e+00
  %8345 = fsub fast float 1.000000e+00, %8316
  %8346 = fadd fast float %8345, %8315
  %8347 = fadd fast float %8346, %8320
  %8348 = fmul fast float %8347, 0x3FC5555560000000
  %8349 = fdiv fast float %8321, %8348
  %8350 = fsub fast float %8344, %8349
  %8351 = fsub fast float 1.000000e+00, %8310
  %8352 = fadd fast float %8326, %8313
  %8353 = fmul fast float %8352, 0x3FC5555560000000
  %8354 = fdiv fast float %8327, %8353
  %8355 = fadd fast float %8351, %8354
  %8356 = fadd fast float %8311, 1.000000e+00
  %8357 = fsub fast float 1.000000e+00, %8332
  %8358 = fadd fast float %8357, %8331
  %8359 = fadd fast float %8358, %8336
  %8360 = fmul fast float %8359, 0x3FC5555560000000
  %8361 = fdiv fast float %8337, %8360
  %8362 = fsub fast float %8356, %8361
  %8363 = fsub fast float 1.000000e+00, %8311
  %8364 = fadd fast float %8342, %8329
  %8365 = fmul fast float %8364, 0x3FC5555560000000
  %8366 = fdiv fast float %8343, %8365
  %8367 = fadd fast float %8366, %8363
  %8368 = fmul fast float %8350, %8304
  %8369 = fsub fast float %8231, %8368
  %8370 = fmul fast float %8355, %8304
  %8371 = fadd fast float %8370, %8231
  %8372 = fmul fast float %8367, %8305
  %8373 = fadd fast float %8372, %8232
  %8374 = fmul fast float %8362, %8305
  %8375 = fsub fast float %8232, %8374
  %8376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8369, float %8375, float %8293, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8377 = extractvalue %dx.types.ResRet.f32 %8376, 0
  %8378 = extractvalue %dx.types.ResRet.f32 %8376, 1
  %8379 = extractvalue %dx.types.ResRet.f32 %8376, 2
  %8380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8371, float %8375, float %8293, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8381 = extractvalue %dx.types.ResRet.f32 %8380, 0
  %8382 = extractvalue %dx.types.ResRet.f32 %8380, 1
  %8383 = extractvalue %dx.types.ResRet.f32 %8380, 2
  %8384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8369, float %8373, float %8293, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8385 = extractvalue %dx.types.ResRet.f32 %8384, 0
  %8386 = extractvalue %dx.types.ResRet.f32 %8384, 1
  %8387 = extractvalue %dx.types.ResRet.f32 %8384, 2
  %8388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8371, float %8373, float %8293, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8389 = extractvalue %dx.types.ResRet.f32 %8388, 0
  %8390 = extractvalue %dx.types.ResRet.f32 %8388, 1
  %8391 = extractvalue %dx.types.ResRet.f32 %8388, 2
  %8392 = fsub fast float %8385, %8377
  %8393 = fsub fast float %8386, %8378
  %8394 = fsub fast float %8387, %8379
  %8395 = fmul fast float %8392, %8365
  %8396 = fmul fast float %8393, %8365
  %8397 = fmul fast float %8394, %8365
  %8398 = fadd fast float %8395, %8377
  %8399 = fadd fast float %8396, %8378
  %8400 = fadd fast float %8397, %8379
  %8401 = fsub fast float %8389, %8381
  %8402 = fsub fast float %8390, %8382
  %8403 = fsub fast float %8391, %8383
  %8404 = fmul fast float %8401, %8365
  %8405 = fmul fast float %8402, %8365
  %8406 = fmul fast float %8403, %8365
  %8407 = fsub fast float %8381, %8398
  %8408 = fadd fast float %8407, %8404
  %8409 = fsub fast float %8382, %8399
  %8410 = fadd fast float %8409, %8405
  %8411 = fsub fast float %8383, %8400
  %8412 = fadd fast float %8411, %8406
  %8413 = fmul fast float %8408, %8353
  %8414 = fmul fast float %8410, %8353
  %8415 = fmul fast float %8412, %8353
  %8416 = fadd fast float %8413, %8398
  %8417 = fadd fast float %8414, %8399
  %8418 = fadd fast float %8415, %8400
  %8419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8420 = extractvalue %dx.types.CBufRet.f32 %8419, 1
  %8421 = fmul fast float %8416, %8420
  %8422 = fmul fast float %8417, %8420
  %8423 = fmul fast float %8418, %8420
  br label %8424

; <label>:8424                                    ; preds = %8256, %8225
  %8425 = phi float [ %8295, %8256 ], [ 1.000000e+00, %8225 ]
  %8426 = phi float [ %8296, %8256 ], [ 1.000000e+00, %8225 ]
  %8427 = phi float [ %8297, %8256 ], [ 1.000000e+00, %8225 ]
  %8428 = phi float [ %8421, %8256 ], [ 0.000000e+00, %8225 ]
  %8429 = phi float [ %8422, %8256 ], [ 0.000000e+00, %8225 ]
  %8430 = phi float [ %8423, %8256 ], [ 0.000000e+00, %8225 ]
  %8431 = fmul fast float %8428, %8202
  %8432 = fmul fast float %8429, %8202
  %8433 = fmul fast float %8430, %8202
  %8434 = call float @dx.op.dot3.f32(i32 55, float %8425, float %8426, float %8427, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8435 = call float @dx.op.dot3.f32(i32 55, float %8431, float %8432, float %8433, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8436 = select i1 %268, float %8434, float %8425
  %8437 = select i1 %268, float %8434, float %8426
  %8438 = select i1 %268, float 1.000000e+00, float %8427
  %8439 = select i1 %268, float %8435, float %8431
  %8440 = select i1 %268, float 0.000000e+00, float %8432
  %8441 = select i1 %268, float 0.000000e+00, float %8433
  %8442 = fmul fast float %8436, %8215
  %8443 = fmul fast float %8437, %8216
  %8444 = fmul fast float %8438, %8217
  %8445 = fadd fast float %8442, %8439
  %8446 = fadd fast float %8443, %8440
  %8447 = fadd fast float %8441, %8444
  %8448 = fmul fast float %8436, %8188
  %8449 = fmul fast float %8437, %8189
  %8450 = fmul fast float %8438, %8190
  %8451 = fmul fast float %147, %8227
  %8452 = fmul fast float %149, %8228
  %8453 = fsub fast float 1.000000e+00, %8451
  %8454 = fsub fast float 1.000000e+00, %8452
  %8455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8456 = extractvalue %dx.types.CBufRet.f32 %8455, 0
  %8457 = extractvalue %dx.types.CBufRet.f32 %8455, 1
  %8458 = extractvalue %dx.types.CBufRet.f32 %8455, 2
  %8459 = fmul fast float %8453, %8456
  %8460 = fmul fast float %8453, %8457
  %8461 = fmul fast float %8453, %8458
  %8462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8463 = extractvalue %dx.types.CBufRet.f32 %8462, 0
  %8464 = extractvalue %dx.types.CBufRet.f32 %8462, 1
  %8465 = extractvalue %dx.types.CBufRet.f32 %8462, 2
  %8466 = fmul fast float %8454, %8463
  %8467 = fmul fast float %8454, %8464
  %8468 = fmul fast float %8454, %8465
  %8469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8470 = extractvalue %dx.types.CBufRet.f32 %8469, 0
  %8471 = extractvalue %dx.types.CBufRet.f32 %8469, 1
  %8472 = extractvalue %dx.types.CBufRet.f32 %8469, 2
  %8473 = fadd fast float %8466, %8470
  %8474 = fadd fast float %8473, %8459
  %8475 = fadd fast float %8467, %8471
  %8476 = fadd fast float %8475, %8460
  %8477 = fadd fast float %8468, %8472
  %8478 = fadd fast float %8477, %8461
  %8479 = fmul fast float %8474, %231
  %8480 = fmul fast float %8476, %231
  %8481 = fmul fast float %8478, %231
  br label %8482

; <label>:8482                                    ; preds = %8424, %8187
  %8483 = phi float [ %8479, %8424 ], [ %198, %8187 ]
  %8484 = phi float [ %8480, %8424 ], [ %199, %8187 ]
  %8485 = phi float [ %8481, %8424 ], [ %200, %8187 ]
  %8486 = phi float [ %231, %8424 ], [ %106, %8187 ]
  %8487 = phi float [ %8445, %8424 ], [ %8215, %8187 ]
  %8488 = phi float [ %8446, %8424 ], [ %8216, %8187 ]
  %8489 = phi float [ %8447, %8424 ], [ %8217, %8187 ]
  %8490 = phi float [ %8448, %8424 ], [ %8188, %8187 ]
  %8491 = phi float [ %8449, %8424 ], [ %8189, %8187 ]
  %8492 = phi float [ %8450, %8424 ], [ %8190, %8187 ]
  %8493 = phi float [ %8425, %8424 ], [ 1.000000e+00, %8187 ]
  br i1 %8224, label %9648, label %8494

; <label>:8494                                    ; preds = %8482
  %8495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8496 = extractvalue %dx.types.CBufRet.f32 %8495, 0
  %8497 = extractvalue %dx.types.CBufRet.f32 %8495, 1
  %8498 = extractvalue %dx.types.CBufRet.f32 %8495, 2
  %8499 = extractvalue %dx.types.CBufRet.f32 %8495, 3
  %8500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8501 = extractvalue %dx.types.CBufRet.f32 %8500, 0
  %8502 = extractvalue %dx.types.CBufRet.f32 %8500, 1
  %8503 = extractvalue %dx.types.CBufRet.f32 %8500, 2
  %8504 = extractvalue %dx.types.CBufRet.f32 %8500, 3
  %8505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8506 = extractvalue %dx.types.CBufRet.f32 %8505, 0
  %8507 = extractvalue %dx.types.CBufRet.f32 %8505, 1
  %8508 = extractvalue %dx.types.CBufRet.f32 %8505, 2
  %8509 = extractvalue %dx.types.CBufRet.f32 %8505, 3
  %8510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8511 = extractvalue %dx.types.CBufRet.f32 %8510, 0
  %8512 = extractvalue %dx.types.CBufRet.f32 %8510, 1
  %8513 = extractvalue %dx.types.CBufRet.f32 %8510, 2
  %8514 = extractvalue %dx.types.CBufRet.f32 %8510, 3
  %8515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8516 = extractvalue %dx.types.CBufRet.f32 %8515, 3
  %8517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8518 = extractvalue %dx.types.CBufRet.f32 %8517, 3
  %8519 = extractvalue %dx.types.CBufRet.f32 %8517, 0
  %8520 = extractvalue %dx.types.CBufRet.f32 %8517, 1
  %8521 = extractvalue %dx.types.CBufRet.f32 %8517, 2
  %8522 = fcmp fast olt float %8521, -5.000000e-01
  %8523 = call float @dx.op.dot3.f32(i32 55, float %8483, float %8484, float %8485, float %8483, float %8484, float %8485)  ; Dot3(ax,ay,az,bx,by,bz)
  %8524 = call float @dx.op.unary.f32(i32 25, float %8523)  ; Rsqrt(value)
  %8525 = fmul fast float %8524, %8523
  %8526 = fmul fast float %8524, %8483
  %8527 = fmul fast float %8524, %8484
  %8528 = fmul fast float %8524, %8485
  %8529 = fadd fast float %8525, %8499
  %8530 = call float @dx.op.dot3.f32(i32 55, float %8526, float %8527, float %8528, float %8496, float %8497, float %8498)  ; Dot3(ax,ay,az,bx,by,bz)
  %8531 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8532 = extractvalue %dx.types.CBufRet.i32 %8531, 1
  %8533 = and i32 %8532, 1
  %8534 = icmp ne i32 %8533, 0
  %8535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8536 = extractvalue %dx.types.CBufRet.f32 %8535, 2
  %8537 = fcmp fast ogt float %8536, 0.000000e+00
  %8538 = and i1 %8534, %8537
  br i1 %8538, label %8539, label %8945, !dx.controlflow.hints !128

; <label>:8539                                    ; preds = %8494
  %8540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8541 = extractvalue %dx.types.CBufRet.f32 %8540, 3
  %8542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8543 = extractvalue %dx.types.CBufRet.f32 %8542, 2
  %8544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8545 = extractvalue %dx.types.CBufRet.f32 %8544, 2
  %8546 = fsub fast float %8543, %8545
  %8547 = and i32 %8532, 2
  %8548 = extractvalue %dx.types.CBufRet.i32 %8531, 0
  %8549 = call i32 @dx.op.binary.i32(i32 40, i32 %8548, i32 3)  ; UMin(a,b)
  %8550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8551 = extractvalue %dx.types.CBufRet.f32 %8550, 0
  %8552 = extractvalue %dx.types.CBufRet.f32 %8550, 1
  %8553 = extractvalue %dx.types.CBufRet.f32 %8544, 0
  %8554 = extractvalue %dx.types.CBufRet.f32 %8544, 1
  %8555 = fsub fast float %8551, %8553
  %8556 = fsub fast float %8552, %8554
  %8557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8558 = extractvalue %dx.types.CBufRet.f32 %8557, 0
  %8559 = fcmp fast ogt float %8558, 0.000000e+00
  %8560 = fsub fast float -0.000000e+00, %8555
  %8561 = fsub fast float -0.000000e+00, %8556
  %8562 = call float @dx.op.dot2.f32(i32 54, float %8526, float %8527, float %8526, float %8527)  ; Dot2(ax,ay,bx,by)
  %8563 = call float @dx.op.dot2.f32(i32 54, float %8526, float %8527, float %8560, float %8561)  ; Dot2(ax,ay,bx,by)
  %8564 = fmul fast float %8563, 2.000000e+00
  %8565 = call float @dx.op.dot2.f32(i32 54, float %8560, float %8561, float %8560, float %8561)  ; Dot2(ax,ay,bx,by)
  %8566 = fmul fast float %8558, %8558
  %8567 = fsub fast float %8565, %8566
  %8568 = fmul fast float %8564, %8564
  %8569 = fmul fast float %8562, 4.000000e+00
  %8570 = fmul fast float %8569, %8567
  %8571 = fsub fast float %8568, %8570
  %8572 = fcmp fast ogt float %8571, 0.000000e+00
  br i1 %8572, label %8573, label %8588

; <label>:8573                                    ; preds = %8539
  %8574 = fcmp fast ogt float %8564, 0.000000e+00
  %8575 = call float @dx.op.unary.f32(i32 24, float %8571)  ; Sqrt(value)
  %8576 = fsub fast float -0.000000e+00, %8575
  %8577 = select i1 %8574, float %8575, float %8576
  %8578 = fadd fast float %8577, %8564
  %8579 = fmul float %8578, -5.000000e-01
  %8580 = fdiv fast float %8579, %8562
  %8581 = call float @dx.op.binary.f32(i32 35, float %8580, float 0.000000e+00)  ; FMax(a,b)
  %8582 = call float @dx.op.binary.f32(i32 36, float %8525, float %8581)  ; FMin(a,b)
  %8583 = fdiv fast float %8567, %8579
  %8584 = call float @dx.op.binary.f32(i32 35, float %8583, float 0.000000e+00)  ; FMax(a,b)
  %8585 = call float @dx.op.binary.f32(i32 36, float %8525, float %8584)  ; FMin(a,b)
  %8586 = call float @dx.op.binary.f32(i32 36, float %8582, float %8585)  ; FMin(a,b)
  %8587 = call float @dx.op.binary.f32(i32 35, float %8582, float %8585)  ; FMax(a,b)
  br label %8588

; <label>:8588                                    ; preds = %8573, %8539
  %8589 = phi float [ %8587, %8573 ], [ -1.000000e+00, %8539 ]
  %8590 = phi float [ %8586, %8573 ], [ -1.000000e+00, %8539 ]
  %8591 = phi i1 [ true, %8573 ], [ false, %8539 ]
  %8592 = and i1 %8559, %8591
  br i1 %8592, label %8593, label %8595

; <label>:8593                                    ; preds = %8588
  %8594 = fcmp fast oeq float %8590, %8589
  br i1 %8594, label %8898, label %8596

; <label>:8595                                    ; preds = %8588
  br i1 %8559, label %8898, label %8596

; <label>:8596                                    ; preds = %8595, %8593
  %8597 = phi float [ %8525, %8595 ], [ %8589, %8593 ]
  %8598 = phi float [ 0.000000e+00, %8595 ], [ %8590, %8593 ]
  %8599 = icmp ne i32 %8547, 0
  %8600 = fmul fast float %8597, %8528
  %8601 = fadd fast float %8600, %8541
  %8602 = fmul fast float %8601, %8597
  %8603 = select i1 %8599, float 0.000000e+00, float %8602
  %8604 = fcmp fast oeq float %8528, 0.000000e+00
  %8605 = fdiv fast float %8546, %8528
  %8606 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8605)  ; FMax(a,b)
  %8607 = select i1 %8604, float %8597, float %8606
  %8608 = call float @dx.op.binary.f32(i32 36, float %8597, float %8607)  ; FMin(a,b)
  %8609 = fcmp fast ogt float %8528, 0.000000e+00
  %8610 = fcmp fast olt float %8546, 0.000000e+00
  br i1 %8609, label %8611, label %8668

; <label>:8611                                    ; preds = %8596
  %8612 = icmp eq i32 %8547, 0
  br i1 %8610, label %8613, label %8657

; <label>:8613                                    ; preds = %8611
  %8614 = select i1 %8612, float %8597, float 0.000000e+00
  %8615 = fsub fast float -0.000000e+00, %8614
  %8616 = call float @dx.op.unary.f32(i32 6, float %8615)  ; FAbs(value)
  %8617 = fmul fast float %8614, %8528
  %8618 = fadd fast float %8617, %8541
  %8619 = fmul fast float %8616, %8618
  %8620 = fsub fast float %8603, %8619
  %8621 = fsub fast float %8597, %8616
  %8622 = select i1 %8612, float %8621, float 0.000000e+00
  %8623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8624 = extractvalue %dx.types.CBufRet.f32 %8623, 0
  %8625 = extractvalue %dx.types.CBufRet.f32 %8623, 1
  %8626 = extractvalue %dx.types.CBufRet.f32 %8623, 2
  %8627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8628 = extractvalue %dx.types.CBufRet.f32 %8627, 0
  %8629 = extractvalue %dx.types.CBufRet.f32 %8627, 1
  %8630 = extractvalue %dx.types.CBufRet.f32 %8627, 2
  %8631 = extractvalue %dx.types.CBufRet.f32 %8627, 3
  %8632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8633 = extractvalue %dx.types.CBufRet.f32 %8632, 3
  %8634 = call float @dx.op.binary.f32(i32 36, float %8620, float %8633)  ; FMin(a,b)
  %8635 = fmul fast float %8631, %8622
  %8636 = call float @dx.op.unary.f32(i32 7, float %8635)  ; Saturate(value)
  %8637 = fsub fast float %8628, %8624
  %8638 = fsub fast float %8629, %8625
  %8639 = fsub fast float %8630, %8626
  %8640 = fmul fast float %8636, %8637
  %8641 = fmul fast float %8636, %8638
  %8642 = fmul fast float %8636, %8639
  %8643 = fadd fast float %8640, %8624
  %8644 = fadd fast float %8641, %8625
  %8645 = fadd fast float %8642, %8626
  %8646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8647 = extractvalue %dx.types.CBufRet.f32 %8646, 0
  %8648 = extractvalue %dx.types.CBufRet.f32 %8646, 1
  %8649 = fadd fast float %8648, %8647
  %8650 = call float @dx.op.unary.f32(i32 7, float %8649)  ; Saturate(value)
  %8651 = extractvalue %dx.types.CBufRet.f32 %8646, 2
  %8652 = extractvalue %dx.types.CBufRet.f32 %8646, 3
  %8653 = fadd fast float %8652, %8651
  %8654 = call float @dx.op.unary.f32(i32 7, float %8653)  ; Saturate(value)
  %8655 = fmul fast float %8650, %8634
  %8656 = fmul fast float %8655, %8654
  br label %8898

; <label>:8657                                    ; preds = %8611
  br i1 %8612, label %8658, label %8679

; <label>:8658                                    ; preds = %8657
  %8659 = call float @dx.op.binary.f32(i32 36, float %8608, float %8598)  ; FMin(a,b)
  %8660 = fsub fast float %8608, %8659
  %8661 = fsub fast float %8660, %8597
  %8662 = call float @dx.op.unary.f32(i32 6, float %8661)  ; FAbs(value)
  %8663 = fadd fast float %8660, %8597
  %8664 = fmul fast float %8663, %8528
  %8665 = fadd fast float %8664, %8541
  %8666 = fmul fast float %8665, %8662
  %8667 = fsub fast float %8603, %8666
  br label %8679

; <label>:8668                                    ; preds = %8596
  br i1 %8610, label %8669, label %8679

; <label>:8669                                    ; preds = %8668
  %8670 = call float @dx.op.binary.f32(i32 35, float %8598, float %8608)  ; FMax(a,b)
  %8671 = icmp eq i32 %8547, 0
  %8672 = select i1 %8671, float %8608, float 0.000000e+00
  %8673 = fsub fast float -0.000000e+00, %8672
  %8674 = call float @dx.op.unary.f32(i32 6, float %8673)  ; FAbs(value)
  %8675 = fmul fast float %8672, %8528
  %8676 = fadd fast float %8675, %8541
  %8677 = fmul fast float %8674, %8676
  %8678 = fsub fast float %8603, %8677
  br label %8679

; <label>:8679                                    ; preds = %8669, %8668, %8658, %8657
  %8680 = phi float [ %8598, %8657 ], [ %8598, %8658 ], [ %8670, %8669 ], [ %8598, %8668 ]
  %8681 = phi float [ 0.000000e+00, %8657 ], [ %8662, %8658 ], [ %8674, %8669 ], [ 0.000000e+00, %8668 ]
  %8682 = phi float [ %8603, %8657 ], [ %8667, %8658 ], [ %8678, %8669 ], [ %8603, %8668 ]
  %8683 = phi float [ %8608, %8657 ], [ %8608, %8658 ], [ %8597, %8669 ], [ %8597, %8668 ]
  %8684 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 0
  store float -1.000000e+00, float* %8684, align 4, !tbaa !129, !noalias !131
  %8685 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 1
  store float -1.000000e+00, float* %8685, align 4, !tbaa !129, !noalias !131
  %8686 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 2
  store float -1.000000e+00, float* %8686, align 4, !tbaa !129, !noalias !131
  %8687 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 0
  store float -1.000000e+00, float* %8687, align 4, !tbaa !129, !noalias !131
  %8688 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 1
  store float -1.000000e+00, float* %8688, align 4, !tbaa !129, !noalias !131
  %8689 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 2
  store float -1.000000e+00, float* %8689, align 4, !tbaa !129, !noalias !131
  %8690 = icmp sgt i32 %8549, 0
  br i1 %8690, label %8691, label %8752

; <label>:8691                                    ; preds = %8679
  br label %8692

; <label>:8692                                    ; preds = %8741, %8691
  %8693 = phi i32 [ %8742, %8741 ], [ 0, %8691 ]
  %8694 = phi i32 [ %8743, %8741 ], [ 0, %8691 ]
  %8695 = add nuw i32 %8694, 171
  %8696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %8695)  ; CBufferLoadLegacy(handle,regIndex)
  %8697 = extractvalue %dx.types.CBufRet.f32 %8696, 0
  %8698 = extractvalue %dx.types.CBufRet.f32 %8696, 1
  %8699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8700 = extractvalue %dx.types.CBufRet.f32 %8699, 0
  %8701 = extractvalue %dx.types.CBufRet.f32 %8699, 1
  %8702 = fsub fast float %8697, %8700
  %8703 = fsub fast float %8698, %8701
  %8704 = extractvalue %dx.types.CBufRet.f32 %8696, 2
  %8705 = fsub fast float -0.000000e+00, %8702
  %8706 = fsub fast float -0.000000e+00, %8703
  %8707 = call float @dx.op.dot2.f32(i32 54, float %8526, float %8527, float %8705, float %8706)  ; Dot2(ax,ay,bx,by)
  %8708 = fmul fast float %8707, 2.000000e+00
  %8709 = call float @dx.op.dot2.f32(i32 54, float %8705, float %8706, float %8705, float %8706)  ; Dot2(ax,ay,bx,by)
  %8710 = fmul fast float %8704, %8704
  %8711 = fsub fast float %8709, %8710
  %8712 = fmul fast float %8708, %8708
  %8713 = fmul fast float %8569, %8711
  %8714 = fsub fast float %8712, %8713
  %8715 = fcmp fast ogt float %8714, 0.000000e+00
  br i1 %8715, label %8716, label %8731

; <label>:8716                                    ; preds = %8692
  %8717 = fcmp fast ogt float %8708, 0.000000e+00
  %8718 = call float @dx.op.unary.f32(i32 24, float %8714)  ; Sqrt(value)
  %8719 = fsub fast float -0.000000e+00, %8718
  %8720 = select i1 %8717, float %8718, float %8719
  %8721 = fadd fast float %8720, %8708
  %8722 = fmul float %8721, -5.000000e-01
  %8723 = fdiv fast float %8722, %8562
  %8724 = call float @dx.op.binary.f32(i32 35, float %8723, float 0.000000e+00)  ; FMax(a,b)
  %8725 = call float @dx.op.binary.f32(i32 36, float %8597, float %8724)  ; FMin(a,b)
  %8726 = fdiv fast float %8711, %8722
  %8727 = call float @dx.op.binary.f32(i32 35, float %8726, float 0.000000e+00)  ; FMax(a,b)
  %8728 = call float @dx.op.binary.f32(i32 36, float %8597, float %8727)  ; FMin(a,b)
  %8729 = call float @dx.op.binary.f32(i32 36, float %8725, float %8728)  ; FMin(a,b)
  %8730 = call float @dx.op.binary.f32(i32 35, float %8725, float %8728)  ; FMax(a,b)
  br label %8731

; <label>:8731                                    ; preds = %8716, %8692
  %8732 = phi float [ %8730, %8716 ], [ -1.000000e+00, %8692 ]
  %8733 = phi float [ %8729, %8716 ], [ -1.000000e+00, %8692 ]
  %8734 = phi i1 [ true, %8716 ], [ false, %8692 ]
  br i1 %8734, label %8735, label %8741

; <label>:8735                                    ; preds = %8731
  %8736 = call float @dx.op.binary.f32(i32 35, float %8680, float %8733)  ; FMax(a,b)
  %8737 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8694
  store float %8736, float* %8737, align 4, !tbaa !129, !noalias !131
  %8738 = call float @dx.op.binary.f32(i32 35, float %8680, float %8732)  ; FMax(a,b)
  %8739 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8694
  store float %8738, float* %8739, align 4, !tbaa !129, !noalias !131
  %8740 = add nsw i32 %8693, 1
  br label %8741

; <label>:8741                                    ; preds = %8735, %8731
  %8742 = phi i32 [ %8740, %8735 ], [ %8693, %8731 ]
  %8743 = add nuw nsw i32 %8694, 1
  %8744 = icmp eq i32 %8743, %8549
  br i1 %8744, label %8745, label %8692

; <label>:8745                                    ; preds = %8741
  %8746 = load float, float* %8686, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %8747 = load float, float* %8685, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  %8748 = load float, float* %8684, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  %8749 = load float, float* %8689, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %8750 = load float, float* %8688, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  %8751 = load float, float* %8687, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  br label %8752

; <label>:8752                                    ; preds = %8745, %8679
  %8753 = phi float [ -1.000000e+00, %8679 ], [ %8751, %8745 ]
  %8754 = phi float [ -1.000000e+00, %8679 ], [ %8750, %8745 ]
  %8755 = phi float [ -1.000000e+00, %8679 ], [ %8749, %8745 ]
  %8756 = phi float [ -1.000000e+00, %8679 ], [ %8748, %8745 ]
  %8757 = phi float [ -1.000000e+00, %8679 ], [ %8747, %8745 ]
  %8758 = phi float [ -1.000000e+00, %8679 ], [ %8746, %8745 ]
  %8759 = phi i32 [ 0, %8679 ], [ %8742, %8745 ]
  %8760 = call float @dx.op.binary.f32(i32 36, float %8757, float %8758)  ; FMin(a,b)
  %8761 = call float @dx.op.binary.f32(i32 36, float %8756, float %8760)  ; FMin(a,b)
  %8762 = call float @dx.op.binary.f32(i32 35, float %8756, float %8757)  ; FMax(a,b)
  %8763 = call float @dx.op.binary.f32(i32 36, float %8762, float %8758)  ; FMin(a,b)
  %8764 = call float @dx.op.binary.f32(i32 36, float %8756, float %8757)  ; FMin(a,b)
  %8765 = call float @dx.op.binary.f32(i32 35, float %8764, float %8763)  ; FMax(a,b)
  %8766 = call float @dx.op.binary.f32(i32 35, float %8757, float %8758)  ; FMax(a,b)
  %8767 = call float @dx.op.binary.f32(i32 35, float %8756, float %8766)  ; FMax(a,b)
  store float %8761, float* %8684, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  store float %8765, float* %8685, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  store float %8767, float* %8686, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %8768 = call float @dx.op.binary.f32(i32 36, float %8754, float %8755)  ; FMin(a,b)
  %8769 = call float @dx.op.binary.f32(i32 36, float %8753, float %8768)  ; FMin(a,b)
  %8770 = call float @dx.op.binary.f32(i32 35, float %8753, float %8754)  ; FMax(a,b)
  %8771 = call float @dx.op.binary.f32(i32 36, float %8770, float %8755)  ; FMin(a,b)
  %8772 = call float @dx.op.binary.f32(i32 36, float %8753, float %8754)  ; FMin(a,b)
  %8773 = call float @dx.op.binary.f32(i32 35, float %8772, float %8771)  ; FMax(a,b)
  %8774 = call float @dx.op.binary.f32(i32 35, float %8754, float %8755)  ; FMax(a,b)
  %8775 = call float @dx.op.binary.f32(i32 35, float %8753, float %8774)  ; FMax(a,b)
  store float %8769, float* %8687, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  store float %8773, float* %8688, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  store float %8775, float* %8689, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %8776 = sub nsw i32 3, %8759
  %8777 = icmp sgt i32 %8776, 2
  br i1 %8777, label %8778, label %8816

; <label>:8778                                    ; preds = %8752
  %8779 = icmp eq i32 %8547, 0
  %8780 = fsub fast float %8597, %8681
  %8781 = select i1 %8779, float %8780, float %8681
  %8782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8783 = extractvalue %dx.types.CBufRet.f32 %8782, 0
  %8784 = extractvalue %dx.types.CBufRet.f32 %8782, 1
  %8785 = extractvalue %dx.types.CBufRet.f32 %8782, 2
  %8786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8787 = extractvalue %dx.types.CBufRet.f32 %8786, 0
  %8788 = extractvalue %dx.types.CBufRet.f32 %8786, 1
  %8789 = extractvalue %dx.types.CBufRet.f32 %8786, 2
  %8790 = extractvalue %dx.types.CBufRet.f32 %8786, 3
  %8791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8792 = extractvalue %dx.types.CBufRet.f32 %8791, 3
  %8793 = call float @dx.op.binary.f32(i32 36, float %8682, float %8792)  ; FMin(a,b)
  %8794 = fmul fast float %8790, %8781
  %8795 = call float @dx.op.unary.f32(i32 7, float %8794)  ; Saturate(value)
  %8796 = fsub fast float %8787, %8783
  %8797 = fsub fast float %8788, %8784
  %8798 = fsub fast float %8789, %8785
  %8799 = fmul fast float %8795, %8796
  %8800 = fmul fast float %8795, %8797
  %8801 = fmul fast float %8795, %8798
  %8802 = fadd fast float %8799, %8783
  %8803 = fadd fast float %8800, %8784
  %8804 = fadd fast float %8801, %8785
  %8805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8806 = extractvalue %dx.types.CBufRet.f32 %8805, 0
  %8807 = extractvalue %dx.types.CBufRet.f32 %8805, 1
  %8808 = fadd fast float %8807, %8806
  %8809 = call float @dx.op.unary.f32(i32 7, float %8808)  ; Saturate(value)
  %8810 = extractvalue %dx.types.CBufRet.f32 %8805, 2
  %8811 = extractvalue %dx.types.CBufRet.f32 %8805, 3
  %8812 = fadd fast float %8811, %8810
  %8813 = call float @dx.op.unary.f32(i32 7, float %8812)  ; Saturate(value)
  %8814 = fmul fast float %8809, %8793
  %8815 = fmul fast float %8814, %8813
  br label %8898

; <label>:8816                                    ; preds = %8752
  %8817 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8776
  %8818 = load float, float* %8817, align 4, !tbaa !129, !noalias !131
  %8819 = fcmp fast olt float %8818, %8683
  %8820 = icmp sgt i32 %8759, 0
  %8821 = and i1 %8820, %8819
  br i1 %8821, label %8822, label %8859

; <label>:8822                                    ; preds = %8816
  br label %8823

; <label>:8823                                    ; preds = %8852, %8822
  %8824 = phi float [ %8853, %8852 ], [ %8681, %8822 ]
  %8825 = phi float [ %8854, %8852 ], [ %8682, %8822 ]
  %8826 = phi float [ %8834, %8852 ], [ %8818, %8822 ]
  %8827 = phi i32 [ %8831, %8852 ], [ %8776, %8822 ]
  %8828 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8827
  %8829 = load float, float* %8828, align 4, !tbaa !129, !noalias !131
  %8830 = icmp slt i32 %8827, 2
  %8831 = add nsw i32 %8827, 1
  %8832 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8831
  %8833 = load float, float* %8832, align 4, !tbaa !129, !noalias !131
  %8834 = select i1 %8830, float %8833, float %8597
  %8835 = call float @dx.op.binary.f32(i32 36, float %8834, float %8829)  ; FMin(a,b)
  %8836 = call float @dx.op.binary.f32(i32 36, float %8683, float %8835)  ; FMin(a,b)
  %8837 = icmp eq i32 %8547, 0
  %8838 = fadd fast float %8836, %8826
  %8839 = fmul fast float %8838, %8528
  %8840 = fadd fast float %8839, %8541
  br i1 %8837, label %8846, label %8841

; <label>:8841                                    ; preds = %8823
  %8842 = fsub fast float %8836, %8826
  %8843 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8842)  ; FMax(a,b)
  %8844 = fmul fast float %8843, %8840
  %8845 = fadd fast float %8844, %8825
  br label %8852

; <label>:8846                                    ; preds = %8823
  %8847 = fsub fast float %8826, %8836
  %8848 = call float @dx.op.unary.f32(i32 6, float %8847)  ; FAbs(value)
  %8849 = fadd fast float %8848, %8824
  %8850 = fmul fast float %8848, %8840
  %8851 = fsub fast float %8825, %8850
  br label %8852

; <label>:8852                                    ; preds = %8846, %8841
  %8853 = phi float [ %8843, %8841 ], [ %8849, %8846 ]
  %8854 = phi float [ %8845, %8841 ], [ %8851, %8846 ]
  %8855 = fcmp fast olt float %8834, %8683
  %8856 = icmp slt i32 %8831, 3
  %8857 = and i1 %8856, %8855
  br i1 %8857, label %8823, label %8858

; <label>:8858                                    ; preds = %8852
  br label %8859

; <label>:8859                                    ; preds = %8858, %8816
  %8860 = phi float [ %8681, %8816 ], [ %8853, %8858 ]
  %8861 = phi float [ %8682, %8816 ], [ %8854, %8858 ]
  %8862 = fsub fast float %8597, %8860
  %8863 = select i1 %8599, float %8860, float %8862
  %8864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8865 = extractvalue %dx.types.CBufRet.f32 %8864, 0
  %8866 = extractvalue %dx.types.CBufRet.f32 %8864, 1
  %8867 = extractvalue %dx.types.CBufRet.f32 %8864, 2
  %8868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8869 = extractvalue %dx.types.CBufRet.f32 %8868, 0
  %8870 = extractvalue %dx.types.CBufRet.f32 %8868, 1
  %8871 = extractvalue %dx.types.CBufRet.f32 %8868, 2
  %8872 = extractvalue %dx.types.CBufRet.f32 %8868, 3
  %8873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8874 = extractvalue %dx.types.CBufRet.f32 %8873, 3
  %8875 = call float @dx.op.binary.f32(i32 36, float %8861, float %8874)  ; FMin(a,b)
  %8876 = fmul fast float %8872, %8863
  %8877 = call float @dx.op.unary.f32(i32 7, float %8876)  ; Saturate(value)
  %8878 = fsub fast float %8869, %8865
  %8879 = fsub fast float %8870, %8866
  %8880 = fsub fast float %8871, %8867
  %8881 = fmul fast float %8877, %8878
  %8882 = fmul fast float %8877, %8879
  %8883 = fmul fast float %8877, %8880
  %8884 = fadd fast float %8881, %8865
  %8885 = fadd fast float %8882, %8866
  %8886 = fadd fast float %8883, %8867
  %8887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8888 = extractvalue %dx.types.CBufRet.f32 %8887, 0
  %8889 = extractvalue %dx.types.CBufRet.f32 %8887, 1
  %8890 = fadd fast float %8889, %8888
  %8891 = call float @dx.op.unary.f32(i32 7, float %8890)  ; Saturate(value)
  %8892 = extractvalue %dx.types.CBufRet.f32 %8887, 2
  %8893 = extractvalue %dx.types.CBufRet.f32 %8887, 3
  %8894 = fadd fast float %8893, %8892
  %8895 = call float @dx.op.unary.f32(i32 7, float %8894)  ; Saturate(value)
  %8896 = fmul fast float %8891, %8875
  %8897 = fmul fast float %8896, %8895
  br label %8898

; <label>:8898                                    ; preds = %8859, %8778, %8613, %8595, %8593
  %8899 = phi float [ %8622, %8613 ], [ %8781, %8778 ], [ %8863, %8859 ], [ 0.000000e+00, %8593 ], [ 0.000000e+00, %8595 ]
  %8900 = phi float [ %8656, %8613 ], [ %8815, %8778 ], [ %8897, %8859 ], [ 0.000000e+00, %8593 ], [ 0.000000e+00, %8595 ]
  %8901 = phi float [ %8643, %8613 ], [ %8802, %8778 ], [ %8884, %8859 ], [ 0.000000e+00, %8593 ], [ 0.000000e+00, %8595 ]
  %8902 = phi float [ %8644, %8613 ], [ %8803, %8778 ], [ %8885, %8859 ], [ 0.000000e+00, %8593 ], [ 0.000000e+00, %8595 ]
  %8903 = phi float [ %8645, %8613 ], [ %8804, %8778 ], [ %8886, %8859 ], [ 0.000000e+00, %8593 ], [ 0.000000e+00, %8595 ]
  %8904 = fmul fast float %8536, %8900
  %8905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8906 = extractvalue %dx.types.CBufRet.f32 %8905, 2
  %8907 = fsub fast float %8543, %8906
  %8908 = fcmp fast olt float %8904, -2.000000e+01
  %8909 = call float @dx.op.unary.f32(i32 21, float %8904)  ; Exp(value)
  %8910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8911 = extractvalue %dx.types.CBufRet.f32 %8910, 2
  %8912 = extractvalue %dx.types.CBufRet.f32 %8910, 3
  %8913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8914 = extractvalue %dx.types.CBufRet.f32 %8913, 2
  %8915 = fmul fast float %8912, %8907
  %8916 = call float @dx.op.unary.f32(i32 7, float %8915)  ; Saturate(value)
  %8917 = fsub fast float 1.000000e+00, %8916
  %8918 = fmul fast float %8528, 5.000000e-01
  %8919 = fadd fast float %8918, 5.000000e-01
  %8920 = call float @dx.op.unary.f32(i32 7, float %8919)  ; Saturate(value)
  %8921 = fsub fast float 1.000000e+00, %8920
  %8922 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8917)  ; FMax(a,b)
  %8923 = fdiv fast float %8921, %8922
  %8924 = fsub fast float %8907, %8485
  %8925 = call float @dx.op.unary.f32(i32 6, float %8924)  ; FAbs(value)
  %8926 = fmul fast float %8925, %8911
  %8927 = call float @dx.op.unary.f32(i32 7, float %8923)  ; Saturate(value)
  %8928 = fsub fast float 1.000000e+00, %8926
  %8929 = fmul fast float %8928, %8927
  %8930 = fadd fast float %8929, %8926
  %8931 = fmul fast float %8914, %8907
  %8932 = call float @dx.op.unary.f32(i32 7, float %8931)  ; Saturate(value)
  %8933 = fsub fast float 1.000000e+00, %8930
  %8934 = fmul fast float %8933, %8932
  %8935 = fadd fast float %8934, %8930
  %8936 = call float @dx.op.unary.f32(i32 7, float %8935)  ; Saturate(value)
  %8937 = fadd fast float %8909, -1.000000e+00
  %8938 = select i1 %8908, float -1.000000e+00, float %8937
  %8939 = fmul fast float %8936, %8938
  %8940 = fadd fast float %8939, 1.000000e+00
  %8941 = fsub fast float -0.000000e+00, %8939
  %8942 = fmul fast float %8901, %8941
  %8943 = fmul fast float %8902, %8941
  %8944 = fmul fast float %8903, %8941
  br label %8945

; <label>:8945                                    ; preds = %8898, %8494
  %8946 = phi float [ %8899, %8898 ], [ 0.000000e+00, %8494 ]
  %8947 = phi float [ %8940, %8898 ], [ 1.000000e+00, %8494 ]
  %8948 = phi float [ %8942, %8898 ], [ 0.000000e+00, %8494 ]
  %8949 = phi float [ %8943, %8898 ], [ 0.000000e+00, %8494 ]
  %8950 = phi float [ %8944, %8898 ], [ 0.000000e+00, %8494 ]
  %8951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8952 = extractvalue %dx.types.CBufRet.f32 %8951, 1
  %8953 = fsub fast float 1.000000e+00, %8947
  %8954 = fmul fast float %8953, %8529
  %8955 = fmul fast float %8954, %8952
  %8956 = fsub fast float %8529, %8955
  br i1 %8522, label %8957, label %8986, !dx.controlflow.hints !167

; <label>:8957                                    ; preds = %8945
  %8958 = fmul fast float %8530, %8519
  %8959 = fadd fast float %8958, %8520
  %8960 = call float @dx.op.unary.f32(i32 7, float %8959)  ; Saturate(value)
  %8961 = fmul fast float %8501, %8956
  %8962 = fsub fast float -0.000000e+00, %8961
  %8963 = fmul fast float %8502, %8956
  %8964 = fsub fast float -0.000000e+00, %8963
  %8965 = call float @dx.op.unary.f32(i32 21, float %8962)  ; Exp(value)
  %8966 = call float @dx.op.unary.f32(i32 21, float %8964)  ; Exp(value)
  %8967 = call float @dx.op.binary.f32(i32 35, float %8509, float %8965)  ; FMax(a,b)
  %8968 = call float @dx.op.binary.f32(i32 35, float %8509, float %8966)  ; FMax(a,b)
  %8969 = fsub fast float %8968, %8967
  %8970 = fmul fast float %8969, %8960
  %8971 = fadd fast float %8970, %8967
  %8972 = call float @dx.op.unary.f32(i32 7, float %8971)  ; Saturate(value)
  %8973 = fsub fast float %8506, %8511
  %8974 = fsub fast float %8507, %8512
  %8975 = fsub fast float %8508, %8513
  %8976 = fmul fast float %8960, %8973
  %8977 = fmul fast float %8960, %8974
  %8978 = fmul fast float %8960, %8975
  %8979 = fadd fast float %8976, %8511
  %8980 = fadd fast float %8977, %8512
  %8981 = fadd fast float %8978, %8513
  %8982 = fsub fast float 1.000000e+00, %8972
  %8983 = fmul fast float %8982, %8979
  %8984 = fmul fast float %8982, %8980
  %8985 = fmul fast float %8982, %8981
  br label %9045

; <label>:8986                                    ; preds = %8945
  %8987 = fmul fast float %8956, %8518
  %8988 = call float @dx.op.unary.f32(i32 7, float %8987)  ; Saturate(value)
  %8989 = fsub fast float 2.000000e+00, %8988
  %8990 = fmul fast float %8988, 9.921875e-01
  %8991 = fmul fast float %8990, %8989
  %8992 = fadd fast float %8991, 3.906250e-03
  %8993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8992, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8994 = extractvalue %dx.types.ResRet.f32 %8993, 0
  %8995 = fsub fast float %8988, %8994
  %8996 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8995)  ; FMax(a,b)
  %8997 = fmul fast float %8504, %8485
  %8998 = call float @dx.op.unary.f32(i32 6, float %8997)  ; FAbs(value)
  %8999 = fcmp fast ogt float %8998, 0x3EB0C6F7A0000000
  br i1 %8999, label %9000, label %9006, !dx.controlflow.hints !168

; <label>:9000                                    ; preds = %8986
  %9001 = fmul fast float %8997, 0xBFF7154760000000
  %9002 = call float @dx.op.unary.f32(i32 21, float %9001)  ; Exp(value)
  %9003 = fsub fast float 1.000000e+00, %9002
  %9004 = fdiv fast float %9003, %8997
  %9005 = fmul fast float %9004, %8514
  br label %9006

; <label>:9006                                    ; preds = %9000, %8986
  %9007 = phi float [ %9005, %9000 ], [ %8514, %8986 ]
  %9008 = fadd fast float %9007, %8516
  %9009 = fmul fast float %9008, %8996
  %9010 = fmul fast float %8501, %9009
  %9011 = fsub fast float -0.000000e+00, %9010
  %9012 = fmul fast float %8502, %9009
  %9013 = fsub fast float -0.000000e+00, %9012
  %9014 = fmul fast float %8503, %9009
  %9015 = fsub fast float -0.000000e+00, %9014
  %9016 = call float @dx.op.unary.f32(i32 21, float %9011)  ; Exp(value)
  %9017 = call float @dx.op.unary.f32(i32 21, float %9013)  ; Exp(value)
  %9018 = call float @dx.op.unary.f32(i32 21, float %9015)  ; Exp(value)
  %9019 = fmul fast float %8530, %8530
  %9020 = fadd fast float %9019, 1.000000e+00
  %9021 = fmul fast float %9020, 0x3FAE8EC8A0000000
  %9022 = fmul fast float %9021, %8511
  %9023 = fmul fast float %9021, %8512
  %9024 = fmul fast float %9021, %8513
  %9025 = fmul fast float %8530, %8509
  %9026 = fsub fast float 1.000000e+00, %9025
  %9027 = fmul fast float %8509, %8509
  %9028 = fsub fast float 1.000000e+00, %9027
  %9029 = fmul fast float %9028, 0x3FB45F3060000000
  %9030 = fmul fast float %9026, %9026
  %9031 = fdiv fast float 1.000000e+00, %9030
  %9032 = fmul fast float %9029, %9031
  %9033 = fmul fast float %9032, %8506
  %9034 = fmul fast float %9032, %8507
  %9035 = fmul fast float %9032, %8508
  %9036 = fadd fast float %9033, %9022
  %9037 = fadd fast float %9034, %9023
  %9038 = fadd fast float %9035, %9024
  %9039 = fsub fast float 1.000000e+00, %9016
  %9040 = fsub fast float 1.000000e+00, %9017
  %9041 = fsub fast float 1.000000e+00, %9018
  %9042 = fmul fast float %9036, %9039
  %9043 = fmul fast float %9037, %9040
  %9044 = fmul fast float %9038, %9041
  br label %9045

; <label>:9045                                    ; preds = %9006, %8957
  %9046 = phi float [ %8983, %8957 ], [ %9042, %9006 ]
  %9047 = phi float [ %8984, %8957 ], [ %9043, %9006 ]
  %9048 = phi float [ %8985, %8957 ], [ %9044, %9006 ]
  %9049 = phi float [ %8972, %8957 ], [ %9016, %9006 ]
  %9050 = phi float [ %8972, %8957 ], [ %9017, %9006 ]
  %9051 = phi float [ %8972, %8957 ], [ %9018, %9006 ]
  br i1 %8538, label %9052, label %9250, !dx.controlflow.hints !169

; <label>:9052                                    ; preds = %9045
  %9053 = extractvalue %dx.types.CBufRet.f32 %8951, 0
  %9054 = fmul fast float %9053, %8953
  %9055 = fsub fast float %8948, %9046
  %9056 = fsub fast float %8949, %9047
  %9057 = fsub fast float %8950, %9048
  %9058 = fmul fast float %9054, %9055
  %9059 = fmul fast float %9054, %9056
  %9060 = fmul fast float %9054, %9057
  %9061 = fadd fast float %9058, %9046
  %9062 = fadd fast float %9059, %9047
  %9063 = fadd fast float %9060, %9048
  %9064 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9049)  ; FMax(a,b)
  %9065 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9050)  ; FMax(a,b)
  %9066 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9051)  ; FMax(a,b)
  %9067 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8947)  ; FMax(a,b)
  %9068 = call float @dx.op.binary.f32(i32 35, float %8946, float %8956)  ; FMax(a,b)
  %9069 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9068)  ; FMax(a,b)
  %9070 = fdiv fast float %8946, %9069
  %9071 = call float @dx.op.unary.f32(i32 7, float %9070)  ; Saturate(value)
  %9072 = fdiv fast float %8956, %9069
  %9073 = call float @dx.op.unary.f32(i32 7, float %9072)  ; Saturate(value)
  %9074 = fcmp fast une float %9067, 1.000000e+00
  br i1 %9074, label %9075, label %9088, !dx.controlflow.hints !170

; <label>:9075                                    ; preds = %9052
  %9076 = call float @dx.op.unary.f32(i32 23, float %9067)  ; Log(value)
  %9077 = fmul fast float %9076, 0x3FE62E4300000000
  %9078 = fmul fast float %8948, %9077
  %9079 = fsub fast float -0.000000e+00, %9078
  %9080 = fmul fast float %8949, %9077
  %9081 = fsub fast float -0.000000e+00, %9080
  %9082 = fmul fast float %8950, %9077
  %9083 = fsub fast float -0.000000e+00, %9082
  %9084 = fsub fast float 1.000000e+00, %9067
  %9085 = fdiv fast float %9079, %9084
  %9086 = fdiv fast float %9081, %9084
  %9087 = fdiv fast float %9083, %9084
  br label %9088

; <label>:9088                                    ; preds = %9075, %9052
  %9089 = phi float [ %9085, %9075 ], [ %8948, %9052 ]
  %9090 = phi float [ %9086, %9075 ], [ %8949, %9052 ]
  %9091 = phi float [ %9087, %9075 ], [ %8950, %9052 ]
  %9092 = phi float [ %9077, %9075 ], [ 0.000000e+00, %9052 ]
  %9093 = fcmp fast une float %9064, 1.000000e+00
  br i1 %9093, label %9094, label %9101, !dx.controlflow.hints !171

; <label>:9094                                    ; preds = %9088
  %9095 = call float @dx.op.unary.f32(i32 23, float %9064)  ; Log(value)
  %9096 = fmul fast float %9095, 0x3FE62E4300000000
  %9097 = fmul fast float %9061, %9096
  %9098 = fsub fast float -0.000000e+00, %9097
  %9099 = fsub fast float 1.000000e+00, %9064
  %9100 = fdiv fast float %9098, %9099
  br label %9101

; <label>:9101                                    ; preds = %9094, %9088
  %9102 = phi float [ %9100, %9094 ], [ %9061, %9088 ]
  %9103 = phi float [ %9096, %9094 ], [ 0.000000e+00, %9088 ]
  %9104 = fcmp fast une float %9065, 1.000000e+00
  br i1 %9104, label %9105, label %9112, !dx.controlflow.hints !171

; <label>:9105                                    ; preds = %9101
  %9106 = call float @dx.op.unary.f32(i32 23, float %9065)  ; Log(value)
  %9107 = fmul fast float %9106, 0x3FE62E4300000000
  %9108 = fmul fast float %9062, %9107
  %9109 = fsub fast float -0.000000e+00, %9108
  %9110 = fsub fast float 1.000000e+00, %9065
  %9111 = fdiv fast float %9109, %9110
  br label %9112

; <label>:9112                                    ; preds = %9105, %9101
  %9113 = phi float [ %9111, %9105 ], [ %9062, %9101 ]
  %9114 = phi float [ %9107, %9105 ], [ 0.000000e+00, %9101 ]
  %9115 = fcmp fast une float %9066, 1.000000e+00
  br i1 %9115, label %9116, label %9123, !dx.controlflow.hints !171

; <label>:9116                                    ; preds = %9112
  %9117 = call float @dx.op.unary.f32(i32 23, float %9066)  ; Log(value)
  %9118 = fmul fast float %9117, 0x3FE62E4300000000
  %9119 = fmul fast float %9063, %9118
  %9120 = fsub fast float -0.000000e+00, %9119
  %9121 = fsub fast float 1.000000e+00, %9066
  %9122 = fdiv fast float %9120, %9121
  br label %9123

; <label>:9123                                    ; preds = %9116, %9112
  %9124 = phi float [ %9122, %9116 ], [ %9063, %9112 ]
  %9125 = phi float [ %9118, %9116 ], [ 0.000000e+00, %9112 ]
  %9126 = fmul fast float %9089, %9073
  %9127 = fmul fast float %9090, %9073
  %9128 = fmul fast float %9091, %9073
  %9129 = fmul fast float %9092, %9073
  %9130 = fmul fast float %9102, %9071
  %9131 = fmul fast float %9113, %9071
  %9132 = fmul fast float %9124, %9071
  %9133 = fmul fast float %9103, %9071
  %9134 = fmul fast float %9114, %9071
  %9135 = fmul fast float %9125, %9071
  %9136 = fadd fast float %9130, %9126
  %9137 = fadd fast float %9131, %9127
  %9138 = fadd fast float %9132, %9128
  %9139 = fadd fast float %9133, %9129
  %9140 = fadd fast float %9134, %9129
  %9141 = fadd fast float %9135, %9129
  %9142 = fcmp fast une float %9139, 0.000000e+00
  br i1 %9142, label %9143, label %9150, !dx.controlflow.hints !172

; <label>:9143                                    ; preds = %9123
  %9144 = fmul fast float %9139, 0x3FF7154760000000
  %9145 = call float @dx.op.unary.f32(i32 21, float %9144)  ; Exp(value)
  %9146 = fsub fast float 1.000000e+00, %9145
  %9147 = fmul fast float %9136, %9146
  %9148 = fsub fast float -0.000000e+00, %9147
  %9149 = fdiv fast float %9148, %9139
  br label %9150

; <label>:9150                                    ; preds = %9143, %9123
  %9151 = phi float [ %9145, %9143 ], [ 1.000000e+00, %9123 ]
  %9152 = phi float [ %9149, %9143 ], [ %9136, %9123 ]
  %9153 = fcmp fast une float %9140, 0.000000e+00
  br i1 %9153, label %9154, label %9161, !dx.controlflow.hints !172

; <label>:9154                                    ; preds = %9150
  %9155 = fmul fast float %9140, 0x3FF7154760000000
  %9156 = call float @dx.op.unary.f32(i32 21, float %9155)  ; Exp(value)
  %9157 = fsub fast float 1.000000e+00, %9156
  %9158 = fmul fast float %9137, %9157
  %9159 = fsub fast float -0.000000e+00, %9158
  %9160 = fdiv fast float %9159, %9140
  br label %9161

; <label>:9161                                    ; preds = %9154, %9150
  %9162 = phi float [ %9156, %9154 ], [ 1.000000e+00, %9150 ]
  %9163 = phi float [ %9160, %9154 ], [ %9137, %9150 ]
  %9164 = fcmp fast une float %9141, 0.000000e+00
  br i1 %9164, label %9165, label %9172, !dx.controlflow.hints !172

; <label>:9165                                    ; preds = %9161
  %9166 = fmul fast float %9141, 0x3FF7154760000000
  %9167 = call float @dx.op.unary.f32(i32 21, float %9166)  ; Exp(value)
  %9168 = fsub fast float 1.000000e+00, %9167
  %9169 = fmul fast float %9138, %9168
  %9170 = fsub fast float -0.000000e+00, %9169
  %9171 = fdiv fast float %9170, %9141
  br label %9172

; <label>:9172                                    ; preds = %9165, %9161
  %9173 = phi float [ %9167, %9165 ], [ 1.000000e+00, %9161 ]
  %9174 = phi float [ %9171, %9165 ], [ %9138, %9161 ]
  %9175 = fcmp fast ogt float %9071, %9073
  br i1 %9175, label %9176, label %9196

; <label>:9176                                    ; preds = %9172
  %9177 = fsub fast float 1.000000e+00, %9073
  %9178 = fmul fast float %9089, %9177
  %9179 = fmul fast float %9090, %9177
  %9180 = fmul fast float %9091, %9177
  %9181 = fmul fast float %9092, %9177
  %9182 = fcmp fast une float %9181, 0.000000e+00
  br i1 %9182, label %9183, label %9234, !dx.controlflow.hints !173

; <label>:9183                                    ; preds = %9176
  %9184 = fmul fast float %9181, 0x3FF7154760000000
  %9185 = call float @dx.op.unary.f32(i32 21, float %9184)  ; Exp(value)
  %9186 = fsub fast float 1.000000e+00, %9185
  %9187 = fmul fast float %9178, %9186
  %9188 = fsub fast float -0.000000e+00, %9187
  %9189 = fmul fast float %9179, %9186
  %9190 = fsub fast float -0.000000e+00, %9189
  %9191 = fmul fast float %9180, %9186
  %9192 = fsub fast float -0.000000e+00, %9191
  %9193 = fdiv fast float %9188, %9181
  %9194 = fdiv fast float %9190, %9181
  %9195 = fdiv fast float %9192, %9181
  br label %9234

; <label>:9196                                    ; preds = %9172
  %9197 = fsub fast float 1.000000e+00, %9071
  %9198 = fmul fast float %9102, %9197
  %9199 = fmul fast float %9113, %9197
  %9200 = fmul fast float %9124, %9197
  %9201 = fmul fast float %9103, %9197
  %9202 = fmul fast float %9114, %9197
  %9203 = fmul fast float %9125, %9197
  %9204 = fcmp fast une float %9201, 0.000000e+00
  br i1 %9204, label %9205, label %9212, !dx.controlflow.hints !172

; <label>:9205                                    ; preds = %9196
  %9206 = fmul fast float %9201, 0x3FF7154760000000
  %9207 = call float @dx.op.unary.f32(i32 21, float %9206)  ; Exp(value)
  %9208 = fsub fast float 1.000000e+00, %9207
  %9209 = fmul fast float %9198, %9208
  %9210 = fsub fast float -0.000000e+00, %9209
  %9211 = fdiv fast float %9210, %9201
  br label %9212

; <label>:9212                                    ; preds = %9205, %9196
  %9213 = phi float [ %9211, %9205 ], [ %9198, %9196 ]
  %9214 = phi float [ %9207, %9205 ], [ 1.000000e+00, %9196 ]
  %9215 = fcmp fast une float %9202, 0.000000e+00
  br i1 %9215, label %9216, label %9223, !dx.controlflow.hints !172

; <label>:9216                                    ; preds = %9212
  %9217 = fmul fast float %9202, 0x3FF7154760000000
  %9218 = call float @dx.op.unary.f32(i32 21, float %9217)  ; Exp(value)
  %9219 = fsub fast float 1.000000e+00, %9218
  %9220 = fmul fast float %9199, %9219
  %9221 = fsub fast float -0.000000e+00, %9220
  %9222 = fdiv fast float %9221, %9202
  br label %9223

; <label>:9223                                    ; preds = %9216, %9212
  %9224 = phi float [ %9222, %9216 ], [ %9199, %9212 ]
  %9225 = phi float [ %9218, %9216 ], [ 1.000000e+00, %9212 ]
  %9226 = fcmp fast une float %9203, 0.000000e+00
  br i1 %9226, label %9227, label %9234, !dx.controlflow.hints !172

; <label>:9227                                    ; preds = %9223
  %9228 = fmul fast float %9203, 0x3FF7154760000000
  %9229 = call float @dx.op.unary.f32(i32 21, float %9228)  ; Exp(value)
  %9230 = fsub fast float 1.000000e+00, %9229
  %9231 = fmul fast float %9200, %9230
  %9232 = fsub fast float -0.000000e+00, %9231
  %9233 = fdiv fast float %9232, %9203
  br label %9234

; <label>:9234                                    ; preds = %9227, %9223, %9183, %9176
  %9235 = phi float [ %9233, %9227 ], [ %9195, %9183 ], [ %9180, %9176 ], [ %9200, %9223 ]
  %9236 = phi float [ %9224, %9227 ], [ %9194, %9183 ], [ %9179, %9176 ], [ %9224, %9223 ]
  %9237 = phi float [ %9213, %9227 ], [ %9193, %9183 ], [ %9178, %9176 ], [ %9213, %9223 ]
  %9238 = phi float [ %9229, %9227 ], [ %9185, %9183 ], [ 1.000000e+00, %9176 ], [ 1.000000e+00, %9223 ]
  %9239 = phi float [ %9225, %9227 ], [ %9185, %9183 ], [ 1.000000e+00, %9176 ], [ %9225, %9223 ]
  %9240 = phi float [ %9214, %9227 ], [ %9185, %9183 ], [ 1.000000e+00, %9176 ], [ %9214, %9223 ]
  %9241 = fmul fast float %9240, %9152
  %9242 = fmul fast float %9239, %9163
  %9243 = fmul fast float %9238, %9174
  %9244 = fadd fast float %9241, %9237
  %9245 = fadd fast float %9242, %9236
  %9246 = fadd fast float %9243, %9235
  %9247 = fmul fast float %9240, %9151
  %9248 = fmul fast float %9239, %9162
  %9249 = fmul fast float %9238, %9173
  br label %9250

; <label>:9250                                    ; preds = %9234, %9045
  %9251 = phi float [ %9249, %9234 ], [ %9051, %9045 ]
  %9252 = phi float [ %9248, %9234 ], [ %9050, %9045 ]
  %9253 = phi float [ %9247, %9234 ], [ %9049, %9045 ]
  %9254 = phi float [ %9246, %9234 ], [ %9048, %9045 ]
  %9255 = phi float [ %9245, %9234 ], [ %9047, %9045 ]
  %9256 = phi float [ %9244, %9234 ], [ %9046, %9045 ]
  %9257 = fmul fast float %9256, %8202
  %9258 = fmul fast float %9255, %8202
  %9259 = fmul fast float %9254, %8202
  %9260 = fmul fast float %9253, %8493
  %9261 = call float @dx.op.dot3.f32(i32 55, float %9253, float %9252, float %9251, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9262 = call float @dx.op.dot3.f32(i32 55, float %9257, float %9258, float %9259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9263 = select i1 %268, float %9261, float %9253
  %9264 = select i1 %268, float %9261, float %9252
  %9265 = select i1 %268, float 1.000000e+00, float %9251
  %9266 = select i1 %268, float %9262, float %9257
  %9267 = select i1 %268, float 0.000000e+00, float %9258
  %9268 = select i1 %268, float 0.000000e+00, float %9259
  %9269 = fmul fast float %9263, %8487
  %9270 = fmul fast float %9264, %8488
  %9271 = fmul fast float %9265, %8489
  %9272 = fadd fast float %9269, %9266
  %9273 = fadd fast float %9270, %9267
  %9274 = fadd fast float %9268, %9271
  %9275 = fmul fast float %9263, %8490
  %9276 = fmul fast float %9264, %8491
  %9277 = fmul fast float %9265, %8492
  %9278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9279 = extractvalue %dx.types.CBufRet.i32 %9278, 0
  %9280 = icmp eq i32 %9279, 0
  br i1 %9280, label %9648, label %9281, !dx.controlflow.hints !174

; <label>:9281                                    ; preds = %9250
  %9282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9283 = extractvalue %dx.types.CBufRet.f32 %9282, 2
  %9284 = extractvalue %dx.types.CBufRet.f32 %9282, 3
  %9285 = fmul fast float %9283, %115
  %9286 = fmul fast float %9284, %116
  %9287 = fmul fast float %9285, 2.000000e+00
  %9288 = fmul fast float %9286, 2.000000e+00
  %9289 = fsub fast float 1.000000e+00, %9287
  %9290 = fsub fast float 1.000000e+00, %9288
  %9291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9292 = extractvalue %dx.types.CBufRet.f32 %9291, 0
  %9293 = extractvalue %dx.types.CBufRet.f32 %9291, 1
  %9294 = extractvalue %dx.types.CBufRet.f32 %9291, 2
  %9295 = fmul fast float %9289, %9292
  %9296 = fmul fast float %9289, %9293
  %9297 = fmul fast float %9289, %9294
  %9298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9299 = extractvalue %dx.types.CBufRet.f32 %9298, 0
  %9300 = extractvalue %dx.types.CBufRet.f32 %9298, 1
  %9301 = extractvalue %dx.types.CBufRet.f32 %9298, 2
  %9302 = fmul fast float %9290, %9299
  %9303 = fmul fast float %9290, %9300
  %9304 = fmul fast float %9290, %9301
  %9305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9306 = extractvalue %dx.types.CBufRet.f32 %9305, 0
  %9307 = extractvalue %dx.types.CBufRet.f32 %9305, 1
  %9308 = extractvalue %dx.types.CBufRet.f32 %9305, 2
  %9309 = fadd fast float %9302, %9306
  %9310 = fadd fast float %9309, %9295
  %9311 = fadd fast float %9303, %9307
  %9312 = fadd fast float %9311, %9296
  %9313 = fadd fast float %9304, %9308
  %9314 = fadd fast float %9313, %9297
  %9315 = fmul fast float %9310, %8486
  %9316 = fmul fast float %9312, %8486
  %9317 = fmul fast float %9314, %8486
  %9318 = fmul fast float %9315, %9315
  %9319 = fmul fast float %9316, %9316
  %9320 = fadd fast float %9318, %9319
  %9321 = fmul fast float %9317, %9317
  %9322 = fadd fast float %9320, %9321
  %9323 = call float @dx.op.unary.f32(i32 24, float %9322)  ; Sqrt(value)
  %9324 = extractvalue %dx.types.CBufRet.f32 %8213, 0
  %9325 = fsub fast float %9323, %9324
  %9326 = extractvalue %dx.types.CBufRet.f32 %8213, 2
  %9327 = fmul fast float %9325, %9326
  %9328 = call float @dx.op.unary.f32(i32 7, float %9327)  ; Saturate(value)
  %9329 = fadd fast float %9328, -5.000000e-01
  %9330 = fmul fast float %9329, 2.000000e+00
  %9331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9332 = extractvalue %dx.types.CBufRet.f32 %9331, 2
  %9333 = call float @dx.op.binary.f32(i32 36, float %9332, float %9330)  ; FMin(a,b)
  %9334 = fsub fast float -0.000000e+00, %9332
  %9335 = fcmp fast ogt float %9333, %9334
  br i1 %9335, label %9336, label %9648, !dx.controlflow.hints !175

; <label>:9336                                    ; preds = %9281
  %9337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9338 = extractvalue %dx.types.CBufRet.f32 %9337, 3
  %9339 = fcmp fast ogt float %9338, 0.000000e+00
  br i1 %9339, label %9340, label %9415, !dx.controlflow.hints !176

; <label>:9340                                    ; preds = %9336
  %9341 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %9342 = extractvalue %dx.types.Dimensions %9341, 0
  %9343 = sitofp i32 %9342 to float
  %9344 = extractvalue %dx.types.Dimensions %9341, 1
  %9345 = sitofp i32 %9344 to float
  %9346 = fmul fast float %9285, %9343
  %9347 = fmul fast float %9286, %9345
  %9348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9349 = extractvalue %dx.types.CBufRet.f32 %9348, 1
  %9350 = fsub fast float -0.000000e+00, %9349
  %9351 = fptoui float %9350 to i32
  %9352 = fptoui float %9346 to i32
  %9353 = fptoui float %9347 to i32
  %9354 = and i32 %9351, 31
  %9355 = lshr i32 %9352, %9354
  %9356 = lshr i32 %9353, %9354
  %9357 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %9351, i32 %9355, i32 %9356, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9358 = extractvalue %dx.types.ResRet.f32 %9357, 0
  %9359 = fcmp fast olt float %9358, -1.000000e+00
  %9360 = fcmp fast ogt float %9358, -1.000000e+00
  %9361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9362 = extractvalue %dx.types.CBufRet.f32 %9361, 1
  %9363 = select i1 %9360, float %9362, float 1.000000e+00
  %9364 = fadd fast float %9358, 1.000000e+00
  %9365 = fmul fast float %9363, %9364
  %9366 = call float @dx.op.unary.f32(i32 6, float %9365)  ; FAbs(value)
  %9367 = extractvalue %dx.types.CBufRet.f32 %9361, 3
  %9368 = fcmp fast oge float %9366, %9367
  %9369 = select i1 %9368, float 0x4197782600000000, float %9366
  %9370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9371 = extractvalue %dx.types.CBufRet.f32 %9370, 0
  %9372 = extractvalue %dx.types.CBufRet.f32 %9370, 1
  %9373 = extractvalue %dx.types.CBufRet.f32 %9370, 2
  %9374 = select i1 %9359, float %9371, float %9292
  %9375 = select i1 %9359, float %9372, float %9293
  %9376 = select i1 %9359, float %9373, float %9294
  %9377 = fmul fast float %9374, %9289
  %9378 = fmul fast float %9375, %9289
  %9379 = fmul fast float %9376, %9289
  %9380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9381 = extractvalue %dx.types.CBufRet.f32 %9380, 0
  %9382 = extractvalue %dx.types.CBufRet.f32 %9380, 1
  %9383 = extractvalue %dx.types.CBufRet.f32 %9380, 2
  %9384 = select i1 %9359, float %9381, float %9299
  %9385 = select i1 %9359, float %9382, float %9300
  %9386 = select i1 %9359, float %9383, float %9301
  %9387 = fmul fast float %9384, %9290
  %9388 = fmul fast float %9385, %9290
  %9389 = fmul fast float %9386, %9290
  %9390 = fadd fast float %9387, %9377
  %9391 = fadd fast float %9388, %9378
  %9392 = fadd fast float %9389, %9379
  %9393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9394 = extractvalue %dx.types.CBufRet.f32 %9393, 0
  %9395 = extractvalue %dx.types.CBufRet.f32 %9393, 1
  %9396 = extractvalue %dx.types.CBufRet.f32 %9393, 2
  %9397 = select i1 %9359, float %9394, float %9306
  %9398 = select i1 %9359, float %9395, float %9307
  %9399 = select i1 %9359, float %9396, float %9308
  %9400 = fadd fast float %9390, %9397
  %9401 = fadd fast float %9391, %9398
  %9402 = fadd fast float %9392, %9399
  %9403 = fmul fast float %9400, %9369
  %9404 = fmul fast float %9401, %9369
  %9405 = fmul fast float %9402, %9369
  %9406 = fmul fast float %9403, %9403
  %9407 = fmul fast float %9404, %9404
  %9408 = fadd fast float %9406, %9407
  %9409 = fmul fast float %9405, %9405
  %9410 = fadd fast float %9408, %9409
  %9411 = call float @dx.op.unary.f32(i32 24, float %9410)  ; Sqrt(value)
  %9412 = fsub fast float %9411, %9324
  %9413 = fmul fast float %9412, %9326
  %9414 = call float @dx.op.unary.f32(i32 7, float %9413)  ; Saturate(value)
  br label %9415

; <label>:9415                                    ; preds = %9340, %9336
  %9416 = phi float [ %9414, %9340 ], [ 1.000000e+00, %9336 ]
  %9417 = fmul fast float %9333, 5.000000e-01
  %9418 = fadd fast float %9417, 5.000000e-01
  %9419 = call float @dx.op.unary.f32(i32 22, float %9418)  ; Frc(value)
  %9420 = call float @dx.op.unary.f32(i32 27, float %9419)  ; Round_ni(value)
  %9421 = call float @dx.op.unary.f32(i32 22, float %9419)  ; Frc(value)
  %9422 = fmul fast float %9421, 2.000000e+00
  %9423 = fadd fast float %9422, -1.000000e+00
  %9424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %9285, float %9286, float %9420, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9425 = extractvalue %dx.types.ResRet.f32 %9424, 0
  %9426 = extractvalue %dx.types.ResRet.f32 %9424, 1
  %9427 = extractvalue %dx.types.ResRet.f32 %9424, 2
  %9428 = extractvalue %dx.types.ResRet.f32 %9424, 3
  %9429 = fadd fast float %9425, -5.000000e-01
  %9430 = fadd fast float %9427, -5.000000e-01
  %9431 = fmul fast float %9429, 0xBFD5555560000000
  %9432 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9430, float %9431)  ; FMad(a,b,c)
  %9433 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9426, float 0.000000e+00)  ; FMad(a,b,c)
  %9434 = fadd fast float %9433, %9428
  %9435 = fmul fast float %9429, -7.500000e-01
  %9436 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9430, float %9435)  ; FMad(a,b,c)
  %9437 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9426, float 0.000000e+00)  ; FMad(a,b,c)
  %9438 = fadd fast float %9437, %9428
  %9439 = call float @dx.op.binary.f32(i32 35, float %9432, float -1.000000e+00)  ; FMax(a,b)
  %9440 = call float @dx.op.binary.f32(i32 35, float %9434, float -1.000000e+00)  ; FMax(a,b)
  %9441 = call float @dx.op.binary.f32(i32 35, float %9436, float -1.000000e+00)  ; FMax(a,b)
  %9442 = call float @dx.op.binary.f32(i32 35, float %9438, float -1.000000e+00)  ; FMax(a,b)
  %9443 = call float @dx.op.binary.f32(i32 36, float %9439, float 1.000000e+00)  ; FMin(a,b)
  %9444 = call float @dx.op.binary.f32(i32 36, float %9440, float 1.000000e+00)  ; FMin(a,b)
  %9445 = call float @dx.op.binary.f32(i32 36, float %9441, float 1.000000e+00)  ; FMin(a,b)
  %9446 = call float @dx.op.binary.f32(i32 36, float %9442, float 1.000000e+00)  ; FMin(a,b)
  %9447 = fcmp fast olt float %9443, 0x3FEFFF8020000000
  br i1 %9447, label %9448, label %9563, !dx.controlflow.hints !177

; <label>:9448                                    ; preds = %9415
  %9449 = extractvalue %dx.types.CBufRet.f32 %9331, 3
  %9450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9451 = extractvalue %dx.types.CBufRet.f32 %9450, 0
  %9452 = extractvalue %dx.types.CBufRet.f32 %9450, 1
  %9453 = extractvalue %dx.types.CBufRet.f32 %9450, 2
  %9454 = extractvalue %dx.types.CBufRet.f32 %9450, 3
  %9455 = fsub fast float %9451, %9443
  %9456 = fsub fast float %9452, %9444
  %9457 = fsub fast float %9453, %9445
  %9458 = fsub fast float %9454, %9446
  %9459 = fmul fast float %9455, %9449
  %9460 = fmul fast float %9456, %9449
  %9461 = fmul fast float %9457, %9449
  %9462 = fmul fast float %9458, %9449
  %9463 = fadd fast float %9459, %9443
  %9464 = fadd fast float %9460, %9444
  %9465 = fsub fast float -0.000000e+00, %9464
  %9466 = fadd fast float %9461, %9445
  %9467 = fadd fast float %9462, %9446
  %9468 = fmul fast float %9463, %9463
  %9469 = fsub fast float %9464, %9468
  %9470 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9469)  ; FMax(a,b)
  %9471 = fdiv fast float 1.000000e+00, %9470
  %9472 = fmul fast float %9464, %9463
  %9473 = fsub fast float %9466, %9472
  %9474 = fsub fast float %9423, %9463
  %9475 = fmul fast float %9423, %9423
  %9476 = fsub fast float %9475, %9464
  %9477 = fmul fast float %9474, %9471
  %9478 = fmul fast float %9477, %9473
  %9479 = fsub fast float %9476, %9478
  %9480 = fmul fast float %9464, %9464
  %9481 = fsub fast float %9467, %9480
  %9482 = fmul fast float %9473, %9473
  %9483 = fmul fast float %9482, %9471
  %9484 = fsub fast float %9481, %9483
  %9485 = fdiv fast float %9479, %9484
  %9486 = fmul fast float %9473, %9485
  %9487 = fsub fast float %9474, %9486
  %9488 = fmul fast float %9487, %9471
  %9489 = fmul fast float %9488, %9463
  %9490 = fsub fast float 1.000000e+00, %9489
  %9491 = fmul fast float %9464, %9485
  %9492 = fsub fast float %9490, %9491
  %9493 = fmul fast float %9488, %9488
  %9494 = fmul fast float %9485, 4.000000e+00
  %9495 = fmul fast float %9494, %9492
  %9496 = fsub fast float %9493, %9495
  %9497 = call float @dx.op.unary.f32(i32 24, float %9496)  ; Sqrt(value)
  %9498 = fcmp fast oge float %9488, 0.000000e+00
  %9499 = fsub fast float -0.000000e+00, %9497
  %9500 = select i1 %9498, float %9499, float %9497
  %9501 = fsub fast float %9500, %9488
  %9502 = fdiv fast float %9501, %9485
  %9503 = fdiv fast float %9492, %9501
  %9504 = fmul fast float %9502, 5.000000e-01
  %9505 = fmul fast float %9503, 2.000000e+00
  %9506 = select i1 %9498, float %9504, float %9505
  %9507 = select i1 %9498, float %9505, float %9504
  %9508 = call float @dx.op.binary.f32(i32 35, float %9506, float %9507)  ; FMax(a,b)
  %9509 = call float @dx.op.binary.f32(i32 36, float %9506, float %9507)  ; FMin(a,b)
  %9510 = fcmp fast ogt float %9423, %9509
  br i1 %9510, label %9511, label %9521

; <label>:9511                                    ; preds = %9448
  %9512 = fsub fast float %9423, %9509
  %9513 = fsub fast float %9508, %9509
  %9514 = fmul fast float %9512, %9513
  %9515 = fmul fast float %9508, %9423
  %9516 = fadd fast float %9508, %9423
  %9517 = fmul fast float %9516, %9463
  %9518 = fadd fast float %9515, %9464
  %9519 = fsub fast float %9518, %9517
  %9520 = fdiv fast float %9519, %9514
  br label %9521

; <label>:9521                                    ; preds = %9511, %9448
  %9522 = phi float [ %9520, %9511 ], [ 0.000000e+00, %9448 ]
  %9523 = fcmp fast ogt float %9423, %9508
  %9524 = fsub fast float %9423, %9508
  br i1 %9523, label %9525, label %9535

; <label>:9525                                    ; preds = %9521
  %9526 = fsub fast float %9508, %9509
  %9527 = fmul fast float %9526, %9524
  %9528 = fmul fast float %9509, %9423
  %9529 = fadd fast float %9509, %9423
  %9530 = fmul fast float %9529, %9463
  %9531 = fsub fast float %9465, %9528
  %9532 = fadd fast float %9531, %9530
  %9533 = fdiv fast float %9532, %9527
  %9534 = fadd fast float %9533, %9522
  br label %9535

; <label>:9535                                    ; preds = %9525, %9521
  %9536 = phi float [ %9534, %9525 ], [ %9522, %9521 ]
  %9537 = fsub fast float %9423, %9509
  %9538 = fmul fast float %9537, %9524
  %9539 = fmul fast float %9509, %9508
  %9540 = fadd fast float %9509, %9508
  %9541 = fmul fast float %9540, %9463
  %9542 = fadd fast float %9539, %9464
  %9543 = fsub fast float %9542, %9541
  %9544 = fdiv fast float %9543, %9538
  %9545 = call float @dx.op.unary.f32(i32 7, float %9536)  ; Saturate(value)
  %9546 = fcmp fast oeq float %8214, 0.000000e+00
  %9547 = extractvalue %dx.types.CBufRet.f32 %9331, 0
  %9548 = fcmp fast oeq float %9547, 0.000000e+00
  %9549 = or i1 %9546, %9548
  %9550 = fmul fast float %9547, 2.000000e+00
  %9551 = fadd fast float %9332, %9333
  %9552 = fdiv fast float %9551, %9550
  %9553 = call float @dx.op.unary.f32(i32 7, float %9552)  ; Saturate(value)
  %9554 = fmul fast float %9553, 2.000000e+00
  %9555 = fsub fast float 3.000000e+00, %9554
  %9556 = fmul fast float %9553, %9553
  %9557 = fmul fast float %9556, %9555
  %9558 = select i1 %9549, float 1.000000e+00, float %9557
  %9559 = fmul fast float %9544, %8214
  %9560 = fadd fast float %9545, %9559
  %9561 = call float @dx.op.unary.f32(i32 7, float %9560)  ; Saturate(value)
  %9562 = fmul fast float %9558, %9561
  br label %9563

; <label>:9563                                    ; preds = %9535, %9415
  %9564 = phi float [ %9562, %9535 ], [ 0.000000e+00, %9415 ]
  %9565 = fsub fast float 1.000000e+00, %9564
  %9566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %9285, float %9286, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9567 = extractvalue %dx.types.ResRet.f32 %9566, 0
  %9568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9569 = extractvalue %dx.types.CBufRet.i32 %9568, 2
  %9570 = icmp eq i32 %9569, 0
  br i1 %9570, label %9576, label %9571

; <label>:9571                                    ; preds = %9563
  %9572 = call float @dx.op.unary.f32(i32 7, float %9564)  ; Saturate(value)
  %9573 = fadd fast float %9567, -1.000000e+00
  %9574 = fmul fast float %9572, %9573
  %9575 = fadd fast float %9574, 1.000000e+00
  br label %9576

; <label>:9576                                    ; preds = %9571, %9563
  %9577 = phi float [ %9575, %9571 ], [ %9565, %9563 ]
  br i1 %9339, label %9578, label %9596

; <label>:9578                                    ; preds = %9576
  %9579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9580 = extractvalue %dx.types.CBufRet.f32 %9579, 1
  %9581 = fsub fast float %9416, %9580
  %9582 = call float @dx.op.unary.f32(i32 7, float %9581)  ; Saturate(value)
  %9583 = fsub fast float %9416, %9338
  %9584 = call float @dx.op.unary.f32(i32 7, float %9583)  ; Saturate(value)
  %9585 = fsub fast float %9582, %9584
  %9586 = fsub fast float %9418, %9584
  %9587 = fdiv fast float %9586, %9585
  %9588 = call float @dx.op.unary.f32(i32 7, float %9587)  ; Saturate(value)
  %9589 = fmul fast float %9588, 2.000000e+00
  %9590 = fsub fast float 3.000000e+00, %9589
  %9591 = fsub fast float %9567, %9577
  %9592 = fmul fast float %9588, %9588
  %9593 = fmul fast float %9592, %9591
  %9594 = fmul fast float %9593, %9590
  %9595 = fadd fast float %9594, %9577
  br label %9596

; <label>:9596                                    ; preds = %9578, %9576
  %9597 = phi float [ %9595, %9578 ], [ %9577, %9576 ]
  %9598 = call float @dx.op.binary.f32(i32 35, float %9567, float %9597)  ; FMax(a,b)
  %9599 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9600 = extractvalue %dx.types.CBufRet.i32 %9599, 2
  %9601 = and i32 %9600, 1
  %9602 = icmp eq i32 %9601, 0
  %9603 = fcmp fast une float %9598, 1.000000e+00
  %9604 = and i1 %9603, %9602
  br i1 %9604, label %9605, label %9624

; <label>:9605                                    ; preds = %9596
  %9606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %9285, float %9286, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9607 = extractvalue %dx.types.ResRet.f32 %9606, 0
  %9608 = extractvalue %dx.types.ResRet.f32 %9606, 1
  %9609 = extractvalue %dx.types.ResRet.f32 %9606, 2
  %9610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9611 = extractvalue %dx.types.CBufRet.f32 %9610, 1
  %9612 = fmul fast float %9611, %9607
  %9613 = fmul fast float %9611, %9608
  %9614 = fmul fast float %9611, %9609
  %9615 = fcmp fast ogt float %9567, 0x3FEFFF2E40000000
  %9616 = fsub fast float 1.000000e+00, %9598
  %9617 = fsub fast float 1.000000e+00, %9567
  %9618 = fdiv fast float %9616, %9617
  %9619 = call float @dx.op.unary.f32(i32 7, float %9618)  ; Saturate(value)
  %9620 = select i1 %9615, float 0.000000e+00, float %9619
  %9621 = fmul fast float %9612, %9620
  %9622 = fmul fast float %9613, %9620
  %9623 = fmul fast float %9614, %9620
  br label %9624

; <label>:9624                                    ; preds = %9605, %9596
  %9625 = phi float [ 0.000000e+00, %9596 ], [ %9621, %9605 ]
  %9626 = phi float [ 0.000000e+00, %9596 ], [ %9622, %9605 ]
  %9627 = phi float [ 0.000000e+00, %9596 ], [ %9623, %9605 ]
  %9628 = fmul fast float %9625, %8202
  %9629 = fmul fast float %9626, %8202
  %9630 = fmul fast float %9627, %8202
  %9631 = fmul fast float %9598, %9260
  %9632 = call float @dx.op.dot3.f32(i32 55, float %9598, float %9598, float %9598, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9633 = call float @dx.op.dot3.f32(i32 55, float %9628, float %9629, float %9630, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9634 = select i1 %268, float %9632, float %9598
  %9635 = select i1 %268, float 1.000000e+00, float %9598
  %9636 = select i1 %268, float %9633, float %9628
  %9637 = select i1 %268, float 0.000000e+00, float %9629
  %9638 = select i1 %268, float 0.000000e+00, float %9630
  %9639 = fmul fast float %9634, %9272
  %9640 = fmul fast float %9634, %9273
  %9641 = fmul fast float %9635, %9274
  %9642 = fadd fast float %9639, %9636
  %9643 = fadd fast float %9640, %9637
  %9644 = fadd fast float %9638, %9641
  %9645 = fmul fast float %9634, %9275
  %9646 = fmul fast float %9634, %9276
  %9647 = fmul fast float %9635, %9277
  br label %9648

; <label>:9648                                    ; preds = %9624, %9281, %9250, %8482
  %9649 = phi float [ %8487, %8482 ], [ %9272, %9250 ], [ %9642, %9624 ], [ %9272, %9281 ]
  %9650 = phi float [ %8488, %8482 ], [ %9273, %9250 ], [ %9643, %9624 ], [ %9273, %9281 ]
  %9651 = phi float [ %8489, %8482 ], [ %9274, %9250 ], [ %9644, %9624 ], [ %9274, %9281 ]
  %9652 = phi float [ %8490, %8482 ], [ %9275, %9250 ], [ %9645, %9624 ], [ %9275, %9281 ]
  %9653 = phi float [ %8491, %8482 ], [ %9276, %9250 ], [ %9646, %9624 ], [ %9276, %9281 ]
  %9654 = phi float [ %8492, %8482 ], [ %9277, %9250 ], [ %9647, %9624 ], [ %9277, %9281 ]
  %9655 = phi float [ %8493, %8482 ], [ %9260, %9250 ], [ %9631, %9624 ], [ %9260, %9281 ]
  %9656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9657 = extractvalue %dx.types.CBufRet.f32 %9656, 2
  %9658 = extractvalue %dx.types.CBufRet.f32 %9656, 3
  %9659 = fmul fast float %9657, %115
  %9660 = fmul fast float %9658, %116
  %9661 = call float @dx.op.unary.f32(i32 7, float %9659)  ; Saturate(value)
  %9662 = call float @dx.op.unary.f32(i32 7, float %9660)  ; Saturate(value)
  %9663 = select i1 %8224, i32 2, i32 0
  %9664 = or i32 %9663, 1
  %9665 = uitofp i32 %9664 to float
  %9666 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9661, float %9662, float %9665, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9667 = extractvalue %dx.types.ResRet.f32 %9666, 0
  %9668 = extractvalue %dx.types.ResRet.f32 %9666, 1
  %9669 = extractvalue %dx.types.ResRet.f32 %9666, 2
  %9670 = extractvalue %dx.types.ResRet.f32 %9666, 3
  %9671 = add nuw nsw i32 %9663, 2
  %9672 = uitofp i32 %9671 to float
  %9673 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9661, float %9662, float %9672, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9674 = extractvalue %dx.types.ResRet.f32 %9673, 0
  %9675 = extractvalue %dx.types.ResRet.f32 %9673, 1
  %9676 = extractvalue %dx.types.ResRet.f32 %9673, 2
  %9677 = extractvalue %dx.types.ResRet.f32 %9673, 3
  %9678 = call float @dx.op.binary.f32(i32 35, float %9668, float %9669)  ; FMax(a,b)
  %9679 = call float @dx.op.binary.f32(i32 35, float %9667, float %9678)  ; FMax(a,b)
  %9680 = call float @dx.op.binary.f32(i32 35, float %9679, float %9670)  ; FMax(a,b)
  %9681 = call float @dx.op.binary.f32(i32 36, float %9675, float %9676)  ; FMin(a,b)
  %9682 = call float @dx.op.binary.f32(i32 36, float %9674, float %9681)  ; FMin(a,b)
  %9683 = call float @dx.op.binary.f32(i32 36, float %9682, float %9677)  ; FMin(a,b)
  %9684 = fmul fast float %9680, 2.550000e+02
  %9685 = fadd fast float %9684, 0x3F70101020000000
  %9686 = fptoui float %9685 to i32
  %9687 = fmul fast float %9683, 2.550000e+02
  %9688 = fadd fast float %9687, 0x3F70101020000000
  %9689 = fptoui float %9688 to i32
  %9690 = icmp ult i32 %9686, %9689
  br i1 %9690, label %9691, label %9860

; <label>:9691                                    ; preds = %9648
  %9692 = fcmp fast ogt float %105, 9.843750e-01
  %9693 = fadd fast float %8486, -4.000000e+00
  %9694 = select i1 %9692, float -4.000000e+00, float %9693
  %9695 = call float @dx.op.binary.f32(i32 35, float %9694, float 0.000000e+00)  ; FMax(a,b)
  %9696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9697 = extractvalue %dx.types.CBufRet.f32 %9696, 0
  %9698 = fadd fast float %9697, %9695
  %9699 = extractvalue %dx.types.CBufRet.f32 %9696, 2
  %9700 = fmul fast float %9698, %9699
  %9701 = call float @dx.op.unary.f32(i32 23, float %9700)  ; Log(value)
  %9702 = extractvalue %dx.types.CBufRet.f32 %9696, 3
  %9703 = fmul fast float %9702, %9701
  %9704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9705 = extractvalue %dx.types.CBufRet.f32 %9704, 2
  %9706 = fmul fast float %9703, %9705
  %9707 = call float @dx.op.unary.f32(i32 7, float %9706)  ; Saturate(value)
  %9708 = uitofp i32 %9686 to float
  %9709 = uitofp i32 %9689 to float
  %9710 = fadd fast float %9708, 5.000000e-01
  %9711 = fadd fast float %9709, 5.000000e-01
  %9712 = fmul fast float %9705, %9710
  %9713 = fmul fast float %9705, %9711
  %9714 = fadd fast float %9712, 0x3F0FFB4800000000
  %9715 = fadd fast float %9713, 0xBF0FFB4800000000
  %9716 = call float @dx.op.binary.f32(i32 35, float %9707, float %9714)  ; FMax(a,b)
  %9717 = call float @dx.op.binary.f32(i32 36, float %9716, float %9715)  ; FMin(a,b)
  %9718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9719 = extractvalue %dx.types.CBufRet.f32 %9718, 1
  %9720 = extractvalue %dx.types.CBufRet.f32 %9718, 2
  %9721 = extractvalue %dx.types.CBufRet.f32 %9718, 0
  %9722 = select i1 %8224, float %9721, float 0.000000e+00
  %9723 = fmul fast float %9719, %9717
  %9724 = fadd fast float %9722, %9723
  %9725 = fadd fast float %9722, %9720
  %9726 = fsub fast float %9719, %9720
  %9727 = fadd fast float %9726, %9722
  %9728 = call float @dx.op.binary.f32(i32 35, float %9724, float %9725)  ; FMax(a,b)
  %9729 = call float @dx.op.binary.f32(i32 36, float %9728, float %9727)  ; FMin(a,b)
  %9730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %9661, float %9662, float %9729, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9731 = extractvalue %dx.types.ResRet.f32 %9730, 0
  %9732 = extractvalue %dx.types.ResRet.f32 %9730, 1
  %9733 = extractvalue %dx.types.ResRet.f32 %9730, 2
  %9734 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9735 = extractvalue %dx.types.CBufRet.i32 %9734, 0
  %9736 = extractvalue %dx.types.CBufRet.i32 %9734, 1
  %9737 = uitofp i32 %9735 to float
  %9738 = uitofp i32 %9736 to float
  %9739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9740 = extractvalue %dx.types.CBufRet.f32 %9739, 0
  %9741 = extractvalue %dx.types.CBufRet.f32 %9739, 1
  %9742 = fmul fast float %9737, %9661
  %9743 = fmul fast float %9738, %9662
  %9744 = fadd fast float %9742, -5.000000e-01
  %9745 = fadd fast float %9743, -5.000000e-01
  %9746 = call float @dx.op.unary.f32(i32 22, float %9744)  ; Frc(value)
  %9747 = call float @dx.op.unary.f32(i32 22, float %9745)  ; Frc(value)
  %9748 = fmul fast float %9746, %9746
  %9749 = fmul fast float %9748, %9746
  %9750 = fsub fast float 3.000000e+00, %9746
  %9751 = fmul fast float %9748, %9750
  %9752 = fmul fast float %9746, 3.000000e+00
  %9753 = fmul fast float %9749, 3.000000e+00
  %9754 = fmul fast float %9748, 6.000000e+00
  %9755 = fsub fast float %9753, %9754
  %9756 = fadd fast float %9755, 4.000000e+00
  %9757 = fmul fast float %9756, 0x3FC5555560000000
  %9758 = fmul fast float %9749, -3.000000e+00
  %9759 = fadd fast float %9748, %9746
  %9760 = fmul fast float %9759, 3.000000e+00
  %9761 = fadd fast float %9758, 1.000000e+00
  %9762 = fadd fast float %9761, %9760
  %9763 = fmul fast float %9749, 0x3FC5555560000000
  %9764 = fmul fast float %9747, %9747
  %9765 = fmul fast float %9764, %9747
  %9766 = fsub fast float 3.000000e+00, %9747
  %9767 = fmul fast float %9764, %9766
  %9768 = fmul fast float %9747, 3.000000e+00
  %9769 = fmul fast float %9765, 3.000000e+00
  %9770 = fmul fast float %9764, 6.000000e+00
  %9771 = fsub fast float %9769, %9770
  %9772 = fadd fast float %9771, 4.000000e+00
  %9773 = fmul fast float %9772, 0x3FC5555560000000
  %9774 = fmul fast float %9765, -3.000000e+00
  %9775 = fadd fast float %9764, %9747
  %9776 = fmul fast float %9775, 3.000000e+00
  %9777 = fadd fast float %9774, 1.000000e+00
  %9778 = fadd fast float %9777, %9776
  %9779 = fmul fast float %9765, 0x3FC5555560000000
  %9780 = fadd fast float %9746, 1.000000e+00
  %9781 = fsub fast float 1.000000e+00, %9752
  %9782 = fadd fast float %9781, %9751
  %9783 = fadd fast float %9782, %9756
  %9784 = fmul fast float %9783, 0x3FC5555560000000
  %9785 = fdiv fast float %9757, %9784
  %9786 = fsub fast float %9780, %9785
  %9787 = fsub fast float 1.000000e+00, %9746
  %9788 = fadd fast float %9762, %9749
  %9789 = fmul fast float %9788, 0x3FC5555560000000
  %9790 = fdiv fast float %9763, %9789
  %9791 = fadd fast float %9787, %9790
  %9792 = fadd fast float %9747, 1.000000e+00
  %9793 = fsub fast float 1.000000e+00, %9768
  %9794 = fadd fast float %9793, %9767
  %9795 = fadd fast float %9794, %9772
  %9796 = fmul fast float %9795, 0x3FC5555560000000
  %9797 = fdiv fast float %9773, %9796
  %9798 = fsub fast float %9792, %9797
  %9799 = fsub fast float 1.000000e+00, %9747
  %9800 = fadd fast float %9778, %9765
  %9801 = fmul fast float %9800, 0x3FC5555560000000
  %9802 = fdiv fast float %9779, %9801
  %9803 = fadd fast float %9802, %9799
  %9804 = fmul fast float %9786, %9740
  %9805 = fsub fast float %9661, %9804
  %9806 = fmul fast float %9791, %9740
  %9807 = fadd fast float %9806, %9661
  %9808 = fmul fast float %9803, %9741
  %9809 = fadd fast float %9808, %9662
  %9810 = fmul fast float %9798, %9741
  %9811 = fsub fast float %9662, %9810
  %9812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9805, float %9811, float %9729, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9813 = extractvalue %dx.types.ResRet.f32 %9812, 0
  %9814 = extractvalue %dx.types.ResRet.f32 %9812, 1
  %9815 = extractvalue %dx.types.ResRet.f32 %9812, 2
  %9816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9807, float %9811, float %9729, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9817 = extractvalue %dx.types.ResRet.f32 %9816, 0
  %9818 = extractvalue %dx.types.ResRet.f32 %9816, 1
  %9819 = extractvalue %dx.types.ResRet.f32 %9816, 2
  %9820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9805, float %9809, float %9729, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9821 = extractvalue %dx.types.ResRet.f32 %9820, 0
  %9822 = extractvalue %dx.types.ResRet.f32 %9820, 1
  %9823 = extractvalue %dx.types.ResRet.f32 %9820, 2
  %9824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9807, float %9809, float %9729, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9825 = extractvalue %dx.types.ResRet.f32 %9824, 0
  %9826 = extractvalue %dx.types.ResRet.f32 %9824, 1
  %9827 = extractvalue %dx.types.ResRet.f32 %9824, 2
  %9828 = fsub fast float %9821, %9813
  %9829 = fsub fast float %9822, %9814
  %9830 = fsub fast float %9823, %9815
  %9831 = fmul fast float %9828, %9801
  %9832 = fmul fast float %9829, %9801
  %9833 = fmul fast float %9830, %9801
  %9834 = fadd fast float %9831, %9813
  %9835 = fadd fast float %9832, %9814
  %9836 = fadd fast float %9833, %9815
  %9837 = fsub fast float %9825, %9817
  %9838 = fsub fast float %9826, %9818
  %9839 = fsub fast float %9827, %9819
  %9840 = fmul fast float %9837, %9801
  %9841 = fmul fast float %9838, %9801
  %9842 = fmul fast float %9839, %9801
  %9843 = fsub fast float %9817, %9834
  %9844 = fadd fast float %9843, %9840
  %9845 = fsub fast float %9818, %9835
  %9846 = fadd fast float %9845, %9841
  %9847 = fsub fast float %9819, %9836
  %9848 = fadd fast float %9847, %9842
  %9849 = fmul fast float %9844, %9789
  %9850 = fmul fast float %9846, %9789
  %9851 = fmul fast float %9848, %9789
  %9852 = fadd fast float %9849, %9834
  %9853 = fadd fast float %9850, %9835
  %9854 = fadd fast float %9851, %9836
  %9855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9856 = extractvalue %dx.types.CBufRet.f32 %9855, 1
  %9857 = fmul fast float %9852, %9856
  %9858 = fmul fast float %9853, %9856
  %9859 = fmul fast float %9854, %9856
  br label %9860

; <label>:9860                                    ; preds = %9691, %9648
  %9861 = phi float [ %9731, %9691 ], [ 1.000000e+00, %9648 ]
  %9862 = phi float [ %9732, %9691 ], [ 1.000000e+00, %9648 ]
  %9863 = phi float [ %9733, %9691 ], [ 1.000000e+00, %9648 ]
  %9864 = phi float [ %9857, %9691 ], [ 0.000000e+00, %9648 ]
  %9865 = phi float [ %9858, %9691 ], [ 0.000000e+00, %9648 ]
  %9866 = phi float [ %9859, %9691 ], [ 0.000000e+00, %9648 ]
  %9867 = fmul fast float %9864, %8202
  %9868 = fmul fast float %9865, %8202
  %9869 = fmul fast float %9866, %8202
  %9870 = fmul fast float %9861, %9655
  %9871 = call float @dx.op.dot3.f32(i32 55, float %9861, float %9862, float %9863, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9872 = call float @dx.op.dot3.f32(i32 55, float %9867, float %9868, float %9869, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9873 = select i1 %268, float %9871, float %9861
  %9874 = select i1 %268, float %9871, float %9862
  %9875 = select i1 %268, float 1.000000e+00, float %9863
  %9876 = select i1 %268, float %9872, float %9867
  %9877 = select i1 %268, float 0.000000e+00, float %9868
  %9878 = select i1 %268, float 0.000000e+00, float %9869
  %9879 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9880 = extractvalue %dx.types.CBufRet.i32 %9879, 3
  %9881 = and i32 %9880, 3
  %9882 = icmp ne i32 %9881, 0
  %9883 = and i32 %9880, 4
  %9884 = icmp ne i32 %9883, 0
  %9885 = and i1 %9882, %9884
  %9886 = and i1 %268, %9885
  br i1 %9886, label %9887, label %9893

; <label>:9887                                    ; preds = %9860
  %9888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9889 = extractvalue %dx.types.CBufRet.f32 %9888, 1
  %9890 = fadd fast float %9870, -1.000000e+00
  %9891 = fmul fast float %9889, %9890
  %9892 = fadd fast float %9891, 1.000000e+00
  br label %9893

; <label>:9893                                    ; preds = %9887, %9860
  %9894 = phi float [ %9892, %9887 ], [ %9870, %9860 ]
  %9895 = fadd fast float %9652, %9649
  %9896 = fmul fast float %9873, %9895
  %9897 = fadd fast float %9896, %9876
  %9898 = fadd fast float %9653, %9650
  %9899 = fmul fast float %9874, %9898
  %9900 = fadd fast float %9899, %9877
  %9901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9902 = extractvalue %dx.types.CBufRet.f32 %9901, 0
  br i1 %268, label %9903, label %9927

; <label>:9903                                    ; preds = %9893
  %9904 = fadd fast float %9897, %9900
  %9905 = fmul fast float %9902, %9904
  %9906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9907 = extractvalue %dx.types.CBufRet.f32 %9906, 3
  %9908 = extractvalue %dx.types.CBufRet.f32 %8206, 1
  %9909 = fsub fast float %8211, %8205
  %9910 = fadd fast float %9909, %8212
  %9911 = fsub fast float %9910, %9908
  %9912 = extractvalue %dx.types.CBufRet.f32 %8206, 2
  %9913 = fmul fast float %9911, %9912
  %9914 = call float @dx.op.unary.f32(i32 7, float %9913)  ; Saturate(value)
  %9915 = fsub fast float %9914, %9907
  %9916 = fmul fast float %9915, %9894
  %9917 = fadd fast float %9916, %9907
  %9918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9919 = extractvalue %dx.types.CBufRet.f32 %9918, 0
  %9920 = fsub fast float %9917, %9919
  %9921 = fmul fast float %9920, 1.000000e+01
  %9922 = call float @dx.op.unary.f32(i32 7, float %9921)  ; Saturate(value)
  %9923 = fsub fast float %4829, %8202
  %9924 = fmul fast float %9922, %9923
  %9925 = fadd fast float %9924, %8202
  %9926 = fmul fast float %9925, %9917
  br label %9951

; <label>:9927                                    ; preds = %9893
  %9928 = fadd fast float %9654, %9651
  %9929 = fmul fast float %9875, %9928
  %9930 = fadd fast float %9929, %9878
  %9931 = fmul fast float %9902, %9897
  %9932 = fmul fast float %9902, %9900
  %9933 = fmul fast float %9902, %9930
  %9934 = call float @dx.op.binary.f32(i32 35, float %9932, float %9933)  ; FMax(a,b)
  %9935 = call float @dx.op.binary.f32(i32 35, float %9931, float %9934)  ; FMax(a,b)
  %9936 = call float @dx.op.binary.f32(i32 35, float %9935, float %8202)  ; FMax(a,b)
  %9937 = fcmp fast ugt float %9936, 0x3F10000000000000
  br i1 %9937, label %9939, label %9938

; <label>:9938                                    ; preds = %9927
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9939

; <label>:9939                                    ; preds = %9938, %9927
  %9940 = add i32 %58, 356
  %9941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9940, i32 undef)  ; BufferLoad(srv,index,wot)
  %9942 = extractvalue %dx.types.ResRet.i32 %9941, 0
  %9943 = and i32 %9942, 32
  %9944 = icmp eq i32 %9943, 0
  br i1 %9944, label %9951, label %9945

; <label>:9945                                    ; preds = %9939
  %9946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9947 = extractvalue %dx.types.CBufRet.f32 %9946, 0
  %9948 = fmul fast float %9947, 0x3FE99999A0000000
  %9949 = fadd fast float %9947, %9931
  %9950 = fadd fast float %9948, %9933
  br label %9951

; <label>:9951                                    ; preds = %9945, %9939, %9903
  %9952 = phi float [ %9905, %9903 ], [ %9949, %9945 ], [ %9931, %9939 ]
  %9953 = phi float [ %9926, %9903 ], [ %9932, %9945 ], [ %9932, %9939 ]
  %9954 = phi float [ %9925, %9903 ], [ %9950, %9945 ], [ %9933, %9939 ]
  %9955 = phi float [ %9925, %9903 ], [ %8202, %9945 ], [ %8202, %9939 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9956 = call float @dx.op.binary.f32(i32 36, float %9952, float 3.225500e+04)  ; FMin(a,b)
  %9957 = call float @dx.op.binary.f32(i32 36, float %9953, float 3.225500e+04)  ; FMin(a,b)
  %9958 = call float @dx.op.binary.f32(i32 36, float %9954, float 3.225500e+04)  ; FMin(a,b)
  %9959 = call float @dx.op.binary.f32(i32 36, float %9955, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9956)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9957)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9958)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9959)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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
!dx.viewIdState = !{!69}
!dx.entryPoints = !{!70}

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
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
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
!60 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!61 = !{!62, !63, !64, !65, !66, !67, !68}
!62 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!63 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!64 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!65 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!66 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!67 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!68 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!69 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0]}
!70 = !{void ()* @ps_main, !"ps_main", !71, !4, !98}
!71 = !{!72, !96, null}
!72 = !{!73, !76, !77, !79, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !92, !93, !94, !95}
!73 = !{i32 0, !"SV_Position", i8 9, i8 3, !74, i8 4, i32 1, i8 4, i32 0, i8 0, !75}
!74 = !{i32 0}
!75 = !{i32 3, i32 15}
!76 = !{i32 1, !"COLOR", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 1, i8 0, !75}
!77 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 2, i8 0, !78}
!78 = !{i32 3, i32 3}
!79 = !{i32 3, !"NORMAL", i8 9, i8 0, !74, i8 2, i32 1, i8 3, i32 3, i8 0, !80}
!80 = !{i32 3, i32 7}
!81 = !{i32 4, !"TANGENT", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 4, i8 0, !75}
!82 = !{i32 5, !"SH_RED", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 5, i8 0, !75}
!83 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 6, i8 0, !75}
!84 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 7, i8 0, !75}
!85 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !74, i8 2, i32 1, i8 3, i32 8, i8 0, !80}
!86 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 9, i8 0, !75}
!87 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !74, i8 2, i32 1, i8 2, i32 10, i8 0, !78}
!88 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 11, i8 0, !75}
!89 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 12, i8 0, !80}
!90 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !74, i8 1, i32 1, i8 1, i32 13, i8 0, !91}
!91 = !{i32 3, i32 1}
!92 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !74, i8 1, i32 1, i8 2, i32 13, i8 1, !78}
!93 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !74, i8 1, i32 1, i8 4, i32 14, i8 0, !91}
!94 = !{i32 16, !"SV_IsFrontFace", i8 5, i8 13, !74, i8 1, i32 1, i8 1, i32 13, i8 3, !91}
!95 = !{i32 17, !"SV_SampleIndex", i8 5, i8 12, !74, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!96 = !{!97}
!97 = !{i32 0, !"SV_Target", i8 9, i8 16, !74, i8 0, i32 1, i8 4, i32 0, i8 0, !75}
!98 = !{i32 0, i64 16}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = !{!105, !105, i64 0}
!105 = !{!"int", !106, i64 0}
!106 = !{!"omnipotent char", !107, i64 0}
!107 = !{!"Simple C/C++ TBAA"}
!108 = !{!109, !111, !113, !115}
!109 = distinct !{!109, !110, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!110 = distinct !{!110, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!111 = distinct !{!111, !112, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!112 = distinct !{!112, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!113 = distinct !{!113, !114, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!114 = distinct !{!114, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!115 = distinct !{!115, !116, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!116 = distinct !{!116, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = !{!130, !130, i64 0}
!130 = !{!"float", !106, i64 0}
!131 = !{!132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!132 = distinct !{!132, !133, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!133 = distinct !{!133, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!134 = distinct !{!134, !135, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!135 = distinct !{!135, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!136 = distinct !{!136, !135, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!137 = distinct !{!137, !138, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!138 = distinct !{!138, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!139 = distinct !{!139, !138, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!140 = distinct !{!140, !138, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!141 = distinct !{!141, !142, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!142 = distinct !{!142, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!143 = distinct !{!143, !142, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!144 = distinct !{!144, !142, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!145 = distinct !{!145, !146, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!146 = distinct !{!146, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"\01?sort@@YAXAIAM00@Z: %c"}
!149 = distinct !{!149, !"\01?sort@@YAXAIAM00@Z"}
!150 = !{!151, !152, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!151 = distinct !{!151, !149, !"\01?sort@@YAXAIAM00@Z: %a"}
!152 = distinct !{!152, !149, !"\01?sort@@YAXAIAM00@Z: %b"}
!153 = !{!152}
!154 = !{!151, !148, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!155 = !{!151}
!156 = !{!152, !148, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!157 = !{!158}
!158 = distinct !{!158, !159, !"\01?sort@@YAXAIAM00@Z: %c"}
!159 = distinct !{!159, !"\01?sort@@YAXAIAM00@Z"}
!160 = !{!161, !162, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!161 = distinct !{!161, !159, !"\01?sort@@YAXAIAM00@Z: %a"}
!162 = distinct !{!162, !159, !"\01?sort@@YAXAIAM00@Z: %b"}
!163 = !{!162}
!164 = !{!161, !158, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!165 = !{!161}
!166 = !{!162, !158, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 2}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}

