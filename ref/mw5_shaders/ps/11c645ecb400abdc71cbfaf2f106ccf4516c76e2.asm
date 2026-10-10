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
; shader hash: ff0721b7ad2f82af554697feb5fc99c8
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
;   [224 x i8] (type annotation not present)
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
;                                   texture     f32          2d     T15             t1     1
;                                   texture     f32          2d     T16     t58,space2     1
;                                   texture     f32          2d     T17     t59,space2     1
;                                   texture     f32          2d     T18     t60,space2     1
;                                   texture    byte         r/o     T19     t45,space1     1
;                                   texture    byte         r/o     T20     t46,space1     1
;                                   texture    byte         r/o     T21     t47,space1     1
;                                   texture    byte         r/o     T22     t48,space1     1
;                                   texture     f32          2d     T23     t57,space2     1
;                                   texture    byte         r/o     T24     t69,space1     1
;                                   texture     u32          2d     T25     t56,space2     1
;                                   texture     f32          2d     T26     t34,space2     1
;                                   texture    byte         r/o     T27     t10,space1     1
;                                   texture    byte         r/o     T28      t1,space1     1
;                                   texture     f32          1d     T29     t32,space2     1
;                                   texture     f32     2darray     T30      t8,space2     1
;                                   texture     f32          2d     T31      t1,space2     1
;                                   texture     f32          2d     T32      t2,space2     1
;                                   texture     f32          2d     T33      t3,space2     1
;                                   texture     f32          2d     T34      t4,space2     1
;                                   textureunorm_f32     2darray     T35     t80,space2     1
;                                   texture    byte         r/o     T36     t67,space1     1
;                                   texture     f32          2d     T37      t7,space2     1
;                                   texture     f32          2d     T38      t6,space2     1
;                                   texture     f32          2d     T39      t5,space2     1
;                                   texture     f32          2d     T40     t38,space2     1
;                                   texture    byte         r/o     T41     t12,space1     1
;                                   texture    byte         r/o     T42     t13,space1     1
;                                   texture     f32          1d     T43     t30,space2     1
;                                   texture     f32          3d     T44     t44,space2     1
;                                   texture     f32          3d     T45     t45,space2     1
;                                   texture     f32     2darray     T46     t47,space2     1
;                                   textureunorm_f32     2darray     T47     t85,space2     1
;                                   texture     f32          2d     T48     t83,space2     1
;                                   texture     f32          2d     T49     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 56 }
;   output 5 depends on inputs: { 0, 1, 4, 8, 9, 12, 13, 14, 40, 41, 48, 49, 50, 52, 56 }
;   output 6 depends on inputs: { 0, 1, 4, 8, 9, 12, 13, 14, 40, 41, 48, 49, 50, 52, 56 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = alloca [4 x i32], align 4
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
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = fmul fast float %114, %103
  %116 = fmul fast float %114, %104
  %117 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %118 = bitcast float %117 to i32
  %119 = ashr i32 %118, 1
  %120 = sub nsw i32 1597250115, %119
  %121 = bitcast i32 %120 to float
  %122 = fmul fast float %121, %94
  %123 = fmul fast float %121, %95
  %124 = fmul fast float %121, %96
  %125 = fmul fast float %95, %92
  %126 = fmul fast float %96, %91
  %127 = fsub fast float %125, %126
  %128 = fmul fast float %96, %90
  %129 = fmul fast float %94, %92
  %130 = fsub fast float %128, %129
  %131 = fmul fast float %94, %91
  %132 = fmul fast float %95, %90
  %133 = fsub fast float %131, %132
  %134 = fmul fast float %127, %93
  %135 = fmul fast float %130, %93
  %136 = fmul fast float %133, %93
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = fcmp fast une float %138, 0.000000e+00
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %143 = fmul fast float %115, 2.000000e+00
  %144 = fmul fast float %143, %141
  %145 = fmul fast float %116, 2.000000e+00
  %146 = fmul fast float %145, %142
  %147 = fsub fast float 1.000000e+00, %144
  %148 = fsub fast float 1.000000e+00, %146
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = select i1 %139, float %150, float %154
  %158 = select i1 %139, float %151, float %155
  %159 = select i1 %139, float %152, float %156
  %160 = fmul fast float %157, %147
  %161 = fmul fast float %158, %147
  %162 = fmul fast float %159, %147
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %166 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %170 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %171 = select i1 %139, float %164, float %168
  %172 = select i1 %139, float %165, float %169
  %173 = select i1 %139, float %166, float %170
  %174 = fmul fast float %171, %148
  %175 = fmul fast float %172, %148
  %176 = fmul fast float %173, %148
  %177 = fadd fast float %174, %160
  %178 = fadd fast float %175, %161
  %179 = fadd fast float %176, %162
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %182 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %183 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %186 = extractvalue %dx.types.CBufRet.f32 %184, 1
  %187 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %188 = select i1 %139, float %181, float %185
  %189 = select i1 %139, float %182, float %186
  %190 = select i1 %139, float %183, float %187
  %191 = fadd fast float %177, %188
  %192 = fadd fast float %178, %189
  %193 = fadd fast float %179, %190
  %194 = fmul fast float %191, %106
  %195 = fmul fast float %192, %106
  %196 = fmul fast float %193, %106
  %197 = shl i32 %59, 5
  %198 = add i32 %197, 4194304
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = extractvalue %dx.types.ResRet.i32 %199, 1
  %202 = extractvalue %dx.types.ResRet.i32 %199, 2
  %203 = extractvalue %dx.types.ResRet.i32 %199, 3
  %204 = add i32 %197, 4194320
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = extractvalue %dx.types.ResRet.i32 %205, 1
  %208 = bitcast i32 %206 to float
  %209 = bitcast i32 %207 to float
  %210 = fmul fast float %115, 5.000000e-01
  %211 = fmul fast float %116, 5.000000e-01
  %212 = fptosi float %210 to i32
  %213 = fptosi float %211 to i32
  %214 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %212, i32 %213, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = lshr i32 %215, 18
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F4C00EBA0000000
  %219 = call float @dx.op.unary.f32(i32 21, float %218)  ; Exp(value)
  %220 = fadd fast float %219, -1.000000e+00
  %221 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %222 = extractvalue %dx.types.Dimensions %221, 0
  %223 = sitofp i32 %222 to float
  %224 = extractvalue %dx.types.Dimensions %221, 1
  %225 = sitofp i32 %224 to float
  %226 = fcmp fast oge float %210, %223
  %227 = fcmp fast oge float %211, %225
  %228 = or i1 %226, %227
  %229 = select i1 %228, float 0x4197782600000000, float %220
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 2
  %232 = extractvalue %dx.types.CBufRet.f32 %230, 3
  %233 = fmul fast float %231, %115
  %234 = fmul fast float %232, %116
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, 114688
  %238 = icmp ne i32 %237, 0
  %239 = select i1 %238, float %233, float 0.000000e+00
  %240 = select i1 %238, float %234, float 0.000000e+00
  %241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %53, float %239, float %240, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = fmul fast float %242, 2.550000e+02
  %244 = fptoui float %243 to i32
  %245 = select i1 %238, i32 %244, i32 0
  %246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.i32 %246, 3
  %248 = and i32 %247, 3
  %249 = icmp ne i32 %248, 0
  %250 = and i32 %247, 4
  %251 = icmp ne i32 %250, 0
  %252 = and i1 %249, %251
  br i1 %252, label %253, label %262

; <label>:253                                     ; preds = %0
  %254 = fmul fast float %142, %116
  %255 = fmul fast float %141, %115
  %256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %52, float %255, float %254, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = fsub fast float 1.000000e+00, %257
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 0
  %261 = fcmp fast olt float %258, %260
  br label %265

; <label>:262                                     ; preds = %0
  %263 = icmp eq i32 %250, 0
  %264 = and i1 %249, %263
  br label %265

; <label>:265                                     ; preds = %262, %253
  %266 = phi i1 [ %261, %253 ], [ %264, %262 ]
  %267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %268 = extractvalue %dx.types.CBufRet.f32 %267, 2
  %269 = fmul fast float %268, 0x3FE3C6EF40000000
  %270 = frem fast float %115, 2.560000e+02
  %271 = frem fast float %116, 2.560000e+02
  %272 = fptoui float %270 to i32
  %273 = fptoui float %271 to i32
  %274 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %272, i32 %273, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = extractvalue %dx.types.ResRet.f32 %274, 1
  %277 = fadd fast float %275, %269
  %278 = fadd fast float %276, %269
  %279 = call float @dx.op.unary.f32(i32 22, float %277)  ; Frc(value)
  %280 = call float @dx.op.unary.f32(i32 22, float %278)  ; Frc(value)
  %281 = add i32 %58, 156
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = shl i32 %283, 4
  %285 = and i32 %284, 32752
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %283, 7
  %288 = and i32 %287, 32752
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %283, 22
  %291 = shl nuw nsw i32 %290, 5
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = add i32 %58, 216
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = lshr i32 %295, 8
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = lshr i32 %295, 16
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = add i32 %58, 36
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = add i32 %58, 288
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 65535
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %316, 16
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = fmul fast float %318, 0x3F50624DE0000000
  %322 = fmul fast float %320, 0x3F50624DE0000000
  %323 = mul i32 %60, 100
  %324 = add i32 %323, 28
  %325 = add i32 %323, 40
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = add i32 %58, 172
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = shl i32 %330, 4
  %332 = and i32 %331, 32752
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %330, 7
  %335 = and i32 %334, 32752
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %330, 22
  %338 = shl nuw nsw i32 %337, 5
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = add i32 %58, 232
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = lshr i32 %342, 8
  %347 = and i32 %346, 255
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F70101020000000
  %350 = lshr i32 %342, 16
  %351 = and i32 %350, 255
  %352 = uitofp i32 %351 to float
  %353 = fmul fast float %352, 0x3F70101020000000
  %354 = add i32 %58, 52
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %356, 16
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = add i32 %58, 304
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 65535
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %363, 16
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = shl i32 %369, 4
  %371 = and i32 %370, 32752
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = lshr i32 %369, 7
  %374 = and i32 %373, 32752
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = lshr i32 %369, 22
  %377 = shl nuw nsw i32 %376, 5
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = and i32 %327, 1
  %380 = icmp ne i32 %379, 0
  %381 = select i1 %380, float %372, float %333
  %382 = select i1 %380, float %375, float %336
  %383 = select i1 %380, float %378, float %339
  %384 = add i32 %323, 44
  %385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = fmul fast float %386, %381
  %388 = fmul fast float %386, %382
  %389 = fmul fast float %386, %383
  %390 = add i32 %323, 48
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = shl i32 %392, 4
  %394 = and i32 %393, 32752
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %392, 7
  %397 = and i32 %396, 32752
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = lshr i32 %392, 22
  %400 = shl nuw nsw i32 %399, 5
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = and i32 %327, 8
  %403 = icmp ne i32 %402, 0
  %404 = select i1 %403, float %395, float %345
  %405 = select i1 %403, float %398, float %349
  %406 = select i1 %403, float %401, float %353
  %407 = add i32 %323, 52
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 65535
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = lshr i32 %409, 16
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = and i32 %327, 2
  %415 = icmp ne i32 %414, 0
  %416 = select i1 %415, float %411, float %358
  %417 = select i1 %415, float %413, float %360
  %418 = add i32 %323, 56
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 65535
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = lshr i32 %420, 16
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = and i32 %327, 4
  %426 = icmp ne i32 %425, 0
  %427 = select i1 %426, float %422, float %365
  %428 = fmul float %427, 0x3F50624DE0000000
  %429 = select i1 %426, float %424, float %367
  %430 = fmul float %429, 0x3F50624DE0000000
  %431 = add i32 %323, 60
  %432 = add i32 %323, 32
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = add i32 %58, 188
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = shl i32 %437, 4
  %439 = and i32 %438, 32752
  %440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %439)  ; LegacyF16ToF32(value)
  %441 = lshr i32 %437, 7
  %442 = and i32 %441, 32752
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = lshr i32 %437, 22
  %445 = shl nuw nsw i32 %444, 5
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = add i32 %58, 248
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = and i32 %449, 255
  %451 = uitofp i32 %450 to float
  %452 = fmul fast float %451, 0x3F70101020000000
  %453 = lshr i32 %449, 8
  %454 = and i32 %453, 255
  %455 = uitofp i32 %454 to float
  %456 = fmul fast float %455, 0x3F70101020000000
  %457 = lshr i32 %449, 16
  %458 = and i32 %457, 255
  %459 = uitofp i32 %458 to float
  %460 = fmul fast float %459, 0x3F70101020000000
  %461 = add i32 %58, 68
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = and i32 %463, 65535
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = lshr i32 %463, 16
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = add i32 %58, 320
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = and i32 %470, 65535
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = lshr i32 %470, 16
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = shl i32 %476, 4
  %478 = and i32 %477, 32752
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = lshr i32 %476, 7
  %481 = and i32 %480, 32752
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = lshr i32 %476, 22
  %484 = shl nuw nsw i32 %483, 5
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = and i32 %434, 1
  %487 = icmp ne i32 %486, 0
  %488 = select i1 %487, float %479, float %440
  %489 = select i1 %487, float %482, float %443
  %490 = select i1 %487, float %485, float %446
  %491 = add i32 %323, 64
  %492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 0
  %494 = fmul fast float %493, %488
  %495 = fmul fast float %493, %489
  %496 = fmul fast float %493, %490
  %497 = add i32 %323, 68
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = shl i32 %499, 4
  %501 = and i32 %500, 32752
  %502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %501)  ; LegacyF16ToF32(value)
  %503 = lshr i32 %499, 7
  %504 = and i32 %503, 32752
  %505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %504)  ; LegacyF16ToF32(value)
  %506 = lshr i32 %499, 22
  %507 = shl nuw nsw i32 %506, 5
  %508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %507)  ; LegacyF16ToF32(value)
  %509 = and i32 %434, 8
  %510 = icmp ne i32 %509, 0
  %511 = select i1 %510, float %502, float %452
  %512 = select i1 %510, float %505, float %456
  %513 = select i1 %510, float %508, float %460
  %514 = add i32 %323, 72
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = and i32 %516, 65535
  %518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %517)  ; LegacyF16ToF32(value)
  %519 = lshr i32 %516, 16
  %520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %519)  ; LegacyF16ToF32(value)
  %521 = and i32 %434, 2
  %522 = icmp ne i32 %521, 0
  %523 = select i1 %522, float %518, float %465
  %524 = select i1 %522, float %520, float %467
  %525 = add i32 %323, 76
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = and i32 %527, 65535
  %529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %528)  ; LegacyF16ToF32(value)
  %530 = lshr i32 %527, 16
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = and i32 %434, 4
  %533 = icmp ne i32 %532, 0
  %534 = select i1 %533, float %529, float %472
  %535 = fmul float %534, 0x3F50624DE0000000
  %536 = select i1 %533, float %531, float %474
  %537 = fmul float %536, 0x3F50624DE0000000
  %538 = add i32 %323, 80
  %539 = add i32 %323, 36
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = add i32 %58, 204
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = shl i32 %544, 4
  %546 = and i32 %545, 32752
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = lshr i32 %544, 7
  %549 = and i32 %548, 32752
  %550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %549)  ; LegacyF16ToF32(value)
  %551 = lshr i32 %544, 22
  %552 = shl nuw nsw i32 %551, 5
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = add i32 %58, 264
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = and i32 %556, 255
  %558 = uitofp i32 %557 to float
  %559 = fmul fast float %558, 0x3F70101020000000
  %560 = lshr i32 %556, 8
  %561 = and i32 %560, 255
  %562 = uitofp i32 %561 to float
  %563 = fmul fast float %562, 0x3F70101020000000
  %564 = lshr i32 %556, 16
  %565 = and i32 %564, 255
  %566 = uitofp i32 %565 to float
  %567 = fmul fast float %566, 0x3F70101020000000
  %568 = add i32 %58, 84
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = and i32 %570, 65535
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = lshr i32 %570, 16
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = add i32 %58, 336
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = and i32 %577, 65535
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = lshr i32 %577, 16
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = shl i32 %583, 4
  %585 = and i32 %584, 32752
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = lshr i32 %583, 7
  %588 = and i32 %587, 32752
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = lshr i32 %583, 22
  %591 = shl nuw nsw i32 %590, 5
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = and i32 %541, 1
  %594 = icmp ne i32 %593, 0
  %595 = select i1 %594, float %586, float %547
  %596 = select i1 %594, float %589, float %550
  %597 = select i1 %594, float %592, float %553
  %598 = add i32 %323, 84
  %599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = fmul fast float %600, %595
  %602 = fmul fast float %600, %596
  %603 = fmul fast float %600, %597
  %604 = add i32 %323, 88
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = shl i32 %606, 4
  %608 = and i32 %607, 32752
  %609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %608)  ; LegacyF16ToF32(value)
  %610 = lshr i32 %606, 7
  %611 = and i32 %610, 32752
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = lshr i32 %606, 22
  %614 = shl nuw nsw i32 %613, 5
  %615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %614)  ; LegacyF16ToF32(value)
  %616 = and i32 %541, 8
  %617 = icmp ne i32 %616, 0
  %618 = select i1 %617, float %609, float %559
  %619 = select i1 %617, float %612, float %563
  %620 = select i1 %617, float %615, float %567
  %621 = add i32 %323, 92
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = and i32 %623, 65535
  %625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %624)  ; LegacyF16ToF32(value)
  %626 = lshr i32 %623, 16
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = and i32 %541, 2
  %629 = icmp ne i32 %628, 0
  %630 = select i1 %629, float %625, float %572
  %631 = select i1 %629, float %627, float %574
  %632 = add i32 %323, 96
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 65535
  %636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %635)  ; LegacyF16ToF32(value)
  %637 = lshr i32 %634, 16
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = and i32 %541, 4
  %640 = icmp ne i32 %639, 0
  %641 = select i1 %640, float %636, float %579
  %642 = fmul float %641, 0x3F50624DE0000000
  %643 = select i1 %640, float %638, float %581
  %644 = fmul float %643, 0x3F50624DE0000000
  %645 = add i32 %58, 348
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = and i32 %647, 32
  %649 = icmp eq i32 %648, 0
  %650 = and i32 %647, 64
  %651 = icmp eq i32 %650, 0
  %652 = and i32 %647, 128
  %653 = icmp eq i32 %652, 0
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = and i32 %655, 2
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %673, label %658

; <label>:658                                     ; preds = %265
  %659 = add i32 %58, 492
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = add i32 %661, 0
  %663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %662, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %664 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %663, %dx.types.Handle %112, float %97, float %98, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %665 = extractvalue %dx.types.ResRet.f32 %664, 0
  %666 = extractvalue %dx.types.ResRet.f32 %664, 1
  %667 = extractvalue %dx.types.ResRet.f32 %664, 2
  %668 = extractvalue %dx.types.ResRet.f32 %664, 3
  %669 = fmul fast float %668, %99
  %670 = fmul fast float %665, %100
  %671 = fmul fast float %666, %101
  %672 = fmul fast float %667, %102
  br label %673

; <label>:673                                     ; preds = %658, %265
  %674 = phi float [ %102, %265 ], [ %672, %658 ]
  %675 = phi float [ %101, %265 ], [ %671, %658 ]
  %676 = phi float [ %100, %265 ], [ %670, %658 ]
  %677 = phi float [ %99, %265 ], [ %669, %658 ]
  %678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = and i32 %679, 2
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %701, label %682

; <label>:682                                     ; preds = %673
  %683 = add i32 %58, 44
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %683, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = and i32 %685, 1
  %687 = icmp ne i32 %686, 0
  %688 = select i1 %687, float %676, float 1.000000e+00
  %689 = add i32 %58, 60
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = and i32 %691, 1
  %693 = icmp ne i32 %692, 0
  %694 = select i1 %693, float %675, float 1.000000e+00
  %695 = add i32 %58, 76
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %695, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 1
  %699 = icmp ne i32 %698, 0
  %700 = select i1 %699, float %674, float 1.000000e+00
  br label %701

; <label>:701                                     ; preds = %682, %673
  %702 = phi float [ %674, %673 ], [ %700, %682 ]
  %703 = phi float [ %675, %673 ], [ %694, %682 ]
  %704 = phi float [ %676, %673 ], [ %688, %682 ]
  %705 = lshr i32 %679, 20
  %706 = and i32 %705, 3
  %707 = add nuw nsw i32 %706, 1
  %708 = add i32 %58, 24
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = add i32 %58, 28
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = or i32 %713, %710
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %1303, label %716

; <label>:716                                     ; preds = %701
  %717 = and i32 %710, 262144
  %718 = icmp ne i32 %717, 0
  %719 = select i1 %718, float %65, float 1.000000e+00
  %720 = select i1 %718, float %66, float 0.000000e+00
  %721 = select i1 %718, float %67, float 0.000000e+00
  %722 = select i1 %718, float %68, float 1.000000e+00
  %723 = select i1 %718, float %69, float %97
  %724 = select i1 %718, float %70, float %98
  %725 = add i32 %58, 284
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = lshr i32 %727, 16
  %729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %728)  ; LegacyF16ToF32(value)
  %730 = fmul fast float %729, 0x3F50624DE0000000
  %731 = add i32 %58, 88
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = lshr i32 %733, 16
  %735 = and i32 %734, 255
  %736 = lshr i32 %733, 24
  %737 = add i32 %58, 292
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 65535
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = lshr i32 %739, 16
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = add i32 %58, 32
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = lshr i32 %746, 22
  %748 = shl nuw nsw i32 %747, 5
  %749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %748)  ; LegacyF16ToF32(value)
  %750 = shl i32 %746, 4
  %751 = and i32 %750, 32752
  %752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %751)  ; LegacyF16ToF32(value)
  %753 = lshr i32 %746, 7
  %754 = and i32 %753, 32752
  %755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %754)  ; LegacyF16ToF32(value)
  %756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %757 = extractvalue %dx.types.CBufRet.f32 %756, 3
  %758 = fmul fast float %757, 1.000000e+03
  %759 = fmul fast float %321, %758
  %760 = call float @dx.op.unary.f32(i32 22, float %759)  ; Frc(value)
  %761 = fadd fast float %760, %311
  %762 = fmul fast float %322, %758
  %763 = call float @dx.op.unary.f32(i32 22, float %762)  ; Frc(value)
  %764 = fadd fast float %763, %313
  %765 = fmul fast float %730, %758
  %766 = call float @dx.op.unary.f32(i32 22, float %765)  ; Frc(value)
  %767 = fmul fast float %766, 0x401921FB60000000
  %768 = fadd fast float %767, %749
  %769 = call float @dx.op.unary.f32(i32 13, float %768)  ; Sin(value)
  %770 = call float @dx.op.unary.f32(i32 12, float %768)  ; Cos(value)
  %771 = fsub fast float -0.000000e+00, %769
  %772 = fadd fast float %723, -5.000000e-01
  %773 = fadd fast float %724, -5.000000e-01
  %774 = fmul fast float %741, %772
  %775 = fmul fast float %743, %773
  %776 = fadd fast float %774, 5.000000e-01
  %777 = fadd fast float %775, 5.000000e-01
  %778 = fmul fast float %752, %776
  %779 = fmul fast float %755, %777
  %780 = fmul fast float %770, %778
  %781 = call float @dx.op.tertiary.f32(i32 46, float %771, float %779, float %780)  ; FMad(a,b,c)
  %782 = fmul fast float %769, %778
  %783 = call float @dx.op.tertiary.f32(i32 46, float %770, float %779, float %782)  ; FMad(a,b,c)
  %784 = fadd fast float %761, %781
  %785 = fadd fast float %764, %783
  %786 = icmp ugt i32 %735, 1
  %787 = icmp ugt i32 %733, 33554431
  %788 = or i1 %787, %786
  br i1 %788, label %789, label %814

; <label>:789                                     ; preds = %716
  %790 = add i32 %58, 228
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = lshr i32 %792, 16
  %794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %793)  ; LegacyF16ToF32(value)
  %795 = fmul fast float %757, %794
  %796 = call float @dx.op.unary.f32(i32 22, float %795)  ; Frc(value)
  %797 = mul nuw nsw i32 %735, %736
  %798 = uitofp i32 %797 to float
  %799 = fmul fast float %796, %798
  %800 = call float @dx.op.unary.f32(i32 27, float %799)  ; Round_ni(value)
  %801 = fptoui float %800 to i32
  %802 = urem i32 %801, %735
  %803 = udiv i32 %801, %736
  %804 = call float @dx.op.unary.f32(i32 22, float %784)  ; Frc(value)
  %805 = call float @dx.op.unary.f32(i32 22, float %785)  ; Frc(value)
  %806 = uitofp i32 %802 to float
  %807 = uitofp i32 %803 to float
  %808 = fadd fast float %804, %806
  %809 = fadd fast float %805, %807
  %810 = uitofp i32 %735 to float
  %811 = uitofp i32 %736 to float
  %812 = fdiv fast float %808, %810
  %813 = fdiv fast float %809, %811
  br label %814

; <label>:814                                     ; preds = %789, %716
  %815 = phi float [ %812, %789 ], [ %784, %716 ]
  %816 = phi float [ %813, %789 ], [ %785, %716 ]
  %817 = and i32 %710, 256
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %865, label %819

; <label>:819                                     ; preds = %814
  %820 = add i32 %58, 440
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = add i32 %822, 0
  %824 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %823, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %825 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %824, %dx.types.Handle %112, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %826 = extractvalue %dx.types.ResRet.f32 %825, 0
  %827 = add i32 %58, 100
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = shl i32 %829, 4
  %831 = and i32 %830, 32752
  %832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %831)  ; LegacyF16ToF32(value)
  %833 = lshr i32 %829, 7
  %834 = and i32 %833, 32752
  %835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %834)  ; LegacyF16ToF32(value)
  %836 = fsub fast float 1.000000e+00, %677
  %837 = call float @dx.op.binary.f32(i32 35, float %836, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %838 = bitcast float %677 to i32
  %839 = sitofp i32 %838 to float
  %840 = fadd fast float %839, 0xC1CFBF8940000000
  %841 = fmul fast float %835, %840
  %842 = fadd fast float %841, 0x41CFBF8940000000
  %843 = fptosi float %842 to i32
  %844 = bitcast i32 %843 to float
  %845 = bitcast float %837 to i32
  %846 = sitofp i32 %845 to float
  %847 = fadd fast float %846, 0xC1CFBF8940000000
  %848 = fmul fast float %847, %835
  %849 = fadd fast float %848, 0x41CFBF8940000000
  %850 = fptosi float %849 to i32
  %851 = bitcast i32 %850 to float
  %852 = fmul fast float %844, %832
  %853 = fmul fast float %851, %832
  %854 = fsub fast float %837, %852
  %855 = fadd fast float %853, %837
  %856 = call float @dx.op.unary.f32(i32 7, float %854)  ; Saturate(value)
  %857 = call float @dx.op.unary.f32(i32 7, float %855)  ; Saturate(value)
  %858 = fsub fast float %826, %856
  %859 = fsub fast float %857, %856
  %860 = bitcast float %859 to i32
  %861 = sub nsw i32 2129859010, %860
  %862 = bitcast i32 %861 to float
  %863 = fmul fast float %862, %858
  %864 = call float @dx.op.unary.f32(i32 7, float %863)  ; Saturate(value)
  br label %865

; <label>:865                                     ; preds = %819, %814
  %866 = phi float [ %864, %819 ], [ %677, %814 ]
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = and i32 %868, 128
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %887, label %871

; <label>:871                                     ; preds = %865
  %872 = add i32 %58, 424
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = add i32 %874, 0
  %876 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %875, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %877 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %876, %dx.types.Handle %112, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %878 = extractvalue %dx.types.ResRet.f32 %877, 0
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = and i32 %880, 524288
  %882 = icmp ne i32 %881, 0
  %883 = fcmp fast ogt float %878, 0x3FE0101020000000
  %884 = select i1 %883, float 1.000000e+00, float 0.000000e+00
  %885 = select i1 %882, float %884, float %878
  %886 = fmul fast float %885, %866
  br label %887

; <label>:887                                     ; preds = %871, %865
  %888 = phi float [ %886, %871 ], [ %866, %865 ]
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = and i32 %890, 16
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %1091, label %893

; <label>:893                                     ; preds = %887
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = add i32 %58, 376
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = add i32 %898, 0
  %900 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %899, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %901 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %900, %dx.types.Handle %111, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %902 = extractvalue %dx.types.ResRet.f32 %901, 0
  %903 = extractvalue %dx.types.ResRet.f32 %901, 1
  %904 = extractvalue %dx.types.ResRet.f32 %901, 2
  %905 = extractvalue %dx.types.ResRet.f32 %901, 3
  %906 = and i32 %895, 255
  %907 = uitofp i32 %906 to float
  %908 = lshr i32 %895, 8
  %909 = and i32 %908, 255
  %910 = uitofp i32 %909 to float
  %911 = fmul fast float %905, %907
  %912 = fadd fast float %911, %910
  %913 = fmul fast float %912, 0x3F70101000000000
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = and i32 %915, 512
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %926, label %918

; <label>:918                                     ; preds = %893
  %919 = add i32 %58, 460
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = add i32 %921, 0
  %923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %923, %dx.types.Handle %112, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %925 = extractvalue %dx.types.ResRet.f32 %924, 0
  br label %926

; <label>:926                                     ; preds = %918, %893
  %927 = phi float [ %925, %918 ], [ 1.000000e+00, %893 ]
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = and i32 %929, 33554432
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %1038, label %932

; <label>:932                                     ; preds = %926
  %933 = add i32 %58, 224
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = and i32 %935, 65535
  %937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %936)  ; LegacyF16ToF32(value)
  %938 = lshr i32 %935, 16
  %939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %938)  ; LegacyF16ToF32(value)
  %940 = add i32 %58, 228
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = and i32 %942, 65535
  %944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %943)  ; LegacyF16ToF32(value)
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = lshr i32 %946, 24
  %948 = uitofp i32 %947 to float
  %949 = fmul fast float %948, 0x3F70101020000000
  %950 = and i32 %946, 255
  %951 = uitofp i32 %950 to float
  %952 = fmul fast float %951, 0x3F70101020000000
  %953 = lshr i32 %946, 8
  %954 = and i32 %953, 255
  %955 = uitofp i32 %954 to float
  %956 = fmul fast float %955, 0x3F70101020000000
  %957 = lshr i32 %946, 16
  %958 = and i32 %957, 255
  %959 = uitofp i32 %958 to float
  %960 = fmul fast float %959, 0x3F70101020000000
  %961 = add i32 %58, 220
  %962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.i32 %962, 0
  %964 = lshr i32 %963, 24
  %965 = uitofp i32 %964 to float
  %966 = fmul fast float %965, 0x3F70101020000000
  %967 = and i32 %963, 255
  %968 = uitofp i32 %967 to float
  %969 = fmul fast float %968, 0x3F70101020000000
  %970 = lshr i32 %963, 8
  %971 = and i32 %970, 255
  %972 = uitofp i32 %971 to float
  %973 = fmul fast float %972, 0x3F70101020000000
  %974 = lshr i32 %963, 16
  %975 = and i32 %974, 255
  %976 = uitofp i32 %975 to float
  %977 = fmul fast float %976, 0x3F70101020000000
  %978 = bitcast float %902 to i32
  %979 = ashr i32 %978, 1
  %980 = sub nsw i32 1597463174, %979
  %981 = bitcast i32 %980 to float
  %982 = fmul fast float %902, 5.000000e-01
  %983 = fmul fast float %981, %981
  %984 = fmul fast float %983, %982
  %985 = fsub fast float 1.500000e+00, %984
  %986 = fmul fast float %981, %902
  %987 = fmul fast float %986, %985
  %988 = bitcast float %903 to i32
  %989 = ashr i32 %988, 1
  %990 = sub nsw i32 1597463174, %989
  %991 = bitcast i32 %990 to float
  %992 = fmul fast float %903, 5.000000e-01
  %993 = fmul fast float %991, %991
  %994 = fmul fast float %993, %992
  %995 = fsub fast float 1.500000e+00, %994
  %996 = fmul fast float %991, %903
  %997 = fmul fast float %996, %995
  %998 = bitcast float %904 to i32
  %999 = ashr i32 %998, 1
  %1000 = sub nsw i32 1597463174, %999
  %1001 = bitcast i32 %1000 to float
  %1002 = fmul fast float %904, 5.000000e-01
  %1003 = fmul fast float %1001, %1001
  %1004 = fmul fast float %1003, %1002
  %1005 = fsub fast float 1.500000e+00, %1004
  %1006 = fmul fast float %1001, %904
  %1007 = fmul fast float %1006, %1005
  %1008 = fsub fast float %987, %969
  %1009 = fsub fast float %997, %973
  %1010 = fsub fast float %1007, %977
  %1011 = fmul fast float %1008, %937
  %1012 = fmul fast float %1009, %939
  %1013 = fmul fast float %1010, %944
  %1014 = fadd fast float %1011, %952
  %1015 = fadd fast float %1012, %956
  %1016 = fadd fast float %1013, %960
  %1017 = call float @dx.op.unary.f32(i32 7, float %1014)  ; Saturate(value)
  %1018 = call float @dx.op.unary.f32(i32 7, float %1015)  ; Saturate(value)
  %1019 = call float @dx.op.unary.f32(i32 7, float %1016)  ; Saturate(value)
  %1020 = fmul fast float %1017, %1017
  %1021 = fmul fast float %1018, %1018
  %1022 = fmul fast float %1019, %1019
  %1023 = fsub fast float %1020, %902
  %1024 = fsub fast float %1021, %903
  %1025 = fsub fast float %1022, %904
  %1026 = fmul fast float %1023, %927
  %1027 = fmul fast float %1024, %927
  %1028 = fmul fast float %1025, %927
  %1029 = fadd fast float %1026, %902
  %1030 = fadd fast float %1027, %903
  %1031 = fadd fast float %1028, %904
  %1032 = fadd fast float %949, %913
  %1033 = fsub fast float %1032, %966
  %1034 = call float @dx.op.unary.f32(i32 7, float %1033)  ; Saturate(value)
  %1035 = fsub fast float %1034, %913
  %1036 = fmul fast float %1035, %927
  %1037 = fadd fast float %1036, %913
  br label %1091

; <label>:1038                                    ; preds = %926
  %1039 = and i32 %929, 134217728
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1075, label %1041

; <label>:1041                                    ; preds = %1038
  %1042 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %1043 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1044 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %1045 = fadd fast float %1042, -5.000000e-01
  %1046 = fadd fast float %1043, -5.000000e-01
  %1047 = fadd fast float %1044, -5.000000e-01
  %1048 = fmul fast float %1045, %927
  %1049 = fmul fast float %1046, %927
  %1050 = fmul fast float %1047, %927
  %1051 = fadd fast float %1048, 5.000000e-01
  %1052 = fadd fast float %1049, 5.000000e-01
  %1053 = fadd fast float %1050, 5.000000e-01
  %1054 = call float @dx.op.unary.f32(i32 24, float %902)  ; Sqrt(value)
  %1055 = call float @dx.op.unary.f32(i32 24, float %903)  ; Sqrt(value)
  %1056 = call float @dx.op.unary.f32(i32 24, float %904)  ; Sqrt(value)
  %1057 = fmul fast float %1051, 2.000000e+00
  %1058 = fsub fast float 1.000000e+00, %1057
  %1059 = fmul fast float %1058, %1054
  %1060 = fadd fast float %1059, %1057
  %1061 = fmul fast float %1060, %1054
  %1062 = fmul fast float %1052, 2.000000e+00
  %1063 = fsub fast float 1.000000e+00, %1062
  %1064 = fmul fast float %1063, %1055
  %1065 = fadd fast float %1064, %1062
  %1066 = fmul fast float %1065, %1055
  %1067 = fmul fast float %1053, 2.000000e+00
  %1068 = fsub fast float 1.000000e+00, %1067
  %1069 = fmul fast float %1068, %1056
  %1070 = fadd fast float %1069, %1067
  %1071 = fmul fast float %1070, %1056
  %1072 = fmul fast float %1061, %1061
  %1073 = fmul fast float %1066, %1066
  %1074 = fmul fast float %1071, %1071
  br label %1091

; <label>:1075                                    ; preds = %1038
  %1076 = fmul fast float %298, %298
  %1077 = fmul fast float %302, %302
  %1078 = fmul fast float %306, %306
  %1079 = fadd fast float %1076, -1.000000e+00
  %1080 = fadd fast float %1077, -1.000000e+00
  %1081 = fadd fast float %1078, -1.000000e+00
  %1082 = fmul fast float %927, %1079
  %1083 = fmul fast float %927, %1080
  %1084 = fmul fast float %927, %1081
  %1085 = fadd fast float %1082, 1.000000e+00
  %1086 = fadd fast float %1083, 1.000000e+00
  %1087 = fadd fast float %1084, 1.000000e+00
  %1088 = fmul fast float %1085, %902
  %1089 = fmul fast float %1086, %903
  %1090 = fmul fast float %1087, %904
  br label %1091

; <label>:1091                                    ; preds = %1075, %1041, %932, %887
  %1092 = phi float [ %1037, %932 ], [ %913, %1041 ], [ %913, %1075 ], [ 0x3FA23C0BE0000000, %887 ]
  %1093 = phi float [ %1029, %932 ], [ %1072, %1041 ], [ %1088, %1075 ], [ 1.000000e+00, %887 ]
  %1094 = phi float [ %1030, %932 ], [ %1073, %1041 ], [ %1089, %1075 ], [ 1.000000e+00, %887 ]
  %1095 = phi float [ %1031, %932 ], [ %1074, %1041 ], [ %1090, %1075 ], [ 1.000000e+00, %887 ]
  %1096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.i32 %1096, 1
  %1098 = and i32 %1097, 1
  %1099 = icmp ne i32 %1098, 0
  %1100 = add i32 %58, 356
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = and i32 %1102, 32
  %1104 = icmp ne i32 %1103, 0
  %1105 = and i1 %1099, %1104
  %1106 = select i1 %1105, float 1.000000e+00, float %1093
  %1107 = select i1 %1105, float 0x3FD3333340000000, float %1094
  %1108 = select i1 %1105, float 0x3FD3333340000000, float %1095
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = and i32 %1110, 32
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1185, label %1113

; <label>:1113                                    ; preds = %1091
  %1114 = add i32 %58, 92
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = add i32 %58, 392
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1117, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = add i32 %1119, 0
  %1121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1120, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1122 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1121, %dx.types.Handle %111, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1123 = extractvalue %dx.types.ResRet.f32 %1122, 0
  %1124 = extractvalue %dx.types.ResRet.f32 %1122, 1
  %1125 = extractvalue %dx.types.ResRet.f32 %1122, 2
  %1126 = extractvalue %dx.types.ResRet.f32 %1122, 3
  %1127 = and i32 %1116, 255
  %1128 = uitofp i32 %1127 to float
  %1129 = lshr i32 %1116, 8
  %1130 = and i32 %1129, 255
  %1131 = uitofp i32 %1130 to float
  %1132 = lshr i32 %1116, 16
  %1133 = and i32 %1132, 255
  %1134 = uitofp i32 %1133 to float
  %1135 = fmul fast float %1134, 0x3F70101000000000
  %1136 = fmul fast float %1123, %1128
  %1137 = fadd fast float %1136, %1131
  %1138 = fmul fast float %1137, 0x3F70101000000000
  %1139 = fadd fast float %1124, -5.000000e-01
  %1140 = fadd fast float %1126, -5.000000e-01
  %1141 = fmul fast float %1139, %1135
  %1142 = fmul fast float %1140, %1135
  %1143 = fadd fast float %1141, 5.000000e-01
  %1144 = fadd fast float %1142, 5.000000e-01
  %1145 = fmul fast float %1143, 2.000000e+00
  %1146 = fadd fast float %1145, -1.000000e+00
  %1147 = fmul fast float %1144, 2.000000e+00
  %1148 = fadd fast float %1147, -1.000000e+00
  %1149 = fadd fast float %1146, %1148
  %1150 = fmul fast float %1149, 5.000000e-01
  %1151 = fsub fast float %1146, %1148
  %1152 = fmul fast float %1151, 5.000000e-01
  %1153 = call float @dx.op.unary.f32(i32 6, float %1150)  ; FAbs(value)
  %1154 = fsub fast float 1.000000e+00, %1153
  %1155 = call float @dx.op.unary.f32(i32 6, float %1152)  ; FAbs(value)
  %1156 = fsub fast float %1154, %1155
  %1157 = call float @dx.op.dot3.f32(i32 55, float %1150, float %1152, float %1156, float %1150, float %1152, float %1156)  ; Dot3(ax,ay,az,bx,by,bz)
  %1158 = call float @dx.op.unary.f32(i32 25, float %1157)  ; Rsqrt(value)
  %1159 = fmul fast float %1150, %1158
  %1160 = fmul fast float %1152, %1158
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 67108864
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1181, label %1165

; <label>:1165                                    ; preds = %1113
  %1166 = add i32 %58, 280
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = and i32 %1168, 65535
  %1170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1169)  ; LegacyF16ToF32(value)
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = and i32 %1172, 65535
  %1174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1173)  ; LegacyF16ToF32(value)
  %1175 = lshr i32 %1168, 16
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = fsub fast float %1138, %1176
  %1178 = fmul fast float %1177, %1170
  %1179 = fadd fast float %1178, %1174
  %1180 = call float @dx.op.unary.f32(i32 7, float %1179)  ; Saturate(value)
  br label %1181

; <label>:1181                                    ; preds = %1165, %1113
  %1182 = phi float [ %1180, %1165 ], [ %1138, %1113 ]
  %1183 = call float @dx.op.dot2.f32(i32 54, float %1159, float %1160, float %719, float %720)  ; Dot2(ax,ay,bx,by)
  %1184 = call float @dx.op.dot2.f32(i32 54, float %1159, float %1160, float %721, float %722)  ; Dot2(ax,ay,bx,by)
  br label %1185

; <label>:1185                                    ; preds = %1181, %1091
  %1186 = phi float [ %1182, %1181 ], [ 0x3FD6666660000000, %1091 ]
  %1187 = phi float [ %1183, %1181 ], [ 0.000000e+00, %1091 ]
  %1188 = phi float [ %1184, %1181 ], [ 0.000000e+00, %1091 ]
  %1189 = phi float [ %1125, %1181 ], [ 1.000000e+00, %1091 ]
  %1190 = add i32 %58, 160
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = lshr i32 %1192, 22
  %1194 = shl nuw nsw i32 %1193, 5
  %1195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1194)  ; LegacyF16ToF32(value)
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = and i32 %1197, 64
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1233, label %1200

; <label>:1200                                    ; preds = %1185
  %1201 = add i32 %58, 408
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = add i32 %1203, 0
  %1205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = and i32 %1207, 131072
  %1209 = icmp eq i32 %1208, 0
  %1210 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1205, %dx.types.Handle %111, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = extractvalue %dx.types.ResRet.f32 %1210, 1
  %1213 = extractvalue %dx.types.ResRet.f32 %1210, 2
  %1214 = fmul fast float %1211, %286
  %1215 = fmul fast float %1212, %289
  %1216 = fmul fast float %1213, %292
  br i1 %1209, label %1223, label %1217

; <label>:1217                                    ; preds = %1200
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 0
  %1220 = fmul fast float %1219, %1214
  %1221 = fmul fast float %1219, %1215
  %1222 = fmul fast float %1219, %1216
  br label %1223

; <label>:1223                                    ; preds = %1217, %1200
  %1224 = phi float [ %1220, %1217 ], [ %1214, %1200 ]
  %1225 = phi float [ %1221, %1217 ], [ %1215, %1200 ]
  %1226 = phi float [ %1222, %1217 ], [ %1216, %1200 ]
  %1227 = fmul fast float %1224, %1195
  %1228 = select i1 %266, float %1227, float %1224
  %1229 = call float @dx.op.dot3.f32(i32 55, float %1228, float %1225, float %1226, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1230 = select i1 %266, float 0.000000e+00, float %1224
  %1231 = select i1 %266, float %1229, float %1225
  %1232 = select i1 %266, float 0.000000e+00, float %1226
  br label %1233

; <label>:1233                                    ; preds = %1223, %1185
  %1234 = phi float [ %1230, %1223 ], [ 0.000000e+00, %1185 ]
  %1235 = phi float [ %1231, %1223 ], [ 0.000000e+00, %1185 ]
  %1236 = phi float [ %1232, %1223 ], [ 0.000000e+00, %1185 ]
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = and i32 %1238, 10240
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %1285, label %1241

; <label>:1241                                    ; preds = %1233
  %1242 = add i32 %58, 476
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = add i32 %1244, 0
  %1246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1245, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1247 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1246, %dx.types.Handle %112, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 1
  %1249 = extractvalue %dx.types.ResRet.f32 %1247, 3
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = and i32 %1251, 1048576
  %1253 = icmp ne i32 %1252, 0
  %1254 = and i32 %1251, 8192
  %1255 = icmp eq i32 %1254, 0
  br i1 %1255, label %1271, label %1256

; <label>:1256                                    ; preds = %1241
  %1257 = extractvalue %dx.types.ResRet.f32 %1247, 2
  %1258 = select i1 %1253, float %1257, float %1248
  %1259 = extractvalue %dx.types.ResRet.f32 %1247, 0
  %1260 = select i1 %1253, float %1259, float %1248
  %1261 = add i32 %58, 96
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = lshr i32 %1263, 16
  %1265 = and i32 %1264, 255
  %1266 = uitofp i32 %1265 to float
  %1267 = fmul fast float %1266, 0x3F80101020000000
  %1268 = fmul fast float %1267, %1260
  %1269 = fmul fast float %1267, %1248
  %1270 = fmul fast float %1267, %1258
  br label %1271

; <label>:1271                                    ; preds = %1256, %1241
  %1272 = phi float [ %1268, %1256 ], [ 0.000000e+00, %1241 ]
  %1273 = phi float [ %1269, %1256 ], [ 0.000000e+00, %1241 ]
  %1274 = phi float [ %1270, %1256 ], [ 0.000000e+00, %1241 ]
  %1275 = and i32 %1251, 2048
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1285, label %1277

; <label>:1277                                    ; preds = %1271
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = shl i32 %1279, 4
  %1281 = and i32 %1280, 32752
  %1282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1281)  ; LegacyF16ToF32(value)
  %1283 = fmul fast float %1282, %1249
  %1284 = call float @dx.op.binary.f32(i32 35, float %1283, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1285

; <label>:1285                                    ; preds = %1277, %1271, %1233
  %1286 = phi float [ %1272, %1277 ], [ %1272, %1271 ], [ 0.000000e+00, %1233 ]
  %1287 = phi float [ %1273, %1277 ], [ %1273, %1271 ], [ 0.000000e+00, %1233 ]
  %1288 = phi float [ %1274, %1277 ], [ %1274, %1271 ], [ 0.000000e+00, %1233 ]
  %1289 = phi float [ %1284, %1277 ], [ 0x3F70101020000000, %1271 ], [ 0x3F70101020000000, %1233 ]
  %1290 = add i32 %58, 96
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = and i32 %1292, 255
  %1294 = uitofp i32 %1293 to float
  %1295 = lshr i32 %1292, 8
  %1296 = and i32 %1295, 255
  %1297 = uitofp i32 %1296 to float
  %1298 = call float @dx.op.dot3.f32(i32 55, float %1106, float %1107, float %1108, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1299 = fmul fast float %1297, %1298
  %1300 = fadd fast float %1299, %1294
  %1301 = fmul fast float %1300, 0x3F70101020000000
  %1302 = call float @dx.op.unary.f32(i32 7, float %1301)  ; Saturate(value)
  br label %1303

; <label>:1303                                    ; preds = %1285, %701
  %1304 = phi float [ 0.000000e+00, %701 ], [ %1187, %1285 ]
  %1305 = phi float [ 0.000000e+00, %701 ], [ %1188, %1285 ]
  %1306 = phi float [ 0.000000e+00, %701 ], [ %1106, %1285 ]
  %1307 = phi float [ 0.000000e+00, %701 ], [ %1107, %1285 ]
  %1308 = phi float [ 0.000000e+00, %701 ], [ %1108, %1285 ]
  %1309 = phi float [ 0.000000e+00, %701 ], [ %1234, %1285 ]
  %1310 = phi float [ 0.000000e+00, %701 ], [ %1235, %1285 ]
  %1311 = phi float [ 0.000000e+00, %701 ], [ %1236, %1285 ]
  %1312 = phi float [ 0.000000e+00, %701 ], [ %1286, %1285 ]
  %1313 = phi float [ 0.000000e+00, %701 ], [ %1287, %1285 ]
  %1314 = phi float [ 0.000000e+00, %701 ], [ %1288, %1285 ]
  %1315 = phi float [ 0.000000e+00, %701 ], [ %1092, %1285 ]
  %1316 = phi float [ 0.000000e+00, %701 ], [ %888, %1285 ]
  %1317 = phi float [ 0.000000e+00, %701 ], [ %1186, %1285 ]
  %1318 = phi float [ 0.000000e+00, %701 ], [ %1189, %1285 ]
  %1319 = phi float [ 0.000000e+00, %701 ], [ %1289, %1285 ]
  %1320 = phi float [ 0.000000e+00, %701 ], [ %1302, %1285 ]
  br i1 %649, label %2134, label %1321

; <label>:1321                                    ; preds = %1303
  %1322 = icmp ult i32 %707, 2
  %1323 = add i32 %58, 40
  %1324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.i32 %1324, 0
  %1326 = add i32 %58, 44
  %1327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.i32 %1327, 0
  %1329 = or i32 %1328, %1325
  %1330 = icmp eq i32 %1329, 0
  br i1 %1330, label %2134, label %1331

; <label>:1331                                    ; preds = %1321
  %1332 = and i32 %1325, 262144
  %1333 = icmp ne i32 %1332, 0
  %1334 = select i1 %1333, float %65, float 1.000000e+00
  %1335 = select i1 %1333, float %66, float 0.000000e+00
  %1336 = select i1 %1333, float %67, float 0.000000e+00
  %1337 = select i1 %1333, float %68, float 1.000000e+00
  %1338 = select i1 %1333, float %69, float %97
  %1339 = select i1 %1333, float %70, float %98
  %1340 = add i32 %58, 300
  %1341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.i32 %1341, 0
  %1343 = lshr i32 %1342, 16
  %1344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1343)  ; LegacyF16ToF32(value)
  %1345 = fmul fast float %1344, 0x3F50624DE0000000
  %1346 = add i32 %58, 104
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1346, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = lshr i32 %1348, 16
  %1350 = and i32 %1349, 255
  %1351 = lshr i32 %1348, 24
  %1352 = add i32 %58, 308
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = and i32 %1354, 65535
  %1356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1355)  ; LegacyF16ToF32(value)
  %1357 = lshr i32 %1354, 16
  %1358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1357)  ; LegacyF16ToF32(value)
  %1359 = add i32 %58, 48
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1359, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = lshr i32 %1361, 22
  %1363 = shl nuw nsw i32 %1362, 5
  %1364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1363)  ; LegacyF16ToF32(value)
  %1365 = shl i32 %1361, 4
  %1366 = and i32 %1365, 32752
  %1367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1366)  ; LegacyF16ToF32(value)
  %1368 = lshr i32 %1361, 7
  %1369 = and i32 %1368, 32752
  %1370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1369)  ; LegacyF16ToF32(value)
  %1371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1372 = extractvalue %dx.types.CBufRet.f32 %1371, 3
  %1373 = fmul fast float %1372, 1.000000e+03
  %1374 = fmul fast float %1373, %428
  %1375 = call float @dx.op.unary.f32(i32 22, float %1374)  ; Frc(value)
  %1376 = fadd fast float %1375, %416
  %1377 = fmul fast float %1373, %430
  %1378 = call float @dx.op.unary.f32(i32 22, float %1377)  ; Frc(value)
  %1379 = fadd fast float %1378, %417
  %1380 = fmul fast float %1345, %1373
  %1381 = call float @dx.op.unary.f32(i32 22, float %1380)  ; Frc(value)
  %1382 = fmul fast float %1381, 0x401921FB60000000
  %1383 = fadd fast float %1382, %1364
  %1384 = call float @dx.op.unary.f32(i32 13, float %1383)  ; Sin(value)
  %1385 = call float @dx.op.unary.f32(i32 12, float %1383)  ; Cos(value)
  %1386 = fsub fast float -0.000000e+00, %1384
  %1387 = fadd fast float %1338, -5.000000e-01
  %1388 = fadd fast float %1339, -5.000000e-01
  %1389 = fmul fast float %1356, %1387
  %1390 = fmul fast float %1358, %1388
  %1391 = fadd fast float %1389, 5.000000e-01
  %1392 = fadd fast float %1390, 5.000000e-01
  %1393 = fmul fast float %1367, %1391
  %1394 = fmul fast float %1370, %1392
  %1395 = fmul fast float %1385, %1393
  %1396 = call float @dx.op.tertiary.f32(i32 46, float %1386, float %1394, float %1395)  ; FMad(a,b,c)
  %1397 = fmul fast float %1384, %1393
  %1398 = call float @dx.op.tertiary.f32(i32 46, float %1385, float %1394, float %1397)  ; FMad(a,b,c)
  %1399 = fadd fast float %1376, %1396
  %1400 = fadd fast float %1379, %1398
  %1401 = icmp ugt i32 %1350, 1
  %1402 = icmp ugt i32 %1348, 33554431
  %1403 = or i1 %1402, %1401
  br i1 %1403, label %1404, label %1429

; <label>:1404                                    ; preds = %1331
  %1405 = add i32 %58, 244
  %1406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1405, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.i32 %1406, 0
  %1408 = lshr i32 %1407, 16
  %1409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1408)  ; LegacyF16ToF32(value)
  %1410 = fmul fast float %1372, %1409
  %1411 = call float @dx.op.unary.f32(i32 22, float %1410)  ; Frc(value)
  %1412 = mul nuw nsw i32 %1350, %1351
  %1413 = uitofp i32 %1412 to float
  %1414 = fmul fast float %1411, %1413
  %1415 = call float @dx.op.unary.f32(i32 27, float %1414)  ; Round_ni(value)
  %1416 = fptoui float %1415 to i32
  %1417 = urem i32 %1416, %1350
  %1418 = udiv i32 %1416, %1351
  %1419 = call float @dx.op.unary.f32(i32 22, float %1399)  ; Frc(value)
  %1420 = call float @dx.op.unary.f32(i32 22, float %1400)  ; Frc(value)
  %1421 = uitofp i32 %1417 to float
  %1422 = uitofp i32 %1418 to float
  %1423 = fadd fast float %1419, %1421
  %1424 = fadd fast float %1420, %1422
  %1425 = uitofp i32 %1350 to float
  %1426 = uitofp i32 %1351 to float
  %1427 = fdiv fast float %1423, %1425
  %1428 = fdiv fast float %1424, %1426
  br label %1429

; <label>:1429                                    ; preds = %1404, %1331
  %1430 = phi float [ %1427, %1404 ], [ %1399, %1331 ]
  %1431 = phi float [ %1428, %1404 ], [ %1400, %1331 ]
  %1432 = and i32 %1325, 256
  %1433 = icmp eq i32 %1432, 0
  br i1 %1433, label %1480, label %1434

; <label>:1434                                    ; preds = %1429
  %1435 = add i32 %58, 444
  %1436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1435, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.i32 %1436, 0
  %1438 = add i32 %1437, 0
  %1439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1438, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1440 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1439, %dx.types.Handle %112, float %1430, float %1431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1441 = extractvalue %dx.types.ResRet.f32 %1440, 0
  %1442 = add i32 %58, 116
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1442, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = shl i32 %1444, 4
  %1446 = and i32 %1445, 32752
  %1447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1446)  ; LegacyF16ToF32(value)
  %1448 = lshr i32 %1444, 7
  %1449 = and i32 %1448, 32752
  %1450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1449)  ; LegacyF16ToF32(value)
  %1451 = fsub fast float 1.000000e+00, %704
  %1452 = call float @dx.op.binary.f32(i32 35, float %1451, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1453 = bitcast float %704 to i32
  %1454 = sitofp i32 %1453 to float
  %1455 = fadd fast float %1454, 0xC1CFBF8940000000
  %1456 = fmul fast float %1450, %1455
  %1457 = fadd fast float %1456, 0x41CFBF8940000000
  %1458 = fptosi float %1457 to i32
  %1459 = bitcast i32 %1458 to float
  %1460 = bitcast float %1452 to i32
  %1461 = sitofp i32 %1460 to float
  %1462 = fadd fast float %1461, 0xC1CFBF8940000000
  %1463 = fmul fast float %1462, %1450
  %1464 = fadd fast float %1463, 0x41CFBF8940000000
  %1465 = fptosi float %1464 to i32
  %1466 = bitcast i32 %1465 to float
  %1467 = fmul fast float %1459, %1447
  %1468 = fmul fast float %1466, %1447
  %1469 = fsub fast float %1452, %1467
  %1470 = fadd fast float %1468, %1452
  %1471 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  %1472 = call float @dx.op.unary.f32(i32 7, float %1470)  ; Saturate(value)
  %1473 = fsub fast float %1441, %1471
  %1474 = fsub fast float %1472, %1471
  %1475 = bitcast float %1474 to i32
  %1476 = sub nsw i32 2129859010, %1475
  %1477 = bitcast i32 %1476 to float
  %1478 = fmul fast float %1477, %1473
  %1479 = call float @dx.op.unary.f32(i32 7, float %1478)  ; Saturate(value)
  br label %1480

; <label>:1480                                    ; preds = %1434, %1429
  %1481 = phi float [ %1479, %1434 ], [ %704, %1429 ]
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = and i32 %1483, 128
  %1485 = icmp eq i32 %1484, 0
  br i1 %1485, label %1502, label %1486

; <label>:1486                                    ; preds = %1480
  %1487 = add i32 %58, 428
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1487, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = add i32 %1489, 0
  %1491 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1490, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1492 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1491, %dx.types.Handle %112, float %1430, float %1431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1493 = extractvalue %dx.types.ResRet.f32 %1492, 0
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = and i32 %1495, 524288
  %1497 = icmp ne i32 %1496, 0
  %1498 = fcmp fast ogt float %1493, 0x3FE0101020000000
  %1499 = select i1 %1498, float 1.000000e+00, float 0.000000e+00
  %1500 = select i1 %1497, float %1499, float %1493
  %1501 = fmul fast float %1500, %1481
  br label %1502

; <label>:1502                                    ; preds = %1486, %1480
  %1503 = phi float [ %1501, %1486 ], [ %1481, %1480 ]
  %1504 = fcmp fast ult float %1503, 0x3F70101020000000
  br i1 %1504, label %2134, label %1505

; <label>:1505                                    ; preds = %1502
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = and i32 %1507, 16
  %1509 = icmp eq i32 %1508, 0
  br i1 %1509, label %1708, label %1510

; <label>:1510                                    ; preds = %1505
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1346, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = add i32 %58, 380
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1513, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = add i32 %1515, 0
  %1517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1516, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1518 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1517, %dx.types.Handle %111, float %1430, float %1431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1519 = extractvalue %dx.types.ResRet.f32 %1518, 0
  %1520 = extractvalue %dx.types.ResRet.f32 %1518, 1
  %1521 = extractvalue %dx.types.ResRet.f32 %1518, 2
  %1522 = extractvalue %dx.types.ResRet.f32 %1518, 3
  %1523 = and i32 %1512, 255
  %1524 = uitofp i32 %1523 to float
  %1525 = lshr i32 %1512, 8
  %1526 = and i32 %1525, 255
  %1527 = uitofp i32 %1526 to float
  %1528 = fmul fast float %1522, %1524
  %1529 = fadd fast float %1528, %1527
  %1530 = fmul fast float %1529, 0x3F70101000000000
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 512
  %1534 = icmp eq i32 %1533, 0
  br i1 %1534, label %1543, label %1535

; <label>:1535                                    ; preds = %1510
  %1536 = add i32 %58, 464
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = add i32 %1538, 0
  %1540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1540, %dx.types.Handle %112, float %1430, float %1431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1542 = extractvalue %dx.types.ResRet.f32 %1541, 0
  br label %1543

; <label>:1543                                    ; preds = %1535, %1510
  %1544 = phi float [ %1542, %1535 ], [ 1.000000e+00, %1510 ]
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = and i32 %1546, 33554432
  %1548 = icmp eq i32 %1547, 0
  br i1 %1548, label %1655, label %1549

; <label>:1549                                    ; preds = %1543
  %1550 = add i32 %58, 240
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = and i32 %1552, 65535
  %1554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1553)  ; LegacyF16ToF32(value)
  %1555 = lshr i32 %1552, 16
  %1556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1555)  ; LegacyF16ToF32(value)
  %1557 = add i32 %58, 244
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1557, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 65535
  %1561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1560)  ; LegacyF16ToF32(value)
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = lshr i32 %1563, 24
  %1565 = uitofp i32 %1564 to float
  %1566 = fmul fast float %1565, 0x3F70101020000000
  %1567 = and i32 %1563, 255
  %1568 = uitofp i32 %1567 to float
  %1569 = fmul fast float %1568, 0x3F70101020000000
  %1570 = lshr i32 %1563, 8
  %1571 = and i32 %1570, 255
  %1572 = uitofp i32 %1571 to float
  %1573 = fmul fast float %1572, 0x3F70101020000000
  %1574 = lshr i32 %1563, 16
  %1575 = and i32 %1574, 255
  %1576 = uitofp i32 %1575 to float
  %1577 = fmul fast float %1576, 0x3F70101020000000
  %1578 = add i32 %58, 236
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = lshr i32 %1580, 24
  %1582 = uitofp i32 %1581 to float
  %1583 = fmul fast float %1582, 0x3F70101020000000
  %1584 = and i32 %1580, 255
  %1585 = uitofp i32 %1584 to float
  %1586 = fmul fast float %1585, 0x3F70101020000000
  %1587 = lshr i32 %1580, 8
  %1588 = and i32 %1587, 255
  %1589 = uitofp i32 %1588 to float
  %1590 = fmul fast float %1589, 0x3F70101020000000
  %1591 = lshr i32 %1580, 16
  %1592 = and i32 %1591, 255
  %1593 = uitofp i32 %1592 to float
  %1594 = fmul fast float %1593, 0x3F70101020000000
  %1595 = bitcast float %1519 to i32
  %1596 = ashr i32 %1595, 1
  %1597 = sub nsw i32 1597463174, %1596
  %1598 = bitcast i32 %1597 to float
  %1599 = fmul fast float %1519, 5.000000e-01
  %1600 = fmul fast float %1598, %1598
  %1601 = fmul fast float %1600, %1599
  %1602 = fsub fast float 1.500000e+00, %1601
  %1603 = fmul fast float %1598, %1519
  %1604 = fmul fast float %1603, %1602
  %1605 = bitcast float %1520 to i32
  %1606 = ashr i32 %1605, 1
  %1607 = sub nsw i32 1597463174, %1606
  %1608 = bitcast i32 %1607 to float
  %1609 = fmul fast float %1520, 5.000000e-01
  %1610 = fmul fast float %1608, %1608
  %1611 = fmul fast float %1610, %1609
  %1612 = fsub fast float 1.500000e+00, %1611
  %1613 = fmul fast float %1608, %1520
  %1614 = fmul fast float %1613, %1612
  %1615 = bitcast float %1521 to i32
  %1616 = ashr i32 %1615, 1
  %1617 = sub nsw i32 1597463174, %1616
  %1618 = bitcast i32 %1617 to float
  %1619 = fmul fast float %1521, 5.000000e-01
  %1620 = fmul fast float %1618, %1618
  %1621 = fmul fast float %1620, %1619
  %1622 = fsub fast float 1.500000e+00, %1621
  %1623 = fmul fast float %1618, %1521
  %1624 = fmul fast float %1623, %1622
  %1625 = fsub fast float %1604, %1586
  %1626 = fsub fast float %1614, %1590
  %1627 = fsub fast float %1624, %1594
  %1628 = fmul fast float %1625, %1554
  %1629 = fmul fast float %1626, %1556
  %1630 = fmul fast float %1627, %1561
  %1631 = fadd fast float %1628, %1569
  %1632 = fadd fast float %1629, %1573
  %1633 = fadd fast float %1630, %1577
  %1634 = call float @dx.op.unary.f32(i32 7, float %1631)  ; Saturate(value)
  %1635 = call float @dx.op.unary.f32(i32 7, float %1632)  ; Saturate(value)
  %1636 = call float @dx.op.unary.f32(i32 7, float %1633)  ; Saturate(value)
  %1637 = fmul fast float %1634, %1634
  %1638 = fmul fast float %1635, %1635
  %1639 = fmul fast float %1636, %1636
  %1640 = fsub fast float %1637, %1519
  %1641 = fsub fast float %1638, %1520
  %1642 = fsub fast float %1639, %1521
  %1643 = fmul fast float %1640, %1544
  %1644 = fmul fast float %1641, %1544
  %1645 = fmul fast float %1642, %1544
  %1646 = fadd fast float %1643, %1519
  %1647 = fadd fast float %1644, %1520
  %1648 = fadd fast float %1645, %1521
  %1649 = fadd fast float %1566, %1530
  %1650 = fsub fast float %1649, %1583
  %1651 = call float @dx.op.unary.f32(i32 7, float %1650)  ; Saturate(value)
  %1652 = fsub fast float %1651, %1530
  %1653 = fmul fast float %1652, %1544
  %1654 = fadd fast float %1653, %1530
  br label %1708

; <label>:1655                                    ; preds = %1543
  %1656 = and i32 %1546, 134217728
  %1657 = icmp eq i32 %1656, 0
  br i1 %1657, label %1692, label %1658

; <label>:1658                                    ; preds = %1655
  %1659 = call float @dx.op.unary.f32(i32 24, float %404)  ; Sqrt(value)
  %1660 = call float @dx.op.unary.f32(i32 24, float %405)  ; Sqrt(value)
  %1661 = call float @dx.op.unary.f32(i32 24, float %406)  ; Sqrt(value)
  %1662 = fadd fast float %1659, -5.000000e-01
  %1663 = fadd fast float %1660, -5.000000e-01
  %1664 = fadd fast float %1661, -5.000000e-01
  %1665 = fmul fast float %1662, %1544
  %1666 = fmul fast float %1663, %1544
  %1667 = fmul fast float %1664, %1544
  %1668 = fadd fast float %1665, 5.000000e-01
  %1669 = fadd fast float %1666, 5.000000e-01
  %1670 = fadd fast float %1667, 5.000000e-01
  %1671 = call float @dx.op.unary.f32(i32 24, float %1519)  ; Sqrt(value)
  %1672 = call float @dx.op.unary.f32(i32 24, float %1520)  ; Sqrt(value)
  %1673 = call float @dx.op.unary.f32(i32 24, float %1521)  ; Sqrt(value)
  %1674 = fmul fast float %1668, 2.000000e+00
  %1675 = fsub fast float 1.000000e+00, %1674
  %1676 = fmul fast float %1675, %1671
  %1677 = fadd fast float %1676, %1674
  %1678 = fmul fast float %1677, %1671
  %1679 = fmul fast float %1669, 2.000000e+00
  %1680 = fsub fast float 1.000000e+00, %1679
  %1681 = fmul fast float %1680, %1672
  %1682 = fadd fast float %1681, %1679
  %1683 = fmul fast float %1682, %1672
  %1684 = fmul fast float %1670, 2.000000e+00
  %1685 = fsub fast float 1.000000e+00, %1684
  %1686 = fmul fast float %1685, %1673
  %1687 = fadd fast float %1686, %1684
  %1688 = fmul fast float %1687, %1673
  %1689 = fmul fast float %1678, %1678
  %1690 = fmul fast float %1683, %1683
  %1691 = fmul fast float %1688, %1688
  br label %1708

; <label>:1692                                    ; preds = %1655
  %1693 = fmul fast float %404, %404
  %1694 = fmul fast float %405, %405
  %1695 = fmul fast float %406, %406
  %1696 = fadd fast float %1693, -1.000000e+00
  %1697 = fadd fast float %1694, -1.000000e+00
  %1698 = fadd fast float %1695, -1.000000e+00
  %1699 = fmul fast float %1544, %1696
  %1700 = fmul fast float %1544, %1697
  %1701 = fmul fast float %1544, %1698
  %1702 = fadd fast float %1699, 1.000000e+00
  %1703 = fadd fast float %1700, 1.000000e+00
  %1704 = fadd fast float %1701, 1.000000e+00
  %1705 = fmul fast float %1702, %1519
  %1706 = fmul fast float %1703, %1520
  %1707 = fmul fast float %1704, %1521
  br label %1708

; <label>:1708                                    ; preds = %1692, %1658, %1549, %1505
  %1709 = phi float [ %1654, %1549 ], [ %1530, %1658 ], [ %1530, %1692 ], [ 0x3FA23C0BE0000000, %1505 ]
  %1710 = phi float [ %1646, %1549 ], [ %1689, %1658 ], [ %1705, %1692 ], [ 1.000000e+00, %1505 ]
  %1711 = phi float [ %1647, %1549 ], [ %1690, %1658 ], [ %1706, %1692 ], [ 1.000000e+00, %1505 ]
  %1712 = phi float [ %1648, %1549 ], [ %1691, %1658 ], [ %1707, %1692 ], [ 1.000000e+00, %1505 ]
  %1713 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1714 = extractvalue %dx.types.CBufRet.i32 %1713, 1
  %1715 = and i32 %1714, 1
  %1716 = icmp ne i32 %1715, 0
  %1717 = add i32 %58, 356
  %1718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1717, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.i32 %1718, 0
  %1720 = and i32 %1719, 32
  %1721 = icmp ne i32 %1720, 0
  %1722 = and i1 %1716, %1721
  %1723 = select i1 %1722, float 1.000000e+00, float %1710
  %1724 = select i1 %1722, float 0x3FD3333340000000, float %1711
  %1725 = select i1 %1722, float 0x3FD3333340000000, float %1712
  %1726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1727 = extractvalue %dx.types.ResRet.i32 %1726, 0
  %1728 = and i32 %1727, 32
  %1729 = icmp eq i32 %1728, 0
  br i1 %1729, label %1802, label %1730

; <label>:1730                                    ; preds = %1708
  %1731 = add i32 %58, 108
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = add i32 %58, 396
  %1735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1734, i32 undef)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.i32 %1735, 0
  %1737 = add i32 %1736, 0
  %1738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1737, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1739 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1738, %dx.types.Handle %111, float %1430, float %1431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1740 = extractvalue %dx.types.ResRet.f32 %1739, 0
  %1741 = extractvalue %dx.types.ResRet.f32 %1739, 1
  %1742 = extractvalue %dx.types.ResRet.f32 %1739, 2
  %1743 = extractvalue %dx.types.ResRet.f32 %1739, 3
  %1744 = and i32 %1733, 255
  %1745 = uitofp i32 %1744 to float
  %1746 = lshr i32 %1733, 8
  %1747 = and i32 %1746, 255
  %1748 = uitofp i32 %1747 to float
  %1749 = lshr i32 %1733, 16
  %1750 = and i32 %1749, 255
  %1751 = uitofp i32 %1750 to float
  %1752 = fmul fast float %1751, 0x3F70101000000000
  %1753 = fmul fast float %1740, %1745
  %1754 = fadd fast float %1753, %1748
  %1755 = fmul fast float %1754, 0x3F70101000000000
  %1756 = fadd fast float %1741, -5.000000e-01
  %1757 = fadd fast float %1743, -5.000000e-01
  %1758 = fmul fast float %1756, %1752
  %1759 = fmul fast float %1757, %1752
  %1760 = fadd fast float %1758, 5.000000e-01
  %1761 = fadd fast float %1759, 5.000000e-01
  %1762 = fmul fast float %1760, 2.000000e+00
  %1763 = fadd fast float %1762, -1.000000e+00
  %1764 = fmul fast float %1761, 2.000000e+00
  %1765 = fadd fast float %1764, -1.000000e+00
  %1766 = fadd fast float %1763, %1765
  %1767 = fmul fast float %1766, 5.000000e-01
  %1768 = fsub fast float %1763, %1765
  %1769 = fmul fast float %1768, 5.000000e-01
  %1770 = call float @dx.op.unary.f32(i32 6, float %1767)  ; FAbs(value)
  %1771 = fsub fast float 1.000000e+00, %1770
  %1772 = call float @dx.op.unary.f32(i32 6, float %1769)  ; FAbs(value)
  %1773 = fsub fast float %1771, %1772
  %1774 = call float @dx.op.dot3.f32(i32 55, float %1767, float %1769, float %1773, float %1767, float %1769, float %1773)  ; Dot3(ax,ay,az,bx,by,bz)
  %1775 = call float @dx.op.unary.f32(i32 25, float %1774)  ; Rsqrt(value)
  %1776 = fmul fast float %1767, %1775
  %1777 = fmul fast float %1769, %1775
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = and i32 %1779, 67108864
  %1781 = icmp eq i32 %1780, 0
  br i1 %1781, label %1798, label %1782

; <label>:1782                                    ; preds = %1730
  %1783 = add i32 %58, 296
  %1784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.i32 %1784, 0
  %1786 = and i32 %1785, 65535
  %1787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1786)  ; LegacyF16ToF32(value)
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = and i32 %1789, 65535
  %1791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1790)  ; LegacyF16ToF32(value)
  %1792 = lshr i32 %1785, 16
  %1793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1792)  ; LegacyF16ToF32(value)
  %1794 = fsub fast float %1755, %1793
  %1795 = fmul fast float %1794, %1787
  %1796 = fadd fast float %1795, %1791
  %1797 = call float @dx.op.unary.f32(i32 7, float %1796)  ; Saturate(value)
  br label %1798

; <label>:1798                                    ; preds = %1782, %1730
  %1799 = phi float [ %1797, %1782 ], [ %1755, %1730 ]
  %1800 = call float @dx.op.dot2.f32(i32 54, float %1776, float %1777, float %1334, float %1335)  ; Dot2(ax,ay,bx,by)
  %1801 = call float @dx.op.dot2.f32(i32 54, float %1776, float %1777, float %1336, float %1337)  ; Dot2(ax,ay,bx,by)
  br label %1802

; <label>:1802                                    ; preds = %1798, %1708
  %1803 = phi float [ %1799, %1798 ], [ 0x3FD6666660000000, %1708 ]
  %1804 = phi float [ %1800, %1798 ], [ 0.000000e+00, %1708 ]
  %1805 = phi float [ %1801, %1798 ], [ 0.000000e+00, %1708 ]
  %1806 = phi float [ %1742, %1798 ], [ 1.000000e+00, %1708 ]
  %1807 = add i32 %58, 176
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = lshr i32 %1809, 22
  %1811 = shl nuw nsw i32 %1810, 5
  %1812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1811)  ; LegacyF16ToF32(value)
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = and i32 %1814, 64
  %1816 = icmp eq i32 %1815, 0
  br i1 %1816, label %1850, label %1817

; <label>:1817                                    ; preds = %1802
  %1818 = add i32 %58, 412
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = add i32 %1820, 0
  %1822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1821, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.i32 %1823, 0
  %1825 = and i32 %1824, 131072
  %1826 = icmp eq i32 %1825, 0
  %1827 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1822, %dx.types.Handle %111, float %1430, float %1431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1828 = extractvalue %dx.types.ResRet.f32 %1827, 0
  %1829 = extractvalue %dx.types.ResRet.f32 %1827, 1
  %1830 = extractvalue %dx.types.ResRet.f32 %1827, 2
  %1831 = fmul fast float %387, %1828
  %1832 = fmul fast float %388, %1829
  %1833 = fmul fast float %389, %1830
  br i1 %1826, label %1840, label %1834

; <label>:1834                                    ; preds = %1817
  %1835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1836 = extractvalue %dx.types.CBufRet.f32 %1835, 0
  %1837 = fmul fast float %1836, %1831
  %1838 = fmul fast float %1836, %1832
  %1839 = fmul fast float %1836, %1833
  br label %1840

; <label>:1840                                    ; preds = %1834, %1817
  %1841 = phi float [ %1837, %1834 ], [ %1831, %1817 ]
  %1842 = phi float [ %1838, %1834 ], [ %1832, %1817 ]
  %1843 = phi float [ %1839, %1834 ], [ %1833, %1817 ]
  %1844 = fmul fast float %1841, %1812
  %1845 = select i1 %266, float %1844, float %1841
  %1846 = call float @dx.op.dot3.f32(i32 55, float %1845, float %1842, float %1843, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1847 = select i1 %266, float 0.000000e+00, float %1841
  %1848 = select i1 %266, float %1846, float %1842
  %1849 = select i1 %266, float 0.000000e+00, float %1843
  br label %1850

; <label>:1850                                    ; preds = %1840, %1802
  %1851 = phi float [ %1847, %1840 ], [ 0.000000e+00, %1802 ]
  %1852 = phi float [ %1848, %1840 ], [ 0.000000e+00, %1802 ]
  %1853 = phi float [ %1849, %1840 ], [ 0.000000e+00, %1802 ]
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = and i32 %1855, 10240
  %1857 = icmp eq i32 %1856, 0
  br i1 %1857, label %1902, label %1858

; <label>:1858                                    ; preds = %1850
  %1859 = add i32 %58, 480
  %1860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %1861 = extractvalue %dx.types.ResRet.i32 %1860, 0
  %1862 = add i32 %1861, 0
  %1863 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1862, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1864 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1863, %dx.types.Handle %112, float %1430, float %1431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1865 = extractvalue %dx.types.ResRet.f32 %1864, 1
  %1866 = extractvalue %dx.types.ResRet.f32 %1864, 3
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = and i32 %1868, 1048576
  %1870 = icmp ne i32 %1869, 0
  %1871 = and i32 %1868, 8192
  %1872 = icmp eq i32 %1871, 0
  br i1 %1872, label %1888, label %1873

; <label>:1873                                    ; preds = %1858
  %1874 = extractvalue %dx.types.ResRet.f32 %1864, 2
  %1875 = select i1 %1870, float %1874, float %1865
  %1876 = extractvalue %dx.types.ResRet.f32 %1864, 0
  %1877 = select i1 %1870, float %1876, float %1865
  %1878 = add i32 %58, 112
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = lshr i32 %1880, 16
  %1882 = and i32 %1881, 255
  %1883 = uitofp i32 %1882 to float
  %1884 = fmul fast float %1883, 0x3F80101020000000
  %1885 = fmul fast float %1884, %1877
  %1886 = fmul fast float %1884, %1865
  %1887 = fmul fast float %1884, %1875
  br label %1888

; <label>:1888                                    ; preds = %1873, %1858
  %1889 = phi float [ %1885, %1873 ], [ 0.000000e+00, %1858 ]
  %1890 = phi float [ %1886, %1873 ], [ 0.000000e+00, %1858 ]
  %1891 = phi float [ %1887, %1873 ], [ 0.000000e+00, %1858 ]
  %1892 = and i32 %1868, 2048
  %1893 = icmp eq i32 %1892, 0
  br i1 %1893, label %1902, label %1894

; <label>:1894                                    ; preds = %1888
  %1895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.i32 %1895, 0
  %1897 = shl i32 %1896, 4
  %1898 = and i32 %1897, 32752
  %1899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1898)  ; LegacyF16ToF32(value)
  %1900 = fmul fast float %1899, %1866
  %1901 = call float @dx.op.binary.f32(i32 35, float %1900, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1902

; <label>:1902                                    ; preds = %1894, %1888, %1850
  %1903 = phi float [ %1889, %1894 ], [ %1889, %1888 ], [ 0.000000e+00, %1850 ]
  %1904 = phi float [ %1890, %1894 ], [ %1890, %1888 ], [ 0.000000e+00, %1850 ]
  %1905 = phi float [ %1891, %1894 ], [ %1891, %1888 ], [ 0.000000e+00, %1850 ]
  %1906 = phi float [ %1901, %1894 ], [ 0x3F70101020000000, %1888 ], [ 0x3F70101020000000, %1850 ]
  %1907 = add i32 %58, 112
  %1908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.i32 %1908, 0
  %1910 = and i32 %1909, 255
  %1911 = uitofp i32 %1910 to float
  %1912 = lshr i32 %1909, 8
  %1913 = and i32 %1912, 255
  %1914 = uitofp i32 %1913 to float
  %1915 = call float @dx.op.dot3.f32(i32 55, float %1723, float %1724, float %1725, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1916 = fmul fast float %1914, %1915
  %1917 = fadd fast float %1916, %1911
  %1918 = fmul fast float %1917, 0x3F70101020000000
  %1919 = call float @dx.op.unary.f32(i32 7, float %1918)  ; Saturate(value)
  br i1 %1322, label %1920, label %1928

; <label>:1920                                    ; preds = %1902
  %1921 = fsub fast float 1.000000e+00, %1503
  %1922 = fmul fast float %1921, %1306
  %1923 = fmul fast float %1921, %1307
  %1924 = fmul fast float %1921, %1308
  %1925 = fmul fast float %1921, %1309
  %1926 = fmul fast float %1921, %1310
  %1927 = fmul fast float %1921, %1311
  br label %1928

; <label>:1928                                    ; preds = %1920, %1902
  %1929 = phi float [ %1922, %1920 ], [ %1306, %1902 ]
  %1930 = phi float [ %1923, %1920 ], [ %1307, %1902 ]
  %1931 = phi float [ %1924, %1920 ], [ %1308, %1902 ]
  %1932 = phi float [ %1925, %1920 ], [ %1309, %1902 ]
  %1933 = phi float [ %1926, %1920 ], [ %1310, %1902 ]
  %1934 = phi float [ %1927, %1920 ], [ %1311, %1902 ]
  %1935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.i32 %1935, 0
  %1937 = and i32 %1936, 3
  %1938 = icmp eq i32 %1937, 3
  br i1 %1938, label %2017, label %1939

; <label>:1939                                    ; preds = %1928
  %1940 = and i32 %1936, 16
  %1941 = icmp ne i32 %1940, 0
  %1942 = select i1 %1941, float %1503, float 0.000000e+00
  %1943 = icmp eq i32 %1937, 0
  br i1 %1943, label %1944, label %1972

; <label>:1944                                    ; preds = %1939
  %1945 = and i32 %1936, 64
  %1946 = icmp ne i32 %1945, 0
  %1947 = select i1 %1946, float %1503, float 0.000000e+00
  %1948 = fsub fast float %1723, %1929
  %1949 = fsub fast float %1724, %1930
  %1950 = fsub fast float %1725, %1931
  %1951 = fmul fast float %1942, %1948
  %1952 = fmul fast float %1942, %1949
  %1953 = fmul fast float %1942, %1950
  %1954 = fadd fast float %1951, %1929
  %1955 = fadd fast float %1952, %1930
  %1956 = fadd fast float %1953, %1931
  %1957 = fsub fast float %1709, %1315
  %1958 = fmul fast float %1942, %1957
  %1959 = fadd fast float %1958, %1315
  %1960 = fsub fast float %1851, %1932
  %1961 = fsub fast float %1852, %1933
  %1962 = fsub fast float %1853, %1934
  %1963 = fmul fast float %1947, %1960
  %1964 = fmul fast float %1947, %1961
  %1965 = fmul fast float %1947, %1962
  %1966 = fadd fast float %1963, %1932
  %1967 = fadd fast float %1964, %1933
  %1968 = fadd fast float %1965, %1934
  %1969 = fsub fast float %1919, %1320
  %1970 = fmul fast float %1942, %1969
  %1971 = fadd fast float %1970, %1320
  br label %2017

; <label>:1972                                    ; preds = %1939
  %1973 = icmp eq i32 %1937, 1
  br i1 %1973, label %1974, label %1987

; <label>:1974                                    ; preds = %1972
  %1975 = fadd fast float %1723, -1.000000e+00
  %1976 = fadd fast float %1724, -1.000000e+00
  %1977 = fadd fast float %1725, -1.000000e+00
  %1978 = fmul fast float %1942, %1975
  %1979 = fmul fast float %1942, %1976
  %1980 = fmul fast float %1942, %1977
  %1981 = fadd fast float %1978, 1.000000e+00
  %1982 = fadd fast float %1979, 1.000000e+00
  %1983 = fadd fast float %1980, 1.000000e+00
  %1984 = fmul fast float %1981, %1929
  %1985 = fmul fast float %1982, %1930
  %1986 = fmul fast float %1983, %1931
  br label %2017

; <label>:1987                                    ; preds = %1972
  %1988 = icmp eq i32 %1937, 2
  br i1 %1988, label %1989, label %2017

; <label>:1989                                    ; preds = %1987
  %1990 = call float @dx.op.unary.f32(i32 24, float %1723)  ; Sqrt(value)
  %1991 = call float @dx.op.unary.f32(i32 24, float %1724)  ; Sqrt(value)
  %1992 = call float @dx.op.unary.f32(i32 24, float %1725)  ; Sqrt(value)
  %1993 = fadd fast float %1990, -5.000000e-01
  %1994 = fadd fast float %1991, -5.000000e-01
  %1995 = fadd fast float %1992, -5.000000e-01
  %1996 = fmul fast float %1993, %1942
  %1997 = fmul fast float %1994, %1942
  %1998 = fmul fast float %1995, %1942
  %1999 = fadd fast float %1996, 5.000000e-01
  %2000 = fadd fast float %1997, 5.000000e-01
  %2001 = fadd fast float %1998, 5.000000e-01
  %2002 = fmul fast float %1999, 2.000000e+00
  %2003 = fsub fast float 1.000000e+00, %2002
  %2004 = fmul fast float %2003, %1929
  %2005 = fadd fast float %2004, %2002
  %2006 = fmul fast float %2005, %1929
  %2007 = fmul fast float %2000, 2.000000e+00
  %2008 = fsub fast float 1.000000e+00, %2007
  %2009 = fmul fast float %2008, %1930
  %2010 = fadd fast float %2009, %2007
  %2011 = fmul fast float %2010, %1930
  %2012 = fmul fast float %2001, 2.000000e+00
  %2013 = fsub fast float 1.000000e+00, %2012
  %2014 = fmul fast float %2013, %1931
  %2015 = fadd fast float %2014, %2012
  %2016 = fmul fast float %2015, %1931
  br label %2017

; <label>:2017                                    ; preds = %1989, %1987, %1974, %1944, %1928
  %2018 = phi float [ %1929, %1928 ], [ %2006, %1989 ], [ %1929, %1987 ], [ %1984, %1974 ], [ %1954, %1944 ]
  %2019 = phi float [ %1930, %1928 ], [ %2011, %1989 ], [ %1930, %1987 ], [ %1985, %1974 ], [ %1955, %1944 ]
  %2020 = phi float [ %1931, %1928 ], [ %2016, %1989 ], [ %1931, %1987 ], [ %1986, %1974 ], [ %1956, %1944 ]
  %2021 = phi float [ %1932, %1928 ], [ %1932, %1989 ], [ %1932, %1987 ], [ %1932, %1974 ], [ %1966, %1944 ]
  %2022 = phi float [ %1933, %1928 ], [ %1933, %1989 ], [ %1933, %1987 ], [ %1933, %1974 ], [ %1967, %1944 ]
  %2023 = phi float [ %1934, %1928 ], [ %1934, %1989 ], [ %1934, %1987 ], [ %1934, %1974 ], [ %1968, %1944 ]
  %2024 = phi float [ %1315, %1928 ], [ %1315, %1989 ], [ %1315, %1987 ], [ %1315, %1974 ], [ %1959, %1944 ]
  %2025 = phi float [ %1320, %1928 ], [ %1320, %1989 ], [ %1320, %1987 ], [ %1320, %1974 ], [ %1971, %1944 ]
  %2026 = and i32 %1936, 12
  %2027 = icmp eq i32 %2026, 12
  br i1 %2027, label %2134, label %2028

; <label>:2028                                    ; preds = %2017
  %2029 = and i32 %1936, 2097184
  %2030 = icmp eq i32 %2029, 2097184
  %2031 = select i1 %2030, float %1503, float 0.000000e+00
  %2032 = and i32 %1936, 4194336
  %2033 = icmp eq i32 %2032, 4194336
  %2034 = select i1 %2033, float %1503, float 0.000000e+00
  %2035 = and i32 %1936, 8388640
  %2036 = icmp eq i32 %2035, 8388640
  %2037 = select i1 %2036, float %1503, float 0.000000e+00
  %2038 = and i32 %1936, 2048
  %2039 = icmp ne i32 %2038, 0
  %2040 = select i1 %2039, float %1503, float 0.000000e+00
  %2041 = and i32 %1936, 8192
  %2042 = icmp ne i32 %2041, 0
  %2043 = select i1 %2042, float %1503, float 0.000000e+00
  %2044 = icmp eq i32 %2026, 0
  br i1 %2044, label %2045, label %2070

; <label>:2045                                    ; preds = %2028
  %2046 = fsub fast float %1804, %1304
  %2047 = fsub fast float %1805, %1305
  %2048 = fmul fast float %2031, %2046
  %2049 = fmul fast float %2031, %2047
  %2050 = fadd fast float %2048, %1304
  %2051 = fadd fast float %2049, %1305
  %2052 = fsub fast float %1806, %1318
  %2053 = fmul fast float %2034, %2052
  %2054 = fadd fast float %2053, %1318
  %2055 = fsub fast float %1803, %1317
  %2056 = fmul fast float %2037, %2055
  %2057 = fadd fast float %2056, %1317
  %2058 = fsub fast float %1906, %1319
  %2059 = fmul fast float %2040, %2058
  %2060 = fadd fast float %2059, %1319
  %2061 = fsub fast float %1903, %1312
  %2062 = fsub fast float %1904, %1313
  %2063 = fsub fast float %1905, %1314
  %2064 = fmul fast float %2043, %2061
  %2065 = fmul fast float %2043, %2062
  %2066 = fmul fast float %2043, %2063
  %2067 = fadd fast float %2064, %1312
  %2068 = fadd fast float %2065, %1313
  %2069 = fadd fast float %2066, %1314
  br label %2134

; <label>:2070                                    ; preds = %2028
  %2071 = icmp eq i32 %2026, 4
  br i1 %2071, label %2072, label %2112

; <label>:2072                                    ; preds = %2070
  %2073 = fmul fast float %2031, %1804
  %2074 = fmul fast float %2031, %1805
  %2075 = fadd fast float %2073, %1304
  %2076 = fadd fast float %2074, %1305
  %2077 = call float @dx.op.binary.f32(i32 36, float %1318, float %1806)  ; FMin(a,b)
  %2078 = fsub fast float %2077, %1318
  %2079 = fmul fast float %2078, %2034
  %2080 = fadd fast float %2079, %1318
  %2081 = fadd fast float %1803, %1317
  %2082 = fmul fast float %2081, 0x3FF337FAE0000000
  %2083 = fmul fast float %1317, %1317
  %2084 = fmul fast float %1803, %1803
  %2085 = fadd fast float %2084, %2083
  %2086 = fmul fast float %2085, 0x3FE5152B00000000
  %2087 = fmul fast float %1317, 0xBFCC1F85E0000000
  %2088 = fmul fast float %2087, %1803
  %2089 = fadd fast float %2088, 0xBFE1363700000000
  %2090 = fadd fast float %2089, %2082
  %2091 = fsub fast float %2090, %2086
  %2092 = fmul fast float %2081, 0x3FBA6F0D00000000
  %2093 = fmul fast float %2085, 0x3FD0432880000000
  %2094 = fmul fast float %1317, 0xBFEF110800000000
  %2095 = fmul fast float %2094, %1803
  %2096 = fadd fast float %2095, 1.000000e+00
  %2097 = fsub fast float %2096, %2092
  %2098 = fadd fast float %2097, %2093
  %2099 = fdiv fast float %2091, %2098
  %2100 = call float @dx.op.unary.f32(i32 7, float %2099)  ; Saturate(value)
  %2101 = fsub fast float %2100, %1317
  %2102 = fmul fast float %2101, %2037
  %2103 = fadd fast float %2102, %1317
  %2104 = fmul fast float %2040, %1906
  %2105 = fadd fast float %2104, %1319
  %2106 = fmul fast float %2043, %1903
  %2107 = fmul fast float %2043, %1904
  %2108 = fmul fast float %2043, %1905
  %2109 = fadd fast float %2106, %1312
  %2110 = fadd fast float %2107, %1313
  %2111 = fadd fast float %2108, %1314
  br label %2134

; <label>:2112                                    ; preds = %2070
  %2113 = icmp eq i32 %2026, 8
  br i1 %2113, label %2114, label %2134

; <label>:2114                                    ; preds = %2112
  %2115 = fmul fast float %2031, %1804
  %2116 = fmul fast float %2031, %1805
  %2117 = fadd fast float %2115, %1304
  %2118 = fadd fast float %2116, %1305
  %2119 = call float @dx.op.binary.f32(i32 36, float %1318, float %1806)  ; FMin(a,b)
  %2120 = fsub fast float %2119, %1318
  %2121 = fmul fast float %2120, %2034
  %2122 = fadd fast float %2121, %1318
  %2123 = fsub fast float %1803, %1317
  %2124 = fmul fast float %2037, %2123
  %2125 = fadd fast float %2124, %1317
  %2126 = fmul fast float %2040, %1906
  %2127 = fadd fast float %2126, %1319
  %2128 = fmul fast float %2043, %1903
  %2129 = fmul fast float %2043, %1904
  %2130 = fmul fast float %2043, %1905
  %2131 = fadd fast float %2128, %1312
  %2132 = fadd fast float %2129, %1313
  %2133 = fadd fast float %2130, %1314
  br label %2134

; <label>:2134                                    ; preds = %2114, %2112, %2072, %2045, %2017, %1502, %1321, %1303
  %2135 = phi float [ %1304, %2017 ], [ %1304, %1502 ], [ %1304, %1303 ], [ %2117, %2114 ], [ %1304, %2112 ], [ %2075, %2072 ], [ %2050, %2045 ], [ %1304, %1321 ]
  %2136 = phi float [ %1305, %2017 ], [ %1305, %1502 ], [ %1305, %1303 ], [ %2118, %2114 ], [ %1305, %2112 ], [ %2076, %2072 ], [ %2051, %2045 ], [ %1305, %1321 ]
  %2137 = phi float [ %2018, %2017 ], [ %1306, %1502 ], [ %1306, %1303 ], [ %2018, %2114 ], [ %2018, %2112 ], [ %2018, %2072 ], [ %2018, %2045 ], [ %1306, %1321 ]
  %2138 = phi float [ %2019, %2017 ], [ %1307, %1502 ], [ %1307, %1303 ], [ %2019, %2114 ], [ %2019, %2112 ], [ %2019, %2072 ], [ %2019, %2045 ], [ %1307, %1321 ]
  %2139 = phi float [ %2020, %2017 ], [ %1308, %1502 ], [ %1308, %1303 ], [ %2020, %2114 ], [ %2020, %2112 ], [ %2020, %2072 ], [ %2020, %2045 ], [ %1308, %1321 ]
  %2140 = phi float [ %2021, %2017 ], [ %1309, %1502 ], [ %1309, %1303 ], [ %2021, %2114 ], [ %2021, %2112 ], [ %2021, %2072 ], [ %2021, %2045 ], [ %1309, %1321 ]
  %2141 = phi float [ %2022, %2017 ], [ %1310, %1502 ], [ %1310, %1303 ], [ %2022, %2114 ], [ %2022, %2112 ], [ %2022, %2072 ], [ %2022, %2045 ], [ %1310, %1321 ]
  %2142 = phi float [ %2023, %2017 ], [ %1311, %1502 ], [ %1311, %1303 ], [ %2023, %2114 ], [ %2023, %2112 ], [ %2023, %2072 ], [ %2023, %2045 ], [ %1311, %1321 ]
  %2143 = phi float [ %1312, %2017 ], [ %1312, %1502 ], [ %1312, %1303 ], [ %2131, %2114 ], [ %1312, %2112 ], [ %2109, %2072 ], [ %2067, %2045 ], [ %1312, %1321 ]
  %2144 = phi float [ %1313, %2017 ], [ %1313, %1502 ], [ %1313, %1303 ], [ %2132, %2114 ], [ %1313, %2112 ], [ %2110, %2072 ], [ %2068, %2045 ], [ %1313, %1321 ]
  %2145 = phi float [ %1314, %2017 ], [ %1314, %1502 ], [ %1314, %1303 ], [ %2133, %2114 ], [ %1314, %2112 ], [ %2111, %2072 ], [ %2069, %2045 ], [ %1314, %1321 ]
  %2146 = phi float [ %2024, %2017 ], [ %1315, %1502 ], [ %1315, %1303 ], [ %2024, %2114 ], [ %2024, %2112 ], [ %2024, %2072 ], [ %2024, %2045 ], [ %1315, %1321 ]
  %2147 = phi float [ %1317, %2017 ], [ %1317, %1502 ], [ %1317, %1303 ], [ %2125, %2114 ], [ %1317, %2112 ], [ %2103, %2072 ], [ %2057, %2045 ], [ %1317, %1321 ]
  %2148 = phi float [ %1318, %2017 ], [ %1318, %1502 ], [ %1318, %1303 ], [ %2122, %2114 ], [ %1318, %2112 ], [ %2080, %2072 ], [ %2054, %2045 ], [ %1318, %1321 ]
  %2149 = phi float [ %1319, %2017 ], [ %1319, %1502 ], [ %1319, %1303 ], [ %2127, %2114 ], [ %1319, %2112 ], [ %2105, %2072 ], [ %2060, %2045 ], [ %1319, %1321 ]
  %2150 = phi float [ %2025, %2017 ], [ %1320, %1502 ], [ %1320, %1303 ], [ %2025, %2114 ], [ %2025, %2112 ], [ %2025, %2072 ], [ %2025, %2045 ], [ %1320, %1321 ]
  br i1 %651, label %2964, label %2151

; <label>:2151                                    ; preds = %2134
  %2152 = icmp ult i32 %707, 3
  %2153 = add i32 %58, 56
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = add i32 %58, 60
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2156, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = or i32 %2158, %2155
  %2160 = icmp eq i32 %2159, 0
  br i1 %2160, label %2964, label %2161

; <label>:2161                                    ; preds = %2151
  %2162 = and i32 %2155, 262144
  %2163 = icmp ne i32 %2162, 0
  %2164 = select i1 %2163, float %65, float 1.000000e+00
  %2165 = select i1 %2163, float %66, float 0.000000e+00
  %2166 = select i1 %2163, float %67, float 0.000000e+00
  %2167 = select i1 %2163, float %68, float 1.000000e+00
  %2168 = select i1 %2163, float %69, float %97
  %2169 = select i1 %2163, float %70, float %98
  %2170 = add i32 %58, 316
  %2171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2170, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.i32 %2171, 0
  %2173 = lshr i32 %2172, 16
  %2174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2173)  ; LegacyF16ToF32(value)
  %2175 = fmul fast float %2174, 0x3F50624DE0000000
  %2176 = add i32 %58, 120
  %2177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.i32 %2177, 0
  %2179 = lshr i32 %2178, 16
  %2180 = and i32 %2179, 255
  %2181 = lshr i32 %2178, 24
  %2182 = add i32 %58, 324
  %2183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2182, i32 undef)  ; BufferLoad(srv,index,wot)
  %2184 = extractvalue %dx.types.ResRet.i32 %2183, 0
  %2185 = and i32 %2184, 65535
  %2186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2185)  ; LegacyF16ToF32(value)
  %2187 = lshr i32 %2184, 16
  %2188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2187)  ; LegacyF16ToF32(value)
  %2189 = add i32 %58, 64
  %2190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.i32 %2190, 0
  %2192 = lshr i32 %2191, 22
  %2193 = shl nuw nsw i32 %2192, 5
  %2194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2193)  ; LegacyF16ToF32(value)
  %2195 = shl i32 %2191, 4
  %2196 = and i32 %2195, 32752
  %2197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2196)  ; LegacyF16ToF32(value)
  %2198 = lshr i32 %2191, 7
  %2199 = and i32 %2198, 32752
  %2200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2199)  ; LegacyF16ToF32(value)
  %2201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2202 = extractvalue %dx.types.CBufRet.f32 %2201, 3
  %2203 = fmul fast float %2202, 1.000000e+03
  %2204 = fmul fast float %2203, %535
  %2205 = call float @dx.op.unary.f32(i32 22, float %2204)  ; Frc(value)
  %2206 = fadd fast float %2205, %523
  %2207 = fmul fast float %2203, %537
  %2208 = call float @dx.op.unary.f32(i32 22, float %2207)  ; Frc(value)
  %2209 = fadd fast float %2208, %524
  %2210 = fmul fast float %2175, %2203
  %2211 = call float @dx.op.unary.f32(i32 22, float %2210)  ; Frc(value)
  %2212 = fmul fast float %2211, 0x401921FB60000000
  %2213 = fadd fast float %2212, %2194
  %2214 = call float @dx.op.unary.f32(i32 13, float %2213)  ; Sin(value)
  %2215 = call float @dx.op.unary.f32(i32 12, float %2213)  ; Cos(value)
  %2216 = fsub fast float -0.000000e+00, %2214
  %2217 = fadd fast float %2168, -5.000000e-01
  %2218 = fadd fast float %2169, -5.000000e-01
  %2219 = fmul fast float %2186, %2217
  %2220 = fmul fast float %2188, %2218
  %2221 = fadd fast float %2219, 5.000000e-01
  %2222 = fadd fast float %2220, 5.000000e-01
  %2223 = fmul fast float %2197, %2221
  %2224 = fmul fast float %2200, %2222
  %2225 = fmul fast float %2215, %2223
  %2226 = call float @dx.op.tertiary.f32(i32 46, float %2216, float %2224, float %2225)  ; FMad(a,b,c)
  %2227 = fmul fast float %2214, %2223
  %2228 = call float @dx.op.tertiary.f32(i32 46, float %2215, float %2224, float %2227)  ; FMad(a,b,c)
  %2229 = fadd fast float %2206, %2226
  %2230 = fadd fast float %2209, %2228
  %2231 = icmp ugt i32 %2180, 1
  %2232 = icmp ugt i32 %2178, 33554431
  %2233 = or i1 %2232, %2231
  br i1 %2233, label %2234, label %2259

; <label>:2234                                    ; preds = %2161
  %2235 = add i32 %58, 260
  %2236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2235, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.i32 %2236, 0
  %2238 = lshr i32 %2237, 16
  %2239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2238)  ; LegacyF16ToF32(value)
  %2240 = fmul fast float %2202, %2239
  %2241 = call float @dx.op.unary.f32(i32 22, float %2240)  ; Frc(value)
  %2242 = mul nuw nsw i32 %2180, %2181
  %2243 = uitofp i32 %2242 to float
  %2244 = fmul fast float %2241, %2243
  %2245 = call float @dx.op.unary.f32(i32 27, float %2244)  ; Round_ni(value)
  %2246 = fptoui float %2245 to i32
  %2247 = urem i32 %2246, %2180
  %2248 = udiv i32 %2246, %2181
  %2249 = call float @dx.op.unary.f32(i32 22, float %2229)  ; Frc(value)
  %2250 = call float @dx.op.unary.f32(i32 22, float %2230)  ; Frc(value)
  %2251 = uitofp i32 %2247 to float
  %2252 = uitofp i32 %2248 to float
  %2253 = fadd fast float %2249, %2251
  %2254 = fadd fast float %2250, %2252
  %2255 = uitofp i32 %2180 to float
  %2256 = uitofp i32 %2181 to float
  %2257 = fdiv fast float %2253, %2255
  %2258 = fdiv fast float %2254, %2256
  br label %2259

; <label>:2259                                    ; preds = %2234, %2161
  %2260 = phi float [ %2257, %2234 ], [ %2229, %2161 ]
  %2261 = phi float [ %2258, %2234 ], [ %2230, %2161 ]
  %2262 = and i32 %2155, 256
  %2263 = icmp eq i32 %2262, 0
  br i1 %2263, label %2310, label %2264

; <label>:2264                                    ; preds = %2259
  %2265 = add i32 %58, 448
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = add i32 %2267, 0
  %2269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2268, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2270 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2269, %dx.types.Handle %112, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2271 = extractvalue %dx.types.ResRet.f32 %2270, 0
  %2272 = add i32 %58, 132
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = shl i32 %2274, 4
  %2276 = and i32 %2275, 32752
  %2277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2276)  ; LegacyF16ToF32(value)
  %2278 = lshr i32 %2274, 7
  %2279 = and i32 %2278, 32752
  %2280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2279)  ; LegacyF16ToF32(value)
  %2281 = fsub fast float 1.000000e+00, %703
  %2282 = call float @dx.op.binary.f32(i32 35, float %2281, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2283 = bitcast float %703 to i32
  %2284 = sitofp i32 %2283 to float
  %2285 = fadd fast float %2284, 0xC1CFBF8940000000
  %2286 = fmul fast float %2280, %2285
  %2287 = fadd fast float %2286, 0x41CFBF8940000000
  %2288 = fptosi float %2287 to i32
  %2289 = bitcast i32 %2288 to float
  %2290 = bitcast float %2282 to i32
  %2291 = sitofp i32 %2290 to float
  %2292 = fadd fast float %2291, 0xC1CFBF8940000000
  %2293 = fmul fast float %2292, %2280
  %2294 = fadd fast float %2293, 0x41CFBF8940000000
  %2295 = fptosi float %2294 to i32
  %2296 = bitcast i32 %2295 to float
  %2297 = fmul fast float %2289, %2277
  %2298 = fmul fast float %2296, %2277
  %2299 = fsub fast float %2282, %2297
  %2300 = fadd fast float %2298, %2282
  %2301 = call float @dx.op.unary.f32(i32 7, float %2299)  ; Saturate(value)
  %2302 = call float @dx.op.unary.f32(i32 7, float %2300)  ; Saturate(value)
  %2303 = fsub fast float %2271, %2301
  %2304 = fsub fast float %2302, %2301
  %2305 = bitcast float %2304 to i32
  %2306 = sub nsw i32 2129859010, %2305
  %2307 = bitcast i32 %2306 to float
  %2308 = fmul fast float %2307, %2303
  %2309 = call float @dx.op.unary.f32(i32 7, float %2308)  ; Saturate(value)
  br label %2310

; <label>:2310                                    ; preds = %2264, %2259
  %2311 = phi float [ %2309, %2264 ], [ %703, %2259 ]
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = and i32 %2313, 128
  %2315 = icmp eq i32 %2314, 0
  br i1 %2315, label %2332, label %2316

; <label>:2316                                    ; preds = %2310
  %2317 = add i32 %58, 432
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = add i32 %2319, 0
  %2321 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2320, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2322 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2321, %dx.types.Handle %112, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2323 = extractvalue %dx.types.ResRet.f32 %2322, 0
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = and i32 %2325, 524288
  %2327 = icmp ne i32 %2326, 0
  %2328 = fcmp fast ogt float %2323, 0x3FE0101020000000
  %2329 = select i1 %2328, float 1.000000e+00, float 0.000000e+00
  %2330 = select i1 %2327, float %2329, float %2323
  %2331 = fmul fast float %2330, %2311
  br label %2332

; <label>:2332                                    ; preds = %2316, %2310
  %2333 = phi float [ %2331, %2316 ], [ %2311, %2310 ]
  %2334 = fcmp fast ult float %2333, 0x3F70101020000000
  br i1 %2334, label %2964, label %2335

; <label>:2335                                    ; preds = %2332
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = and i32 %2337, 16
  %2339 = icmp eq i32 %2338, 0
  br i1 %2339, label %2538, label %2340

; <label>:2340                                    ; preds = %2335
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = add i32 %58, 384
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = add i32 %2345, 0
  %2347 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2346, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2348 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2347, %dx.types.Handle %111, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2349 = extractvalue %dx.types.ResRet.f32 %2348, 0
  %2350 = extractvalue %dx.types.ResRet.f32 %2348, 1
  %2351 = extractvalue %dx.types.ResRet.f32 %2348, 2
  %2352 = extractvalue %dx.types.ResRet.f32 %2348, 3
  %2353 = and i32 %2342, 255
  %2354 = uitofp i32 %2353 to float
  %2355 = lshr i32 %2342, 8
  %2356 = and i32 %2355, 255
  %2357 = uitofp i32 %2356 to float
  %2358 = fmul fast float %2352, %2354
  %2359 = fadd fast float %2358, %2357
  %2360 = fmul fast float %2359, 0x3F70101000000000
  %2361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2362 = extractvalue %dx.types.ResRet.i32 %2361, 0
  %2363 = and i32 %2362, 512
  %2364 = icmp eq i32 %2363, 0
  br i1 %2364, label %2373, label %2365

; <label>:2365                                    ; preds = %2340
  %2366 = add i32 %58, 468
  %2367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2366, i32 undef)  ; BufferLoad(srv,index,wot)
  %2368 = extractvalue %dx.types.ResRet.i32 %2367, 0
  %2369 = add i32 %2368, 0
  %2370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2369, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2371 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2370, %dx.types.Handle %112, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2372 = extractvalue %dx.types.ResRet.f32 %2371, 0
  br label %2373

; <label>:2373                                    ; preds = %2365, %2340
  %2374 = phi float [ %2372, %2365 ], [ 1.000000e+00, %2340 ]
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = and i32 %2376, 33554432
  %2378 = icmp eq i32 %2377, 0
  br i1 %2378, label %2485, label %2379

; <label>:2379                                    ; preds = %2373
  %2380 = add i32 %58, 256
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2380, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = and i32 %2382, 65535
  %2384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2383)  ; LegacyF16ToF32(value)
  %2385 = lshr i32 %2382, 16
  %2386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2385)  ; LegacyF16ToF32(value)
  %2387 = add i32 %58, 260
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2387, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = and i32 %2389, 65535
  %2391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2390)  ; LegacyF16ToF32(value)
  %2392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %2393 = extractvalue %dx.types.ResRet.i32 %2392, 0
  %2394 = lshr i32 %2393, 24
  %2395 = uitofp i32 %2394 to float
  %2396 = fmul fast float %2395, 0x3F70101020000000
  %2397 = and i32 %2393, 255
  %2398 = uitofp i32 %2397 to float
  %2399 = fmul fast float %2398, 0x3F70101020000000
  %2400 = lshr i32 %2393, 8
  %2401 = and i32 %2400, 255
  %2402 = uitofp i32 %2401 to float
  %2403 = fmul fast float %2402, 0x3F70101020000000
  %2404 = lshr i32 %2393, 16
  %2405 = and i32 %2404, 255
  %2406 = uitofp i32 %2405 to float
  %2407 = fmul fast float %2406, 0x3F70101020000000
  %2408 = add i32 %58, 252
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = lshr i32 %2410, 24
  %2412 = uitofp i32 %2411 to float
  %2413 = fmul fast float %2412, 0x3F70101020000000
  %2414 = and i32 %2410, 255
  %2415 = uitofp i32 %2414 to float
  %2416 = fmul fast float %2415, 0x3F70101020000000
  %2417 = lshr i32 %2410, 8
  %2418 = and i32 %2417, 255
  %2419 = uitofp i32 %2418 to float
  %2420 = fmul fast float %2419, 0x3F70101020000000
  %2421 = lshr i32 %2410, 16
  %2422 = and i32 %2421, 255
  %2423 = uitofp i32 %2422 to float
  %2424 = fmul fast float %2423, 0x3F70101020000000
  %2425 = bitcast float %2349 to i32
  %2426 = ashr i32 %2425, 1
  %2427 = sub nsw i32 1597463174, %2426
  %2428 = bitcast i32 %2427 to float
  %2429 = fmul fast float %2349, 5.000000e-01
  %2430 = fmul fast float %2428, %2428
  %2431 = fmul fast float %2430, %2429
  %2432 = fsub fast float 1.500000e+00, %2431
  %2433 = fmul fast float %2428, %2349
  %2434 = fmul fast float %2433, %2432
  %2435 = bitcast float %2350 to i32
  %2436 = ashr i32 %2435, 1
  %2437 = sub nsw i32 1597463174, %2436
  %2438 = bitcast i32 %2437 to float
  %2439 = fmul fast float %2350, 5.000000e-01
  %2440 = fmul fast float %2438, %2438
  %2441 = fmul fast float %2440, %2439
  %2442 = fsub fast float 1.500000e+00, %2441
  %2443 = fmul fast float %2438, %2350
  %2444 = fmul fast float %2443, %2442
  %2445 = bitcast float %2351 to i32
  %2446 = ashr i32 %2445, 1
  %2447 = sub nsw i32 1597463174, %2446
  %2448 = bitcast i32 %2447 to float
  %2449 = fmul fast float %2351, 5.000000e-01
  %2450 = fmul fast float %2448, %2448
  %2451 = fmul fast float %2450, %2449
  %2452 = fsub fast float 1.500000e+00, %2451
  %2453 = fmul fast float %2448, %2351
  %2454 = fmul fast float %2453, %2452
  %2455 = fsub fast float %2434, %2416
  %2456 = fsub fast float %2444, %2420
  %2457 = fsub fast float %2454, %2424
  %2458 = fmul fast float %2455, %2384
  %2459 = fmul fast float %2456, %2386
  %2460 = fmul fast float %2457, %2391
  %2461 = fadd fast float %2458, %2399
  %2462 = fadd fast float %2459, %2403
  %2463 = fadd fast float %2460, %2407
  %2464 = call float @dx.op.unary.f32(i32 7, float %2461)  ; Saturate(value)
  %2465 = call float @dx.op.unary.f32(i32 7, float %2462)  ; Saturate(value)
  %2466 = call float @dx.op.unary.f32(i32 7, float %2463)  ; Saturate(value)
  %2467 = fmul fast float %2464, %2464
  %2468 = fmul fast float %2465, %2465
  %2469 = fmul fast float %2466, %2466
  %2470 = fsub fast float %2467, %2349
  %2471 = fsub fast float %2468, %2350
  %2472 = fsub fast float %2469, %2351
  %2473 = fmul fast float %2470, %2374
  %2474 = fmul fast float %2471, %2374
  %2475 = fmul fast float %2472, %2374
  %2476 = fadd fast float %2473, %2349
  %2477 = fadd fast float %2474, %2350
  %2478 = fadd fast float %2475, %2351
  %2479 = fadd fast float %2396, %2360
  %2480 = fsub fast float %2479, %2413
  %2481 = call float @dx.op.unary.f32(i32 7, float %2480)  ; Saturate(value)
  %2482 = fsub fast float %2481, %2360
  %2483 = fmul fast float %2482, %2374
  %2484 = fadd fast float %2483, %2360
  br label %2538

; <label>:2485                                    ; preds = %2373
  %2486 = and i32 %2376, 134217728
  %2487 = icmp eq i32 %2486, 0
  br i1 %2487, label %2522, label %2488

; <label>:2488                                    ; preds = %2485
  %2489 = call float @dx.op.unary.f32(i32 24, float %511)  ; Sqrt(value)
  %2490 = call float @dx.op.unary.f32(i32 24, float %512)  ; Sqrt(value)
  %2491 = call float @dx.op.unary.f32(i32 24, float %513)  ; Sqrt(value)
  %2492 = fadd fast float %2489, -5.000000e-01
  %2493 = fadd fast float %2490, -5.000000e-01
  %2494 = fadd fast float %2491, -5.000000e-01
  %2495 = fmul fast float %2492, %2374
  %2496 = fmul fast float %2493, %2374
  %2497 = fmul fast float %2494, %2374
  %2498 = fadd fast float %2495, 5.000000e-01
  %2499 = fadd fast float %2496, 5.000000e-01
  %2500 = fadd fast float %2497, 5.000000e-01
  %2501 = call float @dx.op.unary.f32(i32 24, float %2349)  ; Sqrt(value)
  %2502 = call float @dx.op.unary.f32(i32 24, float %2350)  ; Sqrt(value)
  %2503 = call float @dx.op.unary.f32(i32 24, float %2351)  ; Sqrt(value)
  %2504 = fmul fast float %2498, 2.000000e+00
  %2505 = fsub fast float 1.000000e+00, %2504
  %2506 = fmul fast float %2505, %2501
  %2507 = fadd fast float %2506, %2504
  %2508 = fmul fast float %2507, %2501
  %2509 = fmul fast float %2499, 2.000000e+00
  %2510 = fsub fast float 1.000000e+00, %2509
  %2511 = fmul fast float %2510, %2502
  %2512 = fadd fast float %2511, %2509
  %2513 = fmul fast float %2512, %2502
  %2514 = fmul fast float %2500, 2.000000e+00
  %2515 = fsub fast float 1.000000e+00, %2514
  %2516 = fmul fast float %2515, %2503
  %2517 = fadd fast float %2516, %2514
  %2518 = fmul fast float %2517, %2503
  %2519 = fmul fast float %2508, %2508
  %2520 = fmul fast float %2513, %2513
  %2521 = fmul fast float %2518, %2518
  br label %2538

; <label>:2522                                    ; preds = %2485
  %2523 = fmul fast float %511, %511
  %2524 = fmul fast float %512, %512
  %2525 = fmul fast float %513, %513
  %2526 = fadd fast float %2523, -1.000000e+00
  %2527 = fadd fast float %2524, -1.000000e+00
  %2528 = fadd fast float %2525, -1.000000e+00
  %2529 = fmul fast float %2374, %2526
  %2530 = fmul fast float %2374, %2527
  %2531 = fmul fast float %2374, %2528
  %2532 = fadd fast float %2529, 1.000000e+00
  %2533 = fadd fast float %2530, 1.000000e+00
  %2534 = fadd fast float %2531, 1.000000e+00
  %2535 = fmul fast float %2532, %2349
  %2536 = fmul fast float %2533, %2350
  %2537 = fmul fast float %2534, %2351
  br label %2538

; <label>:2538                                    ; preds = %2522, %2488, %2379, %2335
  %2539 = phi float [ %2484, %2379 ], [ %2360, %2488 ], [ %2360, %2522 ], [ 0x3FA23C0BE0000000, %2335 ]
  %2540 = phi float [ %2476, %2379 ], [ %2519, %2488 ], [ %2535, %2522 ], [ 1.000000e+00, %2335 ]
  %2541 = phi float [ %2477, %2379 ], [ %2520, %2488 ], [ %2536, %2522 ], [ 1.000000e+00, %2335 ]
  %2542 = phi float [ %2478, %2379 ], [ %2521, %2488 ], [ %2537, %2522 ], [ 1.000000e+00, %2335 ]
  %2543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2544 = extractvalue %dx.types.CBufRet.i32 %2543, 1
  %2545 = and i32 %2544, 1
  %2546 = icmp ne i32 %2545, 0
  %2547 = add i32 %58, 356
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = and i32 %2549, 32
  %2551 = icmp ne i32 %2550, 0
  %2552 = and i1 %2546, %2551
  %2553 = select i1 %2552, float 1.000000e+00, float %2540
  %2554 = select i1 %2552, float 0x3FD3333340000000, float %2541
  %2555 = select i1 %2552, float 0x3FD3333340000000, float %2542
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = and i32 %2557, 32
  %2559 = icmp eq i32 %2558, 0
  br i1 %2559, label %2632, label %2560

; <label>:2560                                    ; preds = %2538
  %2561 = add i32 %58, 124
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = add i32 %58, 400
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2564, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = add i32 %2566, 0
  %2568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2567, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2569 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2568, %dx.types.Handle %111, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2570 = extractvalue %dx.types.ResRet.f32 %2569, 0
  %2571 = extractvalue %dx.types.ResRet.f32 %2569, 1
  %2572 = extractvalue %dx.types.ResRet.f32 %2569, 2
  %2573 = extractvalue %dx.types.ResRet.f32 %2569, 3
  %2574 = and i32 %2563, 255
  %2575 = uitofp i32 %2574 to float
  %2576 = lshr i32 %2563, 8
  %2577 = and i32 %2576, 255
  %2578 = uitofp i32 %2577 to float
  %2579 = lshr i32 %2563, 16
  %2580 = and i32 %2579, 255
  %2581 = uitofp i32 %2580 to float
  %2582 = fmul fast float %2581, 0x3F70101000000000
  %2583 = fmul fast float %2570, %2575
  %2584 = fadd fast float %2583, %2578
  %2585 = fmul fast float %2584, 0x3F70101000000000
  %2586 = fadd fast float %2571, -5.000000e-01
  %2587 = fadd fast float %2573, -5.000000e-01
  %2588 = fmul fast float %2586, %2582
  %2589 = fmul fast float %2587, %2582
  %2590 = fadd fast float %2588, 5.000000e-01
  %2591 = fadd fast float %2589, 5.000000e-01
  %2592 = fmul fast float %2590, 2.000000e+00
  %2593 = fadd fast float %2592, -1.000000e+00
  %2594 = fmul fast float %2591, 2.000000e+00
  %2595 = fadd fast float %2594, -1.000000e+00
  %2596 = fadd fast float %2593, %2595
  %2597 = fmul fast float %2596, 5.000000e-01
  %2598 = fsub fast float %2593, %2595
  %2599 = fmul fast float %2598, 5.000000e-01
  %2600 = call float @dx.op.unary.f32(i32 6, float %2597)  ; FAbs(value)
  %2601 = fsub fast float 1.000000e+00, %2600
  %2602 = call float @dx.op.unary.f32(i32 6, float %2599)  ; FAbs(value)
  %2603 = fsub fast float %2601, %2602
  %2604 = call float @dx.op.dot3.f32(i32 55, float %2597, float %2599, float %2603, float %2597, float %2599, float %2603)  ; Dot3(ax,ay,az,bx,by,bz)
  %2605 = call float @dx.op.unary.f32(i32 25, float %2604)  ; Rsqrt(value)
  %2606 = fmul fast float %2597, %2605
  %2607 = fmul fast float %2599, %2605
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = and i32 %2609, 67108864
  %2611 = icmp eq i32 %2610, 0
  br i1 %2611, label %2628, label %2612

; <label>:2612                                    ; preds = %2560
  %2613 = add i32 %58, 312
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2613, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = and i32 %2615, 65535
  %2617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2616)  ; LegacyF16ToF32(value)
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2170, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = and i32 %2619, 65535
  %2621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2620)  ; LegacyF16ToF32(value)
  %2622 = lshr i32 %2615, 16
  %2623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2622)  ; LegacyF16ToF32(value)
  %2624 = fsub fast float %2585, %2623
  %2625 = fmul fast float %2624, %2617
  %2626 = fadd fast float %2625, %2621
  %2627 = call float @dx.op.unary.f32(i32 7, float %2626)  ; Saturate(value)
  br label %2628

; <label>:2628                                    ; preds = %2612, %2560
  %2629 = phi float [ %2627, %2612 ], [ %2585, %2560 ]
  %2630 = call float @dx.op.dot2.f32(i32 54, float %2606, float %2607, float %2164, float %2165)  ; Dot2(ax,ay,bx,by)
  %2631 = call float @dx.op.dot2.f32(i32 54, float %2606, float %2607, float %2166, float %2167)  ; Dot2(ax,ay,bx,by)
  br label %2632

; <label>:2632                                    ; preds = %2628, %2538
  %2633 = phi float [ %2629, %2628 ], [ 0x3FD6666660000000, %2538 ]
  %2634 = phi float [ %2630, %2628 ], [ 0.000000e+00, %2538 ]
  %2635 = phi float [ %2631, %2628 ], [ 0.000000e+00, %2538 ]
  %2636 = phi float [ %2572, %2628 ], [ 1.000000e+00, %2538 ]
  %2637 = add i32 %58, 192
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = lshr i32 %2639, 22
  %2641 = shl nuw nsw i32 %2640, 5
  %2642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2641)  ; LegacyF16ToF32(value)
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = and i32 %2644, 64
  %2646 = icmp eq i32 %2645, 0
  br i1 %2646, label %2680, label %2647

; <label>:2647                                    ; preds = %2632
  %2648 = add i32 %58, 416
  %2649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.i32 %2649, 0
  %2651 = add i32 %2650, 0
  %2652 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2651, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.i32 %2653, 0
  %2655 = and i32 %2654, 131072
  %2656 = icmp eq i32 %2655, 0
  %2657 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2652, %dx.types.Handle %111, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2658 = extractvalue %dx.types.ResRet.f32 %2657, 0
  %2659 = extractvalue %dx.types.ResRet.f32 %2657, 1
  %2660 = extractvalue %dx.types.ResRet.f32 %2657, 2
  %2661 = fmul fast float %494, %2658
  %2662 = fmul fast float %495, %2659
  %2663 = fmul fast float %496, %2660
  br i1 %2656, label %2670, label %2664

; <label>:2664                                    ; preds = %2647
  %2665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2666 = extractvalue %dx.types.CBufRet.f32 %2665, 0
  %2667 = fmul fast float %2666, %2661
  %2668 = fmul fast float %2666, %2662
  %2669 = fmul fast float %2666, %2663
  br label %2670

; <label>:2670                                    ; preds = %2664, %2647
  %2671 = phi float [ %2667, %2664 ], [ %2661, %2647 ]
  %2672 = phi float [ %2668, %2664 ], [ %2662, %2647 ]
  %2673 = phi float [ %2669, %2664 ], [ %2663, %2647 ]
  %2674 = fmul fast float %2671, %2642
  %2675 = select i1 %266, float %2674, float %2671
  %2676 = call float @dx.op.dot3.f32(i32 55, float %2675, float %2672, float %2673, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2677 = select i1 %266, float 0.000000e+00, float %2671
  %2678 = select i1 %266, float %2676, float %2672
  %2679 = select i1 %266, float 0.000000e+00, float %2673
  br label %2680

; <label>:2680                                    ; preds = %2670, %2632
  %2681 = phi float [ %2677, %2670 ], [ 0.000000e+00, %2632 ]
  %2682 = phi float [ %2678, %2670 ], [ 0.000000e+00, %2632 ]
  %2683 = phi float [ %2679, %2670 ], [ 0.000000e+00, %2632 ]
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = and i32 %2685, 10240
  %2687 = icmp eq i32 %2686, 0
  br i1 %2687, label %2732, label %2688

; <label>:2688                                    ; preds = %2680
  %2689 = add i32 %58, 484
  %2690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2689, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.i32 %2690, 0
  %2692 = add i32 %2691, 0
  %2693 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2692, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2694 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2693, %dx.types.Handle %112, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2695 = extractvalue %dx.types.ResRet.f32 %2694, 1
  %2696 = extractvalue %dx.types.ResRet.f32 %2694, 3
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = and i32 %2698, 1048576
  %2700 = icmp ne i32 %2699, 0
  %2701 = and i32 %2698, 8192
  %2702 = icmp eq i32 %2701, 0
  br i1 %2702, label %2718, label %2703

; <label>:2703                                    ; preds = %2688
  %2704 = extractvalue %dx.types.ResRet.f32 %2694, 2
  %2705 = select i1 %2700, float %2704, float %2695
  %2706 = extractvalue %dx.types.ResRet.f32 %2694, 0
  %2707 = select i1 %2700, float %2706, float %2695
  %2708 = add i32 %58, 128
  %2709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2708, i32 undef)  ; BufferLoad(srv,index,wot)
  %2710 = extractvalue %dx.types.ResRet.i32 %2709, 0
  %2711 = lshr i32 %2710, 16
  %2712 = and i32 %2711, 255
  %2713 = uitofp i32 %2712 to float
  %2714 = fmul fast float %2713, 0x3F80101020000000
  %2715 = fmul fast float %2714, %2707
  %2716 = fmul fast float %2714, %2695
  %2717 = fmul fast float %2714, %2705
  br label %2718

; <label>:2718                                    ; preds = %2703, %2688
  %2719 = phi float [ %2715, %2703 ], [ 0.000000e+00, %2688 ]
  %2720 = phi float [ %2716, %2703 ], [ 0.000000e+00, %2688 ]
  %2721 = phi float [ %2717, %2703 ], [ 0.000000e+00, %2688 ]
  %2722 = and i32 %2698, 2048
  %2723 = icmp eq i32 %2722, 0
  br i1 %2723, label %2732, label %2724

; <label>:2724                                    ; preds = %2718
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = shl i32 %2726, 4
  %2728 = and i32 %2727, 32752
  %2729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2728)  ; LegacyF16ToF32(value)
  %2730 = fmul fast float %2729, %2696
  %2731 = call float @dx.op.binary.f32(i32 35, float %2730, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2732

; <label>:2732                                    ; preds = %2724, %2718, %2680
  %2733 = phi float [ %2719, %2724 ], [ %2719, %2718 ], [ 0.000000e+00, %2680 ]
  %2734 = phi float [ %2720, %2724 ], [ %2720, %2718 ], [ 0.000000e+00, %2680 ]
  %2735 = phi float [ %2721, %2724 ], [ %2721, %2718 ], [ 0.000000e+00, %2680 ]
  %2736 = phi float [ %2731, %2724 ], [ 0x3F70101020000000, %2718 ], [ 0x3F70101020000000, %2680 ]
  %2737 = add i32 %58, 128
  %2738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2739 = extractvalue %dx.types.ResRet.i32 %2738, 0
  %2740 = and i32 %2739, 255
  %2741 = uitofp i32 %2740 to float
  %2742 = lshr i32 %2739, 8
  %2743 = and i32 %2742, 255
  %2744 = uitofp i32 %2743 to float
  %2745 = call float @dx.op.dot3.f32(i32 55, float %2553, float %2554, float %2555, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2746 = fmul fast float %2744, %2745
  %2747 = fadd fast float %2746, %2741
  %2748 = fmul fast float %2747, 0x3F70101020000000
  %2749 = call float @dx.op.unary.f32(i32 7, float %2748)  ; Saturate(value)
  br i1 %2152, label %2750, label %2758

; <label>:2750                                    ; preds = %2732
  %2751 = fsub fast float 1.000000e+00, %2333
  %2752 = fmul fast float %2751, %2137
  %2753 = fmul fast float %2751, %2138
  %2754 = fmul fast float %2751, %2139
  %2755 = fmul fast float %2751, %2140
  %2756 = fmul fast float %2751, %2141
  %2757 = fmul fast float %2751, %2142
  br label %2758

; <label>:2758                                    ; preds = %2750, %2732
  %2759 = phi float [ %2752, %2750 ], [ %2137, %2732 ]
  %2760 = phi float [ %2753, %2750 ], [ %2138, %2732 ]
  %2761 = phi float [ %2754, %2750 ], [ %2139, %2732 ]
  %2762 = phi float [ %2755, %2750 ], [ %2140, %2732 ]
  %2763 = phi float [ %2756, %2750 ], [ %2141, %2732 ]
  %2764 = phi float [ %2757, %2750 ], [ %2142, %2732 ]
  %2765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.i32 %2765, 0
  %2767 = and i32 %2766, 3
  %2768 = icmp eq i32 %2767, 3
  br i1 %2768, label %2847, label %2769

; <label>:2769                                    ; preds = %2758
  %2770 = and i32 %2766, 16
  %2771 = icmp ne i32 %2770, 0
  %2772 = select i1 %2771, float %2333, float 0.000000e+00
  %2773 = icmp eq i32 %2767, 0
  br i1 %2773, label %2774, label %2802

; <label>:2774                                    ; preds = %2769
  %2775 = and i32 %2766, 64
  %2776 = icmp ne i32 %2775, 0
  %2777 = select i1 %2776, float %2333, float 0.000000e+00
  %2778 = fsub fast float %2553, %2759
  %2779 = fsub fast float %2554, %2760
  %2780 = fsub fast float %2555, %2761
  %2781 = fmul fast float %2772, %2778
  %2782 = fmul fast float %2772, %2779
  %2783 = fmul fast float %2772, %2780
  %2784 = fadd fast float %2781, %2759
  %2785 = fadd fast float %2782, %2760
  %2786 = fadd fast float %2783, %2761
  %2787 = fsub fast float %2539, %2146
  %2788 = fmul fast float %2772, %2787
  %2789 = fadd fast float %2788, %2146
  %2790 = fsub fast float %2681, %2762
  %2791 = fsub fast float %2682, %2763
  %2792 = fsub fast float %2683, %2764
  %2793 = fmul fast float %2777, %2790
  %2794 = fmul fast float %2777, %2791
  %2795 = fmul fast float %2777, %2792
  %2796 = fadd fast float %2793, %2762
  %2797 = fadd fast float %2794, %2763
  %2798 = fadd fast float %2795, %2764
  %2799 = fsub fast float %2749, %2150
  %2800 = fmul fast float %2772, %2799
  %2801 = fadd fast float %2800, %2150
  br label %2847

; <label>:2802                                    ; preds = %2769
  %2803 = icmp eq i32 %2767, 1
  br i1 %2803, label %2804, label %2817

; <label>:2804                                    ; preds = %2802
  %2805 = fadd fast float %2553, -1.000000e+00
  %2806 = fadd fast float %2554, -1.000000e+00
  %2807 = fadd fast float %2555, -1.000000e+00
  %2808 = fmul fast float %2772, %2805
  %2809 = fmul fast float %2772, %2806
  %2810 = fmul fast float %2772, %2807
  %2811 = fadd fast float %2808, 1.000000e+00
  %2812 = fadd fast float %2809, 1.000000e+00
  %2813 = fadd fast float %2810, 1.000000e+00
  %2814 = fmul fast float %2811, %2759
  %2815 = fmul fast float %2812, %2760
  %2816 = fmul fast float %2813, %2761
  br label %2847

; <label>:2817                                    ; preds = %2802
  %2818 = icmp eq i32 %2767, 2
  br i1 %2818, label %2819, label %2847

; <label>:2819                                    ; preds = %2817
  %2820 = call float @dx.op.unary.f32(i32 24, float %2553)  ; Sqrt(value)
  %2821 = call float @dx.op.unary.f32(i32 24, float %2554)  ; Sqrt(value)
  %2822 = call float @dx.op.unary.f32(i32 24, float %2555)  ; Sqrt(value)
  %2823 = fadd fast float %2820, -5.000000e-01
  %2824 = fadd fast float %2821, -5.000000e-01
  %2825 = fadd fast float %2822, -5.000000e-01
  %2826 = fmul fast float %2823, %2772
  %2827 = fmul fast float %2824, %2772
  %2828 = fmul fast float %2825, %2772
  %2829 = fadd fast float %2826, 5.000000e-01
  %2830 = fadd fast float %2827, 5.000000e-01
  %2831 = fadd fast float %2828, 5.000000e-01
  %2832 = fmul fast float %2829, 2.000000e+00
  %2833 = fsub fast float 1.000000e+00, %2832
  %2834 = fmul fast float %2833, %2759
  %2835 = fadd fast float %2834, %2832
  %2836 = fmul fast float %2835, %2759
  %2837 = fmul fast float %2830, 2.000000e+00
  %2838 = fsub fast float 1.000000e+00, %2837
  %2839 = fmul fast float %2838, %2760
  %2840 = fadd fast float %2839, %2837
  %2841 = fmul fast float %2840, %2760
  %2842 = fmul fast float %2831, 2.000000e+00
  %2843 = fsub fast float 1.000000e+00, %2842
  %2844 = fmul fast float %2843, %2761
  %2845 = fadd fast float %2844, %2842
  %2846 = fmul fast float %2845, %2761
  br label %2847

; <label>:2847                                    ; preds = %2819, %2817, %2804, %2774, %2758
  %2848 = phi float [ %2759, %2758 ], [ %2836, %2819 ], [ %2759, %2817 ], [ %2814, %2804 ], [ %2784, %2774 ]
  %2849 = phi float [ %2760, %2758 ], [ %2841, %2819 ], [ %2760, %2817 ], [ %2815, %2804 ], [ %2785, %2774 ]
  %2850 = phi float [ %2761, %2758 ], [ %2846, %2819 ], [ %2761, %2817 ], [ %2816, %2804 ], [ %2786, %2774 ]
  %2851 = phi float [ %2762, %2758 ], [ %2762, %2819 ], [ %2762, %2817 ], [ %2762, %2804 ], [ %2796, %2774 ]
  %2852 = phi float [ %2763, %2758 ], [ %2763, %2819 ], [ %2763, %2817 ], [ %2763, %2804 ], [ %2797, %2774 ]
  %2853 = phi float [ %2764, %2758 ], [ %2764, %2819 ], [ %2764, %2817 ], [ %2764, %2804 ], [ %2798, %2774 ]
  %2854 = phi float [ %2146, %2758 ], [ %2146, %2819 ], [ %2146, %2817 ], [ %2146, %2804 ], [ %2789, %2774 ]
  %2855 = phi float [ %2150, %2758 ], [ %2150, %2819 ], [ %2150, %2817 ], [ %2150, %2804 ], [ %2801, %2774 ]
  %2856 = and i32 %2766, 12
  %2857 = icmp eq i32 %2856, 12
  br i1 %2857, label %2964, label %2858

; <label>:2858                                    ; preds = %2847
  %2859 = and i32 %2766, 2097184
  %2860 = icmp eq i32 %2859, 2097184
  %2861 = select i1 %2860, float %2333, float 0.000000e+00
  %2862 = and i32 %2766, 4194336
  %2863 = icmp eq i32 %2862, 4194336
  %2864 = select i1 %2863, float %2333, float 0.000000e+00
  %2865 = and i32 %2766, 8388640
  %2866 = icmp eq i32 %2865, 8388640
  %2867 = select i1 %2866, float %2333, float 0.000000e+00
  %2868 = and i32 %2766, 2048
  %2869 = icmp ne i32 %2868, 0
  %2870 = select i1 %2869, float %2333, float 0.000000e+00
  %2871 = and i32 %2766, 8192
  %2872 = icmp ne i32 %2871, 0
  %2873 = select i1 %2872, float %2333, float 0.000000e+00
  %2874 = icmp eq i32 %2856, 0
  br i1 %2874, label %2875, label %2900

; <label>:2875                                    ; preds = %2858
  %2876 = fsub fast float %2634, %2135
  %2877 = fsub fast float %2635, %2136
  %2878 = fmul fast float %2861, %2876
  %2879 = fmul fast float %2861, %2877
  %2880 = fadd fast float %2878, %2135
  %2881 = fadd fast float %2879, %2136
  %2882 = fsub fast float %2636, %2148
  %2883 = fmul fast float %2864, %2882
  %2884 = fadd fast float %2883, %2148
  %2885 = fsub fast float %2633, %2147
  %2886 = fmul fast float %2867, %2885
  %2887 = fadd fast float %2886, %2147
  %2888 = fsub fast float %2736, %2149
  %2889 = fmul fast float %2870, %2888
  %2890 = fadd fast float %2889, %2149
  %2891 = fsub fast float %2733, %2143
  %2892 = fsub fast float %2734, %2144
  %2893 = fsub fast float %2735, %2145
  %2894 = fmul fast float %2873, %2891
  %2895 = fmul fast float %2873, %2892
  %2896 = fmul fast float %2873, %2893
  %2897 = fadd fast float %2894, %2143
  %2898 = fadd fast float %2895, %2144
  %2899 = fadd fast float %2896, %2145
  br label %2964

; <label>:2900                                    ; preds = %2858
  %2901 = icmp eq i32 %2856, 4
  br i1 %2901, label %2902, label %2942

; <label>:2902                                    ; preds = %2900
  %2903 = fmul fast float %2861, %2634
  %2904 = fmul fast float %2861, %2635
  %2905 = fadd fast float %2903, %2135
  %2906 = fadd fast float %2904, %2136
  %2907 = call float @dx.op.binary.f32(i32 36, float %2148, float %2636)  ; FMin(a,b)
  %2908 = fsub fast float %2907, %2148
  %2909 = fmul fast float %2908, %2864
  %2910 = fadd fast float %2909, %2148
  %2911 = fadd fast float %2633, %2147
  %2912 = fmul fast float %2911, 0x3FF337FAE0000000
  %2913 = fmul fast float %2147, %2147
  %2914 = fmul fast float %2633, %2633
  %2915 = fadd fast float %2914, %2913
  %2916 = fmul fast float %2915, 0x3FE5152B00000000
  %2917 = fmul fast float %2147, 0xBFCC1F85E0000000
  %2918 = fmul fast float %2917, %2633
  %2919 = fadd fast float %2918, 0xBFE1363700000000
  %2920 = fadd fast float %2919, %2912
  %2921 = fsub fast float %2920, %2916
  %2922 = fmul fast float %2911, 0x3FBA6F0D00000000
  %2923 = fmul fast float %2915, 0x3FD0432880000000
  %2924 = fmul fast float %2147, 0xBFEF110800000000
  %2925 = fmul fast float %2924, %2633
  %2926 = fadd fast float %2925, 1.000000e+00
  %2927 = fsub fast float %2926, %2922
  %2928 = fadd fast float %2927, %2923
  %2929 = fdiv fast float %2921, %2928
  %2930 = call float @dx.op.unary.f32(i32 7, float %2929)  ; Saturate(value)
  %2931 = fsub fast float %2930, %2147
  %2932 = fmul fast float %2931, %2867
  %2933 = fadd fast float %2932, %2147
  %2934 = fmul fast float %2870, %2736
  %2935 = fadd fast float %2934, %2149
  %2936 = fmul fast float %2873, %2733
  %2937 = fmul fast float %2873, %2734
  %2938 = fmul fast float %2873, %2735
  %2939 = fadd fast float %2936, %2143
  %2940 = fadd fast float %2937, %2144
  %2941 = fadd fast float %2938, %2145
  br label %2964

; <label>:2942                                    ; preds = %2900
  %2943 = icmp eq i32 %2856, 8
  br i1 %2943, label %2944, label %2964

; <label>:2944                                    ; preds = %2942
  %2945 = fmul fast float %2861, %2634
  %2946 = fmul fast float %2861, %2635
  %2947 = fadd fast float %2945, %2135
  %2948 = fadd fast float %2946, %2136
  %2949 = call float @dx.op.binary.f32(i32 36, float %2148, float %2636)  ; FMin(a,b)
  %2950 = fsub fast float %2949, %2148
  %2951 = fmul fast float %2950, %2864
  %2952 = fadd fast float %2951, %2148
  %2953 = fsub fast float %2633, %2147
  %2954 = fmul fast float %2867, %2953
  %2955 = fadd fast float %2954, %2147
  %2956 = fmul fast float %2870, %2736
  %2957 = fadd fast float %2956, %2149
  %2958 = fmul fast float %2873, %2733
  %2959 = fmul fast float %2873, %2734
  %2960 = fmul fast float %2873, %2735
  %2961 = fadd fast float %2958, %2143
  %2962 = fadd fast float %2959, %2144
  %2963 = fadd fast float %2960, %2145
  br label %2964

; <label>:2964                                    ; preds = %2944, %2942, %2902, %2875, %2847, %2332, %2151, %2134
  %2965 = phi float [ %2135, %2847 ], [ %2135, %2332 ], [ %2135, %2134 ], [ %2947, %2944 ], [ %2135, %2942 ], [ %2905, %2902 ], [ %2880, %2875 ], [ %2135, %2151 ]
  %2966 = phi float [ %2136, %2847 ], [ %2136, %2332 ], [ %2136, %2134 ], [ %2948, %2944 ], [ %2136, %2942 ], [ %2906, %2902 ], [ %2881, %2875 ], [ %2136, %2151 ]
  %2967 = phi float [ %2848, %2847 ], [ %2137, %2332 ], [ %2137, %2134 ], [ %2848, %2944 ], [ %2848, %2942 ], [ %2848, %2902 ], [ %2848, %2875 ], [ %2137, %2151 ]
  %2968 = phi float [ %2849, %2847 ], [ %2138, %2332 ], [ %2138, %2134 ], [ %2849, %2944 ], [ %2849, %2942 ], [ %2849, %2902 ], [ %2849, %2875 ], [ %2138, %2151 ]
  %2969 = phi float [ %2850, %2847 ], [ %2139, %2332 ], [ %2139, %2134 ], [ %2850, %2944 ], [ %2850, %2942 ], [ %2850, %2902 ], [ %2850, %2875 ], [ %2139, %2151 ]
  %2970 = phi float [ %2851, %2847 ], [ %2140, %2332 ], [ %2140, %2134 ], [ %2851, %2944 ], [ %2851, %2942 ], [ %2851, %2902 ], [ %2851, %2875 ], [ %2140, %2151 ]
  %2971 = phi float [ %2852, %2847 ], [ %2141, %2332 ], [ %2141, %2134 ], [ %2852, %2944 ], [ %2852, %2942 ], [ %2852, %2902 ], [ %2852, %2875 ], [ %2141, %2151 ]
  %2972 = phi float [ %2853, %2847 ], [ %2142, %2332 ], [ %2142, %2134 ], [ %2853, %2944 ], [ %2853, %2942 ], [ %2853, %2902 ], [ %2853, %2875 ], [ %2142, %2151 ]
  %2973 = phi float [ %2143, %2847 ], [ %2143, %2332 ], [ %2143, %2134 ], [ %2961, %2944 ], [ %2143, %2942 ], [ %2939, %2902 ], [ %2897, %2875 ], [ %2143, %2151 ]
  %2974 = phi float [ %2144, %2847 ], [ %2144, %2332 ], [ %2144, %2134 ], [ %2962, %2944 ], [ %2144, %2942 ], [ %2940, %2902 ], [ %2898, %2875 ], [ %2144, %2151 ]
  %2975 = phi float [ %2145, %2847 ], [ %2145, %2332 ], [ %2145, %2134 ], [ %2963, %2944 ], [ %2145, %2942 ], [ %2941, %2902 ], [ %2899, %2875 ], [ %2145, %2151 ]
  %2976 = phi float [ %2854, %2847 ], [ %2146, %2332 ], [ %2146, %2134 ], [ %2854, %2944 ], [ %2854, %2942 ], [ %2854, %2902 ], [ %2854, %2875 ], [ %2146, %2151 ]
  %2977 = phi float [ %2147, %2847 ], [ %2147, %2332 ], [ %2147, %2134 ], [ %2955, %2944 ], [ %2147, %2942 ], [ %2933, %2902 ], [ %2887, %2875 ], [ %2147, %2151 ]
  %2978 = phi float [ %2148, %2847 ], [ %2148, %2332 ], [ %2148, %2134 ], [ %2952, %2944 ], [ %2148, %2942 ], [ %2910, %2902 ], [ %2884, %2875 ], [ %2148, %2151 ]
  %2979 = phi float [ %2149, %2847 ], [ %2149, %2332 ], [ %2149, %2134 ], [ %2957, %2944 ], [ %2149, %2942 ], [ %2935, %2902 ], [ %2890, %2875 ], [ %2149, %2151 ]
  %2980 = phi float [ %2855, %2847 ], [ %2150, %2332 ], [ %2150, %2134 ], [ %2855, %2944 ], [ %2855, %2942 ], [ %2855, %2902 ], [ %2855, %2875 ], [ %2150, %2151 ]
  br i1 %653, label %3794, label %2981

; <label>:2981                                    ; preds = %2964
  %2982 = icmp ult i32 %707, 4
  %2983 = add i32 %58, 72
  %2984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %2985 = extractvalue %dx.types.ResRet.i32 %2984, 0
  %2986 = add i32 %58, 76
  %2987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2988 = extractvalue %dx.types.ResRet.i32 %2987, 0
  %2989 = or i32 %2988, %2985
  %2990 = icmp eq i32 %2989, 0
  br i1 %2990, label %3794, label %2991

; <label>:2991                                    ; preds = %2981
  %2992 = and i32 %2985, 262144
  %2993 = icmp ne i32 %2992, 0
  %2994 = select i1 %2993, float %65, float 1.000000e+00
  %2995 = select i1 %2993, float %66, float 0.000000e+00
  %2996 = select i1 %2993, float %67, float 0.000000e+00
  %2997 = select i1 %2993, float %68, float 1.000000e+00
  %2998 = select i1 %2993, float %69, float %97
  %2999 = select i1 %2993, float %70, float %98
  %3000 = add i32 %58, 332
  %3001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3002 = extractvalue %dx.types.ResRet.i32 %3001, 0
  %3003 = lshr i32 %3002, 16
  %3004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3003)  ; LegacyF16ToF32(value)
  %3005 = fmul fast float %3004, 0x3F50624DE0000000
  %3006 = add i32 %58, 136
  %3007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3006, i32 undef)  ; BufferLoad(srv,index,wot)
  %3008 = extractvalue %dx.types.ResRet.i32 %3007, 0
  %3009 = lshr i32 %3008, 16
  %3010 = and i32 %3009, 255
  %3011 = lshr i32 %3008, 24
  %3012 = add i32 %58, 340
  %3013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3012, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.i32 %3013, 0
  %3015 = and i32 %3014, 65535
  %3016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3015)  ; LegacyF16ToF32(value)
  %3017 = lshr i32 %3014, 16
  %3018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3017)  ; LegacyF16ToF32(value)
  %3019 = add i32 %58, 80
  %3020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3019, i32 undef)  ; BufferLoad(srv,index,wot)
  %3021 = extractvalue %dx.types.ResRet.i32 %3020, 0
  %3022 = lshr i32 %3021, 22
  %3023 = shl nuw nsw i32 %3022, 5
  %3024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3023)  ; LegacyF16ToF32(value)
  %3025 = shl i32 %3021, 4
  %3026 = and i32 %3025, 32752
  %3027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3026)  ; LegacyF16ToF32(value)
  %3028 = lshr i32 %3021, 7
  %3029 = and i32 %3028, 32752
  %3030 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3029)  ; LegacyF16ToF32(value)
  %3031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3032 = extractvalue %dx.types.CBufRet.f32 %3031, 3
  %3033 = fmul fast float %3032, 1.000000e+03
  %3034 = fmul fast float %3033, %642
  %3035 = call float @dx.op.unary.f32(i32 22, float %3034)  ; Frc(value)
  %3036 = fadd fast float %3035, %630
  %3037 = fmul fast float %3033, %644
  %3038 = call float @dx.op.unary.f32(i32 22, float %3037)  ; Frc(value)
  %3039 = fadd fast float %3038, %631
  %3040 = fmul fast float %3005, %3033
  %3041 = call float @dx.op.unary.f32(i32 22, float %3040)  ; Frc(value)
  %3042 = fmul fast float %3041, 0x401921FB60000000
  %3043 = fadd fast float %3042, %3024
  %3044 = call float @dx.op.unary.f32(i32 13, float %3043)  ; Sin(value)
  %3045 = call float @dx.op.unary.f32(i32 12, float %3043)  ; Cos(value)
  %3046 = fsub fast float -0.000000e+00, %3044
  %3047 = fadd fast float %2998, -5.000000e-01
  %3048 = fadd fast float %2999, -5.000000e-01
  %3049 = fmul fast float %3016, %3047
  %3050 = fmul fast float %3018, %3048
  %3051 = fadd fast float %3049, 5.000000e-01
  %3052 = fadd fast float %3050, 5.000000e-01
  %3053 = fmul fast float %3027, %3051
  %3054 = fmul fast float %3030, %3052
  %3055 = fmul fast float %3045, %3053
  %3056 = call float @dx.op.tertiary.f32(i32 46, float %3046, float %3054, float %3055)  ; FMad(a,b,c)
  %3057 = fmul fast float %3044, %3053
  %3058 = call float @dx.op.tertiary.f32(i32 46, float %3045, float %3054, float %3057)  ; FMad(a,b,c)
  %3059 = fadd fast float %3036, %3056
  %3060 = fadd fast float %3039, %3058
  %3061 = icmp ugt i32 %3010, 1
  %3062 = icmp ugt i32 %3008, 33554431
  %3063 = or i1 %3062, %3061
  br i1 %3063, label %3064, label %3089

; <label>:3064                                    ; preds = %2991
  %3065 = add i32 %58, 276
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = lshr i32 %3067, 16
  %3069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3068)  ; LegacyF16ToF32(value)
  %3070 = fmul fast float %3032, %3069
  %3071 = call float @dx.op.unary.f32(i32 22, float %3070)  ; Frc(value)
  %3072 = mul nuw nsw i32 %3010, %3011
  %3073 = uitofp i32 %3072 to float
  %3074 = fmul fast float %3071, %3073
  %3075 = call float @dx.op.unary.f32(i32 27, float %3074)  ; Round_ni(value)
  %3076 = fptoui float %3075 to i32
  %3077 = urem i32 %3076, %3010
  %3078 = udiv i32 %3076, %3011
  %3079 = call float @dx.op.unary.f32(i32 22, float %3059)  ; Frc(value)
  %3080 = call float @dx.op.unary.f32(i32 22, float %3060)  ; Frc(value)
  %3081 = uitofp i32 %3077 to float
  %3082 = uitofp i32 %3078 to float
  %3083 = fadd fast float %3079, %3081
  %3084 = fadd fast float %3080, %3082
  %3085 = uitofp i32 %3010 to float
  %3086 = uitofp i32 %3011 to float
  %3087 = fdiv fast float %3083, %3085
  %3088 = fdiv fast float %3084, %3086
  br label %3089

; <label>:3089                                    ; preds = %3064, %2991
  %3090 = phi float [ %3087, %3064 ], [ %3059, %2991 ]
  %3091 = phi float [ %3088, %3064 ], [ %3060, %2991 ]
  %3092 = and i32 %2985, 256
  %3093 = icmp eq i32 %3092, 0
  br i1 %3093, label %3140, label %3094

; <label>:3094                                    ; preds = %3089
  %3095 = add i32 %58, 452
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = add i32 %3097, 0
  %3099 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3098, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3100 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3099, %dx.types.Handle %112, float %3090, float %3091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3101 = extractvalue %dx.types.ResRet.f32 %3100, 0
  %3102 = add i32 %58, 148
  %3103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.i32 %3103, 0
  %3105 = shl i32 %3104, 4
  %3106 = and i32 %3105, 32752
  %3107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3106)  ; LegacyF16ToF32(value)
  %3108 = lshr i32 %3104, 7
  %3109 = and i32 %3108, 32752
  %3110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3109)  ; LegacyF16ToF32(value)
  %3111 = fsub fast float 1.000000e+00, %702
  %3112 = call float @dx.op.binary.f32(i32 35, float %3111, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3113 = bitcast float %702 to i32
  %3114 = sitofp i32 %3113 to float
  %3115 = fadd fast float %3114, 0xC1CFBF8940000000
  %3116 = fmul fast float %3110, %3115
  %3117 = fadd fast float %3116, 0x41CFBF8940000000
  %3118 = fptosi float %3117 to i32
  %3119 = bitcast i32 %3118 to float
  %3120 = bitcast float %3112 to i32
  %3121 = sitofp i32 %3120 to float
  %3122 = fadd fast float %3121, 0xC1CFBF8940000000
  %3123 = fmul fast float %3122, %3110
  %3124 = fadd fast float %3123, 0x41CFBF8940000000
  %3125 = fptosi float %3124 to i32
  %3126 = bitcast i32 %3125 to float
  %3127 = fmul fast float %3119, %3107
  %3128 = fmul fast float %3126, %3107
  %3129 = fsub fast float %3112, %3127
  %3130 = fadd fast float %3128, %3112
  %3131 = call float @dx.op.unary.f32(i32 7, float %3129)  ; Saturate(value)
  %3132 = call float @dx.op.unary.f32(i32 7, float %3130)  ; Saturate(value)
  %3133 = fsub fast float %3101, %3131
  %3134 = fsub fast float %3132, %3131
  %3135 = bitcast float %3134 to i32
  %3136 = sub nsw i32 2129859010, %3135
  %3137 = bitcast i32 %3136 to float
  %3138 = fmul fast float %3137, %3133
  %3139 = call float @dx.op.unary.f32(i32 7, float %3138)  ; Saturate(value)
  br label %3140

; <label>:3140                                    ; preds = %3094, %3089
  %3141 = phi float [ %3139, %3094 ], [ %702, %3089 ]
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = and i32 %3143, 128
  %3145 = icmp eq i32 %3144, 0
  br i1 %3145, label %3162, label %3146

; <label>:3146                                    ; preds = %3140
  %3147 = add i32 %58, 436
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3147, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = add i32 %3149, 0
  %3151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3150, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3152 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3151, %dx.types.Handle %112, float %3090, float %3091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3153 = extractvalue %dx.types.ResRet.f32 %3152, 0
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = and i32 %3155, 524288
  %3157 = icmp ne i32 %3156, 0
  %3158 = fcmp fast ogt float %3153, 0x3FE0101020000000
  %3159 = select i1 %3158, float 1.000000e+00, float 0.000000e+00
  %3160 = select i1 %3157, float %3159, float %3153
  %3161 = fmul fast float %3160, %3141
  br label %3162

; <label>:3162                                    ; preds = %3146, %3140
  %3163 = phi float [ %3161, %3146 ], [ %3141, %3140 ]
  %3164 = fcmp fast ult float %3163, 0x3F70101020000000
  br i1 %3164, label %3794, label %3165

; <label>:3165                                    ; preds = %3162
  %3166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3167 = extractvalue %dx.types.ResRet.i32 %3166, 0
  %3168 = and i32 %3167, 16
  %3169 = icmp eq i32 %3168, 0
  br i1 %3169, label %3368, label %3170

; <label>:3170                                    ; preds = %3165
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3006, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = add i32 %58, 388
  %3174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3173, i32 undef)  ; BufferLoad(srv,index,wot)
  %3175 = extractvalue %dx.types.ResRet.i32 %3174, 0
  %3176 = add i32 %3175, 0
  %3177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3178 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3177, %dx.types.Handle %111, float %3090, float %3091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3179 = extractvalue %dx.types.ResRet.f32 %3178, 0
  %3180 = extractvalue %dx.types.ResRet.f32 %3178, 1
  %3181 = extractvalue %dx.types.ResRet.f32 %3178, 2
  %3182 = extractvalue %dx.types.ResRet.f32 %3178, 3
  %3183 = and i32 %3172, 255
  %3184 = uitofp i32 %3183 to float
  %3185 = lshr i32 %3172, 8
  %3186 = and i32 %3185, 255
  %3187 = uitofp i32 %3186 to float
  %3188 = fmul fast float %3182, %3184
  %3189 = fadd fast float %3188, %3187
  %3190 = fmul fast float %3189, 0x3F70101000000000
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = and i32 %3192, 512
  %3194 = icmp eq i32 %3193, 0
  br i1 %3194, label %3203, label %3195

; <label>:3195                                    ; preds = %3170
  %3196 = add i32 %58, 472
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = add i32 %3198, 0
  %3200 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3199, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3201 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3200, %dx.types.Handle %112, float %3090, float %3091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3202 = extractvalue %dx.types.ResRet.f32 %3201, 0
  br label %3203

; <label>:3203                                    ; preds = %3195, %3170
  %3204 = phi float [ %3202, %3195 ], [ 1.000000e+00, %3170 ]
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = and i32 %3206, 33554432
  %3208 = icmp eq i32 %3207, 0
  br i1 %3208, label %3315, label %3209

; <label>:3209                                    ; preds = %3203
  %3210 = add i32 %58, 272
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3210, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = and i32 %3212, 65535
  %3214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3213)  ; LegacyF16ToF32(value)
  %3215 = lshr i32 %3212, 16
  %3216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3215)  ; LegacyF16ToF32(value)
  %3217 = add i32 %58, 276
  %3218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3217, i32 undef)  ; BufferLoad(srv,index,wot)
  %3219 = extractvalue %dx.types.ResRet.i32 %3218, 0
  %3220 = and i32 %3219, 65535
  %3221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3220)  ; LegacyF16ToF32(value)
  %3222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.i32 %3222, 0
  %3224 = lshr i32 %3223, 24
  %3225 = uitofp i32 %3224 to float
  %3226 = fmul fast float %3225, 0x3F70101020000000
  %3227 = and i32 %3223, 255
  %3228 = uitofp i32 %3227 to float
  %3229 = fmul fast float %3228, 0x3F70101020000000
  %3230 = lshr i32 %3223, 8
  %3231 = and i32 %3230, 255
  %3232 = uitofp i32 %3231 to float
  %3233 = fmul fast float %3232, 0x3F70101020000000
  %3234 = lshr i32 %3223, 16
  %3235 = and i32 %3234, 255
  %3236 = uitofp i32 %3235 to float
  %3237 = fmul fast float %3236, 0x3F70101020000000
  %3238 = add i32 %58, 268
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3238, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = lshr i32 %3240, 24
  %3242 = uitofp i32 %3241 to float
  %3243 = fmul fast float %3242, 0x3F70101020000000
  %3244 = and i32 %3240, 255
  %3245 = uitofp i32 %3244 to float
  %3246 = fmul fast float %3245, 0x3F70101020000000
  %3247 = lshr i32 %3240, 8
  %3248 = and i32 %3247, 255
  %3249 = uitofp i32 %3248 to float
  %3250 = fmul fast float %3249, 0x3F70101020000000
  %3251 = lshr i32 %3240, 16
  %3252 = and i32 %3251, 255
  %3253 = uitofp i32 %3252 to float
  %3254 = fmul fast float %3253, 0x3F70101020000000
  %3255 = bitcast float %3179 to i32
  %3256 = ashr i32 %3255, 1
  %3257 = sub nsw i32 1597463174, %3256
  %3258 = bitcast i32 %3257 to float
  %3259 = fmul fast float %3179, 5.000000e-01
  %3260 = fmul fast float %3258, %3258
  %3261 = fmul fast float %3260, %3259
  %3262 = fsub fast float 1.500000e+00, %3261
  %3263 = fmul fast float %3258, %3179
  %3264 = fmul fast float %3263, %3262
  %3265 = bitcast float %3180 to i32
  %3266 = ashr i32 %3265, 1
  %3267 = sub nsw i32 1597463174, %3266
  %3268 = bitcast i32 %3267 to float
  %3269 = fmul fast float %3180, 5.000000e-01
  %3270 = fmul fast float %3268, %3268
  %3271 = fmul fast float %3270, %3269
  %3272 = fsub fast float 1.500000e+00, %3271
  %3273 = fmul fast float %3268, %3180
  %3274 = fmul fast float %3273, %3272
  %3275 = bitcast float %3181 to i32
  %3276 = ashr i32 %3275, 1
  %3277 = sub nsw i32 1597463174, %3276
  %3278 = bitcast i32 %3277 to float
  %3279 = fmul fast float %3181, 5.000000e-01
  %3280 = fmul fast float %3278, %3278
  %3281 = fmul fast float %3280, %3279
  %3282 = fsub fast float 1.500000e+00, %3281
  %3283 = fmul fast float %3278, %3181
  %3284 = fmul fast float %3283, %3282
  %3285 = fsub fast float %3264, %3246
  %3286 = fsub fast float %3274, %3250
  %3287 = fsub fast float %3284, %3254
  %3288 = fmul fast float %3285, %3214
  %3289 = fmul fast float %3286, %3216
  %3290 = fmul fast float %3287, %3221
  %3291 = fadd fast float %3288, %3229
  %3292 = fadd fast float %3289, %3233
  %3293 = fadd fast float %3290, %3237
  %3294 = call float @dx.op.unary.f32(i32 7, float %3291)  ; Saturate(value)
  %3295 = call float @dx.op.unary.f32(i32 7, float %3292)  ; Saturate(value)
  %3296 = call float @dx.op.unary.f32(i32 7, float %3293)  ; Saturate(value)
  %3297 = fmul fast float %3294, %3294
  %3298 = fmul fast float %3295, %3295
  %3299 = fmul fast float %3296, %3296
  %3300 = fsub fast float %3297, %3179
  %3301 = fsub fast float %3298, %3180
  %3302 = fsub fast float %3299, %3181
  %3303 = fmul fast float %3300, %3204
  %3304 = fmul fast float %3301, %3204
  %3305 = fmul fast float %3302, %3204
  %3306 = fadd fast float %3303, %3179
  %3307 = fadd fast float %3304, %3180
  %3308 = fadd fast float %3305, %3181
  %3309 = fadd fast float %3226, %3190
  %3310 = fsub fast float %3309, %3243
  %3311 = call float @dx.op.unary.f32(i32 7, float %3310)  ; Saturate(value)
  %3312 = fsub fast float %3311, %3190
  %3313 = fmul fast float %3312, %3204
  %3314 = fadd fast float %3313, %3190
  br label %3368

; <label>:3315                                    ; preds = %3203
  %3316 = and i32 %3206, 134217728
  %3317 = icmp eq i32 %3316, 0
  br i1 %3317, label %3352, label %3318

; <label>:3318                                    ; preds = %3315
  %3319 = call float @dx.op.unary.f32(i32 24, float %618)  ; Sqrt(value)
  %3320 = call float @dx.op.unary.f32(i32 24, float %619)  ; Sqrt(value)
  %3321 = call float @dx.op.unary.f32(i32 24, float %620)  ; Sqrt(value)
  %3322 = fadd fast float %3319, -5.000000e-01
  %3323 = fadd fast float %3320, -5.000000e-01
  %3324 = fadd fast float %3321, -5.000000e-01
  %3325 = fmul fast float %3322, %3204
  %3326 = fmul fast float %3323, %3204
  %3327 = fmul fast float %3324, %3204
  %3328 = fadd fast float %3325, 5.000000e-01
  %3329 = fadd fast float %3326, 5.000000e-01
  %3330 = fadd fast float %3327, 5.000000e-01
  %3331 = call float @dx.op.unary.f32(i32 24, float %3179)  ; Sqrt(value)
  %3332 = call float @dx.op.unary.f32(i32 24, float %3180)  ; Sqrt(value)
  %3333 = call float @dx.op.unary.f32(i32 24, float %3181)  ; Sqrt(value)
  %3334 = fmul fast float %3328, 2.000000e+00
  %3335 = fsub fast float 1.000000e+00, %3334
  %3336 = fmul fast float %3335, %3331
  %3337 = fadd fast float %3336, %3334
  %3338 = fmul fast float %3337, %3331
  %3339 = fmul fast float %3329, 2.000000e+00
  %3340 = fsub fast float 1.000000e+00, %3339
  %3341 = fmul fast float %3340, %3332
  %3342 = fadd fast float %3341, %3339
  %3343 = fmul fast float %3342, %3332
  %3344 = fmul fast float %3330, 2.000000e+00
  %3345 = fsub fast float 1.000000e+00, %3344
  %3346 = fmul fast float %3345, %3333
  %3347 = fadd fast float %3346, %3344
  %3348 = fmul fast float %3347, %3333
  %3349 = fmul fast float %3338, %3338
  %3350 = fmul fast float %3343, %3343
  %3351 = fmul fast float %3348, %3348
  br label %3368

; <label>:3352                                    ; preds = %3315
  %3353 = fmul fast float %618, %618
  %3354 = fmul fast float %619, %619
  %3355 = fmul fast float %620, %620
  %3356 = fadd fast float %3353, -1.000000e+00
  %3357 = fadd fast float %3354, -1.000000e+00
  %3358 = fadd fast float %3355, -1.000000e+00
  %3359 = fmul fast float %3204, %3356
  %3360 = fmul fast float %3204, %3357
  %3361 = fmul fast float %3204, %3358
  %3362 = fadd fast float %3359, 1.000000e+00
  %3363 = fadd fast float %3360, 1.000000e+00
  %3364 = fadd fast float %3361, 1.000000e+00
  %3365 = fmul fast float %3362, %3179
  %3366 = fmul fast float %3363, %3180
  %3367 = fmul fast float %3364, %3181
  br label %3368

; <label>:3368                                    ; preds = %3352, %3318, %3209, %3165
  %3369 = phi float [ %3314, %3209 ], [ %3190, %3318 ], [ %3190, %3352 ], [ 0x3FA23C0BE0000000, %3165 ]
  %3370 = phi float [ %3306, %3209 ], [ %3349, %3318 ], [ %3365, %3352 ], [ 1.000000e+00, %3165 ]
  %3371 = phi float [ %3307, %3209 ], [ %3350, %3318 ], [ %3366, %3352 ], [ 1.000000e+00, %3165 ]
  %3372 = phi float [ %3308, %3209 ], [ %3351, %3318 ], [ %3367, %3352 ], [ 1.000000e+00, %3165 ]
  %3373 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3374 = extractvalue %dx.types.CBufRet.i32 %3373, 1
  %3375 = and i32 %3374, 1
  %3376 = icmp ne i32 %3375, 0
  %3377 = add i32 %58, 356
  %3378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3377, i32 undef)  ; BufferLoad(srv,index,wot)
  %3379 = extractvalue %dx.types.ResRet.i32 %3378, 0
  %3380 = and i32 %3379, 32
  %3381 = icmp ne i32 %3380, 0
  %3382 = and i1 %3376, %3381
  %3383 = select i1 %3382, float 1.000000e+00, float %3370
  %3384 = select i1 %3382, float 0x3FD3333340000000, float %3371
  %3385 = select i1 %3382, float 0x3FD3333340000000, float %3372
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = and i32 %3387, 32
  %3389 = icmp eq i32 %3388, 0
  br i1 %3389, label %3462, label %3390

; <label>:3390                                    ; preds = %3368
  %3391 = add i32 %58, 140
  %3392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.i32 %3392, 0
  %3394 = add i32 %58, 404
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = add i32 %3396, 0
  %3398 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3397, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3399 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3398, %dx.types.Handle %111, float %3090, float %3091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3400 = extractvalue %dx.types.ResRet.f32 %3399, 0
  %3401 = extractvalue %dx.types.ResRet.f32 %3399, 1
  %3402 = extractvalue %dx.types.ResRet.f32 %3399, 2
  %3403 = extractvalue %dx.types.ResRet.f32 %3399, 3
  %3404 = and i32 %3393, 255
  %3405 = uitofp i32 %3404 to float
  %3406 = lshr i32 %3393, 8
  %3407 = and i32 %3406, 255
  %3408 = uitofp i32 %3407 to float
  %3409 = lshr i32 %3393, 16
  %3410 = and i32 %3409, 255
  %3411 = uitofp i32 %3410 to float
  %3412 = fmul fast float %3411, 0x3F70101000000000
  %3413 = fmul fast float %3400, %3405
  %3414 = fadd fast float %3413, %3408
  %3415 = fmul fast float %3414, 0x3F70101000000000
  %3416 = fadd fast float %3401, -5.000000e-01
  %3417 = fadd fast float %3403, -5.000000e-01
  %3418 = fmul fast float %3416, %3412
  %3419 = fmul fast float %3417, %3412
  %3420 = fadd fast float %3418, 5.000000e-01
  %3421 = fadd fast float %3419, 5.000000e-01
  %3422 = fmul fast float %3420, 2.000000e+00
  %3423 = fadd fast float %3422, -1.000000e+00
  %3424 = fmul fast float %3421, 2.000000e+00
  %3425 = fadd fast float %3424, -1.000000e+00
  %3426 = fadd fast float %3423, %3425
  %3427 = fmul fast float %3426, 5.000000e-01
  %3428 = fsub fast float %3423, %3425
  %3429 = fmul fast float %3428, 5.000000e-01
  %3430 = call float @dx.op.unary.f32(i32 6, float %3427)  ; FAbs(value)
  %3431 = fsub fast float 1.000000e+00, %3430
  %3432 = call float @dx.op.unary.f32(i32 6, float %3429)  ; FAbs(value)
  %3433 = fsub fast float %3431, %3432
  %3434 = call float @dx.op.dot3.f32(i32 55, float %3427, float %3429, float %3433, float %3427, float %3429, float %3433)  ; Dot3(ax,ay,az,bx,by,bz)
  %3435 = call float @dx.op.unary.f32(i32 25, float %3434)  ; Rsqrt(value)
  %3436 = fmul fast float %3427, %3435
  %3437 = fmul fast float %3429, %3435
  %3438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.i32 %3438, 0
  %3440 = and i32 %3439, 67108864
  %3441 = icmp eq i32 %3440, 0
  br i1 %3441, label %3458, label %3442

; <label>:3442                                    ; preds = %3390
  %3443 = add i32 %58, 328
  %3444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3443, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.i32 %3444, 0
  %3446 = and i32 %3445, 65535
  %3447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3446)  ; LegacyF16ToF32(value)
  %3448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.i32 %3448, 0
  %3450 = and i32 %3449, 65535
  %3451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3450)  ; LegacyF16ToF32(value)
  %3452 = lshr i32 %3445, 16
  %3453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3452)  ; LegacyF16ToF32(value)
  %3454 = fsub fast float %3415, %3453
  %3455 = fmul fast float %3454, %3447
  %3456 = fadd fast float %3455, %3451
  %3457 = call float @dx.op.unary.f32(i32 7, float %3456)  ; Saturate(value)
  br label %3458

; <label>:3458                                    ; preds = %3442, %3390
  %3459 = phi float [ %3457, %3442 ], [ %3415, %3390 ]
  %3460 = call float @dx.op.dot2.f32(i32 54, float %3436, float %3437, float %2994, float %2995)  ; Dot2(ax,ay,bx,by)
  %3461 = call float @dx.op.dot2.f32(i32 54, float %3436, float %3437, float %2996, float %2997)  ; Dot2(ax,ay,bx,by)
  br label %3462

; <label>:3462                                    ; preds = %3458, %3368
  %3463 = phi float [ %3459, %3458 ], [ 0x3FD6666660000000, %3368 ]
  %3464 = phi float [ %3460, %3458 ], [ 0.000000e+00, %3368 ]
  %3465 = phi float [ %3461, %3458 ], [ 0.000000e+00, %3368 ]
  %3466 = phi float [ %3402, %3458 ], [ 1.000000e+00, %3368 ]
  %3467 = add i32 %58, 208
  %3468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.i32 %3468, 0
  %3470 = lshr i32 %3469, 22
  %3471 = shl nuw nsw i32 %3470, 5
  %3472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3471)  ; LegacyF16ToF32(value)
  %3473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.i32 %3473, 0
  %3475 = and i32 %3474, 64
  %3476 = icmp eq i32 %3475, 0
  br i1 %3476, label %3510, label %3477

; <label>:3477                                    ; preds = %3462
  %3478 = add i32 %58, 420
  %3479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.i32 %3479, 0
  %3481 = add i32 %3480, 0
  %3482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3484 = extractvalue %dx.types.ResRet.i32 %3483, 0
  %3485 = and i32 %3484, 131072
  %3486 = icmp eq i32 %3485, 0
  %3487 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3482, %dx.types.Handle %111, float %3090, float %3091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3488 = extractvalue %dx.types.ResRet.f32 %3487, 0
  %3489 = extractvalue %dx.types.ResRet.f32 %3487, 1
  %3490 = extractvalue %dx.types.ResRet.f32 %3487, 2
  %3491 = fmul fast float %601, %3488
  %3492 = fmul fast float %602, %3489
  %3493 = fmul fast float %603, %3490
  br i1 %3486, label %3500, label %3494

; <label>:3494                                    ; preds = %3477
  %3495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3496 = extractvalue %dx.types.CBufRet.f32 %3495, 0
  %3497 = fmul fast float %3496, %3491
  %3498 = fmul fast float %3496, %3492
  %3499 = fmul fast float %3496, %3493
  br label %3500

; <label>:3500                                    ; preds = %3494, %3477
  %3501 = phi float [ %3497, %3494 ], [ %3491, %3477 ]
  %3502 = phi float [ %3498, %3494 ], [ %3492, %3477 ]
  %3503 = phi float [ %3499, %3494 ], [ %3493, %3477 ]
  %3504 = fmul fast float %3501, %3472
  %3505 = select i1 %266, float %3504, float %3501
  %3506 = call float @dx.op.dot3.f32(i32 55, float %3505, float %3502, float %3503, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3507 = select i1 %266, float 0.000000e+00, float %3501
  %3508 = select i1 %266, float %3506, float %3502
  %3509 = select i1 %266, float 0.000000e+00, float %3503
  br label %3510

; <label>:3510                                    ; preds = %3500, %3462
  %3511 = phi float [ %3507, %3500 ], [ 0.000000e+00, %3462 ]
  %3512 = phi float [ %3508, %3500 ], [ 0.000000e+00, %3462 ]
  %3513 = phi float [ %3509, %3500 ], [ 0.000000e+00, %3462 ]
  %3514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.i32 %3514, 0
  %3516 = and i32 %3515, 10240
  %3517 = icmp eq i32 %3516, 0
  br i1 %3517, label %3562, label %3518

; <label>:3518                                    ; preds = %3510
  %3519 = add i32 %58, 488
  %3520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3519, i32 undef)  ; BufferLoad(srv,index,wot)
  %3521 = extractvalue %dx.types.ResRet.i32 %3520, 0
  %3522 = add i32 %3521, 0
  %3523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3522, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3524 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3523, %dx.types.Handle %112, float %3090, float %3091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3525 = extractvalue %dx.types.ResRet.f32 %3524, 1
  %3526 = extractvalue %dx.types.ResRet.f32 %3524, 3
  %3527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.i32 %3527, 0
  %3529 = and i32 %3528, 1048576
  %3530 = icmp ne i32 %3529, 0
  %3531 = and i32 %3528, 8192
  %3532 = icmp eq i32 %3531, 0
  br i1 %3532, label %3548, label %3533

; <label>:3533                                    ; preds = %3518
  %3534 = extractvalue %dx.types.ResRet.f32 %3524, 2
  %3535 = select i1 %3530, float %3534, float %3525
  %3536 = extractvalue %dx.types.ResRet.f32 %3524, 0
  %3537 = select i1 %3530, float %3536, float %3525
  %3538 = add i32 %58, 144
  %3539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3540 = extractvalue %dx.types.ResRet.i32 %3539, 0
  %3541 = lshr i32 %3540, 16
  %3542 = and i32 %3541, 255
  %3543 = uitofp i32 %3542 to float
  %3544 = fmul fast float %3543, 0x3F80101020000000
  %3545 = fmul fast float %3544, %3537
  %3546 = fmul fast float %3544, %3525
  %3547 = fmul fast float %3544, %3535
  br label %3548

; <label>:3548                                    ; preds = %3533, %3518
  %3549 = phi float [ %3545, %3533 ], [ 0.000000e+00, %3518 ]
  %3550 = phi float [ %3546, %3533 ], [ 0.000000e+00, %3518 ]
  %3551 = phi float [ %3547, %3533 ], [ 0.000000e+00, %3518 ]
  %3552 = and i32 %3528, 2048
  %3553 = icmp eq i32 %3552, 0
  br i1 %3553, label %3562, label %3554

; <label>:3554                                    ; preds = %3548
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = shl i32 %3556, 4
  %3558 = and i32 %3557, 32752
  %3559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3558)  ; LegacyF16ToF32(value)
  %3560 = fmul fast float %3559, %3526
  %3561 = call float @dx.op.binary.f32(i32 35, float %3560, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3562

; <label>:3562                                    ; preds = %3554, %3548, %3510
  %3563 = phi float [ %3549, %3554 ], [ %3549, %3548 ], [ 0.000000e+00, %3510 ]
  %3564 = phi float [ %3550, %3554 ], [ %3550, %3548 ], [ 0.000000e+00, %3510 ]
  %3565 = phi float [ %3551, %3554 ], [ %3551, %3548 ], [ 0.000000e+00, %3510 ]
  %3566 = phi float [ %3561, %3554 ], [ 0x3F70101020000000, %3548 ], [ 0x3F70101020000000, %3510 ]
  %3567 = add i32 %58, 144
  %3568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3567, i32 undef)  ; BufferLoad(srv,index,wot)
  %3569 = extractvalue %dx.types.ResRet.i32 %3568, 0
  %3570 = and i32 %3569, 255
  %3571 = uitofp i32 %3570 to float
  %3572 = lshr i32 %3569, 8
  %3573 = and i32 %3572, 255
  %3574 = uitofp i32 %3573 to float
  %3575 = call float @dx.op.dot3.f32(i32 55, float %3383, float %3384, float %3385, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3576 = fmul fast float %3574, %3575
  %3577 = fadd fast float %3576, %3571
  %3578 = fmul fast float %3577, 0x3F70101020000000
  %3579 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  br i1 %2982, label %3580, label %3588

; <label>:3580                                    ; preds = %3562
  %3581 = fsub fast float 1.000000e+00, %3163
  %3582 = fmul fast float %3581, %2967
  %3583 = fmul fast float %3581, %2968
  %3584 = fmul fast float %3581, %2969
  %3585 = fmul fast float %3581, %2970
  %3586 = fmul fast float %3581, %2971
  %3587 = fmul fast float %3581, %2972
  br label %3588

; <label>:3588                                    ; preds = %3580, %3562
  %3589 = phi float [ %3582, %3580 ], [ %2967, %3562 ]
  %3590 = phi float [ %3583, %3580 ], [ %2968, %3562 ]
  %3591 = phi float [ %3584, %3580 ], [ %2969, %3562 ]
  %3592 = phi float [ %3585, %3580 ], [ %2970, %3562 ]
  %3593 = phi float [ %3586, %3580 ], [ %2971, %3562 ]
  %3594 = phi float [ %3587, %3580 ], [ %2972, %3562 ]
  %3595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.i32 %3595, 0
  %3597 = and i32 %3596, 3
  %3598 = icmp eq i32 %3597, 3
  br i1 %3598, label %3677, label %3599

; <label>:3599                                    ; preds = %3588
  %3600 = and i32 %3596, 16
  %3601 = icmp ne i32 %3600, 0
  %3602 = select i1 %3601, float %3163, float 0.000000e+00
  %3603 = icmp eq i32 %3597, 0
  br i1 %3603, label %3604, label %3632

; <label>:3604                                    ; preds = %3599
  %3605 = and i32 %3596, 64
  %3606 = icmp ne i32 %3605, 0
  %3607 = select i1 %3606, float %3163, float 0.000000e+00
  %3608 = fsub fast float %3383, %3589
  %3609 = fsub fast float %3384, %3590
  %3610 = fsub fast float %3385, %3591
  %3611 = fmul fast float %3602, %3608
  %3612 = fmul fast float %3602, %3609
  %3613 = fmul fast float %3602, %3610
  %3614 = fadd fast float %3611, %3589
  %3615 = fadd fast float %3612, %3590
  %3616 = fadd fast float %3613, %3591
  %3617 = fsub fast float %3369, %2976
  %3618 = fmul fast float %3602, %3617
  %3619 = fadd fast float %3618, %2976
  %3620 = fsub fast float %3511, %3592
  %3621 = fsub fast float %3512, %3593
  %3622 = fsub fast float %3513, %3594
  %3623 = fmul fast float %3607, %3620
  %3624 = fmul fast float %3607, %3621
  %3625 = fmul fast float %3607, %3622
  %3626 = fadd fast float %3623, %3592
  %3627 = fadd fast float %3624, %3593
  %3628 = fadd fast float %3625, %3594
  %3629 = fsub fast float %3579, %2980
  %3630 = fmul fast float %3602, %3629
  %3631 = fadd fast float %3630, %2980
  br label %3677

; <label>:3632                                    ; preds = %3599
  %3633 = icmp eq i32 %3597, 1
  br i1 %3633, label %3634, label %3647

; <label>:3634                                    ; preds = %3632
  %3635 = fadd fast float %3383, -1.000000e+00
  %3636 = fadd fast float %3384, -1.000000e+00
  %3637 = fadd fast float %3385, -1.000000e+00
  %3638 = fmul fast float %3602, %3635
  %3639 = fmul fast float %3602, %3636
  %3640 = fmul fast float %3602, %3637
  %3641 = fadd fast float %3638, 1.000000e+00
  %3642 = fadd fast float %3639, 1.000000e+00
  %3643 = fadd fast float %3640, 1.000000e+00
  %3644 = fmul fast float %3641, %3589
  %3645 = fmul fast float %3642, %3590
  %3646 = fmul fast float %3643, %3591
  br label %3677

; <label>:3647                                    ; preds = %3632
  %3648 = icmp eq i32 %3597, 2
  br i1 %3648, label %3649, label %3677

; <label>:3649                                    ; preds = %3647
  %3650 = call float @dx.op.unary.f32(i32 24, float %3383)  ; Sqrt(value)
  %3651 = call float @dx.op.unary.f32(i32 24, float %3384)  ; Sqrt(value)
  %3652 = call float @dx.op.unary.f32(i32 24, float %3385)  ; Sqrt(value)
  %3653 = fadd fast float %3650, -5.000000e-01
  %3654 = fadd fast float %3651, -5.000000e-01
  %3655 = fadd fast float %3652, -5.000000e-01
  %3656 = fmul fast float %3653, %3602
  %3657 = fmul fast float %3654, %3602
  %3658 = fmul fast float %3655, %3602
  %3659 = fadd fast float %3656, 5.000000e-01
  %3660 = fadd fast float %3657, 5.000000e-01
  %3661 = fadd fast float %3658, 5.000000e-01
  %3662 = fmul fast float %3659, 2.000000e+00
  %3663 = fsub fast float 1.000000e+00, %3662
  %3664 = fmul fast float %3663, %3589
  %3665 = fadd fast float %3664, %3662
  %3666 = fmul fast float %3665, %3589
  %3667 = fmul fast float %3660, 2.000000e+00
  %3668 = fsub fast float 1.000000e+00, %3667
  %3669 = fmul fast float %3668, %3590
  %3670 = fadd fast float %3669, %3667
  %3671 = fmul fast float %3670, %3590
  %3672 = fmul fast float %3661, 2.000000e+00
  %3673 = fsub fast float 1.000000e+00, %3672
  %3674 = fmul fast float %3673, %3591
  %3675 = fadd fast float %3674, %3672
  %3676 = fmul fast float %3675, %3591
  br label %3677

; <label>:3677                                    ; preds = %3649, %3647, %3634, %3604, %3588
  %3678 = phi float [ %3589, %3588 ], [ %3666, %3649 ], [ %3589, %3647 ], [ %3644, %3634 ], [ %3614, %3604 ]
  %3679 = phi float [ %3590, %3588 ], [ %3671, %3649 ], [ %3590, %3647 ], [ %3645, %3634 ], [ %3615, %3604 ]
  %3680 = phi float [ %3591, %3588 ], [ %3676, %3649 ], [ %3591, %3647 ], [ %3646, %3634 ], [ %3616, %3604 ]
  %3681 = phi float [ %3592, %3588 ], [ %3592, %3649 ], [ %3592, %3647 ], [ %3592, %3634 ], [ %3626, %3604 ]
  %3682 = phi float [ %3593, %3588 ], [ %3593, %3649 ], [ %3593, %3647 ], [ %3593, %3634 ], [ %3627, %3604 ]
  %3683 = phi float [ %3594, %3588 ], [ %3594, %3649 ], [ %3594, %3647 ], [ %3594, %3634 ], [ %3628, %3604 ]
  %3684 = phi float [ %2976, %3588 ], [ %2976, %3649 ], [ %2976, %3647 ], [ %2976, %3634 ], [ %3619, %3604 ]
  %3685 = phi float [ %2980, %3588 ], [ %2980, %3649 ], [ %2980, %3647 ], [ %2980, %3634 ], [ %3631, %3604 ]
  %3686 = and i32 %3596, 12
  %3687 = icmp eq i32 %3686, 12
  br i1 %3687, label %3794, label %3688

; <label>:3688                                    ; preds = %3677
  %3689 = and i32 %3596, 2097184
  %3690 = icmp eq i32 %3689, 2097184
  %3691 = select i1 %3690, float %3163, float 0.000000e+00
  %3692 = and i32 %3596, 4194336
  %3693 = icmp eq i32 %3692, 4194336
  %3694 = select i1 %3693, float %3163, float 0.000000e+00
  %3695 = and i32 %3596, 8388640
  %3696 = icmp eq i32 %3695, 8388640
  %3697 = select i1 %3696, float %3163, float 0.000000e+00
  %3698 = and i32 %3596, 2048
  %3699 = icmp ne i32 %3698, 0
  %3700 = select i1 %3699, float %3163, float 0.000000e+00
  %3701 = and i32 %3596, 8192
  %3702 = icmp ne i32 %3701, 0
  %3703 = select i1 %3702, float %3163, float 0.000000e+00
  %3704 = icmp eq i32 %3686, 0
  br i1 %3704, label %3705, label %3730

; <label>:3705                                    ; preds = %3688
  %3706 = fsub fast float %3464, %2965
  %3707 = fsub fast float %3465, %2966
  %3708 = fmul fast float %3691, %3706
  %3709 = fmul fast float %3691, %3707
  %3710 = fadd fast float %3708, %2965
  %3711 = fadd fast float %3709, %2966
  %3712 = fsub fast float %3466, %2978
  %3713 = fmul fast float %3694, %3712
  %3714 = fadd fast float %3713, %2978
  %3715 = fsub fast float %3463, %2977
  %3716 = fmul fast float %3697, %3715
  %3717 = fadd fast float %3716, %2977
  %3718 = fsub fast float %3566, %2979
  %3719 = fmul fast float %3700, %3718
  %3720 = fadd fast float %3719, %2979
  %3721 = fsub fast float %3563, %2973
  %3722 = fsub fast float %3564, %2974
  %3723 = fsub fast float %3565, %2975
  %3724 = fmul fast float %3703, %3721
  %3725 = fmul fast float %3703, %3722
  %3726 = fmul fast float %3703, %3723
  %3727 = fadd fast float %3724, %2973
  %3728 = fadd fast float %3725, %2974
  %3729 = fadd fast float %3726, %2975
  br label %3794

; <label>:3730                                    ; preds = %3688
  %3731 = icmp eq i32 %3686, 4
  br i1 %3731, label %3732, label %3772

; <label>:3732                                    ; preds = %3730
  %3733 = fmul fast float %3691, %3464
  %3734 = fmul fast float %3691, %3465
  %3735 = fadd fast float %3733, %2965
  %3736 = fadd fast float %3734, %2966
  %3737 = call float @dx.op.binary.f32(i32 36, float %2978, float %3466)  ; FMin(a,b)
  %3738 = fsub fast float %3737, %2978
  %3739 = fmul fast float %3738, %3694
  %3740 = fadd fast float %3739, %2978
  %3741 = fadd fast float %3463, %2977
  %3742 = fmul fast float %3741, 0x3FF337FAE0000000
  %3743 = fmul fast float %2977, %2977
  %3744 = fmul fast float %3463, %3463
  %3745 = fadd fast float %3744, %3743
  %3746 = fmul fast float %3745, 0x3FE5152B00000000
  %3747 = fmul fast float %2977, 0xBFCC1F85E0000000
  %3748 = fmul fast float %3747, %3463
  %3749 = fadd fast float %3748, 0xBFE1363700000000
  %3750 = fadd fast float %3749, %3742
  %3751 = fsub fast float %3750, %3746
  %3752 = fmul fast float %3741, 0x3FBA6F0D00000000
  %3753 = fmul fast float %3745, 0x3FD0432880000000
  %3754 = fmul fast float %2977, 0xBFEF110800000000
  %3755 = fmul fast float %3754, %3463
  %3756 = fadd fast float %3755, 1.000000e+00
  %3757 = fsub fast float %3756, %3752
  %3758 = fadd fast float %3757, %3753
  %3759 = fdiv fast float %3751, %3758
  %3760 = call float @dx.op.unary.f32(i32 7, float %3759)  ; Saturate(value)
  %3761 = fsub fast float %3760, %2977
  %3762 = fmul fast float %3761, %3697
  %3763 = fadd fast float %3762, %2977
  %3764 = fmul fast float %3700, %3566
  %3765 = fadd fast float %3764, %2979
  %3766 = fmul fast float %3703, %3563
  %3767 = fmul fast float %3703, %3564
  %3768 = fmul fast float %3703, %3565
  %3769 = fadd fast float %3766, %2973
  %3770 = fadd fast float %3767, %2974
  %3771 = fadd fast float %3768, %2975
  br label %3794

; <label>:3772                                    ; preds = %3730
  %3773 = icmp eq i32 %3686, 8
  br i1 %3773, label %3774, label %3794

; <label>:3774                                    ; preds = %3772
  %3775 = fmul fast float %3691, %3464
  %3776 = fmul fast float %3691, %3465
  %3777 = fadd fast float %3775, %2965
  %3778 = fadd fast float %3776, %2966
  %3779 = call float @dx.op.binary.f32(i32 36, float %2978, float %3466)  ; FMin(a,b)
  %3780 = fsub fast float %3779, %2978
  %3781 = fmul fast float %3780, %3694
  %3782 = fadd fast float %3781, %2978
  %3783 = fsub fast float %3463, %2977
  %3784 = fmul fast float %3697, %3783
  %3785 = fadd fast float %3784, %2977
  %3786 = fmul fast float %3700, %3566
  %3787 = fadd fast float %3786, %2979
  %3788 = fmul fast float %3703, %3563
  %3789 = fmul fast float %3703, %3564
  %3790 = fmul fast float %3703, %3565
  %3791 = fadd fast float %3788, %2973
  %3792 = fadd fast float %3789, %2974
  %3793 = fadd fast float %3790, %2975
  br label %3794

; <label>:3794                                    ; preds = %3774, %3772, %3732, %3705, %3677, %3162, %2981, %2964
  %3795 = phi float [ %2965, %3677 ], [ %2965, %3162 ], [ %2965, %2964 ], [ %2965, %2981 ], [ %3710, %3705 ], [ %3735, %3732 ], [ %2965, %3772 ], [ %3777, %3774 ]
  %3796 = phi float [ %2966, %3677 ], [ %2966, %3162 ], [ %2966, %2964 ], [ %2966, %2981 ], [ %3711, %3705 ], [ %3736, %3732 ], [ %2966, %3772 ], [ %3778, %3774 ]
  %3797 = phi float [ %3678, %3677 ], [ %2967, %3162 ], [ %2967, %2964 ], [ %2967, %2981 ], [ %3678, %3705 ], [ %3678, %3732 ], [ %3678, %3772 ], [ %3678, %3774 ]
  %3798 = phi float [ %3679, %3677 ], [ %2968, %3162 ], [ %2968, %2964 ], [ %2968, %2981 ], [ %3679, %3705 ], [ %3679, %3732 ], [ %3679, %3772 ], [ %3679, %3774 ]
  %3799 = phi float [ %3680, %3677 ], [ %2969, %3162 ], [ %2969, %2964 ], [ %2969, %2981 ], [ %3680, %3705 ], [ %3680, %3732 ], [ %3680, %3772 ], [ %3680, %3774 ]
  %3800 = phi float [ %3681, %3677 ], [ %2970, %3162 ], [ %2970, %2964 ], [ %2970, %2981 ], [ %3681, %3705 ], [ %3681, %3732 ], [ %3681, %3772 ], [ %3681, %3774 ]
  %3801 = phi float [ %3682, %3677 ], [ %2971, %3162 ], [ %2971, %2964 ], [ %2971, %2981 ], [ %3682, %3705 ], [ %3682, %3732 ], [ %3682, %3772 ], [ %3682, %3774 ]
  %3802 = phi float [ %3683, %3677 ], [ %2972, %3162 ], [ %2972, %2964 ], [ %2972, %2981 ], [ %3683, %3705 ], [ %3683, %3732 ], [ %3683, %3772 ], [ %3683, %3774 ]
  %3803 = phi float [ %2973, %3677 ], [ %2973, %3162 ], [ %2973, %2964 ], [ %2973, %2981 ], [ %3727, %3705 ], [ %3769, %3732 ], [ %2973, %3772 ], [ %3791, %3774 ]
  %3804 = phi float [ %2974, %3677 ], [ %2974, %3162 ], [ %2974, %2964 ], [ %2974, %2981 ], [ %3728, %3705 ], [ %3770, %3732 ], [ %2974, %3772 ], [ %3792, %3774 ]
  %3805 = phi float [ %2975, %3677 ], [ %2975, %3162 ], [ %2975, %2964 ], [ %2975, %2981 ], [ %3729, %3705 ], [ %3771, %3732 ], [ %2975, %3772 ], [ %3793, %3774 ]
  %3806 = phi float [ %3684, %3677 ], [ %2976, %3162 ], [ %2976, %2964 ], [ %2976, %2981 ], [ %3684, %3705 ], [ %3684, %3732 ], [ %3684, %3772 ], [ %3684, %3774 ]
  %3807 = phi float [ %2977, %3677 ], [ %2977, %3162 ], [ %2977, %2964 ], [ %2977, %2981 ], [ %3717, %3705 ], [ %3763, %3732 ], [ %2977, %3772 ], [ %3785, %3774 ]
  %3808 = phi float [ %2978, %3677 ], [ %2978, %3162 ], [ %2978, %2964 ], [ %2978, %2981 ], [ %3714, %3705 ], [ %3740, %3732 ], [ %2978, %3772 ], [ %3782, %3774 ]
  %3809 = phi float [ %2979, %3677 ], [ %2979, %3162 ], [ %2979, %2964 ], [ %2979, %2981 ], [ %3720, %3705 ], [ %3765, %3732 ], [ %2979, %3772 ], [ %3787, %3774 ]
  %3810 = phi float [ %3685, %3677 ], [ %2980, %3162 ], [ %2980, %2964 ], [ %2980, %2981 ], [ %3685, %3705 ], [ %3685, %3732 ], [ %3685, %3772 ], [ %3685, %3774 ]
  %3811 = add i32 %58, 360
  %3812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3813 = extractvalue %dx.types.ResRet.i32 %3812, 0
  %3814 = extractvalue %dx.types.ResRet.i32 %3812, 1
  %3815 = bitcast i32 %3813 to float
  %3816 = bitcast i32 %3814 to float
  %3817 = fcmp fast oge float %3815, 0.000000e+00
  %3818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3819 = extractvalue %dx.types.CBufRet.f32 %3818, 0
  %3820 = select i1 %3817, float %3815, float %3819
  %3821 = fadd fast float %3820, %208
  %3822 = fmul fast float %3816, %209
  %3823 = add i32 %58, 456
  %3824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3823, i32 undef)  ; BufferLoad(srv,index,wot)
  %3825 = extractvalue %dx.types.ResRet.i32 %3824, 0
  %3826 = add i32 %3825, 0
  %3827 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3826, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3828 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3827, %dx.types.Handle %112, float %97, float %98, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3829 = extractvalue %dx.types.ResRet.f32 %3828, 0
  %3830 = fmul fast float %3822, %3829
  %3831 = fadd fast float %3821, %3830
  %3832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3833 = extractvalue %dx.types.CBufRet.f32 %3832, 0
  %3834 = and i32 %200, 65535
  %3835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3834)  ; LegacyF16ToF32(value)
  %3836 = lshr i32 %200, 16
  %3837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3836)  ; LegacyF16ToF32(value)
  %3838 = and i32 %201, 65535
  %3839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3838)  ; LegacyF16ToF32(value)
  %3840 = fmul fast float %3835, %3797
  %3841 = fmul fast float %3837, %3798
  %3842 = fmul fast float %3839, %3799
  %3843 = shl i32 %202, 4
  %3844 = and i32 %3843, 32752
  %3845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3844)  ; LegacyF16ToF32(value)
  %3846 = lshr i32 %202, 7
  %3847 = and i32 %3846, 32752
  %3848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3847)  ; LegacyF16ToF32(value)
  %3849 = lshr i32 %202, 22
  %3850 = shl nuw nsw i32 %3849, 5
  %3851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3850)  ; LegacyF16ToF32(value)
  %3852 = and i32 %203, 65535
  %3853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3852)  ; LegacyF16ToF32(value)
  %3854 = fmul fast float %3833, %3800
  %3855 = fmul fast float %3854, %3845
  %3856 = fmul fast float %3855, %3853
  %3857 = fmul fast float %3833, %3801
  %3858 = fmul fast float %3857, %3848
  %3859 = fmul fast float %3858, %3853
  %3860 = fmul fast float %3833, %3802
  %3861 = fmul fast float %3860, %3851
  %3862 = fmul fast float %3861, %3853
  %3863 = call float @dx.op.dot2.f32(i32 54, float %3795, float %3796, float %3795, float %3796)  ; Dot2(ax,ay,bx,by)
  %3864 = fmul fast float %3863, 0x3FE3333340000000
  %3865 = fsub fast float 1.000000e+00, %3864
  %3866 = call float @dx.op.dot3.f32(i32 55, float %3795, float %3796, float %3865, float %3795, float %3796, float %3865)  ; Dot3(ax,ay,az,bx,by,bz)
  %3867 = call float @dx.op.unary.f32(i32 25, float %3866)  ; Rsqrt(value)
  %3868 = fmul fast float %3867, %3795
  %3869 = fmul fast float %3867, %3796
  %3870 = fmul fast float %3865, %3867
  %3871 = fmul fast float %3870, %122
  %3872 = fmul fast float %3870, %123
  %3873 = fmul fast float %3870, %124
  %3874 = fmul fast float %3868, %90
  %3875 = fmul fast float %3868, %91
  %3876 = fmul fast float %3868, %92
  %3877 = fadd fast float %3871, %3874
  %3878 = fadd fast float %3872, %3875
  %3879 = fadd fast float %3873, %3876
  %3880 = fmul fast float %134, %3869
  %3881 = fmul fast float %135, %3869
  %3882 = fmul fast float %136, %3869
  %3883 = fadd fast float %3877, %3880
  %3884 = fadd fast float %3878, %3881
  %3885 = fadd fast float %3879, %3882
  %3886 = call float @dx.op.dot3.f32(i32 55, float %3883, float %3884, float %3885, float %3883, float %3884, float %3885)  ; Dot3(ax,ay,az,bx,by,bz)
  %3887 = call float @dx.op.unary.f32(i32 25, float %3886)  ; Rsqrt(value)
  %3888 = fmul fast float %3883, %3887
  %3889 = fmul fast float %3884, %3887
  %3890 = fmul fast float %3885, %3887
  %3891 = icmp ne i32 %61, 65535
  %3892 = add i32 %58, 496
  %3893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3892, i32 undef)  ; BufferLoad(srv,index,wot)
  %3894 = extractvalue %dx.types.ResRet.i32 %3893, 0
  %3895 = add i32 %3894, 0
  %3896 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3895, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3897 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3896, %dx.types.Handle %49, float %97, float %98, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3898 = extractvalue %dx.types.ResRet.f32 %3897, 0
  %3899 = fcmp fast ogt float %3898, 0.000000e+00
  %3900 = and i1 %3891, %3899
  br i1 %3900, label %3901, label %4472

; <label>:3901                                    ; preds = %3794
  %3902 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3903 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %3904 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3905 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3906 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %3907 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3908 = fadd fast float %3902, %62
  %3909 = fadd fast float %3903, %63
  %3910 = fadd fast float %3904, %64
  %3911 = fadd fast float %3905, %62
  %3912 = fadd fast float %3906, %63
  %3913 = fadd fast float %3907, %64
  %3914 = mul i32 %61, 48
  %3915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3914, i32 undef)  ; BufferLoad(srv,index,wot)
  %3916 = extractvalue %dx.types.ResRet.f32 %3915, 0
  %3917 = extractvalue %dx.types.ResRet.f32 %3915, 1
  %3918 = extractvalue %dx.types.ResRet.f32 %3915, 2
  %3919 = add i32 %3914, 16
  %3920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3919, i32 undef)  ; BufferLoad(srv,index,wot)
  %3921 = extractvalue %dx.types.ResRet.f32 %3920, 0
  %3922 = extractvalue %dx.types.ResRet.f32 %3920, 1
  %3923 = extractvalue %dx.types.ResRet.f32 %3920, 2
  %3924 = add i32 %3914, 32
  %3925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3926 = extractvalue %dx.types.ResRet.f32 %3925, 0
  %3927 = extractvalue %dx.types.ResRet.f32 %3925, 1
  %3928 = extractvalue %dx.types.ResRet.f32 %3925, 2
  %3929 = extractvalue %dx.types.ResRet.f32 %3925, 3
  %3930 = bitcast float %3929 to i32
  %3931 = fmul fast float %3916, %62
  %3932 = fmul fast float %3917, %63
  %3933 = fmul fast float %3918, %64
  %3934 = fsub fast float %3931, %3921
  %3935 = fsub fast float %3932, %3922
  %3936 = fsub fast float %3933, %3923
  %3937 = call float @dx.op.unary.f32(i32 7, float %3934)  ; Saturate(value)
  %3938 = call float @dx.op.unary.f32(i32 7, float %3935)  ; Saturate(value)
  %3939 = call float @dx.op.unary.f32(i32 7, float %3936)  ; Saturate(value)
  %3940 = fmul fast float %3937, %3926
  %3941 = fmul fast float %3938, %3927
  %3942 = fmul fast float %3939, %3928
  %3943 = fadd fast float %3926, -1.000000e+00
  %3944 = fadd fast float %3927, -1.000000e+00
  %3945 = fadd fast float %3928, -1.000000e+00
  %3946 = call float @dx.op.unary.f32(i32 27, float %3940)  ; Round_ni(value)
  %3947 = call float @dx.op.unary.f32(i32 27, float %3941)  ; Round_ni(value)
  %3948 = call float @dx.op.unary.f32(i32 27, float %3942)  ; Round_ni(value)
  %3949 = call float @dx.op.binary.f32(i32 36, float %3946, float %3943)  ; FMin(a,b)
  %3950 = call float @dx.op.binary.f32(i32 36, float %3947, float %3944)  ; FMin(a,b)
  %3951 = call float @dx.op.binary.f32(i32 36, float %3948, float %3945)  ; FMin(a,b)
  %3952 = fmul fast float %3951, %3927
  %3953 = fadd fast float %3952, %3950
  %3954 = fmul fast float %3953, %3926
  %3955 = fadd fast float %3954, %3949
  %3956 = fptosi float %3955 to i32
  %3957 = add nsw i32 %3956, %3930
  %3958 = shl nsw i32 %3957, 2
  %3959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3958, i32 undef)  ; BufferLoad(srv,index,wot)
  %3960 = extractvalue %dx.types.ResRet.i32 %3959, 0
  %3961 = lshr i32 %3960, 16
  %3962 = icmp eq i32 %3961, 0
  br i1 %3962, label %4437, label %3963

; <label>:3963                                    ; preds = %3901
  br label %3964

; <label>:3964                                    ; preds = %4089, %3963
  %3965 = phi i32 [ %3991, %4089 ], [ %3961, %3963 ]
  %3966 = phi float [ %4090, %4089 ], [ 0.000000e+00, %3963 ]
  %3967 = phi float [ %4091, %4089 ], [ %1316, %3963 ]
  %3968 = phi float [ %4092, %4089 ], [ %3831, %3963 ]
  %3969 = phi float [ %4093, %4089 ], [ %3810, %3963 ]
  %3970 = phi float [ %4094, %4089 ], [ 0.000000e+00, %3963 ]
  %3971 = phi float [ %4095, %4089 ], [ 0.000000e+00, %3963 ]
  %3972 = phi float [ %4096, %4089 ], [ %3803, %3963 ]
  %3973 = phi float [ %4097, %4089 ], [ %3804, %3963 ]
  %3974 = phi float [ %4098, %4089 ], [ %3805, %3963 ]
  %3975 = phi float [ %4099, %4089 ], [ %3856, %3963 ]
  %3976 = phi float [ %4100, %4089 ], [ %3859, %3963 ]
  %3977 = phi float [ %4101, %4089 ], [ %3862, %3963 ]
  %3978 = phi float [ %4102, %4089 ], [ %3888, %3963 ]
  %3979 = phi float [ %4103, %4089 ], [ %3889, %3963 ]
  %3980 = phi float [ %4104, %4089 ], [ %3890, %3963 ]
  %3981 = phi float [ %4105, %4089 ], [ %3808, %3963 ]
  %3982 = phi float [ %4106, %4089 ], [ %3807, %3963 ]
  %3983 = phi float [ %4107, %4089 ], [ 0.000000e+00, %3963 ]
  %3984 = phi float [ %4108, %4089 ], [ %3806, %3963 ]
  %3985 = phi float [ %4109, %4089 ], [ %3840, %3963 ]
  %3986 = phi float [ %4110, %4089 ], [ %3841, %3963 ]
  %3987 = phi float [ %4111, %4089 ], [ %3842, %3963 ]
  %3988 = shl nuw nsw i32 %3965, 2
  %3989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3988, i32 undef)  ; BufferLoad(srv,index,wot)
  %3990 = extractvalue %dx.types.ResRet.i32 %3989, 0
  %3991 = lshr i32 %3990, 16
  %3992 = shl i32 %3990, 8
  %3993 = and i32 %3992, 16776960
  %3994 = or i32 %3993, 48
  %3995 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3994, i32 undef)  ; BufferLoad(srv,index,wot)
  %3996 = extractvalue %dx.types.ResRet.f32 %3995, 0
  %3997 = extractvalue %dx.types.ResRet.f32 %3995, 1
  %3998 = extractvalue %dx.types.ResRet.f32 %3995, 2
  %3999 = or i32 %3993, 64
  %4000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3999, i32 undef)  ; BufferLoad(srv,index,wot)
  %4001 = extractvalue %dx.types.ResRet.i32 %4000, 0
  %4002 = extractvalue %dx.types.ResRet.i32 %4000, 1
  %4003 = or i32 %3993, 80
  %4004 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4003, i32 undef)  ; BufferLoad(srv,index,wot)
  %4005 = extractvalue %dx.types.ResRet.f32 %4004, 2
  %4006 = extractvalue %dx.types.ResRet.f32 %4004, 3
  %4007 = or i32 %3993, 96
  %4008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4007, i32 undef)  ; BufferLoad(srv,index,wot)
  %4009 = extractvalue %dx.types.ResRet.f32 %4008, 0
  %4010 = extractvalue %dx.types.ResRet.f32 %4008, 1
  %4011 = extractvalue %dx.types.ResRet.f32 %4008, 2
  %4012 = extractvalue %dx.types.ResRet.f32 %4008, 3
  %4013 = or i32 %3993, 112
  %4014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4013, i32 undef)  ; BufferLoad(srv,index,wot)
  %4015 = extractvalue %dx.types.ResRet.f32 %4014, 2
  %4016 = or i32 %3993, 128
  %4017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4016, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.f32 %4017, 0
  %4019 = extractvalue %dx.types.ResRet.f32 %4017, 1
  %4020 = extractvalue %dx.types.ResRet.f32 %4017, 2
  %4021 = extractvalue %dx.types.ResRet.f32 %4017, 3
  %4022 = or i32 %3993, 144
  %4023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4022, i32 undef)  ; BufferLoad(srv,index,wot)
  %4024 = extractvalue %dx.types.ResRet.f32 %4023, 0
  %4025 = extractvalue %dx.types.ResRet.f32 %4023, 1
  %4026 = extractvalue %dx.types.ResRet.f32 %4023, 2
  %4027 = extractvalue %dx.types.ResRet.f32 %4023, 3
  %4028 = or i32 %3993, 160
  %4029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4028, i32 undef)  ; BufferLoad(srv,index,wot)
  %4030 = extractvalue %dx.types.ResRet.f32 %4029, 0
  %4031 = extractvalue %dx.types.ResRet.f32 %4029, 1
  %4032 = extractvalue %dx.types.ResRet.f32 %4029, 2
  %4033 = extractvalue %dx.types.ResRet.f32 %4029, 3
  %4034 = or i32 %3993, 192
  %4035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4034, i32 undef)  ; BufferLoad(srv,index,wot)
  %4036 = extractvalue %dx.types.ResRet.i32 %4035, 0
  %4037 = or i32 %3993, 208
  %4038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4037, i32 undef)  ; BufferLoad(srv,index,wot)
  %4039 = extractvalue %dx.types.ResRet.f32 %4038, 0
  %4040 = or i32 %3993, 248
  %4041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4040, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = extractvalue %dx.types.ResRet.f32 %4041, 1
  %4044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3993, i32 undef)  ; BufferLoad(srv,index,wot)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = extractvalue %dx.types.ResRet.f32 %4044, 1
  %4047 = extractvalue %dx.types.ResRet.f32 %4044, 2
  %4048 = extractvalue %dx.types.ResRet.f32 %4044, 3
  %4049 = call float @dx.op.dot4.f32(i32 56, float %4045, float %4046, float %4047, float %4048, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4050 = or i32 %3993, 16
  %4051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4050, i32 undef)  ; BufferLoad(srv,index,wot)
  %4052 = extractvalue %dx.types.ResRet.f32 %4051, 0
  %4053 = extractvalue %dx.types.ResRet.f32 %4051, 1
  %4054 = extractvalue %dx.types.ResRet.f32 %4051, 2
  %4055 = extractvalue %dx.types.ResRet.f32 %4051, 3
  %4056 = call float @dx.op.dot4.f32(i32 56, float %4052, float %4053, float %4054, float %4055, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4057 = or i32 %3993, 32
  %4058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4057, i32 undef)  ; BufferLoad(srv,index,wot)
  %4059 = extractvalue %dx.types.ResRet.f32 %4058, 0
  %4060 = extractvalue %dx.types.ResRet.f32 %4058, 1
  %4061 = extractvalue %dx.types.ResRet.f32 %4058, 2
  %4062 = extractvalue %dx.types.ResRet.f32 %4058, 3
  %4063 = call float @dx.op.dot4.f32(i32 56, float %4059, float %4060, float %4061, float %4062, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4064 = call float @dx.op.unary.f32(i32 27, float %4049)  ; Round_ni(value)
  %4065 = call float @dx.op.unary.f32(i32 6, float %4064)  ; FAbs(value)
  %4066 = call float @dx.op.unary.f32(i32 27, float %4056)  ; Round_ni(value)
  %4067 = call float @dx.op.unary.f32(i32 6, float %4066)  ; FAbs(value)
  %4068 = call float @dx.op.unary.f32(i32 6, float %4063)  ; FAbs(value)
  %4069 = call float @dx.op.unary.f32(i32 27, float %4068)  ; Round_ni(value)
  %4070 = fadd fast float %4067, %4065
  %4071 = fadd fast float %4070, %4069
  %4072 = fcmp fast oeq float %4071, 0.000000e+00
  %4073 = call float @dx.op.dot4.f32(i32 56, float %4045, float %4046, float %4047, float %4048, float %3908, float %3909, float %3910, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4074 = call float @dx.op.dot4.f32(i32 56, float %4052, float %4053, float %4054, float %4055, float %3908, float %3909, float %3910, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4075 = call float @dx.op.dot4.f32(i32 56, float %4045, float %4046, float %4047, float %4048, float %3911, float %3912, float %3913, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4076 = call float @dx.op.dot4.f32(i32 56, float %4052, float %4053, float %4054, float %4055, float %3911, float %3912, float %3913, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4077 = fsub fast float %4073, %4049
  %4078 = fsub fast float %4075, %4049
  %4079 = fsub fast float %4074, %4056
  %4080 = fsub fast float %4076, %4056
  %4081 = call float @dx.op.dot3.f32(i32 55, float %3996, float %3997, float %3998, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4082, 2
  %4084 = fadd fast float %4083, %4081
  %4085 = call float @dx.op.unary.f32(i32 7, float %4084)  ; Saturate(value)
  %4086 = extractvalue %dx.types.CBufRet.f32 %4082, 0
  %4087 = fcmp fast ogt float %4085, %4086
  %4088 = and i1 %4072, %4087
  br i1 %4088, label %4113, label %4089

; <label>:4089                                    ; preds = %4423, %4196, %4113, %3964
  %4090 = phi float [ %3966, %4113 ], [ %4199, %4196 ], [ %4199, %4423 ], [ %3966, %3964 ]
  %4091 = phi float [ %3967, %4113 ], [ %3967, %4196 ], [ %4399, %4423 ], [ %3967, %3964 ]
  %4092 = phi float [ %3968, %4113 ], [ %3968, %4196 ], [ %4398, %4423 ], [ %3968, %3964 ]
  %4093 = phi float [ %3969, %4113 ], [ %3969, %4196 ], [ %4396, %4423 ], [ %3969, %3964 ]
  %4094 = phi float [ %3970, %4113 ], [ %3970, %4196 ], [ %4323, %4423 ], [ %3970, %3964 ]
  %4095 = phi float [ %3971, %4113 ], [ %3971, %4196 ], [ %4321, %4423 ], [ %3971, %3964 ]
  %4096 = phi float [ %3972, %4113 ], [ %3972, %4196 ], [ %4366, %4423 ], [ %3972, %3964 ]
  %4097 = phi float [ %3973, %4113 ], [ %3973, %4196 ], [ %4367, %4423 ], [ %3973, %3964 ]
  %4098 = phi float [ %3974, %4113 ], [ %3974, %4196 ], [ %4368, %4423 ], [ %3974, %3964 ]
  %4099 = phi float [ %3975, %4113 ], [ %3975, %4196 ], [ %4433, %4423 ], [ %3975, %3964 ]
  %4100 = phi float [ %3976, %4113 ], [ %3976, %4196 ], [ %4434, %4423 ], [ %3976, %3964 ]
  %4101 = phi float [ %3977, %4113 ], [ %3977, %4196 ], [ %4435, %4423 ], [ %3977, %3964 ]
  %4102 = phi float [ %3978, %4113 ], [ %3978, %4196 ], [ %4302, %4423 ], [ %3978, %3964 ]
  %4103 = phi float [ %3979, %4113 ], [ %3979, %4196 ], [ %4303, %4423 ], [ %3979, %3964 ]
  %4104 = phi float [ %3980, %4113 ], [ %3980, %4196 ], [ %4304, %4423 ], [ %3980, %3964 ]
  %4105 = phi float [ %3981, %4113 ], [ %3981, %4196 ], [ %4376, %4423 ], [ %3981, %3964 ]
  %4106 = phi float [ %3982, %4113 ], [ %3982, %4196 ], [ %4373, %4423 ], [ %3982, %3964 ]
  %4107 = phi float [ %3983, %4113 ], [ %3983, %4196 ], [ %4370, %4423 ], [ %3983, %3964 ]
  %4108 = phi float [ %3984, %4113 ], [ %3984, %4196 ], [ %4319, %4423 ], [ %3984, %3964 ]
  %4109 = phi float [ %3985, %4113 ], [ %3985, %4196 ], [ %4314, %4423 ], [ %3985, %3964 ]
  %4110 = phi float [ %3986, %4113 ], [ %3986, %4196 ], [ %4315, %4423 ], [ %3986, %3964 ]
  %4111 = phi float [ %3987, %4113 ], [ %3987, %4196 ], [ %4316, %4423 ], [ %3987, %3964 ]
  %4112 = icmp eq i32 %3991, 0
  br i1 %4112, label %4436, label %3964

; <label>:4113                                    ; preds = %3964
  %4114 = extractvalue %dx.types.ResRet.f32 %3995, 3
  %4115 = extractvalue %dx.types.ResRet.f32 %4014, 3
  %4116 = extractvalue %dx.types.ResRet.f32 %4014, 1
  %4117 = extractvalue %dx.types.ResRet.f32 %4014, 0
  %4118 = extractvalue %dx.types.ResRet.f32 %4004, 1
  %4119 = extractvalue %dx.types.ResRet.f32 %4004, 0
  %4120 = extractvalue %dx.types.ResRet.i32 %4000, 3
  %4121 = extractvalue %dx.types.ResRet.i32 %4000, 2
  %4122 = bitcast float %4114 to i32
  %4123 = add i32 %4120, 0
  %4124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4123, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4125 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4126 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4124, %dx.types.Handle %4125, float %4049, float %4056, float undef, float undef, i32 0, i32 0, i32 undef, float %4077, float %4079, float undef, float %4078, float %4080, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4127 = extractvalue %dx.types.ResRet.f32 %4126, 0
  %4128 = fmul fast float %4127, %4119
  %4129 = fadd fast float %4128, %4118
  %4130 = call float @dx.op.unary.f32(i32 7, float %4129)  ; Saturate(value)
  %4131 = fmul fast float %4049, %4009
  %4132 = call float @dx.op.tertiary.f32(i32 46, float %4010, float %4056, float %4131)  ; FMad(a,b,c)
  %4133 = fadd fast float %4132, %4117
  %4134 = fmul fast float %4049, %4011
  %4135 = call float @dx.op.tertiary.f32(i32 46, float %4012, float %4056, float %4134)  ; FMad(a,b,c)
  %4136 = fadd fast float %4135, %4116
  %4137 = fmul fast float %4077, %4009
  %4138 = call float @dx.op.tertiary.f32(i32 46, float %4010, float %4079, float %4137)  ; FMad(a,b,c)
  %4139 = fmul fast float %4077, %4011
  %4140 = call float @dx.op.tertiary.f32(i32 46, float %4012, float %4079, float %4139)  ; FMad(a,b,c)
  %4141 = fmul fast float %4078, %4009
  %4142 = call float @dx.op.tertiary.f32(i32 46, float %4010, float %4080, float %4141)  ; FMad(a,b,c)
  %4143 = fmul fast float %4078, %4011
  %4144 = call float @dx.op.tertiary.f32(i32 46, float %4012, float %4080, float %4143)  ; FMad(a,b,c)
  %4145 = add i32 %4121, 0
  %4146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4145, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4147 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4146, %dx.types.Handle %4125, float %4133, float %4136, float undef, float undef, i32 0, i32 0, i32 undef, float %4138, float %4140, float undef, float %4142, float %4144, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4148 = extractvalue %dx.types.ResRet.f32 %4147, 0
  %4149 = and i32 %4122, 1024
  %4150 = icmp ne i32 %4149, 0
  %4151 = fcmp fast ogt float %4148, 0x3FE0101020000000
  %4152 = uitofp i1 %4151 to float
  %4153 = select i1 %4150, float %4152, float %4148
  %4154 = and i32 %4122, 8192
  %4155 = icmp ne i32 %4154, 0
  %4156 = select i1 %4155, float %4115, float 1.000000e+00
  %4157 = fmul fast float %4049, 2.000000e+00
  %4158 = fadd fast float %4157, -1.000000e+00
  %4159 = call float @dx.op.unary.f32(i32 6, float %4158)  ; FAbs(value)
  %4160 = fmul fast float %4159, %4042
  %4161 = fsub fast float %4160, %4042
  %4162 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4163 = fmul fast float %4056, 2.000000e+00
  %4164 = fadd fast float %4163, -1.000000e+00
  %4165 = call float @dx.op.unary.f32(i32 6, float %4164)  ; FAbs(value)
  %4166 = fmul fast float %4165, %4043
  %4167 = fsub fast float %4166, %4043
  %4168 = call float @dx.op.unary.f32(i32 7, float %4167)  ; Saturate(value)
  %4169 = fmul fast float %4068, %4005
  %4170 = fsub fast float %4169, %4005
  %4171 = call float @dx.op.unary.f32(i32 7, float %4170)  ; Saturate(value)
  %4172 = fmul fast float %4130, %4156
  %4173 = fmul fast float %4172, %4127
  %4174 = fmul fast float %4173, %4162
  %4175 = fmul fast float %4174, %4153
  %4176 = fmul fast float %4175, %4168
  %4177 = fmul fast float %4176, %4171
  %4178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.f32 %4178, 1
  %4180 = extractvalue %dx.types.CBufRet.f32 %4178, 0
  %4181 = fsub fast float %4085, %4180
  %4182 = fmul fast float %4181, %4179
  %4183 = call float @dx.op.unary.f32(i32 7, float %4182)  ; Saturate(value)
  %4184 = fmul fast float %4177, %4006
  %4185 = fadd fast float %4177, %4006
  %4186 = fmul fast float %4185, %4015
  %4187 = fsub fast float %4186, %4015
  %4188 = call float @dx.op.unary.f32(i32 7, float %4187)  ; Saturate(value)
  %4189 = and i32 %4122, 128
  %4190 = icmp ne i32 %4189, 0
  %4191 = select i1 %4190, float %4188, float %4184
  %4192 = fmul fast float %4191, %4183
  %4193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.f32 %4193, 0
  %4195 = fcmp fast ugt float %4192, %4194
  br i1 %4195, label %4196, label %4089

; <label>:4196                                    ; preds = %4113
  %4197 = select i1 %4155, float %4192, float 0.000000e+00
  %4198 = fadd fast float %4197, %3966
  %4199 = call float @dx.op.unary.f32(i32 7, float %4198)  ; Saturate(value)
  br i1 %4155, label %4089, label %4200

; <label>:4200                                    ; preds = %4196
  %4201 = and i32 %4122, 4
  %4202 = and i32 %4122, 8
  %4203 = add i32 %4001, 0
  %4204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4203, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4206 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4204, %dx.types.Handle %4205, float %4133, float %4136, float undef, float undef, i32 0, i32 0, i32 undef, float %4138, float %4140, float undef, float %4142, float %4144, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4207 = extractvalue %dx.types.ResRet.f32 %4206, 0
  %4208 = extractvalue %dx.types.ResRet.f32 %4206, 1
  %4209 = extractvalue %dx.types.ResRet.f32 %4206, 2
  %4210 = extractvalue %dx.types.ResRet.f32 %4206, 3
  %4211 = bitcast float %4027 to i32
  %4212 = and i32 %4211, 255
  %4213 = uitofp i32 %4212 to float
  %4214 = lshr i32 %4211, 8
  %4215 = and i32 %4214, 255
  %4216 = uitofp i32 %4215 to float
  %4217 = fmul fast float %4210, %4213
  %4218 = fadd fast float %4217, %4216
  %4219 = fmul fast float %4218, 0x3F70101000000000
  %4220 = add i32 %4002, 0
  %4221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4220, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4222 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4221, %dx.types.Handle %4205, float %4133, float %4136, float undef, float undef, i32 0, i32 0, i32 undef, float %4138, float %4140, float undef, float %4142, float %4144, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4223 = extractvalue %dx.types.ResRet.f32 %4222, 0
  %4224 = extractvalue %dx.types.ResRet.f32 %4222, 1
  %4225 = extractvalue %dx.types.ResRet.f32 %4222, 2
  %4226 = extractvalue %dx.types.ResRet.f32 %4222, 3
  %4227 = bitcast float %4021 to i32
  %4228 = and i32 %4227, 255
  %4229 = uitofp i32 %4228 to float
  %4230 = lshr i32 %4227, 8
  %4231 = and i32 %4230, 255
  %4232 = uitofp i32 %4231 to float
  %4233 = lshr i32 %4227, 16
  %4234 = and i32 %4233, 255
  %4235 = uitofp i32 %4234 to float
  %4236 = fmul fast float %4235, 0x3F70101000000000
  %4237 = fmul fast float %4223, %4229
  %4238 = fadd fast float %4237, %4232
  %4239 = fmul fast float %4238, 0x3F70101000000000
  %4240 = fadd fast float %4224, -5.000000e-01
  %4241 = fadd fast float %4226, -5.000000e-01
  %4242 = fmul fast float %4240, %4236
  %4243 = fmul fast float %4241, %4236
  %4244 = fadd fast float %4242, 5.000000e-01
  %4245 = fadd fast float %4243, 5.000000e-01
  %4246 = fmul fast float %4207, %4030
  %4247 = fmul fast float %4208, %4031
  %4248 = fmul fast float %4209, %4032
  %4249 = fmul fast float %4244, 2.000000e+00
  %4250 = fadd fast float %4249, -1.000000e+00
  %4251 = fmul fast float %4245, 2.000000e+00
  %4252 = fadd fast float %4251, -1.000000e+00
  %4253 = fadd fast float %4250, %4252
  %4254 = fmul fast float %4253, 5.000000e-01
  %4255 = fsub fast float %4250, %4252
  %4256 = fmul fast float %4255, 5.000000e-01
  %4257 = call float @dx.op.unary.f32(i32 6, float %4254)  ; FAbs(value)
  %4258 = fsub fast float 1.000000e+00, %4257
  %4259 = call float @dx.op.unary.f32(i32 6, float %4256)  ; FAbs(value)
  %4260 = fsub fast float %4258, %4259
  %4261 = call float @dx.op.dot3.f32(i32 55, float %4254, float %4256, float %4260, float %4254, float %4256, float %4260)  ; Dot3(ax,ay,az,bx,by,bz)
  %4262 = call float @dx.op.unary.f32(i32 25, float %4261)  ; Rsqrt(value)
  %4263 = fmul fast float %4254, %4262
  %4264 = fmul fast float %4256, %4262
  %4265 = fmul fast float %4262, %4260
  %4266 = fmul fast float %4265, %3996
  %4267 = fmul fast float %4265, %3997
  %4268 = fmul fast float %4265, %3998
  %4269 = fmul fast float %4263, %4018
  %4270 = fmul fast float %4263, %4019
  %4271 = fmul fast float %4263, %4020
  %4272 = fadd fast float %4269, %4266
  %4273 = fadd fast float %4270, %4267
  %4274 = fadd fast float %4271, %4268
  %4275 = fmul fast float %4264, %4024
  %4276 = fmul fast float %4264, %4025
  %4277 = fmul fast float %4264, %4026
  %4278 = fadd fast float %4272, %4275
  %4279 = fadd fast float %4273, %4276
  %4280 = fadd fast float %4274, %4277
  %4281 = call float @dx.op.dot3.f32(i32 55, float %4278, float %4279, float %4280, float %4278, float %4279, float %4280)  ; Dot3(ax,ay,az,bx,by,bz)
  %4282 = call float @dx.op.unary.f32(i32 25, float %4281)  ; Rsqrt(value)
  %4283 = fmul fast float %4278, %4282
  %4284 = fmul fast float %4279, %4282
  %4285 = fmul fast float %4280, %4282
  %4286 = icmp ne i32 %4202, 0
  %4287 = select i1 %4286, float 1.000000e+00, float 0.000000e+00
  %4288 = fmul fast float %4192, %4287
  %4289 = and i32 %4122, 1
  %4290 = icmp eq i32 %4289, 0
  br i1 %4290, label %4291, label %4295

; <label>:4291                                    ; preds = %4200
  %4292 = fsub fast float %4283, %3978
  %4293 = fsub fast float %4284, %3979
  %4294 = fsub fast float %4285, %3980
  br label %4295

; <label>:4295                                    ; preds = %4291, %4200
  %4296 = phi float [ %4292, %4291 ], [ %4283, %4200 ]
  %4297 = phi float [ %4293, %4291 ], [ %4284, %4200 ]
  %4298 = phi float [ %4294, %4291 ], [ %4285, %4200 ]
  %4299 = fmul float %4298, %4288
  %4300 = fmul float %4297, %4288
  %4301 = fmul float %4296, %4288
  %4302 = fadd fast float %4301, %3978
  %4303 = fadd fast float %4300, %3979
  %4304 = fadd fast float %4299, %3980
  %4305 = icmp ne i32 %4201, 0
  %4306 = select i1 %4305, float 1.000000e+00, float 0.000000e+00
  %4307 = fmul fast float %4192, %4306
  %4308 = fsub fast float %4246, %3985
  %4309 = fsub fast float %4247, %3986
  %4310 = fsub fast float %4248, %3987
  %4311 = fmul fast float %4308, %4307
  %4312 = fmul fast float %4309, %4307
  %4313 = fmul fast float %4310, %4307
  %4314 = fadd fast float %4311, %3985
  %4315 = fadd fast float %4312, %3986
  %4316 = fadd fast float %4313, %3987
  %4317 = fsub fast float %4219, %3984
  %4318 = fmul fast float %4317, %4307
  %4319 = fadd fast float %4318, %3984
  %4320 = fmul fast float %4307, %3971
  %4321 = fsub fast float %3971, %4320
  %4322 = fmul fast float %4307, %3970
  %4323 = fsub fast float %3970, %4322
  %4324 = bitcast float %4039 to i32
  %4325 = lshr i32 %4324, 16
  %4326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4325)  ; LegacyF16ToF32(value)
  %4327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %4328 = extractvalue %dx.types.ResRet.i32 %4327, 0
  %4329 = and i32 %4328, 1
  %4330 = icmp eq i32 %4329, 0
  br i1 %4330, label %4331, label %4356

; <label>:4331                                    ; preds = %4295
  %4332 = fadd fast float %4219, 0xBFB99999A0000000
  %4333 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4334 = fmul fast float %4333, 0x3FF1C71C80000000
  %4335 = fsub fast float 1.000000e+00, %4334
  %4336 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4337 = fmul fast float %4336, %4246
  %4338 = fmul fast float %4336, %4247
  %4339 = fmul fast float %4336, %4248
  %4340 = call float @dx.op.unary.f32(i32 7, float %4337)  ; Saturate(value)
  %4341 = call float @dx.op.unary.f32(i32 7, float %4338)  ; Saturate(value)
  %4342 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  %4343 = call float @dx.op.binary.f32(i32 35, float %4341, float %4342)  ; FMax(a,b)
  %4344 = call float @dx.op.binary.f32(i32 35, float %4340, float %4343)  ; FMax(a,b)
  %4345 = fcmp fast ogt float %4344, 0.000000e+00
  %4346 = bitcast float %4344 to i32
  %4347 = sub nsw i32 2129859010, %4346
  %4348 = bitcast i32 %4347 to float
  %4349 = select i1 %4345, float %4348, float 0.000000e+00
  %4350 = fmul fast float %4340, %4326
  %4351 = fmul fast float %4341, %4326
  %4352 = fmul fast float %4342, %4326
  %4353 = fmul fast float %4350, %4349
  %4354 = fmul fast float %4351, %4349
  %4355 = fmul fast float %4352, %4349
  br label %4356

; <label>:4356                                    ; preds = %4331, %4295
  %4357 = phi float [ %4326, %4295 ], [ %4353, %4331 ]
  %4358 = phi float [ %4326, %4295 ], [ %4354, %4331 ]
  %4359 = phi float [ %4326, %4295 ], [ %4355, %4331 ]
  %4360 = fsub fast float %4357, %3972
  %4361 = fsub fast float %4358, %3973
  %4362 = fsub fast float %4359, %3974
  %4363 = fmul fast float %4360, %4307
  %4364 = fmul fast float %4361, %4307
  %4365 = fmul fast float %4362, %4307
  %4366 = fadd fast float %4363, %3972
  %4367 = fadd fast float %4364, %3973
  %4368 = fadd fast float %4365, %3974
  %4369 = fadd fast float %4192, %3983
  %4370 = call float @dx.op.unary.f32(i32 7, float %4369)  ; Saturate(value)
  %4371 = fsub fast float %4239, %3982
  %4372 = fmul fast float %4371, %4288
  %4373 = fadd fast float %4372, %3982
  %4374 = fsub fast float %4225, %3981
  %4375 = fmul fast float %4374, %4288
  %4376 = fadd fast float %4375, %3981
  %4377 = call float @dx.op.dot3.f32(i32 55, float %4246, float %4247, float %4248, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4379 = extractvalue %dx.types.CBufRet.f32 %4378, 0
  %4380 = extractvalue %dx.types.CBufRet.f32 %4378, 1
  %4381 = fmul fast float %4380, %4377
  %4382 = fadd fast float %4381, %4379
  %4383 = call float @dx.op.unary.f32(i32 7, float %4382)  ; Saturate(value)
  %4384 = bitcast float %4033 to i32
  %4385 = and i32 %4384, 65535
  %4386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4385)  ; LegacyF16ToF32(value)
  %4387 = lshr i32 %4384, 16
  %4388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4387)  ; LegacyF16ToF32(value)
  %4389 = fcmp fast oge float %4386, 0.000000e+00
  %4390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4391 = extractvalue %dx.types.CBufRet.f32 %4390, 0
  %4392 = select i1 %4389, float %4386, float %4391
  %4393 = fadd fast float %4392, %4388
  %4394 = fsub fast float %4383, %3969
  %4395 = fmul fast float %4394, %4192
  %4396 = fadd fast float %4395, %3969
  %4397 = fmul fast float %4393, %4192
  %4398 = call float @dx.op.binary.f32(i32 35, float %3968, float %4397)  ; FMax(a,b)
  %4399 = call float @dx.op.binary.f32(i32 35, float %3967, float %4192)  ; FMax(a,b)
  %4400 = and i32 %4122, 16
  %4401 = icmp eq i32 %4400, 0
  br i1 %4401, label %4423, label %4402

; <label>:4402                                    ; preds = %4356
  %4403 = add i32 %4036, 0
  %4404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4403, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4405 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4404, %dx.types.Handle %4205, float %4133, float %4136, float undef, float undef, i32 0, i32 0, i32 undef, float %4138, float %4140, float undef, float %4142, float %4144, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4406 = extractvalue %dx.types.ResRet.f32 %4405, 0
  %4407 = extractvalue %dx.types.ResRet.f32 %4405, 1
  %4408 = extractvalue %dx.types.ResRet.f32 %4405, 2
  %4409 = and i32 %4324, 65535
  %4410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4409)  ; LegacyF16ToF32(value)
  %4411 = fmul fast float %4406, %4030
  %4412 = fmul fast float %4407, %4031
  %4413 = fmul fast float %4408, %4032
  %4414 = and i32 %4122, 16384
  %4415 = icmp ne i32 %4414, 0
  %4416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4417 = extractvalue %dx.types.CBufRet.f32 %4416, 0
  %4418 = select i1 %4415, float %4417, float 1.000000e+00
  %4419 = fmul fast float %4418, %4410
  %4420 = fmul fast float %4411, %4419
  %4421 = fmul fast float %4412, %4419
  %4422 = fmul fast float %4413, %4419
  br label %4423

; <label>:4423                                    ; preds = %4402, %4356
  %4424 = phi float [ %4420, %4402 ], [ 0.000000e+00, %4356 ]
  %4425 = phi float [ %4421, %4402 ], [ 0.000000e+00, %4356 ]
  %4426 = phi float [ %4422, %4402 ], [ 0.000000e+00, %4356 ]
  %4427 = fsub fast float %4424, %3975
  %4428 = fsub fast float %4425, %3976
  %4429 = fsub fast float %4426, %3977
  %4430 = fmul fast float %4427, %4192
  %4431 = fmul fast float %4428, %4192
  %4432 = fmul fast float %4429, %4192
  %4433 = fadd fast float %4430, %3975
  %4434 = fadd fast float %4431, %3976
  %4435 = fadd fast float %4432, %3977
  br label %4089

; <label>:4436                                    ; preds = %4089
  br label %4437

; <label>:4437                                    ; preds = %4436, %3901
  %4438 = phi float [ 0.000000e+00, %3901 ], [ %4090, %4436 ]
  %4439 = phi float [ %1316, %3901 ], [ %4091, %4436 ]
  %4440 = phi float [ %3831, %3901 ], [ %4092, %4436 ]
  %4441 = phi float [ %3810, %3901 ], [ %4093, %4436 ]
  %4442 = phi float [ 0.000000e+00, %3901 ], [ %4094, %4436 ]
  %4443 = phi float [ 0.000000e+00, %3901 ], [ %4095, %4436 ]
  %4444 = phi float [ %3803, %3901 ], [ %4096, %4436 ]
  %4445 = phi float [ %3804, %3901 ], [ %4097, %4436 ]
  %4446 = phi float [ %3805, %3901 ], [ %4098, %4436 ]
  %4447 = phi float [ %3856, %3901 ], [ %4099, %4436 ]
  %4448 = phi float [ %3859, %3901 ], [ %4100, %4436 ]
  %4449 = phi float [ %3862, %3901 ], [ %4101, %4436 ]
  %4450 = phi float [ %3888, %3901 ], [ %4102, %4436 ]
  %4451 = phi float [ %3889, %3901 ], [ %4103, %4436 ]
  %4452 = phi float [ %3890, %3901 ], [ %4104, %4436 ]
  %4453 = phi float [ %3808, %3901 ], [ %4105, %4436 ]
  %4454 = phi float [ %3807, %3901 ], [ %4106, %4436 ]
  %4455 = phi float [ 0.000000e+00, %3901 ], [ %4107, %4436 ]
  %4456 = phi float [ %3806, %3901 ], [ %4108, %4436 ]
  %4457 = phi float [ %3840, %3901 ], [ %4109, %4436 ]
  %4458 = phi float [ %3841, %3901 ], [ %4110, %4436 ]
  %4459 = phi float [ %3842, %3901 ], [ %4111, %4436 ]
  %4460 = call float @dx.op.dot3.f32(i32 55, float %4450, float %4451, float %4452, float %4450, float %4451, float %4452)  ; Dot3(ax,ay,az,bx,by,bz)
  %4461 = call float @dx.op.unary.f32(i32 25, float %4460)  ; Rsqrt(value)
  %4462 = fmul fast float %4461, %4450
  %4463 = fmul fast float %4461, %4451
  %4464 = fmul fast float %4461, %4452
  %4465 = fadd fast float %4455, %1316
  %4466 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4467 = call float @dx.op.dot3.f32(i32 55, float %4462, float %4463, float %4464, float %4462, float %4463, float %4464)  ; Dot3(ax,ay,az,bx,by,bz)
  %4468 = call float @dx.op.unary.f32(i32 25, float %4467)  ; Rsqrt(value)
  %4469 = fmul fast float %4468, %4462
  %4470 = fmul fast float %4468, %4463
  %4471 = fmul fast float %4468, %4464
  br label %4472

; <label>:4472                                    ; preds = %4437, %3794
  %4473 = phi float [ %4469, %4437 ], [ %3888, %3794 ]
  %4474 = phi float [ %4470, %4437 ], [ %3889, %3794 ]
  %4475 = phi float [ %4471, %4437 ], [ %3890, %3794 ]
  %4476 = phi float [ %4457, %4437 ], [ %3840, %3794 ]
  %4477 = phi float [ %4458, %4437 ], [ %3841, %3794 ]
  %4478 = phi float [ %4459, %4437 ], [ %3842, %3794 ]
  %4479 = phi float [ %4447, %4437 ], [ %3856, %3794 ]
  %4480 = phi float [ %4448, %4437 ], [ %3859, %3794 ]
  %4481 = phi float [ %4449, %4437 ], [ %3862, %3794 ]
  %4482 = phi float [ %4444, %4437 ], [ %3803, %3794 ]
  %4483 = phi float [ %4445, %4437 ], [ %3804, %3794 ]
  %4484 = phi float [ %4446, %4437 ], [ %3805, %3794 ]
  %4485 = phi float [ %4456, %4437 ], [ %3806, %3794 ]
  %4486 = phi float [ %4466, %4437 ], [ %1316, %3794 ]
  %4487 = phi float [ %4454, %4437 ], [ %3807, %3794 ]
  %4488 = phi float [ %4453, %4437 ], [ %3808, %3794 ]
  %4489 = phi float [ %4443, %4437 ], [ 0.000000e+00, %3794 ]
  %4490 = phi float [ %4442, %4437 ], [ 0.000000e+00, %3794 ]
  %4491 = phi float [ %4438, %4437 ], [ 0.000000e+00, %3794 ]
  %4492 = phi float [ %4440, %4437 ], [ %3831, %3794 ]
  %4493 = phi float [ %4439, %4437 ], [ %1316, %3794 ]
  %4494 = phi float [ %4441, %4437 ], [ %3810, %3794 ]
  %4495 = fadd fast float %4485, 0xBFB99999A0000000
  %4496 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4497 = fmul fast float %4496, 0x3FF1C71C80000000
  %4498 = call float @dx.op.binary.f32(i32 36, float %4485, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4499 = fsub fast float 1.000000e+00, %4497
  %4500 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4501 = fmul fast float %4500, %4476
  %4502 = fmul fast float %4500, %4477
  %4503 = fmul fast float %4500, %4478
  %4504 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4505 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4506 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  %4507 = fmul fast float %4497, %4476
  %4508 = fmul fast float %4497, %4477
  %4509 = fmul fast float %4497, %4478
  %4510 = fadd fast float %4507, %4498
  %4511 = fadd fast float %4508, %4498
  %4512 = fadd fast float %4509, %4498
  %4513 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4514 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4515 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4516 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %4518 = extractvalue %dx.types.ResRet.i32 %4517, 0
  %4519 = and i32 %4518, 1
  %4520 = icmp eq i32 %4519, 0
  br i1 %4520, label %4535, label %4521

; <label>:4521                                    ; preds = %4472
  %4522 = call float @dx.op.binary.f32(i32 35, float %4505, float %4506)  ; FMax(a,b)
  %4523 = call float @dx.op.binary.f32(i32 35, float %4504, float %4522)  ; FMax(a,b)
  %4524 = fcmp fast ogt float %4523, 0.000000e+00
  %4525 = bitcast float %4523 to i32
  %4526 = sub nsw i32 2129859010, %4525
  %4527 = bitcast i32 %4526 to float
  %4528 = select i1 %4524, float %4527, float 0.000000e+00
  %4529 = fmul fast float %4504, %4482
  %4530 = fmul fast float %4505, %4483
  %4531 = fmul fast float %4506, %4484
  %4532 = fmul fast float %4529, %4528
  %4533 = fmul fast float %4530, %4528
  %4534 = fmul fast float %4531, %4528
  br label %4535

; <label>:4535                                    ; preds = %4521, %4472
  %4536 = phi float [ %4532, %4521 ], [ %4482, %4472 ]
  %4537 = phi float [ %4533, %4521 ], [ %4483, %4472 ]
  %4538 = phi float [ %4534, %4521 ], [ %4484, %4472 ]
  %4539 = fadd fast float %4504, 0xBFD51EB860000000
  %4540 = fadd fast float %4505, 0xBFD51EB860000000
  %4541 = fadd fast float %4506, 0xBFD51EB860000000
  %4542 = fmul fast float %4539, %4539
  %4543 = fmul fast float %4540, %4540
  %4544 = fmul fast float %4541, %4541
  %4545 = fmul fast float %4542, %4542
  %4546 = fmul fast float %4545, 1.000000e+02
  %4547 = fmul fast float %4543, %4543
  %4548 = fmul fast float %4547, 1.000000e+02
  %4549 = fmul fast float %4544, %4544
  %4550 = fmul fast float %4549, 1.000000e+02
  %4551 = fadd fast float %4546, 3.500000e+00
  %4552 = fadd fast float %4548, 3.500000e+00
  %4553 = fadd fast float %4550, 3.500000e+00
  %4554 = call float @dx.op.binary.f32(i32 35, float %4536, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4555 = call float @dx.op.binary.f32(i32 35, float %4537, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4556 = call float @dx.op.binary.f32(i32 35, float %4538, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4557 = fdiv fast float %4551, %4554
  %4558 = fdiv fast float %4552, %4555
  %4559 = fdiv fast float %4553, %4556
  %4560 = fmul fast float %3809, 0xBFF7154760000000
  %4561 = fmul fast float %4560, %4557
  %4562 = call float @dx.op.unary.f32(i32 21, float %4561)  ; Exp(value)
  %4563 = fmul fast float %4562, 2.500000e-01
  %4564 = fmul fast float %3809, 0xBFDEC709E0000000
  %4565 = fmul fast float %4564, %4557
  %4566 = call float @dx.op.unary.f32(i32 21, float %4565)  ; Exp(value)
  %4567 = fmul fast float %4566, 7.500000e-01
  %4568 = fmul fast float %4560, %4558
  %4569 = call float @dx.op.unary.f32(i32 21, float %4568)  ; Exp(value)
  %4570 = fmul fast float %4569, 2.500000e-01
  %4571 = fmul fast float %4564, %4558
  %4572 = call float @dx.op.unary.f32(i32 21, float %4571)  ; Exp(value)
  %4573 = fmul fast float %4572, 7.500000e-01
  %4574 = fmul fast float %4560, %4559
  %4575 = call float @dx.op.unary.f32(i32 21, float %4574)  ; Exp(value)
  %4576 = fmul fast float %4575, 2.500000e-01
  %4577 = fmul fast float %4564, %4559
  %4578 = call float @dx.op.unary.f32(i32 21, float %4577)  ; Exp(value)
  %4579 = fmul fast float %4578, 7.500000e-01
  %4580 = fadd fast float %4563, %4567
  %4581 = fadd fast float %4570, %4573
  %4582 = fadd fast float %4576, %4579
  %4583 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4584 = extractvalue %dx.types.CBufRet.i32 %4583, 3
  %4585 = and i32 %4584, 8
  %4586 = icmp ne i32 %4585, 0
  %4587 = call float @dx.op.binary.f32(i32 35, float %4504, float %4476)  ; FMax(a,b)
  %4588 = call float @dx.op.binary.f32(i32 35, float %4505, float %4476)  ; FMax(a,b)
  %4589 = call float @dx.op.binary.f32(i32 35, float %4506, float %4476)  ; FMax(a,b)
  %4590 = call float @dx.op.dot3.f32(i32 55, float %4504, float %4505, float %4506, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4591 = select i1 %266, float %4476, float %4504
  %4592 = select i1 %266, float %4590, float %4505
  %4593 = select i1 %266, float 1.000000e+00, float %4506
  %4594 = select i1 %4586, float %4587, float %4591
  %4595 = select i1 %4586, float %4588, float %4592
  %4596 = select i1 %4586, float %4589, float %4593
  %4597 = call float @dx.op.dot3.f32(i32 55, float %4536, float %4537, float %4538, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4598 = select i1 %266, float %4597, float %4536
  %4599 = select i1 %266, float %4597, float %4537
  %4600 = select i1 %266, float %4597, float %4538
  %4601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4602 = extractvalue %dx.types.CBufRet.f32 %4601, 0
  %4603 = extractvalue %dx.types.CBufRet.f32 %4601, 1
  %4604 = extractvalue %dx.types.CBufRet.f32 %4601, 2
  %4605 = fadd fast float %4602, %194
  %4606 = fadd fast float %4603, %195
  %4607 = fadd fast float %4604, %196
  %4608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4609 = extractvalue %dx.types.CBufRet.f32 %4608, 0
  %4610 = extractvalue %dx.types.CBufRet.f32 %4608, 1
  %4611 = fsub fast float %4605, %4609
  %4612 = fsub fast float %4606, %4610
  %4613 = fmul fast float %4611, %4611
  %4614 = fmul fast float %4612, %4612
  %4615 = fadd fast float %4613, %4614
  %4616 = call float @dx.op.unary.f32(i32 24, float %4615)  ; Sqrt(value)
  %4617 = extractvalue %dx.types.CBufRet.f32 %4608, 2
  %4618 = fcmp fast olt float %4616, %4617
  br i1 %4618, label %4619, label %4686

; <label>:4619                                    ; preds = %4535
  %4620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.f32 %4620, 0
  %4622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4623 = extractvalue %dx.types.CBufRet.f32 %4622, 0
  %4624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4625 = extractvalue %dx.types.CBufRet.f32 %4624, 0
  %4626 = extractvalue %dx.types.CBufRet.f32 %4620, 1
  %4627 = extractvalue %dx.types.CBufRet.f32 %4622, 1
  %4628 = extractvalue %dx.types.CBufRet.f32 %4624, 1
  %4629 = extractvalue %dx.types.CBufRet.f32 %4620, 3
  %4630 = extractvalue %dx.types.CBufRet.f32 %4622, 3
  %4631 = extractvalue %dx.types.CBufRet.f32 %4624, 3
  %4632 = fadd fast float %4629, %4605
  %4633 = fadd fast float %4630, %4606
  %4634 = fadd fast float %4631, %4607
  %4635 = fmul fast float %4632, %4621
  %4636 = call float @dx.op.tertiary.f32(i32 46, float %4633, float %4623, float %4635)  ; FMad(a,b,c)
  %4637 = call float @dx.op.tertiary.f32(i32 46, float %4634, float %4625, float %4636)  ; FMad(a,b,c)
  %4638 = fmul fast float %4632, %4626
  %4639 = call float @dx.op.tertiary.f32(i32 46, float %4633, float %4627, float %4638)  ; FMad(a,b,c)
  %4640 = call float @dx.op.tertiary.f32(i32 46, float %4634, float %4628, float %4639)  ; FMad(a,b,c)
  %4641 = fsub fast float %4637, %4629
  %4642 = fsub fast float %4640, %4630
  %4643 = fsub fast float %4641, %4609
  %4644 = fadd fast float %4643, %4617
  %4645 = fsub fast float %4642, %4610
  %4646 = fadd fast float %4645, %4617
  %4647 = extractvalue %dx.types.CBufRet.f32 %4608, 3
  %4648 = fmul fast float %4644, %4647
  %4649 = fmul fast float %4646, %4647
  %4650 = call float @dx.op.unary.f32(i32 7, float %4648)  ; Saturate(value)
  %4651 = call float @dx.op.unary.f32(i32 7, float %4649)  ; Saturate(value)
  %4652 = fsub fast float 1.000000e+00, %4650
  %4653 = fsub fast float 1.000000e+00, %4651
  %4654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %52, float %4652, float %4653, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4655 = extractvalue %dx.types.ResRet.f32 %4654, 0
  %4656 = fcmp fast ugt float %4655, 0.000000e+00
  br i1 %4656, label %4657, label %4960

; <label>:4657                                    ; preds = %4619
  %4658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4659 = extractvalue %dx.types.CBufRet.f32 %4658, 2
  %4660 = fmul fast float %4659, %4655
  %4661 = extractvalue %dx.types.CBufRet.f32 %4658, 3
  %4662 = fadd fast float %4661, %4660
  %4663 = extractvalue %dx.types.CBufRet.f32 %4624, 2
  %4664 = fadd fast float %4662, %4631
  %4665 = fmul fast float %4637, %4625
  %4666 = call float @dx.op.tertiary.f32(i32 46, float %4640, float %4628, float %4665)  ; FMad(a,b,c)
  %4667 = call float @dx.op.tertiary.f32(i32 46, float %4664, float %4663, float %4666)  ; FMad(a,b,c)
  %4668 = fsub fast float %4667, %4631
  %4669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4670 = extractvalue %dx.types.CBufRet.f32 %4669, 2
  %4671 = fsub fast float %4668, %4670
  %4672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %52, float %4652, float %4653, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4673 = extractvalue %dx.types.ResRet.f32 %4672, 0
  %4674 = extractvalue %dx.types.ResRet.f32 %4672, 1
  %4675 = extractvalue %dx.types.ResRet.f32 %4672, 2
  %4676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %52, float %4652, float %4653, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4677 = extractvalue %dx.types.ResRet.f32 %4676, 0
  %4678 = extractvalue %dx.types.ResRet.f32 %4676, 1
  %4679 = extractvalue %dx.types.ResRet.f32 %4676, 2
  %4680 = fadd fast float %4677, %4673
  %4681 = fmul fast float %4680, 0x3F847AE140000000
  %4682 = fadd fast float %4678, %4674
  %4683 = fmul fast float %4682, 0x3F847AE140000000
  %4684 = fadd fast float %4679, %4675
  %4685 = fmul fast float %4684, 0x3F847AE140000000
  br label %4960

; <label>:4686                                    ; preds = %4535
  %4687 = and i32 %245, 1
  %4688 = icmp eq i32 %4687, 0
  br i1 %4688, label %4960, label %4689

; <label>:4689                                    ; preds = %4686
  %4690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4691 = extractvalue %dx.types.CBufRet.f32 %4690, 0
  %4692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4693 = extractvalue %dx.types.CBufRet.f32 %4692, 0
  %4694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4695 = extractvalue %dx.types.CBufRet.f32 %4694, 0
  %4696 = extractvalue %dx.types.CBufRet.f32 %4690, 1
  %4697 = extractvalue %dx.types.CBufRet.f32 %4692, 1
  %4698 = extractvalue %dx.types.CBufRet.f32 %4694, 1
  %4699 = extractvalue %dx.types.CBufRet.f32 %4690, 3
  %4700 = extractvalue %dx.types.CBufRet.f32 %4692, 3
  %4701 = extractvalue %dx.types.CBufRet.f32 %4694, 3
  %4702 = fadd fast float %4699, %4605
  %4703 = fadd fast float %4700, %4606
  %4704 = fadd fast float %4701, %4607
  %4705 = fmul fast float %4702, %4691
  %4706 = call float @dx.op.tertiary.f32(i32 46, float %4703, float %4693, float %4705)  ; FMad(a,b,c)
  %4707 = call float @dx.op.tertiary.f32(i32 46, float %4704, float %4695, float %4706)  ; FMad(a,b,c)
  %4708 = fmul fast float %4702, %4696
  %4709 = call float @dx.op.tertiary.f32(i32 46, float %4703, float %4697, float %4708)  ; FMad(a,b,c)
  %4710 = call float @dx.op.tertiary.f32(i32 46, float %4704, float %4698, float %4709)  ; FMad(a,b,c)
  %4711 = fsub fast float %4707, %4699
  %4712 = fsub fast float %4710, %4700
  %4713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4714 = extractvalue %dx.types.CBufRet.f32 %4713, 0
  %4715 = extractvalue %dx.types.CBufRet.f32 %4713, 1
  %4716 = extractvalue %dx.types.CBufRet.f32 %4713, 2
  %4717 = extractvalue %dx.types.CBufRet.f32 %4713, 3
  %4718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4719 = extractvalue %dx.types.CBufRet.f32 %4718, 3
  %4720 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4721 = extractvalue %dx.types.CBufRet.i32 %4720, 0
  %4722 = extractvalue %dx.types.CBufRet.i32 %4720, 1
  %4723 = udiv i32 %4722, %4721
  %4724 = fsub fast float %4711, %4714
  %4725 = fsub fast float %4712, %4715
  %4726 = call float @dx.op.binary.f32(i32 35, float %4724, float 0.000000e+00)  ; FMax(a,b)
  %4727 = call float @dx.op.binary.f32(i32 35, float %4725, float 0.000000e+00)  ; FMax(a,b)
  %4728 = call float @dx.op.binary.f32(i32 36, float %4726, float %4716)  ; FMin(a,b)
  %4729 = call float @dx.op.binary.f32(i32 36, float %4727, float %4717)  ; FMin(a,b)
  %4730 = add i32 %4721, -1
  %4731 = add i32 %4723, -1
  %4732 = fmul fast float %4728, %4719
  %4733 = fmul fast float %4729, %4719
  %4734 = fptoui float %4732 to i32
  %4735 = fptoui float %4733 to i32
  %4736 = call i32 @dx.op.binary.i32(i32 40, i32 %4734, i32 %4730)  ; UMin(a,b)
  %4737 = call i32 @dx.op.binary.i32(i32 40, i32 %4735, i32 %4731)  ; UMin(a,b)
  %4738 = mul i32 %4737, %4721
  %4739 = add i32 %4738, %4736
  %4740 = shl i32 %4739, 2
  %4741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4740, i32 undef)  ; BufferLoad(srv,index,wot)
  %4742 = extractvalue %dx.types.ResRet.i32 %4741, 0
  %4743 = icmp eq i32 %4742, -1
  br i1 %4743, label %4960, label %4744

; <label>:4744                                    ; preds = %4689
  %4745 = mul i32 %4742, 148
  %4746 = add i32 %4745, 4
  %4747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4746, i32 undef)  ; BufferLoad(srv,index,wot)
  %4748 = extractvalue %dx.types.ResRet.f32 %4747, 0
  %4749 = add i32 %4745, 8
  %4750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4749, i32 undef)  ; BufferLoad(srv,index,wot)
  %4751 = extractvalue %dx.types.ResRet.f32 %4750, 0
  %4752 = add i32 %4745, 36
  %4753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4752, i32 undef)  ; BufferLoad(srv,index,wot)
  %4754 = extractvalue %dx.types.ResRet.f32 %4753, 0
  %4755 = add i32 %4745, 60
  %4756 = add i32 %4745, 92
  %4757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4756, i32 undef)  ; BufferLoad(srv,index,wot)
  %4758 = extractvalue %dx.types.ResRet.i32 %4757, 0
  %4759 = add i32 %4745, 116
  %4760 = fsub fast float %4711, %4748
  %4761 = fsub fast float %4712, %4751
  %4762 = fmul fast float %4719, %4760
  %4763 = fmul fast float %4719, %4761
  %4764 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  %4765 = call float @dx.op.unary.f32(i32 7, float %4763)  ; Saturate(value)
  %4766 = fsub fast float 1.000000e+00, %4765
  %4767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4768 = extractvalue %dx.types.CBufRet.f32 %4767, 2
  %4769 = call float @dx.op.unary.f32(i32 83, float %4764)  ; DerivCoarseX(value)
  %4770 = call float @dx.op.unary.f32(i32 83, float %4766)  ; DerivCoarseX(value)
  %4771 = call float @dx.op.unary.f32(i32 84, float %4764)  ; DerivCoarseY(value)
  %4772 = call float @dx.op.unary.f32(i32 84, float %4766)  ; DerivCoarseY(value)
  %4773 = fmul fast float %4769, %4768
  %4774 = fmul fast float %4770, %4768
  %4775 = fmul fast float %4771, %4768
  %4776 = fmul fast float %4772, %4768
  %4777 = call float @dx.op.dot2.f32(i32 54, float %4775, float %4776, float %4775, float %4776)  ; Dot2(ax,ay,bx,by)
  %4778 = call float @dx.op.dot2.f32(i32 54, float %4773, float %4774, float %4773, float %4774)  ; Dot2(ax,ay,bx,by)
  %4779 = call float @dx.op.binary.f32(i32 35, float %4778, float %4777)  ; FMax(a,b)
  %4780 = call float @dx.op.unary.f32(i32 23, float %4779)  ; Log(value)
  %4781 = fmul fast float %4780, 5.000000e-01
  %4782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %4783 = extractvalue %dx.types.CBufRet.f32 %4782, 1
  %4784 = fadd fast float %4783, %4781
  %4785 = call float @dx.op.binary.f32(i32 35, float %4784, float 0.000000e+00)  ; FMax(a,b)
  %4786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4787 = extractvalue %dx.types.CBufRet.f32 %4786, 3
  %4788 = fadd fast float %4787, %4785
  %4789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.f32 %4789, 3
  %4791 = fadd fast float %4788, %4790
  %4792 = add i32 %4758, 0
  %4793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4792, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4794 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4793, i32 0)  ; GetDimensions(handle,mipLevel)
  %4795 = extractvalue %dx.types.Dimensions %4794, 0
  %4796 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4795)  ; FirstbitLo(value)
  %4797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4798 = extractvalue %dx.types.CBufRet.i32 %4797, 1
  %4799 = sub nsw i32 %4798, %4796
  %4800 = sitofp i32 %4799 to float
  %4801 = fsub fast float %4791, %4800
  %4802 = call float @dx.op.binary.f32(i32 35, float %4801, float 0.000000e+00)  ; FMax(a,b)
  %4803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4793, %dx.types.Handle %50, float %4764, float %4766, float %4754, float undef, i32 0, i32 0, i32 undef, float %4802)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4804 = extractvalue %dx.types.ResRet.f32 %4803, 0
  %4805 = fcmp ule float %4804, 0x3FE0101020000000
  %4806 = extractvalue %dx.types.CBufRet.i32 %4797, 0
  %4807 = and i32 %4806, 128
  %4808 = icmp ne i32 %4807, 0
  %4809 = and i1 %4805, %4808
  br i1 %4809, label %4960, label %4810

; <label>:4810                                    ; preds = %4744
  %4811 = add i32 %4745, 20
  %4812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4811, i32 undef)  ; BufferLoad(srv,index,wot)
  %4813 = extractvalue %dx.types.ResRet.f32 %4812, 0
  %4814 = add i32 %4745, 24
  %4815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4814, i32 undef)  ; BufferLoad(srv,index,wot)
  %4816 = extractvalue %dx.types.ResRet.f32 %4815, 0
  %4817 = add i32 %4745, 40
  %4818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4817, i32 undef)  ; BufferLoad(srv,index,wot)
  %4819 = extractvalue %dx.types.ResRet.f32 %4818, 0
  %4820 = add i32 %4745, 96
  %4821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4820, i32 undef)  ; BufferLoad(srv,index,wot)
  %4822 = extractvalue %dx.types.ResRet.i32 %4821, 0
  %4823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4824 = extractvalue %dx.types.CBufRet.f32 %4823, 2
  %4825 = fmul fast float %4824, %4764
  %4826 = fmul fast float %4824, %4766
  %4827 = extractvalue %dx.types.CBufRet.f32 %4823, 3
  %4828 = fadd fast float %4825, %4827
  %4829 = fadd fast float %4826, %4827
  %4830 = add i32 %4822, 0
  %4831 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4830, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4832 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4831, i32 0)  ; GetDimensions(handle,mipLevel)
  %4833 = extractvalue %dx.types.Dimensions %4832, 0
  %4834 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4833)  ; FirstbitLo(value)
  %4835 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.i32 %4835, 1
  %4837 = sub nsw i32 %4836, %4834
  %4838 = sitofp i32 %4837 to float
  %4839 = fsub fast float %4788, %4838
  %4840 = call float @dx.op.binary.f32(i32 35, float %4839, float 0.000000e+00)  ; FMax(a,b)
  %4841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4831, %dx.types.Handle %50, float %4828, float %4829, float %4819, float undef, i32 0, i32 0, i32 undef, float %4840)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4842 = extractvalue %dx.types.ResRet.f32 %4841, 0
  %4843 = fmul fast float %4842, %4813
  %4844 = fadd fast float %4843, %4816
  %4845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4846 = extractvalue %dx.types.CBufRet.f32 %4845, 0
  %4847 = extractvalue %dx.types.CBufRet.f32 %4845, 1
  %4848 = extractvalue %dx.types.CBufRet.f32 %4845, 2
  %4849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4850 = extractvalue %dx.types.CBufRet.f32 %4849, 3
  %4851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.f32 %4851, 3
  %4853 = extractvalue %dx.types.CBufRet.f32 %4845, 3
  %4854 = fadd fast float %4850, %4711
  %4855 = fadd fast float %4852, %4712
  %4856 = fadd fast float %4844, %4853
  %4857 = fmul fast float %4854, %4846
  %4858 = call float @dx.op.tertiary.f32(i32 46, float %4855, float %4847, float %4857)  ; FMad(a,b,c)
  %4859 = call float @dx.op.tertiary.f32(i32 46, float %4856, float %4848, float %4858)  ; FMad(a,b,c)
  %4860 = fsub fast float %4859, %4853
  %4861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4862 = extractvalue %dx.types.CBufRet.f32 %4861, 2
  %4863 = fsub fast float %4860, %4862
  %4864 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4865 = extractvalue %dx.types.CBufRet.i32 %4864, 0
  %4866 = call i32 @dx.op.binary.i32(i32 40, i32 %4742, i32 %4865)  ; UMin(a,b)
  %4867 = mul i32 %4866, 36
  %4868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4867, i32 undef)  ; BufferLoad(srv,index,wot)
  %4869 = extractvalue %dx.types.ResRet.i32 %4868, 0
  %4870 = add i32 %4867, 4
  %4871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4872 = extractvalue %dx.types.CBufRet.f32 %4871, 0
  %4873 = fmul fast float %4872, %4764
  %4874 = fmul fast float %4872, %4766
  %4875 = extractvalue %dx.types.CBufRet.f32 %4871, 1
  %4876 = fadd fast float %4873, %4875
  %4877 = fadd fast float %4874, %4875
  %4878 = icmp eq i32 %4869, 0
  br i1 %4878, label %4947, label %4879

; <label>:4879                                    ; preds = %4810
  br label %4880

; <label>:4880                                    ; preds = %4937, %4879
  %4881 = phi float [ %4938, %4937 ], [ 0.000000e+00, %4879 ]
  %4882 = phi float [ %4939, %4937 ], [ 0.000000e+00, %4879 ]
  %4883 = phi float [ %4940, %4937 ], [ 0.000000e+00, %4879 ]
  %4884 = phi float [ %4941, %4937 ], [ 0.000000e+00, %4879 ]
  %4885 = phi float [ %4942, %4937 ], [ 0.000000e+00, %4879 ]
  %4886 = phi float [ %4943, %4937 ], [ 0.000000e+00, %4879 ]
  %4887 = phi i32 [ %4944, %4937 ], [ 0, %4879 ]
  %4888 = shl i32 %4887, 2
  %4889 = add i32 %4755, %4888
  %4890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4889, i32 undef)  ; BufferLoad(srv,index,wot)
  %4891 = extractvalue %dx.types.ResRet.f32 %4890, 0
  %4892 = add i32 %4759, %4888
  %4893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4892, i32 undef)  ; BufferLoad(srv,index,wot)
  %4894 = extractvalue %dx.types.ResRet.i32 %4893, 0
  %4895 = add i32 %4894, 0
  %4896 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4895, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4897 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4896, i32 0)  ; GetDimensions(handle,mipLevel)
  %4898 = extractvalue %dx.types.Dimensions %4897, 0
  %4899 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4898)  ; FirstbitLo(value)
  %4900 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4901 = extractvalue %dx.types.CBufRet.i32 %4900, 1
  %4902 = sub nsw i32 %4901, %4899
  %4903 = sitofp i32 %4902 to float
  %4904 = fsub fast float %4788, %4903
  %4905 = call float @dx.op.binary.f32(i32 35, float %4904, float 0.000000e+00)  ; FMax(a,b)
  %4906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4896, %dx.types.Handle %50, float %4876, float %4877, float %4891, float undef, i32 0, i32 0, i32 undef, float %4905)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4907 = extractvalue %dx.types.ResRet.f32 %4906, 0
  %4908 = fcmp fast ogt float %4907, 0.000000e+00
  br i1 %4908, label %4909, label %4937

; <label>:4909                                    ; preds = %4880
  %4910 = add i32 %4870, %4888
  %4911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4910, i32 undef)  ; BufferLoad(srv,index,wot)
  %4912 = extractvalue %dx.types.ResRet.i32 %4911, 0
  %4913 = and i32 %4912, 32767
  %4914 = mul nuw nsw i32 %4913, 928
  %4915 = add nuw nsw i32 %4914, 48
  %4916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4915, i32 undef)  ; BufferLoad(srv,index,wot)
  %4917 = extractvalue %dx.types.ResRet.f32 %4916, 0
  %4918 = extractvalue %dx.types.ResRet.f32 %4916, 1
  %4919 = extractvalue %dx.types.ResRet.f32 %4916, 2
  %4920 = add nuw nsw i32 %4914, 60
  %4921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4920, i32 undef)  ; BufferLoad(srv,index,wot)
  %4922 = extractvalue %dx.types.ResRet.f32 %4921, 0
  %4923 = extractvalue %dx.types.ResRet.f32 %4921, 1
  %4924 = extractvalue %dx.types.ResRet.f32 %4921, 2
  %4925 = fmul fast float %4917, %4907
  %4926 = fmul fast float %4918, %4907
  %4927 = fmul fast float %4919, %4907
  %4928 = fadd fast float %4925, %4881
  %4929 = fadd fast float %4926, %4882
  %4930 = fadd fast float %4927, %4883
  %4931 = fmul fast float %4922, %4907
  %4932 = fmul fast float %4923, %4907
  %4933 = fmul fast float %4924, %4907
  %4934 = fadd fast float %4931, %4884
  %4935 = fadd fast float %4932, %4885
  %4936 = fadd fast float %4933, %4886
  br label %4937

; <label>:4937                                    ; preds = %4909, %4880
  %4938 = phi float [ %4928, %4909 ], [ %4881, %4880 ]
  %4939 = phi float [ %4929, %4909 ], [ %4882, %4880 ]
  %4940 = phi float [ %4930, %4909 ], [ %4883, %4880 ]
  %4941 = phi float [ %4934, %4909 ], [ %4884, %4880 ]
  %4942 = phi float [ %4935, %4909 ], [ %4885, %4880 ]
  %4943 = phi float [ %4936, %4909 ], [ %4886, %4880 ]
  %4944 = add nuw i32 %4887, 1
  %4945 = icmp eq i32 %4944, %4869
  br i1 %4945, label %4946, label %4880

; <label>:4946                                    ; preds = %4937
  br label %4947

; <label>:4947                                    ; preds = %4946, %4810
  %4948 = phi float [ 0.000000e+00, %4810 ], [ %4938, %4946 ]
  %4949 = phi float [ 0.000000e+00, %4810 ], [ %4939, %4946 ]
  %4950 = phi float [ 0.000000e+00, %4810 ], [ %4940, %4946 ]
  %4951 = phi float [ 0.000000e+00, %4810 ], [ %4941, %4946 ]
  %4952 = phi float [ 0.000000e+00, %4810 ], [ %4942, %4946 ]
  %4953 = phi float [ 0.000000e+00, %4810 ], [ %4943, %4946 ]
  %4954 = fadd fast float %4951, %4948
  %4955 = fmul fast float %4954, 0x3F847AE140000000
  %4956 = fadd fast float %4952, %4949
  %4957 = fmul fast float %4956, 0x3F847AE140000000
  %4958 = fadd fast float %4953, %4950
  %4959 = fmul fast float %4958, 0x3F847AE140000000
  br label %4960

; <label>:4960                                    ; preds = %4947, %4744, %4689, %4686, %4657, %4619
  %4961 = phi float [ %4671, %4657 ], [ -1.310720e+05, %4619 ], [ %4863, %4947 ], [ -1.310720e+05, %4689 ], [ -1.310720e+05, %4744 ], [ -1.310720e+05, %4686 ]
  %4962 = phi float [ %4681, %4657 ], [ 0.000000e+00, %4619 ], [ %4955, %4947 ], [ 0.000000e+00, %4689 ], [ 0.000000e+00, %4744 ], [ 0.000000e+00, %4686 ]
  %4963 = phi float [ %4683, %4657 ], [ 0.000000e+00, %4619 ], [ %4957, %4947 ], [ 0.000000e+00, %4689 ], [ 0.000000e+00, %4744 ], [ 0.000000e+00, %4686 ]
  %4964 = phi float [ %4685, %4657 ], [ 0.000000e+00, %4619 ], [ %4959, %4947 ], [ 0.000000e+00, %4689 ], [ 0.000000e+00, %4744 ], [ 0.000000e+00, %4686 ]
  %4965 = phi i1 [ true, %4657 ], [ false, %4619 ], [ true, %4947 ], [ false, %4689 ], [ false, %4744 ], [ false, %4686 ]
  %4966 = and i32 %245, 3
  %4967 = icmp eq i32 %4966, 1
  %4968 = select i1 %4967, float 1.000000e+00, float 0.000000e+00
  %4969 = fsub fast float %4961, %196
  %4970 = call float @dx.op.unary.f32(i32 7, float %4969)  ; Saturate(value)
  %4971 = select i1 %4965, float %4970, float 1.000000e+00
  %4972 = fmul fast float %4971, %4968
  %4973 = icmp eq i32 %4966, 3
  %4974 = select i1 %4973, float 1.000000e+00, float %4972
  %4975 = call float @dx.op.binary.f32(i32 35, float %4491, float %4974)  ; FMax(a,b)
  %4976 = fcmp fast olt float %4974, 1.000000e+00
  %4977 = fcmp uge float %75, 0.000000e+00
  %4978 = and i1 %4977, %4976
  br i1 %4978, label %4979, label %4989

; <label>:4979                                    ; preds = %4960
  %4980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %75, float %76, float %77, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4981 = extractvalue %dx.types.ResRet.f32 %4980, 0
  %4982 = extractvalue %dx.types.ResRet.f32 %4980, 1
  %4983 = extractvalue %dx.types.ResRet.f32 %4980, 2
  %4984 = fadd fast float %4981, %4975
  %4985 = fcmp ule float %74, 0.000000e+00
  %4986 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4987 = select i1 %4985, float %4986, float 1.000000e+00
  %4988 = fmul fast float %4987, %4983
  br label %4989

; <label>:4989                                    ; preds = %4979, %4960
  %4990 = phi float [ %4984, %4979 ], [ %4975, %4960 ]
  %4991 = phi float [ %4982, %4979 ], [ 0.000000e+00, %4960 ]
  %4992 = phi float [ %4988, %4979 ], [ 0.000000e+00, %4960 ]
  %4993 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4994 = call float @dx.op.unary.f32(i32 7, float %4991)  ; Saturate(value)
  %4995 = call float @dx.op.unary.f32(i32 7, float %4992)  ; Saturate(value)
  %4996 = fcmp fast une float %4994, 0.000000e+00
  %4997 = fcmp fast une float %4995, 0.000000e+00
  %4998 = or i1 %4996, %4997
  br i1 %4998, label %4999, label %5574

; <label>:4999                                    ; preds = %4989
  br i1 %4996, label %5000, label %5273

; <label>:5000                                    ; preds = %4999
  %5001 = call float @dx.op.unary.f32(i32 23, float %4488)  ; Log(value)
  %5002 = fmul fast float %5001, 4.000000e+00
  %5003 = call float @dx.op.unary.f32(i32 21, float %5002)  ; Exp(value)
  %5004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5005 = extractvalue %dx.types.CBufRet.f32 %5004, 0
  %5006 = fmul fast float %5005, %62
  %5007 = fmul fast float %5005, %63
  %5008 = fmul fast float %5005, %64
  %5009 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5010 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %5011 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %5012 = call float @dx.op.unary.f32(i32 23, float %5009)  ; Log(value)
  %5013 = call float @dx.op.unary.f32(i32 23, float %5010)  ; Log(value)
  %5014 = call float @dx.op.unary.f32(i32 23, float %5011)  ; Log(value)
  %5015 = fmul fast float %5012, 4.000000e+00
  %5016 = fmul fast float %5013, 4.000000e+00
  %5017 = fmul fast float %5014, 4.000000e+00
  %5018 = call float @dx.op.unary.f32(i32 21, float %5015)  ; Exp(value)
  %5019 = call float @dx.op.unary.f32(i32 21, float %5016)  ; Exp(value)
  %5020 = call float @dx.op.unary.f32(i32 21, float %5017)  ; Exp(value)
  %5021 = fadd fast float %5019, %5018
  %5022 = fadd fast float %5021, %5020
  %5023 = fdiv fast float 1.000000e+00, %5022
  %5024 = fmul fast float %5023, %5018
  %5025 = fcmp fast ogt float %71, 0.000000e+00
  %5026 = fcmp fast ogt float %72, 0.000000e+00
  %5027 = fcmp fast ogt float %73, 0.000000e+00
  %5028 = fcmp fast olt float %71, 0.000000e+00
  %5029 = fcmp fast olt float %72, 0.000000e+00
  %5030 = fcmp fast olt float %73, 0.000000e+00
  %5031 = zext i1 %5025 to i32
  %5032 = zext i1 %5026 to i32
  %5033 = zext i1 %5027 to i32
  %5034 = zext i1 %5028 to i32
  %5035 = zext i1 %5029 to i32
  %5036 = zext i1 %5030 to i32
  %5037 = sub nsw i32 %5031, %5034
  %5038 = sub nsw i32 %5032, %5035
  %5039 = sub nsw i32 %5033, %5036
  %5040 = call float @dx.op.unary.f32(i32 83, float %5006)  ; DerivCoarseX(value)
  %5041 = call float @dx.op.unary.f32(i32 83, float %5007)  ; DerivCoarseX(value)
  %5042 = call float @dx.op.unary.f32(i32 83, float %5008)  ; DerivCoarseX(value)
  %5043 = call float @dx.op.unary.f32(i32 84, float %5006)  ; DerivCoarseY(value)
  %5044 = call float @dx.op.unary.f32(i32 84, float %5007)  ; DerivCoarseY(value)
  %5045 = call float @dx.op.unary.f32(i32 84, float %5008)  ; DerivCoarseY(value)
  %5046 = fcmp fast ole float %279, %5024
  %5047 = fmul fast float %5023, %5021
  %5048 = fcmp fast ole float %279, %5047
  %5049 = select i1 %5048, float %5008, float %5006
  %5050 = select i1 %5048, float %5006, float %5007
  %5051 = select i1 %5046, float %5007, float %5049
  %5052 = select i1 %5046, float %5008, float %5050
  %5053 = select i1 %5048, float %5042, float %5040
  %5054 = select i1 %5048, float %5040, float %5041
  %5055 = select i1 %5046, float %5041, float %5053
  %5056 = select i1 %5046, float %5042, float %5054
  %5057 = select i1 %5048, float %5045, float %5043
  %5058 = select i1 %5048, float %5043, float %5044
  %5059 = select i1 %5046, float %5044, float %5057
  %5060 = select i1 %5046, float %5045, float %5058
  %5061 = call float @dx.op.unary.f32(i32 27, float %5051)  ; Round_ni(value)
  %5062 = call float @dx.op.unary.f32(i32 27, float %5052)  ; Round_ni(value)
  %5063 = fptosi float %5061 to i32
  %5064 = fptosi float %5062 to i32
  %5065 = xor i32 %5064, %5063
  %5066 = sitofp i32 %5065 to float
  %5067 = fptosi float %5066 to i32
  %5068 = sitofp i32 %5067 to float
  %5069 = fmul fast float %5068, 0x3FE3C6EF40000000
  %5070 = frem fast float %5061, 2.560000e+02
  %5071 = frem fast float %5062, 2.560000e+02
  %5072 = fptoui float %5070 to i32
  %5073 = fptoui float %5071 to i32
  %5074 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %5072, i32 %5073, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5075 = extractvalue %dx.types.ResRet.f32 %5074, 0
  %5076 = extractvalue %dx.types.ResRet.f32 %5074, 1
  %5077 = extractvalue %dx.types.ResRet.f32 %5074, 2
  %5078 = fadd fast float %5075, %5069
  %5079 = fadd fast float %5076, %5069
  %5080 = fadd fast float %5077, %5069
  %5081 = call float @dx.op.unary.f32(i32 22, float %5078)  ; Frc(value)
  %5082 = call float @dx.op.unary.f32(i32 22, float %5079)  ; Frc(value)
  %5083 = call float @dx.op.unary.f32(i32 22, float %5080)  ; Frc(value)
  %5084 = fmul fast float %5083, 0x401921FB60000000
  %5085 = call float @dx.op.unary.f32(i32 13, float %5084)  ; Sin(value)
  %5086 = call float @dx.op.unary.f32(i32 12, float %5084)  ; Cos(value)
  %5087 = fsub fast float -0.000000e+00, %5086
  %5088 = fmul fast float %5086, %5051
  %5089 = call float @dx.op.tertiary.f32(i32 46, float %5085, float %5052, float %5088)  ; FMad(a,b,c)
  %5090 = fmul fast float %5085, %5051
  %5091 = call float @dx.op.tertiary.f32(i32 46, float %5087, float %5052, float %5090)  ; FMad(a,b,c)
  %5092 = fadd fast float %5089, %5081
  %5093 = fadd fast float %5091, %5082
  %5094 = extractvalue %dx.types.CBufRet.f32 %5004, 3
  %5095 = bitcast float %5094 to i32
  %5096 = icmp eq i32 %5095, 0
  br i1 %5096, label %5135, label %5097

; <label>:5097                                    ; preds = %5000
  %5098 = add i32 %5095, 0
  %5099 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5098, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5100 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5099, %dx.types.Handle %112, float %5092, float %5093, float undef, float undef, i32 0, i32 0, i32 undef, float %5055, float %5056, float undef, float %5059, float %5060, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5101 = extractvalue %dx.types.ResRet.f32 %5100, 0
  %5102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5103 = extractvalue %dx.types.CBufRet.f32 %5102, 1
  %5104 = extractvalue %dx.types.CBufRet.f32 %5102, 2
  %5105 = fsub fast float 1.000000e+00, %4994
  %5106 = call float @dx.op.binary.f32(i32 35, float %5105, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5107 = bitcast float %4994 to i32
  %5108 = sitofp i32 %5107 to float
  %5109 = fadd fast float %5108, 0xC1CFBF8940000000
  %5110 = fmul fast float %5104, %5109
  %5111 = fadd fast float %5110, 0x41CFBF8940000000
  %5112 = fptosi float %5111 to i32
  %5113 = bitcast i32 %5112 to float
  %5114 = bitcast float %5106 to i32
  %5115 = sitofp i32 %5114 to float
  %5116 = fadd fast float %5115, 0xC1CFBF8940000000
  %5117 = fmul fast float %5116, %5104
  %5118 = fadd fast float %5117, 0x41CFBF8940000000
  %5119 = fptosi float %5118 to i32
  %5120 = bitcast i32 %5119 to float
  %5121 = fmul fast float %5113, %5103
  %5122 = fmul fast float %5120, %5103
  %5123 = fsub fast float %5106, %5121
  %5124 = fadd fast float %5122, %5106
  %5125 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  %5126 = call float @dx.op.unary.f32(i32 7, float %5124)  ; Saturate(value)
  %5127 = fsub fast float %5101, %5125
  %5128 = fsub fast float %5126, %5125
  %5129 = bitcast float %5128 to i32
  %5130 = sub nsw i32 2129859010, %5129
  %5131 = bitcast i32 %5130 to float
  %5132 = fmul fast float %5131, %5127
  %5133 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5134 = fcmp fast olt float %5133, 0x3F70101020000000
  br i1 %5134, label %5273, label %5135

; <label>:5135                                    ; preds = %5097, %5000
  %5136 = phi float [ %5133, %5097 ], [ %4994, %5000 ]
  %5137 = fmul fast float %5136, %5003
  %5138 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.i32 %5138, 1
  %5140 = extractvalue %dx.types.CBufRet.i32 %5138, 0
  %5141 = add i32 %5140, 0
  %5142 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5141, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5143 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5142, %dx.types.Handle %111, float %5092, float %5093, float undef, float undef, i32 0, i32 0, i32 undef, float %5055, float %5056, float undef, float %5059, float %5060, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5144 = extractvalue %dx.types.ResRet.f32 %5143, 0
  %5145 = extractvalue %dx.types.ResRet.f32 %5143, 1
  %5146 = extractvalue %dx.types.ResRet.f32 %5143, 2
  %5147 = extractvalue %dx.types.ResRet.f32 %5143, 3
  %5148 = and i32 %5139, 255
  %5149 = uitofp i32 %5148 to float
  %5150 = lshr i32 %5139, 8
  %5151 = and i32 %5150, 255
  %5152 = uitofp i32 %5151 to float
  %5153 = fmul fast float %5147, %5149
  %5154 = fadd fast float %5153, %5152
  %5155 = fmul fast float %5154, 0x3F70101000000000
  %5156 = fadd fast float %5155, 0xBFB99999A0000000
  %5157 = call float @dx.op.unary.f32(i32 7, float %5156)  ; Saturate(value)
  %5158 = fmul fast float %5157, 0x3FF1C71C80000000
  %5159 = call float @dx.op.binary.f32(i32 36, float %5155, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5160 = fsub fast float 1.000000e+00, %5158
  %5161 = call float @dx.op.unary.f32(i32 7, float %5160)  ; Saturate(value)
  %5162 = fmul fast float %5161, %5144
  %5163 = fmul fast float %5161, %5145
  %5164 = fmul fast float %5161, %5146
  %5165 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5166 = call float @dx.op.unary.f32(i32 7, float %5163)  ; Saturate(value)
  %5167 = call float @dx.op.unary.f32(i32 7, float %5164)  ; Saturate(value)
  %5168 = fmul fast float %5158, %5144
  %5169 = fmul fast float %5158, %5145
  %5170 = fmul fast float %5158, %5146
  %5171 = fadd fast float %5168, %5159
  %5172 = fadd fast float %5169, %5159
  %5173 = fadd fast float %5170, %5159
  %5174 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5175 = call float @dx.op.unary.f32(i32 7, float %5172)  ; Saturate(value)
  %5176 = call float @dx.op.unary.f32(i32 7, float %5173)  ; Saturate(value)
  %5177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5178 = extractvalue %dx.types.CBufRet.i32 %5177, 3
  %5179 = extractvalue %dx.types.CBufRet.i32 %5177, 2
  %5180 = add i32 %5179, 0
  %5181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5180, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5182 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5181, %dx.types.Handle %111, float %5092, float %5093, float undef, float undef, i32 0, i32 0, i32 undef, float %5055, float %5056, float undef, float %5059, float %5060, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5183 = extractvalue %dx.types.ResRet.f32 %5182, 0
  %5184 = extractvalue %dx.types.ResRet.f32 %5182, 1
  %5185 = extractvalue %dx.types.ResRet.f32 %5182, 2
  %5186 = extractvalue %dx.types.ResRet.f32 %5182, 3
  %5187 = and i32 %5178, 255
  %5188 = uitofp i32 %5187 to float
  %5189 = lshr i32 %5178, 8
  %5190 = and i32 %5189, 255
  %5191 = uitofp i32 %5190 to float
  %5192 = lshr i32 %5178, 16
  %5193 = and i32 %5192, 255
  %5194 = uitofp i32 %5193 to float
  %5195 = fmul fast float %5194, 0x3F70101000000000
  %5196 = fmul fast float %5183, %5188
  %5197 = fadd fast float %5196, %5191
  %5198 = fmul fast float %5197, 0x3F70101000000000
  %5199 = fadd fast float %5184, -5.000000e-01
  %5200 = fadd fast float %5186, -5.000000e-01
  %5201 = fmul fast float %5199, %5195
  %5202 = fmul fast float %5200, %5195
  %5203 = fadd fast float %5201, 5.000000e-01
  %5204 = fadd fast float %5202, 5.000000e-01
  %5205 = fmul fast float %5203, 2.000000e+00
  %5206 = fadd fast float %5205, -1.000000e+00
  %5207 = fmul fast float %5204, 2.000000e+00
  %5208 = fadd fast float %5207, -1.000000e+00
  %5209 = fadd fast float %5206, %5208
  %5210 = fmul fast float %5209, 5.000000e-01
  %5211 = fsub fast float %5206, %5208
  %5212 = fmul fast float %5211, 5.000000e-01
  %5213 = call float @dx.op.unary.f32(i32 6, float %5210)  ; FAbs(value)
  %5214 = fsub fast float 1.000000e+00, %5213
  %5215 = call float @dx.op.unary.f32(i32 6, float %5212)  ; FAbs(value)
  %5216 = fsub fast float %5214, %5215
  %5217 = call float @dx.op.dot3.f32(i32 55, float %5210, float %5212, float %5216, float %5210, float %5212, float %5216)  ; Dot3(ax,ay,az,bx,by,bz)
  %5218 = call float @dx.op.unary.f32(i32 25, float %5217)  ; Rsqrt(value)
  %5219 = fmul fast float %5210, %5218
  %5220 = fmul fast float %5212, %5218
  %5221 = select i1 %5048, i32 %5038, i32 %5039
  %5222 = select i1 %5046, i32 %5037, i32 %5221
  %5223 = sitofp i32 %5222 to float
  %5224 = fmul fast float %5216, %5223
  %5225 = fmul fast float %5224, %5218
  %5226 = select i1 %5048, float %5225, float %5220
  %5227 = select i1 %5048, float %5220, float %5225
  %5228 = select i1 %5046, float %5225, float %5219
  %5229 = select i1 %5046, float %5220, float %5226
  %5230 = select i1 %5046, float %5219, float %5227
  %5231 = fsub fast float %5165, %4594
  %5232 = fsub fast float %5166, %4595
  %5233 = fsub fast float %5167, %4596
  %5234 = fmul fast float %5231, %5137
  %5235 = fmul fast float %5232, %5137
  %5236 = fmul fast float %5233, %5137
  %5237 = fadd fast float %5234, %4594
  %5238 = fadd fast float %5235, %4595
  %5239 = fadd fast float %5236, %4596
  %5240 = fsub fast float %5174, %4513
  %5241 = fsub fast float %5175, %4514
  %5242 = fsub fast float %5176, %4515
  %5243 = fmul fast float %5240, %5137
  %5244 = fmul fast float %5241, %5137
  %5245 = fmul fast float %5242, %5137
  %5246 = fadd fast float %5243, %4513
  %5247 = fadd fast float %5244, %4514
  %5248 = fadd fast float %5245, %4515
  %5249 = fadd fast float %5228, %4473
  %5250 = fadd fast float %5229, %4474
  %5251 = fadd fast float %5230, %4475
  %5252 = call float @dx.op.dot3.f32(i32 55, float %5249, float %5250, float %5251, float %5249, float %5250, float %5251)  ; Dot3(ax,ay,az,bx,by,bz)
  %5253 = call float @dx.op.unary.f32(i32 25, float %5252)  ; Rsqrt(value)
  %5254 = fmul fast float %5249, %5253
  %5255 = fmul fast float %5250, %5253
  %5256 = fmul fast float %5251, %5253
  %5257 = fsub fast float %5254, %4473
  %5258 = fsub fast float %5255, %4474
  %5259 = fsub fast float %5256, %4475
  %5260 = fmul fast float %5257, %5137
  %5261 = fmul fast float %5258, %5137
  %5262 = fmul fast float %5259, %5137
  %5263 = fadd fast float %5260, %4473
  %5264 = fadd fast float %5261, %4474
  %5265 = fadd fast float %5262, %4475
  %5266 = call float @dx.op.binary.f32(i32 36, float %4488, float %5185)  ; FMin(a,b)
  %5267 = fsub fast float %5266, %4488
  %5268 = fmul fast float %5267, %5137
  %5269 = fadd fast float %5268, %4488
  %5270 = fsub fast float %5198, %4516
  %5271 = fmul fast float %5270, %5137
  %5272 = fadd fast float %5271, %4516
  br label %5273

; <label>:5273                                    ; preds = %5135, %5097, %4999
  %5274 = phi float [ %5237, %5135 ], [ %4594, %5097 ], [ %4594, %4999 ]
  %5275 = phi float [ %5238, %5135 ], [ %4595, %5097 ], [ %4595, %4999 ]
  %5276 = phi float [ %5239, %5135 ], [ %4596, %5097 ], [ %4596, %4999 ]
  %5277 = phi float [ %5246, %5135 ], [ %4513, %5097 ], [ %4513, %4999 ]
  %5278 = phi float [ %5247, %5135 ], [ %4514, %5097 ], [ %4514, %4999 ]
  %5279 = phi float [ %5248, %5135 ], [ %4515, %5097 ], [ %4515, %4999 ]
  %5280 = phi float [ %5263, %5135 ], [ %4473, %5097 ], [ %4473, %4999 ]
  %5281 = phi float [ %5264, %5135 ], [ %4474, %5097 ], [ %4474, %4999 ]
  %5282 = phi float [ %5265, %5135 ], [ %4475, %5097 ], [ %4475, %4999 ]
  %5283 = phi float [ %5272, %5135 ], [ %4516, %5097 ], [ %4516, %4999 ]
  %5284 = phi float [ %5269, %5135 ], [ %4488, %5097 ], [ %4488, %4999 ]
  br i1 %4997, label %5285, label %5574

; <label>:5285                                    ; preds = %5273
  %5286 = call float @dx.op.unary.f32(i32 23, float %5284)  ; Log(value)
  %5287 = fmul fast float %5286, 4.000000e+00
  %5288 = call float @dx.op.unary.f32(i32 21, float %5287)  ; Exp(value)
  %5289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.f32 %5289, 0
  %5291 = fmul fast float %5290, %62
  %5292 = fmul fast float %5290, %63
  %5293 = fmul fast float %5290, %64
  %5294 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5295 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %5296 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %5297 = call float @dx.op.unary.f32(i32 23, float %5294)  ; Log(value)
  %5298 = call float @dx.op.unary.f32(i32 23, float %5295)  ; Log(value)
  %5299 = call float @dx.op.unary.f32(i32 23, float %5296)  ; Log(value)
  %5300 = fmul fast float %5297, 4.000000e+00
  %5301 = fmul fast float %5298, 4.000000e+00
  %5302 = fmul fast float %5299, 4.000000e+00
  %5303 = call float @dx.op.unary.f32(i32 21, float %5300)  ; Exp(value)
  %5304 = call float @dx.op.unary.f32(i32 21, float %5301)  ; Exp(value)
  %5305 = call float @dx.op.unary.f32(i32 21, float %5302)  ; Exp(value)
  %5306 = fadd fast float %5304, %5303
  %5307 = fadd fast float %5306, %5305
  %5308 = fdiv fast float 1.000000e+00, %5307
  %5309 = fmul fast float %5308, %5303
  %5310 = fcmp fast ogt float %71, 0.000000e+00
  %5311 = fcmp fast ogt float %72, 0.000000e+00
  %5312 = fcmp fast ogt float %73, 0.000000e+00
  %5313 = fcmp fast olt float %71, 0.000000e+00
  %5314 = fcmp fast olt float %72, 0.000000e+00
  %5315 = fcmp fast olt float %73, 0.000000e+00
  %5316 = zext i1 %5310 to i32
  %5317 = zext i1 %5311 to i32
  %5318 = zext i1 %5312 to i32
  %5319 = zext i1 %5313 to i32
  %5320 = zext i1 %5314 to i32
  %5321 = zext i1 %5315 to i32
  %5322 = sub nsw i32 %5316, %5319
  %5323 = sub nsw i32 %5317, %5320
  %5324 = sub nsw i32 %5318, %5321
  %5325 = call float @dx.op.unary.f32(i32 83, float %5291)  ; DerivCoarseX(value)
  %5326 = call float @dx.op.unary.f32(i32 83, float %5292)  ; DerivCoarseX(value)
  %5327 = call float @dx.op.unary.f32(i32 83, float %5293)  ; DerivCoarseX(value)
  %5328 = call float @dx.op.unary.f32(i32 84, float %5291)  ; DerivCoarseY(value)
  %5329 = call float @dx.op.unary.f32(i32 84, float %5292)  ; DerivCoarseY(value)
  %5330 = call float @dx.op.unary.f32(i32 84, float %5293)  ; DerivCoarseY(value)
  %5331 = fcmp fast ole float %279, %5309
  %5332 = fmul fast float %5308, %5306
  %5333 = fcmp fast ole float %279, %5332
  %5334 = select i1 %5333, float %5293, float %5291
  %5335 = select i1 %5333, float %5291, float %5292
  %5336 = select i1 %5331, float %5292, float %5334
  %5337 = select i1 %5331, float %5293, float %5335
  %5338 = select i1 %5333, float %5327, float %5325
  %5339 = select i1 %5333, float %5325, float %5326
  %5340 = select i1 %5331, float %5326, float %5338
  %5341 = select i1 %5331, float %5327, float %5339
  %5342 = select i1 %5333, float %5330, float %5328
  %5343 = select i1 %5333, float %5328, float %5329
  %5344 = select i1 %5331, float %5329, float %5342
  %5345 = select i1 %5331, float %5330, float %5343
  %5346 = call float @dx.op.unary.f32(i32 27, float %5336)  ; Round_ni(value)
  %5347 = call float @dx.op.unary.f32(i32 27, float %5337)  ; Round_ni(value)
  %5348 = fptosi float %5346 to i32
  %5349 = fptosi float %5347 to i32
  %5350 = xor i32 %5349, %5348
  %5351 = sitofp i32 %5350 to float
  %5352 = fptosi float %5351 to i32
  %5353 = sitofp i32 %5352 to float
  %5354 = fmul fast float %5353, 0x3FE3C6EF40000000
  %5355 = frem fast float %5346, 2.560000e+02
  %5356 = frem fast float %5347, 2.560000e+02
  %5357 = fptoui float %5355 to i32
  %5358 = fptoui float %5356 to i32
  %5359 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %5357, i32 %5358, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5360 = extractvalue %dx.types.ResRet.f32 %5359, 0
  %5361 = extractvalue %dx.types.ResRet.f32 %5359, 1
  %5362 = extractvalue %dx.types.ResRet.f32 %5359, 2
  %5363 = fadd fast float %5360, %5354
  %5364 = fadd fast float %5361, %5354
  %5365 = fadd fast float %5362, %5354
  %5366 = call float @dx.op.unary.f32(i32 22, float %5363)  ; Frc(value)
  %5367 = call float @dx.op.unary.f32(i32 22, float %5364)  ; Frc(value)
  %5368 = call float @dx.op.unary.f32(i32 22, float %5365)  ; Frc(value)
  %5369 = fmul fast float %5368, 0x401921FB60000000
  %5370 = call float @dx.op.unary.f32(i32 13, float %5369)  ; Sin(value)
  %5371 = call float @dx.op.unary.f32(i32 12, float %5369)  ; Cos(value)
  %5372 = fsub fast float -0.000000e+00, %5371
  %5373 = fmul fast float %5371, %5336
  %5374 = call float @dx.op.tertiary.f32(i32 46, float %5370, float %5337, float %5373)  ; FMad(a,b,c)
  %5375 = fmul fast float %5370, %5336
  %5376 = call float @dx.op.tertiary.f32(i32 46, float %5372, float %5337, float %5375)  ; FMad(a,b,c)
  %5377 = fadd fast float %5374, %5366
  %5378 = fadd fast float %5376, %5367
  %5379 = extractvalue %dx.types.CBufRet.f32 %5289, 3
  %5380 = bitcast float %5379 to i32
  %5381 = icmp eq i32 %5380, 0
  br i1 %5381, label %5420, label %5382

; <label>:5382                                    ; preds = %5285
  %5383 = add i32 %5380, 0
  %5384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5385 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5384, %dx.types.Handle %112, float %5377, float %5378, float undef, float undef, i32 0, i32 0, i32 undef, float %5340, float %5341, float undef, float %5344, float %5345, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5386 = extractvalue %dx.types.ResRet.f32 %5385, 0
  %5387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5388 = extractvalue %dx.types.CBufRet.f32 %5387, 1
  %5389 = extractvalue %dx.types.CBufRet.f32 %5387, 2
  %5390 = fsub fast float 1.000000e+00, %4995
  %5391 = call float @dx.op.binary.f32(i32 35, float %5390, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5392 = bitcast float %4995 to i32
  %5393 = sitofp i32 %5392 to float
  %5394 = fadd fast float %5393, 0xC1CFBF8940000000
  %5395 = fmul fast float %5389, %5394
  %5396 = fadd fast float %5395, 0x41CFBF8940000000
  %5397 = fptosi float %5396 to i32
  %5398 = bitcast i32 %5397 to float
  %5399 = bitcast float %5391 to i32
  %5400 = sitofp i32 %5399 to float
  %5401 = fadd fast float %5400, 0xC1CFBF8940000000
  %5402 = fmul fast float %5401, %5389
  %5403 = fadd fast float %5402, 0x41CFBF8940000000
  %5404 = fptosi float %5403 to i32
  %5405 = bitcast i32 %5404 to float
  %5406 = fmul fast float %5398, %5388
  %5407 = fmul fast float %5405, %5388
  %5408 = fsub fast float %5391, %5406
  %5409 = fadd fast float %5407, %5391
  %5410 = call float @dx.op.unary.f32(i32 7, float %5408)  ; Saturate(value)
  %5411 = call float @dx.op.unary.f32(i32 7, float %5409)  ; Saturate(value)
  %5412 = fsub fast float %5386, %5410
  %5413 = fsub fast float %5411, %5410
  %5414 = bitcast float %5413 to i32
  %5415 = sub nsw i32 2129859010, %5414
  %5416 = bitcast i32 %5415 to float
  %5417 = fmul fast float %5416, %5412
  %5418 = call float @dx.op.unary.f32(i32 7, float %5417)  ; Saturate(value)
  %5419 = fcmp fast olt float %5418, 0x3F70101020000000
  br i1 %5419, label %5574, label %5420

; <label>:5420                                    ; preds = %5382, %5285
  %5421 = phi float [ %5418, %5382 ], [ %4995, %5285 ]
  %5422 = fmul fast float %5421, %5288
  %5423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5424 = extractvalue %dx.types.CBufRet.i32 %5423, 1
  %5425 = extractvalue %dx.types.CBufRet.i32 %5423, 0
  %5426 = add i32 %5425, 0
  %5427 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5426, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5428 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5427, %dx.types.Handle %111, float %5377, float %5378, float undef, float undef, i32 0, i32 0, i32 undef, float %5340, float %5341, float undef, float %5344, float %5345, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5429 = extractvalue %dx.types.ResRet.f32 %5428, 0
  %5430 = extractvalue %dx.types.ResRet.f32 %5428, 1
  %5431 = extractvalue %dx.types.ResRet.f32 %5428, 2
  %5432 = extractvalue %dx.types.ResRet.f32 %5428, 3
  %5433 = and i32 %5424, 255
  %5434 = uitofp i32 %5433 to float
  %5435 = lshr i32 %5424, 8
  %5436 = and i32 %5435, 255
  %5437 = uitofp i32 %5436 to float
  %5438 = fmul fast float %5432, %5434
  %5439 = fadd fast float %5438, %5437
  %5440 = fmul fast float %5439, 0x3F70101000000000
  %5441 = fadd fast float %5440, 0xBFB99999A0000000
  %5442 = call float @dx.op.unary.f32(i32 7, float %5441)  ; Saturate(value)
  %5443 = fmul fast float %5442, 0x3FF1C71C80000000
  %5444 = call float @dx.op.binary.f32(i32 36, float %5440, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5445 = fsub fast float 1.000000e+00, %5443
  %5446 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  %5447 = fmul fast float %5446, %5429
  %5448 = fmul fast float %5446, %5430
  %5449 = fmul fast float %5446, %5431
  %5450 = call float @dx.op.unary.f32(i32 7, float %5447)  ; Saturate(value)
  %5451 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  %5452 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5453 = fmul fast float %5443, %5429
  %5454 = fmul fast float %5443, %5430
  %5455 = fmul fast float %5443, %5431
  %5456 = fadd fast float %5453, %5444
  %5457 = fadd fast float %5454, %5444
  %5458 = fadd fast float %5455, %5444
  %5459 = call float @dx.op.unary.f32(i32 7, float %5456)  ; Saturate(value)
  %5460 = call float @dx.op.unary.f32(i32 7, float %5457)  ; Saturate(value)
  %5461 = call float @dx.op.unary.f32(i32 7, float %5458)  ; Saturate(value)
  %5462 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5463 = extractvalue %dx.types.CBufRet.i32 %5462, 3
  %5464 = extractvalue %dx.types.CBufRet.i32 %5462, 2
  %5465 = add i32 %5464, 0
  %5466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5467 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5466, %dx.types.Handle %111, float %5377, float %5378, float undef, float undef, i32 0, i32 0, i32 undef, float %5340, float %5341, float undef, float %5344, float %5345, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5468 = extractvalue %dx.types.ResRet.f32 %5467, 0
  %5469 = extractvalue %dx.types.ResRet.f32 %5467, 1
  %5470 = extractvalue %dx.types.ResRet.f32 %5467, 2
  %5471 = extractvalue %dx.types.ResRet.f32 %5467, 3
  %5472 = and i32 %5463, 255
  %5473 = uitofp i32 %5472 to float
  %5474 = lshr i32 %5463, 8
  %5475 = and i32 %5474, 255
  %5476 = uitofp i32 %5475 to float
  %5477 = lshr i32 %5463, 16
  %5478 = and i32 %5477, 255
  %5479 = uitofp i32 %5478 to float
  %5480 = fmul fast float %5479, 0x3F70101000000000
  %5481 = fmul fast float %5468, %5473
  %5482 = fadd fast float %5481, %5476
  %5483 = fmul fast float %5482, 0x3F70101000000000
  %5484 = fadd fast float %5469, -5.000000e-01
  %5485 = fadd fast float %5471, -5.000000e-01
  %5486 = fmul fast float %5484, %5480
  %5487 = fmul fast float %5485, %5480
  %5488 = fadd fast float %5486, 5.000000e-01
  %5489 = fadd fast float %5487, 5.000000e-01
  %5490 = fmul fast float %5488, 2.000000e+00
  %5491 = fadd fast float %5490, -1.000000e+00
  %5492 = fmul fast float %5489, 2.000000e+00
  %5493 = fadd fast float %5492, -1.000000e+00
  %5494 = fadd fast float %5491, %5493
  %5495 = fmul fast float %5494, 5.000000e-01
  %5496 = fsub fast float %5491, %5493
  %5497 = fmul fast float %5496, 5.000000e-01
  %5498 = call float @dx.op.unary.f32(i32 6, float %5495)  ; FAbs(value)
  %5499 = fsub fast float 1.000000e+00, %5498
  %5500 = call float @dx.op.unary.f32(i32 6, float %5497)  ; FAbs(value)
  %5501 = fsub fast float %5499, %5500
  %5502 = call float @dx.op.dot3.f32(i32 55, float %5495, float %5497, float %5501, float %5495, float %5497, float %5501)  ; Dot3(ax,ay,az,bx,by,bz)
  %5503 = call float @dx.op.unary.f32(i32 25, float %5502)  ; Rsqrt(value)
  %5504 = fmul fast float %5495, %5503
  %5505 = fmul fast float %5497, %5503
  %5506 = select i1 %5333, i32 %5323, i32 %5324
  %5507 = select i1 %5331, i32 %5322, i32 %5506
  %5508 = sitofp i32 %5507 to float
  %5509 = fmul fast float %5501, %5508
  %5510 = fmul fast float %5509, %5503
  %5511 = select i1 %5333, float %5510, float %5505
  %5512 = select i1 %5333, float %5505, float %5510
  %5513 = select i1 %5331, float %5510, float %5504
  %5514 = select i1 %5331, float %5505, float %5511
  %5515 = select i1 %5331, float %5504, float %5512
  %5516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5517 = extractvalue %dx.types.CBufRet.f32 %5516, 0
  %5518 = fptoui float %5517 to i32
  %5519 = add i32 %5518, 0
  %5520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5521 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5520, %dx.types.Handle %111, float %5377, float %5378, float undef, float undef, i32 0, i32 0, i32 undef, float %5340, float %5341, float undef, float %5344, float %5345, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5522 = extractvalue %dx.types.ResRet.f32 %5521, 0
  %5523 = fsub fast float %5450, %5274
  %5524 = fsub fast float %5451, %5275
  %5525 = fsub fast float %5452, %5276
  %5526 = fmul fast float %5523, %5422
  %5527 = fmul fast float %5524, %5422
  %5528 = fmul fast float %5525, %5422
  %5529 = fadd fast float %5526, %5274
  %5530 = fadd fast float %5527, %5275
  %5531 = fadd fast float %5528, %5276
  %5532 = fsub fast float %5459, %5277
  %5533 = fsub fast float %5460, %5278
  %5534 = fsub fast float %5461, %5279
  %5535 = fmul fast float %5532, %5422
  %5536 = fmul fast float %5533, %5422
  %5537 = fmul fast float %5534, %5422
  %5538 = fadd fast float %5535, %5277
  %5539 = fadd fast float %5536, %5278
  %5540 = fadd fast float %5537, %5279
  %5541 = fadd fast float %5513, %5280
  %5542 = fadd fast float %5514, %5281
  %5543 = fadd fast float %5515, %5282
  %5544 = call float @dx.op.dot3.f32(i32 55, float %5541, float %5542, float %5543, float %5541, float %5542, float %5543)  ; Dot3(ax,ay,az,bx,by,bz)
  %5545 = call float @dx.op.unary.f32(i32 25, float %5544)  ; Rsqrt(value)
  %5546 = fmul fast float %5545, %5541
  %5547 = fmul fast float %5545, %5542
  %5548 = fmul fast float %5545, %5543
  %5549 = fsub fast float %5546, %5280
  %5550 = fsub fast float %5547, %5281
  %5551 = fsub fast float %5548, %5282
  %5552 = fmul fast float %5549, %5422
  %5553 = fmul fast float %5550, %5422
  %5554 = fmul fast float %5551, %5422
  %5555 = fadd fast float %5552, %5280
  %5556 = fadd fast float %5553, %5281
  %5557 = fadd fast float %5554, %5282
  %5558 = call float @dx.op.binary.f32(i32 36, float %5284, float %5470)  ; FMin(a,b)
  %5559 = fsub fast float %5558, %5284
  %5560 = fmul fast float %5559, %5422
  %5561 = fadd fast float %5560, %5284
  %5562 = fsub fast float %5483, %5283
  %5563 = fmul fast float %5562, %5422
  %5564 = fadd fast float %5563, %5283
  %5565 = fsub fast float %5522, %4598
  %5566 = fsub fast float %5522, %4599
  %5567 = fsub fast float %5522, %4600
  %5568 = fmul fast float %5565, %5422
  %5569 = fmul fast float %5566, %5422
  %5570 = fmul fast float %5567, %5422
  %5571 = fadd fast float %5568, %4598
  %5572 = fadd fast float %5569, %4599
  %5573 = fadd fast float %5570, %4600
  br label %5574

; <label>:5574                                    ; preds = %5420, %5382, %5273, %4989
  %5575 = phi float [ %5529, %5420 ], [ %5274, %5382 ], [ %5274, %5273 ], [ %4594, %4989 ]
  %5576 = phi float [ %5530, %5420 ], [ %5275, %5382 ], [ %5275, %5273 ], [ %4595, %4989 ]
  %5577 = phi float [ %5531, %5420 ], [ %5276, %5382 ], [ %5276, %5273 ], [ %4596, %4989 ]
  %5578 = phi float [ %5538, %5420 ], [ %5277, %5382 ], [ %5277, %5273 ], [ %4513, %4989 ]
  %5579 = phi float [ %5539, %5420 ], [ %5278, %5382 ], [ %5278, %5273 ], [ %4514, %4989 ]
  %5580 = phi float [ %5540, %5420 ], [ %5279, %5382 ], [ %5279, %5273 ], [ %4515, %4989 ]
  %5581 = phi float [ %5555, %5420 ], [ %5280, %5382 ], [ %5280, %5273 ], [ %4473, %4989 ]
  %5582 = phi float [ %5556, %5420 ], [ %5281, %5382 ], [ %5281, %5273 ], [ %4474, %4989 ]
  %5583 = phi float [ %5557, %5420 ], [ %5282, %5382 ], [ %5282, %5273 ], [ %4475, %4989 ]
  %5584 = phi float [ %5571, %5420 ], [ %4598, %5382 ], [ %4598, %5273 ], [ %4598, %4989 ]
  %5585 = phi float [ %5572, %5420 ], [ %4599, %5382 ], [ %4599, %5273 ], [ %4599, %4989 ]
  %5586 = phi float [ %5573, %5420 ], [ %4600, %5382 ], [ %4600, %5273 ], [ %4600, %4989 ]
  %5587 = phi float [ %5564, %5420 ], [ %5283, %5382 ], [ %5283, %5273 ], [ %4516, %4989 ]
  %5588 = phi float [ %5561, %5420 ], [ %5284, %5382 ], [ %5284, %5273 ], [ %4488, %4989 ]
  %5589 = fcmp fast une float %4993, 0.000000e+00
  br i1 %5589, label %5590, label %5759

; <label>:5590                                    ; preds = %5574
  %5591 = call float @dx.op.dot3.f32(i32 55, float %194, float %195, float %196, float %194, float %195, float %196)  ; Dot3(ax,ay,az,bx,by,bz)
  %5592 = call float @dx.op.unary.f32(i32 25, float %5591)  ; Rsqrt(value)
  %5593 = fmul fast float %194, %5592
  %5594 = fsub fast float -0.000000e+00, %5593
  %5595 = fmul fast float %195, %5592
  %5596 = fsub fast float -0.000000e+00, %5595
  %5597 = fmul fast float %196, %5592
  %5598 = fsub fast float -0.000000e+00, %5597
  %5599 = call float @dx.op.dot3.f32(i32 55, float %5594, float %5596, float %5598, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5600 = fmul fast float %4993, 2.500000e+00
  %5601 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5602 = fmul fast float %4993, 0x4013FFFFE0000000
  %5603 = fadd fast float %5602, 0xBFFFFFFFE0000000
  %5604 = call float @dx.op.unary.f32(i32 7, float %5603)  ; Saturate(value)
  %5605 = fmul fast float %4993, 0x4004000020000000
  %5606 = fadd fast float %5605, 0xBFF8000040000000
  %5607 = call float @dx.op.unary.f32(i32 7, float %5606)  ; Saturate(value)
  %5608 = fmul fast float %4495, 1.000000e+01
  %5609 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  %5610 = fmul fast float %5609, 2.000000e+00
  %5611 = fsub fast float 3.000000e+00, %5610
  %5612 = fmul fast float %5609, %5609
  %5613 = fmul fast float %5612, %5611
  %5614 = fsub fast float 1.000000e+00, %5613
  %5615 = fsub fast float 0x3FE3333340000000, %5587
  %5616 = fmul fast float %5615, 0x400AAAAAA0000000
  %5617 = call float @dx.op.unary.f32(i32 7, float %5616)  ; Saturate(value)
  %5618 = fmul fast float %5614, %5617
  %5619 = fmul fast float %5575, 0x3FEA2B8620000000
  %5620 = fmul fast float %5576, 0x3FEA2B8620000000
  %5621 = fmul fast float %5577, 0x3FEA2B8620000000
  %5622 = fadd fast float %5619, 0x3FC81DFBA0000000
  %5623 = fmul fast float %5622, %5575
  %5624 = fadd fast float %5623, 0x3F910E6020000000
  %5625 = fadd fast float %5620, 0x3FC81DFBA0000000
  %5626 = fmul fast float %5625, %5576
  %5627 = fadd fast float %5626, 0x3F910E6020000000
  %5628 = fadd fast float %5621, 0x3FC81DFBA0000000
  %5629 = fmul fast float %5628, %5577
  %5630 = fadd fast float %5629, 0x3F910E6020000000
  %5631 = call float @dx.op.unary.f32(i32 7, float %5624)  ; Saturate(value)
  %5632 = call float @dx.op.unary.f32(i32 7, float %5627)  ; Saturate(value)
  %5633 = call float @dx.op.unary.f32(i32 7, float %5630)  ; Saturate(value)
  %5634 = fsub fast float %5631, %5575
  %5635 = fsub fast float %5632, %5576
  %5636 = fsub fast float %5633, %5577
  %5637 = fmul fast float %5634, %5601
  %5638 = fmul fast float %5637, %5618
  %5639 = fmul fast float %5635, %5601
  %5640 = fmul fast float %5639, %5618
  %5641 = fmul fast float %5636, %5601
  %5642 = fmul fast float %5641, %5618
  %5643 = fadd fast float %5638, %5575
  %5644 = fadd fast float %5640, %5576
  %5645 = fadd fast float %5642, %5577
  %5646 = fmul fast float %5588, %5588
  %5647 = fmul fast float %5646, %5646
  %5648 = fadd fast float %5604, 1.000000e+00
  %5649 = fsub fast float %5648, %5618
  %5650 = call float @dx.op.unary.f32(i32 7, float %5649)  ; Saturate(value)
  %5651 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5652 = call float @dx.op.unary.f32(i32 7, float %5651)  ; Saturate(value)
  %5653 = fsub fast float 1.000000e+00, %5647
  %5654 = call float @dx.op.binary.f32(i32 36, float %5650, float %5653)  ; FMin(a,b)
  %5655 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  %5656 = call float @dx.op.binary.f32(i32 35, float %5654, float %5655)  ; FMax(a,b)
  %5657 = fadd fast float %5652, 0xBFE4CCCCC0000000
  %5658 = fmul fast float %5657, 0x4006DB6DA0000000
  %5659 = call float @dx.op.unary.f32(i32 7, float %5658)  ; Saturate(value)
  %5660 = fmul fast float %5659, 2.000000e+00
  %5661 = fsub fast float 3.000000e+00, %5660
  %5662 = bitcast float %5578 to i32
  %5663 = ashr i32 %5662, 1
  %5664 = add nsw i32 %5663, 532487669
  %5665 = bitcast i32 %5664 to float
  %5666 = fsub fast float 1.000000e+00, %5665
  %5667 = bitcast float %5666 to i32
  %5668 = sub nsw i32 2129859010, %5667
  %5669 = bitcast i32 %5668 to float
  %5670 = fmul fast float %5669, 2.000000e+00
  %5671 = bitcast float %5579 to i32
  %5672 = ashr i32 %5671, 1
  %5673 = add nsw i32 %5672, 532487669
  %5674 = bitcast i32 %5673 to float
  %5675 = fsub fast float 1.000000e+00, %5674
  %5676 = bitcast float %5675 to i32
  %5677 = sub nsw i32 2129859010, %5676
  %5678 = bitcast i32 %5677 to float
  %5679 = fmul fast float %5678, 2.000000e+00
  %5680 = bitcast float %5580 to i32
  %5681 = ashr i32 %5680, 1
  %5682 = add nsw i32 %5681, 532487669
  %5683 = bitcast i32 %5682 to float
  %5684 = fsub fast float 1.000000e+00, %5683
  %5685 = bitcast float %5684 to i32
  %5686 = sub nsw i32 2129859010, %5685
  %5687 = bitcast i32 %5686 to float
  %5688 = fmul fast float %5687, 2.000000e+00
  %5689 = fsub fast float 0x4002A9FBE0000000, %5670
  %5690 = fadd fast float %5670, 0x3FD54FDF00000000
  %5691 = bitcast float %5690 to i32
  %5692 = sub nsw i32 2129859010, %5691
  %5693 = bitcast i32 %5692 to float
  %5694 = fmul fast float %5693, %5689
  %5695 = fmul fast float %5694, %5694
  %5696 = fsub fast float 0x4002A9FBE0000000, %5679
  %5697 = fadd fast float %5679, 0x3FD54FDF00000000
  %5698 = bitcast float %5697 to i32
  %5699 = sub nsw i32 2129859010, %5698
  %5700 = bitcast i32 %5699 to float
  %5701 = fmul fast float %5700, %5696
  %5702 = fmul fast float %5701, %5701
  %5703 = fsub fast float 0x4002A9FBE0000000, %5688
  %5704 = fadd fast float %5688, 0x3FD54FDF00000000
  %5705 = bitcast float %5704 to i32
  %5706 = sub nsw i32 2129859010, %5705
  %5707 = bitcast i32 %5706 to float
  %5708 = fmul fast float %5707, %5703
  %5709 = fmul fast float %5708, %5708
  %5710 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5695)  ; FMax(a,b)
  %5711 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5702)  ; FMax(a,b)
  %5712 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5709)  ; FMax(a,b)
  %5713 = fsub fast float 1.000000e+00, %5599
  %5714 = fadd fast float %5713, %5614
  %5715 = call float @dx.op.unary.f32(i32 7, float %5714)  ; Saturate(value)
  %5716 = fsub fast float 1.000000e+00, %4974
  %5717 = fmul fast float %5656, %5716
  %5718 = fmul fast float %5659, %5659
  %5719 = fmul fast float %5718, %5717
  %5720 = fmul fast float %5719, %5661
  %5721 = fmul fast float %5716, 0xBFE99999A0000000
  %5722 = fmul fast float %5721, %5601
  %5723 = fmul fast float %5722, %5618
  %5724 = fadd fast float %5723, 1.000000e+00
  %5725 = fadd fast float %5587, -1.000000e+00
  %5726 = fmul fast float %5724, %5725
  %5727 = fadd fast float %5726, 1.000000e+00
  %5728 = fsub fast float %5710, %5578
  %5729 = fsub fast float %5711, %5579
  %5730 = fsub fast float %5712, %5580
  %5731 = fmul fast float %5720, %5728
  %5732 = fmul fast float %5720, %5729
  %5733 = fmul fast float %5720, %5730
  %5734 = fadd fast float %5731, %5578
  %5735 = fadd fast float %5732, %5579
  %5736 = fadd fast float %5733, %5580
  %5737 = fsub fast float %122, %5581
  %5738 = fsub fast float %123, %5582
  %5739 = fsub fast float %124, %5583
  %5740 = fmul fast float %5720, %5737
  %5741 = fmul fast float %5720, %5738
  %5742 = fmul fast float %5720, %5739
  %5743 = fadd fast float %5740, %5581
  %5744 = fadd fast float %5741, %5582
  %5745 = fadd fast float %5742, %5583
  %5746 = fmul fast float %5720, %5715
  %5747 = call float @dx.op.unary.f32(i32 7, float %5727)  ; Saturate(value)
  %5748 = fsub fast float 1.000000e+00, %5747
  %5749 = fmul fast float %5746, %5748
  %5750 = fadd fast float %5749, %5747
  %5751 = fsub fast float 1.000000e+00, %5588
  %5752 = fmul fast float %5720, %5751
  %5753 = fadd fast float %5752, %5588
  %5754 = call float @dx.op.dot3.f32(i32 55, float %5743, float %5744, float %5745, float %5743, float %5744, float %5745)  ; Dot3(ax,ay,az,bx,by,bz)
  %5755 = call float @dx.op.unary.f32(i32 25, float %5754)  ; Rsqrt(value)
  %5756 = fmul fast float %5743, %5755
  %5757 = fmul fast float %5744, %5755
  %5758 = fmul fast float %5745, %5755
  br label %5759

; <label>:5759                                    ; preds = %5590, %5574
  %5760 = phi float [ %5643, %5590 ], [ %5575, %5574 ]
  %5761 = phi float [ %5644, %5590 ], [ %5576, %5574 ]
  %5762 = phi float [ %5645, %5590 ], [ %5577, %5574 ]
  %5763 = phi float [ %5734, %5590 ], [ %5578, %5574 ]
  %5764 = phi float [ %5735, %5590 ], [ %5579, %5574 ]
  %5765 = phi float [ %5736, %5590 ], [ %5580, %5574 ]
  %5766 = phi float [ %5756, %5590 ], [ %5581, %5574 ]
  %5767 = phi float [ %5757, %5590 ], [ %5582, %5574 ]
  %5768 = phi float [ %5758, %5590 ], [ %5583, %5574 ]
  %5769 = phi float [ %5750, %5590 ], [ %5587, %5574 ]
  %5770 = phi float [ %5753, %5590 ], [ %5588, %5574 ]
  %5771 = icmp eq i32 %60, 0
  br i1 %5771, label %5802, label %5772

; <label>:5772                                    ; preds = %5759
  %5773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5774 = extractvalue %dx.types.CBufRet.f32 %5773, 2
  %5775 = extractvalue %dx.types.CBufRet.f32 %5773, 3
  %5776 = fmul fast float %5774, %115
  %5777 = fmul fast float %5775, %116
  %5778 = fmul fast float %5776, 1.024000e+03
  %5779 = fmul fast float %5777, 1.024000e+03
  %5780 = fadd fast float %5778, -5.120000e+02
  %5781 = fadd fast float %5779, -5.120000e+02
  %5782 = fmul fast float %5776, 0x4081BEDF00000000
  %5783 = fadd fast float %5782, 0xC071BEDF00000000
  %5784 = call float @dx.op.unary.f32(i32 22, float %5783)  ; Frc(value)
  %5785 = fmul fast float %5780, %5784
  %5786 = fadd fast float %5785, %5781
  %5787 = fmul fast float %5777, 0x4073BEBE20000000
  %5788 = fadd fast float %5787, 0xC063BEBE20000000
  %5789 = call float @dx.op.unary.f32(i32 22, float %5788)  ; Frc(value)
  %5790 = fmul fast float %5781, %5789
  %5791 = fadd fast float %5790, %5780
  %5792 = fmul fast float %5786, %5791
  %5793 = call float @dx.op.unary.f32(i32 22, float %5792)  ; Frc(value)
  %5794 = add i32 %323, 12
  %5795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5794, i32 undef)  ; BufferLoad(srv,index,wot)
  %5796 = extractvalue %dx.types.ResRet.i32 %5795, 0
  %5797 = and i32 %5796, 255
  %5798 = uitofp i32 %5797 to float
  %5799 = fmul fast float %5798, 0x3F70101020000000
  %5800 = fcmp fast olt float %5793, %5799
  br i1 %5800, label %5801, label %5802

; <label>:5801                                    ; preds = %5772
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5802

; <label>:5802                                    ; preds = %5801, %5772, %5759
  %5803 = fsub fast float -0.000000e+00, %196
  %5804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5805 = extractvalue %dx.types.CBufRet.f32 %5804, 2
  %5806 = extractvalue %dx.types.CBufRet.f32 %5804, 3
  %5807 = fmul fast float %143, %5805
  %5808 = fmul fast float %145, %5806
  %5809 = fsub fast float 1.000000e+00, %5807
  %5810 = fsub fast float 1.000000e+00, %5808
  %5811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5812 = extractvalue %dx.types.CBufRet.f32 %5811, 0
  %5813 = extractvalue %dx.types.CBufRet.f32 %5811, 1
  %5814 = extractvalue %dx.types.CBufRet.f32 %5811, 2
  %5815 = fmul fast float %5809, %5812
  %5816 = fmul fast float %5809, %5813
  %5817 = fmul fast float %5809, %5814
  %5818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5819 = extractvalue %dx.types.CBufRet.f32 %5818, 0
  %5820 = extractvalue %dx.types.CBufRet.f32 %5818, 1
  %5821 = extractvalue %dx.types.CBufRet.f32 %5818, 2
  %5822 = fmul fast float %5810, %5819
  %5823 = fmul fast float %5810, %5820
  %5824 = fmul fast float %5810, %5821
  %5825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5826 = extractvalue %dx.types.CBufRet.f32 %5825, 0
  %5827 = extractvalue %dx.types.CBufRet.f32 %5825, 1
  %5828 = extractvalue %dx.types.CBufRet.f32 %5825, 2
  %5829 = fadd fast float %5822, %5826
  %5830 = fadd fast float %5829, %5815
  %5831 = fadd fast float %5823, %5827
  %5832 = fadd fast float %5831, %5816
  %5833 = fadd fast float %5824, %5828
  %5834 = fadd fast float %5833, %5817
  %5835 = fmul fast float %5830, %106
  %5836 = fmul fast float %5832, %106
  %5837 = fmul fast float %5834, %106
  %5838 = call float @dx.op.dot3.f32(i32 55, float %194, float %195, float %196, float %194, float %195, float %196)  ; Dot3(ax,ay,az,bx,by,bz)
  %5839 = call float @dx.op.unary.f32(i32 25, float %5838)  ; Rsqrt(value)
  %5840 = fmul fast float %5839, %194
  %5841 = fmul fast float %5839, %195
  %5842 = fmul fast float %5839, %196
  %5843 = fsub fast float -0.000000e+00, %5840
  %5844 = fsub fast float -0.000000e+00, %5841
  %5845 = fsub fast float -0.000000e+00, %5842
  %5846 = select i1 %266, float 0.000000e+00, float %5765
  %5847 = call float @dx.op.dot3.f32(i32 55, float %5766, float %5767, float %5768, float %5843, float %5844, float %5845)  ; Dot3(ax,ay,az,bx,by,bz)
  %5848 = call float @dx.op.unary.f32(i32 7, float %5847)  ; Saturate(value)
  %5849 = call float @dx.op.dot3.f32(i32 55, float %5840, float %5841, float %5842, float %5766, float %5767, float %5768)  ; Dot3(ax,ay,az,bx,by,bz)
  %5850 = fmul fast float %5849, 2.000000e+00
  %5851 = fmul fast float %5850, %5766
  %5852 = fmul fast float %5850, %5767
  %5853 = fmul fast float %5850, %5768
  %5854 = fsub fast float %5840, %5851
  %5855 = fsub fast float %5841, %5852
  %5856 = fsub fast float %5842, %5853
  %5857 = call float @dx.op.binary.f32(i32 36, float %5770, float 1.000000e+00)  ; FMin(a,b)
  %5858 = fsub fast float 1.000000e+00, %5770
  %5859 = bitcast float %5858 to i32
  %5860 = sub nsw i32 2129859010, %5859
  %5861 = bitcast i32 %5860 to float
  %5862 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %86)  ; FMax(a,b)
  %5863 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %5864 = fcmp fast oeq float %5863, 0.000000e+00
  %5865 = fcmp fast oeq float %5862, 0.000000e+00
  %5866 = or i1 %5865, %5864
  br i1 %5866, label %5896, label %5867

; <label>:5867                                    ; preds = %5802
  %5868 = fsub fast float -0.000000e+00, %89
  %5869 = fsub fast float -0.000000e+00, %87
  %5870 = call float @dx.op.unary.f32(i32 24, float %5863)  ; Sqrt(value)
  %5871 = fdiv fast float %5870, %5862
  %5872 = fcmp fast ogt float %5871, 0x3FFB6F8900000000
  %5873 = select i1 %5872, float 0x3FFB6F8900000000, float %5871
  %5874 = fmul fast float %5873, 0x3FE8A23460000000
  %5875 = call float @dx.op.unary.f32(i32 7, float %5874)  ; Saturate(value)
  %5876 = call float @dx.op.binary.f32(i32 35, float %5873, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5877 = fmul fast float %5875, %5862
  %5878 = fmul fast float %5876, 0x3FF279A740000000
  %5879 = fadd fast float %5878, -1.000000e+00
  %5880 = call float @dx.op.dot3.f32(i32 55, float %5868, float %5869, float %88, float %5868, float %5869, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %5881 = call float @dx.op.unary.f32(i32 25, float %5880)  ; Rsqrt(value)
  %5882 = fmul fast float %5881, %5868
  %5883 = fmul fast float %5881, %5869
  %5884 = fmul fast float %5881, %88
  %5885 = fmul fast float %5879, %5879
  %5886 = fsub fast float 1.000000e+00, %5885
  %5887 = fmul fast float %5876, 0x40005F8BE0000000
  %5888 = fsub fast float 0x400C5BF8A0000000, %5887
  %5889 = fdiv fast float %5877, %5888
  %5890 = fmul fast float %5889, 0x3FEE31C3C0000000
  %5891 = fmul fast float %5890, %5886
  %5892 = fmul fast float %5876, 0x3FDACB7480000000
  %5893 = fadd fast float %5892, 0xBFD7347680000000
  %5894 = fmul fast float %5893, %5889
  %5895 = fmul fast float %5894, %5886
  br label %5896

; <label>:5896                                    ; preds = %5867, %5802
  %5897 = phi float [ %5882, %5867 ], [ 0.000000e+00, %5802 ]
  %5898 = phi float [ %5883, %5867 ], [ 0.000000e+00, %5802 ]
  %5899 = phi float [ %5884, %5867 ], [ 0.000000e+00, %5802 ]
  %5900 = phi float [ %5891, %5867 ], [ 0.000000e+00, %5802 ]
  %5901 = phi float [ %5895, %5867 ], [ 0.000000e+00, %5802 ]
  %5902 = call float @dx.op.dot3.f32(i32 55, float %5897, float %5898, float %5899, float %5766, float %5767, float %5768)  ; Dot3(ax,ay,az,bx,by,bz)
  %5903 = fmul fast float %5902, %5902
  %5904 = fmul fast float %5903, 0x3FEE471020000000
  %5905 = fadd fast float %5904, 0xBFD42F6020000000
  %5906 = fmul fast float %5862, 0x3FD20DD760000000
  %5907 = fmul fast float %5905, %5901
  %5908 = fmul fast float %5900, 0x3FDF454380000000
  %5909 = fmul fast float %5908, %5902
  %5910 = fadd fast float %5909, %5906
  %5911 = fadd fast float %5910, %5907
  %5912 = call float @dx.op.dot3.f32(i32 55, float %5897, float %5898, float %5899, float %5854, float %5855, float %5856)  ; Dot3(ax,ay,az,bx,by,bz)
  %5913 = fmul fast float %5912, 0x3FDF454380000000
  %5914 = fmul fast float %5912, %5912
  %5915 = fmul fast float %5914, 0x3FEE471020000000
  %5916 = fadd fast float %5915, 0xBFD42F6020000000
  %5917 = call float @dx.op.dot3.f32(i32 55, float %5862, float %5900, float %5901, float 0x3FD20DD760000000, float %5913, float %5916)  ; Dot3(ax,ay,az,bx,by,bz)
  %5918 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %82)  ; FMax(a,b)
  %5919 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5920 = fcmp fast oeq float %5919, 0.000000e+00
  %5921 = fcmp fast oeq float %5918, 0.000000e+00
  %5922 = or i1 %5921, %5920
  br i1 %5922, label %5952, label %5923

; <label>:5923                                    ; preds = %5896
  %5924 = fsub fast float -0.000000e+00, %85
  %5925 = fsub fast float -0.000000e+00, %83
  %5926 = call float @dx.op.unary.f32(i32 24, float %5919)  ; Sqrt(value)
  %5927 = fdiv fast float %5926, %5918
  %5928 = fcmp fast ogt float %5927, 0x3FFB6F8900000000
  %5929 = select i1 %5928, float 0x3FFB6F8900000000, float %5927
  %5930 = fmul fast float %5929, 0x3FE8A23460000000
  %5931 = call float @dx.op.unary.f32(i32 7, float %5930)  ; Saturate(value)
  %5932 = call float @dx.op.binary.f32(i32 35, float %5929, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5933 = fmul fast float %5931, %5918
  %5934 = fmul fast float %5932, 0x3FF279A740000000
  %5935 = fadd fast float %5934, -1.000000e+00
  %5936 = call float @dx.op.dot3.f32(i32 55, float %5924, float %5925, float %84, float %5924, float %5925, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %5937 = call float @dx.op.unary.f32(i32 25, float %5936)  ; Rsqrt(value)
  %5938 = fmul fast float %5937, %5924
  %5939 = fmul fast float %5937, %5925
  %5940 = fmul fast float %5937, %84
  %5941 = fmul fast float %5935, %5935
  %5942 = fsub fast float 1.000000e+00, %5941
  %5943 = fmul fast float %5932, 0x40005F8BE0000000
  %5944 = fsub fast float 0x400C5BF8A0000000, %5943
  %5945 = fdiv fast float %5933, %5944
  %5946 = fmul fast float %5945, 0x3FEE31C3C0000000
  %5947 = fmul fast float %5946, %5942
  %5948 = fmul fast float %5932, 0x3FDACB7480000000
  %5949 = fadd fast float %5948, 0xBFD7347680000000
  %5950 = fmul fast float %5949, %5945
  %5951 = fmul fast float %5950, %5942
  br label %5952

; <label>:5952                                    ; preds = %5923, %5896
  %5953 = phi float [ %5938, %5923 ], [ 0.000000e+00, %5896 ]
  %5954 = phi float [ %5939, %5923 ], [ 0.000000e+00, %5896 ]
  %5955 = phi float [ %5940, %5923 ], [ 0.000000e+00, %5896 ]
  %5956 = phi float [ %5947, %5923 ], [ 0.000000e+00, %5896 ]
  %5957 = phi float [ %5951, %5923 ], [ 0.000000e+00, %5896 ]
  %5958 = call float @dx.op.dot3.f32(i32 55, float %5953, float %5954, float %5955, float %5766, float %5767, float %5768)  ; Dot3(ax,ay,az,bx,by,bz)
  %5959 = fmul fast float %5958, %5958
  %5960 = fmul fast float %5959, 0x3FEE471020000000
  %5961 = fadd fast float %5960, 0xBFD42F6020000000
  %5962 = fmul fast float %5918, 0x3FD20DD760000000
  %5963 = fmul fast float %5961, %5957
  %5964 = fmul fast float %5956, 0x3FDF454380000000
  %5965 = fmul fast float %5964, %5958
  %5966 = fadd fast float %5965, %5962
  %5967 = fadd fast float %5966, %5963
  %5968 = call float @dx.op.dot3.f32(i32 55, float %5953, float %5954, float %5955, float %5854, float %5855, float %5856)  ; Dot3(ax,ay,az,bx,by,bz)
  %5969 = fmul fast float %5968, 0x3FDF454380000000
  %5970 = fmul fast float %5968, %5968
  %5971 = fmul fast float %5970, 0x3FEE471020000000
  %5972 = fadd fast float %5971, 0xBFD42F6020000000
  %5973 = call float @dx.op.dot3.f32(i32 55, float %5918, float %5956, float %5957, float 0x3FD20DD760000000, float %5969, float %5972)  ; Dot3(ax,ay,az,bx,by,bz)
  %5974 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %5975 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5976 = fcmp fast oeq float %5975, 0.000000e+00
  %5977 = fcmp fast oeq float %5974, 0.000000e+00
  %5978 = or i1 %5977, %5976
  br i1 %5978, label %6008, label %5979

; <label>:5979                                    ; preds = %5952
  %5980 = fsub fast float -0.000000e+00, %81
  %5981 = fsub fast float -0.000000e+00, %79
  %5982 = call float @dx.op.unary.f32(i32 24, float %5975)  ; Sqrt(value)
  %5983 = fdiv fast float %5982, %5974
  %5984 = fcmp fast ogt float %5983, 0x3FFB6F8900000000
  %5985 = select i1 %5984, float 0x3FFB6F8900000000, float %5983
  %5986 = fmul fast float %5985, 0x3FE8A23460000000
  %5987 = call float @dx.op.unary.f32(i32 7, float %5986)  ; Saturate(value)
  %5988 = call float @dx.op.binary.f32(i32 35, float %5985, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5989 = fmul fast float %5987, %5974
  %5990 = fmul fast float %5988, 0x3FF279A740000000
  %5991 = fadd fast float %5990, -1.000000e+00
  %5992 = call float @dx.op.dot3.f32(i32 55, float %5980, float %5981, float %80, float %5980, float %5981, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5993 = call float @dx.op.unary.f32(i32 25, float %5992)  ; Rsqrt(value)
  %5994 = fmul fast float %5993, %5980
  %5995 = fmul fast float %5993, %5981
  %5996 = fmul fast float %5993, %80
  %5997 = fmul fast float %5991, %5991
  %5998 = fsub fast float 1.000000e+00, %5997
  %5999 = fmul fast float %5988, 0x40005F8BE0000000
  %6000 = fsub fast float 0x400C5BF8A0000000, %5999
  %6001 = fdiv fast float %5989, %6000
  %6002 = fmul fast float %6001, 0x3FEE31C3C0000000
  %6003 = fmul fast float %6002, %5998
  %6004 = fmul fast float %5988, 0x3FDACB7480000000
  %6005 = fadd fast float %6004, 0xBFD7347680000000
  %6006 = fmul fast float %6005, %6001
  %6007 = fmul fast float %6006, %5998
  br label %6008

; <label>:6008                                    ; preds = %5979, %5952
  %6009 = phi float [ %5994, %5979 ], [ 0.000000e+00, %5952 ]
  %6010 = phi float [ %5995, %5979 ], [ 0.000000e+00, %5952 ]
  %6011 = phi float [ %5996, %5979 ], [ 0.000000e+00, %5952 ]
  %6012 = phi float [ %6003, %5979 ], [ 0.000000e+00, %5952 ]
  %6013 = phi float [ %6007, %5979 ], [ 0.000000e+00, %5952 ]
  %6014 = call float @dx.op.dot3.f32(i32 55, float %6009, float %6010, float %6011, float %5766, float %5767, float %5768)  ; Dot3(ax,ay,az,bx,by,bz)
  %6015 = fmul fast float %6014, %6014
  %6016 = fmul fast float %6015, 0x3FEE471020000000
  %6017 = fadd fast float %6016, 0xBFD42F6020000000
  %6018 = fmul fast float %5974, 0x3FD20DD760000000
  %6019 = fmul fast float %6017, %6013
  %6020 = fmul fast float %6012, 0x3FDF454380000000
  %6021 = fmul fast float %6020, %6014
  %6022 = fadd fast float %6021, %6018
  %6023 = fadd fast float %6022, %6019
  %6024 = call float @dx.op.dot3.f32(i32 55, float %6009, float %6010, float %6011, float %5854, float %5855, float %5856)  ; Dot3(ax,ay,az,bx,by,bz)
  %6025 = fmul fast float %6024, 0x3FDF454380000000
  %6026 = fmul fast float %6024, %6024
  %6027 = fmul fast float %6026, 0x3FEE471020000000
  %6028 = fadd fast float %6027, 0xBFD42F6020000000
  %6029 = call float @dx.op.dot3.f32(i32 55, float %5974, float %6012, float %6013, float 0x3FD20DD760000000, float %6025, float %6028)  ; Dot3(ax,ay,az,bx,by,bz)
  %6030 = call float @dx.op.binary.f32(i32 35, float %5911, float 0.000000e+00)  ; FMax(a,b)
  %6031 = call float @dx.op.binary.f32(i32 35, float %5967, float 0.000000e+00)  ; FMax(a,b)
  %6032 = call float @dx.op.binary.f32(i32 35, float %6023, float 0.000000e+00)  ; FMax(a,b)
  %6033 = call float @dx.op.binary.f32(i32 35, float %5917, float 0.000000e+00)  ; FMax(a,b)
  %6034 = call float @dx.op.binary.f32(i32 35, float %5973, float 0.000000e+00)  ; FMax(a,b)
  %6035 = call float @dx.op.binary.f32(i32 35, float %6029, float 0.000000e+00)  ; FMax(a,b)
  %6036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6037 = extractvalue %dx.types.CBufRet.f32 %6036, 0
  %6038 = call float @dx.op.binary.f32(i32 36, float %5760, float %6037)  ; FMin(a,b)
  %6039 = fsub fast float 1.000000e+00, %5857
  %6040 = fmul fast float %6038, %6039
  %6041 = fsub fast float 1.000000e+00, %6040
  %6042 = bitcast float %6041 to i32
  %6043 = sub nsw i32 2129859010, %6042
  %6044 = bitcast i32 %6043 to float
  %6045 = call float @dx.op.binary.f32(i32 36, float %5761, float %6037)  ; FMin(a,b)
  %6046 = fmul fast float %6045, %6039
  %6047 = fsub fast float 1.000000e+00, %6046
  %6048 = bitcast float %6047 to i32
  %6049 = sub nsw i32 2129859010, %6048
  %6050 = bitcast i32 %6049 to float
  %6051 = call float @dx.op.binary.f32(i32 36, float %5762, float %6037)  ; FMin(a,b)
  %6052 = fmul fast float %6051, %6039
  %6053 = fsub fast float 1.000000e+00, %6052
  %6054 = bitcast float %6053 to i32
  %6055 = sub nsw i32 2129859010, %6054
  %6056 = bitcast i32 %6055 to float
  %6057 = fmul fast float %6030, %5857
  %6058 = fmul fast float %6057, %6044
  %6059 = fmul fast float %6031, %5857
  %6060 = fmul fast float %6059, %6050
  %6061 = fmul fast float %6032, %5857
  %6062 = fmul fast float %6061, %6056
  %6063 = call float @dx.op.binary.f32(i32 36, float %5763, float %6037)  ; FMin(a,b)
  %6064 = fmul fast float %6063, %6039
  %6065 = fsub fast float 1.000000e+00, %6064
  %6066 = bitcast float %6065 to i32
  %6067 = sub nsw i32 2129859010, %6066
  %6068 = bitcast i32 %6067 to float
  %6069 = call float @dx.op.binary.f32(i32 36, float %5764, float %6037)  ; FMin(a,b)
  %6070 = fmul fast float %6069, %6039
  %6071 = fsub fast float 1.000000e+00, %6070
  %6072 = bitcast float %6071 to i32
  %6073 = sub nsw i32 2129859010, %6072
  %6074 = bitcast i32 %6073 to float
  %6075 = call float @dx.op.binary.f32(i32 36, float %5846, float %6037)  ; FMin(a,b)
  %6076 = fmul fast float %6075, %6039
  %6077 = fsub fast float 1.000000e+00, %6076
  %6078 = bitcast float %6077 to i32
  %6079 = sub nsw i32 2129859010, %6078
  %6080 = bitcast i32 %6079 to float
  %6081 = fmul fast float %6033, %5857
  %6082 = fmul fast float %6081, %6068
  %6083 = fmul fast float %6034, %5857
  %6084 = fmul fast float %6083, %6074
  %6085 = fmul fast float %6035, %5857
  %6086 = fmul fast float %6085, %6080
  %6087 = call float @dx.op.dot3.f32(i32 55, float %6058, float %6060, float %6062, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6088 = select i1 %266, float 0.000000e+00, float %6058
  %6089 = select i1 %266, float %6087, float %6060
  %6090 = select i1 %266, float 0.000000e+00, float %6062
  %6091 = call float @dx.op.dot3.f32(i32 55, float %6082, float %6084, float %6086, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6092 = select i1 %266, float 0.000000e+00, float %6082
  %6093 = select i1 %266, float %6091, float %6084
  %6094 = select i1 %266, float 0.000000e+00, float %6086
  %6095 = fmul fast float %5848, 9.843750e-01
  %6096 = fmul fast float %5769, 9.843750e-01
  %6097 = fadd fast float %6095, 7.812500e-03
  %6098 = fadd fast float %6096, 7.812500e-03
  %6099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %52, float %6097, float %6098, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6100 = extractvalue %dx.types.ResRet.f32 %6099, 2
  %6101 = extractvalue %dx.types.ResRet.f32 %6099, 3
  %6102 = fmul fast float %6100, %5763
  %6103 = fmul fast float %6100, %5764
  %6104 = fmul fast float %6100, %5846
  %6105 = fadd fast float %6102, %6101
  %6106 = fadd fast float %6103, %6101
  %6107 = fadd fast float %6104, %6101
  %6108 = fcmp fast ogt float %4489, 0.000000e+00
  br i1 %6108, label %6109, label %6135

; <label>:6109                                    ; preds = %6008
  %6110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %52, float %4489, float %5848, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6111 = extractvalue %dx.types.ResRet.f32 %6110, 0
  %6112 = extractvalue %dx.types.ResRet.f32 %6110, 1
  %6113 = extractvalue %dx.types.ResRet.f32 %6110, 2
  %6114 = fadd fast float %6111, -5.000000e-01
  %6115 = fadd fast float %6112, -5.000000e-01
  %6116 = fadd fast float %6113, -5.000000e-01
  %6117 = fsub fast float 1.000000e+00, %5763
  %6118 = fsub fast float 1.000000e+00, %5764
  %6119 = fsub fast float 1.000000e+00, %5846
  %6120 = fmul fast float %5763, 4.000000e+00
  %6121 = fmul fast float %6120, %6117
  %6122 = fmul fast float %6121, %6114
  %6123 = fmul fast float %5764, 4.000000e+00
  %6124 = fmul fast float %6123, %6118
  %6125 = fmul fast float %6124, %6115
  %6126 = fmul fast float %5846, 4.000000e+00
  %6127 = fmul fast float %6126, %6119
  %6128 = fmul fast float %6127, %6116
  %6129 = fadd fast float %6122, %6105
  %6130 = fadd fast float %6125, %6106
  %6131 = fadd fast float %6128, %6107
  %6132 = call float @dx.op.unary.f32(i32 7, float %6129)  ; Saturate(value)
  %6133 = call float @dx.op.unary.f32(i32 7, float %6130)  ; Saturate(value)
  %6134 = call float @dx.op.unary.f32(i32 7, float %6131)  ; Saturate(value)
  br label %6135

; <label>:6135                                    ; preds = %6109, %6008
  %6136 = phi float [ %6132, %6109 ], [ %6105, %6008 ]
  %6137 = phi float [ %6133, %6109 ], [ %6106, %6008 ]
  %6138 = phi float [ %6134, %6109 ], [ %6107, %6008 ]
  %6139 = call float @dx.op.binary.f32(i32 35, float %6137, float %6138)  ; FMax(a,b)
  %6140 = call float @dx.op.binary.f32(i32 35, float %6136, float %6139)  ; FMax(a,b)
  %6141 = fsub fast float 1.000000e+00, %6140
  %6142 = fmul fast float %6141, %6088
  %6143 = fmul fast float %6141, %6089
  %6144 = fmul fast float %6141, %6090
  %6145 = call float @dx.op.dot3.f32(i32 55, float %5760, float %5761, float %5762, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6146 = fcmp fast ogt float %6145, 0x3E7FF19E20000000
  %6147 = fdiv fast float 1.000000e+00, %6145
  %6148 = select i1 %6146, float %6147, float 0.000000e+00
  %6149 = fmul fast float %6148, %5760
  %6150 = fmul fast float %6148, %5761
  %6151 = fmul fast float %6148, %5762
  %6152 = fadd fast float %6149, -1.000000e+00
  %6153 = fadd fast float %6150, -1.000000e+00
  %6154 = fadd fast float %6151, -1.000000e+00
  %6155 = fmul fast float %6152, 5.000000e-01
  %6156 = fmul fast float %6153, 5.000000e-01
  %6157 = fmul fast float %6154, 5.000000e-01
  %6158 = fadd fast float %6155, 1.000000e+00
  %6159 = fadd fast float %6156, 1.000000e+00
  %6160 = fadd fast float %6157, 1.000000e+00
  %6161 = fmul fast float %6141, %4580
  %6162 = fmul fast float %6141, %4581
  %6163 = fmul fast float %6141, %4582
  %6164 = fadd fast float %6161, -1.000000e+00
  %6165 = fadd fast float %6162, -1.000000e+00
  %6166 = fadd fast float %6163, -1.000000e+00
  %6167 = fmul fast float %6164, %4486
  %6168 = fmul fast float %6165, %4486
  %6169 = fmul fast float %6166, %4486
  %6170 = fadd fast float %6167, 1.000000e+00
  %6171 = fadd fast float %6168, 1.000000e+00
  %6172 = fadd fast float %6169, 1.000000e+00
  %6173 = fmul fast float %5764, 0x401CF23780000000
  %6174 = fadd fast float %6173, 0x3FF32641C0000000
  %6175 = fdiv fast float 1.000000e+00, %6174
  %6176 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5844, float %5845, float %5766, float %5767, float %5768)  ; Dot3(ax,ay,az,bx,by,bz)
  %6177 = fmul fast float %6175, %6175
  %6178 = fmul fast float %6176, %6176
  %6179 = fsub fast float 1.000000e+00, %6178
  %6180 = fmul fast float %6177, %6179
  %6181 = fsub fast float 1.000000e+00, %6180
  %6182 = fcmp fast oge float %6181, 0.000000e+00
  %6183 = fmul fast float %6175, %5843
  %6184 = fmul fast float %6175, %5844
  %6185 = fmul fast float %6175, %5845
  %6186 = call float @dx.op.unary.f32(i32 24, float %6181)  ; Sqrt(value)
  %6187 = fmul fast float %6176, %6175
  %6188 = fadd fast float %6187, %6186
  %6189 = fmul fast float %6188, %5766
  %6190 = fmul fast float %6188, %5767
  %6191 = fmul fast float %6188, %5768
  %6192 = fsub fast float %6183, %6189
  %6193 = fsub fast float %6184, %6190
  %6194 = fsub fast float %6185, %6191
  %6195 = select i1 %6182, float %6192, float 0.000000e+00
  %6196 = select i1 %6182, float %6193, float 0.000000e+00
  %6197 = select i1 %6182, float %6194, float 0.000000e+00
  %6198 = fmul fast float %6195, %3809
  %6199 = fmul fast float %6196, %3809
  %6200 = fmul fast float %6197, %3809
  %6201 = fadd fast float %6198, %5835
  %6202 = fadd fast float %6199, %5836
  %6203 = fadd fast float %6200, %5837
  %6204 = call float @dx.op.dot3.f32(i32 55, float %5584, float %5585, float %5586, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6205 = fsub fast float 1.000000e+00, %5769
  %6206 = fmul fast float %6205, %4486
  %6207 = fsub fast float 1.000000e+00, %6206
  %6208 = call float @dx.op.unary.f32(i32 7, float %6207)  ; Saturate(value)
  %6209 = fsub fast float 1.000000e+00, %6208
  %6210 = fmul fast float %5764, 0x4012D0A400000000
  %6211 = fadd fast float %6210, 0x3FDB6377A0000000
  %6212 = fmul fast float %6209, %6211
  %6213 = fadd fast float %6212, %6204
  %6214 = call float @dx.op.unary.f32(i32 7, float %6213)  ; Saturate(value)
  %6215 = fmul fast float %6136, %6092
  %6216 = fmul fast float %6137, %6093
  %6217 = fmul fast float %6138, %6094
  %6218 = fsub fast float 1.000000e+00, %5848
  %6219 = bitcast float %6218 to i32
  %6220 = sitofp i32 %6219 to float
  %6221 = fmul fast float %6220, 5.000000e+00
  %6222 = fadd fast float %6221, 0xC1EFBF8940000000
  %6223 = fptosi float %6222 to i32
  %6224 = bitcast i32 %6223 to float
  %6225 = fmul fast float %6224, %4490
  %6226 = fmul fast float %6088, %6225
  %6227 = fmul fast float %6226, %6141
  %6228 = fmul fast float %6227, %6158
  %6229 = fmul fast float %6089, %6225
  %6230 = fmul fast float %6229, %6141
  %6231 = fmul fast float %6230, %6159
  %6232 = fmul fast float %6090, %6225
  %6233 = fmul fast float %6232, %6141
  %6234 = fmul fast float %6233, %6160
  %6235 = fmul fast float %6142, %4486
  %6236 = fmul fast float %6143, %4486
  %6237 = fmul fast float %6144, %4486
  %6238 = fsub fast float 1.000000e+00, %6214
  %6239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6240 = extractvalue %dx.types.CBufRet.f32 %6239, 0
  %6241 = extractvalue %dx.types.CBufRet.f32 %6239, 1
  %6242 = extractvalue %dx.types.CBufRet.f32 %6239, 2
  %6243 = extractvalue %dx.types.CBufRet.f32 %6239, 3
  %6244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6245 = extractvalue %dx.types.CBufRet.f32 %6244, 0
  %6246 = extractvalue %dx.types.CBufRet.f32 %6244, 1
  %6247 = extractvalue %dx.types.CBufRet.f32 %6244, 2
  %6248 = extractvalue %dx.types.CBufRet.f32 %6244, 3
  %6249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6250 = extractvalue %dx.types.CBufRet.f32 %6249, 0
  %6251 = extractvalue %dx.types.CBufRet.f32 %6249, 1
  %6252 = extractvalue %dx.types.CBufRet.f32 %6249, 2
  %6253 = extractvalue %dx.types.CBufRet.f32 %6249, 3
  %6254 = fmul fast float %6201, %6240
  %6255 = call float @dx.op.tertiary.f32(i32 46, float %6202, float %6241, float %6254)  ; FMad(a,b,c)
  %6256 = call float @dx.op.tertiary.f32(i32 46, float %6203, float %6242, float %6255)  ; FMad(a,b,c)
  %6257 = fadd fast float %6256, %6243
  %6258 = fmul fast float %6201, %6245
  %6259 = call float @dx.op.tertiary.f32(i32 46, float %6202, float %6246, float %6258)  ; FMad(a,b,c)
  %6260 = call float @dx.op.tertiary.f32(i32 46, float %6203, float %6247, float %6259)  ; FMad(a,b,c)
  %6261 = fadd fast float %6260, %6248
  %6262 = fmul fast float %6201, %6250
  %6263 = call float @dx.op.tertiary.f32(i32 46, float %6202, float %6251, float %6262)  ; FMad(a,b,c)
  %6264 = call float @dx.op.tertiary.f32(i32 46, float %6203, float %6252, float %6263)  ; FMad(a,b,c)
  %6265 = fadd fast float %6264, %6253
  %6266 = fdiv fast float %6257, %6265
  %6267 = fdiv fast float %6261, %6265
  %6268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6269 = extractvalue %dx.types.CBufRet.f32 %6268, 0
  %6270 = extractvalue %dx.types.CBufRet.f32 %6268, 1
  %6271 = fmul fast float %6269, %6266
  %6272 = fmul fast float %6270, %6267
  %6273 = extractvalue %dx.types.CBufRet.f32 %6268, 2
  %6274 = extractvalue %dx.types.CBufRet.f32 %6268, 3
  %6275 = fadd fast float %6271, %6273
  %6276 = fadd fast float %6272, %6274
  %6277 = call float @dx.op.unary.f32(i32 7, float %6275)  ; Saturate(value)
  %6278 = call float @dx.op.unary.f32(i32 7, float %6276)  ; Saturate(value)
  %6279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6280 = extractvalue %dx.types.CBufRet.f32 %6279, 0
  %6281 = extractvalue %dx.types.CBufRet.f32 %6279, 1
  %6282 = fmul fast float %6280, %6277
  %6283 = fmul fast float %6281, %6278
  %6284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6285 = extractvalue %dx.types.CBufRet.f32 %6284, 1
  %6286 = extractvalue %dx.types.CBufRet.f32 %6284, 2
  %6287 = fsub fast float %6285, %6286
  %6288 = fmul fast float %6287, %6238
  %6289 = fadd fast float %6288, %6286
  %6290 = fmul fast float %279, 2.000000e+00
  %6291 = fmul fast float %280, 2.000000e+00
  %6292 = fadd fast float %6290, -1.000000e+00
  %6293 = fadd fast float %6291, -1.000000e+00
  %6294 = fmul fast float %6289, %6292
  %6295 = fmul fast float %6289, %6293
  %6296 = fadd fast float %6294, %6282
  %6297 = fadd fast float %6295, %6283
  %6298 = extractvalue %dx.types.CBufRet.f32 %6279, 2
  %6299 = extractvalue %dx.types.CBufRet.f32 %6279, 3
  %6300 = fmul fast float %6296, %6298
  %6301 = fmul fast float %6297, %6299
  %6302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %53, float %6300, float %6301, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6303 = extractvalue %dx.types.ResRet.f32 %6302, 0
  %6304 = fcmp fast ogt float %6303, -1.000000e+00
  %6305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6306 = extractvalue %dx.types.CBufRet.f32 %6305, 1
  %6307 = select i1 %6304, float %6306, float 1.000000e+00
  %6308 = fadd fast float %6303, 1.000000e+00
  %6309 = fmul fast float %6307, %6308
  %6310 = call float @dx.op.unary.f32(i32 6, float %6309)  ; FAbs(value)
  %6311 = fsub fast float %6310, %6265
  %6312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6313 = extractvalue %dx.types.CBufRet.f32 %6312, 2
  %6314 = fmul fast float %6313, %6310
  %6315 = fdiv fast float 1.600000e+02, %6314
  %6316 = fmul fast float %6214, %6214
  %6317 = fmul fast float %6316, 0xBFB5B17960000000
  %6318 = fmul fast float %6317, %6311
  %6319 = fmul fast float %6318, %6315
  %6320 = call float @dx.op.unary.f32(i32 21, float %6319)  ; Exp(value)
  %6321 = fmul fast float %6320, 0x3FF04B2960000000
  %6322 = fsub fast float 0x3FF04B2960000000, %6321
  %6323 = call float @dx.op.unary.f32(i32 7, float %6322)  ; Saturate(value)
  %6324 = fmul fast float %6323, 4.000000e+00
  %6325 = fadd fast float %279, -5.000000e-01
  %6326 = fadd fast float %280, -5.000000e-01
  %6327 = fmul fast float %6323, 0x3FBEB851E0000000
  %6328 = call float @dx.op.unary.f32(i32 7, float %6327)  ; Saturate(value)
  %6329 = fmul fast float %6328, %6325
  %6330 = fmul fast float %6328, %6326
  %6331 = fadd fast float %6329, %6275
  %6332 = fadd fast float %6330, %6276
  %6333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6334 = extractvalue %dx.types.CBufRet.i32 %6333, 0
  %6335 = icmp eq i32 %6334, 0
  br i1 %6335, label %6341, label %6336, !dx.controlflow.hints !102

; <label>:6336                                    ; preds = %6135
  %6337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %48, float %6331, float %6332, float undef, float undef, i32 0, i32 0, i32 undef, float %6324)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6338 = extractvalue %dx.types.ResRet.f32 %6337, 0
  %6339 = extractvalue %dx.types.ResRet.f32 %6337, 1
  %6340 = extractvalue %dx.types.ResRet.f32 %6337, 2
  br label %6346

; <label>:6341                                    ; preds = %6135
  %6342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %50, float %6331, float %6332, float undef, float undef, i32 0, i32 0, i32 undef, float %6324)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6343 = extractvalue %dx.types.ResRet.f32 %6342, 0
  %6344 = extractvalue %dx.types.ResRet.f32 %6342, 1
  %6345 = extractvalue %dx.types.ResRet.f32 %6342, 2
  br label %6346

; <label>:6346                                    ; preds = %6341, %6336
  %6347 = phi float [ %6338, %6336 ], [ %6343, %6341 ]
  %6348 = phi float [ %6339, %6336 ], [ %6344, %6341 ]
  %6349 = phi float [ %6340, %6336 ], [ %6345, %6341 ]
  %6350 = select i1 %266, float 0.000000e+00, float %6348
  %6351 = select i1 %266, float 0.000000e+00, float %6349
  %6352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6353 = extractvalue %dx.types.CBufRet.f32 %6352, 1
  %6354 = fmul fast float %6347, %6170
  %6355 = fmul fast float %6354, %6353
  %6356 = fmul fast float %6350, %6171
  %6357 = fmul fast float %6356, %6353
  %6358 = fmul fast float %6351, %6172
  %6359 = fmul fast float %6358, %6353
  %6360 = fadd fast float %6215, %4479
  %6361 = fadd fast float %6360, %6228
  %6362 = fadd fast float %6361, %6355
  %6363 = fmul fast float %6362, %4486
  %6364 = fadd fast float %6216, %4480
  %6365 = fadd fast float %6364, %6231
  %6366 = fadd fast float %6365, %6357
  %6367 = fmul fast float %6366, %4486
  %6368 = fadd fast float %6217, %4481
  %6369 = fadd fast float %6368, %6234
  %6370 = fadd fast float %6369, %6359
  %6371 = fmul fast float %6370, %4486
  %6372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6372, 3
  %6374 = fcmp fast oeq float %6373, 0.000000e+00
  br i1 %6374, label %7512, label %6375

; <label>:6375                                    ; preds = %6346
  %6376 = extractvalue %dx.types.CBufRet.f32 %6372, 0
  %6377 = extractvalue %dx.types.CBufRet.f32 %6372, 1
  %6378 = extractvalue %dx.types.CBufRet.f32 %6372, 2
  %6379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6380 = extractvalue %dx.types.CBufRet.f32 %6379, 0
  %6381 = extractvalue %dx.types.CBufRet.f32 %6379, 1
  %6382 = extractvalue %dx.types.CBufRet.f32 %6379, 2
  %6383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6384 = extractvalue %dx.types.CBufRet.f32 %6383, 0
  %6385 = extractvalue %dx.types.CBufRet.f32 %6383, 1
  %6386 = call float @dx.op.dot3.f32(i32 55, float %6380, float %6381, float %6382, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6387 = select i1 %266, float %6384, float %6380
  %6388 = select i1 %266, float %6386, float %6381
  %6389 = select i1 %266, float %6385, float %6382
  %6390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6391 = extractvalue %dx.types.CBufRet.f32 %6390, 2
  %6392 = fmul fast float %6391, %122
  %6393 = fmul fast float %6391, %123
  %6394 = fmul fast float %6391, %124
  %6395 = fadd fast float %6392, %194
  %6396 = fadd fast float %6393, %195
  %6397 = fadd fast float %6394, %196
  %6398 = fcmp fast olt float %6373, 0.000000e+00
  br i1 %6398, label %7038, label %6399

; <label>:6399                                    ; preds = %6375
  %6400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6401 = extractvalue %dx.types.CBufRet.f32 %6400, 0
  %6402 = extractvalue %dx.types.CBufRet.f32 %6400, 1
  %6403 = extractvalue %dx.types.CBufRet.f32 %6400, 2
  %6404 = extractvalue %dx.types.CBufRet.f32 %6400, 3
  %6405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6406 = extractvalue %dx.types.CBufRet.f32 %6405, 0
  %6407 = extractvalue %dx.types.CBufRet.f32 %6405, 1
  %6408 = extractvalue %dx.types.CBufRet.f32 %6405, 2
  %6409 = extractvalue %dx.types.CBufRet.f32 %6405, 3
  %6410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6411 = extractvalue %dx.types.CBufRet.f32 %6410, 0
  %6412 = extractvalue %dx.types.CBufRet.f32 %6410, 1
  %6413 = extractvalue %dx.types.CBufRet.f32 %6410, 2
  %6414 = extractvalue %dx.types.CBufRet.f32 %6410, 3
  %6415 = fmul fast float %6401, %6395
  %6416 = call float @dx.op.tertiary.f32(i32 46, float %6396, float %6402, float %6415)  ; FMad(a,b,c)
  %6417 = call float @dx.op.tertiary.f32(i32 46, float %6397, float %6403, float %6416)  ; FMad(a,b,c)
  %6418 = fadd fast float %6417, %6404
  %6419 = fmul fast float %6406, %6395
  %6420 = call float @dx.op.tertiary.f32(i32 46, float %6396, float %6407, float %6419)  ; FMad(a,b,c)
  %6421 = call float @dx.op.tertiary.f32(i32 46, float %6397, float %6408, float %6420)  ; FMad(a,b,c)
  %6422 = fadd fast float %6421, %6409
  %6423 = fmul fast float %6411, %6395
  %6424 = call float @dx.op.tertiary.f32(i32 46, float %6396, float %6412, float %6423)  ; FMad(a,b,c)
  %6425 = call float @dx.op.tertiary.f32(i32 46, float %6397, float %6413, float %6424)  ; FMad(a,b,c)
  %6426 = fadd fast float %6425, %6414
  %6427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %6428 = extractvalue %dx.types.CBufRet.f32 %6427, 0
  %6429 = fcmp fast une float %6428, 0.000000e+00
  %6430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6431 = extractvalue %dx.types.CBufRet.f32 %6430, 0
  %6432 = extractvalue %dx.types.CBufRet.f32 %6430, 1
  %6433 = extractvalue %dx.types.CBufRet.f32 %6430, 3
  %6434 = fmul fast float %6433, %6418
  %6435 = fmul fast float %6433, %6422
  %6436 = fadd fast float %6434, %6431
  %6437 = fadd fast float %6435, %6432
  %6438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6439 = extractvalue %dx.types.CBufRet.f32 %6438, 0
  %6440 = extractvalue %dx.types.CBufRet.f32 %6438, 1
  %6441 = extractvalue %dx.types.CBufRet.f32 %6438, 3
  %6442 = fmul fast float %6441, %6418
  %6443 = fmul fast float %6441, %6422
  %6444 = fadd fast float %6442, %6439
  %6445 = fadd fast float %6443, %6440
  %6446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6447 = extractvalue %dx.types.CBufRet.f32 %6446, 1
  %6448 = fsub fast float %6447, %6426
  %6449 = extractvalue %dx.types.CBufRet.f32 %6446, 2
  %6450 = fmul fast float %6448, %6449
  %6451 = fsub fast float 1.000000e+00, %6450
  %6452 = call float @dx.op.unary.f32(i32 7, float %6451)  ; Saturate(value)
  br i1 %6429, label %6513, label %6453

; <label>:6453                                    ; preds = %6399
  %6454 = extractvalue %dx.types.CBufRet.f32 %6438, 2
  %6455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6456 = extractvalue %dx.types.CBufRet.f32 %6455, 2
  %6457 = fadd fast float %6456, %6454
  %6458 = fcmp fast ogt float %6457, 0.000000e+00
  br i1 %6458, label %6459, label %6483

; <label>:6459                                    ; preds = %6453
  %6460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6461 = extractvalue %dx.types.CBufRet.f32 %6460, 0
  %6462 = extractvalue %dx.types.CBufRet.f32 %6460, 1
  %6463 = fsub fast float %6444, %6461
  %6464 = fsub fast float %6445, %6462
  %6465 = fcmp fast olt float %6463, 0.000000e+00
  %6466 = fcmp fast olt float %6464, 0.000000e+00
  %6467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6468 = extractvalue %dx.types.CBufRet.f32 %6467, 0
  %6469 = extractvalue %dx.types.CBufRet.f32 %6467, 1
  %6470 = extractvalue %dx.types.CBufRet.f32 %6467, 2
  %6471 = extractvalue %dx.types.CBufRet.f32 %6467, 3
  %6472 = select i1 %6465, float %6468, float %6470
  %6473 = select i1 %6466, float %6469, float %6471
  %6474 = fmul fast float %6472, %6463
  %6475 = fmul fast float %6473, %6464
  %6476 = call float @dx.op.unary.f32(i32 6, float %6474)  ; FAbs(value)
  %6477 = call float @dx.op.unary.f32(i32 6, float %6475)  ; FAbs(value)
  %6478 = extractvalue %dx.types.CBufRet.f32 %6390, 0
  %6479 = call float @dx.op.binary.f32(i32 35, float %6476, float %6477)  ; FMax(a,b)
  %6480 = fsub fast float %6478, %6479
  %6481 = call float @dx.op.unary.f32(i32 7, float %6480)  ; Saturate(value)
  %6482 = fmul fast float %6481, %6452
  br label %6483

; <label>:6483                                    ; preds = %6459, %6453
  %6484 = phi float [ %6482, %6459 ], [ 0.000000e+00, %6453 ]
  %6485 = extractvalue %dx.types.CBufRet.f32 %6430, 2
  %6486 = extractvalue %dx.types.CBufRet.f32 %6455, 1
  %6487 = fadd fast float %6486, %6485
  %6488 = fcmp fast ogt float %6487, 0.000000e+00
  br i1 %6488, label %6489, label %6513

; <label>:6489                                    ; preds = %6483
  %6490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6491 = extractvalue %dx.types.CBufRet.f32 %6490, 0
  %6492 = extractvalue %dx.types.CBufRet.f32 %6490, 1
  %6493 = fsub fast float %6436, %6491
  %6494 = fsub fast float %6437, %6492
  %6495 = fcmp fast olt float %6493, 0.000000e+00
  %6496 = fcmp fast olt float %6494, 0.000000e+00
  %6497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6498 = extractvalue %dx.types.CBufRet.f32 %6497, 0
  %6499 = extractvalue %dx.types.CBufRet.f32 %6497, 1
  %6500 = extractvalue %dx.types.CBufRet.f32 %6497, 2
  %6501 = extractvalue %dx.types.CBufRet.f32 %6497, 3
  %6502 = select i1 %6495, float %6498, float %6500
  %6503 = select i1 %6496, float %6499, float %6501
  %6504 = fmul fast float %6502, %6493
  %6505 = fmul fast float %6503, %6494
  %6506 = call float @dx.op.unary.f32(i32 6, float %6504)  ; FAbs(value)
  %6507 = call float @dx.op.unary.f32(i32 6, float %6505)  ; FAbs(value)
  %6508 = extractvalue %dx.types.CBufRet.f32 %6390, 0
  %6509 = call float @dx.op.binary.f32(i32 35, float %6506, float %6507)  ; FMax(a,b)
  %6510 = fsub fast float %6508, %6509
  %6511 = call float @dx.op.unary.f32(i32 7, float %6510)  ; Saturate(value)
  %6512 = fmul fast float %6511, %6452
  br label %6513

; <label>:6513                                    ; preds = %6489, %6483, %6399
  %6514 = phi float [ 0.000000e+00, %6399 ], [ %6512, %6489 ], [ 0.000000e+00, %6483 ]
  %6515 = phi float [ 0.000000e+00, %6399 ], [ %6484, %6489 ], [ %6484, %6483 ]
  %6516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6517 = extractvalue %dx.types.CBufRet.f32 %6516, 1
  %6518 = call float @dx.op.unary.f32(i32 7, float %6517)  ; Saturate(value)
  %6519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6520 = extractvalue %dx.types.CBufRet.f32 %6519, 0
  %6521 = extractvalue %dx.types.CBufRet.f32 %6519, 1
  %6522 = fsub fast float %6418, %6520
  %6523 = fsub fast float %6422, %6521
  %6524 = fcmp fast olt float %6522, 0.000000e+00
  %6525 = fcmp fast olt float %6523, 0.000000e+00
  %6526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6527 = extractvalue %dx.types.CBufRet.f32 %6526, 0
  %6528 = extractvalue %dx.types.CBufRet.f32 %6526, 1
  %6529 = extractvalue %dx.types.CBufRet.f32 %6526, 2
  %6530 = extractvalue %dx.types.CBufRet.f32 %6526, 3
  %6531 = select i1 %6524, float %6527, float %6529
  %6532 = select i1 %6525, float %6528, float %6530
  %6533 = fmul fast float %6531, %6522
  %6534 = fmul fast float %6532, %6523
  %6535 = call float @dx.op.unary.f32(i32 6, float %6533)  ; FAbs(value)
  %6536 = call float @dx.op.unary.f32(i32 6, float %6534)  ; FAbs(value)
  %6537 = extractvalue %dx.types.CBufRet.f32 %6390, 0
  %6538 = call float @dx.op.binary.f32(i32 35, float %6535, float %6536)  ; FMax(a,b)
  %6539 = fsub fast float %6537, %6538
  %6540 = call float @dx.op.unary.f32(i32 7, float %6539)  ; Saturate(value)
  %6541 = call float @dx.op.binary.f32(i32 36, float %6540, float %6518)  ; FMin(a,b)
  %6542 = fmul fast float %6541, %6452
  %6543 = fsub fast float %6514, %6542
  %6544 = fsub fast float %6515, %6514
  %6545 = fsub fast float %6544, %6542
  %6546 = call float @dx.op.binary.f32(i32 35, float %6542, float %6514)  ; FMax(a,b)
  %6547 = call float @dx.op.binary.f32(i32 35, float %6546, float %6515)  ; FMax(a,b)
  %6548 = fcmp fast olt float %6547, 1.000000e+00
  br i1 %6548, label %6549, label %6947, !dx.controlflow.hints !103

; <label>:6549                                    ; preds = %6513
  %6550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6551 = extractvalue %dx.types.CBufRet.f32 %6550, 0
  %6552 = fcmp fast une float %6551, 0.000000e+00
  br i1 %6552, label %6553, label %6947, !dx.controlflow.hints !104

; <label>:6553                                    ; preds = %6549
  %6554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6555 = extractvalue %dx.types.CBufRet.f32 %6554, 0
  %6556 = extractvalue %dx.types.CBufRet.f32 %6554, 1
  %6557 = extractvalue %dx.types.CBufRet.f32 %6554, 2
  %6558 = extractvalue %dx.types.CBufRet.f32 %6554, 3
  %6559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6560 = extractvalue %dx.types.CBufRet.f32 %6559, 0
  %6561 = extractvalue %dx.types.CBufRet.f32 %6559, 1
  %6562 = extractvalue %dx.types.CBufRet.f32 %6559, 2
  %6563 = extractvalue %dx.types.CBufRet.f32 %6559, 3
  %6564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6565 = extractvalue %dx.types.CBufRet.f32 %6564, 0
  %6566 = extractvalue %dx.types.CBufRet.f32 %6564, 1
  %6567 = extractvalue %dx.types.CBufRet.f32 %6564, 2
  %6568 = extractvalue %dx.types.CBufRet.f32 %6564, 3
  %6569 = fmul fast float %6555, %6395
  %6570 = call float @dx.op.tertiary.f32(i32 46, float %6396, float %6556, float %6569)  ; FMad(a,b,c)
  %6571 = call float @dx.op.tertiary.f32(i32 46, float %6397, float %6557, float %6570)  ; FMad(a,b,c)
  %6572 = fadd fast float %6571, %6558
  %6573 = fmul fast float %6560, %6395
  %6574 = call float @dx.op.tertiary.f32(i32 46, float %6396, float %6561, float %6573)  ; FMad(a,b,c)
  %6575 = call float @dx.op.tertiary.f32(i32 46, float %6397, float %6562, float %6574)  ; FMad(a,b,c)
  %6576 = fadd fast float %6575, %6563
  %6577 = fmul fast float %6565, %6395
  %6578 = call float @dx.op.tertiary.f32(i32 46, float %6396, float %6566, float %6577)  ; FMad(a,b,c)
  %6579 = call float @dx.op.tertiary.f32(i32 46, float %6397, float %6567, float %6578)  ; FMad(a,b,c)
  %6580 = fadd fast float %6579, %6568
  %6581 = fcmp fast oge float %6572, 1.000000e+00
  %6582 = fcmp fast oge float %6576, 1.000000e+00
  %6583 = or i1 %6581, %6582
  %6584 = fcmp fast olt float %6572, 0.000000e+00
  %6585 = fcmp fast olt float %6576, 0.000000e+00
  %6586 = or i1 %6584, %6585
  %6587 = or i1 %6583, %6586
  br i1 %6587, label %6947, label %6588, !dx.controlflow.hints !105

; <label>:6588                                    ; preds = %6553
  %6589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6590 = extractvalue %dx.types.CBufRet.f32 %6589, 0
  %6591 = extractvalue %dx.types.CBufRet.f32 %6589, 1
  %6592 = extractvalue %dx.types.CBufRet.f32 %6589, 2
  %6593 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6594 = extractvalue %dx.types.CBufRet.i32 %6593, 2
  %6595 = uitofp i32 %6594 to float
  %6596 = extractvalue %dx.types.CBufRet.i32 %6593, 3
  %6597 = uitofp i32 %6596 to float
  %6598 = extractvalue %dx.types.CBufRet.f32 %6589, 3
  %6599 = fmul fast float %6598, 2.000000e+00
  %6600 = fsub fast float %6572, %6590
  %6601 = fsub fast float %6576, %6591
  %6602 = fmul fast float %6599, %6600
  %6603 = fmul fast float %6599, %6601
  %6604 = fdiv fast float 1.000000e+00, %6378
  %6605 = fmul fast float %6603, %6604
  %6606 = call float @dx.op.unary.f32(i32 6, float %6605)  ; FAbs(value)
  %6607 = fmul fast float %6592, %6397
  %6608 = fmul fast float %6607, %6599
  %6609 = call float @dx.op.unary.f32(i32 6, float %6608)  ; FAbs(value)
  %6610 = call float @dx.op.unary.f32(i32 6, float %6602)  ; FAbs(value)
  %6611 = call float @dx.op.binary.f32(i32 35, float %6610, float %6609)  ; FMax(a,b)
  %6612 = call float @dx.op.binary.f32(i32 35, float %6611, float %6606)  ; FMax(a,b)
  %6613 = fmul fast float %6612, 2.000000e+00
  %6614 = call float @dx.op.unary.f32(i32 23, float %6613)  ; Log(value)
  %6615 = call float @dx.op.binary.f32(i32 35, float %6614, float %6595)  ; FMax(a,b)
  %6616 = call float @dx.op.unary.f32(i32 22, float %6615)  ; Frc(value)
  %6617 = fadd fast float %6616, 0xBFEA666660000000
  %6618 = fmul fast float %6617, 8.000000e+00
  %6619 = call float @dx.op.unary.f32(i32 7, float %6618)  ; Saturate(value)
  %6620 = call float @dx.op.unary.f32(i32 27, float %6615)  ; Round_ni(value)
  %6621 = fadd fast float %6620, %6619
  %6622 = call float @dx.op.binary.f32(i32 36, float %6621, float %6597)  ; FMin(a,b)
  %6623 = call float @dx.op.unary.f32(i32 27, float %6622)  ; Round_ni(value)
  %6624 = fsub fast float -0.000000e+00, %6623
  %6625 = call float @dx.op.unary.f32(i32 21, float %6624)  ; Exp(value)
  %6626 = fmul fast float %6625, %6599
  %6627 = fmul fast float %6626, %6572
  %6628 = fmul fast float %6626, %6576
  %6629 = fmul fast float %6627, 2.500000e-01
  %6630 = fmul fast float %6628, 2.500000e-01
  %6631 = fadd fast float %6629, 5.000000e-01
  %6632 = fadd fast float %6630, 5.000000e-01
  %6633 = fsub fast float %6597, %6595
  %6634 = fptoui float %6633 to i32
  %6635 = add i32 %6634, 320
  %6636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 %6635)  ; CBufferLoadLegacy(handle,regIndex)
  %6637 = extractvalue %dx.types.CBufRet.f32 %6636, 0
  %6638 = extractvalue %dx.types.CBufRet.f32 %6636, 1
  %6639 = fcmp fast une float %6622, %6597
  %6640 = fsub fast float %6572, %6637
  %6641 = fsub fast float %6576, %6638
  %6642 = call float @dx.op.unary.f32(i32 6, float %6640)  ; FAbs(value)
  %6643 = call float @dx.op.unary.f32(i32 6, float %6641)  ; FAbs(value)
  %6644 = fmul fast float %6642, %6626
  %6645 = fmul fast float %6643, %6626
  %6646 = fcmp fast olt float %6644, 1.000000e+00
  %6647 = fcmp fast olt float %6645, 1.000000e+00
  %6648 = and i1 %6646, %6647
  %6649 = or i1 %6639, %6648
  br i1 %6649, label %6650, label %6947, !dx.controlflow.hints !106

; <label>:6650                                    ; preds = %6588
  %6651 = fmul fast float %6628, 5.000000e-01
  %6652 = fmul fast float %6627, 5.000000e-01
  %6653 = fadd fast float %6651, 5.000000e-01
  %6654 = fadd fast float %6652, 5.000000e-01
  %6655 = sitofp i32 %6594 to float
  %6656 = fsub fast float %6622, %6655
  %6657 = call float @dx.op.unary.f32(i32 27, float %6656)  ; Round_ni(value)
  %6658 = call float @dx.op.unary.f32(i32 22, float %6622)  ; Frc(value)
  %6659 = call float @dx.op.unary.f32(i32 22, float %6654)  ; Frc(value)
  %6660 = call float @dx.op.unary.f32(i32 22, float %6653)  ; Frc(value)
  %6661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %51, float %6659, float %6660, float %6657, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6662 = extractvalue %dx.types.ResRet.f32 %6661, 0
  %6663 = extractvalue %dx.types.ResRet.f32 %6661, 1
  %6664 = extractvalue %dx.types.ResRet.f32 %6661, 2
  %6665 = extractvalue %dx.types.ResRet.f32 %6661, 3
  %6666 = fcmp fast ogt float %6658, 0.000000e+00
  br i1 %6666, label %6667, label %6688, !dx.controlflow.hints !107

; <label>:6667                                    ; preds = %6650
  %6668 = fadd fast float %6657, 1.000000e+00
  %6669 = call float @dx.op.unary.f32(i32 22, float %6631)  ; Frc(value)
  %6670 = call float @dx.op.unary.f32(i32 22, float %6632)  ; Frc(value)
  %6671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %51, float %6669, float %6670, float %6668, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6672 = extractvalue %dx.types.ResRet.f32 %6671, 0
  %6673 = extractvalue %dx.types.ResRet.f32 %6671, 1
  %6674 = extractvalue %dx.types.ResRet.f32 %6671, 2
  %6675 = extractvalue %dx.types.ResRet.f32 %6671, 3
  %6676 = fsub fast float %6672, %6662
  %6677 = fsub fast float %6673, %6663
  %6678 = fsub fast float %6674, %6664
  %6679 = fsub fast float %6675, %6665
  %6680 = fmul fast float %6676, %6658
  %6681 = fmul fast float %6677, %6658
  %6682 = fmul fast float %6678, %6658
  %6683 = fmul fast float %6679, %6658
  %6684 = fadd fast float %6680, %6662
  %6685 = fadd fast float %6681, %6663
  %6686 = fadd fast float %6682, %6664
  %6687 = fadd fast float %6683, %6665
  br label %6688

; <label>:6688                                    ; preds = %6667, %6650
  %6689 = phi float [ %6684, %6667 ], [ %6662, %6650 ]
  %6690 = phi float [ %6685, %6667 ], [ %6663, %6650 ]
  %6691 = phi float [ %6686, %6667 ], [ %6664, %6650 ]
  %6692 = phi float [ %6687, %6667 ], [ %6665, %6650 ]
  %6693 = fadd fast float %6689, -5.000000e-01
  %6694 = fadd fast float %6691, -5.000000e-01
  %6695 = fmul fast float %6693, 0xBFD5555560000000
  %6696 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6694, float %6695)  ; FMad(a,b,c)
  %6697 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6690, float 0.000000e+00)  ; FMad(a,b,c)
  %6698 = fadd fast float %6697, %6692
  %6699 = fmul fast float %6693, -7.500000e-01
  %6700 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6694, float %6699)  ; FMad(a,b,c)
  %6701 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6690, float 0.000000e+00)  ; FMad(a,b,c)
  %6702 = fadd fast float %6701, %6692
  %6703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6704 = extractvalue %dx.types.CBufRet.f32 %6703, 0
  %6705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6706 = extractvalue %dx.types.CBufRet.f32 %6705, 0
  %6707 = extractvalue %dx.types.CBufRet.f32 %6705, 1
  %6708 = extractvalue %dx.types.CBufRet.f32 %6705, 2
  %6709 = extractvalue %dx.types.CBufRet.f32 %6705, 3
  %6710 = fsub fast float %6706, %6696
  %6711 = fsub fast float %6707, %6698
  %6712 = fsub fast float %6708, %6700
  %6713 = fsub fast float %6709, %6702
  %6714 = fmul fast float %6710, %6704
  %6715 = fmul fast float %6711, %6704
  %6716 = fmul fast float %6712, %6704
  %6717 = fmul fast float %6713, %6704
  %6718 = fadd fast float %6714, %6696
  %6719 = fadd fast float %6715, %6698
  %6720 = fadd fast float %6716, %6700
  %6721 = fadd fast float %6717, %6702
  %6722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6723 = extractvalue %dx.types.ResRet.i32 %6722, 0
  %6724 = and i32 %6723, 536870911
  %6725 = uitofp i32 %6724 to float
  %6726 = fmul fast float %6725, %6572
  %6727 = fmul fast float %6725, %6576
  %6728 = fptoui float %6726 to i32
  %6729 = fptoui float %6727 to i32
  %6730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6731 = extractvalue %dx.types.ResRet.i32 %6730, 0
  %6732 = and i32 %6731, 31
  %6733 = lshr i32 %6728, %6732
  %6734 = lshr i32 %6729, %6732
  %6735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6736 = extractvalue %dx.types.ResRet.i32 %6735, 0
  %6737 = and i32 %6736, 31
  %6738 = shl i32 1, %6737
  %6739 = call i32 @dx.op.binary.i32(i32 40, i32 %6738, i32 4)  ; UMin(a,b)
  %6740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6741 = extractvalue %dx.types.ResRet.i32 %6740, 0
  %6742 = extractvalue %dx.types.ResRet.i32 %6740, 1
  %6743 = icmp eq i32 %6739, 0
  br i1 %6743, label %6785, label %6744

; <label>:6744                                    ; preds = %6688
  br label %6745

; <label>:6745                                    ; preds = %6773, %6744
  %6746 = phi i32 [ %6776, %6773 ], [ 0, %6744 ]
  %6747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6748 = extractvalue %dx.types.ResRet.i32 %6747, 0
  %6749 = lshr i32 %6748, 16
  %6750 = and i32 %6749, 31
  %6751 = shl i32 %6734, %6750
  %6752 = add i32 %6751, %6733
  %6753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6754 = extractvalue %dx.types.ResRet.i32 %6753, 0
  %6755 = and i32 %6754, 31
  %6756 = shl i32 %6752, %6755
  %6757 = add i32 %6756, %6746
  %6758 = shl i32 %6757, 2
  %6759 = add i32 %6758, 32
  %6760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6759, i32 undef)  ; BufferLoad(srv,index,wot)
  %6761 = extractvalue %dx.types.ResRet.i32 %6760, 0
  %6762 = icmp slt i32 %6761, 0
  %6763 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6746
  %6764 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6746
  %6765 = bitcast float* %6763 to i32*
  %6766 = bitcast float* %6764 to i32*
  br i1 %6762, label %6767, label %6773

; <label>:6767                                    ; preds = %6745
  %6768 = and i32 %6761, 1073741823
  %6769 = add nuw nsw i32 %6768, 20
  %6770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6769, i32 undef)  ; BufferLoad(srv,index,wot)
  %6771 = extractvalue %dx.types.ResRet.i32 %6770, 0
  %6772 = extractvalue %dx.types.ResRet.i32 %6770, 1
  br label %6773

; <label>:6773                                    ; preds = %6767, %6745
  %6774 = phi i32 [ %6771, %6767 ], [ %6741, %6745 ]
  %6775 = phi i32 [ %6772, %6767 ], [ %6742, %6745 ]
  store i32 %6774, i32* %6765, align 4
  store i32 %6775, i32* %6766, align 4
  %6776 = add nuw i32 %6746, 1
  %6777 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6778 = extractvalue %dx.types.CBufRet.i32 %6777, 2
  %6779 = icmp eq i32 %6778, 0
  %6780 = icmp ugt i32 %6761, -1073741825
  %6781 = and i1 %6780, %6779
  %6782 = icmp ult i32 %6776, %6739
  %6783 = and i1 %6781, %6782
  br i1 %6783, label %6745, label %6784

; <label>:6784                                    ; preds = %6773
  br label %6785

; <label>:6785                                    ; preds = %6784, %6688
  %6786 = phi i32 [ 0, %6688 ], [ %6776, %6784 ]
  %6787 = extractvalue %dx.types.CBufRet.f32 %6550, 2
  %6788 = fptoui float %6787 to i32
  %6789 = icmp eq i32 %6788, 0
  br i1 %6789, label %6841, label %6790

; <label>:6790                                    ; preds = %6785
  br label %6791

; <label>:6791                                    ; preds = %6836, %6790
  %6792 = phi i32 [ %6837, %6836 ], [ %6786, %6790 ]
  %6793 = phi i32 [ %6838, %6836 ], [ 0, %6790 ]
  %6794 = lshr i32 %6793, 2
  %6795 = and i32 %6793, 3
  %6796 = add nuw nsw i32 %6794, 83
  %6797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 %6796)  ; CBufferLoadLegacy(handle,regIndex)
  %6798 = extractvalue %dx.types.CBufRet.i32 %6797, 0
  %6799 = extractvalue %dx.types.CBufRet.i32 %6797, 1
  %6800 = extractvalue %dx.types.CBufRet.i32 %6797, 2
  %6801 = extractvalue %dx.types.CBufRet.i32 %6797, 3
  %6802 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 0
  store i32 %6798, i32* %6802, align 4
  %6803 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 1
  store i32 %6799, i32* %6803, align 4
  %6804 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 2
  store i32 %6800, i32* %6804, align 4
  %6805 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 3
  store i32 %6801, i32* %6805, align 4
  %6806 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 %6795
  %6807 = load i32, i32* %6806, align 4, !tbaa !108, !noalias !112
  %6808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6809 = extractvalue %dx.types.ResRet.i32 %6808, 0
  %6810 = lshr i32 %6809, 16
  %6811 = and i32 %6810, 31
  %6812 = shl i32 %6734, %6811
  %6813 = add i32 %6812, %6733
  %6814 = shl i32 %6813, 2
  %6815 = add i32 %6814, %6807
  %6816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6815, i32 undef)  ; BufferLoad(srv,index,wot)
  %6817 = extractvalue %dx.types.ResRet.i32 %6816, 0
  %6818 = icmp eq i32 %6817, 0
  br i1 %6818, label %6836, label %6819

; <label>:6819                                    ; preds = %6791
  %6820 = icmp slt i32 %6817, 0
  %6821 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6792
  %6822 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6792
  %6823 = bitcast float* %6821 to i32*
  %6824 = bitcast float* %6822 to i32*
  br i1 %6820, label %6825, label %6832

; <label>:6825                                    ; preds = %6819
  %6826 = and i32 %6817, 1073741823
  %6827 = add i32 %6807, 20
  %6828 = add i32 %6827, %6826
  %6829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6828, i32 undef)  ; BufferLoad(srv,index,wot)
  %6830 = extractvalue %dx.types.ResRet.i32 %6829, 0
  %6831 = extractvalue %dx.types.ResRet.i32 %6829, 1
  br label %6832

; <label>:6832                                    ; preds = %6825, %6819
  %6833 = phi i32 [ %6830, %6825 ], [ %6741, %6819 ]
  %6834 = phi i32 [ %6831, %6825 ], [ %6742, %6819 ]
  store i32 %6833, i32* %6823, align 4
  store i32 %6834, i32* %6824, align 4
  %6835 = add i32 %6792, 1
  br label %6836

; <label>:6836                                    ; preds = %6832, %6791
  %6837 = phi i32 [ %6792, %6791 ], [ %6835, %6832 ]
  %6838 = add nuw i32 %6793, 1
  %6839 = icmp eq i32 %6838, %6788
  br i1 %6839, label %6840, label %6791

; <label>:6840                                    ; preds = %6836
  br label %6841

; <label>:6841                                    ; preds = %6840, %6785
  %6842 = phi i32 [ %6786, %6785 ], [ %6837, %6840 ]
  %6843 = icmp eq i32 %6842, 1
  %6844 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 0
  %6845 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 0
  br i1 %6843, label %6846, label %6849

; <label>:6846                                    ; preds = %6841
  %6847 = load float, float* %6844, align 4
  %6848 = load float, float* %6845, align 4
  br label %6876

; <label>:6849                                    ; preds = %6841
  %6850 = load float, float* %6844, align 4
  %6851 = load float, float* %6845, align 4
  %6852 = fdiv fast float 1.000000e+00, %6851
  %6853 = fsub fast float %6850, %6852
  %6854 = icmp ugt i32 %6842, 1
  br i1 %6854, label %6855, label %6871

; <label>:6855                                    ; preds = %6849
  br label %6856

; <label>:6856                                    ; preds = %6856, %6855
  %6857 = phi float [ %6866, %6856 ], [ %6853, %6855 ]
  %6858 = phi float [ %6867, %6856 ], [ %6850, %6855 ]
  %6859 = phi i32 [ %6868, %6856 ], [ 1, %6855 ]
  %6860 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6859
  %6861 = load float, float* %6860, align 4
  %6862 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6859
  %6863 = load float, float* %6862, align 4
  %6864 = fdiv fast float 1.000000e+00, %6863
  %6865 = fsub fast float %6861, %6864
  %6866 = call float @dx.op.binary.f32(i32 36, float %6857, float %6865)  ; FMin(a,b)
  %6867 = call float @dx.op.binary.f32(i32 35, float %6858, float %6861)  ; FMax(a,b)
  %6868 = add nuw i32 %6859, 1
  %6869 = icmp eq i32 %6868, %6842
  br i1 %6869, label %6870, label %6856

; <label>:6870                                    ; preds = %6856
  br label %6871

; <label>:6871                                    ; preds = %6870, %6849
  %6872 = phi float [ %6853, %6849 ], [ %6866, %6870 ]
  %6873 = phi float [ %6850, %6849 ], [ %6867, %6870 ]
  %6874 = fsub fast float %6873, %6872
  %6875 = fdiv fast float 1.000000e+00, %6874
  br label %6876

; <label>:6876                                    ; preds = %6871, %6846
  %6877 = phi float [ %6847, %6846 ], [ %6873, %6871 ]
  %6878 = phi float [ %6848, %6846 ], [ %6875, %6871 ]
  %6879 = fadd fast float %6580, %6877
  %6880 = fmul fast float %6879, %6878
  %6881 = call float @dx.op.unary.f32(i32 7, float %6880)  ; Saturate(value)
  %6882 = fmul fast float %6881, 2.000000e+00
  %6883 = fsub fast float 1.000000e+00, %6882
  %6884 = fmul fast float %6718, %6718
  %6885 = fsub fast float %6719, %6884
  %6886 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6885)  ; FMax(a,b)
  %6887 = fdiv fast float 1.000000e+00, %6886
  %6888 = fmul fast float %6719, %6718
  %6889 = fsub fast float %6720, %6888
  %6890 = fsub fast float %6883, %6718
  %6891 = fmul fast float %6883, %6883
  %6892 = fsub fast float %6891, %6719
  %6893 = fmul fast float %6887, %6889
  %6894 = fmul fast float %6893, %6890
  %6895 = fsub fast float %6892, %6894
  %6896 = fmul fast float %6719, %6719
  %6897 = fsub fast float %6721, %6896
  %6898 = fmul fast float %6889, %6889
  %6899 = fmul fast float %6898, %6887
  %6900 = fsub fast float %6897, %6899
  %6901 = fdiv fast float %6895, %6900
  %6902 = fmul fast float %6901, %6889
  %6903 = fsub fast float %6890, %6902
  %6904 = fmul fast float %6903, %6887
  %6905 = fmul fast float %6904, %6718
  %6906 = fsub fast float 1.000000e+00, %6905
  %6907 = fmul fast float %6901, %6719
  %6908 = fsub fast float %6906, %6907
  %6909 = fmul fast float %6904, %6904
  %6910 = fmul fast float %6901, 4.000000e+00
  %6911 = fmul fast float %6910, %6908
  %6912 = fsub fast float %6909, %6911
  %6913 = call float @dx.op.unary.f32(i32 24, float %6912)  ; Sqrt(value)
  %6914 = fcmp fast oge float %6904, 0.000000e+00
  %6915 = fsub fast float -0.000000e+00, %6913
  %6916 = select i1 %6914, float %6915, float %6913
  %6917 = fsub fast float %6916, %6904
  %6918 = fdiv fast float %6917, %6901
  %6919 = fdiv fast float %6908, %6917
  %6920 = fmul fast float %6918, 5.000000e-01
  %6921 = fmul fast float %6919, 2.000000e+00
  %6922 = select i1 %6914, float %6920, float %6921
  %6923 = select i1 %6914, float %6921, float %6920
  %6924 = call float @dx.op.binary.f32(i32 35, float %6922, float %6923)  ; FMax(a,b)
  %6925 = call float @dx.op.binary.f32(i32 36, float %6922, float %6923)  ; FMin(a,b)
  %6926 = fcmp fast ogt float %6883, %6924
  %6927 = fsub fast float %6883, %6925
  %6928 = fsub fast float %6883, %6924
  %6929 = fsub fast float %6924, %6925
  %6930 = select i1 %6926, float %6928, float %6929
  %6931 = fmul float %6927, %6930
  %6932 = select i1 %6926, float %6925, float %6883
  %6933 = fcmp fast ogt float %6883, %6925
  %6934 = fmul fast float %6932, %6924
  %6935 = fadd fast float %6932, %6924
  %6936 = fmul fast float %6935, %6718
  %6937 = fadd fast float %6934, %6719
  %6938 = fsub fast float %6937, %6936
  %6939 = fdiv fast float %6938, %6931
  %6940 = select i1 %6933, float %6939, float 0.000000e+00
  %6941 = fsub fast float 1.000000e+00, %6940
  %6942 = select i1 %6926, float %6941, float %6940
  %6943 = call float @dx.op.unary.f32(i32 7, float %6942)  ; Saturate(value)
  %6944 = extractvalue %dx.types.CBufRet.f32 %6703, 3
  %6945 = fmul fast float %6944, %6943
  %6946 = fsub fast float 1.000000e+00, %6945
  br label %6947

; <label>:6947                                    ; preds = %6876, %6588, %6553, %6549, %6513
  %6948 = phi float [ 1.000000e+00, %6513 ], [ %6946, %6876 ], [ 1.000000e+00, %6553 ], [ 1.000000e+00, %6588 ], [ 1.000000e+00, %6549 ]
  %6949 = fcmp fast ogt float %6545, 0.000000e+00
  br i1 %6949, label %6950, label %6958, !dx.controlflow.hints !121

; <label>:6950                                    ; preds = %6947
  %6951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6952 = extractvalue %dx.types.CBufRet.f32 %6951, 2
  %6953 = fadd fast float %6952, %6426
  %6954 = call float @dx.op.binary.f32(i32 35, float %6953, float 0.000000e+00)  ; FMax(a,b)
  %6955 = fadd fast float %6954, 0x3F10000000000000
  %6956 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %54, float %6444, float %6445, float undef, float undef, i32 0, i32 0, i32 undef, float %6955)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6957 = extractvalue %dx.types.ResRet.f32 %6956, 0
  br label %6958

; <label>:6958                                    ; preds = %6950, %6947
  %6959 = phi float [ %6957, %6950 ], [ 1.000000e+00, %6947 ]
  %6960 = fcmp fast ogt float %6543, 0.000000e+00
  br i1 %6960, label %6961, label %6969, !dx.controlflow.hints !122

; <label>:6961                                    ; preds = %6958
  %6962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6963 = extractvalue %dx.types.CBufRet.f32 %6962, 1
  %6964 = fadd fast float %6963, %6426
  %6965 = call float @dx.op.binary.f32(i32 35, float %6964, float 0.000000e+00)  ; FMax(a,b)
  %6966 = fadd fast float %6965, 0x3F10000000000000
  %6967 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %54, float %6436, float %6437, float undef, float undef, i32 0, i32 0, i32 undef, float %6966)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6968 = extractvalue %dx.types.ResRet.f32 %6967, 0
  br label %6969

; <label>:6969                                    ; preds = %6961, %6958
  %6970 = phi float [ %6968, %6961 ], [ 1.000000e+00, %6958 ]
  %6971 = fcmp fast ogt float %6542, 0.000000e+00
  br i1 %6971, label %6972, label %6984, !dx.controlflow.hints !123

; <label>:6972                                    ; preds = %6969
  %6973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6974 = extractvalue %dx.types.CBufRet.f32 %6973, 0
  %6975 = fadd fast float %6974, %6426
  %6976 = call float @dx.op.binary.f32(i32 35, float %6975, float 0.000000e+00)  ; FMax(a,b)
  %6977 = fadd fast float %6976, 0x3F10000000000000
  br i1 %6429, label %6978, label %6981, !dx.controlflow.hints !124

; <label>:6978                                    ; preds = %6972
  %6979 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %54, float %6418, float %6422, float undef, float undef, i32 0, i32 0, i32 undef, float %6977)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6980 = extractvalue %dx.types.ResRet.f32 %6979, 0
  br label %6984

; <label>:6981                                    ; preds = %6972
  %6982 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %54, float %6418, float %6422, float undef, float undef, i32 0, i32 0, i32 undef, float %6977)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6983 = extractvalue %dx.types.ResRet.f32 %6982, 0
  br label %6984

; <label>:6984                                    ; preds = %6981, %6978, %6969
  %6985 = phi float [ %6980, %6978 ], [ %6983, %6981 ], [ 1.000000e+00, %6969 ]
  %6986 = fsub fast float %6959, %6948
  %6987 = fmul fast float %6986, %6515
  %6988 = fadd fast float %6987, %6948
  %6989 = fsub fast float %6970, %6988
  %6990 = fmul fast float %6989, %6514
  %6991 = fadd fast float %6990, %6988
  %6992 = fsub fast float %6985, %6991
  %6993 = fmul fast float %6992, %6542
  %6994 = fadd fast float %6993, %6991
  %6995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6996 = extractvalue %dx.types.CBufRet.f32 %6995, 2
  %6997 = fcmp fast ogt float %6996, 0.000000e+00
  br i1 %6997, label %6998, label %7038, !dx.controlflow.hints !125

; <label>:6998                                    ; preds = %6984
  %6999 = fcmp fast ugt float %6996, 0.000000e+00
  br i1 %6999, label %7000, label %7035

; <label>:7000                                    ; preds = %6998
  %7001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7002 = extractvalue %dx.types.CBufRet.f32 %7001, 0
  %7003 = extractvalue %dx.types.CBufRet.f32 %7001, 1
  %7004 = extractvalue %dx.types.CBufRet.f32 %7001, 2
  %7005 = extractvalue %dx.types.CBufRet.f32 %7001, 3
  %7006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7007 = extractvalue %dx.types.CBufRet.f32 %7006, 0
  %7008 = extractvalue %dx.types.CBufRet.f32 %7006, 1
  %7009 = extractvalue %dx.types.CBufRet.f32 %7006, 2
  %7010 = extractvalue %dx.types.CBufRet.f32 %7006, 3
  %7011 = extractvalue %dx.types.CBufRet.f32 %6995, 0
  %7012 = extractvalue %dx.types.CBufRet.f32 %6995, 1
  %7013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %7014 = extractvalue %dx.types.CBufRet.f32 %7013, 0
  %7015 = extractvalue %dx.types.CBufRet.f32 %7013, 1
  %7016 = extractvalue %dx.types.CBufRet.f32 %7013, 2
  %7017 = fadd fast float %7014, %6395
  %7018 = fadd fast float %7015, %6396
  %7019 = fadd fast float %7016, %6397
  %7020 = fmul fast float %7017, %7002
  %7021 = call float @dx.op.tertiary.f32(i32 46, float %7003, float %7018, float %7020)  ; FMad(a,b,c)
  %7022 = call float @dx.op.tertiary.f32(i32 46, float %7004, float %7019, float %7021)  ; FMad(a,b,c)
  %7023 = fadd fast float %7022, %7005
  %7024 = fmul fast float %7017, %7007
  %7025 = call float @dx.op.tertiary.f32(i32 46, float %7008, float %7018, float %7024)  ; FMad(a,b,c)
  %7026 = call float @dx.op.tertiary.f32(i32 46, float %7009, float %7019, float %7025)  ; FMad(a,b,c)
  %7027 = fadd fast float %7026, %7010
  %7028 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %49, float %7023, float %7027, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7029 = extractvalue %dx.types.ResRet.f32 %7028, 0
  %7030 = fmul fast float %7029, %7012
  %7031 = fadd fast float %7030, %7011
  %7032 = call float @dx.op.unary.f32(i32 7, float %7031)  ; Saturate(value)
  %7033 = fmul fast float %7032, %6996
  %7034 = fsub fast float 1.000000e+00, %7033
  br label %7035

; <label>:7035                                    ; preds = %7000, %6998
  %7036 = phi float [ %7034, %7000 ], [ 1.000000e+00, %6998 ]
  %7037 = fmul fast float %7036, %6994
  br label %7038

; <label>:7038                                    ; preds = %7035, %6984, %6375
  %7039 = phi float [ 1.000000e+00, %6375 ], [ %7037, %7035 ], [ %6994, %6984 ]
  %7040 = call float @dx.op.binary.f32(i32 36, float %7039, float %7039)  ; FMin(a,b)
  %7041 = call float @dx.op.binary.f32(i32 36, float %7039, float %7040)  ; FMin(a,b)
  %7042 = fcmp fast ogt float %7041, 0.000000e+00
  br i1 %7042, label %7043, label %7203, !dx.controlflow.hints !126

; <label>:7043                                    ; preds = %7038
  %7044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7045 = extractvalue %dx.types.CBufRet.f32 %7044, 0
  %7046 = extractvalue %dx.types.CBufRet.f32 %7044, 1
  %7047 = extractvalue %dx.types.CBufRet.f32 %7044, 2
  %7048 = extractvalue %dx.types.CBufRet.f32 %7044, 3
  %7049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7050 = extractvalue %dx.types.CBufRet.f32 %7049, 0
  %7051 = extractvalue %dx.types.CBufRet.f32 %7049, 1
  %7052 = extractvalue %dx.types.CBufRet.f32 %7049, 2
  %7053 = extractvalue %dx.types.CBufRet.f32 %7049, 3
  %7054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7055 = extractvalue %dx.types.CBufRet.f32 %7054, 0
  %7056 = extractvalue %dx.types.CBufRet.f32 %7054, 1
  %7057 = extractvalue %dx.types.CBufRet.f32 %7054, 2
  %7058 = extractvalue %dx.types.CBufRet.f32 %7054, 3
  %7059 = fmul fast float %7045, %6395
  %7060 = call float @dx.op.tertiary.f32(i32 46, float %6396, float %7046, float %7059)  ; FMad(a,b,c)
  %7061 = call float @dx.op.tertiary.f32(i32 46, float %6397, float %7047, float %7060)  ; FMad(a,b,c)
  %7062 = fadd fast float %7061, %7048
  %7063 = fmul fast float %7050, %6395
  %7064 = call float @dx.op.tertiary.f32(i32 46, float %6396, float %7051, float %7063)  ; FMad(a,b,c)
  %7065 = call float @dx.op.tertiary.f32(i32 46, float %6397, float %7052, float %7064)  ; FMad(a,b,c)
  %7066 = fadd fast float %7065, %7053
  %7067 = fmul fast float %7055, %6395
  %7068 = call float @dx.op.tertiary.f32(i32 46, float %6396, float %7056, float %7067)  ; FMad(a,b,c)
  %7069 = call float @dx.op.tertiary.f32(i32 46, float %6397, float %7057, float %7068)  ; FMad(a,b,c)
  %7070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7071 = extractvalue %dx.types.CBufRet.f32 %7070, 0
  %7072 = extractvalue %dx.types.CBufRet.f32 %7070, 1
  %7073 = extractvalue %dx.types.CBufRet.f32 %7070, 3
  %7074 = fmul fast float %7073, %7062
  %7075 = fmul fast float %7073, %7066
  %7076 = fadd fast float %7074, %7071
  %7077 = fadd fast float %7075, %7072
  %7078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7079 = extractvalue %dx.types.CBufRet.f32 %7078, 0
  %7080 = extractvalue %dx.types.CBufRet.f32 %7078, 1
  %7081 = fsub fast float %7076, %7079
  %7082 = fsub fast float %7077, %7080
  %7083 = fcmp fast olt float %7081, 0.000000e+00
  %7084 = fcmp fast olt float %7082, 0.000000e+00
  %7085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7086 = extractvalue %dx.types.CBufRet.f32 %7085, 0
  %7087 = extractvalue %dx.types.CBufRet.f32 %7085, 1
  %7088 = extractvalue %dx.types.CBufRet.f32 %7085, 2
  %7089 = extractvalue %dx.types.CBufRet.f32 %7085, 3
  %7090 = select i1 %7083, float %7086, float %7088
  %7091 = select i1 %7084, float %7087, float %7089
  %7092 = fmul fast float %7090, %7081
  %7093 = fmul fast float %7091, %7082
  %7094 = call float @dx.op.unary.f32(i32 6, float %7092)  ; FAbs(value)
  %7095 = call float @dx.op.unary.f32(i32 6, float %7093)  ; FAbs(value)
  %7096 = extractvalue %dx.types.CBufRet.f32 %6390, 0
  %7097 = call float @dx.op.binary.f32(i32 35, float %7094, float %7095)  ; FMax(a,b)
  %7098 = fsub fast float %7096, %7097
  %7099 = call float @dx.op.unary.f32(i32 7, float %7098)  ; Saturate(value)
  %7100 = fcmp fast ogt float %7099, 0.000000e+00
  br i1 %7100, label %7101, label %7142, !dx.controlflow.hints !127

; <label>:7101                                    ; preds = %7043
  %7102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %52, float %7076, float %7077, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7103 = extractvalue %dx.types.ResRet.f32 %7102, 1
  %7104 = fcmp fast ogt float %7103, 0.000000e+00
  br i1 %7104, label %7105, label %7137

; <label>:7105                                    ; preds = %7101
  %7106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %52, float %7076, float %7077, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7107 = extractvalue %dx.types.ResRet.f32 %7106, 0
  %7108 = extractvalue %dx.types.ResRet.f32 %7106, 1
  %7109 = extractvalue %dx.types.ResRet.f32 %7106, 2
  %7110 = extractvalue %dx.types.ResRet.f32 %7106, 3
  %7111 = fsub fast float 1.000000e+00, %7058
  %7112 = fsub fast float %7111, %7069
  %7113 = fmul fast float %7112, 0x400921FB60000000
  %7114 = fadd fast float %7113, 0x3FF921FB60000000
  %7115 = call float @dx.op.unary.f32(i32 13, float %7114)  ; Sin(value)
  %7116 = fadd fast float %7115, -1.000000e+00
  %7117 = fmul fast float %7116, 0x3FD45F3060000000
  %7118 = fmul fast float %7112, 0x401921FB60000000
  %7119 = fadd fast float %7118, 0x400921FB60000000
  %7120 = call float @dx.op.unary.f32(i32 13, float %7119)  ; Sin(value)
  %7121 = fadd fast float %7120, 0x3E7777A5C0000000
  %7122 = fmul fast float %7121, 0x3FC45F3060000000
  %7123 = fmul fast float %7112, 0x4022D97C80000000
  %7124 = fadd fast float %7123, 0x4012D97C80000000
  %7125 = call float @dx.op.unary.f32(i32 13, float %7124)  ; Sin(value)
  %7126 = fadd fast float %7125, 1.000000e+00
  %7127 = fmul fast float %7126, 0x3FBB2995E0000000
  %7128 = fmul fast float %7112, 0x402921FB60000000
  %7129 = fadd fast float %7128, 0x401921FB60000000
  %7130 = call float @dx.op.unary.f32(i32 13, float %7129)  ; Sin(value)
  %7131 = fadd fast float %7130, 0xBE8777A5C0000000
  %7132 = fmul fast float %7131, 0x3FB45F3060000000
  %7133 = call float @dx.op.dot4.f32(i32 56, float %7107, float %7108, float %7109, float %7110, float %7117, float %7122, float %7127, float %7132)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7134 = fmul fast float %7133, 0xBFF7154760000000
  %7135 = call float @dx.op.unary.f32(i32 21, float %7134)  ; Exp(value)
  %7136 = call float @dx.op.unary.f32(i32 7, float %7135)  ; Saturate(value)
  br label %7137

; <label>:7137                                    ; preds = %7105, %7101
  %7138 = phi float [ %7136, %7105 ], [ 1.000000e+00, %7101 ]
  %7139 = fadd fast float %7138, -1.000000e+00
  %7140 = fmul fast float %7139, %7099
  %7141 = fadd fast float %7140, 1.000000e+00
  br label %7142

; <label>:7142                                    ; preds = %7137, %7043
  %7143 = phi float [ %7141, %7137 ], [ 1.000000e+00, %7043 ]
  %7144 = fmul fast float %7143, %7039
  %7145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %7146 = extractvalue %dx.types.CBufRet.f32 %7145, 0
  %7147 = extractvalue %dx.types.CBufRet.f32 %7145, 1
  %7148 = extractvalue %dx.types.CBufRet.f32 %7145, 2
  %7149 = fadd fast float %7146, %194
  %7150 = fadd fast float %7147, %195
  %7151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7152 = extractvalue %dx.types.CBufRet.f32 %7151, 1
  %7153 = fsub fast float -0.000000e+00, %7149
  %7154 = fsub fast float -0.000000e+00, %7150
  %7155 = fsub fast float %5803, %7148
  %7156 = fadd fast float %7155, %7152
  %7157 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7153, float %7154, float %7156)  ; Dot3(ax,ay,az,bx,by,bz)
  %7158 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6376, float %6377, float %6378)  ; Dot3(ax,ay,az,bx,by,bz)
  %7159 = fdiv fast float 1.000000e+00, %7158
  %7160 = fmul fast float %7159, %7157
  %7161 = fmul fast float %6376, %7160
  %7162 = fmul fast float %6377, %7160
  %7163 = fadd fast float %7161, %7149
  %7164 = fadd fast float %7162, %7150
  %7165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7166 = extractvalue %dx.types.CBufRet.f32 %7165, 0
  %7167 = extractvalue %dx.types.CBufRet.f32 %7165, 1
  %7168 = fsub fast float %7163, %7166
  %7169 = fsub fast float %7164, %7167
  %7170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7171 = extractvalue %dx.types.CBufRet.f32 %7170, 2
  %7172 = extractvalue %dx.types.CBufRet.f32 %7170, 3
  %7173 = fmul fast float %7168, %7171
  %7174 = fmul fast float %7169, %7172
  %7175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7176 = extractvalue %dx.types.CBufRet.i32 %7175, 3
  %7177 = icmp eq i32 %7176, 0
  br i1 %7177, label %7183, label %7178

; <label>:7178                                    ; preds = %7142
  %7179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %51, float %7173, float %7174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7180 = extractvalue %dx.types.ResRet.f32 %7179, 0
  %7181 = extractvalue %dx.types.ResRet.f32 %7179, 1
  %7182 = extractvalue %dx.types.ResRet.f32 %7179, 2
  br label %7188

; <label>:7183                                    ; preds = %7142
  %7184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %52, float %7173, float %7174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7185 = extractvalue %dx.types.ResRet.f32 %7184, 0
  %7186 = extractvalue %dx.types.ResRet.f32 %7184, 1
  %7187 = extractvalue %dx.types.ResRet.f32 %7184, 2
  br label %7188

; <label>:7188                                    ; preds = %7183, %7178
  %7189 = phi float [ %7180, %7178 ], [ %7185, %7183 ]
  %7190 = phi float [ %7181, %7178 ], [ %7186, %7183 ]
  %7191 = phi float [ %7182, %7178 ], [ %7187, %7183 ]
  %7192 = extractvalue %dx.types.CBufRet.f32 %7151, 2
  %7193 = fmul fast float %7192, %7189
  %7194 = extractvalue %dx.types.CBufRet.f32 %7151, 0
  %7195 = fsub fast float %7160, %7194
  %7196 = fsub fast float %7195, %7193
  %7197 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7196)  ; FMax(a,b)
  %7198 = fmul fast float %7197, %7190
  %7199 = call float @dx.op.binary.f32(i32 36, float %7191, float %7198)  ; FMin(a,b)
  %7200 = fmul fast float %7199, 0xBFF7154760000000
  %7201 = call float @dx.op.unary.f32(i32 21, float %7200)  ; Exp(value)
  %7202 = fmul fast float %7144, %7201
  br label %7203

; <label>:7203                                    ; preds = %7188, %7038
  %7204 = phi float [ %7202, %7188 ], [ %7039, %7038 ]
  %7205 = call float @dx.op.binary.f32(i32 36, float %7204, float %7204)  ; FMin(a,b)
  %7206 = call float @dx.op.binary.f32(i32 36, float %7204, float %7205)  ; FMin(a,b)
  %7207 = fcmp fast ogt float %7206, 0.000000e+00
  br i1 %7207, label %7208, label %7512, !dx.controlflow.hints !128

; <label>:7208                                    ; preds = %7203
  %7209 = fmul fast float %7204, %6387
  %7210 = fmul fast float %7204, %6388
  %7211 = fmul fast float %7204, %6389
  %7212 = fsub fast float %196, %4961
  %7213 = fcmp fast ogt float %7212, 0.000000e+00
  %7214 = fmul fast float %6376, 5.120000e+02
  %7215 = fmul fast float %6377, 5.120000e+02
  %7216 = fmul fast float %6378, 5.120000e+02
  %7217 = fadd fast float %7216, %196
  %7218 = fsub fast float %4961, %7217
  %7219 = fmul fast float %7218, 2.000000e+00
  %7220 = fadd fast float %7219, %7217
  %7221 = select i1 %7213, float %7220, float %7217
  %7222 = fsub fast float %7221, %196
  %7223 = call float @dx.op.dot3.f32(i32 55, float %7214, float %7215, float %7222, float %7214, float %7215, float %7222)  ; Dot3(ax,ay,az,bx,by,bz)
  %7224 = call float @dx.op.unary.f32(i32 25, float %7223)  ; Rsqrt(value)
  %7225 = fmul fast float %7224, %7214
  %7226 = fmul fast float %7224, %7215
  %7227 = fmul fast float %7224, %7222
  %7228 = fsub fast float %4961, %196
  %7229 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7228)  ; Dot3(ax,ay,az,bx,by,bz)
  %7230 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7225, float %7226, float %7227)  ; Dot3(ax,ay,az,bx,by,bz)
  %7231 = fdiv fast float 1.000000e+00, %7230
  %7232 = fmul fast float %7231, %7229
  %7233 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7212, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7234 = fcmp fast ogt float %7233, 0.000000e+00
  %7235 = fcmp fast olt float %7233, 0.000000e+00
  %7236 = zext i1 %7234 to i32
  %7237 = zext i1 %7235 to i32
  %7238 = sub nsw i32 %7236, %7237
  %7239 = sitofp i32 %7238 to float
  %7240 = fsub fast float %7221, %4961
  %7241 = call float @dx.op.dot3.f32(i32 55, float %7214, float %7215, float %7240, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7242 = fcmp fast ogt float %7241, 0.000000e+00
  %7243 = fcmp fast olt float %7241, 0.000000e+00
  %7244 = zext i1 %7242 to i32
  %7245 = zext i1 %7243 to i32
  %7246 = sub nsw i32 %7244, %7245
  %7247 = sitofp i32 %7246 to float
  %7248 = fcmp fast une float %7239, %7247
  br i1 %7248, label %7249, label %7259

; <label>:7249                                    ; preds = %7208
  %7250 = fmul fast float %7232, %7227
  %7251 = fmul fast float %7232, %7226
  %7252 = fmul fast float %7232, %7225
  %7253 = fmul fast float %7252, %7252
  %7254 = fmul fast float %7251, %7251
  %7255 = fadd fast float %7253, %7254
  %7256 = fmul fast float %7250, %7250
  %7257 = fadd fast float %7255, %7256
  %7258 = call float @dx.op.unary.f32(i32 24, float %7257)  ; Sqrt(value)
  br label %7269

; <label>:7259                                    ; preds = %7208
  %7260 = icmp slt i32 %7238, 0
  br i1 %7260, label %7261, label %7269

; <label>:7261                                    ; preds = %7259
  %7262 = fsub fast float %196, %7221
  %7263 = fmul fast float %7214, %7214
  %7264 = fmul fast float %7215, %7215
  %7265 = fadd fast float %7263, %7264
  %7266 = fmul fast float %7262, %7262
  %7267 = fadd fast float %7265, %7266
  %7268 = call float @dx.op.unary.f32(i32 24, float %7267)  ; Sqrt(value)
  br label %7269

; <label>:7269                                    ; preds = %7261, %7259, %7249
  %7270 = phi float [ %7258, %7249 ], [ %7268, %7261 ], [ 0.000000e+00, %7259 ]
  %7271 = fsub fast float -0.000000e+00, %7270
  %7272 = select i1 %7213, float -0.000000e+00, float %7271
  %7273 = fmul fast float %4962, 0x3FF7154760000000
  %7274 = fmul fast float %7273, %7272
  %7275 = fmul fast float %4963, 0x3FF7154760000000
  %7276 = fmul fast float %7275, %7272
  %7277 = fmul fast float %4964, 0x3FF7154760000000
  %7278 = fmul fast float %7277, %7272
  %7279 = call float @dx.op.unary.f32(i32 21, float %7274)  ; Exp(value)
  %7280 = call float @dx.op.unary.f32(i32 21, float %7276)  ; Exp(value)
  %7281 = call float @dx.op.unary.f32(i32 21, float %7278)  ; Exp(value)
  %7282 = call float @dx.op.unary.f32(i32 7, float %7279)  ; Saturate(value)
  %7283 = call float @dx.op.unary.f32(i32 7, float %7280)  ; Saturate(value)
  %7284 = call float @dx.op.unary.f32(i32 7, float %7281)  ; Saturate(value)
  %7285 = fmul fast float %7209, %7282
  %7286 = fmul fast float %7210, %7283
  %7287 = fmul fast float %7211, %7284
  %7288 = fsub fast float %6376, %5840
  %7289 = fsub fast float %6377, %5841
  %7290 = fsub fast float %6378, %5842
  %7291 = call float @dx.op.dot3.f32(i32 55, float %7288, float %7289, float %7290, float %7288, float %7289, float %7290)  ; Dot3(ax,ay,az,bx,by,bz)
  %7292 = call float @dx.op.unary.f32(i32 25, float %7291)  ; Rsqrt(value)
  %7293 = fmul fast float %7292, %7288
  %7294 = fmul fast float %7292, %7289
  %7295 = fmul fast float %7292, %7290
  %7296 = call float @dx.op.dot3.f32(i32 55, float %6376, float %6377, float %6378, float %5766, float %5767, float %5768)  ; Dot3(ax,ay,az,bx,by,bz)
  %7297 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5844, float %5845, float %7293, float %7294, float %7295)  ; Dot3(ax,ay,az,bx,by,bz)
  %7298 = call float @dx.op.unary.f32(i32 7, float %7296)  ; Saturate(value)
  %7299 = fmul fast float %7298, %7298
  %7300 = fmul fast float %7299, %5861
  %7301 = call float @dx.op.unary.f32(i32 7, float %7300)  ; Saturate(value)
  %7302 = fmul fast float %7301, %7298
  %7303 = call float @dx.op.dot3.f32(i32 55, float %5766, float %5767, float %5768, float %7293, float %7294, float %7295)  ; Dot3(ax,ay,az,bx,by,bz)
  %7304 = fmul fast float %7303, %7303
  %7305 = call float @dx.op.unary.f32(i32 6, float %7296)  ; FAbs(value)
  %7306 = call float @dx.op.binary.f32(i32 35, float %6205, float 0x3F847AE140000000)  ; FMax(a,b)
  %7307 = fmul fast float %7306, %7306
  %7308 = fmul fast float %7307, %7307
  %7309 = fsub fast float 1.000000e+00, %7308
  %7310 = fmul fast float %5848, %5848
  %7311 = fmul fast float %7310, %7309
  %7312 = fadd fast float %7311, %7308
  %7313 = bitcast float %7312 to i32
  %7314 = ashr i32 %7313, 1
  %7315 = add nsw i32 %7314, 532487669
  %7316 = bitcast i32 %7315 to float
  %7317 = fadd fast float %7316, %5848
  %7318 = fmul fast float %7308, %7304
  %7319 = fsub fast float 1.000000e+00, %7304
  %7320 = fadd fast float %7319, %7318
  %7321 = fmul fast float %7305, %7305
  %7322 = fmul fast float %7321, %7309
  %7323 = fadd fast float %7322, %7308
  %7324 = bitcast float %7323 to i32
  %7325 = ashr i32 %7324, 1
  %7326 = add nsw i32 %7325, 532487669
  %7327 = bitcast i32 %7326 to float
  %7328 = fadd fast float %7327, %7305
  %7329 = fmul fast float %7320, %7320
  %7330 = fmul fast float %7329, %7317
  %7331 = fmul fast float %7330, %7328
  %7332 = fdiv fast float 0x3FF0A00000000000, %7331
  %7333 = fmul fast float %7332, %7308
  %7334 = call float @dx.op.unary.f32(i32 6, float %7297)  ; FAbs(value)
  %7335 = fsub fast float 1.000000e+00, %7334
  %7336 = bitcast float %7335 to i32
  %7337 = sitofp i32 %7336 to float
  %7338 = fmul fast float %7337, 5.000000e+00
  %7339 = fadd fast float %7338, 0xC1EFBF8940000000
  %7340 = fptosi float %7339 to i32
  %7341 = bitcast i32 %7340 to float
  %7342 = fsub fast float 1.000000e+00, %5763
  %7343 = fsub fast float 1.000000e+00, %5764
  %7344 = fsub fast float 1.000000e+00, %5846
  %7345 = fmul fast float %7341, %7342
  %7346 = fmul fast float %7341, %7343
  %7347 = fmul fast float %7341, %7344
  %7348 = fadd fast float %7345, %5763
  %7349 = fadd fast float %7346, %5764
  %7350 = fadd fast float %7347, %5846
  br i1 %6108, label %7351, label %7374

; <label>:7351                                    ; preds = %7269
  %7352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %52, float %4489, float %7334, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7353 = extractvalue %dx.types.ResRet.f32 %7352, 0
  %7354 = extractvalue %dx.types.ResRet.f32 %7352, 1
  %7355 = extractvalue %dx.types.ResRet.f32 %7352, 2
  %7356 = fadd fast float %7353, -5.000000e-01
  %7357 = fadd fast float %7354, -5.000000e-01
  %7358 = fadd fast float %7355, -5.000000e-01
  %7359 = fmul fast float %5763, 4.000000e+00
  %7360 = fmul fast float %7359, %7342
  %7361 = fmul fast float %7360, %7356
  %7362 = fmul fast float %5764, 4.000000e+00
  %7363 = fmul fast float %7362, %7343
  %7364 = fmul fast float %7363, %7357
  %7365 = fmul fast float %5846, 4.000000e+00
  %7366 = fmul fast float %7365, %7344
  %7367 = fmul fast float %7366, %7358
  %7368 = fadd fast float %7361, %7348
  %7369 = fadd fast float %7364, %7349
  %7370 = fadd fast float %7367, %7350
  %7371 = call float @dx.op.unary.f32(i32 7, float %7368)  ; Saturate(value)
  %7372 = call float @dx.op.unary.f32(i32 7, float %7369)  ; Saturate(value)
  %7373 = call float @dx.op.unary.f32(i32 7, float %7370)  ; Saturate(value)
  br label %7374

; <label>:7374                                    ; preds = %7351, %7269
  %7375 = phi float [ %7371, %7351 ], [ %7348, %7269 ]
  %7376 = phi float [ %7372, %7351 ], [ %7349, %7269 ]
  %7377 = phi float [ %7373, %7351 ], [ %7350, %7269 ]
  %7378 = fmul fast float %7296, 9.843750e-01
  %7379 = fadd fast float %7378, 7.812500e-03
  %7380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %52, float %7379, float %6098, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7381 = extractvalue %dx.types.ResRet.f32 %7380, 2
  %7382 = extractvalue %dx.types.ResRet.f32 %7380, 3
  %7383 = fmul fast float %7381, %5763
  %7384 = fmul fast float %7381, %5764
  %7385 = fmul fast float %7381, %5846
  %7386 = fadd fast float %7383, %7382
  %7387 = fadd fast float %7384, %7382
  %7388 = fadd fast float %7385, %7382
  br i1 %6108, label %7389, label %7412

; <label>:7389                                    ; preds = %7374
  %7390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %52, float %4489, float %7296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7391 = extractvalue %dx.types.ResRet.f32 %7390, 0
  %7392 = extractvalue %dx.types.ResRet.f32 %7390, 1
  %7393 = extractvalue %dx.types.ResRet.f32 %7390, 2
  %7394 = fadd fast float %7391, -5.000000e-01
  %7395 = fadd fast float %7392, -5.000000e-01
  %7396 = fadd fast float %7393, -5.000000e-01
  %7397 = fmul fast float %5763, 4.000000e+00
  %7398 = fmul fast float %7397, %7342
  %7399 = fmul fast float %7398, %7394
  %7400 = fmul fast float %5764, 4.000000e+00
  %7401 = fmul fast float %7400, %7343
  %7402 = fmul fast float %7401, %7395
  %7403 = fmul fast float %5846, 4.000000e+00
  %7404 = fmul fast float %7403, %7344
  %7405 = fmul fast float %7404, %7396
  %7406 = fadd fast float %7399, %7386
  %7407 = fadd fast float %7402, %7387
  %7408 = fadd fast float %7405, %7388
  %7409 = call float @dx.op.unary.f32(i32 7, float %7406)  ; Saturate(value)
  %7410 = call float @dx.op.unary.f32(i32 7, float %7407)  ; Saturate(value)
  %7411 = call float @dx.op.unary.f32(i32 7, float %7408)  ; Saturate(value)
  br label %7412

; <label>:7412                                    ; preds = %7389, %7374
  %7413 = phi float [ %7409, %7389 ], [ %7386, %7374 ]
  %7414 = phi float [ %7410, %7389 ], [ %7387, %7374 ]
  %7415 = phi float [ %7411, %7389 ], [ %7388, %7374 ]
  %7416 = call float @dx.op.binary.f32(i32 35, float %7414, float %7415)  ; FMax(a,b)
  %7417 = call float @dx.op.binary.f32(i32 35, float %7413, float %7416)  ; FMax(a,b)
  %7418 = fsub fast float 1.000000e+00, %7417
  %7419 = fsub fast float -0.000000e+00, %5766
  %7420 = fsub fast float -0.000000e+00, %5767
  %7421 = fsub fast float -0.000000e+00, %5768
  %7422 = call float @dx.op.dot3.f32(i32 55, float %6376, float %6377, float %6378, float %7419, float %7420, float %7421)  ; Dot3(ax,ay,az,bx,by,bz)
  %7423 = call float @dx.op.unary.f32(i32 7, float %7422)  ; Saturate(value)
  %7424 = fmul fast float %7423, 9.843750e-01
  %7425 = fadd fast float %7424, 7.812500e-03
  %7426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %52, float %7425, float %6098, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7427 = extractvalue %dx.types.ResRet.f32 %7426, 2
  %7428 = extractvalue %dx.types.ResRet.f32 %7426, 3
  %7429 = fmul fast float %7427, %5763
  %7430 = fmul fast float %7427, %5764
  %7431 = fmul fast float %7427, %5846
  %7432 = fadd fast float %7429, %7428
  %7433 = fadd fast float %7430, %7428
  %7434 = fadd fast float %7431, %7428
  br i1 %6108, label %7435, label %7458

; <label>:7435                                    ; preds = %7412
  %7436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %52, float %4489, float %7423, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7437 = extractvalue %dx.types.ResRet.f32 %7436, 0
  %7438 = extractvalue %dx.types.ResRet.f32 %7436, 1
  %7439 = extractvalue %dx.types.ResRet.f32 %7436, 2
  %7440 = fadd fast float %7437, -5.000000e-01
  %7441 = fadd fast float %7438, -5.000000e-01
  %7442 = fadd fast float %7439, -5.000000e-01
  %7443 = fmul fast float %5763, 4.000000e+00
  %7444 = fmul fast float %7443, %7342
  %7445 = fmul fast float %7444, %7440
  %7446 = fmul fast float %5764, 4.000000e+00
  %7447 = fmul fast float %7446, %7343
  %7448 = fmul fast float %7447, %7441
  %7449 = fmul fast float %5846, 4.000000e+00
  %7450 = fmul fast float %7449, %7344
  %7451 = fmul fast float %7450, %7442
  %7452 = fadd fast float %7445, %7432
  %7453 = fadd fast float %7448, %7433
  %7454 = fadd fast float %7451, %7434
  %7455 = call float @dx.op.unary.f32(i32 7, float %7452)  ; Saturate(value)
  %7456 = call float @dx.op.unary.f32(i32 7, float %7453)  ; Saturate(value)
  %7457 = call float @dx.op.unary.f32(i32 7, float %7454)  ; Saturate(value)
  br label %7458

; <label>:7458                                    ; preds = %7435, %7412
  %7459 = phi float [ %7455, %7435 ], [ %7432, %7412 ]
  %7460 = phi float [ %7456, %7435 ], [ %7433, %7412 ]
  %7461 = phi float [ %7457, %7435 ], [ %7434, %7412 ]
  %7462 = call float @dx.op.binary.f32(i32 35, float %7460, float %7461)  ; FMax(a,b)
  %7463 = call float @dx.op.binary.f32(i32 35, float %7459, float %7462)  ; FMax(a,b)
  %7464 = fsub fast float 1.000000e+00, %7463
  %7465 = fmul fast float %7464, %7423
  %7466 = fmul fast float %7465, %4580
  %7467 = fmul fast float %7465, %4581
  %7468 = fmul fast float %7465, %4582
  %7469 = fmul fast float %7375, %7333
  %7470 = fmul fast float %7376, %7333
  %7471 = fmul fast float %7377, %7333
  %7472 = fsub fast float 1.000000e+00, %7297
  %7473 = bitcast float %7472 to i32
  %7474 = sitofp i32 %7473 to float
  %7475 = fmul fast float %7474, 5.000000e+00
  %7476 = fadd fast float %7475, 0xC1EFBF8940000000
  %7477 = fptosi float %7476 to i32
  %7478 = bitcast i32 %7477 to float
  %7479 = fmul fast float %7478, %4490
  %7480 = fmul fast float %7418, %7479
  %7481 = fmul fast float %7480, %6158
  %7482 = fmul fast float %7480, %6159
  %7483 = fmul fast float %7480, %6160
  %7484 = fmul fast float %7418, %7302
  %7485 = fadd fast float %7481, %7469
  %7486 = fadd fast float %7482, %7470
  %7487 = fadd fast float %7483, %7471
  %7488 = fadd fast float %7466, %7484
  %7489 = fadd fast float %7467, %7484
  %7490 = fadd fast float %7468, %7484
  %7491 = fmul fast float %7488, %7285
  %7492 = fmul fast float %7489, %7286
  %7493 = fmul fast float %7490, %7287
  %7494 = fmul fast float %7302, %7285
  %7495 = fmul fast float %7494, %7485
  %7496 = fmul fast float %7302, %7286
  %7497 = fmul fast float %7496, %7486
  %7498 = fmul fast float %7302, %7287
  %7499 = fmul fast float %7498, %7487
  %7500 = fadd fast float %7491, %6142
  %7501 = fmul fast float %7500, %4486
  %7502 = fadd fast float %7492, %6143
  %7503 = fmul fast float %7502, %4486
  %7504 = fadd fast float %7493, %6144
  %7505 = fmul fast float %7504, %4486
  %7506 = fadd fast float %7495, %6362
  %7507 = fmul fast float %7506, %4486
  %7508 = fadd fast float %7497, %6366
  %7509 = fmul fast float %7508, %4486
  %7510 = fadd fast float %7499, %6370
  %7511 = fmul fast float %7510, %4486
  br label %7512

; <label>:7512                                    ; preds = %7458, %7203, %6346
  %7513 = phi float [ %6363, %6346 ], [ %6363, %7203 ], [ %7507, %7458 ]
  %7514 = phi float [ %6367, %6346 ], [ %6367, %7203 ], [ %7509, %7458 ]
  %7515 = phi float [ %6371, %6346 ], [ %6371, %7203 ], [ %7511, %7458 ]
  %7516 = phi float [ %6235, %6346 ], [ %6235, %7203 ], [ %7501, %7458 ]
  %7517 = phi float [ %6236, %6346 ], [ %6236, %7203 ], [ %7503, %7458 ]
  %7518 = phi float [ %6237, %6346 ], [ %6237, %7203 ], [ %7505, %7458 ]
  %7519 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7520 = extractvalue %dx.types.CBufRet.i32 %7519, 0
  %7521 = icmp eq i32 %7520, 0
  br i1 %7521, label %8196, label %7522

; <label>:7522                                    ; preds = %7512
  %7523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7524 = extractvalue %dx.types.CBufRet.f32 %7523, 2
  %7525 = extractvalue %dx.types.CBufRet.f32 %7523, 3
  %7526 = fmul fast float %7524, %115
  %7527 = fmul fast float %7525, %116
  %7528 = fptoui float %7526 to i32
  %7529 = fptoui float %7527 to i32
  %7530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7531 = extractvalue %dx.types.CBufRet.f32 %7530, 0
  %7532 = extractvalue %dx.types.CBufRet.f32 %7530, 2
  %7533 = extractvalue %dx.types.CBufRet.f32 %7530, 3
  %7534 = fadd fast float %106, -4.000000e+00
  %7535 = call float @dx.op.binary.f32(i32 35, float %7534, float 0.000000e+00)  ; FMax(a,b)
  %7536 = fadd fast float %7535, %7531
  %7537 = fmul fast float %7536, %7532
  %7538 = call float @dx.op.unary.f32(i32 23, float %7537)  ; Log(value)
  %7539 = fmul fast float %7538, %7533
  %7540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7541 = extractvalue %dx.types.CBufRet.f32 %7540, 2
  %7542 = fmul fast float %7539, %7541
  %7543 = call float @dx.op.unary.f32(i32 7, float %7542)  ; Saturate(value)
  %7544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7545 = extractvalue %dx.types.CBufRet.i32 %7544, 1
  %7546 = add i32 %7545, -1
  %7547 = uitofp i32 %7545 to float
  %7548 = fmul fast float %7547, %7543
  %7549 = fptoui float %7548 to i32
  %7550 = call i32 @dx.op.binary.i32(i32 40, i32 %7549, i32 %7546)  ; UMin(a,b)
  %7551 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7552 = extractvalue %dx.types.CBufRet.i32 %7551, 2
  %7553 = extractvalue %dx.types.CBufRet.i32 %7551, 3
  %7554 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7529, i32 %7552, i32 %7528)  ; UMad(a,b,c)
  %7555 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7550, i32 %7553, i32 %7554)  ; UMad(a,b,c)
  %7556 = add nsw i32 %7520, -1
  %7557 = call i32 @dx.op.binary.i32(i32 37, i32 %7556, i32 0)  ; IMax(a,b)
  %7558 = call float @dx.op.binary.f32(i32 35, float %106, float 0.000000e+00)  ; FMax(a,b)
  %7559 = fptoui float %7558 to i32
  %7560 = lshr i32 %7559, 5
  %7561 = call i32 @dx.op.binary.i32(i32 40, i32 %7560, i32 8191)  ; UMin(a,b)
  %7562 = shl i32 %7561, 2
  %7563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7562, i32 undef)  ; BufferLoad(srv,index,wot)
  %7564 = extractvalue %dx.types.ResRet.i32 %7563, 0
  %7565 = lshr i32 %7564, 16
  %7566 = and i32 %7564, 65535
  %7567 = lshr i32 %7564, 21
  %7568 = lshr i32 %7566, 5
  %7569 = call i32 @dx.op.binary.i32(i32 40, i32 %7568, i32 %7557)  ; UMin(a,b)
  %7570 = icmp ugt i32 %7567, %7569
  br i1 %7570, label %8196, label %7571

; <label>:7571                                    ; preds = %7522
  br label %7572

; <label>:7572                                    ; preds = %8186, %7571
  %7573 = phi i32 [ %8193, %8186 ], [ %7567, %7571 ]
  %7574 = phi float [ %8187, %8186 ], [ %7513, %7571 ]
  %7575 = phi float [ %8188, %8186 ], [ %7514, %7571 ]
  %7576 = phi float [ %8189, %8186 ], [ %7515, %7571 ]
  %7577 = phi float [ %8190, %8186 ], [ %7516, %7571 ]
  %7578 = phi float [ %8191, %8186 ], [ %7517, %7571 ]
  %7579 = phi float [ %8192, %8186 ], [ %7518, %7571 ]
  %7580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7581 = extractvalue %dx.types.CBufRet.i32 %7580, 0
  %7582 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7555, i32 %7581, i32 %7573)  ; UMad(a,b,c)
  %7583 = shl i32 %7582, 2
  %7584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7583, i32 undef)  ; BufferLoad(srv,index,wot)
  %7585 = extractvalue %dx.types.ResRet.i32 %7584, 0
  %7586 = shl i32 %7573, 5
  %7587 = sub nsw i32 %7565, %7586
  %7588 = call i32 @dx.op.binary.i32(i32 37, i32 %7587, i32 0)  ; IMax(a,b)
  %7589 = call i32 @dx.op.binary.i32(i32 38, i32 %7588, i32 31)  ; IMin(a,b)
  %7590 = sub nsw i32 1, %7565
  %7591 = add nsw i32 %7590, %7566
  %7592 = call i32 @dx.op.binary.i32(i32 37, i32 %7591, i32 0)  ; IMax(a,b)
  %7593 = call i32 @dx.op.binary.i32(i32 38, i32 %7592, i32 32)  ; IMin(a,b)
  %7594 = and i32 %7593, 31
  %7595 = shl i32 -1, %7594
  %7596 = xor i32 %7595, -1
  %7597 = and i32 %7589, 31
  %7598 = shl i32 %7596, %7597
  %7599 = icmp eq i32 %7593, 32
  %7600 = select i1 %7599, i32 -1, i32 %7598
  %7601 = and i32 %7600, %7585
  %7602 = icmp eq i32 %7601, 0
  br i1 %7602, label %8186, label %7603

; <label>:7603                                    ; preds = %7572
  br label %7604

; <label>:7604                                    ; preds = %7738, %7603
  %7605 = phi i32 [ %7616, %7738 ], [ %7601, %7603 ]
  %7606 = phi float [ %7739, %7738 ], [ %7574, %7603 ]
  %7607 = phi float [ %7740, %7738 ], [ %7575, %7603 ]
  %7608 = phi float [ %7741, %7738 ], [ %7576, %7603 ]
  %7609 = phi float [ %7742, %7738 ], [ %7577, %7603 ]
  %7610 = phi float [ %7743, %7738 ], [ %7578, %7603 ]
  %7611 = phi float [ %7744, %7738 ], [ %7579, %7603 ]
  %7612 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7605)  ; FirstbitLo(value)
  %7613 = add i32 %7612, %7586
  %7614 = and i32 %7612, 31
  %7615 = shl i32 1, %7614
  %7616 = xor i32 %7615, %7605
  %7617 = mul i32 %7613, 112
  %7618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7617, i32 undef)  ; BufferLoad(srv,index,wot)
  %7619 = extractvalue %dx.types.ResRet.f32 %7618, 0
  %7620 = extractvalue %dx.types.ResRet.f32 %7618, 1
  %7621 = extractvalue %dx.types.ResRet.f32 %7618, 2
  %7622 = or i32 %7617, 12
  %7623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7622, i32 undef)  ; BufferLoad(srv,index,wot)
  %7624 = extractvalue %dx.types.ResRet.f32 %7623, 0
  %7625 = add i32 %7617, 16
  %7626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7625, i32 undef)  ; BufferLoad(srv,index,wot)
  %7627 = extractvalue %dx.types.ResRet.f32 %7626, 0
  %7628 = extractvalue %dx.types.ResRet.f32 %7626, 1
  %7629 = extractvalue %dx.types.ResRet.f32 %7626, 2
  %7630 = add i32 %7617, 28
  %7631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7630, i32 undef)  ; BufferLoad(srv,index,wot)
  %7632 = extractvalue %dx.types.ResRet.i32 %7631, 0
  %7633 = add i32 %7617, 44
  %7634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7633, i32 undef)  ; BufferLoad(srv,index,wot)
  %7635 = extractvalue %dx.types.ResRet.f32 %7634, 0
  %7636 = add i32 %7617, 48
  %7637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7636, i32 undef)  ; BufferLoad(srv,index,wot)
  %7638 = extractvalue %dx.types.ResRet.f32 %7637, 0
  %7639 = extractvalue %dx.types.ResRet.f32 %7637, 1
  %7640 = extractvalue %dx.types.ResRet.f32 %7637, 2
  %7641 = extractvalue %dx.types.ResRet.f32 %7637, 3
  %7642 = add i32 %7617, 64
  %7643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7642, i32 undef)  ; BufferLoad(srv,index,wot)
  %7644 = extractvalue %dx.types.ResRet.f32 %7643, 0
  %7645 = extractvalue %dx.types.ResRet.f32 %7643, 1
  %7646 = extractvalue %dx.types.ResRet.f32 %7643, 2
  %7647 = extractvalue %dx.types.ResRet.f32 %7643, 3
  %7648 = add i32 %7617, 80
  %7649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7648, i32 undef)  ; BufferLoad(srv,index,wot)
  %7650 = extractvalue %dx.types.ResRet.f32 %7649, 1
  %7651 = extractvalue %dx.types.ResRet.f32 %7649, 2
  %7652 = add i32 %7617, 92
  %7653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7652, i32 undef)  ; BufferLoad(srv,index,wot)
  %7654 = extractvalue %dx.types.ResRet.i32 %7653, 0
  %7655 = call float @dx.op.dot3.f32(i32 55, float %7619, float %7620, float %7621, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7656 = select i1 %266, float %7650, float %7619
  %7657 = select i1 %266, float %7655, float %7620
  %7658 = select i1 %266, float %7651, float %7621
  %7659 = and i32 %7654, 65535
  %7660 = uitofp i32 %7659 to float
  %7661 = lshr i32 %7654, 16
  %7662 = uitofp i32 %7661 to float
  %7663 = and i32 %7632, 65535
  %7664 = and i32 %7632, 50331648
  %7665 = icmp eq i32 %7664, 33554432
  %7666 = fsub fast float %7638, %194
  %7667 = fsub fast float %7639, %195
  %7668 = fsub fast float %7640, %196
  %7669 = call float @dx.op.dot3.f32(i32 55, float %7666, float %7667, float %7668, float %7666, float %7667, float %7668)  ; Dot3(ax,ay,az,bx,by,bz)
  %7670 = call float @dx.op.unary.f32(i32 24, float %7669)  ; Sqrt(value)
  %7671 = fdiv fast float 1.000000e+00, %7670
  %7672 = fmul fast float %7671, %7666
  %7673 = fmul fast float %7671, %7667
  %7674 = fmul fast float %7671, %7668
  %7675 = fadd fast float %7670, %7624
  %7676 = fdiv fast float 1.000000e+00, %7675
  %7677 = fmul float %7635, %7676
  %7678 = fmul float %7677, %7677
  %7679 = call float @dx.op.unary.f32(i32 7, float %7678)  ; Saturate(value)
  br i1 %7665, label %7680, label %7701

; <label>:7680                                    ; preds = %7604
  %7681 = fmul fast float %7646, %7627
  %7682 = fmul fast float %7646, %7628
  %7683 = fmul fast float %7646, %7629
  %7684 = fadd fast float %7666, %7681
  %7685 = fadd fast float %7667, %7682
  %7686 = fadd fast float %7668, %7683
  %7687 = call float @dx.op.dot3.f32(i32 55, float %7684, float %7685, float %7686, float %7684, float %7685, float %7686)  ; Dot3(ax,ay,az,bx,by,bz)
  %7688 = call float @dx.op.unary.f32(i32 25, float %7687)  ; Rsqrt(value)
  %7689 = fmul fast float %7688, %7684
  %7690 = fmul fast float %7688, %7685
  %7691 = fmul fast float %7688, %7686
  %7692 = fsub fast float %194, %7638
  %7693 = fsub fast float %195, %7639
  %7694 = fsub fast float %196, %7640
  %7695 = fsub fast float -0.000000e+00, %7692
  %7696 = fsub fast float -0.000000e+00, %7693
  %7697 = fsub fast float -0.000000e+00, %7694
  %7698 = call float @dx.op.dot3.f32(i32 55, float %7695, float %7696, float %7697, float %7627, float %7628, float %7629)  ; Dot3(ax,ay,az,bx,by,bz)
  %7699 = fcmp fast ogt float %7698, 0.000000e+00
  %7700 = uitofp i1 %7699 to float
  br label %7701

; <label>:7701                                    ; preds = %7680, %7604
  %7702 = phi float [ %7700, %7680 ], [ 1.000000e+00, %7604 ]
  %7703 = phi float [ %7689, %7680 ], [ %7672, %7604 ]
  %7704 = phi float [ %7690, %7680 ], [ %7673, %7604 ]
  %7705 = phi float [ %7691, %7680 ], [ %7674, %7604 ]
  %7706 = call float @dx.op.dot3.f32(i32 55, float %7627, float %7628, float %7629, float %7703, float %7704, float %7705)  ; Dot3(ax,ay,az,bx,by,bz)
  %7707 = fmul fast float %7706, %7706
  %7708 = call float @dx.op.unary.f32(i32 7, float %7707)  ; Saturate(value)
  %7709 = fsub fast float 1.000000e+00, %7708
  %7710 = fmul fast float %7709, 5.000000e-01
  %7711 = fcmp fast ogt float %7706, 0.000000e+00
  %7712 = fsub fast float 1.000000e+00, %7710
  %7713 = select i1 %7711, float %7710, float %7712
  %7714 = fmul fast float %7713, %7662
  %7715 = fadd fast float %7714, %7660
  %7716 = fmul fast float %7715, 0x3EF0001000000000
  %7717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %52, float %7716, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7718 = extractvalue %dx.types.ResRet.f32 %7717, 0
  %7719 = fmul fast float %7706, %7644
  %7720 = fadd fast float %7719, %7645
  %7721 = call float @dx.op.unary.f32(i32 7, float %7720)  ; Saturate(value)
  %7722 = select i1 %7665, float 1.000000e+00, float %7721
  %7723 = select i1 %7665, float %7721, float 1.000000e+00
  %7724 = fmul fast float %7670, %7641
  %7725 = fsub fast float 1.000000e+00, %7724
  %7726 = fmul fast float %7725, %7647
  %7727 = call float @dx.op.unary.f32(i32 7, float %7726)  ; Saturate(value)
  %7728 = fmul fast float %7727, %7723
  %7729 = fmul fast float %7728, 2.000000e+00
  %7730 = fsub fast float 3.000000e+00, %7729
  %7731 = fmul fast float %7718, %7702
  %7732 = fmul fast float %7728, %7728
  %7733 = fmul fast float %7732, %7731
  %7734 = fmul fast float %7733, %7730
  %7735 = call float @dx.op.binary.f32(i32 36, float %7734, float %7734)  ; FMin(a,b)
  %7736 = call float @dx.op.binary.f32(i32 36, float %7734, float %7735)  ; FMin(a,b)
  %7737 = fcmp fast ogt float %7736, 0.000000e+00
  br i1 %7737, label %7746, label %7738, !dx.controlflow.hints !129

; <label>:7738                                    ; preds = %8134, %7846, %7701
  %7739 = phi float [ %7606, %7846 ], [ %7606, %7701 ], [ %8182, %8134 ]
  %7740 = phi float [ %7607, %7846 ], [ %7607, %7701 ], [ %8183, %8134 ]
  %7741 = phi float [ %7608, %7846 ], [ %7608, %7701 ], [ %8184, %8134 ]
  %7742 = phi float [ %7609, %7846 ], [ %7609, %7701 ], [ %8173, %8134 ]
  %7743 = phi float [ %7610, %7846 ], [ %7610, %7701 ], [ %8174, %8134 ]
  %7744 = phi float [ %7611, %7846 ], [ %7611, %7701 ], [ %8175, %8134 ]
  %7745 = icmp eq i32 %7605, %7615
  br i1 %7745, label %8185, label %7604

; <label>:7746                                    ; preds = %7701
  %7747 = icmp eq i32 %7663, 255
  br i1 %7747, label %7846, label %7748, !dx.controlflow.hints !130

; <label>:7748                                    ; preds = %7746
  %7749 = mul nuw nsw i32 %7663, 176
  %7750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7749, i32 undef)  ; BufferLoad(srv,index,wot)
  %7751 = extractvalue %dx.types.ResRet.f32 %7750, 0
  %7752 = extractvalue %dx.types.ResRet.f32 %7750, 1
  %7753 = extractvalue %dx.types.ResRet.f32 %7750, 2
  %7754 = extractvalue %dx.types.ResRet.f32 %7750, 3
  %7755 = add nuw nsw i32 %7749, 16
  %7756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7755, i32 undef)  ; BufferLoad(srv,index,wot)
  %7757 = extractvalue %dx.types.ResRet.f32 %7756, 0
  %7758 = extractvalue %dx.types.ResRet.f32 %7756, 1
  %7759 = add nuw nsw i32 %7749, 32
  %7760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7759, i32 undef)  ; BufferLoad(srv,index,wot)
  %7761 = extractvalue %dx.types.ResRet.f32 %7760, 0
  %7762 = extractvalue %dx.types.ResRet.f32 %7760, 1
  %7763 = extractvalue %dx.types.ResRet.f32 %7760, 2
  %7764 = add nuw nsw i32 %7749, 48
  %7765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7764, i32 undef)  ; BufferLoad(srv,index,wot)
  %7766 = extractvalue %dx.types.ResRet.f32 %7765, 0
  %7767 = extractvalue %dx.types.ResRet.f32 %7765, 1
  %7768 = extractvalue %dx.types.ResRet.f32 %7765, 2
  %7769 = extractvalue %dx.types.ResRet.f32 %7765, 3
  %7770 = add nuw nsw i32 %7749, 64
  %7771 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7770, i32 undef)  ; BufferLoad(srv,index,wot)
  %7772 = extractvalue %dx.types.ResRet.f32 %7771, 0
  %7773 = extractvalue %dx.types.ResRet.f32 %7771, 1
  %7774 = extractvalue %dx.types.ResRet.f32 %7771, 2
  %7775 = extractvalue %dx.types.ResRet.f32 %7771, 3
  %7776 = add nuw nsw i32 %7749, 80
  %7777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7776, i32 undef)  ; BufferLoad(srv,index,wot)
  %7778 = extractvalue %dx.types.ResRet.f32 %7777, 0
  %7779 = extractvalue %dx.types.ResRet.f32 %7777, 1
  %7780 = extractvalue %dx.types.ResRet.f32 %7777, 2
  %7781 = extractvalue %dx.types.ResRet.f32 %7777, 3
  %7782 = add nuw nsw i32 %7749, 96
  %7783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7782, i32 undef)  ; BufferLoad(srv,index,wot)
  %7784 = extractvalue %dx.types.ResRet.f32 %7783, 0
  %7785 = extractvalue %dx.types.ResRet.f32 %7783, 1
  %7786 = extractvalue %dx.types.ResRet.f32 %7783, 2
  %7787 = extractvalue %dx.types.ResRet.f32 %7783, 3
  %7788 = bitcast float %7758 to i32
  %7789 = fmul fast float %7763, %122
  %7790 = fmul fast float %7763, %123
  %7791 = fmul fast float %7763, %124
  %7792 = fadd fast float %7789, %194
  %7793 = fadd fast float %7790, %195
  %7794 = fadd fast float %7791, %196
  %7795 = fmul fast float %7792, %7766
  %7796 = call float @dx.op.tertiary.f32(i32 46, float %7793, float %7772, float %7795)  ; FMad(a,b,c)
  %7797 = call float @dx.op.tertiary.f32(i32 46, float %7794, float %7778, float %7796)  ; FMad(a,b,c)
  %7798 = fadd fast float %7797, %7784
  %7799 = fmul fast float %7792, %7767
  %7800 = call float @dx.op.tertiary.f32(i32 46, float %7793, float %7773, float %7799)  ; FMad(a,b,c)
  %7801 = call float @dx.op.tertiary.f32(i32 46, float %7794, float %7779, float %7800)  ; FMad(a,b,c)
  %7802 = fadd fast float %7801, %7785
  %7803 = fmul fast float %7792, %7768
  %7804 = call float @dx.op.tertiary.f32(i32 46, float %7793, float %7774, float %7803)  ; FMad(a,b,c)
  %7805 = call float @dx.op.tertiary.f32(i32 46, float %7794, float %7780, float %7804)  ; FMad(a,b,c)
  %7806 = fadd fast float %7805, %7786
  %7807 = fmul fast float %7792, %7769
  %7808 = call float @dx.op.tertiary.f32(i32 46, float %7793, float %7775, float %7807)  ; FMad(a,b,c)
  %7809 = call float @dx.op.tertiary.f32(i32 46, float %7794, float %7781, float %7808)  ; FMad(a,b,c)
  %7810 = fadd fast float %7809, %7787
  %7811 = fdiv fast float %7798, %7810
  %7812 = fdiv fast float %7802, %7810
  %7813 = fdiv fast float %7806, %7810
  %7814 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7813)  ; FMax(a,b)
  %7815 = fmul fast float %279, 0x401921FB60000000
  %7816 = call float @dx.op.unary.f32(i32 13, float %7815)  ; Sin(value)
  %7817 = call float @dx.op.unary.f32(i32 12, float %7815)  ; Cos(value)
  %7818 = fsub fast float -0.000000e+00, %7816
  %7819 = fmul fast float %7753, 5.000000e-01
  %7820 = call float @dx.op.dot2.f32(i32 54, float %279, float %279, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7821 = call float @dx.op.unary.f32(i32 22, float %7820)  ; Frc(value)
  %7822 = fmul fast float %7821, 0x404A7DD040000000
  %7823 = call float @dx.op.unary.f32(i32 22, float %7822)  ; Frc(value)
  %7824 = fmul fast float %7823, %7762
  %7825 = fadd fast float %7824, %7819
  %7826 = call float @dx.op.tertiary.f32(i32 46, float %7825, float %7818, float 0.000000e+00)  ; FMad(a,b,c)
  %7827 = call float @dx.op.tertiary.f32(i32 46, float %7825, float %7817, float 0.000000e+00)  ; FMad(a,b,c)
  %7828 = fadd fast float %7826, %7811
  %7829 = fadd fast float %7827, %7812
  %7830 = fmul fast float %7828, %7757
  %7831 = fmul fast float %7829, %7757
  %7832 = call float @dx.op.binary.f32(i32 35, float %7830, float %7753)  ; FMax(a,b)
  %7833 = call float @dx.op.binary.f32(i32 35, float %7831, float %7753)  ; FMax(a,b)
  %7834 = call float @dx.op.binary.f32(i32 36, float %7832, float %7754)  ; FMin(a,b)
  %7835 = call float @dx.op.binary.f32(i32 36, float %7833, float %7754)  ; FMin(a,b)
  %7836 = fadd fast float %7834, %7751
  %7837 = fadd fast float %7835, %7752
  %7838 = uitofp i32 %7788 to float
  %7839 = fadd fast float %7814, %7761
  %7840 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %54, float %7836, float %7837, float %7838, float undef, i32 0, i32 0, i32 undef, float %7839)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7841 = extractvalue %dx.types.ResRet.f32 %7840, 0
  %7842 = fadd fast float %7841, -1.000000e+00
  %7843 = fmul fast float %7842, %7722
  %7844 = fadd fast float %7843, 1.000000e+00
  %7845 = fmul fast float %7844, %7734
  br label %7846

; <label>:7846                                    ; preds = %7748, %7746
  %7847 = phi float [ %7845, %7748 ], [ %7734, %7746 ]
  %7848 = call float @dx.op.binary.f32(i32 36, float %7847, float %7847)  ; FMin(a,b)
  %7849 = call float @dx.op.binary.f32(i32 36, float %7847, float %7848)  ; FMin(a,b)
  %7850 = fcmp fast ogt float %7849, 0.000000e+00
  br i1 %7850, label %7851, label %7738, !dx.controlflow.hints !131

; <label>:7851                                    ; preds = %7846
  %7852 = fmul fast float %7847, %7656
  %7853 = fmul fast float %7847, %7657
  %7854 = fmul fast float %7847, %7658
  %7855 = fsub fast float %7640, %4961
  %7856 = fcmp fast ogt float %7855, 0.000000e+00
  %7857 = fsub fast float %196, %4961
  %7858 = fcmp fast ogt float %7857, 0.000000e+00
  %7859 = xor i1 %7858, %7856
  %7860 = fsub fast float %4961, %7640
  %7861 = fmul fast float %7860, 2.000000e+00
  %7862 = fadd fast float %7861, %7640
  %7863 = select i1 %7859, float %7640, float %7862
  %7864 = fsub fast float %7863, %196
  %7865 = call float @dx.op.dot3.f32(i32 55, float %7666, float %7667, float %7864, float %7666, float %7667, float %7864)  ; Dot3(ax,ay,az,bx,by,bz)
  %7866 = call float @dx.op.unary.f32(i32 25, float %7865)  ; Rsqrt(value)
  %7867 = fmul fast float %7866, %7666
  %7868 = fmul fast float %7866, %7667
  %7869 = fmul fast float %7866, %7864
  %7870 = fsub fast float %4961, %196
  %7871 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7870)  ; Dot3(ax,ay,az,bx,by,bz)
  %7872 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7867, float %7868, float %7869)  ; Dot3(ax,ay,az,bx,by,bz)
  %7873 = fdiv fast float 1.000000e+00, %7872
  %7874 = fmul fast float %7873, %7871
  %7875 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7857, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7876 = fcmp fast ogt float %7875, 0.000000e+00
  %7877 = fcmp fast olt float %7875, 0.000000e+00
  %7878 = zext i1 %7876 to i32
  %7879 = zext i1 %7877 to i32
  %7880 = sub nsw i32 %7878, %7879
  %7881 = sitofp i32 %7880 to float
  %7882 = fsub fast float %7863, %4961
  %7883 = call float @dx.op.dot3.f32(i32 55, float %7666, float %7667, float %7882, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7884 = fcmp fast ogt float %7883, 0.000000e+00
  %7885 = fcmp fast olt float %7883, 0.000000e+00
  %7886 = zext i1 %7884 to i32
  %7887 = zext i1 %7885 to i32
  %7888 = sub nsw i32 %7886, %7887
  %7889 = sitofp i32 %7888 to float
  %7890 = fcmp fast une float %7881, %7889
  br i1 %7890, label %7891, label %7901

; <label>:7891                                    ; preds = %7851
  %7892 = fmul fast float %7874, %7869
  %7893 = fmul fast float %7874, %7868
  %7894 = fmul fast float %7874, %7867
  %7895 = fmul fast float %7894, %7894
  %7896 = fmul fast float %7893, %7893
  %7897 = fadd fast float %7895, %7896
  %7898 = fmul fast float %7892, %7892
  %7899 = fadd fast float %7897, %7898
  %7900 = call float @dx.op.unary.f32(i32 24, float %7899)  ; Sqrt(value)
  br label %7913

; <label>:7901                                    ; preds = %7851
  %7902 = icmp slt i32 %7880, 0
  br i1 %7902, label %7903, label %7913

; <label>:7903                                    ; preds = %7901
  %7904 = fsub fast float %194, %7638
  %7905 = fsub fast float %195, %7639
  %7906 = fsub fast float %196, %7863
  %7907 = fmul fast float %7904, %7904
  %7908 = fmul fast float %7905, %7905
  %7909 = fadd fast float %7907, %7908
  %7910 = fmul fast float %7906, %7906
  %7911 = fadd fast float %7909, %7910
  %7912 = call float @dx.op.unary.f32(i32 24, float %7911)  ; Sqrt(value)
  br label %7913

; <label>:7913                                    ; preds = %7903, %7901, %7891
  %7914 = phi float [ %7900, %7891 ], [ %7912, %7903 ], [ 0.000000e+00, %7901 ]
  %7915 = and i1 %7858, %7856
  %7916 = fsub fast float -0.000000e+00, %7914
  %7917 = select i1 %7915, float -0.000000e+00, float %7916
  %7918 = fmul fast float %4962, 0x3FF7154760000000
  %7919 = fmul fast float %7918, %7917
  %7920 = fmul fast float %4963, 0x3FF7154760000000
  %7921 = fmul fast float %7920, %7917
  %7922 = fmul fast float %4964, 0x3FF7154760000000
  %7923 = fmul fast float %7922, %7917
  %7924 = call float @dx.op.unary.f32(i32 21, float %7919)  ; Exp(value)
  %7925 = call float @dx.op.unary.f32(i32 21, float %7921)  ; Exp(value)
  %7926 = call float @dx.op.unary.f32(i32 21, float %7923)  ; Exp(value)
  %7927 = call float @dx.op.unary.f32(i32 7, float %7924)  ; Saturate(value)
  %7928 = call float @dx.op.unary.f32(i32 7, float %7925)  ; Saturate(value)
  %7929 = call float @dx.op.unary.f32(i32 7, float %7926)  ; Saturate(value)
  %7930 = fmul fast float %7852, %7927
  %7931 = fmul fast float %7853, %7928
  %7932 = fmul fast float %7854, %7929
  %7933 = fsub fast float %7672, %5840
  %7934 = fsub fast float %7673, %5841
  %7935 = fsub fast float %7674, %5842
  %7936 = call float @dx.op.dot3.f32(i32 55, float %7933, float %7934, float %7935, float %7933, float %7934, float %7935)  ; Dot3(ax,ay,az,bx,by,bz)
  %7937 = call float @dx.op.unary.f32(i32 25, float %7936)  ; Rsqrt(value)
  %7938 = fmul fast float %7937, %7933
  %7939 = fmul fast float %7937, %7934
  %7940 = fmul fast float %7937, %7935
  %7941 = call float @dx.op.dot3.f32(i32 55, float %7672, float %7673, float %7674, float %5766, float %5767, float %5768)  ; Dot3(ax,ay,az,bx,by,bz)
  %7942 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5844, float %5845, float %7938, float %7939, float %7940)  ; Dot3(ax,ay,az,bx,by,bz)
  %7943 = call float @dx.op.unary.f32(i32 7, float %7941)  ; Saturate(value)
  %7944 = fmul fast float %7943, %7679
  %7945 = fmul fast float %7943, %7943
  %7946 = fmul fast float %7945, %5861
  %7947 = call float @dx.op.unary.f32(i32 7, float %7946)  ; Saturate(value)
  %7948 = fmul fast float %7944, %7947
  %7949 = bitcast float %7669 to i32
  %7950 = ashr i32 %7949, 1
  %7951 = sub nsw i32 1597463007, %7950
  %7952 = bitcast i32 %7951 to float
  %7953 = fmul fast float %7952, %7666
  %7954 = fmul fast float %7952, %7667
  %7955 = fmul fast float %7952, %7668
  %7956 = fsub fast float %7953, %5840
  %7957 = fsub fast float %7954, %5841
  %7958 = fsub fast float %7955, %5842
  %7959 = call float @dx.op.dot3.f32(i32 55, float %7956, float %7957, float %7958, float %7956, float %7957, float %7958)  ; Dot3(ax,ay,az,bx,by,bz)
  %7960 = call float @dx.op.unary.f32(i32 25, float %7959)  ; Rsqrt(value)
  %7961 = fmul fast float %7956, %7960
  %7962 = fmul fast float %7957, %7960
  %7963 = fmul fast float %7958, %7960
  %7964 = call float @dx.op.dot3.f32(i32 55, float %5766, float %5767, float %5768, float %7961, float %7962, float %7963)  ; Dot3(ax,ay,az,bx,by,bz)
  %7965 = fmul fast float %7964, %7964
  %7966 = call float @dx.op.unary.f32(i32 6, float %7941)  ; FAbs(value)
  %7967 = call float @dx.op.binary.f32(i32 35, float %6205, float 0x3F847AE140000000)  ; FMax(a,b)
  %7968 = fmul fast float %7967, %7967
  %7969 = fmul fast float %7968, %7968
  %7970 = fsub fast float 1.000000e+00, %7969
  %7971 = fmul fast float %5848, %5848
  %7972 = fmul fast float %7971, %7970
  %7973 = fadd fast float %7972, %7969
  %7974 = bitcast float %7973 to i32
  %7975 = ashr i32 %7974, 1
  %7976 = add nsw i32 %7975, 532487669
  %7977 = bitcast i32 %7976 to float
  %7978 = fadd fast float %7977, %5848
  %7979 = fmul fast float %7969, %7965
  %7980 = fsub fast float 1.000000e+00, %7965
  %7981 = fadd fast float %7980, %7979
  %7982 = fmul fast float %7966, %7966
  %7983 = fmul fast float %7982, %7970
  %7984 = fadd fast float %7983, %7969
  %7985 = bitcast float %7984 to i32
  %7986 = ashr i32 %7985, 1
  %7987 = add nsw i32 %7986, 532487669
  %7988 = bitcast i32 %7987 to float
  %7989 = fadd fast float %7988, %7966
  %7990 = fmul fast float %7981, %7981
  %7991 = fmul fast float %7990, %7978
  %7992 = fmul fast float %7991, %7989
  %7993 = fdiv fast float 1.000000e+00, %7992
  %7994 = bitcast float %7969 to i32
  %7995 = sitofp i32 %7994 to float
  %7996 = fmul fast float %7995, 0x3FE7F73180000000
  %7997 = fadd fast float %7996, 0x41AFE27C40000000
  %7998 = fptosi float %7997 to i32
  %7999 = bitcast i32 %7998 to float
  %8000 = fmul fast float %7635, 0x3FD80E9D60000000
  %8001 = fmul fast float %8000, %7952
  %8002 = fadd fast float %7999, %8001
  %8003 = bitcast float %8002 to i32
  %8004 = sub nsw i32 2129859010, %8003
  %8005 = bitcast i32 %8004 to float
  %8006 = fmul fast float %7969, %7993
  %8007 = fmul fast float %8006, %7999
  %8008 = fmul fast float %8007, %8005
  %8009 = call float @dx.op.unary.f32(i32 6, float %7942)  ; FAbs(value)
  %8010 = fsub fast float 1.000000e+00, %8009
  %8011 = bitcast float %8010 to i32
  %8012 = sitofp i32 %8011 to float
  %8013 = fmul fast float %8012, 5.000000e+00
  %8014 = fadd fast float %8013, 0xC1EFBF8940000000
  %8015 = fptosi float %8014 to i32
  %8016 = bitcast i32 %8015 to float
  %8017 = fsub fast float 1.000000e+00, %5763
  %8018 = fsub fast float 1.000000e+00, %5764
  %8019 = fsub fast float 1.000000e+00, %5846
  %8020 = fmul fast float %8016, %8017
  %8021 = fmul fast float %8016, %8018
  %8022 = fmul fast float %8016, %8019
  %8023 = fadd fast float %8020, %5763
  %8024 = fadd fast float %8021, %5764
  %8025 = fadd fast float %8022, %5846
  br i1 %6108, label %8026, label %8049

; <label>:8026                                    ; preds = %7913
  %8027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %52, float %4489, float %8009, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8028 = extractvalue %dx.types.ResRet.f32 %8027, 0
  %8029 = extractvalue %dx.types.ResRet.f32 %8027, 1
  %8030 = extractvalue %dx.types.ResRet.f32 %8027, 2
  %8031 = fadd fast float %8028, -5.000000e-01
  %8032 = fadd fast float %8029, -5.000000e-01
  %8033 = fadd fast float %8030, -5.000000e-01
  %8034 = fmul fast float %5763, 4.000000e+00
  %8035 = fmul fast float %8034, %8017
  %8036 = fmul fast float %8035, %8031
  %8037 = fmul fast float %5764, 4.000000e+00
  %8038 = fmul fast float %8037, %8018
  %8039 = fmul fast float %8038, %8032
  %8040 = fmul fast float %5846, 4.000000e+00
  %8041 = fmul fast float %8040, %8019
  %8042 = fmul fast float %8041, %8033
  %8043 = fadd fast float %8036, %8023
  %8044 = fadd fast float %8039, %8024
  %8045 = fadd fast float %8042, %8025
  %8046 = call float @dx.op.unary.f32(i32 7, float %8043)  ; Saturate(value)
  %8047 = call float @dx.op.unary.f32(i32 7, float %8044)  ; Saturate(value)
  %8048 = call float @dx.op.unary.f32(i32 7, float %8045)  ; Saturate(value)
  br label %8049

; <label>:8049                                    ; preds = %8026, %7913
  %8050 = phi float [ %8046, %8026 ], [ %8023, %7913 ]
  %8051 = phi float [ %8047, %8026 ], [ %8024, %7913 ]
  %8052 = phi float [ %8048, %8026 ], [ %8025, %7913 ]
  %8053 = fmul fast float %7941, 9.843750e-01
  %8054 = fadd fast float %8053, 7.812500e-03
  %8055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %52, float %8054, float %6098, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8056 = extractvalue %dx.types.ResRet.f32 %8055, 2
  %8057 = extractvalue %dx.types.ResRet.f32 %8055, 3
  %8058 = fmul fast float %8056, %5763
  %8059 = fmul fast float %8056, %5764
  %8060 = fmul fast float %8056, %5846
  %8061 = fadd fast float %8058, %8057
  %8062 = fadd fast float %8059, %8057
  %8063 = fadd fast float %8060, %8057
  br i1 %6108, label %8064, label %8087

; <label>:8064                                    ; preds = %8049
  %8065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %52, float %4489, float %7941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8066 = extractvalue %dx.types.ResRet.f32 %8065, 0
  %8067 = extractvalue %dx.types.ResRet.f32 %8065, 1
  %8068 = extractvalue %dx.types.ResRet.f32 %8065, 2
  %8069 = fadd fast float %8066, -5.000000e-01
  %8070 = fadd fast float %8067, -5.000000e-01
  %8071 = fadd fast float %8068, -5.000000e-01
  %8072 = fmul fast float %5763, 4.000000e+00
  %8073 = fmul fast float %8072, %8017
  %8074 = fmul fast float %8073, %8069
  %8075 = fmul fast float %5764, 4.000000e+00
  %8076 = fmul fast float %8075, %8018
  %8077 = fmul fast float %8076, %8070
  %8078 = fmul fast float %5846, 4.000000e+00
  %8079 = fmul fast float %8078, %8019
  %8080 = fmul fast float %8079, %8071
  %8081 = fadd fast float %8074, %8061
  %8082 = fadd fast float %8077, %8062
  %8083 = fadd fast float %8080, %8063
  %8084 = call float @dx.op.unary.f32(i32 7, float %8081)  ; Saturate(value)
  %8085 = call float @dx.op.unary.f32(i32 7, float %8082)  ; Saturate(value)
  %8086 = call float @dx.op.unary.f32(i32 7, float %8083)  ; Saturate(value)
  br label %8087

; <label>:8087                                    ; preds = %8064, %8049
  %8088 = phi float [ %8084, %8064 ], [ %8061, %8049 ]
  %8089 = phi float [ %8085, %8064 ], [ %8062, %8049 ]
  %8090 = phi float [ %8086, %8064 ], [ %8063, %8049 ]
  %8091 = call float @dx.op.binary.f32(i32 35, float %8089, float %8090)  ; FMax(a,b)
  %8092 = call float @dx.op.binary.f32(i32 35, float %8088, float %8091)  ; FMax(a,b)
  %8093 = fsub fast float 1.000000e+00, %8092
  %8094 = fsub fast float -0.000000e+00, %5766
  %8095 = fsub fast float -0.000000e+00, %5767
  %8096 = fsub fast float -0.000000e+00, %5768
  %8097 = call float @dx.op.dot3.f32(i32 55, float %7672, float %7673, float %7674, float %8094, float %8095, float %8096)  ; Dot3(ax,ay,az,bx,by,bz)
  %8098 = call float @dx.op.unary.f32(i32 7, float %8097)  ; Saturate(value)
  %8099 = fmul fast float %8098, %7679
  %8100 = fmul fast float %8098, 9.843750e-01
  %8101 = fadd fast float %8100, 7.812500e-03
  %8102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %52, float %8101, float %6098, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8103 = extractvalue %dx.types.ResRet.f32 %8102, 2
  %8104 = extractvalue %dx.types.ResRet.f32 %8102, 3
  %8105 = fmul fast float %8103, %5763
  %8106 = fmul fast float %8103, %5764
  %8107 = fmul fast float %8103, %5846
  %8108 = fadd fast float %8105, %8104
  %8109 = fadd fast float %8106, %8104
  %8110 = fadd fast float %8107, %8104
  br i1 %6108, label %8111, label %8134

; <label>:8111                                    ; preds = %8087
  %8112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %52, float %4489, float %8098, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8113 = extractvalue %dx.types.ResRet.f32 %8112, 0
  %8114 = extractvalue %dx.types.ResRet.f32 %8112, 1
  %8115 = extractvalue %dx.types.ResRet.f32 %8112, 2
  %8116 = fadd fast float %8113, -5.000000e-01
  %8117 = fadd fast float %8114, -5.000000e-01
  %8118 = fadd fast float %8115, -5.000000e-01
  %8119 = fmul fast float %5763, 4.000000e+00
  %8120 = fmul fast float %8119, %8017
  %8121 = fmul fast float %8120, %8116
  %8122 = fmul fast float %5764, 4.000000e+00
  %8123 = fmul fast float %8122, %8018
  %8124 = fmul fast float %8123, %8117
  %8125 = fmul fast float %5846, 4.000000e+00
  %8126 = fmul fast float %8125, %8019
  %8127 = fmul fast float %8126, %8118
  %8128 = fadd fast float %8121, %8108
  %8129 = fadd fast float %8124, %8109
  %8130 = fadd fast float %8127, %8110
  %8131 = call float @dx.op.unary.f32(i32 7, float %8128)  ; Saturate(value)
  %8132 = call float @dx.op.unary.f32(i32 7, float %8129)  ; Saturate(value)
  %8133 = call float @dx.op.unary.f32(i32 7, float %8130)  ; Saturate(value)
  br label %8134

; <label>:8134                                    ; preds = %8111, %8087
  %8135 = phi float [ %8131, %8111 ], [ %8108, %8087 ]
  %8136 = phi float [ %8132, %8111 ], [ %8109, %8087 ]
  %8137 = phi float [ %8133, %8111 ], [ %8110, %8087 ]
  %8138 = call float @dx.op.binary.f32(i32 35, float %8136, float %8137)  ; FMax(a,b)
  %8139 = call float @dx.op.binary.f32(i32 35, float %8135, float %8138)  ; FMax(a,b)
  %8140 = fsub fast float 1.000000e+00, %8139
  %8141 = fmul fast float %8099, %8140
  %8142 = fmul fast float %8141, %4580
  %8143 = fmul fast float %8141, %4581
  %8144 = fmul fast float %8141, %4582
  %8145 = fmul fast float %8050, %8008
  %8146 = fmul fast float %8051, %8008
  %8147 = fmul fast float %8052, %8008
  %8148 = fsub fast float 1.000000e+00, %7942
  %8149 = bitcast float %8148 to i32
  %8150 = sitofp i32 %8149 to float
  %8151 = fmul fast float %8150, 5.000000e+00
  %8152 = fadd fast float %8151, 0xC1EFBF8940000000
  %8153 = fptosi float %8152 to i32
  %8154 = bitcast i32 %8153 to float
  %8155 = fmul fast float %8154, %4490
  %8156 = fmul fast float %8093, %8155
  %8157 = fmul fast float %8156, %6158
  %8158 = fmul fast float %8156, %6159
  %8159 = fmul fast float %8156, %6160
  %8160 = fmul fast float %8093, %7948
  %8161 = fadd fast float %8157, %8145
  %8162 = fadd fast float %8158, %8146
  %8163 = fadd fast float %8159, %8147
  %8164 = fadd fast float %8142, %8160
  %8165 = fadd fast float %8143, %8160
  %8166 = fadd fast float %8144, %8160
  %8167 = fmul fast float %7930, %4486
  %8168 = fmul fast float %8167, %8164
  %8169 = fmul fast float %7931, %4486
  %8170 = fmul fast float %8169, %8165
  %8171 = fmul fast float %7932, %4486
  %8172 = fmul fast float %8171, %8166
  %8173 = fadd fast float %8168, %7609
  %8174 = fadd fast float %8170, %7610
  %8175 = fadd fast float %8172, %7611
  %8176 = fmul fast float %8167, %7948
  %8177 = fmul fast float %8176, %8161
  %8178 = fmul fast float %8169, %7948
  %8179 = fmul fast float %8178, %8162
  %8180 = fmul fast float %8171, %7948
  %8181 = fmul fast float %8180, %8163
  %8182 = fadd fast float %8177, %7606
  %8183 = fadd fast float %8179, %7607
  %8184 = fadd fast float %8181, %7608
  br label %7738

; <label>:8185                                    ; preds = %7738
  br label %8186

; <label>:8186                                    ; preds = %8185, %7572
  %8187 = phi float [ %7574, %7572 ], [ %7739, %8185 ]
  %8188 = phi float [ %7575, %7572 ], [ %7740, %8185 ]
  %8189 = phi float [ %7576, %7572 ], [ %7741, %8185 ]
  %8190 = phi float [ %7577, %7572 ], [ %7742, %8185 ]
  %8191 = phi float [ %7578, %7572 ], [ %7743, %8185 ]
  %8192 = phi float [ %7579, %7572 ], [ %7744, %8185 ]
  %8193 = add i32 %7573, 1
  %8194 = icmp ugt i32 %8193, %7569
  br i1 %8194, label %8195, label %7572

; <label>:8195                                    ; preds = %8186
  br label %8196

; <label>:8196                                    ; preds = %8195, %7522, %7512
  %8197 = phi float [ %7513, %7512 ], [ %7513, %7522 ], [ %8187, %8195 ]
  %8198 = phi float [ %7514, %7512 ], [ %7514, %7522 ], [ %8188, %8195 ]
  %8199 = phi float [ %7515, %7512 ], [ %7515, %7522 ], [ %8189, %8195 ]
  %8200 = phi float [ %7516, %7512 ], [ %7516, %7522 ], [ %8190, %8195 ]
  %8201 = phi float [ %7517, %7512 ], [ %7517, %7522 ], [ %8191, %8195 ]
  %8202 = phi float [ %7518, %7512 ], [ %7518, %7522 ], [ %8192, %8195 ]
  %8203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8204 = extractvalue %dx.types.CBufRet.f32 %8203, 0
  %8205 = fmul fast float %8204, %6218
  %8206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8207 = extractvalue %dx.types.CBufRet.f32 %8206, 3
  %8208 = fsub fast float 1.000000e+00, %4494
  %8209 = call float @dx.op.unary.f32(i32 7, float %8208)  ; Saturate(value)
  %8210 = fadd fast float %8202, %4492
  %8211 = fmul fast float %8210, %4494
  %8212 = fmul fast float %8209, %8207
  %8213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8214 = extractvalue %dx.types.CBufRet.f32 %8213, 3
  %8215 = fmul fast float %8200, %5760
  %8216 = fmul fast float %8201, %5761
  %8217 = fmul fast float %8202, %5762
  %8218 = fcmp fast ogt float %106, %229
  %8219 = and i1 %8218, %4967
  %8220 = or i1 %4973, %8219
  %8221 = icmp eq i32 %4966, 2
  %8222 = fcmp fast ole float %106, %229
  %8223 = and i1 %8222, %8221
  %8224 = or i1 %8223, %8220
  br i1 %8219, label %8225, label %8474

; <label>:8225                                    ; preds = %8196
  %8226 = fmul fast float %6298, %115
  %8227 = fmul fast float %6299, %116
  %8228 = call float @dx.op.unary.f32(i32 7, float %8226)  ; Saturate(value)
  %8229 = call float @dx.op.unary.f32(i32 7, float %8227)  ; Saturate(value)
  %8230 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %52, float %8228, float %8229, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8231 = extractvalue %dx.types.ResRet.f32 %8230, 0
  %8232 = extractvalue %dx.types.ResRet.f32 %8230, 1
  %8233 = extractvalue %dx.types.ResRet.f32 %8230, 2
  %8234 = extractvalue %dx.types.ResRet.f32 %8230, 3
  %8235 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %52, float %8228, float %8229, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8236 = extractvalue %dx.types.ResRet.f32 %8235, 0
  %8237 = extractvalue %dx.types.ResRet.f32 %8235, 1
  %8238 = extractvalue %dx.types.ResRet.f32 %8235, 2
  %8239 = extractvalue %dx.types.ResRet.f32 %8235, 3
  %8240 = call float @dx.op.binary.f32(i32 35, float %8232, float %8233)  ; FMax(a,b)
  %8241 = call float @dx.op.binary.f32(i32 35, float %8231, float %8240)  ; FMax(a,b)
  %8242 = call float @dx.op.binary.f32(i32 35, float %8241, float %8234)  ; FMax(a,b)
  %8243 = call float @dx.op.binary.f32(i32 36, float %8237, float %8238)  ; FMin(a,b)
  %8244 = call float @dx.op.binary.f32(i32 36, float %8236, float %8243)  ; FMin(a,b)
  %8245 = call float @dx.op.binary.f32(i32 36, float %8244, float %8239)  ; FMin(a,b)
  %8246 = fmul fast float %8242, 2.550000e+02
  %8247 = fadd fast float %8246, 0x3F70101020000000
  %8248 = fptoui float %8247 to i32
  %8249 = fmul fast float %8245, 2.550000e+02
  %8250 = fadd fast float %8249, 0x3F70101020000000
  %8251 = fptoui float %8250 to i32
  %8252 = icmp ult i32 %8248, %8251
  br i1 %8252, label %8253, label %8419

; <label>:8253                                    ; preds = %8225
  %8254 = fcmp fast ogt float %105, 9.843750e-01
  %8255 = fadd fast float %106, -4.000000e+00
  %8256 = select i1 %8254, float -4.000000e+00, float %8255
  %8257 = call float @dx.op.binary.f32(i32 35, float %8256, float 0.000000e+00)  ; FMax(a,b)
  %8258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8259 = extractvalue %dx.types.CBufRet.f32 %8258, 0
  %8260 = fadd fast float %8259, %8257
  %8261 = extractvalue %dx.types.CBufRet.f32 %8258, 2
  %8262 = fmul fast float %8260, %8261
  %8263 = call float @dx.op.unary.f32(i32 23, float %8262)  ; Log(value)
  %8264 = extractvalue %dx.types.CBufRet.f32 %8258, 3
  %8265 = fmul fast float %8264, %8263
  %8266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8267 = extractvalue %dx.types.CBufRet.f32 %8266, 2
  %8268 = fmul fast float %8265, %8267
  %8269 = call float @dx.op.unary.f32(i32 7, float %8268)  ; Saturate(value)
  %8270 = uitofp i32 %8248 to float
  %8271 = uitofp i32 %8251 to float
  %8272 = fadd fast float %8270, 5.000000e-01
  %8273 = fadd fast float %8271, 5.000000e-01
  %8274 = fmul fast float %8267, %8272
  %8275 = fmul fast float %8267, %8273
  %8276 = fadd fast float %8274, 0x3F0FFB4800000000
  %8277 = fadd fast float %8275, 0xBF0FFB4800000000
  %8278 = call float @dx.op.binary.f32(i32 35, float %8269, float %8276)  ; FMax(a,b)
  %8279 = call float @dx.op.binary.f32(i32 36, float %8278, float %8277)  ; FMin(a,b)
  %8280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8281 = extractvalue %dx.types.CBufRet.f32 %8280, 1
  %8282 = extractvalue %dx.types.CBufRet.f32 %8280, 2
  %8283 = extractvalue %dx.types.CBufRet.f32 %8280, 0
  %8284 = fmul fast float %8281, %8279
  %8285 = fadd fast float %8283, %8284
  %8286 = fadd fast float %8283, %8282
  %8287 = fsub fast float %8281, %8282
  %8288 = fadd fast float %8287, %8283
  %8289 = call float @dx.op.binary.f32(i32 35, float %8285, float %8286)  ; FMax(a,b)
  %8290 = call float @dx.op.binary.f32(i32 36, float %8289, float %8288)  ; FMin(a,b)
  %8291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %50, float %8228, float %8229, float %8290, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8292 = extractvalue %dx.types.ResRet.f32 %8291, 0
  %8293 = extractvalue %dx.types.ResRet.f32 %8291, 1
  %8294 = extractvalue %dx.types.ResRet.f32 %8291, 2
  %8295 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8296 = extractvalue %dx.types.CBufRet.i32 %8295, 0
  %8297 = extractvalue %dx.types.CBufRet.i32 %8295, 1
  %8298 = uitofp i32 %8296 to float
  %8299 = uitofp i32 %8297 to float
  %8300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8301 = extractvalue %dx.types.CBufRet.f32 %8300, 0
  %8302 = extractvalue %dx.types.CBufRet.f32 %8300, 1
  %8303 = fmul fast float %8298, %8228
  %8304 = fmul fast float %8299, %8229
  %8305 = fadd fast float %8303, -5.000000e-01
  %8306 = fadd fast float %8304, -5.000000e-01
  %8307 = call float @dx.op.unary.f32(i32 22, float %8305)  ; Frc(value)
  %8308 = call float @dx.op.unary.f32(i32 22, float %8306)  ; Frc(value)
  %8309 = fmul fast float %8307, %8307
  %8310 = fmul fast float %8309, %8307
  %8311 = fsub fast float 3.000000e+00, %8307
  %8312 = fmul fast float %8309, %8311
  %8313 = fmul fast float %8307, 3.000000e+00
  %8314 = fmul fast float %8310, 3.000000e+00
  %8315 = fmul fast float %8309, 6.000000e+00
  %8316 = fsub fast float %8314, %8315
  %8317 = fadd fast float %8316, 4.000000e+00
  %8318 = fmul fast float %8317, 0x3FC5555560000000
  %8319 = fmul fast float %8310, -3.000000e+00
  %8320 = fadd fast float %8309, %8307
  %8321 = fmul fast float %8320, 3.000000e+00
  %8322 = fadd fast float %8319, 1.000000e+00
  %8323 = fadd fast float %8322, %8321
  %8324 = fmul fast float %8310, 0x3FC5555560000000
  %8325 = fmul fast float %8308, %8308
  %8326 = fmul fast float %8325, %8308
  %8327 = fsub fast float 3.000000e+00, %8308
  %8328 = fmul fast float %8325, %8327
  %8329 = fmul fast float %8308, 3.000000e+00
  %8330 = fmul fast float %8326, 3.000000e+00
  %8331 = fmul fast float %8325, 6.000000e+00
  %8332 = fsub fast float %8330, %8331
  %8333 = fadd fast float %8332, 4.000000e+00
  %8334 = fmul fast float %8333, 0x3FC5555560000000
  %8335 = fmul fast float %8326, -3.000000e+00
  %8336 = fadd fast float %8325, %8308
  %8337 = fmul fast float %8336, 3.000000e+00
  %8338 = fadd fast float %8335, 1.000000e+00
  %8339 = fadd fast float %8338, %8337
  %8340 = fmul fast float %8326, 0x3FC5555560000000
  %8341 = fadd fast float %8307, 1.000000e+00
  %8342 = fsub fast float 1.000000e+00, %8313
  %8343 = fadd fast float %8342, %8312
  %8344 = fadd fast float %8343, %8317
  %8345 = fmul fast float %8344, 0x3FC5555560000000
  %8346 = fdiv fast float %8318, %8345
  %8347 = fsub fast float %8341, %8346
  %8348 = fsub fast float 1.000000e+00, %8307
  %8349 = fadd fast float %8323, %8310
  %8350 = fmul fast float %8349, 0x3FC5555560000000
  %8351 = fdiv fast float %8324, %8350
  %8352 = fadd fast float %8348, %8351
  %8353 = fadd fast float %8308, 1.000000e+00
  %8354 = fsub fast float 1.000000e+00, %8329
  %8355 = fadd fast float %8354, %8328
  %8356 = fadd fast float %8355, %8333
  %8357 = fmul fast float %8356, 0x3FC5555560000000
  %8358 = fdiv fast float %8334, %8357
  %8359 = fsub fast float %8353, %8358
  %8360 = fsub fast float 1.000000e+00, %8308
  %8361 = fadd fast float %8339, %8326
  %8362 = fmul fast float %8361, 0x3FC5555560000000
  %8363 = fdiv fast float %8340, %8362
  %8364 = fadd fast float %8363, %8360
  %8365 = fmul fast float %8347, %8301
  %8366 = fsub fast float %8228, %8365
  %8367 = fmul fast float %8352, %8301
  %8368 = fadd fast float %8367, %8228
  %8369 = fmul fast float %8364, %8302
  %8370 = fadd fast float %8369, %8229
  %8371 = fmul fast float %8359, %8302
  %8372 = fsub fast float %8229, %8371
  %8373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %8366, float %8372, float %8290, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8374 = extractvalue %dx.types.ResRet.f32 %8373, 0
  %8375 = extractvalue %dx.types.ResRet.f32 %8373, 1
  %8376 = extractvalue %dx.types.ResRet.f32 %8373, 2
  %8377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %8368, float %8372, float %8290, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8378 = extractvalue %dx.types.ResRet.f32 %8377, 0
  %8379 = extractvalue %dx.types.ResRet.f32 %8377, 1
  %8380 = extractvalue %dx.types.ResRet.f32 %8377, 2
  %8381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %8366, float %8370, float %8290, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8382 = extractvalue %dx.types.ResRet.f32 %8381, 0
  %8383 = extractvalue %dx.types.ResRet.f32 %8381, 1
  %8384 = extractvalue %dx.types.ResRet.f32 %8381, 2
  %8385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %8368, float %8370, float %8290, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8386 = extractvalue %dx.types.ResRet.f32 %8385, 0
  %8387 = extractvalue %dx.types.ResRet.f32 %8385, 1
  %8388 = extractvalue %dx.types.ResRet.f32 %8385, 2
  %8389 = fsub fast float %8382, %8374
  %8390 = fsub fast float %8383, %8375
  %8391 = fsub fast float %8384, %8376
  %8392 = fmul fast float %8389, %8362
  %8393 = fmul fast float %8390, %8362
  %8394 = fmul fast float %8391, %8362
  %8395 = fadd fast float %8392, %8374
  %8396 = fadd fast float %8393, %8375
  %8397 = fadd fast float %8394, %8376
  %8398 = fsub fast float %8386, %8378
  %8399 = fsub fast float %8387, %8379
  %8400 = fsub fast float %8388, %8380
  %8401 = fmul fast float %8398, %8362
  %8402 = fmul fast float %8399, %8362
  %8403 = fmul fast float %8400, %8362
  %8404 = fsub fast float %8378, %8395
  %8405 = fadd fast float %8404, %8401
  %8406 = fsub fast float %8379, %8396
  %8407 = fadd fast float %8406, %8402
  %8408 = fsub fast float %8380, %8397
  %8409 = fadd fast float %8408, %8403
  %8410 = fmul fast float %8405, %8350
  %8411 = fmul fast float %8407, %8350
  %8412 = fmul fast float %8409, %8350
  %8413 = fadd fast float %8410, %8395
  %8414 = fadd fast float %8411, %8396
  %8415 = fadd fast float %8412, %8397
  %8416 = fmul fast float %8413, %6353
  %8417 = fmul fast float %8414, %6353
  %8418 = fmul fast float %8415, %6353
  br label %8419

; <label>:8419                                    ; preds = %8253, %8225
  %8420 = phi float [ %8292, %8253 ], [ 1.000000e+00, %8225 ]
  %8421 = phi float [ %8293, %8253 ], [ 1.000000e+00, %8225 ]
  %8422 = phi float [ %8294, %8253 ], [ 1.000000e+00, %8225 ]
  %8423 = phi float [ %8416, %8253 ], [ 0.000000e+00, %8225 ]
  %8424 = phi float [ %8417, %8253 ], [ 0.000000e+00, %8225 ]
  %8425 = phi float [ %8418, %8253 ], [ 0.000000e+00, %8225 ]
  %8426 = call float @dx.op.dot3.f32(i32 55, float %8420, float %8421, float %8422, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8427 = call float @dx.op.dot3.f32(i32 55, float %8423, float %8424, float %8425, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8428 = select i1 %266, float %8426, float %8420
  %8429 = select i1 %266, float %8426, float %8421
  %8430 = select i1 %266, float 1.000000e+00, float %8422
  %8431 = select i1 %266, float %8427, float %8423
  %8432 = select i1 %266, float 0.000000e+00, float %8424
  %8433 = select i1 %266, float 0.000000e+00, float %8425
  %8434 = fmul fast float %8428, %8215
  %8435 = fmul fast float %8429, %8216
  %8436 = fmul fast float %8430, %8217
  %8437 = fadd fast float %8434, %8431
  %8438 = fadd fast float %8435, %8432
  %8439 = fadd fast float %8433, %8436
  %8440 = fmul fast float %8428, %8197
  %8441 = fmul fast float %8429, %8198
  %8442 = fmul fast float %8430, %8199
  %8443 = fmul fast float %143, %6298
  %8444 = fmul fast float %145, %6299
  %8445 = fsub fast float 1.000000e+00, %8443
  %8446 = fsub fast float 1.000000e+00, %8444
  %8447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8448 = extractvalue %dx.types.CBufRet.f32 %8447, 0
  %8449 = extractvalue %dx.types.CBufRet.f32 %8447, 1
  %8450 = extractvalue %dx.types.CBufRet.f32 %8447, 2
  %8451 = fmul fast float %8445, %8448
  %8452 = fmul fast float %8445, %8449
  %8453 = fmul fast float %8445, %8450
  %8454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8455 = extractvalue %dx.types.CBufRet.f32 %8454, 0
  %8456 = extractvalue %dx.types.CBufRet.f32 %8454, 1
  %8457 = extractvalue %dx.types.CBufRet.f32 %8454, 2
  %8458 = fmul fast float %8446, %8455
  %8459 = fmul fast float %8446, %8456
  %8460 = fmul fast float %8446, %8457
  %8461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8462 = extractvalue %dx.types.CBufRet.f32 %8461, 0
  %8463 = extractvalue %dx.types.CBufRet.f32 %8461, 1
  %8464 = extractvalue %dx.types.CBufRet.f32 %8461, 2
  %8465 = fadd fast float %8458, %8462
  %8466 = fadd fast float %8465, %8451
  %8467 = fadd fast float %8459, %8463
  %8468 = fadd fast float %8467, %8452
  %8469 = fadd fast float %8460, %8464
  %8470 = fadd fast float %8469, %8453
  %8471 = fmul fast float %8466, %229
  %8472 = fmul fast float %8468, %229
  %8473 = fmul fast float %8470, %229
  br label %8474

; <label>:8474                                    ; preds = %8419, %8196
  %8475 = phi float [ %8471, %8419 ], [ %194, %8196 ]
  %8476 = phi float [ %8472, %8419 ], [ %195, %8196 ]
  %8477 = phi float [ %8473, %8419 ], [ %196, %8196 ]
  %8478 = phi float [ %229, %8419 ], [ %106, %8196 ]
  %8479 = phi float [ %8437, %8419 ], [ %8215, %8196 ]
  %8480 = phi float [ %8438, %8419 ], [ %8216, %8196 ]
  %8481 = phi float [ %8439, %8419 ], [ %8217, %8196 ]
  %8482 = phi float [ %8440, %8419 ], [ %8197, %8196 ]
  %8483 = phi float [ %8441, %8419 ], [ %8198, %8196 ]
  %8484 = phi float [ %8442, %8419 ], [ %8199, %8196 ]
  %8485 = phi float [ %8420, %8419 ], [ 1.000000e+00, %8196 ]
  br i1 %8224, label %9623, label %8486

; <label>:8486                                    ; preds = %8474
  %8487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8488 = extractvalue %dx.types.CBufRet.f32 %8487, 0
  %8489 = extractvalue %dx.types.CBufRet.f32 %8487, 1
  %8490 = extractvalue %dx.types.CBufRet.f32 %8487, 2
  %8491 = extractvalue %dx.types.CBufRet.f32 %8487, 3
  %8492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8493 = extractvalue %dx.types.CBufRet.f32 %8492, 0
  %8494 = extractvalue %dx.types.CBufRet.f32 %8492, 1
  %8495 = extractvalue %dx.types.CBufRet.f32 %8492, 2
  %8496 = extractvalue %dx.types.CBufRet.f32 %8492, 3
  %8497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8498 = extractvalue %dx.types.CBufRet.f32 %8497, 0
  %8499 = extractvalue %dx.types.CBufRet.f32 %8497, 1
  %8500 = extractvalue %dx.types.CBufRet.f32 %8497, 2
  %8501 = extractvalue %dx.types.CBufRet.f32 %8497, 3
  %8502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8503 = extractvalue %dx.types.CBufRet.f32 %8502, 0
  %8504 = extractvalue %dx.types.CBufRet.f32 %8502, 1
  %8505 = extractvalue %dx.types.CBufRet.f32 %8502, 2
  %8506 = extractvalue %dx.types.CBufRet.f32 %8502, 3
  %8507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8508 = extractvalue %dx.types.CBufRet.f32 %8507, 3
  %8509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8510 = extractvalue %dx.types.CBufRet.f32 %8509, 3
  %8511 = extractvalue %dx.types.CBufRet.f32 %8509, 0
  %8512 = extractvalue %dx.types.CBufRet.f32 %8509, 1
  %8513 = extractvalue %dx.types.CBufRet.f32 %8509, 2
  %8514 = fcmp fast olt float %8513, -5.000000e-01
  %8515 = call float @dx.op.dot3.f32(i32 55, float %8475, float %8476, float %8477, float %8475, float %8476, float %8477)  ; Dot3(ax,ay,az,bx,by,bz)
  %8516 = call float @dx.op.unary.f32(i32 25, float %8515)  ; Rsqrt(value)
  %8517 = fmul fast float %8516, %8515
  %8518 = fmul fast float %8516, %8475
  %8519 = fmul fast float %8516, %8476
  %8520 = fmul fast float %8516, %8477
  %8521 = fadd fast float %8517, %8491
  %8522 = call float @dx.op.dot3.f32(i32 55, float %8518, float %8519, float %8520, float %8488, float %8489, float %8490)  ; Dot3(ax,ay,az,bx,by,bz)
  %8523 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8524 = extractvalue %dx.types.CBufRet.i32 %8523, 1
  %8525 = and i32 %8524, 1
  %8526 = icmp ne i32 %8525, 0
  %8527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8528 = extractvalue %dx.types.CBufRet.f32 %8527, 2
  %8529 = fcmp fast ogt float %8528, 0.000000e+00
  %8530 = and i1 %8526, %8529
  br i1 %8530, label %8531, label %8933, !dx.controlflow.hints !132

; <label>:8531                                    ; preds = %8486
  %8532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8533 = extractvalue %dx.types.CBufRet.f32 %8532, 3
  %8534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8535 = extractvalue %dx.types.CBufRet.f32 %8534, 2
  %8536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8537 = extractvalue %dx.types.CBufRet.f32 %8536, 2
  %8538 = fsub fast float %8535, %8537
  %8539 = and i32 %8524, 2
  %8540 = extractvalue %dx.types.CBufRet.i32 %8523, 0
  %8541 = call i32 @dx.op.binary.i32(i32 40, i32 %8540, i32 3)  ; UMin(a,b)
  %8542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8543 = extractvalue %dx.types.CBufRet.f32 %8542, 0
  %8544 = extractvalue %dx.types.CBufRet.f32 %8542, 1
  %8545 = extractvalue %dx.types.CBufRet.f32 %8536, 0
  %8546 = extractvalue %dx.types.CBufRet.f32 %8536, 1
  %8547 = fsub fast float %8543, %8545
  %8548 = fsub fast float %8544, %8546
  %8549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8550 = extractvalue %dx.types.CBufRet.f32 %8549, 0
  %8551 = fcmp fast ogt float %8550, 0.000000e+00
  %8552 = fsub fast float -0.000000e+00, %8547
  %8553 = fsub fast float -0.000000e+00, %8548
  %8554 = call float @dx.op.dot2.f32(i32 54, float %8518, float %8519, float %8518, float %8519)  ; Dot2(ax,ay,bx,by)
  %8555 = call float @dx.op.dot2.f32(i32 54, float %8518, float %8519, float %8552, float %8553)  ; Dot2(ax,ay,bx,by)
  %8556 = fmul fast float %8555, 2.000000e+00
  %8557 = call float @dx.op.dot2.f32(i32 54, float %8552, float %8553, float %8552, float %8553)  ; Dot2(ax,ay,bx,by)
  %8558 = fmul fast float %8550, %8550
  %8559 = fsub fast float %8557, %8558
  %8560 = fmul fast float %8556, %8556
  %8561 = fmul fast float %8554, 4.000000e+00
  %8562 = fmul fast float %8561, %8559
  %8563 = fsub fast float %8560, %8562
  %8564 = fcmp fast ogt float %8563, 0.000000e+00
  br i1 %8564, label %8565, label %8580

; <label>:8565                                    ; preds = %8531
  %8566 = fcmp fast ogt float %8556, 0.000000e+00
  %8567 = call float @dx.op.unary.f32(i32 24, float %8563)  ; Sqrt(value)
  %8568 = fsub fast float -0.000000e+00, %8567
  %8569 = select i1 %8566, float %8567, float %8568
  %8570 = fadd fast float %8569, %8556
  %8571 = fmul float %8570, -5.000000e-01
  %8572 = fdiv fast float %8571, %8554
  %8573 = call float @dx.op.binary.f32(i32 35, float %8572, float 0.000000e+00)  ; FMax(a,b)
  %8574 = call float @dx.op.binary.f32(i32 36, float %8517, float %8573)  ; FMin(a,b)
  %8575 = fdiv fast float %8559, %8571
  %8576 = call float @dx.op.binary.f32(i32 35, float %8575, float 0.000000e+00)  ; FMax(a,b)
  %8577 = call float @dx.op.binary.f32(i32 36, float %8517, float %8576)  ; FMin(a,b)
  %8578 = call float @dx.op.binary.f32(i32 36, float %8574, float %8577)  ; FMin(a,b)
  %8579 = call float @dx.op.binary.f32(i32 35, float %8574, float %8577)  ; FMax(a,b)
  br label %8580

; <label>:8580                                    ; preds = %8565, %8531
  %8581 = phi float [ %8579, %8565 ], [ -1.000000e+00, %8531 ]
  %8582 = phi float [ %8578, %8565 ], [ -1.000000e+00, %8531 ]
  %8583 = phi i1 [ true, %8565 ], [ false, %8531 ]
  %8584 = and i1 %8551, %8583
  br i1 %8584, label %8585, label %8587

; <label>:8585                                    ; preds = %8580
  %8586 = fcmp fast oeq float %8582, %8581
  br i1 %8586, label %8886, label %8588

; <label>:8587                                    ; preds = %8580
  br i1 %8551, label %8886, label %8588

; <label>:8588                                    ; preds = %8587, %8585
  %8589 = phi float [ %8517, %8587 ], [ %8581, %8585 ]
  %8590 = phi float [ 0.000000e+00, %8587 ], [ %8582, %8585 ]
  %8591 = icmp ne i32 %8539, 0
  %8592 = fmul fast float %8589, %8520
  %8593 = fadd fast float %8592, %8533
  %8594 = fmul fast float %8593, %8589
  %8595 = select i1 %8591, float 0.000000e+00, float %8594
  %8596 = fcmp fast oeq float %8520, 0.000000e+00
  %8597 = fdiv fast float %8538, %8520
  %8598 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8597)  ; FMax(a,b)
  %8599 = select i1 %8596, float %8589, float %8598
  %8600 = call float @dx.op.binary.f32(i32 36, float %8589, float %8599)  ; FMin(a,b)
  %8601 = fcmp fast ogt float %8520, 0.000000e+00
  %8602 = fcmp fast olt float %8538, 0.000000e+00
  br i1 %8601, label %8603, label %8660

; <label>:8603                                    ; preds = %8588
  %8604 = icmp eq i32 %8539, 0
  br i1 %8602, label %8605, label %8649

; <label>:8605                                    ; preds = %8603
  %8606 = select i1 %8604, float %8589, float 0.000000e+00
  %8607 = fsub fast float -0.000000e+00, %8606
  %8608 = call float @dx.op.unary.f32(i32 6, float %8607)  ; FAbs(value)
  %8609 = fmul fast float %8606, %8520
  %8610 = fadd fast float %8609, %8533
  %8611 = fmul fast float %8608, %8610
  %8612 = fsub fast float %8595, %8611
  %8613 = fsub fast float %8589, %8608
  %8614 = select i1 %8604, float %8613, float 0.000000e+00
  %8615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8616 = extractvalue %dx.types.CBufRet.f32 %8615, 0
  %8617 = extractvalue %dx.types.CBufRet.f32 %8615, 1
  %8618 = extractvalue %dx.types.CBufRet.f32 %8615, 2
  %8619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8620 = extractvalue %dx.types.CBufRet.f32 %8619, 0
  %8621 = extractvalue %dx.types.CBufRet.f32 %8619, 1
  %8622 = extractvalue %dx.types.CBufRet.f32 %8619, 2
  %8623 = extractvalue %dx.types.CBufRet.f32 %8619, 3
  %8624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8625 = extractvalue %dx.types.CBufRet.f32 %8624, 3
  %8626 = call float @dx.op.binary.f32(i32 36, float %8612, float %8625)  ; FMin(a,b)
  %8627 = fmul fast float %8623, %8614
  %8628 = call float @dx.op.unary.f32(i32 7, float %8627)  ; Saturate(value)
  %8629 = fsub fast float %8620, %8616
  %8630 = fsub fast float %8621, %8617
  %8631 = fsub fast float %8622, %8618
  %8632 = fmul fast float %8628, %8629
  %8633 = fmul fast float %8628, %8630
  %8634 = fmul fast float %8628, %8631
  %8635 = fadd fast float %8632, %8616
  %8636 = fadd fast float %8633, %8617
  %8637 = fadd fast float %8634, %8618
  %8638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8639 = extractvalue %dx.types.CBufRet.f32 %8638, 0
  %8640 = extractvalue %dx.types.CBufRet.f32 %8638, 1
  %8641 = fadd fast float %8640, %8639
  %8642 = call float @dx.op.unary.f32(i32 7, float %8641)  ; Saturate(value)
  %8643 = extractvalue %dx.types.CBufRet.f32 %8638, 2
  %8644 = extractvalue %dx.types.CBufRet.f32 %8638, 3
  %8645 = fadd fast float %8644, %8643
  %8646 = call float @dx.op.unary.f32(i32 7, float %8645)  ; Saturate(value)
  %8647 = fmul fast float %8642, %8626
  %8648 = fmul fast float %8647, %8646
  br label %8886

; <label>:8649                                    ; preds = %8603
  br i1 %8604, label %8650, label %8671

; <label>:8650                                    ; preds = %8649
  %8651 = call float @dx.op.binary.f32(i32 36, float %8600, float %8590)  ; FMin(a,b)
  %8652 = fsub fast float %8600, %8651
  %8653 = fsub fast float %8652, %8589
  %8654 = call float @dx.op.unary.f32(i32 6, float %8653)  ; FAbs(value)
  %8655 = fadd fast float %8652, %8589
  %8656 = fmul fast float %8655, %8520
  %8657 = fadd fast float %8656, %8533
  %8658 = fmul fast float %8657, %8654
  %8659 = fsub fast float %8595, %8658
  br label %8671

; <label>:8660                                    ; preds = %8588
  br i1 %8602, label %8661, label %8671

; <label>:8661                                    ; preds = %8660
  %8662 = call float @dx.op.binary.f32(i32 35, float %8590, float %8600)  ; FMax(a,b)
  %8663 = icmp eq i32 %8539, 0
  %8664 = select i1 %8663, float %8600, float 0.000000e+00
  %8665 = fsub fast float -0.000000e+00, %8664
  %8666 = call float @dx.op.unary.f32(i32 6, float %8665)  ; FAbs(value)
  %8667 = fmul fast float %8664, %8520
  %8668 = fadd fast float %8667, %8533
  %8669 = fmul fast float %8666, %8668
  %8670 = fsub fast float %8595, %8669
  br label %8671

; <label>:8671                                    ; preds = %8661, %8660, %8650, %8649
  %8672 = phi float [ %8590, %8649 ], [ %8590, %8650 ], [ %8662, %8661 ], [ %8590, %8660 ]
  %8673 = phi float [ 0.000000e+00, %8649 ], [ %8654, %8650 ], [ %8666, %8661 ], [ 0.000000e+00, %8660 ]
  %8674 = phi float [ %8595, %8649 ], [ %8659, %8650 ], [ %8670, %8661 ], [ %8595, %8660 ]
  %8675 = phi float [ %8600, %8649 ], [ %8600, %8650 ], [ %8589, %8661 ], [ %8589, %8660 ]
  %8676 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 0
  store float -1.000000e+00, float* %8676, align 4, !tbaa !133, !noalias !135
  %8677 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 1
  store float -1.000000e+00, float* %8677, align 4, !tbaa !133, !noalias !135
  %8678 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 2
  store float -1.000000e+00, float* %8678, align 4, !tbaa !133, !noalias !135
  %8679 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 0
  store float -1.000000e+00, float* %8679, align 4, !tbaa !133, !noalias !135
  %8680 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 1
  store float -1.000000e+00, float* %8680, align 4, !tbaa !133, !noalias !135
  %8681 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 2
  store float -1.000000e+00, float* %8681, align 4, !tbaa !133, !noalias !135
  %8682 = icmp sgt i32 %8541, 0
  br i1 %8682, label %8683, label %8744

; <label>:8683                                    ; preds = %8671
  br label %8684

; <label>:8684                                    ; preds = %8733, %8683
  %8685 = phi i32 [ %8734, %8733 ], [ 0, %8683 ]
  %8686 = phi i32 [ %8735, %8733 ], [ 0, %8683 ]
  %8687 = add nuw i32 %8686, 171
  %8688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 %8687)  ; CBufferLoadLegacy(handle,regIndex)
  %8689 = extractvalue %dx.types.CBufRet.f32 %8688, 0
  %8690 = extractvalue %dx.types.CBufRet.f32 %8688, 1
  %8691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8692 = extractvalue %dx.types.CBufRet.f32 %8691, 0
  %8693 = extractvalue %dx.types.CBufRet.f32 %8691, 1
  %8694 = fsub fast float %8689, %8692
  %8695 = fsub fast float %8690, %8693
  %8696 = extractvalue %dx.types.CBufRet.f32 %8688, 2
  %8697 = fsub fast float -0.000000e+00, %8694
  %8698 = fsub fast float -0.000000e+00, %8695
  %8699 = call float @dx.op.dot2.f32(i32 54, float %8518, float %8519, float %8697, float %8698)  ; Dot2(ax,ay,bx,by)
  %8700 = fmul fast float %8699, 2.000000e+00
  %8701 = call float @dx.op.dot2.f32(i32 54, float %8697, float %8698, float %8697, float %8698)  ; Dot2(ax,ay,bx,by)
  %8702 = fmul fast float %8696, %8696
  %8703 = fsub fast float %8701, %8702
  %8704 = fmul fast float %8700, %8700
  %8705 = fmul fast float %8561, %8703
  %8706 = fsub fast float %8704, %8705
  %8707 = fcmp fast ogt float %8706, 0.000000e+00
  br i1 %8707, label %8708, label %8723

; <label>:8708                                    ; preds = %8684
  %8709 = fcmp fast ogt float %8700, 0.000000e+00
  %8710 = call float @dx.op.unary.f32(i32 24, float %8706)  ; Sqrt(value)
  %8711 = fsub fast float -0.000000e+00, %8710
  %8712 = select i1 %8709, float %8710, float %8711
  %8713 = fadd fast float %8712, %8700
  %8714 = fmul float %8713, -5.000000e-01
  %8715 = fdiv fast float %8714, %8554
  %8716 = call float @dx.op.binary.f32(i32 35, float %8715, float 0.000000e+00)  ; FMax(a,b)
  %8717 = call float @dx.op.binary.f32(i32 36, float %8589, float %8716)  ; FMin(a,b)
  %8718 = fdiv fast float %8703, %8714
  %8719 = call float @dx.op.binary.f32(i32 35, float %8718, float 0.000000e+00)  ; FMax(a,b)
  %8720 = call float @dx.op.binary.f32(i32 36, float %8589, float %8719)  ; FMin(a,b)
  %8721 = call float @dx.op.binary.f32(i32 36, float %8717, float %8720)  ; FMin(a,b)
  %8722 = call float @dx.op.binary.f32(i32 35, float %8717, float %8720)  ; FMax(a,b)
  br label %8723

; <label>:8723                                    ; preds = %8708, %8684
  %8724 = phi float [ %8722, %8708 ], [ -1.000000e+00, %8684 ]
  %8725 = phi float [ %8721, %8708 ], [ -1.000000e+00, %8684 ]
  %8726 = phi i1 [ true, %8708 ], [ false, %8684 ]
  br i1 %8726, label %8727, label %8733

; <label>:8727                                    ; preds = %8723
  %8728 = call float @dx.op.binary.f32(i32 35, float %8672, float %8725)  ; FMax(a,b)
  %8729 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8686
  store float %8728, float* %8729, align 4, !tbaa !133, !noalias !135
  %8730 = call float @dx.op.binary.f32(i32 35, float %8672, float %8724)  ; FMax(a,b)
  %8731 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8686
  store float %8730, float* %8731, align 4, !tbaa !133, !noalias !135
  %8732 = add nsw i32 %8685, 1
  br label %8733

; <label>:8733                                    ; preds = %8727, %8723
  %8734 = phi i32 [ %8732, %8727 ], [ %8685, %8723 ]
  %8735 = add nuw nsw i32 %8686, 1
  %8736 = icmp eq i32 %8735, %8541
  br i1 %8736, label %8737, label %8684

; <label>:8737                                    ; preds = %8733
  %8738 = load float, float* %8678, align 4, !tbaa !133, !alias.scope !151, !noalias !154
  %8739 = load float, float* %8677, align 4, !tbaa !133, !alias.scope !157, !noalias !158
  %8740 = load float, float* %8676, align 4, !tbaa !133, !alias.scope !159, !noalias !160
  %8741 = load float, float* %8681, align 4, !tbaa !133, !alias.scope !161, !noalias !164
  %8742 = load float, float* %8680, align 4, !tbaa !133, !alias.scope !167, !noalias !168
  %8743 = load float, float* %8679, align 4, !tbaa !133, !alias.scope !169, !noalias !170
  br label %8744

; <label>:8744                                    ; preds = %8737, %8671
  %8745 = phi float [ -1.000000e+00, %8671 ], [ %8743, %8737 ]
  %8746 = phi float [ -1.000000e+00, %8671 ], [ %8742, %8737 ]
  %8747 = phi float [ -1.000000e+00, %8671 ], [ %8741, %8737 ]
  %8748 = phi float [ -1.000000e+00, %8671 ], [ %8740, %8737 ]
  %8749 = phi float [ -1.000000e+00, %8671 ], [ %8739, %8737 ]
  %8750 = phi float [ -1.000000e+00, %8671 ], [ %8738, %8737 ]
  %8751 = phi i32 [ 0, %8671 ], [ %8734, %8737 ]
  %8752 = call float @dx.op.binary.f32(i32 36, float %8748, float %8749)  ; FMin(a,b)
  %8753 = call float @dx.op.binary.f32(i32 36, float %8752, float %8750)  ; FMin(a,b)
  %8754 = call float @dx.op.binary.f32(i32 35, float %8748, float %8749)  ; FMax(a,b)
  %8755 = call float @dx.op.binary.f32(i32 36, float %8754, float %8750)  ; FMin(a,b)
  %8756 = call float @dx.op.binary.f32(i32 35, float %8752, float %8755)  ; FMax(a,b)
  %8757 = call float @dx.op.binary.f32(i32 35, float %8754, float %8750)  ; FMax(a,b)
  store float %8753, float* %8676, align 4, !tbaa !133, !alias.scope !159, !noalias !160
  store float %8756, float* %8677, align 4, !tbaa !133, !alias.scope !157, !noalias !158
  store float %8757, float* %8678, align 4, !tbaa !133, !alias.scope !151, !noalias !154
  %8758 = call float @dx.op.binary.f32(i32 36, float %8745, float %8746)  ; FMin(a,b)
  %8759 = call float @dx.op.binary.f32(i32 36, float %8758, float %8747)  ; FMin(a,b)
  %8760 = call float @dx.op.binary.f32(i32 35, float %8745, float %8746)  ; FMax(a,b)
  %8761 = call float @dx.op.binary.f32(i32 36, float %8760, float %8747)  ; FMin(a,b)
  %8762 = call float @dx.op.binary.f32(i32 35, float %8758, float %8761)  ; FMax(a,b)
  %8763 = call float @dx.op.binary.f32(i32 35, float %8760, float %8747)  ; FMax(a,b)
  store float %8759, float* %8679, align 4, !tbaa !133, !alias.scope !169, !noalias !170
  store float %8762, float* %8680, align 4, !tbaa !133, !alias.scope !167, !noalias !168
  store float %8763, float* %8681, align 4, !tbaa !133, !alias.scope !161, !noalias !164
  %8764 = sub nsw i32 3, %8751
  %8765 = icmp sgt i32 %8764, 2
  br i1 %8765, label %8766, label %8804

; <label>:8766                                    ; preds = %8744
  %8767 = icmp eq i32 %8539, 0
  %8768 = fsub fast float %8589, %8673
  %8769 = select i1 %8767, float %8768, float %8673
  %8770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8771 = extractvalue %dx.types.CBufRet.f32 %8770, 0
  %8772 = extractvalue %dx.types.CBufRet.f32 %8770, 1
  %8773 = extractvalue %dx.types.CBufRet.f32 %8770, 2
  %8774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8775 = extractvalue %dx.types.CBufRet.f32 %8774, 0
  %8776 = extractvalue %dx.types.CBufRet.f32 %8774, 1
  %8777 = extractvalue %dx.types.CBufRet.f32 %8774, 2
  %8778 = extractvalue %dx.types.CBufRet.f32 %8774, 3
  %8779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8780 = extractvalue %dx.types.CBufRet.f32 %8779, 3
  %8781 = call float @dx.op.binary.f32(i32 36, float %8674, float %8780)  ; FMin(a,b)
  %8782 = fmul fast float %8778, %8769
  %8783 = call float @dx.op.unary.f32(i32 7, float %8782)  ; Saturate(value)
  %8784 = fsub fast float %8775, %8771
  %8785 = fsub fast float %8776, %8772
  %8786 = fsub fast float %8777, %8773
  %8787 = fmul fast float %8783, %8784
  %8788 = fmul fast float %8783, %8785
  %8789 = fmul fast float %8783, %8786
  %8790 = fadd fast float %8787, %8771
  %8791 = fadd fast float %8788, %8772
  %8792 = fadd fast float %8789, %8773
  %8793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8794 = extractvalue %dx.types.CBufRet.f32 %8793, 0
  %8795 = extractvalue %dx.types.CBufRet.f32 %8793, 1
  %8796 = fadd fast float %8795, %8794
  %8797 = call float @dx.op.unary.f32(i32 7, float %8796)  ; Saturate(value)
  %8798 = extractvalue %dx.types.CBufRet.f32 %8793, 2
  %8799 = extractvalue %dx.types.CBufRet.f32 %8793, 3
  %8800 = fadd fast float %8799, %8798
  %8801 = call float @dx.op.unary.f32(i32 7, float %8800)  ; Saturate(value)
  %8802 = fmul fast float %8797, %8781
  %8803 = fmul fast float %8802, %8801
  br label %8886

; <label>:8804                                    ; preds = %8744
  %8805 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8764
  %8806 = load float, float* %8805, align 4, !tbaa !133, !noalias !135
  %8807 = fcmp fast olt float %8806, %8675
  %8808 = icmp sgt i32 %8751, 0
  %8809 = and i1 %8808, %8807
  br i1 %8809, label %8810, label %8847

; <label>:8810                                    ; preds = %8804
  br label %8811

; <label>:8811                                    ; preds = %8840, %8810
  %8812 = phi float [ %8841, %8840 ], [ %8673, %8810 ]
  %8813 = phi float [ %8842, %8840 ], [ %8674, %8810 ]
  %8814 = phi float [ %8822, %8840 ], [ %8806, %8810 ]
  %8815 = phi i32 [ %8819, %8840 ], [ %8764, %8810 ]
  %8816 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8815
  %8817 = load float, float* %8816, align 4, !tbaa !133, !noalias !135
  %8818 = icmp slt i32 %8815, 2
  %8819 = add nsw i32 %8815, 1
  %8820 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8819
  %8821 = load float, float* %8820, align 4, !tbaa !133, !noalias !135
  %8822 = select i1 %8818, float %8821, float %8589
  %8823 = call float @dx.op.binary.f32(i32 36, float %8822, float %8817)  ; FMin(a,b)
  %8824 = call float @dx.op.binary.f32(i32 36, float %8675, float %8823)  ; FMin(a,b)
  %8825 = icmp eq i32 %8539, 0
  %8826 = fadd fast float %8824, %8814
  %8827 = fmul fast float %8826, %8520
  %8828 = fadd fast float %8827, %8533
  br i1 %8825, label %8834, label %8829

; <label>:8829                                    ; preds = %8811
  %8830 = fsub fast float %8824, %8814
  %8831 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8830)  ; FMax(a,b)
  %8832 = fmul fast float %8831, %8828
  %8833 = fadd fast float %8832, %8813
  br label %8840

; <label>:8834                                    ; preds = %8811
  %8835 = fsub fast float %8814, %8824
  %8836 = call float @dx.op.unary.f32(i32 6, float %8835)  ; FAbs(value)
  %8837 = fadd fast float %8836, %8812
  %8838 = fmul fast float %8836, %8828
  %8839 = fsub fast float %8813, %8838
  br label %8840

; <label>:8840                                    ; preds = %8834, %8829
  %8841 = phi float [ %8831, %8829 ], [ %8837, %8834 ]
  %8842 = phi float [ %8833, %8829 ], [ %8839, %8834 ]
  %8843 = fcmp fast olt float %8822, %8675
  %8844 = icmp slt i32 %8819, 3
  %8845 = and i1 %8844, %8843
  br i1 %8845, label %8811, label %8846

; <label>:8846                                    ; preds = %8840
  br label %8847

; <label>:8847                                    ; preds = %8846, %8804
  %8848 = phi float [ %8673, %8804 ], [ %8841, %8846 ]
  %8849 = phi float [ %8674, %8804 ], [ %8842, %8846 ]
  %8850 = fsub fast float %8589, %8848
  %8851 = select i1 %8591, float %8848, float %8850
  %8852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8853 = extractvalue %dx.types.CBufRet.f32 %8852, 0
  %8854 = extractvalue %dx.types.CBufRet.f32 %8852, 1
  %8855 = extractvalue %dx.types.CBufRet.f32 %8852, 2
  %8856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8857 = extractvalue %dx.types.CBufRet.f32 %8856, 0
  %8858 = extractvalue %dx.types.CBufRet.f32 %8856, 1
  %8859 = extractvalue %dx.types.CBufRet.f32 %8856, 2
  %8860 = extractvalue %dx.types.CBufRet.f32 %8856, 3
  %8861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8862 = extractvalue %dx.types.CBufRet.f32 %8861, 3
  %8863 = call float @dx.op.binary.f32(i32 36, float %8849, float %8862)  ; FMin(a,b)
  %8864 = fmul fast float %8860, %8851
  %8865 = call float @dx.op.unary.f32(i32 7, float %8864)  ; Saturate(value)
  %8866 = fsub fast float %8857, %8853
  %8867 = fsub fast float %8858, %8854
  %8868 = fsub fast float %8859, %8855
  %8869 = fmul fast float %8865, %8866
  %8870 = fmul fast float %8865, %8867
  %8871 = fmul fast float %8865, %8868
  %8872 = fadd fast float %8869, %8853
  %8873 = fadd fast float %8870, %8854
  %8874 = fadd fast float %8871, %8855
  %8875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8876 = extractvalue %dx.types.CBufRet.f32 %8875, 0
  %8877 = extractvalue %dx.types.CBufRet.f32 %8875, 1
  %8878 = fadd fast float %8877, %8876
  %8879 = call float @dx.op.unary.f32(i32 7, float %8878)  ; Saturate(value)
  %8880 = extractvalue %dx.types.CBufRet.f32 %8875, 2
  %8881 = extractvalue %dx.types.CBufRet.f32 %8875, 3
  %8882 = fadd fast float %8881, %8880
  %8883 = call float @dx.op.unary.f32(i32 7, float %8882)  ; Saturate(value)
  %8884 = fmul fast float %8879, %8863
  %8885 = fmul fast float %8884, %8883
  br label %8886

; <label>:8886                                    ; preds = %8847, %8766, %8605, %8587, %8585
  %8887 = phi float [ %8614, %8605 ], [ %8769, %8766 ], [ %8851, %8847 ], [ 0.000000e+00, %8585 ], [ 0.000000e+00, %8587 ]
  %8888 = phi float [ %8648, %8605 ], [ %8803, %8766 ], [ %8885, %8847 ], [ 0.000000e+00, %8585 ], [ 0.000000e+00, %8587 ]
  %8889 = phi float [ %8635, %8605 ], [ %8790, %8766 ], [ %8872, %8847 ], [ 0.000000e+00, %8585 ], [ 0.000000e+00, %8587 ]
  %8890 = phi float [ %8636, %8605 ], [ %8791, %8766 ], [ %8873, %8847 ], [ 0.000000e+00, %8585 ], [ 0.000000e+00, %8587 ]
  %8891 = phi float [ %8637, %8605 ], [ %8792, %8766 ], [ %8874, %8847 ], [ 0.000000e+00, %8585 ], [ 0.000000e+00, %8587 ]
  %8892 = fmul fast float %8528, %8888
  %8893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8894 = extractvalue %dx.types.CBufRet.f32 %8893, 2
  %8895 = fsub fast float %8535, %8894
  %8896 = fcmp fast olt float %8892, -2.000000e+01
  %8897 = call float @dx.op.unary.f32(i32 21, float %8892)  ; Exp(value)
  %8898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8899 = extractvalue %dx.types.CBufRet.f32 %8898, 2
  %8900 = extractvalue %dx.types.CBufRet.f32 %8898, 3
  %8901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8902 = extractvalue %dx.types.CBufRet.f32 %8901, 2
  %8903 = fmul fast float %8900, %8895
  %8904 = call float @dx.op.unary.f32(i32 7, float %8903)  ; Saturate(value)
  %8905 = fsub fast float 1.000000e+00, %8904
  %8906 = fmul fast float %8520, 5.000000e-01
  %8907 = fadd fast float %8906, 5.000000e-01
  %8908 = call float @dx.op.unary.f32(i32 7, float %8907)  ; Saturate(value)
  %8909 = fsub fast float 1.000000e+00, %8908
  %8910 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8905)  ; FMax(a,b)
  %8911 = fdiv fast float %8909, %8910
  %8912 = fsub fast float %8895, %8477
  %8913 = call float @dx.op.unary.f32(i32 6, float %8912)  ; FAbs(value)
  %8914 = fmul fast float %8913, %8899
  %8915 = call float @dx.op.unary.f32(i32 7, float %8911)  ; Saturate(value)
  %8916 = fsub fast float 1.000000e+00, %8914
  %8917 = fmul fast float %8916, %8915
  %8918 = fadd fast float %8917, %8914
  %8919 = fmul fast float %8902, %8895
  %8920 = call float @dx.op.unary.f32(i32 7, float %8919)  ; Saturate(value)
  %8921 = fsub fast float 1.000000e+00, %8918
  %8922 = fmul fast float %8921, %8920
  %8923 = fadd fast float %8922, %8918
  %8924 = call float @dx.op.unary.f32(i32 7, float %8923)  ; Saturate(value)
  %8925 = fadd fast float %8897, -1.000000e+00
  %8926 = select i1 %8896, float -1.000000e+00, float %8925
  %8927 = fmul fast float %8924, %8926
  %8928 = fadd fast float %8927, 1.000000e+00
  %8929 = fsub fast float -0.000000e+00, %8927
  %8930 = fmul fast float %8889, %8929
  %8931 = fmul fast float %8890, %8929
  %8932 = fmul fast float %8891, %8929
  br label %8933

; <label>:8933                                    ; preds = %8886, %8486
  %8934 = phi float [ %8887, %8886 ], [ 0.000000e+00, %8486 ]
  %8935 = phi float [ %8928, %8886 ], [ 1.000000e+00, %8486 ]
  %8936 = phi float [ %8930, %8886 ], [ 0.000000e+00, %8486 ]
  %8937 = phi float [ %8931, %8886 ], [ 0.000000e+00, %8486 ]
  %8938 = phi float [ %8932, %8886 ], [ 0.000000e+00, %8486 ]
  %8939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8940 = extractvalue %dx.types.CBufRet.f32 %8939, 1
  %8941 = fsub fast float 1.000000e+00, %8935
  %8942 = fmul fast float %8941, %8521
  %8943 = fmul fast float %8942, %8940
  %8944 = fsub fast float %8521, %8943
  br i1 %8514, label %8945, label %8974, !dx.controlflow.hints !171

; <label>:8945                                    ; preds = %8933
  %8946 = fmul fast float %8522, %8511
  %8947 = fadd fast float %8946, %8512
  %8948 = call float @dx.op.unary.f32(i32 7, float %8947)  ; Saturate(value)
  %8949 = fmul fast float %8493, %8944
  %8950 = fsub fast float -0.000000e+00, %8949
  %8951 = fmul fast float %8494, %8944
  %8952 = fsub fast float -0.000000e+00, %8951
  %8953 = call float @dx.op.unary.f32(i32 21, float %8950)  ; Exp(value)
  %8954 = call float @dx.op.unary.f32(i32 21, float %8952)  ; Exp(value)
  %8955 = call float @dx.op.binary.f32(i32 35, float %8501, float %8953)  ; FMax(a,b)
  %8956 = call float @dx.op.binary.f32(i32 35, float %8501, float %8954)  ; FMax(a,b)
  %8957 = fsub fast float %8956, %8955
  %8958 = fmul fast float %8957, %8948
  %8959 = fadd fast float %8958, %8955
  %8960 = call float @dx.op.unary.f32(i32 7, float %8959)  ; Saturate(value)
  %8961 = fsub fast float %8498, %8503
  %8962 = fsub fast float %8499, %8504
  %8963 = fsub fast float %8500, %8505
  %8964 = fmul fast float %8948, %8961
  %8965 = fmul fast float %8948, %8962
  %8966 = fmul fast float %8948, %8963
  %8967 = fadd fast float %8964, %8503
  %8968 = fadd fast float %8965, %8504
  %8969 = fadd fast float %8966, %8505
  %8970 = fsub fast float 1.000000e+00, %8960
  %8971 = fmul fast float %8970, %8967
  %8972 = fmul fast float %8970, %8968
  %8973 = fmul fast float %8970, %8969
  br label %9033

; <label>:8974                                    ; preds = %8933
  %8975 = fmul fast float %8944, %8510
  %8976 = call float @dx.op.unary.f32(i32 7, float %8975)  ; Saturate(value)
  %8977 = fsub fast float 2.000000e+00, %8976
  %8978 = fmul fast float %8976, 9.921875e-01
  %8979 = fmul fast float %8978, %8977
  %8980 = fadd fast float %8979, 3.906250e-03
  %8981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %52, float %8980, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8982 = extractvalue %dx.types.ResRet.f32 %8981, 0
  %8983 = fsub fast float %8976, %8982
  %8984 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8983)  ; FMax(a,b)
  %8985 = fmul fast float %8496, %8477
  %8986 = call float @dx.op.unary.f32(i32 6, float %8985)  ; FAbs(value)
  %8987 = fcmp fast ogt float %8986, 0x3EB0C6F7A0000000
  br i1 %8987, label %8988, label %8994, !dx.controlflow.hints !172

; <label>:8988                                    ; preds = %8974
  %8989 = fmul fast float %8985, 0xBFF7154760000000
  %8990 = call float @dx.op.unary.f32(i32 21, float %8989)  ; Exp(value)
  %8991 = fsub fast float 1.000000e+00, %8990
  %8992 = fdiv fast float %8991, %8985
  %8993 = fmul fast float %8992, %8506
  br label %8994

; <label>:8994                                    ; preds = %8988, %8974
  %8995 = phi float [ %8993, %8988 ], [ %8506, %8974 ]
  %8996 = fadd fast float %8995, %8508
  %8997 = fmul fast float %8996, %8984
  %8998 = fmul fast float %8493, %8997
  %8999 = fsub fast float -0.000000e+00, %8998
  %9000 = fmul fast float %8494, %8997
  %9001 = fsub fast float -0.000000e+00, %9000
  %9002 = fmul fast float %8495, %8997
  %9003 = fsub fast float -0.000000e+00, %9002
  %9004 = call float @dx.op.unary.f32(i32 21, float %8999)  ; Exp(value)
  %9005 = call float @dx.op.unary.f32(i32 21, float %9001)  ; Exp(value)
  %9006 = call float @dx.op.unary.f32(i32 21, float %9003)  ; Exp(value)
  %9007 = fmul fast float %8522, %8522
  %9008 = fadd fast float %9007, 1.000000e+00
  %9009 = fmul fast float %9008, 0x3FAE8EC8A0000000
  %9010 = fmul fast float %9009, %8503
  %9011 = fmul fast float %9009, %8504
  %9012 = fmul fast float %9009, %8505
  %9013 = fmul fast float %8522, %8501
  %9014 = fsub fast float 1.000000e+00, %9013
  %9015 = fmul fast float %8501, %8501
  %9016 = fsub fast float 1.000000e+00, %9015
  %9017 = fmul fast float %9016, 0x3FB45F3060000000
  %9018 = fmul fast float %9014, %9014
  %9019 = fdiv fast float 1.000000e+00, %9018
  %9020 = fmul fast float %9017, %9019
  %9021 = fmul fast float %9020, %8498
  %9022 = fmul fast float %9020, %8499
  %9023 = fmul fast float %9020, %8500
  %9024 = fadd fast float %9021, %9010
  %9025 = fadd fast float %9022, %9011
  %9026 = fadd fast float %9023, %9012
  %9027 = fsub fast float 1.000000e+00, %9004
  %9028 = fsub fast float 1.000000e+00, %9005
  %9029 = fsub fast float 1.000000e+00, %9006
  %9030 = fmul fast float %9024, %9027
  %9031 = fmul fast float %9025, %9028
  %9032 = fmul fast float %9026, %9029
  br label %9033

; <label>:9033                                    ; preds = %8994, %8945
  %9034 = phi float [ %8971, %8945 ], [ %9030, %8994 ]
  %9035 = phi float [ %8972, %8945 ], [ %9031, %8994 ]
  %9036 = phi float [ %8973, %8945 ], [ %9032, %8994 ]
  %9037 = phi float [ %8960, %8945 ], [ %9004, %8994 ]
  %9038 = phi float [ %8960, %8945 ], [ %9005, %8994 ]
  %9039 = phi float [ %8960, %8945 ], [ %9006, %8994 ]
  br i1 %8530, label %9040, label %9238, !dx.controlflow.hints !173

; <label>:9040                                    ; preds = %9033
  %9041 = extractvalue %dx.types.CBufRet.f32 %8939, 0
  %9042 = fmul fast float %9041, %8941
  %9043 = fsub fast float %8936, %9034
  %9044 = fsub fast float %8937, %9035
  %9045 = fsub fast float %8938, %9036
  %9046 = fmul fast float %9042, %9043
  %9047 = fmul fast float %9042, %9044
  %9048 = fmul fast float %9042, %9045
  %9049 = fadd fast float %9046, %9034
  %9050 = fadd fast float %9047, %9035
  %9051 = fadd fast float %9048, %9036
  %9052 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9037)  ; FMax(a,b)
  %9053 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9038)  ; FMax(a,b)
  %9054 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9039)  ; FMax(a,b)
  %9055 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8935)  ; FMax(a,b)
  %9056 = call float @dx.op.binary.f32(i32 35, float %8934, float %8944)  ; FMax(a,b)
  %9057 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9056)  ; FMax(a,b)
  %9058 = fdiv fast float %8934, %9057
  %9059 = call float @dx.op.unary.f32(i32 7, float %9058)  ; Saturate(value)
  %9060 = fdiv fast float %8944, %9057
  %9061 = call float @dx.op.unary.f32(i32 7, float %9060)  ; Saturate(value)
  %9062 = fcmp fast une float %9055, 1.000000e+00
  br i1 %9062, label %9063, label %9076, !dx.controlflow.hints !174

; <label>:9063                                    ; preds = %9040
  %9064 = call float @dx.op.unary.f32(i32 23, float %9055)  ; Log(value)
  %9065 = fmul fast float %9064, 0x3FE62E4300000000
  %9066 = fmul fast float %8936, %9065
  %9067 = fsub fast float -0.000000e+00, %9066
  %9068 = fmul fast float %8937, %9065
  %9069 = fsub fast float -0.000000e+00, %9068
  %9070 = fmul fast float %8938, %9065
  %9071 = fsub fast float -0.000000e+00, %9070
  %9072 = fsub fast float 1.000000e+00, %9055
  %9073 = fdiv fast float %9067, %9072
  %9074 = fdiv fast float %9069, %9072
  %9075 = fdiv fast float %9071, %9072
  br label %9076

; <label>:9076                                    ; preds = %9063, %9040
  %9077 = phi float [ %9073, %9063 ], [ %8936, %9040 ]
  %9078 = phi float [ %9074, %9063 ], [ %8937, %9040 ]
  %9079 = phi float [ %9075, %9063 ], [ %8938, %9040 ]
  %9080 = phi float [ %9065, %9063 ], [ 0.000000e+00, %9040 ]
  %9081 = fcmp fast une float %9052, 1.000000e+00
  br i1 %9081, label %9082, label %9089, !dx.controlflow.hints !175

; <label>:9082                                    ; preds = %9076
  %9083 = call float @dx.op.unary.f32(i32 23, float %9052)  ; Log(value)
  %9084 = fmul fast float %9083, 0x3FE62E4300000000
  %9085 = fmul fast float %9049, %9084
  %9086 = fsub fast float -0.000000e+00, %9085
  %9087 = fsub fast float 1.000000e+00, %9052
  %9088 = fdiv fast float %9086, %9087
  br label %9089

; <label>:9089                                    ; preds = %9082, %9076
  %9090 = phi float [ %9088, %9082 ], [ %9049, %9076 ]
  %9091 = phi float [ %9084, %9082 ], [ 0.000000e+00, %9076 ]
  %9092 = fcmp fast une float %9053, 1.000000e+00
  br i1 %9092, label %9093, label %9100, !dx.controlflow.hints !175

; <label>:9093                                    ; preds = %9089
  %9094 = call float @dx.op.unary.f32(i32 23, float %9053)  ; Log(value)
  %9095 = fmul fast float %9094, 0x3FE62E4300000000
  %9096 = fmul fast float %9050, %9095
  %9097 = fsub fast float -0.000000e+00, %9096
  %9098 = fsub fast float 1.000000e+00, %9053
  %9099 = fdiv fast float %9097, %9098
  br label %9100

; <label>:9100                                    ; preds = %9093, %9089
  %9101 = phi float [ %9099, %9093 ], [ %9050, %9089 ]
  %9102 = phi float [ %9095, %9093 ], [ 0.000000e+00, %9089 ]
  %9103 = fcmp fast une float %9054, 1.000000e+00
  br i1 %9103, label %9104, label %9111, !dx.controlflow.hints !175

; <label>:9104                                    ; preds = %9100
  %9105 = call float @dx.op.unary.f32(i32 23, float %9054)  ; Log(value)
  %9106 = fmul fast float %9105, 0x3FE62E4300000000
  %9107 = fmul fast float %9051, %9106
  %9108 = fsub fast float -0.000000e+00, %9107
  %9109 = fsub fast float 1.000000e+00, %9054
  %9110 = fdiv fast float %9108, %9109
  br label %9111

; <label>:9111                                    ; preds = %9104, %9100
  %9112 = phi float [ %9110, %9104 ], [ %9051, %9100 ]
  %9113 = phi float [ %9106, %9104 ], [ 0.000000e+00, %9100 ]
  %9114 = fmul fast float %9077, %9061
  %9115 = fmul fast float %9078, %9061
  %9116 = fmul fast float %9079, %9061
  %9117 = fmul fast float %9080, %9061
  %9118 = fmul fast float %9090, %9059
  %9119 = fmul fast float %9101, %9059
  %9120 = fmul fast float %9112, %9059
  %9121 = fmul fast float %9091, %9059
  %9122 = fmul fast float %9102, %9059
  %9123 = fmul fast float %9113, %9059
  %9124 = fadd fast float %9118, %9114
  %9125 = fadd fast float %9119, %9115
  %9126 = fadd fast float %9120, %9116
  %9127 = fadd fast float %9121, %9117
  %9128 = fadd fast float %9122, %9117
  %9129 = fadd fast float %9123, %9117
  %9130 = fcmp fast une float %9127, 0.000000e+00
  br i1 %9130, label %9131, label %9138, !dx.controlflow.hints !176

; <label>:9131                                    ; preds = %9111
  %9132 = fmul fast float %9127, 0x3FF7154760000000
  %9133 = call float @dx.op.unary.f32(i32 21, float %9132)  ; Exp(value)
  %9134 = fsub fast float 1.000000e+00, %9133
  %9135 = fmul fast float %9124, %9134
  %9136 = fsub fast float -0.000000e+00, %9135
  %9137 = fdiv fast float %9136, %9127
  br label %9138

; <label>:9138                                    ; preds = %9131, %9111
  %9139 = phi float [ %9133, %9131 ], [ 1.000000e+00, %9111 ]
  %9140 = phi float [ %9137, %9131 ], [ %9124, %9111 ]
  %9141 = fcmp fast une float %9128, 0.000000e+00
  br i1 %9141, label %9142, label %9149, !dx.controlflow.hints !176

; <label>:9142                                    ; preds = %9138
  %9143 = fmul fast float %9128, 0x3FF7154760000000
  %9144 = call float @dx.op.unary.f32(i32 21, float %9143)  ; Exp(value)
  %9145 = fsub fast float 1.000000e+00, %9144
  %9146 = fmul fast float %9125, %9145
  %9147 = fsub fast float -0.000000e+00, %9146
  %9148 = fdiv fast float %9147, %9128
  br label %9149

; <label>:9149                                    ; preds = %9142, %9138
  %9150 = phi float [ %9144, %9142 ], [ 1.000000e+00, %9138 ]
  %9151 = phi float [ %9148, %9142 ], [ %9125, %9138 ]
  %9152 = fcmp fast une float %9129, 0.000000e+00
  br i1 %9152, label %9153, label %9160, !dx.controlflow.hints !176

; <label>:9153                                    ; preds = %9149
  %9154 = fmul fast float %9129, 0x3FF7154760000000
  %9155 = call float @dx.op.unary.f32(i32 21, float %9154)  ; Exp(value)
  %9156 = fsub fast float 1.000000e+00, %9155
  %9157 = fmul fast float %9126, %9156
  %9158 = fsub fast float -0.000000e+00, %9157
  %9159 = fdiv fast float %9158, %9129
  br label %9160

; <label>:9160                                    ; preds = %9153, %9149
  %9161 = phi float [ %9155, %9153 ], [ 1.000000e+00, %9149 ]
  %9162 = phi float [ %9159, %9153 ], [ %9126, %9149 ]
  %9163 = fcmp fast ogt float %9059, %9061
  br i1 %9163, label %9164, label %9184

; <label>:9164                                    ; preds = %9160
  %9165 = fsub fast float 1.000000e+00, %9061
  %9166 = fmul fast float %9077, %9165
  %9167 = fmul fast float %9078, %9165
  %9168 = fmul fast float %9079, %9165
  %9169 = fmul fast float %9080, %9165
  %9170 = fcmp fast une float %9169, 0.000000e+00
  br i1 %9170, label %9171, label %9222, !dx.controlflow.hints !177

; <label>:9171                                    ; preds = %9164
  %9172 = fmul fast float %9169, 0x3FF7154760000000
  %9173 = call float @dx.op.unary.f32(i32 21, float %9172)  ; Exp(value)
  %9174 = fsub fast float 1.000000e+00, %9173
  %9175 = fmul fast float %9166, %9174
  %9176 = fsub fast float -0.000000e+00, %9175
  %9177 = fmul fast float %9167, %9174
  %9178 = fsub fast float -0.000000e+00, %9177
  %9179 = fmul fast float %9168, %9174
  %9180 = fsub fast float -0.000000e+00, %9179
  %9181 = fdiv fast float %9176, %9169
  %9182 = fdiv fast float %9178, %9169
  %9183 = fdiv fast float %9180, %9169
  br label %9222

; <label>:9184                                    ; preds = %9160
  %9185 = fsub fast float 1.000000e+00, %9059
  %9186 = fmul fast float %9090, %9185
  %9187 = fmul fast float %9101, %9185
  %9188 = fmul fast float %9112, %9185
  %9189 = fmul fast float %9091, %9185
  %9190 = fmul fast float %9102, %9185
  %9191 = fmul fast float %9113, %9185
  %9192 = fcmp fast une float %9189, 0.000000e+00
  br i1 %9192, label %9193, label %9200, !dx.controlflow.hints !176

; <label>:9193                                    ; preds = %9184
  %9194 = fmul fast float %9189, 0x3FF7154760000000
  %9195 = call float @dx.op.unary.f32(i32 21, float %9194)  ; Exp(value)
  %9196 = fsub fast float 1.000000e+00, %9195
  %9197 = fmul fast float %9186, %9196
  %9198 = fsub fast float -0.000000e+00, %9197
  %9199 = fdiv fast float %9198, %9189
  br label %9200

; <label>:9200                                    ; preds = %9193, %9184
  %9201 = phi float [ %9199, %9193 ], [ %9186, %9184 ]
  %9202 = phi float [ %9195, %9193 ], [ 1.000000e+00, %9184 ]
  %9203 = fcmp fast une float %9190, 0.000000e+00
  br i1 %9203, label %9204, label %9211, !dx.controlflow.hints !176

; <label>:9204                                    ; preds = %9200
  %9205 = fmul fast float %9190, 0x3FF7154760000000
  %9206 = call float @dx.op.unary.f32(i32 21, float %9205)  ; Exp(value)
  %9207 = fsub fast float 1.000000e+00, %9206
  %9208 = fmul fast float %9187, %9207
  %9209 = fsub fast float -0.000000e+00, %9208
  %9210 = fdiv fast float %9209, %9190
  br label %9211

; <label>:9211                                    ; preds = %9204, %9200
  %9212 = phi float [ %9210, %9204 ], [ %9187, %9200 ]
  %9213 = phi float [ %9206, %9204 ], [ 1.000000e+00, %9200 ]
  %9214 = fcmp fast une float %9191, 0.000000e+00
  br i1 %9214, label %9215, label %9222, !dx.controlflow.hints !176

; <label>:9215                                    ; preds = %9211
  %9216 = fmul fast float %9191, 0x3FF7154760000000
  %9217 = call float @dx.op.unary.f32(i32 21, float %9216)  ; Exp(value)
  %9218 = fsub fast float 1.000000e+00, %9217
  %9219 = fmul fast float %9188, %9218
  %9220 = fsub fast float -0.000000e+00, %9219
  %9221 = fdiv fast float %9220, %9191
  br label %9222

; <label>:9222                                    ; preds = %9215, %9211, %9171, %9164
  %9223 = phi float [ %9221, %9215 ], [ %9183, %9171 ], [ %9168, %9164 ], [ %9188, %9211 ]
  %9224 = phi float [ %9212, %9215 ], [ %9182, %9171 ], [ %9167, %9164 ], [ %9212, %9211 ]
  %9225 = phi float [ %9201, %9215 ], [ %9181, %9171 ], [ %9166, %9164 ], [ %9201, %9211 ]
  %9226 = phi float [ %9217, %9215 ], [ %9173, %9171 ], [ 1.000000e+00, %9164 ], [ 1.000000e+00, %9211 ]
  %9227 = phi float [ %9213, %9215 ], [ %9173, %9171 ], [ 1.000000e+00, %9164 ], [ %9213, %9211 ]
  %9228 = phi float [ %9202, %9215 ], [ %9173, %9171 ], [ 1.000000e+00, %9164 ], [ %9202, %9211 ]
  %9229 = fmul fast float %9228, %9140
  %9230 = fmul fast float %9227, %9151
  %9231 = fmul fast float %9226, %9162
  %9232 = fadd fast float %9229, %9225
  %9233 = fadd fast float %9230, %9224
  %9234 = fadd fast float %9231, %9223
  %9235 = fmul fast float %9228, %9139
  %9236 = fmul fast float %9227, %9150
  %9237 = fmul fast float %9226, %9161
  br label %9238

; <label>:9238                                    ; preds = %9222, %9033
  %9239 = phi float [ %9237, %9222 ], [ %9039, %9033 ]
  %9240 = phi float [ %9236, %9222 ], [ %9038, %9033 ]
  %9241 = phi float [ %9235, %9222 ], [ %9037, %9033 ]
  %9242 = phi float [ %9234, %9222 ], [ %9036, %9033 ]
  %9243 = phi float [ %9233, %9222 ], [ %9035, %9033 ]
  %9244 = phi float [ %9232, %9222 ], [ %9034, %9033 ]
  %9245 = fmul fast float %9241, %8485
  %9246 = call float @dx.op.dot3.f32(i32 55, float %9241, float %9240, float %9239, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9247 = call float @dx.op.dot3.f32(i32 55, float %9244, float %9243, float %9242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9248 = select i1 %266, float %9246, float %9241
  %9249 = select i1 %266, float %9246, float %9240
  %9250 = select i1 %266, float 1.000000e+00, float %9239
  %9251 = select i1 %266, float %9247, float %9244
  %9252 = select i1 %266, float 0.000000e+00, float %9243
  %9253 = select i1 %266, float 0.000000e+00, float %9242
  %9254 = fmul fast float %9248, %8479
  %9255 = fmul fast float %9249, %8480
  %9256 = fmul fast float %9250, %8481
  %9257 = fadd fast float %9254, %9251
  %9258 = fadd fast float %9255, %9252
  %9259 = fadd fast float %9253, %9256
  %9260 = fmul fast float %9248, %8482
  %9261 = fmul fast float %9249, %8483
  %9262 = fmul fast float %9250, %8484
  %9263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9264 = extractvalue %dx.types.CBufRet.i32 %9263, 0
  %9265 = icmp eq i32 %9264, 0
  br i1 %9265, label %9623, label %9266, !dx.controlflow.hints !178

; <label>:9266                                    ; preds = %9238
  %9267 = fmul fast float %6298, %115
  %9268 = fmul fast float %6299, %116
  %9269 = fmul fast float %9267, 2.000000e+00
  %9270 = fmul fast float %9268, 2.000000e+00
  %9271 = fsub fast float 1.000000e+00, %9269
  %9272 = fsub fast float 1.000000e+00, %9270
  %9273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9274 = extractvalue %dx.types.CBufRet.f32 %9273, 0
  %9275 = extractvalue %dx.types.CBufRet.f32 %9273, 1
  %9276 = extractvalue %dx.types.CBufRet.f32 %9273, 2
  %9277 = fmul fast float %9271, %9274
  %9278 = fmul fast float %9271, %9275
  %9279 = fmul fast float %9271, %9276
  %9280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9281 = extractvalue %dx.types.CBufRet.f32 %9280, 0
  %9282 = extractvalue %dx.types.CBufRet.f32 %9280, 1
  %9283 = extractvalue %dx.types.CBufRet.f32 %9280, 2
  %9284 = fmul fast float %9272, %9281
  %9285 = fmul fast float %9272, %9282
  %9286 = fmul fast float %9272, %9283
  %9287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9288 = extractvalue %dx.types.CBufRet.f32 %9287, 0
  %9289 = extractvalue %dx.types.CBufRet.f32 %9287, 1
  %9290 = extractvalue %dx.types.CBufRet.f32 %9287, 2
  %9291 = fadd fast float %9284, %9288
  %9292 = fadd fast float %9291, %9277
  %9293 = fadd fast float %9285, %9289
  %9294 = fadd fast float %9293, %9278
  %9295 = fadd fast float %9286, %9290
  %9296 = fadd fast float %9295, %9279
  %9297 = fmul fast float %9292, %8478
  %9298 = fmul fast float %9294, %8478
  %9299 = fmul fast float %9296, %8478
  %9300 = fmul fast float %9297, %9297
  %9301 = fmul fast float %9298, %9298
  %9302 = fadd fast float %9300, %9301
  %9303 = fmul fast float %9299, %9299
  %9304 = fadd fast float %9302, %9303
  %9305 = call float @dx.op.unary.f32(i32 24, float %9304)  ; Sqrt(value)
  %9306 = extractvalue %dx.types.CBufRet.f32 %8213, 0
  %9307 = fsub fast float %9305, %9306
  %9308 = extractvalue %dx.types.CBufRet.f32 %8213, 2
  %9309 = fmul fast float %9307, %9308
  %9310 = call float @dx.op.unary.f32(i32 7, float %9309)  ; Saturate(value)
  %9311 = fadd fast float %9310, -5.000000e-01
  %9312 = fmul fast float %9311, 2.000000e+00
  %9313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9314 = extractvalue %dx.types.CBufRet.f32 %9313, 2
  %9315 = call float @dx.op.binary.f32(i32 36, float %9314, float %9312)  ; FMin(a,b)
  %9316 = fsub fast float -0.000000e+00, %9314
  %9317 = fcmp fast ogt float %9315, %9316
  br i1 %9317, label %9318, label %9623, !dx.controlflow.hints !179

; <label>:9318                                    ; preds = %9266
  %9319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9320 = extractvalue %dx.types.CBufRet.f32 %9319, 3
  %9321 = fcmp fast ogt float %9320, 0.000000e+00
  br i1 %9321, label %9322, label %9395, !dx.controlflow.hints !180

; <label>:9322                                    ; preds = %9318
  %9323 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9324 = extractvalue %dx.types.Dimensions %9323, 0
  %9325 = sitofp i32 %9324 to float
  %9326 = extractvalue %dx.types.Dimensions %9323, 1
  %9327 = sitofp i32 %9326 to float
  %9328 = fmul fast float %9267, %9325
  %9329 = fmul fast float %9268, %9327
  %9330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9331 = extractvalue %dx.types.CBufRet.f32 %9330, 1
  %9332 = fsub fast float -0.000000e+00, %9331
  %9333 = fptoui float %9332 to i32
  %9334 = fptoui float %9328 to i32
  %9335 = fptoui float %9329 to i32
  %9336 = and i32 %9333, 31
  %9337 = lshr i32 %9334, %9336
  %9338 = lshr i32 %9335, %9336
  %9339 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9333, i32 %9337, i32 %9338, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9340 = extractvalue %dx.types.ResRet.f32 %9339, 0
  %9341 = fcmp fast olt float %9340, -1.000000e+00
  %9342 = fcmp fast ogt float %9340, -1.000000e+00
  %9343 = select i1 %9342, float %6306, float 1.000000e+00
  %9344 = fadd fast float %9340, 1.000000e+00
  %9345 = fmul fast float %9343, %9344
  %9346 = call float @dx.op.unary.f32(i32 6, float %9345)  ; FAbs(value)
  %9347 = extractvalue %dx.types.CBufRet.f32 %6305, 3
  %9348 = fcmp fast oge float %9346, %9347
  %9349 = select i1 %9348, float 0x4197782600000000, float %9346
  %9350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9351 = extractvalue %dx.types.CBufRet.f32 %9350, 0
  %9352 = extractvalue %dx.types.CBufRet.f32 %9350, 1
  %9353 = extractvalue %dx.types.CBufRet.f32 %9350, 2
  %9354 = select i1 %9341, float %9351, float %9274
  %9355 = select i1 %9341, float %9352, float %9275
  %9356 = select i1 %9341, float %9353, float %9276
  %9357 = fmul fast float %9354, %9271
  %9358 = fmul fast float %9355, %9271
  %9359 = fmul fast float %9356, %9271
  %9360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9361 = extractvalue %dx.types.CBufRet.f32 %9360, 0
  %9362 = extractvalue %dx.types.CBufRet.f32 %9360, 1
  %9363 = extractvalue %dx.types.CBufRet.f32 %9360, 2
  %9364 = select i1 %9341, float %9361, float %9281
  %9365 = select i1 %9341, float %9362, float %9282
  %9366 = select i1 %9341, float %9363, float %9283
  %9367 = fmul fast float %9364, %9272
  %9368 = fmul fast float %9365, %9272
  %9369 = fmul fast float %9366, %9272
  %9370 = fadd fast float %9367, %9357
  %9371 = fadd fast float %9368, %9358
  %9372 = fadd fast float %9369, %9359
  %9373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9374 = extractvalue %dx.types.CBufRet.f32 %9373, 0
  %9375 = extractvalue %dx.types.CBufRet.f32 %9373, 1
  %9376 = extractvalue %dx.types.CBufRet.f32 %9373, 2
  %9377 = select i1 %9341, float %9374, float %9288
  %9378 = select i1 %9341, float %9375, float %9289
  %9379 = select i1 %9341, float %9376, float %9290
  %9380 = fadd fast float %9370, %9377
  %9381 = fadd fast float %9371, %9378
  %9382 = fadd fast float %9372, %9379
  %9383 = fmul fast float %9380, %9349
  %9384 = fmul fast float %9381, %9349
  %9385 = fmul fast float %9382, %9349
  %9386 = fmul fast float %9383, %9383
  %9387 = fmul fast float %9384, %9384
  %9388 = fadd fast float %9386, %9387
  %9389 = fmul fast float %9385, %9385
  %9390 = fadd fast float %9388, %9389
  %9391 = call float @dx.op.unary.f32(i32 24, float %9390)  ; Sqrt(value)
  %9392 = fsub fast float %9391, %9306
  %9393 = fmul fast float %9392, %9308
  %9394 = call float @dx.op.unary.f32(i32 7, float %9393)  ; Saturate(value)
  br label %9395

; <label>:9395                                    ; preds = %9322, %9318
  %9396 = phi float [ %9394, %9322 ], [ 1.000000e+00, %9318 ]
  %9397 = fmul fast float %9315, 5.000000e-01
  %9398 = fadd fast float %9397, 5.000000e-01
  %9399 = call float @dx.op.unary.f32(i32 22, float %9398)  ; Frc(value)
  %9400 = call float @dx.op.unary.f32(i32 27, float %9399)  ; Round_ni(value)
  %9401 = call float @dx.op.unary.f32(i32 22, float %9399)  ; Frc(value)
  %9402 = fmul fast float %9401, 2.000000e+00
  %9403 = fadd fast float %9402, -1.000000e+00
  %9404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %52, float %9267, float %9268, float %9400, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9405 = extractvalue %dx.types.ResRet.f32 %9404, 0
  %9406 = extractvalue %dx.types.ResRet.f32 %9404, 1
  %9407 = extractvalue %dx.types.ResRet.f32 %9404, 2
  %9408 = extractvalue %dx.types.ResRet.f32 %9404, 3
  %9409 = fadd fast float %9405, -5.000000e-01
  %9410 = fadd fast float %9407, -5.000000e-01
  %9411 = fmul fast float %9409, 0xBFD5555560000000
  %9412 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9410, float %9411)  ; FMad(a,b,c)
  %9413 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9406, float 0.000000e+00)  ; FMad(a,b,c)
  %9414 = fadd fast float %9413, %9408
  %9415 = fmul fast float %9409, -7.500000e-01
  %9416 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9410, float %9415)  ; FMad(a,b,c)
  %9417 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9406, float 0.000000e+00)  ; FMad(a,b,c)
  %9418 = fadd fast float %9417, %9408
  %9419 = call float @dx.op.binary.f32(i32 35, float %9412, float -1.000000e+00)  ; FMax(a,b)
  %9420 = call float @dx.op.binary.f32(i32 35, float %9414, float -1.000000e+00)  ; FMax(a,b)
  %9421 = call float @dx.op.binary.f32(i32 35, float %9416, float -1.000000e+00)  ; FMax(a,b)
  %9422 = call float @dx.op.binary.f32(i32 35, float %9418, float -1.000000e+00)  ; FMax(a,b)
  %9423 = call float @dx.op.binary.f32(i32 36, float %9419, float 1.000000e+00)  ; FMin(a,b)
  %9424 = call float @dx.op.binary.f32(i32 36, float %9420, float 1.000000e+00)  ; FMin(a,b)
  %9425 = call float @dx.op.binary.f32(i32 36, float %9421, float 1.000000e+00)  ; FMin(a,b)
  %9426 = call float @dx.op.binary.f32(i32 36, float %9422, float 1.000000e+00)  ; FMin(a,b)
  %9427 = fcmp fast olt float %9423, 0x3FEFFF8020000000
  br i1 %9427, label %9428, label %9543, !dx.controlflow.hints !181

; <label>:9428                                    ; preds = %9395
  %9429 = extractvalue %dx.types.CBufRet.f32 %9313, 3
  %9430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9431 = extractvalue %dx.types.CBufRet.f32 %9430, 0
  %9432 = extractvalue %dx.types.CBufRet.f32 %9430, 1
  %9433 = extractvalue %dx.types.CBufRet.f32 %9430, 2
  %9434 = extractvalue %dx.types.CBufRet.f32 %9430, 3
  %9435 = fsub fast float %9431, %9423
  %9436 = fsub fast float %9432, %9424
  %9437 = fsub fast float %9433, %9425
  %9438 = fsub fast float %9434, %9426
  %9439 = fmul fast float %9435, %9429
  %9440 = fmul fast float %9436, %9429
  %9441 = fmul fast float %9437, %9429
  %9442 = fmul fast float %9438, %9429
  %9443 = fadd fast float %9439, %9423
  %9444 = fadd fast float %9440, %9424
  %9445 = fsub fast float -0.000000e+00, %9444
  %9446 = fadd fast float %9441, %9425
  %9447 = fadd fast float %9442, %9426
  %9448 = fmul fast float %9443, %9443
  %9449 = fsub fast float %9444, %9448
  %9450 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9449)  ; FMax(a,b)
  %9451 = fdiv fast float 1.000000e+00, %9450
  %9452 = fmul fast float %9444, %9443
  %9453 = fsub fast float %9446, %9452
  %9454 = fsub fast float %9403, %9443
  %9455 = fmul fast float %9403, %9403
  %9456 = fsub fast float %9455, %9444
  %9457 = fmul fast float %9454, %9451
  %9458 = fmul fast float %9457, %9453
  %9459 = fsub fast float %9456, %9458
  %9460 = fmul fast float %9444, %9444
  %9461 = fsub fast float %9447, %9460
  %9462 = fmul fast float %9453, %9453
  %9463 = fmul fast float %9462, %9451
  %9464 = fsub fast float %9461, %9463
  %9465 = fdiv fast float %9459, %9464
  %9466 = fmul fast float %9453, %9465
  %9467 = fsub fast float %9454, %9466
  %9468 = fmul fast float %9467, %9451
  %9469 = fmul fast float %9468, %9443
  %9470 = fsub fast float 1.000000e+00, %9469
  %9471 = fmul fast float %9444, %9465
  %9472 = fsub fast float %9470, %9471
  %9473 = fmul fast float %9468, %9468
  %9474 = fmul fast float %9465, 4.000000e+00
  %9475 = fmul fast float %9474, %9472
  %9476 = fsub fast float %9473, %9475
  %9477 = call float @dx.op.unary.f32(i32 24, float %9476)  ; Sqrt(value)
  %9478 = fcmp fast oge float %9468, 0.000000e+00
  %9479 = fsub fast float -0.000000e+00, %9477
  %9480 = select i1 %9478, float %9479, float %9477
  %9481 = fsub fast float %9480, %9468
  %9482 = fdiv fast float %9481, %9465
  %9483 = fdiv fast float %9472, %9481
  %9484 = fmul fast float %9482, 5.000000e-01
  %9485 = fmul fast float %9483, 2.000000e+00
  %9486 = select i1 %9478, float %9484, float %9485
  %9487 = select i1 %9478, float %9485, float %9484
  %9488 = call float @dx.op.binary.f32(i32 35, float %9486, float %9487)  ; FMax(a,b)
  %9489 = call float @dx.op.binary.f32(i32 36, float %9486, float %9487)  ; FMin(a,b)
  %9490 = fcmp fast ogt float %9403, %9489
  br i1 %9490, label %9491, label %9501

; <label>:9491                                    ; preds = %9428
  %9492 = fsub fast float %9403, %9489
  %9493 = fsub fast float %9488, %9489
  %9494 = fmul fast float %9492, %9493
  %9495 = fmul fast float %9488, %9403
  %9496 = fadd fast float %9488, %9403
  %9497 = fmul fast float %9496, %9443
  %9498 = fadd fast float %9495, %9444
  %9499 = fsub fast float %9498, %9497
  %9500 = fdiv fast float %9499, %9494
  br label %9501

; <label>:9501                                    ; preds = %9491, %9428
  %9502 = phi float [ %9500, %9491 ], [ 0.000000e+00, %9428 ]
  %9503 = fcmp fast ogt float %9403, %9488
  %9504 = fsub fast float %9403, %9488
  br i1 %9503, label %9505, label %9515

; <label>:9505                                    ; preds = %9501
  %9506 = fsub fast float %9488, %9489
  %9507 = fmul fast float %9506, %9504
  %9508 = fmul fast float %9489, %9403
  %9509 = fadd fast float %9489, %9403
  %9510 = fmul fast float %9509, %9443
  %9511 = fsub fast float %9445, %9508
  %9512 = fadd fast float %9511, %9510
  %9513 = fdiv fast float %9512, %9507
  %9514 = fadd fast float %9513, %9502
  br label %9515

; <label>:9515                                    ; preds = %9505, %9501
  %9516 = phi float [ %9514, %9505 ], [ %9502, %9501 ]
  %9517 = fsub fast float %9403, %9489
  %9518 = fmul fast float %9517, %9504
  %9519 = fmul fast float %9489, %9488
  %9520 = fadd fast float %9489, %9488
  %9521 = fmul fast float %9520, %9443
  %9522 = fadd fast float %9519, %9444
  %9523 = fsub fast float %9522, %9521
  %9524 = fdiv fast float %9523, %9518
  %9525 = call float @dx.op.unary.f32(i32 7, float %9516)  ; Saturate(value)
  %9526 = fcmp fast oeq float %8214, 0.000000e+00
  %9527 = extractvalue %dx.types.CBufRet.f32 %9313, 0
  %9528 = fcmp fast oeq float %9527, 0.000000e+00
  %9529 = or i1 %9526, %9528
  %9530 = fmul fast float %9527, 2.000000e+00
  %9531 = fadd fast float %9314, %9315
  %9532 = fdiv fast float %9531, %9530
  %9533 = call float @dx.op.unary.f32(i32 7, float %9532)  ; Saturate(value)
  %9534 = fmul fast float %9533, 2.000000e+00
  %9535 = fsub fast float 3.000000e+00, %9534
  %9536 = fmul fast float %9533, %9533
  %9537 = fmul fast float %9536, %9535
  %9538 = select i1 %9529, float 1.000000e+00, float %9537
  %9539 = fmul fast float %9524, %8214
  %9540 = fadd fast float %9525, %9539
  %9541 = call float @dx.op.unary.f32(i32 7, float %9540)  ; Saturate(value)
  %9542 = fmul fast float %9538, %9541
  br label %9543

; <label>:9543                                    ; preds = %9515, %9395
  %9544 = phi float [ %9542, %9515 ], [ 0.000000e+00, %9395 ]
  %9545 = fsub fast float 1.000000e+00, %9544
  %9546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %52, float %9267, float %9268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9547 = extractvalue %dx.types.ResRet.f32 %9546, 0
  %9548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9549 = extractvalue %dx.types.CBufRet.i32 %9548, 2
  %9550 = icmp eq i32 %9549, 0
  br i1 %9550, label %9556, label %9551

; <label>:9551                                    ; preds = %9543
  %9552 = call float @dx.op.unary.f32(i32 7, float %9544)  ; Saturate(value)
  %9553 = fadd fast float %9547, -1.000000e+00
  %9554 = fmul fast float %9552, %9553
  %9555 = fadd fast float %9554, 1.000000e+00
  br label %9556

; <label>:9556                                    ; preds = %9551, %9543
  %9557 = phi float [ %9555, %9551 ], [ %9545, %9543 ]
  br i1 %9321, label %9558, label %9576

; <label>:9558                                    ; preds = %9556
  %9559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9560 = extractvalue %dx.types.CBufRet.f32 %9559, 1
  %9561 = fsub fast float %9396, %9560
  %9562 = call float @dx.op.unary.f32(i32 7, float %9561)  ; Saturate(value)
  %9563 = fsub fast float %9396, %9320
  %9564 = call float @dx.op.unary.f32(i32 7, float %9563)  ; Saturate(value)
  %9565 = fsub fast float %9562, %9564
  %9566 = fsub fast float %9398, %9564
  %9567 = fdiv fast float %9566, %9565
  %9568 = call float @dx.op.unary.f32(i32 7, float %9567)  ; Saturate(value)
  %9569 = fmul fast float %9568, 2.000000e+00
  %9570 = fsub fast float 3.000000e+00, %9569
  %9571 = fsub fast float %9547, %9557
  %9572 = fmul fast float %9568, %9568
  %9573 = fmul fast float %9572, %9571
  %9574 = fmul fast float %9573, %9570
  %9575 = fadd fast float %9574, %9557
  br label %9576

; <label>:9576                                    ; preds = %9558, %9556
  %9577 = phi float [ %9575, %9558 ], [ %9557, %9556 ]
  %9578 = call float @dx.op.binary.f32(i32 35, float %9547, float %9577)  ; FMax(a,b)
  %9579 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9580 = extractvalue %dx.types.CBufRet.i32 %9579, 2
  %9581 = and i32 %9580, 1
  %9582 = icmp eq i32 %9581, 0
  %9583 = fcmp fast une float %9578, 1.000000e+00
  %9584 = and i1 %9583, %9582
  br i1 %9584, label %9585, label %9602

; <label>:9585                                    ; preds = %9576
  %9586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %52, float %9267, float %9268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9587 = extractvalue %dx.types.ResRet.f32 %9586, 0
  %9588 = extractvalue %dx.types.ResRet.f32 %9586, 1
  %9589 = extractvalue %dx.types.ResRet.f32 %9586, 2
  %9590 = fmul fast float %6353, %9587
  %9591 = fmul fast float %6353, %9588
  %9592 = fmul fast float %6353, %9589
  %9593 = fcmp fast ogt float %9547, 0x3FEFFF2E40000000
  %9594 = fsub fast float 1.000000e+00, %9578
  %9595 = fsub fast float 1.000000e+00, %9547
  %9596 = fdiv fast float %9594, %9595
  %9597 = call float @dx.op.unary.f32(i32 7, float %9596)  ; Saturate(value)
  %9598 = select i1 %9593, float 0.000000e+00, float %9597
  %9599 = fmul fast float %9590, %9598
  %9600 = fmul fast float %9591, %9598
  %9601 = fmul fast float %9592, %9598
  br label %9602

; <label>:9602                                    ; preds = %9585, %9576
  %9603 = phi float [ 0.000000e+00, %9576 ], [ %9599, %9585 ]
  %9604 = phi float [ 0.000000e+00, %9576 ], [ %9600, %9585 ]
  %9605 = phi float [ 0.000000e+00, %9576 ], [ %9601, %9585 ]
  %9606 = fmul fast float %9578, %9245
  %9607 = call float @dx.op.dot3.f32(i32 55, float %9578, float %9578, float %9578, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9608 = call float @dx.op.dot3.f32(i32 55, float %9603, float %9604, float %9605, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9609 = select i1 %266, float %9607, float %9578
  %9610 = select i1 %266, float 1.000000e+00, float %9578
  %9611 = select i1 %266, float %9608, float %9603
  %9612 = select i1 %266, float 0.000000e+00, float %9604
  %9613 = select i1 %266, float 0.000000e+00, float %9605
  %9614 = fmul fast float %9609, %9257
  %9615 = fmul fast float %9609, %9258
  %9616 = fmul fast float %9610, %9259
  %9617 = fadd fast float %9614, %9611
  %9618 = fadd fast float %9615, %9612
  %9619 = fadd fast float %9613, %9616
  %9620 = fmul fast float %9609, %9260
  %9621 = fmul fast float %9609, %9261
  %9622 = fmul fast float %9610, %9262
  br label %9623

; <label>:9623                                    ; preds = %9602, %9266, %9238, %8474
  %9624 = phi float [ %8479, %8474 ], [ %9257, %9238 ], [ %9617, %9602 ], [ %9257, %9266 ]
  %9625 = phi float [ %8480, %8474 ], [ %9258, %9238 ], [ %9618, %9602 ], [ %9258, %9266 ]
  %9626 = phi float [ %8481, %8474 ], [ %9259, %9238 ], [ %9619, %9602 ], [ %9259, %9266 ]
  %9627 = phi float [ %8482, %8474 ], [ %9260, %9238 ], [ %9620, %9602 ], [ %9260, %9266 ]
  %9628 = phi float [ %8483, %8474 ], [ %9261, %9238 ], [ %9621, %9602 ], [ %9261, %9266 ]
  %9629 = phi float [ %8484, %8474 ], [ %9262, %9238 ], [ %9622, %9602 ], [ %9262, %9266 ]
  %9630 = phi float [ %8485, %8474 ], [ %9245, %9238 ], [ %9606, %9602 ], [ %9245, %9266 ]
  %9631 = fmul fast float %6298, %115
  %9632 = fmul fast float %6299, %116
  %9633 = call float @dx.op.unary.f32(i32 7, float %9631)  ; Saturate(value)
  %9634 = call float @dx.op.unary.f32(i32 7, float %9632)  ; Saturate(value)
  %9635 = select i1 %8224, i32 2, i32 0
  %9636 = or i32 %9635, 1
  %9637 = uitofp i32 %9636 to float
  %9638 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %52, float %9633, float %9634, float %9637, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9639 = extractvalue %dx.types.ResRet.f32 %9638, 0
  %9640 = extractvalue %dx.types.ResRet.f32 %9638, 1
  %9641 = extractvalue %dx.types.ResRet.f32 %9638, 2
  %9642 = extractvalue %dx.types.ResRet.f32 %9638, 3
  %9643 = add nuw nsw i32 %9635, 2
  %9644 = uitofp i32 %9643 to float
  %9645 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %52, float %9633, float %9634, float %9644, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9646 = extractvalue %dx.types.ResRet.f32 %9645, 0
  %9647 = extractvalue %dx.types.ResRet.f32 %9645, 1
  %9648 = extractvalue %dx.types.ResRet.f32 %9645, 2
  %9649 = extractvalue %dx.types.ResRet.f32 %9645, 3
  %9650 = call float @dx.op.binary.f32(i32 35, float %9640, float %9641)  ; FMax(a,b)
  %9651 = call float @dx.op.binary.f32(i32 35, float %9639, float %9650)  ; FMax(a,b)
  %9652 = call float @dx.op.binary.f32(i32 35, float %9651, float %9642)  ; FMax(a,b)
  %9653 = call float @dx.op.binary.f32(i32 36, float %9647, float %9648)  ; FMin(a,b)
  %9654 = call float @dx.op.binary.f32(i32 36, float %9646, float %9653)  ; FMin(a,b)
  %9655 = call float @dx.op.binary.f32(i32 36, float %9654, float %9649)  ; FMin(a,b)
  %9656 = fmul fast float %9652, 2.550000e+02
  %9657 = fadd fast float %9656, 0x3F70101020000000
  %9658 = fptoui float %9657 to i32
  %9659 = fmul fast float %9655, 2.550000e+02
  %9660 = fadd fast float %9659, 0x3F70101020000000
  %9661 = fptoui float %9660 to i32
  %9662 = icmp ult i32 %9658, %9661
  br i1 %9662, label %9663, label %9830

; <label>:9663                                    ; preds = %9623
  %9664 = fcmp fast ogt float %105, 9.843750e-01
  %9665 = fadd fast float %8478, -4.000000e+00
  %9666 = select i1 %9664, float -4.000000e+00, float %9665
  %9667 = call float @dx.op.binary.f32(i32 35, float %9666, float 0.000000e+00)  ; FMax(a,b)
  %9668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9669 = extractvalue %dx.types.CBufRet.f32 %9668, 0
  %9670 = fadd fast float %9669, %9667
  %9671 = extractvalue %dx.types.CBufRet.f32 %9668, 2
  %9672 = fmul fast float %9670, %9671
  %9673 = call float @dx.op.unary.f32(i32 23, float %9672)  ; Log(value)
  %9674 = extractvalue %dx.types.CBufRet.f32 %9668, 3
  %9675 = fmul fast float %9674, %9673
  %9676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9677 = extractvalue %dx.types.CBufRet.f32 %9676, 2
  %9678 = fmul fast float %9675, %9677
  %9679 = call float @dx.op.unary.f32(i32 7, float %9678)  ; Saturate(value)
  %9680 = uitofp i32 %9658 to float
  %9681 = uitofp i32 %9661 to float
  %9682 = fadd fast float %9680, 5.000000e-01
  %9683 = fadd fast float %9681, 5.000000e-01
  %9684 = fmul fast float %9677, %9682
  %9685 = fmul fast float %9677, %9683
  %9686 = fadd fast float %9684, 0x3F0FFB4800000000
  %9687 = fadd fast float %9685, 0xBF0FFB4800000000
  %9688 = call float @dx.op.binary.f32(i32 35, float %9679, float %9686)  ; FMax(a,b)
  %9689 = call float @dx.op.binary.f32(i32 36, float %9688, float %9687)  ; FMin(a,b)
  %9690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9691 = extractvalue %dx.types.CBufRet.f32 %9690, 1
  %9692 = extractvalue %dx.types.CBufRet.f32 %9690, 2
  %9693 = extractvalue %dx.types.CBufRet.f32 %9690, 0
  %9694 = select i1 %8224, float %9693, float 0.000000e+00
  %9695 = fmul fast float %9691, %9689
  %9696 = fadd fast float %9694, %9695
  %9697 = fadd fast float %9694, %9692
  %9698 = fsub fast float %9691, %9692
  %9699 = fadd fast float %9698, %9694
  %9700 = call float @dx.op.binary.f32(i32 35, float %9696, float %9697)  ; FMax(a,b)
  %9701 = call float @dx.op.binary.f32(i32 36, float %9700, float %9699)  ; FMin(a,b)
  %9702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %50, float %9633, float %9634, float %9701, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9703 = extractvalue %dx.types.ResRet.f32 %9702, 0
  %9704 = extractvalue %dx.types.ResRet.f32 %9702, 1
  %9705 = extractvalue %dx.types.ResRet.f32 %9702, 2
  %9706 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9707 = extractvalue %dx.types.CBufRet.i32 %9706, 0
  %9708 = extractvalue %dx.types.CBufRet.i32 %9706, 1
  %9709 = uitofp i32 %9707 to float
  %9710 = uitofp i32 %9708 to float
  %9711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9712 = extractvalue %dx.types.CBufRet.f32 %9711, 0
  %9713 = extractvalue %dx.types.CBufRet.f32 %9711, 1
  %9714 = fmul fast float %9709, %9633
  %9715 = fmul fast float %9710, %9634
  %9716 = fadd fast float %9714, -5.000000e-01
  %9717 = fadd fast float %9715, -5.000000e-01
  %9718 = call float @dx.op.unary.f32(i32 22, float %9716)  ; Frc(value)
  %9719 = call float @dx.op.unary.f32(i32 22, float %9717)  ; Frc(value)
  %9720 = fmul fast float %9718, %9718
  %9721 = fmul fast float %9720, %9718
  %9722 = fsub fast float 3.000000e+00, %9718
  %9723 = fmul fast float %9720, %9722
  %9724 = fmul fast float %9718, 3.000000e+00
  %9725 = fmul fast float %9721, 3.000000e+00
  %9726 = fmul fast float %9720, 6.000000e+00
  %9727 = fsub fast float %9725, %9726
  %9728 = fadd fast float %9727, 4.000000e+00
  %9729 = fmul fast float %9728, 0x3FC5555560000000
  %9730 = fmul fast float %9721, -3.000000e+00
  %9731 = fadd fast float %9720, %9718
  %9732 = fmul fast float %9731, 3.000000e+00
  %9733 = fadd fast float %9730, 1.000000e+00
  %9734 = fadd fast float %9733, %9732
  %9735 = fmul fast float %9721, 0x3FC5555560000000
  %9736 = fmul fast float %9719, %9719
  %9737 = fmul fast float %9736, %9719
  %9738 = fsub fast float 3.000000e+00, %9719
  %9739 = fmul fast float %9736, %9738
  %9740 = fmul fast float %9719, 3.000000e+00
  %9741 = fmul fast float %9737, 3.000000e+00
  %9742 = fmul fast float %9736, 6.000000e+00
  %9743 = fsub fast float %9741, %9742
  %9744 = fadd fast float %9743, 4.000000e+00
  %9745 = fmul fast float %9744, 0x3FC5555560000000
  %9746 = fmul fast float %9737, -3.000000e+00
  %9747 = fadd fast float %9736, %9719
  %9748 = fmul fast float %9747, 3.000000e+00
  %9749 = fadd fast float %9746, 1.000000e+00
  %9750 = fadd fast float %9749, %9748
  %9751 = fmul fast float %9737, 0x3FC5555560000000
  %9752 = fadd fast float %9718, 1.000000e+00
  %9753 = fsub fast float 1.000000e+00, %9724
  %9754 = fadd fast float %9753, %9723
  %9755 = fadd fast float %9754, %9728
  %9756 = fmul fast float %9755, 0x3FC5555560000000
  %9757 = fdiv fast float %9729, %9756
  %9758 = fsub fast float %9752, %9757
  %9759 = fsub fast float 1.000000e+00, %9718
  %9760 = fadd fast float %9734, %9721
  %9761 = fmul fast float %9760, 0x3FC5555560000000
  %9762 = fdiv fast float %9735, %9761
  %9763 = fadd fast float %9759, %9762
  %9764 = fadd fast float %9719, 1.000000e+00
  %9765 = fsub fast float 1.000000e+00, %9740
  %9766 = fadd fast float %9765, %9739
  %9767 = fadd fast float %9766, %9744
  %9768 = fmul fast float %9767, 0x3FC5555560000000
  %9769 = fdiv fast float %9745, %9768
  %9770 = fsub fast float %9764, %9769
  %9771 = fsub fast float 1.000000e+00, %9719
  %9772 = fadd fast float %9750, %9737
  %9773 = fmul fast float %9772, 0x3FC5555560000000
  %9774 = fdiv fast float %9751, %9773
  %9775 = fadd fast float %9774, %9771
  %9776 = fmul fast float %9758, %9712
  %9777 = fsub fast float %9633, %9776
  %9778 = fmul fast float %9763, %9712
  %9779 = fadd fast float %9778, %9633
  %9780 = fmul fast float %9775, %9713
  %9781 = fadd fast float %9780, %9634
  %9782 = fmul fast float %9770, %9713
  %9783 = fsub fast float %9634, %9782
  %9784 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %9777, float %9783, float %9701, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9785 = extractvalue %dx.types.ResRet.f32 %9784, 0
  %9786 = extractvalue %dx.types.ResRet.f32 %9784, 1
  %9787 = extractvalue %dx.types.ResRet.f32 %9784, 2
  %9788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %9779, float %9783, float %9701, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9789 = extractvalue %dx.types.ResRet.f32 %9788, 0
  %9790 = extractvalue %dx.types.ResRet.f32 %9788, 1
  %9791 = extractvalue %dx.types.ResRet.f32 %9788, 2
  %9792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %9777, float %9781, float %9701, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9793 = extractvalue %dx.types.ResRet.f32 %9792, 0
  %9794 = extractvalue %dx.types.ResRet.f32 %9792, 1
  %9795 = extractvalue %dx.types.ResRet.f32 %9792, 2
  %9796 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %9779, float %9781, float %9701, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9797 = extractvalue %dx.types.ResRet.f32 %9796, 0
  %9798 = extractvalue %dx.types.ResRet.f32 %9796, 1
  %9799 = extractvalue %dx.types.ResRet.f32 %9796, 2
  %9800 = fsub fast float %9793, %9785
  %9801 = fsub fast float %9794, %9786
  %9802 = fsub fast float %9795, %9787
  %9803 = fmul fast float %9800, %9773
  %9804 = fmul fast float %9801, %9773
  %9805 = fmul fast float %9802, %9773
  %9806 = fadd fast float %9803, %9785
  %9807 = fadd fast float %9804, %9786
  %9808 = fadd fast float %9805, %9787
  %9809 = fsub fast float %9797, %9789
  %9810 = fsub fast float %9798, %9790
  %9811 = fsub fast float %9799, %9791
  %9812 = fmul fast float %9809, %9773
  %9813 = fmul fast float %9810, %9773
  %9814 = fmul fast float %9811, %9773
  %9815 = fsub fast float %9789, %9806
  %9816 = fadd fast float %9815, %9812
  %9817 = fsub fast float %9790, %9807
  %9818 = fadd fast float %9817, %9813
  %9819 = fsub fast float %9791, %9808
  %9820 = fadd fast float %9819, %9814
  %9821 = fmul fast float %9816, %9761
  %9822 = fmul fast float %9818, %9761
  %9823 = fmul fast float %9820, %9761
  %9824 = fadd fast float %9821, %9806
  %9825 = fadd fast float %9822, %9807
  %9826 = fadd fast float %9823, %9808
  %9827 = fmul fast float %9824, %6353
  %9828 = fmul fast float %9825, %6353
  %9829 = fmul fast float %9826, %6353
  br label %9830

; <label>:9830                                    ; preds = %9663, %9623
  %9831 = phi float [ %9703, %9663 ], [ 1.000000e+00, %9623 ]
  %9832 = phi float [ %9704, %9663 ], [ 1.000000e+00, %9623 ]
  %9833 = phi float [ %9705, %9663 ], [ 1.000000e+00, %9623 ]
  %9834 = phi float [ %9827, %9663 ], [ 0.000000e+00, %9623 ]
  %9835 = phi float [ %9828, %9663 ], [ 0.000000e+00, %9623 ]
  %9836 = phi float [ %9829, %9663 ], [ 0.000000e+00, %9623 ]
  %9837 = fmul fast float %9831, %9630
  %9838 = call float @dx.op.dot3.f32(i32 55, float %9831, float %9832, float %9833, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9839 = call float @dx.op.dot3.f32(i32 55, float %9834, float %9835, float %9836, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9840 = select i1 %266, float %9838, float %9831
  %9841 = select i1 %266, float %9838, float %9832
  %9842 = select i1 %266, float 1.000000e+00, float %9833
  %9843 = select i1 %266, float %9839, float %9834
  %9844 = select i1 %266, float 0.000000e+00, float %9835
  %9845 = select i1 %266, float 0.000000e+00, float %9836
  %9846 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9847 = extractvalue %dx.types.CBufRet.i32 %9846, 3
  %9848 = and i32 %9847, 3
  %9849 = icmp ne i32 %9848, 0
  %9850 = and i32 %9847, 4
  %9851 = icmp ne i32 %9850, 0
  %9852 = and i1 %9849, %9851
  %9853 = and i1 %266, %9852
  br i1 %9853, label %9854, label %9860

; <label>:9854                                    ; preds = %9830
  %9855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9856 = extractvalue %dx.types.CBufRet.f32 %9855, 1
  %9857 = fadd fast float %9837, -1.000000e+00
  %9858 = fmul fast float %9856, %9857
  %9859 = fadd fast float %9858, 1.000000e+00
  br label %9860

; <label>:9860                                    ; preds = %9854, %9830
  %9861 = phi float [ %9859, %9854 ], [ %9837, %9830 ]
  %9862 = fadd fast float %9627, %9624
  %9863 = fmul fast float %9840, %9862
  %9864 = fadd fast float %9863, %9843
  %9865 = fadd fast float %9628, %9625
  %9866 = fmul fast float %9841, %9865
  %9867 = fadd fast float %9866, %9844
  %9868 = extractvalue %dx.types.CBufRet.f32 %6352, 0
  br i1 %266, label %9869, label %9885

; <label>:9869                                    ; preds = %9860
  %9870 = fadd fast float %9864, %9867
  %9871 = fmul fast float %9868, %9870
  %9872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9873 = extractvalue %dx.types.CBufRet.f32 %9872, 3
  %9874 = extractvalue %dx.types.CBufRet.f32 %8206, 1
  %9875 = fsub fast float %8211, %8205
  %9876 = fadd fast float %9875, %8212
  %9877 = fsub fast float %9876, %9874
  %9878 = extractvalue %dx.types.CBufRet.f32 %8206, 2
  %9879 = fmul fast float %9877, %9878
  %9880 = call float @dx.op.unary.f32(i32 7, float %9879)  ; Saturate(value)
  %9881 = fsub fast float %9880, %9873
  %9882 = fmul fast float %9881, %9861
  %9883 = fadd fast float %9882, %9873
  %9884 = fmul fast float %9883, %4493
  br label %9909

; <label>:9885                                    ; preds = %9860
  %9886 = fadd fast float %9629, %9626
  %9887 = fmul fast float %9842, %9886
  %9888 = fadd fast float %9887, %9845
  %9889 = fmul fast float %9868, %9864
  %9890 = fmul fast float %9868, %9867
  %9891 = fmul fast float %9868, %9888
  %9892 = call float @dx.op.binary.f32(i32 35, float %9889, float %9890)  ; FMax(a,b)
  %9893 = call float @dx.op.binary.f32(i32 35, float %9892, float %9891)  ; FMax(a,b)
  %9894 = call float @dx.op.binary.f32(i32 35, float %9893, float 1.000000e+00)  ; FMax(a,b)
  %9895 = fcmp fast ugt float %9894, 0x3F10000000000000
  br i1 %9895, label %9897, label %9896

; <label>:9896                                    ; preds = %9885
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9897

; <label>:9897                                    ; preds = %9896, %9885
  %9898 = add i32 %58, 356
  %9899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %9898, i32 undef)  ; BufferLoad(srv,index,wot)
  %9900 = extractvalue %dx.types.ResRet.i32 %9899, 0
  %9901 = and i32 %9900, 32
  %9902 = icmp eq i32 %9901, 0
  br i1 %9902, label %9909, label %9903

; <label>:9903                                    ; preds = %9897
  %9904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9905 = extractvalue %dx.types.CBufRet.f32 %9904, 0
  %9906 = fmul fast float %9905, 0x3FE99999A0000000
  %9907 = fadd fast float %9905, %9889
  %9908 = fadd fast float %9906, %9891
  br label %9909

; <label>:9909                                    ; preds = %9903, %9897, %9869
  %9910 = phi float [ %4493, %9869 ], [ 1.000000e+00, %9903 ], [ 1.000000e+00, %9897 ]
  %9911 = phi float [ %9871, %9869 ], [ %9907, %9903 ], [ %9889, %9897 ]
  %9912 = phi float [ %9884, %9869 ], [ %9890, %9903 ], [ %9890, %9897 ]
  %9913 = phi float [ %4493, %9869 ], [ %9908, %9903 ], [ %9891, %9897 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9914 = call float @dx.op.binary.f32(i32 36, float %9911, float 3.225500e+04)  ; FMin(a,b)
  %9915 = call float @dx.op.binary.f32(i32 36, float %9912, float 3.225500e+04)  ; FMin(a,b)
  %9916 = call float @dx.op.binary.f32(i32 36, float %9913, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9914)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9915)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9916)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9917 = call float @dx.op.binary.f32(i32 36, float %9910, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9917)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9917)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!71}
!dx.entryPoints = !{!72}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !59, !62}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
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
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!31 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!32 = !{i32 25, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !33}
!33 = !{i32 0, i32 5}
!34 = !{i32 26, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!38 = !{i32 30, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!42 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!43 = !{i32 35, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !44}
!44 = !{i32 0, i32 14}
!45 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!46 = !{i32 37, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!51 = !{i32 42, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!52 = !{i32 43, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!53 = !{i32 44, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!54 = !{i32 45, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!55 = !{i32 46, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!56 = !{i32 47, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !44}
!57 = !{i32 48, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!58 = !{i32 49, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!59 = !{!60, !61}
!60 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!61 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 224, null}
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70}
!63 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!64 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!65 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!66 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!67 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!68 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!69 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!70 = !{i32 7, %struct.SamplerState* undef, !"", i32 0, i32 6, i32 1, i32 0, null}
!71 = !{[62 x i32] [i32 60, i32 8, i32 103, i32 103, i32 7, i32 7, i32 103, i32 7, i32 7, i32 7, i32 103, i32 103, i32 0, i32 0, i32 103, i32 103, i32 103, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 103, i32 103, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 103, i32 103, i32 103, i32 0, i32 103, i32 7, i32 7, i32 0, i32 103, i32 0, i32 0, i32 0]}
!72 = !{void ()* @ps_main, !"ps_main", !73, !4, !101}
!73 = !{!74, !97, null}
!74 = !{!75, !78, !79, !81, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !94, !95, !96}
!75 = !{i32 0, !"SV_Position", i8 9, i8 3, !76, i8 4, i32 1, i8 4, i32 0, i8 0, !77}
!76 = !{i32 0}
!77 = !{i32 3, i32 15}
!78 = !{i32 1, !"COLOR", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 1, i8 0, !77}
!79 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 2, i8 0, !80}
!80 = !{i32 3, i32 3}
!81 = !{i32 3, !"NORMAL", i8 9, i8 0, !76, i8 2, i32 1, i8 3, i32 3, i8 0, !82}
!82 = !{i32 3, i32 7}
!83 = !{i32 4, !"TANGENT", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 4, i8 0, !77}
!84 = !{i32 5, !"SH_RED", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 5, i8 0, !77}
!85 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 6, i8 0, !77}
!86 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 7, i8 0, !77}
!87 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !76, i8 2, i32 1, i8 3, i32 8, i8 0, !82}
!88 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 9, i8 0, !77}
!89 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !76, i8 2, i32 1, i8 2, i32 10, i8 0, !80}
!90 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 11, i8 0, !77}
!91 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 12, i8 0, !82}
!92 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !76, i8 1, i32 1, i8 1, i32 13, i8 0, !93}
!93 = !{i32 3, i32 1}
!94 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !76, i8 1, i32 1, i8 2, i32 13, i8 1, !80}
!95 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !76, i8 1, i32 1, i8 4, i32 14, i8 0, !93}
!96 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !76, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!97 = !{!98, !99}
!98 = !{i32 0, !"SV_Target", i8 9, i8 16, !76, i8 0, i32 1, i8 4, i32 0, i8 0, !77}
!99 = !{i32 1, !"SV_Target", i8 9, i8 16, !100, i8 0, i32 1, i8 4, i32 1, i8 0, !77}
!100 = !{i32 1}
!101 = !{i32 0, i64 16}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = !{!109, !109, i64 0}
!109 = !{!"int", !110, i64 0}
!110 = !{!"omnipotent char", !111, i64 0}
!111 = !{!"Simple C/C++ TBAA"}
!112 = !{!113, !115, !117, !119}
!113 = distinct !{!113, !114, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!114 = distinct !{!114, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!115 = distinct !{!115, !116, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!116 = distinct !{!116, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!117 = distinct !{!117, !118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!118 = distinct !{!118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!119 = distinct !{!119, !120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!120 = distinct !{!120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
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
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = !{!134, !134, i64 0}
!134 = !{!"float", !110, i64 0}
!135 = !{!136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!136 = distinct !{!136, !137, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!137 = distinct !{!137, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!138 = distinct !{!138, !139, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!139 = distinct !{!139, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!140 = distinct !{!140, !139, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!141 = distinct !{!141, !142, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!142 = distinct !{!142, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!143 = distinct !{!143, !142, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!144 = distinct !{!144, !142, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!145 = distinct !{!145, !146, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!146 = distinct !{!146, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!147 = distinct !{!147, !146, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!148 = distinct !{!148, !146, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!149 = distinct !{!149, !150, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!150 = distinct !{!150, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"\01?sort@@YAXAIAM00@Z: %c"}
!153 = distinct !{!153, !"\01?sort@@YAXAIAM00@Z"}
!154 = !{!155, !156, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!155 = distinct !{!155, !153, !"\01?sort@@YAXAIAM00@Z: %a"}
!156 = distinct !{!156, !153, !"\01?sort@@YAXAIAM00@Z: %b"}
!157 = !{!156}
!158 = !{!155, !152, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!159 = !{!155}
!160 = !{!156, !152, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!161 = !{!162}
!162 = distinct !{!162, !163, !"\01?sort@@YAXAIAM00@Z: %c"}
!163 = distinct !{!163, !"\01?sort@@YAXAIAM00@Z"}
!164 = !{!165, !166, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!165 = distinct !{!165, !163, !"\01?sort@@YAXAIAM00@Z: %a"}
!166 = distinct !{!166, !163, !"\01?sort@@YAXAIAM00@Z: %b"}
!167 = !{!166}
!168 = !{!165, !162, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!169 = !{!165}
!170 = !{!166, !162, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 2}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}

